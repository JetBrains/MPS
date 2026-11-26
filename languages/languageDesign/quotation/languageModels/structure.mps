<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9">
        <property id="1225118929411" name="build" index="YLPcu" />
        <property id="1225118933224" name="comment" index="YLQ7P" />
      </concept>
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
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
  <node concept="PlHQZ" id="hqc44pm">
    <property role="TrG5h" value="AbstractAntiquotation" />
    <property role="3GE5qa" value="quotation" />
    <property role="EcuMT" value="1196350785110" />
    <node concept="1TJgyi" id="5CeLOEbPqUM" role="1TKVEl">
      <property role="TrG5h" value="label" />
      <property role="IQ2nx" value="6489343236075007666" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="hqc44pn" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1196350785111" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="bc0iGlx_Q5" role="PrDN$">
      <ref role="PrY4T" to="tpck:bc0iGlxbOU" resolve="IMetaLevelChanger" />
    </node>
    <node concept="PrWs8" id="6SHIBw3Z3Vk" role="PrDN$">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="hqc44po">
    <property role="TrG5h" value="Antiquotation" />
    <property role="3GE5qa" value="quotation" />
    <property role="EcuMT" value="1196350785112" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="4s_QN23zOhj" role="PzmwI">
      <ref role="PrY4T" node="hqc44pm" resolve="AbstractAntiquotation" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeQb" role="lGtFl">
      <property role="Hh88m" value="antiquotation" />
      <node concept="trNpa" id="166$sc$ZIAW" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="hqc44pp">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Quotation" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="&lt;quotation&gt;" />
    <property role="3GE5qa" value="container" />
    <property role="EcuMT" value="1196350785113" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="hqc44pq" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="quotedNode" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1196350785114" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="2S6ZQ64QxqC" role="1TKVEi">
      <property role="IQ2ns" value="3316618969910744744" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelToCreate" />
      <ref role="20lvS9" node="2S6ZQ64Qx1I" resolve="ModelNodeInitializer" />
    </node>
    <node concept="1TJgyj" id="hqc44pr" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelToCreate_old" />
      <property role="IQ2ns" value="1196350785115" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2KyHUfrw9K5" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeId_old" />
      <property role="IQ2ns" value="3180306201267182597" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="bc0iGlx_Qf" role="PzmwI">
      <ref role="PrY4T" to="tpck:bc0iGlxbOU" resolve="IMetaLevelChanger" />
    </node>
    <node concept="PrWs8" id="U99cpalq9C" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
    </node>
  </node>
  <node concept="1TIwiD" id="hqc44pt">
    <property role="TrG5h" value="ReferenceAntiquotation" />
    <property role="3GE5qa" value="quotation" />
    <property role="EcuMT" value="1196350785117" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDh" resolve="LinkAttribute" />
    <node concept="PrWs8" id="4s_QN23zOhm" role="PzmwI">
      <ref role="PrY4T" node="hqc44pm" resolve="AbstractAntiquotation" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeSG" role="lGtFl">
      <property role="Hh88m" value="referenceAntiquotation" />
      <node concept="trNpa" id="166$sc$ZIAU" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="hqc44pu">
    <property role="TrG5h" value="ListAntiquotation" />
    <property role="3GE5qa" value="quotation" />
    <property role="EcuMT" value="1196350785118" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="4s_QN23zOhk" role="PzmwI">
      <ref role="PrY4T" node="hqc44pm" resolve="AbstractAntiquotation" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeSK" role="lGtFl">
      <property role="Hh88m" value="listAntiquotation" />
      <node concept="trNpa" id="166$sc$ZIAX" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="hqEMmm7">
    <property role="TrG5h" value="PropertyAntiquotation" />
    <property role="3GE5qa" value="quotation" />
    <property role="EcuMT" value="1196866233735" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDm" resolve="PropertyAttribute" />
    <node concept="PrWs8" id="4s_QN23zOhl" role="PzmwI">
      <ref role="PrY4T" node="hqc44pm" resolve="AbstractAntiquotation" />
    </node>
    <node concept="PrWs8" id="3xb6lOuOxsf" role="PzmwI">
      <ref role="PrY4T" node="3xb6lOuOxs9" resolve="StringToTypedValueMigrationInfo" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOeP$" role="lGtFl">
      <property role="Hh88m" value="propertyAntiquotation" />
      <node concept="trNpa" id="166$sc$ZIA_" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="4IP40Bi2Kc_">
    <property role="TrG5h" value="NodeBuilderInitProperty" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="5455284157993911077" />
    <ref role="1TJDcQ" node="4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
    <node concept="1TJgyj" id="1o$2SUuutyh" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initValue" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1595412875168045201" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="4IP40Bi2KcA" role="1TKVEi">
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5455284157993911078" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="76efOMRCHWM">
    <property role="TrG5h" value="NodeBuilderList" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="builder" />
    <property role="34LRSv" value="[list]" />
    <property role="EcuMT" value="8182547171709738802" />
    <ref role="1TJDcQ" node="1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    <node concept="1TJgyj" id="76efOMRCHWN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="8182547171709738803" />
      <ref role="20lvS9" node="1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="4IP40Bi2$Et">
    <property role="TrG5h" value="NodeBuilder" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="container" />
    <property role="34LRSv" value="&lt;light quotation&gt;" />
    <property role="EcuMT" value="5455284157993863837" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="4IP40Bi2$Eu" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="quotedNode" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5455284157993863838" />
      <ref role="20lvS9" node="4IP40Bi2$Ew" resolve="NodeBuilderNode" />
    </node>
    <node concept="1TJgyj" id="4IP40Bi2$Ev" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelToCreate_old" />
      <property role="IQ2ns" value="5455284157993863839" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2S6ZQ64UeST" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelToCreate" />
      <property role="IQ2ns" value="3316618969911717433" />
      <ref role="20lvS9" node="2S6ZQ64Qx1I" resolve="ModelNodeInitializer" />
    </node>
    <node concept="PrWs8" id="1BC2tkV2axS" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="S4WnV2LSP5" role="PzmwI">
      <ref role="PrY4T" node="S4WnV2LSOY" resolve="INodeBuilderContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4IP40Bi38Sq">
    <property role="TrG5h" value="NodeBuilderInitLink" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="5455284157994012186" />
    <ref role="1TJDcQ" node="4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
    <node concept="1TJgyj" id="1o$2SUuutG3" role="1TKVEi">
      <property role="IQ2ns" value="1595412875168045827" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initValue" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    </node>
    <node concept="1TJgyj" id="4IP40Bi38Ss" role="1TKVEi">
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5455284157994012188" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="PrWs8" id="1BC2tkV2cim" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="76efOMRCfEj">
    <property role="TrG5h" value="NodeBuilderRef" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="8182547171709614739" />
    <ref role="1TJDcQ" node="1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    <node concept="1TJgyj" id="76efOMRCfEl" role="1TKVEi">
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8182547171709614741" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="76efOMRCLcI">
    <property role="TrG5h" value="NodeBuilderExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="builder" />
    <property role="34LRSv" value="#" />
    <property role="EcuMT" value="8182547171709752110" />
    <ref role="1TJDcQ" node="1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    <node concept="1TJgyj" id="76efOMRCLcK" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="8182547171709752112" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="7vKHTLu5S_S" role="PzmwI">
      <ref role="PrY4T" node="7vKHTLu5SzY" resolve="NodeBuilderInitValueChild" />
    </node>
  </node>
  <node concept="1TIwiD" id="4IP40Bi2$Ew">
    <property role="TrG5h" value="NodeBuilderNode" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="5455284157993863840" />
    <ref role="1TJDcQ" node="1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    <node concept="1TJgyj" id="4IP40Bi2KcV" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="values" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5455284157993911099" />
      <ref role="20lvS9" node="4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
    </node>
    <node concept="1TJgyj" id="4IP40Bi2KaL" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5455284157993910961" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="7vKHTLu5S$V" role="PzmwI">
      <ref role="PrY4T" node="7vKHTLu5SzY" resolve="NodeBuilderInitValueChild" />
    </node>
    <node concept="PrWs8" id="4IP40Bi30Gx" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="4IP40Bi2KcT">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="NodeBuilderInitPart" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="5455284157993911097" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4IP40Bi2KcQ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="IQ2ns" value="5455284157993911094" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="asaX9" id="1o$2SUuvH4L" role="lGtFl">
        <property role="YLPcu" value="2019.2" />
        <property role="YLQ7P" value="use initValue link" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="7hIo0WbQAv7">
    <property role="TrG5h" value="GeneratorInternal_PropertyDescriptor" />
    <property role="3GE5qa" value="quotation.generation" />
    <property role="EcuMT" value="8389748773577451463" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1pFEQ4ZrQcU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="propertyIdentity" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1615573325506896698" />
      <ref role="20lvS9" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
    </node>
    <node concept="1TJgyi" id="7hIo0WbQAvT" role="1TKVEl">
      <property role="TrG5h" value="propertyValue" />
      <property role="IQ2nx" value="8389748773577451513" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2jfSSa$vTsX">
    <property role="TrG5h" value="GeneratorInternal_ReferenceDescriptor" />
    <property role="3GE5qa" value="quotation.generation" />
    <property role="EcuMT" value="2652588855789590333" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6SzyDXOU94S" role="1TKVEi">
      <property role="IQ2ns" value="7936339385822777656" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="linkId" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
    </node>
    <node concept="1TJgyi" id="2jfSSa$vTsZ" role="1TKVEl">
      <property role="TrG5h" value="targetNodeId" />
      <property role="IQ2nx" value="2652588855789590335" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Lb1CYjFf8C">
    <property role="TrG5h" value="GeneratorInternal_InternalReferenceHolder" />
    <property role="3GE5qa" value="quotation.generation" />
    <property role="EcuMT" value="2038730470042956328" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6SzyDXOU94N" role="1TKVEi">
      <property role="IQ2ns" value="7936339385822777651" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="linkId" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
    </node>
    <node concept="1TJgyj" id="1Lb1CYjFf8D" role="1TKVEi">
      <property role="20kJfa" value="role" />
      <property role="IQ2ns" value="2038730470042956329" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="1Lb1CYjFiv5" role="1TKVEi">
      <property role="20kJfa" value="sourceNode" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2038730470042970053" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="1Lb1CYjFiuW" role="1TKVEi">
      <property role="20kJfa" value="targetNode" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2038730470042970044" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="3xb6lOuOxs9">
    <property role="EcuMT" value="4056363777117001481" />
    <property role="3GE5qa" value="quotation" />
    <property role="TrG5h" value="StringToTypedValueMigrationInfo" />
    <node concept="t5JxF" id="3xb6lOuOxsa" role="lGtFl">
      <property role="t5JxN" value="Temporary interface that exists only during migration phase of property antiquotation and proerty pattern variables, only for internal usage" />
    </node>
    <node concept="1TJgyi" id="1SDkaf46SBG" role="1TKVEl">
      <property role="IQ2nx" value="2173356959483005420" />
      <property role="TrG5h" value="stringValueMigrated" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="1o$2SUuutG0">
    <property role="TrG5h" value="NodeBuilderInitLinkValue" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="1595412875168045824" />
    <property role="R5$K7" value="true" />
  </node>
  <node concept="1TIwiD" id="2S6ZQ64Qx1I">
    <property role="EcuMT" value="3316618969910743150" />
    <property role="3GE5qa" value="container" />
    <property role="TrG5h" value="ModelNodeInitializer" />
    <property role="34LRSv" value="[model=" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2S6ZQ64Qx1J" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelToCreate" />
      <property role="IQ2ns" value="3316618969910743151" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2S6ZQ64Qx1K" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodeId" />
      <property role="IQ2ns" value="3316618969910743152" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="l18Rx3zLvE" role="PzmwI">
      <ref role="PrY4T" to="tpck:bc0iGlxbOU" resolve="IMetaLevelChanger" />
    </node>
  </node>
  <node concept="PlHQZ" id="7vKHTLu5SzY">
    <property role="EcuMT" value="8642609567145363710" />
    <property role="3GE5qa" value="builder" />
    <property role="TrG5h" value="NodeBuilderInitValueChild" />
  </node>
  <node concept="1TIwiD" id="63LzO9stDA2">
    <property role="EcuMT" value="6985522012210239874" />
    <property role="3GE5qa" value="builder" />
    <property role="TrG5h" value="NodeBuilderInitPropertyValue" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="63LzO9stH8q">
    <property role="TrG5h" value="NodeBuilderPropertyExpression" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="builder" />
    <property role="EcuMT" value="6985522012210254362" />
    <ref role="1TJDcQ" node="63LzO9stDA2" resolve="NodeBuilderInitPropertyValue" />
    <node concept="1TJgyj" id="63LzO9stH8r" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6985522012210254363" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="63LzO9stH8t" role="PzmwI">
      <ref role="PrY4T" to="tpck:hLJPP0O" resolve="IWrapper" />
    </node>
  </node>
  <node concept="PlHQZ" id="S4WnV2LSOY">
    <property role="EcuMT" value="1010197743173864766" />
    <property role="3GE5qa" value="container" />
    <property role="TrG5h" value="INodeBuilderContainer" />
  </node>
</model>

