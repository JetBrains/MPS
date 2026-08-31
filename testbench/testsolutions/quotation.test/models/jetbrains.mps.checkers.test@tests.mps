<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:afa6200c-5e34-4244-b141-d3f095bc906f(jetbrains.mps.checkers.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="tpcj" ref="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
    <import index="tpcg" ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" />
    <import index="rl1i" ref="r:8a82b7a4-1180-4262-8f18-8c96a5d3ac16(jetbrains.mps.ide.hierarchy)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
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
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7835233914439520906" name="jetbrains.mps.lang.test.structure.AbstractNodeRuleCheckOperation" flags="ng" index="mZCkL">
        <child id="710597951278798299" name="expectedMessage" index="1DMPz9" />
      </concept>
      <concept id="7691029917083831655" name="jetbrains.mps.lang.test.structure.UnknownRuleReference" flags="ng" index="2u4KIi" />
      <concept id="7691029917083872157" name="jetbrains.mps.lang.test.structure.IRuleReference" flags="ngI" index="2u4UPC">
        <reference id="8333855927540250453" name="declaration" index="39XzEq" />
      </concept>
      <concept id="4531408400484511853" name="jetbrains.mps.lang.test.structure.ReportErrorStatementReference" flags="ng" index="2PYRI3" />
      <concept id="8333855927540283103" name="jetbrains.mps.lang.test.structure.NodeConstraintsErrorCheckOperation" flags="ng" index="39XrGg">
        <child id="8333855927548182241" name="errorRef" index="39rjcI" />
      </concept>
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
      <concept id="710597951278798236" name="jetbrains.mps.lang.test.structure.ExpectedMessageContainer" flags="ng" index="1DMPye">
        <property id="710597951278798237" name="text" index="1DMPyf" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ngI" index="2c44t0">
        <property id="6489343236075007666" name="label" index="3hQQBS" />
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="4056363777117001481" name="jetbrains.mps.lang.quotation.structure.StringToTypedValueMigrationInfo" flags="ngI" index="AAgTk">
        <property id="2173356959483005420" name="stringValueMigrated" index="3qcH_f" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
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
  </registry>
  <node concept="1lH9Xt" id="5TUCQr3cQ2o">
    <property role="TrG5h" value="SuppressErrorsTest" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1qefOq" id="5TUCQr3cQpB" role="1SKRRt">
      <node concept="1eOMI4" id="5TUCQr3iBf8" role="1qenE9">
        <node concept="17qRlL" id="5TUCQr3iEj4" role="1eOMHV">
          <node concept="3cmrfG" id="5TUCQr3iC40" role="3uHU7B">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="Xl_RD" id="5TUCQr3iDXq" role="3uHU7w">
            <property role="Xl_RC" value="" />
          </node>
          <node concept="7CXmI" id="29gobADqJJt" role="lGtFl">
            <node concept="1TM$A" id="29gobADqJJu" role="7EUXB">
              <node concept="2PYRI3" id="29gobADqJJv" role="3lydEf">
                <ref role="39XzEq" to="tpeh:1d383CxV4OK" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="29gobADr4nD" role="lGtFl">
          <node concept="7OXhh" id="29gobADr4vR" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5TUCQr3cQ3a" role="1SKRRt">
      <node concept="2c44tf" id="5TUCQr3cQ4S" role="1qenE9">
        <node concept="1eOMI4" id="5TUCQr3iELC" role="2c44tc">
          <node concept="17qRlL" id="5TUCQr3iELD" role="1eOMHV">
            <node concept="3cmrfG" id="5TUCQr3iELE" role="3uHU7B">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="Xl_RD" id="5TUCQr3iELF" role="3uHU7w">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="29gobADr4xr" role="lGtFl">
          <node concept="7OXhh" id="29gobADr4x$" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5TUCQr3iyLL" role="1SKRRt">
      <node concept="2c44tf" id="5TUCQr3izr6" role="1qenE9">
        <node concept="3cpWs3" id="5TUCQr3iEUN" role="2c44tc">
          <node concept="3cmrfG" id="5TUCQr3iEUW" role="3uHU7B">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="3cmrfG" id="5TUCQr3iJsS" role="3uHU7w">
            <property role="3cmrfH" value="2" />
            <node concept="2EMmih" id="5TUCQr3iLqx" role="lGtFl">
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
              <property role="2qtEX9" value="value" />
              <property role="3hQQBS" value="IntegerConstant" />
              <property role="3qcH_f" value="true" />
              <node concept="1eOMI4" id="5TUCQr3iMfS" role="2c44t1">
                <node concept="17qRlL" id="5TUCQr3iMfT" role="1eOMHV">
                  <node concept="3cmrfG" id="5TUCQr3iMfU" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="Xl_RD" id="5TUCQr3iMfV" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="7CXmI" id="29gobADqKVT" role="lGtFl">
                    <node concept="1TM$A" id="29gobADqKVU" role="7EUXB">
                      <node concept="2PYRI3" id="29gobADqKVV" role="3lydEf">
                        <ref role="39XzEq" to="tpeh:1d383CxV4OK" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="29gobADr4yZ" role="lGtFl">
          <node concept="7OXhh" id="29gobADr4z8" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6AHMUXrgltQ">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ConceptHierarchyCycleTest" />
    <node concept="1qefOq" id="6AHMUXrgltR" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltT" role="1qenE9">
        <property role="EcuMT" value="7614966498964100985" />
        <property role="TrG5h" value="CyclicSelfExtendingConcept" />
        <ref role="1TJDcQ" node="6AHMUXrgltT" resolve="CyclicSelfExtendingConcept" />
        <node concept="7CXmI" id="6AHMUXrglCf" role="lGtFl">
          <node concept="1TM$A" id="2deb$5$b5K6" role="7EUXB">
            <node concept="2PYRI3" id="2deb$5$b5K7" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5K8" role="1DMPz9">
              <property role="1DMPyf" value="Error: Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
          <node concept="39XrGg" id="2deb$5$b5K9" role="7EUXB">
            <node concept="2u4KIi" id="2deb$5$b5Ka" role="39rjcI">
              <ref role="39XzEq" to="tpcg:5Vvmn_QkT3X" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kb" role="1DMPz9">
              <property role="1DMPyf" value="The reference  CyclicSelfExtendingConcept (extends) is out of search scope" />
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="1NJXWPlwMez" role="lGtFl">
          <property role="TrG5h" value="selfExtending" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6AHMUXrgltU" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltW" role="1qenE9">
        <property role="EcuMT" value="7614966498964100988" />
        <property role="TrG5h" value="CyclicConceptA" />
        <ref role="1TJDcQ" node="6AHMUXrgltZ" resolve="CyclicConceptB" />
        <node concept="7CXmI" id="6AHMUXrglCI" role="lGtFl">
          <node concept="39XrGg" id="2deb$5$b5Kc" role="7EUXB">
            <node concept="2u4KIi" id="2deb$5$b5Kd" role="39rjcI">
              <ref role="39XzEq" to="tpcg:5Vvmn_QkT3X" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Ke" role="1DMPz9">
              <property role="1DMPyf" value="The reference  CyclicConceptB (extends) is out of search scope" />
            </node>
          </node>
          <node concept="1TM$A" id="2deb$5$b5Kf" role="7EUXB">
            <node concept="2PYRI3" id="2deb$5$b5Kg" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kh" role="1DMPz9">
              <property role="1DMPyf" value="Error: Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="1NJXWPlwQVs" role="lGtFl">
          <property role="TrG5h" value="conceptA" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6AHMUXrgltX" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltZ" role="1qenE9">
        <property role="EcuMT" value="7614966498964100991" />
        <property role="TrG5h" value="CyclicConceptB" />
        <ref role="1TJDcQ" node="6AHMUXrgltW" resolve="CyclicConceptA" />
        <node concept="7CXmI" id="6AHMUXrglDd" role="lGtFl">
          <node concept="1TM$A" id="2deb$5$b5Ki" role="7EUXB">
            <node concept="2PYRI3" id="2deb$5$b5Kj" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kk" role="1DMPz9">
              <property role="1DMPyf" value="Error: Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
          <node concept="39XrGg" id="2deb$5$b5Kl" role="7EUXB">
            <node concept="2u4KIi" id="2deb$5$b5Km" role="39rjcI">
              <ref role="39XzEq" to="tpcg:5Vvmn_QkT3X" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kn" role="1DMPz9">
              <property role="1DMPyf" value="The reference  CyclicConceptA (extends) is out of search scope" />
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="1NJXWPlwVPd" role="lGtFl">
          <property role="TrG5h" value="conceptB" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1NJXWPlx0xp" role="1SL9yI">
      <property role="TrG5h" value="selfExtendingConceptHierarchyTerminates" />
      <node concept="3cqZAl" id="1NJXWPlx0xs" role="3clF45" />
      <node concept="3clFbS" id="1NJXWPlx0xt" role="3clF47">
        <node concept="3clFbF" id="1NJXWPlxa8T" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPlxa8W" role="3clFbG">
            <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
            <ref role="37wK5l" node="1NJXWPlwJKE" resolve="buildParentHierarchy" />
            <node concept="3xONca" id="1NJXWPlxag_" role="37wK5m">
              <ref role="3xOPvv" node="1NJXWPlwMez" resolve="selfExtending" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1NJXWPlx5rV" role="1SL9yI">
      <property role="TrG5h" value="mutuallyExtendingConceptHierarchyTerminates" />
      <node concept="3cqZAl" id="1NJXWPlx5rY" role="3clF45" />
      <node concept="3clFbS" id="1NJXWPlx5rZ" role="3clF47">
        <node concept="3clFbF" id="1NJXWPlxabh" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPlxabn" role="3clFbG">
            <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
            <ref role="37wK5l" node="1NJXWPlwJKE" resolve="buildParentHierarchy" />
            <node concept="3xONca" id="1NJXWPlxfam" role="37wK5m">
              <ref role="3xOPvv" node="1NJXWPlwQVs" resolve="conceptA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPlxabk" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPlxabp" role="3clFbG">
            <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
            <ref role="37wK5l" node="1NJXWPlwJKE" resolve="buildParentHierarchy" />
            <node concept="3xONca" id="1NJXWPlxjRf" role="37wK5m">
              <ref role="3xOPvv" node="1NJXWPlwVPd" resolve="conceptB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1NJXWPlwJKu">
    <property role="TrG5h" value="ConceptHierarchyTreeTestSupport" />
    <node concept="3Tm1VV" id="1NJXWPlwJKv" role="1B3o_S" />
    <node concept="3uibUv" id="1NJXWPlwJKw" role="1zkMxy">
      <ref role="3uigEE" to="rl1i:51NkKCgB44F" resolve="ConceptHierarchyTree" />
    </node>
    <node concept="3UR2Jj" id="1NJXWPlwJKY" role="lGtFl">
      <node concept="1PaTwC" id="1NJXWPlwJKZ" role="1Vez_I">
        <node concept="3oM_SD" id="1NJXWPlwJL0" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1NJXWPlwJL5" role="1Vez_I">
        <node concept="3oM_SD" id="1NJXWPlwJL6" role="1PaTwD">
          <property role="3oM_SC" value="Gives" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJL7" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJL8" role="1PaTwD">
          <property role="3oM_SC" value="access" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJL9" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLa" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLb" role="1PaTwD">
          <property role="3oM_SC" value="protected" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLc" role="1PaTwD">
          <property role="3oM_SC" value="hierarchy" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLd" role="1PaTwD">
          <property role="3oM_SC" value="building" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLe" role="1PaTwD">
          <property role="3oM_SC" value="code" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLf" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLg" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLh" role="1PaTwD">
          <property role="3oM_SC" value="Concept" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLi" role="1PaTwD">
          <property role="3oM_SC" value="Hierarchy" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLj" role="1PaTwD">
          <property role="3oM_SC" value="view." />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="1NJXWPlwJKx" role="jymVt">
      <node concept="3cqZAl" id="1NJXWPlwJKy" role="3clF45" />
      <node concept="37vLTG" id="1NJXWPlwJKz" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1NJXWPlwJK$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="1NJXWPlwJK_" role="3clF47">
        <node concept="XkiVB" id="1NJXWPlwJLM" role="3cqZAp">
          <ref role="37wK5l" to="rl1i:51NkKCgB44M" resolve="ConceptHierarchyTree" />
          <node concept="37vLTw" id="1NJXWPlwJLN" role="37wK5m">
            <ref role="3cqZAo" node="1NJXWPlwJKz" resolve="repository" />
          </node>
          <node concept="3clFbT" id="1NJXWPlwJLO" role="37wK5m" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1NJXWPlwJKD" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1NJXWPlwJKE" role="jymVt">
      <property role="TrG5h" value="buildParentHierarchy" />
      <node concept="37vLTG" id="1NJXWPlwJKF" role="3clF46">
        <property role="TrG5h" value="conceptDeclaration" />
        <node concept="3uibUv" id="1NJXWPlwJKG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1NJXWPlwJKH" role="3clF47">
        <node concept="3cpWs8" id="1NJXWPlwJKJ" role="3cqZAp">
          <node concept="3cpWsn" id="1NJXWPlwJKI" role="3cpWs9">
            <property role="TrG5h" value="tree" />
            <node concept="3uibUv" id="1NJXWPlwJKK" role="1tU5fm">
              <ref role="3uigEE" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
            </node>
            <node concept="2ShNRf" id="1NJXWPlwJLP" role="33vP2m">
              <node concept="1pGfFk" id="1NJXWPlwJMk" role="2ShVmc">
                <ref role="37wK5l" node="1NJXWPlwJKx" resolve="ConceptHierarchyTreeTestSupport" />
                <node concept="2OqwBi" id="1NJXWPlwJRn" role="37wK5m">
                  <node concept="2OqwBi" id="1NJXWPlwJR6" role="2Oq$k0">
                    <node concept="37vLTw" id="1NJXWPlwJNA" role="2Oq$k0">
                      <ref role="3cqZAo" node="1NJXWPlwJKF" resolve="conceptDeclaration" />
                    </node>
                    <node concept="liA8E" id="1NJXWPlwJR7" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1NJXWPlwJRo" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPlwJKO" role="3cqZAp">
          <node concept="2OqwBi" id="1NJXWPlwJPc" role="3clFbG">
            <node concept="37vLTw" id="1NJXWPlwJMH" role="2Oq$k0">
              <ref role="3cqZAo" node="1NJXWPlwJKI" resolve="tree" />
            </node>
            <node concept="liA8E" id="1NJXWPlwJPd" role="2OqNvi">
              <ref role="37wK5l" to="rl1i:2z9SX9btPUk" resolve="setHierarchyNode" />
              <node concept="37vLTw" id="1NJXWPlwJPe" role="37wK5m">
                <ref role="3cqZAo" node="1NJXWPlwJKF" resolve="conceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPlwJKR" role="3cqZAp">
          <node concept="2OqwBi" id="1NJXWPlwJQN" role="3clFbG">
            <node concept="37vLTw" id="1NJXWPlwJN6" role="2Oq$k0">
              <ref role="3cqZAo" node="1NJXWPlwJKI" resolve="tree" />
            </node>
            <node concept="liA8E" id="1NJXWPlwJQO" role="2OqNvi">
              <ref role="37wK5l" to="rl1i:3Xr93YReMvD" resolve="rebuildParentHierarchy" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1NJXWPlwJKT" role="1B3o_S" />
      <node concept="3cqZAl" id="1NJXWPlwJKU" role="3clF45" />
      <node concept="P$JXv" id="1NJXWPlwJKV" role="lGtFl">
        <node concept="1PaTwC" id="1NJXWPlwJKW" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPlwJKX" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPlwJLk" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPlwJLl" role="1PaTwD">
            <property role="3oM_SC" value="Builds" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLm" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLn" role="1PaTwD">
            <property role="3oM_SC" value="parent" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLo" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLp" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLq" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLr" role="1PaTwD">
            <property role="3oM_SC" value="given" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLs" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLt" role="1PaTwD">
            <property role="3oM_SC" value="declaration," />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLu" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLv" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLw" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLx" role="1PaTwD">
            <property role="3oM_SC" value="Concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLy" role="1PaTwD">
            <property role="3oM_SC" value="Hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLz" role="1PaTwD">
            <property role="3oM_SC" value="view" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJL$" role="1PaTwD">
            <property role="3oM_SC" value="does." />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPlwJL_" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPlwJLA" role="1PaTwD">
            <property role="3oM_SC" value="Has" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLB" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLC" role="1PaTwD">
            <property role="3oM_SC" value="terminate" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLD" role="1PaTwD">
            <property role="3oM_SC" value="even" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLE" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLF" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLG" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLH" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLI" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLJ" role="1PaTwD">
            <property role="3oM_SC" value="cyclic," />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLK" role="1PaTwD">
            <property role="3oM_SC" value="see" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLL" role="1PaTwD">
            <property role="3oM_SC" value="MPS-40037." />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

