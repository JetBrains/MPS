<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cbc33f39-aa37-40a5-b44c-ec98a558ab36(jetbrains.mps.lang.text.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zqge" ref="r:59e90602-6655-4552-86eb-441a42a9a0e4(jetbrains.mps.lang.text.structure)" implicit="true" />
    <import index="vdrq" ref="r:85354f47-14fd-40e6-a7cc-2d1aa842c4cd(jetbrains.mps.lang.text.behavior)" implicit="true" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
      <concept id="5948027493682789918" name="jetbrains.mps.lang.actions.structure.CopyPasteHandlers" flags="ng" index="21GTPz">
        <child id="5948027493682790174" name="postProcessor" index="21GTLz" />
      </concept>
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
      <concept id="6026743057587447931" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToPastePostProcess" flags="nn" index="1JFAaq" />
      <concept id="6026743057587433039" name="jetbrains.mps.lang.actions.structure.PastePostProcessFunction" flags="in" index="1JFUiI" />
      <concept id="564335015825199468" name="jetbrains.mps.lang.actions.structure.PastePostProcessor" flags="ng" index="3ZhVFo">
        <reference id="6026743057587410043" name="concept" index="1JFXUq" />
        <child id="3887139083693416947" name="postProcessFunction" index="3xT8ml" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="21GTPz" id="64R8dmEY4xS">
    <property role="TrG5h" value="WordHandlers" />
    <node concept="3ZhVFo" id="64R8dmEY4$r" role="21GTLz">
      <ref role="1JFXUq" to="zqge:8D0iRqSPW4" resolve="Word" />
      <node concept="1JFUiI" id="64R8dmEY4$s" role="3xT8ml">
        <node concept="3clFbS" id="64R8dmEY4$t" role="2VODD2">
          <node concept="3clFbF" id="64R8dmEY4_w" role="3cqZAp">
            <node concept="2OqwBi" id="64R8dmEY56Z" role="3clFbG">
              <node concept="1JFAaq" id="64R8dmEY4_v" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORcn3" role="2OqNvi">
                <ref role="37wK5l" to="vdrq:3yV2h2COV$s" resolve="normalize" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="7Y6hweftJ2v">
    <property role="TrG5h" value="TextualFactories" />
    <node concept="37WvkG" id="7Y6hweftJ6w" role="37WGs$">
      <ref role="37XkoT" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
      <node concept="37Y9Zx" id="7Y6hweftJ6x" role="37ZfLb">
        <node concept="3clFbS" id="7Y6hweftJ6y" role="2VODD2">
          <node concept="Jncv_" id="7Y6hweftJ9I" role="3cqZAp">
            <ref role="JncvD" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
            <node concept="1r4N5L" id="7Y6hweftJbb" role="JncvB" />
            <node concept="3clFbS" id="7Y6hweftJ9K" role="Jncv$">
              <node concept="3clFbF" id="7Y6hweftJg7" role="3cqZAp">
                <node concept="37vLTI" id="7Y6hweftJSv" role="3clFbG">
                  <node concept="2OqwBi" id="7Y6hweftJUY" role="37vLTx">
                    <node concept="Jnkvi" id="7Y6hweftJSL" role="2Oq$k0">
                      <ref role="1M0zk5" node="7Y6hweftJ9L" resolve="l" />
                    </node>
                    <node concept="3TrcHB" id="7Y6hweftJWB" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:7Y6hwefsRt2" resolve="underlined" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Y6hweftJnt" role="37vLTJ">
                    <node concept="1r4Lsj" id="7Y6hweftJg6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7Y6hweftJvA" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:7Y6hwefsRt2" resolve="underlined" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7Y6hweftJYm" role="3cqZAp">
                <node concept="37vLTI" id="7Y6hweftJYn" role="3clFbG">
                  <node concept="2OqwBi" id="7Y6hweftJYo" role="37vLTx">
                    <node concept="Jnkvi" id="7Y6hweftJYp" role="2Oq$k0">
                      <ref role="1M0zk5" node="7Y6hweftJ9L" resolve="l" />
                    </node>
                    <node concept="3TrcHB" id="7Y6hweftKl9" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:7Y6hwefsRt0" resolve="bold" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Y6hweftJYr" role="37vLTJ">
                    <node concept="1r4Lsj" id="7Y6hweftJYs" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7Y6hweftKeE" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:7Y6hwefsRt0" resolve="bold" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7Y6hweftJZK" role="3cqZAp">
                <node concept="37vLTI" id="7Y6hweftJZL" role="3clFbG">
                  <node concept="2OqwBi" id="7Y6hweftJZM" role="37vLTx">
                    <node concept="Jnkvi" id="7Y6hweftJZN" role="2Oq$k0">
                      <ref role="1M0zk5" node="7Y6hweftJ9L" resolve="l" />
                    </node>
                    <node concept="3TrcHB" id="7Y6hweftKGf" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:7Y6hwefsRt1" resolve="italic" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Y6hweftJZP" role="37vLTJ">
                    <node concept="1r4Lsj" id="7Y6hweftJZQ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7Y6hweftKzy" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:7Y6hwefsRt1" resolve="italic" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="7Y6hweftJ9L" role="JncvA">
              <property role="TrG5h" value="l" />
              <node concept="2jxLKc" id="7Y6hweftJ9M" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="2HIX00NtQi6" role="37WGs$">
      <ref role="37XkoT" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      <node concept="37Y9Zx" id="2HIX00NtQi7" role="37ZfLb">
        <node concept="3clFbS" id="2HIX00NtQi8" role="2VODD2">
          <node concept="Jncv_" id="2HIX00NtQiO" role="3cqZAp">
            <ref role="JncvD" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
            <node concept="1r4N5L" id="2HIX00NtQjh" role="JncvB" />
            <node concept="3clFbS" id="2HIX00NtQiQ" role="Jncv$">
              <node concept="3clFbF" id="250QDwq3zrC" role="3cqZAp">
                <node concept="2OqwBi" id="250QDwq3z_w" role="3clFbG">
                  <node concept="Jnkvi" id="250QDwq3zrz" role="2Oq$k0">
                    <ref role="1M0zk5" node="2HIX00NtQiR" resolve="p" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcn5" role="2OqNvi">
                    <ref role="37wK5l" to="vdrq:1v077Wg2A59" resolve="initialize" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2HIX00NtQkd" role="3cqZAp">
                <node concept="2OqwBi" id="2HIX00NtQtf" role="3clFbG">
                  <node concept="1r4Lsj" id="2HIX00NtQkc" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcn7" role="2OqNvi">
                    <ref role="37wK5l" to="vdrq:1uSfHaoPgT1" resolve="addAllTextualElements" />
                    <node concept="2OqwBi" id="70OdufORcn9" role="37wK5m">
                      <node concept="Jnkvi" id="70OdufORcna" role="2Oq$k0">
                        <ref role="1M0zk5" node="2HIX00NtQiR" resolve="p" />
                      </node>
                      <node concept="3zqWPK" id="47jP3PjRldT" role="2OqNvi">
                        <ref role="37wK5l" to="vdrq:250QDwq2ueg" resolve="getTextualElements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="2HIX00NtQiR" role="JncvA">
              <property role="TrG5h" value="p" />
              <node concept="2jxLKc" id="2HIX00NtQiS" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="WJz9iAY4HC" role="37WGs$">
      <ref role="37XkoT" to="zqge:2cLqkTm6J5A" resolve="Line" />
      <node concept="37Y9Zx" id="WJz9iAY4HD" role="37ZfLb">
        <node concept="3clFbS" id="WJz9iAY4HE" role="2VODD2">
          <node concept="Jncv_" id="WJz9iAY4HF" role="3cqZAp">
            <ref role="JncvD" to="zqge:2cLqkTm6J5A" resolve="Line" />
            <node concept="1r4N5L" id="WJz9iAY4HG" role="JncvB" />
            <node concept="3clFbS" id="WJz9iAY4HH" role="Jncv$">
              <node concept="3clFbF" id="WJz9iAY4HM" role="3cqZAp">
                <node concept="2OqwBi" id="WJz9iAY4HN" role="3clFbG">
                  <node concept="1r4Lsj" id="WJz9iAY4HO" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcne" role="2OqNvi">
                    <ref role="37wK5l" to="vdrq:WJz9iAYdPl" resolve="addAllTextElements" />
                    <node concept="2OqwBi" id="70OdufORcng" role="37wK5m">
                      <node concept="Jnkvi" id="70OdufORcnh" role="2Oq$k0">
                        <ref role="1M0zk5" node="WJz9iAY4HT" resolve="l" />
                      </node>
                      <node concept="3zqWPK" id="47jP3PjRldV" role="2OqNvi">
                        <ref role="37wK5l" to="vdrq:WJz9iATjyN" resolve="getTextElements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="WJz9iAY4HT" role="JncvA">
              <property role="TrG5h" value="l" />
              <node concept="2jxLKc" id="WJz9iAY4HU" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbJ" id="qh2$UC3h7F" role="3cqZAp">
            <node concept="3clFbS" id="qh2$UC3h7H" role="3clFbx">
              <node concept="3clFbF" id="2Ct14h6cZy$" role="3cqZAp">
                <node concept="2OqwBi" id="2Ct14h6cZIT" role="3clFbG">
                  <node concept="1r4Lsj" id="2Ct14h6cZyz" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcnl" role="2OqNvi">
                    <ref role="37wK5l" to="vdrq:WJz9iAYdP6" resolve="addTextElement" />
                    <node concept="2ShNRf" id="70OdufORcnn" role="37wK5m">
                      <node concept="3zrR0B" id="70OdufORcno" role="2ShVmc">
                        <node concept="3Tqbb2" id="70OdufORcnp" role="3zrR0E">
                          <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="qh2$UC3hu8" role="3clFbw">
              <node concept="1r4N5L" id="qh2$UC3h9e" role="2Oq$k0" />
              <node concept="3w_OXm" id="qh2$UC3jhi" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="5QuCpoxyYrg" role="37WGs$">
      <ref role="37XkoT" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
      <node concept="37Y9Zx" id="5QuCpoxyYrh" role="37ZfLb">
        <node concept="3clFbS" id="5QuCpoxyYri" role="2VODD2">
          <node concept="Jncv_" id="5QuCpoxyYt5" role="3cqZAp">
            <ref role="JncvD" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
            <node concept="1r4N5L" id="5QuCpoxyYt6" role="JncvB" />
            <node concept="3clFbS" id="5QuCpoxyYt7" role="Jncv$">
              <node concept="3clFbF" id="5QuCpoxyYt8" role="3cqZAp">
                <node concept="37vLTI" id="5QuCpoxzbmF" role="3clFbG">
                  <node concept="2OqwBi" id="5QuCpoxyYta" role="37vLTJ">
                    <node concept="1r4Lsj" id="5QuCpoxyYtb" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5QuCpoxz0KR" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5QuCpoxyYte" role="37vLTx">
                    <node concept="Jnkvi" id="5QuCpoxyYtf" role="2Oq$k0">
                      <ref role="1M0zk5" node="5QuCpoxyYth" resolve="p" />
                    </node>
                    <node concept="3TrcHB" id="5QuCpoxz3Ug" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="5QuCpoxyYth" role="JncvA">
              <property role="TrG5h" value="p" />
              <node concept="2jxLKc" id="5QuCpoxyYti" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

