<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c9a0254-28cb-4041-adae-094f9953a599(jetbrains.mps.baseLanguage.math.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="n7yi" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells.optional(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4KDfkUwMiA0">
    <property role="TrG5h" value="HLineCellProvider" />
    <node concept="3Tm1VV" id="4KDfkUwMiA4" role="1B3o_S" />
    <node concept="3uibUv" id="4KDfkUwMiAh" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
    </node>
    <node concept="3clFbW" id="4KDfkUwMiA5" role="jymVt">
      <node concept="37vLTG" id="4KDfkUwMiA6" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4KDfkUwMiA7" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4KDfkUwMiA8" role="3clF45" />
      <node concept="3Tm1VV" id="4KDfkUwMiA9" role="1B3o_S" />
      <node concept="3clFbS" id="4KDfkUwMiAa" role="3clF47">
        <node concept="XkiVB" id="2QrBrRZVDhd" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
          <node concept="37vLTw" id="2QrBrRZVDmp" role="37wK5m">
            <ref role="3cqZAo" node="4KDfkUwMiA6" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QrBrRZVGYt" role="jymVt" />
    <node concept="3clFb_" id="4KDfkUwMiAi" role="jymVt">
      <property role="TrG5h" value="createEditorCell" />
      <node concept="3Tm1VV" id="4KDfkUwMiAj" role="1B3o_S" />
      <node concept="3uibUv" id="4KDfkUwMiAk" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="4KDfkUwMiAl" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2gWr_l5XTc9" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4KDfkUwMiAn" role="3clF47">
        <node concept="3cpWs8" id="4KDfkUwMiAo" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwMiAp" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4KDfkUwMiAq" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
            </node>
            <node concept="2ShNRf" id="4KDfkUwMiAr" role="33vP2m">
              <node concept="YeOm9" id="4KDfkUwMiAs" role="2ShVmc">
                <node concept="1Y3b0j" id="4KDfkUwMiAt" role="YeSDq">
                  <ref role="1Y3XeK" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="EditorCell_Basic" />
                  <node concept="3Tm1VV" id="4KDfkUwMiAu" role="1B3o_S" />
                  <node concept="37vLTw" id="2BHiRxgmf2E" role="37wK5m">
                    <ref role="3cqZAo" node="4KDfkUwMiAl" resolve="context" />
                  </node>
                  <node concept="1rXfSq" id="2QrBrRZVFcF" role="37wK5m">
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.getSNode()" resolve="getSNode" />
                  </node>
                  <node concept="3clFb_" id="4KDfkUwMiAv" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="paintContent" />
                    <node concept="3Tmbuc" id="6Hn0Uorz15N" role="1B3o_S" />
                    <node concept="3cqZAl" id="4KDfkUwMiAx" role="3clF45" />
                    <node concept="37vLTG" id="4KDfkUwMiAy" role="3clF46">
                      <property role="TrG5h" value="g" />
                      <node concept="3uibUv" id="4KDfkUwMiAz" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="4KDfkUwMiA$" role="3clF46">
                      <property role="TrG5h" value="parentSettings" />
                      <node concept="3uibUv" id="4KDfkUwMiA_" role="1tU5fm">
                        <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4KDfkUwMiAA" role="3clF47">
                      <node concept="3clFbF" id="558cVyjiQ6j" role="3cqZAp">
                        <node concept="2OqwBi" id="558cVyjiQ6l" role="3clFbG">
                          <node concept="37vLTw" id="558cVyjiQ6o" role="2Oq$k0">
                            <ref role="3cqZAo" node="4KDfkUwMiAy" resolve="g" />
                          </node>
                          <node concept="liA8E" id="558cVyjiQ6p" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                            <node concept="2OqwBi" id="558cVyjiQ6q" role="37wK5m">
                              <node concept="2OqwBi" id="558cVyjiQ6t" role="2Oq$k0">
                                <node concept="Xjq3P" id="558cVyjiQ6w" role="2Oq$k0" />
                                <node concept="liA8E" id="558cVyjiQ6x" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
                                </node>
                              </node>
                              <node concept="liA8E" id="558cVyjiQ6y" role="2OqNvi">
                                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                                <node concept="10M0yZ" id="558cVyjiQ6z" role="37wK5m">
                                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="4KDfkUwMiAV" role="3cqZAp">
                        <node concept="3cpWsn" id="4KDfkUwMiAW" role="3cpWs9">
                          <property role="TrG5h" value="x" />
                          <node concept="10Oyi0" id="4KDfkUwMiAX" role="1tU5fm" />
                          <node concept="2OqwBi" id="4KDfkUwMiAY" role="33vP2m">
                            <node concept="2OqwBi" id="4KDfkUwMiAZ" role="2Oq$k0">
                              <node concept="liA8E" id="4KDfkUwMiB0" role="2OqNvi">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getParent()" resolve="getParent" />
                              </node>
                              <node concept="Xjq3P" id="4KDfkUwMiB1" role="2Oq$k0" />
                            </node>
                            <node concept="liA8E" id="4KDfkUwMiB2" role="2OqNvi">
                              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="4KDfkUwMiB3" role="3cqZAp">
                        <node concept="3cpWsn" id="4KDfkUwMiB4" role="3cpWs9">
                          <property role="TrG5h" value="width" />
                          <node concept="10Oyi0" id="4KDfkUwMiB5" role="1tU5fm" />
                          <node concept="2OqwBi" id="4KDfkUwMiB6" role="33vP2m">
                            <node concept="2OqwBi" id="4KDfkUwMiB7" role="2Oq$k0">
                              <node concept="liA8E" id="4KDfkUwMiB8" role="2OqNvi">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getParent()" resolve="getParent" />
                              </node>
                              <node concept="Xjq3P" id="4KDfkUwMiB9" role="2Oq$k0" />
                            </node>
                            <node concept="liA8E" id="4KDfkUwMiBa" role="2OqNvi">
                              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4KDfkUwMiBb" role="3cqZAp">
                        <node concept="2OqwBi" id="4KDfkUwMiBc" role="3clFbG">
                          <node concept="liA8E" id="4KDfkUwMiBd" role="2OqNvi">
                            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int)" resolve="setWidth" />
                            <node concept="37vLTw" id="3GM_nagT_k0" role="37wK5m">
                              <ref role="3cqZAo" node="4KDfkUwMiB4" resolve="width" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="4KDfkUwMiBf" role="2Oq$k0" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="4KDfkUwMiBg" role="3cqZAp">
                        <node concept="2OqwBi" id="4KDfkUwMiBh" role="3clFbG">
                          <node concept="liA8E" id="4KDfkUwMiBi" role="2OqNvi">
                            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setX(int)" resolve="setX" />
                            <node concept="37vLTw" id="3GM_nagTzN4" role="37wK5m">
                              <ref role="3cqZAo" node="4KDfkUwMiAW" resolve="x" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="4KDfkUwMiBk" role="2Oq$k0" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="4KDfkUwMiBl" role="3cqZAp">
                        <node concept="2OqwBi" id="4KDfkUwMiBm" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgmbrQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="4KDfkUwMiAy" resolve="g" />
                          </node>
                          <node concept="liA8E" id="4KDfkUwMiBo" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                            <node concept="37vLTw" id="3GM_nagTw1u" role="37wK5m">
                              <ref role="3cqZAo" node="4KDfkUwMiAW" resolve="x" />
                            </node>
                            <node concept="3cpWs3" id="4KDfkUwMiBq" role="37wK5m">
                              <node concept="2OqwBi" id="4KDfkUwMiBr" role="3uHU7B">
                                <node concept="liA8E" id="4KDfkUwMiBs" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY()" resolve="getY" />
                                </node>
                                <node concept="Xjq3P" id="4KDfkUwMiBt" role="2Oq$k0" />
                              </node>
                              <node concept="3cmrfG" id="4KDfkUwMiBu" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3GM_nagTrU9" role="37wK5m">
                              <ref role="3cqZAo" node="4KDfkUwMiB4" resolve="width" />
                            </node>
                            <node concept="3cmrfG" id="4KDfkUwMiBw" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_S05W" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="4KDfkUwMiBx" role="jymVt">
                    <property role="TrG5h" value="getAscent" />
                    <node concept="3Tm1VV" id="4KDfkUwMiBy" role="1B3o_S" />
                    <node concept="10Oyi0" id="4KDfkUwMiBz" role="3clF45" />
                    <node concept="3clFbS" id="4KDfkUwMiB$" role="3clF47">
                      <node concept="3cpWs6" id="4KDfkUwMiB_" role="3cqZAp">
                        <node concept="FJ1c_" id="4KDfkUwMiBA" role="3cqZAk">
                          <node concept="3cmrfG" id="4KDfkUwMiBB" role="3uHU7w">
                            <property role="3cmrfH" value="4" />
                          </node>
                          <node concept="2OqwBi" id="4KDfkUwMiBC" role="3uHU7B">
                            <node concept="2YIFZM" id="6W_QSQ8u7Fe" role="2Oq$k0">
                              <ref role="37wK5l" to="f4zo:~CellTraversalUtil.getPrevLeaf(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getPrevLeaf" />
                              <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
                              <node concept="Xjq3P" id="6W_QSQ8u8oz" role="37wK5m" />
                            </node>
                            <node concept="liA8E" id="4KDfkUwMiBG" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_S062" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="4KDfkUwMiBH" role="jymVt">
                    <property role="TrG5h" value="relayoutImpl" />
                    <node concept="3cqZAl" id="4KDfkUwMiBI" role="3clF45" />
                    <node concept="3Tm1VV" id="4KDfkUwMiBJ" role="1B3o_S" />
                    <node concept="3clFbS" id="4KDfkUwMiBK" role="3clF47">
                      <node concept="3clFbF" id="4KDfkUwMiBL" role="3cqZAp">
                        <node concept="37vLTI" id="4KDfkUwMiBM" role="3clFbG">
                          <node concept="3cmrfG" id="4KDfkUwMiBN" role="37vLTx">
                            <property role="3cmrfH" value="20" />
                          </node>
                          <node concept="2OqwBi" id="4KDfkUwMiBO" role="37vLTJ">
                            <node concept="2OwXpG" id="4KDfkUwMiBP" role="2OqNvi">
                              <ref role="2Oxat5" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
                            </node>
                            <node concept="Xjq3P" id="4KDfkUwMiBQ" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4KDfkUwMiBR" role="3cqZAp">
                        <node concept="37vLTI" id="4KDfkUwMiBS" role="3clFbG">
                          <node concept="2OqwBi" id="4KDfkUwMiBT" role="37vLTJ">
                            <node concept="2OwXpG" id="4KDfkUwMiBU" role="2OqNvi">
                              <ref role="2Oxat5" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
                            </node>
                            <node concept="Xjq3P" id="4KDfkUwMiBV" role="2Oq$k0" />
                          </node>
                          <node concept="3cmrfG" id="4KDfkUwMiBW" role="37vLTx">
                            <property role="3cmrfH" value="3" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_S066" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4KDfkUwMiC1" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTxPE" role="3cqZAk">
            <ref role="3cqZAo" node="4KDfkUwMiAp" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUoz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4KDfkUwMiC3">
    <property role="TrG5h" value="EditorCell_VerticalLine" />
    <node concept="3Tm1VV" id="4KDfkUwMiDC" role="1B3o_S" />
    <node concept="3uibUv" id="4KDfkUwMiDO" role="1zkMxy">
      <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
    </node>
    <node concept="3clFbW" id="4KDfkUwMiDD" role="jymVt">
      <node concept="3cqZAl" id="4KDfkUwMiDE" role="3clF45" />
      <node concept="3Tm1VV" id="4KDfkUwMiDF" role="1B3o_S" />
      <node concept="3clFbS" id="4KDfkUwMiDG" role="3clF47">
        <node concept="XkiVB" id="4KDfkUwMiDH" role="3cqZAp">
          <ref role="37wK5l" to="g51k:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="EditorCell_Basic" />
          <node concept="37vLTw" id="2BHiRxgm9R4" role="37wK5m">
            <ref role="3cqZAo" node="4KDfkUwMiDK" resolve="context" />
          </node>
          <node concept="37vLTw" id="2BHiRxgm6W5" role="37wK5m">
            <ref role="3cqZAo" node="4KDfkUwMiDM" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4KDfkUwMiDK" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2gWr_l5XKVT" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4KDfkUwMiDM" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4KDfkUwMiDN" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="WuSeI5na6p" role="jymVt" />
    <node concept="3clFb_" id="4KDfkUwMiC4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintContent" />
      <node concept="3Tmbuc" id="4SLnS7LbGs_" role="1B3o_S" />
      <node concept="3cqZAl" id="4KDfkUwMiC6" role="3clF45" />
      <node concept="37vLTG" id="4KDfkUwMiC7" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="4KDfkUwMiC8" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="4KDfkUwMiC9" role="3clF46">
        <property role="TrG5h" value="parentSettings" />
        <node concept="3uibUv" id="4KDfkUwMiCa" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
        </node>
      </node>
      <node concept="3clFbS" id="4KDfkUwMiCb" role="3clF47">
        <node concept="3clFbJ" id="4KDfkUwMiCc" role="3cqZAp">
          <node concept="3clFbS" id="4KDfkUwMiCd" role="3clFbx">
            <node concept="3clFbF" id="4KDfkUwMiCe" role="3cqZAp">
              <node concept="2OqwBi" id="4KDfkUwMiCf" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm_sc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KDfkUwMiC7" resolve="g" />
                </node>
                <node concept="liA8E" id="4KDfkUwMiCh" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="2OqwBi" id="558cVyjiUPR" role="37wK5m">
                    <node concept="2OqwBi" id="558cVyjiUPU" role="2Oq$k0">
                      <node concept="Xjq3P" id="558cVyjiUPX" role="2Oq$k0" />
                      <node concept="liA8E" id="558cVyjiUPY" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
                      </node>
                    </node>
                    <node concept="liA8E" id="558cVyjiUPZ" role="2OqNvi">
                      <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                      <node concept="10M0yZ" id="558cVyjiUQ0" role="37wK5m">
                        <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                        <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KDfkUwMiCj" role="3cqZAp">
              <node concept="3cpWsn" id="4KDfkUwMiCk" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3uibUv" id="4KDfkUwMiCl" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                </node>
                <node concept="2OqwBi" id="4KDfkUwMiCm" role="33vP2m">
                  <node concept="liA8E" id="4KDfkUwMiCn" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getParent()" resolve="getParent" />
                  </node>
                  <node concept="Xjq3P" id="4KDfkUwMiCo" role="2Oq$k0" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KDfkUwMiCp" role="3cqZAp">
              <node concept="3cpWsn" id="4KDfkUwMiCq" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <node concept="10Oyi0" id="4KDfkUwMiCr" role="1tU5fm" />
                <node concept="2OqwBi" id="4KDfkUwMiCs" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTvdt" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KDfkUwMiCk" resolve="parent" />
                  </node>
                  <node concept="liA8E" id="4KDfkUwMiCu" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KDfkUwMiCv" role="3cqZAp">
              <node concept="3cpWsn" id="4KDfkUwMiCw" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <node concept="10Oyi0" id="4KDfkUwMiCx" role="1tU5fm" />
                <node concept="2OqwBi" id="4KDfkUwMiCy" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTuxZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KDfkUwMiCk" resolve="parent" />
                  </node>
                  <node concept="liA8E" id="4KDfkUwMiC$" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KDfkUwMiC_" role="3cqZAp">
              <node concept="3cpWsn" id="4KDfkUwMiCA" role="3cpWs9">
                <property role="TrG5h" value="width" />
                <node concept="10Oyi0" id="4KDfkUwMiCB" role="1tU5fm" />
                <node concept="2OqwBi" id="4KDfkUwMiCC" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTtAe" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KDfkUwMiCk" resolve="parent" />
                  </node>
                  <node concept="liA8E" id="4KDfkUwMiCE" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KDfkUwMiCF" role="3cqZAp">
              <node concept="3cpWsn" id="4KDfkUwMiCG" role="3cpWs9">
                <property role="TrG5h" value="height" />
                <node concept="10Oyi0" id="4KDfkUwMiCH" role="1tU5fm" />
                <node concept="2OqwBi" id="4KDfkUwMiCI" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTuGT" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KDfkUwMiCk" resolve="parent" />
                  </node>
                  <node concept="liA8E" id="4KDfkUwMiCK" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4KDfkUwMiCL" role="3cqZAp">
              <node concept="2OqwBi" id="4KDfkUwMiCM" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglEkx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KDfkUwMiC7" resolve="g" />
                </node>
                <node concept="liA8E" id="4KDfkUwMiCO" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                  <node concept="3cpWs3" id="4KDfkUwMiCP" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTAdi" role="3uHU7w">
                      <ref role="3cqZAo" node="4KDfkUwMiCA" resolve="width" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTyHD" role="3uHU7B">
                      <ref role="3cqZAo" node="4KDfkUwMiCq" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTBaN" role="37wK5m">
                    <ref role="3cqZAo" node="4KDfkUwMiCw" resolve="y" />
                  </node>
                  <node concept="3cmrfG" id="4KDfkUwMiCT" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT$aX" role="37wK5m">
                    <ref role="3cqZAo" node="4KDfkUwMiCG" resolve="height" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4KDfkUwMiCV" role="3cqZAp">
              <node concept="2OqwBi" id="4KDfkUwMiCW" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgmanc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KDfkUwMiC7" resolve="g" />
                </node>
                <node concept="liA8E" id="4KDfkUwMiCY" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                  <node concept="37vLTw" id="3GM_nagTuM2" role="37wK5m">
                    <ref role="3cqZAo" node="4KDfkUwMiCq" resolve="x" />
                  </node>
                  <node concept="3cpWs3" id="4KDfkUwMiD0" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTwWX" role="3uHU7B">
                      <ref role="3cqZAo" node="4KDfkUwMiCw" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTzP_" role="3uHU7w">
                      <ref role="3cqZAo" node="4KDfkUwMiCG" resolve="height" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTxAQ" role="37wK5m">
                    <ref role="3cqZAo" node="4KDfkUwMiCA" resolve="width" />
                  </node>
                  <node concept="3cmrfG" id="4KDfkUwMiD4" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4KDfkUwMiD5" role="3clFbw">
            <node concept="liA8E" id="4KDfkUwMiD6" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.isSelected()" resolve="isSelected" />
            </node>
            <node concept="Xjq3P" id="4KDfkUwMiD7" role="2Oq$k0" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sd7s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="WuSeI5n9wC" role="jymVt" />
    <node concept="3clFb_" id="4KDfkUwMiDl" role="jymVt">
      <property role="TrG5h" value="relayoutImpl" />
      <node concept="3cqZAl" id="4KDfkUwMiDm" role="3clF45" />
      <node concept="3Tm1VV" id="4KDfkUwMiDn" role="1B3o_S" />
      <node concept="3clFbS" id="4KDfkUwMiDo" role="3clF47">
        <node concept="3clFbF" id="4KDfkUwMiDp" role="3cqZAp">
          <node concept="37vLTI" id="4KDfkUwMiDq" role="3clFbG">
            <node concept="2OqwBi" id="4KDfkUwMiDr" role="37vLTJ">
              <node concept="2OwXpG" id="4KDfkUwMiDs" role="2OqNvi">
                <ref role="2Oxat5" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
              </node>
              <node concept="Xjq3P" id="4KDfkUwMiDt" role="2Oq$k0" />
            </node>
            <node concept="3cmrfG" id="4KDfkUwMiDu" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KDfkUwMiDv" role="3cqZAp">
          <node concept="37vLTI" id="4KDfkUwMiDw" role="3clFbG">
            <node concept="2OqwBi" id="4KDfkUwMiDx" role="37vLTJ">
              <node concept="2OwXpG" id="4KDfkUwMiDy" role="2OqNvi">
                <ref role="2Oxat5" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
              </node>
              <node concept="Xjq3P" id="4KDfkUwMiDz" role="2Oq$k0" />
            </node>
            <node concept="3cmrfG" id="4KDfkUwMiD$" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sd7t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4KDfkUwMiDP">
    <property role="TrG5h" value="VLineCellProvider" />
    <node concept="3Tm1VV" id="4KDfkUwMiDT" role="1B3o_S" />
    <node concept="3uibUv" id="4KDfkUwMiE6" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
    </node>
    <node concept="3clFbW" id="4KDfkUwMiDU" role="jymVt">
      <node concept="37vLTG" id="4KDfkUwMiDV" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4KDfkUwMiDW" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4KDfkUwMiDX" role="3clF45" />
      <node concept="3Tm1VV" id="4KDfkUwMiDY" role="1B3o_S" />
      <node concept="3clFbS" id="4KDfkUwMiDZ" role="3clF47">
        <node concept="XkiVB" id="2QrBrRZVKrb" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
          <node concept="37vLTw" id="2QrBrRZVKtS" role="37wK5m">
            <ref role="3cqZAo" node="4KDfkUwMiDV" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4KDfkUwMiE7" role="jymVt">
      <property role="TrG5h" value="createEditorCell" />
      <node concept="3Tm1VV" id="4KDfkUwMiE8" role="1B3o_S" />
      <node concept="3uibUv" id="4KDfkUwMiE9" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="4KDfkUwMiEa" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2gWr_l5XT33" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4KDfkUwMiEc" role="3clF47">
        <node concept="3cpWs6" id="4KDfkUwMiEd" role="3cqZAp">
          <node concept="2ShNRf" id="4KDfkUwMiEe" role="3cqZAk">
            <node concept="1pGfFk" id="4KDfkUwMiEf" role="2ShVmc">
              <ref role="37wK5l" node="4KDfkUwMiDD" resolve="EditorCell_VerticalLine" />
              <node concept="37vLTw" id="2BHiRxgm8RC" role="37wK5m">
                <ref role="3cqZAo" node="4KDfkUwMiEa" resolve="context" />
              </node>
              <node concept="1rXfSq" id="2QrBrRZVKRk" role="37wK5m">
                <ref role="37wK5l" to="exr9:~AbstractCellProvider.getSNode()" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Slu4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

