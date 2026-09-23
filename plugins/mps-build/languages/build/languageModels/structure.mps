<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="8xvf" ref="r:ed179f4d-7cf2-479d-8348-50c1fc63b96a(jetbrains.mps.build.workflow.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="iuxj" ref="r:64db3a92-5968-4a73-b456-34504a2d97a6(jetbrains.mps.core.xml.structure)" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
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
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
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
  <node concept="1TIwiD" id="4RPz6WoY4Cj">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="BuildProject" />
    <property role="34LRSv" value="build project" />
    <property role="EcuMT" value="5617550519002745363" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4wSvFFxC7Cz" role="1TKVEl">
      <property role="TrG5h" value="internalBaseDirectory" />
      <property role="IQ2nx" value="5204048710541015587" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4gSHdTpggUW" role="1TKVEl">
      <property role="TrG5h" value="fileName" />
      <property role="IQ2nx" value="4915877860348071612" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5KZfyKsUqLK" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="plugins" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="6647099934206700656" />
      <ref role="20lvS9" node="5KZfyKsUo6u" resolve="BuildPlugin" />
    </node>
    <node concept="1TJgyj" id="4RPz6WoY4C_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dependencies" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5617550519002745381" />
      <ref role="20lvS9" node="4RPz6WoY4Cz" resolve="BuildDependency" />
    </node>
    <node concept="1TJgyj" id="4RPz6WoY4Cy" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="macros" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5617550519002745378" />
      <ref role="20lvS9" node="4RPz6WoY4Cv" resolve="BuildMacro" />
    </node>
    <node concept="1TJgyj" id="6qcrfIJFfrM" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="7389400916848080626" />
      <ref role="20lvS9" node="6qcrfIJFdK8" resolve="BuildProjectPart" />
    </node>
    <node concept="1TJgyj" id="34DbxDwQPuJ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="aspects" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="3542413272732620719" />
      <ref role="20lvS9" node="34DbxDwRlgt" resolve="BuildAspect" />
    </node>
    <node concept="1TJgyj" id="4RPz6WoY4Cs" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="layout" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5617550519002745372" />
      <ref role="20lvS9" node="4RPz6WoY4Ck" resolve="BuildLayout" />
    </node>
    <node concept="1TJgyj" id="4ahc858UcqY" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="scriptsDir" />
      <property role="IQ2ns" value="4796668409958418110" />
      <ref role="20lvS9" node="6mpuAlRavrV" resolve="BuildRelativePath" />
    </node>
    <node concept="PrWs8" id="6qcrfIJFCeW" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="4RPz6WoY4Cr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQW" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/build.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="4RPz6WoY4Ck">
    <property role="TrG5h" value="BuildLayout" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="5617550519002745364" />
    <ref role="1TJDcQ" node="6qcrfIJEWWc" resolve="BuildLayout_AbstractContainer" />
    <node concept="1QGGSu" id="4Q8sAA5iJQN" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/layout.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="4RPz6WoY4Cv">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildMacro" />
    <property role="3GE5qa" value="Macro" />
    <property role="EcuMT" value="5617550519002745375" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4RPz6WoY4Cw" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4RPz6WoY4Cz">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildDependency" />
    <property role="3GE5qa" value="Dependencies" />
    <property role="EcuMT" value="5617550519002745379" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6qcrfIJEWWc">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_AbstractContainer" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="7389400916848004876" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="PrWs8" id="450ejGzh8b7" role="PzmwI">
      <ref role="PrY4T" node="450ejGzh8b3" resolve="BuildLayout_Container" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJF4LS">
    <property role="R4oN_" value="create a folder" />
    <property role="TrG5h" value="BuildLayout_Folder" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="folder" />
    <property role="EcuMT" value="7389400916848036984" />
    <ref role="1TJDcQ" node="6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
    <node concept="PrWs8" id="6eCuTcwOun2" role="PzmwI">
      <ref role="PrY4T" node="6eCuTcwOczV" resolve="BuildLayout_PureNode" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQP" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/layout.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJF4M5">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_Node" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="7389400916848036997" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6bGbH3Svq67" role="PzmwI">
      <ref role="PrY4T" node="6bGbH3Svq63" resolve="BuildLayout_PathElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJF7Yc">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_NamedContainer" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="7389400916848050060" />
    <ref role="1TJDcQ" node="6qcrfIJEWWc" resolve="BuildLayout_AbstractContainer" />
    <node concept="1TJgyj" id="3NagsOfTPim" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="containerName" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4380385936562148502" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="PrWs8" id="6qcrfIJF7Yd" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="4RsV8qJH_BX" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJH_Bn" resolve="BuildSource_SingleFolder" />
    </node>
    <node concept="PrWs8" id="7XQqoCTkVNl" role="PzmwI">
      <ref role="PrY4T" node="7XQqoCTkVIO" resolve="BuildStringContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJF7Yn">
    <property role="TrG5h" value="BuildLayout_Zip" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="zip" />
    <property role="EcuMT" value="7389400916848050071" />
    <ref role="1TJDcQ" node="6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
    <node concept="PrWs8" id="4zlO3QT9Z8E" role="PzmwI">
      <ref role="PrY4T" node="4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
    </node>
    <node concept="PrWs8" id="6eCuTcwOun4" role="PzmwI">
      <ref role="PrY4T" node="6eCuTcwOczV" resolve="BuildLayout_PureNode" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQZ" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/archive.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJF7Yq">
    <property role="TrG5h" value="BuildLayout_Jar" />
    <property role="3GE5qa" value="Layout.Java" />
    <property role="34LRSv" value="jar" />
    <property role="EcuMT" value="7389400916848050074" />
    <ref role="1TJDcQ" node="6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
    <node concept="PrWs8" id="4zlO3QT9Z8H" role="PzmwI">
      <ref role="PrY4T" node="4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
    </node>
    <node concept="PrWs8" id="6eCuTcwOun6" role="PzmwI">
      <ref role="PrY4T" node="6eCuTcwOczV" resolve="BuildLayout_PureNode" />
    </node>
    <node concept="PrWs8" id="4RsV8qJFhWC" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQS" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/archive.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJFdK8">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildProjectPart" />
    <property role="3GE5qa" value="Project" />
    <property role="EcuMT" value="7389400916848073736" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6qcrfIJFdKS">
    <property role="TrG5h" value="BuildSource_JavaModule" />
    <property role="3GE5qa" value="Project.Java" />
    <property role="34LRSv" value="java module" />
    <property role="EcuMT" value="7389400916848073784" />
    <ref role="1TJDcQ" node="6qcrfIJFdK8" resolve="BuildProjectPart" />
    <node concept="1TJgyi" id="77zDu6tvKfz" role="1TKVEl">
      <property role="IQ2nx" value="8206585334427747299" />
      <property role="TrG5h" value="conditionalCompile" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
      <node concept="t5JxF" id="77zDu6tvKtN" role="lGtFl">
        <property role="t5JxN" value="Experimental mechanism to mark modules that we don't need to compile (compiled by another task, not &lt;javac&gt;); MPSI-36" />
      </node>
    </node>
    <node concept="1TJgyj" id="6qcrfIJFdLy" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sources" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="7389400916848073826" />
      <ref role="20lvS9" node="4zlO3QTanjW" resolve="BuildSource_JavaSources" />
    </node>
    <node concept="1TJgyj" id="2oUTXgLA9qF" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dependencies" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="2754769020641646251" />
      <ref role="20lvS9" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    </node>
    <node concept="1TJgyj" id="1s8OwvM683U" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="options" />
      <property role="IQ2ns" value="1659807394254323962" />
      <ref role="20lvS9" node="1s8OwvM5SHi" resolve="BuildSource_JavaModuleOptions" />
    </node>
    <node concept="1TJgyj" id="3XLirLmtFB7" role="1TKVEi">
      <property role="IQ2ns" value="4571516170011064775" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="outputFolder" />
      <ref role="20lvS9" node="1ZTcb8AgV3Z" resolve="BuildInputSingleFolder" />
      <node concept="t5JxF" id="3XLirLmtG0H" role="lGtFl">
        <property role="t5JxN" value="Experimental mechanism to address MPSI-36" />
      </node>
    </node>
    <node concept="PrWs8" id="6qcrfIJFdLz" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2fQZjorRIf5" role="PzmwI">
      <ref role="PrY4T" node="2fQZjorRfOB" resolve="BuildSource_CompilablePart" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQJ" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/javaModule.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJFdKY">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildSourcePath" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="EcuMT" value="7389400916848073790" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6qcrfIJFdLi">
    <property role="TrG5h" value="BuildSource_JavaContentRoot" />
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="34LRSv" value="content root" />
    <property role="EcuMT" value="7389400916848073810" />
    <ref role="1TJDcQ" node="4zlO3QTanjW" resolve="BuildSource_JavaSources" />
    <node concept="1TJgyj" id="6qcrfIJFdLj" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="basePath" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7389400916848073811" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="2oUTXgL_krd" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="folders" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="2754769020641429197" />
      <ref role="20lvS9" node="2oUTXgL_kr6" resolve="BuildSource_JavaContentFolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJFt02">
    <property role="R4oN_" value="defines folder macro with default value (for local build)" />
    <property role="TrG5h" value="BuildFolderMacro" />
    <property role="3GE5qa" value="Macro" />
    <property role="34LRSv" value="folder" />
    <property role="EcuMT" value="7389400916848136194" />
    <ref role="1TJDcQ" node="4RPz6WoY4Cv" resolve="BuildMacro" />
    <node concept="1TJgyj" id="6qcrfIJFv3E" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="defaultPath" />
      <property role="IQ2ns" value="7389400916848144618" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQR" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/macro.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6qcrfIJFx8t">
    <property role="TrG5h" value="BuildSourceMacroRelativePath" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="EcuMT" value="7389400916848153117" />
    <ref role="1TJDcQ" node="6mpuAlRavrV" resolve="BuildRelativePath" />
    <node concept="1TJgyj" id="6qcrfIJFx8E" role="1TKVEi">
      <property role="20kJfa" value="macro" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7389400916848153130" />
      <ref role="20lvS9" node="6qcrfIJFt02" resolve="BuildFolderMacro" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQQ" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/path.png" />
    </node>
    <node concept="RPilO" id="47y0FrqaLkX" role="lGtFl">
      <ref role="RPilL" node="6qcrfIJFx8E" resolve="macro" />
      <node concept="ROjv2" id="4HG1OVl5qrn" role="ROhUF">
        <property role="1W_73P" value="$" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="2oUTXgL_kr6">
    <property role="TrG5h" value="BuildSource_JavaContentFolder" />
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="34LRSv" value="source" />
    <property role="EcuMT" value="2754769020641429190" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3Ftr4R6BHad" role="1TKVEl">
      <property role="TrG5h" value="kind" />
      <property role="IQ2nx" value="5248329904288265467" />
      <ref role="AX2Wp" node="3Ftr4R6BFDM" resolve="BuildSource_JavaContentFolderKind" />
    </node>
    <node concept="1TJgyi" id="2oUTXgL_kr7" role="1TKVEl">
      <property role="TrG5h" value="relativePath" />
      <property role="IQ2nx" value="2754769020641429191" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2oUTXgLA9pR">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildSource_JavaDependency" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="EcuMT" value="2754769020641646199" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="2oUTXgLA9qB">
    <property role="TrG5h" value="BuildSource_JavaDependencyModule" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="34LRSv" value="module" />
    <property role="EcuMT" value="2754769020641646247" />
    <ref role="1TJDcQ" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    <node concept="1TJgyi" id="6iXh2SsYKUE" role="1TKVEl">
      <property role="TrG5h" value="reexport" />
      <property role="IQ2nx" value="7259033139236507306" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="5FtnUVJQBjK" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
    <node concept="1TJgyj" id="2oUTXgLA9qE" role="1TKVEi">
      <property role="20kJfa" value="module" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2754769020641646250" />
      <ref role="20lvS9" node="6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
    </node>
  </node>
  <node concept="1TIwiD" id="5gfUUDxhbxN">
    <property role="TrG5h" value="BuildSource_JavaLibrary" />
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="34LRSv" value="java library" />
    <property role="EcuMT" value="6057319140845467763" />
    <ref role="1TJDcQ" node="6qcrfIJFdK8" resolve="BuildProjectPart" />
    <node concept="1TJgyj" id="5gfUUDxhech" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="6057319140845478673" />
      <ref role="20lvS9" node="5gfUUDxhecw" resolve="BuildSource_JavaLibraryElement" />
    </node>
    <node concept="PrWs8" id="5gfUUDxhbxO" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQX" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/library.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="5gfUUDxhecw">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildSource_JavaLibraryElement" />
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="EcuMT" value="6057319140845478688" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4lbsKRp1TRe">
    <property role="TrG5h" value="BuildSource_JavaDependencyLibrary" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="34LRSv" value="library" />
    <property role="EcuMT" value="4993211115183250894" />
    <ref role="1TJDcQ" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    <node concept="1TJgyi" id="5bUGwboWA8C" role="1TKVEl">
      <property role="TrG5h" value="reexport" />
      <property role="IQ2nx" value="5979287180587196968" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="4lbsKRp1TRf" role="1TKVEi">
      <property role="20kJfa" value="library" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4993211115183250895" />
      <ref role="20lvS9" node="5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
    </node>
    <node concept="PrWs8" id="2xHpXR_dfuN" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
  </node>
  <node concept="1TIwiD" id="4lbsKRp2c8w">
    <property role="TrG5h" value="BuildProjectDependency" />
    <property role="3GE5qa" value="Dependencies" />
    <property role="EcuMT" value="4993211115183325728" />
    <ref role="1TJDcQ" node="4RPz6WoY4Cz" resolve="BuildDependency" />
    <node concept="1TJgyj" id="3_glsEmonOM" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="artifacts" />
      <property role="IQ2ns" value="4129895186893471026" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="4RPz6WoY4C$" role="1TKVEi">
      <property role="20kJfa" value="script" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5617550519002745380" />
      <ref role="20lvS9" node="4RPz6WoY4Cj" resolve="BuildProject" />
    </node>
    <node concept="PrWs8" id="6bGbH3Svq6b" role="PzmwI">
      <ref role="PrY4T" node="6bGbH3Svq63" resolve="BuildLayout_PathElement" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQK" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/dependency.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="34DbxDwQvcK">
    <property role="R4oN_" value="custom named layout" />
    <property role="TrG5h" value="BuildNamedLayout" />
    <property role="3GE5qa" value="Layout" />
    <property role="34LRSv" value="layout" />
    <property role="EcuMT" value="3542413272732529456" />
    <ref role="1TJDcQ" node="34DbxDwRlgt" resolve="BuildAspect" />
    <node concept="PrWs8" id="34DbxDwRmKP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="450ejGzh8b5" role="PzmwI">
      <ref role="PrY4T" node="450ejGzh8b3" resolve="BuildLayout_Container" />
    </node>
    <node concept="PrWs8" id="1bWeed$oLPq" role="PzmwI">
      <ref role="PrY4T" node="6bGbH3Svq63" resolve="BuildLayout_PathElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="34DbxDwRlgt">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildAspect" />
    <property role="EcuMT" value="3542413272732750877" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4Kip2_918YM">
    <property role="TrG5h" value="BuildSourceProjectRelativePath" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="34LRSv" value="." />
    <property role="EcuMT" value="5481553824944787378" />
    <ref role="1TJDcQ" node="6mpuAlRavrV" resolve="BuildRelativePath" />
    <node concept="1QGGSu" id="4Q8sAA5iJQM" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/path.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="7usrAn056vL">
    <property role="TrG5h" value="BuildCompositePath" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="EcuMT" value="8618885170173601777" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7usrAn056vM" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="tail" />
      <property role="IQ2ns" value="8618885170173601778" />
      <ref role="20lvS9" node="7usrAn056vL" resolve="BuildCompositePath" />
    </node>
    <node concept="1TJgyi" id="7usrAn056vN" role="1TKVEl">
      <property role="TrG5h" value="head" />
      <property role="IQ2nx" value="8618885170173601779" />
      <ref role="AX2Wp" node="7usrAn05wtA" resolve="FileName" />
    </node>
  </node>
  <node concept="1TIwiD" id="6mpuAlRavrV">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildRelativePath" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="EcuMT" value="7321017245476976379" />
    <ref role="1TJDcQ" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    <node concept="1TJgyj" id="6mpuAlRaIJb" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="compositePart" />
      <property role="IQ2ns" value="7321017245477039051" />
      <ref role="20lvS9" node="7usrAn056vL" resolve="BuildCompositePath" />
    </node>
  </node>
  <node concept="PlHQZ" id="Y2EImGIi9D">
    <property role="TrG5h" value="BuildLayout_FileSet" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="1117643560963351145" />
  </node>
  <node concept="1TIwiD" id="5KZfyKsUo6u">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildPlugin" />
    <property role="3GE5qa" value="Plugins" />
    <property role="EcuMT" value="6647099934206689694" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5KZfyKsUqLB">
    <property role="R4oN_" value="adds Java capabilities (compile, test &amp; bundling) to the project" />
    <property role="TrG5h" value="BuildJavaPlugin" />
    <property role="3GE5qa" value="Plugins" />
    <property role="34LRSv" value="java" />
    <property role="EcuMT" value="6647099934206700647" />
    <ref role="1TJDcQ" node="5KZfyKsUo6u" resolve="BuildPlugin" />
  </node>
  <node concept="1TIwiD" id="3h9a8EwPm3y">
    <property role="R4oN_" value="defines variable macro" />
    <property role="TrG5h" value="BuildVariableMacro" />
    <property role="3GE5qa" value="Macro" />
    <property role="34LRSv" value="var" />
    <property role="EcuMT" value="3767587139141066978" />
    <ref role="1TJDcQ" node="4RPz6WoY4Cv" resolve="BuildMacro" />
    <node concept="1TJgyj" id="2oW$psGOAa8" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initialValue" />
      <property role="IQ2ns" value="2755237150521975432" />
      <ref role="20lvS9" node="2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQL" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/macro.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zlO3QT9yYs">
    <property role="TrG5h" value="BuildFileIncludeSelector" />
    <property role="3GE5qa" value="SourceSet.Selectors" />
    <property role="34LRSv" value="include" />
    <property role="EcuMT" value="5248329904288051100" />
    <ref role="1TJDcQ" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    <node concept="1TJgyi" id="4zlO3QT9yYt" role="1TKVEl">
      <property role="TrG5h" value="pattern" />
      <property role="IQ2nx" value="5248329904288051101" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zlO3QT8$mB">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildFileSelector" />
    <property role="3GE5qa" value="SourceSet.Selectors" />
    <property role="EcuMT" value="5248329904287794599" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2oE1c2bmP8u" role="PzmwI">
      <ref role="PrY4T" node="7UAfeVQUc4$" resolve="BuildLayout_CopyParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zlO3QT8$m$">
    <property role="R4oN_" value="folder on local filesystem" />
    <property role="TrG5h" value="BuildInputFiles" />
    <property role="3GE5qa" value="SourceSet.Files" />
    <property role="34LRSv" value="files from" />
    <property role="EcuMT" value="5248329904287794596" />
    <ref role="1TJDcQ" node="4zlO3QT8mNF" resolve="BuildInputFileSet" />
    <node concept="1TJgyj" id="4zlO3QT8$mA" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dir" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5248329904287794598" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="4zlO3QT8$nR" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selectors" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5248329904287794679" />
      <ref role="20lvS9" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    </node>
    <node concept="PrWs8" id="4zlO3QT9RaX" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
  </node>
  <node concept="1TIwiD" id="4gdvEeQyRO1">
    <property role="TrG5h" value="BuildVarRefStringPart" />
    <property role="3GE5qa" value="Names" />
    <property role="EcuMT" value="4903714810883702017" />
    <ref role="1TJDcQ" node="4gdvEeQyRNZ" resolve="BuildStringPart" />
    <node concept="1TJgyj" id="4gdvEeQyRO2" role="1TKVEi">
      <property role="20kJfa" value="macro" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4903714810883702018" />
      <ref role="20lvS9" node="3h9a8EwPm3y" resolve="BuildVariableMacro" />
    </node>
  </node>
  <node concept="1TIwiD" id="4gdvEeQyRO3">
    <property role="TrG5h" value="BuildTextStringPart" />
    <property role="3GE5qa" value="Names" />
    <property role="EcuMT" value="4903714810883702019" />
    <ref role="1TJDcQ" node="4gdvEeQyRNZ" resolve="BuildStringPart" />
    <node concept="1TJgyi" id="4gdvEeQz4Pm" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <property role="IQ2nx" value="4903714810883755350" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4gdvEeQyRNZ">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildStringPart" />
    <property role="3GE5qa" value="Names" />
    <property role="EcuMT" value="4903714810883702015" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4gdvEeQz4Pl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="4zlO3QT9Z8D">
    <property role="TrG5h" value="BuildLayout_ContainerAcceptingFileSet" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="5248329904288166441" />
    <node concept="PrWs8" id="6mKcN2FM6t$" role="PrDN$">
      <ref role="PrY4T" node="450ejGzh8b3" resolve="BuildLayout_Container" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zlO3QT8mNE">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildInputResourceSet" />
    <property role="3GE5qa" value="SourceSet" />
    <property role="34LRSv" value="resource set" />
    <property role="EcuMT" value="5248329904287739114" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4zlO3QT8mNF">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildInputFileSet" />
    <property role="3GE5qa" value="SourceSet.Files" />
    <property role="34LRSv" value="file set" />
    <property role="EcuMT" value="5248329904287739115" />
    <ref role="1TJDcQ" node="4zlO3QT8mNE" resolve="BuildInputResourceSet" />
  </node>
  <node concept="1TIwiD" id="4zlO3QT8mNG">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildInputFolderSet" />
    <property role="3GE5qa" value="SourceSet.Folders" />
    <property role="EcuMT" value="5248329904287739116" />
    <ref role="1TJDcQ" node="4zlO3QT8mNE" resolve="BuildInputResourceSet" />
  </node>
  <node concept="1TIwiD" id="4zlO3QT8NAT">
    <property role="TrG5h" value="BuildLayout_Copy" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="EcuMT" value="5248329904287857081" />
    <ref role="1TJDcQ" node="7XQqoCTjpIh" resolve="BuildLayout_AbstractCopy" />
    <node concept="PrWs8" id="4zlO3QT9SNA" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zlO3QT8$mm">
    <property role="R4oN_" value="single file on local filesystem" />
    <property role="TrG5h" value="BuildInputSingleFile" />
    <property role="3GE5qa" value="SourceSet.Files" />
    <property role="34LRSv" value="file" />
    <property role="EcuMT" value="5248329904287794582" />
    <ref role="1TJDcQ" node="4zlO3QT8mNF" resolve="BuildInputFileSet" />
    <node concept="1TJgyj" id="4zlO3QT8$mq" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="path" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5248329904287794586" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="PrWs8" id="4zlO3QT9RaY" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
    <node concept="PrWs8" id="4RsV8qJDnFr" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zlO3QTanjW">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildSource_JavaSources" />
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="EcuMT" value="5248329904288265468" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4zlO3QT9yYB">
    <property role="TrG5h" value="BuildFileExcludeSelector" />
    <property role="3GE5qa" value="SourceSet.Selectors" />
    <property role="34LRSv" value="exclude" />
    <property role="EcuMT" value="5248329904288051111" />
    <ref role="1TJDcQ" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    <node concept="1TJgyi" id="4zlO3QT9yYC" role="1TKVEl">
      <property role="TrG5h" value="pattern" />
      <property role="IQ2nx" value="5248329904288051112" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3NagsOfThPf">
    <property role="TrG5h" value="BuildString" />
    <property role="3GE5qa" value="Names" />
    <property role="EcuMT" value="4380385936562003279" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4gdvEeQzbDb" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="4903714810883783243" />
      <ref role="20lvS9" node="4gdvEeQyRNZ" resolve="BuildStringPart" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQY" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/string.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="15RAxQWZPkq">
    <property role="TrG5h" value="BuildSource_JavaJar" />
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="34LRSv" value="jar" />
    <property role="EcuMT" value="1258644073388922138" />
    <ref role="1TJDcQ" node="3elU8iQ72g4" resolve="BuildSource_JavaCP" />
    <node concept="1TJgyj" id="3elU8iQ72fy" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="path" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3717132724152837090" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="7zkpphtJnL6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="customLocation" />
      <property role="IQ2ns" value="8706695667516275782" />
      <ref role="20lvS9" node="4RsV8qJGJpc" resolve="BuildSource_JavaExternalJarRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="15RAxQX0x_p">
    <property role="TrG5h" value="BuildSource_JavaClassFolder" />
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="34LRSv" value="classes" />
    <property role="EcuMT" value="1258644073389103449" />
    <ref role="1TJDcQ" node="3elU8iQ72g4" resolve="BuildSource_JavaCP" />
    <node concept="1TJgyj" id="3elU8iQ72h0" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dir" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3717132724152837184" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
  </node>
  <node concept="1TIwiD" id="IFRVVI4P3M">
    <property role="TrG5h" value="BuildLayout_Import" />
    <property role="3GE5qa" value="Layout" />
    <property role="34LRSv" value="import" />
    <property role="EcuMT" value="841011766565753074" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="IFRVVI4P3O" role="1TKVEi">
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="841011766565753076" />
      <ref role="20lvS9" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    </node>
    <node concept="PrWs8" id="IFRVVI6zqQ" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
    <node concept="PrWs8" id="4RsV8qJD1JB" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
  </node>
  <node concept="1TIwiD" id="IFRVVI5ZTn">
    <property role="TrG5h" value="BuildStringNotEmpty" />
    <property role="3GE5qa" value="Names" />
    <property role="EcuMT" value="841011766566059607" />
    <ref role="1TJDcQ" node="3NagsOfThPf" resolve="BuildString" />
  </node>
  <node concept="PlHQZ" id="IFRVVI6zqz">
    <property role="TrG5h" value="BuildExternalDependency" />
    <property role="3GE5qa" value="Dependencies" />
    <property role="EcuMT" value="841011766566205091" />
  </node>
  <node concept="1TIwiD" id="450ejGzgSQF">
    <property role="TrG5h" value="BuildCustomWorkflow" />
    <property role="3GE5qa" value="Workflow" />
    <property role="34LRSv" value="workflow" />
    <property role="EcuMT" value="4701820937132281259" />
    <ref role="1TJDcQ" node="34DbxDwRlgt" resolve="BuildAspect" />
    <node concept="1TJgyj" id="450ejGzgSQG" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="4701820937132281260" />
      <ref role="20lvS9" to="8xvf:2pKPpytmAa7" resolve="BwfProjectPart" />
    </node>
  </node>
  <node concept="PlHQZ" id="450ejGzh8b3">
    <property role="TrG5h" value="BuildLayout_Container" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="4701820937132344003" />
    <node concept="1TJgyj" id="6qcrfIJF4Me" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="children" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="7389400916848037006" />
      <ref role="20lvS9" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    </node>
  </node>
  <node concept="PlHQZ" id="6bGbH3Svq63">
    <property role="TrG5h" value="BuildLayout_PathElement" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="7128123785277710723" />
  </node>
  <node concept="1TIwiD" id="2xHpXR_cEa4">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_TransparentContainer" />
    <property role="3GE5qa" value="Layout" />
    <property role="EcuMT" value="2913098736709313156" />
    <ref role="1TJDcQ" node="6qcrfIJEWWc" resolve="BuildLayout_AbstractContainer" />
  </node>
  <node concept="1TIwiD" id="2xHpXR_dfqr">
    <property role="TrG5h" value="BuildLayout_ExportAsJavaLibrary" />
    <property role="3GE5qa" value="Layout.Java" />
    <property role="34LRSv" value="export as java library" />
    <property role="EcuMT" value="2913098736709465755" />
    <ref role="1TJDcQ" node="2xHpXR_cEa4" resolve="BuildLayout_TransparentContainer" />
    <node concept="1TJgyj" id="2xHpXR_dfqu" role="1TKVEi">
      <property role="20kJfa" value="library" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2913098736709465758" />
      <ref role="20lvS9" node="5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
    </node>
  </node>
  <node concept="1TIwiD" id="1jjYQYSi0y2">
    <property role="TrG5h" value="BuildSource_JavaFiles" />
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="34LRSv" value="java files" />
    <property role="EcuMT" value="1500819558096177282" />
    <ref role="1TJDcQ" node="4zlO3QTanjW" resolve="BuildSource_JavaSources" />
    <node concept="1TJgyj" id="1jjYQYSi0y3" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resset" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1500819558096177283" />
      <ref role="20lvS9" node="1ZTcb8AgV3Z" resolve="BuildInputSingleFolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="3elU8iQ65L0">
    <property role="TrG5h" value="BuildSource_JavaDependencyJar" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="EcuMT" value="3717132724152589376" />
    <ref role="1TJDcQ" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    <node concept="1TJgyi" id="75uV$1rZNtH" role="1TKVEl">
      <property role="TrG5h" value="reexport" />
      <property role="IQ2nx" value="8169228734285428589" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="3elU8iQ65L1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="jar" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3717132724152589377" />
      <ref role="20lvS9" node="15RAxQWZPkq" resolve="BuildSource_JavaJar" />
    </node>
  </node>
  <node concept="1TIwiD" id="3elU8iQ72g4">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildSource_JavaCP" />
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="EcuMT" value="3717132724152837124" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3elU8iQ7kMV">
    <property role="TrG5h" value="BuildSource_JavaLibraryCP" />
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="EcuMT" value="3717132724152913083" />
    <ref role="1TJDcQ" node="5gfUUDxhecw" resolve="BuildSource_JavaLibraryElement" />
    <node concept="1TJgyj" id="3elU8iQ7kMX" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="classpath" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3717132724152913085" />
      <ref role="20lvS9" node="3elU8iQ72g4" resolve="BuildSource_JavaCP" />
    </node>
  </node>
  <node concept="PlHQZ" id="3elU8iQ7YwF">
    <property role="TrG5h" value="BuildSourceSetContainer" />
    <property role="3GE5qa" value="SourceSet" />
    <property role="EcuMT" value="3717132724153083947" />
  </node>
  <node concept="1TIwiD" id="3elU8iQ7YxB">
    <property role="TrG5h" value="BuildSource_JavaJars" />
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="34LRSv" value="jars" />
    <property role="EcuMT" value="3717132724153084007" />
    <ref role="1TJDcQ" node="3elU8iQ72g4" resolve="BuildSource_JavaCP" />
    <node concept="1TJgyj" id="3elU8iQ7YxD" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="jars" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3717132724153084009" />
      <ref role="20lvS9" node="4zlO3QT8$m$" resolve="BuildInputFiles" />
    </node>
    <node concept="PrWs8" id="3elU8iQ7YxH" role="PzmwI">
      <ref role="PrY4T" node="3elU8iQ7YwF" resolve="BuildSourceSetContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="6OECSZXJgkZ">
    <property role="TrG5h" value="BuildInputFolders" />
    <property role="3GE5qa" value="SourceSet.Folders" />
    <property role="34LRSv" value="folders" />
    <property role="EcuMT" value="7866279537988666687" />
    <ref role="1TJDcQ" node="4zlO3QT8mNG" resolve="BuildInputFolderSet" />
    <node concept="1TJgyj" id="6OECSZXJgl2" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dir" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7866279537988666690" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="6OECSZXJgl3" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selectors" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="7866279537988666691" />
      <ref role="20lvS9" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    </node>
  </node>
  <node concept="1TIwiD" id="1ZTcb8AgV3Z">
    <property role="TrG5h" value="BuildInputSingleFolder" />
    <property role="3GE5qa" value="SourceSet.Folders" />
    <property role="34LRSv" value="folder" />
    <property role="EcuMT" value="2303926226081001727" />
    <ref role="1TJDcQ" node="4zlO3QT8mNG" resolve="BuildInputFolderSet" />
    <node concept="1TJgyj" id="1ZTcb8AgV40" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="path" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2303926226081001728" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="PrWs8" id="4RsV8qJH_C3" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJH_Bn" resolve="BuildSource_SingleFolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="7wpYgMyURJQ">
    <property role="TrG5h" value="BuildFileIncludesSelector" />
    <property role="3GE5qa" value="SourceSet.Selectors" />
    <property role="34LRSv" value="includes" />
    <property role="EcuMT" value="8654221991637384182" />
    <ref role="1TJDcQ" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    <node concept="1TJgyi" id="7wpYgMyURJS" role="1TKVEl">
      <property role="TrG5h" value="pattern" />
      <property role="IQ2nx" value="8654221991637384184" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="7wpYgMyURLc" role="PzmwI">
      <ref role="PrY4T" node="7wpYgMyURLb" resolve="BuildFileSelectorInAttribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="7wpYgMyURLb">
    <property role="TrG5h" value="BuildFileSelectorInAttribute" />
    <property role="3GE5qa" value="SourceSet.Selectors" />
    <property role="EcuMT" value="8654221991637384267" />
  </node>
  <node concept="1TIwiD" id="2fQZjorRfO$">
    <property role="TrG5h" value="BuildLayout_CompileOutputOf" />
    <property role="3GE5qa" value="Layout.Java" />
    <property role="34LRSv" value="compile output of" />
    <property role="EcuMT" value="2591537044435828004" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="2fQZjorRfOA" role="1TKVEi">
      <property role="20kJfa" value="module" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2591537044435828006" />
      <ref role="20lvS9" node="2fQZjorRfOB" resolve="BuildSource_CompilablePart" />
    </node>
    <node concept="PrWs8" id="2fQZjorRIf3" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
  </node>
  <node concept="PlHQZ" id="2fQZjorRfOB">
    <property role="TrG5h" value="BuildSource_CompilablePart" />
    <property role="3GE5qa" value="Project.Java" />
    <property role="EcuMT" value="2591537044435828007" />
    <node concept="PrWs8" id="2fQZjorRPWA" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6EK__xlPv4N" role="1TKVEl">
      <property role="IQ2nx" value="7687809870062809395" />
      <property role="TrG5h" value="withKotlin" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="5WMFzVNtKRk">
    <property role="TrG5h" value="BuildSource_JavaDependencyExternalJar" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="34LRSv" value="external jar" />
    <property role="EcuMT" value="6859736767834557908" />
    <ref role="1TJDcQ" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    <node concept="1TJgyj" id="4RsV8qJGJsE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="extJar" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5610619299014309674" />
      <ref role="20lvS9" node="4RsV8qJGJpc" resolve="BuildSource_JavaExternalJarRef" />
    </node>
    <node concept="1TJgyi" id="5WMFzVNtSNm" role="1TKVEl">
      <property role="TrG5h" value="reexport" />
      <property role="IQ2nx" value="6859736767834590422" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="5WMFzVNtKRl" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
  </node>
  <node concept="1TIwiD" id="6eCuTcwObZ9">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="BuildExternalLayout" />
    <property role="3GE5qa" value="Layout.External" />
    <property role="34LRSv" value="external layout" />
    <property role="EcuMT" value="7181125477683216329" />
    <ref role="1TJDcQ" node="6qcrfIJEWWc" resolve="BuildLayout_AbstractContainer" />
    <node concept="PrWs8" id="6eCuTcwObZa" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQV" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/externalLayout.png" />
    </node>
  </node>
  <node concept="PlHQZ" id="6eCuTcwOczV">
    <property role="TrG5h" value="BuildLayout_PureNode" />
    <property role="3GE5qa" value="Layout.External" />
    <property role="EcuMT" value="7181125477683218683" />
  </node>
  <node concept="1TIwiD" id="6eCuTcwOLGQ">
    <property role="TrG5h" value="BuildLayout_FileStub" />
    <property role="3GE5qa" value="Layout.External" />
    <property role="34LRSv" value="file" />
    <property role="EcuMT" value="7181125477683370806" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="6eCuTcwOLIk" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileName" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7181125477683370900" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="PrWs8" id="6eCuTcwOLGR" role="PzmwI">
      <ref role="PrY4T" node="6eCuTcwOczV" resolve="BuildLayout_PureNode" />
    </node>
    <node concept="PrWs8" id="4RsV8qJDnGw" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
  </node>
  <node concept="1TIwiD" id="6eCuTcwOX2$">
    <property role="TrG5h" value="BuildExternalLayoutDependency" />
    <property role="3GE5qa" value="Layout.External" />
    <property role="EcuMT" value="7181125477683417252" />
    <ref role="1TJDcQ" node="4RPz6WoY4Cz" resolve="BuildDependency" />
    <node concept="1TJgyj" id="6eCuTcwOX2B" role="1TKVEi">
      <property role="20kJfa" value="layout" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7181125477683417255" />
      <ref role="20lvS9" node="6eCuTcwObZ9" resolve="BuildExternalLayout" />
    </node>
    <node concept="1TJgyj" id="6eCuTcwOX2A" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="artifacts" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7181125477683417254" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="PrWs8" id="6eCuTcwOX2_" role="PzmwI">
      <ref role="PrY4T" node="6bGbH3Svq63" resolve="BuildLayout_PathElement" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQU" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/dependency.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="4RsV8qJBXHj">
    <property role="TrG5h" value="BuildLayout_ImportContent" />
    <property role="3GE5qa" value="Layout" />
    <property role="34LRSv" value="import files from" />
    <property role="EcuMT" value="5610619299013057363" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="4RsV8qJBXHl" role="1TKVEi">
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5610619299013057365" />
      <ref role="20lvS9" node="450ejGzh8b3" resolve="BuildLayout_Container" />
    </node>
    <node concept="1TJgyj" id="5STnHcdgZpq" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="selectors" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="6789562173791401562" />
      <ref role="20lvS9" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    </node>
    <node concept="PrWs8" id="4RsV8qJBXHk" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
    <node concept="PrWs8" id="4RsV8qJD1J_" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
  </node>
  <node concept="PlHQZ" id="4RsV8qJDnFi">
    <property role="TrG5h" value="BuildSource_SingleFile" />
    <property role="3GE5qa" value="SourceSet" />
    <property role="EcuMT" value="5610619299013425874" />
  </node>
  <node concept="1TIwiD" id="4RsV8qJGJpc">
    <property role="TrG5h" value="BuildSource_JavaExternalJarRef" />
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="EcuMT" value="5610619299014309452" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4RsV8qJGJpd" role="1TKVEi">
      <property role="20kJfa" value="jar" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5610619299014309453" />
      <ref role="20lvS9" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
  </node>
  <node concept="1TIwiD" id="4RsV8qJHgQB">
    <property role="TrG5h" value="BuildSource_JavaLibraryExternalJar" />
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="34LRSv" value="external jar" />
    <property role="EcuMT" value="5610619299014446503" />
    <ref role="1TJDcQ" node="3elU8iQ72g4" resolve="BuildSource_JavaCP" />
    <node concept="1TJgyj" id="4RsV8qJHgQC" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="extJar" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5610619299014446504" />
      <ref role="20lvS9" node="4RsV8qJGJpc" resolve="BuildSource_JavaExternalJarRef" />
    </node>
    <node concept="PrWs8" id="4RsV8qJHgQT" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
  </node>
  <node concept="PlHQZ" id="4RsV8qJH_Bn">
    <property role="TrG5h" value="BuildSource_SingleFolder" />
    <property role="3GE5qa" value="SourceSet" />
    <property role="EcuMT" value="5610619299014531543" />
  </node>
  <node concept="1TIwiD" id="4RsV8qJH_CZ">
    <property role="TrG5h" value="BuildSource_JavaExternalJarFolderRef" />
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="EcuMT" value="5610619299014531647" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4RsV8qJH_D0" role="1TKVEi">
      <property role="20kJfa" value="folder" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5610619299014531648" />
      <ref role="20lvS9" node="4RsV8qJH_Bn" resolve="BuildSource_SingleFolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="4RsV8qJH_FS">
    <property role="TrG5h" value="BuildSource_JavaLibraryExternalJarFolder" />
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="34LRSv" value="external jars" />
    <property role="EcuMT" value="5610619299014531832" />
    <ref role="1TJDcQ" node="3elU8iQ72g4" resolve="BuildSource_JavaCP" />
    <node concept="1TJgyi" id="1MkTaILUgwk" role="1TKVEl">
      <property role="IQ2nx" value="2059522355690539028" />
      <property role="TrG5h" value="includeRecursively" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="4RsV8qJH_FU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="extFolder" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5610619299014531834" />
      <ref role="20lvS9" node="4RsV8qJH_CZ" resolve="BuildSource_JavaExternalJarFolderRef" />
    </node>
    <node concept="PrWs8" id="4RsV8qJH_FT" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
  </node>
  <node concept="1TIwiD" id="NvWe6DpNB2">
    <property role="TrG5h" value="BuildSource_JavaOptions" />
    <property role="3GE5qa" value="Project.Java" />
    <property role="34LRSv" value="java options" />
    <property role="EcuMT" value="927724900262033858" />
    <ref role="1TJDcQ" node="6qcrfIJFdK8" resolve="BuildProjectPart" />
    <node concept="1TJgyj" id="NvWe6DpNB7" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resourceSelectors" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="927724900262033863" />
      <ref role="20lvS9" node="4zlO3QT8$mB" resolve="BuildFileSelector" />
    </node>
    <node concept="1TJgyi" id="NvWe6DpNB3" role="1TKVEl">
      <property role="TrG5h" value="optionsName" />
      <property role="IQ2nx" value="927724900262033859" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="NvWe6DpNB5" role="1TKVEl">
      <property role="TrG5h" value="generateDebugInfo" />
      <property role="IQ2nx" value="927724900262033861" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="NvWe6DpNB6" role="1TKVEl">
      <property role="TrG5h" value="copyResources" />
      <property role="IQ2nx" value="927724900262033862" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="NvWe6DrcJz" role="1TKVEl">
      <property role="TrG5h" value="heapSize" />
      <property role="IQ2nx" value="927724900262398947" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="NvWe6DrcJI" role="1TKVEl">
      <property role="TrG5h" value="noWarnings" />
      <property role="IQ2nx" value="927724900262398958" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="1Mjrj7j4qYl" role="1TKVEl">
      <property role="TrG5h" value="compiler" />
      <property role="IQ2nx" value="2059109515400425365" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Par5_L6wc4" role="1TKVEl">
      <property role="TrG5h" value="fork" />
      <property role="IQ2nx" value="4416461515995611908" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="64wWIxoRWZs" role="1TKVEl">
      <property role="TrG5h" value="javaLevel" />
      <property role="IQ2nx" value="6998860900671147996" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1hYW$Pu99cn" role="1TKVEl">
      <property role="TrG5h" value="compilerOptions" />
      <property role="IQ2nx" value="1476884141929960215" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQO" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/javaOptions.png" />
    </node>
    <node concept="1TJgyi" id="1FkcQH_$3_5" role="1TKVEl">
      <property role="IQ2nx" value="1933226676407253317" />
      <property role="TrG5h" value="generatorJvmOptions" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1s8OwvM5SHi">
    <property role="TrG5h" value="BuildSource_JavaModuleOptions" />
    <property role="3GE5qa" value="Project.Java" />
    <property role="34LRSv" value="apply compiler options" />
    <property role="EcuMT" value="1659807394254261074" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1s8OwvM52kF" role="1TKVEi">
      <property role="20kJfa" value="compileOptions" />
      <property role="IQ2ns" value="1659807394254038315" />
      <ref role="20lvS9" node="NvWe6DpNB2" resolve="BuildSource_JavaOptions" />
    </node>
  </node>
  <node concept="1TIwiD" id="1s8OwvM7w1H">
    <property role="TrG5h" value="BuildSource_JavaResources" />
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="34LRSv" value="resources" />
    <property role="EcuMT" value="1659807394254684269" />
    <ref role="1TJDcQ" node="4zlO3QTanjW" resolve="BuildSource_JavaSources" />
    <node concept="1TJgyj" id="1s8OwvM7w1K" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileset" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1659807394254684272" />
      <ref role="20lvS9" node="4zlO3QT8$m$" resolve="BuildInputFiles" />
    </node>
    <node concept="PrWs8" id="1s8OwvM7w3M" role="PzmwI">
      <ref role="PrY4T" node="3elU8iQ7YwF" resolve="BuildSourceSetContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7XQqoCTjpEM">
    <property role="TrG5h" value="BuildLayout_CustomCopy" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="EcuMT" value="9184644532456495794" />
    <ref role="1TJDcQ" node="7XQqoCTjpIh" resolve="BuildLayout_AbstractCopy" />
    <node concept="PrWs8" id="19QsrPuDlVw" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
    <node concept="1TJgyj" id="7XQqoCTjyOu" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="handlers" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="9184644532456533278" />
      <ref role="20lvS9" node="7XQqoCTjsKN" resolve="BuildLayout_CopyHandler" />
    </node>
  </node>
  <node concept="1TIwiD" id="7XQqoCTjpIh">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_AbstractCopy" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="EcuMT" value="9184644532456496017" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="4zlO3QT8NAU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileset" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5248329904287857082" />
      <ref role="20lvS9" node="4zlO3QT8mNF" resolve="BuildInputFileSet" />
    </node>
  </node>
  <node concept="1TIwiD" id="7XQqoCTjsKN">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_CopyHandler" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="EcuMT" value="9184644532456508467" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7UAfeVQUc4_" role="PzmwI">
      <ref role="PrY4T" node="7UAfeVQUc4$" resolve="BuildLayout_CopyParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="7XQqoCTkBp3">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_CopyFilter" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="EcuMT" value="9184644532456814147" />
    <ref role="1TJDcQ" node="7XQqoCTjsKN" resolve="BuildLayout_CopyHandler" />
  </node>
  <node concept="1TIwiD" id="7XQqoCTkBp5">
    <property role="TrG5h" value="BuildLayout_CopyFilterReplaceTokens" />
    <property role="3GE5qa" value="Layout.File.Handlers" />
    <property role="34LRSv" value="replace" />
    <property role="EcuMT" value="9184644532456814149" />
    <ref role="1TJDcQ" node="7XQqoCTkBp3" resolve="BuildLayout_CopyFilter" />
    <node concept="1TJgyi" id="7XQqoCTkBp7" role="1TKVEl">
      <property role="TrG5h" value="key" />
      <property role="IQ2nx" value="9184644532456814151" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="7XQqoCTkBp8" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="9184644532456814152" />
      <ref role="20lvS9" node="3NagsOfThPf" resolve="BuildString" />
    </node>
  </node>
  <node concept="Az7Fb" id="7usrAn05wtA">
    <property role="TrG5h" value="FileName" />
    <property role="FLfZY" value="[^\\/$!]*" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="3F6X1D" value="8618885170173708134" />
  </node>
  <node concept="PlHQZ" id="7XQqoCTkVIO">
    <property role="TrG5h" value="BuildStringContainer" />
    <property role="3GE5qa" value="Names" />
    <property role="EcuMT" value="9184644532456897460" />
  </node>
  <node concept="1TIwiD" id="7XQqoCTlIL8">
    <property role="TrG5h" value="BuildLayout_CopyFilterReplaceRegex" />
    <property role="3GE5qa" value="Layout.File.Handlers" />
    <property role="34LRSv" value="replace regex" />
    <property role="EcuMT" value="9184644532457106504" />
    <ref role="1TJDcQ" node="7XQqoCTkBp3" resolve="BuildLayout_CopyFilter" />
    <node concept="1TJgyj" id="7XQqoCTlILa" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="9184644532457106506" />
      <ref role="20lvS9" node="3NagsOfThPf" resolve="BuildString" />
    </node>
    <node concept="1TJgyi" id="7XQqoCTlIL9" role="1TKVEl">
      <property role="TrG5h" value="pattern" />
      <property role="IQ2nx" value="9184644532457106505" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7XQqoCTlILc" role="1TKVEl">
      <property role="TrG5h" value="flags" />
      <property role="IQ2nx" value="9184644532457106508" />
      <ref role="AX2Wp" node="7XQqoCTlIMP" resolve="AntRegexFlags" />
    </node>
  </node>
  <node concept="Az7Fb" id="7XQqoCTlIMP">
    <property role="TrG5h" value="AntRegexFlags" />
    <property role="FLfZY" value="[gims]+" />
    <property role="3GE5qa" value="Layout.File.Handlers" />
    <property role="3F6X1D" value="9184644532457106613" />
  </node>
  <node concept="1TIwiD" id="6CY5wCYZQEk">
    <property role="TrG5h" value="BuildLayout_EchoXml" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="xml file" />
    <property role="EcuMT" value="7655580649838832276" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="6CY5wCYZQEm" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileName" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7655580649838832278" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="1TJgyj" id="6CY5wCYZQER" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="element" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7655580649838832311" />
      <ref role="20lvS9" to="iuxj:5M4a$b5ikxH" resolve="XmlBaseElement" />
    </node>
    <node concept="PrWs8" id="6CY5wCYZQEu" role="PzmwI">
      <ref role="PrY4T" node="7XQqoCTkVIO" resolve="BuildStringContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="bgY2XVZqhE">
    <property role="TrG5h" value="BuildLayout_EchoProperties" />
    <property role="3GE5qa" value="Layout.File.Properties" />
    <property role="34LRSv" value="properties file" />
    <property role="EcuMT" value="202934866059043946" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="bgY2XVZqhG" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileName" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="202934866059043948" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="1TJgyj" id="bgY2XVZqhU" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="entries" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="202934866059043962" />
      <ref role="20lvS9" node="bgY2XVZqhR" resolve="BuildLayout_EchoPropertyEntry" />
    </node>
    <node concept="PrWs8" id="bgY2XVZqhF" role="PzmwI">
      <ref role="PrY4T" node="7XQqoCTkVIO" resolve="BuildStringContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="bgY2XVZqhR">
    <property role="TrG5h" value="BuildLayout_EchoPropertyEntry" />
    <property role="3GE5qa" value="Layout.File.Properties" />
    <property role="34LRSv" value="entry" />
    <property role="EcuMT" value="202934866059043959" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="bgY2XVZqhT" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="202934866059043961" />
      <ref role="20lvS9" node="3NagsOfThPf" resolve="BuildString" />
    </node>
    <node concept="1TJgyi" id="bgY2XVZqhS" role="1TKVEl">
      <property role="TrG5h" value="key" />
      <property role="IQ2nx" value="202934866059043960" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7s9W5cEkA83">
    <property role="TrG5h" value="BuildLayout_Tar" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="tar" />
    <property role="EcuMT" value="8577651205286814211" />
    <ref role="1TJDcQ" node="6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
    <node concept="1TJgyi" id="3Ftr4R6BHaf" role="1TKVEl">
      <property role="TrG5h" value="compression" />
      <property role="IQ2nx" value="1979010778009209128" />
      <ref role="AX2Wp" node="3Ftr4R6BFDY" resolve="BuildLayout_TarCompression" />
    </node>
    <node concept="PrWs8" id="7s9W5cEkA84" role="PzmwI">
      <ref role="PrY4T" node="4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
    </node>
    <node concept="PrWs8" id="7s9W5cEkA86" role="PzmwI">
      <ref role="PrY4T" node="6eCuTcwOczV" resolve="BuildLayout_PureNode" />
    </node>
    <node concept="1QGGSu" id="4Q8sAA5iJQT" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/archive.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="3D3G23Q8WAG">
    <property role="TrG5h" value="BuildLayout_CopyFilterFixCRLF" />
    <property role="3GE5qa" value="Layout.File.Handlers" />
    <property role="34LRSv" value="fix eol" />
    <property role="EcuMT" value="4198392933254416812" />
    <ref role="1TJDcQ" node="7XQqoCTkBp3" resolve="BuildLayout_CopyFilter" />
    <node concept="1TJgyi" id="3Ftr4R6BHah" role="1TKVEl">
      <property role="TrG5h" value="eol" />
      <property role="IQ2nx" value="4198392933254416822" />
      <ref role="AX2Wp" node="3Ftr4R6BFDR" resolve="BuildLayout_CopyFilterEolStyle" />
    </node>
    <node concept="1TJgyi" id="3D3G23Q9t_s" role="1TKVEl">
      <property role="TrG5h" value="removeEOF" />
      <property role="IQ2nx" value="4198392933254551900" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L3dtXewST0">
    <property role="R4oN_" value="customize file modes in archive" />
    <property role="TrG5h" value="BuildLayout_Filemode" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="filemode" />
    <property role="EcuMT" value="7801138212747054656" />
    <ref role="1TJDcQ" node="2xHpXR_cEa4" resolve="BuildLayout_TransparentContainer" />
    <node concept="1TJgyi" id="6L3dtXewST4" role="1TKVEl">
      <property role="TrG5h" value="filemode" />
      <property role="IQ2nx" value="7801138212747054660" />
      <ref role="AX2Wp" node="6L3dtXewST3" resolve="BuildLayout_UnixFilemode" />
    </node>
    <node concept="1TJgyi" id="6L3dtXewST5" role="1TKVEl">
      <property role="TrG5h" value="dirmode" />
      <property role="IQ2nx" value="7801138212747054661" />
      <ref role="AX2Wp" node="6L3dtXewST3" resolve="BuildLayout_UnixFilemode" />
    </node>
  </node>
  <node concept="1TIwiD" id="63lu3g6DRlj">
    <property role="TrG5h" value="BuildLayout_CopyFlattenMapper" />
    <property role="3GE5qa" value="Layout.File.Mappers" />
    <property role="34LRSv" value="flatten" />
    <property role="EcuMT" value="6977615362525721939" />
    <ref role="1TJDcQ" node="63lu3g6DRli" resolve="BuildLayout_CopyMapper" />
  </node>
  <node concept="Az7Fb" id="6L3dtXewST3">
    <property role="TrG5h" value="BuildLayout_UnixFilemode" />
    <property role="FLfZY" value="[0-7]{3}" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="3F6X1D" value="7801138212747054659" />
  </node>
  <node concept="1TIwiD" id="63lu3g6DRli">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_CopyMapper" />
    <property role="3GE5qa" value="Layout.File.Mappers" />
    <property role="EcuMT" value="6977615362525721938" />
    <ref role="1TJDcQ" node="7XQqoCTjsKN" resolve="BuildLayout_CopyHandler" />
  </node>
  <node concept="1TIwiD" id="6ZfgptGYA5P">
    <property role="TrG5h" value="BuildSource_JavaDependencyFileset" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="34LRSv" value="classpath" />
    <property role="EcuMT" value="8056730377013322101" />
    <ref role="1TJDcQ" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    <node concept="1TJgyj" id="6S1jmf0x7ox" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="classpath" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7926701909975791137" />
      <ref role="20lvS9" to="iuxj:5M4a$b5ikxH" resolve="XmlBaseElement" />
    </node>
  </node>
  <node concept="PlHQZ" id="6Iq8148fTg2">
    <property role="TrG5h" value="BuildSource_FilesetProjectPart" />
    <property role="3GE5qa" value="Project" />
    <property role="EcuMT" value="7753544965996647426" />
    <node concept="PrWs8" id="6Iq8148fTg3" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Iq8148fTg4">
    <property role="R4oN_" value="copy files of project element" />
    <property role="TrG5h" value="BuildLayout_FilesOf" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="files of" />
    <property role="EcuMT" value="7753544965996647428" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="6Iq8148fTg6" role="1TKVEi">
      <property role="20kJfa" value="element" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7753544965996647430" />
      <ref role="20lvS9" node="6Iq8148fTg2" resolve="BuildSource_FilesetProjectPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="3soCHYjmHja">
    <property role="TrG5h" value="BuildLayout_CopyGlobMapper" />
    <property role="3GE5qa" value="Layout.File.Mappers" />
    <property role="34LRSv" value="filename glob mapper" />
    <property role="EcuMT" value="3970102152660702410" />
    <ref role="1TJDcQ" node="63lu3g6DRli" resolve="BuildLayout_CopyMapper" />
    <node concept="1TJgyj" id="3soCHYjnnkd" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="to" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="3970102152660874509" />
      <ref role="20lvS9" node="3NagsOfThPf" resolve="BuildString" />
    </node>
    <node concept="1TJgyi" id="3soCHYjnnkc" role="1TKVEl">
      <property role="TrG5h" value="from" />
      <property role="IQ2nx" value="3970102152660874508" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3soCHYjnnMv">
    <property role="TrG5h" value="BuildLayout_CopyRegexMapper" />
    <property role="3GE5qa" value="Layout.File.Mappers" />
    <property role="34LRSv" value="filename regex mapper" />
    <property role="EcuMT" value="3970102152660876447" />
    <ref role="1TJDcQ" node="63lu3g6DRli" resolve="BuildLayout_CopyMapper" />
    <node concept="1TJgyi" id="3soCHYjnnMw" role="1TKVEl">
      <property role="TrG5h" value="pattern" />
      <property role="IQ2nx" value="3970102152660876448" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3soCHYjnnMx" role="1TKVEl">
      <property role="TrG5h" value="replace" />
      <property role="IQ2nx" value="3970102152660876449" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2oW$psGOu6E">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildVariableMacroInitValue" />
    <property role="3GE5qa" value="Macro" />
    <property role="EcuMT" value="2755237150521942442" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="2oW$psGOAa7">
    <property role="TrG5h" value="BuildVariableMacroInitWithString" />
    <property role="3GE5qa" value="Macro" />
    <property role="34LRSv" value="string" />
    <property role="EcuMT" value="2755237150521975431" />
    <ref role="1TJDcQ" node="2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
    <node concept="1TJgyj" id="2oW$psGOAad" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2755237150521975437" />
      <ref role="20lvS9" node="3NagsOfThPf" resolve="BuildString" />
    </node>
  </node>
  <node concept="1TIwiD" id="d_WKSiOGf$">
    <property role="TrG5h" value="BuildVariableMacroInitWithDate" />
    <property role="3GE5qa" value="Macro" />
    <property role="34LRSv" value="date" />
    <property role="EcuMT" value="244868996532454372" />
    <ref role="1TJDcQ" node="2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
    <node concept="1TJgyi" id="d_WKSiOGfK" role="1TKVEl">
      <property role="TrG5h" value="pattern" />
      <property role="IQ2nx" value="244868996532454384" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="d_WKSiP3Fn">
    <property role="TrG5h" value="BuildVariableMacroInitWithValueFromFile" />
    <property role="3GE5qa" value="Macro" />
    <property role="34LRSv" value="load property file" />
    <property role="EcuMT" value="244868996532550359" />
    <ref role="1TJDcQ" node="2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
    <node concept="1TJgyi" id="d_WKSiP3Fq" role="1TKVEl">
      <property role="TrG5h" value="unused" />
      <property role="IQ2nx" value="244868996532550362" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
      <node concept="asaX9" id="1zevWKaY0ZV" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="d_WKSiP3Fo" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileName" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="244868996532550360" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
  </node>
  <node concept="1TIwiD" id="7UAfeVQRE3b">
    <property role="TrG5h" value="BuildLayout_Comment" />
    <property role="3GE5qa" value="Layout" />
    <property role="34LRSv" value="#" />
    <property role="EcuMT" value="9126048691954557131" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyi" id="7UAfeVQSd8b" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <property role="IQ2nx" value="9126048691954700811" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="3W5q5oTL70F" role="PzmwI">
      <ref role="PrY4T" to="tpck:3W5q5oTL9mp" resolve="IGenericComment" />
    </node>
  </node>
  <node concept="1TIwiD" id="7UAfeVQUc3H">
    <property role="TrG5h" value="BuildLayout_File" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="file" />
    <property role="EcuMT" value="9126048691955220717" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="7UAfeVQUc4q" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="path" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="9126048691955220762" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="7UAfeVQUc4A" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="9126048691955220774" />
      <ref role="20lvS9" node="7UAfeVQUc4$" resolve="BuildLayout_CopyParameter" />
    </node>
    <node concept="PrWs8" id="7UAfeVQUc4r" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
    <node concept="1TJgyi" id="7UAfeVQUccF" role="1TKVEl">
      <property role="TrG5h" value="filemode" />
      <property role="IQ2nx" value="9126048691955221291" />
      <ref role="AX2Wp" node="6L3dtXewST3" resolve="BuildLayout_UnixFilemode" />
    </node>
  </node>
  <node concept="PlHQZ" id="7UAfeVQUc4$">
    <property role="TrG5h" value="BuildLayout_CopyParameter" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="EcuMT" value="9126048691955220772" />
  </node>
  <node concept="1TIwiD" id="2oE1c2blJFZ">
    <property role="TrG5h" value="BuildLayout_Files" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="34LRSv" value="files from" />
    <property role="EcuMT" value="2750015747481074431" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="2oE1c2blJG0" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="path" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2750015747481074432" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="1TJgyj" id="2oE1c2blJG1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="2750015747481074433" />
      <ref role="20lvS9" node="7UAfeVQUc4$" resolve="BuildLayout_CopyParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="62K_yvYRFsW">
    <property role="TrG5h" value="BuildLayout_War" />
    <property role="3GE5qa" value="Layout.Java" />
    <property role="34LRSv" value="war" />
    <property role="EcuMT" value="6967233722066057020" />
    <ref role="1TJDcQ" node="6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
  </node>
  <node concept="1TIwiD" id="j1Y_zp$ERu">
    <property role="TrG5h" value="BuildSource_JavaDependencyExternalJarInFolder" />
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="34LRSv" value="external jar in folder" />
    <property role="EcuMT" value="342830306171203038" />
    <ref role="1TJDcQ" node="2oUTXgLA9pR" resolve="BuildSource_JavaDependency" />
    <node concept="1TJgyj" id="j1Y_zp$M$1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="extFolder" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="342830306171234561" />
      <ref role="20lvS9" node="4RsV8qJH_CZ" resolve="BuildSource_JavaExternalJarFolderRef" />
    </node>
    <node concept="1TJgyi" id="j1Y_zp$M$0" role="1TKVEl">
      <property role="TrG5h" value="reexport" />
      <property role="IQ2nx" value="342830306171234560" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="j1Y_zp$NMG" role="1TKVEl">
      <property role="TrG5h" value="suffix" />
      <property role="IQ2nx" value="342830306171239596" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="j1Y_zp$ERv" role="PzmwI">
      <ref role="PrY4T" node="IFRVVI6zqz" resolve="BuildExternalDependency" />
    </node>
  </node>
  <node concept="1TIwiD" id="15teMbUWwWI">
    <property role="R4oN_" value="jar manifest file" />
    <property role="TrG5h" value="BuildLayout_JarManifest" />
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="34LRSv" value="manifest" />
    <property role="EcuMT" value="1251221292903960366" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="7ro1Zzt_n6j" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="8563603456895840659" />
      <ref role="20lvS9" node="7ro1Zzt_n6e" resolve="BuildLayout_JarManifest_Part" />
    </node>
    <node concept="1TJgyj" id="6uJjF_N$tZ1" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="name" />
      <property role="IQ2ns" value="7471276865245798337" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
  </node>
  <node concept="1TIwiD" id="15teMbUWwWK">
    <property role="R4oN_" value="jar manifest attribute" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Attribute" />
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="34LRSv" value="&lt;name&gt;: &lt;value&gt;" />
    <property role="EcuMT" value="1251221292903960368" />
    <ref role="1TJDcQ" node="7ro1Zzt_n6e" resolve="BuildLayout_JarManifest_Part" />
    <node concept="1TJgyj" id="15teMbUWwWL" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="name" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1251221292903960369" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="1TJgyj" id="15teMbUWwWM" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1251221292903960370" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="PrWs8" id="6uJjF_N_jnb" role="PzmwI">
      <ref role="PrY4T" node="7XQqoCTkVIO" resolve="BuildStringContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="15teMbUX7PV">
    <property role="R4oN_" value="jar manifest section" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Section" />
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="34LRSv" value="section" />
    <property role="EcuMT" value="1251221292904119675" />
    <ref role="1TJDcQ" node="7ro1Zzt_n6e" resolve="BuildLayout_JarManifest_Part" />
    <node concept="1TJgyj" id="15teMbUX7PW" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="1251221292904119676" />
      <ref role="20lvS9" node="15teMbUWwWK" resolve="BuildLayout_JarManifest_Attribute" />
    </node>
    <node concept="1TJgyj" id="5V$ev8kKcto" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="name" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6837653846148302680" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
  </node>
  <node concept="1TIwiD" id="2cX$JBzidtC">
    <property role="TrG5h" value="BuildSourceArchiveRelativePath" />
    <property role="3GE5qa" value="SourcePath" />
    <property role="34LRSv" value="*.zip!/" />
    <property role="EcuMT" value="2539347366864541544" />
    <property role="R4oN_" value="file inside an archive (zip, jar, war, tar)" />
    <ref role="1TJDcQ" node="6mpuAlRavrV" resolve="BuildRelativePath" />
    <node concept="1TJgyj" id="2cX$JBziBxc" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="archivePath" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2539347366864648268" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
    <node concept="t5JxF" id="7Kvxa_n4A0g" role="lGtFl">
      <property role="t5JxN" value="Mechanism to reference single file bundled inside an archive. Note, nested archives (i.e. .zip!/xx/.jar!/yy) are not yet supported." />
    </node>
  </node>
  <node concept="1TIwiD" id="7ro1Zzt_n6e">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Part" />
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="EcuMT" value="8563603456895840654" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="PlHQZ" id="5hFYqIiZwGZ">
    <property role="TrG5h" value="IWorkflowParticipant" />
    <property role="3GE5qa" value="Workflow" />
    <property role="EcuMT" value="6083230236994833215" />
    <node concept="asaX9" id="5dwDdJ8n96j" role="lGtFl">
      <property role="YLPcu" value="2017.3" />
      <property role="YLQ7P" value="Single use of the interface (BSARP) is history now. However, approach is worth attention as it might present proper way to supply build/workflow language extensions" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Wv1_bQ19g5">
    <property role="TrG5h" value="GeneratorInternal_IWorkfowParticipants" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="6854204111265764357" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Wv1_bQ19g6" role="1TKVEi">
      <property role="20kJfa" value="for" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6854204111265764358" />
      <ref role="20lvS9" to="8xvf:2pKPpytmA9N" resolve="BwfTask" />
    </node>
    <node concept="1TJgyj" id="5Wv1_bQ19g7" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="participant" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="6854204111265764359" />
      <ref role="20lvS9" node="5M62Y6Wnc78" resolve="GeneratorInternal_IWorkflowParticipantReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="5M62Y6Wnc78">
    <property role="TrG5h" value="GeneratorInternal_IWorkflowParticipantReference" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="6667029362524340680" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5M62Y6Wnc79" role="1TKVEi">
      <property role="20kJfa" value="participant" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6667029362524340681" />
      <ref role="20lvS9" node="5hFYqIiZwGZ" resolve="IWorkflowParticipant" />
    </node>
  </node>
  <node concept="1TIwiD" id="4j_Rh$Iv0Ko">
    <property role="TrG5h" value="GeneratorInternal_BuildSource_JavaModule" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="4964617264469642264" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4j_Rh$Iv0Kp" role="1TKVEi">
      <property role="20kJfa" value="targetModule" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4964617264469642265" />
      <ref role="20lvS9" node="6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
    </node>
    <node concept="1TJgyi" id="4j_Rh$Iv0Kq" role="1TKVEl">
      <property role="TrG5h" value="targetReexport" />
      <property role="IQ2nx" value="4964617264469642266" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4j_Rh$Iv0Pa">
    <property role="TrG5h" value="GeneratorInternal_BuildSource_SingleFile" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="4964617264469642570" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4j_Rh$Iv0Pb" role="1TKVEi">
      <property role="20kJfa" value="targetFile" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4964617264469642571" />
      <ref role="20lvS9" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
  </node>
  <node concept="1TIwiD" id="4j_Rh$Iv0TJ">
    <property role="TrG5h" value="GeneratorInternal_BuildSource_JavaLibrary" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="4964617264469642863" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4j_Rh$Iv0TK" role="1TKVEi">
      <property role="20kJfa" value="targetLibrary" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4964617264469642864" />
      <ref role="20lvS9" node="5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
    </node>
  </node>
  <node concept="1TIwiD" id="4j_Rh$Iv0R$">
    <property role="TrG5h" value="GeneratorInternal_BuildSource_JavaJar" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="4964617264469642724" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4j_Rh$Iv0R_" role="1TKVEi">
      <property role="20kJfa" value="targetJar" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="4964617264469642725" />
      <ref role="20lvS9" node="15RAxQWZPkq" resolve="BuildSource_JavaJar" />
    </node>
  </node>
  <node concept="PlHQZ" id="5bqm540K$G7">
    <property role="TrG5h" value="BuildLayout_InJarNode" />
    <property role="3GE5qa" value="Layout.Java" />
    <property role="EcuMT" value="5970181360961342215" />
  </node>
  <node concept="1TIwiD" id="19QsrPt4Eb2">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BuildLayout_CopyProcessor" />
    <property role="3GE5qa" value="Layout.File.Processor" />
    <property role="EcuMT" value="1330375798058820290" />
    <ref role="1TJDcQ" node="7XQqoCTjsKN" resolve="BuildLayout_CopyHandler" />
  </node>
  <node concept="1TIwiD" id="5wKGSSmC1pc">
    <property role="TrG5h" value="GeneratorInternal_ProjectDependency" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="6354776497066088012" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5wKGSSmC1uX" role="1TKVEl">
      <property role="TrG5h" value="path" />
      <property role="IQ2nx" value="6354776497066088381" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5wKGSSmQ2fj" role="1TKVEi">
      <property role="20kJfa" value="project" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="6354776497069761491" />
      <ref role="20lvS9" node="4RPz6WoY4Cj" resolve="BuildProject" />
    </node>
  </node>
  <node concept="1TIwiD" id="520hcA990bQ">
    <property role="TrG5h" value="GeneratorInternal_BuildSource_JarFolder" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="5800711952433152758" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="520hcA99ovC" role="1TKVEl">
      <property role="TrG5h" value="suffix" />
      <property role="IQ2nx" value="5800711952433252328" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="520hcA990bR" role="1TKVEi">
      <property role="20kJfa" value="targetFolder" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5800711952433152759" />
      <ref role="20lvS9" node="4RsV8qJH_Bn" resolve="BuildSource_SingleFolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="520hcA9a7n0">
    <property role="TrG5h" value="GeneratorInternal_BuildSource_Folder" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="5800711952433444288" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="520hcA9a7_6" role="1TKVEl">
      <property role="TrG5h" value="folderName" />
      <property role="IQ2nx" value="5800711952433445190" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="520hcA9bjHr">
    <property role="TrG5h" value="GeneratorInternal_Mapping" />
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="EcuMT" value="5800711952433757019" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="520hcA9bv2S" role="1TKVEl">
      <property role="TrG5h" value="key" />
      <property role="IQ2nx" value="5800711952433803448" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="520hcA9bv2U" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="5800711952433803450" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3ml7vNTSbC2">
    <property role="3GE5qa" value="GeneratorInternal" />
    <property role="TrG5h" value="GeneratorInternal_LibraryArtifacts" />
    <property role="EcuMT" value="3861025227901286914" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3ml7vNTSbOv" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attrs" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="3861025227901287711" />
      <ref role="20lvS9" to="iuxj:5M4a$b5iL2N" resolve="XmlBaseAttribute" />
    </node>
  </node>
  <node concept="1TIwiD" id="7i$e6qc6TPq">
    <property role="EcuMT" value="8404904817668627802" />
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacroInitWithFileContent" />
    <property role="34LRSv" value="load file" />
    <ref role="1TJDcQ" node="2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
    <node concept="1TJgyj" id="7i$e6qc7mrg" role="1TKVEi">
      <property role="IQ2ns" value="8404904817668744912" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fileName" />
      <property role="20lbJX" value="fLJekj4/1" />
      <ref role="20lvS9" node="6qcrfIJFdKY" resolve="BuildSourcePath" />
    </node>
  </node>
  <node concept="1TIwiD" id="7aRQeqpPz8i">
    <property role="EcuMT" value="8266314125996864018" />
    <property role="3GE5qa" value="SourceSet.Files" />
    <property role="TrG5h" value="BuildInputSingleFileAbsolutePath" />
    <property role="34LRSv" value="file by absolute path" />
    <ref role="1TJDcQ" node="4zlO3QT8mNF" resolve="BuildInputFileSet" />
    <node concept="PrWs8" id="7aRQeqpPz8l" role="PzmwI">
      <ref role="PrY4T" node="Y2EImGIi9D" resolve="BuildLayout_FileSet" />
    </node>
    <node concept="PrWs8" id="7aRQeqpPz8m" role="PzmwI">
      <ref role="PrY4T" node="4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
    </node>
    <node concept="1TJgyi" id="7aRQeqpPz8j" role="1TKVEl">
      <property role="IQ2nx" value="8266314125996864019" />
      <property role="TrG5h" value="path" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFDM">
    <property role="TrG5h" value="BuildSource_JavaContentFolderKind" />
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="3F6X1D" value="5248329904288265463" />
    <node concept="25R33" id="3Ftr4R6BFDO" role="25R1y">
      <property role="TrG5h" value="source" />
      <property role="3tVfz5" value="5248329904288265464" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFDP" role="25R1y">
      <property role="TrG5h" value="test" />
      <property role="3tVfz5" value="5248329904288265465" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFDQ" role="25R1y">
      <property role="TrG5h" value="excluded" />
      <property role="3tVfz5" value="5248329904288265466" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFDR">
    <property role="TrG5h" value="BuildLayout_CopyFilterEolStyle" />
    <property role="3GE5qa" value="Layout.File.Handlers" />
    <property role="3F6X1D" value="4198392933254416814" />
    <ref role="1H5jkz" node="3Ftr4R6BFDT" resolve="local" />
    <node concept="25R33" id="3Ftr4R6BFDT" role="25R1y">
      <property role="TrG5h" value="local" />
      <property role="1L1pqM" value="use local system line separator" />
      <property role="3tVfz5" value="4198392933254427813" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFDU" role="25R1y">
      <property role="TrG5h" value="asis" />
      <property role="1L1pqM" value="leave as is" />
      <property role="3tVfz5" value="4198392933254416815" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFDV" role="25R1y">
      <property role="TrG5h" value="cr" />
      <property role="1L1pqM" value="convert to a single CR" />
      <property role="3tVfz5" value="4198392933254416816" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFDW" role="25R1y">
      <property role="TrG5h" value="lf" />
      <property role="1L1pqM" value="convert to a single LF" />
      <property role="3tVfz5" value="4198392933254416817" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFDX" role="25R1y">
      <property role="TrG5h" value="crlf" />
      <property role="1L1pqM" value="convert to the pair CRLF" />
      <property role="3tVfz5" value="4198392933254416818" />
    </node>
  </node>
  <node concept="25R3W" id="3Ftr4R6BFDY">
    <property role="TrG5h" value="BuildLayout_TarCompression" />
    <property role="3GE5qa" value="Layout.File" />
    <property role="3F6X1D" value="1979010778009209124" />
    <ref role="1H5jkz" node="3Ftr4R6BFE0" resolve="none" />
    <node concept="25R33" id="3Ftr4R6BFE0" role="25R1y">
      <property role="TrG5h" value="none" />
      <property role="3tVfz5" value="1979010778009209125" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFE1" role="25R1y">
      <property role="TrG5h" value="gzip" />
      <property role="3tVfz5" value="1979010778009209126" />
    </node>
    <node concept="25R33" id="3Ftr4R6BFE2" role="25R1y">
      <property role="TrG5h" value="bzip2" />
      <property role="3tVfz5" value="1979010778009209127" />
    </node>
  </node>
  <node concept="1TIwiD" id="4SVbBfBw8M7">
    <property role="EcuMT" value="5637150433924385927" />
    <property role="TrG5h" value="BuildLayout_EchoText" />
    <property role="34LRSv" value="text file" />
    <property role="R4oN_" value="plain text file with the specified content" />
    <property role="3GE5qa" value="Layout.File.Text" />
    <ref role="1TJDcQ" node="6qcrfIJF4M5" resolve="BuildLayout_Node" />
    <node concept="1TJgyj" id="4SVbBfBw8M8" role="1TKVEi">
      <property role="IQ2ns" value="5637150433924385928" />
      <property role="20kJfa" value="fileName" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="IFRVVI5ZTn" resolve="BuildStringNotEmpty" />
    </node>
    <node concept="1TJgyj" id="4SVbBfBw8M9" role="1TKVEi">
      <property role="IQ2ns" value="5637150433924385929" />
      <property role="20kJfa" value="lines" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3NagsOfThPf" resolve="BuildString" />
    </node>
    <node concept="PrWs8" id="4SVbBfBw8Ma" role="PzmwI">
      <ref role="PrY4T" node="7XQqoCTkVIO" resolve="BuildStringContainer" />
    </node>
  </node>
</model>

