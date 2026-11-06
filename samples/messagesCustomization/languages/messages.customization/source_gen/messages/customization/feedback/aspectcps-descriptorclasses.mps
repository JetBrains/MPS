<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fe80d40(checkpoints/messages.customization.feedback@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="gt7b" ref="r:ecf311aa-7fee-4454-acdb-4d199fb64430(messages.customization.feedback)" />
    <import index="j809" ref="aaaaf3e2-decf-4e97-bf80-9109eab759ee/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.feedback.problem.legacy-constraints/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="j80a" ref="a098f3e2-deaa-4e97-bf80-9109efff59dd/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.feedback.problem.structure/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="pljn" ref="r:7117f6c4-faaf-4889-b5b9-3fe628e41cf8(messages.customization.structure)" />
    <import index="j80b" ref="9abaaae2-decf-4e97-bf80-9109e8b759cc/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.messages.api/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="9jwd" ref="9e9ef4e2-decf-4e97-bf80-9109e8b759bb/java:jetbrains.mps.core.aspects.feedback.api(jetbrains.mps.lang.feedback.api/)" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
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
  </registry>
  <node concept="312cEu" id="0">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="BrokenConcept_FeedbackFeedback" />
    <uo k="s:originTrace" v="n:7019192671317617976" />
    <node concept="Wx3nA" id="1" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7019192671317617976" />
      <node concept="3Tm6S6" id="e" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="35c_gC" id="f" role="33vP2m">
        <ref role="35c_gD" to="pljn:65DbCInTWch" resolve="BrokenConcept" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="3uibUv" id="g" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
    </node>
    <node concept="2tJIrI" id="2" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317617976" />
    </node>
    <node concept="Wx3nA" id="3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenPropertyIsNotDefinedInConcept_tbtsff_a" />
      <uo k="s:originTrace" v="n:7019192671317617977" />
      <node concept="3Tm6S6" id="h" role="1B3o_S" />
      <node concept="2ShNRf" id="i" role="33vP2m">
        <node concept="YeOm9" id="k" role="2ShVmc">
          <node concept="1Y3b0j" id="l" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="m" role="37wK5m">
              <uo k="s:originTrace" v="n:7019192671317617978" />
              <node concept="1pGfFk" id="q" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:7019192671317617978" />
                <node concept="Rm8GO" id="r" role="37wK5m">
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.MISSING_PROPERTY" resolve="MISSING_PROPERTY" />
                  <uo k="s:originTrace" v="n:7019192671317617978" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="n" role="1B3o_S" />
            <node concept="3clFb_" id="o" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="s" role="1B3o_S" />
              <node concept="2AHcQZ" id="t" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="u" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="v" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="y" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~MissingPropertyContext" resolve="MissingPropertyContext" />
                  <uo k="s:originTrace" v="n:7019192671317617978" />
                </node>
              </node>
              <node concept="3clFbS" id="w" role="3clF47">
                <node concept="3cpWs6" id="z" role="3cqZAp">
                  <node concept="1rXfSq" id="$" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="_" role="37wK5m">
                      <property role="Xl_RC" value="Property '%s' does not belong to the concept!!!" />
                    </node>
                    <node concept="2OqwBi" id="A" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317617981" />
                      <node concept="37vLTw" id="B" role="2Oq$k0">
                        <ref role="3cqZAo" node="v" resolve="context" />
                      </node>
                      <node concept="liA8E" id="C" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~MissingPropertyContext.getProperty()" resolve="getProperty" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="x" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="p" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~MissingPropertyContext" resolve="MissingPropertyContext" />
              <uo k="s:originTrace" v="n:7019192671317617978" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="j" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="D" role="11_B2D">
          <ref role="3uigEE" to="j80a:~MissingPropertyContext" resolve="MissingPropertyContext" />
          <uo k="s:originTrace" v="n:7019192671317617978" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenChildIsNotDefinedInConcept_tbtsff_b" />
      <uo k="s:originTrace" v="n:7019192671317617984" />
      <node concept="3Tm6S6" id="E" role="1B3o_S" />
      <node concept="2ShNRf" id="F" role="33vP2m">
        <node concept="YeOm9" id="H" role="2ShVmc">
          <node concept="1Y3b0j" id="I" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="J" role="37wK5m">
              <uo k="s:originTrace" v="n:7019192671317617985" />
              <node concept="1pGfFk" id="N" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:7019192671317617985" />
                <node concept="Rm8GO" id="O" role="37wK5m">
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.MISSING_CHILD" resolve="MISSING_CHILD" />
                  <uo k="s:originTrace" v="n:7019192671317617985" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="K" role="1B3o_S" />
            <node concept="3clFb_" id="L" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="P" role="1B3o_S" />
              <node concept="2AHcQZ" id="Q" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="R" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="S" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="V" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~MissingChildContext" resolve="MissingChildContext" />
                  <uo k="s:originTrace" v="n:7019192671317617985" />
                </node>
              </node>
              <node concept="3clFbS" id="T" role="3clF47">
                <node concept="3cpWs6" id="W" role="3cqZAp">
                  <node concept="1rXfSq" id="X" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="Y" role="37wK5m">
                      <property role="Xl_RC" value="Child '%s' does not belong to the concept!!!" />
                    </node>
                    <node concept="2OqwBi" id="Z" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317617988" />
                      <node concept="37vLTw" id="10" role="2Oq$k0">
                        <ref role="3cqZAo" node="S" resolve="context" />
                      </node>
                      <node concept="liA8E" id="11" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~MissingChildContext.getChild()" resolve="getChild" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="U" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="M" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~MissingChildContext" resolve="MissingChildContext" />
              <uo k="s:originTrace" v="n:7019192671317617985" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="G" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="12" role="11_B2D">
          <ref role="3uigEE" to="j80a:~MissingChildContext" resolve="MissingChildContext" />
          <uo k="s:originTrace" v="n:7019192671317617985" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenReferenceIsNotDefinedInConcept_tbtsff_c" />
      <uo k="s:originTrace" v="n:7019192671317892315" />
      <node concept="3Tm6S6" id="13" role="1B3o_S" />
      <node concept="2ShNRf" id="14" role="33vP2m">
        <node concept="YeOm9" id="16" role="2ShVmc">
          <node concept="1Y3b0j" id="17" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="18" role="37wK5m">
              <uo k="s:originTrace" v="n:7019192671317892313" />
              <node concept="1pGfFk" id="1c" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:7019192671317892313" />
                <node concept="Rm8GO" id="1d" role="37wK5m">
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.MISSING_REF" resolve="MISSING_REF" />
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <uo k="s:originTrace" v="n:7019192671317892313" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="19" role="1B3o_S" />
            <node concept="3clFb_" id="1a" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="1e" role="1B3o_S" />
              <node concept="2AHcQZ" id="1f" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="1g" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="1h" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="1k" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~MissingRefContext" resolve="MissingRefContext" />
                  <uo k="s:originTrace" v="n:7019192671317892313" />
                </node>
              </node>
              <node concept="3clFbS" id="1i" role="3clF47">
                <node concept="3cpWs6" id="1l" role="3cqZAp">
                  <node concept="1rXfSq" id="1m" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="1n" role="37wK5m">
                      <property role="Xl_RC" value="Reference '%s' does not belong to the concept!!!" />
                    </node>
                    <node concept="2OqwBi" id="1o" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317892367" />
                      <node concept="37vLTw" id="1p" role="2Oq$k0">
                        <ref role="3cqZAo" node="1h" resolve="context" />
                      </node>
                      <node concept="liA8E" id="1q" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~MissingRefContext.getLink()" resolve="getLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1j" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="1b" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~MissingRefContext" resolve="MissingRefContext" />
              <uo k="s:originTrace" v="n:7019192671317892313" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="15" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="1r" role="11_B2D">
          <ref role="3uigEE" to="j80a:~MissingRefContext" resolve="MissingRefContext" />
          <uo k="s:originTrace" v="n:7019192671317892313" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317617976" />
    </node>
    <node concept="3Tm1VV" id="7" role="1B3o_S">
      <uo k="s:originTrace" v="n:7019192671317617976" />
    </node>
    <node concept="Wx3nA" id="8" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7019192671317617976" />
      <node concept="3uibUv" id="1s" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
        <node concept="3uibUv" id="1v" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7019192671317617976" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1t" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="2YIFZM" id="1u" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
        <node concept="2YIFZM" id="1w" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:7019192671317617976" />
          <node concept="3uibUv" id="1x" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:7019192671317617976" />
          </node>
          <node concept="37vLTw" id="1y" role="37wK5m">
            <ref role="3cqZAo" node="3" resolve="MSGPROVIDER_WhenPropertyIsNotDefinedInConcept_tbtsff_a" />
            <uo k="s:originTrace" v="n:7019192671317617976" />
          </node>
          <node concept="37vLTw" id="1z" role="37wK5m">
            <ref role="3cqZAo" node="4" resolve="MSGPROVIDER_WhenChildIsNotDefinedInConcept_tbtsff_b" />
            <uo k="s:originTrace" v="n:7019192671317617976" />
          </node>
          <node concept="37vLTw" id="1$" role="37wK5m">
            <ref role="3cqZAo" node="5" resolve="MSGPROVIDER_WhenReferenceIsNotDefinedInConcept_tbtsff_c" />
            <uo k="s:originTrace" v="n:7019192671317617976" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317617976" />
    </node>
    <node concept="3clFbW" id="a" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:7019192671317617976" />
      <node concept="3cqZAl" id="1_" role="3clF45">
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="3Tm1VV" id="1A" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="3clFbS" id="1B" role="3clF47">
        <uo k="s:originTrace" v="n:7019192671317617976" />
        <node concept="XkiVB" id="1C" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:7019192671317617976" />
          <node concept="37vLTw" id="1D" role="37wK5m">
            <ref role="3cqZAo" node="1" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:7019192671317617976" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="b" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317617976" />
    </node>
    <node concept="3clFb_" id="c" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:7019192671317617976" />
      <node concept="3uibUv" id="1E" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
        <node concept="3uibUv" id="1J" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7019192671317617976" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1F" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="3clFbS" id="1G" role="3clF47">
        <uo k="s:originTrace" v="n:7019192671317617976" />
        <node concept="3cpWs6" id="1K" role="3cqZAp">
          <uo k="s:originTrace" v="n:7019192671317617976" />
          <node concept="2OqwBi" id="1L" role="3cqZAk">
            <uo k="s:originTrace" v="n:7019192671317617976" />
            <node concept="37vLTw" id="1M" role="2Oq$k0">
              <ref role="3cqZAo" node="8" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:7019192671317617976" />
            </node>
            <node concept="liA8E" id="1N" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:7019192671317617976" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
      <node concept="2AHcQZ" id="1I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:7019192671317617976" />
      </node>
    </node>
    <node concept="3uibUv" id="d" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:7019192671317617976" />
    </node>
  </node>
  <node concept="312cEu" id="1O">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="CardinalityTestConcept0_FeedbackFeedback" />
    <uo k="s:originTrace" v="n:7019192671317951205" />
    <node concept="Wx3nA" id="1P" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7019192671317951205" />
      <node concept="3Tm6S6" id="20" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="35c_gC" id="21" role="33vP2m">
        <ref role="35c_gD" to="pljn:65DbCInVC9J" resolve="CardinalityTestConcept0" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="3uibUv" id="22" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Q" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317951205" />
    </node>
    <node concept="Wx3nA" id="1R" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenThereAreMultipleChildrenInRoleWithSingleCardinality_570te8_a" />
      <uo k="s:originTrace" v="n:7019192671317951220" />
      <node concept="3Tm6S6" id="23" role="1B3o_S" />
      <node concept="2ShNRf" id="24" role="33vP2m">
        <node concept="YeOm9" id="26" role="2ShVmc">
          <node concept="1Y3b0j" id="27" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="28" role="37wK5m">
              <uo k="s:originTrace" v="n:7019192671317951228" />
              <node concept="1pGfFk" id="2c" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:7019192671317951228" />
                <node concept="Rm8GO" id="2d" role="37wK5m">
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.ONLY_ONE_CHILD_CAN_BE_IN_ROLE" resolve="ONLY_ONE_CHILD_CAN_BE_IN_ROLE" />
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <uo k="s:originTrace" v="n:7019192671317951228" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="29" role="1B3o_S" />
            <node concept="3clFb_" id="2a" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="2e" role="1B3o_S" />
              <node concept="2AHcQZ" id="2f" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="2g" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="2h" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="2k" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~ChildCardinalityContext" resolve="ChildCardinalityContext" />
                  <uo k="s:originTrace" v="n:7019192671317951228" />
                </node>
              </node>
              <node concept="3clFbS" id="2i" role="3clF47">
                <node concept="3cpWs6" id="2l" role="3cqZAp">
                  <node concept="1rXfSq" id="2m" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="2n" role="37wK5m">
                      <property role="Xl_RC" value="Multiple children in the single role '%s':  %s!!!" />
                    </node>
                    <node concept="2OqwBi" id="2o" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317951223" />
                      <node concept="37vLTw" id="2q" role="2Oq$k0">
                        <ref role="3cqZAo" node="2h" resolve="context" />
                      </node>
                      <node concept="liA8E" id="2r" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~ChildCardinalityContext.getLink()" resolve="getLink" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2p" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317951226" />
                      <node concept="37vLTw" id="2s" role="2Oq$k0">
                        <ref role="3cqZAo" node="2h" resolve="context" />
                      </node>
                      <node concept="liA8E" id="2t" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~ChildCardinalityContext.getChildren()" resolve="getChildren" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="2j" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="2b" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~ChildCardinalityContext" resolve="ChildCardinalityContext" />
              <uo k="s:originTrace" v="n:7019192671317951228" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="25" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="2u" role="11_B2D">
          <ref role="3uigEE" to="j80a:~ChildCardinalityContext" resolve="ChildCardinalityContext" />
          <uo k="s:originTrace" v="n:7019192671317951228" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1S" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317951205" />
    </node>
    <node concept="3Tm1VV" id="1T" role="1B3o_S">
      <uo k="s:originTrace" v="n:7019192671317951205" />
    </node>
    <node concept="Wx3nA" id="1U" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7019192671317951205" />
      <node concept="3uibUv" id="2v" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
        <node concept="3uibUv" id="2y" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7019192671317951205" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2w" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="2YIFZM" id="2x" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
        <node concept="2YIFZM" id="2z" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:7019192671317951205" />
          <node concept="3uibUv" id="2$" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:7019192671317951205" />
          </node>
          <node concept="37vLTw" id="2_" role="37wK5m">
            <ref role="3cqZAo" node="1R" resolve="MSGPROVIDER_WhenThereAreMultipleChildrenInRoleWithSingleCardinality_570te8_a" />
            <uo k="s:originTrace" v="n:7019192671317951205" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1V" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317951205" />
    </node>
    <node concept="3clFbW" id="1W" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:7019192671317951205" />
      <node concept="3cqZAl" id="2A" role="3clF45">
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="3Tm1VV" id="2B" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="3clFbS" id="2C" role="3clF47">
        <uo k="s:originTrace" v="n:7019192671317951205" />
        <node concept="XkiVB" id="2D" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:7019192671317951205" />
          <node concept="37vLTw" id="2E" role="37wK5m">
            <ref role="3cqZAo" node="1P" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:7019192671317951205" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1X" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317951205" />
    </node>
    <node concept="3clFb_" id="1Y" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:7019192671317951205" />
      <node concept="3uibUv" id="2F" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
        <node concept="3uibUv" id="2K" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7019192671317951205" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2G" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="3clFbS" id="2H" role="3clF47">
        <uo k="s:originTrace" v="n:7019192671317951205" />
        <node concept="3cpWs6" id="2L" role="3cqZAp">
          <uo k="s:originTrace" v="n:7019192671317951205" />
          <node concept="2OqwBi" id="2M" role="3cqZAk">
            <uo k="s:originTrace" v="n:7019192671317951205" />
            <node concept="37vLTw" id="2N" role="2Oq$k0">
              <ref role="3cqZAo" node="1U" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:7019192671317951205" />
            </node>
            <node concept="liA8E" id="2O" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:7019192671317951205" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2I" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
      <node concept="2AHcQZ" id="2J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:7019192671317951205" />
      </node>
    </node>
    <node concept="3uibUv" id="1Z" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:7019192671317951205" />
    </node>
  </node>
  <node concept="312cEu" id="2P">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="CardinalityTestConcept_FeedbackFeedback" />
    <uo k="s:originTrace" v="n:7019192671317573281" />
    <node concept="Wx3nA" id="2Q" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7019192671317573281" />
      <node concept="3Tm6S6" id="32" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="35c_gC" id="33" role="33vP2m">
        <ref role="35c_gD" to="pljn:65DbCInUmLG" resolve="CardinalityTestConcept" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="3uibUv" id="34" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
    </node>
    <node concept="2tJIrI" id="2R" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317573281" />
    </node>
    <node concept="Wx3nA" id="2S" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenThereIsNoRefInRoleWithNonzeroCardinality_cez0w0_a" />
      <uo k="s:originTrace" v="n:7019192671317573315" />
      <node concept="3Tm6S6" id="35" role="1B3o_S" />
      <node concept="2ShNRf" id="36" role="33vP2m">
        <node concept="YeOm9" id="38" role="2ShVmc">
          <node concept="1Y3b0j" id="39" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="3a" role="37wK5m">
              <uo k="s:originTrace" v="n:7019192671317573321" />
              <node concept="1pGfFk" id="3e" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:7019192671317573321" />
                <node concept="Rm8GO" id="3f" role="37wK5m">
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.NO_REF_IN_OBLIGATORY_ROLE" resolve="NO_REF_IN_OBLIGATORY_ROLE" />
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <uo k="s:originTrace" v="n:7019192671317573321" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="3b" role="1B3o_S" />
            <node concept="3clFb_" id="3c" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="3g" role="1B3o_S" />
              <node concept="2AHcQZ" id="3h" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="3i" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="3j" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="3m" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~RefCardinalityContext" resolve="RefCardinalityContext" />
                  <uo k="s:originTrace" v="n:7019192671317573321" />
                </node>
              </node>
              <node concept="3clFbS" id="3k" role="3clF47">
                <node concept="3cpWs6" id="3n" role="3cqZAp">
                  <node concept="1rXfSq" id="3o" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="3p" role="37wK5m">
                      <property role="Xl_RC" value="No ref in the very obligatory role '%s'" />
                    </node>
                    <node concept="2OqwBi" id="3q" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317573318" />
                      <node concept="37vLTw" id="3r" role="2Oq$k0">
                        <ref role="3cqZAo" node="3j" resolve="context" />
                      </node>
                      <node concept="liA8E" id="3s" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~RefCardinalityContext.getLink()" resolve="getLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3l" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="3d" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~RefCardinalityContext" resolve="RefCardinalityContext" />
              <uo k="s:originTrace" v="n:7019192671317573321" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="37" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="3t" role="11_B2D">
          <ref role="3uigEE" to="j80a:~RefCardinalityContext" resolve="RefCardinalityContext" />
          <uo k="s:originTrace" v="n:7019192671317573321" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2T" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenThereIsNoChildInRoleWithNonzeroCardinality_cez0w0_b" />
      <uo k="s:originTrace" v="n:7019192671317573322" />
      <node concept="3Tm6S6" id="3u" role="1B3o_S" />
      <node concept="2ShNRf" id="3v" role="33vP2m">
        <node concept="YeOm9" id="3x" role="2ShVmc">
          <node concept="1Y3b0j" id="3y" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="3z" role="37wK5m">
              <uo k="s:originTrace" v="n:7019192671317573328" />
              <node concept="1pGfFk" id="3B" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:7019192671317573328" />
                <node concept="Rm8GO" id="3C" role="37wK5m">
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.NO_CHILD_IN_OBLIGATORY_ROLE" resolve="NO_CHILD_IN_OBLIGATORY_ROLE" />
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <uo k="s:originTrace" v="n:7019192671317573328" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="3$" role="1B3o_S" />
            <node concept="3clFb_" id="3_" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="3D" role="1B3o_S" />
              <node concept="2AHcQZ" id="3E" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="3F" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="3G" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="3J" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~ChildCardinalityContext" resolve="ChildCardinalityContext" />
                  <uo k="s:originTrace" v="n:7019192671317573328" />
                </node>
              </node>
              <node concept="3clFbS" id="3H" role="3clF47">
                <node concept="3cpWs6" id="3K" role="3cqZAp">
                  <node concept="1rXfSq" id="3L" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="3M" role="37wK5m">
                      <property role="Xl_RC" value="No child in the very obligatory role '%s'" />
                    </node>
                    <node concept="2OqwBi" id="3N" role="37wK5m">
                      <uo k="s:originTrace" v="n:7019192671317573325" />
                      <node concept="37vLTw" id="3O" role="2Oq$k0">
                        <ref role="3cqZAo" node="3G" resolve="context" />
                      </node>
                      <node concept="liA8E" id="3P" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~ChildCardinalityContext.getLink()" resolve="getLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3I" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="3A" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~ChildCardinalityContext" resolve="ChildCardinalityContext" />
              <uo k="s:originTrace" v="n:7019192671317573328" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3w" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="3Q" role="11_B2D">
          <ref role="3uigEE" to="j80a:~ChildCardinalityContext" resolve="ChildCardinalityContext" />
          <uo k="s:originTrace" v="n:7019192671317573328" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2U" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317573281" />
    </node>
    <node concept="3Tm1VV" id="2V" role="1B3o_S">
      <uo k="s:originTrace" v="n:7019192671317573281" />
    </node>
    <node concept="Wx3nA" id="2W" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:7019192671317573281" />
      <node concept="3uibUv" id="3R" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
        <node concept="3uibUv" id="3U" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7019192671317573281" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3S" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="2YIFZM" id="3T" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
        <node concept="2YIFZM" id="3V" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:7019192671317573281" />
          <node concept="3uibUv" id="3W" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:7019192671317573281" />
          </node>
          <node concept="37vLTw" id="3X" role="37wK5m">
            <ref role="3cqZAo" node="2S" resolve="MSGPROVIDER_WhenThereIsNoRefInRoleWithNonzeroCardinality_cez0w0_a" />
            <uo k="s:originTrace" v="n:7019192671317573281" />
          </node>
          <node concept="37vLTw" id="3Y" role="37wK5m">
            <ref role="3cqZAo" node="2T" resolve="MSGPROVIDER_WhenThereIsNoChildInRoleWithNonzeroCardinality_cez0w0_b" />
            <uo k="s:originTrace" v="n:7019192671317573281" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2X" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317573281" />
    </node>
    <node concept="3clFbW" id="2Y" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:7019192671317573281" />
      <node concept="3cqZAl" id="3Z" role="3clF45">
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="3Tm1VV" id="40" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="3clFbS" id="41" role="3clF47">
        <uo k="s:originTrace" v="n:7019192671317573281" />
        <node concept="XkiVB" id="42" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:7019192671317573281" />
          <node concept="37vLTw" id="43" role="37wK5m">
            <ref role="3cqZAo" node="2Q" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:7019192671317573281" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2Z" role="jymVt">
      <uo k="s:originTrace" v="n:7019192671317573281" />
    </node>
    <node concept="3clFb_" id="30" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:7019192671317573281" />
      <node concept="3uibUv" id="44" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
        <node concept="3uibUv" id="49" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:7019192671317573281" />
        </node>
      </node>
      <node concept="3Tm1VV" id="45" role="1B3o_S">
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="3clFbS" id="46" role="3clF47">
        <uo k="s:originTrace" v="n:7019192671317573281" />
        <node concept="3cpWs6" id="4a" role="3cqZAp">
          <uo k="s:originTrace" v="n:7019192671317573281" />
          <node concept="2OqwBi" id="4b" role="3cqZAk">
            <uo k="s:originTrace" v="n:7019192671317573281" />
            <node concept="37vLTw" id="4c" role="2Oq$k0">
              <ref role="3cqZAo" node="2W" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:7019192671317573281" />
            </node>
            <node concept="liA8E" id="4d" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:7019192671317573281" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="47" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
      <node concept="2AHcQZ" id="48" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:7019192671317573281" />
      </node>
    </node>
    <node concept="3uibUv" id="31" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:7019192671317573281" />
    </node>
  </node>
  <node concept="312cEu" id="4e">
    <property role="3GE5qa" value="" />
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="GeneratedFeedbackAspectFeedback" />
    <node concept="3Tm1VV" id="4f" role="1B3o_S" />
    <node concept="3uibUv" id="4g" role="EKbjA">
      <ref role="3uigEE" to="9jwd:~FeedbackAspect" resolve="FeedbackAspect" />
    </node>
    <node concept="3clFb_" id="4h" role="jymVt">
      <property role="TrG5h" value="getPerConceptDescriptors" />
      <node concept="3Tm1VV" id="4i" role="1B3o_S" />
      <node concept="3uibUv" id="4j" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="4n" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackPerConceptDescriptor" resolve="FeedbackPerConceptDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="4k" role="3clF47">
        <node concept="3cpWs6" id="4o" role="3cqZAp">
          <node concept="2YIFZM" id="4p" role="3cqZAk">
            <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
            <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object)" resolve="of" />
            <node concept="2ShNRf" id="4q" role="37wK5m">
              <node concept="1pGfFk" id="4v" role="2ShVmc">
                <ref role="37wK5l" node="6G" resolve="TestConcept_FeedbackFeedback" />
              </node>
            </node>
            <node concept="2ShNRf" id="4r" role="37wK5m">
              <node concept="1pGfFk" id="4w" role="2ShVmc">
                <ref role="37wK5l" node="2Y" resolve="CardinalityTestConcept_FeedbackFeedback" />
              </node>
            </node>
            <node concept="2ShNRf" id="4s" role="37wK5m">
              <node concept="1pGfFk" id="4x" role="2ShVmc">
                <ref role="37wK5l" node="a" resolve="BrokenConcept_FeedbackFeedback" />
              </node>
            </node>
            <node concept="2ShNRf" id="4t" role="37wK5m">
              <node concept="1pGfFk" id="4y" role="2ShVmc">
                <ref role="37wK5l" node="1W" resolve="CardinalityTestConcept0_FeedbackFeedback" />
              </node>
            </node>
            <node concept="2ShNRf" id="4u" role="37wK5m">
              <node concept="1pGfFk" id="4z" role="2ShVmc">
                <ref role="37wK5l" node="5E" resolve="IncorrectTargetTestConcept_FeedbackFeedback" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4l" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="4m" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="4$">
    <node concept="39e2AJ" id="4_" role="39e2AI">
      <property role="39e3Y2" value="feedbackDescriptorCons" />
      <node concept="39e2AG" id="4C" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInUmOS" resolve="BrokenConcept_Feedback" />
        <node concept="385nmt" id="4H" role="385vvn">
          <property role="385vuF" value="BrokenConcept_Feedback" />
          <node concept="3u3nmq" id="4J" role="385v07">
            <property role="3u3nmv" value="7019192671317617976" />
          </node>
        </node>
        <node concept="39e2AT" id="4I" role="39e2AY">
          <ref role="39e2AS" node="a" resolve="BrokenConcept_FeedbackFeedback" />
        </node>
      </node>
      <node concept="39e2AG" id="4D" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInVCb_" resolve="CardinalityTestConcept0_Feedback" />
        <node concept="385nmt" id="4K" role="385vvn">
          <property role="385vuF" value="CardinalityTestConcept0_Feedback" />
          <node concept="3u3nmq" id="4M" role="385v07">
            <property role="3u3nmv" value="7019192671317951205" />
          </node>
        </node>
        <node concept="39e2AT" id="4L" role="39e2AY">
          <ref role="39e2AS" node="1W" resolve="CardinalityTestConcept0_FeedbackFeedback" />
        </node>
      </node>
      <node concept="39e2AG" id="4E" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInUbUx" resolve="CardinalityTestConcept_Feedback" />
        <node concept="385nmt" id="4N" role="385vvn">
          <property role="385vuF" value="CardinalityTestConcept_Feedback" />
          <node concept="3u3nmq" id="4P" role="385v07">
            <property role="3u3nmv" value="7019192671317573281" />
          </node>
        </node>
        <node concept="39e2AT" id="4O" role="39e2AY">
          <ref role="39e2AS" node="2Y" resolve="CardinalityTestConcept_FeedbackFeedback" />
        </node>
      </node>
      <node concept="39e2AG" id="4F" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:6uBDHA8A$h" resolve="IncorrectTargetTestConcept_Feedback" />
        <node concept="385nmt" id="4Q" role="385vvn">
          <property role="385vuF" value="IncorrectTargetTestConcept_Feedback" />
          <node concept="3u3nmq" id="4S" role="385v07">
            <property role="3u3nmv" value="116705030628862225" />
          </node>
        </node>
        <node concept="39e2AT" id="4R" role="39e2AY">
          <ref role="39e2AS" node="5E" resolve="IncorrectTargetTestConcept_FeedbackFeedback" />
        </node>
      </node>
      <node concept="39e2AG" id="4G" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:5ca4zTvKOON" resolve="TestConcept_Feedback" />
        <node concept="385nmt" id="4T" role="385vvn">
          <property role="385vuF" value="TestConcept_Feedback" />
          <node concept="3u3nmq" id="4V" role="385v07">
            <property role="3u3nmv" value="5983615114019032371" />
          </node>
        </node>
        <node concept="39e2AT" id="4U" role="39e2AY">
          <ref role="39e2AS" node="6G" resolve="TestConcept_FeedbackFeedback" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4A" role="39e2AI">
      <property role="39e3Y2" value="feedbackMember" />
      <node concept="39e2AG" id="4W" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:6uBDHA8AGz" />
        <node concept="385nmt" id="55" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="57" role="385v07">
            <property role="3u3nmv" value="116705030628862755" />
          </node>
        </node>
        <node concept="39e2AT" id="56" role="39e2AY">
          <ref role="39e2AS" node="5_" resolve="MSGPROVIDER_WhenChildRoleHasIncompatibleTargetConcept_cxdcuc_a" />
        </node>
      </node>
      <node concept="39e2AG" id="4X" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:1oq9tin1ty6" />
        <node concept="385nmt" id="58" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5a" role="385v07">
            <property role="3u3nmv" value="1592627013225928838" />
          </node>
        </node>
        <node concept="39e2AT" id="59" role="39e2AY">
          <ref role="39e2AS" node="6B" resolve="MSGPROVIDER_WhenReferenceIsOutOfScope_pavl6x_b" />
        </node>
      </node>
      <node concept="39e2AG" id="4Y" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInUbV3" />
        <node concept="385nmt" id="5b" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5d" role="385v07">
            <property role="3u3nmv" value="7019192671317573315" />
          </node>
        </node>
        <node concept="39e2AT" id="5c" role="39e2AY">
          <ref role="39e2AS" node="2S" resolve="MSGPROVIDER_WhenThereIsNoRefInRoleWithNonzeroCardinality_cez0w0_a" />
        </node>
      </node>
      <node concept="39e2AG" id="4Z" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInUbVa" />
        <node concept="385nmt" id="5e" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5g" role="385v07">
            <property role="3u3nmv" value="7019192671317573322" />
          </node>
        </node>
        <node concept="39e2AT" id="5f" role="39e2AY">
          <ref role="39e2AS" node="2T" resolve="MSGPROVIDER_WhenThereIsNoChildInRoleWithNonzeroCardinality_cez0w0_b" />
        </node>
      </node>
      <node concept="39e2AG" id="50" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInUmOT" />
        <node concept="385nmt" id="5h" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5j" role="385v07">
            <property role="3u3nmv" value="7019192671317617977" />
          </node>
        </node>
        <node concept="39e2AT" id="5i" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="MSGPROVIDER_WhenPropertyIsNotDefinedInConcept_tbtsff_a" />
        </node>
      </node>
      <node concept="39e2AG" id="51" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInUmP0" />
        <node concept="385nmt" id="5k" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5m" role="385v07">
            <property role="3u3nmv" value="7019192671317617984" />
          </node>
        </node>
        <node concept="39e2AT" id="5l" role="39e2AY">
          <ref role="39e2AS" node="4" resolve="MSGPROVIDER_WhenChildIsNotDefinedInConcept_tbtsff_b" />
        </node>
      </node>
      <node concept="39e2AG" id="52" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInVpNr" />
        <node concept="385nmt" id="5n" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5p" role="385v07">
            <property role="3u3nmv" value="7019192671317892315" />
          </node>
        </node>
        <node concept="39e2AT" id="5o" role="39e2AY">
          <ref role="39e2AS" node="5" resolve="MSGPROVIDER_WhenReferenceIsNotDefinedInConcept_tbtsff_c" />
        </node>
      </node>
      <node concept="39e2AG" id="53" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:65DbCInVCbO" />
        <node concept="385nmt" id="5q" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5s" role="385v07">
            <property role="3u3nmv" value="7019192671317951220" />
          </node>
        </node>
        <node concept="39e2AT" id="5r" role="39e2AY">
          <ref role="39e2AS" node="1R" resolve="MSGPROVIDER_WhenThereAreMultipleChildrenInRoleWithSingleCardinality_570te8_a" />
        </node>
      </node>
      <node concept="39e2AG" id="54" role="39e3Y0">
        <ref role="39e2AK" to="gt7b:6GnzfDRinZ2" />
        <node concept="385nmt" id="5t" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="5v" role="385v07">
            <property role="3u3nmv" value="7716791493893652418" />
          </node>
        </node>
        <node concept="39e2AT" id="5u" role="39e2AY">
          <ref role="39e2AS" node="6A" resolve="MSGPROVIDER_WhenPropertyConstraintFails_pavl6x_a" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4B" role="39e2AI">
      <property role="39e3Y2" value="feedbackAspectClass" />
      <node concept="39e2AG" id="5w" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="5x" role="39e2AY">
          <ref role="39e2AS" node="4e" resolve="GeneratedFeedbackAspectFeedback" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5y">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="IncorrectTargetTestConcept_FeedbackFeedback" />
    <uo k="s:originTrace" v="n:116705030628862225" />
    <node concept="Wx3nA" id="5z" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:116705030628862225" />
      <node concept="3Tm6S6" id="5I" role="1B3o_S">
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="35c_gC" id="5J" role="33vP2m">
        <ref role="35c_gD" to="pljn:6uBDHA8_ni" resolve="IncorrectTargetTestConcept" />
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="3uibUv" id="5K" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$" role="jymVt">
      <uo k="s:originTrace" v="n:116705030628862225" />
    </node>
    <node concept="Wx3nA" id="5_" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenChildRoleHasIncompatibleTargetConcept_cxdcuc_a" />
      <uo k="s:originTrace" v="n:116705030628862755" />
      <node concept="3Tm6S6" id="5L" role="1B3o_S" />
      <node concept="2ShNRf" id="5M" role="33vP2m">
        <node concept="YeOm9" id="5O" role="2ShVmc">
          <node concept="1Y3b0j" id="5P" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="5Q" role="37wK5m">
              <uo k="s:originTrace" v="n:116705030628862754" />
              <node concept="1pGfFk" id="5U" role="2ShVmc">
                <ref role="37wK5l" to="j80a:~ProblemKindId.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemKind)" resolve="ProblemKindId" />
                <uo k="s:originTrace" v="n:116705030628862754" />
                <node concept="Rm8GO" id="5V" role="37wK5m">
                  <ref role="Rm8GQ" to="j80a:~PredefinedStructureProblemKind.TARGET_CONCEPT_INCORRECT_CHILD" resolve="TARGET_CONCEPT_INCORRECT_CHILD" />
                  <ref role="1Px2BO" to="j80a:~PredefinedStructureProblemKind" resolve="PredefinedStructureProblemKind" />
                  <uo k="s:originTrace" v="n:116705030628862754" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="5R" role="1B3o_S" />
            <node concept="3clFb_" id="5S" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="5W" role="1B3o_S" />
              <node concept="2AHcQZ" id="5X" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="5Y" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="5Z" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="62" role="1tU5fm">
                  <ref role="3uigEE" to="j80a:~IncorrectTargetChildRoleContext" resolve="IncorrectTargetChildRoleContext" />
                  <uo k="s:originTrace" v="n:116705030628862754" />
                </node>
              </node>
              <node concept="3clFbS" id="60" role="3clF47">
                <node concept="3cpWs6" id="63" role="3cqZAp">
                  <node concept="1rXfSq" id="64" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="65" role="37wK5m">
                      <property role="Xl_RC" value="CHILD ROLE IS of CONCEPT %s which is not subconcept of %s" />
                    </node>
                    <node concept="2OqwBi" id="66" role="37wK5m">
                      <uo k="s:originTrace" v="n:116705030628863087" />
                      <node concept="37vLTw" id="68" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Z" resolve="context" />
                      </node>
                      <node concept="liA8E" id="69" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~IncorrectTargetChildRoleContext.getChildConcept()" resolve="getChildConcept" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="67" role="37wK5m">
                      <uo k="s:originTrace" v="n:116705030628863487" />
                      <node concept="37vLTw" id="6a" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Z" resolve="context" />
                      </node>
                      <node concept="liA8E" id="6b" role="2OqNvi">
                        <ref role="37wK5l" to="j80a:~IncorrectTargetChildRoleContext.getTargetConcept()" resolve="getTargetConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="61" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="5T" role="2Ghqu4">
              <ref role="3uigEE" to="j80a:~IncorrectTargetChildRoleContext" resolve="IncorrectTargetChildRoleContext" />
              <uo k="s:originTrace" v="n:116705030628862754" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5N" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="6c" role="11_B2D">
          <ref role="3uigEE" to="j80a:~IncorrectTargetChildRoleContext" resolve="IncorrectTargetChildRoleContext" />
          <uo k="s:originTrace" v="n:116705030628862754" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A" role="jymVt">
      <uo k="s:originTrace" v="n:116705030628862225" />
    </node>
    <node concept="3Tm1VV" id="5B" role="1B3o_S">
      <uo k="s:originTrace" v="n:116705030628862225" />
    </node>
    <node concept="Wx3nA" id="5C" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:116705030628862225" />
      <node concept="3uibUv" id="6d" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:116705030628862225" />
        <node concept="3uibUv" id="6g" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:116705030628862225" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6e" role="1B3o_S">
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="2YIFZM" id="6f" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:116705030628862225" />
        <node concept="2YIFZM" id="6h" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:116705030628862225" />
          <node concept="3uibUv" id="6i" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:116705030628862225" />
          </node>
          <node concept="37vLTw" id="6j" role="37wK5m">
            <ref role="3cqZAo" node="5_" resolve="MSGPROVIDER_WhenChildRoleHasIncompatibleTargetConcept_cxdcuc_a" />
            <uo k="s:originTrace" v="n:116705030628862225" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5D" role="jymVt">
      <uo k="s:originTrace" v="n:116705030628862225" />
    </node>
    <node concept="3clFbW" id="5E" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:116705030628862225" />
      <node concept="3cqZAl" id="6k" role="3clF45">
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="3Tm1VV" id="6l" role="1B3o_S">
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="3clFbS" id="6m" role="3clF47">
        <uo k="s:originTrace" v="n:116705030628862225" />
        <node concept="XkiVB" id="6n" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:116705030628862225" />
          <node concept="37vLTw" id="6o" role="37wK5m">
            <ref role="3cqZAo" node="5z" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:116705030628862225" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5F" role="jymVt">
      <uo k="s:originTrace" v="n:116705030628862225" />
    </node>
    <node concept="3clFb_" id="5G" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:116705030628862225" />
      <node concept="3uibUv" id="6p" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:116705030628862225" />
        <node concept="3uibUv" id="6u" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:116705030628862225" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6q" role="1B3o_S">
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="3clFbS" id="6r" role="3clF47">
        <uo k="s:originTrace" v="n:116705030628862225" />
        <node concept="3cpWs6" id="6v" role="3cqZAp">
          <uo k="s:originTrace" v="n:116705030628862225" />
          <node concept="2OqwBi" id="6w" role="3cqZAk">
            <uo k="s:originTrace" v="n:116705030628862225" />
            <node concept="37vLTw" id="6x" role="2Oq$k0">
              <ref role="3cqZAo" node="5C" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:116705030628862225" />
            </node>
            <node concept="liA8E" id="6y" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:116705030628862225" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6s" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
      <node concept="2AHcQZ" id="6t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:116705030628862225" />
      </node>
    </node>
    <node concept="3uibUv" id="5H" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:116705030628862225" />
    </node>
  </node>
  <node concept="312cEu" id="6z">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="TestConcept_FeedbackFeedback" />
    <uo k="s:originTrace" v="n:5983615114019032371" />
    <node concept="Wx3nA" id="6$" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:5983615114019032371" />
      <node concept="3Tm6S6" id="6K" role="1B3o_S">
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="35c_gC" id="6L" role="33vP2m">
        <ref role="35c_gD" to="pljn:5ca4zTvKOOO" resolve="TestConcept" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="3uibUv" id="6M" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
    </node>
    <node concept="2tJIrI" id="6_" role="jymVt">
      <uo k="s:originTrace" v="n:5983615114019032371" />
    </node>
    <node concept="Wx3nA" id="6A" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenPropertyConstraintFails_pavl6x_a" />
      <uo k="s:originTrace" v="n:7716791493893652418" />
      <node concept="3Tm6S6" id="6N" role="1B3o_S" />
      <node concept="2ShNRf" id="6O" role="33vP2m">
        <node concept="YeOm9" id="6Q" role="2ShVmc">
          <node concept="1Y3b0j" id="6R" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="6S" role="37wK5m">
              <uo k="s:originTrace" v="n:7716791493893662507" />
              <node concept="1pGfFk" id="6W" role="2ShVmc">
                <ref role="37wK5l" to="j809:~FailingPropertyConstraintProblemId.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="FailingPropertyConstraintProblemId" />
                <uo k="s:originTrace" v="n:7716791493893662507" />
                <node concept="1BaE9c" id="6X" role="37wK5m">
                  <property role="1ouuDV" value="PROPS" />
                  <property role="1BaxDp" value="prop$FBgM" />
                  <uo k="s:originTrace" v="n:7716791493893662507" />
                  <node concept="2YIFZM" id="6Y" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <uo k="s:originTrace" v="n:7716791493893662507" />
                    <node concept="11gdke" id="6Z" role="37wK5m">
                      <property role="11gdj1" value="7cf7c95bc81e4da9L" />
                      <uo k="s:originTrace" v="n:7716791493893662507" />
                    </node>
                    <node concept="11gdke" id="70" role="37wK5m">
                      <property role="11gdj1" value="a05645e480a7abd3L" />
                      <uo k="s:originTrace" v="n:7716791493893662507" />
                    </node>
                    <node concept="11gdke" id="71" role="37wK5m">
                      <property role="11gdj1" value="530a123e5fc34d34L" />
                      <uo k="s:originTrace" v="n:7716791493893662507" />
                    </node>
                    <node concept="11gdke" id="72" role="37wK5m">
                      <property role="11gdj1" value="50310db2af989958L" />
                      <uo k="s:originTrace" v="n:7716791493893662507" />
                    </node>
                    <node concept="Xl_RD" id="73" role="37wK5m">
                      <property role="Xl_RC" value="prop" />
                      <uo k="s:originTrace" v="n:7716791493893662507" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="6T" role="1B3o_S" />
            <node concept="3clFb_" id="6U" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="74" role="1B3o_S" />
              <node concept="2AHcQZ" id="75" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="76" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="77" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="7a" role="1tU5fm">
                  <ref role="3uigEE" to="j809:~FailingPropertyConstraintContext" resolve="FailingPropertyConstraintContext" />
                  <uo k="s:originTrace" v="n:7716791493893662507" />
                </node>
              </node>
              <node concept="3clFbS" id="78" role="3clF47">
                <node concept="3cpWs6" id="7b" role="3cqZAp">
                  <node concept="1rXfSq" id="7c" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="7d" role="37wK5m">
                      <property role="Xl_RC" value="Property constraints are broken for the property %s  " />
                    </node>
                    <node concept="2OqwBi" id="7e" role="37wK5m">
                      <uo k="s:originTrace" v="n:2716118816016477693" />
                      <node concept="37vLTw" id="7f" role="2Oq$k0">
                        <ref role="3cqZAo" node="77" resolve="context" />
                      </node>
                      <node concept="liA8E" id="7g" role="2OqNvi">
                        <ref role="37wK5l" to="j809:~FailingPropertyConstraintContext.getProperty()" resolve="getProperty" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="79" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="6V" role="2Ghqu4">
              <ref role="3uigEE" to="j809:~FailingPropertyConstraintContext" resolve="FailingPropertyConstraintContext" />
              <uo k="s:originTrace" v="n:7716791493893662507" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6P" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="7h" role="11_B2D">
          <ref role="3uigEE" to="j809:~FailingPropertyConstraintContext" resolve="FailingPropertyConstraintContext" />
          <uo k="s:originTrace" v="n:7716791493893662507" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6B" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenReferenceIsOutOfScope_pavl6x_b" />
      <uo k="s:originTrace" v="n:1592627013225928838" />
      <node concept="3Tm6S6" id="7i" role="1B3o_S" />
      <node concept="2ShNRf" id="7j" role="33vP2m">
        <node concept="YeOm9" id="7l" role="2ShVmc">
          <node concept="1Y3b0j" id="7m" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80b:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80b:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="7n" role="37wK5m">
              <uo k="s:originTrace" v="n:1592627013225958137" />
              <node concept="1pGfFk" id="7r" role="2ShVmc">
                <ref role="37wK5l" to="j809:~RefOutOfScopeProblemId.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="RefOutOfScopeProblemId" />
                <uo k="s:originTrace" v="n:1592627013225958137" />
                <node concept="1BaE9c" id="7s" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="link$t661" />
                  <uo k="s:originTrace" v="n:1592627013225958137" />
                  <node concept="2YIFZM" id="7t" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <uo k="s:originTrace" v="n:1592627013225958137" />
                    <node concept="11gdke" id="7u" role="37wK5m">
                      <property role="11gdj1" value="7cf7c95bc81e4da9L" />
                      <uo k="s:originTrace" v="n:1592627013225958137" />
                    </node>
                    <node concept="11gdke" id="7v" role="37wK5m">
                      <property role="11gdj1" value="a05645e480a7abd3L" />
                      <uo k="s:originTrace" v="n:1592627013225958137" />
                    </node>
                    <node concept="11gdke" id="7w" role="37wK5m">
                      <property role="11gdj1" value="530a123e5fc34d34L" />
                      <uo k="s:originTrace" v="n:1592627013225958137" />
                    </node>
                    <node concept="11gdke" id="7x" role="37wK5m">
                      <property role="11gdj1" value="161a25d497067a9eL" />
                      <uo k="s:originTrace" v="n:1592627013225958137" />
                    </node>
                    <node concept="Xl_RD" id="7y" role="37wK5m">
                      <property role="Xl_RC" value="link" />
                      <uo k="s:originTrace" v="n:1592627013225958137" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="7o" role="1B3o_S" />
            <node concept="3clFb_" id="7p" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="7z" role="1B3o_S" />
              <node concept="2AHcQZ" id="7$" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7_" role="3clF45">
                <ref role="3uigEE" to="j80b:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="7A" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="7D" role="1tU5fm">
                  <ref role="3uigEE" to="j809:~RefOutOfScopeContext" resolve="RefOutOfScopeContext" />
                  <uo k="s:originTrace" v="n:1592627013225958137" />
                </node>
              </node>
              <node concept="3clFbS" id="7B" role="3clF47">
                <node concept="3cpWs6" id="7E" role="3cqZAp">
                  <node concept="1rXfSq" id="7F" role="3cqZAk">
                    <ref role="37wK5l" to="j80b:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="7G" role="37wK5m">
                      <property role="Xl_RC" value="Reference is out of scope: can not found the link '%s' in the node %s" />
                    </node>
                    <node concept="2OqwBi" id="7H" role="37wK5m">
                      <uo k="s:originTrace" v="n:2716118816016477708" />
                      <node concept="37vLTw" id="7J" role="2Oq$k0">
                        <ref role="3cqZAo" node="7A" resolve="context" />
                      </node>
                      <node concept="liA8E" id="7K" role="2OqNvi">
                        <ref role="37wK5l" to="j809:~RefOutOfScopeContext.getLink()" resolve="getLink" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7I" role="37wK5m">
                      <uo k="s:originTrace" v="n:2716118816016477728" />
                      <node concept="37vLTw" id="7L" role="2Oq$k0">
                        <ref role="3cqZAo" node="7A" resolve="context" />
                      </node>
                      <node concept="liA8E" id="7M" role="2OqNvi">
                        <ref role="37wK5l" to="j809:~RefOutOfScopeContext.getNode()" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7C" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="7q" role="2Ghqu4">
              <ref role="3uigEE" to="j809:~RefOutOfScopeContext" resolve="RefOutOfScopeContext" />
              <uo k="s:originTrace" v="n:1592627013225958137" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7k" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="7N" role="11_B2D">
          <ref role="3uigEE" to="j809:~RefOutOfScopeContext" resolve="RefOutOfScopeContext" />
          <uo k="s:originTrace" v="n:1592627013225958137" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6C" role="jymVt">
      <uo k="s:originTrace" v="n:5983615114019032371" />
    </node>
    <node concept="3Tm1VV" id="6D" role="1B3o_S">
      <uo k="s:originTrace" v="n:5983615114019032371" />
    </node>
    <node concept="Wx3nA" id="6E" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:5983615114019032371" />
      <node concept="3uibUv" id="7O" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
        <node concept="3uibUv" id="7R" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:5983615114019032371" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7P" role="1B3o_S">
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="2YIFZM" id="7Q" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
        <node concept="2YIFZM" id="7S" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:5983615114019032371" />
          <node concept="3uibUv" id="7T" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:5983615114019032371" />
          </node>
          <node concept="37vLTw" id="7U" role="37wK5m">
            <ref role="3cqZAo" node="6A" resolve="MSGPROVIDER_WhenPropertyConstraintFails_pavl6x_a" />
            <uo k="s:originTrace" v="n:5983615114019032371" />
          </node>
          <node concept="37vLTw" id="7V" role="37wK5m">
            <ref role="3cqZAo" node="6B" resolve="MSGPROVIDER_WhenReferenceIsOutOfScope_pavl6x_b" />
            <uo k="s:originTrace" v="n:5983615114019032371" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6F" role="jymVt">
      <uo k="s:originTrace" v="n:5983615114019032371" />
    </node>
    <node concept="3clFbW" id="6G" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:5983615114019032371" />
      <node concept="3cqZAl" id="7W" role="3clF45">
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="3Tm1VV" id="7X" role="1B3o_S">
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="3clFbS" id="7Y" role="3clF47">
        <uo k="s:originTrace" v="n:5983615114019032371" />
        <node concept="XkiVB" id="7Z" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:5983615114019032371" />
          <node concept="37vLTw" id="80" role="37wK5m">
            <ref role="3cqZAo" node="6$" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:5983615114019032371" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6H" role="jymVt">
      <uo k="s:originTrace" v="n:5983615114019032371" />
    </node>
    <node concept="3clFb_" id="6I" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:5983615114019032371" />
      <node concept="3uibUv" id="81" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
        <node concept="3uibUv" id="86" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:5983615114019032371" />
        </node>
      </node>
      <node concept="3Tm1VV" id="82" role="1B3o_S">
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="3clFbS" id="83" role="3clF47">
        <uo k="s:originTrace" v="n:5983615114019032371" />
        <node concept="3cpWs6" id="87" role="3cqZAp">
          <uo k="s:originTrace" v="n:5983615114019032371" />
          <node concept="2OqwBi" id="88" role="3cqZAk">
            <uo k="s:originTrace" v="n:5983615114019032371" />
            <node concept="37vLTw" id="89" role="2Oq$k0">
              <ref role="3cqZAo" node="6E" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:5983615114019032371" />
            </node>
            <node concept="liA8E" id="8a" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:5983615114019032371" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="84" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
      <node concept="2AHcQZ" id="85" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:5983615114019032371" />
      </node>
    </node>
    <node concept="3uibUv" id="6J" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:5983615114019032371" />
    </node>
  </node>
</model>

