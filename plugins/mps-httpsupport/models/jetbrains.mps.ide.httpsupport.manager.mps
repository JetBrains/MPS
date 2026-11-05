<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4f311e3a-83a9-4138-8c56-4228082416a9(jetbrains.mps.ide.httpsupport.manager)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="e5vs" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.ide(MPS.IDEA/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
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
  <node concept="3HP615" id="37EBbA_IMIi">
    <property role="TrG5h" value="MPSIntegrationPort" />
    <node concept="2tJIrI" id="37EBbA_IML4" role="jymVt" />
    <node concept="3Tm1VV" id="37EBbA_IMIj" role="1B3o_S" />
    <node concept="2YIFZL" id="3Apdfsuj$9" role="jymVt">
      <property role="TrG5h" value="getCurrentPort" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3Apdfsuj$c" role="3clF47">
        <node concept="3clFbF" id="3Apdfsuk$Y" role="3cqZAp">
          <node concept="2OqwBi" id="3ApdfsumtJ" role="3clFbG">
            <node concept="2OqwBi" id="3ApdfsulCp" role="2Oq$k0">
              <node concept="liA8E" id="3ApdfsulTQ" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionPointName.findFirstSafe(java.util.function.Predicate)" resolve="findFirstSafe" />
                <node concept="1bVj0M" id="1DWppHIY8Xx" role="37wK5m">
                  <node concept="gl6BB" id="1DWppHIY8XO" role="1bW2Oz">
                    <property role="TrG5h" value="ep" />
                    <node concept="2jxLKc" id="1DWppHIY8XP" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="1DWppHIY8XS" role="1bW5cS">
                    <node concept="3clFbF" id="1DWppHIY9eZ" role="3cqZAp">
                      <node concept="2OqwBi" id="1DWppHIYdMi" role="3clFbG">
                        <node concept="2OqwBi" id="1DWppHIYaMX" role="2Oq$k0">
                          <node concept="2OqwBi" id="1DWppHIY9n4" role="2Oq$k0">
                            <node concept="37vLTw" id="1DWppHIY9eY" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DWppHIY8XO" resolve="ep" />
                            </node>
                            <node concept="liA8E" id="1DWppHIYa7$" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1DWppHIYdcV" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Class.toString()" resolve="toString" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1DWppHIYfm2" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="1DWppHIYfRF" role="37wK5m">
                            <property role="Xl_RC" value="MPSIntegrationPortManager" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="37EBbA_J6y0" role="2Oq$k0">
                <ref role="3cqZAo" to="e5vs:~CustomPortServerManager.EP_NAME" resolve="EP_NAME" />
                <ref role="1PxDUh" to="e5vs:~CustomPortServerManager" resolve="CustomPortServerManager" />
              </node>
            </node>
            <node concept="liA8E" id="3Apdfsun3b" role="2OqNvi">
              <ref role="37wK5l" to="e5vs:~CustomPortServerManager.getPort()" resolve="getPort" />
            </node>
          </node>
          <node concept="15s5l7" id="cReD9mnTH6" role="lGtFl" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3ApdfsuhDL" role="1B3o_S" />
      <node concept="10Oyi0" id="3Apdfsuk7Y" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="37EBbA_IP$p" role="jymVt" />
  </node>
  <node concept="3HP615" id="37EBbA_INx3">
    <property role="TrG5h" value="MPSInternalPort" />
    <node concept="2tJIrI" id="37EBbA_IN$x" role="jymVt" />
    <node concept="3Tm1VV" id="37EBbA_INx4" role="1B3o_S" />
    <node concept="Wx3nA" id="3BwRxVwWbFj" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PORT_KEY" />
      <node concept="3Tm1VV" id="37EBbA_INWH" role="1B3o_S" />
      <node concept="17QB3L" id="3BwRxVwWbFh" role="1tU5fm" />
      <node concept="Xl_RD" id="3BwRxVwWbFi" role="33vP2m">
        <property role="Xl_RC" value="ide.httpsupport.internalPort" />
      </node>
    </node>
    <node concept="2tJIrI" id="37EBbA_IPd8" role="jymVt" />
    <node concept="2YIFZL" id="3BwRxVwW$fn" role="jymVt">
      <property role="TrG5h" value="getCurrentPort" />
      <node concept="3clFbS" id="3BwRxVwW$fq" role="3clF47">
        <node concept="3SKdUt" id="1IYR_$nEyTd" role="3cqZAp">
          <node concept="1PaTwC" id="1IYR_$nEyTe" role="1aUNEU">
            <node concept="3oM_SD" id="1IYR_$nEz5N" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1IYR_$nEyUB" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1IYR_$nEz5Y" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1IYR_$nEz62" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1IYR_$nExzk" role="3cqZAp">
          <node concept="3cpWsn" id="1IYR_$nExzl" role="3cpWs9">
            <property role="TrG5h" value="defaultValue" />
            <property role="3TUv4t" value="true" />
            <node concept="10Oyi0" id="1IYR_$nExub" role="1tU5fm" />
            <node concept="3cmrfG" id="1IYR_$nExzm" role="33vP2m">
              <property role="3cmrfH" value="63320" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="474XC7yvGli" role="3cqZAp">
          <node concept="1PaTwC" id="474XC7yvGC5" role="1aUNEU">
            <node concept="3oM_SD" id="474XC7yvGlU" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGlW" role="1PaTwD">
              <property role="3oM_SC" value="needed" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGm7" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGmj" role="1PaTwD">
              <property role="3oM_SC" value="http-support" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGn8" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGne" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGnt" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGnH" role="1PaTwD">
              <property role="3oM_SC" value="pure" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGo6" role="1PaTwD">
              <property role="3oM_SC" value="modules," />
            </node>
            <node concept="3oM_SD" id="474XC7yvGoC" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGpb" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGpn" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGpG" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGBa" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGDf" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="474XC7yvGEM" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGFj" role="1PaTwD">
              <property role="3oM_SC" value="generate" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGF_" role="1PaTwD">
              <property role="3oM_SC" value="task," />
            </node>
            <node concept="3oM_SD" id="474XC7yvGKo" role="1PaTwD">
              <property role="3oM_SC" value="w/o" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGKT" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGIB" role="1PaTwD">
              <property role="3oM_SC" value="platform)." />
            </node>
            <node concept="3oM_SD" id="474XC7yvGJQ" role="1PaTwD">
              <property role="3oM_SC" value="Even" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuJq" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGCN" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGCY" role="1PaTwD">
              <property role="3oM_SC" value="case," />
            </node>
            <node concept="3oM_SD" id="474XC7yvGD2" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGLr" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuKf" role="1PaTwD">
              <property role="3oM_SC" value="support" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGLY" role="1PaTwD">
              <property role="3oM_SC" value="generation" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGMM" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGNn" role="1PaTwD">
              <property role="3oM_SC" value="http-support" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGOl" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGOW" role="1PaTwD">
              <property role="3oM_SC" value="concepts," />
            </node>
            <node concept="3oM_SD" id="474XC7yvGPW" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGQ_" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGR7" role="1PaTwD">
              <property role="3oM_SC" value="MPSInternalPortManager" />
            </node>
            <node concept="3oM_SD" id="474XC7yvGUW" role="1PaTwD">
              <property role="3oM_SC" value="internally." />
            </node>
            <node concept="3oM_SD" id="474XC7yFuKX" role="1PaTwD">
              <property role="3oM_SC" value="For" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuLO" role="1PaTwD">
              <property role="3oM_SC" value="such" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuM$" role="1PaTwD">
              <property role="3oM_SC" value="cases" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuNd" role="1PaTwD">
              <property role="3oM_SC" value="returning" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuOf" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuPa" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuQ6" role="1PaTwD">
              <property role="3oM_SC" value="==" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuQV" role="1PaTwD">
              <property role="3oM_SC" value="63220" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuRT" role="1PaTwD">
              <property role="3oM_SC" value="(Regardless" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuTw" role="1PaTwD">
              <property role="3oM_SC" value="absence" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuUK" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuVL" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="474XC7yFuWN" role="1PaTwD">
              <property role="3oM_SC" value="plugins," />
            </node>
            <node concept="3oM_SD" id="474XC7yFv0B" role="1PaTwD">
              <property role="3oM_SC" value="port" />
            </node>
            <node concept="3oM_SD" id="474XC7yFv1r" role="1PaTwD">
              <property role="3oM_SC" value="key" />
            </node>
            <node concept="3oM_SD" id="474XC7yFv2g" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="474XC7yFv3m" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="474XC7yFv4d" role="1PaTwD">
              <property role="3oM_SC" value="customized" />
            </node>
            <node concept="3oM_SD" id="474XC7yFv5l" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="474XC7yFvbu" role="1PaTwD">
              <property role="3oM_SC" value="vm" />
            </node>
            <node concept="3oM_SD" id="474XC7yFveM" role="1PaTwD">
              <property role="3oM_SC" value="option" />
            </node>
            <node concept="3oM_SD" id="474XC7yFvu4" role="1PaTwD">
              <property role="3oM_SC" value="-Dide.httpsupport.internalPort)" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1IYR_$nEvWz" role="3cqZAp">
          <node concept="3clFbS" id="1IYR_$nEvW_" role="3clFbx">
            <node concept="3cpWs6" id="1IYR_$nEx4Q" role="3cqZAp">
              <node concept="37vLTw" id="1IYR_$nExzn" role="3cqZAk">
                <ref role="3cqZAo" node="1IYR_$nExzl" resolve="defaultValue" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1IYR_$nEwen" role="3clFbw">
            <node concept="10Nm6u" id="1IYR_$nEwkE" role="3uHU7w" />
            <node concept="2YIFZM" id="1IYR_$nE$UX" role="3uHU7B">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15Pz4SXRMbA" role="3cqZAp">
          <node concept="2OqwBi" id="15Pz4SXRMbC" role="3clFbG">
            <node concept="2YIFZM" id="1IYR_$nECji" role="2Oq$k0">
              <ref role="1Pybhc" to="rfhd:~RegistryManager" resolve="RegistryManager" />
              <ref role="37wK5l" to="rfhd:~RegistryManager.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="15Pz4SXRMbE" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryManager.intValue(java.lang.String,int)" resolve="intValue" />
              <node concept="37vLTw" id="37EBbA_IOOU" role="37wK5m">
                <ref role="3cqZAo" node="3BwRxVwWbFj" resolve="PORT_KEY" />
              </node>
              <node concept="37vLTw" id="1IYR_$nExzo" role="37wK5m">
                <ref role="3cqZAo" node="1IYR_$nExzl" resolve="defaultValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3BwRxVwWzXM" role="1B3o_S" />
      <node concept="10Oyi0" id="3BwRxVwW$aw" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="37EBbA_IPf6" role="jymVt" />
  </node>
</model>

