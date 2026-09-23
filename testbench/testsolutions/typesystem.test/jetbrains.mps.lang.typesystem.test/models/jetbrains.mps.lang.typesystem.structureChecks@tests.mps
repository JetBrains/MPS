<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5e77cc98-4b02-41db-8bdb-56ac74f14d4a(jetbrains.mps.lang.typesystem.structureChecks@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcj" ref="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="k8ev" ref="r:f39afe13-666a-48f2-9d7c-2f9366f78fe5(jetbrains.mps.typesystemEngine.checker)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A">
        <child id="8489045168660938517" name="errorRef" index="3lydEf" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  </registry>
  <node concept="1lH9Xt" id="S6p3JsxbA7">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="SpecializedLinkRedeclaration" />
    <node concept="1qefOq" id="S6p3JsxbA8" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAa" role="1qenE9">
        <property role="EcuMT" value="1010605374656788874" />
        <property role="TrG5h" value="SpecChain_Base" />
        <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAb" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAd" role="1qenE9">
        <property role="EcuMT" value="1010605374656788877" />
        <property role="TrG5h" value="SpecChain_Mid" />
        <ref role="1TJDcQ" node="S6p3JsxbAa" />
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAe" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAg" role="1qenE9">
        <property role="EcuMT" value="1010605374656788880" />
        <property role="TrG5h" value="SpecChain_Leaf" />
        <ref role="1TJDcQ" node="S6p3JsxbAd" />
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAh" role="1SKRRt">
      <node concept="PlHQZ" id="S6p3JsxbAj" role="1qenE9">
        <property role="EcuMT" value="1010605374656788883" />
        <property role="TrG5h" value="ISpecChain" />
        <node concept="1TJgyj" id="S6p3JsxbAk" role="1TKVEi">
          <property role="IQ2ns" value="1010605374656788884" />
          <property role="20kJfa" value="r" />
          <property role="20lmBu" value="fLJjDmT/aggregation" />
          <property role="20lbJX" value="fLJekj5/_0__n" />
          <ref role="20lvS9" node="S6p3JsxbAa" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAl" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAn" role="1qenE9">
        <property role="EcuMT" value="1010605374656788887" />
        <property role="TrG5h" value="SpecChain_Concept" />
        <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <node concept="PrWs8" id="S6p3JsxbAo" role="PzmwI">
          <ref role="PrY4T" node="S6p3JsxbAj" />
        </node>
        <node concept="1TJgyj" id="S6p3JsxbAp" role="1TKVEi">
          <property role="IQ2ns" value="1010605374656788889" />
          <property role="20kJfa" value="r" />
          <property role="20lmBu" value="fLJjDmT/aggregation" />
          <property role="20lbJX" value="fLJekj6/_1__n" />
          <ref role="20lvS9" node="S6p3JsxbAd" />
          <ref role="20ksaX" node="S6p3JsxbAk" />
          <node concept="3xLA65" id="S6p3Jsxj8q" role="lGtFl">
            <property role="TrG5h" value="conceptLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAs" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAu" role="1qenE9">
        <property role="EcuMT" value="1010605374656788894" />
        <property role="TrG5h" value="SpecChain_SubConcept" />
        <ref role="1TJDcQ" node="S6p3JsxbAn" />
        <node concept="1TJgyj" id="S6p3JsxbAv" role="1TKVEi">
          <property role="IQ2ns" value="1010605374656788895" />
          <property role="20kJfa" value="r" />
          <property role="20lmBu" value="fLJjDmT/aggregation" />
          <property role="20lbJX" value="fLJekj6/_1__n" />
          <ref role="20lvS9" node="S6p3JsxbAg" />
          <ref role="20ksaX" node="S6p3JsxbAp" />
          <node concept="3xLA65" id="S6p3Jsxj8r" role="lGtFl">
            <property role="TrG5h" value="subConceptLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAy" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbA$" role="1qenE9">
        <property role="EcuMT" value="1010605374656788900" />
        <property role="TrG5h" value="Redecl_Base" />
        <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbA_" role="1SKRRt">
      <node concept="PlHQZ" id="S6p3JsxbAB" role="1qenE9">
        <property role="EcuMT" value="1010605374656788903" />
        <property role="TrG5h" value="IRedecl" />
        <node concept="1TJgyj" id="S6p3JsxbAC" role="1TKVEi">
          <property role="IQ2ns" value="1010605374656788904" />
          <property role="20kJfa" value="r" />
          <property role="20lmBu" value="fLJjDmT/aggregation" />
          <property role="20lbJX" value="fLJekj5/_0__n" />
          <ref role="20lvS9" node="S6p3JsxbA$" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAD" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAF" role="1qenE9">
        <property role="EcuMT" value="1010605374656788907" />
        <property role="TrG5h" value="Redecl_Concept" />
        <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <node concept="PrWs8" id="S6p3JsxbAG" role="PzmwI">
          <ref role="PrY4T" node="S6p3JsxbAB" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="S6p3JsxbAH" role="1SKRRt">
      <node concept="1TIwiD" id="S6p3JsxbAJ" role="1qenE9">
        <property role="EcuMT" value="1010605374656788911" />
        <property role="TrG5h" value="Redecl_SubConcept" />
        <ref role="1TJDcQ" node="S6p3JsxbAF" />
        <node concept="1TJgyj" id="S6p3JsxbAK" role="1TKVEi">
          <property role="IQ2ns" value="1010605374656788912" />
          <property role="20kJfa" value="r" />
          <property role="20lmBu" value="fLJjDmT/aggregation" />
          <property role="20lbJX" value="fLJekj5/_0__n" />
          <ref role="20lvS9" node="S6p3JsxbA$" />
          <node concept="7CXmI" id="S6p3JsxbAL" role="lGtFl">
            <node concept="1TM$A" id="S6p3JsxbAM" role="7EUXB">
              <node concept="2PYRI3" id="S6p3JsxbAN" role="3lydEf">
                <ref role="39XzEq" to="tpcj:hCVEK3j" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="S6p3Jsxn_I" role="1SL9yI">
      <property role="TrG5h" value="multiLevelSpecializationChainIsNotRedeclaration" />
      <node concept="3cqZAl" id="S6p3Jsxn_L" role="3clF45" />
      <node concept="3clFbS" id="S6p3Jsxn_M" role="3clF47">
        <node concept="3cpWs8" id="S6p3Jsxun3" role="3cqZAp">
          <node concept="3cpWsn" id="S6p3Jsxun2" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="S6p3Jsxun4" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
            </node>
            <node concept="3xONca" id="S6p3JsxAvD" role="33vP2m">
              <ref role="3xOPvv" node="S6p3Jsxj8r" resolve="subConceptLink" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="S6p3Jsxun7" role="3cqZAp">
          <node concept="3cpWsn" id="S6p3Jsxun6" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="3uibUv" id="S6p3Jsxun8" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="java.util.List" />
              <node concept="3uibUv" id="S6p3Jsxun9" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="S6p3JsxunK" role="33vP2m">
              <node concept="1pGfFk" id="S6p3JsxunP" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="S6p3JsxunQ" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="S6p3Jsxunc" role="3cqZAp">
          <node concept="2OqwBi" id="S6p3Jsxuy7" role="1DdaDG">
            <node concept="2ShNRf" id="S6p3JsxunZ" role="2Oq$k0">
              <node concept="1pGfFk" id="S6p3Jsxuo2" role="2ShVmc">
                <ref role="37wK5l" to="k8ev:mDYNhtw$3s" resolve="NonTypesystemChecker" />
              </node>
            </node>
            <node concept="liA8E" id="S6p3Jsxuy8" role="2OqNvi">
              <ref role="37wK5l" to="k8ev:mDYNhtw$3w" resolve="getErrors" />
              <node concept="2OqwBi" id="S6p3JsxuBN" role="37wK5m">
                <node concept="37vLTw" id="S6p3Jsxuya" role="2Oq$k0">
                  <ref role="3cqZAo" node="S6p3Jsxun2" resolve="link" />
                </node>
                <node concept="liA8E" id="S6p3JsxuBO" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
              <node concept="2OqwBi" id="S6p3JsxuDh" role="37wK5m">
                <node concept="2OqwBi" id="S6p3JsxuC7" role="2Oq$k0">
                  <node concept="37vLTw" id="S6p3Jsxuyd" role="2Oq$k0">
                    <ref role="3cqZAo" node="S6p3Jsxun2" resolve="link" />
                  </node>
                  <node concept="liA8E" id="S6p3JsxuC8" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="liA8E" id="S6p3JsxuDi" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="S6p3Jsxuns" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <node concept="3uibUv" id="S6p3Jsxunu" role="1tU5fm">
              <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="jetbrains.mps.errors.item.NodeReportItem" />
            </node>
          </node>
          <node concept="3clFbS" id="S6p3Jsxune" role="2LFqv$">
            <node concept="3clFbJ" id="S6p3Jsxunf" role="3cqZAp">
              <node concept="1Wc70l" id="S6p3Jsxung" role="3clFbw">
                <node concept="2OqwBi" id="S6p3JsxuCt" role="3uHU7B">
                  <node concept="2OqwBi" id="S6p3Jsxuyw" role="2Oq$k0">
                    <node concept="37vLTw" id="S6p3Jsxuon" role="2Oq$k0">
                      <ref role="3cqZAo" node="S6p3Jsxun2" resolve="link" />
                    </node>
                    <node concept="liA8E" id="S6p3Jsxuyx" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="S6p3JsxuCu" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="S6p3JsxuCv" role="37wK5m">
                      <node concept="37vLTw" id="S6p3JsxuCw" role="2Oq$k0">
                        <ref role="3cqZAo" node="S6p3Jsxuns" resolve="item" />
                      </node>
                      <node concept="liA8E" id="S6p3JsxuCx" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~NodeFlavouredItem.getNode()" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="S6p3JsxuCS" role="3uHU7w">
                  <node concept="2OqwBi" id="S6p3JsxuyY" role="2Oq$k0">
                    <node concept="37vLTw" id="S6p3Jsxuoz" role="2Oq$k0">
                      <ref role="3cqZAo" node="S6p3Jsxuns" resolve="item" />
                    </node>
                    <node concept="liA8E" id="S6p3JsxuyZ" role="2OqNvi">
                      <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="S6p3JsxuCT" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="S6p3JsxuCU" role="37wK5m">
                      <property role="Xl_RC" value="is already declared" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="S6p3Jsxuno" role="3clFbx">
                <node concept="3clFbF" id="S6p3Jsxunp" role="3cqZAp">
                  <node concept="2OqwBi" id="S6p3Jsxu_i" role="3clFbG">
                    <node concept="37vLTw" id="S6p3Jsxuo_" role="2Oq$k0">
                      <ref role="3cqZAo" node="S6p3Jsxun6" resolve="errors" />
                    </node>
                    <node concept="liA8E" id="S6p3Jsxu_j" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="S6p3JsxuDs" role="37wK5m">
                        <node concept="37vLTw" id="S6p3JsxuCV" role="2Oq$k0">
                          <ref role="3cqZAo" node="S6p3Jsxuns" resolve="item" />
                        </node>
                        <node concept="liA8E" id="S6p3JsxuDt" role="2OqNvi">
                          <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="S6p3Jsxun$" role="3cqZAp">
          <node concept="3fqX7Q" id="S6p3Jsxun_" role="3clFbw">
            <node concept="1eOMI4" id="S6p3JsxunB" role="3fr31v">
              <node concept="2OqwBi" id="S6p3JsxuBB" role="1eOMHV">
                <node concept="37vLTw" id="S6p3JsxuoC" role="2Oq$k0">
                  <ref role="3cqZAo" node="S6p3Jsxun6" resolve="errors" />
                </node>
                <node concept="liA8E" id="S6p3JsxuBC" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="S6p3JsxunD" role="3clFbx">
            <node concept="YS8fn" id="S6p3JsxunI" role="3cqZAp">
              <node concept="2ShNRf" id="S6p3JsxuoE" role="YScLw">
                <node concept="1pGfFk" id="S6p3JsxuxB" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~AssertionError.&lt;init&gt;(java.lang.Object)" resolve="AssertionError" />
                  <node concept="3cpWs3" id="S6p3JsxuxC" role="37wK5m">
                    <node concept="Xl_RD" id="S6p3JsxuxD" role="3uHU7B">
                      <property role="Xl_RC" value="Unexpected redeclaration error(s): " />
                    </node>
                    <node concept="37vLTw" id="S6p3JsxuxE" role="3uHU7w">
                      <ref role="3cqZAo" node="S6p3Jsxun6" resolve="errors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="S6p3Jsxn_N" role="1SL9yI">
      <property role="TrG5h" value="linkSpecializingDirectSuperIsNotRedeclaration" />
      <node concept="3cqZAl" id="S6p3Jsxn_Q" role="3clF45" />
      <node concept="3clFbS" id="S6p3Jsxn_R" role="3clF47">
        <node concept="3cpWs8" id="S6p3JsxrX_" role="3cqZAp">
          <node concept="3cpWsn" id="S6p3JsxrX$" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="S6p3JsxrXA" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="org.jetbrains.mps.openapi.model.SNode" />
            </node>
            <node concept="3xONca" id="S6p3JsxunJ" role="33vP2m">
              <ref role="3xOPvv" node="S6p3Jsxj8q" resolve="conceptLink" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="S6p3JsxrXD" role="3cqZAp">
          <node concept="3cpWsn" id="S6p3JsxrXC" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="3uibUv" id="S6p3JsxrXE" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="java.util.List" />
              <node concept="3uibUv" id="S6p3JsxrXF" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="S6p3JsxrYh" role="33vP2m">
              <node concept="1pGfFk" id="S6p3JsxrYm" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="S6p3JsxrYn" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="S6p3JsxrXI" role="3cqZAp">
          <node concept="2OqwBi" id="S6p3Jsxs8C" role="1DdaDG">
            <node concept="2ShNRf" id="S6p3JsxrYw" role="2Oq$k0">
              <node concept="1pGfFk" id="S6p3JsxrYz" role="2ShVmc">
                <ref role="37wK5l" to="k8ev:mDYNhtw$3s" resolve="NonTypesystemChecker" />
              </node>
            </node>
            <node concept="liA8E" id="S6p3Jsxs8D" role="2OqNvi">
              <ref role="37wK5l" to="k8ev:mDYNhtw$3w" resolve="getErrors" />
              <node concept="2OqwBi" id="S6p3Jsxsek" role="37wK5m">
                <node concept="37vLTw" id="S6p3Jsxs8F" role="2Oq$k0">
                  <ref role="3cqZAo" node="S6p3JsxrX$" resolve="link" />
                </node>
                <node concept="liA8E" id="S6p3Jsxsel" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
              <node concept="2OqwBi" id="S6p3JsxsfM" role="37wK5m">
                <node concept="2OqwBi" id="S6p3JsxseC" role="2Oq$k0">
                  <node concept="37vLTw" id="S6p3Jsxs8I" role="2Oq$k0">
                    <ref role="3cqZAo" node="S6p3JsxrX$" resolve="link" />
                  </node>
                  <node concept="liA8E" id="S6p3JsxseD" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="liA8E" id="S6p3JsxsfN" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="S6p3JsxrXY" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <node concept="3uibUv" id="S6p3JsxrY0" role="1tU5fm">
              <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="jetbrains.mps.errors.item.NodeReportItem" />
            </node>
          </node>
          <node concept="3clFbS" id="S6p3JsxrXK" role="2LFqv$">
            <node concept="3clFbJ" id="S6p3JsxrXL" role="3cqZAp">
              <node concept="1Wc70l" id="S6p3JsxrXM" role="3clFbw">
                <node concept="2OqwBi" id="S6p3JsxseY" role="3uHU7B">
                  <node concept="2OqwBi" id="S6p3Jsxs91" role="2Oq$k0">
                    <node concept="37vLTw" id="S6p3JsxrYS" role="2Oq$k0">
                      <ref role="3cqZAo" node="S6p3JsxrX$" resolve="link" />
                    </node>
                    <node concept="liA8E" id="S6p3Jsxs92" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="S6p3JsxseZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="S6p3Jsxsf0" role="37wK5m">
                      <node concept="37vLTw" id="S6p3Jsxsf1" role="2Oq$k0">
                        <ref role="3cqZAo" node="S6p3JsxrXY" resolve="item" />
                      </node>
                      <node concept="liA8E" id="S6p3Jsxsf2" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~NodeFlavouredItem.getNode()" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="S6p3Jsxsfp" role="3uHU7w">
                  <node concept="2OqwBi" id="S6p3Jsxs9v" role="2Oq$k0">
                    <node concept="37vLTw" id="S6p3JsxrZ4" role="2Oq$k0">
                      <ref role="3cqZAo" node="S6p3JsxrXY" resolve="item" />
                    </node>
                    <node concept="liA8E" id="S6p3Jsxs9w" role="2OqNvi">
                      <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="S6p3Jsxsfq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="S6p3Jsxsfr" role="37wK5m">
                      <property role="Xl_RC" value="is already declared" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="S6p3JsxrXU" role="3clFbx">
                <node concept="3clFbF" id="S6p3JsxrXV" role="3cqZAp">
                  <node concept="2OqwBi" id="S6p3JsxsbN" role="3clFbG">
                    <node concept="37vLTw" id="S6p3JsxrZ6" role="2Oq$k0">
                      <ref role="3cqZAo" node="S6p3JsxrXC" resolve="errors" />
                    </node>
                    <node concept="liA8E" id="S6p3JsxsbO" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="S6p3JsxsfX" role="37wK5m">
                        <node concept="37vLTw" id="S6p3Jsxsfs" role="2Oq$k0">
                          <ref role="3cqZAo" node="S6p3JsxrXY" resolve="item" />
                        </node>
                        <node concept="liA8E" id="S6p3JsxsfY" role="2OqNvi">
                          <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="S6p3JsxrY6" role="3cqZAp">
          <node concept="3fqX7Q" id="S6p3JsxrY7" role="3clFbw">
            <node concept="1eOMI4" id="S6p3JsxrY9" role="3fr31v">
              <node concept="2OqwBi" id="S6p3Jsxse8" role="1eOMHV">
                <node concept="37vLTw" id="S6p3JsxrZ9" role="2Oq$k0">
                  <ref role="3cqZAo" node="S6p3JsxrXC" resolve="errors" />
                </node>
                <node concept="liA8E" id="S6p3Jsxse9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="S6p3JsxrYb" role="3clFbx">
            <node concept="YS8fn" id="S6p3JsxrYg" role="3cqZAp">
              <node concept="2ShNRf" id="S6p3JsxrZb" role="YScLw">
                <node concept="1pGfFk" id="S6p3Jsxs88" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~AssertionError.&lt;init&gt;(java.lang.Object)" resolve="AssertionError" />
                  <node concept="3cpWs3" id="S6p3Jsxs89" role="37wK5m">
                    <node concept="Xl_RD" id="S6p3Jsxs8a" role="3uHU7B">
                      <property role="Xl_RC" value="Unexpected redeclaration error(s): " />
                    </node>
                    <node concept="37vLTw" id="S6p3Jsxs8b" role="3uHU7w">
                      <ref role="3cqZAo" node="S6p3JsxrXC" resolve="errors" />
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
</model>

