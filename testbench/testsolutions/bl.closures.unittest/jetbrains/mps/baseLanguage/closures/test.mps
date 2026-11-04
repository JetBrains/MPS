<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3d6db45f-d7e0-45ba-9835-ff824ffe21a1(jetbrains.mps.baseLanguage.closures.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tp2j" ref="r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A">
        <child id="8489045168660938517" name="errorRef" index="3lydEf" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="852155438140865198" name="allowWarnings" index="G7GLP" />
        <property id="852155438140865197" name="allowErrors" index="G7GLQ" />
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7691029917083872157" name="jetbrains.mps.lang.test.structure.IRuleReference" flags="ngI" index="2u4UPC">
        <reference id="8333855927540250453" name="declaration" index="39XzEq" />
      </concept>
      <concept id="4531408400484511853" name="jetbrains.mps.lang.test.structure.ReportErrorStatementReference" flags="ng" index="2PYRI3" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="3133179214568824809" name="jetbrains.mps.lang.text.structure.NodeWrapperElement" flags="nn" index="tu5oc">
        <child id="3133179214568824810" name="node" index="tu5of" />
      </concept>
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="hRzK5XT">
    <property role="TrG5h" value="ClosureDataFlow" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1qefOq" id="hRzK5XU" role="1SKRRt">
      <node concept="312cEu" id="hRzK5XV" role="1qenE9">
        <property role="TrG5h" value="Class2" />
        <node concept="3Tm1VV" id="hRzK5XW" role="1B3o_S" />
        <node concept="3clFbW" id="hRzK5XX" role="jymVt">
          <node concept="3cqZAl" id="hRzK5XY" role="3clF45" />
          <node concept="3Tm1VV" id="hRzK5XZ" role="1B3o_S" />
          <node concept="3clFbS" id="hRzK5Y0" role="3clF47">
            <node concept="3cpWs8" id="hRzK5Y1" role="3cqZAp">
              <node concept="3cpWsn" id="hRzK5Y2" role="3cpWs9">
                <property role="TrG5h" value="strList" />
                <node concept="_YKpA" id="hRzK5Y3" role="1tU5fm">
                  <node concept="17QB3L" id="4fkVwthkLKh" role="_ZDj9" />
                </node>
                <node concept="2ShNRf" id="hRzK5Y5" role="33vP2m">
                  <node concept="Tc6Ow" id="hRzK5Y6" role="2ShVmc">
                    <node concept="17QB3L" id="4fkVwthkLKn" role="HW$YZ" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="hRzK5Y8" role="3cqZAp">
              <node concept="3cpWsn" id="hRzK5Y9" role="3cpWs9">
                <property role="TrG5h" value="abc" />
                <node concept="17QB3L" id="4fkVwthkLKb" role="1tU5fm" />
                <node concept="Xl_RD" id="hRzK5Yb" role="33vP2m">
                  <property role="Xl_RC" value="abc" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hRzK5Yc" role="3cqZAp">
              <node concept="2OqwBi" id="hRzK5Yd" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTwU3" role="2Oq$k0">
                  <ref role="3cqZAo" node="hRzK5Y2" resolve="strList" />
                </node>
                <node concept="3zZkjj" id="hRzK5Yf" role="2OqNvi">
                  <node concept="1bVj0M" id="hRzK5Yg" role="23t8la">
                    <node concept="gl6BB" id="5W7E4fV0XX4" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XX5" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="hRzK5Yj" role="1bW5cS">
                      <node concept="3clFbF" id="hRzK5Yk" role="3cqZAp">
                        <node concept="2OqwBi" id="hRzK5Yl" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxglnCd" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XX4" resolve="it" />
                          </node>
                          <node concept="liA8E" id="hRzK5Yn" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="3GM_nagTvzw" role="37wK5m">
                              <ref role="3cqZAo" node="hRzK5Y9" resolve="abc" />
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
          <node concept="3xLA65" id="hRzK5Yp" role="lGtFl">
            <property role="TrG5h" value="method" />
          </node>
          <node concept="7CXmI" id="2aQPn0Pn8xN" role="lGtFl">
            <node concept="7OXhh" id="2aQPn0Pn8xO" role="7EUXB">
              <property role="GvXf4" value="false" />
              <property role="G7GLQ" value="false" />
              <property role="G7GLP" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="hRzK5Yq" role="1SL9yI">
      <property role="TrG5h" value="ClosureDataFlow" />
      <node concept="3cqZAl" id="hRzK5Yr" role="3clF45" />
      <node concept="3clFbS" id="hRzK5Ys" role="3clF47">
        <node concept="3SKdUt" id="2aQPn0Pn8xP" role="3cqZAp">
          <node concept="1PaTwC" id="2aQPn0Pn8xQ" role="1aUNEU">
            <node concept="3oM_SD" id="2aQPn0Pn8xR" role="1PaTwD">
              <property role="3oM_SC" value="Check" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8xS" role="1PaTwD">
              <property role="3oM_SC" value="statement" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8xT" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8xU" role="1PaTwD">
              <property role="3oM_SC" value="moved" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8xV" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8xW" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8xX" role="1PaTwD">
              <property role="3oM_SC" value="annotation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2aQPn0Pn8xY" role="3cqZAp">
          <node concept="1PaTwC" id="2aQPn0Pn8xZ" role="1aUNEU">
            <node concept="3oM_SD" id="2aQPn0Pn8y0" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="tu5oc" id="2aQPn0Pn8y1" role="1PaTwD">
              <node concept="3xONca" id="2aQPn0Pn8y2" role="tu5of">
                <ref role="3xOPvv" node="hRzK5Yp" resolve="method" />
              </node>
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8y3" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8y4" role="1PaTwD">
              <property role="3oM_SC" value="messages" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="hRzK5Yv">
    <property role="TrG5h" value="ClosureLiteralDataFlow" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1qefOq" id="hRzK5Yw" role="1SKRRt">
      <node concept="312cEu" id="hRzK5Yx" role="1qenE9">
        <property role="TrG5h" value="Class1" />
        <node concept="3Tm1VV" id="hRzK5Yy" role="1B3o_S" />
        <node concept="3clFbW" id="hRzK5Yz" role="jymVt">
          <node concept="3cqZAl" id="hRzK5Y$" role="3clF45" />
          <node concept="3Tm1VV" id="hRzK5Y_" role="1B3o_S" />
          <node concept="3clFbS" id="hRzK5YA" role="3clF47">
            <node concept="3cpWs8" id="hRzK5YB" role="3cqZAp">
              <node concept="3cpWsn" id="hRzK5YC" role="3cpWs9">
                <property role="TrG5h" value="a" />
                <node concept="10Oyi0" id="hRzK5YD" role="1tU5fm" />
                <node concept="3cmrfG" id="hRzK5YE" role="33vP2m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hRzK5YF" role="3cqZAp">
              <node concept="2OqwBi" id="i2bqd38" role="3clFbG">
                <node concept="1bVj0M" id="hRzK5YG" role="2Oq$k0">
                  <node concept="3clFbS" id="hRzK5YH" role="1bW5cS">
                    <node concept="3clFbF" id="hRzK5YI" role="3cqZAp">
                      <node concept="2OqwBi" id="i2bpvLu" role="3clFbG">
                        <node concept="10M0yZ" id="i2bpryR" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="i2bpx3k" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(int)" resolve="println" />
                          <node concept="3cpWs3" id="i2bpxzs" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagTuRU" role="3uHU7B">
                              <ref role="3cqZAo" node="hRzK5YC" resolve="a" />
                            </node>
                            <node concept="3cmrfG" id="i2bpxQt" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Bd96e" id="i2bqe4q" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3xLA65" id="hRzK5YM" role="lGtFl">
            <property role="TrG5h" value="method" />
          </node>
          <node concept="7CXmI" id="2aQPn0Pn8y5" role="lGtFl">
            <node concept="7OXhh" id="2aQPn0Pn8y6" role="7EUXB">
              <property role="GvXf4" value="false" />
              <property role="G7GLQ" value="false" />
              <property role="G7GLP" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="hRzK5YN" role="1SL9yI">
      <property role="TrG5h" value="ClosureLiteralDataFlow" />
      <node concept="3cqZAl" id="hRzK5YO" role="3clF45" />
      <node concept="3clFbS" id="hRzK5YP" role="3clF47">
        <node concept="3SKdUt" id="2aQPn0Pn8y7" role="3cqZAp">
          <node concept="1PaTwC" id="2aQPn0Pn8y8" role="1aUNEU">
            <node concept="3oM_SD" id="2aQPn0Pn8y9" role="1PaTwD">
              <property role="3oM_SC" value="Check" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8ya" role="1PaTwD">
              <property role="3oM_SC" value="statement" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8yb" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8yc" role="1PaTwD">
              <property role="3oM_SC" value="moved" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8yd" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8ye" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8yf" role="1PaTwD">
              <property role="3oM_SC" value="annotation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2aQPn0Pn8yg" role="3cqZAp">
          <node concept="1PaTwC" id="2aQPn0Pn8yh" role="1aUNEU">
            <node concept="3oM_SD" id="2aQPn0Pn8yi" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="tu5oc" id="2aQPn0Pn8yj" role="1PaTwD">
              <node concept="3xONca" id="2aQPn0Pn8yk" role="tu5of">
                <ref role="3xOPvv" node="hRzK5YM" resolve="method" />
              </node>
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8yl" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
            <node concept="3oM_SD" id="2aQPn0Pn8ym" role="1PaTwD">
              <property role="3oM_SC" value="messages" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="79nQq158pd2">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="UninitializedCapturedVariable" />
    <node concept="1qefOq" id="79nQq158pd3" role="1SKRRt">
      <node concept="312cEu" id="79nQq158ELn" role="1qenE9">
        <property role="TrG5h" value="CapturedReads" />
        <node concept="3Tm1VV" id="79nQq158ELo" role="1B3o_S" />
        <node concept="3clFb_" id="79nQq158ELp" role="jymVt">
          <property role="TrG5h" value="selfReference" />
          <node concept="3clFbS" id="79nQq158ELq" role="3clF47">
            <node concept="3cpWs8" id="79nQq158ELs" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158ELr" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq158ELt" role="1tU5fm" />
                <node concept="2OqwBi" id="79nQq158Hma" role="33vP2m">
                  <node concept="1bVj0M" id="79nQq158Hmb" role="2Oq$k0">
                    <node concept="3clFbS" id="79nQq158Hmc" role="1bW5cS">
                      <node concept="3cpWs6" id="79nQq158Hmd" role="3cqZAp">
                        <node concept="37vLTw" id="79nQq158Hme" role="3cqZAk">
                          <ref role="3cqZAo" node="79nQq158ELr" resolve="i" />
                          <node concept="7CXmI" id="79nQq158J2U" role="lGtFl">
                            <node concept="1TM$A" id="79nQq158J2V" role="7EUXB">
                              <node concept="2PYRI3" id="79nQq165Ypf" role="3lydEf">
                                <ref role="39XzEq" to="tp2j:79nQq159Aim" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Bd96e" id="79nQq158Hmf" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158ELv" role="3cqZAp">
              <node concept="2OqwBi" id="79nQq158EMx" role="3clFbG">
                <node concept="10M0yZ" id="79nQq158EMi" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="79nQq158EMy" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(int)" resolve="println" />
                  <node concept="37vLTw" id="79nQq158EMz" role="37wK5m">
                    <ref role="3cqZAo" node="79nQq158ELr" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq158ELy" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158ELz" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J30" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J31" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq158EL$" role="jymVt">
          <property role="TrG5h" value="noInitializer" />
          <node concept="3clFbS" id="79nQq158EL_" role="3clF47">
            <node concept="3cpWs8" id="79nQq158ELB" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158ELA" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq158ELC" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158Hmg" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq158Hmh" role="3clFbG">
                <node concept="1bVj0M" id="79nQq158Hmi" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq158Hmj" role="1bW5cS">
                    <node concept="3cpWs6" id="79nQq158Hmk" role="3cqZAp">
                      <node concept="37vLTw" id="79nQq158Hml" role="3cqZAk">
                        <ref role="3cqZAo" node="79nQq158ELA" resolve="i" />
                        <node concept="7CXmI" id="79nQq158J2W" role="lGtFl">
                          <node concept="1TM$A" id="79nQq158J2X" role="7EUXB">
                            <node concept="2PYRI3" id="79nQq165Ypg" role="3lydEf">
                              <ref role="39XzEq" to="tp2j:79nQq159Aim" />
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
          <node concept="3Tm1VV" id="79nQq158ELD" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158ELE" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J32" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J33" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq158ELF" role="jymVt">
          <property role="TrG5h" value="nestedRead" />
          <node concept="3clFbS" id="79nQq158ELG" role="3clF47">
            <node concept="3cpWs8" id="79nQq158ELI" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158ELH" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq158ELJ" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158Hmm" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq158Hmn" role="3clFbG">
                <node concept="1bVj0M" id="79nQq158Hmo" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq158Hmp" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq158Hmq" role="3cqZAp">
                      <node concept="2Sg_IR" id="79nQq158Hmr" role="3clFbG">
                        <node concept="1bVj0M" id="79nQq158Hms" role="2SgG2M">
                          <node concept="3clFbS" id="79nQq158Hmt" role="1bW5cS">
                            <node concept="3cpWs6" id="79nQq158Hmu" role="3cqZAp">
                              <node concept="37vLTw" id="79nQq158Hmv" role="3cqZAk">
                                <ref role="3cqZAo" node="79nQq158ELH" resolve="i" />
                                <node concept="7CXmI" id="79nQq158J2Y" role="lGtFl">
                                  <node concept="1TM$A" id="79nQq158J2Z" role="7EUXB">
                                    <node concept="2PYRI3" id="79nQq165Yph" role="3lydEf">
                                      <ref role="39XzEq" to="tp2j:79nQq159Aim" />
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
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq158ELK" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158ELL" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J34" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J35" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq158ELM" role="jymVt">
          <property role="TrG5h" value="writeOnlyCapture" />
          <node concept="3clFbS" id="79nQq158ELN" role="3clF47">
            <node concept="3cpWs8" id="79nQq158ELP" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158ELO" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq158ELQ" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158Hmw" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq158Hmx" role="3clFbG">
                <node concept="1bVj0M" id="79nQq158Hmy" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq158Hmz" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq158Hm$" role="3cqZAp">
                      <node concept="37vLTI" id="79nQq158Hm_" role="3clFbG">
                        <node concept="37vLTw" id="79nQq158HmA" role="37vLTJ">
                          <ref role="3cqZAo" node="79nQq158ELO" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="79nQq158HmB" role="37vLTx">
                          <property role="3cmrfH" value="5" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq158ELR" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158ELS" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J36" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J37" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq158ELT" role="jymVt">
          <property role="TrG5h" value="accumulator" />
          <node concept="3clFbS" id="79nQq158ELU" role="3clF47">
            <node concept="3cpWs8" id="79nQq158ELW" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158ELV" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="10Oyi0" id="79nQq158ELX" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158HmC" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq158HmD" role="3clFbG">
                <node concept="1bVj0M" id="79nQq158HmE" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq158HmF" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq158HmG" role="3cqZAp">
                      <node concept="3uNrnE" id="79nQq158HmH" role="3clFbG">
                        <node concept="37vLTw" id="79nQq158HmI" role="2$L3a6">
                          <ref role="3cqZAo" node="79nQq158ELV" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq158ELY" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158ELZ" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J38" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J39" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq16h162" role="jymVt">
          <property role="TrG5h" value="accumulatorWithTwoClosures" />
          <node concept="3clFbS" id="79nQq16h163" role="3clF47">
            <node concept="3cpWs8" id="79nQq16h164" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq16h165" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="10Oyi0" id="79nQq16h166" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="79nQq16gTY4" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq16gTY5" role="3clFbG">
                <node concept="1bVj0M" id="79nQq16gTY6" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq16gTY7" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq16gTY8" role="3cqZAp">
                      <node concept="2OqwBi" id="79nQq16gWpD" role="3clFbG">
                        <node concept="10M0yZ" id="79nQq16gWpE" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="79nQq16gWpF" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(int)" resolve="println" />
                          <node concept="37vLTw" id="79nQq16gWEl" role="37wK5m">
                            <ref role="3cqZAo" node="79nQq16h165" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="79nQq16h167" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq16h168" role="3clFbG">
                <node concept="1bVj0M" id="79nQq16h169" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq16h16a" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq16h16b" role="3cqZAp">
                      <node concept="3uNrnE" id="79nQq16h16c" role="3clFbG">
                        <node concept="37vLTw" id="79nQq16h16d" role="2$L3a6">
                          <ref role="3cqZAo" node="79nQq16h165" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq16h16e" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq16h16f" role="3clF45" />
          <node concept="7CXmI" id="79nQq16h16g" role="lGtFl">
            <node concept="7OXhh" id="79nQq16h16h" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq158EM0" role="jymVt">
          <property role="TrG5h" value="initialized" />
          <node concept="3clFbS" id="79nQq158EM1" role="3clF47">
            <node concept="3cpWs8" id="79nQq158EM3" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158EM2" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq158EM4" role="1tU5fm" />
                <node concept="3cmrfG" id="79nQq158EM5" role="33vP2m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158HmJ" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq158HmK" role="3clFbG">
                <node concept="1bVj0M" id="79nQq158HmL" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq158HmM" role="1bW5cS">
                    <node concept="3cpWs6" id="79nQq158HmN" role="3cqZAp">
                      <node concept="37vLTw" id="79nQq158HmO" role="3cqZAk">
                        <ref role="3cqZAo" node="79nQq158EM2" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq158EM6" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158EM7" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J3a" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J3b" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq158EM8" role="jymVt">
          <property role="TrG5h" value="nestedCaptureOfInitialized" />
          <node concept="3clFbS" id="79nQq158EM9" role="3clF47">
            <node concept="3cpWs8" id="79nQq158EMb" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq158EMa" role="3cpWs9">
                <property role="TrG5h" value="t" />
                <node concept="10Oyi0" id="79nQq158EMc" role="1tU5fm" />
                <node concept="3cmrfG" id="79nQq158EMd" role="33vP2m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="79nQq158HmP" role="3cqZAp">
              <node concept="2Sg_IR" id="79nQq158HmQ" role="3clFbG">
                <node concept="1bVj0M" id="79nQq158HmR" role="2SgG2M">
                  <node concept="3clFbS" id="79nQq158HmS" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq158HmT" role="3cqZAp">
                      <node concept="2Sg_IR" id="79nQq158HmU" role="3clFbG">
                        <node concept="1bVj0M" id="79nQq158HmV" role="2SgG2M">
                          <node concept="3clFbS" id="79nQq158HmW" role="1bW5cS">
                            <node concept="3cpWs6" id="79nQq158HmX" role="3cqZAp">
                              <node concept="37vLTw" id="79nQq158HmY" role="3cqZAk">
                                <ref role="3cqZAo" node="79nQq158EMa" resolve="t" />
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
          <node concept="3Tm1VV" id="79nQq158EMe" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq158EMf" role="3clF45" />
          <node concept="7CXmI" id="79nQq158J3c" role="lGtFl">
            <node concept="7OXhh" id="79nQq158J3d" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq16gulN" role="jymVt">
          <property role="TrG5h" value="issueSnippet" />
          <node concept="3clFbS" id="79nQq16gulO" role="3clF47">
            <node concept="3cpWs8" id="79nQq16gulQ" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq16gulP" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq16gulR" role="1tU5fm" />
                <node concept="2OqwBi" id="79nQq16gxsD" role="33vP2m">
                  <node concept="1bVj0M" id="79nQq16gxsE" role="2Oq$k0">
                    <node concept="3clFbS" id="79nQq16gxsF" role="1bW5cS">
                      <node concept="3cpWs6" id="79nQq16gxsG" role="3cqZAp">
                        <node concept="37vLTw" id="79nQq16gxsH" role="3cqZAk">
                          <ref role="3cqZAo" node="79nQq16gulP" resolve="i" />
                          <node concept="7CXmI" id="79nQq16gxsI" role="lGtFl">
                            <node concept="1TM$A" id="79nQq16gxsJ" role="7EUXB">
                              <node concept="2PYRI3" id="79nQq16gxsK" role="3lydEf">
                                <ref role="39XzEq" to="tp2j:79nQq159Aim" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Bd96e" id="79nQq16gxsL" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="79nQq16gyS6" role="3cqZAp">
              <node concept="2OqwBi" id="79nQq16gyS7" role="3clFbG">
                <node concept="1bVj0M" id="79nQq16gyS8" role="2Oq$k0">
                  <node concept="3clFbS" id="79nQq16gyS9" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq16gySa" role="3cqZAp">
                      <node concept="37vLTw" id="79nQq16gySb" role="3clFbG">
                        <ref role="3cqZAo" node="79nQq16gulP" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Bd96e" id="79nQq16gySc" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq16gulT" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq16gulU" role="3clF45" />
          <node concept="7CXmI" id="79nQq16g_MT" role="lGtFl">
            <node concept="7OXhh" id="79nQq16g_MU" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="79nQq16gulV" role="jymVt">
          <property role="TrG5h" value="uninitializedExpressionBody" />
          <node concept="3clFbS" id="79nQq16gulW" role="3clF47">
            <node concept="3cpWs8" id="79nQq16gulY" role="3cqZAp">
              <node concept="3cpWsn" id="79nQq16gulX" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="79nQq16gulZ" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="79nQq16g$kJ" role="3cqZAp">
              <node concept="2OqwBi" id="79nQq16g$kK" role="3clFbG">
                <node concept="1bVj0M" id="79nQq16g$kL" role="2Oq$k0">
                  <node concept="3clFbS" id="79nQq16g$kM" role="1bW5cS">
                    <node concept="3clFbF" id="79nQq16g$kN" role="3cqZAp">
                      <node concept="37vLTw" id="79nQq16g$kO" role="3clFbG">
                        <ref role="3cqZAo" node="79nQq16gulX" resolve="i" />
                        <node concept="7CXmI" id="79nQq16g$kP" role="lGtFl">
                          <node concept="1TM$A" id="79nQq16g$kQ" role="7EUXB">
                            <node concept="2PYRI3" id="79nQq16g$kR" role="3lydEf">
                              <ref role="39XzEq" to="tp2j:79nQq159Aim" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Bd96e" id="79nQq16g$kS" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="79nQq16gum0" role="1B3o_S" />
          <node concept="3cqZAl" id="79nQq16gum1" role="3clF45" />
          <node concept="7CXmI" id="79nQq16gBgF" role="lGtFl">
            <node concept="7OXhh" id="79nQq16gBgG" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8htvB1" role="jymVt">
          <property role="TrG5h" value="earlierClosureWrites" />
          <node concept="3cqZAl" id="3Nj5c8htvB4" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8htvB5" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8htvB6" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8htvB7" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8htvB8" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3Nj5c8htvB9" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvBa" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvBb" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvBc" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvBd" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvBe" role="3cqZAp">
                      <node concept="37vLTI" id="3Nj5c8htvBf" role="3clFbG">
                        <node concept="37vLTw" id="3Nj5c8htvBg" role="37vLTJ">
                          <ref role="3cqZAo" node="3Nj5c8htvB8" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="3Nj5c8htvBh" role="37vLTx">
                          <property role="3cmrfH" value="5" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvBi" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvBj" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvBk" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvBl" role="1bW5cS">
                    <node concept="3cpWs6" id="3Nj5c8htvBm" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8htvBn" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8htvB8" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="3Nj5c8htvBo" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8htvBp" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8htvBq" role="jymVt">
          <property role="TrG5h" value="earlierNestedClosureWrites" />
          <node concept="3cqZAl" id="3Nj5c8htvBt" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8htvBu" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8htvBv" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8htvBw" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8htvBx" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3Nj5c8htvBy" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvBz" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvB$" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvB_" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvBA" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvBB" role="3cqZAp">
                      <node concept="2Sg_IR" id="3Nj5c8htvBC" role="3clFbG">
                        <node concept="1bVj0M" id="3Nj5c8htvBD" role="2SgG2M">
                          <node concept="3clFbS" id="3Nj5c8htvBE" role="1bW5cS">
                            <node concept="3clFbF" id="3Nj5c8htvBF" role="3cqZAp">
                              <node concept="37vLTI" id="3Nj5c8htvBG" role="3clFbG">
                                <node concept="37vLTw" id="3Nj5c8htvBH" role="37vLTJ">
                                  <ref role="3cqZAo" node="3Nj5c8htvBx" resolve="i" />
                                </node>
                                <node concept="3cmrfG" id="3Nj5c8htvBI" role="37vLTx">
                                  <property role="3cmrfH" value="5" />
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
            <node concept="3clFbF" id="3Nj5c8htvBJ" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvBK" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvBL" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvBM" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvBN" role="3cqZAp">
                      <node concept="2Sg_IR" id="3Nj5c8htvBO" role="3clFbG">
                        <node concept="1bVj0M" id="3Nj5c8htvBP" role="2SgG2M">
                          <node concept="3clFbS" id="3Nj5c8htvBQ" role="1bW5cS">
                            <node concept="3cpWs6" id="3Nj5c8htvBR" role="3cqZAp">
                              <node concept="37vLTw" id="3Nj5c8htvBS" role="3cqZAk">
                                <ref role="3cqZAo" node="3Nj5c8htvBx" resolve="i" />
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
          <node concept="7CXmI" id="3Nj5c8htvBT" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8htvBU" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8htvBV" role="jymVt">
          <property role="TrG5h" value="earlierClosureIncrements" />
          <node concept="3cqZAl" id="3Nj5c8htvBY" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8htvBZ" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8htvC0" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8htvC1" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8htvC2" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="10Oyi0" id="3Nj5c8htvC3" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvC4" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvC5" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvC6" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvC7" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvC8" role="3cqZAp">
                      <node concept="37vLTI" id="3Nj5c8htvC9" role="3clFbG">
                        <node concept="37vLTw" id="3Nj5c8htvCa" role="37vLTJ">
                          <ref role="3cqZAo" node="3Nj5c8htvC2" resolve="c" />
                        </node>
                        <node concept="3cmrfG" id="3Nj5c8htvCb" role="37vLTx">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvCc" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvCd" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvCe" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvCf" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvCg" role="3cqZAp">
                      <node concept="d57v9" id="3Nj5c8htvCh" role="3clFbG">
                        <node concept="37vLTw" id="3Nj5c8htvCi" role="37vLTJ">
                          <ref role="3cqZAo" node="3Nj5c8htvC2" resolve="c" />
                        </node>
                        <node concept="3cmrfG" id="3Nj5c8htvCj" role="37vLTx">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvCk" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvCl" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvCm" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvCn" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvCo" role="3cqZAp">
                      <node concept="3uNrnE" id="3Nj5c8htvCp" role="3clFbG">
                        <node concept="37vLTw" id="3Nj5c8htvCq" role="2$L3a6">
                          <ref role="3cqZAo" node="3Nj5c8htvC2" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="3Nj5c8htvCr" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8htvCs" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8htvCt" role="jymVt">
          <property role="TrG5h" value="directOrClosureAssignment" />
          <node concept="3cqZAl" id="3Nj5c8htvCw" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8htvCx" role="1B3o_S" />
          <node concept="37vLTG" id="3Nj5c8htvCy" role="3clF46">
            <property role="TrG5h" value="flag" />
            <node concept="10P_77" id="3Nj5c8htvCz" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="3Nj5c8htvC$" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8htvC_" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8htvCA" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3Nj5c8htvCB" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbJ" id="3Nj5c8htvCC" role="3cqZAp">
              <node concept="37vLTw" id="3Nj5c8htvCD" role="3clFbw">
                <ref role="3cqZAo" node="3Nj5c8htvCy" resolve="flag" />
              </node>
              <node concept="3clFbS" id="3Nj5c8htvCE" role="3clFbx">
                <node concept="3clFbF" id="3Nj5c8htvCF" role="3cqZAp">
                  <node concept="37vLTI" id="3Nj5c8htvCG" role="3clFbG">
                    <node concept="37vLTw" id="3Nj5c8htvCH" role="37vLTJ">
                      <ref role="3cqZAo" node="3Nj5c8htvCA" resolve="i" />
                    </node>
                    <node concept="3cmrfG" id="3Nj5c8htvCI" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3Nj5c8htvCJ" role="9aQIa">
                <node concept="3clFbS" id="3Nj5c8htvCK" role="9aQI4">
                  <node concept="3clFbF" id="3Nj5c8htvCL" role="3cqZAp">
                    <node concept="2Sg_IR" id="3Nj5c8htvCM" role="3clFbG">
                      <node concept="1bVj0M" id="3Nj5c8htvCN" role="2SgG2M">
                        <node concept="3clFbS" id="3Nj5c8htvCO" role="1bW5cS">
                          <node concept="3clFbF" id="3Nj5c8htvCP" role="3cqZAp">
                            <node concept="37vLTI" id="3Nj5c8htvCQ" role="3clFbG">
                              <node concept="37vLTw" id="3Nj5c8htvCR" role="37vLTJ">
                                <ref role="3cqZAo" node="3Nj5c8htvCA" resolve="i" />
                              </node>
                              <node concept="3cmrfG" id="3Nj5c8htvCS" role="37vLTx">
                                <property role="3cmrfH" value="2" />
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
            <node concept="3clFbF" id="3Nj5c8htvCT" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvCU" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvCV" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvCW" role="1bW5cS">
                    <node concept="3cpWs6" id="3Nj5c8htvCX" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8htvCY" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8htvCA" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="3Nj5c8htvCZ" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8htvD0" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8htvD1" role="jymVt">
          <property role="TrG5h" value="readBeforeLaterClosureWrite" />
          <node concept="3cqZAl" id="3Nj5c8htvD4" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8htvD5" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8htvD6" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8htvD7" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8htvD8" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3Nj5c8htvD9" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvDa" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvDb" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvDc" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvDd" role="1bW5cS">
                    <node concept="3cpWs6" id="3Nj5c8htvDe" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8htvDf" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8htvD8" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvDj" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvDk" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvDl" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvDm" role="1bW5cS">
                    <node concept="3clFbF" id="3Nj5c8htvDn" role="3cqZAp">
                      <node concept="37vLTI" id="3Nj5c8htvDo" role="3clFbG">
                        <node concept="37vLTw" id="3Nj5c8htvDp" role="37vLTJ">
                          <ref role="3cqZAo" node="3Nj5c8htvD8" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="3Nj5c8htvDq" role="37vLTx">
                          <property role="3cmrfH" value="5" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="3Nj5c8htvDr" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8htvDs" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8htvDt" role="jymVt">
          <property role="TrG5h" value="assignedInOwnTryCatch" />
          <node concept="3cqZAl" id="3Nj5c8htvDw" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8htvDx" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8htvDy" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8htvDz" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8htvD$" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3Nj5c8htvD_" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8htvDA" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8htvDB" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8htvDC" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8htvDD" role="1bW5cS">
                    <node concept="SfApY" id="3Nj5c8htvDE" role="3cqZAp">
                      <node concept="3clFbS" id="3Nj5c8htvDF" role="SfCbr">
                        <node concept="3clFbF" id="3Nj5c8htvDG" role="3cqZAp">
                          <node concept="37vLTI" id="3Nj5c8htvDH" role="3clFbG">
                            <node concept="37vLTw" id="3Nj5c8htvDI" role="37vLTJ">
                              <ref role="3cqZAo" node="3Nj5c8htvD$" resolve="i" />
                            </node>
                            <node concept="3cmrfG" id="3Nj5c8htvDJ" role="37vLTx">
                              <property role="3cmrfH" value="5" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="TDmWw" id="3Nj5c8htvDK" role="TEbGg">
                        <node concept="3cpWsn" id="3Nj5c8htvDL" role="TDEfY">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="3Nj5c8htvDM" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3Nj5c8htvDN" role="TDEfX" />
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3Nj5c8htvDO" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8htvDP" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8htvD$" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="3Nj5c8htvDT" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8htvDU" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8hHNIo" role="jymVt">
          <property role="TrG5h" value="finalWithoutInitializer" />
          <node concept="3cqZAl" id="3Nj5c8hHNIr" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8hHNIs" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8hHNIt" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8hHNIu" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8hHNIv" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="3Nj5c8hHNIw" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8hHNIx" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8hHNIy" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8hHNIz" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8hHNI$" role="1bW5cS">
                    <node concept="3cpWs6" id="3Nj5c8hHNI_" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8hHNIA" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8hHNIv" resolve="i" />
                        <node concept="7CXmI" id="3Nj5c8hHNIB" role="lGtFl">
                          <node concept="1TM$A" id="3Nj5c8hHNIC" role="7EUXB">
                            <node concept="2PYRI3" id="3Nj5c8hHNID" role="3lydEf">
                              <ref role="39XzEq" to="tp2j:79nQq159Aim" />
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
          <node concept="7CXmI" id="3Nj5c8hHNIE" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8hHNIF" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="3Nj5c8hHNIG" role="jymVt">
          <property role="TrG5h" value="assignedAfterClosure" />
          <node concept="3cqZAl" id="3Nj5c8hHNIJ" role="3clF45" />
          <node concept="3Tm1VV" id="3Nj5c8hHNIK" role="1B3o_S" />
          <node concept="3clFbS" id="3Nj5c8hHNIL" role="3clF47">
            <node concept="3cpWs8" id="3Nj5c8hHNIM" role="3cqZAp">
              <node concept="3cpWsn" id="3Nj5c8hHNIN" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3Nj5c8hHNIO" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8hHNIP" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8hHNIQ" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8hHNIR" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8hHNIS" role="1bW5cS">
                    <node concept="3cpWs6" id="3Nj5c8hHNIT" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8hHNIU" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8hHNIN" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8hHNIV" role="3cqZAp">
              <node concept="37vLTI" id="3Nj5c8hHNIW" role="3clFbG">
                <node concept="37vLTw" id="3Nj5c8hHNIX" role="37vLTJ">
                  <ref role="3cqZAo" node="3Nj5c8hHNIN" resolve="i" />
                </node>
                <node concept="3cmrfG" id="3Nj5c8hHNIY" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Nj5c8hPzV9" role="3cqZAp">
              <node concept="2Sg_IR" id="3Nj5c8hPzVa" role="3clFbG">
                <node concept="1bVj0M" id="3Nj5c8hPzVb" role="2SgG2M">
                  <node concept="3clFbS" id="3Nj5c8hPzVc" role="1bW5cS">
                    <node concept="3cpWs6" id="3Nj5c8hPzVd" role="3cqZAp">
                      <node concept="37vLTw" id="3Nj5c8hPzVe" role="3cqZAk">
                        <ref role="3cqZAo" node="3Nj5c8hHNIN" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="3Nj5c8hHNIZ" role="lGtFl">
            <node concept="7OXhh" id="3Nj5c8hHNJ0" role="7EUXB">
              <property role="GvXf4" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

