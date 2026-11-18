<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fcc0e22(checkpoints/jetbrains.mps.samples.fincalculator.dataFlow@beforebaselang)">
  <persistence version="9" />
  <attribute name="checkpoint" value="BeforeBaseLang" />
  <attribute name="user-objects" value="true" />
  <attribute name="prev-generation-plan" value="AspectCPS" />
  <attribute name="prev-checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <languages />
  <imports>
    <import index="5sn0" ref="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)" />
    <import index="ksn4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="8qxk" ref="r:3dddb2c7-b2ba-4381-896a-2e702ca1fb6e(jetbrains.mps.lang.dataFlow.framework)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="aplb" ref="2af156ab-65c1-4a62-bd0d-ea734f71eab6/r:a1d8bbbf-d4f0-431f-8dcd-a6badc777315(jetbrains.mps.dataFlow.runtime/jetbrains.mps.lang.dataFlow)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1238251434034" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToConstantExpression" flags="ng" index="1dyn4i">
        <property id="1238251449050" name="fieldName" index="1dyqJU" />
        <property id="8835849473318867199" name="makeUnique" index="1zomUR" />
        <child id="1238251454130" name="expression" index="1dyrYi" />
      </concept>
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
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
    <uo k="s:originTrace" v="n:0" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:1" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:2" />
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:3" />
      <node concept="3Tm1VV" id="4" role="1B3o_S">
        <uo k="s:originTrace" v="n:4" />
      </node>
      <node concept="3cqZAl" id="5" role="3clF45">
        <uo k="s:originTrace" v="n:5" />
      </node>
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6" />
        <node concept="3uibUv" id="8" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:8" />
        </node>
      </node>
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:7" />
        <node concept="3clFbF" id="9" role="3cqZAp">
          <uo k="s:originTrace" v="n:9" />
          <node concept="2OqwBi" id="a" role="3clFbG">
            <uo k="s:originTrace" v="n:10" />
            <node concept="2OqwBi" id="b" role="2Oq$k0">
              <uo k="s:originTrace" v="n:11" />
              <node concept="37vLTw" id="d" role="2Oq$k0">
                <ref role="3cqZAo" node="6" resolve="_context" />
                <uo k="s:originTrace" v="n:13" />
              </node>
              <node concept="liA8E" id="e" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:14" />
              </node>
            </node>
            <node concept="liA8E" id="c" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <uo k="s:originTrace" v="n:12" />
              <node concept="2YIFZM" id="f" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                <uo k="s:originTrace" v="n:18" />
                <node concept="1DoJHT" id="h" role="37wK5m">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:17" />
                  <node concept="3uibUv" id="j" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    <uo k="s:originTrace" v="n:19" />
                  </node>
                  <node concept="37vLTw" id="k" role="1EMhIo">
                    <ref role="3cqZAo" node="6" resolve="_context" />
                    <uo k="s:originTrace" v="n:20" />
                  </node>
                </node>
                <node concept="1BaE9c" id="i" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="target$WJl$" />
                  <node concept="2YIFZM" id="l" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <node concept="11gdke" id="m" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="n" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="o" role="37wK5m">
                      <property role="11gdj1" value="20e1c9c3ba7966a7L" />
                    </node>
                    <node concept="11gdke" id="p" role="37wK5m">
                      <property role="11gdj1" value="20e1c9c3ba7966a8L" />
                    </node>
                    <node concept="Xl_RD" id="q" role="37wK5m">
                      <property role="Xl_RC" value="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="g" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800704" />
                <uo k="s:originTrace" v="n:16" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="r">
    <property role="TrG5h" value="CalculationValueReference_DataFlow" />
    <uo k="s:originTrace" v="n:21" />
    <node concept="3Tm1VV" id="s" role="1B3o_S">
      <uo k="s:originTrace" v="n:22" />
    </node>
    <node concept="3uibUv" id="t" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:23" />
    </node>
    <node concept="3clFb_" id="u" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:24" />
      <node concept="3Tm1VV" id="v" role="1B3o_S">
        <uo k="s:originTrace" v="n:25" />
      </node>
      <node concept="3cqZAl" id="w" role="3clF45">
        <uo k="s:originTrace" v="n:26" />
      </node>
      <node concept="37vLTG" id="x" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:27" />
        <node concept="3uibUv" id="z" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:29" />
        </node>
      </node>
      <node concept="3clFbS" id="y" role="3clF47">
        <uo k="s:originTrace" v="n:28" />
        <node concept="3clFbF" id="$" role="3cqZAp">
          <uo k="s:originTrace" v="n:30" />
          <node concept="2OqwBi" id="_" role="3clFbG">
            <uo k="s:originTrace" v="n:31" />
            <node concept="2OqwBi" id="A" role="2Oq$k0">
              <uo k="s:originTrace" v="n:32" />
              <node concept="37vLTw" id="C" role="2Oq$k0">
                <ref role="3cqZAo" node="x" resolve="_context" />
                <uo k="s:originTrace" v="n:34" />
              </node>
              <node concept="liA8E" id="D" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:35" />
              </node>
            </node>
            <node concept="liA8E" id="B" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <uo k="s:originTrace" v="n:33" />
              <node concept="2YIFZM" id="E" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                <uo k="s:originTrace" v="n:39" />
                <node concept="1DoJHT" id="G" role="37wK5m">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:38" />
                  <node concept="3uibUv" id="I" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    <uo k="s:originTrace" v="n:40" />
                  </node>
                  <node concept="37vLTw" id="J" role="1EMhIo">
                    <ref role="3cqZAo" node="x" resolve="_context" />
                    <uo k="s:originTrace" v="n:41" />
                  </node>
                </node>
                <node concept="1BaE9c" id="H" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="target$fs2f" />
                  <node concept="2YIFZM" id="K" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <node concept="11gdke" id="L" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="M" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="N" role="37wK5m">
                      <property role="11gdj1" value="53046dd7fdd834adL" />
                    </node>
                    <node concept="11gdke" id="O" role="37wK5m">
                      <property role="11gdj1" value="53046dd7fdd834aeL" />
                    </node>
                    <node concept="Xl_RD" id="P" role="37wK5m">
                      <property role="Xl_RC" value="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="F" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800711" />
                <uo k="s:originTrace" v="n:37" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Q">
    <property role="TrG5h" value="CalculationValue_DataFlow" />
    <uo k="s:originTrace" v="n:42" />
    <node concept="3Tm1VV" id="R" role="1B3o_S">
      <uo k="s:originTrace" v="n:43" />
    </node>
    <node concept="3uibUv" id="S" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:44" />
    </node>
    <node concept="3clFb_" id="T" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:45" />
      <node concept="3Tm1VV" id="U" role="1B3o_S">
        <uo k="s:originTrace" v="n:46" />
      </node>
      <node concept="3cqZAl" id="V" role="3clF45">
        <uo k="s:originTrace" v="n:47" />
      </node>
      <node concept="37vLTG" id="W" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:48" />
        <node concept="3uibUv" id="Y" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:50" />
        </node>
      </node>
      <node concept="3clFbS" id="X" role="3clF47">
        <uo k="s:originTrace" v="n:49" />
        <node concept="3clFbF" id="Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:51" />
          <node concept="2OqwBi" id="11" role="3clFbG">
            <uo k="s:originTrace" v="n:53" />
            <node concept="2OqwBi" id="12" role="2Oq$k0">
              <uo k="s:originTrace" v="n:54" />
              <node concept="37vLTw" id="14" role="2Oq$k0">
                <ref role="3cqZAo" node="W" resolve="_context" />
                <uo k="s:originTrace" v="n:56" />
              </node>
              <node concept="liA8E" id="15" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:57" />
              </node>
            </node>
            <node concept="liA8E" id="13" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
              <uo k="s:originTrace" v="n:55" />
              <node concept="10QFUN" id="16" role="37wK5m">
                <uo k="s:originTrace" v="n:58" />
                <node concept="2YIFZM" id="17" role="10QFUP">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                  <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                  <uo k="s:originTrace" v="n:62" />
                  <node concept="1DoJHT" id="19" role="37wK5m">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:61" />
                    <node concept="3uibUv" id="1b" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      <uo k="s:originTrace" v="n:63" />
                    </node>
                    <node concept="37vLTw" id="1c" role="1EMhIo">
                      <ref role="3cqZAo" node="W" resolve="_context" />
                      <uo k="s:originTrace" v="n:64" />
                    </node>
                  </node>
                  <node concept="1BaE9c" id="1a" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="initializer$EDCJ" />
                    <node concept="2YIFZM" id="1d" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getContainmentLink(long,long,long,long,java.lang.String)" resolve="getContainmentLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <node concept="11gdke" id="1e" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      </node>
                      <node concept="11gdke" id="1f" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      </node>
                      <node concept="11gdke" id="1g" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fdd5e3b3L" />
                      </node>
                      <node concept="11gdke" id="1h" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fdd5e3b4L" />
                      </node>
                      <node concept="Xl_RD" id="1i" role="37wK5m">
                        <property role="Xl_RC" value="initializer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="18" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  <uo k="s:originTrace" v="n:60" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:52" />
          <node concept="2OqwBi" id="1j" role="3clFbG">
            <uo k="s:originTrace" v="n:65" />
            <node concept="liA8E" id="1k" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <uo k="s:originTrace" v="n:66" />
              <node concept="1DoJHT" id="1m" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:68" />
                <node concept="3uibUv" id="1o" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:70" />
                </node>
                <node concept="37vLTw" id="1p" role="1EMhIo">
                  <ref role="3cqZAo" node="W" resolve="_context" />
                  <uo k="s:originTrace" v="n:71" />
                </node>
              </node>
              <node concept="Xl_RD" id="1n" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800587" />
                <uo k="s:originTrace" v="n:69" />
              </node>
            </node>
            <node concept="2OqwBi" id="1l" role="2Oq$k0">
              <uo k="s:originTrace" v="n:67" />
              <node concept="liA8E" id="1q" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:72" />
              </node>
              <node concept="37vLTw" id="1r" role="2Oq$k0">
                <ref role="3cqZAo" node="W" resolve="_context" />
                <uo k="s:originTrace" v="n:73" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1s">
    <property role="TrG5h" value="Calculation_DataFlow" />
    <uo k="s:originTrace" v="n:74" />
    <node concept="3Tm1VV" id="1t" role="1B3o_S">
      <uo k="s:originTrace" v="n:75" />
    </node>
    <node concept="3uibUv" id="1u" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:76" />
    </node>
    <node concept="3clFb_" id="1v" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:77" />
      <node concept="3Tm1VV" id="1w" role="1B3o_S">
        <uo k="s:originTrace" v="n:78" />
      </node>
      <node concept="3cqZAl" id="1x" role="3clF45">
        <uo k="s:originTrace" v="n:79" />
      </node>
      <node concept="37vLTG" id="1y" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:80" />
        <node concept="3uibUv" id="1$" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:82" />
        </node>
      </node>
      <node concept="3clFbS" id="1z" role="3clF47">
        <uo k="s:originTrace" v="n:81" />
        <node concept="2Gpval" id="1_" role="3cqZAp">
          <uo k="s:originTrace" v="n:83" />
          <node concept="2GrKxI" id="1B" role="2Gsz3X">
            <property role="TrG5h" value="reference" />
            <property role="2Lvdk3" value="reference0" />
            <uo k="s:originTrace" v="n:85" />
          </node>
          <node concept="2YIFZM" id="1C" role="2GsD0m">
            <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
            <ref role="37wK5l" to="i8bi:5IkW5anFeeo" resolve="getNodeDescendantsWhereConceptInList" />
            <uo k="s:originTrace" v="n:86" />
            <node concept="2YIFZM" id="1E" role="37wK5m">
              <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
              <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
              <uo k="s:originTrace" v="n:91" />
              <node concept="1DoJHT" id="1I" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:90" />
                <node concept="3uibUv" id="1K" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:92" />
                </node>
                <node concept="37vLTw" id="1L" role="1EMhIo">
                  <ref role="3cqZAo" node="1y" resolve="_context" />
                  <uo k="s:originTrace" v="n:93" />
                </node>
              </node>
              <node concept="1BaE9c" id="1J" role="37wK5m">
                <property role="1ouuDV" value="LINKS" />
                <property role="1BaxDp" value="body$xrvH" />
                <node concept="2YIFZM" id="1M" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getContainmentLink(long,long,long,long,java.lang.String)" resolve="getContainmentLink" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <node concept="11gdke" id="1N" role="37wK5m">
                    <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                  </node>
                  <node concept="11gdke" id="1O" role="37wK5m">
                    <property role="11gdj1" value="83bed2ea6f3627c2L" />
                  </node>
                  <node concept="11gdke" id="1P" role="37wK5m">
                    <property role="11gdj1" value="20e1c9c3ba743f75L" />
                  </node>
                  <node concept="11gdke" id="1Q" role="37wK5m">
                    <property role="11gdj1" value="20e1c9c3ba75c867L" />
                  </node>
                  <node concept="Xl_RD" id="1R" role="37wK5m">
                    <property role="Xl_RC" value="body" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1F" role="37wK5m">
              <uo k="s:originTrace" v="n:89" />
              <node concept="3g6Rrh" id="1S" role="2ShVmc">
                <uo k="s:originTrace" v="n:89" />
                <node concept="3uibUv" id="1T" role="3g7fb8">
                  <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                  <uo k="s:originTrace" v="n:89" />
                </node>
                <node concept="1BaE9c" id="1U" role="3g7hyw">
                  <property role="1ouuDV" value="CONCEPTS" />
                  <property role="1BaxDp" value="FieldReference$gP" />
                  <uo k="s:originTrace" v="n:89" />
                  <node concept="2YIFZM" id="1Z" role="1Bazha">
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
                    <uo k="s:originTrace" v="n:89" />
                    <node concept="11gdke" id="20" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="21" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="22" role="37wK5m">
                      <property role="11gdj1" value="12107017046L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="Xl_RD" id="23" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator.structure.FieldReference" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                  </node>
                </node>
                <node concept="1BaE9c" id="1V" role="3g7hyw">
                  <property role="1ouuDV" value="CONCEPTS" />
                  <property role="1BaxDp" value="LogicalReference$$S" />
                  <uo k="s:originTrace" v="n:89" />
                  <node concept="2YIFZM" id="24" role="1Bazha">
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
                    <uo k="s:originTrace" v="n:89" />
                    <node concept="11gdke" id="25" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="26" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="27" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716969a8L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="Xl_RD" id="28" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator.structure.LogicalReference" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                  </node>
                </node>
                <node concept="1BaE9c" id="1W" role="3g7hyw">
                  <property role="1ouuDV" value="CONCEPTS" />
                  <property role="1BaxDp" value="SelectorReference$6m" />
                  <uo k="s:originTrace" v="n:89" />
                  <node concept="2YIFZM" id="29" role="1Bazha">
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
                    <uo k="s:originTrace" v="n:89" />
                    <node concept="11gdke" id="2a" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="2b" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="2c" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716bc718L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="Xl_RD" id="2d" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator.structure.SelectorReference" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                  </node>
                </node>
                <node concept="1BaE9c" id="1X" role="3g7hyw">
                  <property role="1ouuDV" value="CONCEPTS" />
                  <property role="1BaxDp" value="CalculationReference$OC" />
                  <uo k="s:originTrace" v="n:89" />
                  <node concept="2YIFZM" id="2e" role="1Bazha">
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
                    <uo k="s:originTrace" v="n:89" />
                    <node concept="11gdke" id="2f" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="2g" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="2h" role="37wK5m">
                      <property role="11gdj1" value="20e1c9c3ba7966a7L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="Xl_RD" id="2i" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator.structure.CalculationReference" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                  </node>
                </node>
                <node concept="1BaE9c" id="1Y" role="3g7hyw">
                  <property role="1ouuDV" value="CONCEPTS" />
                  <property role="1BaxDp" value="CalculationValueReference$nS" />
                  <uo k="s:originTrace" v="n:89" />
                  <node concept="2YIFZM" id="2j" role="1Bazha">
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
                    <uo k="s:originTrace" v="n:89" />
                    <node concept="11gdke" id="2k" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="2l" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="11gdke" id="2m" role="37wK5m">
                      <property role="11gdj1" value="53046dd7fdd834adL" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                    <node concept="Xl_RD" id="2n" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.samples.fincalculator.structure.CalculationValueReference" />
                      <uo k="s:originTrace" v="n:89" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbT" id="1G" role="37wK5m">
              <uo k="s:originTrace" v="n:89" />
            </node>
            <node concept="2ShNRf" id="1H" role="37wK5m">
              <uo k="s:originTrace" v="n:89" />
              <node concept="3g6Rrh" id="2o" role="2ShVmc">
                <uo k="s:originTrace" v="n:89" />
                <node concept="3uibUv" id="2p" role="3g7fb8">
                  <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                  <uo k="s:originTrace" v="n:89" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1D" role="2LFqv$">
            <uo k="s:originTrace" v="n:87" />
            <node concept="3clFbF" id="2q" role="3cqZAp">
              <uo k="s:originTrace" v="n:100" />
              <node concept="2OqwBi" id="2r" role="3clFbG">
                <uo k="s:originTrace" v="n:101" />
                <node concept="2OqwBi" id="2s" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:102" />
                  <node concept="37vLTw" id="2u" role="2Oq$k0">
                    <ref role="3cqZAo" node="1y" resolve="_context" />
                    <uo k="s:originTrace" v="n:104" />
                  </node>
                  <node concept="liA8E" id="2v" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                    <uo k="s:originTrace" v="n:105" />
                  </node>
                </node>
                <node concept="liA8E" id="2t" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
                  <uo k="s:originTrace" v="n:103" />
                  <node concept="10QFUN" id="2w" role="37wK5m">
                    <uo k="s:originTrace" v="n:106" />
                    <node concept="2GrUjf" id="2x" role="10QFUP">
                      <ref role="2Gs0qQ" node="1B" resolve="reference" />
                      <uo k="s:originTrace" v="n:107" />
                    </node>
                    <node concept="3uibUv" id="2y" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      <uo k="s:originTrace" v="n:108" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1A" role="3cqZAp">
          <uo k="s:originTrace" v="n:84" />
          <node concept="2OqwBi" id="2z" role="3clFbG">
            <uo k="s:originTrace" v="n:109" />
            <node concept="liA8E" id="2$" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <uo k="s:originTrace" v="n:110" />
              <node concept="1DoJHT" id="2A" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:112" />
                <node concept="3uibUv" id="2C" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:114" />
                </node>
                <node concept="37vLTw" id="2D" role="1EMhIo">
                  <ref role="3cqZAo" node="1y" resolve="_context" />
                  <uo k="s:originTrace" v="n:115" />
                </node>
              </node>
              <node concept="Xl_RD" id="2B" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800678" />
                <uo k="s:originTrace" v="n:113" />
              </node>
            </node>
            <node concept="2OqwBi" id="2_" role="2Oq$k0">
              <uo k="s:originTrace" v="n:111" />
              <node concept="liA8E" id="2E" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:116" />
              </node>
              <node concept="37vLTw" id="2F" role="2Oq$k0">
                <ref role="3cqZAo" node="1y" resolve="_context" />
                <uo k="s:originTrace" v="n:117" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2G">
    <property role="TrG5h" value="Calculator_DataFlow" />
    <uo k="s:originTrace" v="n:118" />
    <node concept="3Tm1VV" id="2H" role="1B3o_S">
      <uo k="s:originTrace" v="n:119" />
    </node>
    <node concept="3uibUv" id="2I" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:120" />
    </node>
    <node concept="3clFb_" id="2J" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:121" />
      <node concept="3Tm1VV" id="2K" role="1B3o_S">
        <uo k="s:originTrace" v="n:122" />
      </node>
      <node concept="3cqZAl" id="2L" role="3clF45">
        <uo k="s:originTrace" v="n:123" />
      </node>
      <node concept="37vLTG" id="2M" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:124" />
        <node concept="3uibUv" id="2O" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:126" />
        </node>
      </node>
      <node concept="3clFbS" id="2N" role="3clF47">
        <uo k="s:originTrace" v="n:125" />
        <node concept="2Gpval" id="2P" role="3cqZAp">
          <uo k="s:originTrace" v="n:127" />
          <node concept="2GrKxI" id="2R" role="2Gsz3X">
            <property role="TrG5h" value="command" />
            <property role="2Lvdk3" value="command" />
            <uo k="s:originTrace" v="n:129" />
          </node>
          <node concept="2YIFZM" id="2S" role="2GsD0m">
            <ref role="37wK5l" to="i8bi:3YzxW_BBSi6" resolve="getChildren" />
            <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
            <uo k="s:originTrace" v="n:133" />
            <node concept="1DoJHT" id="2U" role="37wK5m">
              <property role="1Dpdpm" value="getNode" />
              <uo k="s:originTrace" v="n:132" />
              <node concept="3uibUv" id="2W" role="1Ez5kq">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                <uo k="s:originTrace" v="n:134" />
              </node>
              <node concept="37vLTw" id="2X" role="1EMhIo">
                <ref role="3cqZAo" node="2M" resolve="_context" />
                <uo k="s:originTrace" v="n:135" />
              </node>
            </node>
            <node concept="1BaE9c" id="2V" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="commands$LtFR" />
              <node concept="2YIFZM" id="2Y" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getContainmentLink(long,long,long,long,java.lang.String)" resolve="getContainmentLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <node concept="11gdke" id="2Z" role="37wK5m">
                  <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                </node>
                <node concept="11gdke" id="30" role="37wK5m">
                  <property role="11gdj1" value="83bed2ea6f3627c2L" />
                </node>
                <node concept="11gdke" id="31" role="37wK5m">
                  <property role="11gdj1" value="12106f96410L" />
                </node>
                <node concept="11gdke" id="32" role="37wK5m">
                  <property role="11gdj1" value="1d111c815ef22eb0L" />
                </node>
                <node concept="Xl_RD" id="33" role="37wK5m">
                  <property role="Xl_RC" value="commands" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2T" role="2LFqv$">
            <uo k="s:originTrace" v="n:131" />
            <node concept="3clFbF" id="34" role="3cqZAp">
              <uo k="s:originTrace" v="n:136" />
              <node concept="2OqwBi" id="35" role="3clFbG">
                <uo k="s:originTrace" v="n:137" />
                <node concept="2OqwBi" id="36" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:138" />
                  <node concept="37vLTw" id="38" role="2Oq$k0">
                    <ref role="3cqZAo" node="2M" resolve="_context" />
                    <uo k="s:originTrace" v="n:140" />
                  </node>
                  <node concept="liA8E" id="39" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                    <uo k="s:originTrace" v="n:141" />
                  </node>
                </node>
                <node concept="liA8E" id="37" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
                  <uo k="s:originTrace" v="n:139" />
                  <node concept="10QFUN" id="3a" role="37wK5m">
                    <uo k="s:originTrace" v="n:142" />
                    <node concept="2GrUjf" id="3b" role="10QFUP">
                      <ref role="2Gs0qQ" node="2R" resolve="command" />
                      <uo k="s:originTrace" v="n:143" />
                    </node>
                    <node concept="3uibUv" id="3c" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      <uo k="s:originTrace" v="n:144" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:128" />
          <node concept="2OqwBi" id="3d" role="3clFbG">
            <uo k="s:originTrace" v="n:145" />
            <node concept="2OqwBi" id="3e" role="2Oq$k0">
              <uo k="s:originTrace" v="n:146" />
              <node concept="37vLTw" id="3g" role="2Oq$k0">
                <ref role="3cqZAo" node="2M" resolve="_context" />
                <uo k="s:originTrace" v="n:148" />
              </node>
              <node concept="liA8E" id="3h" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:149" />
              </node>
            </node>
            <node concept="liA8E" id="3f" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8uvo" resolve="emitIfJump" />
              <uo k="s:originTrace" v="n:147" />
              <node concept="2OqwBi" id="3i" role="37wK5m">
                <uo k="s:originTrace" v="n:150" />
                <node concept="2OqwBi" id="3k" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:152" />
                  <node concept="37vLTw" id="3m" role="2Oq$k0">
                    <ref role="3cqZAo" node="2M" resolve="_context" />
                    <uo k="s:originTrace" v="n:154" />
                  </node>
                  <node concept="liA8E" id="3n" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                    <uo k="s:originTrace" v="n:155" />
                  </node>
                </node>
                <node concept="liA8E" id="3l" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8unw" resolve="before" />
                  <uo k="s:originTrace" v="n:153" />
                  <node concept="1DoJHT" id="3o" role="37wK5m">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:156" />
                    <node concept="3uibUv" id="3p" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      <uo k="s:originTrace" v="n:157" />
                    </node>
                    <node concept="37vLTw" id="3q" role="1EMhIo">
                      <ref role="3cqZAo" node="2M" resolve="_context" />
                      <uo k="s:originTrace" v="n:158" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3j" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800562" />
                <uo k="s:originTrace" v="n:151" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3r">
    <property role="TrG5h" value="DataFlowAspectDescriptorImpl" />
    <uo k="s:originTrace" v="n:159" />
    <node concept="2tJIrI" id="3s" role="jymVt">
      <uo k="s:originTrace" v="n:160" />
    </node>
    <node concept="3clFb_" id="3t" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataFlowBuilders" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:161" />
      <node concept="3Tm1VV" id="3w" role="1B3o_S">
        <uo k="s:originTrace" v="n:164" />
      </node>
      <node concept="2AHcQZ" id="3x" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:165" />
      </node>
      <node concept="3uibUv" id="3y" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <uo k="s:originTrace" v="n:166" />
        <node concept="3uibUv" id="3A" role="11_B2D">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
          <uo k="s:originTrace" v="n:170" />
        </node>
      </node>
      <node concept="37vLTG" id="3z" role="3clF46">
        <property role="TrG5h" value="concept" />
        <uo k="s:originTrace" v="n:167" />
        <node concept="3uibUv" id="3B" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:171" />
        </node>
      </node>
      <node concept="3clFbS" id="3$" role="3clF47">
        <uo k="s:originTrace" v="n:168" />
        <node concept="3cpWs8" id="3C" role="3cqZAp">
          <uo k="s:originTrace" v="n:172" />
          <node concept="3cpWsn" id="3F" role="3cpWs9">
            <property role="TrG5h" value="cncpt" />
            <uo k="s:originTrace" v="n:172" />
            <node concept="3uibUv" id="3G" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="1eOMI4" id="3H" role="33vP2m">
              <uo k="s:originTrace" v="n:174" />
              <node concept="10QFUN" id="3I" role="1eOMHV">
                <uo k="s:originTrace" v="n:189" />
                <node concept="37vLTw" id="3J" role="10QFUP">
                  <ref role="3cqZAo" node="3z" resolve="concept" />
                  <uo k="s:originTrace" v="n:190" />
                </node>
                <node concept="3uibUv" id="3K" role="10QFUM">
                  <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                  <uo k="s:originTrace" v="n:191" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="3D" role="3cqZAp">
          <uo k="s:originTrace" v="n:172" />
          <node concept="3clFbS" id="3L" role="3Kb1Dw">
            <uo k="s:originTrace" v="n:172" />
          </node>
          <node concept="3KbdKl" id="3M" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="40" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="41" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="42" role="3cqZAp">
                <uo k="s:originTrace" v="n:194" />
                <node concept="2YIFZM" id="43" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:195" />
                  <node concept="2ShNRf" id="44" role="37wK5m">
                    <uo k="s:originTrace" v="n:196" />
                    <node concept="HV5vD" id="46" role="2ShVmc">
                      <ref role="HV5vE" node="1s" resolve="Calculation_DataFlow" />
                      <uo k="s:originTrace" v="n:198" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="45" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:197" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3N" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="47" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="48" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="49" role="3cqZAp">
                <uo k="s:originTrace" v="n:201" />
                <node concept="2YIFZM" id="4a" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:202" />
                  <node concept="2ShNRf" id="4b" role="37wK5m">
                    <uo k="s:originTrace" v="n:203" />
                    <node concept="HV5vD" id="4d" role="2ShVmc">
                      <ref role="HV5vE" node="0" resolve="CalculationReference_DataFlow" />
                      <uo k="s:originTrace" v="n:205" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4c" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:204" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3O" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4e" role="3Kbmr1">
              <property role="3cmrfH" value="2" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4f" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4g" role="3cqZAp">
                <uo k="s:originTrace" v="n:208" />
                <node concept="2YIFZM" id="4h" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:209" />
                  <node concept="2ShNRf" id="4i" role="37wK5m">
                    <uo k="s:originTrace" v="n:210" />
                    <node concept="HV5vD" id="4k" role="2ShVmc">
                      <ref role="HV5vE" node="Q" resolve="CalculationValue_DataFlow" />
                      <uo k="s:originTrace" v="n:212" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4j" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:211" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3P" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4l" role="3Kbmr1">
              <property role="3cmrfH" value="3" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4m" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4n" role="3cqZAp">
                <uo k="s:originTrace" v="n:215" />
                <node concept="2YIFZM" id="4o" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:216" />
                  <node concept="2ShNRf" id="4p" role="37wK5m">
                    <uo k="s:originTrace" v="n:217" />
                    <node concept="HV5vD" id="4r" role="2ShVmc">
                      <ref role="HV5vE" node="r" resolve="CalculationValueReference_DataFlow" />
                      <uo k="s:originTrace" v="n:219" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4q" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:218" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3Q" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4s" role="3Kbmr1">
              <property role="3cmrfH" value="4" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4t" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4u" role="3cqZAp">
                <uo k="s:originTrace" v="n:222" />
                <node concept="2YIFZM" id="4v" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:223" />
                  <node concept="2ShNRf" id="4w" role="37wK5m">
                    <uo k="s:originTrace" v="n:224" />
                    <node concept="HV5vD" id="4y" role="2ShVmc">
                      <ref role="HV5vE" node="2G" resolve="Calculator_DataFlow" />
                      <uo k="s:originTrace" v="n:226" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4x" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:225" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3R" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4z" role="3Kbmr1">
              <property role="3cmrfH" value="5" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4$" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4_" role="3cqZAp">
                <uo k="s:originTrace" v="n:229" />
                <node concept="2YIFZM" id="4A" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:230" />
                  <node concept="2ShNRf" id="4B" role="37wK5m">
                    <uo k="s:originTrace" v="n:231" />
                    <node concept="HV5vD" id="4D" role="2ShVmc">
                      <ref role="HV5vE" node="6q" resolve="FieldReference_DataFlow" />
                      <uo k="s:originTrace" v="n:233" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4C" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:232" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3S" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4E" role="3Kbmr1">
              <property role="3cmrfH" value="6" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4F" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4G" role="3cqZAp">
                <uo k="s:originTrace" v="n:236" />
                <node concept="2YIFZM" id="4H" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:237" />
                  <node concept="2ShNRf" id="4I" role="37wK5m">
                    <uo k="s:originTrace" v="n:238" />
                    <node concept="HV5vD" id="4K" role="2ShVmc">
                      <ref role="HV5vE" node="6Q" resolve="InputField_DataFlow" />
                      <uo k="s:originTrace" v="n:240" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4J" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:239" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3T" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4L" role="3Kbmr1">
              <property role="3cmrfH" value="7" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4M" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4N" role="3cqZAp">
                <uo k="s:originTrace" v="n:243" />
                <node concept="2YIFZM" id="4O" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:244" />
                  <node concept="2ShNRf" id="4P" role="37wK5m">
                    <uo k="s:originTrace" v="n:245" />
                    <node concept="HV5vD" id="4R" role="2ShVmc">
                      <ref role="HV5vE" node="7$" resolve="Logical_DataFlow" />
                      <uo k="s:originTrace" v="n:247" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4Q" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:246" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3U" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4S" role="3Kbmr1">
              <property role="3cmrfH" value="8" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="4T" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="4U" role="3cqZAp">
                <uo k="s:originTrace" v="n:250" />
                <node concept="2YIFZM" id="4V" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:251" />
                  <node concept="2ShNRf" id="4W" role="37wK5m">
                    <uo k="s:originTrace" v="n:252" />
                    <node concept="HV5vD" id="4Y" role="2ShVmc">
                      <ref role="HV5vE" node="79" resolve="LogicalReference_DataFlow" />
                      <uo k="s:originTrace" v="n:254" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4X" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:253" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3V" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="4Z" role="3Kbmr1">
              <property role="3cmrfH" value="9" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="50" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="51" role="3cqZAp">
                <uo k="s:originTrace" v="n:257" />
                <node concept="2YIFZM" id="52" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:258" />
                  <node concept="2ShNRf" id="53" role="37wK5m">
                    <uo k="s:originTrace" v="n:259" />
                    <node concept="HV5vD" id="55" role="2ShVmc">
                      <ref role="HV5vE" node="7R" resolve="OutputField_DataFlow" />
                      <uo k="s:originTrace" v="n:261" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="54" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:260" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3W" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="56" role="3Kbmr1">
              <property role="3cmrfH" value="10" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="57" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="58" role="3cqZAp">
                <uo k="s:originTrace" v="n:264" />
                <node concept="2YIFZM" id="59" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:265" />
                  <node concept="2ShNRf" id="5a" role="37wK5m">
                    <uo k="s:originTrace" v="n:266" />
                    <node concept="HV5vD" id="5c" role="2ShVmc">
                      <ref role="HV5vE" node="8t" resolve="OutputTable_DataFlow" />
                      <uo k="s:originTrace" v="n:268" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="5b" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:267" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3X" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="5d" role="3Kbmr1">
              <property role="3cmrfH" value="11" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="5e" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="5f" role="3cqZAp">
                <uo k="s:originTrace" v="n:271" />
                <node concept="2YIFZM" id="5g" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:272" />
                  <node concept="2ShNRf" id="5h" role="37wK5m">
                    <uo k="s:originTrace" v="n:273" />
                    <node concept="HV5vD" id="5j" role="2ShVmc">
                      <ref role="HV5vE" node="9k" resolve="Selector_DataFlow" />
                      <uo k="s:originTrace" v="n:275" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="5i" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:274" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3Y" role="3KbHQx">
            <uo k="s:originTrace" v="n:172" />
            <node concept="3cmrfG" id="5k" role="3Kbmr1">
              <property role="3cmrfH" value="12" />
              <uo k="s:originTrace" v="n:172" />
            </node>
            <node concept="3clFbS" id="5l" role="3Kbo56">
              <uo k="s:originTrace" v="n:172" />
              <node concept="3cpWs6" id="5m" role="3cqZAp">
                <uo k="s:originTrace" v="n:278" />
                <node concept="2YIFZM" id="5n" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <uo k="s:originTrace" v="n:279" />
                  <node concept="2ShNRf" id="5o" role="37wK5m">
                    <uo k="s:originTrace" v="n:280" />
                    <node concept="HV5vD" id="5q" role="2ShVmc">
                      <ref role="HV5vE" node="8T" resolve="SelectorReference_DataFlow" />
                      <uo k="s:originTrace" v="n:282" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="5p" role="3PaCim">
                    <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                    <uo k="s:originTrace" v="n:281" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3Z" role="3KbGdf">
            <uo k="s:originTrace" v="n:172" />
            <node concept="liA8E" id="5r" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <uo k="s:originTrace" v="n:172" />
              <node concept="37vLTw" id="5t" role="37wK5m">
                <ref role="3cqZAo" node="3F" resolve="cncpt" />
                <uo k="s:originTrace" v="n:172" />
              </node>
            </node>
            <node concept="1dyn4i" id="5s" role="2Oq$k0">
              <property role="1dyqJU" value="conceptIndex" />
              <property role="1zomUR" value="true" />
              <uo k="s:originTrace" v="n:172" />
              <node concept="2OqwBi" id="5u" role="1dyrYi">
                <uo k="s:originTrace" v="n:172" />
                <node concept="2OqwBi" id="5v" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:172" />
                  <node concept="2ShNRf" id="5x" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:172" />
                    <node concept="1pGfFk" id="5z" role="2ShVmc">
                      <ref role="37wK5l" to="ksn4:~ConceptSwitchIndexBuilder.&lt;init&gt;()" resolve="ConceptSwitchIndexBuilder" />
                      <uo k="s:originTrace" v="n:172" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5y" role="2OqNvi">
                    <ref role="37wK5l" to="ksn4:~ConceptSwitchIndexBuilder.put(jetbrains.mps.smodel.adapter.ids.SConceptId...)" resolve="put" />
                    <uo k="s:originTrace" v="n:172" />
                    <node concept="2YIFZM" id="5$" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="5L" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5M" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5N" role="37wK5m">
                        <property role="11gdj1" value="20e1c9c3ba743f75L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5_" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="5O" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5P" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5Q" role="37wK5m">
                        <property role="11gdj1" value="20e1c9c3ba7966a7L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5A" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="5R" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5S" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5T" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fdd5e3b3L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5B" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="5U" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5V" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5W" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fdd834adL" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5C" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="5X" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5Y" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="5Z" role="37wK5m">
                        <property role="11gdj1" value="12106f96410L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5D" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="60" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="61" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="62" role="37wK5m">
                        <property role="11gdj1" value="12107017046L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5E" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="63" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="64" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="65" role="37wK5m">
                        <property role="11gdj1" value="12106fa3191L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5F" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="66" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="67" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="68" role="37wK5m">
                        <property role="11gdj1" value="42549ff071696974L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5G" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="69" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6a" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6b" role="37wK5m">
                        <property role="11gdj1" value="42549ff0716969a8L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5H" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="6c" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6d" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6e" role="37wK5m">
                        <property role="11gdj1" value="12106fd5a98L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5I" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="6f" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6g" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6h" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fde2f4acL" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5J" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="6i" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6j" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6k" role="37wK5m">
                        <property role="11gdj1" value="42549ff0716bc68cL" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5K" role="37wK5m">
                      <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                      <ref role="37wK5l" to="e8bb:~MetaIdFactory.conceptId(long,long,long)" resolve="conceptId" />
                      <uo k="s:originTrace" v="n:172" />
                      <node concept="11gdke" id="6l" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6m" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                      <node concept="11gdke" id="6n" role="37wK5m">
                        <property role="11gdj1" value="42549ff0716bc718L" />
                        <uo k="s:originTrace" v="n:172" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5w" role="2OqNvi">
                  <ref role="37wK5l" to="ksn4:~ConceptSwitchIndexBuilder.seal()" resolve="seal" />
                  <uo k="s:originTrace" v="n:172" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3E" role="3cqZAp">
          <uo k="s:originTrace" v="n:173" />
          <node concept="2YIFZM" id="6o" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <uo k="s:originTrace" v="n:283" />
            <node concept="3uibUv" id="6p" role="3PaCim">
              <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
              <uo k="s:originTrace" v="n:284" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:169" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3u" role="1B3o_S">
      <uo k="s:originTrace" v="n:162" />
    </node>
    <node concept="3uibUv" id="3v" role="1zkMxy">
      <ref role="3uigEE" to="8qxk:3yaa4ph8ud_" resolve="DataFlowAspectDescriptorBase" />
      <uo k="s:originTrace" v="n:163" />
    </node>
  </node>
  <node concept="312cEu" id="6q">
    <property role="TrG5h" value="FieldReference_DataFlow" />
    <uo k="s:originTrace" v="n:285" />
    <node concept="3Tm1VV" id="6r" role="1B3o_S">
      <uo k="s:originTrace" v="n:286" />
    </node>
    <node concept="3uibUv" id="6s" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:287" />
    </node>
    <node concept="3clFb_" id="6t" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:288" />
      <node concept="3Tm1VV" id="6u" role="1B3o_S">
        <uo k="s:originTrace" v="n:289" />
      </node>
      <node concept="3cqZAl" id="6v" role="3clF45">
        <uo k="s:originTrace" v="n:290" />
      </node>
      <node concept="37vLTG" id="6w" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:291" />
        <node concept="3uibUv" id="6y" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:293" />
        </node>
      </node>
      <node concept="3clFbS" id="6x" role="3clF47">
        <uo k="s:originTrace" v="n:292" />
        <node concept="3clFbF" id="6z" role="3cqZAp">
          <uo k="s:originTrace" v="n:294" />
          <node concept="2OqwBi" id="6$" role="3clFbG">
            <uo k="s:originTrace" v="n:295" />
            <node concept="2OqwBi" id="6_" role="2Oq$k0">
              <uo k="s:originTrace" v="n:296" />
              <node concept="37vLTw" id="6B" role="2Oq$k0">
                <ref role="3cqZAo" node="6w" resolve="_context" />
                <uo k="s:originTrace" v="n:298" />
              </node>
              <node concept="liA8E" id="6C" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:299" />
              </node>
            </node>
            <node concept="liA8E" id="6A" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <uo k="s:originTrace" v="n:297" />
              <node concept="2YIFZM" id="6D" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                <uo k="s:originTrace" v="n:303" />
                <node concept="1DoJHT" id="6F" role="37wK5m">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:302" />
                  <node concept="3uibUv" id="6H" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    <uo k="s:originTrace" v="n:304" />
                  </node>
                  <node concept="37vLTw" id="6I" role="1EMhIo">
                    <ref role="3cqZAo" node="6w" resolve="_context" />
                    <uo k="s:originTrace" v="n:305" />
                  </node>
                </node>
                <node concept="1BaE9c" id="6G" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="field$pMHA" />
                  <node concept="2YIFZM" id="6J" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <node concept="11gdke" id="6K" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="6L" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="6M" role="37wK5m">
                      <property role="11gdj1" value="12107017046L" />
                    </node>
                    <node concept="11gdke" id="6N" role="37wK5m">
                      <property role="11gdj1" value="1210701c618L" />
                    </node>
                    <node concept="Xl_RD" id="6O" role="37wK5m">
                      <property role="Xl_RC" value="field" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="6E" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800683" />
                <uo k="s:originTrace" v="n:301" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="6P" />
  <node concept="312cEu" id="6Q">
    <property role="TrG5h" value="InputField_DataFlow" />
    <uo k="s:originTrace" v="n:363" />
    <node concept="3Tm1VV" id="6R" role="1B3o_S">
      <uo k="s:originTrace" v="n:364" />
    </node>
    <node concept="3uibUv" id="6S" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:365" />
    </node>
    <node concept="3clFb_" id="6T" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:366" />
      <node concept="3Tm1VV" id="6U" role="1B3o_S">
        <uo k="s:originTrace" v="n:367" />
      </node>
      <node concept="3cqZAl" id="6V" role="3clF45">
        <uo k="s:originTrace" v="n:368" />
      </node>
      <node concept="37vLTG" id="6W" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:369" />
        <node concept="3uibUv" id="6Y" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:371" />
        </node>
      </node>
      <node concept="3clFbS" id="6X" role="3clF47">
        <uo k="s:originTrace" v="n:370" />
        <node concept="3clFbF" id="6Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:372" />
          <node concept="2OqwBi" id="70" role="3clFbG">
            <uo k="s:originTrace" v="n:373" />
            <node concept="liA8E" id="71" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <uo k="s:originTrace" v="n:374" />
              <node concept="1DoJHT" id="73" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:376" />
                <node concept="3uibUv" id="75" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:378" />
                </node>
                <node concept="37vLTw" id="76" role="1EMhIo">
                  <ref role="3cqZAo" node="6W" resolve="_context" />
                  <uo k="s:originTrace" v="n:379" />
                </node>
              </node>
              <node concept="Xl_RD" id="74" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800568" />
                <uo k="s:originTrace" v="n:377" />
              </node>
            </node>
            <node concept="2OqwBi" id="72" role="2Oq$k0">
              <uo k="s:originTrace" v="n:375" />
              <node concept="liA8E" id="77" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:380" />
              </node>
              <node concept="37vLTw" id="78" role="2Oq$k0">
                <ref role="3cqZAo" node="6W" resolve="_context" />
                <uo k="s:originTrace" v="n:381" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="79">
    <property role="TrG5h" value="LogicalReference_DataFlow" />
    <uo k="s:originTrace" v="n:382" />
    <node concept="3Tm1VV" id="7a" role="1B3o_S">
      <uo k="s:originTrace" v="n:383" />
    </node>
    <node concept="3uibUv" id="7b" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:384" />
    </node>
    <node concept="3clFb_" id="7c" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:385" />
      <node concept="3Tm1VV" id="7d" role="1B3o_S">
        <uo k="s:originTrace" v="n:386" />
      </node>
      <node concept="3cqZAl" id="7e" role="3clF45">
        <uo k="s:originTrace" v="n:387" />
      </node>
      <node concept="37vLTG" id="7f" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:388" />
        <node concept="3uibUv" id="7h" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:390" />
        </node>
      </node>
      <node concept="3clFbS" id="7g" role="3clF47">
        <uo k="s:originTrace" v="n:389" />
        <node concept="3clFbF" id="7i" role="3cqZAp">
          <uo k="s:originTrace" v="n:391" />
          <node concept="2OqwBi" id="7j" role="3clFbG">
            <uo k="s:originTrace" v="n:392" />
            <node concept="2OqwBi" id="7k" role="2Oq$k0">
              <uo k="s:originTrace" v="n:393" />
              <node concept="37vLTw" id="7m" role="2Oq$k0">
                <ref role="3cqZAo" node="7f" resolve="_context" />
                <uo k="s:originTrace" v="n:395" />
              </node>
              <node concept="liA8E" id="7n" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:396" />
              </node>
            </node>
            <node concept="liA8E" id="7l" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <uo k="s:originTrace" v="n:394" />
              <node concept="2YIFZM" id="7o" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                <uo k="s:originTrace" v="n:400" />
                <node concept="1DoJHT" id="7q" role="37wK5m">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:399" />
                  <node concept="3uibUv" id="7s" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    <uo k="s:originTrace" v="n:401" />
                  </node>
                  <node concept="37vLTw" id="7t" role="1EMhIo">
                    <ref role="3cqZAo" node="7f" resolve="_context" />
                    <uo k="s:originTrace" v="n:402" />
                  </node>
                </node>
                <node concept="1BaE9c" id="7r" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="target$22yf" />
                  <node concept="2YIFZM" id="7u" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <node concept="11gdke" id="7v" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="7w" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="7x" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716969a8L" />
                    </node>
                    <node concept="11gdke" id="7y" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716969a9L" />
                    </node>
                    <node concept="Xl_RD" id="7z" role="37wK5m">
                      <property role="Xl_RC" value="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="7p" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800690" />
                <uo k="s:originTrace" v="n:398" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7$">
    <property role="TrG5h" value="Logical_DataFlow" />
    <uo k="s:originTrace" v="n:403" />
    <node concept="3Tm1VV" id="7_" role="1B3o_S">
      <uo k="s:originTrace" v="n:404" />
    </node>
    <node concept="3uibUv" id="7A" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:405" />
    </node>
    <node concept="3clFb_" id="7B" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:406" />
      <node concept="3Tm1VV" id="7C" role="1B3o_S">
        <uo k="s:originTrace" v="n:407" />
      </node>
      <node concept="3cqZAl" id="7D" role="3clF45">
        <uo k="s:originTrace" v="n:408" />
      </node>
      <node concept="37vLTG" id="7E" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:409" />
        <node concept="3uibUv" id="7G" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:411" />
        </node>
      </node>
      <node concept="3clFbS" id="7F" role="3clF47">
        <uo k="s:originTrace" v="n:410" />
        <node concept="3clFbF" id="7H" role="3cqZAp">
          <uo k="s:originTrace" v="n:412" />
          <node concept="2OqwBi" id="7I" role="3clFbG">
            <uo k="s:originTrace" v="n:413" />
            <node concept="liA8E" id="7J" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <uo k="s:originTrace" v="n:414" />
              <node concept="1DoJHT" id="7L" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:416" />
                <node concept="3uibUv" id="7N" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:418" />
                </node>
                <node concept="37vLTw" id="7O" role="1EMhIo">
                  <ref role="3cqZAo" node="7E" resolve="_context" />
                  <uo k="s:originTrace" v="n:419" />
                </node>
              </node>
              <node concept="Xl_RD" id="7M" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800578" />
                <uo k="s:originTrace" v="n:417" />
              </node>
            </node>
            <node concept="2OqwBi" id="7K" role="2Oq$k0">
              <uo k="s:originTrace" v="n:415" />
              <node concept="liA8E" id="7P" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:420" />
              </node>
              <node concept="37vLTw" id="7Q" role="2Oq$k0">
                <ref role="3cqZAo" node="7E" resolve="_context" />
                <uo k="s:originTrace" v="n:421" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7R">
    <property role="TrG5h" value="OutputField_DataFlow" />
    <uo k="s:originTrace" v="n:422" />
    <node concept="3Tm1VV" id="7S" role="1B3o_S">
      <uo k="s:originTrace" v="n:423" />
    </node>
    <node concept="3uibUv" id="7T" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:424" />
    </node>
    <node concept="3clFb_" id="7U" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:425" />
      <node concept="3Tm1VV" id="7V" role="1B3o_S">
        <uo k="s:originTrace" v="n:426" />
      </node>
      <node concept="3cqZAl" id="7W" role="3clF45">
        <uo k="s:originTrace" v="n:427" />
      </node>
      <node concept="37vLTG" id="7X" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:428" />
        <node concept="3uibUv" id="7Z" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:430" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y" role="3clF47">
        <uo k="s:originTrace" v="n:429" />
        <node concept="3clFbF" id="80" role="3cqZAp">
          <uo k="s:originTrace" v="n:431" />
          <node concept="2OqwBi" id="82" role="3clFbG">
            <uo k="s:originTrace" v="n:433" />
            <node concept="2OqwBi" id="83" role="2Oq$k0">
              <uo k="s:originTrace" v="n:434" />
              <node concept="37vLTw" id="85" role="2Oq$k0">
                <ref role="3cqZAo" node="7X" resolve="_context" />
                <uo k="s:originTrace" v="n:436" />
              </node>
              <node concept="liA8E" id="86" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:437" />
              </node>
            </node>
            <node concept="liA8E" id="84" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
              <uo k="s:originTrace" v="n:435" />
              <node concept="10QFUN" id="87" role="37wK5m">
                <uo k="s:originTrace" v="n:438" />
                <node concept="2YIFZM" id="88" role="10QFUP">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                  <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                  <uo k="s:originTrace" v="n:442" />
                  <node concept="1DoJHT" id="8a" role="37wK5m">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:441" />
                    <node concept="3uibUv" id="8c" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      <uo k="s:originTrace" v="n:443" />
                    </node>
                    <node concept="37vLTw" id="8d" role="1EMhIo">
                      <ref role="3cqZAo" node="7X" resolve="_context" />
                      <uo k="s:originTrace" v="n:444" />
                    </node>
                  </node>
                  <node concept="1BaE9c" id="8b" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="expression$ddms" />
                    <node concept="2YIFZM" id="8e" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getContainmentLink(long,long,long,long,java.lang.String)" resolve="getContainmentLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <node concept="11gdke" id="8f" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      </node>
                      <node concept="11gdke" id="8g" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      </node>
                      <node concept="11gdke" id="8h" role="37wK5m">
                        <property role="11gdj1" value="12106fd5a98L" />
                      </node>
                      <node concept="11gdke" id="8i" role="37wK5m">
                        <property role="11gdj1" value="1210700deeeL" />
                      </node>
                      <node concept="Xl_RD" id="8j" role="37wK5m">
                        <property role="Xl_RC" value="expression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="89" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  <uo k="s:originTrace" v="n:440" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="81" role="3cqZAp">
          <uo k="s:originTrace" v="n:432" />
          <node concept="2OqwBi" id="8k" role="3clFbG">
            <uo k="s:originTrace" v="n:445" />
            <node concept="liA8E" id="8l" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <uo k="s:originTrace" v="n:446" />
              <node concept="1DoJHT" id="8n" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:448" />
                <node concept="3uibUv" id="8p" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:450" />
                </node>
                <node concept="37vLTw" id="8q" role="1EMhIo">
                  <ref role="3cqZAo" node="7X" resolve="_context" />
                  <uo k="s:originTrace" v="n:451" />
                </node>
              </node>
              <node concept="Xl_RD" id="8o" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800596" />
                <uo k="s:originTrace" v="n:449" />
              </node>
            </node>
            <node concept="2OqwBi" id="8m" role="2Oq$k0">
              <uo k="s:originTrace" v="n:447" />
              <node concept="liA8E" id="8r" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:452" />
              </node>
              <node concept="37vLTw" id="8s" role="2Oq$k0">
                <ref role="3cqZAo" node="7X" resolve="_context" />
                <uo k="s:originTrace" v="n:453" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8t">
    <property role="TrG5h" value="OutputTable_DataFlow" />
    <uo k="s:originTrace" v="n:454" />
    <node concept="3Tm1VV" id="8u" role="1B3o_S">
      <uo k="s:originTrace" v="n:455" />
    </node>
    <node concept="3uibUv" id="8v" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:456" />
    </node>
    <node concept="3clFb_" id="8w" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:457" />
      <node concept="3Tm1VV" id="8x" role="1B3o_S">
        <uo k="s:originTrace" v="n:458" />
      </node>
      <node concept="3cqZAl" id="8y" role="3clF45">
        <uo k="s:originTrace" v="n:459" />
      </node>
      <node concept="37vLTG" id="8z" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:460" />
        <node concept="3uibUv" id="8_" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:462" />
        </node>
      </node>
      <node concept="3clFbS" id="8$" role="3clF47">
        <uo k="s:originTrace" v="n:461" />
        <node concept="3clFbF" id="8A" role="3cqZAp">
          <uo k="s:originTrace" v="n:463" />
          <node concept="2OqwBi" id="8B" role="3clFbG">
            <uo k="s:originTrace" v="n:464" />
            <node concept="2OqwBi" id="8C" role="2Oq$k0">
              <uo k="s:originTrace" v="n:465" />
              <node concept="37vLTw" id="8E" role="2Oq$k0">
                <ref role="3cqZAo" node="8z" resolve="_context" />
                <uo k="s:originTrace" v="n:467" />
              </node>
              <node concept="liA8E" id="8F" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:468" />
              </node>
            </node>
            <node concept="liA8E" id="8D" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8unf" resolve="build" />
              <uo k="s:originTrace" v="n:466" />
              <node concept="10QFUN" id="8G" role="37wK5m">
                <uo k="s:originTrace" v="n:469" />
                <node concept="2YIFZM" id="8H" role="10QFUP">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                  <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                  <uo k="s:originTrace" v="n:473" />
                  <node concept="1DoJHT" id="8J" role="37wK5m">
                    <property role="1Dpdpm" value="getNode" />
                    <uo k="s:originTrace" v="n:472" />
                    <node concept="3uibUv" id="8L" role="1Ez5kq">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      <uo k="s:originTrace" v="n:474" />
                    </node>
                    <node concept="37vLTw" id="8M" role="1EMhIo">
                      <ref role="3cqZAo" node="8z" resolve="_context" />
                      <uo k="s:originTrace" v="n:475" />
                    </node>
                  </node>
                  <node concept="1BaE9c" id="8K" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="dataSource$1D5f" />
                    <node concept="2YIFZM" id="8N" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getContainmentLink(long,long,long,long,java.lang.String)" resolve="getContainmentLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <node concept="11gdke" id="8O" role="37wK5m">
                        <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                      </node>
                      <node concept="11gdke" id="8P" role="37wK5m">
                        <property role="11gdj1" value="83bed2ea6f3627c2L" />
                      </node>
                      <node concept="11gdke" id="8Q" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fde2f4acL" />
                      </node>
                      <node concept="11gdke" id="8R" role="37wK5m">
                        <property role="11gdj1" value="53046dd7fde2f4adL" />
                      </node>
                      <node concept="Xl_RD" id="8S" role="37wK5m">
                        <property role="Xl_RC" value="dataSource" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="8I" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  <uo k="s:originTrace" v="n:471" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8T">
    <property role="TrG5h" value="SelectorReference_DataFlow" />
    <uo k="s:originTrace" v="n:476" />
    <node concept="3Tm1VV" id="8U" role="1B3o_S">
      <uo k="s:originTrace" v="n:477" />
    </node>
    <node concept="3uibUv" id="8V" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:478" />
    </node>
    <node concept="3clFb_" id="8W" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:479" />
      <node concept="3Tm1VV" id="8X" role="1B3o_S">
        <uo k="s:originTrace" v="n:480" />
      </node>
      <node concept="3cqZAl" id="8Y" role="3clF45">
        <uo k="s:originTrace" v="n:481" />
      </node>
      <node concept="37vLTG" id="8Z" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:482" />
        <node concept="3uibUv" id="91" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:484" />
        </node>
      </node>
      <node concept="3clFbS" id="90" role="3clF47">
        <uo k="s:originTrace" v="n:483" />
        <node concept="3clFbF" id="92" role="3cqZAp">
          <uo k="s:originTrace" v="n:485" />
          <node concept="2OqwBi" id="93" role="3clFbG">
            <uo k="s:originTrace" v="n:486" />
            <node concept="2OqwBi" id="94" role="2Oq$k0">
              <uo k="s:originTrace" v="n:487" />
              <node concept="37vLTw" id="96" role="2Oq$k0">
                <ref role="3cqZAo" node="8Z" resolve="_context" />
                <uo k="s:originTrace" v="n:489" />
              </node>
              <node concept="liA8E" id="97" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:490" />
              </node>
            </node>
            <node concept="liA8E" id="95" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8urB" resolve="emitRead" />
              <uo k="s:originTrace" v="n:488" />
              <node concept="2YIFZM" id="98" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFcpd" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i8bi:1pwnB5DiOAj" resolve="getTarget" />
                <uo k="s:originTrace" v="n:494" />
                <node concept="1DoJHT" id="9a" role="37wK5m">
                  <property role="1Dpdpm" value="getNode" />
                  <uo k="s:originTrace" v="n:493" />
                  <node concept="3uibUv" id="9c" role="1Ez5kq">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    <uo k="s:originTrace" v="n:495" />
                  </node>
                  <node concept="37vLTw" id="9d" role="1EMhIo">
                    <ref role="3cqZAo" node="8Z" resolve="_context" />
                    <uo k="s:originTrace" v="n:496" />
                  </node>
                </node>
                <node concept="1BaE9c" id="9b" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="target$Djhf" />
                  <node concept="2YIFZM" id="9e" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <node concept="11gdke" id="9f" role="37wK5m">
                      <property role="11gdj1" value="26b3d6d5b99a4ed6L" />
                    </node>
                    <node concept="11gdke" id="9g" role="37wK5m">
                      <property role="11gdj1" value="83bed2ea6f3627c2L" />
                    </node>
                    <node concept="11gdke" id="9h" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716bc718L" />
                    </node>
                    <node concept="11gdke" id="9i" role="37wK5m">
                      <property role="11gdj1" value="42549ff0716bc719L" />
                    </node>
                    <node concept="Xl_RD" id="9j" role="37wK5m">
                      <property role="Xl_RC" value="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="99" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800697" />
                <uo k="s:originTrace" v="n:492" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9k">
    <property role="TrG5h" value="Selector_DataFlow" />
    <uo k="s:originTrace" v="n:497" />
    <node concept="3Tm1VV" id="9l" role="1B3o_S">
      <uo k="s:originTrace" v="n:498" />
    </node>
    <node concept="3uibUv" id="9m" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
      <uo k="s:originTrace" v="n:499" />
    </node>
    <node concept="3clFb_" id="9n" role="jymVt">
      <property role="TrG5h" value="build" />
      <uo k="s:originTrace" v="n:500" />
      <node concept="3Tm1VV" id="9o" role="1B3o_S">
        <uo k="s:originTrace" v="n:501" />
      </node>
      <node concept="3cqZAl" id="9p" role="3clF45">
        <uo k="s:originTrace" v="n:502" />
      </node>
      <node concept="37vLTG" id="9q" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:503" />
        <node concept="3uibUv" id="9s" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
          <uo k="s:originTrace" v="n:505" />
        </node>
      </node>
      <node concept="3clFbS" id="9r" role="3clF47">
        <uo k="s:originTrace" v="n:504" />
        <node concept="3clFbF" id="9t" role="3cqZAp">
          <uo k="s:originTrace" v="n:506" />
          <node concept="2OqwBi" id="9u" role="3clFbG">
            <uo k="s:originTrace" v="n:507" />
            <node concept="liA8E" id="9v" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8us6" resolve="emitWrite" />
              <uo k="s:originTrace" v="n:508" />
              <node concept="1DoJHT" id="9x" role="37wK5m">
                <property role="1Dpdpm" value="getNode" />
                <uo k="s:originTrace" v="n:510" />
                <node concept="3uibUv" id="9z" role="1Ez5kq">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <uo k="s:originTrace" v="n:512" />
                </node>
                <node concept="37vLTw" id="9$" role="1EMhIo">
                  <ref role="3cqZAo" node="9q" resolve="_context" />
                  <uo k="s:originTrace" v="n:513" />
                </node>
              </node>
              <node concept="Xl_RD" id="9y" role="37wK5m">
                <property role="Xl_RC" value="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)/3521948432330800573" />
                <uo k="s:originTrace" v="n:511" />
              </node>
            </node>
            <node concept="2OqwBi" id="9w" role="2Oq$k0">
              <uo k="s:originTrace" v="n:509" />
              <node concept="liA8E" id="9_" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                <uo k="s:originTrace" v="n:514" />
              </node>
              <node concept="37vLTw" id="9A" role="2Oq$k0">
                <ref role="3cqZAo" node="9q" resolve="_context" />
                <uo k="s:originTrace" v="n:515" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

