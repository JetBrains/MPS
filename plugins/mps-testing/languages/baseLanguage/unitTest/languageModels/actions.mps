<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902d0(jetbrains.mps.baseLanguage.unitTest.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920413" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_SampleNode" flags="nn" index="1r4N5L" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="37WguZ" id="hrSnfC$">
    <property role="TrG5h" value="unitTest_Factory" />
    <node concept="37WvkG" id="hrSniRu" role="37WGs$">
      <ref role="37XkoT" to="tpe3:h3s$Bie" resolve="TestMethod" />
      <node concept="37Y9Zx" id="hrSniRv" role="37ZfLb">
        <node concept="3clFbS" id="hrSniRw" role="2VODD2">
          <node concept="3clFbF" id="hrSno1t" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$E4l" role="3clFbG">
              <node concept="2OqwBi" id="hxx$Qtp" role="2Oq$k0">
                <node concept="1r4Lsj" id="hrSno1u" role="2Oq$k0" />
                <node concept="3TrEf2" id="hrSnNLQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                </node>
              </node>
              <node concept="2DeJnY" id="5wUAOoBBjoI" role="2OqNvi">
                <ref role="1A9B2P" to="tpee:fzcqZ_H" resolve="VoidType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="3Gw7rtGHTS$" role="37WGs$">
      <ref role="37XkoT" to="tpe3:7jPoEeD$ZOX" resolve="BinaryAssert" />
      <node concept="37Y9Zx" id="3Gw7rtGHTS_" role="37ZfLb">
        <node concept="3clFbS" id="3Gw7rtGHTSA" role="2VODD2">
          <node concept="Jncv_" id="3Gw7rtGHTXV" role="3cqZAp">
            <ref role="JncvD" to="tpe3:7jPoEeD$ZOX" resolve="BinaryAssert" />
            <node concept="1r4N5L" id="3Gw7rtGHU07" role="JncvB" />
            <node concept="3clFbS" id="3Gw7rtGHTXX" role="Jncv$">
              <node concept="3clFbF" id="3Gw7rtGHU7k" role="3cqZAp">
                <node concept="37vLTI" id="3Gw7rtGHVdh" role="3clFbG">
                  <node concept="2OqwBi" id="3Gw7rtGHVk5" role="37vLTx">
                    <node concept="Jnkvi" id="3Gw7rtGHVgL" role="2Oq$k0">
                      <ref role="1M0zk5" node="3Gw7rtGHTXY" resolve="original" />
                    </node>
                    <node concept="3TrEf2" id="3Gw7rtGHVpS" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Gw7rtGHUlE" role="37vLTJ">
                    <node concept="1r4Lsj" id="3Gw7rtGHU7j" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Gw7rtGHUZ7" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3Gw7rtGHVr_" role="3cqZAp">
                <node concept="37vLTI" id="3Gw7rtGHVrA" role="3clFbG">
                  <node concept="2OqwBi" id="3Gw7rtGHVrB" role="37vLTx">
                    <node concept="Jnkvi" id="3Gw7rtGHVrC" role="2Oq$k0">
                      <ref role="1M0zk5" node="3Gw7rtGHTXY" resolve="original" />
                    </node>
                    <node concept="3TrEf2" id="3Gw7rtGHVrD" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Gw7rtGHVrE" role="37vLTJ">
                    <node concept="1r4Lsj" id="3Gw7rtGHVrF" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Gw7rtGHVrG" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3Gw7rtGHTXY" role="JncvA">
              <property role="TrG5h" value="original" />
              <node concept="2jxLKc" id="3Gw7rtGHTXZ" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="3Gw7rtGKw3T" role="3cqZAp">
            <ref role="JncvD" to="tpe3:3Gw7rtGJhba" resolve="AssertWithExpression" />
            <node concept="1r4N5L" id="3Gw7rtGKw3U" role="JncvB" />
            <node concept="3clFbS" id="3Gw7rtGKw3V" role="Jncv$">
              <node concept="3clFbF" id="3Gw7rtGKw3W" role="3cqZAp">
                <node concept="37vLTI" id="3Gw7rtGKw3X" role="3clFbG">
                  <node concept="2OqwBi" id="3Gw7rtGKwPE" role="37vLTx">
                    <node concept="2OqwBi" id="3Gw7rtGKw3Y" role="2Oq$k0">
                      <node concept="Jnkvi" id="3Gw7rtGKw3Z" role="2Oq$k0">
                        <ref role="1M0zk5" node="3Gw7rtGKw4c" resolve="original" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORdna" role="2OqNvi">
                        <ref role="37wK5l" to="tpe5:3Gw7rtGJhho" resolve="getExpressionChild" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="3Gw7rtGKxiN" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="3Gw7rtGKw41" role="37vLTJ">
                    <node concept="1r4Lsj" id="3Gw7rtGKw42" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Gw7rtGKw43" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3Gw7rtGKw44" role="3cqZAp">
                <node concept="37vLTI" id="3Gw7rtGKw45" role="3clFbG">
                  <node concept="2OqwBi" id="3Gw7rtGKw46" role="37vLTx">
                    <node concept="Jnkvi" id="3Gw7rtGKw47" role="2Oq$k0">
                      <ref role="1M0zk5" node="3Gw7rtGKw4c" resolve="original" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORdnc" role="2OqNvi">
                      <ref role="37wK5l" to="tpe5:3Gw7rtGJhho" resolve="getExpressionChild" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Gw7rtGKw49" role="37vLTJ">
                    <node concept="1r4Lsj" id="3Gw7rtGKw4a" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Gw7rtGKw4b" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3Gw7rtGKw4c" role="JncvA">
              <property role="TrG5h" value="original" />
              <node concept="2jxLKc" id="3Gw7rtGKw4d" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="3Gw7rtGHVIQ" role="37WGs$">
      <ref role="37XkoT" to="tpe3:h3_9g$o" resolve="MessageHolder" />
      <node concept="37Y9Zx" id="3Gw7rtGHVIR" role="37ZfLb">
        <node concept="3clFbS" id="3Gw7rtGHVIS" role="2VODD2">
          <node concept="Jncv_" id="3Gw7rtGHVIT" role="3cqZAp">
            <ref role="JncvD" to="tpe3:h3_9g$o" resolve="MessageHolder" />
            <node concept="1r4N5L" id="3Gw7rtGHVIU" role="JncvB" />
            <node concept="3clFbS" id="3Gw7rtGHVIV" role="Jncv$">
              <node concept="3clFbF" id="3Gw7rtGHVIW" role="3cqZAp">
                <node concept="37vLTI" id="3Gw7rtGHVIX" role="3clFbG">
                  <node concept="2OqwBi" id="3Gw7rtGHVIY" role="37vLTx">
                    <node concept="Jnkvi" id="3Gw7rtGHVIZ" role="2Oq$k0">
                      <ref role="1M0zk5" node="3Gw7rtGHVJc" resolve="original" />
                    </node>
                    <node concept="3TrEf2" id="3Gw7rtGHVJ0" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Gw7rtGHVJ1" role="37vLTJ">
                    <node concept="1r4Lsj" id="3Gw7rtGHVJ2" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Gw7rtGHVJ3" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3Gw7rtGHVJc" role="JncvA">
              <property role="TrG5h" value="original" />
              <node concept="2jxLKc" id="3Gw7rtGHVJd" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="3Gw7rtGJesr" role="37WGs$">
      <ref role="37XkoT" to="tpe3:3Gw7rtGJhba" resolve="AssertWithExpression" />
      <node concept="37Y9Zx" id="3Gw7rtGJess" role="37ZfLb">
        <node concept="3clFbS" id="3Gw7rtGJest" role="2VODD2">
          <node concept="Jncv_" id="3Gw7rtGJesu" role="3cqZAp">
            <ref role="JncvD" to="tpe3:3Gw7rtGJhba" resolve="AssertWithExpression" />
            <node concept="1r4N5L" id="3Gw7rtGJesv" role="JncvB" />
            <node concept="3clFbS" id="3Gw7rtGJesw" role="Jncv$">
              <node concept="3clFbF" id="3Gw7rtGJesx" role="3cqZAp">
                <node concept="2OqwBi" id="3Gw7rtGJesA" role="3clFbG">
                  <node concept="1r4Lsj" id="3Gw7rtGJesB" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdne" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:3Gw7rtGJhw6" resolve="setExpressionChild" />
                    <node concept="2OqwBi" id="70OdufORdng" role="37wK5m">
                      <node concept="Jnkvi" id="70OdufORdnh" role="2Oq$k0">
                        <ref role="1M0zk5" node="3Gw7rtGJesD" resolve="original" />
                      </node>
                      <node concept="2qgKlT" id="70OdufORdni" role="2OqNvi">
                        <ref role="37wK5l" to="tpe5:3Gw7rtGJhho" resolve="getExpressionChild" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3Gw7rtGJesD" role="JncvA">
              <property role="TrG5h" value="original" />
              <node concept="2jxLKc" id="3Gw7rtGJesE" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="3Gw7rtGKxCm" role="3cqZAp">
            <ref role="JncvD" to="tpe3:7jPoEeD$ZOX" resolve="BinaryAssert" />
            <node concept="1r4N5L" id="3Gw7rtGKxCn" role="JncvB" />
            <node concept="3clFbS" id="3Gw7rtGKxCo" role="Jncv$">
              <node concept="3clFbF" id="3Gw7rtGKxCp" role="3cqZAp">
                <node concept="2OqwBi" id="3Gw7rtGKxCq" role="3clFbG">
                  <node concept="1r4Lsj" id="3Gw7rtGKxCr" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdnl" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:3Gw7rtGJhw6" resolve="setExpressionChild" />
                    <node concept="2OqwBi" id="70OdufORdnn" role="37wK5m">
                      <node concept="Jnkvi" id="70OdufORdno" role="2Oq$k0">
                        <ref role="1M0zk5" node="3Gw7rtGKxCw" resolve="original" />
                      </node>
                      <node concept="3TrEf2" id="70OdufORdnp" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3Gw7rtGKxCw" role="JncvA">
              <property role="TrG5h" value="original" />
              <node concept="2jxLKc" id="3Gw7rtGKxCx" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

