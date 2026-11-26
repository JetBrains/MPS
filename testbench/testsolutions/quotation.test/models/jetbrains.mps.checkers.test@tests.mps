<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:afa6200c-5e34-4244-b141-d3f095bc906f(jetbrains.mps.checkers.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="tpcp" ref="r:00000000-0000-4000-0000-011c89590285(jetbrains.mps.lang.core.intentions)" />
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
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
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
  <node concept="3s_ewN" id="4Ijpa7sNnxm">
    <property role="TrG5h" value="SuppressionUtil" />
    <property role="3s_ewP" value="SuppressionUtil" />
    <node concept="3Tm1VV" id="4Ijpa7sNnxn" role="1B3o_S" />
    <node concept="3s_gsd" id="4Ijpa7sNnAz" role="3s_ewO">
      <node concept="3s$Bmu" id="4Ijpa7sNnA$" role="3s_gse">
        <property role="3s$Bm0" value="nullAndShortMessages" />
        <node concept="3Tm1VV" id="4Ijpa7sNnAB" role="1B3o_S" />
        <node concept="3cqZAl" id="4Ijpa7sNnAC" role="3clF45" />
        <node concept="3clFbS" id="4Ijpa7sNnAD" role="3clF47">
          <node concept="3ykFI1" id="4Ijpa7sNnAE" role="3cqZAp">
            <node concept="2YIFZM" id="4Ijpa7sNnAF" role="3ykU8v">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="10Nm6u" id="4Ijpa7sNnAG" role="37wK5m" />
            </node>
          </node>
          <node concept="3vlDli" id="4Ijpa7sNnAH" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnAI" role="3tpDZB">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnAJ" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnAK" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4Ijpa7sNnAL" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnAM" role="3tpDZB">
              <property role="Xl_RC" value="Short error message" />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnAN" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnAO" role="37wK5m">
                <property role="Xl_RC" value="Short error message" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4Ijpa7sNnAP" role="3s_gse">
        <property role="3s$Bm0" value="exactBoundaryLength" />
        <node concept="3Tm1VV" id="4Ijpa7sNnAS" role="1B3o_S" />
        <node concept="3cqZAl" id="4Ijpa7sNnAT" role="3clF45" />
        <node concept="3clFbS" id="4Ijpa7sNnAU" role="3clF47">
          <node concept="3vlDli" id="4Ijpa7sNnAV" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnAW" role="3tpDZB">
              <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnAX" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnAY" role="37wK5m">
                <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4Ijpa7sNnAZ" role="3s_gse">
        <property role="3s$Bm0" value="longMessageTruncatedAtWordBoundary" />
        <node concept="3Tm1VV" id="4Ijpa7sNnB2" role="1B3o_S" />
        <node concept="3cqZAl" id="4Ijpa7sNnB3" role="3clF45" />
        <node concept="3clFbS" id="4Ijpa7sNnB4" role="3clF47">
          <node concept="3vlDli" id="4Ijpa7sNnB5" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnB6" role="3tpDZB">
              <property role="Xl_RC" value="This concept is an instance concept, never an interface concept, so..." />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnB7" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnB8" role="37wK5m">
                <property role="Xl_RC" value="This concept is an instance concept, never an interface concept, so isExactly(INamedConcept) is always false." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4Ijpa7sNnB9" role="3s_gse">
        <property role="3s$Bm0" value="longMessageWithoutSpacesHardCut" />
        <node concept="3Tm1VV" id="4Ijpa7sNnBc" role="1B3o_S" />
        <node concept="3cqZAl" id="4Ijpa7sNnBd" role="3clF45" />
        <node concept="3clFbS" id="4Ijpa7sNnBe" role="3clF47">
          <node concept="3vlDli" id="4Ijpa7sNnBf" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnBg" role="3tpDZB">
              <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa..." />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnBh" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnBi" role="37wK5m">
                <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4Ijpa7sNnBj" role="3s_gse">
        <property role="3s$Bm0" value="trailingSpaceAtCutPoint" />
        <node concept="3Tm1VV" id="4Ijpa7sNnBm" role="1B3o_S" />
        <node concept="3cqZAl" id="4Ijpa7sNnBn" role="3clF45" />
        <node concept="3clFbS" id="4Ijpa7sNnBo" role="3clF47">
          <node concept="3vlDli" id="4Ijpa7sNnBp" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnBq" role="3tpDZB">
              <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa..." />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnBr" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnBs" role="37wK5m">
                <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbb" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4Ijpa7sNnBt" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnBu" role="3tpDZB">
              <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa..." />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnBv" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnBw" role="37wK5m">
                <property role="Xl_RC" value="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbb" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4Ijpa7sNnBx" role="3s_gse">
        <property role="3s$Bm0" value="multilineMessages" />
        <node concept="3Tm1VV" id="4Ijpa7sNnB$" role="1B3o_S" />
        <node concept="3cqZAl" id="4Ijpa7sNnB_" role="3clF45" />
        <node concept="3clFbS" id="4Ijpa7sNnBA" role="3clF47">
          <node concept="3vlDli" id="4Ijpa7sNnBB" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnBC" role="3tpDZB">
              <property role="Xl_RC" value="Line one Line two Line three" />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnBD" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnBE" role="37wK5m">
                <property role="Xl_RC" value="Line one\nLine two\r\nLine three" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4Ijpa7sNnBF" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnBG" role="3tpDZB">
              <property role="Xl_RC" value="First Second" />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnBH" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnBI" role="37wK5m">
                <property role="Xl_RC" value="First\n\nSecond" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4Ijpa7sNnBJ" role="3cqZAp">
            <node concept="Xl_RD" id="4Ijpa7sNnBK" role="3tpDZB">
              <property role="Xl_RC" value="First line of error Second line of error that makes the overall message..." />
            </node>
            <node concept="2YIFZM" id="4Ijpa7sNnBL" role="3tpDZA">
              <ref role="1Pybhc" to="tpcp:4Ijpa7sLFz4" resolve="SuppressionUtil" />
              <ref role="37wK5l" to="tpcp:4Ijpa7sLJhv" resolve="ensureNotTooLong" />
              <node concept="Xl_RD" id="4Ijpa7sNnBM" role="37wK5m">
                <property role="Xl_RC" value="First line of error\nSecond line of error that makes the overall message exceed eighty characters" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

