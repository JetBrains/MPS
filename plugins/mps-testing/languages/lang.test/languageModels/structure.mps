<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)">
  <persistence version="9" />
  <languages>
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" />
    <import index="rliy" ref="r:00a69138-8767-4011-a710-463511eae7a6(jetbrains.mps.lang.test.plugin)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="53vh" ref="r:53885008-7612-46ff-8b11-27f1d42c3adb(jetbrains.mps.lang.migration.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="5177162104569058199" name="jetbrains.mps.lang.resources.structure.HelpURL" flags="ng" index="1sEMCm">
        <property id="5177162104569058200" name="url" index="1sEMCp" />
        <reference id="4726480899534317252" name="baseURL" index="1fZFei" />
      </concept>
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="1805901909778165289" name="newuiFile" index="uyjgh" />
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="6054523464626862044" name="jetbrains.mps.lang.structure.structure.AttributeInfo_IsMultiple" flags="ng" index="tn0Fv">
        <property id="6054523464626875854" name="value" index="tnX3d" />
      </concept>
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
        <child id="7588428831955550186" name="multiple" index="HhnKV" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1780177113170204155" name="helpURL" index="bvy1s" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="418049251856799813" name="jetbrains.mps.lang.structure.structure.ExperimentalAPINodeAttribute" flags="ig" index="1AhYRh" />
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="6327362524875300597" name="icon" index="rwd14" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="hBxLA2s">
    <property role="TrG5h" value="TestNodeAnnotation" />
    <property role="EcuMT" value="1210673684636" />
    <ref role="1TJDcQ" node="hSdkHD7" resolve="AbstractTestNodeAnnotation" />
    <node concept="PrWs8" id="hBxLCIf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeQf" role="lGtFl">
      <property role="Hh88m" value="testLabel" />
    </node>
  </node>
  <node concept="1TIwiD" id="hBxON8j">
    <property role="TrG5h" value="TestNodeReference" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="EcuMT" value="1210674524691" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="hBxOPr6" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1210674534086" />
      <ref role="20lvS9" node="hBxLA2s" resolve="TestNodeAnnotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="hCJA54K">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AssertMatch" />
    <property role="3GE5qa" value="asserts" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="assert match" />
    <property role="EcuMT" value="1211979288880" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="hCJA96l" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="before" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1211979305365" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="hCJAdgf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="after" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1211979322383" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="2ZO5wSvHHyx" role="PzmwI">
      <ref role="PrY4T" to="tpe3:h3_9g$o" resolve="MessageHolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="hFquTD4">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractNodeAssert" />
    <property role="3GE5qa" value="asserts" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="EcuMT" value="1214846310980" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="hFqv8by" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeToCheck" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1214846370530" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="hG1TMwX">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodeErrorCheckOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="34LRSv" value="has error" />
    <property role="EcuMT" value="1215507671101" />
    <ref role="1TJDcQ" node="6MWlVHU6lEq" resolve="AbstractNodeErrorCheckOperation" />
    <node concept="1TJgyj" id="7nf9pEwhZWl" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="errorRef" />
      <property role="IQ2ns" value="8489045168660938517" />
      <ref role="20lvS9" node="6EW1JnOFUIt" resolve="IRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="hG29bgx">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodeWarningCheckOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="34LRSv" value="has warning" />
    <property role="EcuMT" value="1215511704609" />
    <ref role="1TJDcQ" node="7eBNsYVJLV9" resolve="AbstractNodeWarningCheckOperation" />
    <node concept="1TJgyj" id="7nf9pEwhZYb" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="warningRef" />
      <property role="IQ2ns" value="8489045168660938635" />
      <ref role="20lvS9" node="3VyMYUbe6PQ" resolve="WarningStatementReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="hG30Oi4">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodeTypeCheckOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="34LRSv" value="has type" />
    <property role="EcuMT" value="1215526290564" />
    <ref role="1TJDcQ" node="hG7unSw" resolve="NodeCheckOperation" />
    <node concept="1TJgyj" id="hG31dwS" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1215526393912" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="hG7unSw">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodeCheckOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="R4oN_" value="tag for checking either type errors or error messages, attached to some node" />
    <property role="EcuMT" value="1215601147424" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1kgh5Yab39U" role="PzmwI">
      <ref role="PrY4T" node="1kgh5Yab2sH" resolve="INodesTestMethod" />
    </node>
    <node concept="PrWs8" id="3zy9SwK6V3d" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="hG7CXiP">
    <property role="TrG5h" value="NodeOperationsContainer" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="EcuMT" value="1215603922101" />
    <ref role="1TJDcQ" node="hSdkHD7" resolve="AbstractTestNodeAnnotation" />
    <node concept="1TJgyj" id="hG7EUTW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeOperations" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1215604436604" />
      <ref role="20lvS9" node="hG7unSw" resolve="NodeCheckOperation" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeQV" role="lGtFl">
      <property role="Hh88m" value="nodeOperationsMark" />
      <node concept="trNpa" id="166$sc$ZIAM" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
    <node concept="PrWs8" id="71GR8EvRozM" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
    </node>
  </node>
  <node concept="1TIwiD" id="hG7OXla">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CheckNodeForErrorMessagesOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="34LRSv" value="for error messages" />
    <property role="EcuMT" value="1215607067978" />
    <ref role="1TJDcQ" node="hG7unSw" resolve="NodeCheckOperation" />
    <node concept="1TJgyi" id="JjtHGBNrEH" role="1TKVEl">
      <property role="TrG5h" value="allowErrors" />
      <property role="IQ2nx" value="852155438140865197" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="JjtHGBNrEI" role="1TKVEl">
      <property role="TrG5h" value="allowWarnings" />
      <property role="IQ2nx" value="852155438140865198" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="3fN3QovzdMy" role="1TKVEl">
      <property role="IQ2nx" value="3743352646565420194" />
      <property role="TrG5h" value="includeSelf" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="hHlH9T6">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="NodesTestCase" />
    <property role="EcuMT" value="1216913645126" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1sEMCm" id="2bBdqPb0rlw" role="bvy1s">
      <property role="1sEMCp" value="testing-languages.html#nodetests" />
      <ref role="1fZFei" to="rliy:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="1TJgyj" id="hHSKRN6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodesToCheck" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1217501822150" />
      <ref role="20lvS9" node="hHqefK1" resolve="TestNode" />
    </node>
    <node concept="1TJgyj" id="2154_0wVVpx" role="1TKVEi">
      <property role="IQ2ns" value="2325284917965993569" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="beforeTests" />
      <ref role="20lvS9" node="2154_0wV2x7" resolve="BeforeTestsMethod" />
    </node>
    <node concept="1TJgyj" id="2154_0wVVpG" role="1TKVEi">
      <property role="IQ2ns" value="2325284917965993580" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="afterTests" />
      <ref role="20lvS9" node="2154_0wV2x8" resolve="AfterTestsMethod" />
    </node>
    <node concept="1TJgyj" id="hHSL9AP" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="testMethods" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1217501895093" />
      <ref role="20lvS9" node="hHlHkQ8" resolve="NodesTestMethod" />
    </node>
    <node concept="1TJgyj" id="hHqtyUn" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1216993439383" />
      <ref role="20lvS9" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
    </node>
    <node concept="PrWs8" id="hHlJ15g" role="PzmwI">
      <ref role="PrY4T" to="tpe3:hGB2rPm" resolve="ITestCase" />
    </node>
    <node concept="PrWs8" id="hHqtyfE" role="PzmwI">
      <ref role="PrY4T" to="tp4f:hyWqMFP" resolve="IClassifier" />
    </node>
    <node concept="PrWs8" id="1ZcerrmzquJ" role="PzmwI">
      <ref role="PrY4T" node="1Zcerrmzb_y" resolve="TestProjectAware" />
    </node>
    <node concept="PrWs8" id="2deFRo6cC4S" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
    <node concept="1TJgyi" id="5vTxdEzuHPa" role="1TKVEl">
      <property role="TrG5h" value="needsNoWriteAction" />
      <property role="IQ2nx" value="6339244025081158986" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="2hh8MJdVahQ" role="lGtFl" />
    </node>
    <node concept="1TJgyi" id="2hh8MJdUWcZ" role="1TKVEl">
      <property role="IQ2nx" value="2616911529524314943" />
      <property role="TrG5h" value="accessMode" />
      <ref role="AX2Wp" node="2hh8MJdVwqS" resolve="ExecutionModelAccessMode" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJSw" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/nodesTest.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="hHlHkQ8">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodesTestMethod" />
    <property role="EcuMT" value="1216913689992" />
    <ref role="1TJDcQ" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
    <node concept="PrWs8" id="hHlHppc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="hHDN2bY" role="PzmwI">
      <ref role="PrY4T" to="tpe3:hGBgSCX" resolve="ITestMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="hHqefK1">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TestNode" />
    <property role="34LRSv" value="test node" />
    <property role="EcuMT" value="1216989428737" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="143xXLdhW_p" role="PzmwI">
      <ref role="PrY4T" node="143xXLdhW$X" resolve="ITestAnnotationsContainer" />
    </node>
    <node concept="PrWs8" id="3612dezJk3x" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    </node>
    <node concept="1TJgyj" id="hHqenIi" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeToCheck" />
      <property role="IQ2ns" value="1216989461394" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="hPjxXux">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ProjectExpression" />
    <property role="3GE5qa" value="expression" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="project" />
    <property role="EcuMT" value="1225467090849" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="hPjGwIs">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ModelExpression" />
    <property role="3GE5qa" value="expression" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="model" />
    <property role="EcuMT" value="1225469856668" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="hPLZb6h">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SimpleNodeTest" />
    <property role="34LRSv" value="test method" />
    <property role="EcuMT" value="1225978065297" />
    <ref role="1TJDcQ" node="hHlHkQ8" resolve="NodesTestMethod" />
  </node>
  <node concept="1TIwiD" id="hPMFPyi">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="InvokeIntentionStatement" />
    <property role="3GE5qa" value="editor" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="invoke intention" />
    <property role="EcuMT" value="1225989773458" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="hPMFYKr" role="1TKVEi">
      <property role="20kJfa" value="intention" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1225989811227" />
      <ref role="20lvS9" to="tp3j:hmS6QkF" resolve="IntentionDeclaration" />
    </node>
    <node concept="1TJgyj" id="7JT4LO$qcEi" role="1TKVEi">
      <property role="IQ2ns" value="8933192351751916178" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameter" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="hQJ5G8s">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditorOperation" />
    <property role="3GE5qa" value="editor" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="EcuMT" value="1227003183644" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="hQJ_yfv" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="hSdkHD7">
    <property role="TrG5h" value="AbstractTestNodeAnnotation" />
    <property role="EcuMT" value="1228584180295" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="M6xJ_" id="6_gUeuqOeSC" role="lGtFl">
      <property role="Hh88m" value="testNode" />
      <node concept="trNpa" id="166$sc$ZIA$" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="hQTK7X3">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TypeKeyStatement" />
    <property role="3GE5qa" value="editor" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="type" />
    <property role="EcuMT" value="1227182079811" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyi" id="hQTTdxU" role="1TKVEl">
      <property role="TrG5h" value="keys" />
      <property role="IQ2nx" value="1227184461946" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="hSyd1fI">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PressKeyStatement" />
    <property role="3GE5qa" value="editor" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="press keys" />
    <property role="EcuMT" value="1228934484974" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="hSyd6OA" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="keyStrokes" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="1228934507814" />
      <ref role="20lvS9" to="tp4k:h$pLAnk" resolve="KeyMapKeystroke" />
    </node>
  </node>
  <node concept="1TIwiD" id="hSLiM3w">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="EditorTestCase" />
    <property role="3GE5qa" value="editor" />
    <property role="EcuMT" value="1229187653856" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1sEMCm" id="2bBdqPb0rlt" role="bvy1s">
      <property role="1sEMCp" value="testing-languages.html#editortests" />
      <ref role="1fZFei" to="rliy:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="1TJgyi" id="1CyoCb$wKhC" role="1TKVEl">
      <property role="TrG5h" value="description" />
      <property role="IQ2nx" value="1883175908513350760" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2IvnPUIp3ly" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="testNodeBefore" />
      <property role="IQ2ns" value="3143335925185262946" />
      <ref role="20lvS9" node="hHqefK1" resolve="TestNode" />
    </node>
    <node concept="1TJgyj" id="2IvnPUIp3m5" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="testNodeResult" />
      <property role="IQ2ns" value="3143335925185262981" />
      <ref role="20lvS9" node="hHqefK1" resolve="TestNode" />
    </node>
    <node concept="1TJgyj" id="hSLjaOj" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="IQ2ns" value="1229187755283" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyj" id="4xJw7BvbXxC" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logEvents" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5219531754069547112" />
      <ref role="20lvS9" node="4xJw7BvbXoK" resolve="LogEvent" />
    </node>
    <node concept="PrWs8" id="hSLj42s" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="hSQsG_L" role="PzmwI">
      <ref role="PrY4T" to="tpe3:hGBgSCX" resolve="ITestMethod" />
    </node>
    <node concept="PrWs8" id="hSLl9xe" role="PzmwI">
      <ref role="PrY4T" to="tpe3:hGB2rPm" resolve="ITestCase" />
    </node>
    <node concept="PrWs8" id="5_pDliflca0" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
    </node>
    <node concept="PrWs8" id="dxGXeX_YMA" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    </node>
    <node concept="PrWs8" id="2deFRo6cC4H" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
    <node concept="PrWs8" id="54ZfFHb0Nw6" role="PzmwI">
      <ref role="PrY4T" to="tpee:htgVS9_" resolve="IStatementListContainer" />
    </node>
    <node concept="PrWs8" id="54ZfFHb0Nwm" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
    <node concept="PrWs8" id="1Zcerrmzg6Y" role="PzmwI">
      <ref role="PrY4T" node="1Zcerrmzb_y" resolve="TestProjectAware" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJSv" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/nodesTest.png" />
      <property role="uyjgh" value="${module}/icons/editorTest_newui.svg" />
    </node>
    <node concept="1TJgyj" id="60ggPToKMy5" role="1TKVEi">
      <property role="IQ2ns" value="6922106699763624069" />
      <property role="20kJfa" value="nodeMatching" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="60ggPToKIi$" resolve="NodeMatchingRules" />
    </node>
  </node>
  <node concept="1TIwiD" id="hSLIFSi">
    <property role="TrG5h" value="AnonymousCellAnnotation" />
    <property role="3GE5qa" value="editor" />
    <property role="EcuMT" value="1229194968594" />
    <ref role="1TJDcQ" node="hSdkHD7" resolve="AbstractTestNodeAnnotation" />
    <node concept="1TJgyj" id="1FgNkkI7TFc" role="1TKVEi">
      <property role="20kJfa" value="nodeRangeSelectionStart" />
      <property role="IQ2ns" value="1932269937152203468" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="1FgNkkI7TFd" role="1TKVEi">
      <property role="20kJfa" value="nodeRangeSelectionEnd" />
      <property role="IQ2ns" value="1932269937152203469" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyi" id="hSLIFSj" role="1TKVEl">
      <property role="TrG5h" value="cellId" />
      <property role="IQ2nx" value="1229194968595" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="hSLIFSk" role="1TKVEl">
      <property role="TrG5h" value="caretPosition" />
      <property role="IQ2nx" value="1229194968596" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="hSZRAX1" role="1TKVEl">
      <property role="TrG5h" value="isLastPosition" />
      <property role="IQ2nx" value="1229432188737" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="1FgNkkI9h56" role="1TKVEl">
      <property role="TrG5h" value="useLabelSelection" />
      <property role="IQ2nx" value="1932269937152561478" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="5rZKa_fTvKN" role="1TKVEl">
      <property role="TrG5h" value="selectionStart" />
      <property role="IQ2nx" value="6268941039745498163" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="5rZKa_fTvKP" role="1TKVEl">
      <property role="TrG5h" value="selectionEnd" />
      <property role="IQ2nx" value="6268941039745498165" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="1HNcKYL91S1" role="1TKVEl">
      <property role="TrG5h" value="isInInspector" />
      <property role="IQ2nx" value="1977980803835239937" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="hSLIFSl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeQN" role="lGtFl">
      <property role="Hh88m" value="anonCell" />
    </node>
  </node>
  <node concept="1TIwiD" id="hTJ5cZc">
    <property role="TrG5h" value="MockAnnotation" />
    <property role="3GE5qa" value="mock" />
    <property role="EcuMT" value="1230224281548" />
    <ref role="1TJDcQ" node="hSdkHD7" resolve="AbstractTestNodeAnnotation" />
    <node concept="M6xJ_" id="6_gUeuqOeTH" role="lGtFl">
      <property role="Hh88m" value="mockAnnotation" />
      <node concept="trNpa" id="166$sc$ZIB5" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5k1cI6h4in">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodeTypeSetCheckOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="34LRSv" value="has type in" />
    <property role="EcuMT" value="95706764259116183" />
    <ref role="1TJDcQ" node="hG7unSw" resolve="NodeCheckOperation" />
    <node concept="1TJgyj" id="5k1cI6h4io" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="95706764259116184" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2l6iv8BZPPM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="expression container (used inside test nodes)" />
    <property role="TrG5h" value="ExpressionContainer" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="{ expr }" />
    <property role="EcuMT" value="2685915532175039858" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="2l6iv8BZPPN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2685915532175039859" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="50vRVamdIih">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SwitchToInspector" />
    <property role="3GE5qa" value="editor" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="switch to inspector" />
    <property role="EcuMT" value="5773579205429617809" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
  </node>
  <node concept="1TIwiD" id="50vRVameF3Z">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditorComponentExpression" />
    <property role="3GE5qa" value="expression" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="editor component" />
    <property role="EcuMT" value="5773579205429866751" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="4qWC2JVrBca">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="TestInfo" />
    <property role="EcuMT" value="5097124989038916362" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1sEMCm" id="2bBdqPb0rlB" role="bvy1s">
      <property role="1sEMCp" value="testing-languages.html#testinfo" />
      <ref role="1fZFei" to="rliy:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="1TJgyi" id="4qWC2JVrBcb" role="1TKVEl">
      <property role="TrG5h" value="projectPath" />
      <property role="IQ2nx" value="5097124989038916363" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="ThWTaQhCnp" role="1TKVEl">
      <property role="TrG5h" value="reOpenProject" />
      <property role="IQ2nx" value="1031873601093404121" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="65clA3cMU1F">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="InvokeActionStatement" />
    <property role="3GE5qa" value="editor" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="invoke action" />
    <property role="EcuMT" value="7011073693661765739" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="X8Ly3tyr4R" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actionReference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1101347953350127927" />
      <ref role="20lvS9" node="X8Ly3typJO" resolve="ActionReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="X8Ly3typJO">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ActionReference" />
    <property role="3GE5qa" value="actions" />
    <property role="EcuMT" value="1101347953350122484" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="X8Ly3typO6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BootstrapActionReference" />
    <property role="3GE5qa" value="actions" />
    <property role="34LRSv" value="by id:" />
    <property role="EcuMT" value="1101347953350122758" />
    <ref role="1TJDcQ" node="X8Ly3typJO" resolve="ActionReference" />
    <node concept="1TJgyi" id="X8Ly3tyr4I" role="1TKVEl">
      <property role="TrG5h" value="actionId" />
      <property role="IQ2nx" value="1101347953350127918" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3FlSiDCuCBp">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="MPSActionReference" />
    <property role="3GE5qa" value="actions" />
    <property role="34LRSv" value="-&gt;" />
    <property role="EcuMT" value="4239542196496927193" />
    <ref role="1TJDcQ" node="X8Ly3typJO" resolve="ActionReference" />
    <node concept="1TJgyj" id="3FlSiDCuDcn" role="1TKVEi">
      <property role="20kJfa" value="action" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4239542196496929559" />
      <ref role="20lvS9" to="tp4k:hwsE7KS" resolve="ActionDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3NZe7JF5O16">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NodeExpectedTypeCheckOperation" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="34LRSv" value="has expected type" />
    <property role="EcuMT" value="4395293866213195846" />
    <ref role="1TJDcQ" node="hG30Oi4" resolve="NodeTypeCheckOperation" />
  </node>
  <node concept="1TIwiD" id="so7passww9">
    <property role="TrG5h" value="ScopesTest" />
    <property role="3GE5qa" value="scopes" />
    <property role="EcuMT" value="511191073233700873" />
    <ref role="1TJDcQ" node="hSdkHD7" resolve="AbstractTestNodeAnnotation" />
    <node concept="1TJgyj" id="4IvydoGulmm" role="1TKVEi">
      <property role="20kJfa" value="checkingReference" />
      <property role="IQ2ns" value="5449224527592117654" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="3aUmKV2nYC3" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="3655334166513314307" />
      <ref role="20lvS9" node="3aUmKV2nYBN" resolve="ScopesExpectedNode" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOePS" role="lGtFl">
      <property role="Hh88m" value="scopeTest" />
      <node concept="trNpa" id="166$sc$ZIB3" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
    <node concept="PrWs8" id="1kgh5Yab3a1" role="PzmwI">
      <ref role="PrY4T" node="1kgh5Yab2sH" resolve="INodesTestMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="3aUmKV2nYBN">
    <property role="TrG5h" value="ScopesExpectedNode" />
    <property role="3GE5qa" value="scopes" />
    <property role="EcuMT" value="3655334166513314291" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3wYn_nuyrKv" role="1TKVEi">
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4052780437578824735" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3J6bWQr0BO4">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeRuleCheckOperation" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="check specific rule" />
    <property role="EcuMT" value="4307182653741890820" />
    <ref role="1TJDcQ" node="6MWlVHUgHaa" resolve="AbstractNodeRuleCheckOperation" />
    <node concept="PrWs8" id="2wBFdLy7HsV" role="PzmwI">
      <ref role="PrY4T" node="2wBFdLy7HeG" resolve="IReferenceAttachable" />
    </node>
  </node>
  <node concept="1TIwiD" id="3VyMYUb6r1H">
    <property role="TrG5h" value="ReportErrorStatementReference" />
    <property role="EcuMT" value="4531408400484511853" />
    <node concept="1TJgyj" id="3VyMYUb6r1I" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4531408400484511854" />
      <ref role="20lvS9" to="tpd4:h6MkqoE" resolve="ReportErrorStatement" />
      <ref role="20ksaX" node="7eBNsYUkvtl" resolve="declaration" />
    </node>
    <node concept="PrWs8" id="6EW1JnOGf1U" role="PzmwI">
      <ref role="PrY4T" node="6EW1JnOFUIt" resolve="IRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="3VyMYUbe6PQ">
    <property role="TrG5h" value="WarningStatementReference" />
    <property role="EcuMT" value="4531408400486526326" />
    <node concept="1TJgyj" id="3VyMYUbe6PR" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4531408400486526327" />
      <ref role="20lvS9" to="tpd4:h$a7r4L" resolve="WarningStatement" />
      <ref role="20ksaX" node="7eBNsYUkvtl" resolve="declaration" />
    </node>
    <node concept="PrWs8" id="6EW1JnOGkmU" role="PzmwI">
      <ref role="PrY4T" node="6EW1JnOFUIt" resolve="IRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="nMEi6GLtoU">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeTypeSystemErrorCheckOperation" />
    <property role="34LRSv" value="has typesystem error" />
    <property role="R4oN_" value="check for unknown typesystem error" />
    <property role="EcuMT" value="428590876651279930" />
    <ref role="1TJDcQ" node="4CT6QR8TxBp" resolve="NodeTypeSystemRuleCheckOperation" />
    <node concept="1TJgyj" id="426cbTMe2uN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="equationRef" />
      <property role="IQ2ns" value="4649457259824818099" />
      <ref role="20lvS9" node="426cbTMdZVv" resolve="TypesystemEquationReference" />
    </node>
    <node concept="PrWs8" id="426cbTMe0db" role="PzmwI">
      <ref role="PrY4T" node="2wBFdLy7HeG" resolve="IReferenceAttachable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4CT6QR8TxBp">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeTypeSystemRuleCheckOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="5348336190815082969" />
    <ref role="1TJDcQ" node="6MWlVHUgHaa" resolve="AbstractNodeRuleCheckOperation" />
  </node>
  <node concept="PlHQZ" id="2wBFdLy7HeG">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="IReferenceAttachable" />
    <property role="EcuMT" value="2893471348147803052" />
  </node>
  <node concept="1TIwiD" id="6EW1JnOFKPB">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="UnknownRuleReference" />
    <property role="EcuMT" value="7691029917083831655" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6EW1JnOFOwa" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7691029917083846666" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
      <ref role="20ksaX" node="7eBNsYUkvtl" resolve="declaration" />
    </node>
    <node concept="PrWs8" id="6EW1JnOFUJ3" role="PzmwI">
      <ref role="PrY4T" node="6EW1JnOFUIt" resolve="IRuleReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="6EW1JnOFUIt">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="IRuleReference" />
    <property role="EcuMT" value="7691029917083872157" />
    <node concept="1TJgyj" id="7eBNsYUkvtl" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8333855927540250453" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6MWlVHU6huX">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeUnknownErrorCheckOperation" />
    <property role="34LRSv" value="has error" />
    <property role="EcuMT" value="7835233914436786109" />
    <ref role="1TJDcQ" node="6MWlVHU6lEq" resolve="AbstractNodeErrorCheckOperation" />
    <node concept="1TJgyj" id="7eBNsYUjDou" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="errorRef" />
      <property role="IQ2ns" value="8333855927540028958" />
      <ref role="20lvS9" node="6EW1JnOFKPB" resolve="UnknownRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="6MWlVHU6lEq">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="AbstractNodeErrorCheckOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="7835233914436803226" />
    <ref role="1TJDcQ" node="3J6bWQr0BO4" resolve="NodeRuleCheckOperation" />
  </node>
  <node concept="1TIwiD" id="6MWlVHUgHaa">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="AbstractNodeRuleCheckOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="7835233914439520906" />
    <ref role="1TJDcQ" node="hG7unSw" resolve="NodeCheckOperation" />
    <node concept="1TJgyj" id="Bszh9w5Xnr" role="1TKVEi">
      <property role="IQ2ns" value="710597951278798299" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expectedMessage" />
      <ref role="20lvS9" node="Bszh9w5Xms" resolve="ExpectedMessageContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eBNsYUkBrv">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeConstraintsErrorCheckOperation" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="34LRSv" value="has constraints error" />
    <property role="EcuMT" value="8333855927540283103" />
    <ref role="1TJDcQ" node="6MWlVHU6lEq" resolve="AbstractNodeErrorCheckOperation" />
    <node concept="1TJgyj" id="7eBNsYUMJVx" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="errorRef" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8333855927548182241" />
      <ref role="20lvS9" node="6EW1JnOFKPB" resolve="UnknownRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eBNsYVJLV9">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="AbstractNodeWarningCheckOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="8333855927564181193" />
    <ref role="1TJDcQ" node="3J6bWQr0BO4" resolve="NodeRuleCheckOperation" />
  </node>
  <node concept="1TIwiD" id="7eBNsYVJSEH">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeConstraintsWarningCheckOperation" />
    <property role="34LRSv" value="has constraints warning" />
    <property role="EcuMT" value="8333855927564208813" />
    <ref role="1TJDcQ" node="7eBNsYVJLV9" resolve="AbstractNodeWarningCheckOperation" />
    <node concept="1TJgyj" id="7eBNsYVJSL1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="warningRef" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8333855927564209217" />
      <ref role="20lvS9" node="6EW1JnOFKPB" resolve="UnknownRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7eBNsYVKb$0">
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeUnknownWarningCheckOperation" />
    <property role="34LRSv" value="has warning" />
    <property role="EcuMT" value="8333855927564286208" />
    <ref role="1TJDcQ" node="7eBNsYVJLV9" resolve="AbstractNodeWarningCheckOperation" />
    <node concept="1TJgyj" id="7eBNsYVKhqz" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="warningRef" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8333855927564310179" />
      <ref role="20lvS9" node="6EW1JnOFKPB" resolve="UnknownRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="bG3Ez5d8XT">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="PressMouseStatement" />
    <property role="34LRSv" value="press mouse" />
    <property role="EcuMT" value="210559400605421433" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="fK9aQHS" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statementList" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1082485599096" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyi" id="bG3Ez5fDVB" role="1TKVEl">
      <property role="TrG5h" value="x" />
      <property role="IQ2nx" value="210559400606080743" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="bG3Ez5fDVC" role="1TKVEl">
      <property role="TrG5h" value="y" />
      <property role="IQ2nx" value="210559400606080744" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="bG3Ez5na2z">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="DragMouseStatement" />
    <property role="34LRSv" value="drag mouse" />
    <property role="EcuMT" value="210559400608047267" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyi" id="bG3Ez5na7K" role="1TKVEl">
      <property role="TrG5h" value="x" />
      <property role="IQ2nx" value="210559400608047600" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="bG3Ez5na7L" role="1TKVEl">
      <property role="TrG5h" value="y" />
      <property role="IQ2nx" value="210559400608047601" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="71GR8EvPDc$">
    <property role="TrG5h" value="UntypedExpression" />
    <property role="34LRSv" value="_" />
    <property role="EcuMT" value="8101092317677916964" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="4xJw7BvbXoK">
    <property role="TrG5h" value="LogEvent" />
    <property role="3GE5qa" value="log" />
    <property role="EcuMT" value="5219531754069546544" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3Ftr4R6BHaB" role="1TKVEl">
      <property role="TrG5h" value="level" />
      <property role="IQ2nx" value="5219531754070085220" />
      <ref role="AX2Wp" node="3Ftr4R6BFGQ" resolve="Level" />
    </node>
    <node concept="1TJgyi" id="4xJw7Bve0TB" role="1TKVEl">
      <property role="TrG5h" value="message" />
      <property role="IQ2nx" value="5219531754070085223" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1RxYXnVZA9M">
    <property role="EcuMT" value="2153278993334166130" />
    <property role="3GE5qa" value="nodeOperation" />
    <property role="TrG5h" value="NodeInfoCheckOperation" />
    <property role="34LRSv" value="has info" />
    <ref role="1TJDcQ" node="3J6bWQr0BO4" resolve="NodeRuleCheckOperation" />
    <node concept="1TJgyj" id="1RxYXnVZDuH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statementRef" />
      <property role="IQ2ns" value="2153278993334179757" />
      <ref role="20lvS9" node="1RxYXnVZDNT" resolve="InfoStatementReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="1RxYXnVZDNT">
    <property role="TrG5h" value="InfoStatementReference" />
    <property role="EcuMT" value="2153278993334181113" />
    <node concept="1TJgyj" id="1RxYXnVZDNU" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2153278993334181114" />
      <ref role="20ksaX" node="7eBNsYUkvtl" resolve="declaration" />
      <ref role="20lvS9" to="tpd4:hODpp5F" resolve="InfoStatement" />
    </node>
    <node concept="PrWs8" id="1RxYXnVZDNV" role="PzmwI">
      <ref role="PrY4T" node="6EW1JnOFUIt" resolve="IRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="1RxYXnVXz$p">
    <property role="EcuMT" value="2153278993333631257" />
    <property role="TrG5h" value="MockScopeProvider" />
    <property role="3GE5qa" value="scopes" />
    <property role="34LRSv" value="mock scopes" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1RxYXnVXz$q" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="1RxYXnVXBGj" role="1TKVEi">
      <property role="IQ2ns" value="2153278993333648147" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="entries" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <ref role="20lvS9" node="1RxYXnVXBFy" resolve="ScopeEntry" />
    </node>
    <node concept="1TJgyj" id="1RxYXnVZ8u5" role="1TKVEi">
      <property role="IQ2ns" value="2153278993334044549" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1RxYXnVXBFy">
    <property role="EcuMT" value="2153278993333648098" />
    <property role="3GE5qa" value="scopes" />
    <property role="TrG5h" value="ScopeEntry" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RxYXnVXBF_" role="1TKVEi">
      <property role="IQ2ns" value="2153278993333648101" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="1RxYXnVYs8h" resolve="NamedNodeReference" />
    </node>
    <node concept="1TJgyj" id="1RxYXnVYpq4" role="1TKVEi">
      <property role="IQ2ns" value="2153278993333851780" />
      <property role="20kJfa" value="kind" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1RxYXnVYs8h">
    <property role="EcuMT" value="2153278993333862929" />
    <property role="3GE5qa" value="scopes" />
    <property role="TrG5h" value="NamedNodeReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RxYXnVYs8i" role="1TKVEi">
      <property role="IQ2ns" value="2153278993333862930" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="1kgh5Yab2sH">
    <property role="EcuMT" value="1517788251554588461" />
    <property role="TrG5h" value="INodesTestMethod" />
    <node concept="PrWs8" id="1kgh5Yab39S" role="PrDN$">
      <ref role="PrY4T" to="tpe3:hGBgSCX" resolve="ITestMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="wUiM63T4Ip">
    <property role="EcuMT" value="592868908271422361" />
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="IsIntentionApplicableExpression" />
    <property role="34LRSv" value="is intention applicable" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="wUiM63T4Iq" role="1TKVEi">
      <property role="IQ2ns" value="592868908271422362" />
      <property role="20kJfa" value="intention" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tp3j:hmS6QkF" resolve="IntentionDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="4K12N3pJ$JB">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="MigrationTestCase" />
    <property role="EcuMT" value="5476670926298696679" />
    <property role="3GE5qa" value="migration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1sEMCm" id="2bBdqPb0rl$" role="bvy1s">
      <property role="1sEMCp" value="testing-languages.html#migrationtests" />
      <ref role="1fZFei" to="rliy:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="1TJgyj" id="4K12N3pJ$JC" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="inputNodes" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5476670926298696680" />
      <ref role="20lvS9" node="hHqefK1" resolve="TestNode" />
    </node>
    <node concept="1TJgyj" id="4K12N3pJ_ik" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="outputNodes" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5476670926298698900" />
      <ref role="20lvS9" node="hHqefK1" resolve="TestNode" />
    </node>
    <node concept="1TJgyj" id="5JRx$mlRSG2" role="1TKVEi">
      <property role="IQ2ns" value="6626913010124294914" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="migration" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <ref role="20lvS9" node="5JRx$mlRtY9" resolve="MigrationReference" />
    </node>
    <node concept="1TJgyj" id="5j9sOBrGAXZ" role="1TKVEi">
      <property role="IQ2ns" value="6109541130560499583" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="option" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="5j9sOBrE7yu" resolve="MigrationTestOption" />
    </node>
    <node concept="PrWs8" id="5JRx$mlRtY3" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="4K12N3pJ$JF" role="PzmwI">
      <ref role="PrY4T" to="tpe3:hGB2rPm" resolve="ITestCase" />
    </node>
    <node concept="PrWs8" id="4K12N3pJAkq" role="PzmwI">
      <ref role="PrY4T" to="tpe3:hGBgSCX" resolve="ITestMethod" />
    </node>
    <node concept="PrWs8" id="1Zcerrmzg7C" role="PzmwI">
      <ref role="PrY4T" node="1Zcerrmzb_y" resolve="TestProjectAware" />
    </node>
    <node concept="PrWs8" id="4K12N3pJ$JH" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
    <node concept="1QGGSu" id="4K12N3pJ$JJ" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/nodesTest.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="2154_0wV2x7">
    <property role="EcuMT" value="2325284917965760583" />
    <property role="TrG5h" value="BeforeTestsMethod" />
    <property role="34LRSv" value="before tests" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="2154_0wV2x8">
    <property role="EcuMT" value="2325284917965760584" />
    <property role="TrG5h" value="AfterTestsMethod" />
    <property role="34LRSv" value="after tests" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="5JRx$mlRtY9">
    <property role="EcuMT" value="6626913010124185481" />
    <property role="TrG5h" value="MigrationReference" />
    <property role="3GE5qa" value="migration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5JRx$mlRtYa" role="1TKVEi">
      <property role="IQ2ns" value="6626913010124185482" />
      <property role="20kJfa" value="migration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="53vh:4uVwhQyFcjm" resolve="IMigrationUnit" />
    </node>
  </node>
  <node concept="1TIwiD" id="H9$uslP7vo">
    <property role="EcuMT" value="813341629406803928" />
    <property role="3GE5qa" value="expression" />
    <property role="TrG5h" value="IsActionApplicableExpression" />
    <property role="34LRSv" value="is action applicable" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="H9$uslP7vq" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actionReference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="813341629406803930" />
      <ref role="20lvS9" node="X8Ly3typJO" resolve="ActionReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="1488IJS6sZl">
    <property role="EcuMT" value="1227269295333560277" />
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="InvokeSurroundWithIntentionStatement" />
    <property role="34LRSv" value="invoke surround with intention" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="1488IJS6sZo" role="1TKVEi">
      <property role="IQ2ns" value="1227269295333560280" />
      <property role="20kJfa" value="intention" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tp3j:2c3oNEsfAwl" resolve="SurroundWithIntentionDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5j9sOBrE7yu">
    <property role="EcuMT" value="6109541130559846558" />
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="MigrationTestOption" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5j9sOBrG_KN">
    <property role="EcuMT" value="6109541130560494643" />
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="IgnoreMigrationDataOption" />
    <property role="34LRSv" value="except data produced" />
    <ref role="1TJDcQ" node="5j9sOBrE7yu" resolve="MigrationTestOption" />
  </node>
  <node concept="25R3W" id="3Ftr4R6BFGQ">
    <property role="TrG5h" value="Level" />
    <property role="3GE5qa" value="log" />
    <property role="3F6X1D" value="5219531754069980099" />
    <ref role="1H5jkz" node="3Ftr4R6BFGS" resolve="OFF" />
    <node concept="25R33" id="3Ftr4R6BFGS" role="25R1y">
      <property role="TrG5h" value="OFF" />
      <property role="3tVfz5" value="5219531754069980100" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGT" role="25R1y">
      <property role="TrG5h" value="FATAL" />
      <property role="3tVfz5" value="5219531754069980101" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGU" role="25R1y">
      <property role="TrG5h" value="ERROR" />
      <property role="3tVfz5" value="5219531754069980106" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGV" role="25R1y">
      <property role="TrG5h" value="WARN" />
      <property role="3tVfz5" value="5219531754069980113" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGW" role="25R1y">
      <property role="TrG5h" value="INFO" />
      <property role="3tVfz5" value="5219531754069980122" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGX" role="25R1y">
      <property role="TrG5h" value="DEBUG" />
      <property role="3tVfz5" value="5219531754069980133" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGY" role="25R1y">
      <property role="TrG5h" value="TRACE" />
      <property role="3tVfz5" value="5219531754069980146" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFGZ" role="25R1y">
      <property role="TrG5h" value="ALL" />
      <property role="3tVfz5" value="5219531754069980161" />
    </node>
  </node>
  <node concept="PlHQZ" id="143xXLdhW$X">
    <property role="EcuMT" value="1225972903834011965" />
    <property role="TrG5h" value="ITestAnnotationsContainer" />
  </node>
  <node concept="1TIwiD" id="Bszh9w5Xms">
    <property role="EcuMT" value="710597951278798236" />
    <property role="TrG5h" value="ExpectedMessageContainer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="Bszh9w5Xmt" role="1TKVEl">
      <property role="IQ2nx" value="710597951278798237" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1AhYRh" id="5lg0Ljo9oOz" role="lGtFl" />
    <node concept="t5JxF" id="5lg0Ljo9p1T" role="lGtFl">
      <property role="t5JxN" value="In 193 I enabled this feature only internally" />
    </node>
  </node>
  <node concept="1TIwiD" id="426cbTMdZVv">
    <property role="TrG5h" value="TypesystemEquationReference" />
    <property role="EcuMT" value="4649457259824807647" />
    <node concept="1TJgyj" id="426cbTMdZVw" role="1TKVEi">
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4649457259824807648" />
      <ref role="20ksaX" node="7eBNsYUkvtl" resolve="declaration" />
      <ref role="20lvS9" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
    </node>
    <node concept="PrWs8" id="426cbTMdZVx" role="PzmwI">
      <ref role="PrY4T" node="6EW1JnOFUIt" resolve="IRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="5zRGbU5_gLx">
    <property role="EcuMT" value="6410786926916602977" />
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="StableIdOption" />
    <property role="34LRSv" value="including node id" />
    <ref role="1TJDcQ" node="5j9sOBrE7yu" resolve="MigrationTestOption" />
  </node>
  <node concept="1TIwiD" id="4$lRloVW7sK">
    <property role="EcuMT" value="5266358701722203952" />
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="ApplyQuickFix" />
    <property role="34LRSv" value="apply quick fix" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="6DH2cg3TEQn" role="1TKVEi">
      <property role="IQ2ns" value="7668795378453884311" />
      <property role="20kJfa" value="quickfix" />
      <ref role="20lvS9" to="tpd4:hBCnwce" resolve="TypesystemIntention" />
    </node>
  </node>
  <node concept="PlHQZ" id="1Zcerrmzb_y">
    <property role="EcuMT" value="2291269767871117666" />
    <property role="TrG5h" value="TestProjectAware" />
  </node>
  <node concept="25R3W" id="2hh8MJdVwqS">
    <property role="3F6X1D" value="2616911529524463288" />
    <property role="TrG5h" value="ExecutionModelAccessMode" />
    <ref role="1H5jkz" node="4JT$SJtKH0m" resolve="unset" />
    <node concept="25R33" id="4JT$SJtKH0m" role="25R1y">
      <property role="3tVfz5" value="5474569050975817750" />
      <property role="TrG5h" value="unset" />
    </node>
    <node concept="25R33" id="2hh8MJdVwqT" role="25R1y">
      <property role="3tVfz5" value="2616911529524463289" />
      <property role="TrG5h" value="none" />
    </node>
    <node concept="25R33" id="2hh8MJdVwqU" role="25R1y">
      <property role="3tVfz5" value="2616911529524463290" />
      <property role="TrG5h" value="read" />
    </node>
    <node concept="25R33" id="2hh8MJdVwqX" role="25R1y">
      <property role="3tVfz5" value="2616911529524463293" />
      <property role="TrG5h" value="command" />
    </node>
  </node>
  <node concept="1TIwiD" id="60ggPToKIi$">
    <property role="EcuMT" value="6922106699763606692" />
    <property role="TrG5h" value="NodeMatchingRules" />
    <property role="34LRSv" value="node matching rules" />
    <property role="R4oN_" value="relaxations of the strict node comparison in an editor test" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="t5JxF" id="60ggPToKIi_" role="lGtFl">
      <property role="t5JxN" value="Holds the node-matching rules of an EditorTestCase. Without rules the resulting node must match the expected node exactly; each rule relaxes one aspect of the comparison." />
    </node>
    <node concept="1TJgyj" id="60ggPToKIiF" role="1TKVEi">
      <property role="IQ2ns" value="6922106699763606699" />
      <property role="20kJfa" value="rules" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="60ggPToKIiA" resolve="MatchingRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="60ggPToKIiA">
    <property role="EcuMT" value="6922106699763606694" />
    <property role="TrG5h" value="MatchingRule" />
    <property role="R4oN_" value="a single relaxation of the strict node comparison" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="60ggPToKIiB">
    <property role="EcuMT" value="6922106699763606695" />
    <property role="TrG5h" value="UnorderedChildrenRule" />
    <property role="34LRSv" value="unordered children" />
    <property role="R4oN_" value="children in the role are compared as an unordered set" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" node="60ggPToKIiA" resolve="MatchingRule" />
    <node concept="1TJgyj" id="60ggPToKIiG" role="1TKVEi">
      <property role="IQ2ns" value="6922106699763606700" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="60ggPToKIiC">
    <property role="EcuMT" value="6922106699763606696" />
    <property role="TrG5h" value="IgnoreChildrenRule" />
    <property role="34LRSv" value="ignore children" />
    <property role="R4oN_" value="children in the role are excluded from the comparison" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" node="60ggPToKIiA" resolve="MatchingRule" />
    <node concept="1TJgyj" id="60ggPToKIiH" role="1TKVEi">
      <property role="IQ2ns" value="6922106699763606701" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="60ggPToKIiD">
    <property role="EcuMT" value="6922106699763606697" />
    <property role="TrG5h" value="IgnoreReferenceRule" />
    <property role="34LRSv" value="ignore reference" />
    <property role="R4oN_" value="the reference is excluded from the comparison" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" node="60ggPToKIiA" resolve="MatchingRule" />
    <node concept="1TJgyj" id="60ggPToKIiI" role="1TKVEi">
      <property role="IQ2ns" value="6922106699763606702" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="60ggPToKIiE">
    <property role="EcuMT" value="6922106699763606698" />
    <property role="TrG5h" value="IgnorePropertyRule" />
    <property role="34LRSv" value="ignore property" />
    <property role="R4oN_" value="the property is excluded from the comparison" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" node="60ggPToKIiA" resolve="MatchingRule" />
    <node concept="1TJgyj" id="60ggPToKIiJ" role="1TKVEi">
      <property role="IQ2ns" value="6922106699763606703" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="18QbqASogIe">
    <property role="EcuMT" value="1312286548391168910" />
    <property role="TrG5h" value="UnorderedChildrenMark" />
    <property role="34LRSv" value="unordered" />
    <property role="R4oN_" value="Marks a containment role of a result node whose children match regardless of order" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="18QbqASogIj" role="PzmwI">
      <ref role="PrY4T" node="18QbqASogIi" resolve="IMatchRelaxationMark" />
    </node>
    <node concept="M6xJ_" id="18QbqASogPG" role="lGtFl">
      <property role="Hh88m" value="unorderedChildren" />
      <node concept="trNpa" id="18QbqASogPH" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
      <node concept="tn0Fv" id="18QbqAT36_J" role="HhnKV">
        <property role="tnX3d" value="true" />
      </node>
    </node>
    <node concept="1TJgyj" id="18QbqASRexq" role="1TKVEi">
      <property role="IQ2ns" value="1312286548399286362" />
      <property role="TrG5h" value="link" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="18QbqASogIf">
    <property role="EcuMT" value="1312286548391168911" />
    <property role="TrG5h" value="IgnorePropertyMark" />
    <property role="34LRSv" value="ignored" />
    <property role="R4oN_" value="Marks a property of a result node whose value is not compared" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDm" resolve="PropertyAttribute" />
    <node concept="PrWs8" id="18QbqASogIk" role="PzmwI">
      <ref role="PrY4T" node="18QbqASogIi" resolve="IMatchRelaxationMark" />
    </node>
    <node concept="M6xJ_" id="18QbqASogUk" role="lGtFl">
      <property role="Hh88m" value="ignoreProperty" />
      <node concept="trNpa" id="18QbqASogUl" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="18QbqASogIg">
    <property role="EcuMT" value="1312286548391168912" />
    <property role="TrG5h" value="IgnoreReferenceMark" />
    <property role="34LRSv" value="ignored" />
    <property role="R4oN_" value="Marks a reference link of a result node whose target is not compared" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDh" resolve="LinkAttribute" />
    <node concept="PrWs8" id="18QbqASogIl" role="PzmwI">
      <ref role="PrY4T" node="18QbqASogIi" resolve="IMatchRelaxationMark" />
    </node>
    <node concept="M6xJ_" id="18QbqASogYW" role="lGtFl">
      <property role="Hh88m" value="ignoreReference" />
      <node concept="trNpa" id="18QbqASogYX" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="18QbqASogIh">
    <property role="EcuMT" value="1312286548391168913" />
    <property role="TrG5h" value="IgnoreNodeMark" />
    <property role="34LRSv" value="ignored" />
    <property role="R4oN_" value="Marks a result node whose entire subtree is excluded from comparison" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="18QbqASogIm" role="PzmwI">
      <ref role="PrY4T" node="18QbqASogIi" resolve="IMatchRelaxationMark" />
    </node>
    <node concept="M6xJ_" id="18QbqASoh3Z" role="lGtFl">
      <property role="Hh88m" value="ignoreNode" />
      <node concept="trNpa" id="18QbqASoh40" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="18QbqASogIi">
    <property role="EcuMT" value="1312286548391168914" />
    <property role="TrG5h" value="IMatchRelaxationMark" />
    <property role="R4oN_" value="Marker interface for annotation-based match relaxations in a result fixture" />
  </node>
</model>

