<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:783567bb-6a97-47d3-ab6c-d2a82efd2145(jetbrains.mps.smodel.test.concepts@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="tpeq" ref="r:00000000-0000-4000-0000-011c895902fe(jetbrains.mps.lang.smodel.typesystem)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215511704609" name="jetbrains.mps.lang.test.structure.NodeWarningCheckOperation" flags="ng" index="29bkU">
        <child id="8489045168660938635" name="warningRef" index="3lydCh" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7691029917083872157" name="jetbrains.mps.lang.test.structure.IRuleReference" flags="ngI" index="2u4UPC">
        <reference id="8333855927540250453" name="declaration" index="39XzEq" />
      </concept>
      <concept id="4531408400486526326" name="jetbrains.mps.lang.test.structure.WarningStatementReference" flags="ng" index="2PQEqo" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1761385620274348152" name="jetbrains.mps.lang.smodel.structure.SConceptTypeCastExpression" flags="nn" index="2CBFar" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="jWvgfwhfGZ">
    <property role="TrG5h" value="SConceptHierarchy" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1LZb2c" id="jWvgfwhfH6" role="1SL9yI">
      <property role="TrG5h" value="conceptHierarchy" />
      <node concept="3cqZAl" id="jWvgfwhfH7" role="3clF45" />
      <node concept="3clFbS" id="jWvgfwhfHb" role="3clF47">
        <node concept="3vwNmj" id="5Kxyj$3A5gl" role="3cqZAp">
          <node concept="2OqwBi" id="5Kxyj$3A5gm" role="3vwVQn">
            <node concept="35c_gC" id="5Kxyj$3A5gn" role="2Oq$k0">
              <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="2Zo12i" id="5Kxyj$3A5go" role="2OqNvi">
              <node concept="chp4Y" id="5Kxyj$3A5gp" role="2Zo12j">
                <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="5Kxyj$3A5v6" role="3cqZAp">
          <node concept="2OqwBi" id="5Kxyj$3A5v7" role="3vwVQn">
            <node concept="35c_gC" id="5Kxyj$3A5v8" role="2Oq$k0">
              <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="liA8E" id="5Kxyj$3A5v9" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
              <node concept="35c_gC" id="5Kxyj$3A5va" role="37wK5m">
                <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="5Kxyj$3A5Xr" role="3cqZAp">
          <node concept="2OqwBi" id="5Kxyj$3A5Xs" role="3vFALc">
            <node concept="35c_gC" id="5Kxyj$3A5Xt" role="2Oq$k0">
              <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2Zo12i" id="5Kxyj$3A5Xu" role="2OqNvi">
              <node concept="chp4Y" id="5Kxyj$3A5Xv" role="2Zo12j">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="5Kxyj$3A6UX" role="3cqZAp">
          <node concept="2OqwBi" id="5Kxyj$3A6UY" role="3vwVQn">
            <node concept="35c_gC" id="5Kxyj$3A6UZ" role="2Oq$k0">
              <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="2Zo12i" id="5Kxyj$3A6V0" role="2OqNvi">
              <node concept="25Kdxt" id="5Kxyj$3A6V1" role="2Zo12j">
                <node concept="35c_gC" id="5Kxyj$3A6V2" role="25KhWn">
                  <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="jWvgfwd24C" role="3cqZAp">
          <node concept="2ZW3vV" id="jWvgfwd24D" role="3vwVQn">
            <node concept="35c_gC" id="jWvgfwd24E" role="2ZW6bz">
              <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="3uibUv" id="jWvgfwd24F" role="2ZW6by">
              <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AFHf7tIca6" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokbB" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokbC" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbD" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbE" role="1PaTwD">
              <property role="3oM_SC" value="suspicious" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbF" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbG" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbH" role="1PaTwD">
              <property role="3oM_SC" value="SConceptAdapter.getSuperInterfaces," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbI" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbJ" role="1PaTwD">
              <property role="3oM_SC" value="sure" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbK" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbL" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbM" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbN" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbO" role="1PaTwD">
              <property role="3oM_SC" value="elsewhere" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4AFHf7tHAD4" role="3cqZAp">
          <node concept="2OqwBi" id="4AFHf7tHJTt" role="3vwVQn">
            <node concept="2OqwBi" id="4AFHf7tHHyx" role="2Oq$k0">
              <node concept="2OqwBi" id="4AFHf7tHEY6" role="2Oq$k0">
                <node concept="2OqwBi" id="4AFHf7tHBOE" role="2Oq$k0">
                  <node concept="liA8E" id="4AFHf7tHEdi" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SInterfaceConcept.getSuperInterfaces()" resolve="getSuperInterfaces" />
                  </node>
                  <node concept="35c_gC" id="4AFHf7tHB8b" role="2Oq$k0">
                    <ref role="35c_gD" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
                  </node>
                </node>
                <node concept="liA8E" id="4AFHf7tHH3P" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                </node>
              </node>
              <node concept="liA8E" id="4AFHf7tHJwK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
              </node>
            </node>
            <node concept="liA8E" id="4AFHf7tHMbp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="35c_gC" id="4AFHf7tHMD5" role="37wK5m">
                <ref role="35c_gD" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="4AFHf7tIfB4" role="1SL9yI">
      <property role="TrG5h" value="conceptSuperConcept" />
      <node concept="3cqZAl" id="4AFHf7tIfB5" role="3clF45" />
      <node concept="3clFbS" id="4AFHf7tIfB9" role="3clF47">
        <node concept="3SKdUt" id="4AFHf7tIFRT" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokbP" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokbQ" role="1PaTwD">
              <property role="3oM_SC" value="state" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbS" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbT" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbU" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbV" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbW" role="1PaTwD">
              <property role="3oM_SC" value="report" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbX" role="1PaTwD">
              <property role="3oM_SC" value="BaseConcept" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbY" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokbZ" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc0" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc1" role="1PaTwD">
              <property role="3oM_SC" value="super-concept" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AFHf7tIYV4" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokc2" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokc3" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc4" role="1PaTwD">
              <property role="3oM_SC" value="questionable," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc5" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc6" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc7" role="1PaTwD">
              <property role="3oM_SC" value="makes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc8" role="1PaTwD">
              <property role="3oM_SC" value="BC" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokc9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokca" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcb" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcc" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcd" role="1PaTwD">
              <property role="3oM_SC" value="superconcept." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4AFHf7tIh_t" role="3cqZAp">
          <node concept="3cpWsn" id="4AFHf7tIh_u" role="3cpWs9">
            <property role="TrG5h" value="baseConcept" />
            <node concept="3uibUv" id="4AFHf7tIhCO" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="35c_gC" id="4AFHf7tIh_v" role="33vP2m">
              <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
          </node>
        </node>
        <node concept="3ykFI1" id="4AFHf7tIWNi" role="3cqZAp">
          <node concept="2OqwBi" id="4AFHf7tI$13" role="3ykU8v">
            <node concept="37vLTw" id="4AFHf7tIh_w" role="2Oq$k0">
              <ref role="3cqZAo" node="4AFHf7tIh_u" resolve="baseConcept" />
            </node>
            <node concept="liA8E" id="4AFHf7tI_3Q" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="4AFHf7tIOxY" role="3cqZAp">
          <node concept="2OqwBi" id="4AFHf7tIMUs" role="3vFALc">
            <node concept="2OqwBi" id="4AFHf7tILYt" role="2Oq$k0">
              <node concept="2OqwBi" id="4AFHf7tIKNO" role="2Oq$k0">
                <node concept="37vLTw" id="4AFHf7tIKFQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4AFHf7tIh_u" resolve="baseConcept" />
                </node>
                <node concept="liA8E" id="4AFHf7tILSB" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SConcept.getSuperInterfaces()" resolve="getSuperInterfaces" />
                </node>
              </node>
              <node concept="liA8E" id="4AFHf7tIMMV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
              </node>
            </node>
            <node concept="liA8E" id="4AFHf7tINOT" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4AFHf7tIB12" role="3cqZAp">
          <node concept="2OqwBi" id="4AFHf7tIFac" role="3vwVQn">
            <node concept="37vLTw" id="4AFHf7tIF2L" role="2Oq$k0">
              <ref role="3cqZAo" node="4AFHf7tIh_u" resolve="baseConcept" />
            </node>
            <node concept="liA8E" id="4AFHf7tIFCu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="4AFHf7tICnv" role="37wK5m">
                <node concept="35c_gC" id="4AFHf7tIBAP" role="2Oq$k0">
                  <ref role="35c_gD" to="tpck:4uZwTti3_$T" resolve="Attribute" />
                </node>
                <node concept="liA8E" id="4AFHf7tIDe7" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4AFHf7tIQFF" role="3cqZAp">
          <node concept="2OqwBi" id="4AFHf7tIRzk" role="3vwVQn">
            <node concept="35c_gC" id="4AFHf7tIRm7" role="2Oq$k0">
              <ref role="35c_gD" to="tpck:4uZwTti3_$T" resolve="Attribute" />
            </node>
            <node concept="liA8E" id="4AFHf7tIS7C" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="4AFHf7tISvx" role="37wK5m">
                <node concept="35c_gC" id="4AFHf7tISk2" role="2Oq$k0">
                  <ref role="35c_gD" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
                </node>
                <node concept="liA8E" id="4AFHf7tITE3" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="4AFHf7tH$9a" role="1SL9yI">
      <property role="TrG5h" value="defaultIfaceConcept" />
      <node concept="3cqZAl" id="4AFHf7tH$9b" role="3clF45" />
      <node concept="3clFbS" id="4AFHf7tH$9f" role="3clF47">
        <node concept="3cpWs8" id="jWvgfwgeK7" role="3cqZAp">
          <node concept="3cpWsn" id="jWvgfwgeK8" role="3cpWs9">
            <property role="TrG5h" value="defaultIfaceConcept" />
            <node concept="3bZ5Sz" id="jWvgfwgeK2" role="1tU5fm" />
            <node concept="2OqwBi" id="6nHw_VAJi9d" role="33vP2m">
              <node concept="2OqwBi" id="6nHw_VAJhRo" role="2Oq$k0">
                <node concept="35c_gC" id="6nHw_VAJhPJ" role="2Oq$k0">
                  <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
                <node concept="LFhST" id="6nHw_VAJi6e" role="2OqNvi" />
              </node>
              <node concept="2yIwOk" id="6nHw_VAJs1M" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="jWvgfwgg4N" role="3cqZAp">
          <node concept="2OqwBi" id="jWvgfwgg4O" role="3vwVQn">
            <node concept="37vLTw" id="jWvgfwgg4P" role="2Oq$k0">
              <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
            </node>
            <node concept="2Zo12i" id="jWvgfwgg4Q" role="2OqNvi">
              <node concept="chp4Y" id="jWvgfwgg4R" role="2Zo12j">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="jWvgfwgfgt" role="3cqZAp">
          <node concept="2OqwBi" id="jWvgfwgfVf" role="3vwVQn">
            <node concept="37vLTw" id="jWvgfwgfT4" role="2Oq$k0">
              <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
            </node>
            <node concept="2Zo12i" id="jWvgfwgg2Y" role="2OqNvi">
              <node concept="chp4Y" id="jWvgfwggli" role="2Zo12j">
                <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AFHf7tJ4Wf" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokce" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokcf" role="1PaTwD">
              <property role="3oM_SC" value="next" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcg" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokch" role="1PaTwD">
              <property role="3oM_SC" value="checks" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokci" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcj" role="1PaTwD">
              <property role="3oM_SC" value="questionable," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokck" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcl" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcm" role="1PaTwD">
              <property role="3oM_SC" value="puzzles" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcn" role="1PaTwD">
              <property role="3oM_SC" value="users" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokco" role="1PaTwD">
              <property role="3oM_SC" value="(see" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcp" role="1PaTwD">
              <property role="3oM_SC" value="mbeddr" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcq" role="1PaTwD">
              <property role="3oM_SC" value="slack" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcr" role="1PaTwD">
              <property role="3oM_SC" value="Sep" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokcs" role="1PaTwD">
              <property role="3oM_SC" value="17," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokct" role="1PaTwD">
              <property role="3oM_SC" value="2016)" />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="jWvgfwghxj" role="3cqZAp">
          <node concept="2OqwBi" id="jWvgfwghxk" role="3vFALc">
            <node concept="37vLTw" id="jWvgfwghxl" role="2Oq$k0">
              <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
            </node>
            <node concept="liA8E" id="jWvgfwghxm" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="35c_gC" id="jWvgfwghxn" role="37wK5m">
                <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="4AFHf7tJ9_5" role="3cqZAp">
          <node concept="2OqwBi" id="4AFHf7tJc$3" role="3vFALc">
            <node concept="37vLTw" id="4AFHf7tJccD" role="2Oq$k0">
              <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
            </node>
            <node concept="3O6GUB" id="4AFHf7tJdNX" role="2OqNvi">
              <node concept="chp4Y" id="4AFHf7tJeuN" role="3QVz_e">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4AFHf7tJata" role="3cqZAp" />
        <node concept="3SKdUt" id="2dyfbIRuVtm" role="3cqZAp">
          <node concept="1PaTwC" id="2dyfbIRuVtn" role="1aUNEU">
            <node concept="3oM_SD" id="2dyfbIRuV_l" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="2dyfbIRuV_n" role="1PaTwD">
              <property role="3oM_SC" value="assert" />
            </node>
            <node concept="3oM_SD" id="2dyfbIRuV_q" role="1PaTwD">
              <property role="3oM_SC" value="false;" />
            </node>
            <node concept="3oM_SD" id="2dyfbIRuV_D" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="2dyfbIRuV_I" role="1PaTwD">
              <property role="3oM_SC" value="MPS-33398" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2dyfbIRuURm" role="3cqZAp">
          <node concept="2OqwBi" id="jWvgfwgjbt" role="3vwVQn">
            <node concept="35c_gC" id="jWvgfwgj7s" role="2Oq$k0">
              <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="liA8E" id="jWvgfwgjsO" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
              <node concept="37vLTw" id="jWvgfwgoIh" role="37wK5m">
                <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4All8U4xRwK" role="3cqZAp" />
        <node concept="3vwNmj" id="4All8U4xZK9" role="3cqZAp">
          <node concept="2ZW3vV" id="4All8U4xZKa" role="3vwVQn">
            <node concept="3uibUv" id="4All8U4xZKb" role="2ZW6by">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="37vLTw" id="4All8U4xZKc" role="2ZW6bz">
              <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4All8U4y1TY" role="3cqZAp">
          <node concept="2OqwBi" id="4All8U4y1TZ" role="3vwVQn">
            <node concept="2OqwBi" id="4All8U4y1U0" role="2Oq$k0">
              <node concept="1eOMI4" id="4All8U4y1U1" role="2Oq$k0">
                <node concept="10QFUN" id="4All8U4y1U2" role="1eOMHV">
                  <node concept="3uibUv" id="4All8U4y1U3" role="10QFUM">
                    <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                  </node>
                  <node concept="37vLTw" id="4All8U4y1U4" role="10QFUP">
                    <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4All8U4y1U5" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
              </node>
            </node>
            <node concept="liA8E" id="4All8U4y1U6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="35c_gC" id="4All8U4y1U7" role="37wK5m">
                <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4All8U4ynks" role="3cqZAp">
          <node concept="3clFbC" id="4All8U4yIGD" role="3vwVQn">
            <node concept="2OqwBi" id="4All8U4ynkv" role="3uHU7B">
              <node concept="2YIFZM" id="4All8U4ynkw" role="2Oq$k0">
                <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                <ref role="37wK5l" to="18ew:~IterableUtil.asCollection(java.lang.Iterable)" resolve="asCollection" />
                <node concept="2OqwBi" id="4All8U4ynkx" role="37wK5m">
                  <node concept="1eOMI4" id="4All8U4ynky" role="2Oq$k0">
                    <node concept="10QFUN" id="4All8U4ynkz" role="1eOMHV">
                      <node concept="3uibUv" id="4All8U4ynk$" role="10QFUM">
                        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                      </node>
                      <node concept="37vLTw" id="4All8U4ynk_" role="10QFUP">
                        <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4All8U4ynkA" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SConcept.getSuperInterfaces()" resolve="getSuperInterfaces" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4All8U4ynkB" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.size()" resolve="size" />
              </node>
            </node>
            <node concept="3cmrfG" id="4All8U4ynku" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4All8U4xWVk" role="3cqZAp">
          <node concept="2OqwBi" id="4All8U4yuSD" role="3vwVQn">
            <node concept="2OqwBi" id="4All8U4yue9" role="2Oq$k0">
              <node concept="2OqwBi" id="4All8U4ytt4" role="2Oq$k0">
                <node concept="2OqwBi" id="4All8U4y0Dv" role="2Oq$k0">
                  <node concept="1eOMI4" id="4All8U4y0yO" role="2Oq$k0">
                    <node concept="10QFUN" id="4All8U4y0yL" role="1eOMHV">
                      <node concept="3uibUv" id="4All8U4y0AX" role="10QFUM">
                        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                      </node>
                      <node concept="37vLTw" id="4All8U4y0Bi" role="10QFUP">
                        <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4All8U4y13B" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SConcept.getSuperInterfaces()" resolve="getSuperInterfaces" />
                  </node>
                </node>
                <node concept="liA8E" id="4All8U4yu91" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                </node>
              </node>
              <node concept="liA8E" id="4All8U4yuKh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
              </node>
            </node>
            <node concept="liA8E" id="4All8U4yv$t" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="35c_gC" id="4All8U4yvFU" role="37wK5m">
                <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2rdjIFBbctp" role="3cqZAp">
          <node concept="1PaTwC" id="2rdjIFBbctt" role="1aUNEU">
            <node concept="3oM_SD" id="2rdjIFBbctv" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctw" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctx" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcty" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctz" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbct$" role="1PaTwD">
              <property role="3oM_SC" value="interface" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbct_" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctA" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctB" role="1PaTwD">
              <property role="3oM_SC" value="node.concept" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctC" role="1PaTwD">
              <property role="3oM_SC" value="returns" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctD" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctE" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctF" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctG" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctH" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctJ" role="1PaTwD">
              <property role="3oM_SC" value="interface" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbctK" role="1PaTwD">
              <property role="3oM_SC" value="itself" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2rdjIFBbcw2" role="3cqZAp">
          <node concept="2OqwBi" id="2rdjIFBbcw3" role="3vwVQn">
            <node concept="37vLTw" id="2rdjIFBbcw4" role="2Oq$k0">
              <ref role="3cqZAo" node="jWvgfwgeK8" resolve="defaultIfaceConcept" />
            </node>
            <node concept="3O6GUB" id="2rdjIFBbcw5" role="2OqNvi">
              <node concept="25Kdxt" id="2rdjIFBbcw6" role="3QVz_e">
                <node concept="2YIFZM" id="2rdjIFBbcw7" role="25KhWn">
                  <ref role="37wK5l" to="i8bi:Det6sRbgD5" resolve="asInstanceConcept" />
                  <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                  <node concept="35c_gC" id="2rdjIFBbcw8" role="37wK5m">
                    <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2rdjIFBbcyz" role="3cqZAp">
          <node concept="1PaTwC" id="2rdjIFBbcyB" role="1aUNEU">
            <node concept="3oM_SD" id="2rdjIFBbcyD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyE" role="1PaTwD">
              <property role="3oM_SC" value="deprecated" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyF" role="1PaTwD">
              <property role="3oM_SC" value="conceptNode" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyG" role="1PaTwD">
              <property role="3oM_SC" value="gives" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyI" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyJ" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyK" role="1PaTwD">
              <property role="3oM_SC" value="node," />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyL" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyM" role="1PaTwD">
              <property role="3oM_SC" value="isExactly(INamedConcept)" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyN" role="1PaTwD">
              <property role="3oM_SC" value="holds" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyO" role="1PaTwD">
              <property role="3oM_SC" value="there;" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyP" role="1PaTwD">
              <property role="3oM_SC" value="check_Concept_IsExactlyOperation" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyQ" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyR" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyS" role="1PaTwD">
              <property role="3oM_SC" value="warn" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyT" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="2rdjIFBbcyU" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2rdjIFBbc_c" role="3cqZAp">
          <node concept="2OqwBi" id="2rdjIFBbc_d" role="3vwVQn">
            <node concept="2OqwBi" id="2rdjIFBbc_e" role="2Oq$k0">
              <node concept="2OqwBi" id="2rdjIFBbc_f" role="2Oq$k0">
                <node concept="35c_gC" id="2rdjIFBbc_g" role="2Oq$k0">
                  <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
                <node concept="LFhST" id="2rdjIFBbc_h" role="2OqNvi" />
              </node>
              <node concept="3NT_Vc" id="2rdjIFBbc_i" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="2rdjIFBbc_j" role="2OqNvi">
              <node concept="chp4Y" id="2rdjIFBbc_k" role="3QVz_e">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="5zRhFwzZaqR">
    <property role="3s_ewP" value="ConceptCasts" />
    <node concept="3Tm1VV" id="5zRhFwzZaqS" role="1B3o_S" />
    <node concept="3s_gsd" id="5zRhFwzZaqT" role="3s_ewO">
      <node concept="3s$Bmu" id="5zRhFwzZarI" role="3s_gse">
        <property role="3s$Bm0" value="MPS_31361" />
        <node concept="3cqZAl" id="5zRhFwzZarJ" role="3clF45" />
        <node concept="3Tm1VV" id="5zRhFwzZarK" role="1B3o_S" />
        <node concept="3clFbS" id="5zRhFwzZarL" role="3clF47">
          <node concept="3cpWs8" id="5zRhFwzZasV" role="3cqZAp">
            <node concept="3cpWsn" id="5zRhFwzZasY" role="3cpWs9">
              <property role="TrG5h" value="abstractConcepts" />
              <node concept="_YKpA" id="5zRhFwzZati" role="1tU5fm">
                <node concept="3bZ5Sz" id="5zRhFwzZatS" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="5zRhFwzZaw6" role="33vP2m">
                <node concept="Tc6Ow" id="5zRhFwzZavU" role="2ShVmc">
                  <node concept="3bZ5Sz" id="5zRhFwzZavV" role="HW$YZ" />
                  <node concept="35c_gC" id="5zRhFwzZaFf" role="HW$Y0">
                    <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                  <node concept="35c_gC" id="5zRhFwzZaJy" role="HW$Y0">
                    <ref role="35c_gD" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                  </node>
                  <node concept="35c_gC" id="5zRhFwzZaS_" role="HW$Y0">
                    <ref role="35c_gD" to="tpee:fzclF8l" resolve="Statement" />
                  </node>
                  <node concept="35c_gC" id="5zRhFwzZb0y" role="HW$Y0">
                    <ref role="35c_gD" to="tpce:6TyNL3imAnw" resolve="INamedAspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5zRhFwzZaxn" role="3cqZAp">
            <node concept="3cpWsn" id="5zRhFwzZaxq" role="3cpWs9">
              <property role="TrG5h" value="statementConcepts" />
              <node concept="_YKpA" id="5zRhFwzZaxj" role="1tU5fm">
                <node concept="3bZ5Sz" id="5zRhFwzZaxT" role="_ZDj9">
                  <ref role="3bZ5Sy" to="tpee:fzclF8l" resolve="Statement" />
                </node>
              </node>
              <node concept="2OqwBi" id="5zRhFwzZi$5" role="33vP2m">
                <node concept="2OqwBi" id="5zRhFwzZdUP" role="2Oq$k0">
                  <node concept="2OqwBi" id="5zRhFwzZbRV" role="2Oq$k0">
                    <node concept="37vLTw" id="5zRhFwzZbeo" role="2Oq$k0">
                      <ref role="3cqZAo" node="5zRhFwzZasY" resolve="abstractConcepts" />
                    </node>
                    <node concept="3zZkjj" id="5zRhFwzZcI8" role="2OqNvi">
                      <node concept="1bVj0M" id="5zRhFwzZcIa" role="23t8la">
                        <node concept="3clFbS" id="5zRhFwzZcIb" role="1bW5cS">
                          <node concept="3clFbF" id="5zRhFwzZcPO" role="3cqZAp">
                            <node concept="2OqwBi" id="5zRhFwzZd8e" role="3clFbG">
                              <node concept="37vLTw" id="5zRhFwzZcPN" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0X$y" resolve="it" />
                              </node>
                              <node concept="2Zo12i" id="5zRhFwzZdtU" role="2OqNvi">
                                <node concept="chp4Y" id="5zRhFwzZdCu" role="2Zo12j">
                                  <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0X$y" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0X$z" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="5zRhFwzZeiQ" role="2OqNvi">
                    <node concept="1bVj0M" id="5zRhFwzZeiS" role="23t8la">
                      <node concept="3clFbS" id="5zRhFwzZeiT" role="1bW5cS">
                        <node concept="3clFbF" id="5zRhFwzZenE" role="3cqZAp">
                          <node concept="2CBFar" id="5zRhFwzZVzV" role="3clFbG">
                            <node concept="chp4Y" id="5zRhFwzZVIg" role="3oSUPX">
                              <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
                            </node>
                            <node concept="37vLTw" id="5zRhFwzZenD" role="1m5AlR">
                              <ref role="3cqZAo" node="5W7E4fV0X$$" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0X$$" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0X$_" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="5zRhFwzZj5I" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="5zRhFwzZiny" role="3cqZAp">
            <node concept="3cmrfG" id="5zRhFwzZiqS" role="3tpDZA">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="5zRhFwzZhmo" role="3tpDZB">
              <node concept="37vLTw" id="5zRhFwzZgOJ" role="2Oq$k0">
                <ref role="3cqZAo" node="5zRhFwzZaxq" resolve="statementConcepts" />
              </node>
              <node concept="34oBXx" id="5zRhFwzZiiV" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5zRhFwzZUCD" role="3s_gse">
        <property role="3s$Bm0" value="MPS_31361_PoundExpression" />
        <node concept="3cqZAl" id="5zRhFwzZUCE" role="3clF45" />
        <node concept="3Tm1VV" id="5zRhFwzZUCF" role="1B3o_S" />
        <node concept="3clFbS" id="5zRhFwzZUCG" role="3clF47">
          <node concept="3cpWs8" id="5zRhFwzZUCH" role="3cqZAp">
            <node concept="3cpWsn" id="5zRhFwzZUCI" role="3cpWs9">
              <property role="TrG5h" value="abstractConcepts" />
              <node concept="_YKpA" id="5zRhFwzZUCJ" role="1tU5fm">
                <node concept="3bZ5Sz" id="5zRhFwzZUCK" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="5zRhFwzZUCL" role="33vP2m">
                <node concept="Tc6Ow" id="5zRhFwzZUCM" role="2ShVmc">
                  <node concept="3bZ5Sz" id="5zRhFwzZUCN" role="HW$YZ" />
                  <node concept="35c_gC" id="5zRhFwzZUCO" role="HW$Y0">
                    <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                  <node concept="35c_gC" id="5zRhFwzZUCP" role="HW$Y0">
                    <ref role="35c_gD" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                  </node>
                  <node concept="35c_gC" id="5zRhFwzZUCQ" role="HW$Y0">
                    <ref role="35c_gD" to="tpee:fzclF8l" resolve="Statement" />
                  </node>
                  <node concept="35c_gC" id="5zRhFwzZUCR" role="HW$Y0">
                    <ref role="35c_gD" to="tpce:6TyNL3imAnw" resolve="INamedAspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5zRhFwzZUCS" role="3cqZAp">
            <node concept="3cpWsn" id="5zRhFwzZUCT" role="3cpWs9">
              <property role="TrG5h" value="statement" />
              <node concept="3bZ5Sz" id="5zRhFwzZUCU" role="1tU5fm">
                <ref role="3bZ5Sy" to="tpee:fzclF8l" resolve="Statement" />
              </node>
              <node concept="35c_gC" id="5zRhFwzZUCV" role="33vP2m">
                <ref role="35c_gD" to="tpee:fzclF8l" resolve="Statement" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5zRhFwzZUCW" role="3cqZAp">
            <node concept="3cpWsn" id="5zRhFwzZUCX" role="3cpWs9">
              <property role="TrG5h" value="statementConcepts" />
              <node concept="_YKpA" id="5zRhFwzZUCY" role="1tU5fm">
                <node concept="3bZ5Sz" id="5zRhFwzZUCZ" role="_ZDj9">
                  <ref role="3bZ5Sy" to="tpee:fzclF8l" resolve="Statement" />
                </node>
              </node>
              <node concept="2OqwBi" id="5zRhFwzZUD0" role="33vP2m">
                <node concept="2OqwBi" id="5zRhFwzZUD1" role="2Oq$k0">
                  <node concept="2OqwBi" id="5zRhFwzZUD2" role="2Oq$k0">
                    <node concept="37vLTw" id="5zRhFwzZUD3" role="2Oq$k0">
                      <ref role="3cqZAo" node="5zRhFwzZUCI" resolve="abstractConcepts" />
                    </node>
                    <node concept="3zZkjj" id="5zRhFwzZUD4" role="2OqNvi">
                      <node concept="1bVj0M" id="5zRhFwzZUD5" role="23t8la">
                        <node concept="3clFbS" id="5zRhFwzZUD6" role="1bW5cS">
                          <node concept="3clFbF" id="5zRhFwzZUD7" role="3cqZAp">
                            <node concept="2OqwBi" id="5zRhFwzZUD8" role="3clFbG">
                              <node concept="37vLTw" id="5zRhFwzZUD9" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0X$A" resolve="it" />
                              </node>
                              <node concept="2Zo12i" id="5zRhFwzZUDa" role="2OqNvi">
                                <node concept="chp4Y" id="5zRhFwzZUDb" role="2Zo12j">
                                  <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0X$A" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0X$B" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="5zRhFwzZUDe" role="2OqNvi">
                    <node concept="1bVj0M" id="5zRhFwzZUDf" role="23t8la">
                      <node concept="3clFbS" id="5zRhFwzZUDg" role="1bW5cS">
                        <node concept="3clFbF" id="5zRhFwzZUDh" role="3cqZAp">
                          <node concept="2CBFar" id="5zRhFwzZUDi" role="3clFbG">
                            <node concept="25Kdxt" id="5zRhFwzZUDj" role="3oSUPX">
                              <node concept="37vLTw" id="5zRhFwzZUDk" role="25KhWn">
                                <ref role="3cqZAo" node="5zRhFwzZUCT" resolve="statement" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5zRhFwzZUDl" role="1m5AlR">
                              <ref role="3cqZAo" node="5W7E4fV0X$C" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0X$C" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0X$D" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="5zRhFwzZUDo" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="5zRhFwzZUDp" role="3cqZAp">
            <node concept="3cmrfG" id="5zRhFwzZUDq" role="3tpDZA">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="5zRhFwzZUDr" role="3tpDZB">
              <node concept="37vLTw" id="5zRhFwzZUDs" role="2Oq$k0">
                <ref role="3cqZAo" node="5zRhFwzZUCX" resolve="statementConcepts" />
              </node>
              <node concept="34oBXx" id="5zRhFwzZUDt" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4EpASiDL0da" role="3s_gse">
        <property role="3s$Bm0" value="castToBaseConcept" />
        <node concept="3cqZAl" id="4EpASiDL0db" role="3clF45" />
        <node concept="3Tm1VV" id="4EpASiDL0dc" role="1B3o_S" />
        <node concept="3clFbS" id="4EpASiDL0dd" role="3clF47">
          <node concept="3cpWs8" id="4EpASiDIkTB" role="3cqZAp">
            <node concept="3cpWsn" id="4EpASiDIkTC" role="3cpWs9">
              <property role="TrG5h" value="bc1" />
              <node concept="3uibUv" id="4EpASiDIkTD" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
              </node>
              <node concept="35c_gC" id="4EpASiDJFjG" role="33vP2m">
                <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4EpASiDJFw8" role="3cqZAp">
            <node concept="3cpWsn" id="4EpASiDJFw9" role="3cpWs9">
              <property role="TrG5h" value="inc" />
              <node concept="3bZ5Sz" id="4EpASiDJFD0" role="1tU5fm">
                <ref role="3bZ5Sy" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
              <node concept="35c_gC" id="4EpASiDJFwa" role="33vP2m">
                <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4EpASiDKX5B" role="3cqZAp">
            <node concept="3cpWsn" id="4EpASiDKX5C" role="3cpWs9">
              <property role="TrG5h" value="bc2" />
              <node concept="3bZ5Sz" id="4EpASiDKX5p" role="1tU5fm" />
              <node concept="2CBFar" id="4EpASiDKX5D" role="33vP2m">
                <node concept="25Kdxt" id="4EpASiDKX5E" role="3oSUPX">
                  <node concept="37vLTw" id="4EpASiDKX5F" role="25KhWn">
                    <ref role="3cqZAo" node="4EpASiDIkTC" resolve="bc1" />
                  </node>
                </node>
                <node concept="37vLTw" id="4EpASiDKXd3" role="1m5AlR">
                  <ref role="3cqZAo" node="4EpASiDJFw9" resolve="inc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4EpASiDL0dU" role="3cqZAp">
            <node concept="37vLTw" id="4EpASiDXqfB" role="3tpDZA">
              <ref role="3cqZAo" node="4EpASiDJFw9" resolve="inc" />
            </node>
            <node concept="37vLTw" id="4EpASiDL0GY" role="3tpDZB">
              <ref role="3cqZAo" node="4EpASiDKX5C" resolve="bc2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2rdjIFBbc07">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ConceptIsExactlyInterface" />
    <node concept="1qefOq" id="2rdjIFBbc08" role="1SKRRt">
      <node concept="312cEu" id="2rdjIFBbc09" role="1qenE9">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="ConceptIsExactlyInterfaceProbes" />
        <node concept="3Tm1VV" id="2rdjIFBbc0b" role="1B3o_S" />
        <node concept="3clFb_" id="2rdjIFBbc0c" role="jymVt">
          <property role="TrG5h" value="probes" />
          <node concept="10Q1$e" id="2rdjIFBbc0f" role="3clF45">
            <node concept="10P_77" id="2rdjIFBbc0g" role="10Q1$1" />
          </node>
          <node concept="3Tm1VV" id="2rdjIFBbc0h" role="1B3o_S" />
          <node concept="37vLTG" id="2rdjIFBbc0i" role="3clF46">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="2rdjIFBbc0j" role="1tU5fm">
              <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
          </node>
          <node concept="3clFbS" id="2rdjIFBbc0k" role="3clF47">
            <node concept="3cpWs8" id="2rdjIFBbc0l" role="3cqZAp">
              <node concept="3cpWsn" id="2rdjIFBbc0m" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="3bZ5Sz" id="2rdjIFBbc0n" role="1tU5fm" />
                <node concept="2OqwBi" id="2rdjIFBbc0o" role="33vP2m">
                  <node concept="37vLTw" id="2rdjIFBbc0p" role="2Oq$k0">
                    <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                  </node>
                  <node concept="2yIwOk" id="2rdjIFBbc0q" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2rdjIFBbc0r" role="3cqZAp">
              <node concept="2ShNRf" id="2rdjIFBbc0s" role="3cqZAk">
                <node concept="3g6Rrh" id="2rdjIFBbc0t" role="2ShVmc">
                  <node concept="10P_77" id="2rdjIFBbc0u" role="3g7fb8" />
                  <node concept="2OqwBi" id="2rdjIFBbc0v" role="3g7hyw">
                    <node concept="2OqwBi" id="2rdjIFBbc0w" role="2Oq$k0">
                      <node concept="37vLTw" id="2rdjIFBbc0x" role="2Oq$k0">
                        <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                      </node>
                      <node concept="2yIwOk" id="2rdjIFBbc0y" role="2OqNvi" />
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc0z" role="2OqNvi">
                      <node concept="chp4Y" id="2rdjIFBbc0$" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                      <node concept="7CXmI" id="2rdjIFBbc0_" role="lGtFl">
                        <node concept="29bkU" id="2rdjIFBbc0A" role="7EUXB">
                          <node concept="2PQEqo" id="2rdjIFBgEJ1" role="3lydCh">
                            <ref role="39XzEq" to="tpeq:2rdjIFBbunV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc0B" role="3g7hyw">
                    <node concept="2OqwBi" id="2rdjIFBbc0C" role="2Oq$k0">
                      <node concept="37vLTw" id="2rdjIFBbc0D" role="2Oq$k0">
                        <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                      </node>
                      <node concept="2yIwOk" id="2rdjIFBbc0E" role="2OqNvi" />
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc0F" role="2OqNvi">
                      <node concept="25Kdxt" id="2rdjIFBbc0G" role="3QVz_e">
                        <node concept="35c_gC" id="2rdjIFBbc0H" role="25KhWn">
                          <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                        </node>
                      </node>
                      <node concept="7CXmI" id="2rdjIFBbc0I" role="lGtFl">
                        <node concept="29bkU" id="2rdjIFBbc0J" role="7EUXB">
                          <node concept="2PQEqo" id="2rdjIFBgELj" role="3lydCh">
                            <ref role="39XzEq" to="tpeq:2rdjIFBbunV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc0K" role="3g7hyw">
                    <node concept="1eOMI4" id="2rdjIFBbc0L" role="2Oq$k0">
                      <node concept="2OqwBi" id="2rdjIFBbc0M" role="1eOMHV">
                        <node concept="37vLTw" id="2rdjIFBbc0N" role="2Oq$k0">
                          <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                        </node>
                        <node concept="2yIwOk" id="2rdjIFBbc0O" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc0P" role="2OqNvi">
                      <node concept="chp4Y" id="2rdjIFBbc0Q" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                      <node concept="7CXmI" id="2rdjIFBbc0R" role="lGtFl">
                        <node concept="29bkU" id="2rdjIFBbc0S" role="7EUXB">
                          <node concept="2PQEqo" id="2rdjIFBgEN_" role="3lydCh">
                            <ref role="39XzEq" to="tpeq:2rdjIFBbunV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1zcevODp4ro" role="3g7hyw">
                    <node concept="2OqwBi" id="1zcevODp4rp" role="2Oq$k0">
                      <node concept="2JrnkZ" id="1zcevODp4rq" role="2Oq$k0">
                        <node concept="37vLTw" id="1zcevODp4rr" role="2JrQYb">
                          <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1zcevODp4rs" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                    </node>
                    <node concept="3O6GUB" id="1zcevODp4rt" role="2OqNvi">
                      <node concept="chp4Y" id="1zcevODp4ru" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                      <node concept="7CXmI" id="1zcevODp4rv" role="lGtFl">
                        <node concept="29bkU" id="1zcevODp4rw" role="7EUXB">
                          <node concept="2PQEqo" id="1zcevODp4rx" role="3lydCh">
                            <ref role="39XzEq" to="tpeq:2rdjIFBbunV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1zcevODp4u2" role="3g7hyw">
                    <node concept="2YIFZM" id="1zcevODp4u3" role="2Oq$k0">
                      <ref role="37wK5l" to="i8bi:1ZwKn$cfVJ" resolve="getConcept" />
                      <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                      <node concept="37vLTw" id="1zcevODp4u4" role="37wK5m">
                        <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                      </node>
                    </node>
                    <node concept="3O6GUB" id="1zcevODp4u5" role="2OqNvi">
                      <node concept="25Kdxt" id="1zcevODp4u6" role="3QVz_e">
                        <node concept="35c_gC" id="1zcevODp4u7" role="25KhWn">
                          <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                        </node>
                      </node>
                      <node concept="7CXmI" id="1zcevODp4u8" role="lGtFl">
                        <node concept="29bkU" id="1zcevODp4u9" role="7EUXB">
                          <node concept="2PQEqo" id="1zcevODp4ua" role="3lydCh">
                            <ref role="39XzEq" to="tpeq:2rdjIFBbunV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1zcevODp4w_" role="3g7hyw">
                    <node concept="2YIFZM" id="1zcevODp4wA" role="2Oq$k0">
                      <ref role="37wK5l" to="i8bi:Det6sRbgD5" resolve="asInstanceConcept" />
                      <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                      <node concept="35c_gC" id="1zcevODp4wB" role="37wK5m">
                        <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                    </node>
                    <node concept="3O6GUB" id="1zcevODp4wC" role="2OqNvi">
                      <node concept="chp4Y" id="1zcevODp4wD" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                      <node concept="7CXmI" id="1zcevODp4wE" role="lGtFl">
                        <node concept="29bkU" id="1zcevODp4wF" role="7EUXB">
                          <node concept="2PQEqo" id="1zcevODp4wG" role="3lydCh">
                            <ref role="39XzEq" to="tpeq:2rdjIFBbunV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc0T" role="3g7hyw">
                    <node concept="35c_gC" id="2rdjIFBbc0U" role="2Oq$k0">
                      <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc0V" role="2OqNvi">
                      <node concept="chp4Y" id="2rdjIFBbc0W" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc0X" role="3g7hyw">
                    <node concept="37vLTw" id="2rdjIFBbc0Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="2rdjIFBbc0m" resolve="c" />
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc0Z" role="2OqNvi">
                      <node concept="chp4Y" id="2rdjIFBbc10" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc11" role="3g7hyw">
                    <node concept="2OqwBi" id="2rdjIFBbc12" role="2Oq$k0">
                      <node concept="37vLTw" id="2rdjIFBbc13" role="2Oq$k0">
                        <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                      </node>
                      <node concept="2yIwOk" id="2rdjIFBbc14" role="2OqNvi" />
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc15" role="2OqNvi">
                      <node concept="chp4Y" id="2rdjIFBbc16" role="3QVz_e">
                        <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc17" role="3g7hyw">
                    <node concept="2OqwBi" id="2rdjIFBbc18" role="2Oq$k0">
                      <node concept="37vLTw" id="2rdjIFBbc19" role="2Oq$k0">
                        <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                      </node>
                      <node concept="2yIwOk" id="2rdjIFBbc1a" role="2OqNvi" />
                    </node>
                    <node concept="3O6GUB" id="2rdjIFBbc1b" role="2OqNvi">
                      <node concept="25Kdxt" id="2rdjIFBbc1c" role="3QVz_e">
                        <node concept="2YIFZM" id="2rdjIFBbc1d" role="25KhWn">
                          <ref role="37wK5l" to="i8bi:Det6sRbgD5" resolve="asInstanceConcept" />
                          <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                          <node concept="35c_gC" id="2rdjIFBbc1e" role="37wK5m">
                            <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2rdjIFBbc1f" role="3g7hyw">
                    <node concept="2OqwBi" id="2rdjIFBbc1g" role="2Oq$k0">
                      <node concept="37vLTw" id="2rdjIFBbc1h" role="2Oq$k0">
                        <ref role="3cqZAo" node="2rdjIFBbc0i" resolve="n" />
                      </node>
                      <node concept="2yIwOk" id="2rdjIFBbc1i" role="2OqNvi" />
                    </node>
                    <node concept="2Zo12i" id="2rdjIFBbc1j" role="2OqNvi">
                      <node concept="chp4Y" id="2rdjIFBbc1k" role="2Zo12j">
                        <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2rdjIFBbc1l" role="lGtFl">
          <node concept="7OXhh" id="2rdjIFBbc1m" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

