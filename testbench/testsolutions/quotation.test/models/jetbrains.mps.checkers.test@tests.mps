<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:afa6200c-5e34-4244-b141-d3f095bc906f(jetbrains.mps.checkers.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
  </languages>
  <imports>
    <import index="wsw7" ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)" />
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="k8ev" ref="r:f39afe13-666a-48f2-9d7c-2f9366f78fe5(jetbrains.mps.typesystemEngine.checker)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="4szu" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.references(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcj" ref="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
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
      <concept id="7691029917083872157" name="jetbrains.mps.lang.test.structure.IRuleReference" flags="ngI" index="2u4UPC">
        <reference id="8333855927540250453" name="declaration" index="39XzEq" />
      </concept>
      <concept id="4531408400484511853" name="jetbrains.mps.lang.test.structure.ReportErrorStatementReference" flags="ng" index="2PYRI3" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="710597951278798236" name="jetbrains.mps.lang.test.structure.ExpectedMessageContainer" flags="ng" index="1DMPye">
        <property id="710597951278798237" name="text" index="1DMPyf" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
        <ref role="1TJDcQ" node="6AHMUXrgltT" />
        <node concept="7CXmI" id="6AHMUXrglCf" role="lGtFl">
          <node concept="1TM$A" id="6AHMUXrglCg" role="7EUXB">
            <node concept="2PYRI3" id="6AHMUXrglCh" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="6AHMUXrglCi" role="1DMPz9">
              <property role="1DMPyf" value="Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6AHMUXrgltU" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltW" role="1qenE9">
        <property role="EcuMT" value="7614966498964100988" />
        <property role="TrG5h" value="CyclicConceptA" />
        <ref role="1TJDcQ" node="6AHMUXrgltZ" />
        <node concept="7CXmI" id="6AHMUXrglCI" role="lGtFl">
          <node concept="1TM$A" id="6AHMUXrglCJ" role="7EUXB">
            <node concept="2PYRI3" id="6AHMUXrglCK" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="6AHMUXrglCL" role="1DMPz9">
              <property role="1DMPyf" value="Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6AHMUXrgltX" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltZ" role="1qenE9">
        <property role="EcuMT" value="7614966498964100991" />
        <property role="TrG5h" value="CyclicConceptB" />
        <ref role="1TJDcQ" node="6AHMUXrgltW" />
        <node concept="7CXmI" id="6AHMUXrglDd" role="lGtFl">
          <node concept="1TM$A" id="6AHMUXrglDe" role="7EUXB">
            <node concept="2PYRI3" id="6AHMUXrglDf" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="6AHMUXrglDg" role="1DMPz9">
              <property role="1DMPyf" value="Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

