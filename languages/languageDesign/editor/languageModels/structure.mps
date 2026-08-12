<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpcw" ref="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="9anm" ref="r:6f374023-1b4e-4a80-8bf6-2cc3148faa52(jetbrains.mps.lang.editor.plugin)" />
    <import index="dvox" ref="r:9dfd3567-3b1f-4edb-85a0-3981ca2bfd8c(jetbrains.mps.lang.modelapi.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="5177162104569058199" name="jetbrains.mps.lang.resources.structure.HelpURL" flags="ng" index="1sEMCm">
        <property id="5177162104569058200" name="url" index="1sEMCp" />
        <reference id="4726480899534317252" name="baseURL" index="1fZFei" />
      </concept>
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9">
        <property id="1225118929411" name="build" index="YLPcu" />
        <property id="1225118933224" name="comment" index="YLQ7P" />
      </concept>
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
        <child id="7862711839422615224" name="seeAlso" index="t5JxU" />
      </concept>
      <concept id="7862711839422615221" name="jetbrains.mps.lang.structure.structure.DocumentationObjectiveRef" flags="ng" index="t5JxR">
        <reference id="7862711839422615222" name="target" index="t5JxO" />
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
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
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
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2">
        <property id="4307758654697524060" name="suffix" index="1W_73K" />
        <property id="4307758654697524057" name="prefix" index="1W_73P" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
      </concept>
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
  <node concept="1TIwiD" id="fA4kQeF">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptEditorDeclaration" />
    <property role="34LRSv" value="Concept Editor" />
    <property role="EcuMT" value="1071666914219" />
    <ref role="1TJDcQ" node="fIwURLg" resolve="BaseEditorComponent" />
    <node concept="1QGGSu" id="4Q8sAA5iJQt" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/editor.png" />
    </node>
    <node concept="PrWs8" id="hBfBzQU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="fG6VMW6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="inspectedCellModel" />
      <property role="IQ2ns" value="1078153129734" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="2gbCHScr0HI" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contextHints" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="2597348684684069742" />
      <ref role="20lvS9" node="5UHFGFk4ozs" resolve="ConceptEditorHintDeclarationReference" />
    </node>
    <node concept="PrWs8" id="2hxg_BDjOEC" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="PrWs8" id="2Fdw$d5cEJT" role="PzmwI">
      <ref role="PrY4T" to="tpce:6OtXG9K2KUI" resolve="DocumentationObjective" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJ9HKD" role="bvy1s">
      <property role="1sEMCp" value="editor.html#editoroverview" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="fBEYTCT">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditorCellModel" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1073389214265" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1cEk0X7fp1$" role="PzmwI">
      <ref role="PrY4T" node="1cEk0X7fm5O" resolve="ICellStyle" />
    </node>
    <node concept="1TJgyj" id="gCpqm6p" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="renderingCondition" />
      <property role="IQ2ns" value="1142887637401" />
      <ref role="20lvS9" node="gCpkWun" resolve="QueryFunction_NodeCondition" />
    </node>
    <node concept="1TJgyj" id="g_ERwze" role="1TKVEi">
      <property role="20kJfa" value="actionMap" />
      <property role="IQ2ns" value="1139959269582" />
      <ref role="20lvS9" node="g_h_SNY" resolve="CellActionMapDeclaration" />
    </node>
    <node concept="1TJgyj" id="fJ4QXdL" role="1TKVEi">
      <property role="20kJfa" value="keyMap" />
      <property role="IQ2ns" value="1081339532145" />
      <ref role="20lvS9" node="fJ25Fcr" resolve="CellKeyMapDeclaration" />
    </node>
    <node concept="1TJgyj" id="gWP5bHW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuDescriptor" />
      <property role="IQ2ns" value="1164826688380" />
      <ref role="20lvS9" node="gWOXEEG" resolve="CellMenuDescriptor" />
    </node>
    <node concept="1TJgyj" id="hscStWE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="focusPolicyApplicable" />
      <property role="IQ2ns" value="1198512004906" />
      <ref role="20lvS9" node="gCpkWun" resolve="QueryFunction_NodeCondition" />
    </node>
    <node concept="1TJgyj" id="3K0abI4qJr6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="id" />
      <property role="IQ2ns" value="4323500428121274054" />
      <ref role="20lvS9" node="3K0abI4q_wn" resolve="EditorCellId" />
    </node>
    <node concept="1TJgyj" id="3DiRZz_UXt0" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transformationMenu" />
      <property role="IQ2ns" value="4202667662392416064" />
      <ref role="20lvS9" node="3rSzFHWJPbd" resolve="ITransformationMenuReference" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0x" role="1TKVEl">
      <property role="TrG5h" value="attractsFocus" />
      <property role="IQ2nx" value="1130859485024" />
      <ref role="AX2Wp" node="3Ftr4R6BF9w" resolve="FocusPolicy" />
    </node>
  </node>
  <node concept="1TIwiD" id="fBEZMkn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="collection of cells" />
    <property role="TrG5h" value="CellModel_Collection" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="collection" />
    <property role="EcuMT" value="1073389446423" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="PrWs8" id="3vTEHvN5msL" role="PzmwI">
      <ref role="PrY4T" node="7ARneOGixdd" resolve="Synchronizeable" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA82$" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="PrWs8" id="1EgGg0eQSKM" role="PzmwI">
      <ref role="PrY4T" node="itlittTD3X" resolve="LayoutContainer" />
    </node>
    <node concept="1TJgyj" id="fBEZMko" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="childCellModel" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1073389446424" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="6GJhM1dAsnP" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="foldedCellModel" />
      <property role="IQ2ns" value="7723470090030138869" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="g6iSdeU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellLayout" />
      <property role="IQ2ns" value="1106270802874" />
      <ref role="20lvS9" node="g6iR17a" resolve="CellLayout" />
    </node>
    <node concept="1TJgyj" id="7zuBzrp_ftK" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="usesFoldingCondition" />
      <property role="IQ2ns" value="8709572687796959088" />
      <ref role="20lvS9" node="gCpkWun" resolve="QueryFunction_NodeCondition" />
    </node>
    <node concept="1TJgyj" id="5qrsiYWrGSD" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="collapseByDefaultCondition" />
      <property role="IQ2ns" value="6240706158490734121" />
      <ref role="20lvS9" node="gCpkWun" resolve="QueryFunction_NodeCondition" />
    </node>
    <node concept="1TJgyj" id="3Fwx_UqDAZ9" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="addHints" />
      <property role="IQ2ns" value="4242538589862653897" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="1TJgyj" id="3Fwx_UqDB8p" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="removeHints" />
      <property role="IQ2ns" value="4242538589862654489" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="1TJgyi" id="fBEZMkp" role="1TKVEl">
      <property role="TrG5h" value="vertical" />
      <property role="IQ2nx" value="1073389446425" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="i2I0itR" role="lGtFl">
        <property role="YLQ7P" value="Use isVertical(), remove after MPS3.5" />
        <property role="YLPcu" value="2018.3" />
      </node>
    </node>
    <node concept="1TJgyi" id="fBEZMkq" role="1TKVEl">
      <property role="TrG5h" value="gridLayout" />
      <property role="IQ2nx" value="1073389446426" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="i2I0j49" role="lGtFl">
        <property role="YLQ7P" value="Use isVerticalGrid(), remove after MPS3.5" />
        <property role="YLPcu" value="2018.3" />
      </node>
    </node>
    <node concept="1TJgyi" id="g_ayjLd" role="1TKVEl">
      <property role="TrG5h" value="usesBraces" />
      <property role="IQ2nx" value="1139416841293" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="gSS$Qof" role="1TKVEl">
      <property role="TrG5h" value="usesFolding" />
      <property role="IQ2nx" value="1160590353935" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="5qrsiYWrGSx" role="1TKVEl">
      <property role="TrG5h" value="collapseByDefault" />
      <property role="IQ2nx" value="6240706158490734113" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="fBF0icI">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="text label" />
    <property role="TrG5h" value="CellModel_Constant" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="constant" />
    <property role="EcuMT" value="1073389577006" />
    <ref role="1TJDcQ" node="fHev3Dc" resolve="CellModel_AbstractLabel" />
    <node concept="PrWs8" id="3vTEHvN5lBD" role="PzmwI">
      <ref role="PrY4T" node="7ARneOGixdd" resolve="Synchronizeable" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7aw" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="1TJgyi" id="fBF0icJ" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <property role="IQ2nx" value="1073389577007" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="fKilYwr" role="1TKVEl">
      <property role="TrG5h" value="nullText" />
      <property role="IQ2nx" value="1082639509531" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="fBF0A4I">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="property" />
    <property role="TrG5h" value="CellModel_Property" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1073389658414" />
    <ref role="1TJDcQ" node="g_$h64z" resolve="CellModel_WithRole" />
    <node concept="PrWs8" id="3vTEHvN5o$C" role="PzmwI">
      <ref role="PrY4T" node="7ARneOGixdd" resolve="Synchronizeable" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7QA" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="1TJgyj" id="fBF1KQc" role="1TKVEi">
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1073389964684" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <ref role="20ksaX" node="g_NtTq1" resolve="relationDeclaration" />
    </node>
    <node concept="RPilO" id="7F6fz3H$PFQ" role="lGtFl">
      <ref role="RPilL" node="fBF1KQc" resolve="propertyDeclaration" />
      <node concept="ROjv2" id="7F6fz3H$PFR" role="ROhUF">
        <property role="1W_73P" value="{" />
        <property role="1W_73K" value="}" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="fBF1sR7">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="single aggregation" />
    <property role="TrG5h" value="CellModel_RefNode" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1073389882823" />
    <ref role="1TJDcQ" node="g_$h64z" resolve="CellModel_WithRole" />
    <node concept="1TJgyj" id="55my_QKP5Sf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="addHints" />
      <property role="IQ2ns" value="5861024100072578575" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="1TJgyj" id="55my_QKP5Sg" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="removeHints" />
      <property role="IQ2ns" value="5861024100072578576" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="1TJgyj" id="UjlmrgInb" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="emptyCellModel" />
      <property role="IQ2ns" value="16410578721629643" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="fBF1sR8" role="1TKVEi">
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1073389882824" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <ref role="20ksaX" node="g_NtTq1" resolve="relationDeclaration" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7QN" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="1TJgyi" id="Ujlmrg18k" role="1TKVEl">
      <property role="TrG5h" value="customizeEmptyCell" />
      <property role="IQ2nx" value="16410578721444372" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="RPilO" id="47y0FrqaLdf" role="lGtFl">
      <ref role="RPilL" node="fBF1sR8" resolve="linkDeclaration" />
      <node concept="ROjv2" id="47y0FrqaLdg" role="ROhUF">
        <property role="1W_73P" value="%" />
        <property role="1W_73K" value="%" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="fBF2Hee">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="multiple aggregation" />
    <property role="TrG5h" value="CellModel_RefNodeList" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1073390211982" />
    <ref role="1TJDcQ" node="gAczfia" resolve="CellModel_ListWithRole" />
    <node concept="1TJgyi" id="gEGOrZx" role="1TKVEl">
      <property role="TrG5h" value="reverse" />
      <property role="IQ2nx" value="1145360728033" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="fBF2Hej" role="1TKVEi">
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1073390211987" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <ref role="20ksaX" node="g_NtTq1" resolve="relationDeclaration" />
    </node>
    <node concept="1TJgyj" id="gXk68OO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elementMenuDescriptor" />
      <property role="IQ2ns" value="1165347032372" />
      <ref role="20lvS9" node="gWOXEEG" resolve="CellMenuDescriptor" />
    </node>
    <node concept="1TJgyj" id="h4APPx9" role="1TKVEi">
      <property role="20kJfa" value="elementActionMap" />
      <property role="IQ2ns" value="1173177718857" />
      <ref role="20lvS9" node="g_h_SNY" resolve="CellActionMapDeclaration" />
    </node>
    <node concept="1TJgyj" id="hd2AuTj" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="filter" />
      <property role="IQ2ns" value="1182233390675" />
      <ref role="20lvS9" node="hd07P1K" resolve="QueryFunction_NodeListFilter" />
    </node>
    <node concept="1TJgyj" id="6k6gsLy95p6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="addHints" />
      <property role="IQ2ns" value="7279578193766667846" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="1TJgyj" id="6k6gsLy95p7" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="removeHints" />
      <property role="IQ2ns" value="7279578193766667847" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7Qx" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="RPilO" id="47y0FrqaLdk" role="lGtFl">
      <ref role="RPilL" node="fBF2Hej" resolve="linkDeclaration" />
      <node concept="ROjv2" id="47y0FrqaLdl" role="ROhUF">
        <property role="1W_73P" value="%" />
        <property role="1W_73K" value="%" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="fCXafTX">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="reference to accessor" />
    <property role="TrG5h" value="CellModel_ModelAccess" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="model access" />
    <property role="EcuMT" value="1074767920765" />
    <ref role="1TJDcQ" node="fHev3Dc" resolve="CellModel_AbstractLabel" />
    <node concept="1TJgyj" id="h7TRxg_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelAcessor" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1176718152741" />
      <ref role="20lvS9" node="h7TQVbc" resolve="ModelAccessor" />
    </node>
    <node concept="1TJgyi" id="fKihaHs" role="1TKVEl">
      <property role="TrG5h" value="nullText" />
      <property role="IQ2nx" value="1082638248796" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7ul" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="fDxolV3">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="red text label" />
    <property role="TrG5h" value="CellModel_Error" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="error" />
    <property role="EcuMT" value="1075375595203" />
    <ref role="1TJDcQ" node="fHev3Dc" resolve="CellModel_AbstractLabel" />
    <node concept="1TJgyi" id="fDxolV4" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <property role="IQ2nx" value="1075375595204" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7a_" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="fGgc7fs">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="reference to cell provider" />
    <property role="TrG5h" value="CellModel_Custom" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="custom" />
    <property role="EcuMT" value="1078308402140" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="h7YsKQL" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellProvider" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1176795024817" />
      <ref role="20lvS9" node="h7VJUTl" resolve="QueryFunction_CellProvider" />
    </node>
    <node concept="PrWs8" id="4SdtvCaAjdw" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="fGPKFH7">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditorComponentDeclaration" />
    <property role="34LRSv" value="Editor Component" />
    <property role="EcuMT" value="1078938745671" />
    <ref role="1TJDcQ" node="fIwURLg" resolve="BaseEditorComponent" />
    <node concept="1QGGSu" id="4Q8sAA5iJQp" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/editorComponent.png" />
    </node>
    <node concept="1TJgyj" id="66t_lsklggO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="overridenEditorComponent" />
      <property role="IQ2ns" value="7033942394258392116" />
      <ref role="20lvS9" node="66t_lskdtZC" resolve="EditorComponentDeclarationReference" />
    </node>
    <node concept="1TJgyj" id="6nWbOYo69_Q" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contextHints" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="7348800710862477686" />
      <ref role="20lvS9" node="5UHFGFk4ozs" resolve="ConceptEditorHintDeclarationReference" />
    </node>
    <node concept="PrWs8" id="hBfBxAy" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="66t_lskzk94" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="4$$3zrO4flA" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="PrWs8" id="5qG9LSWF4LC" role="PzmwI">
      <ref role="PrY4T" to="tpce:6OtXG9K2KUI" resolve="DocumentationObjective" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJg8Ae" role="bvy1s">
      <property role="1sEMCp" value="editor.html#editoroverview" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="fGPMmym">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="reference to editor component" />
    <property role="TrG5h" value="CellModel_Component" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="component" />
    <property role="EcuMT" value="1078939183254" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="fGPMmyn" role="1TKVEi">
      <property role="20kJfa" value="editorComponent" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1078939183255" />
      <ref role="20lvS9" node="fGPKFH7" resolve="EditorComponentDeclaration" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA82C" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="fHev3Dc">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_AbstractLabel" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1079353555532" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyi" id="3Ftr4R6BH0z" role="1TKVEl">
      <property role="TrG5h" value="defaultCaretPosition" />
      <property role="IQ2nx" value="1197893615481" />
      <ref role="AX2Wp" node="3Ftr4R6BFcK" resolve="_CaretPosition_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="fIwURLg">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BaseEditorComponent" />
    <property role="EcuMT" value="1080736578640" />
    <ref role="1TJDcQ" node="gXXWOiD" resolve="AbstractComponent" />
    <node concept="1TJgyj" id="fIwV5gl" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellModel" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1080736633877" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="PrWs8" id="6nWbOYokHC8" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="5GYL1gdfZkl" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="1TIwiD" id="fJ25Fcr">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellKeyMapDeclaration" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="34LRSv" value="Cell Keymap" />
    <property role="EcuMT" value="1081293058843" />
    <node concept="1QGGSu" id="4Q8sAA5iJQr" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/keyMap.png" />
    </node>
    <node concept="PrWs8" id="AkEQ6o$KU_" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="4$$3zrO4f0l" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="PrWs8" id="37EzmTDMFxR" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="1TJgyi" id="gIXBED0" role="1TKVEl">
      <property role="TrG5h" value="everyModel" />
      <property role="IQ2nx" value="1149937560128" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="g_chiKl" role="1TKVEi">
      <property role="20kJfa" value="applicableConcept" />
      <property role="IQ2ns" value="1139445935125" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="gyQnntA" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="item" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1136930944870" />
      <ref role="20lvS9" node="gyPxRd_" resolve="CellKeyMapItem" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJg8_E" role="bvy1s">
      <property role="1sEMCp" value="editor.html#keymaps" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="fPiCG$y">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="reference" />
    <property role="TrG5h" value="CellModel_RefCell" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1088013125922" />
    <ref role="1TJDcQ" node="g_$h64z" resolve="CellModel_WithRole" />
    <node concept="1TJgyj" id="fPiD8ey" role="1TKVEi">
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1088013239202" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <ref role="20ksaX" node="g_NtTq1" resolve="relationDeclaration" />
    </node>
    <node concept="1TJgyj" id="fPsWHWE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="editorComponent" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1088186146602" />
      <ref role="20lvS9" node="fPsVBsF" resolve="InlineEditorComponent" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7QL" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="PrWs8" id="1o9RazL_bTn" role="PzmwI">
      <ref role="PrY4T" node="1o9RazL_awo" resolve="IReferenceContextProvider" />
    </node>
    <node concept="RPilO" id="47y0FrqaLd8" role="lGtFl">
      <ref role="RPilL" node="fPiD8ey" resolve="linkDeclaration" />
      <node concept="ROjv2" id="47y0FrqaLd9" role="ROhUF">
        <property role="1W_73P" value="%" />
        <property role="1W_73K" value="%-&gt;" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="fPsVBsF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="in-line editor component" />
    <property role="TrG5h" value="InlineEditorComponent" />
    <property role="EcuMT" value="1088185857835" />
    <ref role="1TJDcQ" node="fIwURLg" resolve="BaseEditorComponent" />
  </node>
  <node concept="1TIwiD" id="fPQoSf$">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="cell alternation" />
    <property role="TrG5h" value="CellModel_Alternation" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="alternation" />
    <property role="EcuMT" value="1088612959204" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyi" id="fPQpme3" role="1TKVEl">
      <property role="TrG5h" value="vertical" />
      <property role="IQ2nx" value="1088613081987" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="gFe4fbm" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="alternationCondition" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1145918517974" />
      <ref role="20lvS9" node="gCpkWun" resolve="QueryFunction_NodeCondition" />
    </node>
    <node concept="1TJgyj" id="fPQoS0T" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ifTrueCellModel" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1088612958265" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="fPQoVQ3" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ifFalseCellModel" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1088612973955" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7QR" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="g3gTLMM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_JComponent" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="swing component" />
    <property role="EcuMT" value="1103016434866" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="h7FoqVN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="componentProvider" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1176475119347" />
      <ref role="20lvS9" node="h7Fmcq4" resolve="QueryFunction_JComponent" />
    </node>
    <node concept="PrWs8" id="7x0o_8QOa6H" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="g6iR17a">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="EcuMT" value="1106270491082" />
  </node>
  <node concept="1TIwiD" id="g6iRfq5">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_Horizontal" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="horizontal" />
    <property role="EcuMT" value="1106270549637" />
    <ref role="1TJDcQ" node="g6iR17a" resolve="CellLayout" />
  </node>
  <node concept="1TIwiD" id="g6iRkMY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_Vertical" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="vertical" />
    <property role="EcuMT" value="1106270571710" />
    <ref role="1TJDcQ" node="g6iR17a" resolve="CellLayout" />
  </node>
  <node concept="1TIwiD" id="g6iR$Wm">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_Flow" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="flow" />
    <property role="EcuMT" value="1106270637846" />
    <ref role="1TJDcQ" node="g6iR17a" resolve="CellLayout" />
  </node>
  <node concept="1TIwiD" id="gwuhnRB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="cell for attributed property" />
    <property role="TrG5h" value="CellModel_AttributedPropertyCell" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="attributed property" />
    <property role="EcuMT" value="1134379236839" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
  </node>
  <node concept="1TIwiD" id="gywxxk3">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="cell for attributed link" />
    <property role="TrG5h" value="CellModel_AttributedLinkCell" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="attributed link" />
    <property role="EcuMT" value="1136564507907" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
  </node>
  <node concept="1TIwiD" id="gyPxRd_">
    <property role="TrG5h" value="CellKeyMapItem" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="EcuMT" value="1136916919141" />
    <node concept="1TJgyj" id="gyPyayW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="keystroke" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="1136916998332" />
      <ref role="20lvS9" node="gyPy5hx" resolve="CellKeyMapKeystroke" />
    </node>
    <node concept="1TJgyj" id="gyPzqoq" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="isApplicableFunction" />
      <property role="IQ2ns" value="1136917325338" />
      <ref role="20lvS9" node="gyPz7Uf" resolve="CellKeyMap_IsApplicableFunction" />
    </node>
    <node concept="1TJgyj" id="gyPL9m$" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="executeFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1136920925604" />
      <ref role="20lvS9" node="gyPzht_" resolve="CellKeyMap_ExecuteFunction" />
    </node>
    <node concept="1TJgyi" id="gyPxWKP" role="1TKVEl">
      <property role="TrG5h" value="description" />
      <property role="IQ2nx" value="1136916941877" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0_" role="1TKVEl">
      <property role="TrG5h" value="caretPolicy" />
      <property role="IQ2nx" value="1141091278922" />
      <ref role="AX2Wp" node="3Ftr4R6BFbv" resolve="CellKeyMapCaretPolicy" />
    </node>
    <node concept="1TJgyi" id="gVArL3M" role="1TKVEl">
      <property role="TrG5h" value="showInPopup" />
      <property role="IQ2nx" value="1163507208434" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="heZ6dGv" role="1TKVEl">
      <property role="TrG5h" value="menuAlwaysShown" />
      <property role="IQ2nx" value="1184322083615" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="37EzmTDMFxK" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="gyPy5hx">
    <property role="TrG5h" value="CellKeyMapKeystroke" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="EcuMT" value="1136916976737" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="gyPWKEJ" role="1TKVEl">
      <property role="TrG5h" value="modifiers" />
      <property role="IQ2nx" value="1136923970223" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="gyPWKEK" role="1TKVEl">
      <property role="TrG5h" value="keycode" />
      <property role="IQ2nx" value="1136923970224" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="gyPyKYF">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellKeyMap_AbstractFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="EcuMT" value="1136917155755" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaM3I" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="gyPz7Uf">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellKeyMap_IsApplicableFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="34LRSv" value="is applicable block" />
    <property role="EcuMT" value="1136917249679" />
    <ref role="1TJDcQ" node="gyPyKYF" resolve="CellKeyMap_AbstractFunction" />
  </node>
  <node concept="1TIwiD" id="gyPzht_">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellKeyMap_ExecuteFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="34LRSv" value="execute block" />
    <property role="EcuMT" value="1136917288805" />
    <ref role="1TJDcQ" node="gyPyKYF" resolve="CellKeyMap_AbstractFunction" />
  </node>
  <node concept="1TIwiD" id="g_h_SNY">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellActionMapDeclaration" />
    <property role="34LRSv" value="Cell Action Map" />
    <property role="EcuMT" value="1139535219966" />
    <property role="3GE5qa" value="CellActionMap" />
    <node concept="1TJgyj" id="7pqJbakA6Bj" role="1TKVEi">
      <property role="IQ2ns" value="8528336319562672595" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="imports" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="7pqJbakA6Bn" resolve="CellActionMapImport" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQs" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/actionMap.png" />
    </node>
    <node concept="PrWs8" id="AkEQ6o_2fI" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="4$$3zrO4dx5" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="PrWs8" id="2HMNXpxcTXb" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="PrWs8" id="6KlKhT34ne9" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="g_h_SO0" role="1TKVEi">
      <property role="20kJfa" value="applicableConcept" />
      <property role="IQ2ns" value="1139535219968" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="g_h_SO1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="item" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1139535219969" />
      <ref role="20lvS9" node="g_hA7BD" resolve="CellActionMapItem" />
    </node>
    <node concept="1sEMCm" id="11Atn_WK8fg" role="bvy1s">
      <property role="1sEMCp" value="editor.html#actionmaps" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_hA7BD">
    <property role="TrG5h" value="CellActionMapItem" />
    <property role="EcuMT" value="1139535280617" />
    <property role="3GE5qa" value="CellActionMap" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="g_hHOde" role="1TKVEl">
      <property role="TrG5h" value="description" />
      <property role="IQ2nx" value="1139537298254" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0B" role="1TKVEl">
      <property role="TrG5h" value="actionId" />
      <property role="IQ2nx" value="1139535298778" />
      <ref role="AX2Wp" node="3Ftr4R6BFaB" resolve="CellActionId" />
    </node>
    <node concept="1TJgyj" id="g_hA7BG" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="executeFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1139535280620" />
      <ref role="20lvS9" node="g_hAIk0" resolve="CellActionMap_ExecuteFunction" />
    </node>
    <node concept="1TJgyj" id="301qoOzKuGW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="canExecuteFunction" />
      <property role="IQ2ns" value="3459162043708468028" />
      <ref role="20lvS9" node="301qoOzKuuh" resolve="CellActionMap_CanExecuteFunction" />
    </node>
    <node concept="PrWs8" id="10PksoAZT3X" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_hAIk0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellActionMap_ExecuteFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="execute block" />
    <property role="EcuMT" value="1139535439104" />
    <property role="3GE5qa" value="CellActionMap" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaLN3" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_u4HTJ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="cell for an image" />
    <property role="TrG5h" value="CellModel_Image" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="image" />
    <property role="EcuMT" value="1139744628335" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="h84GRuh" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="imagePathProvider" />
      <property role="IQ2ns" value="1176899909521" />
      <ref role="20lvS9" node="54iik1dcchE" resolve="ImagePathProvider" />
    </node>
    <node concept="1TJgyi" id="g_ubRTz" role="1TKVEl">
      <property role="TrG5h" value="imageFile" />
      <property role="IQ2nx" value="1139746504291" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="g_$Qi0b" role="1TKVEl">
      <property role="TrG5h" value="descent" />
      <property role="IQ2nx" value="1139858284555" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2k7jEhm4XLr" role="1TKVEl">
      <property role="IQ2nx" value="2668187771966053467" />
      <property role="TrG5h" value="alignWithText" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="7x0o_8QO9$O" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_$h64z">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_WithRole" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1139848536355" />
    <ref role="1TJDcQ" node="fHev3Dc" resolve="CellModel_AbstractLabel" />
    <node concept="PrWs8" id="3DiRZzA2WuS" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyi" id="g_$x2vM" role="1TKVEl">
      <property role="TrG5h" value="noTargetText" />
      <property role="IQ2nx" value="1139852716018" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="hF9s7y1" role="1TKVEl">
      <property role="TrG5h" value="emptyNoTargetText" />
      <property role="IQ2nx" value="1214560368769" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="g_IntAF" role="1TKVEl">
      <property role="TrG5h" value="readOnly" />
      <property role="IQ2nx" value="1140017977771" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="g_O74Lt" role="1TKVEl">
      <property role="TrG5h" value="allowEmptyText" />
      <property role="IQ2nx" value="1140114345053" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="g_NtTq1" role="1TKVEi">
      <property role="20kJfa" value="relationDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1140103550593" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="gAczfia">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_ListWithRole" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1140524381322" />
    <ref role="1TJDcQ" node="g_$h64z" resolve="CellModel_WithRole" />
    <node concept="PrWs8" id="itlittTD5H" role="PzmwI">
      <ref role="PrY4T" node="itlittTD3X" resolve="LayoutContainer" />
    </node>
    <node concept="1TJgyj" id="h84_6ER" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeFactory" />
      <property role="IQ2ns" value="1176897874615" />
      <ref role="20lvS9" node="h84$FLY" resolve="QueryFunction_NodeFactory" />
    </node>
    <node concept="1TJgyj" id="gAczzzB" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="emptyCellModel" />
      <property role="IQ2ns" value="1140524464359" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="5fDszETGVtQ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="foldedCellModel" />
      <property role="IQ2ns" value="6046489571270834038" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="gAczzzC" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellLayout" />
      <property role="IQ2ns" value="1140524464360" />
      <ref role="20lvS9" node="g6iR17a" resolve="CellLayout" />
    </node>
    <node concept="1TJgyj" id="hWsWeqI" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="separatorStyle" />
      <property role="IQ2ns" value="1233141163694" />
      <ref role="20lvS9" node="hWtppjH" resolve="InlineStyleDeclaration" />
    </node>
    <node concept="1TJgyj" id="Ny5pAsx39_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="separatorTextQuery" />
      <property role="IQ2ns" value="928328222691832421" />
      <ref role="20lvS9" node="Bqq$mhZ7YP" resolve="QueryFunction_SeparatorText" />
    </node>
    <node concept="1TJgyj" id="3ZqNA5Aj2vB" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="usesFoldingCondition" />
      <property role="IQ2ns" value="4601216887035799527" />
      <ref role="20lvS9" node="gCpkWun" resolve="QueryFunction_NodeCondition" />
    </node>
    <node concept="1TJgyi" id="gAczwbU" role="1TKVEl">
      <property role="TrG5h" value="vertical" />
      <property role="IQ2nx" value="1140524450554" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="i2IfObc" role="lGtFl">
        <property role="YLQ7P" value="Not used, will be removed after MPS 3.5" />
      </node>
    </node>
    <node concept="1TJgyi" id="gAczwbV" role="1TKVEl">
      <property role="TrG5h" value="gridLayout" />
      <property role="IQ2nx" value="1140524450555" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="i2IfOII" role="lGtFl">
        <property role="YLQ7P" value="Not used, will be removed after MPS 3.5" />
      </node>
    </node>
    <node concept="1TJgyi" id="gAczwbW" role="1TKVEl">
      <property role="TrG5h" value="usesBraces" />
      <property role="IQ2nx" value="1140524450556" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="gSS$F7l" role="1TKVEl">
      <property role="TrG5h" value="usesFolding" />
      <property role="IQ2nx" value="1160590307797" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="gAczwbX" role="1TKVEl">
      <property role="TrG5h" value="separatorText" />
      <property role="IQ2nx" value="1140524450557" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0D" role="1TKVEl">
      <property role="TrG5h" value="separatorLayoutConstraint" />
      <property role="IQ2nx" value="1156252885376" />
      <ref role="AX2Wp" node="3Ftr4R6BF9A" resolve="_Layout_Constraints_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="gCpkWun">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_NodeCondition" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="condition" />
    <property role="EcuMT" value="1142886221719" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gCpncv5">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_node" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="34LRSv" value="node" />
    <property role="EcuMT" value="1142886811589" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="gISsqQo">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="cell for attributed node" />
    <property role="TrG5h" value="CellModel_AttributedNodeCell" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="attributed node" />
    <property role="EcuMT" value="1149850725784" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
  </node>
  <node concept="1TIwiD" id="gSMLZit">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_PropertyValues_GetValues" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="property values" />
    <property role="EcuMT" value="1160493135005" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gTQ80DJ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptFunctionParameter_editorContext" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="34LRSv" value="editorContext" />
    <property role="EcuMT" value="1161622981231" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="gUEezLC">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_currentChild" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="currentChild" />
    <property role="EcuMT" value="1162497113192" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="gVGJtLf">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_AbstractGroup_Query" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="get objects" />
    <property role="EcuMT" value="1163613035599" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaMrx" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="gVGJPiB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceNode_Group_Create" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="create replacement node" />
    <property role="EcuMT" value="1163613131943" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaNm0" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="gVGLrfY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_AbstractGroup_parameterObject" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="parameterObject" />
    <property role="EcuMT" value="1163613549566" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="gVGMtSf">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_Abstract_editedNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="node" />
    <property role="EcuMT" value="1163613822479" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="gW6VE75">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_AbstractGroup_MatchingText" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="matching text" />
    <property role="EcuMT" value="1164052439493" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gW6Wey$">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_AbstractGroup_DescriptionText" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="description text" />
    <property role="EcuMT" value="1164052588708" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gWOXEEG">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuDescriptor" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="cell menu" />
    <property role="EcuMT" value="1164824717996" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="gWOY2$g" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellMenuPart" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1164824815888" />
      <ref role="20lvS9" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    </node>
  </node>
  <node concept="1TIwiD" id="gWOYc3u">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_Abstract" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1164824854750" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1o9RazL_aLN" role="PzmwI">
      <ref role="PrY4T" node="1o9RazL_awo" resolve="IReferenceContextProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="gWPvTER">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_PropertyValues" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="property values" />
    <property role="EcuMT" value="1164833692343" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="gWPvTES" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="valuesFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1164833692344" />
      <ref role="20lvS9" node="gSMLZit" resolve="CellMenuPart_PropertyValues_GetValues" />
    </node>
  </node>
  <node concept="1TIwiD" id="gWUkeLO">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceNode_CustomNodeConcept" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="replace node (custom node concept)" />
    <property role="EcuMT" value="1164914519156" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="gWUl1JU" role="1TKVEi">
      <property role="20kJfa" value="replacementConcept" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1164914727930" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gWZcVFF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReferentPrimary" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="primary choose referent menu" />
    <property role="EcuMT" value="1164996492011" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="601LQojQ6kk" role="1TKVEi">
      <property role="IQ2ns" value="6918029743851332884" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="matchingText" />
      <ref role="20lvS9" node="601LQojMcdN" resolve="QueryFunction_RefPresentation" />
    </node>
    <node concept="1TJgyj" id="5KYS0pi3vFm" role="1TKVEi">
      <property role="IQ2ns" value="6646996417796504278" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="visibleMatchingText" />
      <ref role="20lvS9" node="601LQojMcdN" resolve="QueryFunction_RefPresentation" />
    </node>
  </node>
  <node concept="1TIwiD" id="gWZEnmw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceNode_Group" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="replace node (group of custom actions)" />
    <property role="EcuMT" value="1165004207520" />
    <ref role="1TJDcQ" node="gXexONQ" resolve="CellMenuPart_AbstractGroup" />
    <node concept="1TJgyj" id="gWZF_Uc" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parametersFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165004529292" />
      <ref role="20lvS9" node="gVGJtLf" resolve="CellMenuPart_AbstractGroup_Query" />
    </node>
    <node concept="1TJgyj" id="gWZF_Ud" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="createFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165004529293" />
      <ref role="20lvS9" node="gVGJPiB" resolve="CellMenuPart_ReplaceNode_Group_Create" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXexONQ">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_AbstractGroup" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1165253627126" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="gXeyP6_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameterObjectType" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165253890469" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0F" role="1TKVEl">
      <property role="TrG5h" value="presentation" />
      <property role="IQ2nx" value="1165254125954" />
      <ref role="AX2Wp" to="tpcw:3Ftr4R6BFvV" resolve="NodePresentationOptions" />
    </node>
    <node concept="1TJgyj" id="gXezQMH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="matchingTextFunction" />
      <property role="IQ2ns" value="1165254159533" />
      <ref role="20lvS9" node="gW6VE75" resolve="CellMenuPart_AbstractGroup_MatchingText" />
    </node>
    <node concept="1TJgyj" id="gXezVV_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="descriptionTextFunction" />
      <property role="IQ2ns" value="1165254180581" />
      <ref role="20lvS9" node="gW6Wey$" resolve="CellMenuPart_AbstractGroup_DescriptionText" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXfxSoH">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_Group" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="replace child (group of custom actions)" />
    <property role="EcuMT" value="1165270418989" />
    <ref role="1TJDcQ" node="gXexONQ" resolve="CellMenuPart_AbstractGroup" />
    <node concept="1TJgyj" id="gXfxSoJ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parametersFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165270418991" />
      <ref role="20lvS9" node="gXfyNWf" resolve="CellMenuPart_ReplaceChild_Group_Query" />
    </node>
    <node concept="1TJgyj" id="gXfxSoK" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="createFunction" />
      <property role="IQ2ns" value="1165270418992" />
      <ref role="20lvS9" node="gXf$6d9" resolve="CellMenuPart_ReplaceChild_Group_Create" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXfyNWf">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_Group_Query" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="get objects" />
    <property role="EcuMT" value="1165270662927" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gXf$6d9">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_Group_Create" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="create new child" />
    <property role="EcuMT" value="1165270999881" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gXg8mte">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_CustomChildConcept" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="replace child (custom child's concept)" />
    <property role="EcuMT" value="1165280503630" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="gXg8mtf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="childConceptFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165280503631" />
      <ref role="20lvS9" node="gXg9G$d" resolve="CellMenuPart_ReplaceChild_CustomChildConcept_Query" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXg9G$d">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_CustomChildConcept_Query" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="get child concept" />
    <property role="EcuMT" value="1165280856333" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gXjCaFY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_Item" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="replace child (custom action)" />
    <property role="EcuMT" value="1165339175678" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyi" id="gXjDW2R" role="1TKVEl">
      <property role="TrG5h" value="matchingText" />
      <property role="IQ2nx" value="1165339639991" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="h6qtOjI" role="1TKVEl">
      <property role="TrG5h" value="descriptionText" />
      <property role="IQ2nx" value="1175117579502" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="gXjCaG0" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="createFunction" />
      <property role="IQ2ns" value="1165339175680" />
      <ref role="20lvS9" node="gXjCEQD" resolve="CellMenuPart_ReplaceChild_Item_Create" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXjCEQD">
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_Item_Create" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1165339307433" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="gXou4cn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_Generic_Group" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="generic group" />
    <property role="EcuMT" value="1165420413719" />
    <ref role="1TJDcQ" node="gXexONQ" resolve="CellMenuPart_AbstractGroup" />
    <node concept="1TJgyj" id="gXou4co" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parametersFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165420413720" />
      <ref role="20lvS9" node="gVGJtLf" resolve="CellMenuPart_AbstractGroup_Query" />
    </node>
    <node concept="1TJgyj" id="gXou4cp" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="handlerFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165420413721" />
      <ref role="20lvS9" node="gXouS9U" resolve="CellMenuPart_Generic_Group_Handler" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXouS9U">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_Generic_Group_Handler" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="generic handler" />
    <property role="EcuMT" value="1165420626554" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaML3" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXoHunQ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_Generic_Item" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="generic item" />
    <property role="EcuMT" value="1165424453110" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyi" id="gXoHunR" role="1TKVEl">
      <property role="TrG5h" value="matchingText" />
      <property role="IQ2nx" value="1165424453111" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="gXoHunS" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="handlerFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1165424453112" />
      <ref role="20lvS9" node="gXoIggz" resolve="CellMenuPart_Generic_Item_Handler" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXoIggz">
    <property role="TrG5h" value="CellMenuPart_Generic_Item_Handler" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1165424657443" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaN2I" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXXs21o">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuComponent" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="Cell Menu Component" />
    <property role="EcuMT" value="1166040637528" />
    <ref role="1TJDcQ" node="gXXWOiD" resolve="AbstractComponent" />
    <node concept="1QGGSu" id="4Q8sAA5iJQn" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/menuComponent.png" />
    </node>
    <node concept="1TJgyj" id="gXXsTFp" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="applicableFeature" />
      <property role="IQ2ns" value="1166040865497" />
      <ref role="20lvS9" node="gXXtyFs" resolve="CellMenuComponentFeature" />
    </node>
    <node concept="1TJgyj" id="gXXvlTx" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuDescriptor" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1166041505377" />
      <ref role="20lvS9" node="gWOXEEG" resolve="CellMenuDescriptor" />
    </node>
    <node concept="PrWs8" id="AkEQ6o$M8h" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="4$$3zrO4fhS" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="PrWs8" id="6GI$fc4daP8" role="PzmwI">
      <ref role="PrY4T" to="tpce:hOIDzy1" resolve="IStructureDeprecatable" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJg8_I" role="bvy1s">
      <property role="1sEMCp" value="editor.html#cellmenus" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXXtyFs">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuComponentFeature" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1166041033436" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="gXYg8S8" role="1TKVEi">
      <property role="20kJfa" value="relationDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1166054297096" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXXwhgC">
    <property role="TrG5h" value="CellMenuComponentFeature_Property" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1166041748520" />
    <ref role="1TJDcQ" node="gXXtyFs" resolve="CellMenuComponentFeature" />
    <node concept="1TJgyj" id="gXXwMpJ" role="1TKVEi">
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1166041884271" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <ref role="20ksaX" node="gXYg8S8" resolve="relationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXXxIQr">
    <property role="TrG5h" value="CellMenuComponentFeature_Link" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="EcuMT" value="1166042131867" />
    <ref role="1TJDcQ" node="gXXtyFs" resolve="CellMenuComponentFeature" />
    <node concept="1TJgyj" id="gXXxIQt" role="1TKVEi">
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1166042131869" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <ref role="20ksaX" node="gXYg8S8" resolve="relationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXXWOiD">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractComponent" />
    <property role="EcuMT" value="1166049232041" />
    <node concept="1TJgyj" id="gXXX56I" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="IQ2ns" value="1166049300910" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gXY$tNQ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_CellMenuComponent" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="menu component" />
    <property role="EcuMT" value="1166059625718" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="gXY$Ez5" role="1TKVEi">
      <property role="20kJfa" value="cellMenuComponent" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1166059677893" />
      <ref role="20lvS9" node="gXXs21o" resolve="CellMenuComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="h5t6ywT">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChildPrimary" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="primary replace child menu" />
    <property role="EcuMT" value="1174088067129" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
  </node>
  <node concept="1TIwiD" id="h7Fmcq4">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_JComponent" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="component" />
    <property role="EcuMT" value="1176474535556" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="h7TQ6f$">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_text" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="text" />
    <property role="EcuMT" value="1176717779940" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="h7TQllL">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_ModelAccess_Getter" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="condition" />
    <property role="EcuMT" value="1176717841777" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="h7TQsym">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_ModelAccess_Setter" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="condition" />
    <property role="EcuMT" value="1176717871254" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="h7TQwIG">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_ModelAccess_Validator" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="condition" />
    <property role="EcuMT" value="1176717888428" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="h7TQVbc">
    <property role="TrG5h" value="ModelAccessor" />
    <property role="EcuMT" value="1176717996748" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="h7TQWri" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1176718001874" />
      <ref role="20lvS9" node="h7TQllL" resolve="QueryFunction_ModelAccess_Getter" />
    </node>
    <node concept="1TJgyj" id="h7TQXU2" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="setter" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1176718007938" />
      <ref role="20lvS9" node="h7TQsym" resolve="QueryFunction_ModelAccess_Setter" />
    </node>
    <node concept="1TJgyj" id="h7TQZuT" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="validator" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1176718014393" />
      <ref role="20lvS9" node="h7TQwIG" resolve="QueryFunction_ModelAccess_Validator" />
    </node>
  </node>
  <node concept="1TIwiD" id="h7UFZN5">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_oldText" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="oldText" />
    <property role="EcuMT" value="1176731909317" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="h7VJUTl">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_CellProvider" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="cell provider" />
    <property role="EcuMT" value="1176749715029" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="h7ZlJ1A">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_Color" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="34LRSv" value="color function" />
    <property role="EcuMT" value="1176809959526" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
    <node concept="PrWs8" id="hPiSsxS" role="PzmwI">
      <ref role="PrY4T" node="hPiS1BQ" resolve="IQueryFunction_Color" />
    </node>
  </node>
  <node concept="1TIwiD" id="h84$FLY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_NodeFactory" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="node factory" />
    <property role="EcuMT" value="1176897764478" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="h84EI$6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_ImagePath" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="path" />
    <property role="EcuMT" value="1176899348742" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="54iik1dcchF" role="PzmwI">
      <ref role="PrY4T" node="54iik1dcchE" resolve="ImagePathProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="hbyc0Ja">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_PropertyPostfixHints" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="property postfix hints" />
    <property role="EcuMT" value="1180615838666" />
    <ref role="1TJDcQ" node="gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1TJgyj" id="hbyc0Jb" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="postfixesFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1180615838667" />
      <ref role="20lvS9" node="hbycQaX" resolve="CellMenuPart_PropertyPostfixHints_GetPostfixes" />
    </node>
  </node>
  <node concept="1TIwiD" id="hbycQaX">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_PropertyPostfixHints_GetPostfixes" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="postfixes" />
    <property role="EcuMT" value="1180616057533" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="3eCjKC6V$ZC" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="hd07P1K">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_NodeListFilter" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="node list provider" />
    <property role="EcuMT" value="1182191800432" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="hd2_Wol">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_childNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="childNode" />
    <property role="EcuMT" value="1182233249301" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="heYWUh$">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="not empty property" />
    <property role="TrG5h" value="CellModel_NonEmptyProperty" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1184319644772" />
    <ref role="1TJDcQ" node="fBF0A4I" resolve="CellModel_Property" />
    <node concept="PrWs8" id="4SdtvCaA7QH" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="RPilO" id="7F6fz3H$PFU" role="lGtFl">
      <ref role="RPilL" node="fBF1KQc" resolve="propertyDeclaration" />
      <node concept="ROjv2" id="7F6fz3H$PFV" role="ROhUF">
        <property role="1W_73P" value="{+" />
        <property role="1W_73K" value="+}" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="hgV5ht3">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="StyleSheet" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="Stylesheet" />
    <property role="EcuMT" value="1186402211651" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1QGGSu" id="4Q8sAA5iJQq" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/editorStylesheet.png" />
    </node>
    <node concept="1TJgyj" id="hgV6056" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="styles" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1186402402630" />
      <ref role="20lvS9" node="7zL4upEo6oo" resolve="IStyleSheetItem" />
    </node>
    <node concept="PrWs8" id="3FsTArV1UAP" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJ9HKF" role="bvy1s">
      <property role="1sEMCp" value="editor.html#styles" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgV6hR6">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="StyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="1186402475462" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="22GpWQFsOgV" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgVaVz4">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ColorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="1186403694788" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="hgVblYF" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="1186403803051" />
      <ref role="20lvS9" node="hPiS1BQ" resolve="IQueryFunction_Color" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0H" role="1TKVEl">
      <property role="TrG5h" value="color" />
      <property role="IQ2nx" value="1186403713874" />
      <ref role="AX2Wp" node="3Ftr4R6BF5v" resolve="_Colors_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgVb9tm">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="FontStyleStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="font-style" />
    <property role="EcuMT" value="1186403751766" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="hL7MNkH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="1220975211821" />
      <ref role="20lvS9" node="hL7KAA7" resolve="QueryFunction_FontStyle" />
    </node>
    <node concept="1TJgyi" id="3Ftr4R6BH0J" role="1TKVEl">
      <property role="TrG5h" value="style" />
      <property role="IQ2nx" value="1186403771423" />
      <ref role="AX2Wp" node="3Ftr4R6BF9k" resolve="_FontStyle_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgVeclI">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ForegroundColorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="text-foreground-color" />
    <property role="EcuMT" value="1186404549998" />
    <ref role="1TJDcQ" node="hgVaVz4" resolve="ColorStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hgVeijc">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BackgroundColorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="background-color" />
    <property role="EcuMT" value="1186404574412" />
    <ref role="1TJDcQ" node="hgVaVz4" resolve="ColorStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hgVLurQ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BracketColorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="bracket-color" />
    <property role="EcuMT" value="1186413799158" />
    <ref role="1TJDcQ" node="hgVaVz4" resolve="ColorStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hgVOiwV">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BooleanStyleSheetItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="1186414536763" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="hNn$kAD" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="1223387335081" />
      <ref role="20lvS9" node="hNnzxoQ" resolve="QueryFunction_Boolean" />
    </node>
    <node concept="1TJgyi" id="hgVOm7r" role="1TKVEl">
      <property role="TrG5h" value="flag" />
      <property role="IQ2nx" value="1186414551515" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgVPM7F">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SelectableStyleSheetItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="selectable" />
    <property role="EcuMT" value="1186414928363" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hgVPRjw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AutoDeletableStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="auto-deletable" />
    <property role="EcuMT" value="1186414949600" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hgVPXKR">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DrawBorderStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="draw-border" />
    <property role="EcuMT" value="1186414976055" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hgVQ3vn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="UnderlinedStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="underlined" />
    <property role="EcuMT" value="1186414999511" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0L" role="1TKVEl">
      <property role="TrG5h" value="underlined" />
      <property role="IQ2nx" value="1214316229833" />
      <ref role="AX2Wp" node="3Ftr4R6BF9r" resolve="UnderlineStyle" />
    </node>
    <node concept="1TJgyj" id="hLmkYxI" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="1221219051630" />
      <ref role="20lvS9" node="hLd0yJJ" resolve="QueryFunction_Underlined" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgVSNSQ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="FontSizeStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="font-size" />
    <property role="EcuMT" value="1186415722038" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="hLd8cI8" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="1221064706952" />
      <ref role="20lvS9" node="hLcFafI" resolve="QueryFunction_Integer" />
    </node>
    <node concept="1TJgyi" id="hLlJzux" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="1221209241505" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="hgVPxA7">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditableStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="editable" />
    <property role="EcuMT" value="1186414860679" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hhI8cYN">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ForegroundNullColorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="text-foreground-null-color" />
    <property role="EcuMT" value="1187258617779" />
    <ref role="1TJDcQ" node="hgVaVz4" resolve="ColorStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hrXFhuw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="indent" />
    <property role="TrG5h" value="CellModel_Indent" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="---&gt;" />
    <property role="EcuMT" value="1198256887712" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
  </node>
  <node concept="1TIwiD" id="hrXI7r6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_BlockStart" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="block start" />
    <property role="EcuMT" value="1198257632966" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyi" id="hscsYn8" role="1TKVEl">
      <property role="TrG5h" value="openBrace" />
      <property role="IQ2nx" value="1198504797640" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="hrXIzvd">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_BlockEnd" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="block end" />
    <property role="EcuMT" value="1198257747917" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyi" id="hsczY4V" role="1TKVEl">
      <property role="TrG5h" value="closeBrace" />
      <property role="IQ2nx" value="1198506631483" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="hsb$fdm">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_Block" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="block" />
    <property role="EcuMT" value="1198489924438" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyi" id="hscFXKA" role="1TKVEl">
      <property role="TrG5h" value="openBrace" />
      <property role="IQ2nx" value="1198508727334" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="hscFZiw" role="1TKVEl">
      <property role="TrG5h" value="closeBrace" />
      <property role="IQ2nx" value="1198508733600" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="hsb$u0l" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="header" />
      <property role="IQ2ns" value="1198489985045" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="1TJgyj" id="hsb$w86" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1198489993734" />
      <ref role="20lvS9" node="fBEYTCT" resolve="EditorCellModel" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7QZ" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="huL2B6u">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SelectParameter" />
    <property role="3GE5qa" value="SNode" />
    <property role="EcuMT" value="1201266127262" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="huLcJzd">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SelectPositionParameter" />
    <property role="3GE5qa" value="SNode" />
    <property role="34LRSv" value="position=" />
    <property role="EcuMT" value="1201268783309" />
    <ref role="1TJDcQ" node="huL2B6u" resolve="SelectParameter" />
    <node concept="1TJgyi" id="3Ftr4R6BH0N" role="1TKVEl">
      <property role="TrG5h" value="position" />
      <property role="IQ2nx" value="1201268881975" />
      <ref role="AX2Wp" node="3Ftr4R6BFcP" resolve="SelectPosition" />
    </node>
  </node>
  <node concept="1TIwiD" id="huLkFKv">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CaretPositionParameter" />
    <property role="3GE5qa" value="SNode" />
    <property role="34LRSv" value="caret position=" />
    <property role="EcuMT" value="1201270864927" />
    <ref role="1TJDcQ" node="huL2B6u" resolve="SelectParameter" />
    <node concept="1TJgyj" id="huLkQdO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1201270907764" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="hEUZ13E">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="LayoutConstraintStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="layout constraint" />
    <property role="EcuMT" value="1214317859050" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0P" role="1TKVEl">
      <property role="TrG5h" value="layoutConstraint" />
      <property role="IQ2nx" value="1214317859051" />
      <ref role="AX2Wp" node="3Ftr4R6BF9A" resolve="_Layout_Constraints_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hF0gYTA">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TextBackgroundColorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="text-background-color" />
    <property role="EcuMT" value="1214406454886" />
    <ref role="1TJDcQ" node="hgVaVz4" resolve="ColorStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hF0h1LY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TextBackgroundColorSelectedStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="text-background-color-selected" />
    <property role="EcuMT" value="1214406466686" />
    <ref role="1TJDcQ" node="hgVaVz4" resolve="ColorStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hF4dVhC">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DefaultCaretPositionStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="default-caret-position" />
    <property role="EcuMT" value="1214472762472" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0R" role="1TKVEl">
      <property role="TrG5h" value="position" />
      <property role="IQ2nx" value="1214472762473" />
      <ref role="AX2Wp" node="3Ftr4R6BFcK" resolve="_CaretPosition_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hF$6Mv_">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="FloatStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="1215007762405" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="hF$6WaJ" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="1215007802031" />
      <ref role="AX2Wp" node="i2E8K1n" resolve="_FloatOrInteger_String" />
    </node>
  </node>
  <node concept="1TIwiD" id="hF$7fZ4">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PaddingLeftStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="34LRSv" value="padding-left" />
    <property role="EcuMT" value="1215007883204" />
    <ref role="1TJDcQ" node="hQ7zB2l" resolve="AbstractPaddingStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hF$7juf">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PaddingRightStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="34LRSv" value="padding-right" />
    <property role="EcuMT" value="1215007897487" />
    <ref role="1TJDcQ" node="hQ7zB2l" resolve="AbstractPaddingStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hFCHQP0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="FirstPositionAllowedStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="first-position-allowed" />
    <property role="EcuMT" value="1215085112640" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hFCIbvn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="LastPositionAllowedStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="last-position-allowed" />
    <property role="EcuMT" value="1215085197271" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hGLD5Fn">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PositionStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="position" />
    <property role="EcuMT" value="1216308599511" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0T" role="1TKVEl">
      <property role="TrG5h" value="position" />
      <property role="IQ2nx" value="1216308761668" />
      <ref role="AX2Wp" node="3Ftr4R6BFcT" resolve="_NextLine_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hGPXfkl">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_TransactionalProperty" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="1216380990741" />
    <ref role="1TJDcQ" node="g_$h64z" resolve="CellModel_WithRole" />
    <node concept="1TJgyi" id="hVN9gW1" role="1TKVEl">
      <property role="TrG5h" value="runInCommand" />
      <property role="IQ2nx" value="1232439938817" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7a3hLlC0ccL" role="1TKVEl">
      <property role="TrG5h" value="allowEmptyTextOld" />
      <property role="IQ2nx" value="8251517099537646385" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="4_KRdeo1umE" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="hGPY5io" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="handlerBlock" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1216381211800" />
      <ref role="20lvS9" node="hGPXuVX" resolve="TransactionalPropertyHandler" />
    </node>
    <node concept="1TJgyj" id="hGPY767" role="1TKVEi">
      <property role="20kJfa" value="propertyOld" />
      <property role="IQ2ns" value="1216381219207" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <node concept="asaX9" id="4IQFg3Z6Ax_" role="lGtFl" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7us" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
    <node concept="RPilO" id="7F6fz3H$PFS" role="lGtFl">
      <ref role="RPilL" node="4IQFg3Z7hwT" resolve="propertyDeclaration" />
      <node concept="ROjv2" id="7F6fz3H$PFT" role="ROhUF">
        <property role="1W_73P" value="{T " />
        <property role="1W_73K" value=" T}" />
      </node>
    </node>
    <node concept="1TJgyj" id="4IQFg3Z7hwT" role="1TKVEi">
      <property role="IQ2ns" value="5455738218397636665" />
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <ref role="20ksaX" node="g_NtTq1" resolve="relationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="hGPXuVX">
    <property role="TrG5h" value="TransactionalPropertyHandler" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="EcuMT" value="1216381054717" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="hGPXIaG">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TransactionPropertyHandler_oldValue" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="oldValue" />
    <property role="EcuMT" value="1216381117100" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="hGPXPHH">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TransactionPropertyHandler_newValue" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="newValue" />
    <property role="EcuMT" value="1216381148013" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="hH0DmCw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PositionChildrenStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="position-children" />
    <property role="EcuMT" value="1216560327200" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0V" role="1TKVEl">
      <property role="TrG5h" value="position" />
      <property role="IQ2nx" value="1216560518566" />
      <ref role="AX2Wp" node="3Ftr4R6BFcT" resolve="_NextLine_Enum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hJvyZqV">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DrawBracketsStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="draw-brackets" />
    <property role="EcuMT" value="1219226236603" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="PlHQZ" id="hJF0Tl2">
    <property role="TrG5h" value="IStyleContainer" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="1219418625346" />
    <node concept="1TJgyj" id="hJF10O6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="styleItem" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1219418656006" />
      <ref role="20lvS9" node="hgV6hR6" resolve="StyleClassItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="hL7KAA7">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_FontStyle" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="34LRSv" value="font style function" />
    <property role="EcuMT" value="1220974635399" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="hLcFafI">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_Integer" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="34LRSv" value="int function" />
    <property role="EcuMT" value="1221057094638" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="hLcOssU">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_StyleParameter" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="EcuMT" value="1221059528506" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="6E2BWlDqZ2F" role="PzmwI">
      <ref role="PrY4T" node="6E2BWlDjLUW" resolve="IContextNodeAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="hLd0yJJ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_Underlined" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="34LRSv" value="underlined function" />
    <property role="EcuMT" value="1221062700015" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="hNnxI6D">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="StrikeOutStyleSheet" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="strike-out" />
    <property role="EcuMT" value="1223386653097" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hNnzxoQ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_Boolean" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="34LRSv" value="boolean function" />
    <property role="EcuMT" value="1223387125302" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="PlHQZ" id="hPiS1BQ">
    <property role="TrG5h" value="IQueryFunction_Color" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="EcuMT" value="1225456097782" />
  </node>
  <node concept="1TIwiD" id="hPiSF6w">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="#RRGGBB" />
    <property role="TrG5h" value="RGBColor" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="#" />
    <property role="EcuMT" value="1225456267680" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="hPiSI$F" role="PzmwI">
      <ref role="PrY4T" node="hPiS1BQ" resolve="IQueryFunction_Color" />
    </node>
    <node concept="1TJgyi" id="hPiThsr" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="1225456424731" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="hPHfYsu">
    <property role="TrG5h" value="ReadOnlyModelAccessor" />
    <property role="EcuMT" value="1225898583838" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="hPHht8X" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1225898971709" />
      <ref role="20lvS9" node="h7TQllL" resolve="QueryFunction_ModelAccess_Getter" />
    </node>
  </node>
  <node concept="1TIwiD" id="hPHlG0c">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="reference to read only accessor" />
    <property role="TrG5h" value="CellModel_ReadOnlyModelAccessor" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="read only model access" />
    <property role="EcuMT" value="1225900081164" />
    <ref role="1TJDcQ" node="fHev3Dc" resolve="CellModel_AbstractLabel" />
    <node concept="1TJgyj" id="hPHlUPc" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelAccessor" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1225900141900" />
      <ref role="20lvS9" node="hPHfYsu" resolve="ReadOnlyModelAccessor" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7un" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="hQ7yTwa">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PaddingTopStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="34LRSv" value="padding-top" />
    <property role="EcuMT" value="1226339751946" />
    <ref role="1TJDcQ" node="hQ7zB2l" resolve="AbstractPaddingStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hQ7z8uW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PaddingBottomStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="34LRSv" value="padding-bottom" />
    <property role="EcuMT" value="1226339813308" />
    <ref role="1TJDcQ" node="hQ7zB2l" resolve="AbstractPaddingStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hQ7zB2l">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractPaddingStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="EcuMT" value="1226339938453" />
    <ref role="1TJDcQ" node="hF$6Mv_" resolve="FloatStyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0X" role="1TKVEl">
      <property role="TrG5h" value="measure" />
      <property role="IQ2nx" value="1226504838901" />
      <ref role="AX2Wp" node="3Ftr4R6BFdU" resolve="_Enum_Measure" />
    </node>
  </node>
  <node concept="1TIwiD" id="hRyfXGv">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NavigatableReferenceStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="navigatable-reference" />
    <property role="EcuMT" value="1227861515039" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="hRygfii" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="IQ2ns" value="1227861587090" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="hWtppjH">
    <property role="TrG5h" value="InlineStyleDeclaration" />
    <property role="EcuMT" value="1233148810477" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1cEk0X7fp1G" role="PzmwI">
      <ref role="PrY4T" node="1cEk0X7fm5O" resolve="ICellStyle" />
    </node>
  </node>
  <node concept="1TIwiD" id="hX1L4JR">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PunctuationLeftStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="punctuation-left" />
    <property role="EcuMT" value="1233758997495" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hX1LMvx">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PunctuationRightStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="punctuation-right" />
    <property role="EcuMT" value="1233759184865" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hX5ARbj">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="HorizontalGapStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="34LRSv" value="horizontal-gap" />
    <property role="EcuMT" value="1233823429331" />
    <ref role="1TJDcQ" node="hQ7zB2l" resolve="AbstractPaddingStyleClassItem" />
  </node>
  <node concept="1TIwiD" id="hYR9T$n">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BaseLineCell" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="base-line-cell" />
    <property role="EcuMT" value="1235728439575" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="hZ7jFTG">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="HorizontalAlign" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="horizontal-align" />
    <property role="EcuMT" value="1235999440492" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH0Z" role="1TKVEl">
      <property role="TrG5h" value="align" />
      <property role="IQ2nx" value="1235999920262" />
      <ref role="AX2Wp" node="3Ftr4R6BFdY" resolve="AlignEnum" />
    </node>
  </node>
  <node concept="1TIwiD" id="hZmYdko">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="MatchingLabelStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="matching-label" />
    <property role="EcuMT" value="1236262245656" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="i1413G$" role="1TKVEl">
      <property role="TrG5h" value="labelName" />
      <property role="IQ2nx" value="1238091709220" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="58mW1s9z$X4" role="1TKVEl">
      <property role="TrG5h" value="hasNoLabel" />
      <property role="IQ2nx" value="5915179142332960580" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="hZxKXiv" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="1236443321503" />
      <ref role="20lvS9" node="hZxMbdG" resolve="QueryFunction_String" />
    </node>
  </node>
  <node concept="1TIwiD" id="hZxMbdG">
    <property role="TrG5h" value="QueryFunction_String" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="EcuMT" value="1236443640684" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="6E2BWlDjLVl" role="PzmwI">
      <ref role="PrY4T" node="6E2BWlDjLUW" resolve="IContextNodeAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="i0l2Vh1">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_Indent" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="indent" />
    <property role="EcuMT" value="1237303669825" />
    <ref role="1TJDcQ" node="g6iR17a" resolve="CellLayout" />
  </node>
  <node concept="1TIwiD" id="i0lj429">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutIndentStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-indent" />
    <property role="EcuMT" value="1237307900041" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="i0ljvrN">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutNewLineStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-new-line" />
    <property role="EcuMT" value="1237308012275" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="i0pj6JX">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutNewLineChildrenStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-new-line-children" />
    <property role="EcuMT" value="1237375020029" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="i0pVoAY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutOnNewLineStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-on-new-line" />
    <property role="EcuMT" value="1237385578942" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="Az7Fb" id="i2E8K1n">
    <property role="TrG5h" value="_FloatOrInteger_String" />
    <property role="FLfZY" value="-?[0-9]+\\.?[0-9]*" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="3F6X1D" value="1239805001815" />
  </node>
  <node concept="1TIwiD" id="i2EHxdK">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_VerticalGrid" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="vertical grid" />
    <property role="EcuMT" value="1239814640496" />
    <ref role="1TJDcQ" node="g6iRkMY" resolve="CellLayout_Vertical" />
  </node>
  <node concept="1TIwiD" id="i34QqII">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutNoWrapClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-no-wrap" />
    <property role="EcuMT" value="1240253180846" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="yGThnK6hTI">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_ReferencePresentation" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="ref. presentation" />
    <property role="EcuMT" value="625126330682908270" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="6K3nYZv1g25" role="1TKVEi">
      <property role="IQ2ns" value="7783170064869818501" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="referentPresentation" />
      <ref role="20lvS9" node="601LQojMcdN" resolve="QueryFunction_RefPresentation" />
    </node>
    <node concept="PrWs8" id="7x0o_8QOa6J" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DBCLBe1wsi">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ParametersInformationStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="parameters-information" />
    <property role="EcuMT" value="7667276221847570194" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="7G1kLlsvd2s" role="1TKVEi">
      <property role="20kJfa" value="parametersInformation" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8863456892852949148" />
      <ref role="20lvS9" node="6DBCLBe1ENe" resolve="ParametersInformationQuery" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DBCLBe1ENe">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ParametersInformationQuery" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="Parameters Information Query" />
    <property role="EcuMT" value="7667276221847612622" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1QGGSu" id="4Q8sAA5iJQo" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/parametersInformation.png" />
    </node>
    <node concept="1TJgyj" id="3DkLjCDOMpB" role="1TKVEi">
      <property role="20kJfa" value="applicableConcept" />
      <property role="IQ2ns" value="4203201205843994215" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="75Z472Z0sZ9" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8178273524755058633" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="6DBCLBe1ENf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7667276221847612623" />
      <ref role="20lvS9" node="6DBCLBe1ESf" resolve="QueryFunction_ParametersList" />
    </node>
    <node concept="1TJgyj" id="_gTQaradMl" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="presentation" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="671290755174161557" />
      <ref role="20lvS9" node="_gTQar9Xtu" resolve="QueryFunction_MethodPresentation" />
    </node>
    <node concept="1TJgyj" id="5$n13ICYFtU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="isMethodCurrent" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6419604448124516218" />
      <ref role="20lvS9" node="5$n13ICYFtL" resolve="QueryFunction_IsMethodCurrent" />
    </node>
    <node concept="1TJgyj" id="1adq1zzSpEz" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methodDeclaration" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1336839120510622371" />
      <ref role="20lvS9" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
    </node>
    <node concept="PrWs8" id="AkEQ6o$WqB" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="1adq1zzRpv0" role="PzmwI">
      <ref role="PrY4T" to="tp4f:hyWqMFP" resolve="IClassifier" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJg8Hd" role="bvy1s">
      <property role="1sEMCp" value="editor.html#3ab2b85e" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DBCLBe1ESf">
    <property role="TrG5h" value="QueryFunction_ParametersList" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="EcuMT" value="7667276221847612943" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaQg5" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="_gTQar9Xtu">
    <property role="TrG5h" value="QueryFunction_MethodPresentation" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="EcuMT" value="671290755174094686" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaOrO" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="_gTQar9Xtz">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptFunctionParameter_parameterObject" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="parameterObject" />
    <property role="EcuMT" value="671290755174094691" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="5$n13ICYFtL">
    <property role="TrG5h" value="QueryFunction_IsMethodCurrent" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="EcuMT" value="6419604448124516209" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaNDx" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Vg7jtwzY2J">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptFunctionParameter_StyledText" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="styledText" />
    <property role="EcuMT" value="4526149749187797167" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="fzj3z0Flm7">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AppendTextOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="append" />
    <property role="EcuMT" value="280151408461567367" />
    <ref role="1TJDcQ" node="3V$8ZKEOgVe" resolve="AbstractStyledTextOperation" />
  </node>
  <node concept="1TIwiD" id="fzj3z0GCMG">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SetBoldOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="setBold" />
    <property role="EcuMT" value="280151408461909164" />
    <ref role="1TJDcQ" node="3V$8ZKEOgVe" resolve="AbstractStyledTextOperation" />
  </node>
  <node concept="1TIwiD" id="3V$8ZKEOgVe">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractStyledTextOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="EcuMT" value="4531786690998636238" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3V$8ZKEOgVf" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="3V$8ZKEOgVg" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actualArgument" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="4531786690998636240" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3oFyYx8Tsir">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="StyledTextType" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="styled text" />
    <property role="EcuMT" value="3903367331818357915" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="6B0q9qwT2Dh">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DefaultBaseLine" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="default-baseline" />
    <property role="EcuMT" value="7620205565664569937" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH11" role="1TKVEl">
      <property role="TrG5h" value="baseline" />
      <property role="IQ2nx" value="7620205565664606477" />
      <ref role="AX2Wp" node="3Ftr4R6BFe3" resolve="DefaultBaseLineEnum" />
    </node>
  </node>
  <node concept="1TIwiD" id="1CJP367e8q1">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_Superscript" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="super/subscript" />
    <property role="EcuMT" value="1886960078078641793" />
    <ref role="1TJDcQ" node="g6iR17a" resolve="CellLayout" />
  </node>
  <node concept="1TIwiD" id="7agyGr7xxz8">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ScriptKindClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="script-kind" />
    <property role="EcuMT" value="8255250703325731016" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH13" role="1TKVEl">
      <property role="TrG5h" value="script" />
      <property role="IQ2nx" value="8255250703325731018" />
      <ref role="AX2Wp" node="3Ftr4R6BFe8" resolve="ScriptSwitchEnum" />
    </node>
  </node>
  <node concept="1TIwiD" id="3DkLjCDQV3U">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="selected node" />
    <property role="TrG5h" value="ConceptFunctionParameter_selectedNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="node" />
    <property role="EcuMT" value="4203201205844553978" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="5ahn_dtVdm1">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellLayout_Table" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="34LRSv" value="table" />
    <property role="EcuMT" value="5949640294884234625" />
    <ref role="1TJDcQ" node="g6iR17a" resolve="CellLayout" />
  </node>
  <node concept="1TIwiD" id="5UApK7d2wM6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TableComponentStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="table-component" />
    <property role="EcuMT" value="6820251943131810950" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH15" role="1TKVEl">
      <property role="TrG5h" value="tableComponent" />
      <property role="IQ2nx" value="6820251943131810955" />
      <ref role="AX2Wp" node="3Ftr4R6BFed" resolve="TableComponentEnum" />
    </node>
  </node>
  <node concept="1TIwiD" id="7dwhomQPs_N">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_Empty" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="empty" />
    <property role="EcuMT" value="8313721352726366579" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
  </node>
  <node concept="1TIwiD" id="6_IODUXv1gD">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="NavigatableNodeStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="navigatable-node" />
    <property role="EcuMT" value="7597241200646296617" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="6_IODUXv1gE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="functionNode" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7597241200646296618" />
      <ref role="20lvS9" node="6_IODUXv1gF" resolve="QueryFunction_SNode" />
    </node>
  </node>
  <node concept="1TIwiD" id="6_IODUXv1gF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_SNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="34LRSv" value="snode function" />
    <property role="EcuMT" value="7597241200646296619" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="3daRSMLnNZu">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="URL property" />
    <property role="TrG5h" value="CellModel_URL" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="URL" />
    <property role="EcuMT" value="3696012239575138270" />
    <ref role="1TJDcQ" node="g_$h64z" resolve="CellModel_WithRole" />
    <node concept="1TJgyj" id="3daRSMLnNZv" role="1TKVEi">
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3696012239575138271" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <ref role="20ksaX" node="g_NtTq1" resolve="relationDeclaration" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA7QP" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="Bqq$mhZ7YP">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_SeparatorText" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="separator text" />
    <property role="EcuMT" value="709996738298806197" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="6CJUZdX4Rce">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="MaxWidthStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.Layout" />
    <property role="34LRSv" value="max-width" />
    <property role="EcuMT" value="7651593722933768974" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="6CJUZdX4Rcg" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="7651593722933768976" />
      <ref role="20lvS9" node="hLcFafI" resolve="QueryFunction_Integer" />
    </node>
    <node concept="1TJgyi" id="6CJUZdX4Rcf" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="7651593722933768975" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DDb1sd7lxe">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutWrapAnchorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-wrap-anchor" />
    <property role="EcuMT" value="7667708318090877006" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="6DDb1sd6KBo">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IndentLayoutIndentAnchorStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet.IndentLayout" />
    <property role="34LRSv" value="indent-layout-indent-anchor" />
    <property role="EcuMT" value="7667708318090725848" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="1dS7XWjKWuX">
    <property role="R4oN_" value="selected node (action map function parameter)" />
    <property role="TrG5h" value="CellActionMap_FunctionParm_selectedNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="node" />
    <property role="EcuMT" value="1402906326895675325" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="1dS7XWjMISb">
    <property role="R4oN_" value="keymap function parameter" />
    <property role="TrG5h" value="CellKeyMap_FunctionParm_selectedNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="node" />
    <property role="EcuMT" value="1402906326896143883" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="1dS7XWjMIS_">
    <property role="R4oN_" value="keymap function parameter" />
    <property role="TrG5h" value="CellKeyMap_FunctionParm_selectedNodes" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="MethodParameters" />
    <property role="34LRSv" value="selectedNodes" />
    <property role="EcuMT" value="1402906326896143909" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="6VCLXpKiIBM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_prevNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="34LRSv" value="prevNode" />
    <property role="EcuMT" value="7991857262589831666" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="6VCLXpKiI9y">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_nextNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="34LRSv" value="nextNode" />
    <property role="EcuMT" value="7991857262589829730" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="3AsHGqaEqUE">
    <property role="TrG5h" value="StyleKey" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="4151393920374910634" />
    <ref role="1TJDcQ" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    <node concept="PrWs8" id="7Ur4aGvCT5Y" role="PzmwI">
      <ref role="PrY4T" node="7Ur4aGvm4uS" resolve="IStyle" />
    </node>
  </node>
  <node concept="1TIwiD" id="3AsHGqaEqW2">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="StyleKeyPack" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="4151393920374910722" />
    <property role="34LRSv" value="Style Key Pack" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1QGGSu" id="7mBovHg6Ada" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/styleKeyPack.png" />
    </node>
    <node concept="1TJgyj" id="3AsHGqaEOhK" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="styleKey" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="4151393920375014512" />
      <ref role="20lvS9" node="3AsHGqaEqUE" resolve="StyleKey" />
    </node>
    <node concept="PrWs8" id="3AsHGqaEOhI" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1sEMCm" id="1pfhW8h7fW_" role="bvy1s">
      <property role="1sEMCp" value="editor.html#styles" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="33FxyQ70GUZ">
    <property role="TrG5h" value="QueryFunction_Style" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="EcuMT" value="3525058663444303551" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="5UHFGFk4ozs">
    <property role="TrG5h" value="ConceptEditorHintDeclarationReference" />
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="EcuMT" value="6822301196700715228" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="59ZEGVQrrtd" role="1TKVEi">
      <property role="20kJfa" value="hint" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5944657839026714445" />
      <ref role="20lvS9" node="59ZEGVP3g_u" resolve="ConceptEditorHintDeclaration" />
    </node>
    <node concept="PrWs8" id="50$LP2zubU_" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Fwx_Uqsisi">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="TrG5h" value="ExplicitHintsSpecification" />
    <property role="EcuMT" value="4242538589859161874" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3Fwx_Uqsi_r" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="hints" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="4242538589859162459" />
      <ref role="20lvS9" node="5UHFGFk4ozs" resolve="ConceptEditorHintDeclarationReference" />
    </node>
    <node concept="PrWs8" id="42lfqf_BoGJ" role="PzmwI">
      <ref role="PrY4T" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
  </node>
  <node concept="1TIwiD" id="59ZEGVOSPtB">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="ConceptEditorContextHints" />
    <property role="EcuMT" value="5944657839000868711" />
    <property role="34LRSv" value="Context Hints" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1QGGSu" id="4DKJNVBqp0k" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/editorContextHints.png" />
    </node>
    <node concept="1TJgyj" id="59ZEGVOSRBV" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="hints" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5944657839000877563" />
      <ref role="20lvS9" node="59ZEGVP3g_u" resolve="ConceptEditorHintDeclaration" />
    </node>
    <node concept="PrWs8" id="59ZEGVR0VGY" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="50$LP2zuhSM" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJg8Aa" role="bvy1s">
      <property role="1sEMCp" value="editor-cookbook.html#howtodefinemultipleeditorsforthesameconcept" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="59ZEGVP3g_u">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="TrG5h" value="ConceptEditorHintDeclaration" />
    <property role="EcuMT" value="5944657839003601246" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="59ZEGVP_GL8" role="1TKVEl">
      <property role="TrG5h" value="presentation" />
      <property role="IQ2nx" value="5944657839012629576" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="9m9wQicfXR" role="1TKVEl">
      <property role="TrG5h" value="showInUI" />
      <property role="IQ2nx" value="168363875802087287" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="59ZEGVP3hNl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="50$LP2zuhSS" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
    <node concept="PrWs8" id="1wmCOkk8mk5" role="PzmwI">
      <ref role="PrY4T" to="tpce:hOIDzy1" resolve="IStructureDeprecatable" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lsGCnS0u6x">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="TrG5h" value="QueryHintsSpecification" />
    <property role="34LRSv" value="query" />
    <property role="EcuMT" value="6150987479542522273" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="42lfqf_BoQ7" role="PzmwI">
      <ref role="PrY4T" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
  </node>
  <node concept="PlHQZ" id="42lfqf__buC">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="TrG5h" value="ContextHintsSpecification" />
    <property role="EcuMT" value="4653693564097968040" />
  </node>
  <node concept="1TIwiD" id="4b_Ukfr7MRg">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="TrG5h" value="ConceptEditorHintDeclarationReferenceExpression" />
    <property role="34LRSv" value="concept editor hint/&lt;name&gt;/" />
    <property role="EcuMT" value="4820515453818318288" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="4b_Ukfr7N0F" role="1TKVEi">
      <property role="20kJfa" value="hint" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4820515453818318891" />
      <ref role="20lvS9" node="59ZEGVP3g_u" resolve="ConceptEditorHintDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="66t_lskdtZC">
    <property role="TrG5h" value="EditorComponentDeclarationReference" />
    <property role="EcuMT" value="7033942394256351208" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="66t_lskdu99" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="20kJfa" value="editorComponent" />
      <property role="IQ2ns" value="7033942394256351817" />
      <ref role="20lvS9" node="fGPKFH7" resolve="EditorComponentDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3ath0p6n6ew">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="SelectInEditorOperation" />
    <property role="34LRSv" value="select" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="select node in the editor" />
    <property role="EcuMT" value="3647146066980922272" />
    <ref role="1TJDcQ" node="7MsHfaQE9nT" resolve="AbstractCellIdScopeProviderNodeOperation" />
    <node concept="1TJgyj" id="1GaASKe_7Fu" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="editorContext" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1948540814633499358" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1GaASKeIgJu" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellSelector" />
      <property role="IQ2ns" value="1948540814635895774" />
      <ref role="20lvS9" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    </node>
    <node concept="1TJgyj" id="385mdrZMmPM" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selectionStart" />
      <property role="IQ2ns" value="3604384757217586546" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2lZ9M0NGdI8" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selectionEnd" />
      <property role="IQ2ns" value="2701921320705252232" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1GaASKeIesA">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="AbstractCellSelector" />
    <property role="R5$K7" value="true" />
    <property role="EcuMT" value="1948540814635886374" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="34UidAm8QMj">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="PredefinedSelector" />
    <property role="EcuMT" value="3547227755871693971" />
    <ref role="1TJDcQ" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1TJgyi" id="3Ftr4R6BH17" role="1TKVEl">
      <property role="TrG5h" value="cellId" />
      <property role="IQ2nx" value="2162403111523065396" />
      <ref role="AX2Wp" node="3Ftr4R6BFeh" resolve="PredefinedCellID" />
    </node>
  </node>
  <node concept="1TIwiD" id="1S2pyLby0tg">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="IdSelector" />
    <property role="EcuMT" value="2162403111523059536" />
    <ref role="1TJDcQ" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1TJgyi" id="1S2pyLbUahm" role="1TKVEl">
      <property role="TrG5h" value="cellId" />
      <property role="IQ2nx" value="2162403111529391190" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Un2VKK2uez">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="PropertyDeclarationCellSelector" />
    <property role="EcuMT" value="4510086454722552739" />
    <ref role="1TJDcQ" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1TJgyj" id="3Un2VKL7rkv" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="IQ2ns" value="4510086454740628767" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Un2VKKh3Ca">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="PropertyExpressionCellSelector" />
    <property role="EcuMT" value="4510086454726375946" />
    <ref role="1TJDcQ" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1TJgyj" id="3Un2VKMR8zw" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4510086454769912032" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3K0abI4q_wn">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="EditorCellId" />
    <property role="EcuMT" value="4323500428121233431" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3K0abI6nb_Y" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3K0abI5lJox">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="CellIdReferenceSelector" />
    <property role="EcuMT" value="4323500428136740385" />
    <ref role="1TJDcQ" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1TJgyj" id="3K0abI5lK0C" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="20kJfa" value="id" />
      <property role="IQ2ns" value="4323500428136742952" />
      <ref role="20lvS9" node="3K0abI4q_wn" resolve="EditorCellId" />
    </node>
  </node>
  <node concept="1TIwiD" id="2VNGR_E4AW$">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="StyleClass" />
    <property role="34LRSv" value="style" />
    <property role="EcuMT" value="3383245079137382180" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="VHPC7elSgS" role="PzmwI">
      <ref role="PrY4T" node="7zL4upEo6oo" resolve="IStyleSheetItem" />
    </node>
    <node concept="1TJgyj" id="2VNGR_E4KJo" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dominates" />
      <property role="IQ2ns" value="3383245079137422296" />
      <ref role="20lvS9" node="2airAaRP9mw" resolve="DominatesRecord" />
    </node>
    <node concept="PrWs8" id="7Ur4aGvErVN" role="PzmwI">
      <ref role="PrY4T" node="7Ur4aGvm4uS" resolve="IStyle" />
    </node>
    <node concept="PrWs8" id="4uAR$lvFFr2" role="PzmwI">
      <ref role="PrY4T" node="hJF0Tl2" resolve="IStyleContainer" />
    </node>
    <node concept="PrWs8" id="4uAR$lvFFwH" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="G99PKEU3Jd">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="ReadOnlyStyleClassItem" />
    <property role="34LRSv" value="read-only" />
    <property role="EcuMT" value="795210086017940429" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="1GhovrAzvFz">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="UnapplyStyle" />
    <property role="34LRSv" value="unapply" />
    <property role="EcuMT" value="1950447826686048995" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="1GhovrAzvGr" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1950447826686049051" />
      <ref role="20lvS9" node="7Ur4aGuQXbV" resolve="StyleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="2VNGR_E4KKd">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="StyleClassReference" />
    <property role="EcuMT" value="3383245079137422349" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2VNGR_E4KKe" role="1TKVEi">
      <property role="20kJfa" value="styleClass" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3383245079137422350" />
      <ref role="20lvS9" node="2VNGR_E4AW$" resolve="StyleClass" />
    </node>
  </node>
  <node concept="1TIwiD" id="1GhovrAibiM">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="ApplyStyleClass" />
    <property role="34LRSv" value="apply" />
    <property role="EcuMT" value="1950447826681509042" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="1GhovrAr1CW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1950447826683828796" />
      <ref role="20lvS9" node="7Ur4aGuQXbV" resolve="StyleReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="7Ur4aGvm4uS">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="IStyle" />
    <property role="EcuMT" value="9122903797320402872" />
  </node>
  <node concept="PlHQZ" id="7ARneOGixdd">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="Synchronizeable" />
    <property role="EcuMT" value="8770580973047386957" />
  </node>
  <node concept="1TIwiD" id="7Ur4aGsHrro">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="StyleClassReferenceList" />
    <property role="EcuMT" value="9122903797276194520" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7Ur4aGsHr_p" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="element" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="9122903797276195161" />
      <ref role="20lvS9" node="2VNGR_E4KKd" resolve="StyleClassReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="1cEk0X7fm5O">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="ICellStyle" />
    <property role="EcuMT" value="1381004262292414836" />
    <node concept="1TJgyj" id="1cEk0X7fp1l" role="1TKVEi">
      <property role="20kJfa" value="parentStyleClass" />
      <property role="IQ2ns" value="1381004262292426837" />
      <ref role="20lvS9" node="2VNGR_E4AW$" resolve="StyleClass" />
    </node>
    <node concept="PrWs8" id="1cEk0X7fnAq" role="PrDN$">
      <ref role="PrY4T" node="hJF0Tl2" resolve="IStyleContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Ur4aGwilo0">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="ApplyStyleClassCondition" />
    <property role="34LRSv" value="apply-if" />
    <property role="EcuMT" value="9122903797336200704" />
    <ref role="1TJDcQ" node="1GhovrAibiM" resolve="ApplyStyleClass" />
    <node concept="1TJgyj" id="7Ur4aGwilo2" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="9122903797336200706" />
      <ref role="20lvS9" node="hNnzxoQ" resolve="QueryFunction_Boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="2airAaRP9mw">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="DominatesRecord" />
    <property role="34LRSv" value="dominates over" />
    <property role="EcuMT" value="2491174914159318432" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2airAaRPcca" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dominatesStyleClassList" />
      <property role="IQ2ns" value="2491174914159330058" />
      <ref role="20lvS9" node="7Ur4aGsHrro" resolve="StyleClassReferenceList" />
    </node>
    <node concept="PrWs8" id="7Ov6mJvxrXy" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Ur4aGuQXbV">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="StyleReference" />
    <property role="EcuMT" value="9122903797312246523" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7Ur4aGuQXlY" role="1TKVEi">
      <property role="20kJfa" value="style" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="9122903797312247166" />
      <ref role="20lvS9" node="7Ur4aGvm4uS" resolve="IStyle" />
    </node>
  </node>
  <node concept="PlHQZ" id="7zL4upEo6oo">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="IStyleSheetItem" />
    <property role="EcuMT" value="8714766435263473176" />
    <node concept="PrWs8" id="6y4VDYK1f1q" role="PrDN$">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="1TIwiD" id="5eGiGGGHIBn">
    <property role="TrG5h" value="StyleAttributeReferenceExpression" />
    <property role="34LRSv" value="styleAttribute" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="6029276237631252951" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5eGiGGGHIMM" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="20kJfa" value="attributeDeclaration" />
      <property role="IQ2ns" value="6029276237631253682" />
      <ref role="20lvS9" node="3t4KfBEkQvF" resolve="StyleAttributeDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3t4KfBEkQvF">
    <property role="TrG5h" value="StyleAttributeDeclaration" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="style attribute" />
    <property role="EcuMT" value="3982520150113085419" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3Ftr4R6BH19" role="1TKVEl">
      <property role="TrG5h" value="inherited" />
      <property role="IQ2nx" value="8714766435264464176" />
      <ref role="AX2Wp" node="3Ftr4R6BFer" resolve="StyleAttributeKind" />
    </node>
    <node concept="1TJgyj" id="3t4KfBEkS9I" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="valueType" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3982520150113092206" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="3t4KfBEl5FV" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="defaultValue" />
      <property role="IQ2ns" value="3982520150113147643" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="7zL4upEo8WQ" role="PzmwI">
      <ref role="PrY4T" node="7zL4upEo6oo" resolve="IStyleSheetItem" />
    </node>
    <node concept="PrWs8" id="3t4KfBEkQE6" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3t4KfBESag2">
    <property role="TrG5h" value="AttributeStyleClassItem" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="EcuMT" value="3982520150122341378" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="3t4KfBESag3" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3982520150122341379" />
      <ref role="20lvS9" node="3t4KfBF2waz" resolve="QueryFunction_AttributeStyleParameter" />
    </node>
    <node concept="1TJgyj" id="3t4KfBESbzj" role="1TKVEi">
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3982520150122346707" />
      <ref role="20lvS9" node="3t4KfBEkQvF" resolve="StyleAttributeDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3t4KfBF2waz">
    <property role="TrG5h" value="QueryFunction_AttributeStyleParameter" />
    <property role="EcuMT" value="3982520150125052579" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="38qaX1tinBL">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Constant" />
    <property role="EcuMT" value="3610246225209162225" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="2BgJggC9B9x">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Collection" />
    <property role="EcuMT" value="3013115976261988961" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="3dSn0vIYKGe">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_ReadOnlyModelAccessor" />
    <property role="EcuMT" value="3708815482283559694" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="2J_30EcoVLl">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Component" />
    <property role="EcuMT" value="3162947552742194261" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="CzpafHM8qA">
    <property role="TrG5h" value="StubCellModel_RefCell" />
    <property role="3GE5qa" value="CellModel" />
    <property role="EcuMT" value="730538219795941030" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="CzpafHMdeM">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_RefNode" />
    <property role="EcuMT" value="730538219795960754" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="CzpafHMdm9">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_ReferencePresentation" />
    <property role="EcuMT" value="730538219795961225" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="CzpafHMRzP">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Property" />
    <property role="EcuMT" value="730538219796134133" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="CzpafHMR$y">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_NonEmptyProperty" />
    <property role="EcuMT" value="730538219796134178" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="CzpafHMSVi">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubEditorCellModel" />
    <property role="EcuMT" value="730538219796139730" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="PrWs8" id="CzpafHMSVo" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
    </node>
    <node concept="PrWs8" id="4SdtvCaA6No" role="PzmwI">
      <ref role="PrY4T" to="tpck:8AYOKVCAP5" resolve="IStubForAnotherConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2r8h0yEsD03">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_RefNodeList" />
    <property role="EcuMT" value="2794558372793454595" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_EV">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Image" />
    <property role="EcuMT" value="8104358048506731195" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_EW">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_JComponent" />
    <property role="EcuMT" value="8104358048506731196" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_EX">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Table" />
    <property role="EcuMT" value="8104358048506731197" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_eh">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Alternation" />
    <property role="EcuMT" value="8104358048506729361" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_ef">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_URL" />
    <property role="EcuMT" value="8104358048506729359" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_ee">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_TransactionalProperty" />
    <property role="EcuMT" value="8104358048506729358" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_ed">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_ModelAccess" />
    <property role="EcuMT" value="8104358048506729357" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_ec">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Error" />
    <property role="EcuMT" value="8104358048506729356" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_pk">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Custom" />
    <property role="EcuMT" value="8104358048506730068" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="71StFjlO_pi">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_Block" />
    <property role="EcuMT" value="8104358048506730066" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="301qoOzKuuh">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellActionMap_CanExecuteFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="can execute block" />
    <property role="EcuMT" value="3459162043708467089" />
    <property role="3GE5qa" value="CellActionMap" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="1PvcgmUaLA_" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RDuzOVyaJU">
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="TrG5h" value="QueryFunction_ColorComposit" />
    <property role="34LRSv" value="color for both Default/Dark themes" />
    <property role="EcuMT" value="3308309804690746362" />
    <ref role="1TJDcQ" node="h7ZlJ1A" resolve="QueryFunction_Color" />
    <node concept="PrWs8" id="2RDuzOVyaJV" role="PzmwI">
      <ref role="PrY4T" node="hPiS1BQ" resolve="IQueryFunction_Color" />
    </node>
  </node>
  <node concept="1TIwiD" id="7hmFG5jLZmy">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellModel_NextEditor" />
    <property role="3GE5qa" value="CellModel" />
    <property role="34LRSv" value="next applicable editor" />
    <property role="EcuMT" value="8383079901754291618" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="7hmFG5jLZmz" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="addHints" />
      <property role="IQ2ns" value="8383079901754291619" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
    <node concept="1TJgyj" id="7hmFG5jLZm$" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="removeHints" />
      <property role="IQ2ns" value="8383079901754291620" />
      <ref role="20lvS9" node="42lfqf__buC" resolve="ContextHintsSpecification" />
    </node>
  </node>
  <node concept="1TIwiD" id="54iik1da7Qt">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="embedded block of code" />
    <property role="TrG5h" value="QueryFunction_ModuleAndPath" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="34LRSv" value="module and path" />
    <property role="EcuMT" value="5841812207174188445" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="54iik1dcchH" role="PzmwI">
      <ref role="PrY4T" node="54iik1dcchE" resolve="ImagePathProvider" />
    </node>
    <node concept="asaX9" id="CFBzaakLXe" role="lGtFl">
      <property role="YLQ7P" value="Requires implementors to retrive an SModule instance and to supply it with awkward tuple" />
      <property role="YLPcu" value="2018.2" />
    </node>
    <node concept="t5JxF" id="CFBzaakSMa" role="lGtFl">
      <property role="t5JxN" value="Replace with ModuleImageProvider that doesn't require client to deal with SModule instance" />
      <node concept="t5JxR" id="CFBzaakSMf" role="t5JxU">
        <ref role="t5JxO" node="CFBzaakS6G" resolve="ModuleImageProvider" />
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="54iik1dcchE">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="ImagePathProvider" />
    <property role="EcuMT" value="5841812207174730858" />
  </node>
  <node concept="1TIwiD" id="FyOJSsBpEm">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="784421273959504534" />
    <ref role="1TJDcQ" node="1quYWAD0TKW" resolve="QueryFunction_Menu" />
    <node concept="PrWs8" id="1PvcgmUaZne" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="6tuXwJZljC_">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="StubCellModel_ContextAssistant" />
    <property role="EcuMT" value="7448661365106227749" />
    <ref role="1TJDcQ" node="CzpafHMSVi" resolve="StubEditorCellModel" />
  </node>
  <node concept="1TIwiD" id="2UyyPhAyIHb">
    <property role="3GE5qa" value="CellModel" />
    <property role="TrG5h" value="CellModel_ContextAssistant" />
    <property role="34LRSv" value="context assistant menu placeholder" />
    <property role="EcuMT" value="3360401466585705291" />
    <ref role="1TJDcQ" node="fBEYTCT" resolve="EditorCellModel" />
  </node>
  <node concept="1TIwiD" id="1qY_lWSjTnI">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Execute" />
    <property role="34LRSv" value="execute" />
    <property role="EcuMT" value="1638911550608610798" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="1TIwiD" id="1qY_lWSjTfA">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_Action" />
    <property role="34LRSv" value="action" />
    <property role="EcuMT" value="1638911550608610278" />
    <property role="R4oN_" value="action with custom code" />
    <ref role="1TJDcQ" node="5FrfJRGQJjp" resolve="AbstractOutputConceptContainerTransformationMenuPart" />
    <node concept="PrWs8" id="1quYWAD11ov" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD02Od" resolve="IParameterizableMenuPart" />
    </node>
    <node concept="PrWs8" id="6kJcyCQj9Dc" role="PzmwI">
      <ref role="PrY4T" node="6kJcyCQj9CC" resolve="IExtensibleTransformationMenuPart" />
    </node>
    <node concept="1TJgyj" id="4VZjoGvneVd" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="textFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5692353713941573325" />
      <ref role="20lvS9" node="4VZjoGvneVh" resolve="QueryFunction_TransformationMenu_ActionLabelText" />
    </node>
    <node concept="1TJgyj" id="5oiZ4v5mnE8" role="1TKVEi">
      <property role="IQ2ns" value="6202297022026447496" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="canExecuteFunction" />
      <ref role="20lvS9" node="5DJl6Ftwolg" resolve="QueryFunction_TransformationMenu_Condition" />
    </node>
    <node concept="1TJgyj" id="1qY_lWSjTfD" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="executeFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1638911550608610281" />
      <ref role="20lvS9" node="1qY_lWSjTnI" resolve="QueryFunction_TransformationMenu_Execute" />
    </node>
  </node>
  <node concept="1TIwiD" id="1qY_lWSjJZY">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="1638911550608572414" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6srdxdH8$17">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_Group" />
    <property role="34LRSv" value="group" />
    <property role="R4oN_" value="composite part which can specify variables and applicability condition" />
    <property role="EcuMT" value="7429591467341004871" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="PrWs8" id="6CXbUwx7isK" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="6CXbUwx7i1d" role="1TKVEi">
      <property role="IQ2ns" value="7655327340756279373" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variables" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="h9At2QK" resolve="TransformationMenuVariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="6srdxdH8$1d" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="IQ2ns" value="7429591467341004877" />
      <ref role="20lvS9" node="5DJl6Ftwolg" resolve="QueryFunction_TransformationMenu_Condition" />
    </node>
    <node concept="1TJgyj" id="6srdxdH8$18" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="7429591467341004872" />
      <ref role="20lvS9" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="7l1m754O$tN">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_Super" />
    <property role="34LRSv" value="superconcepts menu" />
    <property role="R4oN_" value="superconcepts menu" />
    <property role="EcuMT" value="8449131619432941427" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
  </node>
  <node concept="1TIwiD" id="4Sf$XywKgZK">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuContribution" />
    <property role="34LRSv" value="Transformation Menu Contribution" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="5624877018228264944" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1QGGSu" id="4DKJNVBqp0o" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/transformationMenuContribution.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD4KpO" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2_Py" resolve="IMenu_Contribution" />
    </node>
    <node concept="PrWs8" id="4Sf$XywKhEr" role="PzmwI">
      <ref role="PrY4T" node="4Sf$XywKhwM" resolve="ITransformationMenu" />
    </node>
    <node concept="1TJgyj" id="5OVd5tVoa2Z" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuReference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6718020819489956031" />
      <ref role="20lvS9" node="3rSzFHWJPbd" resolve="ITransformationMenuReference" />
    </node>
    <node concept="1sEMCm" id="1pfhW8hfZFL" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="4VZjoGvneVh">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_ActionLabelText" />
    <property role="34LRSv" value="query" />
    <property role="R4oN_" value="a block of code" />
    <property role="EcuMT" value="5692353713941573329" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="PlHQZ" id="4Sf$XywKhwM">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="ITransformationMenu" />
    <property role="EcuMT" value="5624877018228267058" />
    <node concept="PrWs8" id="1quYWAD4B6E" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD18x6" resolve="IMenu" />
    </node>
    <node concept="1TJgyj" id="1qY_lWSjJZW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sections" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1638911550608572412" />
      <ref role="20lvS9" node="6V0bp$oHeYW" resolve="TransformationMenuSection" />
    </node>
    <node concept="1TJgyj" id="1KUls24SVHE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methodDeclaration" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="2034032467062799210" />
      <ref role="20lvS9" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
    </node>
    <node concept="PrWs8" id="1KUls24TcI4" role="PrDN$">
      <ref role="PrY4T" to="tp4f:hyWqMFP" resolve="IClassifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="1qY_lWSjJNx">
    <property role="TrG5h" value="TransformationMenu_Default" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Transformation Menu (Default)" />
    <property role="EcuMT" value="1638911550608571617" />
    <ref role="1TJDcQ" node="4Sf$XywF3UU" resolve="TransformationMenu" />
    <node concept="1QGGSu" id="4DKJNVBqDI0" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/transformationMenu.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD3bV_" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD18L7" resolve="IMenu_Default" />
    </node>
    <node concept="1sEMCm" id="1pfhW8hfHGR" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="asaX9" id="1TV1N6EwvZU" role="lGtFl" />
    <node concept="t5JxF" id="1TV1N6EwvZW" role="lGtFl">
      <property role="t5JxN" value="Named and Default menus are now merged into TransformationMenuImpl and their specific concepts will be removed" />
    </node>
  </node>
  <node concept="1TIwiD" id="5OVd5tVffW9">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuReference_Named" />
    <property role="EcuMT" value="6718020819487620873" />
    <node concept="PrWs8" id="1quYWAD4TCS" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2$6Q" resolve="IMenuReference_Named" />
    </node>
    <node concept="PrWs8" id="3rSzFHWJPyq" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWJPbd" resolve="ITransformationMenuReference" />
    </node>
    <node concept="1TJgyj" id="5OVd5tVffWa" role="1TKVEi">
      <property role="20kJfa" value="menu" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6718020819487620874" />
      <ref role="20lvS9" node="4Sf$XywF3UU" resolve="TransformationMenu" />
    </node>
    <node concept="RPilO" id="47y0FrqaLdc" role="lGtFl">
      <ref role="RPilL" node="5OVd5tVffWa" resolve="menu" />
      <node concept="ROjv2" id="47y0FrqaLdd" role="ROhUF">
        <property role="1W_73P" value="named menu " />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5OVd5tVffWc">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuReference_Default" />
    <property role="EcuMT" value="6718020819487620876" />
    <node concept="PrWs8" id="1quYWAD52bF" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2$71" resolve="IMenuReference_Default" />
    </node>
    <node concept="PrWs8" id="3rSzFHWJPqy" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWJPbd" resolve="ITransformationMenuReference" />
    </node>
    <node concept="RPilO" id="47y0FrqaLdh" role="lGtFl">
      <ref role="RPilL" node="1quYWAD543u" resolve="concept" />
      <node concept="ROjv2" id="47y0FrqaLdi" role="ROhUF">
        <property role="1W_73P" value="default menu for " />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="FyOJSsBmJy">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_IncludeMenu" />
    <property role="34LRSv" value="include" />
    <property role="R4oN_" value="include another menu" />
    <property role="EcuMT" value="784421273959492578" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="PrWs8" id="2mcvySy2piN" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="FyOJSsBmJY" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeFunction" />
      <property role="IQ2ns" value="784421273959492606" />
      <ref role="20lvS9" node="FyOJSsBmSI" resolve="QueryFunction_TransformationMenu_TargetNode" />
    </node>
    <node concept="1TJgyj" id="5OVd5tVfRV_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuReference" />
      <property role="IQ2ns" value="6718020819487784677" />
      <ref role="20lvS9" node="3rSzFHWJPbd" resolve="ITransformationMenuReference" />
    </node>
    <node concept="1TJgyj" id="1C09V4pvRcP" role="1TKVEi">
      <property role="IQ2ns" value="1873541086576603957" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="location" />
      <ref role="20lvS9" node="7L5lpRJH$EA" resolve="TransformationLocation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Sf$XywF4VC">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenu_Named" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Transformation Menu (Named)" />
    <property role="EcuMT" value="5624877018226904808" />
    <ref role="1TJDcQ" node="4Sf$XywF3UU" resolve="TransformationMenu" />
    <node concept="1QGGSu" id="4DKJNVBqDQu" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/transformationMenu.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD3$WZ" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD18L6" resolve="IMenu_Named" />
    </node>
    <node concept="1sEMCm" id="1pfhW8hfHGV" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="asaX9" id="3f5kCAcOqEI" role="lGtFl" />
    <node concept="t5JxF" id="3f5kCAcOqEK" role="lGtFl">
      <property role="t5JxN" value="Named and Default menus are now merged into TransformationMenuImpl and their specific concepts will be removed" />
    </node>
  </node>
  <node concept="1TIwiD" id="3xbeilB7DBJ">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_SubMenu" />
    <property role="34LRSv" value="submenu" />
    <property role="EcuMT" value="4056398722183895535" />
    <property role="R4oN_" value="submenu with further parts" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="1TJgyj" id="4VZjoGvnt2N" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="textFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5692353713941631155" />
      <ref role="20lvS9" node="291CjQFjVkc" resolve="QueryFunction_TransformationMenu_Text" />
    </node>
    <node concept="1TJgyj" id="3xbeilB7DC2" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="items" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="4056398722183895554" />
      <ref role="20lvS9" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Sf$XywF3UU">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenu" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="5624877018226900666" />
    <property role="34LRSv" value="Transformation menu" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1QGGSu" id="4DKJNVBqp0m" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/transformationMenu.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD4B6X" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD18Lj" resolve="IMenu_Concept" />
    </node>
    <node concept="PrWs8" id="4Sf$XywKhwV" role="PzmwI">
      <ref role="PrY4T" node="4Sf$XywKhwM" resolve="ITransformationMenu" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJ9HLc" role="bvy1s">
      <property role="1sEMCp" value="/transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="1oFY2ohYO0M">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunctionParameter_TransformationMenu_node" />
    <property role="34LRSv" value="node" />
    <property role="R4oN_" value="the node that the menu is being shown for" />
    <property role="EcuMT" value="1597643335227097138" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="PlHQZ" id="7_cYeEu4k3N">
    <property role="TrG5h" value="INodeProvider" />
    <property role="3GE5qa" value="QueryExpression" />
    <property role="EcuMT" value="8740634663377256691" />
    <node concept="PrWs8" id="axxf7pcgPh" role="PrDN$">
      <ref role="PrY4T" node="axxf7pcgPe" resolve="IContextVariableProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_cYeEu4k3O">
    <property role="3GE5qa" value="QueryExpression" />
    <property role="TrG5h" value="ContextVariable_Node" />
    <property role="34LRSv" value="node" />
    <property role="R4oN_" value="node" />
    <property role="EcuMT" value="8740634663377256692" />
    <ref role="1TJDcQ" node="7_cYeEu4pYp" resolve="ContextVariable" />
  </node>
  <node concept="PlHQZ" id="7_cYeEu4m3k">
    <property role="3GE5qa" value="QueryExpression" />
    <property role="TrG5h" value="IEditorContextProvider" />
    <property role="EcuMT" value="8740634663377264852" />
    <node concept="PrWs8" id="axxf7pcgPf" role="PrDN$">
      <ref role="PrY4T" node="axxf7pcgPe" resolve="IContextVariableProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="7_cYeEu4m3l">
    <property role="3GE5qa" value="QueryExpression" />
    <property role="TrG5h" value="ContextVariable_EditorContext" />
    <property role="34LRSv" value="editorContext" />
    <property role="EcuMT" value="8740634663377264853" />
    <ref role="1TJDcQ" node="7_cYeEu4pYp" resolve="ContextVariable" />
  </node>
  <node concept="1TIwiD" id="7_cYeEu4pYp">
    <property role="3GE5qa" value="QueryExpression" />
    <property role="TrG5h" value="ContextVariable" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="EcuMT" value="8740634663377280921" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="PlHQZ" id="657q32pRmdh">
    <property role="TrG5h" value="IContextProvider" />
    <property role="3GE5qa" value="QueryExpression" />
    <property role="EcuMT" value="7009685902974608209" />
    <node concept="PrWs8" id="4Fjf6xMQPK4" role="PrDN$">
      <ref role="PrY4T" node="axxf7pcgPe" resolve="IContextVariableProvider" />
    </node>
  </node>
  <node concept="PlHQZ" id="axxf7pcgPe">
    <property role="3GE5qa" value="QueryExpression" />
    <property role="TrG5h" value="IContextVariableProvider" />
    <property role="EcuMT" value="189578833592126798" />
  </node>
  <node concept="1TIwiD" id="FyOJSsBmSI">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_TargetNode" />
    <property role="34LRSv" value="targetNode" />
    <property role="EcuMT" value="784421273959493166" />
    <ref role="1TJDcQ" node="FyOJSsBpEm" resolve="QueryFunction_TransformationMenu" />
  </node>
  <node concept="1TIwiD" id="5DJl6Ftwolg">
    <property role="EcuMT" value="6516520003787916624" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Condition" />
    <property role="34LRSv" value="condition" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="1TIwiD" id="3EZUZhmYcnz">
    <property role="EcuMT" value="4233361609415247331" />
    <property role="3GE5qa" value="Menu.Transformation.Parameterized" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Parameter" />
    <ref role="1TJDcQ" node="FyOJSsBpEm" resolve="QueryFunction_TransformationMenu" />
  </node>
  <node concept="1TIwiD" id="6V0bp$oHeYW">
    <property role="EcuMT" value="7980428675268276156" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="TrG5h" value="TransformationMenuSection" />
    <property role="34LRSv" value="section" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6V0bp$oHeYX" role="1TKVEi">
      <property role="IQ2ns" value="7980428675268276157" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="locations" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <ref role="20lvS9" node="7L5lpRJH$EA" resolve="TransformationLocation" />
    </node>
    <node concept="1TJgyj" id="6V0bp$oHeYZ" role="1TKVEi">
      <property role="IQ2ns" value="7980428675268276159" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="30NnNOohrRc">
    <property role="EcuMT" value="3473224453637651916" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="TrG5h" value="TransformationLocation_SideTransform_PlaceInCellHolder" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3Ftr4R6BH1b" role="1TKVEl">
      <property role="TrG5h" value="placeInCell" />
      <property role="IQ2nx" value="3473224453637651917" />
      <ref role="AX2Wp" node="3Ftr4R6BFev" resolve="TransformationLocation_SideTransform_PlaceInCell" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EZUZhmYaO_">
    <property role="EcuMT" value="4233361609415240997" />
    <property role="3GE5qa" value="Menu.Transformation.Parameterized" />
    <property role="TrG5h" value="TransformationMenuPart_Parameterized" />
    <property role="34LRSv" value="parameterized" />
    <property role="R4oN_" value="parameterized menu part" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="PrWs8" id="1quYWAD10ul" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD02Of" resolve="IMenuPartParameterized" />
    </node>
    <node concept="PrWs8" id="3mnwiBI98nJ" role="PzmwI">
      <ref role="PrY4T" node="3mnwiBI8ZDQ" resolve="IMenuPartWithOutputConcept" />
    </node>
    <node concept="1TJgyj" id="3EZUZhmYaOC" role="1TKVEi">
      <property role="IQ2ns" value="4233361609415241000" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameterQuery" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="3EZUZhmYcnz" resolve="QueryFunction_TransformationMenu_Parameter" />
    </node>
    <node concept="1TJgyj" id="3EZUZhmYaOA" role="1TKVEi">
      <property role="IQ2ns" value="4233361609415240998" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="part" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="2wNq5j$KpC6">
    <property role="EcuMT" value="2896773699153795590" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="TrG5h" value="TransformationLocation_SideTransform" />
    <property role="34LRSv" value="side transform" />
    <property role="R4oN_" value="bound of the cell" />
    <ref role="1TJDcQ" node="7L5lpRJH$EA" resolve="TransformationLocation" />
    <node concept="1TJgyj" id="30NnNOohrRf" role="1TKVEi">
      <property role="IQ2ns" value="3473224453637651919" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="placeInCell" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <ref role="20lvS9" node="30NnNOohrRc" resolve="TransformationLocation_SideTransform_PlaceInCellHolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="7L5lpRJILFa">
    <property role="3GE5qa" value="Menu.Transformation.SideTransform" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Node" />
    <property role="34LRSv" value="query" />
    <property role="R4oN_" value="a block of code" />
    <property role="EcuMT" value="8954657570916342474" />
    <ref role="1TJDcQ" node="FyOJSsBpEm" resolve="QueryFunction_TransformationMenu" />
  </node>
  <node concept="1TIwiD" id="7L5lpRJH$EA">
    <property role="EcuMT" value="8954657570916027046" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="TrG5h" value="TransformationLocation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7L5lpRJH$E_">
    <property role="EcuMT" value="8954657570916027045" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationFeature" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="1A4kJjlVAph">
    <property role="EcuMT" value="1838685759388673617" />
    <property role="3GE5qa" value="Menu.Transformation.SideTransform" />
    <property role="TrG5h" value="TransformationFeature_Icon" />
    <property role="34LRSv" value="icon" />
    <ref role="1TJDcQ" node="7L5lpRJH$E_" resolve="TransformationFeature" />
    <node concept="1TJgyj" id="1A4kJjlVDlT" role="1TKVEi">
      <property role="IQ2ns" value="1838685759388685689" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="1MWbOI3$5oV" resolve="QueryFunction_TransformationMenu_Icon" />
    </node>
  </node>
  <node concept="1TIwiD" id="1A4kJjlVDm7">
    <property role="EcuMT" value="1838685759388685703" />
    <property role="3GE5qa" value="Menu.Transformation.SideTransform" />
    <property role="TrG5h" value="TransformationFeature_DescriptionText" />
    <property role="34LRSv" value="description text" />
    <ref role="1TJDcQ" node="7L5lpRJH$E_" resolve="TransformationFeature" />
    <node concept="1TJgyj" id="1A4kJjlVDm8" role="1TKVEi">
      <property role="IQ2ns" value="1838685759388685704" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="1A4kJjlVEvx" resolve="QueryFunction_TransformationMenu_DescriptionText" />
    </node>
  </node>
  <node concept="1TIwiD" id="291CjQFjVkc">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Text" />
    <property role="34LRSv" value="query" />
    <property role="R4oN_" value="a block of code" />
    <property role="EcuMT" value="2468431357014947084" />
    <ref role="1TJDcQ" node="FyOJSsBpEm" resolve="QueryFunction_TransformationMenu" />
  </node>
  <node concept="1TIwiD" id="6VgTvK0iUgM">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_Placeholder" />
    <property role="EcuMT" value="7985135009827365938" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
  </node>
  <node concept="PlHQZ" id="6kJcyCQj9CC">
    <property role="EcuMT" value="7291101478617127464" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="IExtensibleTransformationMenuPart" />
    <node concept="1TJgyj" id="7L5lpRJINkn" role="1TKVEi">
      <property role="IQ2ns" value="8954657570916349207" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="7L5lpRJH$E_" resolve="TransformationFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="1A4kJjlVEvM">
    <property role="EcuMT" value="1838685759388690418" />
    <property role="3GE5qa" value="Menu.Transformation.SideTransform" />
    <property role="TrG5h" value="TransformationFeature_ActionType" />
    <property role="34LRSv" value="action type" />
    <ref role="1TJDcQ" node="7L5lpRJH$E_" resolve="TransformationFeature" />
    <node concept="1TJgyj" id="1A4kJjlVEvN" role="1TKVEi">
      <property role="IQ2ns" value="1838685759388690419" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="7L5lpRJILFa" resolve="QueryFunction_TransformationMenu_Node" />
    </node>
  </node>
  <node concept="1TIwiD" id="1A4kJjlVEvx">
    <property role="3GE5qa" value="Menu.Transformation.SideTransform" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_DescriptionText" />
    <property role="34LRSv" value="query" />
    <property role="R4oN_" value="a block of code" />
    <property role="EcuMT" value="1838685759388690401" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="1TIwiD" id="6kJcyCQ_LoK">
    <property role="EcuMT" value="7291101478622008880" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Extensible" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="FyOJSsBpEm" resolve="QueryFunction_TransformationMenu" />
  </node>
  <node concept="1TIwiD" id="7L5lpRJOAJb">
    <property role="EcuMT" value="8954657570917870539" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="TrG5h" value="TransformationLocation_ContextAssistant" />
    <property role="34LRSv" value="context assistant" />
    <property role="R4oN_" value="in-editor context assistant" />
    <ref role="1TJDcQ" node="7L5lpRJH$EA" resolve="TransformationLocation" />
  </node>
  <node concept="PlHQZ" id="1quYWAD18Lj">
    <property role="EcuMT" value="1630016958697344083" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenu_Concept" />
    <node concept="1TJgyj" id="5HVj4Ph44AO" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6591946374543067572" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="1quYWAD18Lk" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD18x6" resolve="IMenu" />
    </node>
    <node concept="PrWs8" id="1quYWAD4LhT" role="PrDN$">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="1quYWAD4M96" role="PrDN$">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="1TJgyj" id="5cAVTFho83z" role="1TKVEi">
      <property role="IQ2ns" value="5991739802479788259" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <ref role="20lvS9" node="5cAVTFho728" resolve="MenuType" />
    </node>
  </node>
  <node concept="1TIwiD" id="yarZQNHfz6">
    <property role="EcuMT" value="615427434521884870" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Subconcepts" />
    <property role="34LRSv" value="subconcepts menu" />
    <property role="R4oN_" value="includes default substitute menu of all the direct subconcepts" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    <node concept="1TJgyj" id="6xArtG41BPw" role="1TKVEi">
      <property role="IQ2ns" value="7522821015001791840" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="filter" />
      <ref role="20lvS9" node="6xArtG40Wbc" resolve="QueryFunction_SubstituteMenu_FilterConcepts" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD18L7">
    <property role="EcuMT" value="1630016958697344071" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenu_Default" />
    <node concept="PrWs8" id="1quYWAD18Lx" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD18Lj" resolve="IMenu_Concept" />
    </node>
    <node concept="asaX9" id="3f5kCAcOqES" role="lGtFl" />
    <node concept="t5JxF" id="3f5kCAcOqEU" role="lGtFl">
      <property role="t5JxN" value="Named and Default menus are now merged and their specific concepts will be removed" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD18L6">
    <property role="EcuMT" value="1630016958697344070" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenu_Named" />
    <node concept="PrWs8" id="1quYWAD19HF" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD18Lj" resolve="IMenu_Concept" />
    </node>
    <node concept="asaX9" id="3f5kCAcOqEX" role="lGtFl" />
    <node concept="t5JxF" id="3f5kCAcOqEZ" role="lGtFl">
      <property role="t5JxN" value="Named and Default menus are now merged and their specific concepts will be removed" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD18x6">
    <property role="EcuMT" value="1630016958697343046" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenu" />
    <node concept="PrWs8" id="5PF8FggWUcE" role="PrDN$">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mC_uHG0Nxt">
    <property role="EcuMT" value="8478191136886962269" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature_Icon" />
    <property role="34LRSv" value="icon" />
    <ref role="1TJDcQ" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    <node concept="1TJgyj" id="7mC_uHG0Nxu" role="1TKVEi">
      <property role="IQ2ns" value="8478191136886962270" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="7mC_uHG0PRU" resolve="QueryFunction_SubstituteMenu_Icon" />
    </node>
  </node>
  <node concept="PlHQZ" id="6VAVyI4xoxZ">
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="IOutputConceptSubstituteMenuPart" />
    <property role="EcuMT" value="7991336459489871999" />
    <node concept="1TJgyj" id="6VAVyI4xoy9" role="1TKVEi">
      <property role="20kJfa" value="outputConcept" />
      <property role="IQ2ns" value="7991336459489872009" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mC_uHFK4Z4">
    <property role="EcuMT" value="8478191136882577348" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_CreatedNode" />
    <property role="34LRSv" value="createdNode" />
    <property role="R4oN_" value="node&lt;&gt; returned from create child node block" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="hLJ7k9d">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="containment link for where result of this substitution will be saved or null if LinkDeclaration was not determined" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_Link" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="link" />
    <property role="EcuMT" value="1221634900557" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="1quYWAD0TKW">
    <property role="EcuMT" value="1630016958697282620" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="QueryFunction_Menu" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="PlHQZ" id="hqh421K">
    <property role="TrG5h" value="ISubstituteMenu_String" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="EcuMT" value="1196434661488" />
  </node>
  <node concept="1TIwiD" id="1quYWAD0UN3">
    <property role="EcuMT" value="1630016958697286851" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="QueryFunctionParameter_parameterObject" />
    <property role="34LRSv" value="parameterObject" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="7u5_96XhKbP">
    <property role="EcuMT" value="8612453216082658037" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu" />
    <ref role="1TJDcQ" node="1quYWAD0TKW" resolve="QueryFunction_Menu" />
    <node concept="PrWs8" id="1PvcgmUaZ9G" role="PzmwI">
      <ref role="PrY4T" node="1PvcgmUaKhb" resolve="IEditorContextAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mC_uHFK4WE">
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Select" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="do selection" />
    <property role="EcuMT" value="8478191136882577194" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
  </node>
  <node concept="1TIwiD" id="6n_hLaFlw4b">
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Action" />
    <property role="34LRSv" value="substitute action" />
    <property role="EcuMT" value="7342352913006985483" />
    <property role="R4oN_" value="customizable action" />
    <ref role="1TJDcQ" node="39Jlgden1IE" resolve="AbstractOutputConceptContainerSubstituteMenuPart" />
    <node concept="1TJgyj" id="7u5_96XhUqi" role="1TKVEi">
      <property role="IQ2ns" value="8612453216082699922" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="20kJfa" value="substituteHandler" />
      <ref role="20lvS9" node="h8ucgLt" resolve="QueryFunction_SubstituteMenu_Substitute" />
    </node>
    <node concept="PrWs8" id="1quYWAD11G8" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD02Od" resolve="IParameterizableMenuPart" />
    </node>
    <node concept="PrWs8" id="7mC_uHFNIAy" role="PzmwI">
      <ref role="PrY4T" node="7mC_uHFNIAt" resolve="IExtensibleSubstituteMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="6n_hLaFlw4s">
    <property role="EcuMT" value="7342352913006985500" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="TrG5h" value="TransformationLocation_Completion" />
    <property role="R4oN_" value="center of the cell" />
    <property role="34LRSv" value="completion" />
    <ref role="1TJDcQ" node="7L5lpRJH$EA" resolve="TransformationLocation" />
  </node>
  <node concept="1TIwiD" id="1J2KHYpAw1S">
    <property role="EcuMT" value="2000375450116423800" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenu" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Substitute Menu" />
    <node concept="1QGGSu" id="4DKJNVBqp0q" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/substituteMenu.png" />
    </node>
    <node concept="PrWs8" id="1quYWADmNOE" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD18Lj" resolve="IMenu_Concept" />
    </node>
    <node concept="PrWs8" id="1quYWADmPGg" role="PzmwI">
      <ref role="PrY4T" node="1J2KHYpABsB" resolve="ISubstituteMenu" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJ9HLa" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="h6sCaJPi0t">
    <property role="EcuMT" value="308059530142752797" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Parameterized" />
    <property role="34LRSv" value="parameterized" />
    <property role="R4oN_" value="parameterized menu part" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    <node concept="1TJgyj" id="7gIXFjgNa3d" role="1TKVEi">
      <property role="IQ2ns" value="8371900013785948365" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameterQuery" />
      <ref role="20lvS9" node="7gIXFjgNa3h" resolve="QueryFunction_SubstituteMenu_Parameter" />
    </node>
    <node concept="1TJgyj" id="7gIXFjgNa37" role="1TKVEi">
      <property role="IQ2ns" value="8371900013785948359" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="part" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    </node>
    <node concept="PrWs8" id="1quYWAD119q" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD02Of" resolve="IMenuPartParameterized" />
    </node>
    <node concept="PrWs8" id="3mnwiBI91Hv" role="PzmwI">
      <ref role="PrY4T" node="3mnwiBI8ZDQ" resolve="IMenuPartWithOutputConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="Cy80HmHnAg">
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_IncludeMenu" />
    <property role="34LRSv" value="include" />
    <property role="R4oN_" value="include another substitute menu" />
    <property role="EcuMT" value="730181322658904464" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    <node concept="1TJgyj" id="Cy80HmHnAj" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuReference" />
      <property role="IQ2ns" value="730181322658904467" />
      <ref role="20lvS9" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
    <node concept="PrWs8" id="3rSzFHWOf6z" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWOd_m" resolve="IIncludeSubstituteMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="5i0CB70OtWu">
    <property role="EcuMT" value="6089045305654894366" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuReference_Default" />
    <property role="34LRSv" value="default substitute menu" />
    <node concept="PrWs8" id="1quYWAD5iDZ" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2$71" resolve="IMenuReference_Default" />
    </node>
    <node concept="PrWs8" id="3rSzFHWLq98" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="5i0CB70OtWv">
    <property role="EcuMT" value="6089045305654894367" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuReference_Named" />
    <property role="34LRSv" value="named substitute menu" />
    <node concept="1TJgyj" id="5i0CB70OE9Y" role="1TKVEi">
      <property role="20kJfa" value="menu" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6089045305654944382" />
      <ref role="20lvS9" node="1J2KHYpAw1S" resolve="SubstituteMenu" />
    </node>
    <node concept="PrWs8" id="1quYWAD5iG9" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2$6Q" resolve="IMenuReference_Named" />
    </node>
    <node concept="PrWs8" id="3rSzFHWLq94" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD2_Py">
    <property role="EcuMT" value="1630016958697725282" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenu_Contribution" />
    <node concept="PrWs8" id="1quYWAD2DuJ" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD18x6" resolve="IMenu" />
    </node>
    <node concept="PrWs8" id="1quYWAD4Kq0" role="PrDN$">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Djcm3ms60c">
    <property role="EcuMT" value="1896914160037421068" />
    <property role="3GE5qa" value="Menu.Transformation.IncludeSubstitute" />
    <property role="TrG5h" value="TransformationMenuPart_WrapSubstituteMenu" />
    <property role="34LRSv" value="wrap substitute menu" />
    <property role="R4oN_" value="wraps the specified substitute menu and customizes its behavior" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="1TJgyj" id="1Djcm3ms60d" role="1TKVEi">
      <property role="IQ2ns" value="1896914160037421069" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuReference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
    <node concept="1TJgyj" id="41ZU75WoKYQ" role="1TKVEi">
      <property role="IQ2ns" value="4647688914585456566" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="targetNode" />
      <ref role="20lvS9" node="7L5lpRJILFa" resolve="QueryFunction_TransformationMenu_Node" />
    </node>
    <node concept="1TJgyj" id="1Djcm3ms6CX" role="1TKVEi">
      <property role="IQ2ns" value="1896914160037423677" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="handler" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="1Djcm3ms6D0" resolve="QueryFunction_TransformationMenu_WrapperHandler" />
    </node>
    <node concept="PrWs8" id="1Djcm3ms60f" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWOd_m" resolve="IIncludeSubstituteMenuPart" />
    </node>
    <node concept="PrWs8" id="1Djcm3ms9SV" role="PzmwI">
      <ref role="PrY4T" node="6kJcyCQj9CC" resolve="IExtensibleTransformationMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="6DRYsxO8ara">
    <property role="EcuMT" value="7671875129586001610" />
    <property role="3GE5qa" value="Menu.Transformation.IncludeSubstitute" />
    <property role="TrG5h" value="TransformationMenuPart_IncludeSubstituteMenu" />
    <property role="34LRSv" value="include substitute menu" />
    <property role="R4oN_" value="includes specified substitute menu" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="1TJgyj" id="5i0CB70W8ni" role="1TKVEi">
      <property role="IQ2ns" value="6089045305656903122" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuReference" />
      <ref role="20lvS9" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
    <node concept="1TJgyj" id="5i0CB70W8mR" role="1TKVEi">
      <property role="IQ2ns" value="6089045305656903095" />
      <property role="20kJfa" value="link" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="3rSzFHWOeFf" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWOd_m" resolve="IIncludeSubstituteMenuPart" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD02Of">
    <property role="EcuMT" value="1630016958697057551" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenuPartParameterized" />
    <node concept="1TJgyj" id="1quYWAD02Og" role="1TKVEi">
      <property role="IQ2ns" value="1630016958697057552" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameterType" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD02Od">
    <property role="EcuMT" value="1630016958697057549" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IParameterizableMenuPart" />
  </node>
  <node concept="1TIwiD" id="5N5pDMJOs01">
    <property role="EcuMT" value="6684862045052059649" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_WrapperHandler" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
  </node>
  <node concept="PlHQZ" id="1quYWAD2$71">
    <property role="EcuMT" value="1630016958697718209" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenuReference_Default" />
    <node concept="1TJgyj" id="1quYWAD543u" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1630016958698373342" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="1quYWAD2$72" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD2$6N" resolve="IMenuReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="4HcAOwD$HKO">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="currentTargetNode" />
    <property role="EcuMT" value="5425882385312046132" />
    <property role="R4oN_" value="node&lt;&gt; to substitute" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="4BQO_Wi42wm">
    <property role="EcuMT" value="5329678514806335510" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Concepts" />
    <property role="34LRSv" value="concepts list" />
    <property role="R4oN_" value="collection of simple actions for specified concepts" />
    <ref role="1TJDcQ" node="39Jlgden1IE" resolve="AbstractOutputConceptContainerSubstituteMenuPart" />
    <node concept="1TJgyj" id="2uBUyS1moKc" role="1TKVEi">
      <property role="IQ2ns" value="2857509971901910028" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="concepts" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="2uBUyS1moaN" resolve="QueryFunction_SubstituteMenu_Concepts" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mC_uHG0PRU">
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Icon" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="icon" />
    <property role="EcuMT" value="8478191136886971898" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
  </node>
  <node concept="1TIwiD" id="gNbvxuM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="the parent node&lt;&gt; of the node&lt;&gt; to substitute" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_ParentNode" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="parentNode" />
    <property role="EcuMT" value="1154465273778" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="PlHQZ" id="3rSzFHWOd_m">
    <property role="EcuMT" value="3961072808176441686" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IIncludeSubstituteMenuPart" />
    <node concept="PrWs8" id="3rSzFHWOd_n" role="PrDN$">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="5i0CB70OkZK">
    <property role="EcuMT" value="6089045305654857712" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuReference" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1quYWAD5iGb" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2$6N" resolve="IMenuReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD2$6Q">
    <property role="EcuMT" value="1630016958697718198" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenuReference_Named" />
    <node concept="PrWs8" id="1quYWAD2$6Z" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD2$6N" resolve="IMenuReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="1quYWAD2$6N">
    <property role="EcuMT" value="1630016958697718195" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenuReference" />
  </node>
  <node concept="1TIwiD" id="7Nx4mSUbuTq">
    <property role="EcuMT" value="8998492695583125082" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature_MatchingText" />
    <property role="34LRSv" value="matching text" />
    <ref role="1TJDcQ" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    <node concept="1TJgyj" id="7Nx4mSUbvUs" role="1TKVEi">
      <property role="IQ2ns" value="8998492695583129244" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="hqh421K" resolve="ISubstituteMenu_String" />
    </node>
  </node>
  <node concept="PlHQZ" id="7mC_uHFNIAt">
    <property role="EcuMT" value="8478191136883534237" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="IExtensibleSubstituteMenuPart" />
    <node concept="1TJgyj" id="7mC_uHFNIAu" role="1TKVEi">
      <property role="IQ2ns" value="8478191136883534238" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="hqh3Z8b">
    <property role="TrG5h" value="SubstituteMenu_SimpleString" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="EcuMT" value="1196434649611" />
    <property role="34LRSv" value="simple" />
    <property role="R4oN_" value="text literal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="hqh4Kkn" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <property role="IQ2nx" value="1196434851095" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="7u5_96XhUQw" role="PzmwI">
      <ref role="PrY4T" node="hqh421K" resolve="ISubstituteMenu_String" />
    </node>
    <node concept="PrWs8" id="3J8eUL7l11p" role="PzmwI">
      <ref role="PrY4T" node="3J8eUL7l10E" resolve="ISubstituteMenu_RefDescription" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Nx4mSUbw67">
    <property role="EcuMT" value="8998492695583129991" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature_CanSubstitute" />
    <property role="34LRSv" value="can substitute" />
    <ref role="1TJDcQ" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    <node concept="1TJgyj" id="7Nx4mSUbw68" role="1TKVEi">
      <property role="IQ2ns" value="8998492695583129992" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="7Nx4mSUbr7x" resolve="QueryFunction_SubstituteMenu_CanSubstitute" />
    </node>
  </node>
  <node concept="PlHQZ" id="3rSzFHWJPbd">
    <property role="EcuMT" value="3961072808175293133" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="ITransformationMenuReference" />
    <node concept="PrWs8" id="3rSzFHWJPbe" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD2$6N" resolve="IMenuReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Djcm3ms9XU">
    <property role="EcuMT" value="1896914160037437306" />
    <property role="3GE5qa" value="Menu.Transformation.IncludeSubstitute" />
    <property role="TrG5h" value="QueryFunctionParameter_TransformationMenu_CreatedNode" />
    <property role="34LRSv" value="createdNode" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="7Nx4mSUbr7x">
    <property role="EcuMT" value="8998492695583109601" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_CanSubstitute" />
    <property role="34LRSv" value="can substitute" />
    <property role="R4oN_" value="return false if this action should be excluded from the substitute menu" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
  </node>
  <node concept="1TIwiD" id="2uBUyS1moaN">
    <property role="EcuMT" value="2857509971901907635" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Concepts" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
  </node>
  <node concept="1TIwiD" id="7gIXFjgNa3h">
    <property role="EcuMT" value="8371900013785948369" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Parameter" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
  </node>
  <node concept="1TIwiD" id="n0c53aH6QM">
    <property role="EcuMT" value="414384289274424754" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_AddConcept" />
    <property role="34LRSv" value="simple concept action" />
    <property role="R4oN_" value="creates a new instance of the specified concept" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    <node concept="1TJgyj" id="AIV2Sdu1tN" role="1TKVEi">
      <property role="IQ2ns" value="697754674827630451" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="3mnwiBI95l3" role="PzmwI">
      <ref role="PrY4T" node="3mnwiBI8ZDQ" resolve="IMenuPartWithOutputConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fw9B$5YUrX">
    <property role="EcuMT" value="3738029991950788349" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenu_Named" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Substitute Menu (Named)" />
    <ref role="1TJDcQ" node="1J2KHYpAw1S" resolve="SubstituteMenu" />
    <node concept="1QGGSu" id="4DKJNVBqDQ$" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/substituteMenu.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD3Ec7" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD18L6" resolve="IMenu_Named" />
    </node>
    <node concept="1sEMCm" id="1pfhW8hfHGT" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="asaX9" id="3f5kCAcOqEz" role="lGtFl" />
    <node concept="t5JxF" id="3f5kCAcOqEC" role="lGtFl">
      <property role="t5JxN" value="Named and Default menus are now merged into SubstituteMenuImpl and their specific concepts will be removed" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Nx4mSUbw5N">
    <property role="EcuMT" value="8998492695583129971" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature_DescriptionText" />
    <property role="34LRSv" value="description text" />
    <ref role="1TJDcQ" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    <node concept="1TJgyj" id="7Nx4mSUbw5O" role="1TKVEi">
      <property role="IQ2ns" value="8998492695583129972" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="hqh421K" resolve="ISubstituteMenu_String" />
    </node>
  </node>
  <node concept="PlHQZ" id="3rSzFHWLpTi">
    <property role="EcuMT" value="3961072808175705682" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="ISubstituteMenuReference" />
    <node concept="PrWs8" id="3rSzFHWLq8_" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD2$6N" resolve="IMenuReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mC_uHFNI_G">
    <property role="EcuMT" value="8478191136883534188" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature_ActionType" />
    <property role="34LRSv" value="type" />
    <ref role="1TJDcQ" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    <node concept="1TJgyj" id="7mC_uHFNI_H" role="1TKVEi">
      <property role="IQ2ns" value="8478191136883534189" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="hTNCABk" resolve="QueryFunction_SubstituteMenu_ActionType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7mC_uHFNI_D">
    <property role="EcuMT" value="8478191136883534185" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="h8uGdld">
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_SubstituteString" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="return text string" />
    <property role="EcuMT" value="1177335944525" />
    <property role="34LRSv" value="query" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
    <node concept="PrWs8" id="7u5_96XhJDS" role="PzmwI">
      <ref role="PrY4T" node="hqh421K" resolve="ISubstituteMenu_String" />
    </node>
  </node>
  <node concept="1TIwiD" id="h8ub8Bh">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunctionParameter_pattern" />
    <property role="3GE5qa" value="Menu" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="pattern" />
    <property role="R4oN_" value="string entered by user inside competion pop-up, used to hide those actions which matching text was not matched with the pattern" />
    <property role="EcuMT" value="1177327274449" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="7mC_uHFNI_Z">
    <property role="EcuMT" value="8478191136883534207" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteFeature_Selection" />
    <property role="34LRSv" value="selection" />
    <ref role="1TJDcQ" node="7mC_uHFNI_D" resolve="SubstituteFeature" />
    <node concept="1TJgyj" id="7mC_uHFNIA0" role="1TKVEi">
      <property role="IQ2ns" value="8478191136883534208" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="7mC_uHFK4WE" resolve="QueryFunction_SubstituteMenu_Select" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Djcm3ms6D0">
    <property role="EcuMT" value="1896914160037423680" />
    <property role="3GE5qa" value="Menu.Transformation.IncludeSubstitute" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_WrapperHandler" />
    <property role="34LRSv" value="wrapper" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="1TIwiD" id="5N5pDMJOrUr">
    <property role="EcuMT" value="6684862045052059291" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Wrapper" />
    <property role="34LRSv" value="wrap substitute menu" />
    <property role="R4oN_" value="wraps another substitute menu and customizes its behavior" />
    <ref role="1TJDcQ" node="39Jlgden1IE" resolve="AbstractOutputConceptContainerSubstituteMenuPart" />
    <node concept="1TJgyj" id="5N5pDMJVmTc" role="1TKVEi">
      <property role="IQ2ns" value="6684862045053873740" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="handler" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="5N5pDMJOs01" resolve="QueryFunction_SubstituteMenu_WrapperHandler" />
    </node>
    <node concept="1TJgyj" id="5i0CB70PhmY" role="1TKVEi">
      <property role="IQ2ns" value="6089045305655104958" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="reference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
    <node concept="PrWs8" id="3rSzFHWOfw7" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWOd_m" resolve="IIncludeSubstituteMenuPart" />
    </node>
    <node concept="PrWs8" id="6HFUSydwlkd" role="PzmwI">
      <ref role="PrY4T" node="7mC_uHFNIAt" resolve="IExtensibleSubstituteMenuPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="n0c53aH5hG">
    <property role="EcuMT" value="414384289274418284" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Condition" />
    <property role="34LRSv" value="condition" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
  </node>
  <node concept="1TIwiD" id="n0c53aH5hE">
    <property role="EcuMT" value="414384289274418282" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="n0c53aH5hF">
    <property role="EcuMT" value="414384289274418283" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Group" />
    <property role="34LRSv" value="group" />
    <property role="R4oN_" value="composite part which can specify variables and applicability condition" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    <node concept="1TJgyj" id="u0TBa493ex" role="1TKVEi">
      <property role="IQ2ns" value="540685334802084769" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variables" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="u0TBa40TxV" resolve="SubstituteMenuVariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="n0c53aH6QI" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="IQ2ns" value="414384289274424750" />
      <ref role="20lvS9" node="n0c53aH5hG" resolve="QueryFunction_SubstituteMenu_Condition" />
    </node>
    <node concept="1TJgyj" id="n0c53aH6QJ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="414384289274424751" />
      <ref role="20lvS9" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    </node>
    <node concept="PrWs8" id="5EbKzCmgSj7" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="hTNCABk">
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_ActionType" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="return result type for this action, used for smart completion" />
    <property role="EcuMT" value="1230300670420" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
  </node>
  <node concept="1TIwiD" id="2RDMjbOTsHj">
    <property role="EcuMT" value="3308396621974588243" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenu_Contribution" />
    <property role="19KtqR" value="true" />
    <property role="R5$K7" value="false" />
    <property role="34LRSv" value="Substitute Menu Contribution" />
    <node concept="1QGGSu" id="4DKJNVBqp0s" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/substituteMenuContribution.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD5m8A" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD2_Py" resolve="IMenu_Contribution" />
    </node>
    <node concept="PrWs8" id="2RDMjbOTsHk" role="PzmwI">
      <ref role="PrY4T" node="1J2KHYpABsB" resolve="ISubstituteMenu" />
    </node>
    <node concept="1TJgyj" id="6ed47gdfnvk" role="1TKVEi">
      <property role="IQ2ns" value="7173407872095451092" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="menuReference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
    <node concept="1sEMCm" id="1pfhW8hfZFH" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="h8ucgLt">
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Substitute" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="return node&lt;&gt; to substitute currentChild with" />
    <property role="EcuMT" value="1177327570013" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
  </node>
  <node concept="PlHQZ" id="1J2KHYpABsB">
    <property role="EcuMT" value="2000375450116454183" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="ISubstituteMenu" />
    <node concept="1TJgyj" id="n0c53aH4X$" role="1TKVEi">
      <property role="IQ2ns" value="414384289274416996" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    </node>
    <node concept="1TJgyj" id="hz2lrYP" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methodDeclaration" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1205851242421" />
      <ref role="20lvS9" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
    </node>
    <node concept="PrWs8" id="1quYWADmNv8" role="PrDN$">
      <ref role="PrY4T" node="1quYWAD18x6" resolve="IMenu" />
    </node>
    <node concept="PrWs8" id="1KUls24TcF9" role="PrDN$">
      <ref role="PrY4T" to="tp4f:hyWqMFP" resolve="IClassifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="5N5pDMJPfSO">
    <property role="EcuMT" value="6684862045052272180" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_NodeToWrap" />
    <property role="34LRSv" value="nodeToWrap" />
    <property role="R4oN_" value="instance of wrapped concept created by another substitute action" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2RDMjbOTqI4">
    <property role="EcuMT" value="3308396621974580100" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenu_Default" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Substitute Menu (Default)" />
    <ref role="1TJDcQ" node="1J2KHYpAw1S" resolve="SubstituteMenu" />
    <node concept="1QGGSu" id="4DKJNVBqDQw" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/substituteMenu.png" />
    </node>
    <node concept="PrWs8" id="1quYWAD3_QS" role="PzmwI">
      <ref role="PrY4T" node="1quYWAD18L7" resolve="IMenu_Default" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJ9HKH" role="bvy1s">
      <property role="1sEMCp" value="transformation-menu-language.html" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
    <node concept="asaX9" id="3f5kCAcOqEN" role="lGtFl" />
    <node concept="t5JxF" id="3f5kCAcOqEP" role="lGtFl">
      <property role="t5JxN" value="Named and Default menus are now merged into SubstituteMenuImpl and their specific concepts will be removed" />
    </node>
  </node>
  <node concept="1TIwiD" id="20vEJZ2AULf">
    <property role="EcuMT" value="2314756748950088783" />
    <property role="3GE5qa" value="Menu.Transformation.Variables" />
    <property role="TrG5h" value="TransformationMenuVariableReference" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="1TJgyj" id="20vEJZ2AULg" role="1TKVEi">
      <property role="IQ2ns" value="2314756748950088784" />
      <property role="20kJfa" value="transformationMenuVariableDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="h9At2QK" resolve="TransformationMenuVariableDeclaration" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="h9At2QK">
    <property role="TrG5h" value="TransformationMenuVariableDeclaration" />
    <property role="EcuMT" value="1178539929008" />
    <property role="3GE5qa" value="Menu.Transformation.Variables" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    <node concept="1TJgyj" id="u0TBa40ZKR" role="1TKVEi">
      <property role="IQ2ns" value="540685334799973431" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initializerBlock" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="u0TBa40XW5" resolve="QueryFunction_TransformationMenuVariable_Initializer" />
    </node>
    <node concept="PrWs8" id="2HMNXpx7p$j" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="1TIwiD" id="u0TBa40TxV">
    <property role="TrG5h" value="SubstituteMenuVariableDeclaration" />
    <property role="EcuMT" value="540685334799947899" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    <node concept="1TJgyj" id="u0TBa493n4" role="1TKVEi">
      <property role="IQ2ns" value="540685334802085316" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initializerBlock" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="u0TBa493n6" resolve="QueryFunction_SubstituteMenuVariable_Initializer" />
    </node>
    <node concept="PrWs8" id="u0TBa40TxX" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
  <node concept="1TIwiD" id="u0TBa40TxY">
    <property role="EcuMT" value="540685334799947902" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuVariableReference" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="1TJgyj" id="u0TBa40TxZ" role="1TKVEi">
      <property role="IQ2ns" value="540685334799947903" />
      <property role="20kJfa" value="substituteMenuVariableDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="u0TBa40TxV" resolve="SubstituteMenuVariableDeclaration" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="u0TBa40XW5">
    <property role="EcuMT" value="540685334799965957" />
    <property role="3GE5qa" value="Menu.Transformation.Variables" />
    <property role="TrG5h" value="QueryFunction_TransformationMenuVariable_Initializer" />
    <property role="R4oN_" value="return initial value of the variable" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="1TIwiD" id="u0TBa493n6">
    <property role="EcuMT" value="540685334802085318" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenuVariable_Initializer" />
    <property role="R4oN_" value="return initial value of the variable" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
  </node>
  <node concept="1TIwiD" id="4$nvT06Lj2w">
    <property role="EcuMT" value="5266818545798688928" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="ShowBoundariesInStyleClassItem" />
    <property role="34LRSv" value="show-boundaries-in" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyi" id="3Ftr4R6BH1d" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="5266818545798701312" />
      <ref role="AX2Wp" node="3Ftr4R6BFez" resolve="ShowBoundariesAreaEnum" />
    </node>
  </node>
  <node concept="1TIwiD" id="5EbKzCm8o62">
    <property role="EcuMT" value="6524522039911481730" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenuPart" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
  </node>
  <node concept="1TIwiD" id="1MWbOI3$5oV">
    <property role="3GE5qa" value="Menu.Transformation.SideTransform" />
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Icon" />
    <property role="34LRSv" value="query" />
    <property role="EcuMT" value="2070581930059912763" />
    <property role="R4oN_" value="a block of code" />
    <ref role="1TJDcQ" node="6kJcyCQ_LoK" resolve="QueryFunction_TransformationMenu_Extensible" />
  </node>
  <node concept="1TIwiD" id="8PFTpqtF0Z">
    <property role="EcuMT" value="159226422139203647" />
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="OrCellSelector" />
    <ref role="1TJDcQ" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1TJgyj" id="8PFTpqtF10" role="1TKVEi">
      <property role="IQ2ns" value="159226422139203648" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="leftSelector" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    </node>
    <node concept="1TJgyj" id="8PFTpqtF12" role="1TKVEi">
      <property role="IQ2ns" value="159226422139203650" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rightSelector" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    </node>
  </node>
  <node concept="1TIwiD" id="77L_peG_tVG">
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_Concept" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="returns the concept to include substitute menu for" />
    <property role="EcuMT" value="8210508057161359084" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
    <node concept="PrWs8" id="2bhdjkq5YX3" role="PzmwI">
      <ref role="PrY4T" node="2bhdjkq5YX2" resolve="IConceptQuery" />
    </node>
  </node>
  <node concept="1TIwiD" id="77L_peG_tVD">
    <property role="EcuMT" value="8210508057161359081" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuReference_DefaultWithFunction" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="77L_peG_tVE" role="1TKVEi">
      <property role="IQ2ns" value="8210508057161359082" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="2bhdjkq5YX2" resolve="IConceptQuery" />
    </node>
    <node concept="PrWs8" id="77L_peGACJu" role="PzmwI">
      <ref role="PrY4T" node="3rSzFHWLpTi" resolve="ISubstituteMenuReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="6$Nf2sMl38E">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptFunctionParameter_model" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="34LRSv" value="model" />
    <property role="EcuMT" value="7580468736840446506" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="5BNBt6t5ird">
    <property role="EcuMT" value="6481697812325410509" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_Strictly" />
    <property role="34LRSv" value="strictly" />
    <property role="R4oN_" value="true if matching text should match specified pattern completely, false if only beggining of matching text should match this pattern" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="41ZU75XqPik">
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="QueryFunctionParameter_TransformationMenu_targetNode" />
    <property role="34LRSv" value="targetNode" />
    <property role="R4oN_" value="the target node of this menu" />
    <property role="EcuMT" value="4647688914602775700" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="6xArtG40Wbc">
    <property role="EcuMT" value="7522821015001613004" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_FilterConcepts" />
    <ref role="1TJDcQ" node="7u5_96XhKbP" resolve="QueryFunction_SubstituteMenu" />
  </node>
  <node concept="1TIwiD" id="6xArtG40Wbo">
    <property role="EcuMT" value="7522821015001613016" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_Concept" />
    <property role="34LRSv" value="concept" />
    <property role="R4oN_" value="subconcept of current concept" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="IMWLlwvs7L">
    <property role="EcuMT" value="843003353410421233" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="OptionalConceptReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="IMWLlwvs7M" role="1TKVEi">
      <property role="IQ2ns" value="843003353410421234" />
      <property role="20kJfa" value="concept" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="IMWLlwvs8k">
    <property role="EcuMT" value="843003353410421268" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="IOutputConceptTransformationMenuPart" />
    <node concept="1TJgyj" id="IMWLlwvt20" role="1TKVEi">
      <property role="IQ2ns" value="843003353410424960" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="outputConceptReference" />
      <ref role="20lvS9" node="IMWLlwvs7L" resolve="OptionalConceptReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="ve0pw_E$U2">
    <property role="EcuMT" value="562388756446465666" />
    <property role="TrG5h" value="MigratedSideTransformMenuAttribute" />
    <property role="3GE5qa" value="migration" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyi" id="ve0pw_E$Wj" role="1TKVEl">
      <property role="TrG5h" value="transformTag" />
      <property role="IQ2nx" value="562388756446465811" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="M6xJ_" id="ve0pw_E$Wz" role="lGtFl">
      <property role="Hh88m" value="migratedMainMenuAttribute" />
      <node concept="trNpa" id="ve0pw_E$W_" role="EQaZv">
        <ref role="trN6q" node="4Sf$XywF4VC" resolve="TransformationMenu_Named" />
      </node>
      <node concept="tn0Fv" id="ve0pw_Ldun" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="ve0pwAkEAa">
    <property role="EcuMT" value="562388756457499018" />
    <property role="TrG5h" value="MigratedToAnnotation" />
    <property role="3GE5qa" value="migration" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyj" id="ve0pwAkEBT" role="1TKVEi">
      <property role="IQ2ns" value="562388756457499129" />
      <property role="20kJfa" value="migratedTo" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="M6xJ_" id="ve0pwAkEAb" role="lGtFl">
      <property role="Hh88m" value="migratedTo" />
      <node concept="tn0Fv" id="ve0pwAl6FM" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
    </node>
    <node concept="asaX9" id="6asH6F_BZ2x" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="ve0pwAv4UM">
    <property role="EcuMT" value="562388756460228274" />
    <property role="TrG5h" value="MigrateManuallyAnnotation" />
    <property role="3GE5qa" value="migration" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyj" id="ve0pwAv4UN" role="1TKVEi">
      <property role="IQ2ns" value="562388756460228275" />
      <property role="20kJfa" value="migrateTo" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="M6xJ_" id="ve0pwAv4UO" role="lGtFl">
      <property role="Hh88m" value="migrateManually" />
      <node concept="tn0Fv" id="ve0pwAv4UR" role="HhnKV">
        <property role="tnX3d" value="false" />
      </node>
      <node concept="trNpa" id="ve0pwAv4UT" role="EQaZv">
        <ref role="trN6q" node="4Sf$XywKgZK" resolve="TransformationMenuContribution" />
      </node>
    </node>
    <node concept="asaX9" id="6asH6F_C6Pp" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="2n7QBnujfW5">
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_Placeholder" />
    <property role="EcuMT" value="2722384699544370949" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
  </node>
  <node concept="1TIwiD" id="39Jlgden1IE">
    <property role="EcuMT" value="3634216896999201706" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="AbstractOutputConceptContainerSubstituteMenuPart" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="n0c53aH5hE" resolve="SubstituteMenuPart" />
    <node concept="PrWs8" id="39Jlgden1IH" role="PzmwI">
      <ref role="PrY4T" node="6VAVyI4xoxZ" resolve="IOutputConceptSubstituteMenuPart" />
    </node>
    <node concept="PrWs8" id="3mnwiBI8ZWv" role="PzmwI">
      <ref role="PrY4T" node="3mnwiBI8ZDQ" resolve="IMenuPartWithOutputConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5FrfJRGQJjp">
    <property role="EcuMT" value="6546895743634568409" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="AbstractOutputConceptContainerTransformationMenuPart" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="PrWs8" id="5FrfJRGQJjr" role="PzmwI">
      <ref role="PrY4T" node="IMWLlwvs8k" resolve="IOutputConceptTransformationMenuPart" />
    </node>
    <node concept="PrWs8" id="3mnwiBI97DP" role="PzmwI">
      <ref role="PrY4T" node="3mnwiBI8ZDQ" resolve="IMenuPartWithOutputConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="3mnwiBI8ZDQ">
    <property role="EcuMT" value="3861697222582467190" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IMenuPartWithOutputConcept" />
  </node>
  <node concept="PlHQZ" id="itlittTD3X">
    <property role="EcuMT" value="332515575062761725" />
    <property role="3GE5qa" value="CellLayout" />
    <property role="TrG5h" value="LayoutContainer" />
  </node>
  <node concept="PlHQZ" id="1PvcgmUaKhb">
    <property role="EcuMT" value="2116464250555401291" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="TrG5h" value="IEditorContextAccessQualifier" />
  </node>
  <node concept="PlHQZ" id="6E2BWlDjLUW">
    <property role="EcuMT" value="7674872385216913084" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="TrG5h" value="IContextNodeAccessQualifier" />
  </node>
  <node concept="1TIwiD" id="601LQojMcdN">
    <property role="EcuMT" value="6918029743850308467" />
    <property role="3GE5qa" value="QueryFunction" />
    <property role="TrG5h" value="QueryFunction_RefPresentation" />
    <property role="34LRSv" value="ref. presentation" />
    <property role="R4oN_" value="custom referent presentation" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="601LQojMpCQ">
    <property role="EcuMT" value="6918029743850363446" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="TrG5h" value="ConceptFunctionParameter_sourceNode" />
    <property role="34LRSv" value="sourceNode" />
    <property role="R4oN_" value="function parameter" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="601LQojMpCR">
    <property role="EcuMT" value="6918029743850363447" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="TrG5h" value="ConceptFunctionParameter_targetNode" />
    <property role="34LRSv" value="targetNode" />
    <property role="R4oN_" value="function parameter" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="394Ruzxk7F9">
    <property role="EcuMT" value="3622263992595020489" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="SubstituteMenuItem_DescriptionText_Operation" />
    <property role="34LRSv" value="descriptionText" />
    <property role="R4oN_" value="description text of the item" />
    <ref role="1TJDcQ" node="394RuzxkcZO" resolve="SubstituteMenuItem_AbstractOperation" />
    <node concept="PrWs8" id="394Ruzxk7Fa" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="394Ruzxk7Fb">
    <property role="EcuMT" value="3622263992595020491" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="SubstituteMenuItem_OutputConcept_Operation" />
    <property role="34LRSv" value="outputConcept" />
    <property role="R4oN_" value="output concept of the item" />
    <ref role="1TJDcQ" node="394RuzxkcZO" resolve="SubstituteMenuItem_AbstractOperation" />
    <node concept="PrWs8" id="394Ruzxk7Fc" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="394Ruzxk7F6">
    <property role="EcuMT" value="3622263992595020486" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="SubstituteMenuItem_MatchingText_Operation" />
    <property role="34LRSv" value="matchingText" />
    <property role="R4oN_" value="matching text of the item" />
    <ref role="1TJDcQ" node="394RuzxkcZO" resolve="SubstituteMenuItem_AbstractOperation" />
    <node concept="PrWs8" id="394Ruzxk7F7" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="394Ruzxa0VG">
    <property role="EcuMT" value="3622263992592371436" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_WrappedItem" />
    <property role="34LRSv" value="wrappedItem" />
    <property role="R4oN_" value="substitute item from the wrapped menu" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="394Ruzxa0VH">
    <property role="EcuMT" value="3622263992592371437" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="SubstituteMenuItemType" />
    <property role="34LRSv" value="SubstituteMenuItem" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="394RuzxkcZO">
    <property role="EcuMT" value="3622263992595042292" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="SubstituteMenuItem_AbstractOperation" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="31F3x8CXY$U">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CellMenuPart_ReplaceChild_defaultChildConcept" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="CellMenu" />
    <property role="34LRSv" value="defaultChildConcept" />
    <property role="EcuMT" value="3488897807488117050" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="7jQE8Y9gpPl">
    <property role="EcuMT" value="8428109087107030357" />
    <property role="3GE5qa" value="Menu.Substitute" />
    <property role="TrG5h" value="SubstituteMenuPart_ReferenceScope" />
    <property role="34LRSv" value="reference actions" />
    <property role="R4oN_" value="creates a new instance referenced to a particular node from the scope" />
    <ref role="1TJDcQ" node="39Jlgden1IE" resolve="AbstractOutputConceptContainerSubstituteMenuPart" />
    <node concept="1TJgyj" id="7jQE8Y9h_dD" role="1TKVEi">
      <property role="IQ2ns" value="8428109087107339113" />
      <property role="20kJfa" value="reference" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="3J8eUL7d57_" role="1TKVEi">
      <property role="IQ2ns" value="4307758654694904293" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="matchingTextFunction" />
      <ref role="20lvS9" node="3J8eUL7dojS" resolve="ISubstituteMenu_RefPresentation" />
    </node>
    <node concept="1TJgyj" id="106Slv_GxQS" role="1TKVEi">
      <property role="IQ2ns" value="1154858122099170744" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="visibleMatchingTextFunction" />
      <ref role="20lvS9" node="3J8eUL7dojS" resolve="ISubstituteMenu_RefPresentation" />
    </node>
    <node concept="1TJgyj" id="3J8eUL7d5Zf" role="1TKVEi">
      <property role="IQ2ns" value="4307758654694907855" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="descriptionTextFunction" />
      <ref role="20lvS9" node="3J8eUL7l10E" resolve="ISubstituteMenu_RefDescription" />
    </node>
  </node>
  <node concept="PlHQZ" id="3J8eUL7dojS">
    <property role="EcuMT" value="4307758654694982904" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="ISubstituteMenu_RefPresentation" />
  </node>
  <node concept="1TIwiD" id="3J8eUL7kPHX">
    <property role="EcuMT" value="4307758654696938365" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="QueryFunction_SubstituteMenu_RefPresentation" />
    <property role="34LRSv" value="query" />
    <property role="R4oN_" value="return custom text" />
    <ref role="1TJDcQ" node="5EbKzCm8o62" resolve="QueryFunction_SubstituteMenuPart" />
    <node concept="PrWs8" id="3J8eUL7kPOf" role="PzmwI">
      <ref role="PrY4T" node="3J8eUL7dojS" resolve="ISubstituteMenu_RefPresentation" />
    </node>
    <node concept="PrWs8" id="3J8eUL7l11e" role="PzmwI">
      <ref role="PrY4T" node="3J8eUL7l10E" resolve="ISubstituteMenu_RefDescription" />
    </node>
  </node>
  <node concept="1TIwiD" id="3J8eUL7kThX">
    <property role="EcuMT" value="4307758654696952957" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunctionParameters" />
    <property role="TrG5h" value="QueryFunctionParameter_SubstituteMenu_ReferencedNode" />
    <property role="34LRSv" value="referencedNode" />
    <property role="R4oN_" value="node&lt;&gt; referenced with node&lt;&gt; to substitute" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="PlHQZ" id="3J8eUL7l10E">
    <property role="EcuMT" value="4307758654696984618" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="ISubstituteMenu_RefDescription" />
  </node>
  <node concept="1TIwiD" id="3J8eUL7n4GQ">
    <property role="EcuMT" value="4307758654697524022" />
    <property role="3GE5qa" value="Menu.Substitute.QueryFunction" />
    <property role="TrG5h" value="SubstituteMenu_RefPresentationTemplate" />
    <property role="34LRSv" value="simple" />
    <property role="R4oN_" value="text literal template" />
    <ref role="1TJDcQ" to="tpce:7ERGDLdpClu" resolve="RefPresentationTemplate" />
    <node concept="PrWs8" id="3J8eUL7n4GX" role="PzmwI">
      <ref role="PrY4T" node="3J8eUL7dojS" resolve="ISubstituteMenu_RefPresentation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Pr44Jlk_YB">
    <property role="EcuMT" value="2115302367868116903" />
    <property role="TrG5h" value="GeneratedSubstituteMenuAttribute" />
    <property role="3GE5qa" value="migration" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="M6xJ_" id="1Pr44Jlk_YC" role="lGtFl">
      <property role="Hh88m" value="generatedNode" />
      <node concept="trNpa" id="1Pr44Jlk_YE" role="EQaZv">
        <ref role="trN6q" node="1J2KHYpABsB" resolve="ISubstituteMenu" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="2Bx95km$HUU">
    <property role="EcuMT" value="3017733173184487098" />
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="SmartRefMigrationData" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2Bx95km$HVh" role="1TKVEi">
      <property role="IQ2ns" value="3017733173184487121" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="entities" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <ref role="20lvS9" node="2Bx95km$HUV" resolve="SmartRefMigrationDataEntity" />
    </node>
  </node>
  <node concept="1TIwiD" id="2Bx95km$HUV">
    <property role="EcuMT" value="3017733173184487099" />
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="SmartRefMigrationDataEntity" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2Bx95km$HUY" role="1TKVEi">
      <property role="IQ2ns" value="3017733173184487102" />
      <property role="20kJfa" value="conceptNode" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="2Bx95km$HV1" role="1TKVEi">
      <property role="IQ2ns" value="3017733173184487105" />
      <property role="20kJfa" value="generatedMenu" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="3fw9B$5YUrX" resolve="SubstituteMenu_Named" />
    </node>
  </node>
  <node concept="1TIwiD" id="7envUni7LWR">
    <property role="EcuMT" value="8329266386016608055" />
    <property role="3GE5qa" value="SNode" />
    <property role="TrG5h" value="ApproveDelete_Operation" />
    <property role="34LRSv" value="approveDelete" />
    <property role="R4oN_" value="approve delete in 2-step delete operation" />
    <ref role="1TJDcQ" node="7MsHfaQE9nT" resolve="AbstractCellIdScopeProviderNodeOperation" />
    <node concept="1TJgyj" id="7MsHfaQwAI8" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cellSelector" />
      <property role="IQ2ns" value="8979250711607012232" />
      <ref role="20lvS9" node="1GaASKeIesA" resolve="AbstractCellSelector" />
    </node>
    <node concept="1TJgyj" id="7envUni84XZ" role="1TKVEi">
      <property role="IQ2ns" value="8329266386016685951" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="editorContext" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7MsHfaQE9nT">
    <property role="EcuMT" value="8979250711609513465" />
    <property role="TrG5h" value="AbstractCellIdScopeProviderNodeOperation" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tp25:g$eCIIG" resolve="SNodeOperation" />
    <node concept="PrWs8" id="7MsHfaQE9nU" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="6rN18FHIfNk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="FontFamilyStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="font-family" />
    <property role="EcuMT" value="7418278005949660372" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="PrWs8" id="6hgzQ4Z7fsM" role="PzmwI">
      <ref role="PrY4T" node="6hgzQ4Z7bF1" resolve="FontFamilyContainer" />
    </node>
    <node concept="1TJgyj" id="6rN18FHIfNl" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="7418278005949660373" />
      <ref role="20lvS9" node="4DrEZjt9c6c" resolve="QueryFunction_FontFamily" />
    </node>
  </node>
  <node concept="1TIwiD" id="4DrEZjt9c6c">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="QueryFunction_FontFamily" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="EcuMT" value="5358065249857880460" />
    <property role="34LRSv" value="font family function" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="1TIwiD" id="6hgzQ4Z6Y0A">
    <property role="EcuMT" value="7228435049763037222" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="FontFamilyLiteral" />
    <property role="34LRSv" value="fontFamily/&lt;name&gt;/" />
    <property role="R4oN_" value="font family constant" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="6hgzQ4Z7d0o" role="PzmwI">
      <ref role="PrY4T" node="6hgzQ4Z7bF1" resolve="FontFamilyContainer" />
    </node>
  </node>
  <node concept="PlHQZ" id="6hgzQ4Z7bF1">
    <property role="EcuMT" value="7228435049763093185" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="FontFamilyContainer" />
    <node concept="1TJgyi" id="6hgzQ4Z7bF2" role="1TKVEl">
      <property role="IQ2nx" value="7228435049763093186" />
      <property role="TrG5h" value="family" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MT8pi2GyvR">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="URLStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="url" />
    <property role="EcuMT" value="6681408443912431607" />
    <ref role="1TJDcQ" node="hgV6hR6" resolve="StyleClassItem" />
    <node concept="1TJgyj" id="5MT8pi2GyvS" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="query" />
      <property role="IQ2ns" value="6681408443912431608" />
      <ref role="20lvS9" node="5MT8pi2H59L" resolve="QueryFunction_URL" />
    </node>
    <node concept="1TJgyi" id="5MT8pi2GCPT" role="1TKVEl">
      <property role="IQ2nx" value="6681408443912457593" />
      <property role="TrG5h" value="url" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5MT8pi2H59L">
    <property role="TrG5h" value="QueryFunction_URL" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Style" />
    <property role="EcuMT" value="6681408443912573553" />
    <ref role="1TJDcQ" node="hLcOssU" resolve="QueryFunction_StyleParameter" />
  </node>
  <node concept="PlHQZ" id="2bhdjkq5YX2">
    <property role="EcuMT" value="2508844969609391938" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="IConceptQuery" />
  </node>
  <node concept="1TIwiD" id="2bhdjkq5YX5">
    <property role="TrG5h" value="QueryFunction_TransformationMenu_Concept" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="R4oN_" value="returns the concept to include substitute menu for" />
    <property role="EcuMT" value="2508844969609391941" />
    <ref role="1TJDcQ" node="FyOJSsBpEm" resolve="QueryFunction_TransformationMenu" />
    <node concept="PrWs8" id="2bhdjkq5YX6" role="PzmwI">
      <ref role="PrY4T" node="2bhdjkq5YX2" resolve="IConceptQuery" />
    </node>
  </node>
  <node concept="1TIwiD" id="2snskYs0Tuc">
    <property role="EcuMT" value="2816844678677370764" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_PropertyMenu" />
    <property role="34LRSv" value="include default property menu" />
    <property role="R4oN_" value="all the possible values of the specific property" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="1TJgyj" id="2snskYs0Tud" role="1TKVEi">
      <property role="IQ2ns" value="2816844678677370765" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="ntKIfKkdVk">
    <property role="EcuMT" value="422708224287891156" />
    <property role="3GE5qa" value="Menu.Transformation" />
    <property role="TrG5h" value="TransformationMenuPart_ReferenceMenu" />
    <property role="34LRSv" value="include default reference menu" />
    <property role="R4oN_" value="all the target nodes from the scope of the specific reference" />
    <ref role="1TJDcQ" node="1qY_lWSjJZY" resolve="TransformationMenuPart" />
    <node concept="1TJgyj" id="7pTz0_mttsO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="textFunction" />
      <property role="IQ2ns" value="8537008540390643508" />
      <ref role="20lvS9" node="4VZjoGvneVh" resolve="QueryFunction_TransformationMenu_ActionLabelText" />
    </node>
    <node concept="1TJgyj" id="6cap0kYbLKY" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="visibleTextFunction" />
      <property role="IQ2ns" value="7136626533202861118" />
      <ref role="20lvS9" node="4VZjoGvneVh" resolve="QueryFunction_TransformationMenu_ActionLabelText" />
    </node>
    <node concept="1TJgyj" id="73AphEjX_Db" role="1TKVEi">
      <property role="IQ2ns" value="8135300941717330507" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="canExecuteFunction" />
      <ref role="20lvS9" node="5DJl6Ftwolg" resolve="QueryFunction_TransformationMenu_Condition" />
    </node>
    <node concept="1TJgyj" id="ntKIfKkdVl" role="1TKVEi">
      <property role="IQ2ns" value="422708224287891157" />
      <property role="20kJfa" value="referenceLink" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="7pTz0_mrFOR" role="PzmwI">
      <ref role="PrY4T" node="6kJcyCQj9CC" resolve="IExtensibleTransformationMenuPart" />
    </node>
    <node concept="PrWs8" id="1o9RazL_hdj" role="PzmwI">
      <ref role="PrY4T" node="1o9RazL_awo" resolve="IReferenceContextProvider" />
    </node>
  </node>
  <node concept="PlHQZ" id="1o9RazL_awo">
    <property role="EcuMT" value="1588042961790478360" />
    <property role="TrG5h" value="IReferenceContextProvider" />
  </node>
  <node concept="1TIwiD" id="CFBzaakS6G">
    <property role="EcuMT" value="732853304284119468" />
    <property role="TrG5h" value="ModuleImageProvider" />
    <property role="34LRSv" value="image from module" />
    <property role="R4oN_" value="file name relative to module" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3zvXnQYGbuj" role="1TKVEi">
      <property role="IQ2ns" value="4098264106349410195" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="moduleRef" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="dvox:k2ZBl8Cedx" resolve="ModulePointer" />
    </node>
    <node concept="PrWs8" id="CFBzaakS6H" role="PzmwI">
      <ref role="PrY4T" node="54iik1dcchE" resolve="ImagePathProvider" />
    </node>
    <node concept="1TJgyi" id="3zvXnQYGbuh" role="1TKVEl">
      <property role="IQ2nx" value="4098264106349410193" />
      <property role="TrG5h" value="imagePath" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7pqJbakA6Bn">
    <property role="EcuMT" value="8528336319562672599" />
    <property role="TrG5h" value="CellActionMapImport" />
    <property role="3GE5qa" value="CellActionMap" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7pqJbakA6Bo" role="1TKVEi">
      <property role="IQ2ns" value="8528336319562672600" />
      <property role="20kJfa" value="cellActionMap" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="g_h_SNY" resolve="CellActionMapDeclaration" />
    </node>
    <node concept="1TJgyj" id="4Y8fgghe7br" role="1TKVEi">
      <property role="IQ2ns" value="5730897613507031771" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selector" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="4Y8fgghaRne" resolve="CellActionMapImportSelector" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Y8fgghaRne">
    <property role="EcuMT" value="5730897613506180558" />
    <property role="3GE5qa" value="CellActionMap" />
    <property role="TrG5h" value="CellActionMapImportSelector" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4Y8fgghhhs3">
    <property role="EcuMT" value="5730897613507860227" />
    <property role="3GE5qa" value="CellActionMap" />
    <property role="TrG5h" value="CellActionMapImportSelectorByActionId" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="4Y8fgghaRne" resolve="CellActionMapImportSelector" />
    <node concept="1TJgyi" id="3Ftr4R6BH1f" role="1TKVEl">
      <property role="TrG5h" value="actionId" />
      <property role="IQ2nx" value="5730897613507860230" />
      <ref role="AX2Wp" node="3Ftr4R6BFaB" resolve="CellActionId" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Y8fgghaRnf">
    <property role="EcuMT" value="5730897613506180559" />
    <property role="3GE5qa" value="CellActionMap" />
    <property role="TrG5h" value="CellActionMapImportWildcardSelector" />
    <property role="34LRSv" value="*" />
    <ref role="1TJDcQ" node="4Y8fgghaRne" resolve="CellActionMapImportSelector" />
  </node>
  <node concept="1TIwiD" id="6LZbIQxCb5y">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CompletionStyling" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="34LRSv" value="Completion Styling" />
    <property role="EcuMT" value="7818019076292260194" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="1TJgyj" id="6iw7UxkrjtF" role="1TKVEi">
      <property role="IQ2ns" value="7250830207897909099" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="specificator" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="7U0pk79eiKy" resolve="CompletionCustomizationContextSpecificator" />
    </node>
    <node concept="1TJgyj" id="ETPn3vanhF" role="1TKVEi">
      <property role="IQ2ns" value="772883491827840107" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="customizeFunction" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="ETPn3v9nv8" resolve="CompletionCustomization_CustomizeFunction" />
    </node>
    <node concept="PrWs8" id="6LZbIQxCb5E" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1sEMCm" id="5Jed3OJg8A7" role="bvy1s">
      <property role="1sEMCp" value="/editor.html#86272b50" />
      <ref role="1fZFei" to="9anm:46nPloez0vX" resolve="HelpCenterDocUrl" />
    </node>
  </node>
  <node concept="1TIwiD" id="6iw7UxkrgbU">
    <property role="EcuMT" value="7250830207897895674" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="CompletionCustomizationContextSpecificator_Concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7U0pk79ej2_" role="1TKVEi">
      <property role="IQ2ns" value="9115396979021131941" />
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="7U0pk79ej30" role="PzmwI">
      <ref role="PrY4T" node="7U0pk79eiKy" resolve="CompletionCustomizationContextSpecificator" />
    </node>
  </node>
  <node concept="1TIwiD" id="6iw7UxkrgbX">
    <property role="EcuMT" value="7250830207897895677" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="TrG5h" value="CompletionCustomizationConceptModifyingSpecificator" />
    <property role="34LRSv" value="modifying" />
    <ref role="1TJDcQ" node="6iw7UxkrgbU" resolve="CompletionCustomizationContextSpecificator_Concept" />
    <node concept="1TJgyj" id="ETPn3uQNeZ" role="1TKVEi">
      <property role="IQ2ns" value="772883491822711743" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="feature" />
      <ref role="20lvS9" node="ETPn3uQNdA" resolve="CompletionCustomization_Feature" />
    </node>
  </node>
  <node concept="1TIwiD" id="6iw7UxkrgbY">
    <property role="EcuMT" value="7250830207897895678" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="TrG5h" value="CompletionCustomizationConceptCreatingSpecificator" />
    <property role="34LRSv" value="creating" />
    <ref role="1TJDcQ" node="6iw7UxkrgbU" resolve="CompletionCustomizationContextSpecificator_Concept" />
  </node>
  <node concept="PlHQZ" id="7U0pk79eiKy">
    <property role="EcuMT" value="9115396979021130786" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="TrG5h" value="CompletionCustomizationContextSpecificator" />
  </node>
  <node concept="1TIwiD" id="ETPn3uQNdA">
    <property role="EcuMT" value="772883491822711654" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="TrG5h" value="CompletionCustomization_Feature" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="ETPn3uQNdD">
    <property role="EcuMT" value="772883491822711657" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="TrG5h" value="CompletionCustomization_PropertyFeature" />
    <ref role="1TJDcQ" node="ETPn3uQNdA" resolve="CompletionCustomization_Feature" />
    <node concept="1TJgyj" id="ETPn3uQNdH" role="1TKVEi">
      <property role="IQ2ns" value="772883491822711661" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="ETPn3uQNdE">
    <property role="EcuMT" value="772883491822711658" />
    <property role="3GE5qa" value="Menu.Completion" />
    <property role="TrG5h" value="CompletionCustomization_LinkFeature" />
    <ref role="1TJDcQ" node="ETPn3uQNdA" resolve="CompletionCustomization_Feature" />
    <node concept="1TJgyj" id="ETPn3uQNdJ" role="1TKVEi">
      <property role="IQ2ns" value="772883491822711663" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="ETPn3v9nv8">
    <property role="EcuMT" value="772883491827578824" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="CompletionCustomization_CustomizeFunction" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="ETPn3v9I5L">
    <property role="EcuMT" value="772883491827671409" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="ConceptFunctionParameterCustomize_CompletionItemInformation" />
    <property role="34LRSv" value="itemInformation" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="ETPn3v9I6m">
    <property role="EcuMT" value="772883491827671446" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="ConceptFunctionParameterCustomize_Style" />
    <property role="34LRSv" value="style" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="ETPn3v9Ij4">
    <property role="EcuMT" value="772883491827672260" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="ConceptFunctionParameterCustomize_ContextNode" />
    <property role="34LRSv" value="contextNode" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="ETPn3v9Ij5">
    <property role="EcuMT" value="772883491827672261" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="ConceptFunctionParameterCustomize_ParentNode" />
    <property role="34LRSv" value="parentNode" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="ETPn3v9JFK">
    <property role="EcuMT" value="772883491827677936" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="ConceptFunctionParameterCustomize_CurrentChild" />
    <property role="34LRSv" value="currentChild" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="ETPn3v9KhP">
    <property role="EcuMT" value="772883491827680373" />
    <property role="3GE5qa" value="Menu.Completion.CustomizeFunction" />
    <property role="TrG5h" value="ConceptFunctionParameterCustomize_ContainmentLink" />
    <property role="34LRSv" value="containmentLink" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="25R3W" id="3Ftr4R6BF4u">
    <property role="TrG5h" value="_YesNoDefault_Enum" />
    <property role="3F6X1D" value="1083928804390" />
    <ref role="1H5jkz" node="3Ftr4R6BF4y" resolve="none" />
    <node concept="25R33" id="3Ftr4R6BF4w" role="25R1y">
      <property role="TrG5h" value="yes" />
      <property role="3tVfz5" value="1083928804391" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF4x" role="25R1y">
      <property role="TrG5h" value="no" />
      <property role="3tVfz5" value="1083928804392" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF4y" role="25R1y">
      <property role="TrG5h" value="none" />
      <property role="3tVfz5" value="1083928804393" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BF5v">
    <property role="TrG5h" value="_Colors_Enum" />
    <property role="3F6X1D" value="1083952545109" />
    <ref role="1H5jkz" node="3Ftr4R6BF5x" resolve="none" />
    <node concept="25R33" id="3Ftr4R6BF5x" role="25R1y">
      <property role="TrG5h" value="none" />
      <property role="3tVfz5" value="1083952545110" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5y" role="25R1y">
      <property role="TrG5h" value="red" />
      <property role="3tVfz5" value="1083952545111" />
      <property role="1L1pqM" value="red (#FF0000)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5z" role="25R1y">
      <property role="TrG5h" value="pink" />
      <property role="3tVfz5" value="1083952545112" />
      <property role="1L1pqM" value="light: pink          | dark: lampoon (#FFAFAF / #7D5656)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5$" role="25R1y">
      <property role="TrG5h" value="orange" />
      <property role="3tVfz5" value="1083952545113" />
      <property role="1L1pqM" value="light: orange        | dark: cumin ochre (#FFC800 / #9F6B00)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5_" role="25R1y">
      <property role="TrG5h" value="yellow" />
      <property role="3tVfz5" value="1083952545114" />
      <property role="1L1pqM" value="light: yellow        | dark: old asparagus (#FFFF00 / #8A8A00)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5A" role="25R1y">
      <property role="TrG5h" value="green" />
      <property role="3tVfz5" value="1083952545115" />
      <property role="1L1pqM" value="light: green         | dark: fluorite green (#00FF00 / #629655)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5B" role="25R1y">
      <property role="TrG5h" value="darkGreen" />
      <property role="3tVfz5" value="1101213169706" />
      <property role="1L1pqM" value="light: dark green    | dark: green (#007D00 / #00FF00)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5C" role="25R1y">
      <property role="TrG5h" value="magenta" />
      <property role="3tVfz5" value="1083952545116" />
      <property role="1L1pqM" value="light: magenta       | dark: ce soir (#FF00FF / #9776A9)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5D" role="25R1y">
      <property role="TrG5h" value="darkMagenta" />
      <property role="3tVfz5" value="1101213185757" />
      <property role="1L1pqM" value="light: dark magenta  | dark: magenta (#7D007D / #FF00FF)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5E" role="25R1y">
      <property role="TrG5h" value="cyan" />
      <property role="3tVfz5" value="1083952545117" />
      <property role="1L1pqM" value="light: cyan          | dark: green moblin (#00FFFF / #008989)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5F" role="25R1y">
      <property role="TrG5h" value="blue" />
      <property role="3tVfz5" value="1083952545118" />
      <property role="1L1pqM" value="light: blue          | dark: feather star (#0000FF / #589DF6)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5G" role="25R1y">
      <property role="TrG5h" value="lightBlue" />
      <property role="3tVfz5" value="1216404713420" />
      <property role="1L1pqM" value="light: light blue    | dark: lupine blue (#A2B8D0 / #6897BA)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5H" role="25R1y">
      <property role="TrG5h" value="darkBlue" />
      <property role="3tVfz5" value="1101209985304" />
      <property role="1L1pqM" value="light: dark blue     | dark: steel blue (#000080 / #3D6DAC)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5I" role="25R1y">
      <property role="TrG5h" value="gray" />
      <property role="3tVfz5" value="1084208529765" />
      <property role="1L1pqM" value="gray (#808080)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5J" role="25R1y">
      <property role="TrG5h" value="lightGray" />
      <property role="3tVfz5" value="1084208529766" />
      <property role="1L1pqM" value="light: light gray    | dark: dark gray (#C0C0C0 / #404040)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5K" role="25R1y">
      <property role="TrG5h" value="darkGray" />
      <property role="3tVfz5" value="1084208529767" />
      <property role="1L1pqM" value="light: dark gray     | dark: light gray (#404040 / #C0C0C0)" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5L" role="25R1y">
      <property role="TrG5h" value="white" />
      <property role="3tVfz5" value="1214395400259" />
      <property role="1L1pqM" value="light: white         | dark: theme's background color" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF5M" role="25R1y">
      <property role="TrG5h" value="black" />
      <property role="3tVfz5" value="7151630269404055096" />
      <property role="1L1pqM" value="light: black         | dark: theme's foreground color" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BF9k">
    <property role="TrG5h" value="_FontStyle_Enum" />
    <property role="3F6X1D" value="1101211480448" />
    <ref role="1H5jkz" node="3Ftr4R6BF9p" resolve="PLAIN" />
    <node concept="25R33" id="3Ftr4R6BF9m" role="25R1y">
      <property role="TrG5h" value="BOLD" />
      <property role="1L1pqM" value="bold" />
      <property role="3tVfz5" value="1101211523070" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9n" role="25R1y">
      <property role="TrG5h" value="ITALIC" />
      <property role="1L1pqM" value="italic" />
      <property role="3tVfz5" value="1101211542532" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9o" role="25R1y">
      <property role="TrG5h" value="BOLD_ITALIC" />
      <property role="1L1pqM" value="boldItalic" />
      <property role="3tVfz5" value="1101213960346" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9p" role="25R1y">
      <property role="TrG5h" value="PLAIN" />
      <property role="1L1pqM" value="plain" />
      <property role="3tVfz5" value="1134577855137" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9q" role="25R1y">
      <property role="TrG5h" value="QUERY" />
      <property role="1L1pqM" value="query" />
      <property role="3tVfz5" value="1220973684614" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BF9r">
    <property role="TrG5h" value="UnderlineStyle" />
    <property role="3F6X1D" value="1130847686886" />
    <ref role="1H5jkz" node="3Ftr4R6BF9t" resolve="as_is" />
    <node concept="25R33" id="3Ftr4R6BF9t" role="25R1y">
      <property role="TrG5h" value="as_is" />
      <property role="3tVfz5" value="1130847686918" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9u" role="25R1y">
      <property role="TrG5h" value="not_underlined" />
      <property role="3tVfz5" value="1130847816499" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9v" role="25R1y">
      <property role="TrG5h" value="underlined" />
      <property role="3tVfz5" value="1130847833453" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BF9w">
    <property role="TrG5h" value="FocusPolicy" />
    <property role="3F6X1D" value="1130926557197" />
    <ref role="1H5jkz" node="3Ftr4R6BF9y" resolve="noAttraction" />
    <node concept="25R33" id="3Ftr4R6BF9y" role="25R1y">
      <property role="TrG5h" value="noAttraction" />
      <property role="3tVfz5" value="1130926557292" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9z" role="25R1y">
      <property role="TrG5h" value="attractsFocus" />
      <property role="3tVfz5" value="1130926591919" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9$" role="25R1y">
      <property role="TrG5h" value="firstEditableCell" />
      <property role="3tVfz5" value="1130926603060" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9_" role="25R1y">
      <property role="TrG5h" value="attractsRecursively" />
      <property role="3tVfz5" value="1227082414196" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BF9A">
    <property role="TrG5h" value="_Layout_Constraints_Enum" />
    <property role="3F6X1D" value="1138197387103" />
    <ref role="1H5jkz" node="3Ftr4R6BF9E" resolve="none" />
    <node concept="25R33" id="3Ftr4R6BF9C" role="25R1y">
      <property role="TrG5h" value="punctuation" />
      <property role="3tVfz5" value="1138197387339" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9D" role="25R1y">
      <property role="TrG5h" value="noflow" />
      <property role="3tVfz5" value="1138197619454" />
    </node>
    <node concept="25R33" id="3Ftr4R6BF9E" role="25R1y">
      <property role="TrG5h" value="none" />
      <property role="3tVfz5" value="1138197631095" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFaB">
    <property role="TrG5h" value="CellActionId" />
    <property role="3GE5qa" value="CellActionMap" />
    <property role="3F6X1D" value="1139535328871" />
    <node concept="25R33" id="3Ftr4R6BFaD" role="25R1y">
      <property role="TrG5h" value="right_transform_action_id" />
      <property role="1L1pqM" value="RIGHT_TRANSFORM" />
      <property role="3tVfz5" value="1139535329028" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaE" role="25R1y">
      <property role="TrG5h" value="delete_action_id" />
      <property role="1L1pqM" value="DELETE" />
      <property role="3tVfz5" value="1139535387060" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaF" role="25R1y">
      <property role="TrG5h" value="insert_action_id" />
      <property role="1L1pqM" value="INSERT" />
      <property role="3tVfz5" value="1222746468862079483" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaG" role="25R1y">
      <property role="TrG5h" value="insert_before_action_id" />
      <property role="1L1pqM" value="INSERT_BEFORE" />
      <property role="3tVfz5" value="1222746468862079484" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaH" role="25R1y">
      <property role="TrG5h" value="backspace_action_id" />
      <property role="1L1pqM" value="BACKSPACE" />
      <property role="3tVfz5" value="9025760234657675082" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaI" role="25R1y">
      <property role="TrG5h" value="delete_to_word_end_action_id" />
      <property role="1L1pqM" value="DELETE_TO_WORD_END" />
      <property role="3tVfz5" value="9025760234657707152" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaJ" role="25R1y">
      <property role="TrG5h" value="copy_action_id" />
      <property role="1L1pqM" value="COPY" />
      <property role="3tVfz5" value="9025760234657707153" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaK" role="25R1y">
      <property role="TrG5h" value="cut_action_id" />
      <property role="1L1pqM" value="CUT" />
      <property role="3tVfz5" value="9025760234657707154" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaL" role="25R1y">
      <property role="TrG5h" value="paste_action_id" />
      <property role="1L1pqM" value="PASTE" />
      <property role="3tVfz5" value="9025760234657707155" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaM" role="25R1y">
      <property role="TrG5h" value="paste_before_action_id" />
      <property role="1L1pqM" value="PASTE_BEFORE" />
      <property role="3tVfz5" value="9025760234657707156" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaN" role="25R1y">
      <property role="TrG5h" value="paste_after_action_id" />
      <property role="1L1pqM" value="PASTE_AFTER" />
      <property role="3tVfz5" value="9025760234657707157" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaO" role="25R1y">
      <property role="TrG5h" value="left_action_id" />
      <property role="1L1pqM" value="LEFT" />
      <property role="3tVfz5" value="9025760234657707158" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaP" role="25R1y">
      <property role="TrG5h" value="right_action_id" />
      <property role="1L1pqM" value="RIGHT" />
      <property role="3tVfz5" value="9025760234657707159" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaQ" role="25R1y">
      <property role="TrG5h" value="up_action_id" />
      <property role="1L1pqM" value="UP" />
      <property role="3tVfz5" value="9025760234657707160" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaR" role="25R1y">
      <property role="TrG5h" value="down_action_id" />
      <property role="1L1pqM" value="DOWN" />
      <property role="3tVfz5" value="9025760234657707161" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaS" role="25R1y">
      <property role="TrG5h" value="next_action_id" />
      <property role="1L1pqM" value="NEXT" />
      <property role="3tVfz5" value="9025760234657707162" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaT" role="25R1y">
      <property role="TrG5h" value="prev_action_id" />
      <property role="1L1pqM" value="PREV" />
      <property role="3tVfz5" value="9025760234657707163" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaU" role="25R1y">
      <property role="TrG5h" value="home_action_id" />
      <property role="1L1pqM" value="HOME" />
      <property role="3tVfz5" value="9025760234657707164" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaV" role="25R1y">
      <property role="TrG5h" value="end_action_id" />
      <property role="1L1pqM" value="END" />
      <property role="3tVfz5" value="9025760234657707165" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaW" role="25R1y">
      <property role="TrG5h" value="page_up_action_id" />
      <property role="1L1pqM" value="PAGE_UP" />
      <property role="3tVfz5" value="9025760234657707166" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaX" role="25R1y">
      <property role="TrG5h" value="page_down_action_id" />
      <property role="1L1pqM" value="PAGE_DOWN" />
      <property role="3tVfz5" value="9025760234657707167" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaY" role="25R1y">
      <property role="TrG5h" value="root_home_action_id" />
      <property role="1L1pqM" value="ROOT_HOME" />
      <property role="3tVfz5" value="9025760234657707168" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFaZ" role="25R1y">
      <property role="TrG5h" value="root_end_action_id" />
      <property role="1L1pqM" value="ROOT_END" />
      <property role="3tVfz5" value="9025760234657707169" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb0" role="25R1y">
      <property role="TrG5h" value="local_home_action_id" />
      <property role="1L1pqM" value="LOCAL_HOME" />
      <property role="3tVfz5" value="9025760234657707170" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb1" role="25R1y">
      <property role="TrG5h" value="local_end_action_id" />
      <property role="1L1pqM" value="LOCAL_END" />
      <property role="3tVfz5" value="9025760234657707171" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb2" role="25R1y">
      <property role="TrG5h" value="select_all_action_id" />
      <property role="1L1pqM" value="SELECT_ALL" />
      <property role="3tVfz5" value="5087404372099706598" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb3" role="25R1y">
      <property role="TrG5h" value="select_left_action_id" />
      <property role="1L1pqM" value="SELECT_LEFT" />
      <property role="3tVfz5" value="9025760234657707172" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb4" role="25R1y">
      <property role="TrG5h" value="select_right_action_id" />
      <property role="1L1pqM" value="SELECT_RIGHT" />
      <property role="3tVfz5" value="9025760234657707173" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb5" role="25R1y">
      <property role="TrG5h" value="select_up_action_id" />
      <property role="1L1pqM" value="SELECT_UP" />
      <property role="3tVfz5" value="9025760234657707174" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb6" role="25R1y">
      <property role="TrG5h" value="select_down_action_id" />
      <property role="1L1pqM" value="SELECT_DOWN" />
      <property role="3tVfz5" value="9025760234657707175" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb7" role="25R1y">
      <property role="TrG5h" value="select_home_action_id" />
      <property role="1L1pqM" value="SELECT_HOME" />
      <property role="3tVfz5" value="9025760234657707176" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb8" role="25R1y">
      <property role="TrG5h" value="select_end_action_id" />
      <property role="1L1pqM" value="SELECT_END" />
      <property role="3tVfz5" value="9025760234657707177" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb9" role="25R1y">
      <property role="TrG5h" value="select_local_end_action_id" />
      <property role="1L1pqM" value="SELECT_LOCAL_END" />
      <property role="3tVfz5" value="9025760234657707178" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFba" role="25R1y">
      <property role="TrG5h" value="select_local_home_action_id" />
      <property role="1L1pqM" value="SELECT_LOCAL_HOME" />
      <property role="3tVfz5" value="9025760234657707179" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbb" role="25R1y">
      <property role="TrG5h" value="select_next_action_id" />
      <property role="1L1pqM" value="SELECT_NEXT" />
      <property role="3tVfz5" value="9025760234657707180" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbc" role="25R1y">
      <property role="TrG5h" value="select_previous_action_id" />
      <property role="1L1pqM" value="SELECT_PREVIOUS" />
      <property role="3tVfz5" value="9025760234657707181" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbd" role="25R1y">
      <property role="TrG5h" value="left_transform_action_id" />
      <property role="1L1pqM" value="LEFT_TRANSFORM" />
      <property role="3tVfz5" value="9025760234657707182" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbe" role="25R1y">
      <property role="TrG5h" value="complete_action_id" />
      <property role="1L1pqM" value="COMPLETE" />
      <property role="3tVfz5" value="9025760234657707183" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbf" role="25R1y">
      <property role="TrG5h" value="complete_smart_action_id" />
      <property role="1L1pqM" value="COMPLETE_SMART" />
      <property role="3tVfz5" value="9025760234657707184" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbg" role="25R1y">
      <property role="TrG5h" value="fold_action_id" />
      <property role="1L1pqM" value="FOLD" />
      <property role="3tVfz5" value="9025760234657707185" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbh" role="25R1y">
      <property role="TrG5h" value="unfold_action_id" />
      <property role="1L1pqM" value="UNFOLD" />
      <property role="3tVfz5" value="9025760234657707186" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbi" role="25R1y">
      <property role="TrG5h" value="fold_all_action_id" />
      <property role="1L1pqM" value="FOLD_ALL" />
      <property role="3tVfz5" value="9025760234657707187" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbj" role="25R1y">
      <property role="TrG5h" value="unfold_all_action_id" />
      <property role="1L1pqM" value="UNFOLD_ALL" />
      <property role="3tVfz5" value="9025760234657707188" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbk" role="25R1y">
      <property role="TrG5h" value="toggle_folding_action_id" />
      <property role="1L1pqM" value="TOGGLE_FOLDING" />
      <property role="3tVfz5" value="9025760234657707189" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbl" role="25R1y">
      <property role="TrG5h" value="show_message_action_id" />
      <property role="1L1pqM" value="SHOW_MESSAGE" />
      <property role="3tVfz5" value="9025760234657707190" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbm" role="25R1y">
      <property role="TrG5h" value="comment_out_action_id" />
      <property role="1L1pqM" value="COMMENT" />
      <property role="3tVfz5" value="5238877291854096301" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbn" role="25R1y">
      <property role="TrG5h" value="click_action_id" />
      <property role="1L1pqM" value="CLICK" />
      <property role="3tVfz5" value="1943452258409327855" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbo" role="25R1y">
      <property role="TrG5h" value="insert_placeholder_action_id" />
      <property role="1L1pqM" value="INSERT_PLACEHOLDER" />
      <property role="3tVfz5" value="4058177569375008137" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbp" role="25R1y">
      <property role="TrG5h" value="insert_placeholder_before_action_id" />
      <property role="1L1pqM" value="INSERT_PLACEHOLDER_BEFORE" />
      <property role="3tVfz5" value="474718489010969512" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFbq">
    <property role="TrG5h" value="_ImageAlignment_Enum" />
    <property role="3F6X1D" value="1139744471051" />
    <ref role="1H5jkz" node="3Ftr4R6BFbs" resolve="justify" />
    <node concept="25R33" id="3Ftr4R6BFbs" role="25R1y">
      <property role="TrG5h" value="justify" />
      <property role="1L1pqM" value="alignmentJustify" />
      <property role="3tVfz5" value="1139744471411" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbt" role="25R1y">
      <property role="TrG5h" value="center" />
      <property role="1L1pqM" value="alignmentCenter" />
      <property role="3tVfz5" value="1139744531598" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbu" role="25R1y">
      <property role="TrG5h" value="tile" />
      <property role="1L1pqM" value="alignmentTile" />
      <property role="3tVfz5" value="1139744545740" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFbv">
    <property role="TrG5h" value="CellKeyMapCaretPolicy" />
    <property role="3GE5qa" value="CellKeyMap" />
    <property role="3F6X1D" value="1141091053936" />
    <ref role="1H5jkz" node="3Ftr4R6BFbx" resolve="ANY_POSITION" />
    <node concept="25R33" id="3Ftr4R6BFbx" role="25R1y">
      <property role="TrG5h" value="ANY_POSITION" />
      <property role="3tVfz5" value="1141091054266" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFby" role="25R1y">
      <property role="TrG5h" value="FIRST_POSITION" />
      <property role="3tVfz5" value="1141091172402" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFbz" role="25R1y">
      <property role="TrG5h" value="LAST_POSITION" />
      <property role="3tVfz5" value="1141091209420" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFb$" role="25R1y">
      <property role="TrG5h" value="INTERMEDIATE_POSITION" />
      <property role="3tVfz5" value="1143573566373" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFcG">
    <property role="TrG5h" value="_LeftRight_Enum" />
    <property role="3F6X1D" value="1143891911797" />
    <ref role="1H5jkz" node="3Ftr4R6BFcI" resolve="left" />
    <node concept="25R33" id="3Ftr4R6BFcI" role="25R1y">
      <property role="TrG5h" value="left" />
      <property role="3tVfz5" value="1143891911798" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFcJ" role="25R1y">
      <property role="TrG5h" value="right" />
      <property role="3tVfz5" value="1143891954220" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFcK">
    <property role="TrG5h" value="_CaretPosition_Enum" />
    <property role="3F6X1D" value="1197893505573" />
    <ref role="1H5jkz" node="3Ftr4R6BFcM" resolve="NONE" />
    <node concept="25R33" id="3Ftr4R6BFcM" role="25R1y">
      <property role="TrG5h" value="NONE" />
      <property role="1L1pqM" value="none" />
      <property role="3tVfz5" value="1197893505574" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFcN" role="25R1y">
      <property role="TrG5h" value="FIRST" />
      <property role="1L1pqM" value="first" />
      <property role="3tVfz5" value="1197893580900" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFcO" role="25R1y">
      <property role="TrG5h" value="LAST" />
      <property role="1L1pqM" value="last" />
      <property role="3tVfz5" value="1197893584870" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFcP">
    <property role="TrG5h" value="SelectPosition" />
    <property role="3GE5qa" value="SNode" />
    <property role="3F6X1D" value="1201268793545" />
    <ref role="1H5jkz" node="3Ftr4R6BFcR" resolve="before" />
    <node concept="25R33" id="3Ftr4R6BFcR" role="25R1y">
      <property role="TrG5h" value="before" />
      <property role="3tVfz5" value="1201268793546" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFcS" role="25R1y">
      <property role="TrG5h" value="after" />
      <property role="3tVfz5" value="1201268803781" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFcT">
    <property role="TrG5h" value="_NextLine_Enum" />
    <property role="3F6X1D" value="1216308376568" />
    <ref role="1H5jkz" node="3Ftr4R6BFcV" resolve="right" />
    <node concept="25R33" id="3Ftr4R6BFcV" role="25R1y">
      <property role="TrG5h" value="right" />
      <property role="3tVfz5" value="1216308507057" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFcW" role="25R1y">
      <property role="TrG5h" value="next_line" />
      <property role="1L1pqM" value="next-line" />
      <property role="3tVfz5" value="1216308502931" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFcX" role="25R1y">
      <property role="TrG5h" value="indented" />
      <property role="3tVfz5" value="1216308376569" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFdU">
    <property role="TrG5h" value="_Enum_Measure" />
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <property role="3F6X1D" value="1226504633752" />
    <ref role="1H5jkz" node="3Ftr4R6BFdX" resolve="SPACES" />
    <node concept="25R33" id="3Ftr4R6BFdW" role="25R1y">
      <property role="TrG5h" value="PIXELS" />
      <property role="1L1pqM" value="pixels" />
      <property role="3tVfz5" value="1226504633753" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFdX" role="25R1y">
      <property role="TrG5h" value="SPACES" />
      <property role="1L1pqM" value="spaces" />
      <property role="3tVfz5" value="1226504706052" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFdY">
    <property role="TrG5h" value="AlignEnum" />
    <property role="3F6X1D" value="1235999709834" />
    <ref role="1H5jkz" node="3Ftr4R6BFe0" resolve="LEFT" />
    <node concept="25R33" id="3Ftr4R6BFe0" role="25R1y">
      <property role="TrG5h" value="LEFT" />
      <property role="1L1pqM" value="left" />
      <property role="3tVfz5" value="1235999709835" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFe1" role="25R1y">
      <property role="TrG5h" value="RIGHT" />
      <property role="1L1pqM" value="right" />
      <property role="3tVfz5" value="1235999738057" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFe2" role="25R1y">
      <property role="TrG5h" value="CENTER" />
      <property role="1L1pqM" value="center" />
      <property role="3tVfz5" value="1235999744266" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFe3">
    <property role="TrG5h" value="DefaultBaseLineEnum" />
    <property role="3F6X1D" value="7620205565664606377" />
    <ref role="1H5jkz" node="3Ftr4R6BFe5" resolve="FIRST" />
    <node concept="25R33" id="3Ftr4R6BFe5" role="25R1y">
      <property role="TrG5h" value="FIRST" />
      <property role="1L1pqM" value="first cell baseline" />
      <property role="3tVfz5" value="7620205565664606378" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFe6" role="25R1y">
      <property role="TrG5h" value="CENTER" />
      <property role="1L1pqM" value="collection center" />
      <property role="3tVfz5" value="7620205565664606380" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFe7" role="25R1y">
      <property role="TrG5h" value="LAST" />
      <property role="1L1pqM" value="last cell baseline" />
      <property role="3tVfz5" value="7620205565664606448" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFe8">
    <property role="TrG5h" value="ScriptSwitchEnum" />
    <property role="3F6X1D" value="8255250703325730686" />
    <ref role="1H5jkz" node="3Ftr4R6BFea" resolve="NORMAL" />
    <node concept="25R33" id="3Ftr4R6BFea" role="25R1y">
      <property role="TrG5h" value="NORMAL" />
      <property role="1L1pqM" value="plain text" />
      <property role="3tVfz5" value="8255250703325730687" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFeb" role="25R1y">
      <property role="TrG5h" value="SUPERSCRIPT" />
      <property role="1L1pqM" value="superscript" />
      <property role="3tVfz5" value="8255250703325731012" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFec" role="25R1y">
      <property role="TrG5h" value="SUBSCRIPT" />
      <property role="1L1pqM" value="subscript" />
      <property role="3tVfz5" value="8255250703325731013" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFed">
    <property role="TrG5h" value="TableComponentEnum" />
    <property role="3F6X1D" value="6820251943131810951" />
    <ref role="1H5jkz" node="3Ftr4R6BFef" resolve="HORIZONTAL_COLLECTION" />
    <node concept="25R33" id="3Ftr4R6BFef" role="25R1y">
      <property role="TrG5h" value="HORIZONTAL_COLLECTION" />
      <property role="1L1pqM" value="horizontal collection" />
      <property role="3tVfz5" value="6820251943131810953" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFeg" role="25R1y">
      <property role="TrG5h" value="VERTICAL_COLLECTION" />
      <property role="1L1pqM" value="vertical collection" />
      <property role="3tVfz5" value="6820251943131810954" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFeh">
    <property role="TrG5h" value="PredefinedCellID" />
    <property role="3GE5qa" value="SNode.select" />
    <property role="3F6X1D" value="2162403111523060375" />
    <ref role="1H5jkz" node="3Ftr4R6BFej" resolve="first" />
    <node concept="25R33" id="3Ftr4R6BFej" role="25R1y">
      <property role="TrG5h" value="first" />
      <property role="1L1pqM" value="FIRST" />
      <property role="3tVfz5" value="2162403111523060376" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFek" role="25R1y">
      <property role="TrG5h" value="last" />
      <property role="1L1pqM" value="LAST" />
      <property role="3tVfz5" value="2162403111523062256" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFel" role="25R1y">
      <property role="TrG5h" value="firstEditable" />
      <property role="1L1pqM" value="FIRST_EDITABLE" />
      <property role="3tVfz5" value="2162403111523062252" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFem" role="25R1y">
      <property role="TrG5h" value="lastEditable" />
      <property role="1L1pqM" value="LAST_EDITABLE" />
      <property role="3tVfz5" value="2162403111523062249" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFen" role="25R1y">
      <property role="TrG5h" value="firstError" />
      <property role="1L1pqM" value="FIRST_ERROR" />
      <property role="3tVfz5" value="2057482661602002109" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFeo" role="25R1y">
      <property role="TrG5h" value="lastError" />
      <property role="1L1pqM" value="LAST_ERROR" />
      <property role="3tVfz5" value="2057482661602002115" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFep" role="25R1y">
      <property role="TrG5h" value="focusPolicy" />
      <property role="1L1pqM" value="FOCUS_POLICY" />
      <property role="3tVfz5" value="2057482661602002122" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFeq" role="25R1y">
      <property role="TrG5h" value="mostRelevant" />
      <property role="1L1pqM" value="MOST_RELEVANT" />
      <property role="3tVfz5" value="5933946333436767965" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFer">
    <property role="TrG5h" value="StyleAttributeKind" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="3F6X1D" value="8714766435264464204" />
    <ref role="1H5jkz" node="3Ftr4R6BFet" resolve="inherited" />
    <node concept="25R33" id="3Ftr4R6BFet" role="25R1y">
      <property role="TrG5h" value="inherited" />
      <property role="3tVfz5" value="8714766435264464205" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFeu" role="25R1y">
      <property role="TrG5h" value="simple" />
      <property role="3tVfz5" value="8714766435264464206" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFev">
    <property role="TrG5h" value="TransformationLocation_SideTransform_PlaceInCell" />
    <property role="3GE5qa" value="Menu.Transformation.Locations" />
    <property role="3F6X1D" value="3473224453637651887" />
    <node concept="25R33" id="3Ftr4R6BFex" role="25R1y">
      <property role="TrG5h" value="RIGHT" />
      <property role="1L1pqM" value="right" />
      <property role="3tVfz5" value="3473224453637651889" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFey" role="25R1y">
      <property role="TrG5h" value="LEFT" />
      <property role="1L1pqM" value="left" />
      <property role="3tVfz5" value="1838685759388610269" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFez">
    <property role="TrG5h" value="ShowBoundariesAreaEnum" />
    <property role="3F6X1D" value="5266818545798429658" />
    <ref role="1H5jkz" node="3Ftr4R6BFe_" resolve="GUTTER" />
    <node concept="25R33" id="3Ftr4R6BFe_" role="25R1y">
      <property role="TrG5h" value="GUTTER" />
      <property role="1L1pqM" value="gutter" />
      <property role="3tVfz5" value="5266818545798429659" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFeA" role="25R1y">
      <property role="TrG5h" value="GUTTER_AND_EDITOR" />
      <property role="1L1pqM" value="gutter-and-editor" />
      <property role="3tVfz5" value="5266818545798429768" />
    </node>
  </node>
  <node concept="1TIwiD" id="5cAVTFho728">
    <property role="EcuMT" value="5991739802479784072" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="MenuType" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5cAVTFho729">
    <property role="EcuMT" value="5991739802479784073" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="MenuTypeDefault" />
    <property role="34LRSv" value="default" />
    <property role="R4oN_" value="Default menu" />
    <ref role="1TJDcQ" node="5cAVTFho728" resolve="MenuType" />
  </node>
  <node concept="1TIwiD" id="5cAVTFho72a">
    <property role="EcuMT" value="5991739802479784074" />
    <property role="3GE5qa" value="Menu" />
    <property role="TrG5h" value="MenuTypeNamed" />
    <property role="34LRSv" value="named" />
    <property role="R4oN_" value="Named menu" />
    <ref role="1TJDcQ" node="5cAVTFho728" resolve="MenuType" />
    <node concept="PrWs8" id="5cAVTFhA5jt" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="AV1oJuQyTS">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TransparentStyleSheetItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="transparent" />
    <property role="EcuMT" value="701160265283677816" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="7I1om2Aqt7L">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="function parameter" />
    <property role="TrG5h" value="ConceptFunctionParameter_index" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="QueryFunction.Parameters" />
    <property role="34LRSv" value="index" />
    <property role="EcuMT" value="8899501406397518321" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2xkx6pX7zvC">
    <property role="EcuMT" value="2906093235281475560" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="SpellCheckStyle" />
    <property role="34LRSv" value="spellcheck" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="6m5Zb4otLWd">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SeparatorRightStyleClassItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="separator-right" />
    <property role="EcuMT" value="7315531007283109645" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="6hHPzJjZ$mY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PlaceholderStyleSheetItem" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="Stylesheet" />
    <property role="34LRSv" value="placeholder" />
    <property role="EcuMT" value="7236675728702326206" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
  <node concept="1TIwiD" id="5mnPslWOr0W">
    <property role="3GE5qa" value="Stylesheet" />
    <property role="TrG5h" value="ReadOnlyInspectorStyleClassItem" />
    <property role="34LRSv" value="read-only-inspector" />
    <property role="EcuMT" value="6167633258886574140" />
    <ref role="1TJDcQ" node="hgVOiwV" resolve="BooleanStyleSheetItem" />
  </node>
</model>

