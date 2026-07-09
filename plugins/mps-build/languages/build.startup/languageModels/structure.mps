<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a930f08c-5447-4203-8f2e-507bb76fab12(jetbrains.mps.build.startup.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9">
        <property id="1225118929411" name="build" index="YLPcu" />
        <property id="1225118933224" name="comment" index="YLQ7P" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3nFPImNgRk8">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="MpsStartupScript" />
    <property role="EcuMT" value="3885435385580582152" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="32A7APlXEJ9" role="1TKVEi">
      <property role="IQ2ns" value="3505522814897007561" />
      <property role="20kJfa" value="branding" />
      <ref role="20lvS9" to="kdzh:6Iq8148eRud" resolve="BuildMps_Branding" />
    </node>
    <node concept="1TJgyj" id="3nFPImNgRsC" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="bootClasspath" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="3885435385580582696" />
      <ref role="20lvS9" node="3nFPImNgRk9" resolve="ClassPathItem" />
    </node>
    <node concept="1TJgyj" id="3nFPImNh2p$" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="vmOptions" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="3885435385580627556" />
      <ref role="20lvS9" node="3nFPImNgRkd" resolve="VmOptions" />
    </node>
    <node concept="1TJgyj" id="2lwFGYOQzXr" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="vmOptions64" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="2693344784283221851" />
      <ref role="20lvS9" node="3nFPImNgRkd" resolve="VmOptions" />
    </node>
    <node concept="1TJgyj" id="7mPGpETqNW1" role="1TKVEi">
      <property role="IQ2ns" value="8481880751316090625" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="extBootClasspath" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3nFPImNgRk9" resolve="ClassPathItem" />
    </node>
    <node concept="1TJgyi" id="3nFPImNgRkb" role="1TKVEl">
      <property role="TrG5h" value="startupFolder" />
      <property role="IQ2nx" value="3885435385580582155" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
      <node concept="asaX9" id="32A7APlXEJ7" role="lGtFl">
        <property role="YLQ7P" value="Scripts will handle startup folder themselfs" />
        <property role="YLPcu" value="2017.1" />
      </node>
    </node>
    <node concept="1TJgyi" id="3nFPImNh3ii" role="1TKVEl">
      <property role="TrG5h" value="startupClass" />
      <property role="IQ2nx" value="3885435385580631186" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="3nFPImNgRkf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3nFPImNgRk9">
    <property role="TrG5h" value="ClassPathItem" />
    <property role="EcuMT" value="3885435385580582153" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3nFPImNgRka" role="1TKVEl">
      <property role="TrG5h" value="path" />
      <property role="IQ2nx" value="3885435385580582154" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3nFPImNgRkd">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="VmOptions" />
    <property role="EcuMT" value="3885435385580582157" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3nFPImNgRtc">
    <property role="TrG5h" value="SimpleVmOptions" />
    <property role="EcuMT" value="3885435385580582732" />
    <ref role="1TJDcQ" node="3nFPImNgRkd" resolve="VmOptions" />
    <node concept="1TJgyi" id="3nFPImNgRtd" role="1TKVEl">
      <property role="TrG5h" value="options" />
      <property role="IQ2nx" value="3885435385580582733" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="54lRqzvvvMy" role="1TKVEl">
      <property role="TrG5h" value="commented" />
      <property role="IQ2nx" value="5842819808956906658" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="1w81suLPAxW">
    <property role="TrG5h" value="TextFile" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="1731640411964205180" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1w81suLPAyL" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="lines" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1731640411964205233" />
      <ref role="20lvS9" node="1w81suLPAyy" resolve="TextLine" />
    </node>
    <node concept="PrWs8" id="1w81suLQWWy" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1w81suLPAyy">
    <property role="TrG5h" value="TextLine" />
    <property role="EcuMT" value="1731640411964205218" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1w81suLRRvp" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <property role="IQ2nx" value="1731640411964798937" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

