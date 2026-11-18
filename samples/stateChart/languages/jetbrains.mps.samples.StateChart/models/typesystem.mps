<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b7821567-11c0-4baa-a4e7-25240b50a1d5(jetbrains.mps.samples.StateChart.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="oyog" ref="r:89aa1fb5-b463-4059-be0d-fc7ef188f902(jetbrains.mps.samples.StateChart.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096620180" name="jetbrains.mps.lang.typesystem.structure.ReferenceMessageTarget" flags="ng" index="2OE7Q9">
        <reference id="1227096645744" name="linkDeclaration" index="2OEe5H" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643443" name="messageTarget" index="1urrC5" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1156234966388" name="shortDescription" index="OYnhT" />
      </concept>
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="18kY7G" id="1bheBWAB3y2">
    <property role="TrG5h" value="check_UnreachableState" />
    <property role="OYnhT" value="A state that is not initial and has no incoming transition is unreachable." />
    <node concept="1YaCAy" id="1bheBWAB3y3" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="oyog:1id1$wMpeiA" resolve="State" />
    </node>
    <node concept="3clFbS" id="1bheBWAB7Je" role="18ibNy">
      <node concept="3clFbJ" id="1bheBWAB7Jf" role="3cqZAp">
        <node concept="3fqX7Q" id="1bheBWAB7Jg" role="3clFbw">
          <node concept="2OqwBi" id="1bheBWAB7Jh" role="3fr31v">
            <node concept="1YBJjd" id="1bheBWAB7Ji" role="2Oq$k0">
              <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
            </node>
            <node concept="3TrcHB" id="1bheBWAB7Jj" role="2OqNvi">
              <ref role="3TsBF5" to="oyog:1id1$wMpoKY" resolve="isInitial" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1bheBWAB7Jk" role="3clFbx">
          <node concept="3cpWs8" id="1bheBWAB7Jl" role="3cqZAp">
            <node concept="3cpWsn" id="1bheBWAB7Jm" role="3cpWs9">
              <property role="TrG5h" value="chart" />
              <property role="2Lvdk3" value="chart" />
              <node concept="3Tqbb2" id="1bheBWAB7Jn" role="1tU5fm">
                <ref role="ehGHo" to="oyog:1id1$wMpehE" resolve="StateChart" />
              </node>
              <node concept="2OqwBi" id="1bheBWAB7Jo" role="33vP2m">
                <node concept="1YBJjd" id="1bheBWAB7Jp" role="2Oq$k0">
                  <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                </node>
                <node concept="2Xjw5R" id="1bheBWAB7Jq" role="2OqNvi">
                  <node concept="1xMEDy" id="1bheBWAB7Jt" role="1xVPHs">
                    <node concept="chp4Y" id="1bheBWAB7Ju" role="ri$Ld">
                      <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1bheBWAB7Jv" role="3cqZAp">
            <node concept="1Wc70l" id="1bheBWAB7Jw" role="3clFbw">
              <node concept="2OqwBi" id="1bheBWAB7Jx" role="3uHU7B">
                <node concept="37vLTw" id="1bheBWAB7Jy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bheBWAB7Jm" resolve="chart" />
                </node>
                <node concept="3x8VRR" id="1bheBWAB7Jz" role="2OqNvi" />
              </node>
              <node concept="3fqX7Q" id="1bheBWAB7J$" role="3uHU7w">
                <node concept="2OqwBi" id="1bheBWAB7J_" role="3fr31v">
                  <node concept="2OqwBi" id="1bheBWAB7JA" role="2Oq$k0">
                    <node concept="37vLTw" id="1bheBWAB7JB" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bheBWAB7Jm" resolve="chart" />
                    </node>
                    <node concept="2Rf3mk" id="1bheBWAB7JC" role="2OqNvi">
                      <node concept="1xMEDy" id="1bheBWAB7JF" role="1xVPHs">
                        <node concept="chp4Y" id="1bheBWAB7JG" role="ri$Ld">
                          <ref role="cht4Q" to="oyog:1id1$wMpeiD" resolve="Transition" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2HwmR7" id="1bheBWAB7JH" role="2OqNvi">
                    <node concept="1bVj0M" id="1bheBWAB7JM" role="23t8la">
                      <node concept="gl6BB" id="1bheBWAB7JN" role="1bW2Oz">
                        <property role="TrG5h" value="incoming" />
                        <property role="2Lvdk3" value="incoming" />
                        <node concept="2jxLKc" id="1bheBWAB7JP" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1bheBWAB7JQ" role="1bW5cS">
                        <node concept="3clFbF" id="1bheBWAB7JR" role="3cqZAp">
                          <node concept="17R0WA" id="1bheBWAB7JS" role="3clFbG">
                            <node concept="2OqwBi" id="1bheBWAB7JT" role="3uHU7B">
                              <node concept="37vLTw" id="1bheBWAB7JU" role="2Oq$k0">
                                <ref role="3cqZAo" node="1bheBWAB7JN" resolve="incoming" />
                              </node>
                              <node concept="3TrEf2" id="1bheBWAB7JV" role="2OqNvi">
                                <ref role="3Tt5mk" to="oyog:1id1$wMpeiG" resolve="target" />
                              </node>
                            </node>
                            <node concept="1YBJjd" id="1bheBWAB7JW" role="3uHU7w">
                              <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1bheBWAB7JX" role="3clFbx">
              <node concept="a7r0C" id="1bheBWAB7JY" role="3cqZAp">
                <node concept="3cpWs3" id="1bheBWAB7JZ" role="a7wSD">
                  <node concept="3cpWs3" id="1bheBWAB7K0" role="3uHU7B">
                    <node concept="3cpWs3" id="1bheBWAB7K1" role="3uHU7B">
                      <node concept="3cpWs3" id="1bheBWAB7K2" role="3uHU7B">
                        <node concept="Xl_RD" id="1bheBWAB7K3" role="3uHU7B">
                          <property role="Xl_RC" value="unreachable state '" />
                        </node>
                        <node concept="2OqwBi" id="1bheBWAB7K4" role="3uHU7w">
                          <node concept="1YBJjd" id="1bheBWAB7K5" role="2Oq$k0">
                            <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                          </node>
                          <node concept="3TrcHB" id="1bheBWAB7K6" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1bheBWAB7K9" role="3uHU7w">
                        <property role="Xl_RC" value="' in '" />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="1bheBWABjFE" role="3uHU7w">
                      <node concept="3K4zz7" id="1bheBWAB7Ka" role="1eOMHV">
                        <node concept="2OqwBi" id="1bheBWAB7Kb" role="3K4Cdx">
                          <node concept="2OqwBi" id="1bheBWAB7Kc" role="2Oq$k0">
                            <node concept="1YBJjd" id="1bheBWAB7Kd" role="2Oq$k0">
                              <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                            </node>
                            <node concept="1mfA1w" id="1bheBWAB7Ke" role="2OqNvi" />
                          </node>
                          <node concept="1mIQ4w" id="1bheBWAB7Kf" role="2OqNvi">
                            <node concept="chp4Y" id="1bheBWAB7Kg" role="cj9EA">
                              <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1bheBWAB7Kh" role="3K4E3e">
                          <node concept="1PxgMI" id="1bheBWAB7Ki" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="2OqwBi" id="1bheBWAB7Kj" role="1m5AlR">
                              <node concept="1YBJjd" id="1bheBWAB7Kk" role="2Oq$k0">
                                <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                              </node>
                              <node concept="1mfA1w" id="1bheBWAB7Kl" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="1bheBWAB7Km" role="3oSUPX">
                              <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1bheBWAB7Kn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1bheBWAB7Ko" role="3K4GZi">
                          <node concept="1PxgMI" id="1bheBWAB7Kp" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="2OqwBi" id="1bheBWAB7Kq" role="1m5AlR">
                              <node concept="1YBJjd" id="1bheBWAB7Kr" role="2Oq$k0">
                                <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                              </node>
                              <node concept="1mfA1w" id="1bheBWAB7Ks" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="1bheBWAB7Kt" role="3oSUPX">
                              <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1bheBWAB7Ku" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1bheBWAB7Kv" role="3uHU7w">
                    <property role="Xl_RC" value="': it is not initial and no transition targets it" />
                  </node>
                </node>
                <node concept="1YBJjd" id="1bheBWAB7Kw" role="1urrMF">
                  <ref role="1YBMHb" node="1bheBWAB3y3" resolve="state" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1bheBWAB3y5">
    <property role="TrG5h" value="check_EventNeverUsed" />
    <property role="OYnhT" value="An event that no transition triggers and no raise operation refers to is unused." />
    <node concept="1YaCAy" id="1bheBWAB3y6" role="1YuTPh">
      <property role="TrG5h" value="event" />
      <ref role="1YaFvo" to="oyog:1id1$wMpeiz" resolve="Event" />
    </node>
    <node concept="3clFbS" id="1bheBWABauQ" role="18ibNy">
      <node concept="3cpWs8" id="1bheBWABauR" role="3cqZAp">
        <node concept="3cpWsn" id="1bheBWABauS" role="3cpWs9">
          <property role="TrG5h" value="chart" />
          <property role="2Lvdk3" value="chart" />
          <node concept="3Tqbb2" id="1bheBWABauT" role="1tU5fm">
            <ref role="ehGHo" to="oyog:1id1$wMpehE" resolve="StateChart" />
          </node>
          <node concept="2OqwBi" id="1bheBWABauU" role="33vP2m">
            <node concept="1YBJjd" id="1bheBWABauV" role="2Oq$k0">
              <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
            </node>
            <node concept="2Xjw5R" id="1bheBWABauW" role="2OqNvi">
              <node concept="1xMEDy" id="1bheBWABauZ" role="1xVPHs">
                <node concept="chp4Y" id="1bheBWABav0" role="ri$Ld">
                  <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1bheBWABav1" role="3cqZAp">
        <node concept="1Wc70l" id="1bheBWABav2" role="3clFbw">
          <node concept="2OqwBi" id="1bheBWABav3" role="3uHU7B">
            <node concept="37vLTw" id="1bheBWABav4" role="2Oq$k0">
              <ref role="3cqZAo" node="1bheBWABauS" resolve="chart" />
            </node>
            <node concept="3x8VRR" id="1bheBWABav5" role="2OqNvi" />
          </node>
          <node concept="3fqX7Q" id="1bheBWABav6" role="3uHU7w">
            <node concept="1eOMI4" id="1bheBWABnQS" role="3fr31v">
              <node concept="22lmx$" id="1bheBWABav7" role="1eOMHV">
                <node concept="2OqwBi" id="1bheBWABav8" role="3uHU7B">
                  <node concept="2OqwBi" id="1bheBWABav9" role="2Oq$k0">
                    <node concept="37vLTw" id="1bheBWABava" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bheBWABauS" resolve="chart" />
                    </node>
                    <node concept="2Rf3mk" id="1bheBWABavb" role="2OqNvi">
                      <node concept="1xMEDy" id="1bheBWABave" role="1xVPHs">
                        <node concept="chp4Y" id="1bheBWABavf" role="ri$Ld">
                          <ref role="cht4Q" to="oyog:1id1$wMpeiD" resolve="Transition" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2HwmR7" id="1bheBWABavg" role="2OqNvi">
                    <node concept="1bVj0M" id="1bheBWABavl" role="23t8la">
                      <node concept="gl6BB" id="1bheBWABavm" role="1bW2Oz">
                        <property role="TrG5h" value="tr" />
                        <property role="2Lvdk3" value="tr" />
                        <node concept="2jxLKc" id="1bheBWABavo" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1bheBWABavp" role="1bW5cS">
                        <node concept="3clFbF" id="1bheBWABavq" role="3cqZAp">
                          <node concept="17R0WA" id="1bheBWABavr" role="3clFbG">
                            <node concept="2OqwBi" id="1bheBWABavs" role="3uHU7B">
                              <node concept="37vLTw" id="1bheBWABavt" role="2Oq$k0">
                                <ref role="3cqZAo" node="1bheBWABavm" resolve="tr" />
                              </node>
                              <node concept="3TrEf2" id="1bheBWABavu" role="2OqNvi">
                                <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                              </node>
                            </node>
                            <node concept="1YBJjd" id="1bheBWABavv" role="3uHU7w">
                              <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1bheBWABavw" role="3uHU7w">
                  <node concept="2OqwBi" id="1bheBWABavx" role="2Oq$k0">
                    <node concept="37vLTw" id="1bheBWABavy" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bheBWABauS" resolve="chart" />
                    </node>
                    <node concept="2Rf3mk" id="1bheBWABavz" role="2OqNvi">
                      <node concept="1xMEDy" id="1bheBWABavA" role="1xVPHs">
                        <node concept="chp4Y" id="1bheBWABavB" role="ri$Ld">
                          <ref role="cht4Q" to="oyog:5Uf3geaGADK" resolve="Raise" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2HwmR7" id="1bheBWABavC" role="2OqNvi">
                    <node concept="1bVj0M" id="1bheBWABavH" role="23t8la">
                      <node concept="gl6BB" id="1bheBWABavI" role="1bW2Oz">
                        <property role="TrG5h" value="raised" />
                        <property role="2Lvdk3" value="raised" />
                        <node concept="2jxLKc" id="1bheBWABavK" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1bheBWABavL" role="1bW5cS">
                        <node concept="3clFbF" id="1bheBWABavM" role="3cqZAp">
                          <node concept="17R0WA" id="1bheBWABavN" role="3clFbG">
                            <node concept="2OqwBi" id="1bheBWABavO" role="3uHU7B">
                              <node concept="37vLTw" id="1bheBWABavP" role="2Oq$k0">
                                <ref role="3cqZAo" node="1bheBWABavI" resolve="raised" />
                              </node>
                              <node concept="3TrEf2" id="1bheBWABavQ" role="2OqNvi">
                                <ref role="3Tt5mk" to="oyog:5Uf3geaGADL" resolve="event" />
                              </node>
                            </node>
                            <node concept="1YBJjd" id="1bheBWABavR" role="3uHU7w">
                              <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
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
        <node concept="3clFbS" id="1bheBWABavS" role="3clFbx">
          <node concept="a7r0C" id="1bheBWABavT" role="3cqZAp">
            <node concept="3cpWs3" id="1bheBWABavU" role="a7wSD">
              <node concept="3cpWs3" id="1bheBWABavV" role="3uHU7B">
                <node concept="3cpWs3" id="1bheBWABavW" role="3uHU7B">
                  <node concept="3cpWs3" id="1bheBWABavX" role="3uHU7B">
                    <node concept="Xl_RD" id="1bheBWABavY" role="3uHU7B">
                      <property role="Xl_RC" value="event '" />
                    </node>
                    <node concept="2OqwBi" id="1bheBWABavZ" role="3uHU7w">
                      <node concept="1YBJjd" id="1bheBWABaw0" role="2Oq$k0">
                        <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
                      </node>
                      <node concept="3TrcHB" id="1bheBWABaw1" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1bheBWABaw2" role="3uHU7w">
                    <property role="Xl_RC" value="' declared in '" />
                  </node>
                </node>
                <node concept="1eOMI4" id="1bheBWABlIO" role="3uHU7w">
                  <node concept="3K4zz7" id="1bheBWABaw3" role="1eOMHV">
                    <node concept="2OqwBi" id="1bheBWABaw4" role="3K4Cdx">
                      <node concept="2OqwBi" id="1bheBWABaw5" role="2Oq$k0">
                        <node concept="1YBJjd" id="1bheBWABaw6" role="2Oq$k0">
                          <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
                        </node>
                        <node concept="1mfA1w" id="1bheBWABaw7" role="2OqNvi" />
                      </node>
                      <node concept="1mIQ4w" id="1bheBWABaw8" role="2OqNvi">
                        <node concept="chp4Y" id="1bheBWABaw9" role="cj9EA">
                          <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1bheBWABawa" role="3K4E3e">
                      <node concept="1PxgMI" id="1bheBWABawb" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="2OqwBi" id="1bheBWABawc" role="1m5AlR">
                          <node concept="1YBJjd" id="1bheBWABawd" role="2Oq$k0">
                            <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
                          </node>
                          <node concept="1mfA1w" id="1bheBWABawe" role="2OqNvi" />
                        </node>
                        <node concept="chp4Y" id="1bheBWABawf" role="3oSUPX">
                          <ref role="cht4Q" to="oyog:1id1$wMpeiA" resolve="State" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="1bheBWABawg" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1bheBWABawh" role="3K4GZi">
                      <node concept="1PxgMI" id="1bheBWABawi" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="2OqwBi" id="1bheBWABawj" role="1m5AlR">
                          <node concept="1YBJjd" id="1bheBWABawk" role="2Oq$k0">
                            <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
                          </node>
                          <node concept="1mfA1w" id="1bheBWABawl" role="2OqNvi" />
                        </node>
                        <node concept="chp4Y" id="1bheBWABawm" role="3oSUPX">
                          <ref role="cht4Q" to="oyog:1id1$wMpehE" resolve="StateChart" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="1bheBWABawn" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1bheBWABawo" role="3uHU7w">
                <property role="Xl_RC" value="' is never used: no transition is triggered by it and no raise operation refers to it" />
              </node>
            </node>
            <node concept="1YBJjd" id="1bheBWABawp" role="1urrMF">
              <ref role="1YBMHb" node="1bheBWAB3y6" resolve="event" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1bheBWAB3y8">
    <property role="TrG5h" value="check_NondeterministicTransition" />
    <property role="OYnhT" value="Two transitions from one state on the same trigger are non-deterministic." />
    <node concept="1YaCAy" id="1bheBWAB3y9" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="oyog:1id1$wMpeiA" resolve="State" />
    </node>
    <node concept="3clFbS" id="1bheBWABaDg" role="18ibNy">
      <node concept="1DcWWT" id="1bheBWABaDh" role="3cqZAp">
        <node concept="3cpWsn" id="1bheBWABaDj" role="1Duv9x">
          <property role="TrG5h" value="transition" />
          <property role="2Lvdk3" value="transition" />
          <node concept="3Tqbb2" id="1bheBWABaDk" role="1tU5fm">
            <ref role="ehGHo" to="oyog:1id1$wMpeiD" resolve="Transition" />
          </node>
        </node>
        <node concept="2OqwBi" id="1bheBWABaDl" role="1DdaDG">
          <node concept="1YBJjd" id="1bheBWABaDm" role="2Oq$k0">
            <ref role="1YBMHb" node="1bheBWAB3y9" resolve="state" />
          </node>
          <node concept="3Tsc0h" id="1bheBWABaDn" role="2OqNvi">
            <ref role="3TtcxE" to="oyog:1id1$wMpeiJ" resolve="transitions" />
          </node>
        </node>
        <node concept="3clFbS" id="1bheBWABaDo" role="2LFqv$">
          <node concept="3clFbJ" id="1bheBWABaDp" role="3cqZAp">
            <node concept="2OqwBi" id="1bheBWABaDq" role="3clFbw">
              <node concept="2OqwBi" id="1bheBWABaDr" role="2Oq$k0">
                <node concept="37vLTw" id="1bheBWABaDs" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bheBWABaDj" resolve="transition" />
                </node>
                <node concept="3TrEf2" id="1bheBWABaDt" role="2OqNvi">
                  <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                </node>
              </node>
              <node concept="3x8VRR" id="1bheBWABaDu" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="1bheBWABaDv" role="3clFbx">
              <node concept="3cpWs8" id="1bheBWABaDw" role="3cqZAp">
                <node concept="3cpWsn" id="1bheBWABaDx" role="3cpWs9">
                  <property role="TrG5h" value="same" />
                  <property role="2Lvdk3" value="same" />
                  <node concept="A3Dl8" id="1bheBWABaDy" role="1tU5fm">
                    <node concept="3Tqbb2" id="1bheBWABaD$" role="A3Ik2">
                      <ref role="ehGHo" to="oyog:1id1$wMpeiD" resolve="Transition" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1bheBWABaD_" role="33vP2m">
                    <node concept="2OqwBi" id="1bheBWABaDA" role="2Oq$k0">
                      <node concept="1YBJjd" id="1bheBWABaDB" role="2Oq$k0">
                        <ref role="1YBMHb" node="1bheBWAB3y9" resolve="state" />
                      </node>
                      <node concept="3Tsc0h" id="1bheBWABaDC" role="2OqNvi">
                        <ref role="3TtcxE" to="oyog:1id1$wMpeiJ" resolve="transitions" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="1bheBWABaDD" role="2OqNvi">
                      <node concept="1bVj0M" id="1bheBWABaDI" role="23t8la">
                        <node concept="gl6BB" id="1bheBWABaDJ" role="1bW2Oz">
                          <property role="TrG5h" value="other" />
                          <property role="2Lvdk3" value="other" />
                          <node concept="2jxLKc" id="1bheBWABaDL" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="1bheBWABaDM" role="1bW5cS">
                          <node concept="3clFbF" id="1bheBWABaDN" role="3cqZAp">
                            <node concept="1Wc70l" id="1bheBWABaDO" role="3clFbG">
                              <node concept="17QLQc" id="1bheBWABaDP" role="3uHU7B">
                                <node concept="37vLTw" id="1bheBWABaDQ" role="3uHU7B">
                                  <ref role="3cqZAo" node="1bheBWABaDJ" resolve="other" />
                                </node>
                                <node concept="37vLTw" id="1bheBWABaDR" role="3uHU7w">
                                  <ref role="3cqZAo" node="1bheBWABaDj" resolve="transition" />
                                </node>
                              </node>
                              <node concept="17R0WA" id="1bheBWABaDS" role="3uHU7w">
                                <node concept="2OqwBi" id="1bheBWABaDT" role="3uHU7B">
                                  <node concept="37vLTw" id="1bheBWABaDU" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1bheBWABaDJ" resolve="other" />
                                  </node>
                                  <node concept="3TrEf2" id="1bheBWABaDV" role="2OqNvi">
                                    <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1bheBWABaDW" role="3uHU7w">
                                  <node concept="37vLTw" id="1bheBWABaDX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1bheBWABaDj" resolve="transition" />
                                  </node>
                                  <node concept="3TrEf2" id="1bheBWABaDY" role="2OqNvi">
                                    <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
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
              <node concept="3clFbJ" id="1bheBWABaDZ" role="3cqZAp">
                <node concept="2OqwBi" id="1bheBWABaE0" role="3clFbw">
                  <node concept="37vLTw" id="1bheBWABaE1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bheBWABaDx" resolve="same" />
                  </node>
                  <node concept="3GX2aA" id="1bheBWABaE2" role="2OqNvi" />
                </node>
                <node concept="3clFbS" id="1bheBWABaE3" role="3clFbx">
                  <node concept="2MkqsV" id="1bheBWABaE4" role="3cqZAp">
                    <node concept="3cpWs3" id="1bheBWABaE5" role="2MkJ7o">
                      <node concept="3cpWs3" id="1bheBWABaE6" role="3uHU7B">
                        <node concept="3cpWs3" id="1bheBWABaE7" role="3uHU7B">
                          <node concept="3cpWs3" id="1bheBWABaE8" role="3uHU7B">
                            <node concept="3cpWs3" id="1bheBWABaE9" role="3uHU7B">
                              <node concept="3cpWs3" id="1bheBWABaEa" role="3uHU7B">
                                <node concept="3cpWs3" id="1bheBWABaEb" role="3uHU7B">
                                  <node concept="Xl_RD" id="1bheBWABaEc" role="3uHU7B">
                                    <property role="Xl_RC" value="non-deterministic transitions in state '" />
                                  </node>
                                  <node concept="2OqwBi" id="1bheBWABaEd" role="3uHU7w">
                                    <node concept="1YBJjd" id="1bheBWABaEe" role="2Oq$k0">
                                      <ref role="1YBMHb" node="1bheBWAB3y9" resolve="state" />
                                    </node>
                                    <node concept="3TrcHB" id="1bheBWABaEf" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="1bheBWABaEg" role="3uHU7w">
                                  <property role="Xl_RC" value="': trigger '" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1bheBWABaEh" role="3uHU7w">
                                <node concept="2OqwBi" id="1bheBWABaEi" role="2Oq$k0">
                                  <node concept="37vLTw" id="1bheBWABaEj" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1bheBWABaDj" resolve="transition" />
                                  </node>
                                  <node concept="3TrEf2" id="1bheBWABaEk" role="2OqNvi">
                                    <ref role="3Tt5mk" to="oyog:1id1$wMpeiE" resolve="trigger" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="1bheBWABaEl" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="1bheBWABaEm" role="3uHU7w">
                              <property role="Xl_RC" value="' is shared with " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1bheBWABaEn" role="3uHU7w">
                            <node concept="37vLTw" id="1bheBWABaEo" role="2Oq$k0">
                              <ref role="3cqZAo" node="1bheBWABaDx" resolve="same" />
                            </node>
                            <node concept="34oBXx" id="1bheBWABaEp" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="1bheBWABaEq" role="3uHU7w">
                          <property role="Xl_RC" value=" other transition(s) to " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1bheBWABaEr" role="3uHU7w">
                        <node concept="2OqwBi" id="1bheBWABaEs" role="2Oq$k0">
                          <node concept="37vLTw" id="1bheBWABaEt" role="2Oq$k0">
                            <ref role="3cqZAo" node="1bheBWABaDx" resolve="same" />
                          </node>
                          <node concept="3$u5V9" id="1bheBWABaEu" role="2OqNvi">
                            <node concept="1bVj0M" id="1bheBWABaEz" role="23t8la">
                              <node concept="gl6BB" id="1bheBWABaE$" role="1bW2Oz">
                                <property role="TrG5h" value="named" />
                                <property role="2Lvdk3" value="named" />
                                <node concept="2jxLKc" id="1bheBWABaEA" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="1bheBWABaEB" role="1bW5cS">
                                <node concept="3clFbF" id="1bheBWABaEC" role="3cqZAp">
                                  <node concept="3K4zz7" id="1bheBWABaED" role="3clFbG">
                                    <node concept="2OqwBi" id="1bheBWABaEE" role="3K4Cdx">
                                      <node concept="2OqwBi" id="1bheBWABaEF" role="2Oq$k0">
                                        <node concept="37vLTw" id="1bheBWABaEG" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1bheBWABaE$" resolve="named" />
                                        </node>
                                        <node concept="3TrEf2" id="1bheBWABaEH" role="2OqNvi">
                                          <ref role="3Tt5mk" to="oyog:1id1$wMpeiG" resolve="target" />
                                        </node>
                                      </node>
                                      <node concept="3x8VRR" id="1bheBWABaEI" role="2OqNvi" />
                                    </node>
                                    <node concept="2OqwBi" id="1bheBWABaEJ" role="3K4E3e">
                                      <node concept="2OqwBi" id="1bheBWABaEK" role="2Oq$k0">
                                        <node concept="37vLTw" id="1bheBWABaEL" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1bheBWABaE$" resolve="named" />
                                        </node>
                                        <node concept="3TrEf2" id="1bheBWABaEM" role="2OqNvi">
                                          <ref role="3Tt5mk" to="oyog:1id1$wMpeiG" resolve="target" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="1bheBWABaEN" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="1bheBWABaEO" role="3K4GZi">
                                      <property role="Xl_RC" value="&lt;unresolved&gt;" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uJxvA" id="1bheBWABaEP" role="2OqNvi">
                          <node concept="Xl_RD" id="1bheBWABaEQ" role="3uJOhx">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1bheBWABaER" role="1urrMF">
                      <ref role="3cqZAo" node="1bheBWABaDj" resolve="transition" />
                    </node>
                    <node concept="2OE7Q9" id="1bheBWABaES" role="1urrC5">
                      <ref role="2OEe5H" to="oyog:1id1$wMpeiE" resolve="trigger" />
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

