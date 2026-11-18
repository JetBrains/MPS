<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f1d5624f-f676-4083-91fe-3cc6ee2ead36(jetbrains.mps.samples.fincalculator.dataFlow)">
  <persistence version="9" />
  <languages>
    <use id="7fa12e9c-b949-4976-b4fa-19accbc320b4" name="jetbrains.mps.lang.dataFlow" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="00000000-0000-4000-0000-443879f56b80(jetbrains.mps.devkit.aspect.dataflow)" />
  </languages>
  <imports>
    <import index="64eg" ref="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7fa12e9c-b949-4976-b4fa-19accbc320b4" name="jetbrains.mps.lang.dataFlow">
      <concept id="1206442055221" name="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" flags="ig" index="3_zdsH">
        <reference id="1206442096288" name="conceptDeclaration" index="3_znuS" />
        <child id="1206442812839" name="builderBlock" index="3_A6iZ" />
      </concept>
      <concept id="1206442659665" name="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" flags="in" index="3__wT9" />
      <concept id="1206442747519" name="jetbrains.mps.lang.dataFlow.structure.NodeParameter" flags="nn" index="3__QtB" />
      <concept id="1206443823146" name="jetbrains.mps.lang.dataFlow.structure.EmitReadStatement" flags="nn" index="3_DX4M" />
      <concept id="1206444349662" name="jetbrains.mps.lang.dataFlow.structure.EmitWriteStatement" flags="nn" index="3_FXB6" />
      <concept id="1206444622344" name="jetbrains.mps.lang.dataFlow.structure.BaseEmitVariableStatement" flags="nn" index="3_H0cg">
        <child id="1206444629799" name="variable" index="3_H1SZ" />
      </concept>
      <concept id="1206444910183" name="jetbrains.mps.lang.dataFlow.structure.RelativePosition" flags="ng" index="3_I6tZ">
        <child id="1206444923842" name="relativeTo" index="3_I9Fq" />
      </concept>
      <concept id="1206445069217" name="jetbrains.mps.lang.dataFlow.structure.BeforePosition" flags="ng" index="3_IHaT" />
      <concept id="1206445181593" name="jetbrains.mps.lang.dataFlow.structure.BaseEmitJumpStatement" flags="nn" index="3_J8I1">
        <child id="1206445193860" name="jumpTo" index="3_JbIs" />
      </concept>
      <concept id="1206445295557" name="jetbrains.mps.lang.dataFlow.structure.EmitIfJumpStatement" flags="nn" index="3_J$rt" />
      <concept id="1206454052847" name="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" flags="nn" index="3AgYrR">
        <child id="1206454079161" name="codeFor" index="3Ah4Yx" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="3_zdsH" id="33wun1EkzQB">
    <property role="TrG5h" value="Calculator_DataFlow" />
    <ref role="3_znuS" to="64eg:i46Ymgg" resolve="Calculator" />
    <node concept="3__wT9" id="33wun1EkzQC" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzQD" role="2VODD2">
        <node concept="2Gpval" id="33wun1EkzQE" role="3cqZAp">
          <node concept="2GrKxI" id="33wun1EkzQF" role="2Gsz3X">
            <property role="TrG5h" value="command" />
            <property role="2Lvdk3" value="command" />
          </node>
          <node concept="2OqwBi" id="33wun1EkzQG" role="2GsD0m">
            <node concept="3__QtB" id="33wun1EkzQH" role="2Oq$k0" />
            <node concept="3Tsc0h" id="33wun1EkzQI" role="2OqNvi">
              <ref role="3TtcxE" to="64eg:1Oh785uWyUK" resolve="commands" />
            </node>
          </node>
          <node concept="3clFbS" id="33wun1EkzQJ" role="2LFqv$">
            <node concept="3AgYrR" id="33wun1EkzQK" role="3cqZAp">
              <node concept="2GrUjf" id="33wun1EkzQL" role="3Ah4Yx">
                <ref role="2Gs0qQ" node="33wun1EkzQF" resolve="command" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J$rt" id="33wun1EkzQM" role="3cqZAp">
          <node concept="3_IHaT" id="33wun1EkzQN" role="3_JbIs">
            <node concept="3__QtB" id="33wun1EkzQO" role="3_I9Fq" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzQP">
    <property role="TrG5h" value="InputField_DataFlow" />
    <ref role="3_znuS" to="64eg:i46Yz6h" resolve="InputField" />
    <node concept="3__wT9" id="33wun1EkzQQ" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzQR" role="2VODD2">
        <node concept="3_FXB6" id="33wun1EkzQS" role="3cqZAp">
          <node concept="3__QtB" id="33wun1EkzQT" role="3_H1SZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzQU">
    <property role="TrG5h" value="Selector_DataFlow" />
    <ref role="3_znuS" to="64eg:49kBZ1LqWqc" resolve="Selector" />
    <node concept="3__wT9" id="33wun1EkzQV" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzQW" role="2VODD2">
        <node concept="3_FXB6" id="33wun1EkzQX" role="3cqZAp">
          <node concept="3__QtB" id="33wun1EkzQY" role="3_H1SZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzQZ">
    <property role="TrG5h" value="Logical_DataFlow" />
    <ref role="3_znuS" to="64eg:49kBZ1Lqm_O" resolve="Logical" />
    <node concept="3__wT9" id="33wun1EkzR0" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzR1" role="2VODD2">
        <node concept="3_FXB6" id="33wun1EkzR2" role="3cqZAp">
          <node concept="3__QtB" id="33wun1EkzR3" role="3_H1SZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzR4">
    <property role="TrG5h" value="CalculationValue_DataFlow" />
    <ref role="3_znuS" to="64eg:5c4rtvXPueN" resolve="CalculationValue" />
    <node concept="3__wT9" id="33wun1EkzR5" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzR6" role="2VODD2">
        <node concept="3AgYrR" id="33wun1EkzR7" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzR8" role="3Ah4Yx">
            <node concept="3__QtB" id="33wun1EkzR9" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzRa" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:5c4rtvXPueO" resolve="initializer" />
            </node>
          </node>
        </node>
        <node concept="3_FXB6" id="33wun1EkzRb" role="3cqZAp">
          <node concept="3__QtB" id="33wun1EkzRc" role="3_H1SZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzRd">
    <property role="TrG5h" value="OutputField_DataFlow" />
    <ref role="3_znuS" to="64eg:i46ZlEo" resolve="OutputField" />
    <node concept="3__wT9" id="33wun1EkzRe" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzRf" role="2VODD2">
        <node concept="3AgYrR" id="33wun1EkzRg" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzRh" role="3Ah4Yx">
            <node concept="3__QtB" id="33wun1EkzRi" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzRj" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:i470dVI" resolve="expression" />
            </node>
          </node>
        </node>
        <node concept="3_FXB6" id="33wun1EkzRk" role="3cqZAp">
          <node concept="3__QtB" id="33wun1EkzRl" role="3_H1SZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzRm">
    <property role="TrG5h" value="OutputTable_DataFlow" />
    <ref role="3_znuS" to="64eg:5c4rtvXSJiG" resolve="OutputTable" />
    <node concept="3__wT9" id="33wun1EkzRn" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzRo" role="2VODD2">
        <node concept="3AgYrR" id="33wun1EkzRp" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzRq" role="3Ah4Yx">
            <node concept="3__QtB" id="33wun1EkzRr" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzRs" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:5c4rtvXSJiH" resolve="dataSource" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzRt">
    <property role="TrG5h" value="Calculation_DataFlow" />
    <ref role="3_znuS" to="64eg:23xMseUt3XP" resolve="Calculation" />
    <node concept="3__wT9" id="33wun1EkzRu" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzRv" role="2VODD2">
        <node concept="2Gpval" id="33wun1EkzRw" role="3cqZAp">
          <node concept="2GrKxI" id="33wun1EkzRx" role="2Gsz3X">
            <property role="TrG5h" value="reference" />
            <property role="2Lvdk3" value="reference0" />
          </node>
          <node concept="2OqwBi" id="33wun1EkzRy" role="2GsD0m">
            <node concept="2OqwBi" id="33wun1EkzRz" role="2Oq$k0">
              <node concept="3__QtB" id="33wun1EkzR$" role="2Oq$k0" />
              <node concept="3TrEf2" id="33wun1EkzR_" role="2OqNvi">
                <ref role="3Tt5mk" to="64eg:23xMseUtsxB" resolve="body" />
              </node>
            </node>
            <node concept="2Rf3mk" id="33wun1EkzRA" role="2OqNvi">
              <node concept="3gmYPX" id="3jgo7HgFwB0" role="1xVPHs">
                <node concept="3gn64h" id="3jgo7HgFwB2" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:i470n16" resolve="FieldReference" />
                </node>
                <node concept="3gn64h" id="3jgo7HgFwGf" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:49kBZ1LqmAC" resolve="LogicalReference" />
                </node>
                <node concept="3gn64h" id="3jgo7HgFwYG" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:49kBZ1LqWso" resolve="SelectorReference" />
                </node>
                <node concept="3gn64h" id="3jgo7HgFxiz" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:23xMseUumqB" resolve="CalculationReference" />
                </node>
                <node concept="3gn64h" id="3jgo7HgFxFl" role="3gmYPZ">
                  <ref role="3gnhBz" to="64eg:5c4rtvXQ3iH" resolve="CalculationValueReference" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="33wun1EkzRF" role="2LFqv$">
            <node concept="3AgYrR" id="33wun1EkzRG" role="3cqZAp">
              <node concept="2GrUjf" id="33wun1EkzRH" role="3Ah4Yx">
                <ref role="2Gs0qQ" node="33wun1EkzRx" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3_FXB6" id="33wun1EkzSA" role="3cqZAp">
          <node concept="3__QtB" id="33wun1EkzSB" role="3_H1SZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzSC">
    <property role="TrG5h" value="FieldReference_DataFlow" />
    <ref role="3_znuS" to="64eg:i470n16" resolve="FieldReference" />
    <node concept="3__wT9" id="33wun1EkzSD" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzSE" role="2VODD2">
        <node concept="3_DX4M" id="33wun1EkzSF" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzSG" role="3_H1SZ">
            <node concept="3__QtB" id="33wun1EkzSH" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzSI" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:i470soo" resolve="field" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzSJ">
    <property role="TrG5h" value="LogicalReference_DataFlow" />
    <ref role="3_znuS" to="64eg:49kBZ1LqmAC" resolve="LogicalReference" />
    <node concept="3__wT9" id="33wun1EkzSK" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzSL" role="2VODD2">
        <node concept="3_DX4M" id="33wun1EkzSM" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzSN" role="3_H1SZ">
            <node concept="3__QtB" id="33wun1EkzSO" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzSP" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:49kBZ1LqmAD" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzSQ">
    <property role="TrG5h" value="SelectorReference_DataFlow" />
    <ref role="3_znuS" to="64eg:49kBZ1LqWso" resolve="SelectorReference" />
    <node concept="3__wT9" id="33wun1EkzSR" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzSS" role="2VODD2">
        <node concept="3_DX4M" id="33wun1EkzST" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzSU" role="3_H1SZ">
            <node concept="3__QtB" id="33wun1EkzSV" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzSW" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:49kBZ1LqWsp" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzSX">
    <property role="TrG5h" value="CalculationReference_DataFlow" />
    <ref role="3_znuS" to="64eg:23xMseUumqB" resolve="CalculationReference" />
    <node concept="3__wT9" id="33wun1EkzSY" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzSZ" role="2VODD2">
        <node concept="3_DX4M" id="33wun1EkzT0" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzT1" role="3_H1SZ">
            <node concept="3__QtB" id="33wun1EkzT2" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzT3" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:23xMseUumqC" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="33wun1EkzT4">
    <property role="TrG5h" value="CalculationValueReference_DataFlow" />
    <ref role="3_znuS" to="64eg:5c4rtvXQ3iH" resolve="CalculationValueReference" />
    <node concept="3__wT9" id="33wun1EkzT5" role="3_A6iZ">
      <node concept="3clFbS" id="33wun1EkzT6" role="2VODD2">
        <node concept="3_DX4M" id="33wun1EkzT7" role="3cqZAp">
          <node concept="2OqwBi" id="33wun1EkzT8" role="3_H1SZ">
            <node concept="3__QtB" id="33wun1EkzT9" role="2Oq$k0" />
            <node concept="3TrEf2" id="33wun1EkzTa" role="2OqNvi">
              <ref role="3Tt5mk" to="64eg:5c4rtvXQ3iI" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

