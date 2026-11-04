<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f13adab(checkpoints/testExtendingAnalyzer.dataFlow@beforebaselang)">
  <persistence version="9" />
  <attribute name="checkpoint" value="BeforeBaseLang" />
  <attribute name="user-objects" value="true" />
  <attribute name="prev-generation-plan" value="AspectCPS" />
  <attribute name="prev-checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <languages />
  <imports>
    <import index="hkmt" ref="r:b7d9737f-8e9b-4112-92de-8cd1bf30ae09(testExtendingAnalyzer.dataFlow)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="d3yh" ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc11249(checkpoints/jetbrains.mps.baseLanguage.dataFlow@descriptorclasses)" />
    <import index="8qxk" ref="r:3dddb2c7-b2ba-4381-896a-2e702ca1fb6e(jetbrains.mps.lang.dataFlow.framework)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="9fia" ref="r:48cf50db-7ea3-4b1e-ab16-c3d84cbcf0df(jetbrains.mps.lang.dataFlow.framework.instructions)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="8353134822275456723" name="jetbrains.mps.baseLanguage.structure.HexLongLiteral" flags="ng" index="11gdke">
        <property id="8353134822275456796" name="hexValue" index="11gdj1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="DataFlowAspectDescriptorImpl" />
    <uo k="s:originTrace" v="n:0" />
    <node concept="3clFb_" id="1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstructors" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:1" />
      <node concept="3Tm1VV" id="5" role="1B3o_S">
        <uo k="s:originTrace" v="n:5" />
      </node>
      <node concept="3uibUv" id="6" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <uo k="s:originTrace" v="n:6" />
        <node concept="3uibUv" id="b" role="11_B2D">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uRC" resolve="DataFlowConstructor" />
          <uo k="s:originTrace" v="n:11" />
        </node>
      </node>
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:7" />
        <node concept="3KaCP$" id="c" role="3cqZAp">
          <uo k="s:originTrace" v="n:12" />
          <node concept="3KbdKl" id="e" role="3KbHQx">
            <uo k="s:originTrace" v="n:14" />
            <node concept="Xl_RD" id="h" role="3Kbmr1">
              <property role="Xl_RC" value="jetbrains.mps.baseLanguage.dataFlow.Nullable" />
              <uo k="s:originTrace" v="n:17" />
            </node>
            <node concept="3clFbS" id="i" role="3Kbo56">
              <uo k="s:originTrace" v="n:18" />
              <node concept="3cpWs6" id="j" role="3cqZAp">
                <uo k="s:originTrace" v="n:19" />
                <node concept="2YIFZM" id="k" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:20" />
                  <node concept="2ShNRf" id="l" role="37wK5m">
                    <uo k="s:originTrace" v="n:21" />
                    <node concept="HV5vD" id="n" role="2ShVmc">
                      <ref role="HV5vE" node="s" resolve="NullSafeRule" />
                      <uo k="s:originTrace" v="n:23" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="m" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uRC" resolve="DataFlowConstructor" />
                    <uo k="s:originTrace" v="n:22" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="f" role="3Kb1Dw">
            <uo k="s:originTrace" v="n:15" />
          </node>
          <node concept="37vLTw" id="g" role="3KbGdf">
            <ref role="3cqZAo" node="8" resolve="analyzerId" />
            <uo k="s:originTrace" v="n:16" />
          </node>
        </node>
        <node concept="3cpWs6" id="d" role="3cqZAp">
          <uo k="s:originTrace" v="n:13" />
          <node concept="2YIFZM" id="o" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <uo k="s:originTrace" v="n:24" />
            <node concept="3uibUv" id="p" role="3PaCim">
              <ref role="3uigEE" to="8qxk:3yaa4ph8uRC" resolve="DataFlowConstructor" />
              <uo k="s:originTrace" v="n:25" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="8" role="3clF46">
        <property role="TrG5h" value="analyzerId" />
        <uo k="s:originTrace" v="n:8" />
        <node concept="17QB3L" id="q" role="1tU5fm">
          <uo k="s:originTrace" v="n:26" />
        </node>
      </node>
      <node concept="2AHcQZ" id="9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:9" />
      </node>
      <node concept="2AHcQZ" id="a" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:10" />
      </node>
    </node>
    <node concept="2tJIrI" id="2" role="jymVt">
      <uo k="s:originTrace" v="n:2" />
    </node>
    <node concept="3Tm1VV" id="3" role="1B3o_S">
      <uo k="s:originTrace" v="n:3" />
    </node>
    <node concept="3uibUv" id="4" role="1zkMxy">
      <ref role="3uigEE" to="8qxk:3yaa4ph8ud_" resolve="DataFlowAspectDescriptorBase" />
      <uo k="s:originTrace" v="n:4" />
    </node>
  </node>
  <node concept="39dXUE" id="r" />
  <node concept="312cEu" id="s">
    <property role="TrG5h" value="NullSafeRule" />
    <uo k="s:originTrace" v="n:36" />
    <node concept="3Tm1VV" id="t" role="1B3o_S">
      <uo k="s:originTrace" v="n:37" />
    </node>
    <node concept="3clFb_" id="u" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <uo k="s:originTrace" v="n:38" />
      <node concept="37vLTG" id="y" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:42" />
        <node concept="3uibUv" id="A" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:46" />
        </node>
      </node>
      <node concept="10P_77" id="z" role="3clF45">
        <uo k="s:originTrace" v="n:43" />
      </node>
      <node concept="3Tm1VV" id="$" role="1B3o_S">
        <uo k="s:originTrace" v="n:44" />
      </node>
      <node concept="3clFbS" id="_" role="3clF47">
        <uo k="s:originTrace" v="n:45" />
        <node concept="3cpWs8" id="B" role="3cqZAp">
          <uo k="s:originTrace" v="n:47" />
          <node concept="3cpWsn" id="E" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <uo k="s:originTrace" v="n:50" />
            <node concept="3uibUv" id="F" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              <uo k="s:originTrace" v="n:51" />
            </node>
            <node concept="2YIFZM" id="G" role="33vP2m">
              <ref role="37wK5l" to="i8bi:1ZwKn$cfVJ" resolve="getConcept" />
              <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
              <uo k="s:originTrace" v="n:52" />
              <node concept="37vLTw" id="H" role="37wK5m">
                <ref role="3cqZAo" node="y" resolve="node" />
                <uo k="s:originTrace" v="n:53" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="C" role="3cqZAp">
          <uo k="s:originTrace" v="n:48" />
          <node concept="3cpWsn" id="I" role="3cpWs9">
            <property role="TrG5h" value="applicableConcept" />
            <uo k="s:originTrace" v="n:55" />
            <node concept="3uibUv" id="J" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              <uo k="s:originTrace" v="n:56" />
            </node>
            <node concept="1rXfSq" id="K" role="33vP2m">
              <ref role="37wK5l" node="v" resolve="getApplicableConcept" />
              <uo k="s:originTrace" v="n:57" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="D" role="3cqZAp">
          <uo k="s:originTrace" v="n:49" />
          <node concept="22lmx$" id="L" role="3cqZAk">
            <uo k="s:originTrace" v="n:58" />
            <node concept="2OqwBi" id="M" role="3uHU7w">
              <uo k="s:originTrace" v="n:59" />
              <node concept="37vLTw" id="O" role="2Oq$k0">
                <ref role="3cqZAo" node="E" resolve="concept" />
                <uo k="s:originTrace" v="n:61" />
              </node>
              <node concept="liA8E" id="P" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                <uo k="s:originTrace" v="n:62" />
                <node concept="37vLTw" id="Q" role="37wK5m">
                  <ref role="3cqZAo" node="I" resolve="applicableConcept" />
                  <uo k="s:originTrace" v="n:63" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="N" role="3uHU7B">
              <uo k="s:originTrace" v="n:60" />
              <node concept="37vLTw" id="R" role="2Oq$k0">
                <ref role="3cqZAo" node="E" resolve="concept" />
                <uo k="s:originTrace" v="n:64" />
              </node>
              <node concept="liA8E" id="S" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <uo k="s:originTrace" v="n:65" />
                <node concept="37vLTw" id="T" role="37wK5m">
                  <ref role="3cqZAo" node="I" resolve="applicableConcept" />
                  <uo k="s:originTrace" v="n:66" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="v" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:39" />
      <node concept="3uibUv" id="U" role="3clF45">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:67" />
      </node>
      <node concept="3Tm1VV" id="V" role="1B3o_S">
        <uo k="s:originTrace" v="n:68" />
      </node>
      <node concept="3clFbS" id="W" role="3clF47">
        <uo k="s:originTrace" v="n:69" />
        <node concept="3clFbF" id="X" role="3cqZAp">
          <uo k="s:originTrace" v="n:70" />
          <node concept="1BaE9c" id="Y" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="NullSafeDotExpression$pS" />
            <uo k="s:originTrace" v="n:71" />
            <node concept="2YIFZM" id="Z" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <node concept="11gdke" id="10" role="37wK5m">
                <property role="11gdj1" value="3ac033a0bffa48e3L" />
              </node>
              <node concept="11gdke" id="11" role="37wK5m">
                <property role="11gdj1" value="a843a40cbdd89859L" />
              </node>
              <node concept="11gdke" id="12" role="37wK5m">
                <property role="11gdj1" value="13ac54c0e557dc29L" />
              </node>
              <node concept="Xl_RD" id="13" role="37wK5m">
                <property role="Xl_RC" value="testExtendingAnalyzer.structure.NullSafeDotExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="w" role="jymVt">
      <property role="TrG5h" value="performActions" />
      <uo k="s:originTrace" v="n:40" />
      <node concept="3cqZAl" id="14" role="3clF45">
        <uo k="s:originTrace" v="n:72" />
      </node>
      <node concept="3Tm1VV" id="15" role="1B3o_S">
        <uo k="s:originTrace" v="n:73" />
      </node>
      <node concept="37vLTG" id="16" role="3clF46">
        <property role="TrG5h" value="o" />
        <uo k="s:originTrace" v="n:74" />
        <node concept="3uibUv" id="19" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
          <uo k="s:originTrace" v="n:77" />
        </node>
      </node>
      <node concept="37vLTG" id="17" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:75" />
        <node concept="3uibUv" id="1a" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:78" />
        </node>
      </node>
      <node concept="3clFbS" id="18" role="3clF47">
        <uo k="s:originTrace" v="n:76" />
        <node concept="9aQIb" id="1b" role="3cqZAp">
          <uo k="s:originTrace" v="n:79" />
          <node concept="3clFbS" id="1c" role="9aQI4">
            <uo k="s:originTrace" v="n:80" />
            <node concept="3cpWs8" id="1d" role="3cqZAp">
              <uo k="s:originTrace" v="n:81" />
              <node concept="3cpWsn" id="1f" role="3cpWs9">
                <property role="TrG5h" value="object" />
                <uo k="s:originTrace" v="n:83" />
                <node concept="3uibUv" id="1g" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:84" />
                </node>
                <node concept="37vLTw" id="1h" role="33vP2m">
                  <ref role="3cqZAo" node="17" resolve="node" />
                  <uo k="s:originTrace" v="n:85" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1e" role="3cqZAp">
              <uo k="s:originTrace" v="n:82" />
              <node concept="3clFbS" id="1i" role="3clFbx">
                <uo k="s:originTrace" v="n:86" />
                <node concept="3cpWs8" id="1k" role="3cqZAp">
                  <uo k="s:originTrace" v="n:88" />
                  <node concept="3cpWsn" id="1q" role="3cpWs9">
                    <property role="TrG5h" value="before" />
                    <uo k="s:originTrace" v="n:94" />
                    <node concept="10P_77" id="1r" role="1tU5fm">
                      <uo k="s:originTrace" v="n:95" />
                    </node>
                    <node concept="3clFbT" id="1s" role="33vP2m">
                      <property role="3clFbU" value="true" />
                      <uo k="s:originTrace" v="n:96" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1l" role="3cqZAp">
                  <uo k="s:originTrace" v="n:89" />
                  <node concept="3cpWsn" id="1t" role="3cpWs9">
                    <property role="TrG5h" value="position" />
                    <uo k="s:originTrace" v="n:97" />
                    <node concept="10Oyi0" id="1u" role="1tU5fm">
                      <uo k="s:originTrace" v="n:98" />
                    </node>
                    <node concept="2OqwBi" id="1v" role="33vP2m">
                      <uo k="s:originTrace" v="n:99" />
                      <node concept="1eOMI4" id="1w" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:100" />
                        <node concept="10QFUN" id="1y" role="1eOMHV">
                          <uo k="s:originTrace" v="n:102" />
                          <node concept="3uibUv" id="1z" role="10QFUM">
                            <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
                            <uo k="s:originTrace" v="n:103" />
                          </node>
                          <node concept="1eOMI4" id="1$" role="10QFUP">
                            <uo k="s:originTrace" v="n:104" />
                            <node concept="37vLTw" id="1_" role="1eOMHV">
                              <ref role="3cqZAo" node="16" resolve="o" />
                              <uo k="s:originTrace" v="n:105" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1x" role="2OqNvi">
                        <ref role="37wK5l" to="8qxk:3yaa4ph8tDI" resolve="getStart" />
                        <uo k="s:originTrace" v="n:101" />
                        <node concept="37vLTw" id="1A" role="37wK5m">
                          <ref role="3cqZAo" node="17" resolve="node" />
                          <uo k="s:originTrace" v="n:106" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1m" role="3cqZAp">
                  <uo k="s:originTrace" v="n:90" />
                  <node concept="3cpWsn" id="1B" role="3cpWs9">
                    <property role="TrG5h" value="instruction" />
                    <uo k="s:originTrace" v="n:107" />
                    <node concept="3uibUv" id="1C" role="1tU5fm">
                      <ref role="3uigEE" to="9fia:3yaa4ph8tQC" resolve="Instruction" />
                      <uo k="s:originTrace" v="n:108" />
                    </node>
                    <node concept="2ShNRf" id="1D" role="33vP2m">
                      <uo k="s:originTrace" v="n:109" />
                      <node concept="1pGfFk" id="1E" role="2ShVmc">
                        <ref role="37wK5l" to="d3yh:2Cs" resolve="notNullInstruction" />
                        <uo k="s:originTrace" v="n:110" />
                        <node concept="2YIFZM" id="1F" role="37wK5m">
                          <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                          <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                          <uo k="s:originTrace" v="n:113" />
                          <node concept="37vLTw" id="1G" role="37wK5m">
                            <ref role="3cqZAo" node="17" resolve="node" />
                            <uo k="s:originTrace" v="n:112" />
                          </node>
                          <node concept="1BaE9c" id="1H" role="37wK5m">
                            <property role="1ouuDV" value="LINKS" />
                            <property role="1BaxDp" value="operand$w6IR" />
                            <node concept="2YIFZM" id="1I" role="1Bazha">
                              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getContainmentLink(long,long,long,long,java.lang.String)" resolve="getContainmentLink" />
                              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                              <node concept="11gdke" id="1J" role="37wK5m">
                                <property role="11gdj1" value="f3061a5392264cc5L" />
                              </node>
                              <node concept="11gdke" id="1K" role="37wK5m">
                                <property role="11gdj1" value="a443f952ceaf5816L" />
                              </node>
                              <node concept="11gdke" id="1L" role="37wK5m">
                                <property role="11gdj1" value="116b46a08c4L" />
                              </node>
                              <node concept="11gdke" id="1M" role="37wK5m">
                                <property role="11gdj1" value="116b46a4416L" />
                              </node>
                              <node concept="Xl_RD" id="1N" role="37wK5m">
                                <property role="Xl_RC" value="operand" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1n" role="3cqZAp">
                  <uo k="s:originTrace" v="n:91" />
                  <node concept="2OqwBi" id="1O" role="3clFbG">
                    <uo k="s:originTrace" v="n:114" />
                    <node concept="37vLTw" id="1P" role="2Oq$k0">
                      <ref role="3cqZAo" node="1B" resolve="instruction" />
                      <uo k="s:originTrace" v="n:115" />
                    </node>
                    <node concept="liA8E" id="1Q" role="2OqNvi">
                      <ref role="37wK5l" to="9fia:3yaa4ph8tWS" resolve="setRuleReference" />
                      <uo k="s:originTrace" v="n:116" />
                      <node concept="Xl_RD" id="1R" role="37wK5m">
                        <property role="Xl_RC" value="r:b7d9737f-8e9b-4112-92de-8cd1bf30ae09(testExtendingAnalyzer.dataFlow)/1417601170173058915" />
                        <uo k="s:originTrace" v="n:117" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1o" role="3cqZAp">
                  <uo k="s:originTrace" v="n:92" />
                  <node concept="2OqwBi" id="1S" role="3clFbG">
                    <uo k="s:originTrace" v="n:118" />
                    <node concept="37vLTw" id="1T" role="2Oq$k0">
                      <ref role="3cqZAo" node="1B" resolve="instruction" />
                      <uo k="s:originTrace" v="n:119" />
                    </node>
                    <node concept="liA8E" id="1U" role="2OqNvi">
                      <ref role="37wK5l" to="9fia:3yaa4ph8tRJ" resolve="setSource" />
                      <uo k="s:originTrace" v="n:120" />
                      <node concept="37vLTw" id="1V" role="37wK5m">
                        <ref role="3cqZAo" node="17" resolve="node" />
                        <uo k="s:originTrace" v="n:121" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1p" role="3cqZAp">
                  <uo k="s:originTrace" v="n:93" />
                  <node concept="2OqwBi" id="1W" role="3clFbG">
                    <uo k="s:originTrace" v="n:122" />
                    <node concept="1eOMI4" id="1X" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:123" />
                      <node concept="10QFUN" id="1Z" role="1eOMHV">
                        <uo k="s:originTrace" v="n:125" />
                        <node concept="3uibUv" id="20" role="10QFUM">
                          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
                          <uo k="s:originTrace" v="n:126" />
                        </node>
                        <node concept="1eOMI4" id="21" role="10QFUP">
                          <uo k="s:originTrace" v="n:127" />
                          <node concept="37vLTw" id="22" role="1eOMHV">
                            <ref role="3cqZAo" node="16" resolve="o" />
                            <uo k="s:originTrace" v="n:128" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1Y" role="2OqNvi">
                      <ref role="37wK5l" to="8qxk:3yaa4ph8tBf" resolve="insert" />
                      <uo k="s:originTrace" v="n:124" />
                      <node concept="37vLTw" id="23" role="37wK5m">
                        <ref role="3cqZAo" node="1B" resolve="instruction" />
                        <uo k="s:originTrace" v="n:129" />
                      </node>
                      <node concept="37vLTw" id="24" role="37wK5m">
                        <ref role="3cqZAo" node="1t" resolve="position" />
                        <uo k="s:originTrace" v="n:130" />
                      </node>
                      <node concept="3clFbT" id="25" role="37wK5m">
                        <property role="3clFbU" value="true" />
                        <uo k="s:originTrace" v="n:131" />
                      </node>
                      <node concept="37vLTw" id="26" role="37wK5m">
                        <ref role="3cqZAo" node="1q" resolve="before" />
                        <uo k="s:originTrace" v="n:132" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1j" role="3clFbw">
                <uo k="s:originTrace" v="n:87" />
                <node concept="1eOMI4" id="27" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:133" />
                  <node concept="10QFUN" id="29" role="1eOMHV">
                    <uo k="s:originTrace" v="n:135" />
                    <node concept="3uibUv" id="2a" role="10QFUM">
                      <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
                      <uo k="s:originTrace" v="n:136" />
                    </node>
                    <node concept="37vLTw" id="2b" role="10QFUP">
                      <ref role="3cqZAo" node="16" resolve="o" />
                      <uo k="s:originTrace" v="n:137" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="28" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8tNL" resolve="contains" />
                  <uo k="s:originTrace" v="n:134" />
                  <node concept="37vLTw" id="2c" role="37wK5m">
                    <ref role="3cqZAo" node="1f" resolve="object" />
                    <uo k="s:originTrace" v="n:138" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="x" role="EKbjA">
      <ref role="3uigEE" to="8qxk:3yaa4ph8uRC" resolve="DataFlowConstructor" />
      <uo k="s:originTrace" v="n:41" />
    </node>
  </node>
</model>

