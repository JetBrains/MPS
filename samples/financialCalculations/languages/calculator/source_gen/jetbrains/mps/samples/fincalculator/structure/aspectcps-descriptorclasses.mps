<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fcb425f(checkpoints/jetbrains.mps.samples.fincalculator.structure@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="64eg" ref="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)" />
    <import index="ksn4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="bzg8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.impl(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="8353134822275456723" name="jetbrains.mps.baseLanguage.structure.HexLongLiteral" flags="ng" index="11gdke">
        <property id="8353134822275456796" name="hexValue" index="11gdj1" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="ConceptPresentationAspectImpl" />
    <node concept="3uibUv" id="1" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~ConceptPresentationAspectBase" resolve="ConceptPresentationAspectBase" />
    </node>
    <node concept="312cEg" id="2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Calculation" />
      <node concept="3uibUv" id="r" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="s" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CalculationReference" />
      <node concept="3uibUv" id="t" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="u" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CalculationValue" />
      <node concept="3uibUv" id="v" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="w" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CalculationValueReference" />
      <node concept="3uibUv" id="x" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Calculator" />
      <node concept="3uibUv" id="z" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="$" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CalculatorType" />
      <node concept="3uibUv" id="_" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="A" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Command" />
      <node concept="3uibUv" id="B" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="C" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_EmptyLine" />
      <node concept="3uibUv" id="D" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="E" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="a" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Field" />
      <node concept="3uibUv" id="F" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="G" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="b" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_FieldReference" />
      <node concept="3uibUv" id="H" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="I" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="c" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_InputField" />
      <node concept="3uibUv" id="J" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="K" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="d" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Logical" />
      <node concept="3uibUv" id="L" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="M" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="e" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_LogicalReference" />
      <node concept="3uibUv" id="N" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="O" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="f" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_LogicalType" />
      <node concept="3uibUv" id="P" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="Q" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="g" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_NumericType" />
      <node concept="3uibUv" id="R" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="S" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="h" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Option" />
      <node concept="3uibUv" id="T" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="U" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="i" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_OutputField" />
      <node concept="3uibUv" id="V" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="W" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="j" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_OutputTable" />
      <node concept="3uibUv" id="X" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="Y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="k" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Parameter" />
      <node concept="3uibUv" id="Z" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="10" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="l" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Selector" />
      <node concept="3uibUv" id="11" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="12" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="m" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_SelectorReference" />
      <node concept="3uibUv" id="13" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="14" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="n" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_TextualType" />
      <node concept="3uibUv" id="15" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="16" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="o" role="1B3o_S" />
    <node concept="2tJIrI" id="p" role="jymVt" />
    <node concept="3clFb_" id="q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="17" role="1B3o_S" />
      <node concept="37vLTG" id="18" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="1d" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="19" role="3clF47">
        <node concept="3cpWs8" id="1e" role="3cqZAp">
          <node concept="3cpWsn" id="1h" role="3cpWs9">
            <property role="TrG5h" value="structureDescriptor" />
            <node concept="3uibUv" id="1i" role="1tU5fm">
              <ref role="3uigEE" node="iG" resolve="StructureAspectDescriptor" />
            </node>
            <node concept="10QFUN" id="1j" role="33vP2m">
              <node concept="3uibUv" id="1k" role="10QFUM">
                <ref role="3uigEE" node="iG" resolve="StructureAspectDescriptor" />
              </node>
              <node concept="2OqwBi" id="1l" role="10QFUP">
                <node concept="37vLTw" id="1m" role="2Oq$k0">
                  <ref role="3cqZAo" to="ze1i:~ConceptPresentationAspectBase.myLanguageRuntime" resolve="myLanguageRuntime" />
                </node>
                <node concept="liA8E" id="1n" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                  <node concept="3VsKOn" id="1o" role="37wK5m">
                    <ref role="3VsUkX" to="ze1i:~StructureAspectDescriptor" resolve="StructureAspectDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="1f" role="3cqZAp">
          <node concept="2OqwBi" id="1p" role="3KbGdf">
            <node concept="37vLTw" id="1K" role="2Oq$k0">
              <ref role="3cqZAo" node="1h" resolve="structureDescriptor" />
            </node>
            <node concept="liA8E" id="1L" role="2OqNvi">
              <ref role="37wK5l" node="jj" resolve="internalIndex" />
              <node concept="37vLTw" id="1M" role="37wK5m">
                <ref role="3cqZAo" node="18" resolve="c" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1q" role="3KbHQx">
            <node concept="3clFbS" id="1N" role="3Kbo56">
              <node concept="3clFbJ" id="1P" role="3cqZAp">
                <node concept="3clFbS" id="1R" role="3clFbx">
                  <node concept="3cpWs8" id="1T" role="3cqZAp">
                    <node concept="3cpWsn" id="1X" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="1Y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1Z" role="33vP2m">
                        <node concept="1pGfFk" id="20" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1U" role="3cqZAp">
                    <node concept="2OqwBi" id="21" role="3clFbG">
                      <node concept="37vLTw" id="22" role="2Oq$k0">
                        <ref role="3cqZAo" node="1X" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="23" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.shortDesc(java.lang.String)" resolve="shortDesc" />
                        <node concept="Xl_RD" id="24" role="37wK5m">
                          <property role="Xl_RC" value="Allows for a BaseLanguage calculation to be created as Java (BaseLanguage) statements with a ReturnStatement returning the required result" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1V" role="3cqZAp">
                    <node concept="2OqwBi" id="25" role="3clFbG">
                      <node concept="37vLTw" id="26" role="2Oq$k0">
                        <ref role="3cqZAo" node="1X" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="27" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:2369396721457577845" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1W" role="3cqZAp">
                    <node concept="37vLTI" id="28" role="3clFbG">
                      <node concept="2OqwBi" id="29" role="37vLTx">
                        <node concept="37vLTw" id="2b" role="2Oq$k0">
                          <ref role="3cqZAo" node="1X" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2c" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2a" role="37vLTJ">
                        <ref role="3cqZAo" node="2" resolve="props_Calculation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1S" role="3clFbw">
                  <node concept="10Nm6u" id="2d" role="3uHU7w" />
                  <node concept="37vLTw" id="2e" role="3uHU7B">
                    <ref role="3cqZAo" node="2" resolve="props_Calculation" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1Q" role="3cqZAp">
                <node concept="37vLTw" id="2f" role="3cqZAk">
                  <ref role="3cqZAo" node="2" resolve="props_Calculation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1O" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eh" resolve="Calculation" />
            </node>
          </node>
          <node concept="3KbdKl" id="1r" role="3KbHQx">
            <node concept="3clFbS" id="2g" role="3Kbo56">
              <node concept="3clFbJ" id="2i" role="3cqZAp">
                <node concept="3clFbS" id="2k" role="3clFbx">
                  <node concept="3cpWs8" id="2m" role="3cqZAp">
                    <node concept="3cpWsn" id="2p" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2q" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2r" role="33vP2m">
                        <node concept="1pGfFk" id="2s" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2n" role="3cqZAp">
                    <node concept="2OqwBi" id="2t" role="3clFbG">
                      <node concept="37vLTw" id="2u" role="2Oq$k0">
                        <ref role="3cqZAo" node="2p" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2v" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:2369396721457915559" />
                        <node concept="11gdke" id="2w" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                        <node concept="11gdke" id="2x" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                        <node concept="11gdke" id="2y" role="37wK5m">
                          <property role="11gdj1" value="20e1c9c3ba7966a7L" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                        <node concept="11gdke" id="2z" role="37wK5m">
                          <property role="11gdj1" value="20e1c9c3ba7966a8L" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                        <node concept="Xl_RD" id="2$" role="37wK5m">
                          <property role="Xl_RC" value="target" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                        <node concept="Xl_RD" id="2_" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                        <node concept="Xl_RD" id="2A" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:2369396721457915559" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2o" role="3cqZAp">
                    <node concept="37vLTI" id="2B" role="3clFbG">
                      <node concept="2OqwBi" id="2C" role="37vLTx">
                        <node concept="37vLTw" id="2E" role="2Oq$k0">
                          <ref role="3cqZAo" node="2p" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2F" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2D" role="37vLTJ">
                        <ref role="3cqZAo" node="3" resolve="props_CalculationReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2l" role="3clFbw">
                  <node concept="10Nm6u" id="2G" role="3uHU7w" />
                  <node concept="37vLTw" id="2H" role="3uHU7B">
                    <ref role="3cqZAo" node="3" resolve="props_CalculationReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2j" role="3cqZAp">
                <node concept="37vLTw" id="2I" role="3cqZAk">
                  <ref role="3cqZAo" node="3" resolve="props_CalculationReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2h" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ei" resolve="CalculationReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1s" role="3KbHQx">
            <node concept="3clFbS" id="2J" role="3Kbo56">
              <node concept="3clFbJ" id="2L" role="3cqZAp">
                <node concept="3clFbS" id="2N" role="3clFbx">
                  <node concept="3cpWs8" id="2P" role="3cqZAp">
                    <node concept="3cpWsn" id="2T" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2U" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2V" role="33vP2m">
                        <node concept="1pGfFk" id="2W" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2Q" role="3cqZAp">
                    <node concept="2OqwBi" id="2X" role="3clFbG">
                      <node concept="37vLTw" id="2Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="2T" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2Z" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.shortDesc(java.lang.String)" resolve="shortDesc" />
                        <node concept="Xl_RD" id="30" role="37wK5m">
                          <property role="Xl_RC" value="A simple constant, its type depends on the numeric type of the initializer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2R" role="3cqZAp">
                    <node concept="2OqwBi" id="31" role="3clFbG">
                      <node concept="37vLTw" id="32" role="2Oq$k0">
                        <ref role="3cqZAo" node="2T" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="33" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:5982026979498910643" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2S" role="3cqZAp">
                    <node concept="37vLTI" id="34" role="3clFbG">
                      <node concept="2OqwBi" id="35" role="37vLTx">
                        <node concept="37vLTw" id="37" role="2Oq$k0">
                          <ref role="3cqZAo" node="2T" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="38" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="36" role="37vLTJ">
                        <ref role="3cqZAo" node="4" resolve="props_CalculationValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2O" role="3clFbw">
                  <node concept="10Nm6u" id="39" role="3uHU7w" />
                  <node concept="37vLTw" id="3a" role="3uHU7B">
                    <ref role="3cqZAo" node="4" resolve="props_CalculationValue" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2M" role="3cqZAp">
                <node concept="37vLTw" id="3b" role="3cqZAk">
                  <ref role="3cqZAo" node="4" resolve="props_CalculationValue" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2K" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ej" resolve="CalculationValue" />
            </node>
          </node>
          <node concept="3KbdKl" id="1t" role="3KbHQx">
            <node concept="3clFbS" id="3c" role="3Kbo56">
              <node concept="3clFbJ" id="3e" role="3cqZAp">
                <node concept="3clFbS" id="3g" role="3clFbx">
                  <node concept="3cpWs8" id="3i" role="3cqZAp">
                    <node concept="3cpWsn" id="3l" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3m" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3n" role="33vP2m">
                        <node concept="1pGfFk" id="3o" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3j" role="3cqZAp">
                    <node concept="2OqwBi" id="3p" role="3clFbG">
                      <node concept="37vLTw" id="3q" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3r" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:5982026979499062445" />
                        <node concept="11gdke" id="3s" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                        <node concept="11gdke" id="3t" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                        <node concept="11gdke" id="3u" role="37wK5m">
                          <property role="11gdj1" value="53046dd7fdd834adL" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                        <node concept="11gdke" id="3v" role="37wK5m">
                          <property role="11gdj1" value="53046dd7fdd834aeL" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                        <node concept="Xl_RD" id="3w" role="37wK5m">
                          <property role="Xl_RC" value="target" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                        <node concept="Xl_RD" id="3x" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                        <node concept="Xl_RD" id="3y" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:5982026979499062445" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3k" role="3cqZAp">
                    <node concept="37vLTI" id="3z" role="3clFbG">
                      <node concept="2OqwBi" id="3$" role="37vLTx">
                        <node concept="37vLTw" id="3A" role="2Oq$k0">
                          <ref role="3cqZAo" node="3l" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3B" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3_" role="37vLTJ">
                        <ref role="3cqZAo" node="5" resolve="props_CalculationValueReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3h" role="3clFbw">
                  <node concept="10Nm6u" id="3C" role="3uHU7w" />
                  <node concept="37vLTw" id="3D" role="3uHU7B">
                    <ref role="3cqZAo" node="5" resolve="props_CalculationValueReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3f" role="3cqZAp">
                <node concept="37vLTw" id="3E" role="3cqZAk">
                  <ref role="3cqZAo" node="5" resolve="props_CalculationValueReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3d" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ek" resolve="CalculationValueReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1u" role="3KbHQx">
            <node concept="3clFbS" id="3F" role="3Kbo56">
              <node concept="3clFbJ" id="3H" role="3cqZAp">
                <node concept="3clFbS" id="3J" role="3clFbx">
                  <node concept="3cpWs8" id="3L" role="3cqZAp">
                    <node concept="3cpWsn" id="3O" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3P" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3Q" role="33vP2m">
                        <node concept="1pGfFk" id="3R" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3M" role="3cqZAp">
                    <node concept="2OqwBi" id="3S" role="3clFbG">
                      <node concept="37vLTw" id="3T" role="2Oq$k0">
                        <ref role="3cqZAo" node="3O" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3U" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1241362555920" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3N" role="3cqZAp">
                    <node concept="37vLTI" id="3V" role="3clFbG">
                      <node concept="2OqwBi" id="3W" role="37vLTx">
                        <node concept="37vLTw" id="3Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="3O" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3Z" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3X" role="37vLTJ">
                        <ref role="3cqZAo" node="6" resolve="props_Calculator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3K" role="3clFbw">
                  <node concept="10Nm6u" id="40" role="3uHU7w" />
                  <node concept="37vLTw" id="41" role="3uHU7B">
                    <ref role="3cqZAo" node="6" resolve="props_Calculator" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3I" role="3cqZAp">
                <node concept="37vLTw" id="42" role="3cqZAk">
                  <ref role="3cqZAo" node="6" resolve="props_Calculator" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3G" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="el" resolve="Calculator" />
            </node>
          </node>
          <node concept="3KbdKl" id="1v" role="3KbHQx">
            <node concept="3clFbS" id="43" role="3Kbo56">
              <node concept="3clFbJ" id="45" role="3cqZAp">
                <node concept="3clFbS" id="47" role="3clFbx">
                  <node concept="3cpWs8" id="49" role="3cqZAp">
                    <node concept="3cpWsn" id="4b" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4c" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4d" role="33vP2m">
                        <node concept="1pGfFk" id="4e" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4a" role="3cqZAp">
                    <node concept="37vLTI" id="4f" role="3clFbG">
                      <node concept="2OqwBi" id="4g" role="37vLTx">
                        <node concept="37vLTw" id="4i" role="2Oq$k0">
                          <ref role="3cqZAo" node="4b" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4j" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4h" role="37vLTJ">
                        <ref role="3cqZAo" node="7" resolve="props_CalculatorType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="48" role="3clFbw">
                  <node concept="10Nm6u" id="4k" role="3uHU7w" />
                  <node concept="37vLTw" id="4l" role="3uHU7B">
                    <ref role="3cqZAo" node="7" resolve="props_CalculatorType" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="46" role="3cqZAp">
                <node concept="37vLTw" id="4m" role="3cqZAk">
                  <ref role="3cqZAo" node="7" resolve="props_CalculatorType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="44" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="em" resolve="CalculatorType" />
            </node>
          </node>
          <node concept="3KbdKl" id="1w" role="3KbHQx">
            <node concept="3clFbS" id="4n" role="3Kbo56">
              <node concept="3clFbJ" id="4p" role="3cqZAp">
                <node concept="3clFbS" id="4r" role="3clFbx">
                  <node concept="3cpWs8" id="4t" role="3cqZAp">
                    <node concept="3cpWsn" id="4v" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4w" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4x" role="33vP2m">
                        <node concept="1pGfFk" id="4y" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4u" role="3cqZAp">
                    <node concept="37vLTI" id="4z" role="3clFbG">
                      <node concept="2OqwBi" id="4$" role="37vLTx">
                        <node concept="37vLTw" id="4A" role="2Oq$k0">
                          <ref role="3cqZAo" node="4v" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4B" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4_" role="37vLTJ">
                        <ref role="3cqZAo" node="8" resolve="props_Command" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4s" role="3clFbw">
                  <node concept="10Nm6u" id="4C" role="3uHU7w" />
                  <node concept="37vLTw" id="4D" role="3uHU7B">
                    <ref role="3cqZAo" node="8" resolve="props_Command" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4q" role="3cqZAp">
                <node concept="37vLTw" id="4E" role="3cqZAk">
                  <ref role="3cqZAo" node="8" resolve="props_Command" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4o" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="en" resolve="Command" />
            </node>
          </node>
          <node concept="3KbdKl" id="1x" role="3KbHQx">
            <node concept="3clFbS" id="4F" role="3Kbo56">
              <node concept="3clFbJ" id="4H" role="3cqZAp">
                <node concept="3clFbS" id="4J" role="3clFbx">
                  <node concept="3cpWs8" id="4L" role="3cqZAp">
                    <node concept="3cpWsn" id="4O" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4P" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4Q" role="33vP2m">
                        <node concept="1pGfFk" id="4R" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4M" role="3cqZAp">
                    <node concept="2OqwBi" id="4S" role="3clFbG">
                      <node concept="37vLTw" id="4T" role="2Oq$k0">
                        <ref role="3cqZAo" node="4O" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4U" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:2094486643673230671" />
                        <node concept="Xl_RD" id="4V" role="37wK5m">
                          <property role="Xl_RC" value="EmptyLine" />
                          <uo k="s:originTrace" v="n:2094486643673230671" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4N" role="3cqZAp">
                    <node concept="37vLTI" id="4W" role="3clFbG">
                      <node concept="2OqwBi" id="4X" role="37vLTx">
                        <node concept="37vLTw" id="4Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="4O" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="50" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4Y" role="37vLTJ">
                        <ref role="3cqZAo" node="9" resolve="props_EmptyLine" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4K" role="3clFbw">
                  <node concept="10Nm6u" id="51" role="3uHU7w" />
                  <node concept="37vLTw" id="52" role="3uHU7B">
                    <ref role="3cqZAo" node="9" resolve="props_EmptyLine" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4I" role="3cqZAp">
                <node concept="37vLTw" id="53" role="3cqZAk">
                  <ref role="3cqZAo" node="9" resolve="props_EmptyLine" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4G" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eo" resolve="EmptyLine" />
            </node>
          </node>
          <node concept="3KbdKl" id="1y" role="3KbHQx">
            <node concept="3clFbS" id="54" role="3Kbo56">
              <node concept="3clFbJ" id="56" role="3cqZAp">
                <node concept="3clFbS" id="58" role="3clFbx">
                  <node concept="3cpWs8" id="5a" role="3cqZAp">
                    <node concept="3cpWsn" id="5c" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5d" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5e" role="33vP2m">
                        <node concept="1pGfFk" id="5f" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5b" role="3cqZAp">
                    <node concept="37vLTI" id="5g" role="3clFbG">
                      <node concept="2OqwBi" id="5h" role="37vLTx">
                        <node concept="37vLTw" id="5j" role="2Oq$k0">
                          <ref role="3cqZAo" node="5c" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5k" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5i" role="37vLTJ">
                        <ref role="3cqZAo" node="a" resolve="props_Field" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="59" role="3clFbw">
                  <node concept="10Nm6u" id="5l" role="3uHU7w" />
                  <node concept="37vLTw" id="5m" role="3uHU7B">
                    <ref role="3cqZAo" node="a" resolve="props_Field" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="57" role="3cqZAp">
                <node concept="37vLTw" id="5n" role="3cqZAk">
                  <ref role="3cqZAo" node="a" resolve="props_Field" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="55" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ep" resolve="Field" />
            </node>
          </node>
          <node concept="3KbdKl" id="1z" role="3KbHQx">
            <node concept="3clFbS" id="5o" role="3Kbo56">
              <node concept="3clFbJ" id="5q" role="3cqZAp">
                <node concept="3clFbS" id="5s" role="3clFbx">
                  <node concept="3cpWs8" id="5u" role="3cqZAp">
                    <node concept="3cpWsn" id="5x" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5z" role="33vP2m">
                        <node concept="1pGfFk" id="5$" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5v" role="3cqZAp">
                    <node concept="2OqwBi" id="5_" role="3clFbG">
                      <node concept="37vLTw" id="5A" role="2Oq$k0">
                        <ref role="3cqZAo" node="5x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5B" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:1241363083334" />
                        <node concept="11gdke" id="5C" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                        <node concept="11gdke" id="5D" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                        <node concept="11gdke" id="5E" role="37wK5m">
                          <property role="11gdj1" value="12107017046L" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                        <node concept="11gdke" id="5F" role="37wK5m">
                          <property role="11gdj1" value="1210701c618L" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                        <node concept="Xl_RD" id="5G" role="37wK5m">
                          <property role="Xl_RC" value="field" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                        <node concept="Xl_RD" id="5H" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                        <node concept="Xl_RD" id="5I" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1241363083334" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5w" role="3cqZAp">
                    <node concept="37vLTI" id="5J" role="3clFbG">
                      <node concept="2OqwBi" id="5K" role="37vLTx">
                        <node concept="37vLTw" id="5M" role="2Oq$k0">
                          <ref role="3cqZAo" node="5x" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5N" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5L" role="37vLTJ">
                        <ref role="3cqZAo" node="b" resolve="props_FieldReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5t" role="3clFbw">
                  <node concept="10Nm6u" id="5O" role="3uHU7w" />
                  <node concept="37vLTw" id="5P" role="3uHU7B">
                    <ref role="3cqZAo" node="b" resolve="props_FieldReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5r" role="3cqZAp">
                <node concept="37vLTw" id="5Q" role="3cqZAk">
                  <ref role="3cqZAo" node="b" resolve="props_FieldReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5p" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eq" resolve="FieldReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1$" role="3KbHQx">
            <node concept="3clFbS" id="5R" role="3Kbo56">
              <node concept="3clFbJ" id="5T" role="3cqZAp">
                <node concept="3clFbS" id="5V" role="3clFbx">
                  <node concept="3cpWs8" id="5X" role="3cqZAp">
                    <node concept="3cpWsn" id="61" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="62" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="63" role="33vP2m">
                        <node concept="1pGfFk" id="64" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5Y" role="3cqZAp">
                    <node concept="2OqwBi" id="65" role="3clFbG">
                      <node concept="37vLTw" id="66" role="2Oq$k0">
                        <ref role="3cqZAo" node="61" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="67" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.shortDesc(java.lang.String)" resolve="shortDesc" />
                        <node concept="Xl_RD" id="68" role="37wK5m">
                          <property role="Xl_RC" value="Allows the user to insert a value of a given value_kind, in BaseLanguage, the Java type of InputField's value is 'double'" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5Z" role="3cqZAp">
                    <node concept="2OqwBi" id="69" role="3clFbG">
                      <node concept="37vLTw" id="6a" role="2Oq$k0">
                        <ref role="3cqZAo" node="61" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6b" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1241362608529" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="60" role="3cqZAp">
                    <node concept="37vLTI" id="6c" role="3clFbG">
                      <node concept="2OqwBi" id="6d" role="37vLTx">
                        <node concept="37vLTw" id="6f" role="2Oq$k0">
                          <ref role="3cqZAo" node="61" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6g" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6e" role="37vLTJ">
                        <ref role="3cqZAo" node="c" resolve="props_InputField" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5W" role="3clFbw">
                  <node concept="10Nm6u" id="6h" role="3uHU7w" />
                  <node concept="37vLTw" id="6i" role="3uHU7B">
                    <ref role="3cqZAo" node="c" resolve="props_InputField" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5U" role="3cqZAp">
                <node concept="37vLTw" id="6j" role="3cqZAk">
                  <ref role="3cqZAo" node="c" resolve="props_InputField" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5S" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="er" resolve="InputField" />
            </node>
          </node>
          <node concept="3KbdKl" id="1_" role="3KbHQx">
            <node concept="3clFbS" id="6k" role="3Kbo56">
              <node concept="3clFbJ" id="6m" role="3cqZAp">
                <node concept="3clFbS" id="6o" role="3clFbx">
                  <node concept="3cpWs8" id="6q" role="3cqZAp">
                    <node concept="3cpWsn" id="6t" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6u" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6v" role="33vP2m">
                        <node concept="1pGfFk" id="6w" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6r" role="3cqZAp">
                    <node concept="2OqwBi" id="6x" role="3clFbG">
                      <node concept="37vLTw" id="6y" role="2Oq$k0">
                        <ref role="3cqZAo" node="6t" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6z" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:4779620959590639988" />
                        <node concept="t5JxF" id="6$" role="lGtFl">
                          <property role="t5JxN" value="A check box input that evaluates to a boolean value true/false. Refered to by instances of 'LogicalReference' in 'Calculation'" />
                          <uo k="s:originTrace" v="n:4998694871347929766" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6s" role="3cqZAp">
                    <node concept="37vLTI" id="6_" role="3clFbG">
                      <node concept="2OqwBi" id="6A" role="37vLTx">
                        <node concept="37vLTw" id="6C" role="2Oq$k0">
                          <ref role="3cqZAo" node="6t" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6D" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6B" role="37vLTJ">
                        <ref role="3cqZAo" node="d" resolve="props_Logical" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6p" role="3clFbw">
                  <node concept="10Nm6u" id="6E" role="3uHU7w" />
                  <node concept="37vLTw" id="6F" role="3uHU7B">
                    <ref role="3cqZAo" node="d" resolve="props_Logical" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6n" role="3cqZAp">
                <node concept="37vLTw" id="6G" role="3cqZAk">
                  <ref role="3cqZAo" node="d" resolve="props_Logical" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6l" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="es" resolve="Logical" />
            </node>
          </node>
          <node concept="3KbdKl" id="1A" role="3KbHQx">
            <node concept="3clFbS" id="6H" role="3Kbo56">
              <node concept="3clFbJ" id="6J" role="3cqZAp">
                <node concept="3clFbS" id="6L" role="3clFbx">
                  <node concept="3cpWs8" id="6N" role="3cqZAp">
                    <node concept="3cpWsn" id="6Q" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6R" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6S" role="33vP2m">
                        <node concept="1pGfFk" id="6T" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6O" role="3cqZAp">
                    <node concept="2OqwBi" id="6U" role="3clFbG">
                      <node concept="37vLTw" id="6V" role="2Oq$k0">
                        <ref role="3cqZAo" node="6Q" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6W" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:4779620959590640040" />
                        <node concept="11gdke" id="6X" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                        <node concept="11gdke" id="6Y" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                        <node concept="11gdke" id="6Z" role="37wK5m">
                          <property role="11gdj1" value="42549ff0716969a8L" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                        <node concept="11gdke" id="70" role="37wK5m">
                          <property role="11gdj1" value="42549ff0716969a9L" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                        <node concept="Xl_RD" id="71" role="37wK5m">
                          <property role="Xl_RC" value="target" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                        <node concept="Xl_RD" id="72" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                        <node concept="Xl_RD" id="73" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:4779620959590640040" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6P" role="3cqZAp">
                    <node concept="37vLTI" id="74" role="3clFbG">
                      <node concept="2OqwBi" id="75" role="37vLTx">
                        <node concept="37vLTw" id="77" role="2Oq$k0">
                          <ref role="3cqZAo" node="6Q" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="78" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="76" role="37vLTJ">
                        <ref role="3cqZAo" node="e" resolve="props_LogicalReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6M" role="3clFbw">
                  <node concept="10Nm6u" id="79" role="3uHU7w" />
                  <node concept="37vLTw" id="7a" role="3uHU7B">
                    <ref role="3cqZAo" node="e" resolve="props_LogicalReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6K" role="3cqZAp">
                <node concept="37vLTw" id="7b" role="3cqZAk">
                  <ref role="3cqZAo" node="e" resolve="props_LogicalReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6I" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="et" resolve="LogicalReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1B" role="3KbHQx">
            <node concept="3clFbS" id="7c" role="3Kbo56">
              <node concept="3clFbJ" id="7e" role="3cqZAp">
                <node concept="3clFbS" id="7g" role="3clFbx">
                  <node concept="3cpWs8" id="7i" role="3cqZAp">
                    <node concept="3cpWsn" id="7l" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7m" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7n" role="33vP2m">
                        <node concept="1pGfFk" id="7o" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7j" role="3cqZAp">
                    <node concept="2OqwBi" id="7p" role="3clFbG">
                      <node concept="37vLTw" id="7q" role="2Oq$k0">
                        <ref role="3cqZAo" node="7l" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7r" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:2369396721460470227" />
                        <node concept="Xl_RD" id="7s" role="37wK5m">
                          <property role="Xl_RC" value="logical" />
                          <uo k="s:originTrace" v="n:2369396721460470227" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7k" role="3cqZAp">
                    <node concept="37vLTI" id="7t" role="3clFbG">
                      <node concept="2OqwBi" id="7u" role="37vLTx">
                        <node concept="37vLTw" id="7w" role="2Oq$k0">
                          <ref role="3cqZAo" node="7l" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7x" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7v" role="37vLTJ">
                        <ref role="3cqZAo" node="f" resolve="props_LogicalType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7h" role="3clFbw">
                  <node concept="10Nm6u" id="7y" role="3uHU7w" />
                  <node concept="37vLTw" id="7z" role="3uHU7B">
                    <ref role="3cqZAo" node="f" resolve="props_LogicalType" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7f" role="3cqZAp">
                <node concept="37vLTw" id="7$" role="3cqZAk">
                  <ref role="3cqZAo" node="f" resolve="props_LogicalType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7d" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eu" resolve="LogicalType" />
            </node>
          </node>
          <node concept="3KbdKl" id="1C" role="3KbHQx">
            <node concept="3clFbS" id="7_" role="3Kbo56">
              <node concept="3clFbJ" id="7B" role="3cqZAp">
                <node concept="3clFbS" id="7D" role="3clFbx">
                  <node concept="3cpWs8" id="7F" role="3cqZAp">
                    <node concept="3cpWsn" id="7I" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7J" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7K" role="33vP2m">
                        <node concept="1pGfFk" id="7L" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7G" role="3cqZAp">
                    <node concept="2OqwBi" id="7M" role="3clFbG">
                      <node concept="37vLTw" id="7N" role="2Oq$k0">
                        <ref role="3cqZAo" node="7I" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7O" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:2369396721460470226" />
                        <node concept="Xl_RD" id="7P" role="37wK5m">
                          <property role="Xl_RC" value="numeric" />
                          <uo k="s:originTrace" v="n:2369396721460470226" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7H" role="3cqZAp">
                    <node concept="37vLTI" id="7Q" role="3clFbG">
                      <node concept="2OqwBi" id="7R" role="37vLTx">
                        <node concept="37vLTw" id="7T" role="2Oq$k0">
                          <ref role="3cqZAo" node="7I" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7U" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7S" role="37vLTJ">
                        <ref role="3cqZAo" node="g" resolve="props_NumericType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7E" role="3clFbw">
                  <node concept="10Nm6u" id="7V" role="3uHU7w" />
                  <node concept="37vLTw" id="7W" role="3uHU7B">
                    <ref role="3cqZAo" node="g" resolve="props_NumericType" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7C" role="3cqZAp">
                <node concept="37vLTw" id="7X" role="3cqZAk">
                  <ref role="3cqZAo" node="g" resolve="props_NumericType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7A" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ev" resolve="NumericType" />
            </node>
          </node>
          <node concept="3KbdKl" id="1D" role="3KbHQx">
            <node concept="3clFbS" id="7Y" role="3Kbo56">
              <node concept="3clFbJ" id="80" role="3cqZAp">
                <node concept="3clFbS" id="82" role="3clFbx">
                  <node concept="3cpWs8" id="84" role="3cqZAp">
                    <node concept="3cpWsn" id="87" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="88" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="89" role="33vP2m">
                        <node concept="1pGfFk" id="8a" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="85" role="3cqZAp">
                    <node concept="2OqwBi" id="8b" role="3clFbG">
                      <node concept="37vLTw" id="8c" role="2Oq$k0">
                        <ref role="3cqZAo" node="87" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8d" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:4779620959590794895" />
                        <node concept="t5JxF" id="8e" role="lGtFl">
                          <property role="t5JxN" value="An option for Selector" />
                          <uo k="s:originTrace" v="n:4998694871347929765" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="86" role="3cqZAp">
                    <node concept="37vLTI" id="8f" role="3clFbG">
                      <node concept="2OqwBi" id="8g" role="37vLTx">
                        <node concept="37vLTw" id="8i" role="2Oq$k0">
                          <ref role="3cqZAo" node="87" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="8j" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="8h" role="37vLTJ">
                        <ref role="3cqZAo" node="h" resolve="props_Option" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="83" role="3clFbw">
                  <node concept="10Nm6u" id="8k" role="3uHU7w" />
                  <node concept="37vLTw" id="8l" role="3uHU7B">
                    <ref role="3cqZAo" node="h" resolve="props_Option" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="81" role="3cqZAp">
                <node concept="37vLTw" id="8m" role="3cqZAk">
                  <ref role="3cqZAo" node="h" resolve="props_Option" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7Z" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ew" resolve="Option" />
            </node>
          </node>
          <node concept="3KbdKl" id="1E" role="3KbHQx">
            <node concept="3clFbS" id="8n" role="3Kbo56">
              <node concept="3clFbJ" id="8p" role="3cqZAp">
                <node concept="3clFbS" id="8r" role="3clFbx">
                  <node concept="3cpWs8" id="8t" role="3cqZAp">
                    <node concept="3cpWsn" id="8x" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="8y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="8z" role="33vP2m">
                        <node concept="1pGfFk" id="8$" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8u" role="3cqZAp">
                    <node concept="2OqwBi" id="8_" role="3clFbG">
                      <node concept="37vLTw" id="8A" role="2Oq$k0">
                        <ref role="3cqZAo" node="8x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8B" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.shortDesc(java.lang.String)" resolve="shortDesc" />
                        <node concept="Xl_RD" id="8C" role="37wK5m">
                          <property role="Xl_RC" value="A field that displays a calculated value using an expression on input fields and parameters" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8v" role="3cqZAp">
                    <node concept="2OqwBi" id="8D" role="3clFbG">
                      <node concept="37vLTw" id="8E" role="2Oq$k0">
                        <ref role="3cqZAo" node="8x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8F" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1241362815640" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8w" role="3cqZAp">
                    <node concept="37vLTI" id="8G" role="3clFbG">
                      <node concept="2OqwBi" id="8H" role="37vLTx">
                        <node concept="37vLTw" id="8J" role="2Oq$k0">
                          <ref role="3cqZAo" node="8x" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="8K" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="8I" role="37vLTJ">
                        <ref role="3cqZAo" node="i" resolve="props_OutputField" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="8s" role="3clFbw">
                  <node concept="10Nm6u" id="8L" role="3uHU7w" />
                  <node concept="37vLTw" id="8M" role="3uHU7B">
                    <ref role="3cqZAo" node="i" resolve="props_OutputField" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="8q" role="3cqZAp">
                <node concept="37vLTw" id="8N" role="3cqZAk">
                  <ref role="3cqZAo" node="i" resolve="props_OutputField" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8o" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ex" resolve="OutputField" />
            </node>
          </node>
          <node concept="3KbdKl" id="1F" role="3KbHQx">
            <node concept="3clFbS" id="8O" role="3Kbo56">
              <node concept="3clFbJ" id="8Q" role="3cqZAp">
                <node concept="3clFbS" id="8S" role="3clFbx">
                  <node concept="3cpWs8" id="8U" role="3cqZAp">
                    <node concept="3cpWsn" id="8X" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="8Y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="8Z" role="33vP2m">
                        <node concept="1pGfFk" id="90" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8V" role="3cqZAp">
                    <node concept="2OqwBi" id="91" role="3clFbG">
                      <node concept="37vLTw" id="92" role="2Oq$k0">
                        <ref role="3cqZAo" node="8X" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="93" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:5982026979499766956" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8W" role="3cqZAp">
                    <node concept="37vLTI" id="94" role="3clFbG">
                      <node concept="2OqwBi" id="95" role="37vLTx">
                        <node concept="37vLTw" id="97" role="2Oq$k0">
                          <ref role="3cqZAo" node="8X" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="98" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="96" role="37vLTJ">
                        <ref role="3cqZAo" node="j" resolve="props_OutputTable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="8T" role="3clFbw">
                  <node concept="10Nm6u" id="99" role="3uHU7w" />
                  <node concept="37vLTw" id="9a" role="3uHU7B">
                    <ref role="3cqZAo" node="j" resolve="props_OutputTable" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="8R" role="3cqZAp">
                <node concept="37vLTw" id="9b" role="3cqZAk">
                  <ref role="3cqZAo" node="j" resolve="props_OutputTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8P" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ey" resolve="OutputTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="1G" role="3KbHQx">
            <node concept="3clFbS" id="9c" role="3Kbo56">
              <node concept="3clFbJ" id="9e" role="3cqZAp">
                <node concept="3clFbS" id="9g" role="3clFbx">
                  <node concept="3cpWs8" id="9i" role="3cqZAp">
                    <node concept="3cpWsn" id="9m" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="9n" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="9o" role="33vP2m">
                        <node concept="1pGfFk" id="9p" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9j" role="3cqZAp">
                    <node concept="2OqwBi" id="9q" role="3clFbG">
                      <node concept="37vLTw" id="9r" role="2Oq$k0">
                        <ref role="3cqZAo" node="9m" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="9s" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.shortDesc(java.lang.String)" resolve="shortDesc" />
                        <node concept="Xl_RD" id="9t" role="37wK5m">
                          <property role="Xl_RC" value="An input field with a default value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9k" role="3cqZAp">
                    <node concept="2OqwBi" id="9u" role="3clFbG">
                      <node concept="37vLTw" id="9v" role="2Oq$k0">
                        <ref role="3cqZAo" node="9m" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="9w" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:2094486643673041390" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9l" role="3cqZAp">
                    <node concept="37vLTI" id="9x" role="3clFbG">
                      <node concept="2OqwBi" id="9y" role="37vLTx">
                        <node concept="37vLTw" id="9$" role="2Oq$k0">
                          <ref role="3cqZAo" node="9m" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="9_" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="9z" role="37vLTJ">
                        <ref role="3cqZAo" node="k" resolve="props_Parameter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="9h" role="3clFbw">
                  <node concept="10Nm6u" id="9A" role="3uHU7w" />
                  <node concept="37vLTw" id="9B" role="3uHU7B">
                    <ref role="3cqZAo" node="k" resolve="props_Parameter" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="9f" role="3cqZAp">
                <node concept="37vLTw" id="9C" role="3cqZAk">
                  <ref role="3cqZAo" node="k" resolve="props_Parameter" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="9d" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ez" resolve="Parameter" />
            </node>
          </node>
          <node concept="3KbdKl" id="1H" role="3KbHQx">
            <node concept="3clFbS" id="9D" role="3Kbo56">
              <node concept="3clFbJ" id="9F" role="3cqZAp">
                <node concept="3clFbS" id="9H" role="3clFbx">
                  <node concept="3cpWs8" id="9J" role="3cqZAp">
                    <node concept="3cpWsn" id="9M" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="9N" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="9O" role="33vP2m">
                        <node concept="1pGfFk" id="9P" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9K" role="3cqZAp">
                    <node concept="2OqwBi" id="9Q" role="3clFbG">
                      <node concept="37vLTw" id="9R" role="2Oq$k0">
                        <ref role="3cqZAo" node="9M" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="9S" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:4779620959590794892" />
                        <node concept="t5JxF" id="9T" role="lGtFl">
                          <property role="t5JxN" value="A drop-down box style input field, options as 'Option' concept instances, set value_kind to the desired type of selector's values" />
                          <uo k="s:originTrace" v="n:4998694871347929764" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9L" role="3cqZAp">
                    <node concept="37vLTI" id="9U" role="3clFbG">
                      <node concept="2OqwBi" id="9V" role="37vLTx">
                        <node concept="37vLTw" id="9X" role="2Oq$k0">
                          <ref role="3cqZAo" node="9M" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="9Y" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="9W" role="37vLTJ">
                        <ref role="3cqZAo" node="l" resolve="props_Selector" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="9I" role="3clFbw">
                  <node concept="10Nm6u" id="9Z" role="3uHU7w" />
                  <node concept="37vLTw" id="a0" role="3uHU7B">
                    <ref role="3cqZAo" node="l" resolve="props_Selector" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="9G" role="3cqZAp">
                <node concept="37vLTw" id="a1" role="3cqZAk">
                  <ref role="3cqZAo" node="l" resolve="props_Selector" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="9E" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="e$" resolve="Selector" />
            </node>
          </node>
          <node concept="3KbdKl" id="1I" role="3KbHQx">
            <node concept="3clFbS" id="a2" role="3Kbo56">
              <node concept="3clFbJ" id="a4" role="3cqZAp">
                <node concept="3clFbS" id="a6" role="3clFbx">
                  <node concept="3cpWs8" id="a8" role="3cqZAp">
                    <node concept="3cpWsn" id="ab" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="ac" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="ad" role="33vP2m">
                        <node concept="1pGfFk" id="ae" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="a9" role="3cqZAp">
                    <node concept="2OqwBi" id="af" role="3clFbG">
                      <node concept="37vLTw" id="ag" role="2Oq$k0">
                        <ref role="3cqZAo" node="ab" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="ah" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:4779620959590795032" />
                        <node concept="11gdke" id="ai" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                        <node concept="11gdke" id="aj" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                        <node concept="11gdke" id="ak" role="37wK5m">
                          <property role="11gdj1" value="42549ff0716bc718L" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                        <node concept="11gdke" id="al" role="37wK5m">
                          <property role="11gdj1" value="42549ff0716bc719L" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                        <node concept="Xl_RD" id="am" role="37wK5m">
                          <property role="Xl_RC" value="target" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                        <node concept="Xl_RD" id="an" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                        <node concept="Xl_RD" id="ao" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:4779620959590795032" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="aa" role="3cqZAp">
                    <node concept="37vLTI" id="ap" role="3clFbG">
                      <node concept="2OqwBi" id="aq" role="37vLTx">
                        <node concept="37vLTw" id="as" role="2Oq$k0">
                          <ref role="3cqZAo" node="ab" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="at" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="ar" role="37vLTJ">
                        <ref role="3cqZAo" node="m" resolve="props_SelectorReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="a7" role="3clFbw">
                  <node concept="10Nm6u" id="au" role="3uHU7w" />
                  <node concept="37vLTw" id="av" role="3uHU7B">
                    <ref role="3cqZAo" node="m" resolve="props_SelectorReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="a5" role="3cqZAp">
                <node concept="37vLTw" id="aw" role="3cqZAk">
                  <ref role="3cqZAo" node="m" resolve="props_SelectorReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="a3" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="e_" resolve="SelectorReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1J" role="3KbHQx">
            <node concept="3clFbS" id="ax" role="3Kbo56">
              <node concept="3clFbJ" id="az" role="3cqZAp">
                <node concept="3clFbS" id="a_" role="3clFbx">
                  <node concept="3cpWs8" id="aB" role="3cqZAp">
                    <node concept="3cpWsn" id="aE" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="aF" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="aG" role="33vP2m">
                        <node concept="1pGfFk" id="aH" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="aC" role="3cqZAp">
                    <node concept="2OqwBi" id="aI" role="3clFbG">
                      <node concept="37vLTw" id="aJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="aE" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="aK" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:2369396721460470228" />
                        <node concept="Xl_RD" id="aL" role="37wK5m">
                          <property role="Xl_RC" value="textual" />
                          <uo k="s:originTrace" v="n:2369396721460470228" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="aD" role="3cqZAp">
                    <node concept="37vLTI" id="aM" role="3clFbG">
                      <node concept="2OqwBi" id="aN" role="37vLTx">
                        <node concept="37vLTw" id="aP" role="2Oq$k0">
                          <ref role="3cqZAo" node="aE" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="aQ" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="aO" role="37vLTJ">
                        <ref role="3cqZAo" node="n" resolve="props_TextualType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="aA" role="3clFbw">
                  <node concept="10Nm6u" id="aR" role="3uHU7w" />
                  <node concept="37vLTw" id="aS" role="3uHU7B">
                    <ref role="3cqZAo" node="n" resolve="props_TextualType" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="a$" role="3cqZAp">
                <node concept="37vLTw" id="aT" role="3cqZAk">
                  <ref role="3cqZAo" node="n" resolve="props_TextualType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ay" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eA" resolve="TextualType" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1g" role="3cqZAp">
          <node concept="10Nm6u" id="aU" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="1a" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="2AHcQZ" id="1b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1c" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="aV">
    <property role="TrG5h" value="EnumerationDescriptor_ValueKind" />
    <uo k="s:originTrace" v="n:2094486643672734645" />
    <node concept="2tJIrI" id="aW" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="3clFbW" id="aX" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3cqZAl" id="bi" role="3clF45">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3Tm1VV" id="bj" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3clFbS" id="bk" role="3clF47">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="XkiVB" id="bl" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="11gdke" id="bm" role="37wK5m">
            <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="bn" role="37wK5m">
            <property role="11gdj1" value="83bed2ea6f3627c2L" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="bo" role="37wK5m">
            <property role="11gdj1" value="1d111c815ee9dbb5L" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bp" role="37wK5m">
            <property role="Xl_RC" value="ValueKind" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bq" role="37wK5m">
            <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643672734645" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="aY" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="312cEg" id="aZ" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_amount_0" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="br" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="bs" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2ShNRf" id="bt" role="33vP2m">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="1pGfFk" id="bu" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="Xl_RD" id="bv" role="37wK5m">
            <property role="Xl_RC" value="amount" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bw" role="37wK5m">
            <property role="Xl_RC" value="amount" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="bx" role="37wK5m">
            <property role="11gdj1" value="1d111c815ee9dbb6L" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="by" role="37wK5m">
            <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643672734646" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="b0" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_percent_0" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="bz" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="b$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2ShNRf" id="b_" role="33vP2m">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="1pGfFk" id="bA" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="Xl_RD" id="bB" role="37wK5m">
            <property role="Xl_RC" value="percent" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bC" role="37wK5m">
            <property role="Xl_RC" value="percent" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="bD" role="37wK5m">
            <property role="11gdj1" value="1d111c815ee9dbb7L" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bE" role="37wK5m">
            <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643672734647" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="b1" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_logical_0" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="bF" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="bG" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2ShNRf" id="bH" role="33vP2m">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="1pGfFk" id="bI" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="Xl_RD" id="bJ" role="37wK5m">
            <property role="Xl_RC" value="logical" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bK" role="37wK5m">
            <property role="Xl_RC" value="logical" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="bL" role="37wK5m">
            <property role="11gdj1" value="20e1c9c3baa061c7L" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bM" role="37wK5m">
            <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721460470215" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="b2" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_textual_0" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="bN" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="bO" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2ShNRf" id="bP" role="33vP2m">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="1pGfFk" id="bQ" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="Xl_RD" id="bR" role="37wK5m">
            <property role="Xl_RC" value="textual" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bS" role="37wK5m">
            <property role="Xl_RC" value="textual" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="bT" role="37wK5m">
            <property role="11gdj1" value="20e1c9c3baa061ccL" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="bU" role="37wK5m">
            <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721460470220" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="b3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_numeric_0" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="bV" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="bW" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2ShNRf" id="bX" role="33vP2m">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="1pGfFk" id="bY" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="Xl_RD" id="bZ" role="37wK5m">
            <property role="Xl_RC" value="numeric" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="c0" role="37wK5m">
            <property role="Xl_RC" value="numeric" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="11gdke" id="c1" role="37wK5m">
            <property role="11gdj1" value="1d111c815eee70cdL" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="Xl_RD" id="c2" role="37wK5m">
            <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643673034957" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="b4" role="1B3o_S">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="3uibUv" id="b5" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="2tJIrI" id="b6" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="312cEg" id="b7" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="c3" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="c4" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2YIFZM" id="c5" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="11gdke" id="c6" role="37wK5m">
          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="c7" role="37wK5m">
          <property role="11gdj1" value="83bed2ea6f3627c2L" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="c8" role="37wK5m">
          <property role="11gdj1" value="1d111c815ee9dbb5L" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="c9" role="37wK5m">
          <property role="11gdj1" value="1d111c815ee9dbb6L" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="ca" role="37wK5m">
          <property role="11gdj1" value="1d111c815ee9dbb7L" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="cb" role="37wK5m">
          <property role="11gdj1" value="20e1c9c3baa061c7L" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="cc" role="37wK5m">
          <property role="11gdj1" value="20e1c9c3baa061ccL" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="11gdke" id="cd" role="37wK5m">
          <property role="11gdj1" value="1d111c815eee70cdL" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="b8" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm6S6" id="ce" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="cf" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3uibUv" id="ch" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
      </node>
      <node concept="2ShNRf" id="cg" role="33vP2m">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="1pGfFk" id="ci" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList0.&lt;init&gt;(jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList0" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="37vLTw" id="cj" role="37wK5m">
            <ref role="3cqZAo" node="b7" resolve="myIndex" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="37vLTw" id="ck" role="37wK5m">
            <ref role="3cqZAo" node="aZ" resolve="myMember_amount_0" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="37vLTw" id="cl" role="37wK5m">
            <ref role="3cqZAo" node="b0" resolve="myMember_percent_0" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="37vLTw" id="cm" role="37wK5m">
            <ref role="3cqZAo" node="b1" resolve="myMember_logical_0" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="37vLTw" id="cn" role="37wK5m">
            <ref role="3cqZAo" node="b2" resolve="myMember_textual_0" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="37vLTw" id="co" role="37wK5m">
            <ref role="3cqZAo" node="b3" resolve="myMember_numeric_0" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="b9" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="3clFb_" id="ba" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm1VV" id="cp" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2AHcQZ" id="cq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="cr" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3clFbS" id="cs" role="3clF47">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3clFbF" id="cu" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="10Nm6u" id="cv" role="3clFbG">
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ct" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
    </node>
    <node concept="2tJIrI" id="bb" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="3clFb_" id="bc" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm1VV" id="cw" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2AHcQZ" id="cx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="cy" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3uibUv" id="c_" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
      </node>
      <node concept="3clFbS" id="cz" role="3clF47">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3cpWs6" id="cA" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="37vLTw" id="cB" role="3cqZAk">
            <ref role="3cqZAo" node="b8" resolve="myMembers" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="c$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
    </node>
    <node concept="2tJIrI" id="bd" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="3clFb_" id="be" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm1VV" id="cC" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2AHcQZ" id="cD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="cE" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="37vLTG" id="cF" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3uibUv" id="cI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
        <node concept="2AHcQZ" id="cJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
      </node>
      <node concept="3clFbS" id="cG" role="3clF47">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3clFbJ" id="cK" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="3clFbS" id="cN" role="3clFbx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="3cpWs6" id="cP" role="3cqZAp">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="10Nm6u" id="cQ" role="3cqZAk">
                <uo k="s:originTrace" v="n:2094486643672734645" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="cO" role="3clFbw">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="10Nm6u" id="cR" role="3uHU7w">
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="37vLTw" id="cS" role="3uHU7B">
              <ref role="3cqZAo" node="cF" resolve="memberName" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="cL" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="37vLTw" id="cT" role="3KbGdf">
            <ref role="3cqZAo" node="cF" resolve="memberName" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
          <node concept="3KbdKl" id="cU" role="3KbHQx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="Xl_RD" id="cZ" role="3Kbmr1">
              <property role="Xl_RC" value="amount" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="3clFbS" id="d0" role="3Kbo56">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="3cpWs6" id="d1" role="3cqZAp">
                <uo k="s:originTrace" v="n:2094486643672734645" />
                <node concept="37vLTw" id="d2" role="3cqZAk">
                  <ref role="3cqZAo" node="aZ" resolve="myMember_amount_0" />
                  <uo k="s:originTrace" v="n:2094486643672734645" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cV" role="3KbHQx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="Xl_RD" id="d3" role="3Kbmr1">
              <property role="Xl_RC" value="percent" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="3clFbS" id="d4" role="3Kbo56">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="3cpWs6" id="d5" role="3cqZAp">
                <uo k="s:originTrace" v="n:2094486643672734645" />
                <node concept="37vLTw" id="d6" role="3cqZAk">
                  <ref role="3cqZAo" node="b0" resolve="myMember_percent_0" />
                  <uo k="s:originTrace" v="n:2094486643672734645" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cW" role="3KbHQx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="Xl_RD" id="d7" role="3Kbmr1">
              <property role="Xl_RC" value="logical" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="3clFbS" id="d8" role="3Kbo56">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="3cpWs6" id="d9" role="3cqZAp">
                <uo k="s:originTrace" v="n:2094486643672734645" />
                <node concept="37vLTw" id="da" role="3cqZAk">
                  <ref role="3cqZAo" node="b1" resolve="myMember_logical_0" />
                  <uo k="s:originTrace" v="n:2094486643672734645" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cX" role="3KbHQx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="Xl_RD" id="db" role="3Kbmr1">
              <property role="Xl_RC" value="textual" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="3clFbS" id="dc" role="3Kbo56">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="3cpWs6" id="dd" role="3cqZAp">
                <uo k="s:originTrace" v="n:2094486643672734645" />
                <node concept="37vLTw" id="de" role="3cqZAk">
                  <ref role="3cqZAo" node="b2" resolve="myMember_textual_0" />
                  <uo k="s:originTrace" v="n:2094486643672734645" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cY" role="3KbHQx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="Xl_RD" id="df" role="3Kbmr1">
              <property role="Xl_RC" value="numeric" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="3clFbS" id="dg" role="3Kbo56">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="3cpWs6" id="dh" role="3cqZAp">
                <uo k="s:originTrace" v="n:2094486643672734645" />
                <node concept="37vLTw" id="di" role="3cqZAk">
                  <ref role="3cqZAo" node="b3" resolve="myMember_numeric_0" />
                  <uo k="s:originTrace" v="n:2094486643672734645" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="cM" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="10Nm6u" id="dj" role="3cqZAk">
            <uo k="s:originTrace" v="n:2094486643672734645" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="cH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
    </node>
    <node concept="2tJIrI" id="bf" role="jymVt">
      <uo k="s:originTrace" v="n:2094486643672734645" />
    </node>
    <node concept="3clFb_" id="bg" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:2094486643672734645" />
      <node concept="3Tm1VV" id="dk" role="1B3o_S">
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="2AHcQZ" id="dl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="3uibUv" id="dm" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
      <node concept="37vLTG" id="dn" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3cpWsb" id="dq" role="1tU5fm">
          <uo k="s:originTrace" v="n:2094486643672734645" />
        </node>
      </node>
      <node concept="3clFbS" id="do" role="3clF47">
        <uo k="s:originTrace" v="n:2094486643672734645" />
        <node concept="3cpWs8" id="dr" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="3cpWsn" id="du" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="10Oyi0" id="dv" role="1tU5fm">
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="2OqwBi" id="dw" role="33vP2m">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="37vLTw" id="dx" role="2Oq$k0">
                <ref role="3cqZAo" node="b7" resolve="myIndex" />
                <uo k="s:originTrace" v="n:2094486643672734645" />
              </node>
              <node concept="liA8E" id="dy" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:2094486643672734645" />
                <node concept="37vLTw" id="dz" role="37wK5m">
                  <ref role="3cqZAo" node="dn" resolve="idValue" />
                  <uo k="s:originTrace" v="n:2094486643672734645" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="ds" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="3clFbS" id="d$" role="3clFbx">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="3cpWs6" id="dA" role="3cqZAp">
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="10Nm6u" id="dB" role="3cqZAk">
                <uo k="s:originTrace" v="n:2094486643672734645" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="d_" role="3clFbw">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="3cmrfG" id="dC" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="37vLTw" id="dD" role="3uHU7B">
              <ref role="3cqZAo" node="du" resolve="index" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dt" role="3cqZAp">
          <uo k="s:originTrace" v="n:2094486643672734645" />
          <node concept="2OqwBi" id="dE" role="3clFbG">
            <uo k="s:originTrace" v="n:2094486643672734645" />
            <node concept="37vLTw" id="dF" role="2Oq$k0">
              <ref role="3cqZAo" node="b8" resolve="myMembers" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
            </node>
            <node concept="liA8E" id="dG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:2094486643672734645" />
              <node concept="37vLTw" id="dH" role="37wK5m">
                <ref role="3cqZAo" node="du" resolve="index" />
                <uo k="s:originTrace" v="n:2094486643672734645" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2094486643672734645" />
      </node>
    </node>
    <node concept="t5JxF" id="bh" role="lGtFl">
      <property role="t5JxN" value="WHEN creating or updating fincalculator forms THEN set ValueKind explicitly (amount or number)" />
      <uo k="s:originTrace" v="n:4998694871347781393" />
    </node>
  </node>
  <node concept="39dXUE" id="dI">
    <node concept="39e2AJ" id="dJ" role="39e2AI">
      <property role="39e3Y2" value="EnumerationDescriptorCons" />
      <node concept="39e2AG" id="dN" role="39e3Y0">
        <ref role="39e2AK" to="64eg:1Oh785uUtIP" resolve="ValueKind" />
        <node concept="385nmt" id="dO" role="385vvn">
          <property role="385vuF" value="ValueKind" />
          <node concept="3u3nmq" id="dQ" role="385v07">
            <property role="3u3nmv" value="2094486643672734645" />
          </node>
        </node>
        <node concept="39e2AT" id="dP" role="39e2AY">
          <ref role="39e2AS" node="aX" resolve="EnumerationDescriptor_ValueKind" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="dK" role="39e2AI">
      <property role="39e3Y2" value="EnumerationMember" />
      <node concept="39e2AG" id="dR" role="39e3Y0">
        <ref role="39e2AK" to="64eg:1Oh785uUtIQ" resolve="amount" />
        <node concept="385nmt" id="dW" role="385vvn">
          <property role="385vuF" value="amount" />
          <node concept="3u3nmq" id="dY" role="385v07">
            <property role="3u3nmv" value="2094486643672734646" />
          </node>
        </node>
        <node concept="39e2AT" id="dX" role="39e2AY">
          <ref role="39e2AS" node="aZ" resolve="myMember_amount_0" />
        </node>
      </node>
      <node concept="39e2AG" id="dS" role="39e3Y0">
        <ref role="39e2AK" to="64eg:23xMseUC677" resolve="logical" />
        <node concept="385nmt" id="dZ" role="385vvn">
          <property role="385vuF" value="logical" />
          <node concept="3u3nmq" id="e1" role="385v07">
            <property role="3u3nmv" value="2369396721460470215" />
          </node>
        </node>
        <node concept="39e2AT" id="e0" role="39e2AY">
          <ref role="39e2AS" node="b1" resolve="myMember_logical_0" />
        </node>
      </node>
      <node concept="39e2AG" id="dT" role="39e3Y0">
        <ref role="39e2AK" to="64eg:1Oh785uVB3d" resolve="numeric" />
        <node concept="385nmt" id="e2" role="385vvn">
          <property role="385vuF" value="numeric" />
          <node concept="3u3nmq" id="e4" role="385v07">
            <property role="3u3nmv" value="2094486643673034957" />
          </node>
        </node>
        <node concept="39e2AT" id="e3" role="39e2AY">
          <ref role="39e2AS" node="b3" resolve="myMember_numeric_0" />
        </node>
      </node>
      <node concept="39e2AG" id="dU" role="39e3Y0">
        <ref role="39e2AK" to="64eg:1Oh785uUtIR" resolve="percent" />
        <node concept="385nmt" id="e5" role="385vvn">
          <property role="385vuF" value="percent" />
          <node concept="3u3nmq" id="e7" role="385v07">
            <property role="3u3nmv" value="2094486643672734647" />
          </node>
        </node>
        <node concept="39e2AT" id="e6" role="39e2AY">
          <ref role="39e2AS" node="b0" resolve="myMember_percent_0" />
        </node>
      </node>
      <node concept="39e2AG" id="dV" role="39e3Y0">
        <ref role="39e2AK" to="64eg:23xMseUC67c" resolve="textual" />
        <node concept="385nmt" id="e8" role="385vvn">
          <property role="385vuF" value="textual" />
          <node concept="3u3nmq" id="ea" role="385v07">
            <property role="3u3nmv" value="2369396721460470220" />
          </node>
        </node>
        <node concept="39e2AT" id="e9" role="39e2AY">
          <ref role="39e2AS" node="b2" resolve="myMember_textual_0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="dL" role="39e2AI">
      <property role="39e3Y2" value="ConceptPresentationAspectClass" />
      <node concept="39e2AG" id="eb" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="ec" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptPresentationAspectImpl" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="dM" role="39e2AI">
      <property role="39e3Y2" value="StructureAspectDescriptorCons" />
      <node concept="39e2AG" id="ed" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="ee" role="39e2AY">
          <ref role="39e2AS" node="j8" resolve="StructureAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="ef">
    <property role="TrG5h" value="LanguageConceptSwitch" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="eg" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="eL" role="1B3o_S" />
      <node concept="3uibUv" id="eM" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~LanguageConceptIndex" resolve="LanguageConceptIndex" />
      </node>
    </node>
    <node concept="Wx3nA" id="eh" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Calculation" />
      <node concept="3Tm1VV" id="eN" role="1B3o_S" />
      <node concept="10Oyi0" id="eO" role="1tU5fm" />
      <node concept="3cmrfG" id="eP" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="ei" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CalculationReference" />
      <node concept="3Tm1VV" id="eQ" role="1B3o_S" />
      <node concept="10Oyi0" id="eR" role="1tU5fm" />
      <node concept="3cmrfG" id="eS" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="ej" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CalculationValue" />
      <node concept="3Tm1VV" id="eT" role="1B3o_S" />
      <node concept="10Oyi0" id="eU" role="1tU5fm" />
      <node concept="3cmrfG" id="eV" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="Wx3nA" id="ek" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CalculationValueReference" />
      <node concept="3Tm1VV" id="eW" role="1B3o_S" />
      <node concept="10Oyi0" id="eX" role="1tU5fm" />
      <node concept="3cmrfG" id="eY" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="el" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Calculator" />
      <node concept="3Tm1VV" id="eZ" role="1B3o_S" />
      <node concept="10Oyi0" id="f0" role="1tU5fm" />
      <node concept="3cmrfG" id="f1" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="em" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CalculatorType" />
      <node concept="3Tm1VV" id="f2" role="1B3o_S" />
      <node concept="10Oyi0" id="f3" role="1tU5fm" />
      <node concept="3cmrfG" id="f4" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="Wx3nA" id="en" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Command" />
      <node concept="3Tm1VV" id="f5" role="1B3o_S" />
      <node concept="10Oyi0" id="f6" role="1tU5fm" />
      <node concept="3cmrfG" id="f7" role="33vP2m">
        <property role="3cmrfH" value="6" />
      </node>
    </node>
    <node concept="Wx3nA" id="eo" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EmptyLine" />
      <node concept="3Tm1VV" id="f8" role="1B3o_S" />
      <node concept="10Oyi0" id="f9" role="1tU5fm" />
      <node concept="3cmrfG" id="fa" role="33vP2m">
        <property role="3cmrfH" value="7" />
      </node>
    </node>
    <node concept="Wx3nA" id="ep" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Field" />
      <node concept="3Tm1VV" id="fb" role="1B3o_S" />
      <node concept="10Oyi0" id="fc" role="1tU5fm" />
      <node concept="3cmrfG" id="fd" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="Wx3nA" id="eq" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="FieldReference" />
      <node concept="3Tm1VV" id="fe" role="1B3o_S" />
      <node concept="10Oyi0" id="ff" role="1tU5fm" />
      <node concept="3cmrfG" id="fg" role="33vP2m">
        <property role="3cmrfH" value="9" />
      </node>
    </node>
    <node concept="Wx3nA" id="er" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="InputField" />
      <node concept="3Tm1VV" id="fh" role="1B3o_S" />
      <node concept="10Oyi0" id="fi" role="1tU5fm" />
      <node concept="3cmrfG" id="fj" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="Wx3nA" id="es" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Logical" />
      <node concept="3Tm1VV" id="fk" role="1B3o_S" />
      <node concept="10Oyi0" id="fl" role="1tU5fm" />
      <node concept="3cmrfG" id="fm" role="33vP2m">
        <property role="3cmrfH" value="11" />
      </node>
    </node>
    <node concept="Wx3nA" id="et" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LogicalReference" />
      <node concept="3Tm1VV" id="fn" role="1B3o_S" />
      <node concept="10Oyi0" id="fo" role="1tU5fm" />
      <node concept="3cmrfG" id="fp" role="33vP2m">
        <property role="3cmrfH" value="12" />
      </node>
    </node>
    <node concept="Wx3nA" id="eu" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LogicalType" />
      <node concept="3Tm1VV" id="fq" role="1B3o_S" />
      <node concept="10Oyi0" id="fr" role="1tU5fm" />
      <node concept="3cmrfG" id="fs" role="33vP2m">
        <property role="3cmrfH" value="13" />
      </node>
    </node>
    <node concept="Wx3nA" id="ev" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NumericType" />
      <node concept="3Tm1VV" id="ft" role="1B3o_S" />
      <node concept="10Oyi0" id="fu" role="1tU5fm" />
      <node concept="3cmrfG" id="fv" role="33vP2m">
        <property role="3cmrfH" value="14" />
      </node>
    </node>
    <node concept="Wx3nA" id="ew" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Option" />
      <node concept="3Tm1VV" id="fw" role="1B3o_S" />
      <node concept="10Oyi0" id="fx" role="1tU5fm" />
      <node concept="3cmrfG" id="fy" role="33vP2m">
        <property role="3cmrfH" value="15" />
      </node>
    </node>
    <node concept="Wx3nA" id="ex" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OutputField" />
      <node concept="3Tm1VV" id="fz" role="1B3o_S" />
      <node concept="10Oyi0" id="f$" role="1tU5fm" />
      <node concept="3cmrfG" id="f_" role="33vP2m">
        <property role="3cmrfH" value="16" />
      </node>
    </node>
    <node concept="Wx3nA" id="ey" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OutputTable" />
      <node concept="3Tm1VV" id="fA" role="1B3o_S" />
      <node concept="10Oyi0" id="fB" role="1tU5fm" />
      <node concept="3cmrfG" id="fC" role="33vP2m">
        <property role="3cmrfH" value="17" />
      </node>
    </node>
    <node concept="Wx3nA" id="ez" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Parameter" />
      <node concept="3Tm1VV" id="fD" role="1B3o_S" />
      <node concept="10Oyi0" id="fE" role="1tU5fm" />
      <node concept="3cmrfG" id="fF" role="33vP2m">
        <property role="3cmrfH" value="18" />
      </node>
    </node>
    <node concept="Wx3nA" id="e$" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Selector" />
      <node concept="3Tm1VV" id="fG" role="1B3o_S" />
      <node concept="10Oyi0" id="fH" role="1tU5fm" />
      <node concept="3cmrfG" id="fI" role="33vP2m">
        <property role="3cmrfH" value="19" />
      </node>
    </node>
    <node concept="Wx3nA" id="e_" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SelectorReference" />
      <node concept="3Tm1VV" id="fJ" role="1B3o_S" />
      <node concept="10Oyi0" id="fK" role="1tU5fm" />
      <node concept="3cmrfG" id="fL" role="33vP2m">
        <property role="3cmrfH" value="20" />
      </node>
    </node>
    <node concept="Wx3nA" id="eA" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TextualType" />
      <node concept="3Tm1VV" id="fM" role="1B3o_S" />
      <node concept="10Oyi0" id="fN" role="1tU5fm" />
      <node concept="3cmrfG" id="fO" role="33vP2m">
        <property role="3cmrfH" value="21" />
      </node>
    </node>
    <node concept="2tJIrI" id="eB" role="jymVt" />
    <node concept="3clFbW" id="eC" role="jymVt">
      <node concept="3cqZAl" id="fP" role="3clF45" />
      <node concept="3Tm1VV" id="fQ" role="1B3o_S" />
      <node concept="3clFbS" id="fR" role="3clF47">
        <node concept="3cpWs8" id="fS" role="3cqZAp">
          <node concept="3cpWsn" id="gg" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="gh" role="1tU5fm">
              <ref role="3uigEE" to="ksn4:~LanguageConceptIndexBuilder" resolve="LanguageConceptIndexBuilder" />
            </node>
            <node concept="2ShNRf" id="gi" role="33vP2m">
              <node concept="1pGfFk" id="gj" role="2ShVmc">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.&lt;init&gt;(long,long)" resolve="LanguageConceptIndexBuilder" />
                <node concept="11gdke" id="gk" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="gl" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fT" role="3cqZAp">
          <node concept="2OqwBi" id="gm" role="3clFbG">
            <node concept="37vLTw" id="gn" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="go" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gp" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3ba743f75L" />
              </node>
              <node concept="37vLTw" id="gq" role="37wK5m">
                <ref role="3cqZAo" node="eh" resolve="Calculation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fU" role="3cqZAp">
          <node concept="2OqwBi" id="gr" role="3clFbG">
            <node concept="37vLTw" id="gs" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gt" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gu" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3ba7966a7L" />
              </node>
              <node concept="37vLTw" id="gv" role="37wK5m">
                <ref role="3cqZAo" node="ei" resolve="CalculationReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fV" role="3cqZAp">
          <node concept="2OqwBi" id="gw" role="3clFbG">
            <node concept="37vLTw" id="gx" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gy" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gz" role="37wK5m">
                <property role="11gdj1" value="53046dd7fdd5e3b3L" />
              </node>
              <node concept="37vLTw" id="g$" role="37wK5m">
                <ref role="3cqZAo" node="ej" resolve="CalculationValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fW" role="3cqZAp">
          <node concept="2OqwBi" id="g_" role="3clFbG">
            <node concept="37vLTw" id="gA" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gB" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gC" role="37wK5m">
                <property role="11gdj1" value="53046dd7fdd834adL" />
              </node>
              <node concept="37vLTw" id="gD" role="37wK5m">
                <ref role="3cqZAo" node="ek" resolve="CalculationValueReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fX" role="3cqZAp">
          <node concept="2OqwBi" id="gE" role="3clFbG">
            <node concept="37vLTw" id="gF" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gG" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gH" role="37wK5m">
                <property role="11gdj1" value="12106f96410L" />
              </node>
              <node concept="37vLTw" id="gI" role="37wK5m">
                <ref role="3cqZAo" node="el" resolve="Calculator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fY" role="3cqZAp">
          <node concept="2OqwBi" id="gJ" role="3clFbG">
            <node concept="37vLTw" id="gK" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gL" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gM" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d5L" />
              </node>
              <node concept="37vLTw" id="gN" role="37wK5m">
                <ref role="3cqZAo" node="em" resolve="CalculatorType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fZ" role="3cqZAp">
          <node concept="2OqwBi" id="gO" role="3clFbG">
            <node concept="37vLTw" id="gP" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gQ" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gR" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
              <node concept="37vLTw" id="gS" role="37wK5m">
                <ref role="3cqZAo" node="en" resolve="Command" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g0" role="3cqZAp">
          <node concept="2OqwBi" id="gT" role="3clFbG">
            <node concept="37vLTw" id="gU" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="gV" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="gW" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d4fL" />
              </node>
              <node concept="37vLTw" id="gX" role="37wK5m">
                <ref role="3cqZAo" node="eo" resolve="EmptyLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g1" role="3cqZAp">
          <node concept="2OqwBi" id="gY" role="3clFbG">
            <node concept="37vLTw" id="gZ" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="h0" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="h1" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef3602cL" />
              </node>
              <node concept="37vLTw" id="h2" role="37wK5m">
                <ref role="3cqZAo" node="ep" resolve="Field" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g2" role="3cqZAp">
          <node concept="2OqwBi" id="h3" role="3clFbG">
            <node concept="37vLTw" id="h4" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="h5" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="h6" role="37wK5m">
                <property role="11gdj1" value="12107017046L" />
              </node>
              <node concept="37vLTw" id="h7" role="37wK5m">
                <ref role="3cqZAo" node="eq" resolve="FieldReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g3" role="3cqZAp">
          <node concept="2OqwBi" id="h8" role="3clFbG">
            <node concept="37vLTw" id="h9" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="ha" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hb" role="37wK5m">
                <property role="11gdj1" value="12106fa3191L" />
              </node>
              <node concept="37vLTw" id="hc" role="37wK5m">
                <ref role="3cqZAo" node="er" resolve="InputField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g4" role="3cqZAp">
          <node concept="2OqwBi" id="hd" role="3clFbG">
            <node concept="37vLTw" id="he" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hf" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hg" role="37wK5m">
                <property role="11gdj1" value="42549ff071696974L" />
              </node>
              <node concept="37vLTw" id="hh" role="37wK5m">
                <ref role="3cqZAo" node="es" resolve="Logical" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g5" role="3cqZAp">
          <node concept="2OqwBi" id="hi" role="3clFbG">
            <node concept="37vLTw" id="hj" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hk" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hl" role="37wK5m">
                <property role="11gdj1" value="42549ff0716969a8L" />
              </node>
              <node concept="37vLTw" id="hm" role="37wK5m">
                <ref role="3cqZAo" node="et" resolve="LogicalReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g6" role="3cqZAp">
          <node concept="2OqwBi" id="hn" role="3clFbG">
            <node concept="37vLTw" id="ho" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hp" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hq" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d3L" />
              </node>
              <node concept="37vLTw" id="hr" role="37wK5m">
                <ref role="3cqZAo" node="eu" resolve="LogicalType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g7" role="3cqZAp">
          <node concept="2OqwBi" id="hs" role="3clFbG">
            <node concept="37vLTw" id="ht" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hu" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hv" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d2L" />
              </node>
              <node concept="37vLTw" id="hw" role="37wK5m">
                <ref role="3cqZAo" node="ev" resolve="NumericType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g8" role="3cqZAp">
          <node concept="2OqwBi" id="hx" role="3clFbG">
            <node concept="37vLTw" id="hy" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hz" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="h$" role="37wK5m">
                <property role="11gdj1" value="42549ff0716bc68fL" />
              </node>
              <node concept="37vLTw" id="h_" role="37wK5m">
                <ref role="3cqZAo" node="ew" resolve="Option" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9" role="3cqZAp">
          <node concept="2OqwBi" id="hA" role="3clFbG">
            <node concept="37vLTw" id="hB" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hC" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hD" role="37wK5m">
                <property role="11gdj1" value="12106fd5a98L" />
              </node>
              <node concept="37vLTw" id="hE" role="37wK5m">
                <ref role="3cqZAo" node="ex" resolve="OutputField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ga" role="3cqZAp">
          <node concept="2OqwBi" id="hF" role="3clFbG">
            <node concept="37vLTw" id="hG" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hH" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hI" role="37wK5m">
                <property role="11gdj1" value="53046dd7fde2f4acL" />
              </node>
              <node concept="37vLTw" id="hJ" role="37wK5m">
                <ref role="3cqZAo" node="ey" resolve="OutputTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gb" role="3cqZAp">
          <node concept="2OqwBi" id="hK" role="3clFbG">
            <node concept="37vLTw" id="hL" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hM" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hN" role="37wK5m">
                <property role="11gdj1" value="1d111c815eee89eeL" />
              </node>
              <node concept="37vLTw" id="hO" role="37wK5m">
                <ref role="3cqZAo" node="ez" resolve="Parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gc" role="3cqZAp">
          <node concept="2OqwBi" id="hP" role="3clFbG">
            <node concept="37vLTw" id="hQ" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hR" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hS" role="37wK5m">
                <property role="11gdj1" value="42549ff0716bc68cL" />
              </node>
              <node concept="37vLTw" id="hT" role="37wK5m">
                <ref role="3cqZAo" node="e$" resolve="Selector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gd" role="3cqZAp">
          <node concept="2OqwBi" id="hU" role="3clFbG">
            <node concept="37vLTw" id="hV" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="hW" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="hX" role="37wK5m">
                <property role="11gdj1" value="42549ff0716bc718L" />
              </node>
              <node concept="37vLTw" id="hY" role="37wK5m">
                <ref role="3cqZAo" node="e_" resolve="SelectorReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ge" role="3cqZAp">
          <node concept="2OqwBi" id="hZ" role="3clFbG">
            <node concept="37vLTw" id="i0" role="2Oq$k0">
              <ref role="3cqZAo" node="gg" resolve="builder" />
            </node>
            <node concept="liA8E" id="i1" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="i2" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d4L" />
              </node>
              <node concept="37vLTw" id="i3" role="37wK5m">
                <ref role="3cqZAo" node="eA" resolve="TextualType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gf" role="3cqZAp">
          <node concept="37vLTI" id="i4" role="3clFbG">
            <node concept="2OqwBi" id="i5" role="37vLTx">
              <node concept="37vLTw" id="i7" role="2Oq$k0">
                <ref role="3cqZAo" node="gg" resolve="builder" />
              </node>
              <node concept="liA8E" id="i8" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.seal()" resolve="seal" />
              </node>
            </node>
            <node concept="37vLTw" id="i6" role="37vLTJ">
              <ref role="3cqZAo" node="eg" resolve="myIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="eD" role="jymVt" />
    <node concept="3clFb_" id="eE" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="i9" role="3clF45" />
      <node concept="3clFbS" id="ia" role="3clF47">
        <node concept="3cpWs6" id="ic" role="3cqZAp">
          <node concept="2OqwBi" id="id" role="3cqZAk">
            <node concept="37vLTw" id="ie" role="2Oq$k0">
              <ref role="3cqZAo" node="eg" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="if" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="index" />
              <node concept="37vLTw" id="ig" role="37wK5m">
                <ref role="3cqZAo" node="ib" resolve="cid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ib" role="3clF46">
        <property role="TrG5h" value="cid" />
        <node concept="3uibUv" id="ih" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="eF" role="jymVt" />
    <node concept="3clFb_" id="eG" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="ii" role="3clF45" />
      <node concept="3Tm1VV" id="ij" role="1B3o_S" />
      <node concept="3clFbS" id="ik" role="3clF47">
        <node concept="3cpWs6" id="in" role="3cqZAp">
          <node concept="2OqwBi" id="io" role="3cqZAk">
            <node concept="37vLTw" id="ip" role="2Oq$k0">
              <ref role="3cqZAo" node="eg" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="iq" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <node concept="37vLTw" id="ir" role="37wK5m">
                <ref role="3cqZAo" node="il" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="il" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="is" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="2AHcQZ" id="im" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="eH" role="jymVt" />
    <node concept="3Tm1VV" id="eI" role="1B3o_S" />
    <node concept="3uibUv" id="eJ" role="EKbjA">
      <ref role="3uigEE" to="ksn4:~ConceptIndex" resolve="ConceptIndex" />
    </node>
    <node concept="3clFb_" id="eK" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="3Tm1VV" id="it" role="1B3o_S" />
      <node concept="10Oyi0" id="iu" role="3clF45" />
      <node concept="37vLTG" id="iv" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="iz" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
        <node concept="2AHcQZ" id="i$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="iw" role="3clF46">
        <property role="TrG5h" value="missingValue" />
        <node concept="10Oyi0" id="i_" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="ix" role="3clF47">
        <node concept="3cpWs6" id="iA" role="3cqZAp">
          <node concept="2OqwBi" id="iB" role="3cqZAk">
            <node concept="37vLTw" id="iC" role="2Oq$k0">
              <ref role="3cqZAo" node="eg" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="iD" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept,int)" resolve="index" />
              <node concept="37vLTw" id="iE" role="37wK5m">
                <ref role="3cqZAo" node="iv" resolve="c" />
              </node>
              <node concept="37vLTw" id="iF" role="37wK5m">
                <ref role="3cqZAo" node="iw" resolve="missingValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="iy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="iG">
    <property role="TrG5h" value="StructureAspectDescriptor" />
    <node concept="3uibUv" id="iH" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseStructureAspectDescriptor" resolve="BaseStructureAspectDescriptor" />
    </node>
    <node concept="312cEg" id="iI" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCalculation" />
      <node concept="3uibUv" id="jF" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jG" role="33vP2m">
        <ref role="37wK5l" node="jl" resolve="createDescriptorForCalculation" />
      </node>
    </node>
    <node concept="312cEg" id="iJ" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCalculationReference" />
      <node concept="3uibUv" id="jH" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jI" role="33vP2m">
        <ref role="37wK5l" node="jm" resolve="createDescriptorForCalculationReference" />
      </node>
    </node>
    <node concept="312cEg" id="iK" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCalculationValue" />
      <node concept="3uibUv" id="jJ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jK" role="33vP2m">
        <ref role="37wK5l" node="jn" resolve="createDescriptorForCalculationValue" />
      </node>
    </node>
    <node concept="312cEg" id="iL" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCalculationValueReference" />
      <node concept="3uibUv" id="jL" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jM" role="33vP2m">
        <ref role="37wK5l" node="jo" resolve="createDescriptorForCalculationValueReference" />
      </node>
    </node>
    <node concept="312cEg" id="iM" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCalculator" />
      <node concept="3uibUv" id="jN" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jO" role="33vP2m">
        <ref role="37wK5l" node="jp" resolve="createDescriptorForCalculator" />
      </node>
    </node>
    <node concept="312cEg" id="iN" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCalculatorType" />
      <node concept="3uibUv" id="jP" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jQ" role="33vP2m">
        <ref role="37wK5l" node="jq" resolve="createDescriptorForCalculatorType" />
      </node>
    </node>
    <node concept="312cEg" id="iO" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCommand" />
      <node concept="3uibUv" id="jR" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jS" role="33vP2m">
        <ref role="37wK5l" node="jr" resolve="createDescriptorForCommand" />
      </node>
    </node>
    <node concept="312cEg" id="iP" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptEmptyLine" />
      <node concept="3uibUv" id="jT" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jU" role="33vP2m">
        <ref role="37wK5l" node="js" resolve="createDescriptorForEmptyLine" />
      </node>
    </node>
    <node concept="312cEg" id="iQ" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptField" />
      <node concept="3uibUv" id="jV" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jW" role="33vP2m">
        <ref role="37wK5l" node="jt" resolve="createDescriptorForField" />
      </node>
    </node>
    <node concept="312cEg" id="iR" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptFieldReference" />
      <node concept="3uibUv" id="jX" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="jY" role="33vP2m">
        <ref role="37wK5l" node="ju" resolve="createDescriptorForFieldReference" />
      </node>
    </node>
    <node concept="312cEg" id="iS" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptInputField" />
      <node concept="3uibUv" id="jZ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="k0" role="33vP2m">
        <ref role="37wK5l" node="jv" resolve="createDescriptorForInputField" />
      </node>
    </node>
    <node concept="312cEg" id="iT" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptLogical" />
      <node concept="3uibUv" id="k1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="k2" role="33vP2m">
        <ref role="37wK5l" node="jw" resolve="createDescriptorForLogical" />
      </node>
    </node>
    <node concept="312cEg" id="iU" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptLogicalReference" />
      <node concept="3uibUv" id="k3" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="k4" role="33vP2m">
        <ref role="37wK5l" node="jx" resolve="createDescriptorForLogicalReference" />
      </node>
    </node>
    <node concept="312cEg" id="iV" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptLogicalType" />
      <node concept="3uibUv" id="k5" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="k6" role="33vP2m">
        <ref role="37wK5l" node="jy" resolve="createDescriptorForLogicalType" />
      </node>
    </node>
    <node concept="312cEg" id="iW" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptNumericType" />
      <node concept="3uibUv" id="k7" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="k8" role="33vP2m">
        <ref role="37wK5l" node="jz" resolve="createDescriptorForNumericType" />
      </node>
    </node>
    <node concept="312cEg" id="iX" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptOption" />
      <node concept="3uibUv" id="k9" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ka" role="33vP2m">
        <ref role="37wK5l" node="j$" resolve="createDescriptorForOption" />
      </node>
    </node>
    <node concept="312cEg" id="iY" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptOutputField" />
      <node concept="3uibUv" id="kb" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="kc" role="33vP2m">
        <ref role="37wK5l" node="j_" resolve="createDescriptorForOutputField" />
      </node>
    </node>
    <node concept="312cEg" id="iZ" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptOutputTable" />
      <node concept="3uibUv" id="kd" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ke" role="33vP2m">
        <ref role="37wK5l" node="jA" resolve="createDescriptorForOutputTable" />
      </node>
    </node>
    <node concept="312cEg" id="j0" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptParameter" />
      <node concept="3uibUv" id="kf" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="kg" role="33vP2m">
        <ref role="37wK5l" node="jB" resolve="createDescriptorForParameter" />
      </node>
    </node>
    <node concept="312cEg" id="j1" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSelector" />
      <node concept="3uibUv" id="kh" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ki" role="33vP2m">
        <ref role="37wK5l" node="jC" resolve="createDescriptorForSelector" />
      </node>
    </node>
    <node concept="312cEg" id="j2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSelectorReference" />
      <node concept="3uibUv" id="kj" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="kk" role="33vP2m">
        <ref role="37wK5l" node="jD" resolve="createDescriptorForSelectorReference" />
      </node>
    </node>
    <node concept="312cEg" id="j3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptTextualType" />
      <node concept="3uibUv" id="kl" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="km" role="33vP2m">
        <ref role="37wK5l" node="jE" resolve="createDescriptorForTextualType" />
      </node>
    </node>
    <node concept="312cEg" id="j4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationValueKind" />
      <node concept="3uibUv" id="kn" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="ko" role="33vP2m">
        <node concept="1pGfFk" id="kp" role="2ShVmc">
          <ref role="37wK5l" node="aX" resolve="EnumerationDescriptor_ValueKind" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="j5" role="jymVt">
      <property role="TrG5h" value="myIndexSwitch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="kq" role="1B3o_S" />
      <node concept="3uibUv" id="kr" role="1tU5fm">
        <ref role="3uigEE" node="ef" resolve="LanguageConceptSwitch" />
      </node>
    </node>
    <node concept="3Tm1VV" id="j6" role="1B3o_S" />
    <node concept="2tJIrI" id="j7" role="jymVt" />
    <node concept="3clFbW" id="j8" role="jymVt">
      <node concept="3cqZAl" id="ks" role="3clF45" />
      <node concept="3Tm1VV" id="kt" role="1B3o_S" />
      <node concept="3clFbS" id="ku" role="3clF47">
        <node concept="3clFbF" id="kv" role="3cqZAp">
          <node concept="37vLTI" id="kw" role="3clFbG">
            <node concept="2ShNRf" id="kx" role="37vLTx">
              <node concept="1pGfFk" id="kz" role="2ShVmc">
                <ref role="37wK5l" node="eC" resolve="LanguageConceptSwitch" />
              </node>
            </node>
            <node concept="37vLTw" id="ky" role="37vLTJ">
              <ref role="3cqZAo" node="j5" resolve="myIndexSwitch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="j9" role="jymVt" />
    <node concept="2tJIrI" id="ja" role="jymVt" />
    <node concept="3clFb_" id="jb" role="jymVt">
      <property role="TrG5h" value="reportDependencies" />
      <node concept="3Tm1VV" id="k$" role="1B3o_S" />
      <node concept="3cqZAl" id="k_" role="3clF45" />
      <node concept="37vLTG" id="kA" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="3uibUv" id="kD" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~StructureAspectDescriptor$Dependencies" resolve="StructureAspectDescriptor.Dependencies" />
        </node>
      </node>
      <node concept="3clFbS" id="kB" role="3clF47">
        <node concept="3clFbF" id="kE" role="3cqZAp">
          <node concept="2OqwBi" id="kJ" role="3clFbG">
            <node concept="37vLTw" id="kK" role="2Oq$k0">
              <ref role="3cqZAo" node="kA" resolve="deps" />
            </node>
            <node concept="liA8E" id="kL" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="11gdke" id="kM" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="kN" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="Xl_RD" id="kO" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kF" role="3cqZAp">
          <node concept="2OqwBi" id="kP" role="3clFbG">
            <node concept="37vLTw" id="kQ" role="2Oq$k0">
              <ref role="3cqZAo" node="kA" resolve="deps" />
            </node>
            <node concept="liA8E" id="kR" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="11gdke" id="kS" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="kT" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="Xl_RD" id="kU" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.core" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kG" role="3cqZAp">
          <node concept="2OqwBi" id="kV" role="3clFbG">
            <node concept="37vLTw" id="kW" role="2Oq$k0">
              <ref role="3cqZAo" node="kA" resolve="deps" />
            </node>
            <node concept="liA8E" id="kX" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="11gdke" id="kY" role="37wK5m">
                <property role="11gdj1" value="4caf0310491e41f5L" />
              </node>
              <node concept="11gdke" id="kZ" role="37wK5m">
                <property role="11gdj1" value="8a9b2006b3a94898L" />
              </node>
              <node concept="Xl_RD" id="l0" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.execution.util" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kH" role="3cqZAp">
          <node concept="2OqwBi" id="l1" role="3clFbG">
            <node concept="37vLTw" id="l2" role="2Oq$k0">
              <ref role="3cqZAo" node="kA" resolve="deps" />
            </node>
            <node concept="liA8E" id="l3" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.aggregatedLanguage(long,long,java.lang.String)" resolve="aggregatedLanguage" />
              <node concept="11gdke" id="l4" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="l5" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="Xl_RD" id="l6" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kI" role="3cqZAp">
          <node concept="2OqwBi" id="l7" role="3clFbG">
            <node concept="37vLTw" id="l8" role="2Oq$k0">
              <ref role="3cqZAo" node="kA" resolve="deps" />
            </node>
            <node concept="liA8E" id="l9" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.aggregatedLanguage(long,long,java.lang.String)" resolve="aggregatedLanguage" />
              <node concept="11gdke" id="la" role="37wK5m">
                <property role="11gdj1" value="c7fb639fbe784307L" />
              </node>
              <node concept="11gdke" id="lb" role="37wK5m">
                <property role="11gdj1" value="89b0b5959c3fa8c8L" />
              </node>
              <node concept="Xl_RD" id="lc" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="kC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="jc" role="jymVt" />
    <node concept="3clFb_" id="jd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getDescriptors" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="ld" role="3clF47">
        <node concept="3cpWs6" id="lh" role="3cqZAp">
          <node concept="2YIFZM" id="li" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="37vLTw" id="lj" role="37wK5m">
              <ref role="3cqZAo" node="iI" resolve="myConceptCalculation" />
            </node>
            <node concept="37vLTw" id="lk" role="37wK5m">
              <ref role="3cqZAo" node="iJ" resolve="myConceptCalculationReference" />
            </node>
            <node concept="37vLTw" id="ll" role="37wK5m">
              <ref role="3cqZAo" node="iK" resolve="myConceptCalculationValue" />
            </node>
            <node concept="37vLTw" id="lm" role="37wK5m">
              <ref role="3cqZAo" node="iL" resolve="myConceptCalculationValueReference" />
            </node>
            <node concept="37vLTw" id="ln" role="37wK5m">
              <ref role="3cqZAo" node="iM" resolve="myConceptCalculator" />
            </node>
            <node concept="37vLTw" id="lo" role="37wK5m">
              <ref role="3cqZAo" node="iN" resolve="myConceptCalculatorType" />
            </node>
            <node concept="37vLTw" id="lp" role="37wK5m">
              <ref role="3cqZAo" node="iO" resolve="myConceptCommand" />
            </node>
            <node concept="37vLTw" id="lq" role="37wK5m">
              <ref role="3cqZAo" node="iP" resolve="myConceptEmptyLine" />
            </node>
            <node concept="37vLTw" id="lr" role="37wK5m">
              <ref role="3cqZAo" node="iQ" resolve="myConceptField" />
            </node>
            <node concept="37vLTw" id="ls" role="37wK5m">
              <ref role="3cqZAo" node="iR" resolve="myConceptFieldReference" />
            </node>
            <node concept="37vLTw" id="lt" role="37wK5m">
              <ref role="3cqZAo" node="iS" resolve="myConceptInputField" />
            </node>
            <node concept="37vLTw" id="lu" role="37wK5m">
              <ref role="3cqZAo" node="iT" resolve="myConceptLogical" />
            </node>
            <node concept="37vLTw" id="lv" role="37wK5m">
              <ref role="3cqZAo" node="iU" resolve="myConceptLogicalReference" />
            </node>
            <node concept="37vLTw" id="lw" role="37wK5m">
              <ref role="3cqZAo" node="iV" resolve="myConceptLogicalType" />
            </node>
            <node concept="37vLTw" id="lx" role="37wK5m">
              <ref role="3cqZAo" node="iW" resolve="myConceptNumericType" />
            </node>
            <node concept="37vLTw" id="ly" role="37wK5m">
              <ref role="3cqZAo" node="iX" resolve="myConceptOption" />
            </node>
            <node concept="37vLTw" id="lz" role="37wK5m">
              <ref role="3cqZAo" node="iY" resolve="myConceptOutputField" />
            </node>
            <node concept="37vLTw" id="l$" role="37wK5m">
              <ref role="3cqZAo" node="iZ" resolve="myConceptOutputTable" />
            </node>
            <node concept="37vLTw" id="l_" role="37wK5m">
              <ref role="3cqZAo" node="j0" resolve="myConceptParameter" />
            </node>
            <node concept="37vLTw" id="lA" role="37wK5m">
              <ref role="3cqZAo" node="j1" resolve="myConceptSelector" />
            </node>
            <node concept="37vLTw" id="lB" role="37wK5m">
              <ref role="3cqZAo" node="j2" resolve="myConceptSelectorReference" />
            </node>
            <node concept="37vLTw" id="lC" role="37wK5m">
              <ref role="3cqZAo" node="j3" resolve="myConceptTextualType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="le" role="1B3o_S" />
      <node concept="3uibUv" id="lf" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="lD" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="lg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="je" role="jymVt" />
    <node concept="3clFb_" id="jf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="lE" role="1B3o_S" />
      <node concept="37vLTG" id="lF" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="lK" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
      <node concept="3clFbS" id="lG" role="3clF47">
        <node concept="3KaCP$" id="lL" role="3cqZAp">
          <node concept="3KbdKl" id="lM" role="3KbHQx">
            <node concept="3clFbS" id="ma" role="3Kbo56">
              <node concept="3cpWs6" id="mc" role="3cqZAp">
                <node concept="37vLTw" id="md" role="3cqZAk">
                  <ref role="3cqZAo" node="iI" resolve="myConceptCalculation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mb" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eh" resolve="Calculation" />
            </node>
          </node>
          <node concept="3KbdKl" id="lN" role="3KbHQx">
            <node concept="3clFbS" id="me" role="3Kbo56">
              <node concept="3cpWs6" id="mg" role="3cqZAp">
                <node concept="37vLTw" id="mh" role="3cqZAk">
                  <ref role="3cqZAo" node="iJ" resolve="myConceptCalculationReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mf" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ei" resolve="CalculationReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="lO" role="3KbHQx">
            <node concept="3clFbS" id="mi" role="3Kbo56">
              <node concept="3cpWs6" id="mk" role="3cqZAp">
                <node concept="37vLTw" id="ml" role="3cqZAk">
                  <ref role="3cqZAo" node="iK" resolve="myConceptCalculationValue" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mj" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ej" resolve="CalculationValue" />
            </node>
          </node>
          <node concept="3KbdKl" id="lP" role="3KbHQx">
            <node concept="3clFbS" id="mm" role="3Kbo56">
              <node concept="3cpWs6" id="mo" role="3cqZAp">
                <node concept="37vLTw" id="mp" role="3cqZAk">
                  <ref role="3cqZAo" node="iL" resolve="myConceptCalculationValueReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mn" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ek" resolve="CalculationValueReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="lQ" role="3KbHQx">
            <node concept="3clFbS" id="mq" role="3Kbo56">
              <node concept="3cpWs6" id="ms" role="3cqZAp">
                <node concept="37vLTw" id="mt" role="3cqZAk">
                  <ref role="3cqZAo" node="iM" resolve="myConceptCalculator" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mr" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="el" resolve="Calculator" />
            </node>
          </node>
          <node concept="3KbdKl" id="lR" role="3KbHQx">
            <node concept="3clFbS" id="mu" role="3Kbo56">
              <node concept="3cpWs6" id="mw" role="3cqZAp">
                <node concept="37vLTw" id="mx" role="3cqZAk">
                  <ref role="3cqZAo" node="iN" resolve="myConceptCalculatorType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mv" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="em" resolve="CalculatorType" />
            </node>
          </node>
          <node concept="3KbdKl" id="lS" role="3KbHQx">
            <node concept="3clFbS" id="my" role="3Kbo56">
              <node concept="3cpWs6" id="m$" role="3cqZAp">
                <node concept="37vLTw" id="m_" role="3cqZAk">
                  <ref role="3cqZAo" node="iO" resolve="myConceptCommand" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mz" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="en" resolve="Command" />
            </node>
          </node>
          <node concept="3KbdKl" id="lT" role="3KbHQx">
            <node concept="3clFbS" id="mA" role="3Kbo56">
              <node concept="3cpWs6" id="mC" role="3cqZAp">
                <node concept="37vLTw" id="mD" role="3cqZAk">
                  <ref role="3cqZAo" node="iP" resolve="myConceptEmptyLine" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mB" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eo" resolve="EmptyLine" />
            </node>
          </node>
          <node concept="3KbdKl" id="lU" role="3KbHQx">
            <node concept="3clFbS" id="mE" role="3Kbo56">
              <node concept="3cpWs6" id="mG" role="3cqZAp">
                <node concept="37vLTw" id="mH" role="3cqZAk">
                  <ref role="3cqZAo" node="iQ" resolve="myConceptField" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mF" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ep" resolve="Field" />
            </node>
          </node>
          <node concept="3KbdKl" id="lV" role="3KbHQx">
            <node concept="3clFbS" id="mI" role="3Kbo56">
              <node concept="3cpWs6" id="mK" role="3cqZAp">
                <node concept="37vLTw" id="mL" role="3cqZAk">
                  <ref role="3cqZAo" node="iR" resolve="myConceptFieldReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mJ" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eq" resolve="FieldReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="lW" role="3KbHQx">
            <node concept="3clFbS" id="mM" role="3Kbo56">
              <node concept="3cpWs6" id="mO" role="3cqZAp">
                <node concept="37vLTw" id="mP" role="3cqZAk">
                  <ref role="3cqZAo" node="iS" resolve="myConceptInputField" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mN" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="er" resolve="InputField" />
            </node>
          </node>
          <node concept="3KbdKl" id="lX" role="3KbHQx">
            <node concept="3clFbS" id="mQ" role="3Kbo56">
              <node concept="3cpWs6" id="mS" role="3cqZAp">
                <node concept="37vLTw" id="mT" role="3cqZAk">
                  <ref role="3cqZAo" node="iT" resolve="myConceptLogical" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mR" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="es" resolve="Logical" />
            </node>
          </node>
          <node concept="3KbdKl" id="lY" role="3KbHQx">
            <node concept="3clFbS" id="mU" role="3Kbo56">
              <node concept="3cpWs6" id="mW" role="3cqZAp">
                <node concept="37vLTw" id="mX" role="3cqZAk">
                  <ref role="3cqZAo" node="iU" resolve="myConceptLogicalReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mV" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="et" resolve="LogicalReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="lZ" role="3KbHQx">
            <node concept="3clFbS" id="mY" role="3Kbo56">
              <node concept="3cpWs6" id="n0" role="3cqZAp">
                <node concept="37vLTw" id="n1" role="3cqZAk">
                  <ref role="3cqZAo" node="iV" resolve="myConceptLogicalType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="mZ" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eu" resolve="LogicalType" />
            </node>
          </node>
          <node concept="3KbdKl" id="m0" role="3KbHQx">
            <node concept="3clFbS" id="n2" role="3Kbo56">
              <node concept="3cpWs6" id="n4" role="3cqZAp">
                <node concept="37vLTw" id="n5" role="3cqZAk">
                  <ref role="3cqZAo" node="iW" resolve="myConceptNumericType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="n3" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ev" resolve="NumericType" />
            </node>
          </node>
          <node concept="3KbdKl" id="m1" role="3KbHQx">
            <node concept="3clFbS" id="n6" role="3Kbo56">
              <node concept="3cpWs6" id="n8" role="3cqZAp">
                <node concept="37vLTw" id="n9" role="3cqZAk">
                  <ref role="3cqZAo" node="iX" resolve="myConceptOption" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="n7" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ew" resolve="Option" />
            </node>
          </node>
          <node concept="3KbdKl" id="m2" role="3KbHQx">
            <node concept="3clFbS" id="na" role="3Kbo56">
              <node concept="3cpWs6" id="nc" role="3cqZAp">
                <node concept="37vLTw" id="nd" role="3cqZAk">
                  <ref role="3cqZAo" node="iY" resolve="myConceptOutputField" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nb" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ex" resolve="OutputField" />
            </node>
          </node>
          <node concept="3KbdKl" id="m3" role="3KbHQx">
            <node concept="3clFbS" id="ne" role="3Kbo56">
              <node concept="3cpWs6" id="ng" role="3cqZAp">
                <node concept="37vLTw" id="nh" role="3cqZAk">
                  <ref role="3cqZAo" node="iZ" resolve="myConceptOutputTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nf" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ey" resolve="OutputTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="m4" role="3KbHQx">
            <node concept="3clFbS" id="ni" role="3Kbo56">
              <node concept="3cpWs6" id="nk" role="3cqZAp">
                <node concept="37vLTw" id="nl" role="3cqZAk">
                  <ref role="3cqZAo" node="j0" resolve="myConceptParameter" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nj" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ez" resolve="Parameter" />
            </node>
          </node>
          <node concept="3KbdKl" id="m5" role="3KbHQx">
            <node concept="3clFbS" id="nm" role="3Kbo56">
              <node concept="3cpWs6" id="no" role="3cqZAp">
                <node concept="37vLTw" id="np" role="3cqZAk">
                  <ref role="3cqZAo" node="j1" resolve="myConceptSelector" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nn" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="e$" resolve="Selector" />
            </node>
          </node>
          <node concept="3KbdKl" id="m6" role="3KbHQx">
            <node concept="3clFbS" id="nq" role="3Kbo56">
              <node concept="3cpWs6" id="ns" role="3cqZAp">
                <node concept="37vLTw" id="nt" role="3cqZAk">
                  <ref role="3cqZAo" node="j2" resolve="myConceptSelectorReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nr" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="e_" resolve="SelectorReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="m7" role="3KbHQx">
            <node concept="3clFbS" id="nu" role="3Kbo56">
              <node concept="3cpWs6" id="nw" role="3cqZAp">
                <node concept="37vLTw" id="nx" role="3cqZAk">
                  <ref role="3cqZAo" node="j3" resolve="myConceptTextualType" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nv" role="3Kbmr1">
              <ref role="1PxDUh" node="ef" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="eA" resolve="TextualType" />
            </node>
          </node>
          <node concept="2OqwBi" id="m8" role="3KbGdf">
            <node concept="37vLTw" id="ny" role="2Oq$k0">
              <ref role="3cqZAo" node="j5" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="nz" role="2OqNvi">
              <ref role="37wK5l" node="eE" resolve="index" />
              <node concept="37vLTw" id="n$" role="37wK5m">
                <ref role="3cqZAo" node="lF" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="m9" role="3Kb1Dw">
            <node concept="3cpWs6" id="n_" role="3cqZAp">
              <node concept="10Nm6u" id="nA" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="lH" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="2AHcQZ" id="lI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="lJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="jg" role="jymVt" />
    <node concept="3clFb_" id="jh" role="jymVt">
      <property role="TrG5h" value="getDataTypeDescriptors" />
      <node concept="3Tm1VV" id="nB" role="1B3o_S" />
      <node concept="3uibUv" id="nC" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="nF" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~DataTypeDescriptor" resolve="DataTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="nD" role="3clF47">
        <node concept="3cpWs6" id="nG" role="3cqZAp">
          <node concept="2YIFZM" id="nH" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="nI" role="37wK5m">
              <ref role="3cqZAo" node="j4" resolve="myEnumerationValueKind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="nE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="ji" role="jymVt" />
    <node concept="3clFb_" id="jj" role="jymVt">
      <property role="TrG5h" value="internalIndex" />
      <node concept="10Oyi0" id="nJ" role="3clF45" />
      <node concept="3clFbS" id="nK" role="3clF47">
        <node concept="3cpWs6" id="nM" role="3cqZAp">
          <node concept="2OqwBi" id="nN" role="3cqZAk">
            <node concept="37vLTw" id="nO" role="2Oq$k0">
              <ref role="3cqZAo" node="j5" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="nP" role="2OqNvi">
              <ref role="37wK5l" node="eG" resolve="index" />
              <node concept="37vLTw" id="nQ" role="37wK5m">
                <ref role="3cqZAo" node="nL" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="nL" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="nR" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="jk" role="jymVt" />
    <node concept="2YIFZL" id="jl" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCalculation" />
      <node concept="3clFbS" id="nS" role="3clF47">
        <node concept="3cpWs8" id="nV" role="3cqZAp">
          <node concept="3cpWsn" id="o7" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="o8" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="o9" role="33vP2m">
              <node concept="1pGfFk" id="oa" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="ob" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="oc" role="37wK5m">
                  <property role="Xl_RC" value="Calculation" />
                </node>
                <node concept="11gdke" id="od" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="oe" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="of" role="37wK5m">
                  <property role="11gdj1" value="20e1c9c3ba743f75L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nW" role="3cqZAp">
          <node concept="2OqwBi" id="og" role="3clFbG">
            <node concept="37vLTw" id="oh" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="oi" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="oj" role="37wK5m" />
              <node concept="3clFbT" id="ok" role="37wK5m" />
              <node concept="3clFbT" id="ol" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="nX" role="3cqZAp">
          <node concept="1PaTwC" id="om" role="1aUNEU">
            <node concept="3oM_SD" id="on" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="oo" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nY" role="3cqZAp">
          <node concept="15s5l7" id="op" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="oq" role="3clFbG">
            <node concept="37vLTw" id="or" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="os" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="ot" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="ou" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="ov" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nZ" role="3cqZAp">
          <node concept="2OqwBi" id="ow" role="3clFbG">
            <node concept="37vLTw" id="ox" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="oy" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="oz" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="o$" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="o_" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o0" role="3cqZAp">
          <node concept="2OqwBi" id="oA" role="3clFbG">
            <node concept="37vLTw" id="oB" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="oC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="oD" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="oE" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="11gdke" id="oF" role="37wK5m">
                <property role="11gdj1" value="1208f458d37L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o1" role="3cqZAp">
          <node concept="2OqwBi" id="oG" role="3clFbG">
            <node concept="37vLTw" id="oH" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="oI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="oJ" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721457577845" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o2" role="3cqZAp">
          <node concept="2OqwBi" id="oK" role="3clFbG">
            <node concept="37vLTw" id="oL" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="oM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="oN" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o3" role="3cqZAp">
          <node concept="2OqwBi" id="oO" role="3clFbG">
            <node concept="2OqwBi" id="oP" role="2Oq$k0">
              <node concept="2OqwBi" id="oR" role="2Oq$k0">
                <node concept="2OqwBi" id="oT" role="2Oq$k0">
                  <node concept="2OqwBi" id="oV" role="2Oq$k0">
                    <node concept="2OqwBi" id="oX" role="2Oq$k0">
                      <node concept="2OqwBi" id="oZ" role="2Oq$k0">
                        <node concept="37vLTw" id="p1" role="2Oq$k0">
                          <ref role="3cqZAo" node="o7" resolve="b" />
                        </node>
                        <node concept="liA8E" id="p2" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="p3" role="37wK5m">
                            <property role="Xl_RC" value="body" />
                          </node>
                          <node concept="11gdke" id="p4" role="37wK5m">
                            <property role="11gdj1" value="20e1c9c3ba75c867L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="p0" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="p5" role="37wK5m">
                          <property role="11gdj1" value="f3061a5392264cc5L" />
                        </node>
                        <node concept="11gdke" id="p6" role="37wK5m">
                          <property role="11gdj1" value="a443f952ceaf5816L" />
                        </node>
                        <node concept="11gdke" id="p7" role="37wK5m">
                          <property role="11gdj1" value="f8cc56b200L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="oY" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="p8" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="oW" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="p9" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="oU" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="pa" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="oS" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="pb" role="37wK5m">
                  <property role="Xl_RC" value="2369396721457678439" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="oQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o4" role="3cqZAp">
          <node concept="2OqwBi" id="pc" role="3clFbG">
            <node concept="2OqwBi" id="pd" role="2Oq$k0">
              <node concept="2OqwBi" id="pf" role="2Oq$k0">
                <node concept="2OqwBi" id="ph" role="2Oq$k0">
                  <node concept="2OqwBi" id="pj" role="2Oq$k0">
                    <node concept="2OqwBi" id="pl" role="2Oq$k0">
                      <node concept="2OqwBi" id="pn" role="2Oq$k0">
                        <node concept="37vLTw" id="pp" role="2Oq$k0">
                          <ref role="3cqZAo" node="o7" resolve="b" />
                        </node>
                        <node concept="liA8E" id="pq" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="pr" role="37wK5m">
                            <property role="Xl_RC" value="returnType" />
                          </node>
                          <node concept="11gdke" id="ps" role="37wK5m">
                            <property role="11gdj1" value="20e1c9c3ba783088L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="po" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="pt" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        </node>
                        <node concept="11gdke" id="pu" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        </node>
                        <node concept="11gdke" id="pv" role="37wK5m">
                          <property role="11gdj1" value="20e1c9c3baa061d5L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="pm" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="pw" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="pk" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="px" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="pi" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="py" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="pg" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="pz" role="37wK5m">
                  <property role="Xl_RC" value="2369396721457836168" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="pe" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o5" role="3cqZAp">
          <node concept="2OqwBi" id="p$" role="3clFbG">
            <node concept="37vLTw" id="p_" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="pA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="pB" role="37wK5m">
                <property role="Xl_RC" value="calculation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="o6" role="3cqZAp">
          <node concept="2OqwBi" id="pC" role="3cqZAk">
            <node concept="37vLTw" id="pD" role="2Oq$k0">
              <ref role="3cqZAo" node="o7" resolve="b" />
            </node>
            <node concept="liA8E" id="pE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="nT" role="1B3o_S" />
      <node concept="3uibUv" id="nU" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jm" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCalculationReference" />
      <node concept="3clFbS" id="pF" role="3clF47">
        <node concept="3cpWs8" id="pI" role="3cqZAp">
          <node concept="3cpWsn" id="pQ" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="pR" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="pS" role="33vP2m">
              <node concept="1pGfFk" id="pT" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="pU" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="pV" role="37wK5m">
                  <property role="Xl_RC" value="CalculationReference" />
                </node>
                <node concept="11gdke" id="pW" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="pX" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="pY" role="37wK5m">
                  <property role="11gdj1" value="20e1c9c3ba7966a7L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pJ" role="3cqZAp">
          <node concept="2OqwBi" id="pZ" role="3clFbG">
            <node concept="37vLTw" id="q0" role="2Oq$k0">
              <ref role="3cqZAo" node="pQ" resolve="b" />
            </node>
            <node concept="liA8E" id="q1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="q2" role="37wK5m" />
              <node concept="3clFbT" id="q3" role="37wK5m" />
              <node concept="3clFbT" id="q4" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="pK" role="3cqZAp">
          <node concept="1PaTwC" id="q5" role="1aUNEU">
            <node concept="3oM_SD" id="q6" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="q7" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.baseLanguage.structure.Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pL" role="3cqZAp">
          <node concept="15s5l7" id="q8" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="q9" role="3clFbG">
            <node concept="37vLTw" id="qa" role="2Oq$k0">
              <ref role="3cqZAo" node="pQ" resolve="b" />
            </node>
            <node concept="liA8E" id="qb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="qc" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="qd" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="11gdke" id="qe" role="37wK5m">
                <property role="11gdj1" value="f8c37f506fL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pM" role="3cqZAp">
          <node concept="2OqwBi" id="qf" role="3clFbG">
            <node concept="37vLTw" id="qg" role="2Oq$k0">
              <ref role="3cqZAo" node="pQ" resolve="b" />
            </node>
            <node concept="liA8E" id="qh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="qi" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721457915559" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pN" role="3cqZAp">
          <node concept="2OqwBi" id="qj" role="3clFbG">
            <node concept="37vLTw" id="qk" role="2Oq$k0">
              <ref role="3cqZAo" node="pQ" resolve="b" />
            </node>
            <node concept="liA8E" id="ql" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="qm" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pO" role="3cqZAp">
          <node concept="2OqwBi" id="qn" role="3clFbG">
            <node concept="2OqwBi" id="qo" role="2Oq$k0">
              <node concept="2OqwBi" id="qq" role="2Oq$k0">
                <node concept="2OqwBi" id="qs" role="2Oq$k0">
                  <node concept="2OqwBi" id="qu" role="2Oq$k0">
                    <node concept="37vLTw" id="qw" role="2Oq$k0">
                      <ref role="3cqZAo" node="pQ" resolve="b" />
                    </node>
                    <node concept="liA8E" id="qx" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="qy" role="37wK5m">
                        <property role="Xl_RC" value="target" />
                      </node>
                      <node concept="11gdke" id="qz" role="37wK5m">
                        <property role="11gdj1" value="20e1c9c3ba7966a8L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="qv" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="11gdke" id="q$" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="q_" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="qA" role="37wK5m">
                      <property role="11gdj1" value="20e1c9c3ba743f75L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qt" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="qB" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="qr" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qC" role="37wK5m">
                  <property role="Xl_RC" value="2369396721457915560" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pP" role="3cqZAp">
          <node concept="2OqwBi" id="qD" role="3cqZAk">
            <node concept="37vLTw" id="qE" role="2Oq$k0">
              <ref role="3cqZAo" node="pQ" resolve="b" />
            </node>
            <node concept="liA8E" id="qF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="pG" role="1B3o_S" />
      <node concept="3uibUv" id="pH" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jn" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCalculationValue" />
      <node concept="3clFbS" id="qG" role="3clF47">
        <node concept="3cpWs8" id="qJ" role="3cqZAp">
          <node concept="3cpWsn" id="qT" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="qU" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="qV" role="33vP2m">
              <node concept="1pGfFk" id="qW" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="qX" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="qY" role="37wK5m">
                  <property role="Xl_RC" value="CalculationValue" />
                </node>
                <node concept="11gdke" id="qZ" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="r0" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="r1" role="37wK5m">
                  <property role="11gdj1" value="53046dd7fdd5e3b3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qK" role="3cqZAp">
          <node concept="2OqwBi" id="r2" role="3clFbG">
            <node concept="37vLTw" id="r3" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="r4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="r5" role="37wK5m" />
              <node concept="3clFbT" id="r6" role="37wK5m" />
              <node concept="3clFbT" id="r7" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="qL" role="3cqZAp">
          <node concept="1PaTwC" id="r8" role="1aUNEU">
            <node concept="3oM_SD" id="r9" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="ra" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qM" role="3cqZAp">
          <node concept="15s5l7" id="rb" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="rc" role="3clFbG">
            <node concept="37vLTw" id="rd" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="re" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="rf" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="rg" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="rh" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qN" role="3cqZAp">
          <node concept="2OqwBi" id="ri" role="3clFbG">
            <node concept="37vLTw" id="rj" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="rk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="rl" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="rm" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="rn" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qO" role="3cqZAp">
          <node concept="2OqwBi" id="ro" role="3clFbG">
            <node concept="37vLTw" id="rp" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="rq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="rr" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/5982026979498910643" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qP" role="3cqZAp">
          <node concept="2OqwBi" id="rs" role="3clFbG">
            <node concept="37vLTw" id="rt" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="ru" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="rv" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qQ" role="3cqZAp">
          <node concept="2OqwBi" id="rw" role="3clFbG">
            <node concept="2OqwBi" id="rx" role="2Oq$k0">
              <node concept="2OqwBi" id="rz" role="2Oq$k0">
                <node concept="2OqwBi" id="r_" role="2Oq$k0">
                  <node concept="2OqwBi" id="rB" role="2Oq$k0">
                    <node concept="2OqwBi" id="rD" role="2Oq$k0">
                      <node concept="2OqwBi" id="rF" role="2Oq$k0">
                        <node concept="37vLTw" id="rH" role="2Oq$k0">
                          <ref role="3cqZAo" node="qT" resolve="b" />
                        </node>
                        <node concept="liA8E" id="rI" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="rJ" role="37wK5m">
                            <property role="Xl_RC" value="initializer" />
                          </node>
                          <node concept="11gdke" id="rK" role="37wK5m">
                            <property role="11gdj1" value="53046dd7fdd5e3b4L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="rG" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="rL" role="37wK5m">
                          <property role="11gdj1" value="f3061a5392264cc5L" />
                        </node>
                        <node concept="11gdke" id="rM" role="37wK5m">
                          <property role="11gdj1" value="a443f952ceaf5816L" />
                        </node>
                        <node concept="11gdke" id="rN" role="37wK5m">
                          <property role="11gdj1" value="f8c37f506fL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="rE" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="rO" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="rC" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="rP" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="rA" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="rQ" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="r$" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="rR" role="37wK5m">
                  <property role="Xl_RC" value="5982026979498910644" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="ry" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qR" role="3cqZAp">
          <node concept="2OqwBi" id="rS" role="3clFbG">
            <node concept="37vLTw" id="rT" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="rU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="rV" role="37wK5m">
                <property role="Xl_RC" value="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="qS" role="3cqZAp">
          <node concept="2OqwBi" id="rW" role="3cqZAk">
            <node concept="37vLTw" id="rX" role="2Oq$k0">
              <ref role="3cqZAo" node="qT" resolve="b" />
            </node>
            <node concept="liA8E" id="rY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="qH" role="1B3o_S" />
      <node concept="3uibUv" id="qI" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jo" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCalculationValueReference" />
      <node concept="3clFbS" id="rZ" role="3clF47">
        <node concept="3cpWs8" id="s2" role="3cqZAp">
          <node concept="3cpWsn" id="sa" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="sb" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="sc" role="33vP2m">
              <node concept="1pGfFk" id="sd" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="se" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="sf" role="37wK5m">
                  <property role="Xl_RC" value="CalculationValueReference" />
                </node>
                <node concept="11gdke" id="sg" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="sh" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="si" role="37wK5m">
                  <property role="11gdj1" value="53046dd7fdd834adL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s3" role="3cqZAp">
          <node concept="2OqwBi" id="sj" role="3clFbG">
            <node concept="37vLTw" id="sk" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="sm" role="37wK5m" />
              <node concept="3clFbT" id="sn" role="37wK5m" />
              <node concept="3clFbT" id="so" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="s4" role="3cqZAp">
          <node concept="1PaTwC" id="sp" role="1aUNEU">
            <node concept="3oM_SD" id="sq" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="sr" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.baseLanguage.structure.Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s5" role="3cqZAp">
          <node concept="15s5l7" id="ss" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="st" role="3clFbG">
            <node concept="37vLTw" id="su" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="sw" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="sx" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="11gdke" id="sy" role="37wK5m">
                <property role="11gdj1" value="f8c37f506fL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s6" role="3cqZAp">
          <node concept="2OqwBi" id="sz" role="3clFbG">
            <node concept="37vLTw" id="s$" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="s_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="sA" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/5982026979499062445" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s7" role="3cqZAp">
          <node concept="2OqwBi" id="sB" role="3clFbG">
            <node concept="37vLTw" id="sC" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="sE" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s8" role="3cqZAp">
          <node concept="2OqwBi" id="sF" role="3clFbG">
            <node concept="2OqwBi" id="sG" role="2Oq$k0">
              <node concept="2OqwBi" id="sI" role="2Oq$k0">
                <node concept="2OqwBi" id="sK" role="2Oq$k0">
                  <node concept="2OqwBi" id="sM" role="2Oq$k0">
                    <node concept="37vLTw" id="sO" role="2Oq$k0">
                      <ref role="3cqZAo" node="sa" resolve="b" />
                    </node>
                    <node concept="liA8E" id="sP" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="sQ" role="37wK5m">
                        <property role="Xl_RC" value="target" />
                      </node>
                      <node concept="11gdke" id="sR" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fdd834aeL" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="sN" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="11gdke" id="sS" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="sT" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="sU" role="37wK5m">
                      <property role="11gdj1" value="53046dd7fdd5e3b3L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="sL" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="sV" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="sJ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="sW" role="37wK5m">
                  <property role="Xl_RC" value="5982026979499062446" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="sH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="s9" role="3cqZAp">
          <node concept="2OqwBi" id="sX" role="3cqZAk">
            <node concept="37vLTw" id="sY" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="s0" role="1B3o_S" />
      <node concept="3uibUv" id="s1" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jp" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCalculator" />
      <node concept="3clFbS" id="t0" role="3clF47">
        <node concept="3cpWs8" id="t3" role="3cqZAp">
          <node concept="3cpWsn" id="td" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="te" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="tf" role="33vP2m">
              <node concept="1pGfFk" id="tg" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="th" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="ti" role="37wK5m">
                  <property role="Xl_RC" value="Calculator" />
                </node>
                <node concept="11gdke" id="tj" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="tk" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="tl" role="37wK5m">
                  <property role="11gdj1" value="12106f96410L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t4" role="3cqZAp">
          <node concept="2OqwBi" id="tm" role="3clFbG">
            <node concept="37vLTw" id="tn" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="to" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="tp" role="37wK5m" />
              <node concept="3clFbT" id="tq" role="37wK5m" />
              <node concept="3clFbT" id="tr" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t5" role="3cqZAp">
          <node concept="2OqwBi" id="ts" role="3clFbG">
            <node concept="37vLTw" id="tt" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="tu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="tv" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="tw" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="tx" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t6" role="3cqZAp">
          <node concept="2OqwBi" id="ty" role="3clFbG">
            <node concept="37vLTw" id="tz" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="t$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="t_" role="37wK5m">
                <property role="11gdj1" value="4caf0310491e41f5L" />
              </node>
              <node concept="11gdke" id="tA" role="37wK5m">
                <property role="11gdj1" value="8a9b2006b3a94898L" />
              </node>
              <node concept="11gdke" id="tB" role="37wK5m">
                <property role="11gdj1" value="40c1a7cb987d20d5L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t7" role="3cqZAp">
          <node concept="2OqwBi" id="tC" role="3clFbG">
            <node concept="37vLTw" id="tD" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="tE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="tF" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="tG" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="tH" role="37wK5m">
                <property role="11gdj1" value="33d23ee961a0cbf3L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t8" role="3cqZAp">
          <node concept="2OqwBi" id="tI" role="3clFbG">
            <node concept="37vLTw" id="tJ" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="tK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="tL" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/1241362555920" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t9" role="3cqZAp">
          <node concept="2OqwBi" id="tM" role="3clFbG">
            <node concept="37vLTw" id="tN" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="tO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="tP" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ta" role="3cqZAp">
          <node concept="2OqwBi" id="tQ" role="3clFbG">
            <node concept="2OqwBi" id="tR" role="2Oq$k0">
              <node concept="2OqwBi" id="tT" role="2Oq$k0">
                <node concept="2OqwBi" id="tV" role="2Oq$k0">
                  <node concept="2OqwBi" id="tX" role="2Oq$k0">
                    <node concept="2OqwBi" id="tZ" role="2Oq$k0">
                      <node concept="2OqwBi" id="u1" role="2Oq$k0">
                        <node concept="37vLTw" id="u3" role="2Oq$k0">
                          <ref role="3cqZAo" node="td" resolve="b" />
                        </node>
                        <node concept="liA8E" id="u4" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="u5" role="37wK5m">
                            <property role="Xl_RC" value="description" />
                          </node>
                          <node concept="11gdke" id="u6" role="37wK5m">
                            <property role="11gdj1" value="30e0797069734465L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="u2" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="u7" role="37wK5m">
                          <property role="11gdj1" value="c7fb639fbe784307L" />
                        </node>
                        <node concept="11gdke" id="u8" role="37wK5m">
                          <property role="11gdj1" value="89b0b5959c3fa8c8L" />
                        </node>
                        <node concept="11gdke" id="u9" role="37wK5m">
                          <property role="11gdj1" value="2331694e5619f411L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="u0" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="ua" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="tY" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="ub" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="tW" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="uc" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="tU" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="ud" role="37wK5m">
                  <property role="Xl_RC" value="3521948432316187749" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="tS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tb" role="3cqZAp">
          <node concept="2OqwBi" id="ue" role="3clFbG">
            <node concept="2OqwBi" id="uf" role="2Oq$k0">
              <node concept="2OqwBi" id="uh" role="2Oq$k0">
                <node concept="2OqwBi" id="uj" role="2Oq$k0">
                  <node concept="2OqwBi" id="ul" role="2Oq$k0">
                    <node concept="2OqwBi" id="un" role="2Oq$k0">
                      <node concept="2OqwBi" id="up" role="2Oq$k0">
                        <node concept="37vLTw" id="ur" role="2Oq$k0">
                          <ref role="3cqZAo" node="td" resolve="b" />
                        </node>
                        <node concept="liA8E" id="us" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="ut" role="37wK5m">
                            <property role="Xl_RC" value="commands" />
                          </node>
                          <node concept="11gdke" id="uu" role="37wK5m">
                            <property role="11gdj1" value="1d111c815ef22eb0L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="uq" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="uv" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        </node>
                        <node concept="11gdke" id="uw" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        </node>
                        <node concept="11gdke" id="ux" role="37wK5m">
                          <property role="11gdj1" value="1d111c815ef16d50L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="uo" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="uy" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="um" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="uz" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uk" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="u$" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="ui" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="u_" role="37wK5m">
                  <property role="Xl_RC" value="2094486643673280176" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="ug" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="tc" role="3cqZAp">
          <node concept="2OqwBi" id="uA" role="3cqZAk">
            <node concept="37vLTw" id="uB" role="2Oq$k0">
              <ref role="3cqZAo" node="td" resolve="b" />
            </node>
            <node concept="liA8E" id="uC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="t1" role="1B3o_S" />
      <node concept="3uibUv" id="t2" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jq" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCalculatorType" />
      <node concept="3clFbS" id="uD" role="3clF47">
        <node concept="3cpWs8" id="uG" role="3cqZAp">
          <node concept="3cpWsn" id="uL" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="uM" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="uN" role="33vP2m">
              <node concept="1pGfFk" id="uO" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="uP" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="uQ" role="37wK5m">
                  <property role="Xl_RC" value="CalculatorType" />
                </node>
                <node concept="11gdke" id="uR" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="uS" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="uT" role="37wK5m">
                  <property role="11gdj1" value="20e1c9c3baa061d5L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uH" role="3cqZAp">
          <node concept="2OqwBi" id="uU" role="3clFbG">
            <node concept="37vLTw" id="uV" role="2Oq$k0">
              <ref role="3cqZAo" node="uL" resolve="b" />
            </node>
            <node concept="liA8E" id="uW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="uX" role="37wK5m" />
              <node concept="3clFbT" id="uY" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="uZ" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uI" role="3cqZAp">
          <node concept="2OqwBi" id="v0" role="3clFbG">
            <node concept="37vLTw" id="v1" role="2Oq$k0">
              <ref role="3cqZAo" node="uL" resolve="b" />
            </node>
            <node concept="liA8E" id="v2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="v3" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721460470229" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uJ" role="3cqZAp">
          <node concept="2OqwBi" id="v4" role="3clFbG">
            <node concept="37vLTw" id="v5" role="2Oq$k0">
              <ref role="3cqZAo" node="uL" resolve="b" />
            </node>
            <node concept="liA8E" id="v6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="v7" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="uK" role="3cqZAp">
          <node concept="2OqwBi" id="v8" role="3cqZAk">
            <node concept="37vLTw" id="v9" role="2Oq$k0">
              <ref role="3cqZAo" node="uL" resolve="b" />
            </node>
            <node concept="liA8E" id="va" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="uE" role="1B3o_S" />
      <node concept="3uibUv" id="uF" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jr" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCommand" />
      <node concept="3clFbS" id="vb" role="3clF47">
        <node concept="3cpWs8" id="ve" role="3cqZAp">
          <node concept="3cpWsn" id="vj" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="vk" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="vl" role="33vP2m">
              <node concept="1pGfFk" id="vm" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="vn" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="vo" role="37wK5m">
                  <property role="Xl_RC" value="Command" />
                </node>
                <node concept="11gdke" id="vp" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="vq" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="vr" role="37wK5m">
                  <property role="11gdj1" value="1d111c815ef16d50L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vf" role="3cqZAp">
          <node concept="2OqwBi" id="vs" role="3clFbG">
            <node concept="37vLTw" id="vt" role="2Oq$k0">
              <ref role="3cqZAo" node="vj" resolve="b" />
            </node>
            <node concept="liA8E" id="vu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="vv" role="37wK5m" />
              <node concept="3clFbT" id="vw" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="vx" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vg" role="3cqZAp">
          <node concept="2OqwBi" id="vy" role="3clFbG">
            <node concept="37vLTw" id="vz" role="2Oq$k0">
              <ref role="3cqZAo" node="vj" resolve="b" />
            </node>
            <node concept="liA8E" id="v$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="v_" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643673230672" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vh" role="3cqZAp">
          <node concept="2OqwBi" id="vA" role="3clFbG">
            <node concept="37vLTw" id="vB" role="2Oq$k0">
              <ref role="3cqZAo" node="vj" resolve="b" />
            </node>
            <node concept="liA8E" id="vC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="vD" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="vi" role="3cqZAp">
          <node concept="2OqwBi" id="vE" role="3cqZAk">
            <node concept="37vLTw" id="vF" role="2Oq$k0">
              <ref role="3cqZAo" node="vj" resolve="b" />
            </node>
            <node concept="liA8E" id="vG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="vc" role="1B3o_S" />
      <node concept="3uibUv" id="vd" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="js" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForEmptyLine" />
      <node concept="3clFbS" id="vH" role="3clF47">
        <node concept="3cpWs8" id="vK" role="3cqZAp">
          <node concept="3cpWsn" id="vR" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="vS" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="vT" role="33vP2m">
              <node concept="1pGfFk" id="vU" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="vV" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="vW" role="37wK5m">
                  <property role="Xl_RC" value="EmptyLine" />
                </node>
                <node concept="11gdke" id="vX" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="vY" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="vZ" role="37wK5m">
                  <property role="11gdj1" value="1d111c815ef16d4fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vL" role="3cqZAp">
          <node concept="2OqwBi" id="w0" role="3clFbG">
            <node concept="37vLTw" id="w1" role="2Oq$k0">
              <ref role="3cqZAo" node="vR" resolve="b" />
            </node>
            <node concept="liA8E" id="w2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="w3" role="37wK5m" />
              <node concept="3clFbT" id="w4" role="37wK5m" />
              <node concept="3clFbT" id="w5" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="vM" role="3cqZAp">
          <node concept="1PaTwC" id="w6" role="1aUNEU">
            <node concept="3oM_SD" id="w7" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="w8" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vN" role="3cqZAp">
          <node concept="15s5l7" id="w9" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="wa" role="3clFbG">
            <node concept="37vLTw" id="wb" role="2Oq$k0">
              <ref role="3cqZAo" node="vR" resolve="b" />
            </node>
            <node concept="liA8E" id="wc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="wd" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="we" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="wf" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vO" role="3cqZAp">
          <node concept="2OqwBi" id="wg" role="3clFbG">
            <node concept="37vLTw" id="wh" role="2Oq$k0">
              <ref role="3cqZAo" node="vR" resolve="b" />
            </node>
            <node concept="liA8E" id="wi" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="wj" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643673230671" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vP" role="3cqZAp">
          <node concept="2OqwBi" id="wk" role="3clFbG">
            <node concept="37vLTw" id="wl" role="2Oq$k0">
              <ref role="3cqZAo" node="vR" resolve="b" />
            </node>
            <node concept="liA8E" id="wm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="wn" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="vQ" role="3cqZAp">
          <node concept="2OqwBi" id="wo" role="3cqZAk">
            <node concept="37vLTw" id="wp" role="2Oq$k0">
              <ref role="3cqZAo" node="vR" resolve="b" />
            </node>
            <node concept="liA8E" id="wq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="vI" role="1B3o_S" />
      <node concept="3uibUv" id="vJ" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jt" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForField" />
      <node concept="3clFbS" id="wr" role="3clF47">
        <node concept="3cpWs8" id="wu" role="3cqZAp">
          <node concept="3cpWsn" id="wB" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="wC" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="wD" role="33vP2m">
              <node concept="1pGfFk" id="wE" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="wF" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="wG" role="37wK5m">
                  <property role="Xl_RC" value="Field" />
                </node>
                <node concept="11gdke" id="wH" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="wI" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="wJ" role="37wK5m">
                  <property role="11gdj1" value="1d111c815ef3602cL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wv" role="3cqZAp">
          <node concept="2OqwBi" id="wK" role="3clFbG">
            <node concept="37vLTw" id="wL" role="2Oq$k0">
              <ref role="3cqZAo" node="wB" resolve="b" />
            </node>
            <node concept="liA8E" id="wM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="wN" role="37wK5m" />
              <node concept="3clFbT" id="wO" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="wP" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="ww" role="3cqZAp">
          <node concept="1PaTwC" id="wQ" role="1aUNEU">
            <node concept="3oM_SD" id="wR" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="wS" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wx" role="3cqZAp">
          <node concept="15s5l7" id="wT" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="wU" role="3clFbG">
            <node concept="37vLTw" id="wV" role="2Oq$k0">
              <ref role="3cqZAo" node="wB" resolve="b" />
            </node>
            <node concept="liA8E" id="wW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="wX" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="wY" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="wZ" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wy" role="3cqZAp">
          <node concept="2OqwBi" id="x0" role="3clFbG">
            <node concept="37vLTw" id="x1" role="2Oq$k0">
              <ref role="3cqZAo" node="wB" resolve="b" />
            </node>
            <node concept="liA8E" id="x2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="x3" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="x4" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="x5" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wz" role="3cqZAp">
          <node concept="2OqwBi" id="x6" role="3clFbG">
            <node concept="37vLTw" id="x7" role="2Oq$k0">
              <ref role="3cqZAo" node="wB" resolve="b" />
            </node>
            <node concept="liA8E" id="x8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="x9" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643673358380" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w$" role="3cqZAp">
          <node concept="2OqwBi" id="xa" role="3clFbG">
            <node concept="37vLTw" id="xb" role="2Oq$k0">
              <ref role="3cqZAo" node="wB" resolve="b" />
            </node>
            <node concept="liA8E" id="xc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="xd" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w_" role="3cqZAp">
          <node concept="2OqwBi" id="xe" role="3clFbG">
            <node concept="2OqwBi" id="xf" role="2Oq$k0">
              <node concept="2OqwBi" id="xh" role="2Oq$k0">
                <node concept="2OqwBi" id="xj" role="2Oq$k0">
                  <node concept="37vLTw" id="xl" role="2Oq$k0">
                    <ref role="3cqZAo" node="wB" resolve="b" />
                  </node>
                  <node concept="liA8E" id="xm" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="xn" role="37wK5m">
                      <property role="Xl_RC" value="value_kind" />
                    </node>
                    <node concept="11gdke" id="xo" role="37wK5m">
                      <property role="11gdj1" value="1d111c815ee9dbb3L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="xk" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="xp" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:2094486643672734645" />
                    <node concept="11gdke" id="xq" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:2094486643672734645" />
                    </node>
                    <node concept="11gdke" id="xr" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:2094486643672734645" />
                    </node>
                    <node concept="11gdke" id="xs" role="37wK5m">
                      <property role="11gdj1" value="1d111c815ee9dbb5L" />
                      <uo k="s:originTrace" v="n:2094486643672734645" />
                    </node>
                    <node concept="t5JxF" id="xt" role="lGtFl">
                      <property role="t5JxN" value="WHEN creating or updating fincalculator forms THEN set ValueKind explicitly (amount or number)" />
                      <uo k="s:originTrace" v="n:4998694871347781393" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="xi" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="xu" role="37wK5m">
                  <property role="Xl_RC" value="2094486643672734643" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="xg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="wA" role="3cqZAp">
          <node concept="2OqwBi" id="xv" role="3cqZAk">
            <node concept="37vLTw" id="xw" role="2Oq$k0">
              <ref role="3cqZAo" node="wB" resolve="b" />
            </node>
            <node concept="liA8E" id="xx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="ws" role="1B3o_S" />
      <node concept="3uibUv" id="wt" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="ju" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForFieldReference" />
      <node concept="3clFbS" id="xy" role="3clF47">
        <node concept="3cpWs8" id="x_" role="3cqZAp">
          <node concept="3cpWsn" id="xI" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="xJ" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="xK" role="33vP2m">
              <node concept="1pGfFk" id="xL" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="xM" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="xN" role="37wK5m">
                  <property role="Xl_RC" value="FieldReference" />
                </node>
                <node concept="11gdke" id="xO" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="xP" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="xQ" role="37wK5m">
                  <property role="11gdj1" value="12107017046L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xA" role="3cqZAp">
          <node concept="2OqwBi" id="xR" role="3clFbG">
            <node concept="37vLTw" id="xS" role="2Oq$k0">
              <ref role="3cqZAo" node="xI" resolve="b" />
            </node>
            <node concept="liA8E" id="xT" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="xU" role="37wK5m" />
              <node concept="3clFbT" id="xV" role="37wK5m" />
              <node concept="3clFbT" id="xW" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="xB" role="3cqZAp">
          <node concept="1PaTwC" id="xX" role="1aUNEU">
            <node concept="3oM_SD" id="xY" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="xZ" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.baseLanguage.structure.Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xC" role="3cqZAp">
          <node concept="15s5l7" id="y0" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="y1" role="3clFbG">
            <node concept="37vLTw" id="y2" role="2Oq$k0">
              <ref role="3cqZAo" node="xI" resolve="b" />
            </node>
            <node concept="liA8E" id="y3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="y4" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="y5" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="11gdke" id="y6" role="37wK5m">
                <property role="11gdj1" value="f8c37f506fL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xD" role="3cqZAp">
          <node concept="2OqwBi" id="y7" role="3clFbG">
            <node concept="37vLTw" id="y8" role="2Oq$k0">
              <ref role="3cqZAo" node="xI" resolve="b" />
            </node>
            <node concept="liA8E" id="y9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="ya" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/1241363083334" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xE" role="3cqZAp">
          <node concept="2OqwBi" id="yb" role="3clFbG">
            <node concept="37vLTw" id="yc" role="2Oq$k0">
              <ref role="3cqZAo" node="xI" resolve="b" />
            </node>
            <node concept="liA8E" id="yd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="ye" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xF" role="3cqZAp">
          <node concept="2OqwBi" id="yf" role="3clFbG">
            <node concept="2OqwBi" id="yg" role="2Oq$k0">
              <node concept="2OqwBi" id="yi" role="2Oq$k0">
                <node concept="2OqwBi" id="yk" role="2Oq$k0">
                  <node concept="2OqwBi" id="ym" role="2Oq$k0">
                    <node concept="37vLTw" id="yo" role="2Oq$k0">
                      <ref role="3cqZAo" node="xI" resolve="b" />
                    </node>
                    <node concept="liA8E" id="yp" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="yq" role="37wK5m">
                        <property role="Xl_RC" value="field" />
                      </node>
                      <node concept="11gdke" id="yr" role="37wK5m">
                        <property role="11gdj1" value="1210701c618L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="yn" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="11gdke" id="ys" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="yt" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="yu" role="37wK5m">
                      <property role="11gdj1" value="1d111c815ef3602cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="yl" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="yv" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="yj" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="yw" role="37wK5m">
                  <property role="Xl_RC" value="1241363105304" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="yh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xG" role="3cqZAp">
          <node concept="2OqwBi" id="yx" role="3clFbG">
            <node concept="37vLTw" id="yy" role="2Oq$k0">
              <ref role="3cqZAo" node="xI" resolve="b" />
            </node>
            <node concept="liA8E" id="yz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.kind(jetbrains.mps.smodel.runtime.ConceptKind,jetbrains.mps.smodel.runtime.StaticScope)" resolve="kind" />
              <node concept="Rm8GO" id="y$" role="37wK5m">
                <ref role="1Px2BO" to="ze1i:~ConceptKind" resolve="ConceptKind" />
                <ref role="Rm8GQ" to="ze1i:~ConceptKind.NORMAL" resolve="NORMAL" />
              </node>
              <node concept="Rm8GO" id="y_" role="37wK5m">
                <ref role="1Px2BO" to="ze1i:~StaticScope" resolve="StaticScope" />
                <ref role="Rm8GQ" to="ze1i:~StaticScope.NONE" resolve="NONE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="xH" role="3cqZAp">
          <node concept="2OqwBi" id="yA" role="3cqZAk">
            <node concept="37vLTw" id="yB" role="2Oq$k0">
              <ref role="3cqZAo" node="xI" resolve="b" />
            </node>
            <node concept="liA8E" id="yC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="xz" role="1B3o_S" />
      <node concept="3uibUv" id="x$" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jv" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForInputField" />
      <node concept="3clFbS" id="yD" role="3clF47">
        <node concept="3cpWs8" id="yG" role="3cqZAp">
          <node concept="3cpWsn" id="yP" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="yQ" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="yR" role="33vP2m">
              <node concept="1pGfFk" id="yS" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="yT" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="yU" role="37wK5m">
                  <property role="Xl_RC" value="InputField" />
                </node>
                <node concept="11gdke" id="yV" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="yW" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="yX" role="37wK5m">
                  <property role="11gdj1" value="12106fa3191L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yH" role="3cqZAp">
          <node concept="2OqwBi" id="yY" role="3clFbG">
            <node concept="37vLTw" id="yZ" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="z0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="z1" role="37wK5m" />
              <node concept="3clFbT" id="z2" role="37wK5m" />
              <node concept="3clFbT" id="z3" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="yI" role="3cqZAp">
          <node concept="1PaTwC" id="z4" role="1aUNEU">
            <node concept="3oM_SD" id="z5" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="z6" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Field" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yJ" role="3cqZAp">
          <node concept="15s5l7" id="z7" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="z8" role="3clFbG">
            <node concept="37vLTw" id="z9" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="za" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="zb" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="zc" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="zd" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef3602cL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yK" role="3cqZAp">
          <node concept="2OqwBi" id="ze" role="3clFbG">
            <node concept="37vLTw" id="zf" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="zg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="zh" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="zi" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="zj" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yL" role="3cqZAp">
          <node concept="2OqwBi" id="zk" role="3clFbG">
            <node concept="37vLTw" id="zl" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="zm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="zn" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/1241362608529" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yM" role="3cqZAp">
          <node concept="2OqwBi" id="zo" role="3clFbG">
            <node concept="37vLTw" id="zp" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="zq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="zr" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yN" role="3cqZAp">
          <node concept="2OqwBi" id="zs" role="3clFbG">
            <node concept="37vLTw" id="zt" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="zu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="zv" role="37wK5m">
                <property role="Xl_RC" value="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="yO" role="3cqZAp">
          <node concept="2OqwBi" id="zw" role="3cqZAk">
            <node concept="37vLTw" id="zx" role="2Oq$k0">
              <ref role="3cqZAo" node="yP" resolve="b" />
            </node>
            <node concept="liA8E" id="zy" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="yE" role="1B3o_S" />
      <node concept="3uibUv" id="yF" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jw" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForLogical" />
      <node concept="3clFbS" id="zz" role="3clF47">
        <node concept="3cpWs8" id="zA" role="3cqZAp">
          <node concept="3cpWsn" id="zJ" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="zK" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="zL" role="33vP2m">
              <node concept="1pGfFk" id="zM" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="zN" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="zO" role="37wK5m">
                  <property role="Xl_RC" value="Logical" />
                </node>
                <node concept="11gdke" id="zP" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="zQ" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="zR" role="37wK5m">
                  <property role="11gdj1" value="42549ff071696974L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zB" role="3cqZAp">
          <node concept="2OqwBi" id="zS" role="3clFbG">
            <node concept="37vLTw" id="zT" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="zU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="zV" role="37wK5m" />
              <node concept="3clFbT" id="zW" role="37wK5m" />
              <node concept="3clFbT" id="zX" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="zC" role="3cqZAp">
          <node concept="1PaTwC" id="zY" role="1aUNEU">
            <node concept="3oM_SD" id="zZ" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="$0" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zD" role="3cqZAp">
          <node concept="15s5l7" id="$1" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="$2" role="3clFbG">
            <node concept="37vLTw" id="$3" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="$4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="$5" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="$6" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="$7" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zE" role="3cqZAp">
          <node concept="2OqwBi" id="$8" role="3clFbG">
            <node concept="37vLTw" id="$9" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="$a" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="$b" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="$c" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="$d" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zF" role="3cqZAp">
          <node concept="2OqwBi" id="$e" role="3clFbG">
            <node concept="37vLTw" id="$f" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="$g" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="$h" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/4779620959590639988" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zG" role="3cqZAp">
          <node concept="2OqwBi" id="$i" role="3clFbG">
            <node concept="37vLTw" id="$j" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="$k" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="$l" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zH" role="3cqZAp">
          <node concept="2OqwBi" id="$m" role="3clFbG">
            <node concept="37vLTw" id="$n" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="$o" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="$p" role="37wK5m">
                <property role="Xl_RC" value="logical" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="zI" role="3cqZAp">
          <node concept="2OqwBi" id="$q" role="3cqZAk">
            <node concept="37vLTw" id="$r" role="2Oq$k0">
              <ref role="3cqZAo" node="zJ" resolve="b" />
            </node>
            <node concept="liA8E" id="$s" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="z$" role="1B3o_S" />
      <node concept="3uibUv" id="z_" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jx" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForLogicalReference" />
      <node concept="3clFbS" id="$t" role="3clF47">
        <node concept="3cpWs8" id="$w" role="3cqZAp">
          <node concept="3cpWsn" id="$C" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="$D" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="$E" role="33vP2m">
              <node concept="1pGfFk" id="$F" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="$G" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="$H" role="37wK5m">
                  <property role="Xl_RC" value="LogicalReference" />
                </node>
                <node concept="11gdke" id="$I" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="$J" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="$K" role="37wK5m">
                  <property role="11gdj1" value="42549ff0716969a8L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$x" role="3cqZAp">
          <node concept="2OqwBi" id="$L" role="3clFbG">
            <node concept="37vLTw" id="$M" role="2Oq$k0">
              <ref role="3cqZAo" node="$C" resolve="b" />
            </node>
            <node concept="liA8E" id="$N" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="$O" role="37wK5m" />
              <node concept="3clFbT" id="$P" role="37wK5m" />
              <node concept="3clFbT" id="$Q" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="$y" role="3cqZAp">
          <node concept="1PaTwC" id="$R" role="1aUNEU">
            <node concept="3oM_SD" id="$S" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="$T" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.baseLanguage.structure.Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$z" role="3cqZAp">
          <node concept="15s5l7" id="$U" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="$V" role="3clFbG">
            <node concept="37vLTw" id="$W" role="2Oq$k0">
              <ref role="3cqZAo" node="$C" resolve="b" />
            </node>
            <node concept="liA8E" id="$X" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="$Y" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="$Z" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="11gdke" id="_0" role="37wK5m">
                <property role="11gdj1" value="f8c37f506fL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$$" role="3cqZAp">
          <node concept="2OqwBi" id="_1" role="3clFbG">
            <node concept="37vLTw" id="_2" role="2Oq$k0">
              <ref role="3cqZAo" node="$C" resolve="b" />
            </node>
            <node concept="liA8E" id="_3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="_4" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/4779620959590640040" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$_" role="3cqZAp">
          <node concept="2OqwBi" id="_5" role="3clFbG">
            <node concept="37vLTw" id="_6" role="2Oq$k0">
              <ref role="3cqZAo" node="$C" resolve="b" />
            </node>
            <node concept="liA8E" id="_7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="_8" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$A" role="3cqZAp">
          <node concept="2OqwBi" id="_9" role="3clFbG">
            <node concept="2OqwBi" id="_a" role="2Oq$k0">
              <node concept="2OqwBi" id="_c" role="2Oq$k0">
                <node concept="2OqwBi" id="_e" role="2Oq$k0">
                  <node concept="2OqwBi" id="_g" role="2Oq$k0">
                    <node concept="37vLTw" id="_i" role="2Oq$k0">
                      <ref role="3cqZAo" node="$C" resolve="b" />
                    </node>
                    <node concept="liA8E" id="_j" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="_k" role="37wK5m">
                        <property role="Xl_RC" value="target" />
                      </node>
                      <node concept="11gdke" id="_l" role="37wK5m">
                        <property role="11gdj1" value="42549ff0716969a9L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="_h" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="11gdke" id="_m" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="_n" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="_o" role="37wK5m">
                      <property role="11gdj1" value="42549ff071696974L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="_f" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="_p" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="_d" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="_q" role="37wK5m">
                  <property role="Xl_RC" value="4779620959590640041" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_b" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="$B" role="3cqZAp">
          <node concept="2OqwBi" id="_r" role="3cqZAk">
            <node concept="37vLTw" id="_s" role="2Oq$k0">
              <ref role="3cqZAo" node="$C" resolve="b" />
            </node>
            <node concept="liA8E" id="_t" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="$u" role="1B3o_S" />
      <node concept="3uibUv" id="$v" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jy" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForLogicalType" />
      <node concept="3clFbS" id="_u" role="3clF47">
        <node concept="3cpWs8" id="_x" role="3cqZAp">
          <node concept="3cpWsn" id="_D" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="_E" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="_F" role="33vP2m">
              <node concept="1pGfFk" id="_G" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="_H" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="_I" role="37wK5m">
                  <property role="Xl_RC" value="LogicalType" />
                </node>
                <node concept="11gdke" id="_J" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="_K" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="_L" role="37wK5m">
                  <property role="11gdj1" value="20e1c9c3baa061d3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_y" role="3cqZAp">
          <node concept="2OqwBi" id="_M" role="3clFbG">
            <node concept="37vLTw" id="_N" role="2Oq$k0">
              <ref role="3cqZAo" node="_D" resolve="b" />
            </node>
            <node concept="liA8E" id="_O" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="_P" role="37wK5m" />
              <node concept="3clFbT" id="_Q" role="37wK5m" />
              <node concept="3clFbT" id="_R" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="_z" role="3cqZAp">
          <node concept="1PaTwC" id="_S" role="1aUNEU">
            <node concept="3oM_SD" id="_T" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="_U" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.CalculatorType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_$" role="3cqZAp">
          <node concept="15s5l7" id="_V" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="_W" role="3clFbG">
            <node concept="37vLTw" id="_X" role="2Oq$k0">
              <ref role="3cqZAo" node="_D" resolve="b" />
            </node>
            <node concept="liA8E" id="_Y" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="_Z" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="A0" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="A1" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d5L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="__" role="3cqZAp">
          <node concept="2OqwBi" id="A2" role="3clFbG">
            <node concept="37vLTw" id="A3" role="2Oq$k0">
              <ref role="3cqZAo" node="_D" resolve="b" />
            </node>
            <node concept="liA8E" id="A4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="A5" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721460470227" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_A" role="3cqZAp">
          <node concept="2OqwBi" id="A6" role="3clFbG">
            <node concept="37vLTw" id="A7" role="2Oq$k0">
              <ref role="3cqZAo" node="_D" resolve="b" />
            </node>
            <node concept="liA8E" id="A8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="A9" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_B" role="3cqZAp">
          <node concept="2OqwBi" id="Aa" role="3clFbG">
            <node concept="37vLTw" id="Ab" role="2Oq$k0">
              <ref role="3cqZAo" node="_D" resolve="b" />
            </node>
            <node concept="liA8E" id="Ac" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Ad" role="37wK5m">
                <property role="Xl_RC" value="logical" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="_C" role="3cqZAp">
          <node concept="2OqwBi" id="Ae" role="3cqZAk">
            <node concept="37vLTw" id="Af" role="2Oq$k0">
              <ref role="3cqZAo" node="_D" resolve="b" />
            </node>
            <node concept="liA8E" id="Ag" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="_v" role="1B3o_S" />
      <node concept="3uibUv" id="_w" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jz" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForNumericType" />
      <node concept="3clFbS" id="Ah" role="3clF47">
        <node concept="3cpWs8" id="Ak" role="3cqZAp">
          <node concept="3cpWsn" id="As" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="At" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Au" role="33vP2m">
              <node concept="1pGfFk" id="Av" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Aw" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="Ax" role="37wK5m">
                  <property role="Xl_RC" value="NumericType" />
                </node>
                <node concept="11gdke" id="Ay" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="Az" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="A$" role="37wK5m">
                  <property role="11gdj1" value="20e1c9c3baa061d2L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Al" role="3cqZAp">
          <node concept="2OqwBi" id="A_" role="3clFbG">
            <node concept="37vLTw" id="AA" role="2Oq$k0">
              <ref role="3cqZAo" node="As" resolve="b" />
            </node>
            <node concept="liA8E" id="AB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="AC" role="37wK5m" />
              <node concept="3clFbT" id="AD" role="37wK5m" />
              <node concept="3clFbT" id="AE" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Am" role="3cqZAp">
          <node concept="1PaTwC" id="AF" role="1aUNEU">
            <node concept="3oM_SD" id="AG" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="AH" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.CalculatorType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="An" role="3cqZAp">
          <node concept="15s5l7" id="AI" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="AJ" role="3clFbG">
            <node concept="37vLTw" id="AK" role="2Oq$k0">
              <ref role="3cqZAo" node="As" resolve="b" />
            </node>
            <node concept="liA8E" id="AL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="AM" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="AN" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="AO" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d5L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ao" role="3cqZAp">
          <node concept="2OqwBi" id="AP" role="3clFbG">
            <node concept="37vLTw" id="AQ" role="2Oq$k0">
              <ref role="3cqZAo" node="As" resolve="b" />
            </node>
            <node concept="liA8E" id="AR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="AS" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721460470226" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ap" role="3cqZAp">
          <node concept="2OqwBi" id="AT" role="3clFbG">
            <node concept="37vLTw" id="AU" role="2Oq$k0">
              <ref role="3cqZAo" node="As" resolve="b" />
            </node>
            <node concept="liA8E" id="AV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="AW" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aq" role="3cqZAp">
          <node concept="2OqwBi" id="AX" role="3clFbG">
            <node concept="37vLTw" id="AY" role="2Oq$k0">
              <ref role="3cqZAo" node="As" resolve="b" />
            </node>
            <node concept="liA8E" id="AZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="B0" role="37wK5m">
                <property role="Xl_RC" value="numeric" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ar" role="3cqZAp">
          <node concept="2OqwBi" id="B1" role="3cqZAk">
            <node concept="37vLTw" id="B2" role="2Oq$k0">
              <ref role="3cqZAo" node="As" resolve="b" />
            </node>
            <node concept="liA8E" id="B3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Ai" role="1B3o_S" />
      <node concept="3uibUv" id="Aj" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="j$" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForOption" />
      <node concept="3clFbS" id="B4" role="3clF47">
        <node concept="3cpWs8" id="B7" role="3cqZAp">
          <node concept="3cpWsn" id="Be" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Bf" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Bg" role="33vP2m">
              <node concept="1pGfFk" id="Bh" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Bi" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="Bj" role="37wK5m">
                  <property role="Xl_RC" value="Option" />
                </node>
                <node concept="11gdke" id="Bk" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="Bl" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="Bm" role="37wK5m">
                  <property role="11gdj1" value="42549ff0716bc68fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B8" role="3cqZAp">
          <node concept="2OqwBi" id="Bn" role="3clFbG">
            <node concept="37vLTw" id="Bo" role="2Oq$k0">
              <ref role="3cqZAo" node="Be" resolve="b" />
            </node>
            <node concept="liA8E" id="Bp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Bq" role="37wK5m" />
              <node concept="3clFbT" id="Br" role="37wK5m" />
              <node concept="3clFbT" id="Bs" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B9" role="3cqZAp">
          <node concept="2OqwBi" id="Bt" role="3clFbG">
            <node concept="37vLTw" id="Bu" role="2Oq$k0">
              <ref role="3cqZAo" node="Be" resolve="b" />
            </node>
            <node concept="liA8E" id="Bv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="Bw" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="Bx" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="By" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ba" role="3cqZAp">
          <node concept="2OqwBi" id="Bz" role="3clFbG">
            <node concept="37vLTw" id="B$" role="2Oq$k0">
              <ref role="3cqZAo" node="Be" resolve="b" />
            </node>
            <node concept="liA8E" id="B_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="BA" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/4779620959590794895" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bb" role="3cqZAp">
          <node concept="2OqwBi" id="BB" role="3clFbG">
            <node concept="37vLTw" id="BC" role="2Oq$k0">
              <ref role="3cqZAo" node="Be" resolve="b" />
            </node>
            <node concept="liA8E" id="BD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="BE" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bc" role="3cqZAp">
          <node concept="2OqwBi" id="BF" role="3clFbG">
            <node concept="2OqwBi" id="BG" role="2Oq$k0">
              <node concept="2OqwBi" id="BI" role="2Oq$k0">
                <node concept="2OqwBi" id="BK" role="2Oq$k0">
                  <node concept="37vLTw" id="BM" role="2Oq$k0">
                    <ref role="3cqZAo" node="Be" resolve="b" />
                  </node>
                  <node concept="liA8E" id="BN" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="BO" role="37wK5m">
                      <property role="Xl_RC" value="value" />
                    </node>
                    <node concept="11gdke" id="BP" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716bc692L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="BL" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="BQ" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="BJ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="BR" role="37wK5m">
                  <property role="Xl_RC" value="4779620959590794898" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="BH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Bd" role="3cqZAp">
          <node concept="2OqwBi" id="BS" role="3cqZAk">
            <node concept="37vLTw" id="BT" role="2Oq$k0">
              <ref role="3cqZAo" node="Be" resolve="b" />
            </node>
            <node concept="liA8E" id="BU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="B5" role="1B3o_S" />
      <node concept="3uibUv" id="B6" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="j_" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForOutputField" />
      <node concept="3clFbS" id="BV" role="3clF47">
        <node concept="3cpWs8" id="BY" role="3cqZAp">
          <node concept="3cpWsn" id="C8" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="C9" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Ca" role="33vP2m">
              <node concept="1pGfFk" id="Cb" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Cc" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="Cd" role="37wK5m">
                  <property role="Xl_RC" value="OutputField" />
                </node>
                <node concept="11gdke" id="Ce" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="Cf" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="Cg" role="37wK5m">
                  <property role="11gdj1" value="12106fd5a98L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BZ" role="3cqZAp">
          <node concept="2OqwBi" id="Ch" role="3clFbG">
            <node concept="37vLTw" id="Ci" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="Cj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Ck" role="37wK5m" />
              <node concept="3clFbT" id="Cl" role="37wK5m" />
              <node concept="3clFbT" id="Cm" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="C0" role="3cqZAp">
          <node concept="1PaTwC" id="Cn" role="1aUNEU">
            <node concept="3oM_SD" id="Co" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="Cp" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Field" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C1" role="3cqZAp">
          <node concept="15s5l7" id="Cq" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="Cr" role="3clFbG">
            <node concept="37vLTw" id="Cs" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="Ct" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="Cu" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="Cv" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="Cw" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef3602cL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C2" role="3cqZAp">
          <node concept="2OqwBi" id="Cx" role="3clFbG">
            <node concept="37vLTw" id="Cy" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="Cz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="C$" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="C_" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="CA" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C3" role="3cqZAp">
          <node concept="2OqwBi" id="CB" role="3clFbG">
            <node concept="37vLTw" id="CC" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="CD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="CE" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/1241362815640" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C4" role="3cqZAp">
          <node concept="2OqwBi" id="CF" role="3clFbG">
            <node concept="37vLTw" id="CG" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="CH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="CI" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C5" role="3cqZAp">
          <node concept="2OqwBi" id="CJ" role="3clFbG">
            <node concept="2OqwBi" id="CK" role="2Oq$k0">
              <node concept="2OqwBi" id="CM" role="2Oq$k0">
                <node concept="2OqwBi" id="CO" role="2Oq$k0">
                  <node concept="2OqwBi" id="CQ" role="2Oq$k0">
                    <node concept="2OqwBi" id="CS" role="2Oq$k0">
                      <node concept="2OqwBi" id="CU" role="2Oq$k0">
                        <node concept="37vLTw" id="CW" role="2Oq$k0">
                          <ref role="3cqZAo" node="C8" resolve="b" />
                        </node>
                        <node concept="liA8E" id="CX" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="CY" role="37wK5m">
                            <property role="Xl_RC" value="expression" />
                          </node>
                          <node concept="11gdke" id="CZ" role="37wK5m">
                            <property role="11gdj1" value="1210700deeeL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="CV" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="D0" role="37wK5m">
                          <property role="11gdj1" value="f3061a5392264cc5L" />
                        </node>
                        <node concept="11gdke" id="D1" role="37wK5m">
                          <property role="11gdj1" value="a443f952ceaf5816L" />
                        </node>
                        <node concept="11gdke" id="D2" role="37wK5m">
                          <property role="11gdj1" value="f8c37f506fL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="CT" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="D3" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="CR" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="D4" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="CP" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="D5" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="CN" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="D6" role="37wK5m">
                  <property role="Xl_RC" value="1241363046126" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="CL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C6" role="3cqZAp">
          <node concept="2OqwBi" id="D7" role="3clFbG">
            <node concept="37vLTw" id="D8" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="D9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Da" role="37wK5m">
                <property role="Xl_RC" value="output" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="C7" role="3cqZAp">
          <node concept="2OqwBi" id="Db" role="3cqZAk">
            <node concept="37vLTw" id="Dc" role="2Oq$k0">
              <ref role="3cqZAo" node="C8" resolve="b" />
            </node>
            <node concept="liA8E" id="Dd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="BW" role="1B3o_S" />
      <node concept="3uibUv" id="BX" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jA" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForOutputTable" />
      <node concept="3clFbS" id="De" role="3clF47">
        <node concept="3cpWs8" id="Dh" role="3cqZAp">
          <node concept="3cpWsn" id="Dr" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ds" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Dt" role="33vP2m">
              <node concept="1pGfFk" id="Du" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Dv" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="Dw" role="37wK5m">
                  <property role="Xl_RC" value="OutputTable" />
                </node>
                <node concept="11gdke" id="Dx" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="Dy" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="Dz" role="37wK5m">
                  <property role="11gdj1" value="53046dd7fde2f4acL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Di" role="3cqZAp">
          <node concept="2OqwBi" id="D$" role="3clFbG">
            <node concept="37vLTw" id="D_" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="DA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="DB" role="37wK5m" />
              <node concept="3clFbT" id="DC" role="37wK5m" />
              <node concept="3clFbT" id="DD" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Dj" role="3cqZAp">
          <node concept="1PaTwC" id="DE" role="1aUNEU">
            <node concept="3oM_SD" id="DF" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="DG" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dk" role="3cqZAp">
          <node concept="15s5l7" id="DH" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="DI" role="3clFbG">
            <node concept="37vLTw" id="DJ" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="DK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="DL" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="DM" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="DN" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dl" role="3cqZAp">
          <node concept="2OqwBi" id="DO" role="3clFbG">
            <node concept="37vLTw" id="DP" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="DQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="DR" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="DS" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="DT" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dm" role="3cqZAp">
          <node concept="2OqwBi" id="DU" role="3clFbG">
            <node concept="37vLTw" id="DV" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="DW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="DX" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/5982026979499766956" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dn" role="3cqZAp">
          <node concept="2OqwBi" id="DY" role="3clFbG">
            <node concept="37vLTw" id="DZ" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="E0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="E1" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Do" role="3cqZAp">
          <node concept="2OqwBi" id="E2" role="3clFbG">
            <node concept="2OqwBi" id="E3" role="2Oq$k0">
              <node concept="2OqwBi" id="E5" role="2Oq$k0">
                <node concept="2OqwBi" id="E7" role="2Oq$k0">
                  <node concept="2OqwBi" id="E9" role="2Oq$k0">
                    <node concept="2OqwBi" id="Eb" role="2Oq$k0">
                      <node concept="2OqwBi" id="Ed" role="2Oq$k0">
                        <node concept="37vLTw" id="Ef" role="2Oq$k0">
                          <ref role="3cqZAo" node="Dr" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Eg" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Eh" role="37wK5m">
                            <property role="Xl_RC" value="dataSource" />
                          </node>
                          <node concept="11gdke" id="Ei" role="37wK5m">
                            <property role="11gdj1" value="53046dd7fde2f4adL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Ee" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="Ej" role="37wK5m">
                          <property role="11gdj1" value="f3061a5392264cc5L" />
                        </node>
                        <node concept="11gdke" id="Ek" role="37wK5m">
                          <property role="11gdj1" value="a443f952ceaf5816L" />
                        </node>
                        <node concept="11gdke" id="El" role="37wK5m">
                          <property role="11gdj1" value="f8c37f506fL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Ec" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Em" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Ea" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="En" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="E8" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Eo" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="E6" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Ep" role="37wK5m">
                  <property role="Xl_RC" value="5982026979499766957" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="E4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dp" role="3cqZAp">
          <node concept="2OqwBi" id="Eq" role="3clFbG">
            <node concept="37vLTw" id="Er" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="Es" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Et" role="37wK5m">
                <property role="Xl_RC" value="table" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Dq" role="3cqZAp">
          <node concept="2OqwBi" id="Eu" role="3cqZAk">
            <node concept="37vLTw" id="Ev" role="2Oq$k0">
              <ref role="3cqZAo" node="Dr" resolve="b" />
            </node>
            <node concept="liA8E" id="Ew" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Df" role="1B3o_S" />
      <node concept="3uibUv" id="Dg" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jB" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForParameter" />
      <node concept="3clFbS" id="Ex" role="3clF47">
        <node concept="3cpWs8" id="E$" role="3cqZAp">
          <node concept="3cpWsn" id="EH" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="EI" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="EJ" role="33vP2m">
              <node concept="1pGfFk" id="EK" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="EL" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="EM" role="37wK5m">
                  <property role="Xl_RC" value="Parameter" />
                </node>
                <node concept="11gdke" id="EN" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="EO" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="EP" role="37wK5m">
                  <property role="11gdj1" value="1d111c815eee89eeL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E_" role="3cqZAp">
          <node concept="2OqwBi" id="EQ" role="3clFbG">
            <node concept="37vLTw" id="ER" role="2Oq$k0">
              <ref role="3cqZAo" node="EH" resolve="b" />
            </node>
            <node concept="liA8E" id="ES" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="ET" role="37wK5m" />
              <node concept="3clFbT" id="EU" role="37wK5m" />
              <node concept="3clFbT" id="EV" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="EA" role="3cqZAp">
          <node concept="1PaTwC" id="EW" role="1aUNEU">
            <node concept="3oM_SD" id="EX" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="EY" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.InputField" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EB" role="3cqZAp">
          <node concept="15s5l7" id="EZ" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="F0" role="3clFbG">
            <node concept="37vLTw" id="F1" role="2Oq$k0">
              <ref role="3cqZAo" node="EH" resolve="b" />
            </node>
            <node concept="liA8E" id="F2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="F3" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="F4" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="F5" role="37wK5m">
                <property role="11gdj1" value="12106fa3191L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EC" role="3cqZAp">
          <node concept="2OqwBi" id="F6" role="3clFbG">
            <node concept="37vLTw" id="F7" role="2Oq$k0">
              <ref role="3cqZAo" node="EH" resolve="b" />
            </node>
            <node concept="liA8E" id="F8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="F9" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2094486643673041390" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ED" role="3cqZAp">
          <node concept="2OqwBi" id="Fa" role="3clFbG">
            <node concept="37vLTw" id="Fb" role="2Oq$k0">
              <ref role="3cqZAo" node="EH" resolve="b" />
            </node>
            <node concept="liA8E" id="Fc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Fd" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EE" role="3cqZAp">
          <node concept="2OqwBi" id="Fe" role="3clFbG">
            <node concept="2OqwBi" id="Ff" role="2Oq$k0">
              <node concept="2OqwBi" id="Fh" role="2Oq$k0">
                <node concept="2OqwBi" id="Fj" role="2Oq$k0">
                  <node concept="37vLTw" id="Fl" role="2Oq$k0">
                    <ref role="3cqZAo" node="EH" resolve="b" />
                  </node>
                  <node concept="liA8E" id="Fm" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Fn" role="37wK5m">
                      <property role="Xl_RC" value="default_value" />
                    </node>
                    <node concept="11gdke" id="Fo" role="37wK5m">
                      <property role="11gdj1" value="1d111c815eee89efL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Fk" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="Fp" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Fi" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Fq" role="37wK5m">
                  <property role="Xl_RC" value="2094486643673041391" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Fg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EF" role="3cqZAp">
          <node concept="2OqwBi" id="Fr" role="3clFbG">
            <node concept="37vLTw" id="Fs" role="2Oq$k0">
              <ref role="3cqZAo" node="EH" resolve="b" />
            </node>
            <node concept="liA8E" id="Ft" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Fu" role="37wK5m">
                <property role="Xl_RC" value="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="EG" role="3cqZAp">
          <node concept="2OqwBi" id="Fv" role="3cqZAk">
            <node concept="37vLTw" id="Fw" role="2Oq$k0">
              <ref role="3cqZAo" node="EH" resolve="b" />
            </node>
            <node concept="liA8E" id="Fx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Ey" role="1B3o_S" />
      <node concept="3uibUv" id="Ez" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jC" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSelector" />
      <node concept="3clFbS" id="Fy" role="3clF47">
        <node concept="3cpWs8" id="F_" role="3cqZAp">
          <node concept="3cpWsn" id="FK" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="FL" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="FM" role="33vP2m">
              <node concept="1pGfFk" id="FN" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="FO" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="FP" role="37wK5m">
                  <property role="Xl_RC" value="Selector" />
                </node>
                <node concept="11gdke" id="FQ" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="FR" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="FS" role="37wK5m">
                  <property role="11gdj1" value="42549ff0716bc68cL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FA" role="3cqZAp">
          <node concept="2OqwBi" id="FT" role="3clFbG">
            <node concept="37vLTw" id="FU" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="FV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="FW" role="37wK5m" />
              <node concept="3clFbT" id="FX" role="37wK5m" />
              <node concept="3clFbT" id="FY" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="FB" role="3cqZAp">
          <node concept="1PaTwC" id="FZ" role="1aUNEU">
            <node concept="3oM_SD" id="G0" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="G1" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.Command" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FC" role="3cqZAp">
          <node concept="15s5l7" id="G2" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="G3" role="3clFbG">
            <node concept="37vLTw" id="G4" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="G5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="G6" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="G7" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="G8" role="37wK5m">
                <property role="11gdj1" value="1d111c815ef16d50L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FD" role="3cqZAp">
          <node concept="2OqwBi" id="G9" role="3clFbG">
            <node concept="37vLTw" id="Ga" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="Gb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="Gc" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="Gd" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="Ge" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FE" role="3cqZAp">
          <node concept="2OqwBi" id="Gf" role="3clFbG">
            <node concept="37vLTw" id="Gg" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="Gh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Gi" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/4779620959590794892" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FF" role="3cqZAp">
          <node concept="2OqwBi" id="Gj" role="3clFbG">
            <node concept="37vLTw" id="Gk" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="Gl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Gm" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FG" role="3cqZAp">
          <node concept="2OqwBi" id="Gn" role="3clFbG">
            <node concept="2OqwBi" id="Go" role="2Oq$k0">
              <node concept="2OqwBi" id="Gq" role="2Oq$k0">
                <node concept="2OqwBi" id="Gs" role="2Oq$k0">
                  <node concept="37vLTw" id="Gu" role="2Oq$k0">
                    <ref role="3cqZAo" node="FK" resolve="b" />
                  </node>
                  <node concept="liA8E" id="Gv" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Gw" role="37wK5m">
                      <property role="Xl_RC" value="value_kind" />
                    </node>
                    <node concept="11gdke" id="Gx" role="37wK5m">
                      <property role="11gdj1" value="469a3fa55a6675a8L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Gt" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="Gy" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:2094486643672734645" />
                    <node concept="11gdke" id="Gz" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:2094486643672734645" />
                    </node>
                    <node concept="11gdke" id="G$" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:2094486643672734645" />
                    </node>
                    <node concept="11gdke" id="G_" role="37wK5m">
                      <property role="11gdj1" value="1d111c815ee9dbb5L" />
                      <uo k="s:originTrace" v="n:2094486643672734645" />
                    </node>
                    <node concept="t5JxF" id="GA" role="lGtFl">
                      <property role="t5JxN" value="WHEN creating or updating fincalculator forms THEN set ValueKind explicitly (amount or number)" />
                      <uo k="s:originTrace" v="n:4998694871347781393" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Gr" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="GB" role="37wK5m">
                  <property role="Xl_RC" value="5087448708487214504" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Gp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FH" role="3cqZAp">
          <node concept="2OqwBi" id="GC" role="3clFbG">
            <node concept="2OqwBi" id="GD" role="2Oq$k0">
              <node concept="2OqwBi" id="GF" role="2Oq$k0">
                <node concept="2OqwBi" id="GH" role="2Oq$k0">
                  <node concept="2OqwBi" id="GJ" role="2Oq$k0">
                    <node concept="2OqwBi" id="GL" role="2Oq$k0">
                      <node concept="2OqwBi" id="GN" role="2Oq$k0">
                        <node concept="37vLTw" id="GP" role="2Oq$k0">
                          <ref role="3cqZAo" node="FK" resolve="b" />
                        </node>
                        <node concept="liA8E" id="GQ" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="GR" role="37wK5m">
                            <property role="Xl_RC" value="options" />
                          </node>
                          <node concept="11gdke" id="GS" role="37wK5m">
                            <property role="11gdj1" value="42549ff0716bc6cdL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="GO" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="GT" role="37wK5m">
                          <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        </node>
                        <node concept="11gdke" id="GU" role="37wK5m">
                          <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        </node>
                        <node concept="11gdke" id="GV" role="37wK5m">
                          <property role="11gdj1" value="42549ff0716bc68fL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="GM" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="GW" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="GK" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="GX" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="GI" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="GY" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="GG" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="GZ" role="37wK5m">
                  <property role="Xl_RC" value="4779620959590794957" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="GE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FI" role="3cqZAp">
          <node concept="2OqwBi" id="H0" role="3clFbG">
            <node concept="37vLTw" id="H1" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="H2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="H3" role="37wK5m">
                <property role="Xl_RC" value="selector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="FJ" role="3cqZAp">
          <node concept="2OqwBi" id="H4" role="3cqZAk">
            <node concept="37vLTw" id="H5" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="H6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Fz" role="1B3o_S" />
      <node concept="3uibUv" id="F$" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jD" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSelectorReference" />
      <node concept="3clFbS" id="H7" role="3clF47">
        <node concept="3cpWs8" id="Ha" role="3cqZAp">
          <node concept="3cpWsn" id="Hi" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Hj" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Hk" role="33vP2m">
              <node concept="1pGfFk" id="Hl" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Hm" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="Hn" role="37wK5m">
                  <property role="Xl_RC" value="SelectorReference" />
                </node>
                <node concept="11gdke" id="Ho" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="Hp" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="Hq" role="37wK5m">
                  <property role="11gdj1" value="42549ff0716bc718L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hb" role="3cqZAp">
          <node concept="2OqwBi" id="Hr" role="3clFbG">
            <node concept="37vLTw" id="Hs" role="2Oq$k0">
              <ref role="3cqZAo" node="Hi" resolve="b" />
            </node>
            <node concept="liA8E" id="Ht" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Hu" role="37wK5m" />
              <node concept="3clFbT" id="Hv" role="37wK5m" />
              <node concept="3clFbT" id="Hw" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Hc" role="3cqZAp">
          <node concept="1PaTwC" id="Hx" role="1aUNEU">
            <node concept="3oM_SD" id="Hy" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="Hz" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.baseLanguage.structure.Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hd" role="3cqZAp">
          <node concept="15s5l7" id="H$" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="H_" role="3clFbG">
            <node concept="37vLTw" id="HA" role="2Oq$k0">
              <ref role="3cqZAo" node="Hi" resolve="b" />
            </node>
            <node concept="liA8E" id="HB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="HC" role="37wK5m">
                <property role="11gdj1" value="f3061a5392264cc5L" />
              </node>
              <node concept="11gdke" id="HD" role="37wK5m">
                <property role="11gdj1" value="a443f952ceaf5816L" />
              </node>
              <node concept="11gdke" id="HE" role="37wK5m">
                <property role="11gdj1" value="f8c37f506fL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="He" role="3cqZAp">
          <node concept="2OqwBi" id="HF" role="3clFbG">
            <node concept="37vLTw" id="HG" role="2Oq$k0">
              <ref role="3cqZAo" node="Hi" resolve="b" />
            </node>
            <node concept="liA8E" id="HH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="HI" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/4779620959590795032" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hf" role="3cqZAp">
          <node concept="2OqwBi" id="HJ" role="3clFbG">
            <node concept="37vLTw" id="HK" role="2Oq$k0">
              <ref role="3cqZAo" node="Hi" resolve="b" />
            </node>
            <node concept="liA8E" id="HL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="HM" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hg" role="3cqZAp">
          <node concept="2OqwBi" id="HN" role="3clFbG">
            <node concept="2OqwBi" id="HO" role="2Oq$k0">
              <node concept="2OqwBi" id="HQ" role="2Oq$k0">
                <node concept="2OqwBi" id="HS" role="2Oq$k0">
                  <node concept="2OqwBi" id="HU" role="2Oq$k0">
                    <node concept="37vLTw" id="HW" role="2Oq$k0">
                      <ref role="3cqZAo" node="Hi" resolve="b" />
                    </node>
                    <node concept="liA8E" id="HX" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="HY" role="37wK5m">
                        <property role="Xl_RC" value="target" />
                      </node>
                      <node concept="11gdke" id="HZ" role="37wK5m">
                        <property role="11gdj1" value="42549ff0716bc719L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="HV" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="11gdke" id="I0" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="I1" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="I2" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716bc68cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="HT" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="I3" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="HR" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="I4" role="37wK5m">
                  <property role="Xl_RC" value="4779620959590795033" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="HP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Hh" role="3cqZAp">
          <node concept="2OqwBi" id="I5" role="3cqZAk">
            <node concept="37vLTw" id="I6" role="2Oq$k0">
              <ref role="3cqZAo" node="Hi" resolve="b" />
            </node>
            <node concept="liA8E" id="I7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="H8" role="1B3o_S" />
      <node concept="3uibUv" id="H9" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="jE" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForTextualType" />
      <node concept="3clFbS" id="I8" role="3clF47">
        <node concept="3cpWs8" id="Ib" role="3cqZAp">
          <node concept="3cpWsn" id="Ij" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ik" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Il" role="33vP2m">
              <node concept="1pGfFk" id="Im" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="In" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator" />
                </node>
                <node concept="Xl_RD" id="Io" role="37wK5m">
                  <property role="Xl_RC" value="TextualType" />
                </node>
                <node concept="11gdke" id="Ip" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="Iq" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="Ir" role="37wK5m">
                  <property role="11gdj1" value="20e1c9c3baa061d4L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ic" role="3cqZAp">
          <node concept="2OqwBi" id="Is" role="3clFbG">
            <node concept="37vLTw" id="It" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="Iu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Iv" role="37wK5m" />
              <node concept="3clFbT" id="Iw" role="37wK5m" />
              <node concept="3clFbT" id="Ix" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Id" role="3cqZAp">
          <node concept="1PaTwC" id="Iy" role="1aUNEU">
            <node concept="3oM_SD" id="Iz" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="I$" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.samples.fincalculator.structure.CalculatorType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ie" role="3cqZAp">
          <node concept="15s5l7" id="I_" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="IA" role="3clFbG">
            <node concept="37vLTw" id="IB" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="IC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="ID" role="37wK5m">
                <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
              </node>
              <node concept="11gdke" id="IE" role="37wK5m">
                <property role="11gdj1" value="83bed2ea6f3627c2L" />
              </node>
              <node concept="11gdke" id="IF" role="37wK5m">
                <property role="11gdj1" value="20e1c9c3baa061d5L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="If" role="3cqZAp">
          <node concept="2OqwBi" id="IG" role="3clFbG">
            <node concept="37vLTw" id="IH" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="II" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="IJ" role="37wK5m">
                <property role="Xl_RC" value="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)/2369396721460470228" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ig" role="3cqZAp">
          <node concept="2OqwBi" id="IK" role="3clFbG">
            <node concept="37vLTw" id="IL" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="IM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="IN" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ih" role="3cqZAp">
          <node concept="2OqwBi" id="IO" role="3clFbG">
            <node concept="37vLTw" id="IP" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="IQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="IR" role="37wK5m">
                <property role="Xl_RC" value="textual" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ii" role="3cqZAp">
          <node concept="2OqwBi" id="IS" role="3cqZAk">
            <node concept="37vLTw" id="IT" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="IU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="I9" role="1B3o_S" />
      <node concept="3uibUv" id="Ia" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
  </node>
</model>

