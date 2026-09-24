<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)">
  <persistence version="9" />
  <languages>
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" />
    <import index="dvox" ref="r:9dfd3567-3b1f-4edb-85a0-3981ca2bfd8c(jetbrains.mps.lang.modelapi.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
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
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
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
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
  <node concept="1TIwiD" id="gzTqbfa">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="node type" />
    <property role="TrG5h" value="SNodeType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="node&lt;&gt;" />
    <property role="EcuMT" value="1138055754698" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="g$ehGDh" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1138405853777" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gzTrcDJ">
    <property role="TrG5h" value="SPropertyAccess" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.featureAccess" />
    <property role="EcuMT" value="1138056022639" />
    <property role="R4oN_" value="read a property value (.propName)" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gzTsBJd" role="1TKVEi">
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1138056395725" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gzTrEba">
    <property role="TrG5h" value="SLinkAccess" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.featureAccess" />
    <property role="EcuMT" value="1138056143562" />
    <property role="R4oN_" value="access single-cardinality link (.role)" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gzTt5is" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1138056516764" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="3vpu_siOTrw" role="PzmwI">
      <ref role="PrY4T" node="3vpu_siOTrb" resolve="ILinkAccess" />
    </node>
  </node>
  <node concept="1TIwiD" id="gzTsc4p">
    <property role="TrG5h" value="SLinkListAccess" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.featureAccess" />
    <property role="EcuMT" value="1138056282393" />
    <property role="R4oN_" value="access multi-cardinality link list (.role)" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gzTtc_y" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1138056546658" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="3vpu_siOTsF" role="PzmwI">
      <ref role="PrY4T" node="3vpu_siOTrb" resolve="ILinkAccess" />
    </node>
  </node>
  <node concept="1TIwiD" id="g$eCIIG">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SNodeOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation" />
    <property role="EcuMT" value="1138411891628" />
    <property role="R4oN_" value="abstract base for all smodel operations" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="gDxVPDm" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj5" />
      <property role="IQ2ns" value="1144104376918" />
      <ref role="20lvS9" node="gDxHYCE" resolve="AbstractOperationParameter" />
    </node>
    <node concept="PrWs8" id="hwunwXW" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="g$tyxPj">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Property_SetOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.property" />
    <property role="34LRSv" value="set" />
    <property role="EcuMT" value="1138661924179" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="g$tz06E" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1138662048170" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="g$uoxbX">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EnumMemberReference_Old" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.property" />
    <property role="EcuMT" value="1138676077309" />
    <property role="R4oN_" value="deprecated: use EnumMemberReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="g$uo_Gj" role="1TKVEi">
      <property role="20kJfa" value="enumMember" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1138676095763" />
      <ref role="20lvS9" to="tpce:fKM4N6M" resolve="EnumerationMemberDeclaration_Old" />
    </node>
    <node concept="RPilO" id="47y0FrqaLh4" role="lGtFl">
      <ref role="RPilL" node="g$uo_Gj" resolve="enumMember" />
      <node concept="ROjv2" id="47y0FrqaLh5" role="ROhUF">
        <property role="1W_73P" value="&lt;" />
        <property role="1W_73K" value="&gt;" />
      </node>
    </node>
    <node concept="asaX9" id="7KaEUqioOe9" role="lGtFl">
      <property role="YLQ7P" value="Use EnumMemberReference instead" />
      <property role="YLPcu" value="19.2" />
    </node>
  </node>
  <node concept="1TIwiD" id="g$zfrMx">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="set new child" />
    <property role="TrG5h" value="Link_SetNewChildOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.link.child" />
    <property role="34LRSv" value="set new" />
    <property role="EcuMT" value="1138757581985" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="g_A9B6W" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1139880128956" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="g$WFEPk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="add new child" />
    <property role="TrG5h" value="LinkList_AddNewChildOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.linkList" />
    <property role="34LRSv" value="add new" />
    <property role="EcuMT" value="1139184414036" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="g_A0v_Z" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1139877738879" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_mfA5D">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetParentOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="parent" />
    <property role="EcuMT" value="1139613262185" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="g_mIQ0D">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_IsInstanceOfOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="isInstanceOf" />
    <property role="EcuMT" value="1139621453865" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="h8cj9IO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1177027386292" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_$SAsn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_InsertNewNextSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="new next-sibling" />
    <property role="EcuMT" value="1139858892567" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="g_$SOQw" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1139858951584" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="g__qnPU">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_ReplaceWithNewOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="replace with new" />
    <property role="EcuMT" value="1139867745658" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="g__rbu9" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1139867957129" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_P9Ntg">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_ReplaceWithAnotherOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="replace with" />
    <property role="EcuMT" value="1140131837776" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="g_P9TlP" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="replacementNode" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1140131861877" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_PgBxf">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="delete this node" />
    <property role="TrG5h" value="Node_DeleteOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="delete" />
    <property role="EcuMT" value="1140133623887" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="asaX9" id="64YAEufXbbV" role="lGtFl">
      <property role="YLQ7P" value="use node&lt;&gt;.detach" />
      <property role="YLPcu" value="3.5" />
    </node>
  </node>
  <node concept="1TIwiD" id="g_PxgQB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SNodeTypeCastExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value=":" />
    <property role="EcuMT" value="1140137987495" />
    <property role="R4oN_" value="cast node to narrower smodel type (node as C)" />
    <ref role="1TJDcQ" node="253epK5leq7" resolve="AbstractTypeCastExpression" />
    <node concept="t5JxF" id="2k7p7sTvW9p" role="lGtFl">
      <property role="t5JxN" value="Casts node to the given type. 'asCast' property is true &lt;=&gt; the operation is null-safe (null if the provided type is incompatible)" />
    </node>
    <node concept="1TJgyi" id="i1BlNJ7" role="1TKVEl">
      <property role="TrG5h" value="asCast" />
      <property role="IQ2nx" value="1238684351431" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="gAoxUXw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="set child or referent" />
    <property role="TrG5h" value="Link_SetTargetOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.link" />
    <property role="34LRSv" value="set" />
    <property role="EcuMT" value="1140725362528" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gAoxUXx" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="linkTarget" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1140725362529" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gCHik1y">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_InsertNewPrevSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="new prev-sibling" />
    <property role="EcuMT" value="1143221076066" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gCHik1_" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1143221076069" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gCHtIcu">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_InsertNextSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="add next-sibling" />
    <property role="EcuMT" value="1143224066846" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gCHtIcx" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="insertedNode" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1143224066849" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gCHtX3x">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_InsertPrevSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="add prev-sibling" />
    <property role="EcuMT" value="1143224127713" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gCHtX3$" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="insertedNode" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1143224127716" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gCH_c3d">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="model type" />
    <property role="TrG5h" value="SModelType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="model" />
    <property role="EcuMT" value="1143226024141" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="gCI4AcO">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetModelOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="model" />
    <property role="EcuMT" value="1143234257716" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gCI8gl4">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_CreateNewNodeOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="new node" />
    <property role="EcuMT" value="1143235216708" />
    <property role="R4oN_" value="create non-root node in this model" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gCI8USK" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1143235391024" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="8W0anMXxXz" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="nodeId" />
      <property role="IQ2ns" value="161004399424315235" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="h8Orz_y" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="prototypeNode" />
      <property role="IQ2ns" value="1177700677986" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="asaX9" id="3g_g2DkJf6j" role="lGtFl" />
    </node>
  </node>
  <node concept="1TIwiD" id="gCYBYR7">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetPrevSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="prev-sibling" />
    <property role="EcuMT" value="1143511969223" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gCYCagd">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetNextSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="next-sibling" />
    <property role="EcuMT" value="1143512015885" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gDxHYCE">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractOperationParameter" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="EcuMT" value="1144100743722" />
    <property role="R4oN_" value="abstract base for operation modifier parameters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="gDxIGKj">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="inclusion" />
    <property role="TrG5h" value="OperationParm_Inclusion" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="+" />
    <property role="EcuMT" value="1144100932627" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
  </node>
  <node concept="1TIwiD" id="gDxLfci">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="OperationParm_Root" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="root" />
    <property role="EcuMT" value="1144101597970" />
    <property role="R4oN_" value="stop traversal at the containing root boundary" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
  </node>
  <node concept="1TIwiD" id="gDxMEHC">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="OperationParm_Concept" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="concept" />
    <property role="EcuMT" value="1144101972840" />
    <property role="R4oN_" value="concept type filter &lt;C&gt; parameter" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
    <node concept="1TJgyj" id="h$ri$Pk" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1207343664468" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="gD$rokk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="creates copy of this node" />
    <property role="TrG5h" value="Node_CopyOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="copy" />
    <property role="EcuMT" value="1144146199828" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gDBlSRu">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="test role of the node" />
    <property role="TrG5h" value="Node_IsRoleOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="isInRole" />
    <property role="EcuMT" value="1144195091934" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gDBmUTw" role="1TKVEi">
      <property role="20kJfa" value="conceptOfParent" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1144195362400" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="gDBn3iD" role="1TKVEi">
      <property role="20kJfa" value="linkInParent" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1144195396777" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gEI9FSM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="list of nodes" />
    <property role="TrG5h" value="SNodeListType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="nlist&lt;&gt;" />
    <property role="EcuMT" value="1145383075378" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="gEI9Wgx" role="1TKVEi">
      <property role="20kJfa" value="elementConcept" />
      <property role="IQ2ns" value="1145383142433" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="2eR5sdQzBt4" role="PzmwI">
      <ref role="PrY4T" to="tpee:3zZky3wF74d" resolve="IGenericType" />
    </node>
  </node>
  <node concept="1TIwiD" id="gEJrngP">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="downcast to lower semantic level" />
    <property role="TrG5h" value="SemanticDowncastExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="/" />
    <property role="EcuMT" value="1145404486709" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="gEJrQU1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="leftExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1145404616321" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="5HgiwiAy_7A" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="gET8V_a">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="list of (s)nodes" />
    <property role="TrG5h" value="SNodeListCreator" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="nlist" />
    <property role="EcuMT" value="1145567426890" />
    <ref role="1TJDcQ" to="tpee:gEShaYr" resolve="AbstractCreator" />
    <node concept="1TJgyj" id="gET96zp" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="createdType" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1145567471833" />
      <ref role="20lvS9" node="gEI9FSM" resolve="SNodeListType" />
    </node>
  </node>
  <node concept="1TIwiD" id="gETlYyV">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetNextSiblingsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="next-siblings" />
    <property role="EcuMT" value="1145570846907" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gETtrpn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetPrevSiblingsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="prev-siblings" />
    <property role="EcuMT" value="1145572800087" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gETvwEk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetAllSiblingsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="siblings" />
    <property role="EcuMT" value="1145573345940" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="gFt7uOF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="check value of enum property" />
    <property role="TrG5h" value="Property_HasValue_Enum" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.property" />
    <property role="34LRSv" value="is" />
    <property role="EcuMT" value="1146171026731" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gFt7uOG" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1146171026732" />
      <ref role="20lvS9" node="g$uoxbX" resolve="EnumMemberReference_Old" />
    </node>
    <node concept="asaX9" id="7Hg1hrtWZww" role="lGtFl">
      <property role="YLPcu" value="19.2" />
      <property role="YLQ7P" value="Use EnumMember_IsOperation instead" />
    </node>
  </node>
  <node concept="1TIwiD" id="gFy1jak">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="check value of property" />
    <property role="TrG5h" value="Property_HasValue_Simple" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.property" />
    <property role="34LRSv" value="is" />
    <property role="EcuMT" value="1146253292180" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="gFy1jal" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1146253292181" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gNgmYLL">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="OperationParm_ConceptList" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="concept in" />
    <property role="EcuMT" value="1154546920561" />
    <property role="R4oN_" value="list of concept type filters" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
    <node concept="1TJgyj" id="gNgmYLN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj6" />
      <property role="IQ2ns" value="1154546920563" />
      <ref role="20lvS9" node="gNgn60t" resolve="ConceptReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="gNgn60t">
    <property role="TrG5h" value="ConceptReference" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="EcuMT" value="1154546950173" />
    <property role="R4oN_" value="concept entry in a concept filter list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="gNgnhzJ" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1154546997487" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="gYxF2fM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_CreateNewRootNodeOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="new root node" />
    <property role="EcuMT" value="1166648550386" />
    <property role="R4oN_" value="create and insert root node in this model" />
    <ref role="1TJDcQ" node="gCI8gl4" resolve="Model_CreateNewNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h2Rf3i4">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetDescendantsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="descendants" />
    <property role="EcuMT" value="1171305280644" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h2Rxl3C">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetContainingRootOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="containingRoot" />
    <property role="EcuMT" value="1171310072040" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h2RRcAW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_RootsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="roots" />
    <property role="EcuMT" value="1171315804604" />
    <property role="R4oN_" value="root nodes in this model" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="5QK5AMJ1t1p" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="IQ2ns" value="6750920497477046361" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
    <node concept="1TJgyj" id="h2RRcAX" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1171315804605" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      <node concept="asaX9" id="5QK5AMJ1t1s" role="lGtFl">
        <property role="YLPcu" value="2021.1" />
        <property role="YLQ7P" value="Use conceptArgument, instead" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="h2Smgyn">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_NodesOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="nodes" />
    <property role="EcuMT" value="1171323947159" />
    <property role="R4oN_" value="all nodes (roots and descendants) in this model" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="1xD045lXGSy" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="IQ2ns" value="1758937410080001570" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="h2Xjw1B">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetAncestorOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="ancestor" />
    <property role="EcuMT" value="1171407110247" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h32TBBB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetChildrenOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="children" />
    <property role="EcuMT" value="1171500988903" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h3w_OT6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_IsNullOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="isNull" />
    <property role="EcuMT" value="1171999116870" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h3x8VNB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_IsNotNullOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="isNotNull" />
    <property role="EcuMT" value="1172008320231" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h3NT_Zs">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="node's concept declaration" />
    <property role="TrG5h" value="Node_GetConceptOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="conceptNode" />
    <property role="EcuMT" value="1172323065820" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="asaX9" id="6tLUGr5UwqR" role="lGtFl">
      <property role="YLPcu" value="2018.3" />
    </node>
  </node>
  <node concept="1TIwiD" id="h3O6GYR">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="concept declaration is exactly the same" />
    <property role="TrG5h" value="Concept_IsExactlyOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="isExactly" />
    <property role="EcuMT" value="1172326502327" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="hzQVzxm" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1206733650006" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="h3THzq0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="node&lt;AbstractConceptDeclaration&gt;" />
    <property role="TrG5h" value="ConceptNodeType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="conceptNode&lt; &gt;" />
    <property role="EcuMT" value="1172420572800" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="hbqa45m" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaraton" />
      <property role="IQ2ns" value="1180481110358" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="asaX9" id="4eGV4eBU7tU" role="lGtFl">
      <property role="YLQ7P" value="use an explicit node&lt;AbstractConceptDeclaration&gt; instead, planned to be removed after 2017.2" />
      <property role="YLPcu" value="2018.3" />
    </node>
  </node>
  <node concept="1TIwiD" id="h3TUQj6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="concept declaration node" />
    <property role="TrG5h" value="ConceptRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="conceptNode/&lt;name&gt;/" />
    <property role="EcuMT" value="1172424058054" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="h3TV0KE" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1172424100906" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="asaX9" id="4eGV4eC5kGm" role="lGtFl">
      <property role="YLQ7P" value="Use ConceptIdRefExpression instead" />
    </node>
  </node>
  <node concept="1TIwiD" id="h4z$bTp">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetAncestorsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="ancestors" />
    <property role="EcuMT" value="1173122760281" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="h7lApEh">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_RootsIncludingImportedOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="rootsIncludingImported" />
    <property role="EcuMT" value="1176109685393" />
    <property role="R4oN_" value="roots of this model and imported models" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="5QK5AMJ1OKV" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="IQ2ns" value="6750920497477143611" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
    <node concept="1TJgyj" id="h7lApEi" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1176109685394" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      <node concept="asaX9" id="5QK5AMJ1OLb" role="lGtFl">
        <property role="YLQ7P" value="Use conceptArgument, instead" />
        <property role="YLPcu" value="2021.1" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="h8chp0G">
    <property role="TrG5h" value="RefConcept_Reference" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="EcuMT" value="1177026924588" />
    <property role="R4oN_" value="&lt;ConceptName&gt; concept argument in operation brackets" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="h8cht0$" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1177026940964" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="hzMxAi9" role="PzmwI">
      <ref role="PrY4T" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="habSWDE">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="gets node's index in parent's collection" />
    <property role="TrG5h" value="Node_GetIndexInParentOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="index" />
    <property role="EcuMT" value="1179168000618" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="hamJodO">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Concept_GetDirectSuperConcepts" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="super-concepts/direct" />
    <property role="EcuMT" value="1179350041460" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="haqgKhF">
    <property role="TrG5h" value="Node_ConceptMethodCall" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="EcuMT" value="1179409122411" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyi" id="2up2FNsZMWt" role="1TKVEl">
      <property role="TrG5h" value="directCall" />
      <property role="IQ2nx" value="2853323645193760541" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="asaX9" id="1OqTjpjgM3z" role="lGtFl">
        <property role="YLPcu" value="2018.3" />
      </node>
    </node>
    <node concept="1TJgyj" id="haqh4HH" role="1TKVEi">
      <property role="20kJfa" value="conceptMethodDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1179409206125" />
      <ref role="20lvS9" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
      <ref role="20ksaX" to="tpee:fz7wK6H" resolve="baseMethodDeclaration" />
    </node>
    <node concept="PrWs8" id="hP8w8Bn" role="PzmwI">
      <ref role="PrY4T" to="tpee:hxndl_i" resolve="IMethodCall" />
    </node>
  </node>
  <node concept="1TIwiD" id="haZa9Qk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Concept_IsSuperConceptOfOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="isSuperConceptOf" />
    <property role="EcuMT" value="1180028149140" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="haZaTZ0" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1180028346304" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="haZo160">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Concept_IsSubConceptOfOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="isSubConceptOf" />
    <property role="EcuMT" value="1180031783296" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="haZo161" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1180031783297" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="hboJPO3">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Concept_GetAllSuperConcepts" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="super-concepts/all" />
    <property role="EcuMT" value="1180457458947" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="hbzrR4P">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="create new node" />
    <property role="TrG5h" value="SNodeCreator" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="node&lt;&gt;" />
    <property role="EcuMT" value="1180636770613" />
    <ref role="1TJDcQ" to="tpee:gEShaYr" resolve="AbstractCreator" />
    <node concept="1TJgyj" id="hbzrR4S" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="createdType" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1180636770616" />
      <ref role="20lvS9" node="gzTqbfa" resolve="SNodeType" />
    </node>
    <node concept="1TJgyj" id="hcKXxSR" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="prototypeNode" />
      <property role="IQ2ns" value="1181937442359" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="asaX9" id="3g_g2DkJf5Z" role="lGtFl" />
    </node>
  </node>
  <node concept="1TIwiD" id="hcLFhWE">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="create new node" />
    <property role="TrG5h" value="Concept_NewInstance" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="new instance" />
    <property role="EcuMT" value="1181949435690" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="hcLFK_E" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="prototypeNode" />
      <property role="IQ2ns" value="1181949561194" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="asaX9" id="3g_g2DkJf69" role="lGtFl" />
    </node>
  </node>
  <node concept="1TIwiD" id="hcLSoNs">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Concept_GetAllSubConcepts" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="sub-concepts" />
    <property role="EcuMT" value="1181952871644" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="hdiTx8Z" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="smodel" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1182506816063" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="hdj9C4s">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_NodesIncludingImportedOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="nodesIncludingImported" />
    <property role="EcuMT" value="1182511038748" />
    <property role="R4oN_" value="all nodes of this and imported models" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="5QK5AMJ1OL7" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="IQ2ns" value="6750920497477143623" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
    <node concept="1TJgyj" id="hdj9C4u" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1182511038750" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      <node concept="asaX9" id="5QK5AMJ1OLf" role="lGtFl">
        <property role="YLQ7P" value="Use conceptArgument, instead" />
        <property role="YLPcu" value="2021.1" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="hy5Kd_5">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="# expr # used as link, property, or concept qualifier" />
    <property role="TrG5h" value="PoundExpression" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="# &lt;expr&gt;" />
    <property role="EcuMT" value="1204834851141" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="hy5KhSf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1204834868751" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="2qM$EmJLX0R" role="PzmwI">
      <ref role="PrY4T" node="2qM$EmJLWMF" resolve="IPropertyQualifier" />
    </node>
    <node concept="PrWs8" id="hy6GaQA" role="PzmwI">
      <ref role="PrY4T" node="hy6_InQ" resolve="ILinkAccessQualifier" />
    </node>
    <node concept="PrWs8" id="2qM$EmJLX0T" role="PzmwI">
      <ref role="PrY4T" node="2qM$EmJLWME" resolve="ILinkQualifier" />
    </node>
    <node concept="PrWs8" id="hzM$pmB" role="PzmwI">
      <ref role="PrY4T" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
    <node concept="PrWs8" id="2SljyToQnWx" role="PzmwI">
      <ref role="PrY4T" node="2SljyToQhT_" resolve="INodePointerArg" />
    </node>
  </node>
  <node concept="PlHQZ" id="hy6_InQ">
    <property role="TrG5h" value="ILinkAccessQualifier" />
    <property role="3GE5qa" value="attribute" />
    <property role="EcuMT" value="1204848879094" />
    <property role="R4oN_" value="identifies the link or attribute to access" />
  </node>
  <node concept="1TIwiD" id="hy6LbF0">
    <property role="TrG5h" value="LinkRefQualifier" />
    <property role="3GE5qa" value="attribute" />
    <property role="EcuMT" value="1204851882688" />
    <property role="R4oN_" value="link access qualified by a node reference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="hy6LbF1" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1204851882689" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="hy6Lfq4" role="PzmwI">
      <ref role="PrY4T" node="hy6_InQ" resolve="ILinkAccessQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="hz2XrnQ">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_IsAttributeOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="isAttribute" />
    <property role="EcuMT" value="1205861725686" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="hzBYID0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_AddRootOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="add root" />
    <property role="EcuMT" value="1206482823744" />
    <property role="R4oN_" value="insert detached node as new root" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="hzBYID2" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="nodeArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1206482823746" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="hzMxujR">
    <property role="TrG5h" value="IRefConceptArg" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="EcuMT" value="1206659704055" />
    <property role="R4oN_" value="concept argument in an operation parameter" />
  </node>
  <node concept="1TIwiD" id="hCLkI6b">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_GetLongNameOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="name" />
    <property role="EcuMT" value="1212008292747" />
    <property role="R4oN_" value="fully qualified model name" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="hFZvMIM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Property_RemoveOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.property" />
    <property role="34LRSv" value="remove" />
    <property role="EcuMT" value="1215467301810" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="hJB5_oW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="named node reference" />
    <property role="TrG5h" value="NodeRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="node /&lt;name&gt;/" />
    <property role="EcuMT" value="1219352745532" />
    <ref role="1TJDcQ" node="36vPRrqnoSW" resolve="AbstractNodeRefExpression" />
    <node concept="1TJgyj" id="hJB5MUc" role="1TKVEi">
      <property role="20kJfa" value="referentNode" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1219352800908" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="asaX9" id="1t9Fffggnzf" role="lGtFl">
      <property role="YLPcu" value="3.3" />
      <property role="YLQ7P" value="This reference has no information where to resolve it. Unless we introduce SRepository parameter here, use NodePointerExpression instead." />
    </node>
  </node>
  <node concept="1TIwiD" id="hLiUZJy">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="search scope type" />
    <property role="TrG5h" value="SearchScopeType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="search scope" />
    <property role="EcuMT" value="1221161909218" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="hLjrik3">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="test node visibility in scope" />
    <property role="TrG5h" value="SearchScope_ContainsOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation" />
    <property role="34LRSv" value="contains" />
    <property role="EcuMT" value="1221170373891" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="asaX9" id="5j5ScoAVt7e" role="lGtFl">
      <property role="YLQ7P" value="use Scope class instead" />
      <property role="YLPcu" value="2018.1" />
    </node>
    <node concept="PrWs8" id="hLjrBaj" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="hLjsBVZ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="nodeToCheck" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1221170724607" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="hQ8GBOl">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="link declaration node" />
    <property role="TrG5h" value="LinkRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="linkNode/&lt;role&gt;/" />
    <property role="EcuMT" value="1226359078165" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="hQ8GBOm" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1226359078166" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="hQ8H3En" role="1TKVEi">
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1226359192215" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="asaX9" id="5xzMQBRF0EQ" role="lGtFl">
      <property role="YLPcu" value="3.5" />
      <property role="YLQ7P" value="migrate to link/.../" />
    </node>
  </node>
  <node concept="1TIwiD" id="hQYFoq3">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="nodes structural equality operation" />
    <property role="TrG5h" value="EqualsStructurallyExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="matches" />
    <property role="EcuMT" value="1227264722563" />
    <ref role="1TJDcQ" to="tpee:fJuHJVf" resolve="BinaryOperation" />
  </node>
  <node concept="1TIwiD" id="hRYRAV0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="removes from container" />
    <property role="TrG5h" value="Node_DetachOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="detach" />
    <property role="EcuMT" value="1228341669568" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="i2ZThgx">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="enumeration member type" />
    <property role="TrG5h" value="SEnumerationMemberType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="enummember&lt;&gt;" />
    <property role="EcuMT" value="1240170042401" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="i2ZWj0V" role="1TKVEi">
      <property role="20kJfa" value="enum" />
      <property role="IQ2ns" value="1240170836027" />
      <ref role="20lvS9" to="tpce:VFd4X$DyB_" resolve="IEnumeration" />
    </node>
  </node>
  <node concept="1TIwiD" id="i2ZYiQY">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="enum member value" />
    <property role="TrG5h" value="EnumMember_ValueOperation_Old" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="34LRSv" value="value" />
    <property role="EcuMT" value="1240171359678" />
    <node concept="PrWs8" id="i3MhpQu" role="PzmwI">
      <ref role="PrY4T" node="i3MheXj" resolve="EnumMemberOperation" />
    </node>
    <node concept="asaX9" id="50Pb80HCIHJ" role="lGtFl">
      <property role="YLQ7P" value="Use EnumMember_NameOperation instead" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="1TIwiD" id="i305Nnj">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="enum member name" />
    <property role="TrG5h" value="EnumMember_NameOperation_Old" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="34LRSv" value="name" />
    <property role="EcuMT" value="1240173327827" />
    <node concept="PrWs8" id="i3Mhrwe" role="PzmwI">
      <ref role="PrY4T" node="i3MheXj" resolve="EnumMemberOperation" />
    </node>
    <node concept="asaX9" id="50Pb80HC$1a" role="lGtFl">
      <property role="YLQ7P" value="Use EnumMember_NameOperation or EnumMember_PresentationOperation instead" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="1TIwiD" id="i3HcIAb">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="enum operation" />
    <property role="TrG5h" value="SEnumOperationInvocation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="enum" />
    <property role="34LRSv" value="enum/&lt;name&gt;/.operation" />
    <property role="EcuMT" value="1240930118027" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="i3HdvpB" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="operation" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1240930317927" />
      <ref role="20lvS9" node="i3HdMsX" resolve="SEnumOperation_Old" />
    </node>
    <node concept="1TJgyj" id="i3HcIAc" role="1TKVEi">
      <property role="20kJfa" value="enumDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1240930118028" />
      <ref role="20lvS9" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
    </node>
    <node concept="asaX9" id="50Pb80H_Bcy" role="lGtFl">
      <property role="YLQ7P" value="Use DotExpression and EnumIdRefExpression as operand" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="PlHQZ" id="i3HdMsX">
    <property role="TrG5h" value="SEnumOperation_Old" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="EcuMT" value="1240930395965" />
    <property role="R4oN_" value="deprecated old-API enum operation interface" />
    <node concept="asaX9" id="50Pb80HCIJw" role="lGtFl">
      <property role="YLPcu" value="19.1" />
      <property role="YLQ7P" value="Use EnumOperation instead" />
    </node>
  </node>
  <node concept="1TIwiD" id="i3HdYoc">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="parse enum name" />
    <property role="TrG5h" value="SEnum_MemberForNameOperation_Old" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="34LRSv" value="memberForName()" />
    <property role="EcuMT" value="1240930444812" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="i3HdYod" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="nameExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1240930444813" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="i3Hei87" role="PzmwI">
      <ref role="PrY4T" node="i3HdMsX" resolve="SEnumOperation_Old" />
    </node>
    <node concept="asaX9" id="50Pb80HCIvL" role="lGtFl">
      <property role="YLQ7P" value="Use Enum_FromNameOperation or Enum_FromPresentationOperation instead" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="1TIwiD" id="i3HdYpe">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="parse enum value" />
    <property role="TrG5h" value="SEnum_MemberForValueOperation_Old" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="34LRSv" value="memberForValue()" />
    <property role="EcuMT" value="1240930444878" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="i3HdYpf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="valueExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1240930444879" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="i3Heku2" role="PzmwI">
      <ref role="PrY4T" node="i3HdMsX" resolve="SEnumOperation_Old" />
    </node>
    <node concept="asaX9" id="50Pb80HCzDJ" role="lGtFl">
      <property role="YLQ7P" value="Use Enum_FromNameOperation instead" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="1TIwiD" id="i3HdYqh">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="enum member access" />
    <property role="TrG5h" value="SEnum_MemberOperation_Old" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="EcuMT" value="1240930444945" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="i3HdYqi" role="1TKVEi">
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1240930444946" />
      <ref role="20lvS9" to="tpce:fKM4N6M" resolve="EnumerationMemberDeclaration_Old" />
    </node>
    <node concept="PrWs8" id="i3Hemwb" role="PzmwI">
      <ref role="PrY4T" node="i3HdMsX" resolve="SEnumOperation_Old" />
    </node>
    <node concept="asaX9" id="50Pb80HCIAD" role="lGtFl">
      <property role="YLQ7P" value="Use Enum_MemberLiteral instead" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="1TIwiD" id="i3HdYqO">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="members list" />
    <property role="TrG5h" value="SEnum_MembersOperation_Old" />
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="34LRSv" value="members" />
    <property role="EcuMT" value="1240930444980" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="i3HenwT" role="PzmwI">
      <ref role="PrY4T" node="i3HdMsX" resolve="SEnumOperation_Old" />
    </node>
    <node concept="asaX9" id="50Pb80HCIJz" role="lGtFl">
      <property role="YLQ7P" value="Use Enum_MembersOperation" />
      <property role="YLPcu" value="19.1" />
    </node>
  </node>
  <node concept="PlHQZ" id="i3MheXj">
    <property role="TrG5h" value="EnumMemberOperation" />
    <property role="3GE5qa" value="enumerations" />
    <property role="EcuMT" value="1241015185235" />
    <property role="R4oN_" value="interface for enumeration member operations" />
    <node concept="PrWs8" id="i3Mhhsg" role="PrDN$">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1$7dvc8Sykb">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="OperationParm_StopConceptList" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="stop concepts are" />
    <property role="EcuMT" value="1803469493727536395" />
    <property role="R4oN_" value="stop concepts (exclusive) for descendants traversal" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
    <node concept="1TJgyj" id="1$7dvc8Sykc" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj6" />
      <property role="IQ2ns" value="1803469493727536396" />
      <ref role="20lvS9" node="gNgn60t" resolve="ConceptReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="3vpu_siOTrb">
    <property role="TrG5h" value="ILinkAccess" />
    <property role="EcuMT" value="4024382256428848843" />
    <property role="R4oN_" value="assignable l-value: link, list, or attribute access" />
  </node>
  <node concept="1TIwiD" id="35Jy4LMD1lX">
    <property role="TrG5h" value="SLinkImplicitSelect" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.featureAccess" />
    <property role="EcuMT" value="3562215692195599741" />
    <property role="R4oN_" value="implicit single selection from a multi-role access" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="35Jy4LMD1u3" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="3562215692195600259" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="fZiK5FHvrE" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Ac3mvq$4mF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetReferencesOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="references" />
    <property role="EcuMT" value="8758390115028452779" />
    <property role="R4oN_" value="all outgoing SReference values" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="7Ac3mvqBi5P">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="reference type" />
    <property role="TrG5h" value="SReferenceType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="reference" />
    <property role="EcuMT" value="8758390115029295477" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="3$WLiM6yA0a">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Reference_GetTargetOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="34LRSv" value="target" />
    <property role="EcuMT" value="4124388153790980106" />
    <property role="R4oN_" value="the node this reference points to" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1lUJQtrPjS9" role="PzmwI">
      <ref role="PrY4T" node="1lUJQtrPjRM" resolve="IReferenceOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1lUJQtrPjRF">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Reference_GetLinkDeclarationOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="34LRSv" value="linkDeclaration" />
    <property role="EcuMT" value="1547759872598425067" />
    <property role="R4oN_" value="deprecated: use .link" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1lUJQtrPjSa" role="PzmwI">
      <ref role="PrY4T" node="1lUJQtrPjRM" resolve="IReferenceOperation" />
    </node>
    <node concept="asaX9" id="2ytHpS0VIur" role="lGtFl">
      <property role="YLPcu" value="3.5" />
      <property role="YLQ7P" value="use .link instead" />
    </node>
  </node>
  <node concept="PlHQZ" id="1lUJQtrPjRM">
    <property role="TrG5h" value="IReferenceOperation" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="EcuMT" value="1547759872598425074" />
    <property role="R4oN_" value="operations on an SReference value" />
    <node concept="PrWs8" id="1lUJQtrPjRN" role="PrDN$">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4VYGy97ZKaB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Reference_GetRoleOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="34LRSv" value="role" />
    <property role="EcuMT" value="5692182839349412519" />
    <property role="R4oN_" value="deprecated: use .link.name" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="asaX9" id="7cdZoO_MeqH" role="lGtFl">
      <property role="YLPcu" value="3.3" />
      <property role="YLQ7P" value="use getLink() method" />
    </node>
    <node concept="PrWs8" id="4VYGy97ZKb3" role="PzmwI">
      <ref role="PrY4T" node="1lUJQtrPjRM" resolve="IReferenceOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1GPSoCqeMMq">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetContainingRoleOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="containingRole" />
    <property role="EcuMT" value="1960721196051541146" />
    <property role="R4oN_" value="deprecated: use .containingLink" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="asaX9" id="7cdZoO_MeDD" role="lGtFl">
      <property role="YLQ7P" value="use SNode.getContainmentLink() method or &quot;link&quot; operation after 3.5" />
      <property role="YLPcu" value="3.3" />
    </node>
  </node>
  <node concept="1TIwiD" id="38ovo3PI8w0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_GetReferenceOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="reference" />
    <property role="EcuMT" value="3609773094169249792" />
    <property role="R4oN_" value="get specific outgoing reference by link" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="38ovo3PI95k" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="linkQualifier" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="3609773094169252180" />
      <ref role="20lvS9" node="4uVbusd0fYc" resolve="OperationParm_LinkQualifier" />
    </node>
  </node>
  <node concept="PlHQZ" id="34EpZoncu9D">
    <property role="TrG5h" value="ILinkAccessQualifierContainer" />
    <property role="3GE5qa" value="attribute" />
    <property role="EcuMT" value="3542758363529077353" />
    <property role="R4oN_" value="carries an ILinkAccessQualifier child" />
  </node>
  <node concept="1TIwiD" id="4uVbusd0fYc">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="OperationParm_LinkQualifier" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="linkQualifier" />
    <property role="EcuMT" value="5168775467716640652" />
    <property role="R4oN_" value="link/C:role/ identifier for reference access" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
    <node concept="1TJgyj" id="4uVbusd0fYd" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="linkQualifier" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="5168775467716640653" />
      <ref role="20lvS9" node="hy6_InQ" resolve="ILinkAccessQualifier" />
    </node>
    <node concept="PrWs8" id="52QkhOxfiAo" role="PzmwI">
      <ref role="PrY4T" node="34EpZoncu9D" resolve="ILinkAccessQualifierContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4WR1jK$23vx">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Reference_GetResolveInfo" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="34LRSv" value="resolveInfo" />
    <property role="EcuMT" value="5708036808576088033" />
    <property role="R4oN_" value="stored text hint for reference resolution" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4WR1jK$23yk" role="PzmwI">
      <ref role="PrY4T" node="1lUJQtrPjRM" resolve="IReferenceOperation" />
    </node>
    <node concept="t5JxF" id="3TdPJoXEvic" role="lGtFl">
      <property role="t5JxN" value="operation to retrieve resolve information recorded with a reference; doesn't construct new one if unknown" />
    </node>
  </node>
  <node concept="1TIwiD" id="1lvHLgR6tlS">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="include only nodes at the same meta-level" />
    <property role="TrG5h" value="OperationParm_SameMetaLevel" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="34LRSv" value="M" />
    <property role="EcuMT" value="1540150895035667832" />
    <ref role="1TJDcQ" node="gDxHYCE" resolve="AbstractOperationParameter" />
  </node>
  <node concept="1TIwiD" id="1Cyzq4Pv$D4">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="if a node is instance of concept" />
    <property role="TrG5h" value="IfInstanceOfStatement" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="ifInstanceOf" />
    <property role="EcuMT" value="1883223317721008708" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="1Cyzq4Pv$D8" role="1TKVEi">
      <property role="20kJfa" value="nodeConcept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1883223317721008712" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="1Cyzq4Pv$D6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="nodeExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1883223317721008710" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1Cyzq4Pv$D5" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1883223317721008709" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyj" id="1Cyzq4Pv$D7" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1883223317721008711" />
      <ref role="20lvS9" node="1Cyzq4Pv$D9" resolve="IfInstanceOfVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Cyzq4Pv$D9">
    <property role="TrG5h" value="IfInstanceOfVariable" />
    <property role="EcuMT" value="1883223317721008713" />
    <property role="R4oN_" value="typed variable bound to the cast node" />
    <ref role="1TJDcQ" to="tpee:4k3qd$cSlJ3" resolve="BaseVariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="1Cyzq4PvWDN">
    <property role="TrG5h" value="IfInstanceOfVarReference" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="EcuMT" value="1883223317721107059" />
    <property role="R4oN_" value="reference to the IfInstanceOfVariable" />
    <ref role="1TJDcQ" to="tpee:4Lb$w0Yiqs4" resolve="BaseVariableReference" />
    <node concept="1TJgyj" id="1Cyzq4PvWDO" role="1TKVEi">
      <property role="20kJfa" value="instanceOfVariable" />
      <property role="IQ2ns" value="1883223317721107060" />
      <ref role="20ksaX" to="tpee:4Lb$w0Yiqs5" resolve="baseVariableDeclaration" />
      <ref role="20lvS9" node="1Cyzq4Pv$D9" resolve="IfInstanceOfVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="5zEkxuKhqeM">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="attribute access" />
    <property role="TrG5h" value="AttributeAccess" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="attributes" />
    <property role="34LRSv" value="@" />
    <property role="EcuMT" value="6407023681583031218" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="5zEkxuKhrAO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="qualifier" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6407023681583036852" />
      <ref role="20lvS9" node="5zEkxuKhrAF" resolve="AttributeQualifier" />
    </node>
    <node concept="PrWs8" id="62qhzb6UxMK" role="PzmwI">
      <ref role="PrY4T" node="3vpu_siOTrb" resolve="ILinkAccess" />
    </node>
  </node>
  <node concept="1TIwiD" id="5zEkxuKhrAF">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AttributeQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="6407023681583036843" />
    <property role="R4oN_" value="abstract base for attribute qualifier" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5zEkxuKhrAP">
    <property role="TrG5h" value="NodeAttributeQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="6407023681583036853" />
    <property role="R4oN_" value="attribute on the node itself (@AttributeConcept)" />
    <ref role="1TJDcQ" node="5zEkxuKhrAF" resolve="AttributeQualifier" />
    <node concept="1TJgyj" id="5zEkxuKhrAQ" role="1TKVEi">
      <property role="20kJfa" value="attributeConcept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6407023681583036854" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5zEkxuKhrAR">
    <property role="TrG5h" value="LinkAttributeQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="6407023681583036855" />
    <property role="R4oN_" value="attribute on a reference link" />
    <ref role="1TJDcQ" node="5zEkxuKhrAF" resolve="AttributeQualifier" />
    <node concept="1TJgyj" id="5zEkxuKhrUi" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="linkQualifier" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6407023681583038098" />
      <ref role="20lvS9" node="2qM$EmJLWME" resolve="ILinkQualifier" />
    </node>
    <node concept="1TJgyj" id="5zEkxuKhrAS" role="1TKVEi">
      <property role="20kJfa" value="attributeConcept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6407023681583036856" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5zEkxuKhsyK">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="all attributes" />
    <property role="TrG5h" value="AllAttributeQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="34LRSv" value="&lt;all&gt;" />
    <property role="EcuMT" value="6407023681583040688" />
    <ref role="1TJDcQ" node="5zEkxuKhrAF" resolve="AttributeQualifier" />
  </node>
  <node concept="1TIwiD" id="5zEkxuKhsAT">
    <property role="TrG5h" value="PropertyAttributeQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="6407023681583040953" />
    <property role="R4oN_" value="attribute on a property" />
    <ref role="1TJDcQ" node="5zEkxuKhrAF" resolve="AttributeQualifier" />
    <node concept="1TJgyj" id="5zEkxuKhsAV" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="propertyQualifier" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6407023681583040955" />
      <ref role="20lvS9" node="2qM$EmJLWMF" resolve="IPropertyQualifier" />
    </node>
    <node concept="1TJgyj" id="5zEkxuKhsAU" role="1TKVEi">
      <property role="20kJfa" value="attributeConcept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6407023681583040954" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="2qM$EmJLWME">
    <property role="TrG5h" value="ILinkQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="2788452359612124330" />
    <property role="R4oN_" value="identifies a specific link for attribute access" />
  </node>
  <node concept="PlHQZ" id="2qM$EmJLWMF">
    <property role="TrG5h" value="IPropertyQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="2788452359612124331" />
    <property role="R4oN_" value="identifies a specific property for attribute access" />
  </node>
  <node concept="1TIwiD" id="2qM$EmJLWMG">
    <property role="TrG5h" value="LinkQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="2788452359612124332" />
    <property role="R4oN_" value="names a specific link by its declaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2qM$EmJLWMK" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2788452359612124336" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="2qM$EmJLWML" role="PzmwI">
      <ref role="PrY4T" node="2qM$EmJLWME" resolve="ILinkQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="2qM$EmJLWMH">
    <property role="TrG5h" value="PropertyQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="2788452359612124333" />
    <property role="R4oN_" value="names a specific property by its declaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2qM$EmJLWMJ" role="1TKVEi">
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2788452359612124335" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
    <node concept="PrWs8" id="2qM$EmJLWMI" role="PzmwI">
      <ref role="PrY4T" node="2qM$EmJLWMF" resolve="IPropertyQualifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="64mzzgyrILL">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Model_GetModule" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.model" />
    <property role="34LRSv" value="module" />
    <property role="EcuMT" value="6995935425733782641" />
    <property role="R4oN_" value="module containing this model" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="3wj3sjzQPFL">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ModuleReferenceExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference.module" />
    <property role="34LRSv" value="module" />
    <property role="R4oN_" value="instance of a module from global repository" />
    <property role="EcuMT" value="4040588429969021681" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyi" id="3wj3sjzQPFM" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <property role="IQ2nx" value="4040588429969021682" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3wj3sjzQPFN" role="1TKVEl">
      <property role="TrG5h" value="moduleId" />
      <property role="IQ2nx" value="4040588429969021683" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="asaX9" id="1t9FffgewUl" role="lGtFl">
      <property role="YLPcu" value="3.3" />
      <property role="YLQ7P" value="Global module repository shall cease soon. Use ModuleRefExpression instead." />
    </node>
  </node>
  <node concept="1TIwiD" id="3wj3sjzR1ta">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="LanguageReferenceExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference.module" />
    <property role="34LRSv" value="language-module" />
    <property role="R4oN_" value="Access Language module instance" />
    <property role="EcuMT" value="4040588429969069898" />
    <ref role="1TJDcQ" node="3wj3sjzQPFL" resolve="ModuleReferenceExpression" />
    <node concept="asaX9" id="1t9FffgewUn" role="lGtFl">
      <property role="YLQ7P" value="Module instance is accessed through global repository which would cease soon. Use LanguageRefExpression instead" />
      <property role="YLPcu" value="3.3" />
    </node>
  </node>
  <node concept="1TIwiD" id="v3WHCwUiHy">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ModelReferenceExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference.model" />
    <property role="34LRSv" value="model" />
    <property role="EcuMT" value="559557797393017698" />
    <property role="R4oN_" value="runtime reference to a specific SModel" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="asaX9" id="5C3R$hJlJ8f" role="lGtFl">
      <property role="YLPcu" value="2018.1" />
      <property role="YLQ7P" value="This expression references model by name only, which is ambiguous. Use model-ptr// instead and resolve with appropriate repository, if needed." />
    </node>
    <node concept="1TJgyj" id="1eZSuKdQWnS" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="repo" />
      <property role="IQ2ns" value="1423104411233404408" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyi" id="v3WHCwUiHA" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <property role="IQ2nx" value="559557797393017702" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="v3WHCwUjHJ" role="1TKVEl">
      <property role="TrG5h" value="stereotype" />
      <property role="IQ2nx" value="559557797393021807" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="59YAasRsvgM">
    <property role="TrG5h" value="SubconceptCase" />
    <property role="3GE5qa" value="conceptSwitch" />
    <property role="34LRSv" value="subconcept of" />
    <property role="EcuMT" value="5944356402132808754" />
    <property role="R4oN_" value="branch matching concept C or any subconcept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="gVKbmvf" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1163670677455" />
      <ref role="20lvS9" node="gNgn60t" resolve="ConceptReference" />
    </node>
    <node concept="1TJgyj" id="gVKbo18" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1163670683720" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="5ffMBka$9Mp" role="PzmwI">
      <ref role="PrY4T" node="5ffMBka$9Mm" resolve="IConceptSwitchCase" />
    </node>
  </node>
  <node concept="1TIwiD" id="59YAasRsvgH">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptSwitchStatement" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="concept switch" />
    <property role="3GE5qa" value="conceptSwitch" />
    <property role="EcuMT" value="5944356402132808749" />
    <property role="R4oN_" value="dispatch statement branching on node's concept" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="t5JxF" id="2SK3zPtoyXP" role="lGtFl">
      <property role="t5JxN" value="Unlike case clause in Java switch, there's no fall-thrugh mechanism, both exact and subconcept match cases are treated as an either-or alternatives. I.e. if you get two subconcept cases for INamedElement and BaseConcept, only the first one to match would be respected. " />
    </node>
    <node concept="1TJgyj" id="59YAasRsvgK" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="5944356402132808752" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="59YAasRsvgL" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="case" />
      <property role="20lbJX" value="fLJekj5" />
      <property role="IQ2ns" value="5944356402132808753" />
      <ref role="20lvS9" node="5ffMBka$9Mm" resolve="IConceptSwitchCase" />
    </node>
    <node concept="1TJgyj" id="5ffMBkaCcrg" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="defaultBlock" />
      <property role="IQ2ns" value="6039268229365417680" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="1_vO5tEMrH9">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="named node pointer" />
    <property role="TrG5h" value="NodePointerExpression_Old" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="nodePointer/&lt;name&gt;/" />
    <property role="EcuMT" value="1828409047608048457" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyi" id="7Kvxa_nmhU5" role="1TKVEl">
      <property role="IQ2nx" value="8944013247830892165" />
      <property role="TrG5h" value="includeNonRoot" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="asaX9" id="6qMaajV39fW" role="lGtFl">
      <property role="YLPcu" value="2018.1" />
    </node>
    <node concept="t5JxF" id="6qMaajV39fY" role="lGtFl">
      <node concept="t5JxR" id="6qMaajV39ij" role="t5JxU">
        <ref role="t5JxO" node="6qMaajV39gP" resolve="NodePointerExpression" />
      </node>
    </node>
    <node concept="1TJgyj" id="1_vO5tEMrHa" role="1TKVEi">
      <property role="20kJfa" value="referentNode" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1828409047608048458" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7GdCWpgJClo">
    <property role="TrG5h" value="AsNodeOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="asNode" />
    <property role="EcuMT" value="8866923313515890008" />
    <property role="R4oN_" value="project concept&lt;C&gt; to its AbstractConceptDeclaration node" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="637Y3IJQ3Hr">
    <property role="R4oN_" value="value" />
    <property role="TrG5h" value="EnumMemberValueRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="enum member value/&lt;name&gt;/" />
    <property role="EcuMT" value="6973815483243445083" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="637Y3IJQwST" role="1TKVEi">
      <property role="20kJfa" value="enum" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6973815483243564601" />
      <ref role="20lvS9" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
    </node>
    <node concept="1TJgyj" id="637Y3IJQx5C" role="1TKVEi">
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6973815483243565416" />
      <ref role="20lvS9" to="tpce:fKM4N6M" resolve="EnumerationMemberDeclaration_Old" />
    </node>
    <node concept="asaX9" id="7KaEUqioMH2" role="lGtFl">
      <property role="YLPcu" value="19.2" />
      <property role="YLQ7P" value="Use Enum_MemberLiteral instead" />
    </node>
  </node>
  <node concept="1TIwiD" id="36vPRrqnoSW">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="AbstractNodeRefExpression" />
    <property role="R5$K7" value="true" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="R4oN_" value="abstract node reference expression" />
    <property role="EcuMT" value="3575813534625140284" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="xbFM377SDT">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="ChildNodeRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value="childNode" />
    <property role="R5$K7" value="false" />
    <property role="EcuMT" value="597763930871270009" />
    <property role="R4oN_" value="reference to a child node by role path" />
    <ref role="1TJDcQ" node="36vPRrqnoSW" resolve="AbstractNodeRefExpression" />
    <node concept="1TJgyj" id="xbFM377T9g" role="1TKVEi">
      <property role="20kJfa" value="targetNode" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="597763930871272016" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="xbFM377T9e" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="parent" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="597763930871272014" />
      <ref role="20lvS9" node="36vPRrqnoSW" resolve="AbstractNodeRefExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="44$dP9uanu0">
    <property role="3GE5qa" value="sequence" />
    <property role="TrG5h" value="OfConceptOperation" />
    <property role="34LRSv" value="ofConcept" />
    <property role="R4oN_" value="select elements of the specified concept" />
    <property role="EcuMT" value="4693937538533521280" />
    <ref role="1TJDcQ" to="tp2q:gKAMqbp" resolve="SequenceOperation" />
    <node concept="1TJgyj" id="44$dP9uar_c" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="requestedConcept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="4693937538533538124" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="2iMJRNxweHk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptIdRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="concept/&lt;name&gt;/" />
    <property role="R4oN_" value="openapi SAbstractConcept" />
    <property role="EcuMT" value="2644386474300074836" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2iMJRNxweHl" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2644386474300074837" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="2epClk4wBjw" role="PzmwI">
      <ref role="PrY4T" node="2epClk4w$j5" resolve="BootstrapAwareMetaObject" />
    </node>
  </node>
  <node concept="1TIwiD" id="2iMJRNx_nol">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="LinkIdRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="link/&lt;role&gt;/" />
    <property role="R4oN_" value="SContainmentLink or SReferenceLink" />
    <property role="EcuMT" value="2644386474301421077" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2iMJRNx_nom" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2644386474301421078" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="2iMJRNx_non" role="1TKVEi">
      <property role="20kJfa" value="linkDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2644386474301421079" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="2epClk4wBeA" role="PzmwI">
      <ref role="PrY4T" node="2epClk4w$j5" resolve="BootstrapAwareMetaObject" />
    </node>
  </node>
  <node concept="1TIwiD" id="2iMJRNxD2Yw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PropertyIdRefExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="reference" />
    <property role="34LRSv" value="property/&lt;concept&gt;:&lt;name&gt;/" />
    <property role="R4oN_" value="openapi SProperty" />
    <property role="EcuMT" value="2644386474302386080" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2iMJRNxD2Yx" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2644386474302386081" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1TJgyj" id="2iMJRNxD2Yy" role="1TKVEi">
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="2644386474302386082" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
    <node concept="PrWs8" id="2epClk4wB9H" role="PzmwI">
      <ref role="PrY4T" node="2epClk4w$j5" resolve="BootstrapAwareMetaObject" />
    </node>
  </node>
  <node concept="1TIwiD" id="i$PM5v5z4L">
    <property role="TrG5h" value="AsSConcept" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="34LRSv" value="asConcept" />
    <property role="EcuMT" value="334628810661441841" />
    <property role="R4oN_" value="downcast concept&lt;&gt; to Java SConcept API type" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="5MFgGQnlLNI">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="concept type" />
    <property role="TrG5h" value="SConceptType" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="type" />
    <property role="34LRSv" value="concept&lt; &gt;" />
    <property role="EcuMT" value="6677504323281689838" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="5MFgGQnlLNJ" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaraton" />
      <property role="IQ2ns" value="6677504323281689839" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6tLUGr5MYvi">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="node's concept" />
    <property role="TrG5h" value="Node_GetSConceptOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="concept" />
    <property role="EcuMT" value="7453996997717780434" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="PlHQZ" id="2epClk4w$j5">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="BootstrapAwareMetaObject" />
    <property role="EcuMT" value="2565258849284146373" />
    <property role="R4oN_" value="meta-object requiring bootstrap-safe ID resolution" />
    <node concept="1TJgyi" id="2epClk4wB9F" role="1TKVEl">
      <property role="TrG5h" value="bootstrap" />
      <property role="IQ2nx" value="2565258849284158059" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="5XpkEY8gZFT">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SConceptOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.concept" />
    <property role="EcuMT" value="6870613620389313273" />
    <property role="R4oN_" value="abstract base for concept&lt;&gt; value operations" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5XpkEY8gZFV" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="5XpkEY8lFU0">
    <property role="3GE5qa" value="operation.concept" />
    <property role="TrG5h" value="ConceptAliasOperation" />
    <property role="34LRSv" value="conceptAlias" />
    <property role="EcuMT" value="6870613620390542976" />
    <property role="R4oN_" value="get a concept's alias string (.alias)" />
    <ref role="1TJDcQ" node="5XpkEY8gZFT" resolve="SConceptOperation" />
  </node>
  <node concept="1TIwiD" id="5XpkEY8oJOs">
    <property role="3GE5qa" value="operation.concept" />
    <property role="TrG5h" value="ConceptShortDescriptionOperation" />
    <property role="34LRSv" value="shortDescription" />
    <property role="EcuMT" value="6870613620391345436" />
    <property role="R4oN_" value="get a concept's short description string" />
    <ref role="1TJDcQ" node="5XpkEY8gZFT" resolve="SConceptOperation" />
  </node>
  <node concept="1TIwiD" id="34EJa6aIcz0">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="LanguageId" />
    <property role="EcuMT" value="3542851458883438784" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="34EJa6aIcNn" role="1TKVEl">
      <property role="TrG5h" value="namespace" />
      <property role="IQ2nx" value="3542851458883439831" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="34EJa6aIcNo" role="1TKVEl">
      <property role="TrG5h" value="languageId" />
      <property role="IQ2nx" value="3542851458883439832" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="34EJa6aIcNp" role="1TKVEl">
      <property role="TrG5h" value="version" />
      <property role="IQ2nx" value="3542851458883439833" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
      <node concept="asaX9" id="1KCVwvKvm6e" role="lGtFl">
        <property role="YLQ7P" value="was introduced after 3.2 and removed just after 3.3 EAP1. Users should not have instances of this field" />
        <property role="YLPcu" value="2018.3" />
      </node>
    </node>
    <node concept="PrWs8" id="34EJa6aIcz1" role="PzmwI">
      <ref role="PrY4T" node="34EJa6aIcco" resolve="LanguageIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="3TEgbCBRn3N">
    <property role="3GE5qa" value="reference.module" />
    <property role="TrG5h" value="LanguageRefExpression" />
    <property role="34LRSv" value="language" />
    <property role="R4oN_" value="Reference to a run-time language" />
    <property role="EcuMT" value="4497478346159780083" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="34EJa6aIpny" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="languageId" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="3542851458883491298" />
      <ref role="20lvS9" node="34EJa6aIcco" resolve="LanguageIdentity" />
    </node>
  </node>
  <node concept="PlHQZ" id="34EJa6aIcco">
    <property role="TrG5h" value="LanguageIdentity" />
    <property role="3GE5qa" value="identity" />
    <property role="EcuMT" value="3542851458883437336" />
    <property role="R4oN_" value="provides stable language identity" />
  </node>
  <node concept="1TIwiD" id="BpxLfMiwTr">
    <property role="TrG5h" value="ChildAttributeQualifier" />
    <property role="3GE5qa" value="attributes" />
    <property role="EcuMT" value="709746936026631771" />
    <property role="R4oN_" value="attribute on a containment link" />
    <ref role="1TJDcQ" node="5zEkxuKhrAF" resolve="AttributeQualifier" />
    <node concept="1TJgyj" id="BpxLfMiwTs" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="linkQualifier" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="709746936026631772" />
      <ref role="20lvS9" node="2qM$EmJLWME" resolve="ILinkQualifier" />
    </node>
    <node concept="1TJgyj" id="BpxLfMiwTt" role="1TKVEi">
      <property role="20kJfa" value="attributeConcept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="709746936026631773" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5ffMBka$9L$">
    <property role="3GE5qa" value="conceptSwitch" />
    <property role="TrG5h" value="ExactConceptCase" />
    <property role="34LRSv" value="exact concept" />
    <property role="EcuMT" value="6039268229364358244" />
    <property role="R4oN_" value="branch matching only the exact concept C" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5ffMBka$9NN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6039268229364358387" />
      <ref role="20lvS9" node="gNgn60t" resolve="ConceptReference" />
    </node>
    <node concept="1TJgyj" id="5ffMBka$9NO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6039268229364358388" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="5ffMBka$9Mn" role="PzmwI">
      <ref role="PrY4T" node="5ffMBka$9Mm" resolve="IConceptSwitchCase" />
    </node>
  </node>
  <node concept="PlHQZ" id="5ffMBka$9Mm">
    <property role="3GE5qa" value="conceptSwitch" />
    <property role="TrG5h" value="IConceptSwitchCase" />
    <property role="EcuMT" value="6039268229364358294" />
    <property role="R4oN_" value="interface for concept switch case branches" />
  </node>
  <node concept="1TIwiD" id="4o40NPkYE0z">
    <property role="3GE5qa" value="operation.node" />
    <property role="TrG5h" value="Node_PointerOperation" />
    <property role="34LRSv" value="pointer" />
    <property role="EcuMT" value="5045161044515397667" />
    <property role="R4oN_" value="persistable pointer to a node" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="nJmxU5cSyN">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ModulePointer" />
    <property role="EcuMT" value="427659576753752243" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="nJmxU5cSSp" role="1TKVEl">
      <property role="TrG5h" value="moduleName" />
      <property role="IQ2nx" value="427659576753753625" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="nJmxU5cSSr" role="1TKVEl">
      <property role="TrG5h" value="moduleId" />
      <property role="IQ2nx" value="427659576753753627" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="nJmxU5cSTH" role="PzmwI">
      <ref role="PrY4T" node="nJmxU5cSSu" resolve="ModuleIdentity" />
    </node>
    <node concept="asaX9" id="7k$14oQrlDi" role="lGtFl">
      <property role="YLQ7P" value="Use lang.modelapi.ModulePointer instead" />
      <property role="YLPcu" value="2018.2" />
    </node>
  </node>
  <node concept="PlHQZ" id="nJmxU5cSSu">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ModuleIdentity" />
    <property role="EcuMT" value="427659576753753630" />
    <property role="R4oN_" value="provides stable module identity" />
    <node concept="asaX9" id="7k$14oQrlDk" role="lGtFl">
      <property role="YLQ7P" value="Use lang.modelapi.ModuleIdentity instead. This concept and its subconcepts will be removed in 2019.3" />
      <property role="YLPcu" value="2018.2" />
    </node>
    <node concept="PrWs8" id="5ZqXG2mIDVH" role="PrDN$">
      <ref role="PrY4T" to="dvox:_GDk1qZ2J9" resolve="ModuleIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="1t9FffgebJy">
    <property role="3GE5qa" value="reference.module" />
    <property role="TrG5h" value="ModuleRefExpression" />
    <property role="34LRSv" value="module-reference" />
    <property role="R4oN_" value="reference/pointer to an SModule" />
    <property role="EcuMT" value="1678062499342629858" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="1t9FffgebJ_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="moduleId" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="1678062499342629861" />
      <ref role="20lvS9" to="dvox:_GDk1qZ2J9" resolve="ModuleIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="6MWs_Xbdj5c">
    <property role="3GE5qa" value="operation.node" />
    <property role="TrG5h" value="Node_GetChildrenAndChildAttributesOperation" />
    <property role="R4oN_" value="children joint with child attributes of certain role" />
    <property role="34LRSv" value="childrenAndChildAttributes" />
    <property role="EcuMT" value="7835263205327057228" />
    <ref role="1TJDcQ" node="h32TBBB" resolve="Node_GetChildrenOperation" />
  </node>
  <node concept="1TIwiD" id="253epK5leq7">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AbstractTypeCastExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="EcuMT" value="2396822768958367367" />
    <property role="R4oN_" value="abstract base for smodel type-cast expressions" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="253epK5leqc" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
    <node concept="1TJgyj" id="5PLE6SbpWOp" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="leftExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6733348108486823193" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="3oQEojIPgjT" role="1TKVEi">
      <property role="IQ2ns" value="3906496115198199033" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptArgument" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" node="hzMxujR" resolve="IRefConceptArg" />
    </node>
    <node concept="1TJgyj" id="5PLE6SbpWS4" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="6733348108486823428" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      <node concept="asaX9" id="3oQEojIP68F" role="lGtFl" />
    </node>
  </node>
  <node concept="PlHQZ" id="5ZE7FBYYOon">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="PropertyIdentity" />
    <property role="EcuMT" value="6911370362349110807" />
    <property role="R4oN_" value="provides stable property identity" />
    <node concept="PrWs8" id="2PiAZGev8vJ" role="PrDN$">
      <ref role="PrY4T" node="2PiAZGev8v_" resolve="ConceptMemberIdentity" />
    </node>
  </node>
  <node concept="PlHQZ" id="5ZE7FBYYOp2">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ConceptIdentity" />
    <property role="EcuMT" value="6911370362349110850" />
    <property role="R4oN_" value="provides stable concept identity" />
  </node>
  <node concept="1TIwiD" id="5ZE7FBYYQZB">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ConceptId" />
    <property role="EcuMT" value="6911370362349121511" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5ZE7FBYYQZG" role="1TKVEl">
      <property role="TrG5h" value="conceptId" />
      <property role="IQ2nx" value="6911370362349121516" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5ZE7FBYYRfn" role="1TKVEl">
      <property role="TrG5h" value="conceptName" />
      <property role="IQ2nx" value="6911370362349122519" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5ZE7FBYYTZG" role="1TKVEl">
      <property role="TrG5h" value="isInterface" />
      <property role="IQ2nx" value="6911370362349133804" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5ZE7FBYYQZE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="languageIdentity" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6911370362349121514" />
      <ref role="20lvS9" node="34EJa6aIcco" resolve="LanguageIdentity" />
    </node>
    <node concept="PrWs8" id="5ZE7FBYYQZC" role="PzmwI">
      <ref role="PrY4T" node="5ZE7FBYYOp2" resolve="ConceptIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="5ZE7FBYZ2ds">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="PropertyId" />
    <property role="EcuMT" value="6911370362349167452" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5ZE7FBYZ2d$" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptIdentity" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="6911370362349167460" />
      <ref role="20lvS9" node="5ZE7FBYYOp2" resolve="ConceptIdentity" />
    </node>
    <node concept="1TJgyi" id="5ZE7FBYZ2dx" role="1TKVEl">
      <property role="TrG5h" value="propertyId" />
      <property role="IQ2nx" value="6911370362349167457" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5ZE7FBYZ2dv" role="1TKVEl">
      <property role="TrG5h" value="propertyName" />
      <property role="IQ2nx" value="6911370362349167455" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="5ZE7FBYZ2dt" role="PzmwI">
      <ref role="PrY4T" node="5ZE7FBYYOon" resolve="PropertyIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="1xLGIeKVK1S">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SConceptTypeCastExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="34LRSv" value=":" />
    <property role="EcuMT" value="1761385620274348152" />
    <property role="R4oN_" value="cast concept&lt;&gt; to typed concept&lt;C&gt;" />
    <ref role="1TJDcQ" node="253epK5leq7" resolve="AbstractTypeCastExpression" />
  </node>
  <node concept="1TIwiD" id="7c$ruAHVbwd">
    <property role="EcuMT" value="8296877263936075789" />
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="GeneratorModulePointer" />
    <property role="R4oN_" value="persistent reference to a generator module" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7c$ruAHVbxO" role="1TKVEi">
      <property role="IQ2ns" value="8296877263936075892" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="module" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" node="nJmxU5cSyN" resolve="ModulePointer" />
    </node>
    <node concept="PrWs8" id="7c$ruAHVbwe" role="PzmwI">
      <ref role="PrY4T" node="7c$ruAHVa5N" resolve="GeneratorIdentity" />
    </node>
    <node concept="asaX9" id="7pmXawfdrSM" role="lGtFl">
      <property role="YLPcu" value="2025.3" />
      <property role="YLQ7P" value="No apparent need (once lang.generation.plan introduced own alternative)" />
    </node>
  </node>
  <node concept="PlHQZ" id="7c$ruAHVa5N">
    <property role="EcuMT" value="8296877263936070003" />
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="GeneratorIdentity" />
    <property role="R4oN_" value="provides stable generator identity" />
  </node>
  <node concept="1TIwiD" id="7jb4LXp8VrB">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ContainmentLinkId" />
    <property role="EcuMT" value="8415841354032330471" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7jb4LXp8VrC" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptIdentity" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="8415841354032330472" />
      <ref role="20lvS9" node="5ZE7FBYYOp2" resolve="ConceptIdentity" />
    </node>
    <node concept="1TJgyi" id="7jb4LXp8VrD" role="1TKVEl">
      <property role="TrG5h" value="linkId" />
      <property role="IQ2nx" value="8415841354032330473" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7jb4LXp8VrE" role="1TKVEl">
      <property role="TrG5h" value="linkName" />
      <property role="IQ2nx" value="8415841354032330474" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="7jb4LXp8VrN" role="PzmwI">
      <ref role="PrY4T" node="7jb4LXp8VrL" resolve="AggregationIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="7jb4LXp8VrG">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ReferenceLinkId" />
    <property role="EcuMT" value="8415841354032330476" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7jb4LXp8VrH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="conceptIdentity" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="IQ2ns" value="8415841354032330477" />
      <ref role="20lvS9" node="5ZE7FBYYOp2" resolve="ConceptIdentity" />
    </node>
    <node concept="1TJgyi" id="7jb4LXp8VrI" role="1TKVEl">
      <property role="TrG5h" value="referenceId" />
      <property role="IQ2nx" value="8415841354032330478" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7jb4LXp8VrJ" role="1TKVEl">
      <property role="TrG5h" value="referenceName" />
      <property role="IQ2nx" value="8415841354032330479" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="7jb4LXp8VrQ" role="PzmwI">
      <ref role="PrY4T" node="7jb4LXp8VrM" resolve="AssociationIdentity" />
    </node>
  </node>
  <node concept="PlHQZ" id="7jb4LXp8VrL">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="AggregationIdentity" />
    <property role="EcuMT" value="8415841354032330481" />
    <property role="R4oN_" value="provides stable containment link identity" />
    <node concept="PrWs8" id="2PiAZGev8vP" role="PrDN$">
      <ref role="PrY4T" node="2PiAZGev8v_" resolve="ConceptMemberIdentity" />
    </node>
  </node>
  <node concept="PlHQZ" id="7jb4LXp8VrM">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="AssociationIdentity" />
    <property role="EcuMT" value="8415841354032330482" />
    <property role="R4oN_" value="provides stable reference link identity" />
    <node concept="PrWs8" id="2PiAZGev8vM" role="PrDN$">
      <ref role="PrY4T" node="2PiAZGev8v_" resolve="ConceptMemberIdentity" />
    </node>
  </node>
  <node concept="PlHQZ" id="2PiAZGev8v_">
    <property role="EcuMT" value="3265844182379169765" />
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="ConceptMemberIdentity" />
    <property role="R4oN_" value="provides stable concept member identity" />
  </node>
  <node concept="1TIwiD" id="4JM1Q3lfSBE">
    <property role="EcuMT" value="5472444609684539882" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="SConceptTypeLiteral" />
    <property role="R4oN_" value="literal of a concept type" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="4JM1Q3lfSBF" role="1TKVEi">
      <property role="20kJfa" value="conceptDeclaraton" />
      <property role="IQ2ns" value="5472444609684539883" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6w_7fBrSjZW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_ContainingLinkOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="containingLink" />
    <property role="EcuMT" value="7504436213544206332" />
    <property role="R4oN_" value="SContainmentLink connecting this node to parent" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="2ytHpS0VIut">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Reference_ContainingLinkOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="34LRSv" value="link" />
    <property role="EcuMT" value="2926695023085807517" />
    <property role="R4oN_" value="SReferenceLink of this reference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2ytHpS0VKmm" role="PzmwI">
      <ref role="PrY4T" node="1lUJQtrPjRM" resolve="IReferenceOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="296OPknU5z2">
    <property role="EcuMT" value="2469893808086079682" />
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="LanguageIdentityBySourceModule" />
    <property role="R4oN_" value="language identity via its source module" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="296OPknU5zD" role="1TKVEi">
      <property role="IQ2ns" value="2469893808086079721" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="moduleReference" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="dvox:_GDk1qZ2J9" resolve="ModuleIdentity" />
    </node>
    <node concept="PrWs8" id="1g73YSPLQgB" role="PzmwI">
      <ref role="PrY4T" node="34EJa6aIcco" resolve="LanguageIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qMaajUPFau">
    <property role="EcuMT" value="7400021826771268254" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="SNodePointerType" />
    <property role="34LRSv" value="node-ptr&lt;&gt;" />
    <property role="R4oN_" value="node pointer type" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="6qMaajUPFaH" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="7400021826771268269" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qMaajV39gP">
    <property role="EcuMT" value="7400021826774799413" />
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="NodePointerExpression" />
    <property role="34LRSv" value="node-ptr/.../" />
    <property role="R4oN_" value="make pointer to a node" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6qMaajV39im" role="1TKVEi">
      <property role="IQ2ns" value="7400021826774799510" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20lbJX" value="fLJekj4" />
      <property role="20kJfa" value="ref" />
      <ref role="20lvS9" to="dvox:k2ZBl8CwzR" resolve="NodeIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="3ayRDg9aLzO">
    <property role="EcuMT" value="3648723375513868532" />
    <property role="3GE5qa" value="operation" />
    <property role="TrG5h" value="NodePointer_ResolveOperation" />
    <property role="34LRSv" value="resolve" />
    <property role="R4oN_" value="resolve node in repository" />
    <ref role="1TJDcQ" node="3xFa6mqMwat" resolve="AbstractPointerResolveOperation" />
  </node>
  <node concept="1TIwiD" id="3xFa6mqMw9a">
    <property role="EcuMT" value="4065387505485742666" />
    <property role="3GE5qa" value="operation" />
    <property role="TrG5h" value="ModelPointer_ResolveOperation" />
    <property role="R4oN_" value="resolve model in repository" />
    <property role="34LRSv" value="resolve" />
    <ref role="1TJDcQ" node="3xFa6mqMwat" resolve="AbstractPointerResolveOperation" />
  </node>
  <node concept="1TIwiD" id="3xFa6mqMwat">
    <property role="EcuMT" value="4065387505485742749" />
    <property role="3GE5qa" value="operation" />
    <property role="TrG5h" value="AbstractPointerResolveOperation" />
    <property role="34LRSv" value="resolve" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="abstract base for pointer resolution operations" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3ayRDg9aL$v" role="1TKVEi">
      <property role="IQ2ns" value="3648723375513868575" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="repositoryArg" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="3xFa6mqMwbS" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="32EzhoU4lKl">
    <property role="EcuMT" value="3506770386464365589" />
    <property role="3GE5qa" value="operation.model" />
    <property role="TrG5h" value="Model_PointerOperation" />
    <property role="34LRSv" value="pointer" />
    <property role="R4oN_" value="persistable pointer to a model" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="1Bs_61$nfRn">
    <property role="EcuMT" value="1863527487546129879" />
    <property role="3GE5qa" value="reference.model" />
    <property role="TrG5h" value="ModelPointerExpression" />
    <property role="34LRSv" value="model-ptr/.../" />
    <property role="R4oN_" value="make pointer to a model" />
    <property role="R5$K2" value="true" />
    <property role="R5$K7" value="false" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="1Bs_61$ngwB" role="1TKVEi">
      <property role="IQ2ns" value="1863527487546132519" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="modelRef" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="dvox:7PoJpZpMbrj" resolve="ModelIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="78qQRpbfVOr">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="DevkitPointer" />
    <property role="EcuMT" value="8222125370833354011" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="78qQRpbfVOs" role="1TKVEl">
      <property role="TrG5h" value="devkitName" />
      <property role="IQ2nx" value="8222125370833354012" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="78qQRpbfVOt" role="1TKVEl">
      <property role="TrG5h" value="devkitId" />
      <property role="IQ2nx" value="8222125370833354013" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="78qQRpbfVOv" role="PzmwI">
      <ref role="PrY4T" node="78qQRpbfOQY" resolve="DevkitIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Bs_61$ngyb">
    <property role="EcuMT" value="1863527487546132619" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="SModelPointerType" />
    <property role="34LRSv" value="model-ptr" />
    <property role="R4oN_" value="pointer to a model" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="PlHQZ" id="78qQRpbfOQY">
    <property role="3GE5qa" value="identity" />
    <property role="TrG5h" value="DevkitIdentity" />
    <property role="EcuMT" value="8222125370833325502" />
    <property role="R4oN_" value="provides stable devkit identity" />
  </node>
  <node concept="1TIwiD" id="OjQ__FNYXe">
    <property role="EcuMT" value="942336824646299470" />
    <property role="3GE5qa" value="operation.link" />
    <property role="TrG5h" value="Link_SetTargetPointerOperation" />
    <property role="34LRSv" value="set ptr" />
    <property role="R4oN_" value="set referent with pointer" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="OjQ__FNYXf" role="1TKVEi">
      <property role="IQ2ns" value="942336824646299471" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="linkTarget" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" node="2SljyToQhT_" resolve="INodePointerArg" />
    </node>
  </node>
  <node concept="1TIwiD" id="2SljyToQhUX">
    <property role="EcuMT" value="3320646261221695165" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="TrG5h" value="NodePointerArg_Identity" />
    <property role="R4oN_" value="node pointer arg: lookup by node identity" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2SljyToQhW3" role="PzmwI">
      <ref role="PrY4T" node="2SljyToQhT_" resolve="INodePointerArg" />
    </node>
    <node concept="1TJgyj" id="2SljyToQhW6" role="1TKVEi">
      <property role="IQ2ns" value="3320646261221695238" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="dvox:k2ZBl8CwzR" resolve="NodeIdentity" />
    </node>
  </node>
  <node concept="PlHQZ" id="2SljyToQhT_">
    <property role="EcuMT" value="3320646261221695077" />
    <property role="3GE5qa" value="operation.parameter" />
    <property role="TrG5h" value="INodePointerArg" />
    <property role="R4oN_" value="interface for node pointer identity arguments" />
  </node>
  <node concept="1TIwiD" id="3bhfBP455GQ">
    <property role="EcuMT" value="3661776679762942774" />
    <property role="3GE5qa" value="operation.node" />
    <property role="TrG5h" value="Node_IsOperation" />
    <property role="34LRSv" value="is" />
    <property role="R4oN_" value="test for a specific node" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="3bhfBP455Ic" role="1TKVEi">
      <property role="IQ2ns" value="3661776679762942860" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="dvox:k2ZBl8CwzR" resolve="NodeIdentity" />
    </node>
  </node>
  <node concept="1TIwiD" id="5kLyeZleWQw">
    <property role="EcuMT" value="6138838330738724256" />
    <property role="3GE5qa" value="operation.pointer" />
    <property role="TrG5h" value="NodePointer_GetModelOperation" />
    <property role="34LRSv" value="model" />
    <property role="R4oN_" value="get model pointer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5kLyeZleWQE" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HbIxIvFJBi">
    <property role="EcuMT" value="1966870290083281362" />
    <property role="TrG5h" value="EnumMember_NameOperation" />
    <property role="34LRSv" value="name" />
    <property role="3GE5qa" value="enumerations" />
    <property role="R4oN_" value="name string of this enum member" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="50Pb80HCIIB" role="PzmwI">
      <ref role="PrY4T" node="i3MheXj" resolve="EnumMemberOperation" />
    </node>
  </node>
  <node concept="PlHQZ" id="1HbIxIw0iNP">
    <property role="EcuMT" value="1966870290088668405" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumOperation" />
    <property role="R4oN_" value="interface for enumeration-level operations" />
    <node concept="PrWs8" id="50Pb80HCzRH" role="PrDN$">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HbIxIw0iPw">
    <property role="EcuMT" value="1966870290088668512" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="Enum_MemberLiteral" />
    <property role="R4oN_" value="enum member" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1HbIxIw0iP$" role="1TKVEi">
      <property role="IQ2ns" value="1966870290088668516" />
      <property role="20kJfa" value="memberDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
    </node>
    <node concept="PrWs8" id="1HbIxIw0iPx" role="PzmwI">
      <ref role="PrY4T" node="1HbIxIw0iNP" resolve="EnumOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HbIxIw0iPB">
    <property role="EcuMT" value="1966870290088668519" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="Enum_FromNameOperation" />
    <property role="34LRSv" value="from name" />
    <property role="R4oN_" value="get a member by its name" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1HbIxIw0kf8" role="1TKVEi">
      <property role="IQ2ns" value="1966870290088674248" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="nameExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1HbIxIw0iPG" role="PzmwI">
      <ref role="PrY4T" node="1HbIxIw0iNP" resolve="EnumOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HbIxIw0iPC">
    <property role="EcuMT" value="1966870290088668520" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="Enum_MembersOperation" />
    <property role="34LRSv" value="members" />
    <property role="R4oN_" value="list of enumeration members" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1HbIxIw0iPD" role="PzmwI">
      <ref role="PrY4T" node="1HbIxIw0iNP" resolve="EnumOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="50Pb80HwrVk">
    <property role="EcuMT" value="5779574625830813396" />
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="EnumerationIdRefExpression" />
    <property role="34LRSv" value="enum/&lt;name&gt;/" />
    <property role="R4oN_" value="access to enumeration" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="50Pb80HwrVl" role="1TKVEi">
      <property role="IQ2ns" value="5779574625830813397" />
      <property role="20kJfa" value="enumDeclaration" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="50Pb80Hwsgz">
    <property role="EcuMT" value="5779574625830814755" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="SEnumerationType" />
    <property role="34LRSv" value="enumeration" />
    <property role="R4oN_" value="enumeration type" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="50Pb80H_WZh">
    <property role="EcuMT" value="5779574625832259537" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumMember_PresentationOperation" />
    <property role="34LRSv" value="presentation" />
    <property role="R4oN_" value="presentation string of this enum member" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="50Pb80HCIIF" role="PzmwI">
      <ref role="PrY4T" node="i3MheXj" resolve="EnumMemberOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="50Pb80HCzDI">
    <property role="EcuMT" value="5779574625832942190" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="Enum_FromPresentationOperation" />
    <property role="34LRSv" value="from presentation" />
    <property role="R4oN_" value="get a member by its presentation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6lzoLEP$8yc" role="1TKVEi">
      <property role="IQ2ns" value="7305791986891524236" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="presentationExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="50Pb80HC$1d" role="PzmwI">
      <ref role="PrY4T" node="1HbIxIw0iNP" resolve="EnumOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="45eRmv04iIh">
    <property role="EcuMT" value="4705942098322467729" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumMemberReference" />
    <property role="R4oN_" value="enum member" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="45eRmv04iIo" role="1TKVEi">
      <property role="IQ2ns" value="4705942098322467736" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="45eRmv04Pqk">
    <property role="EcuMT" value="4705942098322609812" />
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumMember_IsOperation" />
    <property role="34LRSv" value="is" />
    <property role="R4oN_" value="check for specific member" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="45eRmv04Pql" role="1TKVEi">
      <property role="IQ2ns" value="4705942098322609813" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" node="45eRmv04iIh" resolve="EnumMemberReference" />
    </node>
    <node concept="PrWs8" id="45eRmv04PqX" role="PzmwI">
      <ref role="PrY4T" node="i3MheXj" resolve="EnumMemberOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="28aPEVv7nnv">
    <property role="EcuMT" value="2453008993612559839" />
    <property role="TrG5h" value="EnumSwitchExpression" />
    <property role="34LRSv" value="enum switch" />
    <property role="3GE5qa" value="enumSwitch" />
    <property role="R4oN_" value="expression dispatching on enumeration member value" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="28aPEVv7nnw" role="1TKVEi">
      <property role="IQ2ns" value="2453008993612559840" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="enumExpression" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="28aPEVv7XeR" role="1TKVEi">
      <property role="IQ2ns" value="2453008993612714935" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="cases" />
      <property role="20lbJX" value="fLJekj5" />
      <ref role="20lvS9" node="28aPEVv7nnz" resolve="EnumSwitchCase" />
    </node>
    <node concept="1TJgyj" id="28aPEVvzpHe" role="1TKVEi">
      <property role="IQ2ns" value="2453008993619909454" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="otherwiseBody" />
      <ref role="20lvS9" node="28aPEVv7XLw" resolve="EnumSwitchCaseBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="28aPEVv7nnz">
    <property role="EcuMT" value="2453008993612559843" />
    <property role="3GE5qa" value="enumSwitch" />
    <property role="TrG5h" value="EnumSwitchCase" />
    <property role="R4oN_" value="case branch in an EnumSwitchExpression" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="28aPEVv7nn$" role="1TKVEi">
      <property role="IQ2ns" value="2453008993612559844" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="members" />
      <property role="20lbJX" value="fLJekj6" />
      <ref role="20lvS9" node="45eRmv04iIh" resolve="EnumMemberReference" />
    </node>
    <node concept="1TJgyj" id="28aPEVv7XLq" role="1TKVEi">
      <property role="IQ2ns" value="2453008993612717146" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" node="28aPEVv7XLw" resolve="EnumSwitchCaseBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="28aPEVv7XLw">
    <property role="EcuMT" value="2453008993612717152" />
    <property role="3GE5qa" value="enumSwitch" />
    <property role="TrG5h" value="EnumSwitchCaseBody" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="abstract body of an EnumSwitchCase" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="28aPEVv7XN5">
    <property role="EcuMT" value="2453008993612717253" />
    <property role="3GE5qa" value="enumSwitch" />
    <property role="TrG5h" value="EnumSwitchCaseBody_Expression" />
    <property role="R4oN_" value="enum case body: single expression result" />
    <ref role="1TJDcQ" node="28aPEVv7XLw" resolve="EnumSwitchCaseBody" />
    <node concept="1TJgyj" id="28aPEVv7XN6" role="1TKVEi">
      <property role="IQ2ns" value="2453008993612717254" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="28aPEVv7XN9">
    <property role="EcuMT" value="2453008993612717257" />
    <property role="3GE5qa" value="enumSwitch" />
    <property role="TrG5h" value="EnumSwitchCaseBody_StatementList" />
    <property role="34LRSv" value="{" />
    <property role="R4oN_" value="enum case body: statement list" />
    <ref role="1TJDcQ" node="28aPEVv7XLw" resolve="EnumSwitchCaseBody" />
    <node concept="1TJgyj" id="28aPEVv7XNa" role="1TKVEi">
      <property role="IQ2ns" value="2453008993612717258" />
      <property role="20lmBu" value="fLJjDmT" />
      <property role="20kJfa" value="statementList" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="28aPEVv_djS" role="PzmwI">
      <ref role="PrY4T" to="tpee:htgVS9_" resolve="IStatementListContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7rsG8eUFHRE">
    <property role="EcuMT" value="8564914671171067370" />
    <property role="3GE5qa" value="operation.datatype" />
    <property role="TrG5h" value="PropertySerializeExpression" />
    <property role="34LRSv" value="serialize" />
    <property role="R4oN_" value="convert smodel value to string" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7DKVVH$K5tn" role="1TKVEi">
      <property role="IQ2ns" value="8822815258147051351" />
      <property role="20kJfa" value="datatype" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
    </node>
    <node concept="1TJgyj" id="7rsG8eUFUNp" role="1TKVEi">
      <property role="IQ2ns" value="8564914671171120345" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7rsG8eUGgBu">
    <property role="EcuMT" value="8564914671171209694" />
    <property role="3GE5qa" value="operation.datatype" />
    <property role="TrG5h" value="PropertyDeserializeExpression" />
    <property role="34LRSv" value="deserialize" />
    <property role="R4oN_" value="convert string to smodel value" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7rsG8eUGgBw" role="1TKVEi">
      <property role="IQ2ns" value="8564914671171209696" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="5xOmJgDdReE" role="1TKVEi">
      <property role="IQ2ns" value="6373819377346114474" />
      <property role="20kJfa" value="datatype" />
      <property role="20lbJX" value="fLJekj4" />
      <ref role="20lvS9" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5hvwTWxpWvr">
    <property role="EcuMT" value="6079722741456947163" />
    <property role="3GE5qa" value="operation.reference" />
    <property role="TrG5h" value="Reference_IsDynamic" />
    <property role="34LRSv" value="isDynamic" />
    <property role="R4oN_" value="whether this reference is dynamically resolved" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5hvwTWxpWvs" role="PzmwI">
      <ref role="PrY4T" node="1lUJQtrPjRM" resolve="IReferenceOperation" />
    </node>
    <node concept="t5JxF" id="5hvwTWxpX6m" role="lGtFl">
      <property role="t5JxN" value="Tells if a reference resorts to scopes to find out its target (unlike 'static' reference that keeps complete target node identity)" />
    </node>
  </node>
  <node concept="1TIwiD" id="6hHGm9Z4eaj">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_HasNextSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="has-next-sibling" />
    <property role="EcuMT" value="7236635212850979475" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="7k7QF7C2dVs">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Node_HasPrevSiblingOperation" />
    <property role="2_RsDV" value="4G1g3fIR8JG" />
    <property role="3GE5qa" value="operation.node" />
    <property role="34LRSv" value="has-prev-sibling" />
    <property role="EcuMT" value="8432949284911505116" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="1YRcO3NA_w5">
    <property role="EcuMT" value="2285351689971718149" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="AggregationLinkType" />
    <property role="34LRSv" value="aggregation" />
    <property role="R4oN_" value="SContainmentLink projection" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="1YRcO3NA_wL">
    <property role="EcuMT" value="2285351689971718193" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="AssociationLinkType" />
    <property role="R4oN_" value="SReferenceLink projection" />
    <property role="34LRSv" value="association" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="7eq243tT_Ux">
    <property role="EcuMT" value="8329979535468945057" />
    <property role="3GE5qa" value="operation.node" />
    <property role="TrG5h" value="Node_PresentationOperation" />
    <property role="34LRSv" value="presentation" />
    <property role="R4oN_" value="string representation" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="lhC5EIKrMB">
    <property role="EcuMT" value="383263754642635943" />
    <property role="3GE5qa" value="operation.node" />
    <property role="TrG5h" value="Node_SetUID" />
    <property role="34LRSv" value="set uid" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
    <node concept="1TJgyj" id="lhC5EIKs5I" role="1TKVEi">
      <property role="IQ2ns" value="383263754642637166" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="lhC5EIKpoC">
    <property role="EcuMT" value="383263754642626088" />
    <property role="3GE5qa" value="operation.node" />
    <property role="TrG5h" value="Node_GetUID" />
    <property role="34LRSv" value="get uuid" />
    <ref role="1TJDcQ" node="g$eCIIG" resolve="SNodeOperation" />
  </node>
  <node concept="1TIwiD" id="5sqSqyx6RqK">
    <property role="EcuMT" value="6276577145067894448" />
    <property role="3GE5qa" value="operation.node" />
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="ConceptJustToIntroduceAggregatedLanguage" />
    <property role="R4oN_" value="placeholder to import aggregated language" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5sqSqyx6RHu" role="1TKVEi">
      <property role="IQ2ns" value="6276577145067895646" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="mmm" />
      <ref role="20lvS9" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
    </node>
    <node concept="asaX9" id="5sqSqyx6XzX" role="lGtFl" />
    <node concept="t5JxF" id="5sqSqyx6XAV" role="lGtFl">
      <property role="t5JxN" value="Need to introduce lang.behavior as aggregated language in models using lang.smodel only to trigger checking rules and quickfixes of the former" />
    </node>
  </node>
</model>

