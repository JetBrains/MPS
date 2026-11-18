<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:febe2ab(checkpoints/jetbrains.mps.samples.fincalculator.dataFlow@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="5sn0" ref="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="8qxk" ref="r:3dddb2c7-b2ba-4381-896a-2e702ca1fb6e(jetbrains.mps.lang.dataFlow.framework)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="64eg" ref="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)" />
    <import index="aplb" ref="2af156ab-65c1-4a62-bd0d-ea734f71eab6/r:a1d8bbbf-d4f0-431f-8dcd-a6badc777315(jetbrains.mps.dataFlow.runtime/jetbrains.mps.lang.dataFlow)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="CalculationReference_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800701" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800701" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800701" />
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800701" />
      <node concept="3Tm1VV" id="4" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800701" />
      </node>
      <node concept="3cqZAl" id="5" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800701" />
      </node>
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800701" />
        <node concept="3uibUv" id="8" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800701" />
        </node>
      </node>
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800703" />
        <node concept="3clFbF" id="9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800704" />
          <node concept="2OqwBi" id="a" role="3clFbG">
            <node concept="2OqwBi" id="b" role="2Oq$k0">
              <node concept="37vLTw" id="d" role="2Oq$k0">
                <ref role="3cqZAo" node="6" resolve="_context" />
              </node>
              <node concept="liA8E" id="e" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="c" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <node concept="2OqwBi" id="f" role="37wK5m">
                <uo k="s:originTrace" v="n:3521948432330800705" />
                <node concept="1DoJHT" id="h" role="2Oq$k0">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:3521948432330800706" />
                  <node concept="3uibUv" id="j" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="k" role="1EMhIo">
                    <ref role="3cqZAo" node="6" resolve="_context" />
                  </node>
                </node>
                <node concept="3TrEf2" id="i" role="2OqNvi">
                  <ref role="3Tt5mk" to="64eg:23xMseUumqC" resolve="target" />
                  <uo k="s:originTrace" v="n:3521948432330800707" />
                </node>
              </node>
              <node concept="Xl_RD" id="g" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800704" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="l">
    <property role="TrG5h" value="CalculationValueReference_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800708" />
    <node concept="3Tm1VV" id="m" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800708" />
    </node>
    <node concept="3uibUv" id="n" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800708" />
    </node>
    <node concept="3clFb_" id="o" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800708" />
      <node concept="3Tm1VV" id="p" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800708" />
      </node>
      <node concept="3cqZAl" id="q" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800708" />
      </node>
      <node concept="37vLTG" id="r" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800708" />
        <node concept="3uibUv" id="t" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800708" />
        </node>
      </node>
      <node concept="3clFbS" id="s" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800710" />
        <node concept="3clFbF" id="u" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800711" />
          <node concept="2OqwBi" id="v" role="3clFbG">
            <node concept="2OqwBi" id="w" role="2Oq$k0">
              <node concept="37vLTw" id="y" role="2Oq$k0">
                <ref role="3cqZAo" node="r" resolve="_context" />
              </node>
              <node concept="liA8E" id="z" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="x" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <node concept="2OqwBi" id="$" role="37wK5m">
                <uo k="s:originTrace" v="n:3521948432330800712" />
                <node concept="1DoJHT" id="A" role="2Oq$k0">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:3521948432330800713" />
                  <node concept="3uibUv" id="C" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="D" role="1EMhIo">
                    <ref role="3cqZAo" node="r" resolve="_context" />
                  </node>
                </node>
                <node concept="3TrEf2" id="B" role="2OqNvi">
                  <ref role="3Tt5mk" to="64eg:5c4rtvXQ3iI" resolve="target" />
                  <uo k="s:originTrace" v="n:3521948432330800714" />
                </node>
              </node>
              <node concept="Xl_RD" id="_" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800711" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="E">
    <property role="TrG5h" value="CalculationValue_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800580" />
    <node concept="3Tm1VV" id="F" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800580" />
    </node>
    <node concept="3uibUv" id="G" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800580" />
    </node>
    <node concept="3clFb_" id="H" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800580" />
      <node concept="3Tm1VV" id="I" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800580" />
      </node>
      <node concept="3cqZAl" id="J" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800580" />
      </node>
      <node concept="37vLTG" id="K" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800580" />
        <node concept="3uibUv" id="M" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800580" />
        </node>
      </node>
      <node concept="3clFbS" id="L" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800582" />
        <node concept="3clFbF" id="N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800583" />
          <node concept="2OqwBi" id="P" role="3clFbG">
            <node concept="2OqwBi" id="Q" role="2Oq$k0">
              <node concept="37vLTw" id="S" role="2Oq$k0">
                <ref role="3cqZAo" node="K" resolve="_context" />
              </node>
              <node concept="liA8E" id="T" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="R" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
              <node concept="10QFUN" id="U" role="37wK5m">
                <node concept="2OqwBi" id="V" role="10QFUP">
                  <uo k="s:originTrace" v="n:3521948432330800584" />
                  <node concept="1DoJHT" id="X" role="2Oq$k0">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:3521948432330800585" />
                    <node concept="3uibUv" id="Z" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="10" role="1EMhIo">
                      <ref role="3cqZAo" node="K" resolve="_context" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="Y" role="2OqNvi">
                    <ref role="3Tt5mk" to="64eg:5c4rtvXPueO" resolve="initializer" />
                    <uo k="s:originTrace" v="n:3521948432330800586" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="W" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800587" />
          <node concept="2OqwBi" id="11" role="3clFbG">
            <node concept="liA8E" id="12" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <node concept="1DoJHT" id="14" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800588" />
                <node concept="3uibUv" id="16" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="17" role="1EMhIo">
                  <ref role="3cqZAo" node="K" resolve="_context" />
                </node>
              </node>
              <node concept="Xl_RD" id="15" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800587" />
              </node>
            </node>
            <node concept="2OqwBi" id="13" role="2Oq$k0">
              <node concept="liA8E" id="18" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="19" role="2Oq$k0">
                <ref role="3cqZAo" node="K" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1a">
    <property role="TrG5h" value="Calculation_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800605" />
    <node concept="3Tm1VV" id="1b" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800605" />
    </node>
    <node concept="3uibUv" id="1c" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800605" />
    </node>
    <node concept="3clFb_" id="1d" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800605" />
      <node concept="3Tm1VV" id="1e" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800605" />
      </node>
      <node concept="3cqZAl" id="1f" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800605" />
      </node>
      <node concept="37vLTG" id="1g" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800605" />
        <node concept="3uibUv" id="1i" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800605" />
        </node>
      </node>
      <node concept="3clFbS" id="1h" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800607" />
        <node concept="2Gpval" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800608" />
          <node concept="2GrKxI" id="1l" role="2Gsz3X">
            <property role="TrG5h" value="reference" />
            <property role="2Lvdk3" value="reference0" />
            <uo k="s:originTrace" v="n:3521948432330800609" />
          </node>
          <node concept="2OqwBi" id="1m" role="2GsD0m">
            <uo k="s:originTrace" v="n:3521948432330800610" />
            <node concept="2OqwBi" id="1o" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3521948432330800611" />
              <node concept="1DoJHT" id="1q" role="2Oq$k0">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800612" />
                <node concept="3uibUv" id="1s" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="1t" role="1EMhIo">
                  <ref role="3cqZAo" node="1g" resolve="_context" />
                </node>
              </node>
              <node concept="3TrEf2" id="1r" role="2OqNvi">
                <ref role="3Tt5mk" to="64eg:23xMseUtsxB" resolve="body" />
                <uo k="s:originTrace" v="n:3521948432330800613" />
              </node>
            </node>
            <node concept="2Rf3mk" id="1p" role="2OqNvi">
              <uo k="s:originTrace" v="n:3521948432330800614" />
              <node concept="3gmYPX" id="1u" role="1xVPHs">
                <uo k="s:originTrace" v="n:3805647767878896064" />
                <node concept="3gn64h" id="1v" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:i470n16" resolve="FieldReference" />
                  <uo k="s:originTrace" v="n:3805647767878896066" />
                </node>
                <node concept="3gn64h" id="1w" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:49kBZ1LqmAC" resolve="LogicalReference" />
                  <uo k="s:originTrace" v="n:3805647767878896399" />
                </node>
                <node concept="3gn64h" id="1x" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:49kBZ1LqWso" resolve="SelectorReference" />
                  <uo k="s:originTrace" v="n:3805647767878897580" />
                </node>
                <node concept="3gn64h" id="1y" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:23xMseUumqB" resolve="CalculationReference" />
                  <uo k="s:originTrace" v="n:3805647767878898851" />
                </node>
                <node concept="3gn64h" id="1z" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:5c4rtvXQ3iH" resolve="CalculationValueReference" />
                  <uo k="s:originTrace" v="n:3805647767878900437" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1n" role="2LFqv$">
            <uo k="s:originTrace" v="n:3521948432330800619" />
            <node concept="3clFbF" id="1$" role="3cqZAp">
              <uo k="s:originTrace" v="n:3521948432330800620" />
              <node concept="2OqwBi" id="1_" role="3clFbG">
                <node concept="2OqwBi" id="1A" role="2Oq$k0">
                  <node concept="37vLTw" id="1C" role="2Oq$k0">
                    <ref role="3cqZAo" node="1g" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="1D" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="1B" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
                  <node concept="10QFUN" id="1E" role="37wK5m">
                    <node concept="2GrUjf" id="1F" role="10QFUP">
                      <ref role="2Gs0qQ" node="1l" resolve="reference" />
                      <uo k="s:originTrace" v="n:3521948432330800621" />
                    </node>
                    <node concept="3Tqbb2" id="1G" role="10QFUM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800678" />
          <node concept="2OqwBi" id="1H" role="3clFbG">
            <node concept="liA8E" id="1I" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <node concept="1DoJHT" id="1K" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800679" />
                <node concept="3uibUv" id="1M" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="1N" role="1EMhIo">
                  <ref role="3cqZAo" node="1g" resolve="_context" />
                </node>
              </node>
              <node concept="Xl_RD" id="1L" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800678" />
              </node>
            </node>
            <node concept="2OqwBi" id="1J" role="2Oq$k0">
              <node concept="liA8E" id="1O" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="1P" role="2Oq$k0">
                <ref role="3cqZAo" node="1g" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1Q">
    <property role="TrG5h" value="Calculator_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800551" />
    <node concept="3Tm1VV" id="1R" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800551" />
    </node>
    <node concept="3uibUv" id="1S" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800551" />
    </node>
    <node concept="3clFb_" id="1T" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800551" />
      <node concept="3Tm1VV" id="1U" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800551" />
      </node>
      <node concept="3cqZAl" id="1V" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800551" />
      </node>
      <node concept="37vLTG" id="1W" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800551" />
        <node concept="3uibUv" id="1Y" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800551" />
        </node>
      </node>
      <node concept="3clFbS" id="1X" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800553" />
        <node concept="2Gpval" id="1Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800554" />
          <node concept="2GrKxI" id="21" role="2Gsz3X">
            <property role="TrG5h" value="command" />
            <property role="2Lvdk3" value="command" />
            <uo k="s:originTrace" v="n:3521948432330800555" />
          </node>
          <node concept="2OqwBi" id="22" role="2GsD0m">
            <uo k="s:originTrace" v="n:3521948432330800556" />
            <node concept="1DoJHT" id="24" role="2Oq$k0">
              <property role="1Dpdpm" value="getNode" />
              <uo k="s:originTrace" v="n:3521948432330800557" />
              <node concept="3uibUv" id="26" role="1Ez5kq">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="37vLTw" id="27" role="1EMhIo">
                <ref role="3cqZAo" node="1W" resolve="_context" />
              </node>
            </node>
            <node concept="3Tsc0h" id="25" role="2OqNvi">
              <ref role="3TtcxE" to="64eg:1Oh785uWyUK" resolve="commands" />
              <uo k="s:originTrace" v="n:3521948432330800558" />
            </node>
          </node>
          <node concept="3clFbS" id="23" role="2LFqv$">
            <uo k="s:originTrace" v="n:3521948432330800559" />
            <node concept="3clFbF" id="28" role="3cqZAp">
              <uo k="s:originTrace" v="n:3521948432330800560" />
              <node concept="2OqwBi" id="29" role="3clFbG">
                <node concept="2OqwBi" id="2a" role="2Oq$k0">
                  <node concept="37vLTw" id="2c" role="2Oq$k0">
                    <ref role="3cqZAo" node="1W" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="2d" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="2b" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
                  <node concept="10QFUN" id="2e" role="37wK5m">
                    <node concept="2GrUjf" id="2f" role="10QFUP">
                      <ref role="2Gs0qQ" node="21" resolve="command" />
                      <uo k="s:originTrace" v="n:3521948432330800561" />
                    </node>
                    <node concept="3Tqbb2" id="2g" role="10QFUM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800562" />
          <node concept="2OqwBi" id="2h" role="3clFbG">
            <node concept="2OqwBi" id="2i" role="2Oq$k0">
              <node concept="37vLTw" id="2k" role="2Oq$k0">
                <ref role="3cqZAo" node="1W" resolve="_context" />
              </node>
              <node concept="liA8E" id="2l" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="2j" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8uvo" resolve="emitIfJump" />
              <node concept="2OqwBi" id="2m" role="37wK5m">
                <uo k="s:originTrace" v="n:3521948432330800563" />
                <node concept="2OqwBi" id="2o" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3521948432330800563" />
                  <node concept="37vLTw" id="2q" role="2Oq$k0">
                    <ref role="3cqZAo" node="1W" resolve="_context" />
                    <uo k="s:originTrace" v="n:3521948432330800563" />
                  </node>
                  <node concept="liA8E" id="2r" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                    <uo k="s:originTrace" v="n:3521948432330800563" />
                  </node>
                </node>
                <node concept="liA8E" id="2p" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8unw" resolve="before" />
                  <uo k="s:originTrace" v="n:3521948432330800563" />
                  <node concept="1DoJHT" id="2s" role="37wK5m">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:3521948432330800564" />
                    <node concept="3uibUv" id="2t" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="2u" role="1EMhIo">
                      <ref role="3cqZAo" node="1W" resolve="_context" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2n" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800562" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2v">
    <property role="TrG5h" value="DataFlowAspectDescriptorImpl" />
    <node concept="2tJIrI" id="2w" role="jymVt" />
    <node concept="3clFb_" id="2x" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataFlowBuilders" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2$" role="1B3o_S" />
      <node concept="2AHcQZ" id="2_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="2A" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="2E" role="11_B2D">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="2B" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2F" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="2C" role="3clF47">
        <node concept="1_3QMa" id="2G" role="3cqZAp">
          <node concept="1eOMI4" id="2I" role="1_3QMn">
            <node concept="10QFUN" id="2X" role="1eOMHV">
              <node concept="37vLTw" id="2Y" role="10QFUP">
                <ref role="3cqZAo" node="2B" resolve="concept" />
              </node>
              <node concept="3bZ5Sz" id="2Z" role="10QFUM" />
            </node>
          </node>
          <node concept="1pnPoh" id="2J" role="1_3QMm">
            <node concept="3clFbS" id="30" role="1pnPq1">
              <node concept="3cpWs6" id="32" role="3cqZAp">
                <node concept="2YIFZM" id="33" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="34" role="37wK5m">
                    <node concept="HV5vD" id="36" role="2ShVmc">
                      <ref role="HV5vE" node="1a" resolve="Calculation_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="35" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="31" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:23xMseUt3XP" resolve="Calculation" />
            </node>
          </node>
          <node concept="1pnPoh" id="2K" role="1_3QMm">
            <node concept="3clFbS" id="37" role="1pnPq1">
              <node concept="3cpWs6" id="39" role="3cqZAp">
                <node concept="2YIFZM" id="3a" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3b" role="37wK5m">
                    <node concept="HV5vD" id="3d" role="2ShVmc">
                      <ref role="HV5vE" node="0" resolve="CalculationReference_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3c" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="38" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:23xMseUumqB" resolve="CalculationReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="2L" role="1_3QMm">
            <node concept="3clFbS" id="3e" role="1pnPq1">
              <node concept="3cpWs6" id="3g" role="3cqZAp">
                <node concept="2YIFZM" id="3h" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3i" role="37wK5m">
                    <node concept="HV5vD" id="3k" role="2ShVmc">
                      <ref role="HV5vE" node="E" resolve="CalculationValue_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3j" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3f" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:5c4rtvXPueN" resolve="CalculationValue" />
            </node>
          </node>
          <node concept="1pnPoh" id="2M" role="1_3QMm">
            <node concept="3clFbS" id="3l" role="1pnPq1">
              <node concept="3cpWs6" id="3n" role="3cqZAp">
                <node concept="2YIFZM" id="3o" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3p" role="37wK5m">
                    <node concept="HV5vD" id="3r" role="2ShVmc">
                      <ref role="HV5vE" node="l" resolve="CalculationValueReference_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3q" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3m" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:5c4rtvXQ3iH" resolve="CalculationValueReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="2N" role="1_3QMm">
            <node concept="3clFbS" id="3s" role="1pnPq1">
              <node concept="3cpWs6" id="3u" role="3cqZAp">
                <node concept="2YIFZM" id="3v" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3w" role="37wK5m">
                    <node concept="HV5vD" id="3y" role="2ShVmc">
                      <ref role="HV5vE" node="1Q" resolve="Calculator_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3x" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3t" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:i46Ymgg" resolve="Calculator" />
            </node>
          </node>
          <node concept="1pnPoh" id="2O" role="1_3QMm">
            <node concept="3clFbS" id="3z" role="1pnPq1">
              <node concept="3cpWs6" id="3_" role="3cqZAp">
                <node concept="2YIFZM" id="3A" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3B" role="37wK5m">
                    <node concept="HV5vD" id="3D" role="2ShVmc">
                      <ref role="HV5vE" node="4t" resolve="FieldReference_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3C" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3$" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:i470n16" resolve="FieldReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="2P" role="1_3QMm">
            <node concept="3clFbS" id="3E" role="1pnPq1">
              <node concept="3cpWs6" id="3G" role="3cqZAp">
                <node concept="2YIFZM" id="3H" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3I" role="37wK5m">
                    <node concept="HV5vD" id="3K" role="2ShVmc">
                      <ref role="HV5vE" node="5F" resolve="InputField_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3J" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3F" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:i46Yz6h" resolve="InputField" />
            </node>
          </node>
          <node concept="1pnPoh" id="2Q" role="1_3QMm">
            <node concept="3clFbS" id="3L" role="1pnPq1">
              <node concept="3cpWs6" id="3N" role="3cqZAp">
                <node concept="2YIFZM" id="3O" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3P" role="37wK5m">
                    <node concept="HV5vD" id="3R" role="2ShVmc">
                      <ref role="HV5vE" node="6j" resolve="Logical_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3Q" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3M" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:49kBZ1Lqm_O" resolve="Logical" />
            </node>
          </node>
          <node concept="1pnPoh" id="2R" role="1_3QMm">
            <node concept="3clFbS" id="3S" role="1pnPq1">
              <node concept="3cpWs6" id="3U" role="3cqZAp">
                <node concept="2YIFZM" id="3V" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="3W" role="37wK5m">
                    <node concept="HV5vD" id="3Y" role="2ShVmc">
                      <ref role="HV5vE" node="5Y" resolve="LogicalReference_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3X" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3T" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:49kBZ1LqmAC" resolve="LogicalReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="2S" role="1_3QMm">
            <node concept="3clFbS" id="3Z" role="1pnPq1">
              <node concept="3cpWs6" id="41" role="3cqZAp">
                <node concept="2YIFZM" id="42" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="43" role="37wK5m">
                    <node concept="HV5vD" id="45" role="2ShVmc">
                      <ref role="HV5vE" node="6A" resolve="OutputField_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="44" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="40" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:i46ZlEo" resolve="OutputField" />
            </node>
          </node>
          <node concept="1pnPoh" id="2T" role="1_3QMm">
            <node concept="3clFbS" id="46" role="1pnPq1">
              <node concept="3cpWs6" id="48" role="3cqZAp">
                <node concept="2YIFZM" id="49" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="4a" role="37wK5m">
                    <node concept="HV5vD" id="4c" role="2ShVmc">
                      <ref role="HV5vE" node="76" resolve="OutputTable_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4b" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="47" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:5c4rtvXSJiG" resolve="OutputTable" />
            </node>
          </node>
          <node concept="1pnPoh" id="2U" role="1_3QMm">
            <node concept="3clFbS" id="4d" role="1pnPq1">
              <node concept="3cpWs6" id="4f" role="3cqZAp">
                <node concept="2YIFZM" id="4g" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="4h" role="37wK5m">
                    <node concept="HV5vD" id="4j" role="2ShVmc">
                      <ref role="HV5vE" node="7L" resolve="Selector_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4i" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4e" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:49kBZ1LqWqc" resolve="Selector" />
            </node>
          </node>
          <node concept="1pnPoh" id="2V" role="1_3QMm">
            <node concept="3clFbS" id="4k" role="1pnPq1">
              <node concept="3cpWs6" id="4m" role="3cqZAp">
                <node concept="2YIFZM" id="4n" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="4o" role="37wK5m">
                    <node concept="HV5vD" id="4q" role="2ShVmc">
                      <ref role="HV5vE" node="7s" resolve="SelectorReference_DataFlow" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4p" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4l" role="1pnPq6">
              <ref role="3gnhBz" to="64eg:49kBZ1LqWso" resolve="SelectorReference" />
            </node>
          </node>
          <node concept="3clFbS" id="2W" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="2H" role="3cqZAp">
          <node concept="2YIFZM" id="4r" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="4s" role="3PaCim">
              <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2y" role="1B3o_S" />
    <node concept="3uibUv" id="2z" role="1zkMxy">
      <ref role="3uigEE" to="8qxk:3yaa4ph8ud_" resolve="DataFlowAspectDescriptorBase" />
    </node>
  </node>
  <node concept="312cEu" id="4t">
    <property role="TrG5h" value="FieldReference_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800680" />
    <node concept="3Tm1VV" id="4u" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800680" />
    </node>
    <node concept="3uibUv" id="4v" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800680" />
    </node>
    <node concept="3clFb_" id="4w" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800680" />
      <node concept="3Tm1VV" id="4x" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800680" />
      </node>
      <node concept="3cqZAl" id="4y" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800680" />
      </node>
      <node concept="37vLTG" id="4z" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800680" />
        <node concept="3uibUv" id="4_" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800680" />
        </node>
      </node>
      <node concept="3clFbS" id="4$" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800682" />
        <node concept="3clFbF" id="4A" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800683" />
          <node concept="2OqwBi" id="4B" role="3clFbG">
            <node concept="2OqwBi" id="4C" role="2Oq$k0">
              <node concept="37vLTw" id="4E" role="2Oq$k0">
                <ref role="3cqZAo" node="4z" resolve="_context" />
              </node>
              <node concept="liA8E" id="4F" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="4D" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <node concept="2OqwBi" id="4G" role="37wK5m">
                <uo k="s:originTrace" v="n:3521948432330800684" />
                <node concept="1DoJHT" id="4I" role="2Oq$k0">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:3521948432330800685" />
                  <node concept="3uibUv" id="4K" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="4L" role="1EMhIo">
                    <ref role="3cqZAo" node="4z" resolve="_context" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4J" role="2OqNvi">
                  <ref role="3Tt5mk" to="64eg:i470soo" resolve="field" />
                  <uo k="s:originTrace" v="n:3521948432330800686" />
                </node>
              </node>
              <node concept="Xl_RD" id="4H" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800683" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="4M">
    <node concept="39e2AJ" id="4N" role="39e2AI">
      <property role="39e3Y2" value="dataFlowBuilderClass" />
      <node concept="39e2AG" id="4P" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzSX" resolve="CalculationReference_DataFlow" />
        <node concept="385nmt" id="52" role="385vvn">
          <property role="385vuF" value="CalculationReference_DataFlow" />
          <node concept="3u3nmq" id="54" role="385v07">
            <property role="3u3nmv" value="3521948432330800701" />
          </node>
        </node>
        <node concept="39e2AT" id="53" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="CalculationReference_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4Q" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzT4" resolve="CalculationValueReference_DataFlow" />
        <node concept="385nmt" id="55" role="385vvn">
          <property role="385vuF" value="CalculationValueReference_DataFlow" />
          <node concept="3u3nmq" id="57" role="385v07">
            <property role="3u3nmv" value="3521948432330800708" />
          </node>
        </node>
        <node concept="39e2AT" id="56" role="39e2AY">
          <ref role="39e2AS" node="l" resolve="CalculationValueReference_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4R" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzR4" resolve="CalculationValue_DataFlow" />
        <node concept="385nmt" id="58" role="385vvn">
          <property role="385vuF" value="CalculationValue_DataFlow" />
          <node concept="3u3nmq" id="5a" role="385v07">
            <property role="3u3nmv" value="3521948432330800580" />
          </node>
        </node>
        <node concept="39e2AT" id="59" role="39e2AY">
          <ref role="39e2AS" node="E" resolve="CalculationValue_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4S" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzRt" resolve="Calculation_DataFlow" />
        <node concept="385nmt" id="5b" role="385vvn">
          <property role="385vuF" value="Calculation_DataFlow" />
          <node concept="3u3nmq" id="5d" role="385v07">
            <property role="3u3nmv" value="3521948432330800605" />
          </node>
        </node>
        <node concept="39e2AT" id="5c" role="39e2AY">
          <ref role="39e2AS" node="1a" resolve="Calculation_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4T" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzQB" resolve="Calculator_DataFlow" />
        <node concept="385nmt" id="5e" role="385vvn">
          <property role="385vuF" value="Calculator_DataFlow" />
          <node concept="3u3nmq" id="5g" role="385v07">
            <property role="3u3nmv" value="3521948432330800551" />
          </node>
        </node>
        <node concept="39e2AT" id="5f" role="39e2AY">
          <ref role="39e2AS" node="1Q" resolve="Calculator_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4U" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzSC" resolve="FieldReference_DataFlow" />
        <node concept="385nmt" id="5h" role="385vvn">
          <property role="385vuF" value="FieldReference_DataFlow" />
          <node concept="3u3nmq" id="5j" role="385v07">
            <property role="3u3nmv" value="3521948432330800680" />
          </node>
        </node>
        <node concept="39e2AT" id="5i" role="39e2AY">
          <ref role="39e2AS" node="4t" resolve="FieldReference_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4V" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzQP" resolve="InputField_DataFlow" />
        <node concept="385nmt" id="5k" role="385vvn">
          <property role="385vuF" value="InputField_DataFlow" />
          <node concept="3u3nmq" id="5m" role="385v07">
            <property role="3u3nmv" value="3521948432330800565" />
          </node>
        </node>
        <node concept="39e2AT" id="5l" role="39e2AY">
          <ref role="39e2AS" node="5F" resolve="InputField_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4W" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzSJ" resolve="LogicalReference_DataFlow" />
        <node concept="385nmt" id="5n" role="385vvn">
          <property role="385vuF" value="LogicalReference_DataFlow" />
          <node concept="3u3nmq" id="5p" role="385v07">
            <property role="3u3nmv" value="3521948432330800687" />
          </node>
        </node>
        <node concept="39e2AT" id="5o" role="39e2AY">
          <ref role="39e2AS" node="5Y" resolve="LogicalReference_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4X" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzQZ" resolve="Logical_DataFlow" />
        <node concept="385nmt" id="5q" role="385vvn">
          <property role="385vuF" value="Logical_DataFlow" />
          <node concept="3u3nmq" id="5s" role="385v07">
            <property role="3u3nmv" value="3521948432330800575" />
          </node>
        </node>
        <node concept="39e2AT" id="5r" role="39e2AY">
          <ref role="39e2AS" node="6j" resolve="Logical_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4Y" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzRd" resolve="OutputField_DataFlow" />
        <node concept="385nmt" id="5t" role="385vvn">
          <property role="385vuF" value="OutputField_DataFlow" />
          <node concept="3u3nmq" id="5v" role="385v07">
            <property role="3u3nmv" value="3521948432330800589" />
          </node>
        </node>
        <node concept="39e2AT" id="5u" role="39e2AY">
          <ref role="39e2AS" node="6A" resolve="OutputField_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="4Z" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzRm" resolve="OutputTable_DataFlow" />
        <node concept="385nmt" id="5w" role="385vvn">
          <property role="385vuF" value="OutputTable_DataFlow" />
          <node concept="3u3nmq" id="5y" role="385v07">
            <property role="3u3nmv" value="3521948432330800598" />
          </node>
        </node>
        <node concept="39e2AT" id="5x" role="39e2AY">
          <ref role="39e2AS" node="76" resolve="OutputTable_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="50" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzSQ" resolve="SelectorReference_DataFlow" />
        <node concept="385nmt" id="5z" role="385vvn">
          <property role="385vuF" value="SelectorReference_DataFlow" />
          <node concept="3u3nmq" id="5_" role="385v07">
            <property role="3u3nmv" value="3521948432330800694" />
          </node>
        </node>
        <node concept="39e2AT" id="5$" role="39e2AY">
          <ref role="39e2AS" node="7s" resolve="SelectorReference_DataFlow" />
        </node>
      </node>
      <node concept="39e2AG" id="51" role="39e3Y0">
        <ref role="39e2AK" to="5sn0:33wun1EkzQU" resolve="Selector_DataFlow" />
        <node concept="385nmt" id="5A" role="385vvn">
          <property role="385vuF" value="Selector_DataFlow" />
          <node concept="3u3nmq" id="5C" role="385v07">
            <property role="3u3nmv" value="3521948432330800570" />
          </node>
        </node>
        <node concept="39e2AT" id="5B" role="39e2AY">
          <ref role="39e2AS" node="7L" resolve="Selector_DataFlow" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4O" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="5D" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="5E" role="39e2AY">
          <ref role="39e2AS" node="2v" resolve="DataFlowAspectDescriptorImpl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5F">
    <property role="TrG5h" value="InputField_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800565" />
    <node concept="3Tm1VV" id="5G" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800565" />
    </node>
    <node concept="3uibUv" id="5H" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800565" />
    </node>
    <node concept="3clFb_" id="5I" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800565" />
      <node concept="3Tm1VV" id="5J" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800565" />
      </node>
      <node concept="3cqZAl" id="5K" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800565" />
      </node>
      <node concept="37vLTG" id="5L" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800565" />
        <node concept="3uibUv" id="5N" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800565" />
        </node>
      </node>
      <node concept="3clFbS" id="5M" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800567" />
        <node concept="3clFbF" id="5O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800568" />
          <node concept="2OqwBi" id="5P" role="3clFbG">
            <node concept="liA8E" id="5Q" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <node concept="1DoJHT" id="5S" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800569" />
                <node concept="3uibUv" id="5U" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="5V" role="1EMhIo">
                  <ref role="3cqZAo" node="5L" resolve="_context" />
                </node>
              </node>
              <node concept="Xl_RD" id="5T" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800568" />
              </node>
            </node>
            <node concept="2OqwBi" id="5R" role="2Oq$k0">
              <node concept="liA8E" id="5W" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="5X" role="2Oq$k0">
                <ref role="3cqZAo" node="5L" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5Y">
    <property role="TrG5h" value="LogicalReference_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800687" />
    <node concept="3Tm1VV" id="5Z" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800687" />
    </node>
    <node concept="3uibUv" id="60" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800687" />
    </node>
    <node concept="3clFb_" id="61" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800687" />
      <node concept="3Tm1VV" id="62" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800687" />
      </node>
      <node concept="3cqZAl" id="63" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800687" />
      </node>
      <node concept="37vLTG" id="64" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800687" />
        <node concept="3uibUv" id="66" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800687" />
        </node>
      </node>
      <node concept="3clFbS" id="65" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800689" />
        <node concept="3clFbF" id="67" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800690" />
          <node concept="2OqwBi" id="68" role="3clFbG">
            <node concept="2OqwBi" id="69" role="2Oq$k0">
              <node concept="37vLTw" id="6b" role="2Oq$k0">
                <ref role="3cqZAo" node="64" resolve="_context" />
              </node>
              <node concept="liA8E" id="6c" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="6a" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <node concept="2OqwBi" id="6d" role="37wK5m">
                <uo k="s:originTrace" v="n:3521948432330800691" />
                <node concept="1DoJHT" id="6f" role="2Oq$k0">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:3521948432330800692" />
                  <node concept="3uibUv" id="6h" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="6i" role="1EMhIo">
                    <ref role="3cqZAo" node="64" resolve="_context" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6g" role="2OqNvi">
                  <ref role="3Tt5mk" to="64eg:49kBZ1LqmAD" resolve="target" />
                  <uo k="s:originTrace" v="n:3521948432330800693" />
                </node>
              </node>
              <node concept="Xl_RD" id="6e" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800690" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6j">
    <property role="TrG5h" value="Logical_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800575" />
    <node concept="3Tm1VV" id="6k" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800575" />
    </node>
    <node concept="3uibUv" id="6l" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800575" />
    </node>
    <node concept="3clFb_" id="6m" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800575" />
      <node concept="3Tm1VV" id="6n" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800575" />
      </node>
      <node concept="3cqZAl" id="6o" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800575" />
      </node>
      <node concept="37vLTG" id="6p" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800575" />
        <node concept="3uibUv" id="6r" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800575" />
        </node>
      </node>
      <node concept="3clFbS" id="6q" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800577" />
        <node concept="3clFbF" id="6s" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800578" />
          <node concept="2OqwBi" id="6t" role="3clFbG">
            <node concept="liA8E" id="6u" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <node concept="1DoJHT" id="6w" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800579" />
                <node concept="3uibUv" id="6y" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="6z" role="1EMhIo">
                  <ref role="3cqZAo" node="6p" resolve="_context" />
                </node>
              </node>
              <node concept="Xl_RD" id="6x" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800578" />
              </node>
            </node>
            <node concept="2OqwBi" id="6v" role="2Oq$k0">
              <node concept="liA8E" id="6$" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="6_" role="2Oq$k0">
                <ref role="3cqZAo" node="6p" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6A">
    <property role="TrG5h" value="OutputField_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800589" />
    <node concept="3Tm1VV" id="6B" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800589" />
    </node>
    <node concept="3uibUv" id="6C" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800589" />
    </node>
    <node concept="3clFb_" id="6D" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800589" />
      <node concept="3Tm1VV" id="6E" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800589" />
      </node>
      <node concept="3cqZAl" id="6F" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800589" />
      </node>
      <node concept="37vLTG" id="6G" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800589" />
        <node concept="3uibUv" id="6I" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800589" />
        </node>
      </node>
      <node concept="3clFbS" id="6H" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800591" />
        <node concept="3clFbF" id="6J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800592" />
          <node concept="2OqwBi" id="6L" role="3clFbG">
            <node concept="2OqwBi" id="6M" role="2Oq$k0">
              <node concept="37vLTw" id="6O" role="2Oq$k0">
                <ref role="3cqZAo" node="6G" resolve="_context" />
              </node>
              <node concept="liA8E" id="6P" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="6N" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
              <node concept="10QFUN" id="6Q" role="37wK5m">
                <node concept="2OqwBi" id="6R" role="10QFUP">
                  <uo k="s:originTrace" v="n:3521948432330800593" />
                  <node concept="1DoJHT" id="6T" role="2Oq$k0">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:3521948432330800594" />
                    <node concept="3uibUv" id="6V" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="6W" role="1EMhIo">
                      <ref role="3cqZAo" node="6G" resolve="_context" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6U" role="2OqNvi">
                    <ref role="3Tt5mk" to="64eg:i470dVI" resolve="expression" />
                    <uo k="s:originTrace" v="n:3521948432330800595" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="6S" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800596" />
          <node concept="2OqwBi" id="6X" role="3clFbG">
            <node concept="liA8E" id="6Y" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <node concept="1DoJHT" id="70" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800597" />
                <node concept="3uibUv" id="72" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="73" role="1EMhIo">
                  <ref role="3cqZAo" node="6G" resolve="_context" />
                </node>
              </node>
              <node concept="Xl_RD" id="71" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800596" />
              </node>
            </node>
            <node concept="2OqwBi" id="6Z" role="2Oq$k0">
              <node concept="liA8E" id="74" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="75" role="2Oq$k0">
                <ref role="3cqZAo" node="6G" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="76">
    <property role="TrG5h" value="OutputTable_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800598" />
    <node concept="3Tm1VV" id="77" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800598" />
    </node>
    <node concept="3uibUv" id="78" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800598" />
    </node>
    <node concept="3clFb_" id="79" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800598" />
      <node concept="3Tm1VV" id="7a" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800598" />
      </node>
      <node concept="3cqZAl" id="7b" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800598" />
      </node>
      <node concept="37vLTG" id="7c" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800598" />
        <node concept="3uibUv" id="7e" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800598" />
        </node>
      </node>
      <node concept="3clFbS" id="7d" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800600" />
        <node concept="3clFbF" id="7f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800601" />
          <node concept="2OqwBi" id="7g" role="3clFbG">
            <node concept="2OqwBi" id="7h" role="2Oq$k0">
              <node concept="37vLTw" id="7j" role="2Oq$k0">
                <ref role="3cqZAo" node="7c" resolve="_context" />
              </node>
              <node concept="liA8E" id="7k" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="7i" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
              <node concept="10QFUN" id="7l" role="37wK5m">
                <node concept="2OqwBi" id="7m" role="10QFUP">
                  <uo k="s:originTrace" v="n:3521948432330800602" />
                  <node concept="1DoJHT" id="7o" role="2Oq$k0">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:3521948432330800603" />
                    <node concept="3uibUv" id="7q" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="7r" role="1EMhIo">
                      <ref role="3cqZAo" node="7c" resolve="_context" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7p" role="2OqNvi">
                    <ref role="3Tt5mk" to="64eg:5c4rtvXSJiH" resolve="dataSource" />
                    <uo k="s:originTrace" v="n:3521948432330800604" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="7n" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7s">
    <property role="TrG5h" value="SelectorReference_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800694" />
    <node concept="3Tm1VV" id="7t" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800694" />
    </node>
    <node concept="3uibUv" id="7u" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800694" />
    </node>
    <node concept="3clFb_" id="7v" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800694" />
      <node concept="3Tm1VV" id="7w" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800694" />
      </node>
      <node concept="3cqZAl" id="7x" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800694" />
      </node>
      <node concept="37vLTG" id="7y" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800694" />
        <node concept="3uibUv" id="7$" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800694" />
        </node>
      </node>
      <node concept="3clFbS" id="7z" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800696" />
        <node concept="3clFbF" id="7_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800697" />
          <node concept="2OqwBi" id="7A" role="3clFbG">
            <node concept="2OqwBi" id="7B" role="2Oq$k0">
              <node concept="37vLTw" id="7D" role="2Oq$k0">
                <ref role="3cqZAo" node="7y" resolve="_context" />
              </node>
              <node concept="liA8E" id="7E" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="7C" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <node concept="2OqwBi" id="7F" role="37wK5m">
                <uo k="s:originTrace" v="n:3521948432330800698" />
                <node concept="1DoJHT" id="7H" role="2Oq$k0">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:3521948432330800699" />
                  <node concept="3uibUv" id="7J" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="7K" role="1EMhIo">
                    <ref role="3cqZAo" node="7y" resolve="_context" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7I" role="2OqNvi">
                  <ref role="3Tt5mk" to="64eg:49kBZ1LqWsp" resolve="target" />
                  <uo k="s:originTrace" v="n:3521948432330800700" />
                </node>
              </node>
              <node concept="Xl_RD" id="7G" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800697" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7L">
    <property role="TrG5h" value="Selector_DataFlow" />
    <uo k="s:originTrace" v="n:3521948432330800570" />
    <node concept="3Tm1VV" id="7M" role="1B3o_S">
      <uo k="s:originTrace" v="n:3521948432330800570" />
    </node>
    <node concept="3uibUv" id="7N" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:3521948432330800570" />
    </node>
    <node concept="3clFb_" id="7O" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3521948432330800570" />
      <node concept="3Tm1VV" id="7P" role="1B3o_S">
        <uo k="s:originTrace" v="n:3521948432330800570" />
      </node>
      <node concept="3cqZAl" id="7Q" role="3clF45">
        <uo k="s:originTrace" v="n:3521948432330800570" />
      </node>
      <node concept="37vLTG" id="7R" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3521948432330800570" />
        <node concept="3uibUv" id="7T" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:3521948432330800570" />
        </node>
      </node>
      <node concept="3clFbS" id="7S" role="3clF47">
        <uo k="s:originTrace" v="n:3521948432330800572" />
        <node concept="3clFbF" id="7U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3521948432330800573" />
          <node concept="2OqwBi" id="7V" role="3clFbG">
            <node concept="liA8E" id="7W" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <node concept="1DoJHT" id="7Y" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:3521948432330800574" />
                <node concept="3uibUv" id="80" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="81" role="1EMhIo">
                  <ref role="3cqZAo" node="7R" resolve="_context" />
                </node>
              </node>
              <node concept="Xl_RD" id="7Z" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800573" />
              </node>
            </node>
            <node concept="2OqwBi" id="7X" role="2Oq$k0">
              <node concept="liA8E" id="82" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="83" role="2Oq$k0">
                <ref role="3cqZAo" node="7R" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

