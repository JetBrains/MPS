<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42d04941-551b-420d-9485-a5f496e15594(jetbrains.mps.ide.build.tests)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="-1" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="-1" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="arit" ref="r:0d66e868-9778-4307-b6f9-4795c00f662f(jetbrains.mps.build.workflow.preset.general)" />
  </imports>
  <registry>
    <language id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow">
      <concept id="2769948622284546677" name="jetbrains.mps.build.workflow.structure.BwfSubTask" flags="ng" index="2VaFvH">
        <child id="2769948622284606050" name="statements" index="2VaTZU" />
      </concept>
      <concept id="2769948622284768359" name="jetbrains.mps.build.workflow.structure.BwfAntStatement" flags="ng" index="2Vbh7Z">
        <child id="2769948622284768360" name="element" index="2Vbh7K" />
      </concept>
      <concept id="3961775458390032824" name="jetbrains.mps.build.workflow.structure.BwfTaskPart" flags="ng" index="3bMsLL">
        <reference id="3961775458390032825" name="task" index="3bMsLK" />
        <child id="3961775458390032826" name="subTasks" index="3bMsLN" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
    </language>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469355" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModuleGroup" flags="ng" index="22LTRF">
        <reference id="4560297596904469356" name="group" index="22LTRG" />
      </concept>
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="4560297596904469362" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModule" flags="nn" index="22LTRM">
        <reference id="4560297596904469363" name="module" index="22LTRN" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options" flags="ng" index="24cAiW">
        <child id="6593674873639478221" name="haltonfailure" index="24c_eh" />
        <child id="6593674873635848987" name="requiredPlugins" index="24YFd7" />
        <child id="1688667350638517006" name="compressArgs" index="XX84c" />
        <child id="3609768169816292377" name="jvmArgs" index="1psgkv" />
      </concept>
      <concept id="6593674873635848984" name="jetbrains.mps.build.mps.tests.structure.RequiredPlugin" flags="ng" index="24YFd4">
        <reference id="6593674873635848985" name="plugin" index="24YFd5" />
      </concept>
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262398947" name="heapSize" index="2_GNG2" />
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
        <property id="6998860900671147996" name="javaLevel" index="TZNOO" />
        <property id="2059109515400425365" name="compiler" index="3fwGa$" />
        <property id="1933226676407253317" name="generatorJvmOptions" index="1Zh0CI" />
        <child id="927724900262033863" name="resourceSelectors" index="2_Ic$A" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
        <child id="2750015747481074433" name="parameters" index="2HvfZ1" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="2591537044435828007" name="jetbrains.mps.build.structure.BuildSource_CompilablePart" flags="ngI" index="Saw0h">
        <property id="7687809870062809395" name="withKotlin" index="ZpmtF" />
      </concept>
      <concept id="2591537044435828004" name="jetbrains.mps.build.structure.BuildLayout_CompileOutputOf" flags="ng" index="Saw0i">
        <reference id="2591537044435828006" name="module" index="Saw0g" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
      <concept id="7389400916848050074" name="jetbrains.mps.build.structure.BuildLayout_Jar" flags="ng" index="3981dx" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132281259" name="jetbrains.mps.build.structure.BuildCustomWorkflow" flags="ng" index="1y0Vig">
        <child id="4701820937132281260" name="parts" index="1y0Vin" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ngI" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904288051100" name="jetbrains.mps.build.structure.BuildFileIncludeSelector" flags="ng" index="3LWZYx">
        <property id="5248329904288051101" name="pattern" index="3LWZYw" />
      </concept>
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
    </language>
    <language id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner">
      <concept id="6593674873635848984" name="jetbrains.mps.build.mps.runner.structure.RequiredPlugin" flags="ng" index="24YFd5">
        <reference id="6593674873635848985" name="plugin" index="24YFd6" />
      </concept>
      <concept id="4173297143638950526" name="jetbrains.mps.build.mps.runner.structure.BuildSolutionRunnerAspect" flags="ng" index="_awnq">
        <property id="2265409456634484378" name="classSimpleName" index="3MWwXZ" />
        <reference id="6102524510011680401" name="solution" index="30Vec$" />
        <child id="3639941018579336157" name="requiredPlugin" index="5id3f" />
      </concept>
      <concept id="4173297143638832582" name="jetbrains.mps.build.mps.runner.structure.BuildSolutionRunnerPlugin" flags="ng" index="_l39y" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="6503355885715353788" name="bootstrap" index="2igJW4" />
      </concept>
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868064" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ManualPluginLayoutType" flags="ng" index="pUk6w" />
      <concept id="7862711839422606209" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorRef" flags="ng" index="t5LP3">
        <reference id="7862711839422606210" name="generator" index="t5LP0" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <property id="7918752904810477378" name="stripImplementation" index="2IHNyd" />
        <property id="3335207478148060173" name="customContent" index="3PtdQa" />
        <reference id="1265949165890536425" name="module" index="L2wRA" />
        <child id="4356762679305730677" name="jarLocations" index="3yL2VB" />
        <child id="3335207478148060176" name="sourceJar" index="3PtdQn" />
      </concept>
      <concept id="8971171305100238972" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyTargetLanguage" flags="ng" index="Rbm2T">
        <reference id="3189788309731922643" name="language" index="1E1Vl2" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="2928402740576877067" name="javaCode" index="3vZFNd" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="978600701690054692" name="jetbrains.mps.build.mps.structure.GeneratorInternal_String" flags="ng" index="1cIVw3">
        <property id="978600701690054695" name="path" index="1cIVw0" />
      </concept>
      <concept id="7655580649838764660" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml" flags="ng" index="1kK7hY">
        <reference id="7655580649838764661" name="module" index="1kK7hZ" />
        <child id="7477562766051177430" name="sourceDescriptorFile" index="2JVP1x" />
        <child id="8488591998064324395" name="classpathEntries" index="3E5mpp" />
        <child id="506537499308757750" name="sourcesJarLocation" index="3SGgvt" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9">
        <reference id="868963075225252684" name="sourceLanguage" index="hH5Ss" />
      </concept>
      <concept id="4356762679305675652" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml_CustomJarLocation" flags="ng" index="3yLZsm">
        <property id="4356762679305675654" name="packagedLocation" index="3yLZsk" />
        <child id="4356762679305675653" name="path" index="3yLZsn" />
      </concept>
      <concept id="1692280246134781712" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleSources" flags="ng" index="3$exzU">
        <reference id="1692280246134781713" name="module" index="3$exzV" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731981027" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime" flags="ng" index="1E0d5M">
        <reference id="3189788309731981028" name="solution" index="1E0d5P" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="7862711839422606216" name="managedGenerators" index="t5LPa" />
        <child id="3189788309731917348" name="runtime" index="1E1XAP" />
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="3189788309731922642" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyUseLanguage" flags="ng" index="1E1Vl3">
        <reference id="3189788309731922643" name="language" index="1E1Vl3" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="3335207478148059730" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJarContent" flags="ng" index="3PtdJl" />
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="30QAtkedoZJ">
    <property role="TrG5h" value="mpsExecution" />
    <property role="turDy" value="mpsExecution.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="30QAtkedoZN" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="30QAtkedoZK" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="30QAtkedoZL" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="30QAtkedoZM" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7XvkNSEzlIv" role="398pKh">
        <ref role="398BVh" node="30QAtkedoZN" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="30QAtkedoZP" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="30QAtkedoZQ" role="13uUGP">
        <ref role="398BVh" node="30QAtkedoZM" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="30QAtkedoZR" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7XvkNSEzl_X" role="2JcizS">
        <ref role="398BVh" node="30QAtkedoZN" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5sLbmmj1rXI" role="1l3spa">
      <ref role="1l3spb" node="53PdBITeUc0" resolve="mpsEditor" />
    </node>
    <node concept="22LTRH" id="30QAtkedoZS" role="1hWBAP">
      <property role="TrG5h" value="execution" />
      <node concept="24cAiW" id="5I1s5NvQ4SV" role="24cAkG">
        <node concept="NbPM2" id="1tJmw8EBzLa" role="XX84c">
          <node concept="3Mxwew" id="1tJmw8EBzL9" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="372aBDf0kSE" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSF" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="30QAtkedoZT" role="22LTRK">
        <ref role="22LTRN" node="30QAtkedp05" resolve="jetbrains.mps.execution.impl.tests" />
      </node>
    </node>
    <node concept="22LTRH" id="5qUkJhvr$5H" role="1hWBAP">
      <property role="TrG5h" value="debugger" />
      <node concept="24cAiW" id="5qUkJhvr$5I" role="24cAkG">
        <node concept="NbPM2" id="5qUkJhvr$5J" role="XX84c">
          <node concept="3Mxwew" id="5qUkJhvr$5K" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="5qUkJhvr$5L" role="1psgkv">
          <node concept="3Mxwew" id="5qUkJhvr$5M" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="5qUkJhvr$5O" role="22LTRK">
        <ref role="22LTRG" node="2LuGVbI_FmB" resolve="debugger-tests" />
      </node>
    </node>
    <node concept="2G$12M" id="30QAtkedoZU" role="3989C9">
      <property role="TrG5h" value="execution-tests" />
      <node concept="1E1JtA" id="30QAtkedoZV" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.execution.impl.tests.sandbox" />
        <property role="3LESm3" value="6cbb1052-4510-427f-926c-3476bfd7e801" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihO$" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihO_" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihOA" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihOB" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihOC" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihOD" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihOE" role="2Ry0An">
                    <property role="2Ry0Am" value="execution-test" />
                    <node concept="2Ry0Ak" id="EpEP7iihOF" role="2Ry0An">
                      <property role="2Ry0Am" value="tests.data" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7XvkNSEzBcd" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiJf7" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiJfc" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiJfh" role="2Ry0An">
                <property role="2Ry0Am" value="execution-test" />
                <node concept="2Ry0Ak" id="1VqvCtIiJfm" role="2Ry0An">
                  <property role="2Ry0Am" value="tests.data" />
                  <node concept="2Ry0Ak" id="1VqvCtIiJfr" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.execution.impl.tests.sandbox.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp02" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp03" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1E1Vl3" id="1yck7qsfYC9" role="3bR37C">
          <ref role="1E1Vl3" node="3vfBydmDZ3c" resolve="testLangWithRT" />
        </node>
        <node concept="1BupzO" id="73GUf$umQYN" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQYO" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQYH" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQYI" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQYJ" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQYK" role="2Ry0An">
                    <property role="2Ry0Am" value="execution-test" />
                    <node concept="2Ry0Ak" id="73GUf$umQYL" role="2Ry0An">
                      <property role="2Ry0Am" value="tests.data" />
                      <node concept="2Ry0Ak" id="73GUf$umQYM" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQYP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1v2renQf8qX" role="3bR37C">
          <node concept="3bR9La" id="1v2renQf8qY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xa9wY2vhbf" resolve="jetbrains.mps.baseLanguage.unitTest.execution" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3vfBydmDYXe" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testLangWithRT.runtime" />
        <property role="3LESm3" value="097970c1-2702-4857-9899-ec475bceb8d3" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="3vfBydmDYXh" role="3LF7KH">
          <node concept="2Ry0Ak" id="3vfBydmDYYq" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="3vfBydmDYYv" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="3vfBydmDYY$" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="3vfBydmDYYD" role="2Ry0An">
                  <property role="2Ry0Am" value="test.lang.with.RT" />
                  <node concept="2Ry0Ak" id="3vfBydmDZ1I" role="2Ry0An">
                    <property role="2Ry0Am" value="runtime" />
                    <node concept="2Ry0Ak" id="3vfBydmDZ1N" role="2Ry0An">
                      <property role="2Ry0Am" value="testLangWithRT.runtime.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3vfBydmDZ1P" role="3bR37C">
          <node concept="3bR9La" id="3vfBydmDZ1Q" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQYX" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQYY" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQYQ" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQYR" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQYS" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQYT" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umQYU" role="2Ry0An">
                      <property role="2Ry0Am" value="test.lang.with.RT" />
                      <node concept="2Ry0Ak" id="73GUf$umQYV" role="2Ry0An">
                        <property role="2Ry0Am" value="runtime" />
                        <node concept="2Ry0Ak" id="73GUf$umQYW" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQYZ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3vfBydmDZ3c" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testLangWithRT" />
        <property role="3LESm3" value="2e4f876d-c394-4f48-93c5-b5f4c0ec9b51" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="3vfBydmDZ3f" role="3LF7KH">
          <node concept="2Ry0Ak" id="3vfBydmDZ4y" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="3vfBydmDZck" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="3vfBydmDZcn" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="3vfBydmDZcs" role="2Ry0An">
                  <property role="2Ry0Am" value="test.lang.with.RT" />
                  <node concept="2Ry0Ak" id="3vfBydmDZcx" role="2Ry0An">
                    <property role="2Ry0Am" value="testLangWithRT.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="3vfBydmDZcz" role="1E1XAP">
          <ref role="1E0d5P" node="3vfBydmDYXe" resolve="testLangWithRT.runtime" />
        </node>
        <node concept="1SiIV0" id="3vfBydmDZc$" role="3bR37C">
          <node concept="1Busua" id="3vfBydmDZc_" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="3vfBydmDZcA" role="1TViLv">
          <property role="TrG5h" value="testLangWithRT#01" />
          <property role="3LESm3" value="3fa7dc75-a210-4325-b11f-519f7a07b8f7" />
          <property role="ZpmtF" value="true" />
          <node concept="1BupzO" id="73GUf$umQZg" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umQZh" role="1HemKq">
              <node concept="55IIr" id="73GUf$umQZ9" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umQZa" role="iGT6I">
                  <property role="2Ry0Am" value="testbench" />
                  <node concept="2Ry0Ak" id="73GUf$umQZb" role="2Ry0An">
                    <property role="2Ry0Am" value="testsolutions" />
                    <node concept="2Ry0Ak" id="73GUf$umQZc" role="2Ry0An">
                      <property role="2Ry0Am" value="testlangs" />
                      <node concept="2Ry0Ak" id="73GUf$umQZd" role="2Ry0An">
                        <property role="2Ry0Am" value="test.lang.with.RT" />
                        <node concept="2Ry0Ak" id="73GUf$umQZe" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umQZf" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umQZi" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQZ6" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQZ7" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQZ0" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQZ1" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQZ2" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQZ3" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umQZ4" role="2Ry0An">
                      <property role="2Ry0Am" value="test.lang.with.RT" />
                      <node concept="2Ry0Ak" id="73GUf$umQZ5" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQZ8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="30QAtkedp05" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.execution.impl.tests" />
        <property role="3LESm3" value="7b15492d-a198-43e2-91e3-4a7e9116ce2b" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiil0" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiil1" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiil2" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiil3" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiil4" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiil5" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiil6" role="2Ry0An">
                    <property role="2Ry0Am" value="execution-test" />
                    <node concept="2Ry0Ak" id="EpEP7iiil7" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0c" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0d" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0e" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0i" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xa9wY2vhbf" resolve="jetbrains.mps.baseLanguage.unitTest.execution" />
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0m" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0n" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xa9wY2vhaQ" resolve="jetbrains.mps.baseLanguage.execution.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0o" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0p" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qo" resolve="jetbrains.mps.execution.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0s" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0t" role="1SiIV1">
            <ref role="3bR37D" node="30QAtkedoZV" resolve="jetbrains.mps.execution.impl.tests.sandbox" />
          </node>
        </node>
        <node concept="1SiIV0" id="30QAtkedp0u" role="3bR37C">
          <node concept="3bR9La" id="30QAtkedp0v" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IZ_b08qDPI" role="3bR37C">
          <node concept="3bR9La" id="6IZ_b08qDPJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="2TUUQgSS1xV" role="3bR37C">
          <node concept="3bR9La" id="2TUUQgSS1xW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xa9wY2vhb7" resolve="jetbrains.mps.execution.configurations.implementation.plugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="5sLbmmj1rR1" role="3bR37C">
          <node concept="3bR9La" id="5sLbmmj1rR2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5sLbmmj1s2_" role="3bR37C">
          <node concept="3bR9La" id="5sLbmmj1s2A" role="1SiIV1">
            <ref role="3bR37D" node="53PdBITeVn8" resolve="jetbrains.mps.baseLanguage.test" />
          </node>
        </node>
        <node concept="55IIr" id="1VqvCtIiJgd" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiJge" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiJgf" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiJgg" role="2Ry0An">
                <property role="2Ry0Am" value="execution-test" />
                <node concept="2Ry0Ak" id="1VqvCtIiJhx" role="2Ry0An">
                  <property role="2Ry0Am" value="tests" />
                  <node concept="2Ry0Ak" id="1VqvCtIiJim" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.execution.impl.tests.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7DjC5ztkN9b" role="3bR37C">
          <node concept="3bR9La" id="7DjC5ztkN9c" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQZp" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQZq" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQZj" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQZk" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQZl" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQZm" role="2Ry0An">
                    <property role="2Ry0Am" value="execution-test" />
                    <node concept="2Ry0Ak" id="73GUf$umQZn" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="73GUf$umQZo" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQZr" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6maaEP198_L" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6maaEP198_M" role="1HemKq">
            <node concept="55IIr" id="6maaEP198_F" role="3LXTmr">
              <node concept="2Ry0Ak" id="6maaEP198_G" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="6maaEP198_H" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="6maaEP198_I" role="2Ry0An">
                    <property role="2Ry0Am" value="execution-test" />
                    <node concept="2Ry0Ak" id="6maaEP198_J" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="6maaEP198_K" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6maaEP198_N" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7rIOKY4dbPP" role="3bR37C">
          <node concept="3bR9La" id="7rIOKY4dbPQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:465rK6MmPl5" resolve="jetbrains.mps.baselanguage.unitTest.launcher" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="2LuGVbI_FmB" role="3989C9">
      <property role="TrG5h" value="debugger-tests" />
      <node concept="1E1JtA" id="2LuGVbI_Fnh" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.debugger.java.runtime.tests" />
        <property role="3LESm3" value="70b17f0c-ff72-43e8-9468-eda69efb2b71" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihS6" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihS7" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihS8" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihS9" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihSa" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iihSb" role="2Ry0An">
                  <property role="2Ry0Am" value="debugger-java" />
                  <node concept="2Ry0Ak" id="EpEP7iihSc" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="EpEP7iihSd" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.debugger.java.runtime.tests" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="2LuGVbI_Fni" role="3LF7KH">
          <node concept="2Ry0Ak" id="2LuGVbI_Fnl" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="2LuGVbI_Fnn" role="2Ry0An">
              <property role="2Ry0Am" value="debugger-java" />
              <node concept="2Ry0Ak" id="2LuGVbI_Fnp" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2LuGVbI_Fnr" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.debugger.java.runtime.tests" />
                  <node concept="2Ry0Ak" id="2LuGVbI_Fnt" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.debugger.java.runtime.tests.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnL" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnN" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnO" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4LDuh$Ud1Mj" resolve="jetbrains.mps.debugger.java.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnP" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4LDuh$Ud1Lx" resolve="jetbrains.mps.debugger.java.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnR" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnT" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnV" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="2LuGVbI_FnX" role="3bR37C">
          <node concept="3bR9La" id="2LuGVbI_FnY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$BrXxEdCW6" role="3bR37C">
          <node concept="3bR9La" id="6$BrXxEdCW7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1_0dgH4weFJ" role="3bR37C">
          <node concept="3bR9La" id="1_0dgH4weFK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3405ypXZilV" resolve="JDK-tools" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQZE" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQZF" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQZ$" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQZ_" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umQZA" role="2Ry0An">
                  <property role="2Ry0Am" value="debugger-java" />
                  <node concept="2Ry0Ak" id="73GUf$umQZB" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="73GUf$umQZC" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.debugger.java.runtime.tests" />
                      <node concept="2Ry0Ak" id="73GUf$umQZD" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQZG" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="30QAtkedp0x" role="auvoZ">
      <node concept="2Ry0Ak" id="30QAtkedp0y" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="30QAtkedp0z" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="30QAtkedp0$" role="1l3spN">
      <node concept="L2wRC" id="30QAtkedp0_" role="39821P">
        <ref role="L2wRA" node="30QAtkedp05" resolve="jetbrains.mps.execution.impl.tests" />
      </node>
      <node concept="L2wRC" id="30QAtkedp0A" role="39821P">
        <ref role="L2wRA" node="30QAtkedoZV" resolve="jetbrains.mps.execution.impl.tests.sandbox" />
      </node>
      <node concept="L2wRC" id="2LuGVbI_FyD" role="39821P">
        <ref role="L2wRA" node="2LuGVbI_Fnh" resolve="jetbrains.mps.debugger.java.runtime.tests" />
      </node>
      <node concept="L2wRC" id="_jn24S31sT" role="39821P">
        <ref role="L2wRA" node="3vfBydmDZ3c" resolve="testLangWithRT" />
      </node>
      <node concept="L2wRC" id="_jn24S31sZ" role="39821P">
        <ref role="L2wRA" node="3vfBydmDYXe" resolve="testLangWithRT.runtime" />
      </node>
    </node>
    <node concept="10PD9b" id="30QAtkedp0B" role="10PD9s" />
    <node concept="3b7kt6" id="30QAtkedp0C" role="10PD9s" />
    <node concept="1gjT0q" id="30QAtkedp0D" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHPcs" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPct" role="398pKh">
        <ref role="398BVh" node="30QAtkedoZN" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPcu" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPcv" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPcw" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="53PdBITeUc0">
    <property role="TrG5h" value="mpsEditor" />
    <property role="turDy" value="mpsEditor.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="53PdBITeUc4" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="53PdBITeUc1" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="53PdBITeUc2" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="53PdBITfnIA" role="3989C9">
      <property role="TrG5h" value="editor-test-languages" />
      <node concept="1E1JtD" id="53PdBITf007" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="737ed1ff-fa63-4ebc-a834-435499b23c64" />
        <property role="TrG5h" value="jetbrains.mps.lang.actions.testLanguage" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiicR" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiicS" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiicT" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiicU" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiicV" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiicW" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiicX" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iiicY" role="2Ry0An">
                      <property role="2Ry0Am" value="lang.actions.testLang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7XvkNSEzBFc" role="3LF7KH">
          <node concept="2Ry0Ak" id="7XvkNSEzBFi" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiaTM" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiaWJ" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="1VqvCtIiaWL" role="2Ry0An">
                  <property role="2Ry0Am" value="lang.actions.testLang" />
                  <node concept="2Ry0Ak" id="1VqvCtIiaWM" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.actions.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf08o" role="3bR37C">
          <node concept="3bR9La" id="53PdBITf08p" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="tjOLefcEyv" role="3bR37C">
          <node concept="3bR9La" id="tjOLefcEyw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRiq" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRir" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRik" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRil" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRim" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRin" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRio" role="2Ry0An">
                      <property role="2Ry0Am" value="lang.actions.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRip" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRis" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="53PdBITf4ee" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="df8799e7-254a-406f-bd67-f4cc27337152" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.tableTests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihGm" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihGn" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihGo" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihGp" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihGq" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihGr" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihGs" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihGt" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.tableTests.testLang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7XvkNSEzBGx" role="3LF7KH">
          <node concept="2Ry0Ak" id="7XvkNSEzBGD" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIib4H" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIib7a" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="1VqvCtIib7e" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.tableTests.testLang" />
                  <node concept="2Ry0Ak" id="1VqvCtIib7f" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.tableTests.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf4ek" role="3bR37C">
          <node concept="3bR9La" id="53PdBITf4el" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf4rT" role="3bR37C">
          <node concept="3bR9La" id="53PdBITf4rU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf4rV" role="3bR37C">
          <node concept="3bR9La" id="53PdBITf4rW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf4rX" role="3bR37C">
          <node concept="3bR9La" id="53PdBITf4rY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L5j" resolve="jetbrains.mps.lang.editor.table.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf4rZ" role="3bR37C">
          <node concept="1Busua" id="53PdBITf4s0" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITf4s1" role="3bR37C">
          <node concept="1Busua" id="53PdBITf4s2" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRiz" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRi$" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRit" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRiu" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRiv" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRiw" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRix" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.tableTests.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRiy" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRi_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4F_fjXJTfNV" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="b5734616-c4b0-4639-9c6a-f3a1cf5dc4db" />
        <property role="TrG5h" value="testDefaultEditor" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiidX" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiidY" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiidZ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiie0" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiie1" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiie2" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iiie3" role="2Ry0An">
                    <property role="2Ry0Am" value="testDefaultEditor" />
                    <node concept="2Ry0Ak" id="EpEP7iiie4" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iiie5" role="2Ry0An">
                        <property role="2Ry0Am" value="testDefaultEditor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7XvkNSEzBJu" role="3LF7KH">
          <node concept="2Ry0Ak" id="7XvkNSEzBJz" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7XvkNSEzBJ$" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7XvkNSEzBJ_" role="2Ry0An">
                <property role="2Ry0Am" value="testDefaultEditor" />
                <node concept="2Ry0Ak" id="4PxtqloH5xG" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4PxtqloH5xI" role="2Ry0An">
                    <property role="2Ry0Am" value="testDefaultEditor" />
                    <node concept="2Ry0Ak" id="4PxtqloH5xK" role="2Ry0An">
                      <property role="2Ry0Am" value="testDefaultEditor.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4F_fjXJTggG" role="3bR37C">
          <node concept="3bR9La" id="4F_fjXJTggH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4F_fjXJTggI" role="3bR37C">
          <node concept="3bR9La" id="4F_fjXJTggJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5F0z2onGSQg" role="3bR37C">
          <node concept="3bR9La" id="5F0z2onGSQh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRiH" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRiI" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRiA" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRiB" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRiC" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRiD" role="2Ry0An">
                    <property role="2Ry0Am" value="testDefaultEditor" />
                    <node concept="2Ry0Ak" id="73GUf$umRiE" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRiF" role="2Ry0An">
                        <property role="2Ry0Am" value="testDefaultEditor" />
                        <node concept="2Ry0Ak" id="73GUf$umRiG" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRiJ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1NaNvmffph4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="3LESm3" value="d8e56c33-e308-4c18-be6a-751cd5d3c5ce" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.testDefaultEditor.languageForDeletedConcepts" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihEL" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihEM" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihEN" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihEO" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihEP" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihEQ" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihER" role="2Ry0An">
                    <property role="2Ry0Am" value="testDefaultEditor" />
                    <node concept="2Ry0Ak" id="EpEP7iihES" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihET" role="2Ry0An">
                        <property role="2Ry0Am" value="editor.languageForDeletedConcepts" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="1NaNvmffph5" role="3LF7KH">
          <node concept="2Ry0Ak" id="1NaNvmffph6" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1NaNvmffph7" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="1NaNvmffph8" role="2Ry0An">
                <property role="2Ry0Am" value="testDefaultEditor" />
                <node concept="2Ry0Ak" id="1NaNvmffph9" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="1NaNvmffpha" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.languageForDeletedConcepts" />
                    <node concept="2Ry0Ak" id="1NaNvmffpqH" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.testDefaultEditor.languageForDeletedConcepts.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRiR" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRiS" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRiK" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRiL" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRiM" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRiN" role="2Ry0An">
                    <property role="2Ry0Am" value="testDefaultEditor" />
                    <node concept="2Ry0Ak" id="73GUf$umRiO" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRiP" role="2Ry0An">
                        <property role="2Ry0Am" value="editor.languageForDeletedConcepts" />
                        <node concept="2Ry0Ak" id="73GUf$umRiQ" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRiT" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2tTgVY$TuKU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testMoveElements" />
        <property role="3LESm3" value="e228eea1-07ef-499c-8826-9c47a7e369db" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihQ8" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihQ9" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihQa" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihQb" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihQc" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihQd" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihQe" role="2Ry0An">
                    <property role="2Ry0Am" value="testMoveElements" />
                    <node concept="2Ry0Ak" id="EpEP7iihQf" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihQg" role="2Ry0An">
                        <property role="2Ry0Am" value="testMoveElements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="2tTgVY$TuO4" role="3LF7KH">
          <node concept="2Ry0Ak" id="2tTgVY$TuO7" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2tTgVY$TuO9" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="2tTgVY$TuQt" role="2Ry0An">
                <property role="2Ry0Am" value="testMoveElements" />
                <node concept="2Ry0Ak" id="2tTgVY$TuV3" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2tTgVY$TuXn" role="2Ry0An">
                    <property role="2Ry0Am" value="testMoveElements" />
                    <node concept="2Ry0Ak" id="2tTgVY$TuZF" role="2Ry0An">
                      <property role="2Ry0Am" value="testMoveElements.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2tTgVY$Tv4h" role="3bR37C">
          <node concept="1Busua" id="2tTgVY$Tv4i" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRj1" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRj2" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRiU" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRiV" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRiW" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRiX" role="2Ry0An">
                    <property role="2Ry0Am" value="testMoveElements" />
                    <node concept="2Ry0Ak" id="73GUf$umRiY" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRiZ" role="2Ry0An">
                        <property role="2Ry0Am" value="testMoveElements" />
                        <node concept="2Ry0Ak" id="73GUf$umRj0" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRj3" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="374E0BAhSlA" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testSpaceCompletion" />
        <property role="3LESm3" value="4dd3c558-f0fc-4807-bade-5d6bcad6b3f1" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihXU" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihXV" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihXW" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihXX" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihXY" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihXZ" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihY0" role="2Ry0An">
                    <property role="2Ry0Am" value="testSpaceCompletion" />
                    <node concept="2Ry0Ak" id="EpEP7iihY1" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihY2" role="2Ry0An">
                        <property role="2Ry0Am" value="testSpaceCompletion" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="374E0BAhSlD" role="3LF7KH">
          <node concept="2Ry0Ak" id="374E0BAhSwt" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="374E0BAhSAI" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="374E0BAhSLU" role="2Ry0An">
                <property role="2Ry0Am" value="testSpaceCompletion" />
                <node concept="2Ry0Ak" id="374E0BAhSP5" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="374E0BAhSPa" role="2Ry0An">
                    <property role="2Ry0Am" value="testSpaceCompletion" />
                    <node concept="2Ry0Ak" id="374E0BAhSPf" role="2Ry0An">
                      <property role="2Ry0Am" value="testSpaceCompletion.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6H_1xKXj0bw" role="3bR37C">
          <node concept="1Busua" id="6H_1xKXj0bx" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRjb" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRjc" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRj4" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRj5" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRj6" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRj7" role="2Ry0An">
                    <property role="2Ry0Am" value="testSpaceCompletion" />
                    <node concept="2Ry0Ak" id="73GUf$umRj8" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRj9" role="2Ry0An">
                        <property role="2Ry0Am" value="testSpaceCompletion" />
                        <node concept="2Ry0Ak" id="73GUf$umRja" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRjd" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="33Dctpd0sbL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.styleTests" />
        <property role="3LESm3" value="a936c42c-cb2c-4d64-a1dc-12986579a998" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii75" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii76" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii77" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii78" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii79" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii7a" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iii7b" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iii7c" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.style.testLang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="33Dctpd0sbT" role="3LF7KH">
          <node concept="2Ry0Ak" id="33Dctpd0sj1" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="33Dctpd0sm0" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="33Dctpd0soZ" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="33Dctpd0srY" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.style.testLang" />
                  <node concept="2Ry0Ak" id="33Dctpd0sxR" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.styleTests.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="33Dctpd0s$N" role="3bR37C">
          <node concept="3bR9La" id="33Dctpd0s$O" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="6nyMVbUGy6I" role="3bR37C">
          <node concept="3bR9La" id="6nyMVbUGy6J" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRjk" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRjl" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRje" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRjf" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRjg" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRjh" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRji" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.style.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRjj" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRjm" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4BLpc15eBPf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.multiple.testLanguage" />
        <property role="3LESm3" value="7a80051c-66e9-4bfc-9698-b12adfed3d9f" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiic2" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiic3" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiic4" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiic5" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiic6" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiic7" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiic8" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iiic9" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.mult.testLang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4BLpc15eBPi" role="3LF7KH">
          <node concept="2Ry0Ak" id="4BLpc15eEgq" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIibgO" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIibgX" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="1VqvCtIibh8" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.mult.testLang" />
                  <node concept="2Ry0Ak" id="1VqvCtIibhD" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.multiple.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRjt" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRju" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRjn" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRjo" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRjp" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRjq" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRjr" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.mult.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRjs" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRjv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1_MaibiuEG6" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.multiple.extension.testLanguage" />
        <property role="3LESm3" value="2a136e2a-e48f-4b7a-bcbc-7b2a11f3bbeb" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii61" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii62" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii63" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii64" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii65" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii66" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iii67" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iii68" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.mult.ext.testLang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1_MaibiuF4x" role="3bR37C">
          <node concept="1Busua" id="1_MaibiuF4y" role="1SiIV1">
            <ref role="1Busuk" node="4BLpc15eBPf" resolve="jetbrains.mps.lang.editor.multiple.testLanguage" />
          </node>
        </node>
        <node concept="55IIr" id="1VqvCtIiIcT" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiIcU" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiIcV" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiIcW" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="1VqvCtIiIg$" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.mult.ext.testLang" />
                  <node concept="2Ry0Ak" id="1VqvCtIiIk5" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.multiple.extension.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRjA" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRjB" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRjw" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRjx" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRjy" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRjz" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRj$" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.mult.ext.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRj_" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRjC" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6r68uXoBw8t" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.editorTest" />
        <property role="3LESm3" value="81f0abb8-d71e-4d13-a0c1-d2291fbb28b7" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii4f" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii4g" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii4h" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii4i" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii4j" role="iGT6I">
                <property role="2Ry0Am" value="languages.test" />
                <node concept="2Ry0Ak" id="EpEP7iii4k" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="EpEP7iii4l" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.editor.editorTest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6r68uXoBw8w" role="3LF7KH">
          <node concept="2Ry0Ak" id="6r68uXoBwcR" role="iGT6I">
            <property role="2Ry0Am" value="languages.test" />
            <node concept="2Ry0Ak" id="6r68uXoBwek" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="6r68uXoBwh9" role="2Ry0An">
                <property role="2Ry0Am" value="lang.editor.editorTest" />
                <node concept="2Ry0Ak" id="6r68uXoBwjY" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.editorTest.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwlo" role="3bR37C">
          <node concept="3bR9La" id="6r68uXoBwlp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L6C" resolve="jetbrains.mps.lang.generator" />
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwlq" role="3bR37C">
          <node concept="3bR9La" id="6r68uXoBwlr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwls" role="3bR37C">
          <node concept="3bR9La" id="6r68uXoBwlt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwlu" role="3bR37C">
          <node concept="3bR9La" id="6r68uXoBwlv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU0H" resolve="jetbrains.mps.lang.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwlw" role="3bR37C">
          <node concept="1Busua" id="6r68uXoBwlx" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwly" role="3bR37C">
          <node concept="1Busua" id="6r68uXoBwlz" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1uAcxHx9_DR" role="3bR37C">
          <node concept="3bR9La" id="1uAcxHx9_DS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1uAcxHx9_DT" role="3bR37C">
          <node concept="3bR9La" id="1uAcxHx9_DU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7PPgd8Rz7TM" role="3bR37C">
          <node concept="3bR9La" id="7PPgd8Rz7TN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7PPgd8Rz7TO" role="3bR37C">
          <node concept="3bR9La" id="7PPgd8Rz7TP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1d41uYMTVPB" resolve="jetbrains.mps.lang.scopes.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRjI" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRjJ" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRjD" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRjE" role="iGT6I">
                <property role="2Ry0Am" value="languages.test" />
                <node concept="2Ry0Ak" id="73GUf$umRjF" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umRjG" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.editor.editorTest" />
                    <node concept="2Ry0Ak" id="73GUf$umRjH" role="2Ry0An">
                      <property role="2Ry0Am" value="languageModels" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRjK" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7F19Uz$enCc" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.editorTest.extension" />
        <property role="3LESm3" value="e7808658-592b-442e-9770-511bd6bd751d" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="7F19Uz$enCf" role="3LF7KH">
          <node concept="2Ry0Ak" id="7F19Uz$eopy" role="iGT6I">
            <property role="2Ry0Am" value="languages.test" />
            <node concept="2Ry0Ak" id="7F19Uz$eovJ" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="7F19Uz$eo$q" role="2Ry0An">
                <property role="2Ry0Am" value="lang.editor.editorTest.extension" />
                <node concept="2Ry0Ak" id="7F19Uz$eoBz" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.editorTest.extension.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7F19Uz$eo5U" role="3bR31x">
          <node concept="3LXTmp" id="7F19Uz$eo5V" role="3rtmxm">
            <node concept="3qWCbU" id="7F19Uz$eo5W" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
            <node concept="55IIr" id="45waoFpSXjo" role="3LXTmr">
              <node concept="2Ry0Ak" id="45waoFpSXjp" role="iGT6I">
                <property role="2Ry0Am" value="languages.test" />
                <node concept="2Ry0Ak" id="45waoFpSXjq" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="45waoFpSXjr" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.editor.editorTest.extension" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7F19Uz$eoE6" role="3bR37C">
          <node concept="1Busua" id="7F19Uz$eoE7" role="1SiIV1">
            <ref role="1Busuk" node="6r68uXoBw8t" resolve="jetbrains.mps.lang.editor.editorTest" />
          </node>
        </node>
        <node concept="1yeLz9" id="7F19Uz$eoE8" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.editor.editorTest.extension#01" />
          <property role="3LESm3" value="5d963477-b6c5-4147-8438-e66e96562f97" />
          <property role="ZpmtF" value="true" />
          <node concept="1BupzO" id="73GUf$umRjZ" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umRk0" role="1HemKq">
              <node concept="55IIr" id="73GUf$umRjT" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umRjU" role="iGT6I">
                  <property role="2Ry0Am" value="languages.test" />
                  <node concept="2Ry0Ak" id="73GUf$umRjV" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="73GUf$umRjW" role="2Ry0An">
                      <property role="2Ry0Am" value="lang.editor.editorTest.extension" />
                      <node concept="2Ry0Ak" id="73GUf$umRjX" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="73GUf$umRjY" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umRk1" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRjQ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRjR" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRjL" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRjM" role="iGT6I">
                <property role="2Ry0Am" value="languages.test" />
                <node concept="2Ry0Ak" id="73GUf$umRjN" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umRjO" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.editor.editorTest.extension" />
                    <node concept="2Ry0Ak" id="73GUf$umRjP" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRjS" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="5WcxkkLo$Vc" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.formsTests" />
        <property role="3LESm3" value="afb9a5fd-bc5d-4169-a225-42d8823d623a" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="5WcxkkLo$Uv" role="3LF7KH">
          <node concept="2Ry0Ak" id="5WcxkkLo$UF" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5WcxkkLo$UK" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5WcxkkLo$VF" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="5WcxkkLo$VG" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.formsTests.testLang" />
                  <node concept="2Ry0Ak" id="5WcxkkLo$VL" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.formsTests.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5WcxkkLo$Wz" role="3bR37C">
          <node concept="3bR9La" id="5WcxkkLo$W$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6H0eDxPCdaf" resolve="jetbrains.mps.lang.editor.forms" />
          </node>
        </node>
        <node concept="1SiIV0" id="5WcxkkLo$W_" role="3bR37C">
          <node concept="3bR9La" id="5WcxkkLo$WA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5WcxkkLo$WB" role="3bR37C">
          <node concept="3bR9La" id="5WcxkkLo$WC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6H0eDxPCdk4" resolve="jetbrains.mps.lang.editor.forms.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRk8" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRk9" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRk2" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRk3" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRk4" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRk5" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRk6" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.formsTests.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRk7" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRka" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="53PdBITeUc3" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7XvkNSEziAW" role="398pKh">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="5JEVmB_r8c4" role="1l3spd">
      <property role="TrG5h" value="artifacts.mps" />
      <node concept="398BVA" id="5JEVmB_r8c6" role="398pKh">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="53PdBITeUc6" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="53PdBITeUc7" role="13uUGP">
        <ref role="398BVh" node="53PdBITeUc3" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="Wd$cIj7mXw" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5D1dJ7xWer5" resolve="mpsCore" />
      <node concept="398BVA" id="6caHyB43O_5" role="2JcizS">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
        <node concept="2Ry0Ak" id="4LdE6kxtTYs" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="Wd$cIj91F3" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6S1jmf0xDFC" resolve="mpsBootstrapCore" />
      <node concept="398BVA" id="6caHyB43OC8" role="2JcizS">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6xueyV$90fE" role="1l3spa">
      <ref role="1l3spb" to="ffeo:2eDSGe9d1ot" resolve="mpsWorkbench" />
      <node concept="398BVA" id="6xueyV$90fF" role="2JcizS">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="Wd$cIjcwMq" role="1l3spa">
      <ref role="1l3spb" to="ffeo:ymnOULAEsd" resolve="mpsTesting" />
      <node concept="398BVA" id="6caHyB43OF9" role="2JcizS">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
        <node concept="2Ry0Ak" id="4oxPaAQvvMJ" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5r4$rjzsv1c" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3E9C6pCXzPk" resolve="mpsConsolePlugin" />
      <node concept="398BVA" id="5r4$rjzuia9" role="2JcizS">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
        <node concept="2Ry0Ak" id="5r4$rjzuiad" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="53PdBITeUc9" role="1hWBAP">
      <property role="TrG5h" value="editor" />
      <node concept="24cAiW" id="5I1s5NvQ4SW" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSG" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSH" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m --add-opens=java.desktop/sun.awt.X11=ALL-UNNAMED" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="53PdBITeVy$" role="22LTRK">
        <ref role="22LTRG" node="53PdBITeUcb" resolve="editor-tests" />
      </node>
    </node>
    <node concept="2G$12M" id="53PdBITeUcb" role="3989C9">
      <property role="TrG5h" value="editor-tests" />
      <node concept="1E1JtA" id="53PdBITeUcc" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.table.tests" />
        <property role="3LESm3" value="69de002c-bbba-40be-be5b-f3a6e61ea828" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihTz" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihT$" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihT_" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihTA" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihTB" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihTC" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihTD" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.table.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeV5b" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeV5c" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5wa1y8teykK" role="3bR37C">
          <node concept="3bR9La" id="5wa1y8teykL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="4vq9HVwW83C" role="3bR37C">
          <node concept="3bR9La" id="4vq9HVwW83D" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="55IIr" id="1VqvCtIiIng" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiInh" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiIni" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiIEH" role="2Ry0An">
                <property role="2Ry0Am" value="editor.table.test" />
                <node concept="2Ry0Ak" id="1VqvCtIiIEM" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.table.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRkg" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRkh" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkb" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRkc" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRkd" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRke" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.table.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRkf" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRki" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="53PdBITeV7g" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.actions.test" />
        <property role="3LESm3" value="6ed0339f-b777-4ada-9cf7-73354b12f191" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiih_" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiihA" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiihB" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiihC" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiihD" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiihE" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiihF" role="2Ry0An">
                    <property role="2Ry0Am" value="actions.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7XvkNSEzBYD" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiIMU" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiIMZ" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiIN4" role="2Ry0An">
                <property role="2Ry0Am" value="actions.test" />
                <node concept="2Ry0Ak" id="1VqvCtIiIN9" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.actions.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeV7r" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeV7s" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVkc" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVkd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5wa1y8teywy" role="3bR37C">
          <node concept="3bR9La" id="5wa1y8teywz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRko" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRkp" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkj" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRkk" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRkl" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRkm" role="2Ry0An">
                    <property role="2Ry0Am" value="actions.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRkn" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRkq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5rrkjWjs5vA" role="3bR37C">
          <node concept="3bR9La" id="5rrkjWjs5vB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="53PdBITeVn8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.test" />
        <property role="3LESm3" value="9c8b4b95-5d89-4201-ad78-0b2db3a22768" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihI7" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihI8" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihI9" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihIa" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihIb" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihIc" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihId" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7XvkNSEzC8F" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiITq" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiIYn" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiJ3k" role="2Ry0An">
                <property role="2Ry0Am" value="bl.test" />
                <node concept="2Ry0Ak" id="1VqvCtIiJ3p" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVru" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVrv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVrw" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVrx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVrA" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVrB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVvi" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVvj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVvm" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVvn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYK" resolve="jetbrains.mps.baseLanguage.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVvo" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVvp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="53PdBITeVvs" role="3bR37C">
          <node concept="3bR9La" id="53PdBITeVvt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IZ_b08qDPW" role="3bR37C">
          <node concept="3bR9La" id="6IZ_b08qDPX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Hk57oa24DP" role="3bR37C">
          <node concept="3bR9La" id="4Hk57oa24DQ" role="1SiIV1">
            <ref role="3bR37D" node="4F_fjXJTfNV" resolve="testDefaultEditor" />
          </node>
        </node>
        <node concept="1SiIV0" id="676_ZcuCKOv" role="3bR37C">
          <node concept="3bR9La" id="676_ZcuCKOw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRkw" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRkx" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkr" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRks" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRkt" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRku" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRkv" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRky" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6s0TC9aOWoG" role="3bR37C">
          <node concept="3bR9La" id="6s0TC9aOWoH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7iiyGQ7dLQL" resolve="jetbrains.mps.baseLanguage.jdk8" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7wqdV6Y5fwj" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.smodel.query.test" />
        <property role="3LESm3" value="e735f546-7e3c-4043-85a9-9c4792e07c56" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii7e" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii7f" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii7g" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii7h" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii7i" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii7j" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7H155NdxMo4" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.smodel.query.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7wqdV6Y5fwk" role="3LF7KH">
          <node concept="2Ry0Ak" id="7wqdV6Y5fwl" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7wqdV6Y5fwm" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="55iTert_s4T" role="2Ry0An">
                <property role="2Ry0Am" value="lang.smodel.query.test" />
                <node concept="2Ry0Ak" id="55iTert_s7I" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodel.query.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7wqdV6Y5fw_" role="3bR37C">
          <node concept="3bR9La" id="7wqdV6Y5fwA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="40H5Ahzn_dc" role="3bR37C">
          <node concept="3bR9La" id="40H5Ahzn_dd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1NNq35A$1r_" role="3bR37C">
          <node concept="3bR9La" id="1NNq35A$1rA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6u$z$Fpn$ZZ" role="3bR37C">
          <node concept="3bR9La" id="6u$z$Fpn_00" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3ZgZ1njKuFL" resolve="jetbrains.mps.lang.smodel.query" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRkC" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRkD" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkz" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRk$" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRk_" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRkA" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.smodel.query.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRkB" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRkE" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4BLpc15ezHv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.multiple.tests" />
        <property role="3LESm3" value="3c41aa01-5120-470c-8122-06f284bc0419" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiijJ" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiijK" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiijL" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiijM" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiijN" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiijO" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiijP" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.multiple.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3bR9La" id="6CYQl63dY2Q" role="3bR37C">
          <ref role="3bR37D" node="1_MaibiuEG6" resolve="jetbrains.mps.lang.editor.multiple.extension.testLanguage" />
        </node>
        <node concept="55IIr" id="4BLpc15ezHy" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiJa1" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiJcG" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiJcL" role="2Ry0An">
                <property role="2Ry0Am" value="editor.multiple.test" />
                <node concept="2Ry0Ak" id="1VqvCtIiJcQ" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.multiple.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4BLpc15ezJj" role="3bR37C">
          <node concept="3bR9La" id="4BLpc15ezJk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5wa1y8tiB$B" role="3bR37C">
          <node concept="3bR9La" id="5wa1y8tiB$C" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1PhFbPjmHmL" role="3bR37C">
          <node concept="3bR9La" id="1PhFbPjmHmM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRkK" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRkL" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkF" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRkG" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRkH" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRkI" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.multiple.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRkJ" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRkM" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="33Dctpd0maW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.tests" />
        <property role="3LESm3" value="7597197a-bad8-4672-9806-215a3efe8740" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihQq" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihQr" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihQs" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihQt" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihQu" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihQv" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihQw" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="33Dctpd0maZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="33Dctpd0n5C" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="33Dctpd0n9H" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="33Dctpd0nhM" role="2Ry0An">
                <property role="2Ry0Am" value="editor.test" />
                <node concept="2Ry0Ak" id="33Dctpd0npR" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="33Dctpd0ntT" role="3bR37C">
          <node concept="3bR9La" id="33Dctpd0ntU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="33Dctpd0ntV" role="3bR37C">
          <node concept="3bR9La" id="33Dctpd0ntW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="33Dctpd0sC3" role="3bR37C">
          <node concept="3bR9La" id="33Dctpd0sC4" role="1SiIV1">
            <ref role="3bR37D" node="33Dctpd0sbL" resolve="jetbrains.mps.lang.editor.styleTests" />
          </node>
        </node>
        <node concept="1SiIV0" id="33Dctpd0sC5" role="3bR37C">
          <node concept="3bR9La" id="33Dctpd0sC6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="33Dctpd0sC9" role="3bR37C">
          <node concept="3bR9La" id="33Dctpd0sCa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5_kqtpAyfG_" role="3bR37C">
          <node concept="3bR9La" id="5_kqtpAyfGA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6r68uXoBwu8" role="3bR37C">
          <node concept="3bR9La" id="6r68uXoBwu9" role="1SiIV1">
            <ref role="3bR37D" node="6r68uXoBw8t" resolve="jetbrains.mps.lang.editor.editorTest" />
          </node>
        </node>
        <node concept="1SiIV0" id="1cRoRtwnZRu" role="3bR37C">
          <node concept="3bR9La" id="1cRoRtwnZRv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1NNq35A$2nZ" role="3bR37C">
          <node concept="3bR9La" id="1NNq35A$2o0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRkS" role="3bR31x">
          <property role="3ZfqAx" value="selection" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRkT" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkN" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRkO" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRkP" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRkQ" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRkR" role="2Ry0An">
                      <property role="2Ry0Am" value="selection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRkU" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="24G41jEwC6X" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.ide.tests" />
        <property role="3LESm3" value="ffd5bec8-b3f8-478a-81d2-95f525dcdc97" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="24G41jEwC70" role="3LF7KH">
          <node concept="2Ry0Ak" id="24G41jEwCdI" role="iGT6I">
            <property role="2Ry0Am" value="languages.test" />
            <node concept="2Ry0Ak" id="24G41jEwCgH" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="24G41jEwCjG" role="2Ry0An">
                <property role="2Ry0Am" value="lang.editor.ide.tests" />
                <node concept="2Ry0Ak" id="24G41jEwCmF" role="2Ry0An">
                  <property role="2Ry0Am" value="module.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="24G41jEwCpB" role="3bR37C">
          <node concept="3bR9La" id="24G41jEwCpC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRl0" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRl1" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRkV" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRkW" role="iGT6I">
                <property role="2Ry0Am" value="languages.test" />
                <node concept="2Ry0Ak" id="73GUf$umRkX" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umRkY" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.editor.ide.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umRkZ" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRl2" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5WcxkkLo$XH" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.forms.tests" />
        <property role="3LESm3" value="cfb148cb-f798-4362-89a2-56938bf6c92f" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="5WcxkkLo$XK" role="3LF7KH">
          <node concept="2Ry0Ak" id="5WcxkkLo$Y3" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5WcxkkLo$Y8" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5WcxkkLo$Yd" role="2Ry0An">
                <property role="2Ry0Am" value="editor.forms.test" />
                <node concept="2Ry0Ak" id="5WcxkkLo$Yi" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.forms.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRl8" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRl9" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRl3" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRl4" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRl5" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRl6" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.forms.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRl7" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRla" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="53PdBITeUcM" role="auvoZ">
      <node concept="2Ry0Ak" id="53PdBITeUcN" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="53PdBITeUcO" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="53PdBITeUcP" role="1l3spN">
      <node concept="398223" id="53PdBITf0cn" role="39821P">
        <node concept="3_J27D" id="53PdBITf0cp" role="Nbhlr">
          <node concept="3Mxwew" id="5lulEoOcHBP" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
        <node concept="L2wRC" id="53PdBITf0jO" role="39821P">
          <ref role="L2wRA" node="53PdBITf007" resolve="jetbrains.mps.lang.actions.testLanguage" />
        </node>
        <node concept="L2wRC" id="53PdBITf4w2" role="39821P">
          <ref role="L2wRA" node="53PdBITf4ee" resolve="jetbrains.mps.lang.editor.tableTests" />
        </node>
        <node concept="L2wRC" id="4F_fjXJThpW" role="39821P">
          <ref role="L2wRA" node="4F_fjXJTfNV" resolve="testDefaultEditor" />
        </node>
        <node concept="L2wRC" id="2tTgVY$WWwl" role="39821P">
          <ref role="L2wRA" node="2tTgVY$TuKU" resolve="testMoveElements" />
        </node>
        <node concept="L2wRC" id="374E0BAhRos" role="39821P">
          <ref role="L2wRA" node="374E0BAhSlA" resolve="testSpaceCompletion" />
        </node>
        <node concept="L2wRC" id="33Dctpd1Azv" role="39821P">
          <ref role="L2wRA" node="33Dctpd0sbL" resolve="jetbrains.mps.lang.editor.styleTests" />
        </node>
        <node concept="L2wRC" id="4BLpc15eFo5" role="39821P">
          <ref role="L2wRA" node="4BLpc15eBPf" resolve="jetbrains.mps.lang.editor.multiple.testLanguage" />
        </node>
        <node concept="L2wRC" id="1_MaibiuReF" role="39821P">
          <ref role="L2wRA" node="1_MaibiuEG6" resolve="jetbrains.mps.lang.editor.multiple.extension.testLanguage" />
        </node>
        <node concept="L2wRC" id="6r68uXoFPct" role="39821P">
          <ref role="L2wRA" node="6r68uXoBw8t" resolve="jetbrains.mps.lang.editor.editorTest" />
        </node>
        <node concept="L2wRC" id="7F19Uz$eogW" role="39821P">
          <ref role="L2wRA" node="7F19Uz$enCc" resolve="jetbrains.mps.lang.editor.editorTest.extension" />
        </node>
        <node concept="L2wRC" id="5WcxkkLoFUH" role="39821P">
          <ref role="L2wRA" node="5WcxkkLo$Vc" resolve="jetbrains.mps.lang.editor.formsTests" />
        </node>
      </node>
      <node concept="398223" id="53PdBITf0gq" role="39821P">
        <node concept="3_J27D" id="53PdBITf0gs" role="Nbhlr">
          <node concept="3Mxwew" id="53PdBITf0hm" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
        <node concept="L2wRC" id="53PdBITeV_d" role="39821P">
          <ref role="L2wRA" node="53PdBITeVn8" resolve="jetbrains.mps.baseLanguage.test" />
        </node>
        <node concept="L2wRC" id="7wqdV6Y5fD9" role="39821P">
          <ref role="L2wRA" node="7wqdV6Y5fwj" resolve="jetbrains.mps.lang.smodel.query.test" />
        </node>
        <node concept="L2wRC" id="53PdBITeVAr" role="39821P">
          <ref role="L2wRA" node="53PdBITeV7g" resolve="jetbrains.mps.lang.actions.test" />
        </node>
        <node concept="L2wRC" id="53PdBITeVB4" role="39821P">
          <ref role="L2wRA" node="53PdBITeUcc" resolve="jetbrains.mps.lang.editor.table.tests" />
        </node>
        <node concept="L2wRC" id="4BLpc15ezJx" role="39821P">
          <ref role="L2wRA" node="4BLpc15ezHv" resolve="jetbrains.mps.lang.editor.multiple.tests" />
        </node>
        <node concept="L2wRC" id="33Dctpd1AH0" role="39821P">
          <ref role="L2wRA" node="33Dctpd0maW" resolve="jetbrains.mps.lang.editor.tests" />
        </node>
        <node concept="L2wRC" id="24G41jEwHE4" role="39821P">
          <ref role="L2wRA" node="24G41jEwC6X" resolve="jetbrains.mps.lang.editor.ide.tests" />
        </node>
        <node concept="L2wRC" id="5WcxkkLoFV3" role="39821P">
          <ref role="L2wRA" node="5WcxkkLo$XH" resolve="jetbrains.mps.lang.editor.forms.tests" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="53PdBITeUcS" role="10PD9s" />
    <node concept="3b7kt6" id="53PdBITeUcT" role="10PD9s" />
    <node concept="1gjT0q" id="53PdBITeUcU" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHO0W" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHO0X" role="398pKh">
        <ref role="398BVh" node="53PdBITeUc4" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHO0Y" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHO0Z" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHO10" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="6gfB34Bldez">
    <property role="TrG5h" value="mpsBaseLanguage" />
    <property role="turDy" value="mpsBaseLanguage.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="2_Ic$z" id="6gfB34Blde_" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="6gfB34BldeA" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="6gfB34BldeJ" role="3989C9">
      <property role="TrG5h" value="baseLanguage-tests" />
      <node concept="1E1JtA" id="6gfB34Bld_m" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.unittest" />
        <property role="3LESm3" value="e60b351d-8d80-4c13-8ad4-3e4759e2a3ea" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihQF" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihQG" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihQH" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihQI" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihQJ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihQK" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihQL" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.unittest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6gfB34Bld_n" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIi6Ex" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIi6QK" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1X3mOAZ$W6W" role="2Ry0An">
                <property role="2Ry0Am" value="bl.unittest" />
                <node concept="2Ry0Ak" id="1X3mOAZ$Wif" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.unittest.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6gfB34Bld_O" role="3bR37C">
          <node concept="3bR9La" id="6gfB34Bld_P" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6gfB34Bld_Q" role="3bR37C">
          <node concept="3bR9La" id="6gfB34Bld_R" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="6gfB34Bld_S" role="3bR37C">
          <node concept="3bR9La" id="6gfB34Bld_T" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6gfB34Bld_W" role="3bR37C">
          <node concept="3bR9La" id="6gfB34Bld_X" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6gfB34Bld_Y" role="3bR37C">
          <node concept="3bR9La" id="6gfB34Bld_Z" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4yhXPMGT63v" role="3bR37C">
          <node concept="3bR9La" id="4yhXPMGT63w" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="6$OiTNxLJVP" role="3bR37C">
          <node concept="3bR9La" id="6$OiTNxLJVQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="3de6X9F5Hme" role="3bR37C">
          <node concept="3bR9La" id="3de6X9F5Hmf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfd" resolve="jetbrains.mps.findUsages.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRIB" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRIC" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRIy" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRIz" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRI$" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRI_" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.unittest" />
                    <node concept="2Ry0Ak" id="73GUf$umRIA" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRID" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="EkFhnBKulH" role="3bR37C">
          <node concept="3bR9La" id="EkFhnBKulI" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6gfB34Blde$" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="6gfB34BldeB" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="6gfB34BldeC" role="398pKh">
        <ref role="398BVh" node="6gfB34Blde$" resolve="mps_home" />
      </node>
    </node>
    <node concept="2kB4xC" id="6g2MV4s3Qza" role="1l3spd">
      <property role="TrG5h" value="mps.junit.haltonfailure" />
      <node concept="aVJcg" id="6g2MV4s62MH" role="aVJcv">
        <node concept="NbPM2" id="6g2MV4s62MG" role="aVJcq">
          <node concept="3Mxwew" id="6g2MV4s62MF" role="3MwsjC">
            <property role="3MwjfP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="6gfB34BldeD" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="6gfB34BldeE" role="13uUGP">
        <ref role="398BVh" node="6gfB34BldeB" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6gfB34BldeF" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6gfB34BldeG" role="2JcizS">
        <ref role="398BVh" node="6gfB34Blde$" resolve="mps_home" />
      </node>
    </node>
    <node concept="22LTRH" id="6gfB34BldeH" role="1hWBAP">
      <property role="TrG5h" value="baseLanguage" />
      <node concept="24cAiW" id="5I1s5NvQ4SX" role="24cAkG">
        <node concept="NbPM2" id="6g2MV4s62LI" role="24c_eh">
          <node concept="3Mxwey" id="aAVDHmDgl9" role="3MwsjC">
            <ref role="3Mxwex" node="6g2MV4s3Qza" resolve="mps.junit.haltonfailure" />
          </node>
        </node>
        <node concept="NbPM2" id="372aBDf0kSI" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSJ" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="7S0pHCu4Te" role="22LTRK">
        <ref role="22LTRG" node="6gfB34BldeJ" resolve="baseLanguage-tests" />
      </node>
      <node concept="22LTRF" id="2LuGVbI_t9o" role="22LTRK">
        <ref role="22LTRG" node="QtAfUFXwu" resolve="closures-tests" />
      </node>
      <node concept="22LTRF" id="1LgKa1XPbGS" role="22LTRK">
        <ref role="22LTRG" node="tTgt0xE5zB" resolve="methodReference-tests" />
      </node>
      <node concept="22LTRF" id="1y5ThBEPjcA" role="22LTRK">
        <ref role="22LTRG" node="1y5ThBEPhLi" resolve="reference-tests" />
      </node>
      <node concept="22LTRF" id="5toIiGVJthb" role="22LTRK">
        <ref role="22LTRG" node="5toIiGVJtfm" resolve="baseLanguageInternal-tests" />
      </node>
      <node concept="22LTRF" id="5toIiGVJtGc" role="22LTRK">
        <ref role="22LTRG" node="5toIiGVJtEe" resolve="doubleDispatch-tests" />
      </node>
      <node concept="22LTRF" id="5toIiGVJvi0" role="22LTRK">
        <ref role="22LTRG" node="5toIiGVJuWM" resolve="regexp-tests" />
      </node>
      <node concept="22LTRF" id="QfMQtuJPyZ" role="22LTRK">
        <ref role="22LTRG" node="QfMQtuJPwm" resolve="tuples-tests" />
      </node>
      <node concept="22LTRF" id="QfMQtuMytL" role="22LTRK">
        <ref role="22LTRG" node="QfMQtuMyrm" resolve="collections-tests" />
      </node>
    </node>
    <node concept="2G$12M" id="QtAfUFXwu" role="3989C9">
      <property role="TrG5h" value="closures-tests" />
      <node concept="1E1JtA" id="QtAfUFZXZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.closures.unittest" />
        <property role="3LESm3" value="fa54094d-fc7a-4393-885f-13866cecf3f3" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii0g" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii0h" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii0i" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii0j" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii0k" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii0l" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iii0m" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.closures.unittest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="QtAfUFZY0" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiaRp" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiaRu" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1X3mOAZ$Wis" role="2Ry0An">
                <property role="2Ry0Am" value="bl.closures.unittest" />
                <node concept="2Ry0Ak" id="1X3mOAZ$Wit" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closures.unittest.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="QtAfUFZYR" role="3bR37C">
          <node concept="3bR9La" id="QtAfUFZYS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="QtAfUFZYT" role="3bR37C">
          <node concept="3bR9La" id="QtAfUFZYU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRIJ" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRIK" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRIE" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRIF" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRIG" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRIH" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.closures.unittest" />
                    <node concept="2Ry0Ak" id="73GUf$umRII" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRIL" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="QfMQtuPukK" role="2G$12L">
        <property role="TrG5h" value="closures.test" />
        <property role="3LESm3" value="7a0c7a21-43a3-4bb4-b898-a819ebed44a5" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="QfMQtuPukL" role="3bR31x">
          <node concept="3LXTmp" id="QfMQtuPukM" role="3rtmxm">
            <node concept="3qWCbU" id="QfMQtuPukN" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="QfMQtuPukO" role="3LXTmr">
              <node concept="2Ry0Ak" id="QfMQtuPukP" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="QfMQtuPukQ" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="QfMQtuPukR" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.closures.unittest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="QfMQtuPukS" role="3LF7KH">
          <node concept="2Ry0Ak" id="QfMQtuPukT" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="QfMQtuPukU" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="QfMQtuPukV" role="2Ry0An">
                <property role="2Ry0Am" value="closures.test" />
                <node concept="2Ry0Ak" id="QfMQtuPunK" role="2Ry0An">
                  <property role="2Ry0Am" value="closures.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuPunM" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuPunN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuPunO" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuPunP" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZM" resolve="closures.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuPunQ" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuPunR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRIR" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRIS" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRIM" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRIN" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRIO" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRIP" role="2Ry0An">
                    <property role="2Ry0Am" value="closures.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRIQ" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRIT" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7KndVUY68cb" role="3bR37C">
          <node concept="3bR9La" id="7KndVUY68cc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7KndVUY68cd" role="3bR37C">
          <node concept="3bR9La" id="7KndVUY68ce" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="2j4NQWLGvNU" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.closures.test" />
        <property role="3LESm3" value="709a7100-da7a-45a1-948b-53fdd43f5421" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvNV" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvNW" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvNX" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvNY" role="2Ry0An">
                <property role="2Ry0Am" value="testClosures" />
                <node concept="2Ry0Ak" id="2j4NQWLGvNZ" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvO0" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closures.test" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvO1" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closures.test.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvO2" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvO3" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvO4" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvO5" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvO6" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvO7" role="2Ry0An">
                    <property role="2Ry0Am" value="testClosures" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvO8" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvO9" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closures.test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvOa" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvRQ" role="3bR37C">
          <node concept="3bR9La" id="2j4NQWLGvRR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZM" resolve="closures.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvRS" role="3bR37C">
          <node concept="3bR9La" id="2j4NQWLGvRT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvRU" role="3bR37C">
          <node concept="3bR9La" id="2j4NQWLGvRV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:rD7wKO6k$" resolve="MPS.Generator" />
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvS3" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvS4" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvRW" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvRX" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvRY" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvRZ" role="2Ry0An">
                    <property role="2Ry0Am" value="testClosures" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvS0" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvS1" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.closures.test" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvS2" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvS5" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="a5PP$G5kgc" role="3bR37C">
          <node concept="3bR9La" id="a5PP$G5kgd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="tTgt0xE5zB" role="3989C9">
      <property role="TrG5h" value="methodReference-tests" />
      <node concept="1E1JtA" id="tTgt0xE5Ca" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.methodReferences.test" />
        <property role="3LESm3" value="3c1bee22-b61a-4457-a7b5-01a98dad82af" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="tTgt0xE5Cb" role="3LF7KH">
          <node concept="2Ry0Ak" id="1LgKa1XPbE_" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1LgKa1XPbEJ" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1LgKa1XPbEO" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.methodReferences.test" />
                <node concept="2Ry0Ak" id="1LgKa1XPbET" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.methodReferences.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1LgKa1XPbFa" role="3bR37C">
          <node concept="3bR9La" id="1LgKa1XPbFb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1LgKa1XPbFc" role="3bR37C">
          <node concept="3bR9La" id="1LgKa1XPbFd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:tTgt0xwhLZ" resolve="jetbrains.mps.baseLanguage.methodReferences" />
          </node>
        </node>
        <node concept="1SiIV0" id="1LgKa1XPbFe" role="3bR37C">
          <node concept="3bR9La" id="1LgKa1XPbFf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1LgKa1XPbFg" role="3bR37C">
          <node concept="3bR9La" id="1LgKa1XPbFh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1LgKa1XPbFi" role="3bR37C">
          <node concept="3bR9La" id="1LgKa1XPbFj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="1LgKa1XPbFp" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1LgKa1XPbFq" role="1HemKq">
            <node concept="55IIr" id="1LgKa1XPbFk" role="3LXTmr">
              <node concept="2Ry0Ak" id="1LgKa1XPbFl" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="1LgKa1XPbFm" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="1LgKa1XPbFn" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.methodReferences.test" />
                    <node concept="2Ry0Ak" id="1LgKa1XPbFo" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1LgKa1XPbFr" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="50hwP4qiBKq" role="3bR37C">
          <node concept="3bR9La" id="50hwP4qiBKr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="1y5ThBEPhLi" role="3989C9">
      <property role="TrG5h" value="reference-tests" />
      <node concept="1E1JtA" id="1y5ThBEPhOn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.testRefs" />
        <property role="3LESm3" value="cd870c6a-f4a0-42f2-8e83-195b00a97615" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="1y5ThBEPhOo" role="3LF7KH">
          <node concept="2Ry0Ak" id="1y5ThBEPhPE" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1y5ThBEPhQ7" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="1y5ThBEPhQq" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs" />
                <node concept="2Ry0Ak" id="1y5ThBEPhRb" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1y5ThBEPhRz" role="3bR37C">
          <node concept="3bR9La" id="1y5ThBEPhR$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4DalL5sdlK7" resolve="jetbrains.mps.lang.descriptor.aspects" />
          </node>
        </node>
        <node concept="1SiIV0" id="1y5ThBEPhR_" role="3bR37C">
          <node concept="3bR9La" id="1y5ThBEPhRA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1y5ThBEPhRB" role="3bR37C">
          <node concept="3bR9La" id="1y5ThBEPhRC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4ZvcRdeXyk4" role="3bR37C">
          <node concept="3bR9La" id="4ZvcRdeXyk5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1dsbP8r1gfD" resolve="jetbrains.mps.baseLanguage.references.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRIZ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJ0" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRIU" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRIV" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRIW" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRIX" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs" />
                    <node concept="2Ry0Ak" id="73GUf$umRIY" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJ1" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1y5ThBEPi7n" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.testRefs.testLang" />
        <property role="3LESm3" value="b654d0ef-8981-4c92-8304-246f1dfe4618" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="1y5ThBEPi7o" role="3LF7KH">
          <node concept="2Ry0Ak" id="1y5ThBEPi8w" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1y5ThBEPi97" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="1y5ThBEPiag" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs.testLang" />
                <node concept="2Ry0Ak" id="1y5ThBEPiaR" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs.testLang.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1y5ThBEPibp" role="3bR37C">
          <node concept="3bR9La" id="1y5ThBEPibq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1y5ThBEPibr" role="3bR37C">
          <node concept="1Busua" id="1y5ThBEPibs" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="1y5ThBEPibt" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.baseLanguage.testRefs.testLang#01" />
          <property role="3LESm3" value="4c21bee0-31fa-492b-8c79-a2a857365275" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="4ZvcRdeXykb" role="3bR37C">
            <node concept="3bR9La" id="4ZvcRdeXykc" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1dsbP8r1gfD" resolve="jetbrains.mps.baseLanguage.references.runtime" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umRJg" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umRJh" role="1HemKq">
              <node concept="55IIr" id="73GUf$umRJa" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umRJb" role="iGT6I">
                  <property role="2Ry0Am" value="testbench" />
                  <node concept="2Ry0Ak" id="73GUf$umRJc" role="2Ry0An">
                    <property role="2Ry0Am" value="modules" />
                    <node concept="2Ry0Ak" id="73GUf$umRJd" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs.testLang" />
                      <node concept="2Ry0Ak" id="73GUf$umRJe" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="73GUf$umRJf" role="2Ry0An">
                          <property role="2Ry0Am" value="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umRJi" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRJ7" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJ8" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJ2" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJ3" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJ4" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRJ5" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.testRefs.testLang" />
                    <node concept="2Ry0Ak" id="73GUf$umRJ6" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJ9" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5toIiGVJtfm" role="3989C9">
      <property role="TrG5h" value="baseLanguageInternal-tests" />
      <node concept="1E1JtA" id="5toIiGVJtgF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguageInternal.test" />
        <property role="3LESm3" value="4831e627-794e-416a-983a-50889cae21f8" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="5toIiGVJtgG" role="3LF7KH">
          <node concept="2Ry0Ak" id="5toIiGVJtgM" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5toIiGVJtgU" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5toIiGVJtgZ" role="2Ry0An">
                <property role="2Ry0Am" value="bl.internal.test" />
                <node concept="2Ry0Ak" id="5toIiGVJth4" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguageInternal.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRJo" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJp" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJj" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJk" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJl" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRJm" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.internal.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRJn" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5toIiGVJtEe" role="3989C9">
      <property role="TrG5h" value="doubleDispatch-tests" />
      <node concept="1E1JtA" id="5toIiGVJtEf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.doubleDispatch.test" />
        <property role="3LESm3" value="0528d773-6535-46f8-89a2-16a3751e6ab5" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="5toIiGVJtEg" role="3LF7KH">
          <node concept="2Ry0Ak" id="5toIiGVJtEh" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5toIiGVJtEi" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5toIiGVJtEj" role="2Ry0An">
                <property role="2Ry0Am" value="bl.doubleDispatch.test" />
                <node concept="2Ry0Ak" id="5toIiGVJtFP" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.doubleDispatch.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRJw" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJx" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJr" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJs" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJt" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRJu" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.doubleDispatch.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRJv" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJy" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5toIiGVJuWM" role="3989C9">
      <property role="TrG5h" value="regexp-tests" />
      <node concept="1E1JtA" id="5toIiGVJuWN" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.regexp.unittest" />
        <property role="3LESm3" value="19cb79b5-ebc3-43ce-9f4c-d4bdce7013ab" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="5toIiGVJuWO" role="3LF7KH">
          <node concept="2Ry0Ak" id="5toIiGVJuWP" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5toIiGVJuWQ" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5toIiGVJuWR" role="2Ry0An">
                <property role="2Ry0Am" value="regexp.unittest" />
                <node concept="2Ry0Ak" id="5toIiGVJvh9" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.regexp.unittest.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5toIiGVJvhb" role="3bR37C">
          <node concept="3bR9La" id="5toIiGVJvhc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5toIiGVJvhd" role="3bR37C">
          <node concept="3bR9La" id="5toIiGVJvhe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1YAozCvot2o" resolve="jetbrains.mps.baseLanguage.regexp.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRJC" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJD" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJz" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJ$" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJ_" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRJA" role="2Ry0An">
                    <property role="2Ry0Am" value="regexp.unittest" />
                    <node concept="2Ry0Ak" id="73GUf$umRJB" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJE" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="6gfB34Bldfk" role="auvoZ">
      <node concept="2Ry0Ak" id="6gfB34Bldfl" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="6gfB34Bldfm" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="6gfB34Bldfn" role="1l3spN">
      <node concept="L2wRC" id="4dCKjY0EtLQ" role="39821P">
        <ref role="L2wRA" node="6gfB34Bld_m" resolve="jetbrains.mps.baseLanguage.unittest" />
      </node>
      <node concept="L2wRC" id="2LuGVbI_tBO" role="39821P">
        <ref role="L2wRA" node="QtAfUFZXZ" resolve="jetbrains.mps.baseLanguage.closures.unittest" />
      </node>
      <node concept="L2wRC" id="QfMQtuPurv" role="39821P">
        <ref role="L2wRA" node="QfMQtuPukK" resolve="closures.test" />
      </node>
      <node concept="L2wRC" id="1BXBf8Uh1eF" role="39821P">
        <ref role="L2wRA" node="2j4NQWLGvNU" resolve="jetbrains.mps.baseLanguage.closures.test" />
      </node>
      <node concept="L2wRC" id="1y5ThBEPip4" role="39821P">
        <ref role="L2wRA" node="1y5ThBEPhOn" resolve="jetbrains.mps.baseLanguage.testRefs" />
      </node>
      <node concept="L2wRC" id="1y5ThBEPiqT" role="39821P">
        <ref role="L2wRA" node="1y5ThBEPi7n" resolve="jetbrains.mps.baseLanguage.testRefs.testLang" />
      </node>
      <node concept="L2wRC" id="5toIiGVJthn" role="39821P">
        <ref role="L2wRA" node="5toIiGVJtgF" resolve="jetbrains.mps.baseLanguageInternal.test" />
      </node>
      <node concept="L2wRC" id="5toIiGVJtFY" role="39821P">
        <ref role="L2wRA" node="5toIiGVJtEf" resolve="jetbrains.mps.baseLanguage.doubleDispatch.test" />
      </node>
      <node concept="L2wRC" id="5toIiGVJvhx" role="39821P">
        <ref role="L2wRA" node="5toIiGVJuWN" resolve="jetbrains.mps.baseLanguage.regexp.unittest" />
      </node>
      <node concept="L2wRC" id="QfMQtuJPy$" role="39821P">
        <ref role="L2wRA" node="QfMQtuJPwn" resolve="jetbrains.mps.baseLanguage.tuples.test" />
      </node>
      <node concept="L2wRC" id="1LgKa1XPbH3" role="39821P">
        <ref role="L2wRA" node="tTgt0xE5Ca" resolve="jetbrains.mps.baseLanguage.methodReferences.test" />
      </node>
      <node concept="L2wRC" id="QfMQtuMyu5" role="39821P">
        <ref role="L2wRA" node="QfMQtuMyrn" resolve="collections_unittest" />
      </node>
      <node concept="L2wRC" id="QfMQtuMywe" role="39821P">
        <ref role="L2wRA" node="QfMQtuMyug" resolve="internalCollections.test" />
      </node>
      <node concept="L2wRC" id="QfMQtuMywp" role="39821P">
        <ref role="L2wRA" node="QfMQtuMyuS" resolve="collections_trove.test" />
      </node>
    </node>
    <node concept="10PD9b" id="6gfB34Bldfq" role="10PD9s" />
    <node concept="3b7kt6" id="6gfB34Bldfr" role="10PD9s" />
    <node concept="1gjT0q" id="6gfB34Bldfs" role="10PD9s" />
    <node concept="2G$12M" id="QfMQtuJPwm" role="3989C9">
      <property role="TrG5h" value="tuples-tests" />
      <node concept="1E1JtA" id="QfMQtuJPwn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.tuples.test" />
        <property role="3LESm3" value="993e3b08-9f44-43cf-b983-e474ac66855b" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="QfMQtuJPwo" role="3LF7KH">
          <node concept="2Ry0Ak" id="QfMQtuJPwp" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="QfMQtuJPwq" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="QfMQtuJPwr" role="2Ry0An">
                <property role="2Ry0Am" value="bl.tuples.test" />
                <node concept="2Ry0Ak" id="QfMQtuJPyn" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.tuples.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuJPwt" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuJPwu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRJK" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJL" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJF" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJG" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJH" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRJI" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.tuples.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRJJ" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJM" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="6UtCO5dHXoF" role="3bR31x">
          <node concept="3LXTmp" id="6UtCO5dHXoG" role="3rtmxm">
            <node concept="3qWCbU" id="6UtCO5dHXoH" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="6UtCO5dHXoI" role="3LXTmr">
              <node concept="2Ry0Ak" id="6UtCO5dHXoJ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="6UtCO5dHXoK" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="6UtCO5dHXoL" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.tuples.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="QfMQtuMyrm" role="3989C9">
      <property role="TrG5h" value="collections-tests" />
      <node concept="1E1JtA" id="QfMQtuMyrn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="collections_unittest" />
        <property role="3LESm3" value="39a1a79d-8ae2-4e54-a86a-8f7b9e17e2fe" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="QfMQtuMyro" role="3LF7KH">
          <node concept="2Ry0Ak" id="QfMQtuMyrp" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="QfMQtuMyrq" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="QfMQtuMyrr" role="2Ry0An">
                <property role="2Ry0Am" value="collections_unittest" />
                <node concept="2Ry0Ak" id="QfMQtuMyts" role="2Ry0An">
                  <property role="2Ry0Am" value="collections_unittest.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyrt" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyru" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMytu" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMytv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMytw" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMytx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRJS" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRJT" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJN" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJO" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJP" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRJQ" role="2Ry0An">
                    <property role="2Ry0Am" value="collections_unittest" />
                    <node concept="2Ry0Ak" id="73GUf$umRJR" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRJU" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4S4meBeHnOe" role="3bR37C">
          <node concept="3bR9La" id="4S4meBeHnOf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="QfMQtuMyug" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="internalCollections.test" />
        <property role="3LESm3" value="b5660d3a-8a0d-4815-881b-7c884f61c9c7" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="QfMQtuMyuh" role="3LF7KH">
          <node concept="2Ry0Ak" id="QfMQtuMyui" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="QfMQtuMyuj" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="QfMQtuMyuk" role="2Ry0An">
                <property role="2Ry0Am" value="bl.internalCollections.test" />
                <node concept="2Ry0Ak" id="QfMQtuMyvs" role="2Ry0An">
                  <property role="2Ry0Am" value="internalCollections.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyum" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyun" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyvw" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyvx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyvy" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyvz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyv$" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyv_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRK0" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRK1" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRJV" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRJW" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRJX" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRJY" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.internalCollections.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRJZ" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRK2" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="462EY4K9YPQ" role="3bR37C">
          <node concept="3bR9La" id="462EY4K9YPR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="QfMQtuMyuS" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="collections_trove.test" />
        <property role="3LESm3" value="fb186431-2788-490b-9e84-c2b84ef0ca77" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="QfMQtuMyuT" role="3LF7KH">
          <node concept="2Ry0Ak" id="QfMQtuMyuU" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="QfMQtuMyuV" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="QfMQtuMyuW" role="2Ry0An">
                <property role="2Ry0Am" value="collections_trove.test" />
                <node concept="2Ry0Ak" id="QfMQtuMyuX" role="2Ry0An">
                  <property role="2Ry0Am" value="collections_trove.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyuY" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyuZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="QfMQtuMyvO" role="3bR37C">
          <node concept="3bR9La" id="QfMQtuMyvP" role="1SiIV1">
            <ref role="3bR37D" node="QfMQtuMyug" resolve="internalCollections.test" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRK8" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRK9" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRK3" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRK4" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRK5" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umRK6" role="2Ry0An">
                    <property role="2Ry0Am" value="collections_trove.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRK7" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRKa" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHNNz" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHNN$" role="398pKh">
        <ref role="398BVh" node="6gfB34Blde$" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHNN_" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHNNA" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHNNB" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="2LuGVbI_yEV">
    <property role="TrG5h" value="mpsBuild" />
    <property role="turDy" value="mpsBuild.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="2LuGVbI_yEW" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="2LuGVbI_yEX" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="2LuGVbI_yEY" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtA" id="2LuGVbI_yZD" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.build.tests" />
      <property role="3LESm3" value="39742b07-848c-43a7-be0a-845055dd3333" />
      <property role="aoJFB" value="eYcmk9QOls/tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="EpEP7iiifl" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iiifm" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iiifn" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iiifo" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iiifp" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="EpEP7iiifq" role="2Ry0An">
                <property role="2Ry0Am" value="mps-build" />
                <node concept="2Ry0Ak" id="EpEP7iiifs" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="EpEP7iiift" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="2LuGVbI_yZF" role="3LF7KH">
        <node concept="2Ry0Ak" id="2LuGVbI_yZK" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2LuGVbI_z4x" role="2Ry0An">
            <property role="2Ry0Am" value="mps-build" />
            <node concept="2Ry0Ak" id="2LuGVbI_z4_" role="2Ry0An">
              <property role="2Ry0Am" value="test" />
              <node concept="2Ry0Ak" id="2LuGVbI_z4D" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                <node concept="2Ry0Ak" id="2LuGVbI_z4F" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.build.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2LuGVbI_z4H" role="3bR37C">
        <node concept="3bR9La" id="2LuGVbI_z4I" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
        </node>
      </node>
      <node concept="1SiIV0" id="2LuGVbI_z4J" role="3bR37C">
        <node concept="3bR9La" id="2LuGVbI_z4K" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7pdFgzxlDoA" resolve="jetbrains.mps.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3S4PaHvG3W4" role="3bR37C">
        <node concept="3bR9La" id="3S4PaHvG3W5" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7pdFgzxlDoP" resolve="jetbrains.mps.build.mps" />
        </node>
      </node>
      <node concept="1SiIV0" id="6US6r0rz8N4" role="3bR37C">
        <node concept="3bR9La" id="6US6r0rz8N5" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="1hpOr59hNzK" role="3bR37C">
        <node concept="3bR9La" id="1hpOr59hNzL" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
        </node>
      </node>
      <node concept="1SiIV0" id="3wV6xYBOPQ9" role="3bR37C">
        <node concept="3bR9La" id="3wV6xYBOPQa" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
        </node>
      </node>
      <node concept="1SiIV0" id="3wV6xYBOPQb" role="3bR37C">
        <node concept="3bR9La" id="3wV6xYBOPQc" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umR_S" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umR_T" role="1HemKq">
          <node concept="55IIr" id="73GUf$umR_L" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umR_M" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="73GUf$umR_N" role="2Ry0An">
                <property role="2Ry0Am" value="mps-build" />
                <node concept="2Ry0Ak" id="73GUf$umR_P" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="73GUf$umR_Q" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR_R" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umR_U" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3NsKwMhtdjG" role="3bR37C">
        <node concept="3bR9La" id="3NsKwMhtdjH" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:rD7wKO6k$" resolve="MPS.Generator" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="7GotP_G7GY" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.build.mps.runner.test" />
      <property role="3LESm3" value="462dcdf9-0c03-4657-9c3f-0792adcc641c" />
      <property role="aoJFB" value="eYcmk9QOls/tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="EpEP7iii4L" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iii4M" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iii4N" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iii4O" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iii4P" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="EpEP7iii4Q" role="2Ry0An">
                <property role="2Ry0Am" value="mps-build" />
                <node concept="2Ry0Ak" id="EpEP7iii4R" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="EpEP7iii4S" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.build.mps.runner.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="7GotP_G7H0" role="3LF7KH">
        <node concept="2Ry0Ak" id="7GotP_G7HH" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="7GotP_G7I0" role="2Ry0An">
            <property role="2Ry0Am" value="mps-build" />
            <node concept="2Ry0Ak" id="7GotP_G7Ij" role="2Ry0An">
              <property role="2Ry0Am" value="test" />
              <node concept="2Ry0Ak" id="7GotP_G7IA" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.mps.runner.test" />
                <node concept="2Ry0Ak" id="7GotP_G7IT" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.build.mps.runner.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="7GotP_G7Ph" role="3bR37C">
        <node concept="3bR9La" id="7GotP_G7Pi" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="7GotP_G7Pj" role="3bR37C">
        <node concept="3bR9La" id="7GotP_G7Pk" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:5xa9wY2vhaI" resolve="jetbrains.mps.ant.execution" />
        </node>
      </node>
      <node concept="1SiIV0" id="7GotP_G7Pn" role="3bR37C">
        <node concept="3bR9La" id="7GotP_G7Po" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="7OAOF22G8M2" role="3bR37C">
        <node concept="3bR9La" id="7OAOF22G8M3" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="2FBMjpcavJ" role="3bR37C">
        <node concept="3bR9La" id="2FBMjpcavK" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:2eDSGe9d1qo" resolve="jetbrains.mps.execution.api" />
        </node>
      </node>
      <node concept="1SiIV0" id="2UQRFFqpQae" role="3bR37C">
        <node concept="3bR9La" id="2UQRFFqpQaf" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
        </node>
      </node>
      <node concept="1SiIV0" id="2UQRFFqpQag" role="3bR37C">
        <node concept="3bR9La" id="2UQRFFqpQah" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3zjMY$95UAa" resolve="jetbrains.mps.core.tool.environment" />
        </node>
      </node>
      <node concept="1SiIV0" id="nUYGvAFBBb" role="3bR37C">
        <node concept="3bR9La" id="nUYGvAFBBc" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umRA1" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umRA2" role="1HemKq">
          <node concept="55IIr" id="73GUf$umR_V" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umR_W" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="73GUf$umR_X" role="2Ry0An">
                <property role="2Ry0Am" value="mps-build" />
                <node concept="2Ry0Ak" id="73GUf$umR_Y" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="73GUf$umR_Z" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.build.mps.runner.test" />
                    <node concept="2Ry0Ak" id="73GUf$umRA0" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umRA3" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2LuGVbI_yEZ" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="2LuGVbI_yF0" role="398pKh">
        <ref role="398BVh" node="2LuGVbI_yEW" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="2LuGVbI_yF1" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="2LuGVbI_yF2" role="13uUGP">
        <ref role="398BVh" node="2LuGVbI_yEZ" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2LuGVbI_yF3" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="2LuGVbI_yF4" role="2JcizS">
        <ref role="398BVh" node="2LuGVbI_yEW" resolve="mps_home" />
      </node>
    </node>
    <node concept="22LTRH" id="2LuGVbI_yF5" role="1hWBAP">
      <property role="TrG5h" value="build" />
      <node concept="24cAiW" id="5I1s5NvQ4SY" role="24cAkG">
        <node concept="NbPM2" id="1tJmw8EBzL6" role="XX84c">
          <node concept="3Mxwew" id="5_4sKVTikQH" role="3MwsjC">
            <property role="3MwjfP" value="false" />
          </node>
        </node>
        <node concept="NbPM2" id="5_4sKVTikQE" role="24c_eh">
          <node concept="3Mxwew" id="5_4sKVTikQD" role="3MwsjC">
            <property role="3MwjfP" value="false" />
          </node>
        </node>
        <node concept="NbPM2" id="372aBDf0kSK" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSL" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
        <node concept="24YFd4" id="5YAeWKH1da5" role="24YFd7">
          <ref role="24YFd5" to="ffeo:3TAvYl1bTr3" resolve="intellij.testRunner.plugin" />
        </node>
      </node>
      <node concept="22LTRM" id="2LuGVbI__1o" role="22LTRK">
        <ref role="22LTRN" node="2LuGVbI_yZD" resolve="jetbrains.mps.build.tests" />
      </node>
      <node concept="22LTRM" id="7GotP_H4Xs" role="22LTRK">
        <ref role="22LTRN" node="7GotP_G7GY" resolve="jetbrains.mps.build.mps.runner.test" />
      </node>
    </node>
    <node concept="55IIr" id="2LuGVbI_yFS" role="auvoZ">
      <node concept="2Ry0Ak" id="2LuGVbI_yFT" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="2LuGVbI_yFU" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="2LuGVbI_yFV" role="1l3spN">
      <node concept="398223" id="7GotP_I4PM" role="39821P">
        <node concept="3_J27D" id="7GotP_I4PO" role="Nbhlr">
          <node concept="3Mxwew" id="7GotP_I4Qe" role="3MwsjC">
            <property role="3MwjfP" value="runner.test" />
          </node>
        </node>
        <node concept="L2wRC" id="7GotP_H007" role="39821P">
          <ref role="L2wRA" node="7GotP_G7GY" resolve="jetbrains.mps.build.mps.runner.test" />
        </node>
      </node>
      <node concept="L2wRC" id="2LuGVbI_z54" role="39821P">
        <ref role="L2wRA" node="2LuGVbI_yZD" resolve="jetbrains.mps.build.tests" />
      </node>
    </node>
    <node concept="10PD9b" id="2LuGVbI_yFZ" role="10PD9s" />
    <node concept="3b7kt6" id="2LuGVbI_yG0" role="10PD9s" />
    <node concept="1gjT0q" id="2LuGVbI_yG1" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHNVP" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHNVQ" role="398pKh">
        <ref role="398BVh" node="2LuGVbI_yEW" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHNVR" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHNVS" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHNVT" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="yja7V_1HGP">
    <property role="TrG5h" value="mpsGenerator" />
    <property role="turDy" value="mpsGenerator.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="yja7V_1HGQ" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="yja7V_1HGR" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="yja7V_1HGS" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="yja7V_1HGT" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="yja7V_1HGU" role="398pKh">
        <ref role="398BVh" node="yja7V_1HGQ" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="yja7V_1HGV" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="yja7V_1HGW" role="13uUGP">
        <ref role="398BVh" node="yja7V_1HGT" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="yja7V_1HGX" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="yja7V_1HGY" role="2JcizS">
        <ref role="398BVh" node="yja7V_1HGQ" resolve="mps_home" />
      </node>
    </node>
    <node concept="22LTRH" id="yja7V_1HGZ" role="1hWBAP">
      <property role="TrG5h" value="generator" />
      <node concept="24cAiW" id="5I1s5NvQ4SZ" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSM" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSN" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
        <node concept="24YFd4" id="3TAvYl1bUYC" role="24YFd7">
          <ref role="24YFd5" to="ffeo:3TAvYl1bTr3" resolve="intellij.testRunner.plugin" />
        </node>
      </node>
      <node concept="22LTRF" id="yja7V_1JuO" role="22LTRK">
        <ref role="22LTRG" node="yja7V_1HH2" resolve="generator-tests" />
      </node>
      <node concept="22LTRF" id="3yaq6Y8lofG" role="22LTRK">
        <ref role="22LTRG" node="3yaq6Y8lnOk" resolve="tracemacro-tests" />
      </node>
      <node concept="22LTRF" id="5kOge16AvJO" role="22LTRK">
        <ref role="22LTRG" node="5kOge16AviK" resolve="xmodel-tests" />
      </node>
    </node>
    <node concept="2G$12M" id="yja7V_1HH2" role="3989C9">
      <property role="TrG5h" value="generator-tests" />
      <node concept="1E1JtA" id="o14$W8XJt9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.overloadedOperators.sandbox" />
        <property role="3LESm3" value="b35bb3d4-59ec-4075-a2bb-8d977813e263" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihYT" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihYU" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihYV" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihYW" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihYX" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="EpEP7iihYY" role="2Ry0An">
                  <property role="2Ry0Am" value="baseLanguage" />
                  <node concept="2Ry0Ak" id="EpEP7iihYZ" role="2Ry0An">
                    <property role="2Ry0Am" value="overloadedOperators" />
                    <node concept="2Ry0Ak" id="EpEP7iihZ0" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="EpEP7iihZ1" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.overloadedOperators.sandbox" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="o14$W8XJtb" role="3LF7KH">
          <node concept="2Ry0Ak" id="o14$W8XJt_" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="o14$W8XJtB" role="2Ry0An">
              <property role="2Ry0Am" value="baseLanguage" />
              <node concept="2Ry0Ak" id="o14$W8XJtD" role="2Ry0An">
                <property role="2Ry0Am" value="overloadedOperators" />
                <node concept="2Ry0Ak" id="o14$W8XJtF" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="o14$W8XJtH" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.overloadedOperators.sandbox" />
                    <node concept="2Ry0Ak" id="o14$W8XJtJ" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.overloadedOperators.sandbox.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="o14$W8XJtL" role="3bR37C">
          <node concept="3bR9La" id="o14$W8XJtM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQP9" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQPa" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQP2" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQP3" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQP4" role="2Ry0An">
                  <property role="2Ry0Am" value="baseLanguage" />
                  <node concept="2Ry0Ak" id="73GUf$umQP5" role="2Ry0An">
                    <property role="2Ry0Am" value="overloadedOperators" />
                    <node concept="2Ry0Ak" id="73GUf$umQP6" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="73GUf$umQP7" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.overloadedOperators.sandbox" />
                        <node concept="2Ry0Ak" id="73GUf$umQP8" role="2Ry0An">
                          <property role="2Ry0Am" value="jetbrains" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQPb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="yja7V_1HRV" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.generator.tests" />
        <property role="3LESm3" value="50fc24f9-2bc9-4702-84ed-7f00cd088aca" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihTr" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihTs" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihTt" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihTu" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihTv" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihTw" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihTx" role="2Ry0An">
                    <property role="2Ry0Am" value="generator.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="yja7V_1HRW" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiJml" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiJmq" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiJmv" role="2Ry0An">
                <property role="2Ry0Am" value="generator.test" />
                <node concept="2Ry0Ak" id="1VqvCtIiJm$" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.generator.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="yja7V_1HS9" role="3bR37C">
          <node concept="3bR9La" id="yja7V_1HSa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="yja7V_1HSd" role="3bR37C">
          <node concept="3bR9La" id="yja7V_1HSe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6aIAM_Qd5Fa" role="3bR37C">
          <node concept="3bR9La" id="6aIAM_Qd5Fb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6aIAM_Qd5ki" resolve="jetbrains.mps.lang.test.matcher" />
          </node>
        </node>
        <node concept="1SiIV0" id="1hpOr59hN_8" role="3bR37C">
          <node concept="3bR9La" id="1hpOr59hN_9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1SiIV0" id="37SPlFxo3y1" role="3bR37C">
          <node concept="3bR9La" id="37SPlFxo3y2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L6C" resolve="jetbrains.mps.lang.generator" />
          </node>
        </node>
        <node concept="3bR9La" id="7uEMFG4SGoe" role="3bR37C">
          <ref role="3bR37D" node="tvZ$I9VJxw" resolve="jetbrains.mps.generator.crossmodel.sandbox" />
        </node>
        <node concept="3bR9La" id="7uEMFG4SGry" role="3bR37C">
          <ref role="3bR37D" node="tvZ$I9VJ9X" resolve="jetbrains.mps.generator.test.crossmodel.entity" />
        </node>
        <node concept="3bR9La" id="1l1jHO6iBpB" role="3bR37C">
          <ref role="3bR37D" node="tvZ$I9VJIL" resolve="jetbrains.mps.generator.test.crossmodel.entity#5533782486491461718" />
        </node>
        <node concept="3bR9La" id="7uEMFG4SGuS" role="3bR37C">
          <ref role="3bR37D" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
        </node>
        <node concept="3bR9La" id="1l1jHO6iBiL" role="3bR37C">
          <ref role="3bR37D" node="tvZ$I9VJRe" resolve="jetbrains.mps.generator.test.crossmodel.property#5533782486491461721" />
        </node>
        <node concept="3bR9La" id="1l1jHO6iBmb" role="3bR37C">
          <ref role="3bR37D" node="tvZ$I9W3a2" resolve="jetbrains.mps.generator.test.crossmodel.property#g2" />
        </node>
        <node concept="3bR9La" id="txX2LH5ji9" role="3bR37C">
          <ref role="3bR37D" node="txX2LH5inW" resolve="jetbrains.mps.transformation.test.inputLang.generator01" />
        </node>
        <node concept="3bR9La" id="txX2LH5jiN" role="3bR37C">
          <ref role="3bR37D" node="txX2LH5it2" resolve="jetbrains.mps.transformation.test.inputLang.generator02" />
        </node>
        <node concept="3bR9La" id="4rYoPp$0rYb" role="3bR37C">
          <ref role="3bR37D" node="6saosjUVYH7" resolve="jetbrains.mps.transformation.test.inputLang.generator03" />
        </node>
        <node concept="3bR9La" id="4hXFDbLTyaB" role="3bR37C">
          <ref role="3bR37D" node="6PT59Za5Too" resolve="jetbrains.mps.transformation.test.inputLang.generator04" />
        </node>
        <node concept="3bR9La" id="4hXFDbLTyb0" role="3bR37C">
          <ref role="3bR37D" node="6PT59Za5TB9" resolve="jetbrains.mps.transformation.test.inputLang.generator05" />
        </node>
        <node concept="1SiIV0" id="1knX_y6AknA" role="3bR37C">
          <node concept="3bR9La" id="1knX_y6AknB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQPh" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQPi" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQPc" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQPd" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQPe" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQPf" role="2Ry0An">
                    <property role="2Ry0Am" value="generator.test" />
                    <node concept="2Ry0Ak" id="73GUf$umQPg" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQPj" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3NsKwMhtdki" role="3bR37C">
          <node concept="3bR9La" id="3NsKwMhtdkj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:rD7wKO6k$" resolve="MPS.Generator" />
          </node>
        </node>
        <node concept="1SiIV0" id="2y6n3$X7nw4" role="3bR37C">
          <node concept="3bR9La" id="2y6n3$X7nw5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2y6n3$X7nw6" role="3bR37C">
          <node concept="3bR9La" id="2y6n3$X7nw7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="txX2LH8uSq" role="3989C9">
      <property role="TrG5h" value="test-languages" />
      <node concept="1E1JtD" id="txX2LH5il6" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang" />
        <property role="3LESm3" value="ab0ae915-e3b5-4f35-b55a-c655d649a03c" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="txX2LH5il9" role="3LF7KH">
          <node concept="2Ry0Ak" id="txX2LH5imj" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="txX2LH5imo" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="txX2LH5imt" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="txX2LH5imw" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="txX2LH5im_" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLang" />
                    <node concept="2Ry0Ak" id="txX2LH5imE" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5ipq" role="3bR37C">
          <node concept="3bR9La" id="txX2LH5ipr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1BupzO" id="txX2LH5ipz" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="txX2LH5ip$" role="1HemKq">
            <node concept="55IIr" id="txX2LH5ips" role="3LXTmr">
              <node concept="2Ry0Ak" id="txX2LH5ipt" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="txX2LH5ipu" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="txX2LH5ipv" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="txX2LH5ipw" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="txX2LH5ipx" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLang" />
                        <node concept="2Ry0Ak" id="txX2LH5ipy" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="txX2LH5ip_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5ipA" role="3bR37C">
          <node concept="1Busua" id="txX2LH5ipB" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5ipC" role="3bR37C">
          <node concept="1Busua" id="txX2LH5ipD" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="txX2LH5ipE" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang#1195164860857" />
          <property role="3LESm3" value="45250695-332a-4a0e-94bc-014e09fa751d" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="txX2LH5ipF" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5ipG" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
            </node>
          </node>
          <node concept="1SiIV0" id="txX2LH5ipH" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5ipI" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1BupzO" id="txX2LH5ipS" role="3bR31x">
            <property role="3ZfqAx" value="generator/outputLang/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="txX2LH5ipT" role="1HemKq">
              <node concept="55IIr" id="txX2LH5ipJ" role="3LXTmr">
                <node concept="2Ry0Ak" id="txX2LH5ipK" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="txX2LH5ipL" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="txX2LH5ipM" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="txX2LH5ipN" role="2Ry0An">
                        <property role="2Ry0Am" value="test" />
                        <node concept="2Ry0Ak" id="txX2LH5ipO" role="2Ry0An">
                          <property role="2Ry0Am" value="inputLang" />
                          <node concept="2Ry0Ak" id="txX2LH5ipP" role="2Ry0An">
                            <property role="2Ry0Am" value="generator" />
                            <node concept="2Ry0Ak" id="txX2LH5ipQ" role="2Ry0An">
                              <property role="2Ry0Am" value="outputLang" />
                              <node concept="2Ry0Ak" id="txX2LH5ipR" role="2Ry0An">
                                <property role="2Ry0Am" value="template" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="txX2LH5ipU" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="txX2LH5ivv" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5ivw" role="1SiIV1">
              <ref role="3bR37D" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
            </node>
          </node>
          <node concept="1SiIV0" id="txX2LH5jfN" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5jfO" role="1SiIV1">
              <ref role="3bR37D" node="txX2LH5iBd" resolve="jetbrains.mps.transformation.test.outputLang" />
            </node>
          </node>
          <node concept="1SiIV0" id="6PT59Za5TiR" role="3bR37C">
            <node concept="3bR9La" id="6PT59Za5TiS" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="txX2LH5inW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang.generator01" />
        <property role="3LESm3" value="4fe4fded-2f16-4722-9b1a-9e7913da56cb" />
        <property role="ZpmtF" value="true" />
        <ref role="hH5Ss" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
        <node concept="55IIr" id="txX2LH5inZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="txX2LH5isA" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="txX2LH5isF" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="txX2LH5isN" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="txX2LH5isQ" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="txX2LH5isV" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLangGen1" />
                    <node concept="2Ry0Ak" id="txX2LH5it0" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.generator01.mpst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5ivE" role="3bR37C">
          <node concept="3bR9La" id="txX2LH5ivF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="txX2LH5ivN" role="3bR31x">
          <property role="3ZfqAx" value="templates" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="txX2LH5ivO" role="1HemKq">
            <node concept="55IIr" id="txX2LH5ivG" role="3LXTmr">
              <node concept="2Ry0Ak" id="txX2LH5ivH" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="txX2LH5ivI" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="txX2LH5ivJ" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="txX2LH5ivK" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="txX2LH5ivL" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLangGen1" />
                        <node concept="2Ry0Ak" id="txX2LH5ivM" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="txX2LH5ivP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="txX2LH5it2" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang.generator02" />
        <property role="3LESm3" value="0ff14688-a597-408c-970a-7bb088d60d4a" />
        <property role="ZpmtF" value="true" />
        <ref role="hH5Ss" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
        <node concept="55IIr" id="txX2LH5it3" role="3LF7KH">
          <node concept="2Ry0Ak" id="txX2LH5it4" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="txX2LH5it5" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="txX2LH5it6" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="txX2LH5it7" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="txX2LH5it8" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLangGen2" />
                    <node concept="2Ry0Ak" id="txX2LH5iva" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.generator02.mpst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5ivQ" role="3bR37C">
          <node concept="3bR9La" id="txX2LH5ivR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5ivS" role="3bR37C">
          <node concept="3bR9La" id="txX2LH5ivT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="txX2LH5iw1" role="3bR31x">
          <property role="3ZfqAx" value="templates" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="txX2LH5iw2" role="1HemKq">
            <node concept="55IIr" id="txX2LH5ivU" role="3LXTmr">
              <node concept="2Ry0Ak" id="txX2LH5ivV" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="txX2LH5ivW" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="txX2LH5ivX" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="txX2LH5ivY" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="txX2LH5ivZ" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLangGen2" />
                        <node concept="2Ry0Ak" id="txX2LH5iw0" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="txX2LH5iw3" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="6saosjUVYH7" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang.generator03" />
        <property role="3LESm3" value="189e6e80-a3d9-4506-91b4-7c8002bbeef4" />
        <property role="ZpmtF" value="true" />
        <ref role="hH5Ss" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
        <node concept="55IIr" id="6saosjUVYHa" role="3LF7KH">
          <node concept="2Ry0Ak" id="6saosjUVYKB" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="6saosjUVYKG" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="6saosjUVYKL" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="6saosjUVYKO" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="6saosjUVYKT" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLangGen3" />
                    <node concept="2Ry0Ak" id="6saosjUVYKY" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.generator03.mpst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6saosjUVYLE" role="3bR37C">
          <node concept="3bR9La" id="6saosjUVYLF" role="1SiIV1">
            <ref role="3bR37D" node="txX2LH5iBd" resolve="jetbrains.mps.transformation.test.outputLang" />
          </node>
        </node>
        <node concept="1BupzO" id="6saosjUVYLN" role="3bR31x">
          <property role="3ZfqAx" value="templates" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6saosjUVYLO" role="1HemKq">
            <node concept="55IIr" id="6saosjUVYLG" role="3LXTmr">
              <node concept="2Ry0Ak" id="6saosjUVYLH" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6saosjUVYLI" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="6saosjUVYLJ" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="6saosjUVYLK" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="6saosjUVYLL" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLangGen3" />
                        <node concept="2Ry0Ak" id="6saosjUVYLM" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6saosjUVYLP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="6PT59Za5Too" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang.generator04" />
        <property role="3LESm3" value="6e3ea6c0-1613-4430-8c64-995c8351a1bf" />
        <property role="ZpmtF" value="true" />
        <ref role="hH5Ss" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
        <node concept="55IIr" id="6PT59Za5TrY" role="3LF7KH">
          <node concept="2Ry0Ak" id="6PT59Za5TrZ" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="6PT59Za5Ts0" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="6PT59Za5Ts1" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="6PT59Za5Tsc" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="6PT59Za5TAV" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLangGen4" />
                    <node concept="2Ry0Ak" id="6PT59Za5TJn" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.generator04.mpst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6PT59Za5Tt7" role="3bR37C">
          <node concept="3bR9La" id="6PT59Za5Tt8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6PT59Za5Tt9" role="3bR37C">
          <node concept="3bR9La" id="6PT59Za5Tta" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="6PT59Za5Ttj" role="3bR31x">
          <property role="3ZfqAx" value="templates" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6PT59Za5TKj" role="1HemKq">
            <node concept="55IIr" id="6PT59Za5TKc" role="3LXTmr">
              <node concept="2Ry0Ak" id="6PT59Za5TKd" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6PT59Za5TKe" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="6PT59Za5TKf" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="6PT59Za5TKg" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="6PT59Za5TKh" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLangGen4" />
                        <node concept="2Ry0Ak" id="6PT59Za5TKi" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6PT59Za5TKk" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="6PT59Za5TB9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang.generator05" />
        <property role="3LESm3" value="273843fe-40bc-4b62-bb23-5190701dce0b" />
        <property role="ZpmtF" value="true" />
        <ref role="hH5Ss" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
        <node concept="55IIr" id="6PT59Za5TBa" role="3LF7KH">
          <node concept="2Ry0Ak" id="6PT59Za5TBb" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="6PT59Za5TBc" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="6PT59Za5TBd" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="6PT59Za5TBe" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="6PT59Za5TBf" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLangGen5" />
                    <node concept="2Ry0Ak" id="6PT59Za5TBg" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.generator05.mpst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6PT59Za5TBh" role="3bR37C">
          <node concept="3bR9La" id="6PT59Za5TBi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6PT59Za5TBj" role="3bR37C">
          <node concept="3bR9La" id="6PT59Za5TBk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="6PT59Za5TBl" role="3bR31x">
          <property role="3ZfqAx" value="templates" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6PT59Za5TKa" role="1HemKq">
            <node concept="55IIr" id="6PT59Za5TK3" role="3LXTmr">
              <node concept="2Ry0Ak" id="6PT59Za5TK4" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6PT59Za5TK5" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="6PT59Za5TK6" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="6PT59Za5TK7" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="6PT59Za5TK8" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLangGen5" />
                        <node concept="2Ry0Ak" id="6PT59Za5TK9" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6PT59Za5TKb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="txX2LH5iBd" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.outputLang" />
        <property role="3LESm3" value="157a9668-bf58-417b-893e-53d86388dc56" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="txX2LH5iBe" role="3LF7KH">
          <node concept="2Ry0Ak" id="txX2LH5iBf" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="txX2LH5iBg" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="txX2LH5iBh" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="txX2LH5iBi" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="txX2LH5iL4" role="2Ry0An">
                    <property role="2Ry0Am" value="outputLang" />
                    <node concept="2Ry0Ak" id="txX2LH5iMn" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.outputLang.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="txX2LH5iBn" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="txX2LH5iNa" role="1HemKq">
            <node concept="55IIr" id="txX2LH5iN3" role="3LXTmr">
              <node concept="2Ry0Ak" id="txX2LH5iN4" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="txX2LH5iN5" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="txX2LH5iN6" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="txX2LH5iN7" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="txX2LH5iN8" role="2Ry0An">
                        <property role="2Ry0Am" value="outputLang" />
                        <node concept="2Ry0Ak" id="txX2LH5iN9" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="txX2LH5iNb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5iBx" role="3bR37C">
          <node concept="1Busua" id="txX2LH5iBy" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="txX2LH5iBz" role="3bR37C">
          <node concept="1Busua" id="txX2LH5iB$" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="txX2LH5iB_" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.transformation.test.outputLang#1209603905948" />
          <property role="3LESm3" value="de2f9603-575d-4d84-b063-776b6d27a0b9" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="txX2LH5iBC" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5iBD" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1BupzO" id="txX2LH5iBE" role="3bR31x">
            <property role="3ZfqAx" value="generator/self/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="txX2LH5iNp" role="1HemKq">
              <node concept="55IIr" id="txX2LH5iNg" role="3LXTmr">
                <node concept="2Ry0Ak" id="txX2LH5iNh" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="txX2LH5iNi" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="txX2LH5iNj" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="txX2LH5iNk" role="2Ry0An">
                        <property role="2Ry0Am" value="test" />
                        <node concept="2Ry0Ak" id="txX2LH5iNl" role="2Ry0An">
                          <property role="2Ry0Am" value="outputLang" />
                          <node concept="2Ry0Ak" id="txX2LH5iNm" role="2Ry0An">
                            <property role="2Ry0Am" value="generator" />
                            <node concept="2Ry0Ak" id="txX2LH5iNn" role="2Ry0An">
                              <property role="2Ry0Am" value="self" />
                              <node concept="2Ry0Ak" id="txX2LH5iNo" role="2Ry0An">
                                <property role="2Ry0Am" value="template" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="txX2LH5iNq" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="txX2LH5iNc" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5iNd" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
            </node>
          </node>
          <node concept="1SiIV0" id="txX2LH5iNe" role="3bR37C">
            <node concept="3bR9La" id="txX2LH5iNf" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3yaq6Y8lnPp" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.traceInfo.testWeavingGenerated.data" />
        <property role="3LESm3" value="ce517356-fc9a-4e78-8606-6e7a36ff0671" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihFC" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihFD" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihFE" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihFF" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihFG" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="EpEP7iihFH" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="EpEP7iihFI" role="2Ry0An">
                    <property role="2Ry0Am" value="traceinfo" />
                    <node concept="2Ry0Ak" id="EpEP7iihFJ" role="2Ry0An">
                      <property role="2Ry0Am" value="testWeavingGenerated.data" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3yaq6Y8lnPs" role="3LF7KH">
          <node concept="2Ry0Ak" id="3yaq6Y8lnPA" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3yaq6Y8lnPC" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="3yaq6Y8lnPE" role="2Ry0An">
                <property role="2Ry0Am" value="traceinfo" />
                <node concept="2Ry0Ak" id="3yaq6Y8lnPG" role="2Ry0An">
                  <property role="2Ry0Am" value="testWeavingGenerated.data" />
                  <node concept="2Ry0Ak" id="3yaq6Y8lnPI" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.traceInfo.testWeavingGenerated.data.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="3yaq6Y8lnPY" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.traceInfo.testWeavingGenerated.data#6186432342008486849" />
          <property role="3LESm3" value="5cb70574-4ffb-4146-9211-dc924a83cfac" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="3612de_dEGw" role="3bR37C">
            <node concept="3bR9La" id="3612de_dEGx" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umQQF" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umQQG" role="1HemKq">
              <node concept="55IIr" id="73GUf$umQQ$" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umQQ_" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73GUf$umQQA" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="73GUf$umQQB" role="2Ry0An">
                      <property role="2Ry0Am" value="traceinfo" />
                      <node concept="2Ry0Ak" id="73GUf$umQQC" role="2Ry0An">
                        <property role="2Ry0Am" value="testWeavingGenerated.data" />
                        <node concept="2Ry0Ak" id="73GUf$umQQD" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umQQE" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umQQH" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2Ft10KpNiVO" role="3bR37C">
          <node concept="3bR9La" id="2Ft10KpNiVP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQQx" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQQy" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQQr" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQQs" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQQt" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umQQu" role="2Ry0An">
                    <property role="2Ry0Am" value="traceinfo" />
                    <node concept="2Ry0Ak" id="73GUf$umQQv" role="2Ry0An">
                      <property role="2Ry0Am" value="testWeavingGenerated.data" />
                      <node concept="2Ry0Ak" id="73GUf$umQQw" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQQz" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7M00clf_wNz" role="3bR37C">
          <node concept="Rbm2T" id="7M00clf_wN$" role="1SiIV1">
            <ref role="1E1Vl2" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3yaq6Y8lnQf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.traceInfo.testWeavingInterpreted.data" />
        <property role="3LESm3" value="ffafcf63-cbe6-4e5c-9717-541f01743ac7" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiii_" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiiiA" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiiiB" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiiiC" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiiiD" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="EpEP7iiiiE" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="EpEP7iiiiF" role="2Ry0An">
                    <property role="2Ry0Am" value="traceinfo" />
                    <node concept="2Ry0Ak" id="EpEP7iiiiG" role="2Ry0An">
                      <property role="2Ry0Am" value="testWeavingInterpreted.data" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3yaq6Y8lnQg" role="3LF7KH">
          <node concept="2Ry0Ak" id="3yaq6Y8lnQh" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3yaq6Y8lnQi" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="3yaq6Y8lnQj" role="2Ry0An">
                <property role="2Ry0Am" value="traceinfo" />
                <node concept="2Ry0Ak" id="3yaq6Y8lnQk" role="2Ry0An">
                  <property role="2Ry0Am" value="testWeavingInterpreted.data" />
                  <node concept="2Ry0Ak" id="3yaq6Y8lnQl" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.traceInfo.testWeavingInterpreted.data.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="3yaq6Y8lnQo" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.traceInfo.testWeavingInterpreted.data#2819311507031176971" />
          <property role="3LESm3" value="d087ec54-2b9f-4f04-98de-2d147f95ee15" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="3yaq6Y8lnRr" role="3bR37C">
            <node concept="3bR9La" id="3yaq6Y8lnRs" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umQQY" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umQQZ" role="1HemKq">
              <node concept="55IIr" id="73GUf$umQQR" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umQQS" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73GUf$umQQT" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="73GUf$umQQU" role="2Ry0An">
                      <property role="2Ry0Am" value="traceinfo" />
                      <node concept="2Ry0Ak" id="73GUf$umQQV" role="2Ry0An">
                        <property role="2Ry0Am" value="testWeavingInterpreted.data" />
                        <node concept="2Ry0Ak" id="73GUf$umQQW" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umQQX" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umQR0" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQQO" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQQP" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQQI" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQQJ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQQK" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umQQL" role="2Ry0An">
                    <property role="2Ry0Am" value="traceinfo" />
                    <node concept="2Ry0Ak" id="73GUf$umQQM" role="2Ry0An">
                      <property role="2Ry0Am" value="testWeavingInterpreted.data" />
                      <node concept="2Ry0Ak" id="73GUf$umQQN" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQQQ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7M00clf_wNM" role="3bR37C">
          <node concept="Rbm2T" id="7M00clf_wNN" role="1SiIV1">
            <ref role="1E1Vl2" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="tvZ$I9VJ41" role="3989C9">
      <property role="TrG5h" value="crossmodel-sample" />
      <node concept="1E1JtD" id="tvZ$I9VJ9X" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.generator.test.crossmodel.entity" />
        <property role="3LESm3" value="4d14758c-3ecb-486d-b8c8-ea5beb8ae408" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="tvZ$I9VJ9Y" role="3LF7KH">
          <node concept="2Ry0Ak" id="tvZ$I9VJck" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="tvZ$I9VJeD" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="tvZ$I9VJge" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="tvZ$I9VJhN" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="tvZ$I9VJjo" role="2Ry0An">
                    <property role="2Ry0Am" value="entity" />
                    <node concept="2Ry0Ak" id="tvZ$I9VJkX" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.generator.test.crossmodel.entity.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="tvZ$I9VJIL" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.generator.test.crossmodel.entity#5533782486491461718" />
          <property role="3LESm3" value="0748f69c-0f19-4fe4-84a5-b51ed82f0548" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="tvZ$I9VJLd" role="3bR37C">
            <node concept="3bR9La" id="tvZ$I9VJLe" role="1SiIV1">
              <ref role="3bR37D" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
            </node>
          </node>
          <node concept="1SiIV0" id="tvZ$I9VK7r" role="3bR37C">
            <node concept="3bR9La" id="tvZ$I9VK7s" role="1SiIV1">
              <ref role="3bR37D" node="tvZ$I9VJRe" resolve="jetbrains.mps.generator.test.crossmodel.property#5533782486491461721" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umQPA" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umQPB" role="1HemKq">
              <node concept="55IIr" id="73GUf$umQPu" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umQPv" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73GUf$umQPw" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="73GUf$umQPx" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="73GUf$umQPy" role="2Ry0An">
                        <property role="2Ry0Am" value="test" />
                        <node concept="2Ry0Ak" id="73GUf$umQPz" role="2Ry0An">
                          <property role="2Ry0Am" value="entity" />
                          <node concept="2Ry0Ak" id="73GUf$umQP$" role="2Ry0An">
                            <property role="2Ry0Am" value="generator" />
                            <node concept="2Ry0Ak" id="73GUf$umQP_" role="2Ry0An">
                              <property role="2Ry0Am" value="template" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umQPC" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQPr" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQPs" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQPk" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQPl" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQPm" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umQPn" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="73GUf$umQPo" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="73GUf$umQPp" role="2Ry0An">
                        <property role="2Ry0Am" value="entity" />
                        <node concept="2Ry0Ak" id="73GUf$umQPq" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQPt" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7M00clf_wO2" role="3bR37C">
          <node concept="Rbm2T" id="7M00clf_wO3" role="1SiIV1">
            <ref role="1E1Vl2" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="tvZ$I9VJov" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.generator.test.crossmodel.property" />
        <property role="3LESm3" value="dc1cc948-6f43-4687-90cb-17dd5cb27219" />
        <property role="ZpmtF" value="true" />
        <node concept="t5LP3" id="7uEMFG4UURK" role="t5LPa">
          <ref role="t5LP0" node="tvZ$I9W3a2" resolve="jetbrains.mps.generator.test.crossmodel.property#g2" />
        </node>
        <node concept="55IIr" id="tvZ$I9VJq7" role="3LF7KH">
          <node concept="2Ry0Ak" id="tvZ$I9VJq8" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="tvZ$I9VJq9" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="tvZ$I9VJqa" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="tvZ$I9VJqb" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="tvZ$I9VJu5" role="2Ry0An">
                    <property role="2Ry0Am" value="property" />
                    <node concept="2Ry0Ak" id="tvZ$I9VJvE" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.generator.test.crossmodel.property.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="tvZ$I9VJRe" role="1TViLv">
          <property role="BnDLt" value="false" />
          <property role="TrG5h" value="jetbrains.mps.generator.test.crossmodel.property#5533782486491461721" />
          <property role="3LESm3" value="708caccd-8eb1-451b-a7a7-f8ae5e214206" />
          <property role="ZpmtF" value="true" />
          <node concept="55IIr" id="tvZ$I9VJRf" role="3LF7KH" />
          <node concept="1SiIV0" id="2mQTeHwHl_n" role="3bR37C">
            <node concept="3bR9La" id="2mQTeHwHl_o" role="1SiIV1">
              <ref role="3bR37D" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
            </node>
          </node>
          <node concept="1SiIV0" id="2mQTeHwHl_p" role="3bR37C">
            <node concept="3bR9La" id="2mQTeHwHl_q" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umQPV" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umQPW" role="1HemKq">
              <node concept="55IIr" id="73GUf$umQPN" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umQPO" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73GUf$umQPP" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="73GUf$umQPQ" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="73GUf$umQPR" role="2Ry0An">
                        <property role="2Ry0Am" value="test" />
                        <node concept="2Ry0Ak" id="73GUf$umQPS" role="2Ry0An">
                          <property role="2Ry0Am" value="property" />
                          <node concept="2Ry0Ak" id="73GUf$umQPT" role="2Ry0An">
                            <property role="2Ry0Am" value="generator" />
                            <node concept="2Ry0Ak" id="73GUf$umQPU" role="2Ry0An">
                              <property role="2Ry0Am" value="template" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umQPX" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQPK" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQPL" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQPD" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQPE" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQPF" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umQPG" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="73GUf$umQPH" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="73GUf$umQPI" role="2Ry0An">
                        <property role="2Ry0Am" value="property" />
                        <node concept="2Ry0Ak" id="73GUf$umQPJ" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQPM" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7M00clf_wOj" role="3bR37C">
          <node concept="Rbm2T" id="7M00clf_wOk" role="1SiIV1">
            <ref role="1E1Vl2" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="tvZ$I9VJxw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.generator.crossmodel.sandbox" />
        <property role="3LESm3" value="381c65cf-580d-4518-a354-e370843af551" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="tvZ$I9VJyA" role="3LF7KH">
          <node concept="2Ry0Ak" id="tvZ$I9VJyB" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="tvZ$I9VJyC" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="tvZ$I9VJyD" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="tvZ$I9VJyE" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="tvZ$I9VJBk" role="2Ry0An">
                    <property role="2Ry0Am" value="crossmodel" />
                    <node concept="2Ry0Ak" id="tvZ$I9VJCT" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.generator.crossmodel.sandbox.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="tvZ$I9VJL_" role="3bR37C">
          <node concept="3bR9La" id="tvZ$I9VJLA" role="1SiIV1">
            <ref role="3bR37D" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
          </node>
        </node>
        <node concept="1SiIV0" id="tvZ$I9VJLB" role="3bR37C">
          <node concept="3bR9La" id="tvZ$I9VJLC" role="1SiIV1">
            <ref role="3bR37D" node="tvZ$I9VJ9X" resolve="jetbrains.mps.generator.test.crossmodel.entity" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQQ5" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQQ6" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQPY" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQPZ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQQ0" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umQQ1" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="73GUf$umQQ2" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="73GUf$umQQ3" role="2Ry0An">
                        <property role="2Ry0Am" value="crossmodel" />
                        <node concept="2Ry0Ak" id="73GUf$umQQ4" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQQ7" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="tvZ$I9W3a2" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.generator.test.crossmodel.property#g2" />
        <property role="3LESm3" value="0748f69c-0123-4fe4-84a5-b51ed82f0548" />
        <property role="ZpmtF" value="true" />
        <ref role="hH5Ss" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
        <node concept="55IIr" id="tvZ$I9W3a5" role="3LF7KH">
          <node concept="2Ry0Ak" id="2mQTeHwBJyg" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="2mQTeHwBJ_W" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="2mQTeHwBJDC" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="2mQTeHwBJES" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="2mQTeHwBJUF" role="2Ry0An">
                    <property role="2Ry0Am" value="property" />
                    <node concept="2Ry0Ak" id="2mQTeHwBJXa" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.generator.test.crossmodel.property.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQQg" role="3bR31x">
          <property role="3ZfqAx" value="gen2/models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQQh" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQQ8" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQQ9" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73GUf$umQQa" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="73GUf$umQQb" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="73GUf$umQQc" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="73GUf$umQQd" role="2Ry0An">
                        <property role="2Ry0Am" value="property" />
                        <node concept="2Ry0Ak" id="73GUf$umQQe" role="2Ry0An">
                          <property role="2Ry0Am" value="gen2" />
                          <node concept="2Ry0Ak" id="73GUf$umQQf" role="2Ry0An">
                            <property role="2Ry0Am" value="models" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQQi" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="3yaq6Y8lnOk" role="3989C9">
      <property role="TrG5h" value="tracemacro-tests" />
      <node concept="1E1JtA" id="3yaq6Y8lnOM" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.traceInfo.testWeaving" />
        <property role="3LESm3" value="dc080be0-da6e-4885-aed0-7d999c120619" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihWw" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihWx" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihWy" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihWz" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihW$" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihW_" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihWA" role="2Ry0An">
                    <property role="2Ry0Am" value="traceInfo.testWeaving" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3yaq6Y8lnON" role="3LF7KH">
          <node concept="2Ry0Ak" id="1VqvCtIiJMm" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1VqvCtIiJMr" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1VqvCtIiJMw" role="2Ry0An">
                <property role="2Ry0Am" value="traceInfo.testWeaving" />
                <node concept="2Ry0Ak" id="1VqvCtIiJNb" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.traceInfo.testWeaving.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3yaq6Y8lnRc" role="3bR37C">
          <node concept="3bR9La" id="3yaq6Y8lnRd" role="1SiIV1">
            <ref role="3bR37D" node="3yaq6Y8lnQf" resolve="jetbrains.mps.traceInfo.testWeavingInterpreted.data" />
          </node>
        </node>
        <node concept="1SiIV0" id="3yaq6Y8lo_C" role="3bR37C">
          <node concept="3bR9La" id="3yaq6Y8lo_D" role="1SiIV1">
            <ref role="3bR37D" node="3yaq6Y8lnPp" resolve="jetbrains.mps.traceInfo.testWeavingGenerated.data" />
          </node>
        </node>
        <node concept="1SiIV0" id="3yaq6Y8lo_G" role="3bR37C">
          <node concept="3bR9La" id="3yaq6Y8lo_H" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="42TXcA3Nc_w" role="3bR37C">
          <node concept="3bR9La" id="42TXcA3Nc_x" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="42TXcA3Nc_y" role="3bR37C">
          <node concept="3bR9La" id="42TXcA3Nc_z" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQQo" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQQp" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQQj" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQQk" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQQl" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQQm" role="2Ry0An">
                    <property role="2Ry0Am" value="traceInfo.testWeaving" />
                    <node concept="2Ry0Ak" id="73GUf$umQQn" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQQq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5kOge16AviK" role="3989C9">
      <property role="TrG5h" value="xmodel-tests" />
      <node concept="1E1JtA" id="5kOge16AvnT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.generator.xmodel.build.test" />
        <property role="3LESm3" value="4fd1c6b9-3b55-4e17-938e-d936333af666" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii7I" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii7J" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii7K" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii7L" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii7M" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii7N" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iii7O" role="2Ry0An">
                    <property role="2Ry0Am" value="xmodel.build" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5kOge16AvnU" role="3LF7KH">
          <node concept="2Ry0Ak" id="5kOge16Avq1" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5kOge16AvsM" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="5kOge16AvzJ" role="2Ry0An">
                <property role="2Ry0Am" value="xmodel.build" />
                <node concept="2Ry0Ak" id="5kOge16Av_a" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.generator.xmodel.build.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5kOge16Av_R" role="3bR37C">
          <node concept="3bR9La" id="5kOge16Av_S" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qo" resolve="jetbrains.mps.execution.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="5kOge16Av_T" role="3bR37C">
          <node concept="3bR9La" id="5kOge16Av_U" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5kOge16Av_V" role="3bR37C">
          <node concept="3bR9La" id="5kOge16Av_W" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5kOge16Av_Z" role="3bR37C">
          <node concept="3bR9La" id="5kOge16AvA0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="5kOge16AvA1" role="3bR37C">
          <node concept="3bR9La" id="5kOge16AvA2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xa9wY2vhaI" resolve="jetbrains.mps.ant.execution" />
          </node>
        </node>
        <node concept="1SiIV0" id="5kOge16AvA3" role="3bR37C">
          <node concept="3bR9La" id="5kOge16AvA4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="1D4tfYtj3Di" role="3bR37C">
          <node concept="3bR9La" id="1D4tfYtj3Dj" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQR6" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQR7" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQR1" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQR2" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQR3" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umQR4" role="2Ry0An">
                    <property role="2Ry0Am" value="xmodel.build" />
                    <node concept="2Ry0Ak" id="73GUf$umQR5" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQR8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="yja7V_1HHX" role="auvoZ">
      <node concept="2Ry0Ak" id="yja7V_1HHY" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="yja7V_1HHZ" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="yja7V_1HI0" role="1l3spN">
      <node concept="398223" id="3yaq6Y8lnS2" role="39821P">
        <node concept="3_J27D" id="3yaq6Y8lnS4" role="Nbhlr">
          <node concept="3Mxwew" id="3yaq6Y8lnSc" role="3MwsjC">
            <property role="3MwjfP" value="generator" />
          </node>
        </node>
        <node concept="L2wRC" id="yja7V_1JuM" role="39821P">
          <ref role="L2wRA" node="yja7V_1HRV" resolve="jetbrains.mps.generator.tests" />
        </node>
        <node concept="L2wRC" id="o14$W8XMvG" role="39821P">
          <ref role="L2wRA" node="o14$W8XJt9" resolve="jetbrains.mps.baseLanguage.overloadedOperators.sandbox" />
        </node>
        <node concept="L2wRC" id="txX2LH5nMf" role="39821P">
          <ref role="L2wRA" node="txX2LH5il6" resolve="jetbrains.mps.transformation.test.inputLang" />
        </node>
        <node concept="L2wRC" id="txX2LH5nMp" role="39821P">
          <ref role="L2wRA" node="txX2LH5iBd" resolve="jetbrains.mps.transformation.test.outputLang" />
        </node>
        <node concept="L2wRC" id="txX2LH5nM_" role="39821P">
          <ref role="L2wRA" node="txX2LH5inW" resolve="jetbrains.mps.transformation.test.inputLang.generator01" />
        </node>
        <node concept="L2wRC" id="6PT59Za5TMG" role="39821P">
          <ref role="L2wRA" node="txX2LH5it2" resolve="jetbrains.mps.transformation.test.inputLang.generator02" />
        </node>
        <node concept="L2wRC" id="4rYoPp$0rYE" role="39821P">
          <ref role="L2wRA" node="6saosjUVYH7" resolve="jetbrains.mps.transformation.test.inputLang.generator03" />
        </node>
        <node concept="L2wRC" id="6PT59Za5TMU" role="39821P">
          <ref role="L2wRA" node="6PT59Za5Too" resolve="jetbrains.mps.transformation.test.inputLang.generator04" />
        </node>
        <node concept="L2wRC" id="6GXnkCJW89l" role="39821P">
          <ref role="L2wRA" node="6PT59Za5TB9" resolve="jetbrains.mps.transformation.test.inputLang.generator05" />
        </node>
      </node>
      <node concept="398223" id="3yaq6Y8lnSw" role="39821P">
        <node concept="3_J27D" id="3yaq6Y8lnSy" role="Nbhlr">
          <node concept="3Mxwew" id="3yaq6Y8lnSH" role="3MwsjC">
            <property role="3MwjfP" value="traceMacro" />
          </node>
        </node>
        <node concept="L2wRC" id="3yaq6Y8lnRM" role="39821P">
          <ref role="L2wRA" node="3yaq6Y8lnOM" resolve="jetbrains.mps.traceInfo.testWeaving" />
        </node>
        <node concept="L2wRC" id="3yaq6Y8lnRR" role="39821P">
          <ref role="L2wRA" node="3yaq6Y8lnPp" resolve="jetbrains.mps.traceInfo.testWeavingGenerated.data" />
        </node>
        <node concept="L2wRC" id="3yaq6Y8lnSV" role="39821P">
          <ref role="L2wRA" node="3yaq6Y8lnQf" resolve="jetbrains.mps.traceInfo.testWeavingInterpreted.data" />
        </node>
      </node>
      <node concept="398223" id="tvZ$I9VJGG" role="39821P">
        <node concept="3_J27D" id="tvZ$I9VJGI" role="Nbhlr">
          <node concept="3Mxwew" id="tvZ$I9VJHL" role="3MwsjC">
            <property role="3MwjfP" value="crossmodel" />
          </node>
        </node>
        <node concept="L2wRC" id="tvZ$I9VJHN" role="39821P">
          <ref role="L2wRA" node="tvZ$I9VJ9X" resolve="jetbrains.mps.generator.test.crossmodel.entity" />
        </node>
        <node concept="L2wRC" id="2rr9SDxzmhy" role="39821P">
          <ref role="L2wRA" node="tvZ$I9VJov" resolve="jetbrains.mps.generator.test.crossmodel.property" />
        </node>
        <node concept="L2wRC" id="2rr9SDxzmm1" role="39821P">
          <ref role="L2wRA" node="tvZ$I9VJxw" resolve="jetbrains.mps.generator.crossmodel.sandbox" />
        </node>
      </node>
      <node concept="398223" id="5kOge16AvCb" role="39821P">
        <node concept="3_J27D" id="5kOge16AvCd" role="Nbhlr">
          <node concept="3Mxwew" id="5kOge16AvDe" role="3MwsjC">
            <property role="3MwjfP" value="xmodel-tests" />
          </node>
        </node>
        <node concept="L2wRC" id="5kOge16AvDg" role="39821P">
          <ref role="L2wRA" node="5kOge16AvnT" resolve="jetbrains.mps.generator.xmodel.build.test" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="yja7V_1HI4" role="10PD9s" />
    <node concept="3b7kt6" id="yja7V_1HI5" role="10PD9s" />
    <node concept="1gjT0q" id="yja7V_1HI6" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHO8h" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHO8i" role="398pKh">
        <ref role="398BVh" node="yja7V_1HGQ" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHO8j" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHO8k" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHO8l" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="yja7V_1MyI">
    <property role="TrG5h" value="mpsJava" />
    <property role="turDy" value="mpsJava.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="yja7V_1MyJ" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="yja7V_1MyK" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="yja7V_1MyL" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="yja7V_1MyM" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="yja7V_1MyN" role="398pKh">
        <ref role="398BVh" node="yja7V_1MyJ" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="yja7V_1MyO" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="yja7V_1MyP" role="13uUGP">
        <ref role="398BVh" node="yja7V_1MyM" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="yja7V_1MyQ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="yja7V_1MyR" role="2JcizS">
        <ref role="398BVh" node="yja7V_1MyJ" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2pZ8abj78oI" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6WtY9M1bDN0" resolve="mpsJava" />
    </node>
    <node concept="22LTRH" id="yja7V_1MyS" role="1hWBAP">
      <property role="TrG5h" value="java" />
      <node concept="24cAiW" id="5I1s5NvQ4T0" role="24cAkG">
        <node concept="24YFd4" id="7CxlxzFvXqH" role="24YFd7">
          <ref role="24YFd5" to="ffeo:6WtY9M1bDO_" resolve="jetbrains.mps.ide.java" />
        </node>
        <node concept="24YFd4" id="5ziJCXb$ysL" role="24YFd7">
          <ref role="24YFd5" to="ffeo:5ziJCXbfbGU" resolve="intellij.structureView.plugin" />
        </node>
        <node concept="NbPM2" id="33YWcaLmKPH" role="XX84c">
          <node concept="3Mxwew" id="33YWcaLmKPG" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="372aBDf0kSO" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSP" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="PTnqpvDqSS" role="22LTRK">
        <ref role="22LTRG" node="yja7V_1MyU" resolve="java-tests" />
      </node>
    </node>
    <node concept="2G$12M" id="yja7V_1MyU" role="3989C9">
      <property role="TrG5h" value="java-tests" />
      <node concept="1E1JtA" id="yja7V_1TlS" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.ide.java.tests" />
        <property role="3LESm3" value="c3786d2b-aba2-45e5-8de0-1124fd14259b" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihYv" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihYw" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihYx" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihYy" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihYz" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iihY$" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-java" />
                  <node concept="2Ry0Ak" id="2xKmvAOQgsW" role="2Ry0An">
                    <property role="2Ry0Am" value="workbench" />
                    <node concept="2Ry0Ak" id="2xKmvAOQgsX" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="2xKmvAOQgsY" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.ide.java.tests" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="yja7V_1TlT" role="3LF7KH">
          <node concept="2Ry0Ak" id="yja7V_1TlW" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="7cQXQsOS40H" role="2Ry0An">
              <property role="2Ry0Am" value="mps-java" />
              <node concept="2Ry0Ak" id="2xKmvAOQgt3" role="2Ry0An">
                <property role="2Ry0Am" value="workbench" />
                <node concept="2Ry0Ak" id="2xKmvAOQgt4" role="2Ry0An">
                  <property role="2Ry0Am" value="tests" />
                  <node concept="2Ry0Ak" id="2xKmvAOQgt5" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.ide.java.tests" />
                    <node concept="2Ry0Ak" id="2xKmvAOQgt6" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.ide.java.tests.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7cQXQsOS6rm" role="3bR37C">
          <node concept="3bR9La" id="7cQXQsOS6rn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7cQXQsOS6rq" role="3bR37C">
          <node concept="3bR9La" id="7cQXQsOS6rr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7cQXQsOS6r$" role="3bR37C">
          <node concept="3bR9La" id="7cQXQsOS6r_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7cQXQsOS6rC" role="3bR37C">
          <node concept="3bR9La" id="7cQXQsOS6rD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7cQXQsOS6rE" role="3bR37C">
          <node concept="3bR9La" id="7cQXQsOS6rF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="53DzIfoq79O" role="3bR37C">
          <node concept="3bR9La" id="53DzIfoq79P" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiHrmy" resolve="jetbrains.mps.java.stub" />
          </node>
        </node>
        <node concept="1SiIV0" id="6aIAM_Qd5DZ" role="3bR37C">
          <node concept="3bR9La" id="6aIAM_Qd5E0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6aIAM_Qd5ki" resolve="jetbrains.mps.lang.test.matcher" />
          </node>
        </node>
        <node concept="1SiIV0" id="68ZF3WBMA5B" role="3bR37C">
          <node concept="3bR9La" id="68ZF3WBMA5C" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="2xKmvAOQgtP" role="3bR37C">
          <node concept="3bR9La" id="2xKmvAOQgtQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2ucthr8W_1x" resolve="jetbrains.mps.java.core" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQJQ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQJR" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQJJ" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQJK" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umQJL" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-java" />
                  <node concept="2Ry0Ak" id="73GUf$umQJM" role="2Ry0An">
                    <property role="2Ry0Am" value="workbench" />
                    <node concept="2Ry0Ak" id="73GUf$umQJN" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="73GUf$umQJO" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.ide.java.tests" />
                        <node concept="2Ry0Ak" id="73GUf$umQJP" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQJS" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1l2hcqQMFz8" role="3bR37C">
          <node concept="3bR9La" id="1l2hcqQMFz9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="1SiIV0" id="3NsKwMhtdRv" role="3bR37C">
          <node concept="3bR9La" id="3NsKwMhtdRw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:rD7wKO5Iy" resolve="MPS.TextGen" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4LMS1PLaRBc" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.ide.java.testMaterial" />
        <property role="3LESm3" value="49166c31-952a-46f6-8970-ea45964379d0" />
        <property role="ZpmtF" value="true" />
        <property role="3vZFNd" value="3kCd1ud3JDD/compile_ext" />
        <node concept="3rtmxn" id="EpEP7iiicb" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiicc" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiicd" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiice" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiicf" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iiicg" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-java" />
                  <node concept="2Ry0Ak" id="2xKmvAOQgtc" role="2Ry0An">
                    <property role="2Ry0Am" value="workbench" />
                    <node concept="2Ry0Ak" id="2xKmvAOQgtd" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="2xKmvAOQgte" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.ide.java.testMaterial" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4LMS1PLaRBf" role="3LF7KH">
          <node concept="2Ry0Ak" id="4LMS1PLaRBJ" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="4LMS1PLaRBM" role="2Ry0An">
              <property role="2Ry0Am" value="mps-java" />
              <node concept="2Ry0Ak" id="2xKmvAOQgtj" role="2Ry0An">
                <property role="2Ry0Am" value="workbench" />
                <node concept="2Ry0Ak" id="2xKmvAOQgtk" role="2Ry0An">
                  <property role="2Ry0Am" value="tests" />
                  <node concept="2Ry0Ak" id="2xKmvAOQgtl" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.ide.java.testMaterial" />
                    <node concept="2Ry0Ak" id="2xKmvAOQgtm" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.ide.java.testMaterial.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4LMS1PLaRCu" role="3bR37C">
          <node concept="3bR9La" id="4LMS1PLaRCv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="4LMS1PLaRCw" role="3bR37C">
          <node concept="3bR9La" id="4LMS1PLaRCx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4LMS1PLaRCy" role="3bR37C">
          <node concept="3bR9La" id="4LMS1PLaRCz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQK0" role="3bR31x">
          <property role="3ZfqAx" value="java" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQK1" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQJT" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQJU" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umQJV" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-java" />
                  <node concept="2Ry0Ak" id="73GUf$umQJW" role="2Ry0An">
                    <property role="2Ry0Am" value="workbench" />
                    <node concept="2Ry0Ak" id="73GUf$umQJX" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="73GUf$umQJY" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.ide.java.testMaterial" />
                        <node concept="2Ry0Ak" id="73GUf$umQJZ" role="2Ry0An">
                          <property role="2Ry0Am" value="java" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQK2" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="3NsKwMhtdRQ" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3NsKwMhtdRR" role="1HemKq">
            <node concept="55IIr" id="3NsKwMhtdRJ" role="3LXTmr">
              <node concept="2Ry0Ak" id="3NsKwMhtdRK" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="3NsKwMhtdRL" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-java" />
                  <node concept="2Ry0Ak" id="3NsKwMhtdRM" role="2Ry0An">
                    <property role="2Ry0Am" value="workbench" />
                    <node concept="2Ry0Ak" id="3NsKwMhtdRN" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="3NsKwMhtdRO" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.ide.java.testMaterial" />
                        <node concept="2Ry0Ak" id="3NsKwMhtdRP" role="2Ry0An">
                          <property role="2Ry0Am" value="jetbrains" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3NsKwMhtdRS" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="yja7V_1Mz9" role="auvoZ">
      <node concept="2Ry0Ak" id="yja7V_1Mza" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="yja7V_1Mzb" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="yja7V_1Mzc" role="1l3spN">
      <node concept="L2wRC" id="7cQXQsOS7HS" role="39821P">
        <ref role="L2wRA" node="yja7V_1TlS" resolve="jetbrains.mps.ide.java.tests" />
      </node>
      <node concept="L2wRC" id="4LMS1PLaUog" role="39821P">
        <property role="3PtdQa" value="true" />
        <ref role="L2wRA" node="4LMS1PLaRBc" resolve="jetbrains.mps.ide.java.testMaterial" />
        <node concept="3PtdJl" id="3EvxwykF4_y" role="3PtdQn">
          <node concept="398223" id="3EvxwykF4_$" role="39821P">
            <node concept="3_J27D" id="3EvxwykF4__" role="Nbhlr">
              <node concept="3Mxwew" id="3EvxwykF4_C" role="3MwsjC">
                <property role="3MwjfP" value="module" />
              </node>
            </node>
            <node concept="2HvfSZ" id="2Wk1xJ4gDSu" role="39821P">
              <node concept="55IIr" id="EpEP7hk8Sy" role="2HvfZ0">
                <node concept="2Ry0Ak" id="3EvxwykF4ZG" role="iGT6I">
                  <property role="2Ry0Am" value="plugins" />
                  <node concept="2Ry0Ak" id="3EvxwykF4ZL" role="2Ry0An">
                    <property role="2Ry0Am" value="mps-java" />
                    <node concept="2Ry0Ak" id="3EvxwykF4ZQ" role="2Ry0An">
                      <property role="2Ry0Am" value="workbench" />
                      <node concept="2Ry0Ak" id="3EvxwykF4ZV" role="2Ry0An">
                        <property role="2Ry0Am" value="tests" />
                        <node concept="2Ry0Ak" id="3EvxwykF500" role="2Ry0An">
                          <property role="2Ry0Am" value="jetbrains.mps.ide.java.testMaterial" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3LWZYx" id="3EvxwykHSOt" role="2HvfZ1">
                <property role="3LWZYw" value="resources/" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="yja7V_1Mze" role="10PD9s" />
    <node concept="3b7kt6" id="yja7V_1Mzf" role="10PD9s" />
    <node concept="1gjT0q" id="yja7V_1Mzg" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHPhL" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPhM" role="398pKh">
        <ref role="398BVh" node="yja7V_1MyJ" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPhN" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPhO" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPhP" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="3yaq6Y8lhnD">
    <property role="TrG5h" value="mpsSModel" />
    <property role="turDy" value="mpsSModel.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="3yaq6Y8lhnE" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="3yaq6Y8lhnF" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="3yaq6Y8lhnG" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="3yaq6Y8lhnH" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="3yaq6Y8lhnI" role="398pKh">
        <ref role="398BVh" node="3yaq6Y8lhnE" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="3yaq6Y8lhnJ" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="3yaq6Y8lhnK" role="13uUGP">
        <ref role="398BVh" node="3yaq6Y8lhnH" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3yaq6Y8lhnL" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="3yaq6Y8lhnM" role="2JcizS">
        <ref role="398BVh" node="3yaq6Y8lhnE" resolve="mps_home" />
      </node>
    </node>
    <node concept="22LTRH" id="3yaq6Y8lhnN" role="1hWBAP">
      <property role="TrG5h" value="smodel" />
      <node concept="24cAiW" id="5I1s5NvQ4T1" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSQ" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSR" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="3_1qLajoFoI" role="22LTRK">
        <ref role="22LTRG" node="4Etbw8EUKkn" resolve="smodel" />
      </node>
    </node>
    <node concept="2G$12M" id="4Etbw8EUKkn" role="3989C9">
      <property role="TrG5h" value="smodel" />
      <node concept="1E1JtA" id="3_1qLajoFfI" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.smodel.test" />
        <property role="3LESm3" value="d2213aeb-6827-43e6-8179-d5886cfd0bb6" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihNq" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihNr" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihNs" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihNt" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihNu" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iihNv" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-testing" />
                  <node concept="2Ry0Ak" id="EpEP7iihNw" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="EpEP7iihNy" role="2Ry0An">
                      <property role="2Ry0Am" value="smodelTests" />
                      <node concept="2Ry0Ak" id="EpEP7iihNz" role="2Ry0An">
                        <property role="2Ry0Am" value="solutions" />
                        <node concept="2Ry0Ak" id="EpEP7iihN$" role="2Ry0An">
                          <property role="2Ry0Am" value="jetbrains.mps.smodel.test" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3_1qLajoFfJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="3_1qLajoFfO" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="3_1qLajoFfQ" role="2Ry0An">
              <property role="2Ry0Am" value="mps-testing" />
              <node concept="2Ry0Ak" id="3_1qLajoFfS" role="2Ry0An">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3_1qLajoFfW" role="2Ry0An">
                  <property role="2Ry0Am" value="smodelTests" />
                  <node concept="2Ry0Ak" id="3_1qLajoFfY" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="3_1qLajoFg0" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.smodel.test" />
                      <node concept="2Ry0Ak" id="3_1qLajoFg2" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.smodel.test.msd" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3_1qLajoFgc" role="3bR37C">
          <node concept="3bR9La" id="3_1qLajoFgd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU2c" resolve="jetbrains.mps.lang.smodelTests" />
          </node>
        </node>
        <node concept="1SiIV0" id="2IGzuM5TV6k" role="3bR37C">
          <node concept="3bR9La" id="2IGzuM5TV6l" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5D0hZ0bg4mc" role="3bR37C">
          <node concept="3bR9La" id="5D0hZ0bg4md" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="jWvgfwho9L" role="3bR37C">
          <node concept="3bR9La" id="jWvgfwho9M" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="jWvgfwho9N" role="3bR37C">
          <node concept="3bR9La" id="jWvgfwho9O" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="4K12N3pRIQL" role="3bR37C">
          <node concept="3bR9La" id="4K12N3pRIQM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Ft10KpNiXl" role="3bR37C">
          <node concept="3bR9La" id="2Ft10KpNiXm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zRZOfVo375" role="3bR37C">
          <node concept="3bR9La" id="5zRZOfVo376" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zRZOfVo377" role="3bR37C">
          <node concept="3bR9La" id="5zRZOfVo378" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5zRZOfVo379" role="3bR37C">
          <node concept="3bR9La" id="5zRZOfVo37a" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQFx" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQFy" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQFo" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQFp" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umQFq" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-testing" />
                  <node concept="2Ry0Ak" id="73GUf$umQFr" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73GUf$umQFt" role="2Ry0An">
                      <property role="2Ry0Am" value="smodelTests" />
                      <node concept="2Ry0Ak" id="73GUf$umQFu" role="2Ry0An">
                        <property role="2Ry0Am" value="solutions" />
                        <node concept="2Ry0Ak" id="73GUf$umQFv" role="2Ry0An">
                          <property role="2Ry0Am" value="jetbrains.mps.smodel.test" />
                          <node concept="2Ry0Ak" id="73GUf$umQFw" role="2Ry0An">
                            <property role="2Ry0Am" value="models" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQFz" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="462EY4JIhmA" role="3bR37C">
          <node concept="3bR9La" id="462EY4JIhmB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5N4jA$0t5TT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.testRead" />
        <property role="3LESm3" value="3d09e340-55d4-4ddc-8195-a92c0c5cf603" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiiiZ" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiij0" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiij1" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiij2" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiij3" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiij4" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiij5" role="2Ry0An">
                    <property role="2Ry0Am" value="testRead" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5N4jA$0t5TW" role="3LF7KH">
          <node concept="2Ry0Ak" id="5N4jA$0t5Uh" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5N4jA$0t5Uj" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5N4jA$0t5Ul" role="2Ry0An">
                <property role="2Ry0Am" value="testRead" />
                <node concept="2Ry0Ak" id="5N4jA$0t5Un" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.testRead.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UC" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1q1" resolve="MPS.Workbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UE" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UG" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UI" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UK" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZG" resolve="jetbrains.mps.baseLanguage.closures" />
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UM" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5N4jA$0t5UO" role="3bR37C">
          <node concept="3bR9La" id="5N4jA$0t5UP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQFD" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQFE" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQF$" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQF_" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQFA" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQFB" role="2Ry0An">
                    <property role="2Ry0Am" value="testRead" />
                    <node concept="2Ry0Ak" id="73GUf$umQFC" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQFF" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="2kP5W5yTHEW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.test.smodel" />
        <property role="3LESm3" value="494e76b6-a751-488a-8cfa-cbf8aead39e9" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2kP5W5yTHEZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="2kP5W5yTHGV" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2kP5W5yTHHc" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2kP5W5yTHI9" role="2Ry0An">
                <property role="2Ry0Am" value="generator-tests" />
                <node concept="2Ry0Ak" id="2kP5W5yTHIE" role="2Ry0An">
                  <property role="2Ry0Am" value="smodel" />
                  <node concept="2Ry0Ak" id="2kP5W5yTHJb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.test.smodel.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2kP5W5yTHJD" role="3bR37C">
          <node concept="3bR9La" id="2kP5W5yTHJE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="2kP5W5yTHJF" role="3bR37C">
          <node concept="3bR9La" id="2kP5W5yTHJG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6NpSidvt0dT" role="3bR37C">
          <node concept="3bR9La" id="6NpSidvt0dU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQFM" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQFN" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQFG" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQFH" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQFI" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQFJ" role="2Ry0An">
                    <property role="2Ry0Am" value="generator-tests" />
                    <node concept="2Ry0Ak" id="73GUf$umQFK" role="2Ry0An">
                      <property role="2Ry0Am" value="smodel" />
                      <node concept="2Ry0Ak" id="73GUf$umQFL" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQFO" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5oxhKpzUPAa" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.smodel.unittest" />
        <property role="3LESm3" value="d51c8d2d-7b6e-4d93-9eee-b55b04c5886b" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="5oxhKpzUPAd" role="3LF7KH">
          <node concept="2Ry0Ak" id="5oxhKpzUPCj" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5oxhKpzUPCo" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5oxhKpzUPCt" role="2Ry0An">
                <property role="2Ry0Am" value="smodel.unittest" />
                <node concept="2Ry0Ak" id="5oxhKpzUPCy" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.smodel.unittest.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5oxhKpzUPC$" role="3bR37C">
          <node concept="3bR9La" id="5oxhKpzUPC_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oxhKpzUPCA" role="3bR37C">
          <node concept="3bR9La" id="5oxhKpzUPCB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oxhKpzUPCC" role="3bR37C">
          <node concept="3bR9La" id="5oxhKpzUPCD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oxhKpzUPCE" role="3bR37C">
          <node concept="3bR9La" id="5oxhKpzUPCF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQFU" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQFV" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQFP" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQFQ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQFR" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQFS" role="2Ry0An">
                    <property role="2Ry0Am" value="smodel.unittest" />
                    <node concept="2Ry0Ak" id="73GUf$umQFT" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQFW" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69nIalPouVg" role="3bR37C">
          <node concept="3bR9La" id="69nIalPouVh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="69nIalPouVi" role="3bR37C">
          <node concept="3bR9La" id="69nIalPouVj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="69nIalPouVk" role="3bR37C">
          <node concept="3bR9La" id="69nIalPouVl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6IYCYtgqEH7" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.quotation.test" />
        <property role="3LESm3" value="f0c7dabe-a007-49ff-965e-4f6c6b0d78ab" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="6IYCYtgqEJ2" role="3LF7KH">
          <node concept="2Ry0Ak" id="6IYCYtgqEJ3" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6IYCYtgqEJ4" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="6IYCYtgqEJ5" role="2Ry0An">
                <property role="2Ry0Am" value="quotation.test" />
                <node concept="2Ry0Ak" id="6IYCYtgqEJ6" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.quotation.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6IYCYtgqEJe" role="3bR37C">
          <node concept="3bR9La" id="6IYCYtgqEJf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IYCYtgqEJg" role="3bR37C">
          <node concept="3bR9La" id="6IYCYtgqEJh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lh7" resolve="jetbrains.mps.typesystemEngine" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IYCYtgqEJi" role="3bR37C">
          <node concept="3bR9La" id="6IYCYtgqEJj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9c" resolve="jetbrains.mps.lang.quotation" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IYCYtgqEJk" role="3bR37C">
          <node concept="3bR9La" id="6IYCYtgqEJl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IYCYtgqEJm" role="3bR37C">
          <node concept="3bR9La" id="6IYCYtgqEJn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU0H" resolve="jetbrains.mps.lang.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="6IYCYtgqEJo" role="3bR37C">
          <node concept="3bR9La" id="6IYCYtgqEJp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="l1L199OSbu" role="3bR37C">
          <node concept="3bR9La" id="l1L199OSbv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="l1L199OSbw" role="3bR37C">
          <node concept="3bR9La" id="l1L199OSbx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQG2" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQG3" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQFX" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQFY" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQFZ" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQG0" role="2Ry0An">
                    <property role="2Ry0Am" value="quotation.test" />
                    <node concept="2Ry0Ak" id="73GUf$umQG1" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQG4" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2deb$5zAyi7" role="3bR37C">
          <node concept="3bR9La" id="2deb$5zAyi9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2deb$5zAyjr" role="3bR37C">
          <node concept="3bR9La" id="2deb$5zAyjt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="3yaq6Y8lhoe" role="auvoZ">
      <node concept="2Ry0Ak" id="3yaq6Y8lhof" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="3yaq6Y8lhog" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="3yaq6Y8lhoh" role="1l3spN">
      <node concept="L2wRC" id="3_1qLajoFoO" role="39821P">
        <ref role="L2wRA" node="3_1qLajoFfI" resolve="jetbrains.mps.smodel.test" />
      </node>
      <node concept="L2wRC" id="5N4jA$0t5Vd" role="39821P">
        <ref role="L2wRA" node="5N4jA$0t5TT" resolve="jetbrains.mps.testRead" />
      </node>
      <node concept="L2wRC" id="2kP5W5yTKUq" role="39821P">
        <ref role="L2wRA" node="2kP5W5yTHEW" resolve="jetbrains.mps.test.smodel" />
      </node>
      <node concept="L2wRC" id="5oxhKpzUPCU" role="39821P">
        <ref role="L2wRA" node="5oxhKpzUPAa" resolve="jetbrains.mps.lang.smodel.unittest" />
      </node>
      <node concept="L2wRC" id="6IYCYtgqEJF" role="39821P">
        <ref role="L2wRA" node="6IYCYtgqEH7" resolve="jetbrains.mps.lang.quotation.test" />
      </node>
    </node>
    <node concept="10PD9b" id="3yaq6Y8lhok" role="10PD9s" />
    <node concept="3b7kt6" id="3yaq6Y8lhol" role="10PD9s" />
    <node concept="1gjT0q" id="3yaq6Y8lhom" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHOh6" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHOh7" role="398pKh">
        <ref role="398BVh" node="3yaq6Y8lhnE" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHOh8" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHOh9" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHOha" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="5qjB6M$jFFV">
    <property role="TrG5h" value="mpsActions" />
    <property role="turDy" value="mpsActions.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="22LTRH" id="2_mwjmp6Ln5" role="1hWBAP">
      <property role="TrG5h" value="actions" />
      <node concept="24cAiW" id="5I1s5NvQ4T2" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSS" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kST" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="2qIbb0IugIC" role="22LTRK">
        <ref role="22LTRN" node="2qIbb0Iudvu" resolve="jetbrains.mps.lang.plugin.tests" />
      </node>
    </node>
    <node concept="2_Ic$z" id="5qjB6M$jFFW" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="5qjB6M$jFFX" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtA" id="2qIbb0Iudvu" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.lang.plugin.tests" />
      <property role="3LESm3" value="8dc46c52-5402-4971-bfcd-5a34efb20528" />
      <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="EpEP7iii00" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iii01" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iii02" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iii03" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iii04" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="EpEP7iii05" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="EpEP7iii06" role="2Ry0An">
                  <property role="2Ry0Am" value="plugin.tests" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="2qIbb0Iudvw" role="3LF7KH">
        <node concept="2Ry0Ak" id="2qIbb0IudvY" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="2qIbb0IudwU" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="2qIbb0Iudx9" role="2Ry0An">
              <property role="2Ry0Am" value="plugin.tests" />
              <node concept="2Ry0Ak" id="2qIbb0Iudxy" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.plugin.tests.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2qIbb0IudxD" role="3bR37C">
        <node concept="3bR9La" id="2qIbb0IudxE" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umRP1" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umRP2" role="1HemKq">
          <node concept="55IIr" id="73GUf$umROW" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umROX" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umROY" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="73GUf$umROZ" role="2Ry0An">
                  <property role="2Ry0Am" value="plugin.tests" />
                  <node concept="2Ry0Ak" id="73GUf$umRP0" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umRP3" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5qjB6M$jFFY" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="5qjB6M$jFFZ" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="5qjB6M$jFG0" role="398pKh">
        <ref role="398BVh" node="5qjB6M$jFFY" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="5qjB6M$jFG1" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="5qjB6M$jFG2" role="13uUGP">
        <ref role="398BVh" node="5qjB6M$jFFZ" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5qjB6M$jFG3" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5qjB6M$jFG4" role="2JcizS">
        <ref role="398BVh" node="5qjB6M$jFFY" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="5qjB6M$jFGE" role="auvoZ">
      <node concept="2Ry0Ak" id="5qjB6M$jFGF" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="5qjB6M$jFGG" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="5qjB6M$jFGH" role="1l3spN">
      <node concept="L2wRC" id="2qIbb0IudxW" role="39821P">
        <ref role="L2wRA" node="2qIbb0Iudvu" resolve="jetbrains.mps.lang.plugin.tests" />
      </node>
    </node>
    <node concept="10PD9b" id="5qjB6M$jFGK" role="10PD9s" />
    <node concept="3b7kt6" id="5qjB6M$jFGL" role="10PD9s" />
    <node concept="1gjT0q" id="5qjB6M$jFGM" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHP8q" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHP8r" role="398pKh">
        <ref role="398BVh" node="5qjB6M$jFFY" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHP8s" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHP8t" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHP8u" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4lIfGX7B72t">
    <property role="TrG5h" value="mpsEditorDiagram" />
    <property role="turDy" value="mpsEditorDiagram.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="22LTRH" id="4lIfGX7EXv4" role="1hWBAP">
      <property role="TrG5h" value="editorDiagram" />
      <node concept="24cAiW" id="5I1s5NvQ4T3" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSU" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSV" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="4lIfGX7FocO" role="22LTRK">
        <ref role="22LTRG" node="4lIfGX7Bg6t" resolve="diagram-editor-tests" />
      </node>
    </node>
    <node concept="2_Ic$z" id="4lIfGX7BfTR" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="4lIfGX7BfTS" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="4lIfGX7Bg6t" role="3989C9">
      <property role="TrG5h" value="diagram-editor-tests" />
      <node concept="1E1JtA" id="4lIfGX7ClDu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.figures.sandbox" />
        <property role="3LESm3" value="961e4f4d-48cb-4bb7-8176-73dd2ac5c8a5" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihU5" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihU6" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihU7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihU8" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihU9" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iihUa" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-diagram-editor" />
                  <node concept="2Ry0Ak" id="EpEP7iihUb" role="2Ry0An">
                    <property role="2Ry0Am" value="test" />
                    <node concept="2Ry0Ak" id="EpEP7iihUc" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.figures.sandbox" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4lIfGX7ClDx" role="3LF7KH">
          <node concept="2Ry0Ak" id="4lIfGX7ClF3" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="4lIfGX7ClF7" role="2Ry0An">
              <property role="2Ry0Am" value="mps-diagram-editor" />
              <node concept="2Ry0Ak" id="4lIfGX7ClFb" role="2Ry0An">
                <property role="2Ry0Am" value="test" />
                <node concept="2Ry0Ak" id="4lIfGX7ClFf" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.figures.sandbox" />
                  <node concept="2Ry0Ak" id="4lIfGX7ClFj" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.figures.sandbox.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4lIfGX7Crtz" role="3bR37C">
          <node concept="3bR9La" id="4lIfGX7Crt$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1L8vb48W86O" resolve="jetbrains.mps.lang.editor.diagram.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4lIfGX7CrtB" role="3bR37C">
          <node concept="3bR9La" id="4lIfGX7CrtC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:25y4WSoTpRZ" resolve="jetbrains.jetpad" />
          </node>
        </node>
        <node concept="1SiIV0" id="4lIfGX7CrtF" role="3bR37C">
          <node concept="3bR9La" id="4lIfGX7CrtG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1ZQTqiPDrTb" role="3bR37C">
          <node concept="3bR9La" id="1ZQTqiPDrTc" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:4lIfGX7Bjy$" resolve="jetbrains.mps.lang.editor.figures.library" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRgj" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRgk" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRgd" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRge" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umRgf" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-diagram-editor" />
                  <node concept="2Ry0Ak" id="73GUf$umRgg" role="2Ry0An">
                    <property role="2Ry0Am" value="test" />
                    <node concept="2Ry0Ak" id="73GUf$umRgh" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.figures.sandbox" />
                      <node concept="2Ry0Ak" id="73GUf$umRgi" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRgl" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4lIfGX7Bgvv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.diagram.tests" />
        <property role="3LESm3" value="779ae18b-ee98-406e-94fd-dec40c78b92f" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihLo" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihLp" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihLq" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihLr" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihLs" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iihLt" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-diagram-editor" />
                  <node concept="2Ry0Ak" id="EpEP7iihLu" role="2Ry0An">
                    <property role="2Ry0Am" value="test" />
                    <node concept="2Ry0Ak" id="EpEP7iihLv" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.tests" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4lIfGX7Bgvw" role="3LF7KH">
          <node concept="2Ry0Ak" id="4lIfGX7Clsn" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="4lIfGX7Cltf" role="2Ry0An">
              <property role="2Ry0Am" value="mps-diagram-editor" />
              <node concept="2Ry0Ak" id="4lIfGX7CltH" role="2Ry0An">
                <property role="2Ry0Am" value="test" />
                <node concept="2Ry0Ak" id="4lIfGX7CltL" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.tests" />
                  <node concept="2Ry0Ak" id="4lIfGX7CltP" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.tests.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="HEilRNrO6q" role="3bR37C">
          <node concept="3bR9La" id="HEilRNrO6r" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="HEilRNrO6s" role="3bR37C">
          <node concept="3bR9La" id="HEilRNrO6t" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1L8vb48W86O" resolve="jetbrains.mps.lang.editor.diagram.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="HEilRNrO6u" role="3bR37C">
          <node concept="3bR9La" id="HEilRNrO6v" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:25y4WSoTpRZ" resolve="jetbrains.jetpad" />
          </node>
        </node>
        <node concept="1SiIV0" id="2APfdwaBZiw" role="3bR37C">
          <node concept="3bR9La" id="2APfdwaBZix" role="1SiIV1">
            <ref role="3bR37D" node="4lIfGX7BgvD" resolve="jetbrains.mps.lang.editor.diagram.testLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="NIgnipSzAR" role="3bR37C">
          <node concept="3bR9La" id="NIgnipSzAS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="NIgnipSzAT" role="3bR37C">
          <node concept="3bR9La" id="NIgnipSzAU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRgs" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRgt" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRgm" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRgn" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umRgo" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-diagram-editor" />
                  <node concept="2Ry0Ak" id="73GUf$umRgp" role="2Ry0An">
                    <property role="2Ry0Am" value="test" />
                    <node concept="2Ry0Ak" id="73GUf$umRgq" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.tests" />
                      <node concept="2Ry0Ak" id="73GUf$umRgr" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRgu" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4lIfGX7BgvD" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.diagram.testLanguage" />
        <property role="3LESm3" value="050560c9-658e-49c5-b8e7-9e4db4c7e97f" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii0V" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii0W" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii0X" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii0Y" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii0Z" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iii10" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-diagram-editor" />
                  <node concept="2Ry0Ak" id="EpEP7iii11" role="2Ry0An">
                    <property role="2Ry0Am" value="test" />
                    <node concept="2Ry0Ak" id="EpEP7iii12" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4lIfGX7BgvG" role="3LF7KH">
          <node concept="2Ry0Ak" id="4lIfGX7Bgxb" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="4lIfGX7Bgxf" role="2Ry0An">
              <property role="2Ry0Am" value="mps-diagram-editor" />
              <node concept="2Ry0Ak" id="4lIfGX7Bgxj" role="2Ry0An">
                <property role="2Ry0Am" value="test" />
                <node concept="2Ry0Ak" id="4lIfGX7BgP9" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.testLanguage" />
                  <node concept="2Ry0Ak" id="4lIfGX7BgZ4" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4lIfGX7Clre" role="3bR37C">
          <node concept="3bR9La" id="4lIfGX7Clrf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4lIfGX7Bjy$" resolve="jetbrains.mps.lang.editor.figures.library" />
          </node>
        </node>
        <node concept="1SiIV0" id="BWn5G18NLU" role="3bR37C">
          <node concept="3bR9La" id="BWn5G18NLV" role="1SiIV1">
            <ref role="3bR37D" node="4lIfGX7ClDu" resolve="jetbrains.mps.lang.editor.figures.sandbox" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRg_" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRgA" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRgv" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRgw" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umRgx" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-diagram-editor" />
                  <node concept="2Ry0Ak" id="73GUf$umRgy" role="2Ry0An">
                    <property role="2Ry0Am" value="test" />
                    <node concept="2Ry0Ak" id="73GUf$umRgz" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.diagram.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umRg$" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRgB" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="4lIfGX7BfHa" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="4lIfGX7BfHb" role="13uUGP">
        <ref role="398BVh" node="4lIfGX7BfxP" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4lIfGX7BfHc" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4lIfGX7BfHd" role="2JcizS">
        <ref role="398BVh" node="4lIfGX7BfxO" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="4lIfGX7BfxO" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="4lIfGX7BfxP" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="4lIfGX7BfxQ" role="398pKh">
        <ref role="398BVh" node="4lIfGX7BfxO" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="4lIfGX7B7li" role="1l3spN">
      <node concept="398223" id="4lIfGX7EWXv" role="39821P">
        <node concept="L2wRC" id="4lIfGX7EX1$" role="39821P">
          <ref role="L2wRA" node="4lIfGX7ClDu" resolve="jetbrains.mps.lang.editor.figures.sandbox" />
        </node>
        <node concept="L2wRC" id="4lIfGX7EWZ9" role="39821P">
          <ref role="L2wRA" node="4lIfGX7BgvD" resolve="jetbrains.mps.lang.editor.diagram.testLanguage" />
        </node>
        <node concept="L2wRC" id="4lIfGX7EX3g" role="39821P">
          <ref role="L2wRA" node="4lIfGX7Bgvv" resolve="jetbrains.mps.lang.editor.diagram.tests" />
        </node>
        <node concept="3_J27D" id="4lIfGX7EWXw" role="Nbhlr">
          <node concept="3Mxwew" id="4lIfGX7EWYl" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="4lIfGX7B8rZ" role="10PD9s" />
    <node concept="3b7kt6" id="4lIfGX7B8s4" role="10PD9s" />
    <node concept="1gjT0q" id="4lIfGX7B8sc" role="10PD9s" />
    <node concept="55IIr" id="4lIfGX7K3zo" role="auvoZ">
      <node concept="2Ry0Ak" id="4lIfGX7K3zp" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="4lIfGX7K3zq" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHPcb" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPcc" role="398pKh">
        <ref role="398BVh" node="4lIfGX7BfxO" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPcd" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPce" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPcf" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1NKy5CJqdG9">
    <property role="TrG5h" value="mpsImplementationStripping" />
    <property role="turDy" value="mpsImplementationStripping.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="22LTRH" id="1NKy5CJqdGa" role="1hWBAP">
      <property role="TrG5h" value="implementationStripping" />
      <node concept="24cAiW" id="5I1s5NvQ4T4" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSW" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSX" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="1NKy5CJqdGb" role="22LTRK">
        <ref role="22LTRG" node="1NKy5CJqdGe" resolve="implementation-stripping-tests" />
      </node>
    </node>
    <node concept="2_Ic$z" id="1NKy5CJqdGc" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="1NKy5CJqdGd" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="1NKy5CJqdGe" role="3989C9">
      <property role="TrG5h" value="implementation-stripping-tests" />
      <node concept="1E1JtA" id="1NKy5CJqdGu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.build.stripping.tests" />
        <property role="3LESm3" value="c9bc8834-ad52-4c80-83d0-64827cf13fae" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiig5" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiig6" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiig7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiig8" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiig9" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiiga" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiigb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.build.stripping.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="1NKy5CJqdGv" role="3LF7KH">
          <node concept="2Ry0Ak" id="1NKy5CJqdGx" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="1vCYg$WbOge" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="1vCYg$WbOst" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.stripping.tests" />
                <node concept="2Ry0Ak" id="1vCYg$WbOsy" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.build.stripping.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7WhkwmM0RSz" role="3bR37C">
          <node concept="3bR9La" id="7WhkwmM0RS$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1uAcxHy36Vf" role="3bR37C">
          <node concept="3bR9La" id="1uAcxHy36Vg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQLU" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQLV" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQLP" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQLQ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQLR" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQLS" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.build.stripping.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umQLT" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQLW" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1NKy5CJqe1b" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.samples.Kaja" />
        <property role="3LESm3" value="049a08c5-1fe5-43cc-bd99-8b46d641d7f5" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihYm" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihYn" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihYo" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihYp" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihYq" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="EpEP7iihYr" role="2Ry0An">
                  <property role="2Ry0Am" value="robot_Kaja" />
                  <node concept="2Ry0Ak" id="EpEP7iihYs" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="EpEP7iihYt" role="2Ry0An">
                      <property role="2Ry0Am" value="Kajak" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="1NKy5CJqe1e" role="3LF7KH">
          <node concept="2Ry0Ak" id="1NKy5CJqelU" role="iGT6I">
            <property role="2Ry0Am" value="samples" />
            <node concept="2Ry0Ak" id="1NKy5CJqen7" role="2Ry0An">
              <property role="2Ry0Am" value="robot_Kaja" />
              <node concept="2Ry0Ak" id="1NKy5CJqeok" role="2Ry0An">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="1NKy5CJqepx" role="2Ry0An">
                  <property role="2Ry0Am" value="Kajak" />
                  <node concept="2Ry0Ak" id="1NKy5CJqeqI" role="2Ry0An">
                    <property role="2Ry0Am" value="Kajak.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1NKy5CJqerk" role="3bR37C">
          <node concept="3bR9La" id="1NKy5CJqerl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="1NKy5CJqerm" role="3bR37C">
          <node concept="3bR9La" id="1NKy5CJqern" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfK" resolve="jetbrains.mps.dataFlow.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1NKy5CJqero" role="3bR37C">
          <node concept="3bR9La" id="1NKy5CJqerp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1NKy5CJqerq" role="3bR37C">
          <node concept="3bR9La" id="1NKy5CJqerr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:sx8XDLCp97" resolve="jetbrains.mps.execution.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="1NKy5CJqerw" role="3bR37C">
          <node concept="1Busua" id="1NKy5CJqerx" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:sx8XDLCp97" resolve="jetbrains.mps.execution.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="tjOLefcEA3" role="3bR37C">
          <node concept="3bR9La" id="tjOLefcEA4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1yeLz9" id="1NKy5CJqer$" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.samples.Kaja#3265739055509559144" />
          <property role="3LESm3" value="e104ec4c-a001-4f8f-b6bf-654f6a062891" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="7OJG$uc2xT" role="3bR37C">
            <node concept="3bR9La" id="7OJG$uc2xU" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="1vCYg$WBasC" resolve="jetbrains.mps.samples.JavaKaja" />
            </node>
          </node>
          <node concept="1SiIV0" id="7OJG$uc2xV" role="3bR37C">
            <node concept="3bR9La" id="7OJG$uc2xW" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umQMd" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umQMe" role="1HemKq">
              <node concept="55IIr" id="73GUf$umQM6" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umQM7" role="iGT6I">
                  <property role="2Ry0Am" value="samples" />
                  <node concept="2Ry0Ak" id="73GUf$umQM8" role="2Ry0An">
                    <property role="2Ry0Am" value="robot_Kaja" />
                    <node concept="2Ry0Ak" id="73GUf$umQM9" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umQMa" role="2Ry0An">
                        <property role="2Ry0Am" value="Kajak" />
                        <node concept="2Ry0Ak" id="73GUf$umQMb" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umQMc" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umQMf" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="63dBh4LtgMG" role="3bR37C">
            <node concept="3bR9La" id="63dBh4LtgMH" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:3HV74$ebibC" resolve="jetbrains.mps.lang.text" />
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="2f92Y3ifpMi" role="1E1XAP">
          <ref role="1E0d5P" node="1vCYg$WBasC" resolve="jetbrains.mps.samples.JavaKaja" />
        </node>
        <node concept="1BupzO" id="73GUf$umQM3" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQM4" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQLX" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQLY" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="73GUf$umQLZ" role="2Ry0An">
                  <property role="2Ry0Am" value="robot_Kaja" />
                  <node concept="2Ry0Ak" id="73GUf$umQM0" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73GUf$umQM1" role="2Ry0An">
                      <property role="2Ry0Am" value="Kajak" />
                      <node concept="2Ry0Ak" id="73GUf$umQM2" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQM5" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7M00clf_wPF" role="3bR37C">
          <node concept="Rbm2T" id="7M00clf_wPG" role="1SiIV1">
            <ref role="1E1Vl2" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="1vCYg$WBasC" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.samples.JavaKaja" />
        <property role="3LESm3" value="5004e7d9-a353-4cb0-960a-68fc804bd95d" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihT1" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihT2" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihT3" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihT4" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihT5" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="EpEP7iihT6" role="2Ry0An">
                  <property role="2Ry0Am" value="robot_Kaja" />
                  <node concept="2Ry0Ak" id="EpEP7iihT7" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="EpEP7iihT8" role="2Ry0An">
                      <property role="2Ry0Am" value="JavaKajak" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="1vCYg$WBasF" role="3LF7KH">
          <node concept="2Ry0Ak" id="1vCYg$WBaus" role="iGT6I">
            <property role="2Ry0Am" value="samples" />
            <node concept="2Ry0Ak" id="1vCYg$WBaux" role="2Ry0An">
              <property role="2Ry0Am" value="robot_Kaja" />
              <node concept="2Ry0Ak" id="1vCYg$WBauA" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="1vCYg$WBaz8" role="2Ry0An">
                  <property role="2Ry0Am" value="JavaKajak" />
                  <node concept="2Ry0Ak" id="1vCYg$WBa$p" role="2Ry0An">
                    <property role="2Ry0Am" value="JavaKajak.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1vCYg$WBa_1" role="3bR37C">
          <node concept="3bR9La" id="1vCYg$WBa_2" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="79svzH7Yjb9" role="3bR37C">
          <node concept="1BurEX" id="79svzH7Yjba" role="1SiIV1">
            <node concept="55IIr" id="79svzH7Yjb2" role="1BurEY">
              <node concept="2Ry0Ak" id="79svzH7Yjb3" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="79svzH7Yjb4" role="2Ry0An">
                  <property role="2Ry0Am" value="robot_Kaja" />
                  <node concept="2Ry0Ak" id="79svzH7Yjb5" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="79svzH7Yjb6" role="2Ry0An">
                      <property role="2Ry0Am" value="JavaKajak" />
                      <node concept="2Ry0Ak" id="79svzH7Yjb7" role="2Ry0An">
                        <property role="2Ry0Am" value="images" />
                        <node concept="2Ry0Ak" id="79svzH7Yjb8" role="2Ry0An">
                          <property role="2Ry0Am" value="kaja_images.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="SHPhCD0VCu" role="3bR37C">
          <node concept="3bR9La" id="SHPhCD0VCv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQMt" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQMu" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQMn" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQMo" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="73GUf$umQMp" role="2Ry0An">
                  <property role="2Ry0Am" value="robot_Kaja" />
                  <node concept="2Ry0Ak" id="73GUf$umQMq" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="73GUf$umQMr" role="2Ry0An">
                      <property role="2Ry0Am" value="JavaKajak" />
                      <node concept="2Ry0Ak" id="73GUf$umQMs" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQMv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="1NKy5CJqdGU" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="1NKy5CJqdGV" role="13uUGP">
        <ref role="398BVh" node="1NKy5CJqdGZ" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1NKy5CJqdGW" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="1NKy5CJqdGX" role="2JcizS">
        <ref role="398BVh" node="1NKy5CJqdGY" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="1NKy5CJqdGY" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="1NKy5CJqdGZ" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="1NKy5CJqdH0" role="398pKh">
        <ref role="398BVh" node="1NKy5CJqdGY" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="1NKy5CJqdH1" role="1l3spN">
      <node concept="398223" id="1NKy5CJqdH2" role="39821P">
        <node concept="L2wRC" id="1NKy5CJqdZe" role="39821P">
          <property role="2IHNyd" value="true" />
          <ref role="L2wRA" node="1NKy5CJqe1b" resolve="jetbrains.mps.samples.Kaja" />
        </node>
        <node concept="L2wRC" id="7OJG$uc2DS" role="39821P">
          <property role="2IHNyd" value="true" />
          <ref role="L2wRA" node="1vCYg$WBasC" resolve="jetbrains.mps.samples.JavaKaja" />
          <node concept="3yLZsm" id="2BNbCPkeITw" role="3yL2VB">
            <property role="3yLZsk" value="kaja_images.jar" />
            <node concept="55IIr" id="2BNbCPkeITx" role="3yLZsn">
              <node concept="2Ry0Ak" id="2BNbCPkf3D6" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="2BNbCPkf3Db" role="2Ry0An">
                  <property role="2Ry0Am" value="robot_Kaja" />
                  <node concept="2Ry0Ak" id="2BNbCPkf3Dg" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="2BNbCPkf3Dl" role="2Ry0An">
                      <property role="2Ry0Am" value="JavaKajak" />
                      <node concept="2Ry0Ak" id="2BNbCPkf3Dq" role="2Ry0An">
                        <property role="2Ry0Am" value="images" />
                        <node concept="2Ry0Ak" id="2BNbCPkfent" role="2Ry0An">
                          <property role="2Ry0Am" value="kaja_images.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="L2wRC" id="7OJG$uc2Gm" role="39821P">
          <ref role="L2wRA" node="1NKy5CJqdGu" resolve="jetbrains.mps.build.stripping.tests" />
        </node>
        <node concept="3_J27D" id="1NKy5CJqdH6" role="Nbhlr">
          <node concept="3Mxwew" id="1NKy5CJqdH7" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="1NKy5CJqdH8" role="10PD9s" />
    <node concept="3b7kt6" id="1NKy5CJqdH9" role="10PD9s" />
    <node concept="1gjT0q" id="1NKy5CJqdHa" role="10PD9s" />
    <node concept="55IIr" id="1NKy5CJqdHb" role="auvoZ">
      <node concept="2Ry0Ak" id="1NKy5CJqdHc" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="1NKy5CJqdHd" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHPeY" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPeZ" role="398pKh">
        <ref role="398BVh" node="1NKy5CJqdGY" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPf0" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPf1" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPf2" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="5bAGsVFhMud">
    <property role="TrG5h" value="mpsPackaged" />
    <property role="turDy" value="mpsPackaged.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="5bAGsVFhMue" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="5bAGsVFhMuf" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="5bAGsVFhMug" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="5bAGsVFhMB0" role="3989C9">
      <property role="TrG5h" value="testPackaged" />
      <node concept="1E1JtD" id="5bAGsVFhMB1" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testPackagedLanguage" />
        <property role="3LESm3" value="2d9a25d3-02b8-4024-afe2-bb9457a02cbf" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii9K" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii9L" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii9M" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii9N" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii9O" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii9P" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iii9Q" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackaged" />
                    <node concept="2Ry0Ak" id="EpEP7iii9R" role="2Ry0An">
                      <property role="2Ry0Am" value="testPackagedLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5bAGsVFhMB2" role="3LF7KH">
          <node concept="2Ry0Ak" id="5bAGsVFhMB3" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5bAGsVFhMB4" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="5bAGsVFhMB5" role="2Ry0An">
                <property role="2Ry0Am" value="testPackaged" />
                <node concept="2Ry0Ak" id="5bAGsVFhMB6" role="2Ry0An">
                  <property role="2Ry0Am" value="testPackagedLanguage" />
                  <node concept="2Ry0Ak" id="5bAGsVFhMB7" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackagedLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6BljlJlAQLu" role="3bR37C">
          <node concept="1BurEX" id="6BljlJlAQLv" role="1SiIV1">
            <node concept="55IIr" id="6BljlJlAQLn" role="1BurEY">
              <node concept="2Ry0Ak" id="6BljlJlAQLo" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="6BljlJlAQLp" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="6BljlJlAQLq" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackaged" />
                    <node concept="2Ry0Ak" id="6BljlJlAQLr" role="2Ry0An">
                      <property role="2Ry0Am" value="testPackagedLanguage" />
                      <node concept="2Ry0Ak" id="6BljlJlAQLs" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                        <node concept="2Ry0Ak" id="6BljlJlAQLt" role="2Ry0An">
                          <property role="2Ry0Am" value="dummy.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQIz" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQI$" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQIt" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQIu" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQIv" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umQIw" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackaged" />
                    <node concept="2Ry0Ak" id="73GUf$umQIx" role="2Ry0An">
                      <property role="2Ry0Am" value="testPackagedLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umQIy" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQI_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5bAGsVFhMB9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testPackagedLanguage.test" />
        <property role="3LESm3" value="2f5af9e7-34c8-45f3-b417-4dcbb52409b8" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihYC" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihYD" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihYE" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihYF" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihYG" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihYH" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihYI" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackaged" />
                    <node concept="2Ry0Ak" id="EpEP7iihYJ" role="2Ry0An">
                      <property role="2Ry0Am" value="testPackagedLanguage.test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5bAGsVFhMBa" role="3LF7KH">
          <node concept="2Ry0Ak" id="5bAGsVFhMBb" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5bAGsVFhMBc" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="5bAGsVFhMBd" role="2Ry0An">
                <property role="2Ry0Am" value="testPackaged" />
                <node concept="2Ry0Ak" id="5bAGsVFhMBe" role="2Ry0An">
                  <property role="2Ry0Am" value="testPackagedLanguage.test" />
                  <node concept="2Ry0Ak" id="5bAGsVFhMBf" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackagedLanguage.test.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1J9x1z4a6OK" role="3bR37C">
          <node concept="3bR9La" id="1J9x1z4a6OL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="1J9x1z4a6OO" role="3bR37C">
          <node concept="3bR9La" id="1J9x1z4a6OP" role="1SiIV1">
            <ref role="3bR37D" node="5bAGsVFhMB1" resolve="testPackagedLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1J9x1z4a6OQ" role="3bR37C">
          <node concept="3bR9La" id="1J9x1z4a6OR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2$qzYDjh2Vp" role="3bR37C">
          <node concept="3bR9La" id="2$qzYDjh2Vq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4oe_K8bgxuL" role="3bR37C">
          <node concept="3bR9La" id="4oe_K8bgxuM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="nUYGvAUGX3" role="3bR37C">
          <node concept="3bR9La" id="nUYGvAUGX4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="R$fwjLoTEL" role="3bR37C">
          <node concept="3bR9La" id="R$fwjLoTEM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQIG" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQIH" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQIA" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQIB" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQIC" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umQID" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackaged" />
                    <node concept="2Ry0Ak" id="73GUf$umQIE" role="2Ry0An">
                      <property role="2Ry0Am" value="testPackagedLanguage.test" />
                      <node concept="2Ry0Ak" id="73GUf$umQIF" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQII" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5bAGsVFhMuh" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="5bAGsVFhMui" role="398pKh">
        <ref role="398BVh" node="5bAGsVFhMue" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="5bAGsVFhMuj" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="5bAGsVFhMuk" role="13uUGP">
        <ref role="398BVh" node="5bAGsVFhMuh" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5bAGsVFhMul" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5bAGsVFhMum" role="2JcizS">
        <ref role="398BVh" node="5bAGsVFhMue" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="5bAGsVFhMvi" role="auvoZ">
      <node concept="2Ry0Ak" id="5bAGsVFhMvj" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="5bAGsVFhMvk" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="5bAGsVFhMvl" role="1l3spN">
      <node concept="L2wRC" id="5bAGsVFhMDJ" role="39821P">
        <ref role="L2wRA" node="5bAGsVFhMB9" resolve="testPackagedLanguage.test" />
      </node>
      <node concept="L2wRC" id="5bAGsVFhMD3" role="39821P">
        <ref role="L2wRA" node="5bAGsVFhMB1" resolve="testPackagedLanguage" />
        <node concept="3yLZsm" id="6BljlJlAQMg" role="3yL2VB">
          <property role="3yLZsk" value="lib/dummy.jar" />
          <node concept="55IIr" id="6BljlJlAQMh" role="3yLZsn">
            <node concept="2Ry0Ak" id="6BljlJlAQML" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="6BljlJlAQMQ" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="6BljlJlAQMX" role="2Ry0An">
                  <property role="2Ry0Am" value="testPackaged" />
                  <node concept="2Ry0Ak" id="6BljlJlAQN2" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackagedLanguage" />
                    <node concept="2Ry0Ak" id="6BljlJlAQN7" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="6BljlJlAQNc" role="2Ry0An">
                        <property role="2Ry0Am" value="dummy.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="7AA$5NYRpLp" role="39821P">
        <node concept="28jJK3" id="6BljlJlAQNO" role="39821P">
          <node concept="55IIr" id="6BljlJlAQNQ" role="28jJRO">
            <node concept="2Ry0Ak" id="6BljlJlAQOx" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="6BljlJlAQOA" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="6BljlJlAQOF" role="2Ry0An">
                  <property role="2Ry0Am" value="testPackaged" />
                  <node concept="2Ry0Ak" id="6BljlJlAQOK" role="2Ry0An">
                    <property role="2Ry0Am" value="testPackagedLanguage" />
                    <node concept="2Ry0Ak" id="6BljlJlAQOP" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="6BljlJlAQOU" role="2Ry0An">
                        <property role="2Ry0Am" value="dummy.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="7AA$5NYRpLr" role="Nbhlr">
          <node concept="3Mxwew" id="7AA$5NYRpLS" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="5bAGsVFhMvp" role="10PD9s" />
    <node concept="3b7kt6" id="5bAGsVFhMvq" role="10PD9s" />
    <node concept="1gjT0q" id="5bAGsVFhMvr" role="10PD9s" />
    <node concept="22LTRH" id="1WSLgzr6j4B" role="1hWBAP">
      <property role="TrG5h" value="packaged" />
      <node concept="24cAiW" id="5I1s5NvQ4T5" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kSY" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kSZ" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="1J9x1z49eFC" role="22LTRK">
        <ref role="22LTRN" node="5bAGsVFhMB9" resolve="testPackagedLanguage.test" />
      </node>
      <node concept="22LTRF" id="1J9x1z49eGj" role="22LTRK">
        <ref role="22LTRG" node="5bAGsVFhMB0" resolve="testPackaged" />
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHOgI" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHOgJ" role="398pKh">
        <ref role="398BVh" node="5bAGsVFhMue" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHOgK" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHOgL" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHOgM" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="6sT62Z6SkgO">
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsBehavior.xml" />
    <property role="TrG5h" value="mpsBehavior" />
    <property role="3GE5qa" value="" />
    <node concept="2_Ic$z" id="6sT62Z6SkgP" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="6sT62Z6SkgQ" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="13uUGR" id="6sT62Z6SkgR" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="6sT62Z6SkgS" role="13uUGP">
        <ref role="398BVh" node="6sT62Z6SkgW" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6sT62Z6SkgT" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6sT62Z6SkgU" role="2JcizS">
        <ref role="398BVh" node="6sT62Z6SkgV" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="6sT62Z6SkgV" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="6sT62Z6SkgW" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="6sT62Z6SkgX" role="398pKh">
        <ref role="398BVh" node="6sT62Z6SkgV" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="6sT62Z6SkgY" role="10PD9s" />
    <node concept="3b7kt6" id="6sT62Z6SkgZ" role="10PD9s" />
    <node concept="1gjT0q" id="6sT62Z6Skh0" role="10PD9s" />
    <node concept="1l3spV" id="6sT62Z6Skh1" role="1l3spN">
      <node concept="398223" id="6sT62Z6Skh2" role="39821P">
        <node concept="m$_wl" id="6sT62Z6Skh3" role="39821P">
          <ref role="m_rDy" node="6sT62Z6Skkm" resolve="test.behavior.plugin" />
          <node concept="pUk6w" id="5peYeZGo8W5" role="pUk7w" />
          <node concept="398223" id="6sT62Z6Skh4" role="39821P">
            <node concept="3_J27D" id="6sT62Z6Skh5" role="Nbhlr">
              <node concept="3Mxwew" id="6sT62Z6Skh6" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
            <node concept="3981dx" id="6sT62Z6Skh7" role="39821P">
              <node concept="Saw0i" id="6sT62Z6Skha" role="39821P">
                <ref role="Saw0g" node="6sT62Z6Skja" resolve="UtilSolution" />
              </node>
              <node concept="3_J27D" id="6sT62Z6Skh8" role="Nbhlr">
                <node concept="3Mxwew" id="6sT62Z6Skh9" role="3MwsjC">
                  <property role="3MwjfP" value="UtilSolution.jar" />
                </node>
              </node>
            </node>
            <node concept="3981dx" id="6sT62Z6Skhf" role="39821P">
              <node concept="3_J27D" id="6sT62Z6Skhg" role="Nbhlr">
                <node concept="3Mxwew" id="6sT62Z6Skhh" role="3MwsjC">
                  <property role="3MwjfP" value="TestBehaviorReflective.jar" />
                </node>
              </node>
              <node concept="Saw0i" id="6sT62Z6Skhi" role="39821P">
                <ref role="Saw0g" node="6sT62Z6SkjQ" resolve="TestBehaviorReflective" />
              </node>
            </node>
          </node>
          <node concept="398223" id="5peYeZGo8W6" role="39821P">
            <node concept="3_J27D" id="5peYeZGo8W7" role="Nbhlr">
              <node concept="3Mxwew" id="5peYeZGo8W8" role="3MwsjC">
                <property role="3MwjfP" value="languages" />
              </node>
            </node>
            <node concept="L2wRC" id="5peYeZGo8W9" role="39821P">
              <ref role="L2wRA" node="6sT62Z6SkhI" resolve="BHL1" />
            </node>
            <node concept="L2wRC" id="5peYeZGo8Wa" role="39821P">
              <ref role="L2wRA" node="6sT62Z6SkhV" resolve="BHL2" />
            </node>
            <node concept="L2wRC" id="5peYeZGo8Wb" role="39821P">
              <ref role="L2wRA" node="6sT62Z6Ski8" resolve="BHL3" />
            </node>
            <node concept="L2wRC" id="5peYeZGo8Wc" role="39821P">
              <ref role="L2wRA" node="6sT62Z6Skil" resolve="BHL4" />
            </node>
            <node concept="L2wRC" id="5peYeZGo8Wd" role="39821P">
              <ref role="L2wRA" node="6sT62Z6Ski$" resolve="BHL5" />
            </node>
            <node concept="L2wRC" id="5peYeZGo8We" role="39821P">
              <ref role="L2wRA" node="6sT62Z6SkiJ" resolve="BHL6" />
            </node>
            <node concept="L2wRC" id="5peYeZGo8Wf" role="39821P">
              <ref role="L2wRA" node="6sT62Z6SkiW" resolve="BHL7" />
            </node>
            <node concept="3981dx" id="7zJ_LB7c6kL" role="39821P">
              <node concept="398223" id="7zJ_LB7c6kN" role="39821P">
                <node concept="3_J27D" id="7zJ_LB7c6kO" role="Nbhlr">
                  <node concept="3Mxwew" id="7zJ_LB7c6kP" role="3MwsjC">
                    <property role="3MwjfP" value="META-INF" />
                  </node>
                </node>
                <node concept="1kK7hY" id="7zJ_LB7c6kQ" role="39821P">
                  <ref role="1kK7hZ" node="6sT62Z6Skja" resolve="UtilSolution" />
                  <node concept="1cIVw3" id="7zJ_LB7c6kR" role="3E5mpp">
                    <property role="1cIVw0" value="../lib/UtilSolution.jar" />
                  </node>
                  <node concept="1cIVw3" id="7zJ_LB7c6kS" role="3SGgvt">
                    <property role="1cIVw0" value="." />
                  </node>
                  <node concept="1cIVw3" id="7zJ_LB7c6kT" role="2JVP1x">
                    <property role="1cIVw0" value="UtilSolution.msd" />
                  </node>
                </node>
              </node>
              <node concept="398223" id="7zJ_LB7c6kU" role="39821P">
                <node concept="3_J27D" id="7zJ_LB7c6kV" role="Nbhlr">
                  <node concept="3Mxwew" id="7zJ_LB7c6kW" role="3MwsjC">
                    <property role="3MwjfP" value="module" />
                  </node>
                </node>
                <node concept="3$exzU" id="7zJ_LB7c6kX" role="39821P">
                  <ref role="3$exzV" node="6sT62Z6Skja" resolve="UtilSolution" />
                </node>
              </node>
              <node concept="3_J27D" id="7zJ_LB7c6kY" role="Nbhlr">
                <node concept="3Mxwew" id="7zJ_LB7c6kZ" role="3MwsjC">
                  <property role="3MwjfP" value="UtilSolution.jar" />
                </node>
              </node>
            </node>
            <node concept="398223" id="6sT62Z6Skhx" role="39821P">
              <node concept="3_J27D" id="6sT62Z6Skhy" role="Nbhlr">
                <node concept="3Mxwew" id="6sT62Z6Skhz" role="3MwsjC">
                  <property role="3MwjfP" value="nonReflectiveTest" />
                </node>
              </node>
              <node concept="L2wRC" id="6sT62Z6Skh$" role="39821P">
                <ref role="L2wRA" node="6sT62Z6Skji" resolve="TestBehavior" />
              </node>
            </node>
            <node concept="398223" id="42$9Ot098r1" role="39821P">
              <node concept="3_J27D" id="42$9Ot098r3" role="Nbhlr">
                <node concept="3Mxwew" id="42$9Ot098rE" role="3MwsjC">
                  <property role="3MwjfP" value="reflectiveTest" />
                </node>
              </node>
              <node concept="3981dx" id="42$9Ot098tM" role="39821P">
                <node concept="398223" id="42$9Ot098tN" role="39821P">
                  <node concept="3_J27D" id="42$9Ot098tO" role="Nbhlr">
                    <node concept="3Mxwew" id="42$9Ot098tP" role="3MwsjC">
                      <property role="3MwjfP" value="META-INF" />
                    </node>
                  </node>
                  <node concept="1kK7hY" id="42$9Ot098tQ" role="39821P">
                    <ref role="1kK7hZ" node="6sT62Z6SkjQ" resolve="TestBehaviorReflective" />
                    <node concept="1cIVw3" id="42$9Ot098tR" role="3SGgvt">
                      <property role="1cIVw0" value="." />
                    </node>
                    <node concept="1cIVw3" id="42$9Ot098tS" role="2JVP1x">
                      <property role="1cIVw0" value="TestBehaviorReflective.msd" />
                    </node>
                  </node>
                </node>
                <node concept="398223" id="42$9Ot098tT" role="39821P">
                  <node concept="3_J27D" id="42$9Ot098tU" role="Nbhlr">
                    <node concept="3Mxwew" id="42$9Ot098tV" role="3MwsjC">
                      <property role="3MwjfP" value="module" />
                    </node>
                  </node>
                  <node concept="3$exzU" id="42$9Ot098tW" role="39821P">
                    <ref role="3$exzV" node="6sT62Z6SkjQ" resolve="TestBehaviorReflective" />
                  </node>
                </node>
                <node concept="3_J27D" id="42$9Ot098tX" role="Nbhlr">
                  <node concept="3Mxwew" id="42$9Ot098tY" role="3MwsjC">
                    <property role="3MwjfP" value="TestBehaviorReflective.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="6sT62Z6Skh_" role="Nbhlr">
          <node concept="3Mxwew" id="6sT62Z6SkhA" role="3MwsjC">
            <property role="3MwjfP" value="behavior-tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2igEWh" id="6sT62Z6SkhB" role="1hWBAP">
      <property role="2igJW4" value="true" />
    </node>
    <node concept="22LTRH" id="6sT62Z6SkhC" role="1hWBAP">
      <property role="TrG5h" value="mpsTestModules" />
      <node concept="24cAiW" id="5I1s5NvQ4T6" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kT0" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kT1" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="6sT62Z6SkhD" role="22LTRK">
        <ref role="22LTRG" node="6sT62Z6Skj9" resolve="behavior-tests" />
      </node>
    </node>
    <node concept="55IIr" id="6sT62Z6SkhE" role="auvoZ">
      <node concept="2Ry0Ak" id="6sT62Z6SkhF" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="6sT62Z6SkhG" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6sT62Z6SkhH" role="3989C9">
      <property role="TrG5h" value="behavior-langs" />
      <node concept="1E1JtD" id="6sT62Z6SkhI" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL1" />
        <property role="3LESm3" value="43359135-f67c-4a3d-9fdd-a3d7dba50995" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii1K" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii1L" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii1M" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii1N" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii1O" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii1P" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iii1Q" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iii1R" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iii1S" role="2Ry0An">
                        <property role="2Ry0Am" value="L1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6SkhJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6SkhK" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6SkhL" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6SkhM" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6SkhN" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6SkhO" role="2Ry0An">
                    <property role="2Ry0Am" value="L1" />
                    <node concept="2Ry0Ak" id="6sT62Z6SkhP" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL1.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkhQ" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkhR" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkhI" resolve="BHL1" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkhS" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkhT" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="4sfs$rhhdgw" role="3bR37C">
          <node concept="3bR9La" id="4sfs$rhhdgx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRBt" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRBu" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRBm" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRBn" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRBo" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRBp" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRBq" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRBr" role="2Ry0An">
                        <property role="2Ry0Am" value="L1" />
                        <node concept="2Ry0Ak" id="73GUf$umRBs" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRBv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6sT62Z6SkhV" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL2" />
        <property role="3LESm3" value="d9c7536e-76b5-498f-8064-0955dd8aebcb" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihFL" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihFM" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihFN" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihFO" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihFP" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihFQ" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihFR" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iihFS" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihFT" role="2Ry0An">
                        <property role="2Ry0Am" value="L2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6SkhW" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6SkhX" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6SkhY" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6SkhZ" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6Ski0" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6Ski1" role="2Ry0An">
                    <property role="2Ry0Am" value="L2" />
                    <node concept="2Ry0Ak" id="6sT62Z6Ski2" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL2.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Ski3" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Ski4" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Ski6" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Ski7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRBB" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRBC" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRBw" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRBx" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRBy" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRBz" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRB$" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRB_" role="2Ry0An">
                        <property role="2Ry0Am" value="L2" />
                        <node concept="2Ry0Ak" id="73GUf$umRBA" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRBD" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6sT62Z6Ski8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL3" />
        <property role="3LESm3" value="9dabd0d4-b67a-4eef-b645-d5534ca67594" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihGc" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihGd" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihGe" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihGf" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihGg" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihGh" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihGi" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iihGj" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihGk" role="2Ry0An">
                        <property role="2Ry0Am" value="L3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6Ski9" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6Skia" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6Skib" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6Skic" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6Skid" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6Skie" role="2Ry0An">
                    <property role="2Ry0Am" value="L3" />
                    <node concept="2Ry0Ak" id="6sT62Z6Skif" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL3.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skig" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skih" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skij" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skik" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRBL" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRBM" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRBE" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRBF" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRBG" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRBH" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRBI" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRBJ" role="2Ry0An">
                        <property role="2Ry0Am" value="L3" />
                        <node concept="2Ry0Ak" id="73GUf$umRBK" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRBN" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6sT62Z6Skil" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL4" />
        <property role="3LESm3" value="2b679aa1-c9e8-4a47-84b9-ce94c2202df5" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihZH" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihZI" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihZJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihZK" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihZL" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihZM" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihZN" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iihZO" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihZP" role="2Ry0An">
                        <property role="2Ry0Am" value="L4" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6Skim" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6Skin" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6Skio" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6Skip" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6Skiq" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6Skir" role="2Ry0An">
                    <property role="2Ry0Am" value="L4" />
                    <node concept="2Ry0Ak" id="6sT62Z6Skis" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL4.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skit" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skiu" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skil" resolve="BHL4" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skiv" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skiw" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skiy" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skiz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRBV" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRBW" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRBO" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRBP" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRBQ" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRBR" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRBS" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRBT" role="2Ry0An">
                        <property role="2Ry0Am" value="L4" />
                        <node concept="2Ry0Ak" id="73GUf$umRBU" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRBX" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6sT62Z6Ski$" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL5" />
        <property role="3LESm3" value="b4fa1e36-714a-4c77-8e95-3eae9632decb" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihUO" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihUP" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihUQ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihUR" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihUS" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihUT" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihUU" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iihUV" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihUW" role="2Ry0An">
                        <property role="2Ry0Am" value="L5" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6Ski_" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6SkiA" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6SkiB" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6SkiC" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6SkiD" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6SkiE" role="2Ry0An">
                    <property role="2Ry0Am" value="L5" />
                    <node concept="2Ry0Ak" id="6sT62Z6SkiF" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL5.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkiG" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkiH" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6woObKLuPBA" role="3bR37C">
          <node concept="3bR9La" id="6woObKLuPBB" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Ski$" resolve="BHL5" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRC5" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRC6" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRBY" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRBZ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRC0" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRC1" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRC2" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRC3" role="2Ry0An">
                        <property role="2Ry0Am" value="L5" />
                        <node concept="2Ry0Ak" id="73GUf$umRC4" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRC7" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6sT62Z6SkiJ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL6" />
        <property role="3LESm3" value="424c173a-ee73-4dc9-bc43-d0051c9b1e8f" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii9v" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii9w" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii9x" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii9y" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii9z" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii9$" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iii9_" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iii9A" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iii9B" role="2Ry0An">
                        <property role="2Ry0Am" value="L6" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6SkiK" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6SkiL" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6SkiM" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6SkiN" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6SkiO" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6SkiP" role="2Ry0An">
                    <property role="2Ry0Am" value="L6" />
                    <node concept="2Ry0Ak" id="6sT62Z6SkiQ" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL6.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkiR" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkiS" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkiU" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkiV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4sfs$rhhdcy" role="3bR37C">
          <node concept="3bR9La" id="4sfs$rhhdcz" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkiJ" resolve="BHL6" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRCf" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRCg" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRC8" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRC9" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRCa" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRCb" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRCc" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRCd" role="2Ry0An">
                        <property role="2Ry0Am" value="L6" />
                        <node concept="2Ry0Ak" id="73GUf$umRCe" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRCh" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6sT62Z6SkiW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="BHL7" />
        <property role="3LESm3" value="4239359f-6457-4d2a-b1e0-14d3f948db39" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihWm" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihWn" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihWo" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihWp" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihWq" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihWr" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihWs" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iihWt" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihWu" role="2Ry0An">
                        <property role="2Ry0Am" value="L7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6SkiX" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6SkiY" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6SkiZ" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6Skj0" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6Skj1" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6sT62Z6Skj2" role="2Ry0An">
                    <property role="2Ry0Am" value="L7" />
                    <node concept="2Ry0Ak" id="6sT62Z6Skj3" role="2Ry0An">
                      <property role="2Ry0Am" value="BHL7.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skj4" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skj5" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skj7" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skj8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRCp" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRCq" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRCi" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRCj" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRCk" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRCl" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRCm" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRCn" role="2Ry0An">
                        <property role="2Ry0Am" value="L7" />
                        <node concept="2Ry0Ak" id="73GUf$umRCo" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRCr" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6sT62Z6Skja" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="UtilSolution" />
        <property role="3LESm3" value="6be63454-b482-4f5d-b8b7-d3f627e961a7" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiieU" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiieV" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiieW" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiieX" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiieY" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiieZ" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iiif0" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iiif1" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="EpEP7iiif2" role="2Ry0An">
                        <property role="2Ry0Am" value="UtilSolution" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6Skjb" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6Skjc" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6Skjd" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6Skje" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6Skjf" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="6sT62Z6Skjg" role="2Ry0An">
                    <property role="2Ry0Am" value="UtilSolution" />
                    <node concept="2Ry0Ak" id="6sT62Z6Skjh" role="2Ry0An">
                      <property role="2Ry0Am" value="UtilSolution.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRCz" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRC$" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRCs" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRCt" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRCu" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRCv" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRCw" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="73GUf$umRCx" role="2Ry0An">
                        <property role="2Ry0Am" value="UtilSolution" />
                        <node concept="2Ry0Ak" id="73GUf$umRCy" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRC_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6sT62Z6Skj9" role="3989C9">
      <property role="TrG5h" value="behavior-tests" />
      <node concept="1E1JtA" id="6sT62Z6Skji" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="TestBehavior" />
        <property role="3LESm3" value="5de85764-70e6-4e9a-8618-d85dc0eb0843" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihX5" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihX6" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihX7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihX8" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihX9" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihXa" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihXb" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iihXc" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="EpEP7iihXd" role="2Ry0An">
                        <property role="2Ry0Am" value="TestBehavior" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6Skjj" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6Skjk" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6Skjl" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6Skjm" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6Skjn" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="6sT62Z6Skjo" role="2Ry0An">
                    <property role="2Ry0Am" value="TestBehavior" />
                    <node concept="2Ry0Ak" id="6sT62Z6Skjp" role="2Ry0An">
                      <property role="2Ry0Am" value="TestBehavior.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skjq" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skjr" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkhI" resolve="BHL1" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skju" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skjv" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skil" resolve="BHL4" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skjy" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skjz" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkiJ" resolve="BHL6" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjA" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjB" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkiW" resolve="BHL7" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjC" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjE" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjF" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkhV" resolve="BHL2" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjG" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjH" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Ski$" resolve="BHL5" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjI" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjJ" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Ski8" resolve="BHL3" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjK" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjO" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjP" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6uTdGgg0hzv" role="3bR37C">
          <node concept="3bR9La" id="6uTdGgg0hzw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6EJHIrmNI_e" role="3bR37C">
          <node concept="3bR9La" id="6EJHIrmNI_f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="1D4tfYtgVcR" role="3bR37C">
          <node concept="3bR9La" id="1D4tfYtgVcS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRCH" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRCI" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRCA" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRCB" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRCC" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRCD" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRCE" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="73GUf$umRCF" role="2Ry0An">
                        <property role="2Ry0Am" value="TestBehavior" />
                        <node concept="2Ry0Ak" id="73GUf$umRCG" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRCJ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6sT62Z6SkjQ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="TestBehaviorReflective" />
        <property role="3LESm3" value="beff1186-d062-491c-bb4e-4c63c5bc07f4" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiid0" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiid1" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiid2" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiid3" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiid4" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiid5" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iiid6" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="EpEP7iiid7" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="EpEP7iiid8" role="2Ry0An">
                        <property role="2Ry0Am" value="TestBehaviorReflective" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6sT62Z6SkjR" role="3LF7KH">
          <node concept="2Ry0Ak" id="6sT62Z6SkjS" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6sT62Z6SkjT" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="6sT62Z6SkjU" role="2Ry0An">
                <property role="2Ry0Am" value="testBehavior" />
                <node concept="2Ry0Ak" id="6sT62Z6SkjV" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="6sT62Z6SkjW" role="2Ry0An">
                    <property role="2Ry0Am" value="TestBehaviorReflective" />
                    <node concept="2Ry0Ak" id="6sT62Z6SkjX" role="2Ry0An">
                      <property role="2Ry0Am" value="TestBehaviorReflective.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6SkjY" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6SkjZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skk0" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skk1" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkhI" resolve="BHL1" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skk2" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skk3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skk6" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skk7" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkhV" resolve="BHL2" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skk8" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skk9" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Ski$" resolve="BHL5" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skka" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skkb" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skil" resolve="BHL4" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skkc" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skkd" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Ski8" resolve="BHL3" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skke" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skkf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skkg" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skkh" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6Skja" resolve="UtilSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skki" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skkj" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkiJ" resolve="BHL6" />
          </node>
        </node>
        <node concept="1SiIV0" id="6sT62Z6Skkk" role="3bR37C">
          <node concept="3bR9La" id="6sT62Z6Skkl" role="1SiIV1">
            <ref role="3bR37D" node="6sT62Z6SkiW" resolve="BHL7" />
          </node>
        </node>
        <node concept="1SiIV0" id="tjOLefcEq_" role="3bR37C">
          <node concept="3bR9La" id="tjOLefcEqA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="1D4tfYtgVd0" role="3bR37C">
          <node concept="3bR9La" id="1D4tfYtgVd1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRCR" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRCS" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRCK" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRCL" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRCM" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRCN" role="2Ry0An">
                    <property role="2Ry0Am" value="testBehavior" />
                    <node concept="2Ry0Ak" id="73GUf$umRCO" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="73GUf$umRCP" role="2Ry0An">
                        <property role="2Ry0Am" value="TestBehaviorReflective" />
                        <node concept="2Ry0Ak" id="73GUf$umRCQ" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRCT" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="6sT62Z6Skkm" role="3989C9">
      <property role="m$_wk" value="test.behavior.plugin" />
      <node concept="m$f5U" id="7zJ_LB7cbMv" role="m$_yh">
        <ref role="m$f5T" node="6sT62Z6SkhH" resolve="behavior-langs" />
      </node>
      <node concept="m$f5U" id="7zJ_LB7cbMT" role="m$_yh">
        <ref role="m$f5T" node="6sT62Z6Skj9" resolve="behavior-tests" />
      </node>
      <node concept="3_J27D" id="6sT62Z6Skkv" role="m_cZH">
        <node concept="3Mxwew" id="6sT62Z6Skkw" role="3MwsjC">
          <property role="3MwjfP" value="test.behavior.plugin" />
        </node>
      </node>
      <node concept="3_J27D" id="6sT62Z6Skkx" role="m$_w8">
        <node concept="3Mxwey" id="6sT62Z6Skky" role="3MwsjC">
          <ref role="3Mxwex" to="ffeo:5HVSRHdVf2d" resolve="version" />
        </node>
      </node>
      <node concept="3_J27D" id="6sT62Z6Skkz" role="m$_yQ">
        <node concept="3Mxwew" id="6sT62Z6Skk$" role="3MwsjC">
          <property role="3MwjfP" value="MPS Test Behavior Plugin" />
        </node>
      </node>
      <node concept="3_J27D" id="6sT62Z6Skk_" role="3s6cr7">
        <node concept="3Mxwew" id="6sT62Z6SkkA" role="3MwsjC">
          <property role="3MwjfP" value="a plugin to test behavior reflective calls" />
        </node>
      </node>
      <node concept="m$_yC" id="6sT62Z6SkkC" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="6IbFeTz9Lax" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:ymnOULATpW" resolve="jetbrains.mps.testing" />
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHNUv" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHNUw" role="398pKh">
        <ref role="398BVh" node="6sT62Z6SkgV" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHNUx" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHNUy" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHNUz" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="3m6iW5ABSUY">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsEditorImageGen" />
    <property role="turDy" value="mpsEditorImageGen.xml" />
    <node concept="13uUGR" id="5L9CVXIvG9N" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="5L9CVXIvG9V" role="13uUGP">
        <ref role="398BVh" node="3m6iW5ABSVb" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3m6iW5ABSVC" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="3m6iW5ABSVD" role="2JcizS">
        <ref role="398BVh" node="3m6iW5ABSVa" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="3m6iW5ABSVa" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="3m6iW5ACi9w" role="398pKh">
        <node concept="2Ry0Ak" id="3m6iW5ACiat" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="3m6iW5ACia$" role="2Ry0An">
            <property role="2Ry0Am" value="artifacts" />
            <node concept="2Ry0Ak" id="3m6iW5ACiaX" role="2Ry0An">
              <property role="2Ry0Am" value="mps" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3m6iW5ABSVb" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="3m6iW5ABSVc" role="398pKh">
        <ref role="398BVh" node="3m6iW5ABSVa" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="3m6iW5ABSV1" role="10PD9s" />
    <node concept="3b7kt6" id="3m6iW5ABSV2" role="10PD9s" />
    <node concept="1gjT0q" id="3m6iW5ABSV3" role="10PD9s" />
    <node concept="1l3spV" id="3m6iW5ABSV0" role="1l3spN">
      <node concept="398223" id="3m6iW5ABT0X" role="39821P">
        <node concept="L2wRC" id="3m6iW5ABT0Y" role="39821P">
          <ref role="L2wRA" node="3m6iW5ABSW3" resolve="jetbrains.mps.lang.editor.imageGen.testLanguage" />
        </node>
        <node concept="L2wRC" id="3m6iW5ABT0Z" role="39821P">
          <ref role="L2wRA" node="3m6iW5ABSXQ" resolve="jetbrains.mps.lang.editor.imageGen.tests" />
        </node>
        <node concept="3_J27D" id="3m6iW5ABT11" role="Nbhlr">
          <node concept="3Mxwew" id="3m6iW5ABT12" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2_Ic$z" id="7d2DnzDyiWl" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <property role="1Zh0CI" value="--add-opens=java.desktop/sun.font=ALL-UNNAMED" />
      <node concept="3qWCbU" id="7d2DnzDyiWm" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info, **/*.gif" />
      </node>
    </node>
    <node concept="2G$12M" id="3m6iW5ABSW0" role="3989C9">
      <property role="TrG5h" value="imagegen-editor-tests" />
      <node concept="1E1JtD" id="3m6iW5ABSW3" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.imageGen.testLanguage" />
        <property role="3LESm3" value="9bcd3d4b-c789-4f70-85e4-038ea20762b9" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihG3" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihG4" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihG5" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihG6" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihG7" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihG8" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihG9" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihGa" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3m6iW5ABSW4" role="3LF7KH">
          <node concept="2Ry0Ak" id="3m6iW5ABSWd" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="3m6iW5ABSWk" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="3m6iW5ABSWr" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="3m6iW5ABSWy" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.testLanguage" />
                  <node concept="2Ry0Ak" id="3m6iW5ABSWD" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3m6iW5ABSWG" role="3bR37C">
          <node concept="3bR9La" id="3m6iW5ABSWH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1yeLz9" id="3m6iW5ABSWI" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.editor.imageGen.testLanguage#5244026788026447518" />
          <property role="3LESm3" value="bb4184f1-9cb1-45cb-911f-bff431b5de5b" />
          <property role="ZpmtF" value="true" />
          <node concept="1BupzO" id="73GUf$umReF" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umReG" role="1HemKq">
              <node concept="55IIr" id="73GUf$umRe$" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umRe_" role="iGT6I">
                  <property role="2Ry0Am" value="testbench" />
                  <node concept="2Ry0Ak" id="73GUf$umReA" role="2Ry0An">
                    <property role="2Ry0Am" value="testsolutions" />
                    <node concept="2Ry0Ak" id="73GUf$umReB" role="2Ry0An">
                      <property role="2Ry0Am" value="testlangs" />
                      <node concept="2Ry0Ak" id="73GUf$umReC" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.testLanguage" />
                        <node concept="2Ry0Ak" id="73GUf$umReD" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umReE" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umReH" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRex" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRey" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRer" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRes" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRet" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umReu" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umRev" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umRew" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRez" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3m6iW5ABSXQ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.imageGen.tests" />
        <property role="3LESm3" value="d48febc8-a636-425c-92c3-a2b671b6f363" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii5w" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii5x" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii5y" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii5z" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii5$" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii5_" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iii5A" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3m6iW5ABSXT" role="3LF7KH">
          <node concept="2Ry0Ak" id="3m6iW5ABSZa" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="3m6iW5ABSZF" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="3m6iW5ABSZM" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.tests" />
                <node concept="2Ry0Ak" id="3m6iW5ABSZT" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3m6iW5ABSZW" role="3bR37C">
          <node concept="3bR9La" id="3m6iW5ABSZX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umReN" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umReO" role="1HemKq">
            <node concept="55IIr" id="73GUf$umReI" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umReJ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umReK" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umReL" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.imageGen.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umReM" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umReP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="3m6iW5ABT2Z" role="1hWBAP">
      <property role="TrG5h" value="imageGenTests" />
      <node concept="24cAiW" id="5I1s5NvQ4T7" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kT2" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kT3" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="3m6iW5ABTpe" role="22LTRK">
        <ref role="22LTRG" node="3m6iW5ABSW0" resolve="imagegen-editor-tests" />
      </node>
    </node>
    <node concept="55IIr" id="3m6iW5AC5Lh" role="auvoZ">
      <node concept="2Ry0Ak" id="3m6iW5AC5Li" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="3m6iW5AC5Lj" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHO5x" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHO5y" role="398pKh">
        <ref role="398BVh" node="3m6iW5ABSVa" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHO5z" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHO5$" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHO5_" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="7S0pHCuh8I">
    <property role="TrG5h" value="mpsDataFlow" />
    <property role="turDy" value="mpsDataFlow.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="22LTRH" id="7S0pHCuh8J" role="1hWBAP">
      <property role="TrG5h" value="dataFlow" />
      <node concept="24cAiW" id="5I1s5NvQ4T8" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kT4" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kT5" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="61_meM_pNGe" role="22LTRK">
        <ref role="22LTRG" node="7S0pHCuhjs" resolve="dataFlow-tests" />
      </node>
    </node>
    <node concept="2_Ic$z" id="7S0pHCuh8L" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="7S0pHCuh8M" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="7S0pHCuhjs" role="3989C9">
      <property role="TrG5h" value="dataFlow-tests" />
      <node concept="1E1JtA" id="7S0pHCuh8N" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="analyzers.test" />
        <property role="3LESm3" value="f9665e4e-baa4-42c6-b97d-c49dfa9f7381" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii3Y" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii3Z" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii40" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii41" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii42" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii43" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iii44" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="EpEP7iii45" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="EpEP7iii46" role="2Ry0An">
                        <property role="2Ry0Am" value="analyzers.test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7S0pHCuh8O" role="3LF7KH">
          <node concept="2Ry0Ak" id="7S0pHCuh8P" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7S0pHCuh8Q" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7S0pHCuh8R" role="2Ry0An">
                <property role="2Ry0Am" value="testDataFlow" />
                <node concept="2Ry0Ak" id="7S0pHCuh9G" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="7S0pHCuh9L" role="2Ry0An">
                    <property role="2Ry0Am" value="analyzers.test" />
                    <node concept="2Ry0Ak" id="7S0pHCuh9Q" role="2Ry0An">
                      <property role="2Ry0Am" value="analyzers.test.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7S0pHCuh9S" role="3bR37C">
          <node concept="3bR9La" id="7S0pHCuh9T" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU0H" resolve="jetbrains.mps.lang.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="7S0pHCuhgm" role="3bR37C">
          <node concept="3bR9La" id="7S0pHCuhgn" role="1SiIV1">
            <ref role="3bR37D" node="7S0pHCuhb7" resolve="testExtendingAnalyzer" />
          </node>
        </node>
        <node concept="1SiIV0" id="2$3McZ0XF1$" role="3bR37C">
          <node concept="3bR9La" id="2$3McZ0XF1_" role="1SiIV1">
            <ref role="3bR37D" node="7S0pHCuhdp" resolve="testCustomAnalyzer" />
          </node>
        </node>
        <node concept="1SiIV0" id="2$3McZ0XF1A" role="3bR37C">
          <node concept="3bR9La" id="2$3McZ0XF1B" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfK" resolve="jetbrains.mps.dataFlow.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRuW" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRuX" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRuP" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRuQ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRuR" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRuS" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="73GUf$umRuT" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="73GUf$umRuU" role="2Ry0An">
                        <property role="2Ry0Am" value="analyzers.test" />
                        <node concept="2Ry0Ak" id="73GUf$umRuV" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRuY" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="61_meM_pN0j" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.dataflow.test" />
        <property role="3LESm3" value="7e8ca0e7-8d86-46ae-abea-749cf4fce791" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="61_meM_pN0m" role="3LF7KH">
          <node concept="2Ry0Ak" id="61_meM_pN8_" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="61_meM_pN8C" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="61_meM_pNeB" role="2Ry0An">
                <property role="2Ry0Am" value="testDataFlow" />
                <node concept="2Ry0Ak" id="61_meM_pNfy" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="61_meM_pNlA" role="2Ry0An">
                    <property role="2Ry0Am" value="lang.rt.test" />
                    <node concept="2Ry0Ak" id="61_meM_pNnn" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.dataflow.test.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="61_meM_pNqS" role="3bR37C">
          <node concept="3bR9La" id="61_meM_pNqT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="61_meM_pNqU" role="3bR37C">
          <node concept="3bR9La" id="61_meM_pNqV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfK" resolve="jetbrains.mps.dataFlow.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="61_meM_pNqW" role="3bR37C">
          <node concept="3bR9La" id="61_meM_pNqX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="61_meM_pNr5" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="61_meM_pNr6" role="1HemKq">
            <node concept="55IIr" id="61_meM_pNqY" role="3LXTmr">
              <node concept="2Ry0Ak" id="61_meM_pNqZ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="61_meM_pNr0" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="61_meM_pNr1" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="61_meM_pNr2" role="2Ry0An">
                      <property role="2Ry0Am" value="solutions" />
                      <node concept="2Ry0Ak" id="61_meM_pNr3" role="2Ry0An">
                        <property role="2Ry0Am" value="lang.rt.test" />
                        <node concept="2Ry0Ak" id="61_meM_pNr4" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="61_meM_pNr7" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7S0pHCuhwj" role="3989C9">
      <property role="TrG5h" value="dataFlow-langs" />
      <node concept="1E1JtD" id="7S0pHCuhb7" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testExtendingAnalyzer" />
        <property role="3LESm3" value="3ac033a0-bffa-48e3-a843-a40cbdd89859" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiib3" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiib4" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiib5" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiib6" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiib7" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiib8" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iiib9" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="EpEP7iiiba" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iiibb" role="2Ry0An">
                        <property role="2Ry0Am" value="testExtendingAnalyzer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7S0pHCuhc8" role="3LF7KH">
          <node concept="2Ry0Ak" id="7S0pHCuhc9" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7S0pHCuhca" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7S0pHCuhcb" role="2Ry0An">
                <property role="2Ry0Am" value="testDataFlow" />
                <node concept="2Ry0Ak" id="7S0pHCuhcc" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7S0pHCuhcd" role="2Ry0An">
                    <property role="2Ry0Am" value="testExtendingAnalyzer" />
                    <node concept="2Ry0Ak" id="7S0pHCuhcF" role="2Ry0An">
                      <property role="2Ry0Am" value="testExtendingAnalyzer.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7S0pHCuhcU" role="3bR37C">
          <node concept="1Busua" id="7S0pHCuhcV" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRv6" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRv7" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRuZ" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRv0" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRv1" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRv2" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="73GUf$umRv3" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRv4" role="2Ry0An">
                        <property role="2Ry0Am" value="testExtendingAnalyzer" />
                        <node concept="2Ry0Ak" id="73GUf$umRv5" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRv8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="68XlVg41ke4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.testCustomDataFlow" />
        <property role="3LESm3" value="f1af2340-2212-47dd-a65b-2d6ee9427e3e" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihHf" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihHg" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihHh" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihHi" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihHj" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihHk" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iihHl" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="EpEP7iihHm" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iihHn" role="2Ry0An">
                        <property role="2Ry0Am" value="testCustomDataFlow" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="68XlVg41klO" role="3LF7KH">
          <node concept="2Ry0Ak" id="68XlVg41klP" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="68XlVg41klQ" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="68XlVg41klR" role="2Ry0An">
                <property role="2Ry0Am" value="testDataFlow" />
                <node concept="2Ry0Ak" id="68XlVg41klS" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="68XlVg41klT" role="2Ry0An">
                    <property role="2Ry0Am" value="testCustomDataFlow" />
                    <node concept="2Ry0Ak" id="68XlVg41kmG" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.testCustomDataFlow.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="68XlVg41kn3" role="3bR37C">
          <node concept="1Busua" id="68XlVg41kn4" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L4B" resolve="jetbrains.mps.lang.dataFlow" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRvg" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRvh" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRv9" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRva" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRvb" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRvc" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="73GUf$umRvd" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRve" role="2Ry0An">
                        <property role="2Ry0Am" value="testCustomDataFlow" />
                        <node concept="2Ry0Ak" id="73GUf$umRvf" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRvi" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7S0pHCuhdp" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="testCustomAnalyzer" />
        <property role="3LESm3" value="b124c25e-1e16-4432-ad5e-0ac0ecae98f5" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiidj" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiidk" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiidl" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiidm" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiidn" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiido" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="EpEP7iiidp" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="EpEP7iiidq" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="EpEP7iiidr" role="2Ry0An">
                        <property role="2Ry0Am" value="testCustomAnalyzer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7S0pHCuhdq" role="3LF7KH">
          <node concept="2Ry0Ak" id="7S0pHCuhdr" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7S0pHCuhds" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7S0pHCuhdt" role="2Ry0An">
                <property role="2Ry0Am" value="testDataFlow" />
                <node concept="2Ry0Ak" id="7S0pHCuhdu" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="7S0pHCuhdv" role="2Ry0An">
                    <property role="2Ry0Am" value="testCustomAnalyzer" />
                    <node concept="2Ry0Ak" id="7S0pHCuheY" role="2Ry0An">
                      <property role="2Ry0Am" value="testCustomAnalyzer.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7S0pHCuhdz" role="3bR37C">
          <node concept="3bR9La" id="7S0pHCuhd$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LeP" resolve="jetbrains.mps.analyzers.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umRvq" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRvr" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRvj" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRvk" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRvl" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRvm" role="2Ry0An">
                    <property role="2Ry0Am" value="testDataFlow" />
                    <node concept="2Ry0Ak" id="73GUf$umRvn" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRvo" role="2Ry0An">
                        <property role="2Ry0Am" value="testCustomAnalyzer" />
                        <node concept="2Ry0Ak" id="73GUf$umRvp" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRvs" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7S0pHCuh8Z" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="7S0pHCuh90" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7S0pHCuh91" role="398pKh">
        <ref role="398BVh" node="7S0pHCuh8Z" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="7S0pHCuh92" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="7S0pHCuh93" role="13uUGP">
        <ref role="398BVh" node="7S0pHCuh90" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7S0pHCuh94" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7S0pHCuh95" role="2JcizS">
        <ref role="398BVh" node="7S0pHCuh8Z" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="7S0pHCuh96" role="auvoZ">
      <node concept="2Ry0Ak" id="7S0pHCuh97" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="7S0pHCuh98" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="7S0pHCuh99" role="1l3spN">
      <node concept="398223" id="7S0pHCuhKP" role="39821P">
        <node concept="3_J27D" id="7S0pHCuhKR" role="Nbhlr">
          <node concept="3Mxwew" id="7S0pHCuhLm" role="3MwsjC">
            <property role="3MwjfP" value="solutions" />
          </node>
        </node>
        <node concept="L2wRC" id="7S0pHCuhLo" role="39821P">
          <ref role="L2wRA" node="7S0pHCuh8N" resolve="analyzers.test" />
        </node>
        <node concept="L2wRC" id="61_meM_pNyP" role="39821P">
          <ref role="L2wRA" node="61_meM_pN0j" resolve="jetbrains.mps.dataflow.test" />
        </node>
      </node>
      <node concept="398223" id="7S0pHCuhEh" role="39821P">
        <node concept="3_J27D" id="7S0pHCuhEj" role="Nbhlr">
          <node concept="3Mxwew" id="7S0pHCuhEH" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
        <node concept="L2wRC" id="7S0pHCuhF4" role="39821P">
          <ref role="L2wRA" node="7S0pHCuhdp" resolve="testCustomAnalyzer" />
        </node>
        <node concept="L2wRC" id="7S0pHCuhHj" role="39821P">
          <ref role="L2wRA" node="7S0pHCuhb7" resolve="testExtendingAnalyzer" />
        </node>
        <node concept="L2wRC" id="68XlVg41kol" role="39821P">
          <ref role="L2wRA" node="68XlVg41ke4" resolve="jetbrains.mps.testCustomDataFlow" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="7S0pHCuh9b" role="10PD9s" />
    <node concept="3b7kt6" id="7S0pHCuh9c" role="10PD9s" />
    <node concept="1gjT0q" id="7S0pHCuh9d" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHP9K" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHP9L" role="398pKh">
        <ref role="398BVh" node="7S0pHCuh8Z" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHP9M" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHP9N" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHP9O" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4Sf$XywNuac">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsEditorTransformationMenu" />
    <property role="turDy" value="mpsEditorTransformationMenu.xml" />
    <node concept="13uUGR" id="5L9CVXIvG9z" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="5L9CVXIvG9G" role="13uUGP">
        <ref role="398BVh" node="4Sf$XywNuak" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4Sf$XywNuad" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4Sf$XywNuae" role="2JcizS">
        <ref role="398BVh" node="4Sf$XywNuaf" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6r68uXoBw$N" role="1l3spa">
      <ref role="1l3spb" node="53PdBITeUc0" resolve="mpsEditor" />
    </node>
    <node concept="398rNT" id="4Sf$XywNuaf" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="4Sf$XywNuak" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="4Sf$XywNual" role="398pKh">
        <ref role="398BVh" node="4Sf$XywNuaf" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="4Sf$XywNuam" role="10PD9s" />
    <node concept="3b7kt6" id="4Sf$XywNuan" role="10PD9s" />
    <node concept="1gjT0q" id="4Sf$XywNuao" role="10PD9s" />
    <node concept="1l3spV" id="4Sf$XywNuap" role="1l3spN">
      <node concept="398223" id="axQ2jNKhOz" role="39821P">
        <node concept="L2wRC" id="axQ2jNFdln" role="39821P">
          <ref role="L2wRA" node="2X_LC_CP7fo" resolve="jetbrains.mps.lang.editor.menus.testMetaLanguage" />
        </node>
        <node concept="L2wRC" id="2X_LC_CDFE_" role="39821P">
          <ref role="L2wRA" node="2X_LC_CDElV" resolve="jetbrains.mps.lang.editor.menus.testLanguage" />
        </node>
        <node concept="L2wRC" id="33LYnHOCpS4" role="39821P">
          <ref role="L2wRA" node="33LYnHOCppR" resolve="jetbrains.mps.lang.editor.menus.testExtendingLanguage" />
        </node>
        <node concept="L2wRC" id="33LYnHOCpUL" role="39821P">
          <ref role="L2wRA" node="33LYnHOCpBH" resolve="jetbrains.mps.lang.editor.menus.testUnusedExtendingLanguage" />
        </node>
        <node concept="L2wRC" id="4Sf$XywNuar" role="39821P">
          <ref role="L2wRA" node="4Sf$XywNuay" resolve="jetbrains.mps.lang.editor.menus.contextAssistant.testLanguage" />
        </node>
        <node concept="L2wRC" id="4Sf$XywNuoV" role="39821P">
          <ref role="L2wRA" node="4Sf$XywNum3" resolve="jetbrains.mps.lang.editor.menus.contextAssistant.testExtendingLanguage" />
        </node>
        <node concept="L2wRC" id="6wRXAC4uQIJ" role="39821P">
          <ref role="L2wRA" node="6wRXAC4uQ58" resolve="jetbrains.mps.lang.editor.menus.extras.testLanguage" />
        </node>
        <node concept="L2wRC" id="7Nx4mSUEGVC" role="39821P">
          <ref role="L2wRA" node="7Nx4mSUEB9S" resolve="jetbrains.mps.lang.editor.menus.substitute.testLanguage" />
        </node>
        <node concept="L2wRC" id="7Nx4mSUEGYJ" role="39821P">
          <ref role="L2wRA" node="7Nx4mSUEBa7" resolve="jetbrains.mps.lang.editor.menus.substitute.testExtendingLanguage" />
        </node>
        <node concept="L2wRC" id="5HTr1bidITI" role="39821P">
          <ref role="L2wRA" node="5HTr1bidIki" resolve="jetbrains.mps.lang.editor.menus.sideTransform.testLanguage" />
        </node>
        <node concept="L2wRC" id="4AL49kgFgES" role="39821P">
          <ref role="L2wRA" node="4AL49kgFgzZ" resolve="jetbrains.mps.lang.editor.menus.style.testLanguage" />
        </node>
        <node concept="3_J27D" id="axQ2jNKhO_" role="Nbhlr">
          <node concept="3Mxwew" id="axQ2jNKhPr" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
      </node>
      <node concept="398223" id="4Sf$XywNuaq" role="39821P">
        <node concept="L2wRC" id="2X_LC_CDFGq" role="39821P">
          <ref role="L2wRA" node="axQ2jNKpix" resolve="jetbrains.mps.lang.editor.menus.tests" />
        </node>
        <node concept="L2wRC" id="4Sf$XywNuas" role="39821P">
          <ref role="L2wRA" node="4Sf$XywNuaG" resolve="jetbrains.mps.lang.editor.menus.contextAssistant.tests" />
        </node>
        <node concept="L2wRC" id="6wRXAC4uQO2" role="39821P">
          <ref role="L2wRA" node="6wRXAC4uQlP" resolve="jetbrains.mps.lang.editor.menus.extras.tests" />
        </node>
        <node concept="L2wRC" id="5Xa7gk5dFbc" role="39821P">
          <ref role="L2wRA" node="5Xa7gk5dENt" resolve="jetbrains.mps.editor.contextActionsTool.tests" />
        </node>
        <node concept="L2wRC" id="7Nx4mSUEH4B" role="39821P">
          <ref role="L2wRA" node="7Nx4mSUEBag" resolve="jetbrains.mps.lang.editor.menus.substitute.tests" />
        </node>
        <node concept="L2wRC" id="5HTr1bidIYD" role="39821P">
          <ref role="L2wRA" node="5HTr1bidIkC" resolve="jetbrains.mps.lang.editor.menus.sideTransform.tests" />
        </node>
        <node concept="L2wRC" id="4AL49kgFgF4" role="39821P">
          <ref role="L2wRA" node="4AL49kgFg$g" resolve="jetbrains.mps.lang.editor.menus.style.tests" />
        </node>
        <node concept="3_J27D" id="4Sf$XywNuat" role="Nbhlr">
          <node concept="3Mxwew" id="4Sf$XywNuau" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2_Ic$z" id="4Sf$XywNuav" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="4Sf$XywNuaw" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info, **/*.gif" />
      </node>
    </node>
    <node concept="2G$12M" id="2X_LC_CDEju" role="3989C9">
      <property role="TrG5h" value="menu-tests" />
      <node concept="1E1JtD" id="2X_LC_CP7fo" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.testMetaLanguage" />
        <property role="3LESm3" value="69068b7c-ba1f-47fb-a486-4981f42606e9" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihRG" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihRH" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihRI" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihRJ" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihRK" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihRL" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihRM" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihRN" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testMetaLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="2X_LC_CP7hB" role="3LF7KH">
          <node concept="2Ry0Ak" id="2X_LC_CP7hC" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2X_LC_CP7hD" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2X_LC_CP7hE" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="axQ2jNxuP8" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.testMetaLanguage" />
                  <node concept="2Ry0Ak" id="6oUy5jx7Pxc" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.testMetaLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNxuQz" role="3bR37C">
          <node concept="1Busua" id="axQ2jNxuQ$" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1yeLz9" id="axQ2jNxuQ_" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.testMetaLanguage#3415354185901915849" />
          <property role="3LESm3" value="e7f3952e-b4e4-4190-bdf4-d553cb97c53e" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="axQ2jNxuQA" role="3bR37C">
            <node concept="3bR9La" id="axQ2jNxuQB" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K0iE" resolve="jetbrains.mps.lang.editor#1129914002149" />
            </node>
          </node>
          <node concept="1BupzO" id="73GUf$umR32" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="73GUf$umR33" role="1HemKq">
              <node concept="55IIr" id="73GUf$umR2V" role="3LXTmr">
                <node concept="2Ry0Ak" id="73GUf$umR2W" role="iGT6I">
                  <property role="2Ry0Am" value="testbench" />
                  <node concept="2Ry0Ak" id="73GUf$umR2X" role="2Ry0An">
                    <property role="2Ry0Am" value="testsolutions" />
                    <node concept="2Ry0Ak" id="73GUf$umR2Y" role="2Ry0An">
                      <property role="2Ry0Am" value="testlangs" />
                      <node concept="2Ry0Ak" id="73GUf$umR2Z" role="2Ry0An">
                        <property role="2Ry0Am" value="editor.menus.testMetaLanguage" />
                        <node concept="2Ry0Ak" id="73GUf$umR30" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umR31" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="73GUf$umR34" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="478VZjcfQl9" role="3bR37C">
          <node concept="3bR9La" id="478VZjcfQla" role="1SiIV1">
            <ref role="3bR37D" node="2X_LC_CP7fo" resolve="jetbrains.mps.lang.editor.menus.testMetaLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4akNG6M6kPJ" role="3bR37C">
          <node concept="3bR9La" id="4akNG6M6kPK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9I" resolve="jetbrains.mps.lang.sharedConcepts" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR2S" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR2T" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR2M" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR2N" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR2O" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR2P" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR2Q" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testMetaLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR2R" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR2U" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2X_LC_CDElV" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.testLanguage" />
        <property role="3LESm3" value="4eb772b0-4df3-414a-b894-63abeb912f56" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihIn" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihIo" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihIp" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihIq" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihIr" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihIs" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihIt" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihIu" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="2X_LC_CDElW" role="3LF7KH">
          <node concept="2Ry0Ak" id="2X_LC_CDEnn" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2X_LC_CDEof" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2X_LC_CDEp7" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="2X_LC_CDEpI" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.testLanguage" />
                  <node concept="2Ry0Ak" id="6oUy5jx7Pxe" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2X_LC_CDEqC" role="3bR37C">
          <node concept="3bR9La" id="2X_LC_CDEqD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="2X_LC_CDEqE" role="3bR37C">
          <node concept="3bR9La" id="2X_LC_CDEqF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2X_LC_CDEqI" role="3bR37C">
          <node concept="1Busua" id="2X_LC_CDEqJ" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNxuR_" role="3bR37C">
          <node concept="3bR9La" id="axQ2jNxuRA" role="1SiIV1">
            <ref role="3bR37D" node="2X_LC_CP7fo" resolve="jetbrains.mps.lang.editor.menus.testMetaLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3b" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR3c" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR35" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR36" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR37" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR38" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR39" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR3a" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR3d" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="33LYnHOCppR" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.testExtendingLanguage" />
        <property role="3LESm3" value="9b3af7e0-9a52-4741-a75d-becf7e1d5117" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihSv" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihSw" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihSx" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihSy" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihSz" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihS$" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihS_" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihSA" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testExtendingLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="33LYnHOCppU" role="3LF7KH">
          <node concept="2Ry0Ak" id="33LYnHOCpri" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="33LYnHOCpu$" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="33LYnHOCpvg" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="33LYnHOCpyy" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.testExtendingLanguage" />
                  <node concept="2Ry0Ak" id="6oUy5jx7Pxg" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.testExtendingLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="33LYnHOCp_d" role="3bR37C">
          <node concept="1Busua" id="33LYnHOCp_e" role="1SiIV1">
            <ref role="1Busuk" node="2X_LC_CDElV" resolve="jetbrains.mps.lang.editor.menus.testLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3k" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR3l" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR3e" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR3f" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR3g" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR3h" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR3i" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testExtendingLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR3j" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR3m" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="33LYnHOCpBH" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.testUnusedExtendingLanguage" />
        <property role="3LESm3" value="f909cea5-3e79-4399-b0a6-980af6d53669" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihIM" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihIN" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihIO" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihIP" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihIQ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihIR" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihIS" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihIT" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testUnusedExtendingLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="33LYnHOCpBK" role="3LF7KH">
          <node concept="2Ry0Ak" id="33LYnHOCpDn" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="33LYnHOCpI_" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="33LYnHOCpJn" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="33LYnHOCpNQ" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.testUnusedExtendingLanguage" />
                  <node concept="2Ry0Ak" id="6oUy5jx7Pxi" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.testUnusedExtendingLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="33LYnHOCpQa" role="3bR37C">
          <node concept="1Busua" id="33LYnHOCpQb" role="1SiIV1">
            <ref role="1Busuk" node="2X_LC_CDElV" resolve="jetbrains.mps.lang.editor.menus.testLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3t" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR3u" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR3n" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR3o" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR3p" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR3q" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR3r" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.testUnusedExtendingLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR3s" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR3v" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="axQ2jNKpix" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.tests" />
        <property role="3LESm3" value="0aa20195-3c81-4810-b4b6-be1166055d6a" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihPD" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihPE" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihPF" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihPG" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihPH" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihPI" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihPJ" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="axQ2jNKpi$" role="3LF7KH">
          <node concept="2Ry0Ak" id="axQ2jNKpjB" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="axQ2jNKpn4" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="axQ2jNKpoh" role="2Ry0An">
                <property role="2Ry0Am" value="editor.menus.tests" />
                <node concept="2Ry0Ak" id="6oUy5jx7Pxk" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNKprr" role="3bR37C">
          <node concept="3bR9La" id="axQ2jNKprs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNKprt" role="3bR37C">
          <node concept="3bR9La" id="axQ2jNKpru" role="1SiIV1">
            <ref role="3bR37D" node="2X_LC_CDElV" resolve="jetbrains.mps.lang.editor.menus.testLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNKprv" role="3bR37C">
          <node concept="3bR9La" id="axQ2jNKprw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNKprx" role="3bR37C">
          <node concept="3bR9La" id="axQ2jNKpry" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="axQ2jNKprz" role="3bR37C">
          <node concept="3bR9La" id="axQ2jNKpr$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="478VZjcfQk1" role="3bR37C">
          <node concept="3bR9La" id="478VZjcfQk2" role="1SiIV1">
            <ref role="3bR37D" node="2X_LC_CP7fo" resolve="jetbrains.mps.lang.editor.menus.testMetaLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="2mvci7PwKru" role="3bR37C">
          <node concept="3bR9La" id="2mvci7PwKrv" role="1SiIV1">
            <ref role="3bR37D" node="33LYnHOCppR" resolve="jetbrains.mps.lang.editor.menus.testExtendingLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5XkRVC1IH3e" role="3bR37C">
          <node concept="3bR9La" id="5XkRVC1IH3f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3_" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR3A" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR3w" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR3x" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR3y" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR3z" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR3$" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR3B" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6wRXAC4uQ1Q" role="3989C9">
      <property role="TrG5h" value="menu-extras-tests" />
      <node concept="1E1JtD" id="6wRXAC4uQ58" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.extras.testLanguage" />
        <property role="3LESm3" value="f015c5f8-7205-4441-9cc7-dc7ef28ea903" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihFm" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihFn" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihFo" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihFp" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihFq" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihFr" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihFs" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihFt" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.extras.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6wRXAC4uQ59" role="3LF7KH">
          <node concept="2Ry0Ak" id="6wRXAC4uQ7I" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6wRXAC4uQbW" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="6wRXAC4uQcO" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="6wRXAC4uQgd" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.extras.testLanguage" />
                  <node concept="2Ry0Ak" id="6wRXAC4uQhW" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.extras.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7GARn1zNdW0" role="3bR37C">
          <node concept="3bR9La" id="7GARn1zNdW1" role="1SiIV1">
            <ref role="3bR37D" node="2X_LC_CDElV" resolve="jetbrains.mps.lang.editor.menus.testLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3I" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR3J" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR3C" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR3D" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR3E" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR3F" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR3G" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.extras.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR3H" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR3K" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6wRXAC4uQlP" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.extras.tests" />
        <property role="3LESm3" value="01f0c325-0ad6-43cd-a7cb-1b83961cf69e" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihVE" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihVF" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihVG" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihVH" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihVI" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihVJ" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihVK" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.extras.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="6wRXAC4uQlS" role="3LF7KH">
          <node concept="2Ry0Ak" id="6wRXAC4uQoQ" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6wRXAC4uQsB" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="6wRXAC4uQAU" role="2Ry0An">
                <property role="2Ry0Am" value="editor.menus.extras.tests" />
                <node concept="2Ry0Ak" id="6wRXAC4uQCP" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.extras.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQDM" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQDN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQDO" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQDP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4yLYeyZVqzT" resolve="jetbrains.mps.lang.editor.menus.extras.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQDS" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQDT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQDU" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQDV" role="1SiIV1">
            <ref role="3bR37D" node="axQ2jNKpix" resolve="jetbrains.mps.lang.editor.menus.tests" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQDW" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQDX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQDY" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQDZ" role="1SiIV1">
            <ref role="3bR37D" node="6wRXAC4uQ58" resolve="jetbrains.mps.lang.editor.menus.extras.testLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wRXAC4uQE0" role="3bR37C">
          <node concept="3bR9La" id="6wRXAC4uQE1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7GARn1zNdW8" role="3bR37C">
          <node concept="3bR9La" id="7GARn1zNdW9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lh2" resolve="jetbrains.mps.refactoring.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7GARn1zNdWa" role="3bR37C">
          <node concept="3bR9La" id="7GARn1zNdWb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L7y" resolve="jetbrains.mps.lang.intentions" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3Q" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR3R" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR3L" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR3M" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR3N" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR3O" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.extras.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR3P" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR3S" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5yInWDRFZyI" role="3bR37C">
          <node concept="3bR9La" id="5yInWDRFZyJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1uyFnK9vtIN" resolve="MPS.IDEA.testFramework" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="4Sf$XywNuax" role="3989C9">
      <property role="TrG5h" value="context-assistant-tests" />
      <node concept="1E1JtD" id="4Sf$XywNuay" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.contextAssistant.testLanguage" />
        <property role="3LESm3" value="9a629f9a-abc9-4c29-b1b8-db7f349f7fbc" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii5e" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii5f" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii5g" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii5h" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii5i" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii5j" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iii5k" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iii5l" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.contextAssistant.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4Sf$XywNuaz" role="3LF7KH">
          <node concept="2Ry0Ak" id="4Sf$XywNua$" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4Sf$XywNua_" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4Sf$XywNuaA" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="4Sf$XywNuaB" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.contextAssistant.testLanguage" />
                  <node concept="2Ry0Ak" id="6oUy5jx7Pxm" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.contextAssistant.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4Sf$XywNuaD" role="3bR37C">
          <node concept="3bR9La" id="4Sf$XywNuaE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Sf$XywNui_" role="3bR37C">
          <node concept="1Busua" id="4Sf$XywNuiA" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR3Z" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR40" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR3T" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR3U" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR3V" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR3W" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR3X" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.contextAssistant.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR3Y" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR41" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4Sf$XywNum3" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.contextAssistant.testExtendingLanguage" />
        <property role="3LESm3" value="d1fa0116-fbd7-44fe-bcc8-e093dfdf9f3c" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihTW" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihTX" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihTY" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihTZ" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihU0" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihU1" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihU2" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihU3" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.contextAssistant.extension.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Nx4mSUEChJ" role="3bR37C">
          <node concept="1Busua" id="7Nx4mSUEChK" role="1SiIV1">
            <ref role="1Busuk" node="4Sf$XywNuay" resolve="jetbrains.mps.lang.editor.menus.contextAssistant.testLanguage" />
          </node>
        </node>
        <node concept="55IIr" id="4Sf$XywNum6" role="3LF7KH">
          <node concept="2Ry0Ak" id="4Sf$XywNumE" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4Sf$XywNumJ" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4Sf$XywNumM" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="4Sf$XywNumR" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.contextAssistant.extension.testLanguage" />
                  <node concept="2Ry0Ak" id="6oUy5jx7Pxo" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.contextAssistant.testExtendingLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7$8NXlZrFd2" role="3bR37C">
          <node concept="3bR9La" id="7$8NXlZrFd3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR48" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR49" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR42" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR43" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR44" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR45" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR46" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.contextAssistant.extension.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR47" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4a" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4Sf$XywNuaG" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.contextAssistant.tests" />
        <property role="3LESm3" value="39e0eaec-a754-4bf3-b9e5-fb075e13bcc5" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiiaN" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiiaO" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiiaP" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiiaQ" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiiaR" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiiaS" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiiaT" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.contextAssistant.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4Sf$XywNuaH" role="3LF7KH">
          <node concept="2Ry0Ak" id="4Sf$XywNuaI" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4Sf$XywNuaJ" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4Sf$XywNuaK" role="2Ry0An">
                <property role="2Ry0Am" value="editor.menus.contextAssistant.tests" />
                <node concept="2Ry0Ak" id="6oUy5jx7Pxq" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.contextAssistant.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4Sf$XywNuju" role="3bR37C">
          <node concept="3bR9La" id="4Sf$XywNujv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="NIgnipSzD3" role="3bR37C">
          <node concept="3bR9La" id="NIgnipSzD4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="l2zRMrnCqa" role="3bR37C">
          <node concept="3bR9La" id="l2zRMrnCqb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR4g" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR4h" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4b" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR4c" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR4d" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR4e" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.contextAssistant.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR4f" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4i" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5Xa7gk5dEE7" role="3989C9">
      <property role="TrG5h" value="context-actions-tool-tests" />
      <node concept="1E1JtA" id="5Xa7gk5dENt" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.editor.contextActionsTool.tests" />
        <property role="3LESm3" value="5b680985-8194-47f3-94b2-911d0fb5e92a" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihEv" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihEw" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihEx" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihEy" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihEz" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="EpEP7iihE$" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-context-actions" />
                  <node concept="2Ry0Ak" id="EpEP7iihE_" role="2Ry0An">
                    <property role="2Ry0Am" value="testModules" />
                    <node concept="2Ry0Ak" id="EpEP7iihEA" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5Xa7gk5dENw" role="3LF7KH">
          <node concept="2Ry0Ak" id="5Xa7gk5dESA" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5Xa7gk5dEVF" role="2Ry0An">
              <property role="2Ry0Am" value="mps-context-actions" />
              <node concept="2Ry0Ak" id="5Xa7gk5dEXK" role="2Ry0An">
                <property role="2Ry0Am" value="testModules" />
                <node concept="2Ry0Ak" id="5Xa7gk5dEZP" role="2Ry0An">
                  <property role="2Ry0Am" value="tests" />
                  <node concept="2Ry0Ak" id="5Xa7gk5dF1U" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.editor.contextActionsTool.tests.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Xa7gk5dF2W" role="3bR37C">
          <node concept="3bR9La" id="5Xa7gk5dF2X" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5Xa7gk5dF2Y" role="3bR37C">
          <node concept="3bR9La" id="5Xa7gk5dF2Z" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5Xa7gk5dF30" role="3bR37C">
          <node concept="3bR9La" id="5Xa7gk5dF31" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1JaUSFUm4WO" resolve="jetbrains.mps.editor.contextActionsTool.pluginSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="5Xa7gk5dF32" role="3bR37C">
          <node concept="3bR9La" id="5Xa7gk5dF33" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:pUqJj8tAhK" resolve="jetbrains.mps.editor.contextActionsTool.lang.menus.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="72F8HNeBdeR" role="3bR37C">
          <node concept="3bR9La" id="72F8HNeBdeS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:601$vVQgYdL" resolve="jetbrains.mps.editor.contextActionsTool.lang.menus" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR4p" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR4q" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4j" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR4k" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73GUf$umR4l" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-context-actions" />
                  <node concept="2Ry0Ak" id="73GUf$umR4m" role="2Ry0An">
                    <property role="2Ry0Am" value="testModules" />
                    <node concept="2Ry0Ak" id="73GUf$umR4n" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="73GUf$umR4o" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4r" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7Nx4mSUEB9R" role="3989C9">
      <property role="TrG5h" value="substitute-tests" />
      <node concept="1E1JtD" id="7Nx4mSUEB9S" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.substitute.testLanguage" />
        <property role="3LESm3" value="cb6d5703-7c8e-46a9-b993-c1373dc0942f" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihP5" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihP6" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihP7" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihP8" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihP9" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihPa" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihPb" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iihPc" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.substitute.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7Nx4mSUEB9T" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Nx4mSUEB9U" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7Nx4mSUEB9V" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7Nx4mSUEB9W" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="7Nx4mSUEB9X" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.substitute.testLanguage" />
                  <node concept="2Ry0Ak" id="7Nx4mSUEC3k" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.substitute.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Nx4mSUEC4B" role="3bR37C">
          <node concept="3bR9La" id="7Nx4mSUEC4C" role="1SiIV1">
            <ref role="3bR37D" node="7Nx4mSUEB9S" resolve="jetbrains.mps.lang.editor.menus.substitute.testLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="71jmo990LMb" role="3bR37C">
          <node concept="3bR9La" id="71jmo990LMc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="71jmo990LMd" role="3bR37C">
          <node concept="3bR9La" id="71jmo990LMe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="tjOLefcEuQ" role="3bR37C">
          <node concept="3bR9La" id="tjOLefcEuR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="76RZw1dH_9D" role="3bR37C">
          <node concept="3bR9La" id="76RZw1dH_9E" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR4y" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR4z" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4s" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR4t" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR4u" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR4v" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR4w" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.substitute.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR4x" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4$" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7Nx4mSUEBa7" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.substitute.testExtendingLanguage" />
        <property role="3LESm3" value="cf53f973-da8c-4f92-b001-a1311fb73959" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iii2A" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iii2B" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iii2C" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iii2D" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iii2E" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iii2F" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iii2G" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iii2H" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.substitute.extension.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7Nx4mSUEBa8" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Nx4mSUEBa9" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7Nx4mSUEBaa" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7Nx4mSUEBab" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="7Nx4mSUEBac" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.substitute.extension.testLanguage" />
                  <node concept="2Ry0Ak" id="7Nx4mSUECeZ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.substitute.testExtendingLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Nx4mSUEBae" role="3bR37C">
          <node concept="1Busua" id="7Nx4mSUEBaf" role="1SiIV1">
            <ref role="1Busuk" node="7Nx4mSUEB9S" resolve="jetbrains.mps.lang.editor.menus.substitute.testLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR4F" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR4G" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4_" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR4A" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR4B" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR4C" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR4D" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.substitute.extension.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR4E" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4H" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Nx4mSUEBag" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.substitute.tests" />
        <property role="3LESm3" value="808627dc-c34c-42ee-b76d-d12614cad4a7" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihZc" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihZd" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihZe" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihZf" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihZg" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihZh" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihZi" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.substitute.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="7Nx4mSUEBah" role="3LF7KH">
          <node concept="2Ry0Ak" id="7Nx4mSUEBai" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7Nx4mSUEBaj" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7Nx4mSUEBak" role="2Ry0An">
                <property role="2Ry0Am" value="editor.menus.substitute.tests" />
                <node concept="2Ry0Ak" id="7Nx4mSUECuM" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.substitute.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Nx4mSUECw6" role="3bR37C">
          <node concept="3bR9La" id="7Nx4mSUECw7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5EbKzCmvq6B" role="3bR37C">
          <node concept="3bR9La" id="5EbKzCmvq6C" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="2DeKCKjWJlb" role="3bR37C">
          <node concept="3bR9La" id="2DeKCKjWJlc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR4N" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR4O" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4I" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR4J" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR4K" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR4L" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.substitute.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR4M" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4P" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5HTr1bidIkh" role="3989C9">
      <property role="TrG5h" value="sideTransform-tests" />
      <node concept="1E1JtD" id="5HTr1bidIki" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.sideTransform.testLanguage" />
        <property role="3LESm3" value="14a4b501-59f6-4c39-b5de-4a5d59477831" />
        <property role="ZpmtF" value="true" />
        <node concept="1SiIV0" id="3qLRTyystd8" role="3bR37C">
          <node concept="3bR9La" id="3qLRTyystd9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="3rtmxn" id="EpEP7iiida" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiidb" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiidc" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiidd" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiide" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiidf" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiidg" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="EpEP7iiidh" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.sideTransform.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5HTr1bidIkj" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HTr1bidIkk" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5HTr1bidIkl" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5HTr1bidIkm" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="5HTr1bidIkn" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.sideTransform.testLanguage" />
                  <node concept="2Ry0Ak" id="5HTr1bidIGL" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.sideTransform.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR4W" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR4X" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4Q" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR4R" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR4S" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR4T" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR4U" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.sideTransform.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR4V" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR4Y" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5HTr1bidIkC" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.sideTransform.tests" />
        <property role="3LESm3" value="ee5f06cc-53b8-4415-b1f3-19f5942bedc0" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iihPV" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iihPW" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iihPX" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iihPY" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iihPZ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iihQ0" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iihQ1" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.sideTransform.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5HTr1bidIkD" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HTr1bidIkE" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5HTr1bidIkF" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5HTr1bidIkG" role="2Ry0An">
                <property role="2Ry0Am" value="editor.menus.sideTransform.tests" />
                <node concept="2Ry0Ak" id="5HTr1bidINj" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.sideTransform.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HTr1bidIkI" role="3bR37C">
          <node concept="3bR9La" id="5HTr1bidIkJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="3bAk9nIn1ux" role="3bR37C">
          <node concept="3bR9La" id="3bAk9nIn1uy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR54" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR55" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR4Z" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR50" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR51" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR52" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.sideTransform.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR53" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR56" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="4AL49kgFgzY" role="3989C9">
      <property role="TrG5h" value="style-tests" />
      <node concept="1E1JtD" id="4AL49kgFgzZ" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.style.testLanguage" />
        <property role="3LESm3" value="b4a430be-1696-48bf-bb72-4333242e590c" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="4AL49kgFg$2" role="3bR31x">
          <node concept="3LXTmp" id="4AL49kgFg$3" role="3rtmxm">
            <node concept="3qWCbU" id="4AL49kgFg$4" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4AL49kgFg$5" role="3LXTmr">
              <node concept="2Ry0Ak" id="4AL49kgFg$6" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="4AL49kgFg$7" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="4AL49kgFg$8" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="4AL49kgFg$9" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.sideTransform.testLanguage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4AL49kgFg$a" role="3LF7KH">
          <node concept="2Ry0Ak" id="4AL49kgFg$b" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4AL49kgFg$c" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4AL49kgFg$d" role="2Ry0An">
                <property role="2Ry0Am" value="testlangs" />
                <node concept="2Ry0Ak" id="4AL49kgFg$e" role="2Ry0An">
                  <property role="2Ry0Am" value="editor.menus.style.testLanguage" />
                  <node concept="2Ry0Ak" id="4AL49kgFgEw" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.style.testLanguage.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49kgFgE$" role="3bR37C">
          <node concept="3bR9La" id="4AL49kgFgE_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49kgFgEA" role="3bR37C">
          <node concept="3bR9La" id="4AL49kgFgEB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3MI1gu0QouH" resolve="jetbrains.mps.editor.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49khgOvS" role="3bR37C">
          <node concept="3bR9La" id="4AL49khgOvT" role="1SiIV1">
            <ref role="3bR37D" node="4AL49kgFgzZ" resolve="jetbrains.mps.lang.editor.menus.style.testLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="77bAwtHy7_v" role="3bR37C">
          <node concept="3bR9La" id="77bAwtHy7_w" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR5d" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR5e" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR57" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR58" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR59" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR5a" role="2Ry0An">
                    <property role="2Ry0Am" value="testlangs" />
                    <node concept="2Ry0Ak" id="73GUf$umR5b" role="2Ry0An">
                      <property role="2Ry0Am" value="editor.menus.style.testLanguage" />
                      <node concept="2Ry0Ak" id="73GUf$umR5c" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR5f" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4AL49kgFg$g" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.lang.editor.menus.style.tests" />
        <property role="3LESm3" value="f16c447a-f70c-4850-983c-0d3efc4e55a9" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="4AL49kgFg$h" role="3bR31x">
          <node concept="3LXTmp" id="4AL49kgFg$i" role="3rtmxm">
            <node concept="3qWCbU" id="4AL49kgFg$j" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4AL49kgFg$k" role="3LXTmr">
              <node concept="2Ry0Ak" id="4AL49kgFg$l" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="4AL49kgFg$m" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="4AL49kgFg$n" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.sideTransform.tests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="4AL49kgFg$o" role="3LF7KH">
          <node concept="2Ry0Ak" id="4AL49kgFg$p" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4AL49kgFg$q" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4AL49kgFg$r" role="2Ry0An">
                <property role="2Ry0Am" value="editor.menus.style.tests" />
                <node concept="2Ry0Ak" id="4AL49kgFgEy" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.editor.menus.style.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49kgFg$t" role="3bR37C">
          <node concept="3bR9La" id="4AL49kgFg$u" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49kgFg$v" role="3bR37C">
          <node concept="3bR9La" id="4AL49kgFg$w" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49kgFgEC" role="3bR37C">
          <node concept="3bR9La" id="4AL49kgFgED" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4AL49kgFgEE" role="3bR37C">
          <node concept="3bR9La" id="4AL49kgFgEF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6nBi4Xpgoe7" role="3bR37C">
          <node concept="3bR9La" id="6nBi4Xpgoe8" role="1SiIV1">
            <ref role="3bR37D" node="4AL49kgFgzZ" resolve="jetbrains.mps.lang.editor.menus.style.testLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umR5l" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umR5m" role="1HemKq">
            <node concept="55IIr" id="73GUf$umR5g" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umR5h" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umR5i" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umR5j" role="2Ry0An">
                    <property role="2Ry0Am" value="editor.menus.style.tests" />
                    <node concept="2Ry0Ak" id="73GUf$umR5k" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umR5n" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="4Sf$XywNuaO" role="1hWBAP">
      <property role="TrG5h" value="transformationMenuTests" />
      <node concept="24cAiW" id="5I1s5NvQ4T9" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kT6" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kT7" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="4Sf$XywNuaP" role="22LTRK">
        <ref role="22LTRG" node="4Sf$XywNuax" resolve="context-assistant-tests" />
      </node>
      <node concept="22LTRF" id="7Nx4mSUECz3" role="22LTRK">
        <ref role="22LTRG" node="7Nx4mSUEB9R" resolve="substitute-tests" />
      </node>
      <node concept="22LTRF" id="5HTr1bidIS4" role="22LTRK">
        <ref role="22LTRG" node="5HTr1bidIkh" resolve="sideTransform-tests" />
      </node>
      <node concept="22LTRF" id="4AL49kgFgFk" role="22LTRK">
        <ref role="22LTRG" node="4AL49kgFgzY" resolve="style-tests" />
      </node>
      <node concept="22LTRF" id="axQ2jNKRp2" role="22LTRK">
        <ref role="22LTRG" node="2X_LC_CDEju" resolve="menu-tests" />
      </node>
      <node concept="22LTRF" id="6wRXAC4uQUh" role="22LTRK">
        <ref role="22LTRG" node="6wRXAC4uQ1Q" resolve="menu-extras-tests" />
      </node>
      <node concept="22LTRF" id="5Xa7gk5dF8P" role="22LTRK">
        <ref role="22LTRG" node="5Xa7gk5dEE7" resolve="context-actions-tool-tests" />
      </node>
    </node>
    <node concept="55IIr" id="4Sf$XywNuaQ" role="auvoZ">
      <node concept="2Ry0Ak" id="4Sf$XywNuaR" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="4Sf$XywNuaS" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHO6V" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHO6W" role="398pKh">
        <ref role="398BVh" node="4Sf$XywNuaf" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHO6X" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHO6Y" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHO6Z" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="5leSqRbdCzr">
    <property role="TrG5h" value="mpsHttpSupport" />
    <property role="turDy" value="mpsHttpSupport.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="22LTRH" id="5leSqRbdCLs" role="1hWBAP">
      <property role="TrG5h" value="http-support" />
      <node concept="24cAiW" id="5I1s5NvQ4Ta" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kT8" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kT9" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="5leSqRbdCMk" role="22LTRK">
        <ref role="22LTRG" node="5leSqRbdCzD" resolve="http-support-tests" />
      </node>
    </node>
    <node concept="398rNT" id="5leSqRbdCzs" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="5leSqRbdCzt" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="5leSqRbdCzu" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="5leSqRbdCzv" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="5leSqRbdCzw" role="398pKh">
        <ref role="398BVh" node="5leSqRbdCzs" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="5leSqRbdCzx" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="5leSqRbdCzy" role="13uUGP">
        <ref role="398BVh" node="5leSqRbdCzv" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5leSqRbdCzz" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5leSqRbdCz$" role="2JcizS">
        <ref role="398BVh" node="5leSqRbdCzs" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5leSqRbdCLH" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6pse5qHNfTX" resolve="mpsHttpSupportPlugin" />
    </node>
    <node concept="2G$12M" id="5leSqRbdCzD" role="3989C9">
      <property role="TrG5h" value="http-support-tests" />
      <node concept="1E1JtA" id="5leSqRbdCD7" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.ide.httpsupport.tests" />
        <property role="3LESm3" value="ddcf7bef-759a-45ed-bdb2-9a6f000d043f" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="EpEP7iiigD" role="3bR31x">
          <node concept="3LXTmp" id="EpEP7iiigE" role="3rtmxm">
            <node concept="3qWCbU" id="EpEP7iiigF" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="EpEP7iiigG" role="3LXTmr">
              <node concept="2Ry0Ak" id="EpEP7iiigH" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="EpEP7iiigI" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="EpEP7iiigJ" role="2Ry0An">
                    <property role="2Ry0Am" value="httpsupport.test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="5leSqRbdCD8" role="3LF7KH">
          <node concept="2Ry0Ak" id="5leSqRbdCIz" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="5leSqRbdCIU" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="5leSqRbdCJb" role="2Ry0An">
                <property role="2Ry0Am" value="httpsupport.test" />
                <node concept="2Ry0Ak" id="5leSqRbdCJH" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.ide.httpsupport.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5leSqRbdCJP" role="3bR37C">
          <node concept="3bR9La" id="5leSqRbdCJQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xhjlkpPkMG" resolve="jetbrains.mps.ide.httpsupport" />
          </node>
        </node>
        <node concept="1SiIV0" id="5leSqRbdCJR" role="3bR37C">
          <node concept="3bR9La" id="5leSqRbdCJS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU0H" resolve="jetbrains.mps.lang.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="5jV4K6NYN86" role="3bR37C">
          <node concept="3bR9La" id="5jV4K6NYN87" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQOz" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQO$" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQOu" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQOv" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQOw" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQOx" role="2Ry0An">
                    <property role="2Ry0Am" value="httpsupport.test" />
                    <node concept="2Ry0Ak" id="73GUf$umQOy" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQO_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="5leSqRbdC$J" role="auvoZ">
      <node concept="2Ry0Ak" id="5leSqRbdC$K" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="5leSqRbdC$L" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="5leSqRbdC$M" role="1l3spN">
      <node concept="L2wRC" id="5leSqRbdCKZ" role="39821P">
        <ref role="L2wRA" node="5leSqRbdCD7" resolve="jetbrains.mps.ide.httpsupport.tests" />
      </node>
    </node>
    <node concept="10PD9b" id="5leSqRbdC$Q" role="10PD9s" />
    <node concept="3b7kt6" id="5leSqRbdC$R" role="10PD9s" />
    <node concept="1gjT0q" id="5leSqRbdC$S" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHPgr" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPgs" role="398pKh">
        <ref role="398BVh" node="5leSqRbdCzs" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPgt" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPgu" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPgv" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="2w4VT5Ubdnu">
    <property role="TrG5h" value="mpsConstraints" />
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsConstraints.xml" />
    <node concept="2_Ic$z" id="2w4VT5Ubdqi" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="2w4VT5Ubdqj" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtD" id="2w4VT5UbdqQ" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="constraints.test" />
      <property role="3LESm3" value="2b800570-3758-4c14-86fb-871266fb9d11" />
      <property role="ZpmtF" value="true" />
      <node concept="1SiIV0" id="3ciHSU5yUs4" role="3bR37C">
        <node concept="3bR9La" id="3ciHSU5yUs5" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
        </node>
      </node>
      <node concept="1SiIV0" id="1oHLcX5Toik" role="3bR37C">
        <node concept="3bR9La" id="1oHLcX5Toil" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="3rtmxn" id="EpEP7iiihZ" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iiii0" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iiii1" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iiii2" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iiii3" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="EpEP7iiii4" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="EpEP7iiii5" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="EpEP7iiii6" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="EpEP7iiii7" role="2Ry0An">
                      <property role="2Ry0Am" value="constraints.test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="2w4VT5UbdqS" role="3LF7KH">
        <node concept="2Ry0Ak" id="2w4VT5Ubdr0" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="2w4VT5Ubdr5" role="2Ry0An">
            <property role="2Ry0Am" value="modules" />
            <node concept="2Ry0Ak" id="2w4VT5Ubdra" role="2Ry0An">
              <property role="2Ry0Am" value="testConstraints" />
              <node concept="2Ry0Ak" id="2w4VT5Ubdrf" role="2Ry0An">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2w4VT5Ubdrk" role="2Ry0An">
                  <property role="2Ry0Am" value="constraints.test" />
                  <node concept="2Ry0Ak" id="2w4VT5Ubdrp" role="2Ry0An">
                    <property role="2Ry0Am" value="constraints.test.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umRxO" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umRxP" role="1HemKq">
          <node concept="55IIr" id="73GUf$umRxH" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umRxI" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umRxJ" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="73GUf$umRxK" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="73GUf$umRxL" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73GUf$umRxM" role="2Ry0An">
                      <property role="2Ry0Am" value="constraints.test" />
                      <node concept="2Ry0Ak" id="73GUf$umRxN" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umRxQ" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2w4VT5Ubdsy" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="TestConstraints" />
      <property role="3LESm3" value="fa6333dc-8872-4c44-8576-d45f9752c17d" />
      <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="EpEP7iihHO" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iihHP" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iihHQ" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iihHR" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iihHS" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="EpEP7iihHT" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="EpEP7iihHU" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="EpEP7iihHV" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="EpEP7iihHW" role="2Ry0An">
                      <property role="2Ry0Am" value="TestConstraints" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="2w4VT5UbdtA" role="3LF7KH">
        <node concept="2Ry0Ak" id="2w4VT5Ubduf" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="2w4VT5UbduU" role="2Ry0An">
            <property role="2Ry0Am" value="modules" />
            <node concept="2Ry0Ak" id="2w4VT5Ubdvr" role="2Ry0An">
              <property role="2Ry0Am" value="testConstraints" />
              <node concept="2Ry0Ak" id="2w4VT5UbdvP" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2w4VT5Ubdwy" role="2Ry0An">
                  <property role="2Ry0Am" value="TestConstraints" />
                  <node concept="2Ry0Ak" id="2w4VT5UbdwP" role="2Ry0An">
                    <property role="2Ry0Am" value="TestConstraints.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4lxcYU10m9o" role="3bR37C">
        <node concept="3bR9La" id="4lxcYU10m9p" role="1SiIV1">
          <ref role="3bR37D" node="2w4VT5UbdqQ" resolve="constraints.test" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umRxY" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umRxZ" role="1HemKq">
          <node concept="55IIr" id="73GUf$umRxR" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umRxS" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umRxT" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="73GUf$umRxU" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="73GUf$umRxV" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="73GUf$umRxW" role="2Ry0An">
                      <property role="2Ry0Am" value="TestConstraints" />
                      <node concept="2Ry0Ak" id="73GUf$umRxX" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umRy0" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtD" id="4lxcYU10m7x" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="constraints.rules.test" />
      <property role="3LESm3" value="fc39d726-4089-464a-8fc1-5f71edfdf03b" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="4lxcYU10m7$" role="3bR31x">
        <node concept="3LXTmp" id="4lxcYU10m7_" role="3rtmxm">
          <node concept="3qWCbU" id="4lxcYU10m7A" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="4lxcYU10m7B" role="3LXTmr">
            <node concept="2Ry0Ak" id="4lxcYU10m7C" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="4lxcYU10m7D" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="4lxcYU10m7E" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="4lxcYU10m7F" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="4lxcYU10m7G" role="2Ry0An">
                      <property role="2Ry0Am" value="constraints.test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="4lxcYU10m7H" role="3LF7KH">
        <node concept="2Ry0Ak" id="4lxcYU10m7I" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="4lxcYU10m7J" role="2Ry0An">
            <property role="2Ry0Am" value="modules" />
            <node concept="2Ry0Ak" id="4lxcYU10m7K" role="2Ry0An">
              <property role="2Ry0Am" value="testConstraints" />
              <node concept="2Ry0Ak" id="4lxcYU10m7L" role="2Ry0An">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4lxcYU10m7M" role="2Ry0An">
                  <property role="2Ry0Am" value="constraints.rules.test" />
                  <node concept="2Ry0Ak" id="4lxcYU10m92" role="2Ry0An">
                    <property role="2Ry0Am" value="constraints.rules.test.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4lxcYU10m98" role="3bR37C">
        <node concept="3bR9La" id="4lxcYU10m99" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn7Ykj" resolve="jetbrains.mps.lang.constraints.rules" />
        </node>
      </node>
      <node concept="1SiIV0" id="4lxcYU10m9a" role="3bR37C">
        <node concept="3bR9La" id="4lxcYU10m9b" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn4_1I" resolve="jetbrains.mps.lang.constraints.rules.kinds" />
        </node>
      </node>
      <node concept="1SiIV0" id="4lxcYU10m9c" role="3bR37C">
        <node concept="3bR9La" id="4lxcYU10m9d" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn89da" resolve="jetbrains.mps.lang.feedback.problem.childAndProp" />
        </node>
      </node>
      <node concept="1yeLz9" id="4lxcYU10m9e" role="1TViLv">
        <property role="TrG5h" value="constraints.rules.test#1839194279618937625" />
        <property role="3LESm3" value="219337e2-f934-4eb9-a978-61ebb89e520b" />
        <property role="ZpmtF" value="true" />
        <node concept="1BupzO" id="73GUf$umRyj" role="3bR31x">
          <property role="3ZfqAx" value="generator/template" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umRyk" role="1HemKq">
            <node concept="55IIr" id="73GUf$umRyb" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umRyc" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umRyd" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="73GUf$umRye" role="2Ry0An">
                    <property role="2Ry0Am" value="testConstraints" />
                    <node concept="2Ry0Ak" id="73GUf$umRyf" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="73GUf$umRyg" role="2Ry0An">
                        <property role="2Ry0Am" value="constraints.rules.test" />
                        <node concept="2Ry0Ak" id="73GUf$umRyh" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="73GUf$umRyi" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umRyl" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umRy8" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umRy9" role="1HemKq">
          <node concept="55IIr" id="73GUf$umRy1" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umRy2" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umRy3" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="73GUf$umRy4" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="73GUf$umRy5" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73GUf$umRy6" role="2Ry0An">
                      <property role="2Ry0Am" value="constraints.rules.test" />
                      <node concept="2Ry0Ak" id="73GUf$umRy7" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umRya" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="4lxcYU10m7e" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="TestRulesConstraints" />
      <property role="3LESm3" value="cad2e8db-5f5f-4f27-9421-1daa5ada30ca" />
      <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="4lxcYU10m7f" role="3bR31x">
        <node concept="3LXTmp" id="4lxcYU10m7g" role="3rtmxm">
          <node concept="3qWCbU" id="4lxcYU10m7h" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="4lxcYU10m7i" role="3LXTmr">
            <node concept="2Ry0Ak" id="4lxcYU10m7j" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="4lxcYU10m7k" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="4lxcYU10m7l" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="4lxcYU10m7m" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="4lxcYU10m7n" role="2Ry0An">
                      <property role="2Ry0Am" value="TestConstraints" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="4lxcYU10m7o" role="3LF7KH">
        <node concept="2Ry0Ak" id="4lxcYU10m7p" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="4lxcYU10m7q" role="2Ry0An">
            <property role="2Ry0Am" value="modules" />
            <node concept="2Ry0Ak" id="4lxcYU10m7r" role="2Ry0An">
              <property role="2Ry0Am" value="testConstraints" />
              <node concept="2Ry0Ak" id="4lxcYU10m7s" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="4lxcYU10m7t" role="2Ry0An">
                  <property role="2Ry0Am" value="TestRulesConstraints" />
                  <node concept="2Ry0Ak" id="4lxcYU10m94" role="2Ry0An">
                    <property role="2Ry0Am" value="TestRulesConstraints.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4lxcYU10m9q" role="3bR37C">
        <node concept="3bR9La" id="4lxcYU10m9r" role="1SiIV1">
          <ref role="3bR37D" node="4lxcYU10m7x" resolve="constraints.rules.test" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umRyt" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umRyu" role="1HemKq">
          <node concept="55IIr" id="73GUf$umRym" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umRyn" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umRyo" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="73GUf$umRyp" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="73GUf$umRyq" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="73GUf$umRyr" role="2Ry0An">
                      <property role="2Ry0Am" value="TestRulesConstraints" />
                      <node concept="2Ry0Ak" id="73GUf$umRys" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umRyv" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="2w4VT5Ubdow" role="1hWBAP">
      <property role="TrG5h" value="constraints" />
      <node concept="24cAiW" id="5I1s5NvQ4Tb" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kTa" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTb" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="63dIq7NT$5y" role="22LTRK">
        <ref role="22LTRN" node="2w4VT5Ubdsy" resolve="TestConstraints" />
      </node>
      <node concept="22LTRM" id="4lxcYU10m9L" role="22LTRK">
        <ref role="22LTRN" node="4lxcYU10m7e" resolve="TestRulesConstraints" />
      </node>
    </node>
    <node concept="13uUGR" id="2w4VT5Ubdom" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="2w4VT5Ubdon" role="13uUGP">
        <ref role="398BVh" node="2w4VT5Ubdoh" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2w4VT5Ubdoo" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="2w4VT5Ubdop" role="2JcizS">
        <ref role="398BVh" node="2w4VT5Ubdog" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="2w4VT5Ubdog" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="2w4VT5Ubdoh" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="2w4VT5Ubdoi" role="398pKh">
        <ref role="398BVh" node="2w4VT5Ubdog" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="2w4VT5Ubdoa" role="10PD9s" />
    <node concept="3b7kt6" id="2w4VT5Ubdob" role="10PD9s" />
    <node concept="1gjT0q" id="2w4VT5Ubdoc" role="10PD9s" />
    <node concept="1l3spV" id="2w4VT5Ubdnw" role="1l3spN">
      <node concept="398223" id="7Ky$vVkcBM_" role="39821P">
        <node concept="3_J27D" id="7Ky$vVkcBMB" role="Nbhlr">
          <node concept="3Mxwew" id="7Ky$vVkcBNz" role="3MwsjC">
            <property role="3MwjfP" value="solutions" />
          </node>
        </node>
        <node concept="L2wRC" id="7Ky$vVkcBN_" role="39821P">
          <ref role="L2wRA" node="2w4VT5Ubdsy" resolve="TestConstraints" />
        </node>
        <node concept="L2wRC" id="4lxcYU10m9z" role="39821P">
          <ref role="L2wRA" node="4lxcYU10m7e" resolve="TestRulesConstraints" />
        </node>
      </node>
      <node concept="398223" id="7Ky$vVkcBOR" role="39821P">
        <node concept="3_J27D" id="7Ky$vVkcBOT" role="Nbhlr">
          <node concept="3Mxwew" id="7Ky$vVkcBPf" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
        <node concept="L2wRC" id="7Ky$vVkcBPh" role="39821P">
          <ref role="L2wRA" node="2w4VT5UbdqQ" resolve="constraints.test" />
        </node>
        <node concept="L2wRC" id="4lxcYU10m9E" role="39821P">
          <ref role="L2wRA" node="4lxcYU10m7x" resolve="constraints.rules.test" />
        </node>
      </node>
    </node>
    <node concept="55IIr" id="63dIq7NRBlg" role="auvoZ">
      <node concept="2Ry0Ak" id="63dIq7NRBlh" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="63dIq7NRBli" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHNZA" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHNZB" role="398pKh">
        <ref role="398BVh" node="2w4VT5Ubdog" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHNZC" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHNZD" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHNZE" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4C1xqj43co8">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsSmartRefAttrMigration" />
    <property role="turDy" value="mpsSmartRefAttrMigration_gen.xml" />
    <node concept="22LTRH" id="4C1xqj43cDQ" role="1hWBAP">
      <property role="TrG5h" value="sraMigration" />
      <node concept="24cAiW" id="5I1s5NvQ4Tc" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kTc" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTd" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="4C1xqj43cHF" role="22LTRK">
        <ref role="22LTRN" node="4C1xqj43cz9" resolve="jetbrains.mps.tests.sraMigration" />
      </node>
    </node>
    <node concept="2_Ic$z" id="4C1xqj43crs" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="4C1xqj43crt" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtA" id="4C1xqj43cz9" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.tests.sraMigration" />
      <property role="3LESm3" value="b2159dbd-e226-4810-9c48-110aabae42e8" />
      <property role="aoJFB" value="eYcmk9QOls/tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="EpEP7iiiaa" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iiiab" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iiiac" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iiiad" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iiiae" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="EpEP7iiiaf" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="EpEP7iiiag" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.tests.sraMigration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="4C1xqj43c_9" role="3LF7KH">
        <node concept="2Ry0Ak" id="4C1xqj43c_f" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="4C1xqj43c_k" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="4C1xqj43c_p" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.tests.sraMigration" />
              <node concept="2Ry0Ak" id="4C1xqj43c_u" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.tests.sraMigration.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4C1xqj43c_w" role="3bR37C">
        <node concept="3bR9La" id="4C1xqj43c_x" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="4C1xqj43c_y" role="3bR37C">
        <node concept="3bR9La" id="4C1xqj43c_z" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="4C1xqj43c_A" role="3bR37C">
        <node concept="3bR9La" id="4C1xqj43c_B" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
        </node>
      </node>
      <node concept="1SiIV0" id="4C1xqj43c_C" role="3bR37C">
        <node concept="3bR9La" id="4C1xqj43c_D" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
        </node>
      </node>
      <node concept="1SiIV0" id="2MdW64IoKto" role="3bR37C">
        <node concept="3bR9La" id="2MdW64IoKtp" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
        </node>
      </node>
      <node concept="1SiIV0" id="nUYGvASNlb" role="3bR37C">
        <node concept="3bR9La" id="nUYGvASNlc" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umQET" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umQEU" role="1HemKq">
          <node concept="55IIr" id="73GUf$umQEO" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umQEP" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umQEQ" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="73GUf$umQER" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.tests.sraMigration" />
                  <node concept="2Ry0Ak" id="73GUf$umQES" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umQEV" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="4C1xqj43cr6" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="4C1xqj43cr7" role="13uUGP">
        <ref role="398BVh" node="4C1xqj43cr1" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4C1xqj43cr8" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4C1xqj43cr9" role="2JcizS">
        <ref role="398BVh" node="4C1xqj43cr0" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="4C1xqj43cr0" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="4C1xqj43cr1" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="4C1xqj43cr2" role="398pKh">
        <ref role="398BVh" node="4C1xqj43cr0" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="4C1xqj43co9" role="auvoZ">
      <node concept="2Ry0Ak" id="4C1xqj43cqj" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="4C1xqj43cqK" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="4C1xqj43coa" role="1l3spN">
      <node concept="L2wRC" id="4C1xqj43cDy" role="39821P">
        <ref role="L2wRA" node="4C1xqj43cz9" resolve="jetbrains.mps.tests.sraMigration" />
      </node>
    </node>
    <node concept="10PD9b" id="4C1xqj43cor" role="10PD9s" />
    <node concept="3b7kt6" id="4C1xqj43coC" role="10PD9s" />
    <node concept="1gjT0q" id="4C1xqj43cow" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHPkc" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPkd" role="398pKh">
        <ref role="398BVh" node="4C1xqj43cr0" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPke" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPkf" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPkg" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1Ue8MQkfJlL">
    <property role="TrG5h" value="mpsTypesystem" />
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsTypesystem.xml" />
    <node concept="2_Ic$z" id="1Ue8MQkfJlM" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="1Ue8MQkfJlN" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="2j4NQWLGvPH" role="3989C9">
      <property role="TrG5h" value="test-languages" />
      <node concept="1E1JtD" id="2j4NQWLGvLx" role="2G$12L">
        <property role="TrG5h" value="testAnnotatedType" />
        <property role="3LESm3" value="2f74e72e-3e3d-480e-bae1-cc709d588366" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvLy" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvLz" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvL$" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvL_" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="2j4NQWLGvLA" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvLB" role="2Ry0An">
                    <property role="2Ry0Am" value="testAnnotatedType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvLC" role="2Ry0An">
                      <property role="2Ry0Am" value="testAnnotatedType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvLD" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvLE" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvLF" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvLG" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvLH" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvLI" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvLJ" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvLK" role="2Ry0An">
                        <property role="2Ry0Am" value="testAnnotatedType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvLL" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvQd" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvQe" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvQ6" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvQ7" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvQ8" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvQ9" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvQa" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvQb" role="2Ry0An">
                        <property role="2Ry0Am" value="testAnnotatedType" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvQc" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvQf" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvQg" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvQh" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2j4NQWLGvLM" role="2G$12L">
        <property role="TrG5h" value="testOverridingType" />
        <property role="3LESm3" value="394e3857-3256-4e8b-9601-5abe7ad354d9" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvLN" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvLO" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvLP" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvLQ" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="2j4NQWLGvLR" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvLS" role="2Ry0An">
                    <property role="2Ry0Am" value="testOverridingType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvLT" role="2Ry0An">
                      <property role="2Ry0Am" value="testOverridingType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvLU" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvLV" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvLW" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvLX" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvLY" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvLZ" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvM0" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvM1" role="2Ry0An">
                        <property role="2Ry0Am" value="testOverridingType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvM2" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvQi" role="3bR37C">
          <node concept="3bR9La" id="2j4NQWLGvQj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvQk" role="3bR37C">
          <node concept="3bR9La" id="2j4NQWLGvQl" role="1SiIV1">
            <ref role="3bR37D" node="2j4NQWLGvLx" resolve="testAnnotatedType" />
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvQt" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvQu" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvQm" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvQn" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvQo" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvQp" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvQq" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvQr" role="2Ry0An">
                        <property role="2Ry0Am" value="testOverridingType" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvQs" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvQv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvQw" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvQx" role="1SiIV1">
            <ref role="1Busuk" node="2j4NQWLGvLx" resolve="testAnnotatedType" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2j4NQWLGvM3" role="2G$12L">
        <property role="TrG5h" value="testOverridingRule" />
        <property role="3LESm3" value="38be1c36-cdf6-4e3c-b9db-14f88a11fa03" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvM4" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvM5" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvM6" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvM7" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="2j4NQWLGvM8" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvM9" role="2Ry0An">
                    <property role="2Ry0Am" value="testOverridingRule" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMa" role="2Ry0An">
                      <property role="2Ry0Am" value="testOverridingRule.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvMb" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvMc" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvMd" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvMe" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvMf" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvMg" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMh" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvMi" role="2Ry0An">
                        <property role="2Ry0Am" value="testOverridingRule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvMj" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvQD" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvQE" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvQy" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvQz" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvQ$" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvQ_" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvQA" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvQB" role="2Ry0An">
                        <property role="2Ry0Am" value="testOverridingRule" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvQC" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvQF" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2j4NQWLGvMk" role="2G$12L">
        <property role="TrG5h" value="testWrappedType" />
        <property role="3LESm3" value="9290638e-635b-4ec6-bcad-945ecb88a928" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvMl" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvMm" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvMn" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvMo" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="2j4NQWLGvMp" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvMq" role="2Ry0An">
                    <property role="2Ry0Am" value="testWrappedType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMr" role="2Ry0An">
                      <property role="2Ry0Am" value="testWrappedType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvMs" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvMt" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvMu" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvMv" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvMw" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvMx" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMy" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvMz" role="2Ry0An">
                        <property role="2Ry0Am" value="testWrappedType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvM$" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvQN" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvQO" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvQG" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvQH" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvQI" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvQJ" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvQK" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvQL" role="2Ry0An">
                        <property role="2Ry0Am" value="testWrappedType" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvQM" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvQP" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvQQ" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvQR" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2j4NQWLGvM_" role="2G$12L">
        <property role="TrG5h" value="testPrimitiveType" />
        <property role="3LESm3" value="8a53c705-15e4-4f87-8796-457845605512" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvMA" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvMB" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvMC" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvMD" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="2j4NQWLGvME" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvMF" role="2Ry0An">
                    <property role="2Ry0Am" value="testPrimitiveType" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMG" role="2Ry0An">
                      <property role="2Ry0Am" value="testPrimitiveType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvMH" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvMI" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvMJ" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvMK" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvML" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvMM" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtyping" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMN" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvMO" role="2Ry0An">
                        <property role="2Ry0Am" value="testPrimitiveType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvMP" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvQZ" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvR0" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvQS" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvQT" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvQU" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvQV" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtyping" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvQW" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvQX" role="2Ry0An">
                        <property role="2Ry0Am" value="testPrimitiveType" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvQY" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvR1" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvR2" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvR3" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2j4NQWLGvMQ" role="2G$12L">
        <property role="TrG5h" value="testSubtypingA" />
        <property role="3LESm3" value="36a4d1c5-6ec1-426f-8192-1875a7cc48de" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvMR" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvMS" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvMT" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvMU" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="2j4NQWLGvMV" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvMW" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtypingA" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvMX" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingA.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvMY" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvMZ" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvN0" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvN1" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvN2" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvN3" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtyping" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvN4" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvN5" role="2Ry0An">
                        <property role="2Ry0Am" value="testSubtypingA" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvN6" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvRb" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvRc" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvR4" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvR5" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvR6" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvR7" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtyping" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvR8" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvR9" role="2Ry0An">
                        <property role="2Ry0Am" value="testSubtypingA" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvRa" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvRd" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvRe" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvRf" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2j4NQWLGvN7" role="2G$12L">
        <property role="TrG5h" value="testSubtypingB" />
        <property role="3LESm3" value="65611934-24fb-470c-813e-a9df6058b93a" />
        <property role="BnDLt" value="true" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="2j4NQWLGvN8" role="3LF7KH">
          <node concept="2Ry0Ak" id="2j4NQWLGvN9" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="2j4NQWLGvNa" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="2j4NQWLGvNb" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="2j4NQWLGvNc" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvNd" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtypingB" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvNe" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingB.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2j4NQWLGvNf" role="3bR31x">
          <node concept="3LXTmp" id="2j4NQWLGvNg" role="3rtmxm">
            <node concept="55IIr" id="2j4NQWLGvNh" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvNi" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvNj" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvNk" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtyping" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvNl" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvNm" role="2Ry0An">
                        <property role="2Ry0Am" value="testSubtypingB" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvNn" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2j4NQWLGvRn" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2j4NQWLGvRo" role="1HemKq">
            <node concept="55IIr" id="2j4NQWLGvRg" role="3LXTmr">
              <node concept="2Ry0Ak" id="2j4NQWLGvRh" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="2j4NQWLGvRi" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvRj" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtyping" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvRk" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvRl" role="2Ry0An">
                        <property role="2Ry0Am" value="testSubtypingB" />
                        <node concept="2Ry0Ak" id="2j4NQWLGvRm" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2j4NQWLGvRp" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvRq" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvRr" role="1SiIV1">
            <ref role="1Busuk" node="2j4NQWLGvMQ" resolve="testSubtypingA" />
          </node>
        </node>
        <node concept="1SiIV0" id="2j4NQWLGvRs" role="3bR37C">
          <node concept="1Busua" id="2j4NQWLGvRt" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="1Ue8MQkfJlW" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.lang.typesystem.test" />
      <property role="3LESm3" value="2959cdf0-70fb-4b7a-9ca0-49da775dd0cd" />
      <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
      <property role="ZpmtF" value="true" />
      <node concept="55IIr" id="1Ue8MQkfJlX" role="3LF7KH">
        <node concept="2Ry0Ak" id="1Ue8MQkfJlY" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="1Ue8MQkfJlZ" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="1Ue8MQkfJm0" role="2Ry0An">
              <property role="2Ry0Am" value="typesystem.test" />
              <node concept="2Ry0Ak" id="1Ue8MQkfJm1" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem.test" />
                <node concept="2Ry0Ak" id="1Ue8MQkfJm2" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="1Ue8MQkfJsy" role="3bR37C">
        <node concept="3bR9La" id="1Ue8MQkfJsz" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
        </node>
      </node>
      <node concept="1SiIV0" id="1Ue8MQkfJs$" role="3bR37C">
        <node concept="3bR9La" id="1Ue8MQkfJs_" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
        </node>
      </node>
      <node concept="1SiIV0" id="4ot0ThrzVj3" role="3bR37C">
        <node concept="3bR9La" id="4ot0ThrzVj4" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="4ot0ThrzVj5" role="3bR37C">
        <node concept="3bR9La" id="4ot0ThrzVj6" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umQD9" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umQDa" role="1HemKq">
          <node concept="55IIr" id="73GUf$umQD3" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umQD4" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umQD5" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="73GUf$umQD6" role="2Ry0An">
                  <property role="2Ry0Am" value="typesystem.test" />
                  <node concept="2Ry0Ak" id="73GUf$umQD7" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.typesystem.test" />
                    <node concept="2Ry0Ak" id="73GUf$umQD8" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umQDb" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2FXdWdi6uNM" role="3bR37C">
        <node concept="3bR9La" id="2FXdWdi6uNN" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6Lh7" resolve="jetbrains.mps.typesystemEngine" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2j4NQWLGvNo" role="3989C9">
      <property role="TrG5h" value="testSubstituteType" />
      <property role="3LESm3" value="f4227833-0d14-4ab5-8560-70880fd9d5ef" />
      <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
      <property role="BnDLt" value="true" />
      <property role="ZpmtF" value="true" />
      <node concept="55IIr" id="2j4NQWLGvNp" role="3LF7KH">
        <node concept="2Ry0Ak" id="2j4NQWLGvNq" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="2j4NQWLGvNr" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="2j4NQWLGvNs" role="2Ry0An">
              <property role="2Ry0Am" value="testSubstituteType" />
              <node concept="2Ry0Ak" id="2j4NQWLGvNt" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2j4NQWLGvNu" role="2Ry0An">
                  <property role="2Ry0Am" value="testSubstituteType" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvNv" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3rtmxn" id="2j4NQWLGvNw" role="3bR31x">
        <node concept="3LXTmp" id="2j4NQWLGvNx" role="3rtmxm">
          <node concept="55IIr" id="2j4NQWLGvNy" role="3LXTmr">
            <node concept="2Ry0Ak" id="2j4NQWLGvNz" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2j4NQWLGvN$" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="2j4NQWLGvN_" role="2Ry0An">
                  <property role="2Ry0Am" value="testSubstituteType" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvNA" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvNB" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubstituteType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2j4NQWLGvNC" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2j4NQWLGvRu" role="3bR37C">
        <node concept="3bR9La" id="2j4NQWLGvRv" role="1SiIV1">
          <ref role="3bR37D" node="2j4NQWLGvM3" resolve="testOverridingRule" />
        </node>
      </node>
      <node concept="1BupzO" id="2j4NQWLGvRB" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="2j4NQWLGvRC" role="1HemKq">
          <node concept="55IIr" id="2j4NQWLGvRw" role="3LXTmr">
            <node concept="2Ry0Ak" id="2j4NQWLGvRx" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2j4NQWLGvRy" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="2j4NQWLGvRz" role="2Ry0An">
                  <property role="2Ry0Am" value="testSubstituteType" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvR$" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvR_" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubstituteType" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvRA" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2j4NQWLGvRD" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2j4NQWLGvND" role="3989C9">
      <property role="TrG5h" value="testSubtypingTest" />
      <property role="3LESm3" value="b3170ec7-82d9-4e10-a3f0-31baa75ffc0c" />
      <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
      <property role="BnDLt" value="true" />
      <property role="ZpmtF" value="true" />
      <node concept="55IIr" id="2j4NQWLGvNE" role="3LF7KH">
        <node concept="2Ry0Ak" id="2j4NQWLGvNF" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="2j4NQWLGvNG" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="2j4NQWLGvNH" role="2Ry0An">
              <property role="2Ry0Am" value="testSubtyping" />
              <node concept="2Ry0Ak" id="2j4NQWLGvNI" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2j4NQWLGvNJ" role="2Ry0An">
                  <property role="2Ry0Am" value="testSubtypingTest" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvNK" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtypingTest.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3rtmxn" id="2j4NQWLGvNL" role="3bR31x">
        <node concept="3LXTmp" id="2j4NQWLGvNM" role="3rtmxm">
          <node concept="55IIr" id="2j4NQWLGvNN" role="3LXTmr">
            <node concept="2Ry0Ak" id="2j4NQWLGvNO" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2j4NQWLGvNP" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="2j4NQWLGvNQ" role="2Ry0An">
                  <property role="2Ry0Am" value="testSubtyping" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvNR" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvNS" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingTest" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2j4NQWLGvNT" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="2j4NQWLGvRN" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="2j4NQWLGvRO" role="1HemKq">
          <node concept="55IIr" id="2j4NQWLGvRG" role="3LXTmr">
            <node concept="2Ry0Ak" id="2j4NQWLGvRH" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2j4NQWLGvRI" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="2j4NQWLGvRJ" role="2Ry0An">
                  <property role="2Ry0Am" value="testSubtyping" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvRK" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="2j4NQWLGvRL" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingTest" />
                      <node concept="2Ry0Ak" id="2j4NQWLGvRM" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2j4NQWLGvRP" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="1Ue8MQkfJm6" role="1hWBAP">
      <property role="TrG5h" value="typeSystem" />
      <node concept="24cAiW" id="5I1s5NvQ4Td" role="24cAkG">
        <node concept="NbPM2" id="33YWcaLmKPL" role="XX84c">
          <node concept="3Mxwew" id="33YWcaLmKPK" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="372aBDf0kTe" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTf" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="1Ue8MQkfJm7" role="22LTRK">
        <ref role="22LTRN" node="1Ue8MQkfJlW" resolve="jetbrains.mps.lang.typesystem.test" />
      </node>
      <node concept="22LTRM" id="4g8mUCG3FyA" role="22LTRK">
        <ref role="22LTRN" node="2j4NQWLGvNo" resolve="testSubstituteType" />
      </node>
      <node concept="22LTRM" id="4g8mUCG3FyI" role="22LTRK">
        <ref role="22LTRN" node="2j4NQWLGvND" resolve="testSubtypingTest" />
      </node>
    </node>
    <node concept="13uUGR" id="1Ue8MQkfJm8" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="1Ue8MQkfJm9" role="13uUGP">
        <ref role="398BVh" node="1Ue8MQkfJmd" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1Ue8MQkfJma" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="1Ue8MQkfJmb" role="2JcizS">
        <ref role="398BVh" node="1Ue8MQkfJmc" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="1Ue8MQkfJmc" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="1Ue8MQkfJmd" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="1Ue8MQkfJme" role="398pKh">
        <ref role="398BVh" node="1Ue8MQkfJmc" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="1Ue8MQkfJmf" role="10PD9s" />
    <node concept="3b7kt6" id="1Ue8MQkfJmg" role="10PD9s" />
    <node concept="1gjT0q" id="1Ue8MQkfJmh" role="10PD9s" />
    <node concept="1l3spV" id="1Ue8MQkfJmi" role="1l3spN">
      <node concept="398223" id="4g8mUCG3FzL" role="39821P">
        <node concept="L2wRC" id="2j4NQWLGvPp" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvLx" resolve="testAnnotatedType" />
        </node>
        <node concept="L2wRC" id="2j4NQWLGvPq" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvLM" resolve="testOverridingType" />
        </node>
        <node concept="L2wRC" id="2j4NQWLGvPr" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvM3" resolve="testOverridingRule" />
        </node>
        <node concept="L2wRC" id="2j4NQWLGvPs" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvMk" resolve="testWrappedType" />
        </node>
        <node concept="L2wRC" id="2j4NQWLGvPt" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvM_" resolve="testPrimitiveType" />
        </node>
        <node concept="L2wRC" id="2j4NQWLGvPu" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvMQ" resolve="testSubtypingA" />
        </node>
        <node concept="L2wRC" id="2j4NQWLGvPv" role="39821P">
          <ref role="L2wRA" node="2j4NQWLGvN7" resolve="testSubtypingB" />
        </node>
        <node concept="3_J27D" id="4g8mUCG3FzN" role="Nbhlr">
          <node concept="3Mxwew" id="4g8mUCG3F$1" role="3MwsjC">
            <property role="3MwjfP" value="lang" />
          </node>
        </node>
      </node>
      <node concept="L2wRC" id="1Ue8MQkfJmm" role="39821P">
        <ref role="L2wRA" node="1Ue8MQkfJlW" resolve="jetbrains.mps.lang.typesystem.test" />
      </node>
      <node concept="L2wRC" id="4g8mUCG3Fym" role="39821P">
        <ref role="L2wRA" node="2j4NQWLGvNo" resolve="testSubstituteType" />
      </node>
      <node concept="L2wRC" id="4g8mUCG3Fyu" role="39821P">
        <ref role="L2wRA" node="2j4NQWLGvND" resolve="testSubtypingTest" />
      </node>
    </node>
    <node concept="55IIr" id="1Ue8MQkfJmr" role="auvoZ">
      <node concept="2Ry0Ak" id="1Ue8MQkfJms" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="1Ue8MQkfJmt" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHOlr" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHOls" role="398pKh">
        <ref role="398BVh" node="1Ue8MQkfJmc" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHOlt" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHOlu" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHOlv" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="3HV74$eh7kR">
    <property role="TrG5h" value="mpsText" />
    <property role="turDy" value="mpsText.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="3HV74$eh7kS" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="3HV74$eh7kT" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="3HV74$eh7kU" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="3HV74$eh7kV" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="3HV74$eh7kW" role="398pKh">
        <ref role="398BVh" node="3HV74$eh7kS" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="3HV74$eh7kX" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="3HV74$eh7kY" role="13uUGP">
        <ref role="398BVh" node="3HV74$eh7kV" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3HV74$eh7kZ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="3HV74$eh7l0" role="2JcizS">
        <ref role="398BVh" node="3HV74$eh7kS" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3HV74$eh803" role="1l3spa">
      <ref role="1l3spb" node="53PdBITeUc0" resolve="mpsEditor" />
    </node>
    <node concept="22LTRH" id="3HV74$eh7l1" role="1hWBAP">
      <property role="TrG5h" value="text" />
      <node concept="24cAiW" id="5I1s5NvQ4Te" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kTg" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTh" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="3HV74$eh7l2" role="22LTRK">
        <ref role="22LTRG" node="3HV74$eh7l3" resolve="text" />
      </node>
    </node>
    <node concept="2G$12M" id="3HV74$eh7l3" role="3989C9">
      <property role="TrG5h" value="text" />
      <node concept="1E1JtA" id="3HV74$eh7l4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.text.test" />
        <property role="3LESm3" value="89271cfe-4a93-440d-b4ab-d21ce7349603" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="3HV74$eh7lg" role="3LF7KH">
          <node concept="2Ry0Ak" id="3HV74$eh7lh" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="3HV74$eh7li" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="3HV74$eh7lj" role="2Ry0An">
                <property role="2Ry0Am" value="text.test" />
                <node concept="2Ry0Ak" id="3HV74$eh7ts" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.text.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3HV74$eh7tu" role="3bR37C">
          <node concept="3bR9La" id="3HV74$eh7tv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="3HV74$eh7tw" role="3bR37C">
          <node concept="3bR9La" id="3HV74$eh7tx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQDD" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQDE" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQD$" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQD_" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQDA" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQDB" role="2Ry0An">
                    <property role="2Ry0Am" value="text.test" />
                    <node concept="2Ry0Ak" id="73GUf$umQDC" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQDF" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="3HV74$eh7m2" role="auvoZ">
      <node concept="2Ry0Ak" id="3HV74$eh7m3" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="3HV74$eh7m4" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="3HV74$eh7m5" role="1l3spN">
      <node concept="L2wRC" id="3HV74$eh7m6" role="39821P">
        <ref role="L2wRA" node="3HV74$eh7l4" resolve="jetbrains.mps.lang.text.test" />
      </node>
    </node>
    <node concept="10PD9b" id="3HV74$eh7m8" role="10PD9s" />
    <node concept="3b7kt6" id="3HV74$eh7m9" role="10PD9s" />
    <node concept="1gjT0q" id="3HV74$eh7ma" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHPly" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPlz" role="398pKh">
        <ref role="398BVh" node="3HV74$eh7kS" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPl$" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPl_" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPlA" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="7ZKuP1Forf5">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsConsole" />
    <property role="turDy" value="mpsConsole.xml" />
    <node concept="22LTRH" id="7ZKuP1FosmV" role="1hWBAP">
      <property role="TrG5h" value="console" />
      <node concept="24cAiW" id="5I1s5NvQ4Tf" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kTi" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTj" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="7ZKuP1Fosrt" role="22LTRK">
        <ref role="22LTRN" node="7ZKuP1Fosaj" resolve="jetbrains.mps.console.tests" />
      </node>
    </node>
    <node concept="2_Ic$z" id="7ZKuP1ForlU" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="7ZKuP1ForlV" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtA" id="7ZKuP1Fosaj" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.console.tests" />
      <property role="3LESm3" value="8949b0e7-d938-48ba-8cfc-4a9bb44df0e8" />
      <property role="aoJFB" value="eYcmk9QOls/tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="7ZKuP1ForyX" role="3bR31x">
        <node concept="3LXTmp" id="7ZKuP1ForyZ" role="3rtmxm">
          <node concept="55IIr" id="7ZKuP1Forz1" role="3LXTmr">
            <node concept="2Ry0Ak" id="7ZKuP1Forze" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="7ZKuP1Forzj" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="7ZKuP1Forzo" role="2Ry0An">
                  <property role="2Ry0Am" value="console.tests" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="7ZKuP1Fosad" role="3LF7KH">
        <node concept="2Ry0Ak" id="7ZKuP1Fosa9" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="7ZKuP1Fosal" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="7ZKuP1Fosah" role="2Ry0An">
              <property role="2Ry0Am" value="console.tests" />
              <node concept="2Ry0Ak" id="7ZKuP1Fosaf" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.console.tests.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="7ZKuP1Fosan" role="3bR37C">
        <node concept="3bR9La" id="7ZKuP1Fosab" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
        </node>
      </node>
      <node concept="1SiIV0" id="5r4$rjzxXd$" role="3bR37C">
        <node concept="3bR9La" id="5r4$rjzxXd_" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
        </node>
      </node>
      <node concept="1SiIV0" id="5r4$rjzxXdA" role="3bR37C">
        <node concept="3bR9La" id="5r4$rjzxXdB" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3ZgZ1njKuFL" resolve="jetbrains.mps.lang.smodel.query" />
        </node>
      </node>
      <node concept="1SiIV0" id="l1L199OSbg" role="3bR37C">
        <node concept="3bR9La" id="l1L199OSbh" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="l1L199OSbi" role="3bR37C">
        <node concept="3bR9La" id="l1L199OSbj" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7gQEwkA7rZZ" resolve="jetbrains.mps.console.base" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umR_j" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umR_k" role="1HemKq">
          <node concept="55IIr" id="73GUf$umR_e" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umR_f" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="73GUf$umR_g" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="73GUf$umR_h" role="2Ry0An">
                  <property role="2Ry0Am" value="console.tests" />
                  <node concept="2Ry0Ak" id="73GUf$umR_i" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umR_l" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7ZKuP1Forh5" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="7ZKuP1Forhs" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7ZKuP1Forht" role="398pKh">
        <ref role="398BVh" node="7ZKuP1Forh5" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="7ZKuP1Forfa" role="10PD9s" />
    <node concept="3b7kt6" id="7ZKuP1Forfu" role="10PD9s" />
    <node concept="1gjT0q" id="7ZKuP1Forfm" role="10PD9s" />
    <node concept="55IIr" id="7ZKuP1Forf6" role="auvoZ">
      <node concept="2Ry0Ak" id="7ZKuP1FrT73" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="7ZKuP1FrT7d" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="7ZKuP1Forf7" role="1l3spN">
      <node concept="398223" id="7ZKuP1ForrY" role="39821P">
        <node concept="L2wRC" id="7ZKuP1Forsg" role="39821P">
          <ref role="L2wRA" node="7ZKuP1Fosaj" resolve="jetbrains.mps.console.tests" />
        </node>
        <node concept="3_J27D" id="7ZKuP1Fors0" role="Nbhlr">
          <node concept="3Mxwew" id="7ZKuP1Fors9" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="7ZKuP1Forhl" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="7ZKuP1Forhx" role="13uUGP">
        <ref role="398BVh" node="7ZKuP1Forhs" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7ZKuP1ForhC" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7ZKuP1Fori7" role="2JcizS">
        <ref role="398BVh" node="7ZKuP1Forh5" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3E9C6pD2pcf" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3E9C6pCXzPk" resolve="mpsConsolePlugin" />
    </node>
    <node concept="398rNT" id="2KA2zfKHNYg" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHNYh" role="398pKh">
        <ref role="398BVh" node="7ZKuP1Forh5" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHNYi" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHNYj" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHNYk" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="6IYCYtgo1o9">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsTest" />
    <property role="turDy" value="mpsTest.xml" />
    <node concept="2_Ic$z" id="6IYCYtgo1oT" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="6IYCYtgo1oU" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="6IYCYtgo1p5" role="3989C9">
      <property role="TrG5h" value="test" />
      <node concept="1E1JtA" id="6IYCYtgo1p6" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.test.test" />
        <property role="3LESm3" value="db577327-e7eb-4dae-9c9b-12ca22523ab4" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="6IYCYtgo1pi" role="3LF7KH">
          <node concept="2Ry0Ak" id="6IYCYtgo1pj" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6IYCYtgo1pk" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="6IYCYtgo1pl" role="2Ry0An">
                <property role="2Ry0Am" value="test.test" />
                <node concept="2Ry0Ak" id="6IYCYtgo1pN" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.test.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="73GUf$umQEh" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="73GUf$umQEi" role="1HemKq">
            <node concept="55IIr" id="73GUf$umQEc" role="3LXTmr">
              <node concept="2Ry0Ak" id="73GUf$umQEd" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="73GUf$umQEe" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQEf" role="2Ry0An">
                    <property role="2Ry0Am" value="test.test" />
                    <node concept="2Ry0Ak" id="73GUf$umQEg" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="73GUf$umQEj" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2nckueFxVJf" role="3bR37C">
          <node concept="3bR9La" id="2nckueFxVJg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2nckueFxVJh" role="3bR37C">
          <node concept="3bR9La" id="2nckueFxVJi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6aIAM_Qd5ki" resolve="jetbrains.mps.lang.test.matcher" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6dN0RJT91VK" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.extension.tests" />
        <property role="3LESm3" value="bdcad511-2c95-4b17-90fb-99b248f018cc" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="6dN0RJT91VN" role="3LF7KH">
          <node concept="2Ry0Ak" id="6dN0RJT923T" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="6dN0RJT925f" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="6dN0RJT927Q" role="2Ry0An">
                <property role="2Ry0Am" value="extension.test" />
                <node concept="2Ry0Ak" id="6dN0RJT92at" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.extension.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6dN0RJT92bP" role="3bR37C">
          <node concept="3bR9La" id="6dN0RJT92bQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6dN0RJT92bR" role="3bR37C">
          <node concept="3bR9La" id="6dN0RJT92bS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="6dN0RJT92bT" role="3bR37C">
          <node concept="3bR9La" id="6dN0RJT92bU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="6dN0RJT92bV" role="3bR37C">
          <node concept="3bR9La" id="6dN0RJT92bW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="6dN0RJT92bX" role="3bR37C">
          <node concept="3bR9La" id="6dN0RJT92bY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1BupzO" id="6dN0RJT92c4" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6dN0RJT92c5" role="1HemKq">
            <node concept="55IIr" id="6dN0RJT92bZ" role="3LXTmr">
              <node concept="2Ry0Ak" id="6dN0RJT92c0" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="6dN0RJT92c1" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="6dN0RJT92c2" role="2Ry0An">
                    <property role="2Ry0Am" value="extension.test" />
                    <node concept="2Ry0Ak" id="6dN0RJT92c3" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6dN0RJT92c6" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4MTm4DiPNps" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.math.runtime" />
        <property role="3LESm3" value="b98999bc-8369-4b20-9510-598d4eb5ace6" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DiPNpv" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DiPNt3" role="iGT6I">
            <property role="2Ry0Am" value="samples" />
            <node concept="2Ry0Ak" id="4MTm4DiPNvC" role="2Ry0An">
              <property role="2Ry0Am" value="math" />
              <node concept="2Ry0Ak" id="4MTm4DiPNC$" role="2Ry0An">
                <property role="2Ry0Am" value="runtimeSolution" />
                <node concept="2Ry0Ak" id="4MTm4DiPNFb" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.math.runtime.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiPNK6" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiPNK7" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DiPNKd" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DiPNKe" role="1HemKq">
            <node concept="55IIr" id="4MTm4DiPNK8" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DiPNK9" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="4MTm4DiPNKa" role="2Ry0An">
                  <property role="2Ry0Am" value="math" />
                  <node concept="2Ry0Ak" id="4MTm4DiPNKb" role="2Ry0An">
                    <property role="2Ry0Am" value="runtimeSolution" />
                    <node concept="2Ry0Ak" id="4MTm4DiPNKc" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DiPNKf" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4MTm4DiPMYx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.math.tests" />
        <property role="3LESm3" value="9cc656d8-ed07-4493-9531-69f1c9c308c5" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DiPMY$" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DiPN35" role="iGT6I">
            <property role="2Ry0Am" value="samples" />
            <node concept="2Ry0Ak" id="4MTm4DiPN6V" role="2Ry0An">
              <property role="2Ry0Am" value="math" />
              <node concept="2Ry0Ak" id="4MTm4DiPNeA" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="4MTm4DiPNhd" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.math.tests" />
                  <node concept="2Ry0Ak" id="4MTm4DiPNjO" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.math.tests.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiPNlh" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiPNli" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiPNlj" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiPNlk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DiPNlr" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DiPNls" role="1HemKq">
            <node concept="55IIr" id="4MTm4DiPNll" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DiPNlm" role="iGT6I">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="4MTm4DiPNln" role="2Ry0An">
                  <property role="2Ry0Am" value="math" />
                  <node concept="2Ry0Ak" id="4MTm4DiPNlo" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="4MTm4DiPNlp" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.math.tests" />
                      <node concept="2Ry0Ak" id="4MTm4DiPNlq" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DiPNlt" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiPNMd" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiPNMe" role="1SiIV1">
            <ref role="3bR37D" node="4MTm4DiPNps" resolve="jetbrains.mps.baseLanguage.math.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4MTm4DiVgOb" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.pattern.testLang" />
        <property role="3LESm3" value="5206c888-7c5d-4275-bc0a-7c4da12f46e8" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DiVgOe" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DiVh05" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="4MTm4DiVh1Q" role="2Ry0An">
              <property role="2Ry0Am" value="mps-testing" />
              <node concept="2Ry0Ak" id="4MTm4DiVh5j" role="2Ry0An">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4MTm4DiVhas" role="2Ry0An">
                  <property role="2Ry0Am" value="patternTest" />
                  <node concept="2Ry0Ak" id="4MTm4DiVhdT" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.lang.pattern.testLang.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhfW" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVhfX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhfY" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVhfZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhg0" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVhg1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhg2" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVhg3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhg4" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVhg5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L8q" resolve="jetbrains.mps.lang.pattern" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhg6" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVhg7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DiVhge" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DiVhgf" role="1HemKq">
            <node concept="55IIr" id="4MTm4DiVhg8" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DiVhg9" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="4MTm4DiVhga" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-testing" />
                  <node concept="2Ry0Ak" id="4MTm4DiVhgb" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="4MTm4DiVhgc" role="2Ry0An">
                      <property role="2Ry0Am" value="patternTest" />
                      <node concept="2Ry0Ak" id="4MTm4DiVhgd" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DiVhgg" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhgh" role="3bR37C">
          <node concept="1Busua" id="4MTm4DiVhgi" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhgj" role="3bR37C">
          <node concept="1Busua" id="4MTm4DiVhgk" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:ymnOULAU0j" resolve="jetbrains.mps.baseLanguage.unitTest" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVhgl" role="3bR37C">
          <node concept="Rbm2T" id="4MTm4DiVhgm" role="1SiIV1">
            <ref role="1E1Vl2" to="ffeo:ymnOULAU0H" resolve="jetbrains.mps.lang.test" />
          </node>
        </node>
        <node concept="1yeLz9" id="4MTm4DiVhgn" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.lang.pattern.testLang#8707387027762047836" />
          <property role="3LESm3" value="383fb34a-5096-4810-bd84-cd6a1bfe2711" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="4MTm4DiVhgo" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgp" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgq" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgr" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgu" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgv" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6Ksjs" resolve="jetbrains.mps.lang.test#1210261198005" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgw" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgx" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K0rx" resolve="jetbrains.mps.lang.smodel#1139186730696" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgy" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgz" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhg$" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhg_" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgA" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgB" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgC" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgD" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgE" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgF" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgG" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgH" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgI" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgJ" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L8q" resolve="jetbrains.mps.lang.pattern" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DiVhgM" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DiVhgN" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
            </node>
          </node>
          <node concept="1BupzO" id="4MTm4DiVhgV" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4MTm4DiVhgW" role="1HemKq">
              <node concept="55IIr" id="4MTm4DiVhgO" role="3LXTmr">
                <node concept="2Ry0Ak" id="4MTm4DiVhgP" role="iGT6I">
                  <property role="2Ry0Am" value="plugins" />
                  <node concept="2Ry0Ak" id="4MTm4DiVhgQ" role="2Ry0An">
                    <property role="2Ry0Am" value="mps-testing" />
                    <node concept="2Ry0Ak" id="4MTm4DiVhgR" role="2Ry0An">
                      <property role="2Ry0Am" value="languages" />
                      <node concept="2Ry0Ak" id="4MTm4DiVhgS" role="2Ry0An">
                        <property role="2Ry0Am" value="patternTest" />
                        <node concept="2Ry0Ak" id="4MTm4DiVhgT" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="4MTm4DiVhgU" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4MTm4DiVhgX" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4MTm4DiVgtf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.lang.pattern.test" />
        <property role="3LESm3" value="d4650c60-7bd2-4b0f-94fb-1b0e16cc8290" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DiVgti" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DiVg_m" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4MTm4DiVgB7" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4MTm4DiVgE$" role="2Ry0An">
                <property role="2Ry0Am" value="pattern.test" />
                <node concept="2Ry0Ak" id="4MTm4DiVgGl" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.lang.pattern.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVgIo" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVgIp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVgIq" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVgIr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVgIs" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVgIt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:ymnOULAU1u" resolve="jetbrains.mps.lang.test.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVgIu" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVgIv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DiVgIw" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DiVgIx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L8q" resolve="jetbrains.mps.lang.pattern" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DiVgIB" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DiVgIC" role="1HemKq">
            <node concept="55IIr" id="4MTm4DiVgIy" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DiVgIz" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="4MTm4DiVgI$" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="4MTm4DiVgI_" role="2Ry0An">
                    <property role="2Ry0Am" value="pattern.test" />
                    <node concept="2Ry0Ak" id="4MTm4DiVgIA" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DiVgID" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4MTm4DjbCsx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguage.unitTest.libs" />
        <property role="3LESm3" value="83f155ff-422c-4b5a-a2f2-b459302dd215" />
        <property role="aoJFB" value="77WRb6jODAF/none" />
        <property role="ZpmtF" value="true" />
        <property role="3vZFNd" value="3kCd1ud3JDD/compile_ext" />
        <node concept="55IIr" id="4MTm4DjbCs$" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjbC$P" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="73p5MxbjlMh" role="2Ry0An">
              <property role="2Ry0Am" value="mps-testing" />
              <node concept="2Ry0Ak" id="73p5MxbjlMi" role="2Ry0An">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="73p5MxbjlMj" role="2Ry0An">
                  <property role="2Ry0Am" value="bl.unittest.lib" />
                  <node concept="2Ry0Ak" id="73p5MxbjlMk" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.baseLanguage.unitTest.libs.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbCL6" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbCL7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbCLm" role="3bR37C">
          <node concept="1BurEX" id="4MTm4DjbCLn" role="1SiIV1">
            <node concept="55IIr" id="4MTm4DjbCLg" role="1BurEY">
              <node concept="2Ry0Ak" id="4MTm4DjbCLh" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73p5MxbjlRF" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-testing" />
                  <node concept="2Ry0Ak" id="73p5MxbjlRG" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73p5MxbjlRH" role="2Ry0An">
                      <property role="2Ry0Am" value="bl.unittest.lib" />
                      <node concept="2Ry0Ak" id="73p5MxbjlRI" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                        <node concept="2Ry0Ak" id="73p5MxbjlRJ" role="2Ry0An">
                          <property role="2Ry0Am" value="hamcrest-library-1.3.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbCLA" role="3bR37C">
          <node concept="1BurEX" id="4MTm4DjbCLB" role="1SiIV1">
            <node concept="55IIr" id="4MTm4DjbCLw" role="1BurEY">
              <node concept="2Ry0Ak" id="4MTm4DjbCLx" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="73p5MxbjlU4" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-testing" />
                  <node concept="2Ry0Ak" id="73p5MxbjlU5" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73p5MxbjlU6" role="2Ry0An">
                      <property role="2Ry0Am" value="bl.unittest.lib" />
                      <node concept="2Ry0Ak" id="73p5MxbjlU7" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                        <node concept="2Ry0Ak" id="73p5MxbjlU8" role="2Ry0An">
                          <property role="2Ry0Am" value="jmock-2.8.2.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbCLQ" role="3bR37C">
          <node concept="1BurEX" id="4MTm4DjbCLR" role="1SiIV1">
            <node concept="55IIr" id="4MTm4DjbCLK" role="1BurEY">
              <node concept="2Ry0Ak" id="4MTm4DjbCLL" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="4MTm4DjbCLM" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-testing" />
                  <node concept="2Ry0Ak" id="73p5MxbjlYr" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="73p5MxbjlYs" role="2Ry0An">
                      <property role="2Ry0Am" value="bl.unittest.lib" />
                      <node concept="2Ry0Ak" id="73p5MxbjlYt" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                        <node concept="2Ry0Ak" id="73p5MxbjlYu" role="2Ry0An">
                          <property role="2Ry0Am" value="jmock-junit4-2.8.2.jar" />
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
      <node concept="1E1JtA" id="4MTm4DjbxAd" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.make.tests" />
        <property role="3LESm3" value="ad44d830-d9b6-4c92-9e56-821fcc11b493" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DjbxAg" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjbxI9" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4MTm4DjbxPO" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4MTm4DjbxRa" role="2Ry0An">
                <property role="2Ry0Am" value="make.test" />
                <node concept="2Ry0Ak" id="4MTm4DjbxV2" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.make.tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbxWW" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbxWX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbxWY" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbxWZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbxX0" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbxX1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbxX2" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbxX3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbxX4" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbxX5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DjbxXb" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DjbxXc" role="1HemKq">
            <node concept="55IIr" id="4MTm4DjbxX6" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DjbxX7" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="4MTm4DjbxX8" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="4MTm4DjbxX9" role="2Ry0An">
                    <property role="2Ry0Am" value="make.test" />
                    <node concept="2Ry0Ak" id="4MTm4DjbxXa" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DjbxXd" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjbCPJ" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjbCPK" role="1SiIV1">
            <ref role="3bR37D" node="4MTm4DjbCsx" resolve="jetbrains.mps.baseLanguage.unitTest.libs" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4MTm4DjkMdn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.traceInfo.tracemacro.testlang" />
        <property role="3LESm3" value="140c4818-bfbc-4850-bf7c-e3d80739a03c" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DjkMdq" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjkMo9" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4MTm4DjkMrS" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="4MTm4DjkMyH" role="2Ry0An">
                <property role="2Ry0Am" value="traceinfo" />
                <node concept="2Ry0Ak" id="4MTm4DjkMCY" role="2Ry0An">
                  <property role="2Ry0Am" value="traceMacro.testlang" />
                  <node concept="2Ry0Ak" id="4MTm4DjkMGH" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.traceInfo.tracemacro.testlang.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DjkMJU" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DjkMJV" role="1HemKq">
            <node concept="55IIr" id="4MTm4DjkMJO" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DjkMJP" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4MTm4DjkMJQ" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="4MTm4DjkMJR" role="2Ry0An">
                    <property role="2Ry0Am" value="traceinfo" />
                    <node concept="2Ry0Ak" id="4MTm4DjkMJS" role="2Ry0An">
                      <property role="2Ry0Am" value="traceMacro.testlang" />
                      <node concept="2Ry0Ak" id="4MTm4DjkMJT" role="2Ry0An">
                        <property role="2Ry0Am" value="languageModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DjkMJW" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjkMJX" role="3bR37C">
          <node concept="1Busua" id="4MTm4DjkMJY" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1yeLz9" id="4MTm4DjkMJZ" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.traceInfo.tracemacro.testlang#7980748436587788163" />
          <property role="3LESm3" value="791a790e-6d6d-4aa8-8917-3b269a164450" />
          <property role="ZpmtF" value="true" />
          <node concept="1BupzO" id="4MTm4DjkMK7" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4MTm4DjkMK8" role="1HemKq">
              <node concept="55IIr" id="4MTm4DjkMK0" role="3LXTmr">
                <node concept="2Ry0Ak" id="4MTm4DjkMK1" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4MTm4DjkMK2" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="4MTm4DjkMK3" role="2Ry0An">
                      <property role="2Ry0Am" value="traceinfo" />
                      <node concept="2Ry0Ak" id="4MTm4DjkMK4" role="2Ry0An">
                        <property role="2Ry0Am" value="traceMacro.testlang" />
                        <node concept="2Ry0Ak" id="4MTm4DjkMK5" role="2Ry0An">
                          <property role="2Ry0Am" value="generator" />
                          <node concept="2Ry0Ak" id="4MTm4DjkMK6" role="2Ry0An">
                            <property role="2Ry0Am" value="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4MTm4DjkMK9" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjkMKb" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjkMKa" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K09t" resolve="jetbrains.mps.baseLanguage.collections#1151699677197" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4MTm4DjkByT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.traceInfo.test" />
        <property role="3LESm3" value="415bc577-86ca-46a6-b873-4670fd19e169" />
        <property role="aoJFB" value="eYcmk9QOls/tests" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DjkByW" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjkBHN" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4MTm4DjkBOC" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4MTm4DjkBZ7" role="2Ry0An">
                <property role="2Ry0Am" value="traceInfo.test" />
                <node concept="2Ry0Ak" id="4MTm4DjkC11" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.traceInfo.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjkC7e" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjkC7f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjkC7g" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjkC7h" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3zjMY$95UAa" resolve="jetbrains.mps.core.tool.environment" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjkC7i" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjkC7j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjkC7k" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjkC7l" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjkC7m" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjkC7n" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DjkC7x" role="3bR31x">
          <property role="3ZfqAx" value="jetbrains" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DjkC7y" role="1HemKq">
            <node concept="55IIr" id="4MTm4DjkC7s" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DjkC7t" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="4MTm4DjkC7u" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="4MTm4DjkC7v" role="2Ry0An">
                    <property role="2Ry0Am" value="traceInfo.test" />
                    <node concept="2Ry0Ak" id="4MTm4DjkC7w" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DjkC7z" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4Djx4rR" role="3bR37C">
          <node concept="3bR9La" id="4MTm4Djx4rS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
          </node>
        </node>
        <node concept="1SiIV0" id="6vgd21jZ32P" role="3bR37C">
          <node concept="3bR9La" id="6vgd21jZ32Q" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5yInWDRG084" role="3bR37C">
          <node concept="3bR9La" id="5yInWDRG085" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4MTm4DjPIIE" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang" />
        <property role="3LESm3" value="ab0ae915-e3b5-4f35-b55a-c655d649a03c" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DjPIIH" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjPISx" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4MTm4DjPIVq" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="4MTm4DjPJ2f" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="4MTm4DjPJ6e" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="4MTm4DjPJeJ" role="2Ry0An">
                    <property role="2Ry0Am" value="inputLang" />
                    <node concept="2Ry0Ak" id="4MTm4DjPJjk" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputLang.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPJn8" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjPJn9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DjPJnh" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DjPJni" role="1HemKq">
            <node concept="55IIr" id="4MTm4DjPJna" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DjPJnb" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4MTm4DjPJnc" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="4MTm4DjPJnd" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4MTm4DjPJne" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="4MTm4DjPJnf" role="2Ry0An">
                        <property role="2Ry0Am" value="inputLang" />
                        <node concept="2Ry0Ak" id="4MTm4DjPJng" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DjPJnj" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPJnk" role="3bR37C">
          <node concept="1Busua" id="4MTm4DjPJnl" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPJnm" role="3bR37C">
          <node concept="1Busua" id="4MTm4DjPJnn" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="4MTm4DjPJno" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.transformation.test.inputLang#1195164860857" />
          <property role="3LESm3" value="45250695-332a-4a0e-94bc-014e09fa751d" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="4MTm4DjPJnp" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJnq" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjPJnr" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJns" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjPJnt" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJnu" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1BupzO" id="4MTm4DjPJnC" role="3bR31x">
            <property role="3ZfqAx" value="generator/outputLang/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4MTm4DjPJnD" role="1HemKq">
              <node concept="55IIr" id="4MTm4DjPJnv" role="3LXTmr">
                <node concept="2Ry0Ak" id="4MTm4DjPJnw" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4MTm4DjPJnx" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="4MTm4DjPJny" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="4MTm4DjPJnz" role="2Ry0An">
                        <property role="2Ry0Am" value="test" />
                        <node concept="2Ry0Ak" id="4MTm4DjPJn$" role="2Ry0An">
                          <property role="2Ry0Am" value="inputLang" />
                          <node concept="2Ry0Ak" id="4MTm4DjPJn_" role="2Ry0An">
                            <property role="2Ry0Am" value="generator" />
                            <node concept="2Ry0Ak" id="4MTm4DjPJnA" role="2Ry0An">
                              <property role="2Ry0Am" value="outputLang" />
                              <node concept="2Ry0Ak" id="4MTm4DjPJnB" role="2Ry0An">
                                <property role="2Ry0Am" value="template" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4MTm4DjPJnE" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjPJHl" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJHm" role="1SiIV1">
              <ref role="3bR37D" node="4MTm4DjPIIE" resolve="jetbrains.mps.transformation.test.inputLang" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjPJNW" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJNX" role="1SiIV1">
              <ref role="3bR37D" node="4MTm4DjPJtF" resolve="jetbrains.mps.transformation.test.outputLang" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4MTm4DjPJtF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.outputLang" />
        <property role="3LESm3" value="157a9668-bf58-417b-893e-53d86388dc56" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DjPJtG" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjPJtH" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4MTm4DjPJtI" role="2Ry0An">
              <property role="2Ry0Am" value="languageDesign" />
              <node concept="2Ry0Ak" id="4MTm4DjPJtJ" role="2Ry0An">
                <property role="2Ry0Am" value="generator" />
                <node concept="2Ry0Ak" id="4MTm4DjPJtK" role="2Ry0An">
                  <property role="2Ry0Am" value="test" />
                  <node concept="2Ry0Ak" id="4MTm4DjPJtL" role="2Ry0An">
                    <property role="2Ry0Am" value="outputLang" />
                    <node concept="2Ry0Ak" id="4MTm4DjPJDq" role="2Ry0An">
                      <property role="2Ry0Am" value="jetbrains.mps.transformation.test.outputLang.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DjPJtP" role="3bR31x">
          <property role="3ZfqAx" value="languageModels" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DjPJHB" role="1HemKq">
            <node concept="55IIr" id="4MTm4DjPJHw" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DjPJHx" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4MTm4DjPJHy" role="2Ry0An">
                  <property role="2Ry0Am" value="languageDesign" />
                  <node concept="2Ry0Ak" id="4MTm4DjPJHz" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4MTm4DjPJH$" role="2Ry0An">
                      <property role="2Ry0Am" value="test" />
                      <node concept="2Ry0Ak" id="4MTm4DjPJH_" role="2Ry0An">
                        <property role="2Ry0Am" value="outputLang" />
                        <node concept="2Ry0Ak" id="4MTm4DjPJHA" role="2Ry0An">
                          <property role="2Ry0Am" value="languageModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DjPJHC" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPJtZ" role="3bR37C">
          <node concept="1Busua" id="4MTm4DjPJu0" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPJu1" role="3bR37C">
          <node concept="1Busua" id="4MTm4DjPJu2" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="4MTm4DjPJu3" role="1TViLv">
          <property role="TrG5h" value="jetbrains.mps.transformation.test.outputLang#1209603905948" />
          <property role="3LESm3" value="de2f9603-575d-4d84-b063-776b6d27a0b9" />
          <property role="ZpmtF" value="true" />
          <node concept="1SiIV0" id="4MTm4DjPJu8" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJu9" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1BupzO" id="4MTm4DjPJua" role="3bR31x">
            <property role="3ZfqAx" value="generator/self/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4MTm4DjPJHQ" role="1HemKq">
              <node concept="55IIr" id="4MTm4DjPJHH" role="3LXTmr">
                <node concept="2Ry0Ak" id="4MTm4DjPJHI" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4MTm4DjPJHJ" role="2Ry0An">
                    <property role="2Ry0Am" value="languageDesign" />
                    <node concept="2Ry0Ak" id="4MTm4DjPJHK" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="4MTm4DjPJHL" role="2Ry0An">
                        <property role="2Ry0Am" value="test" />
                        <node concept="2Ry0Ak" id="4MTm4DjPJHM" role="2Ry0An">
                          <property role="2Ry0Am" value="outputLang" />
                          <node concept="2Ry0Ak" id="4MTm4DjPJHN" role="2Ry0An">
                            <property role="2Ry0Am" value="generator" />
                            <node concept="2Ry0Ak" id="4MTm4DjPJHO" role="2Ry0An">
                              <property role="2Ry0Am" value="self" />
                              <node concept="2Ry0Ak" id="4MTm4DjPJHP" role="2Ry0An">
                                <property role="2Ry0Am" value="template" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4MTm4DjPJHR" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjPJHD" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJHE" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
            </node>
          </node>
          <node concept="1SiIV0" id="4MTm4DjPJHF" role="3bR37C">
            <node concept="3bR9La" id="4MTm4DjPJHG" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="4MTm4DjPHYx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.transformation.test.inputModels" />
        <property role="3LESm3" value="cdd4e8a8-17c1-4f16-b054-27e94948bd47" />
        <property role="ZpmtF" value="true" />
        <node concept="55IIr" id="4MTm4DjPHY$" role="3LF7KH">
          <node concept="2Ry0Ak" id="4MTm4DjPI70" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="4MTm4DjPIlH" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="4MTm4DjPIoA" role="2Ry0An">
                <property role="2Ry0Am" value="generator.inputModels.test" />
                <node concept="2Ry0Ak" id="4MTm4DjPItb" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.transformation.test.inputModels.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPIwZ" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjPIx0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1BupzO" id="4MTm4DjPIx6" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4MTm4DjPIx7" role="1HemKq">
            <node concept="55IIr" id="4MTm4DjPIx1" role="3LXTmr">
              <node concept="2Ry0Ak" id="4MTm4DjPIx2" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="4MTm4DjPIx3" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="4MTm4DjPIx4" role="2Ry0An">
                    <property role="2Ry0Am" value="generator.inputModels.test" />
                    <node concept="2Ry0Ak" id="4MTm4DjPIx5" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4MTm4DjPIx8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4MTm4DjPJHS" role="3bR37C">
          <node concept="3bR9La" id="4MTm4DjPJHT" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="4MTm4DjPIIE" resolve="jetbrains.mps.transformation.test.inputLang" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="6IYCYtgo1oJ" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="6IYCYtgo1oK" role="13uUGP">
        <ref role="398BVh" node="6IYCYtgo1oE" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6IYCYtgo1oL" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6IYCYtgo1oM" role="2JcizS">
        <ref role="398BVh" node="6IYCYtgo1oD" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6IYCYtgo1oN" role="1l3spa">
      <ref role="1l3spb" node="53PdBITeUc0" resolve="mpsEditor" />
    </node>
    <node concept="2sgV4H" id="4MTm4DiVhq2" role="1l3spa">
      <ref role="1l3spb" to="ffeo:ymnOULAEsd" resolve="mpsTesting" />
    </node>
    <node concept="398rNT" id="6IYCYtgo1oD" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="6IYCYtgo1oE" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="6IYCYtgo1oF" role="398pKh">
        <ref role="398BVh" node="6IYCYtgo1oD" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="6IYCYtgo1oa" role="auvoZ">
      <node concept="2Ry0Ak" id="1tJmw8EVW3y" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="1tJmw8EVW3_" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="6IYCYtgo1ob" role="1l3spN">
      <node concept="L2wRC" id="6IYCYtgo1pT" role="39821P">
        <ref role="L2wRA" node="6IYCYtgo1p6" resolve="jetbrains.mps.lang.test.test" />
      </node>
      <node concept="L2wRC" id="6dN0RJTawwc" role="39821P">
        <ref role="L2wRA" node="6dN0RJT91VK" resolve="jetbrains.mps.lang.extension.tests" />
      </node>
      <node concept="L2wRC" id="4MTm4DiQwtX" role="39821P">
        <ref role="L2wRA" node="4MTm4DiPNps" resolve="jetbrains.mps.baseLanguage.math.runtime" />
      </node>
      <node concept="L2wRC" id="4MTm4DiQwxU" role="39821P">
        <ref role="L2wRA" node="4MTm4DiPMYx" resolve="jetbrains.mps.baseLanguage.math.tests" />
      </node>
      <node concept="L2wRC" id="4MTm4DiVQ1a" role="39821P">
        <ref role="L2wRA" node="4MTm4DiVgtf" resolve="jetbrains.mps.lang.pattern.test" />
      </node>
      <node concept="L2wRC" id="4MTm4DiVQ3N" role="39821P">
        <ref role="L2wRA" node="4MTm4DiVgOb" resolve="jetbrains.mps.lang.pattern.testLang" />
      </node>
      <node concept="L2wRC" id="4MTm4Djc08W" role="39821P">
        <ref role="L2wRA" node="4MTm4DjbxAd" resolve="jetbrains.mps.make.tests" />
      </node>
      <node concept="L2wRC" id="4MTm4DjkMRf" role="39821P">
        <ref role="L2wRA" node="4MTm4DjkMdn" resolve="jetbrains.mps.traceInfo.tracemacro.testlang" />
      </node>
      <node concept="L2wRC" id="4MTm4DjkGbi" role="39821P">
        <ref role="L2wRA" node="4MTm4DjkByT" resolve="jetbrains.mps.traceInfo.test" />
      </node>
      <node concept="L2wRC" id="4MTm4DjQ7Hj" role="39821P">
        <ref role="L2wRA" node="4MTm4DjPIIE" resolve="jetbrains.mps.transformation.test.inputLang" />
      </node>
      <node concept="L2wRC" id="4MTm4DjQ7Mg" role="39821P">
        <ref role="L2wRA" node="4MTm4DjPJtF" resolve="jetbrains.mps.transformation.test.outputLang" />
      </node>
      <node concept="L2wRC" id="4MTm4DjQ7Uv" role="39821P">
        <ref role="L2wRA" node="4MTm4DjPHYx" resolve="jetbrains.mps.transformation.test.inputModels" />
      </node>
      <node concept="L2wRC" id="4MTm4Djc050" role="39821P">
        <ref role="L2wRA" node="4MTm4DjbCsx" resolve="jetbrains.mps.baseLanguage.unitTest.libs" />
        <node concept="3yLZsm" id="4MTm4DjcRQs" role="3yL2VB">
          <property role="3yLZsk" value="lib/hamcrest-library-1.3.jar" />
          <node concept="55IIr" id="73p5MxbjlZN" role="3yLZsn">
            <node concept="2Ry0Ak" id="73p5MxbjlZO" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="73p5MxbjlZP" role="2Ry0An">
                <property role="2Ry0Am" value="mps-testing" />
                <node concept="2Ry0Ak" id="73p5MxbjlZQ" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73p5MxbjlZR" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.unittest.lib" />
                    <node concept="2Ry0Ak" id="73p5MxbjlZS" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="73p5MxbjlZT" role="2Ry0An">
                        <property role="2Ry0Am" value="hamcrest-library-1.3.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3yLZsm" id="4MTm4DjcSns" role="3yL2VB">
          <property role="3yLZsk" value="lib/jmock-2.8.2.jar" />
          <node concept="55IIr" id="73p5Mxbjm0f" role="3yLZsn">
            <node concept="2Ry0Ak" id="73p5Mxbjm0g" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="73p5Mxbjm0h" role="2Ry0An">
                <property role="2Ry0Am" value="mps-testing" />
                <node concept="2Ry0Ak" id="73p5Mxbjm0i" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73p5Mxbjm0j" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.unittest.lib" />
                    <node concept="2Ry0Ak" id="73p5Mxbjm0k" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="73p5Mxbjm0l" role="2Ry0An">
                        <property role="2Ry0Am" value="jmock-2.8.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3yLZsm" id="4MTm4DjcSKN" role="3yL2VB">
          <property role="3yLZsk" value="lib/jmock-junit4-2.8.2.jar" />
          <node concept="55IIr" id="73p5Mxbjm0F" role="3yLZsn">
            <node concept="2Ry0Ak" id="73p5Mxbjm0G" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="73p5Mxbjm0H" role="2Ry0An">
                <property role="2Ry0Am" value="mps-testing" />
                <node concept="2Ry0Ak" id="73p5Mxbjm0I" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73p5Mxbjm0J" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.unittest.lib" />
                    <node concept="2Ry0Ak" id="73p5Mxbjm0K" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="73p5Mxbjm0L" role="2Ry0An">
                        <property role="2Ry0Am" value="jmock-junit4-2.8.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="4MTm4DjcRaT" role="39821P">
        <node concept="3_J27D" id="4MTm4DjcRaV" role="Nbhlr">
          <node concept="3Mxwew" id="4MTm4DjcRcW" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="2HvfSZ" id="4MTm4DjcRoe" role="39821P">
          <node concept="55IIr" id="4MTm4DjcRof" role="2HvfZ0">
            <node concept="2Ry0Ak" id="4MTm4DjcRsG" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="73p5MxbjlN6" role="2Ry0An">
                <property role="2Ry0Am" value="mps-testing" />
                <node concept="2Ry0Ak" id="73p5MxbjlN7" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73p5MxbjlN8" role="2Ry0An">
                    <property role="2Ry0Am" value="bl.unittest.lib" />
                    <node concept="2Ry0Ak" id="73p5MxbjlN9" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="73p5MxbjlNa" role="2Ry0An" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="6IYCYtgo1oc" role="10PD9s" />
    <node concept="3b7kt6" id="6IYCYtgo1oh" role="10PD9s" />
    <node concept="1gjT0q" id="6IYCYtgo1o$" role="10PD9s" />
    <node concept="22LTRH" id="6IYCYtgo1pV" role="1hWBAP">
      <property role="TrG5h" value="test" />
      <node concept="22LTRF" id="6IYCYtgo1pX" role="22LTRK">
        <ref role="22LTRG" node="6IYCYtgo1p5" resolve="test" />
      </node>
      <node concept="24cAiW" id="6IYCYtgo1pZ" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kTk" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTl" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1y0Vig" id="7MSVDs2dyHK" role="1hWBAP">
      <node concept="3bMsLL" id="7MSVDs2dyJ7" role="1y0Vin">
        <ref role="3bMsLK" to="arit:6bGbH3SvUOQ" resolve="fetchDependencies" />
        <node concept="2VaFvH" id="7MSVDs2dJf_" role="3bMsLN">
          <property role="TrG5h" value="downloadLibraries" />
          <node concept="2Vbh7Z" id="7MSVDs2dJfF" role="2VaTZU">
            <node concept="2pNNFK" id="7MSVDs2dJfJ" role="2Vbh7K">
              <property role="2pNNFO" value="ant" />
              <node concept="2pNUuL" id="7MSVDs2dJfN" role="2pNNFR">
                <property role="2pNUuO" value="antfile" />
                <node concept="2pMdtt" id="7MSVDs2dJfO" role="2pMdts">
                  <property role="2pMdty" value="build/getDependencies.xml" />
                </node>
              </node>
              <node concept="2pNUuL" id="7MSVDs2dJfV" role="2pNNFR">
                <property role="2pNUuO" value="inheritAll" />
                <node concept="2pMdtt" id="7MSVDs2dJfW" role="2pMdts">
                  <property role="2pMdty" value="false" />
                </node>
              </node>
              <node concept="2pNUuL" id="7MSVDs2dJg3" role="2pNNFR">
                <property role="2pNUuO" value="useNativeBasedir" />
                <node concept="2pMdtt" id="7MSVDs2dJg4" role="2pMdts">
                  <property role="2pMdty" value="true" />
                </node>
              </node>
              <node concept="2pNNFK" id="7MSVDs2dJjz" role="3o6s8t">
                <property role="2pNNFO" value="target" />
                <node concept="2pNUuL" id="7MSVDs2dJqn" role="2pNNFR">
                  <property role="2pNUuO" value="name" />
                  <node concept="2pMdtt" id="7MSVDs2dJqo" role="2pMdts">
                    <property role="2pMdty" value="install-ivy" />
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="7MSVDs2dJtN" role="3o6s8t">
                <property role="2pNNFO" value="target" />
                <node concept="2pNUuL" id="7MSVDs2dJtO" role="2pNNFR">
                  <property role="2pNUuO" value="name" />
                  <node concept="2pMdtt" id="7MSVDs2dJtP" role="2pMdts">
                    <property role="2pMdty" value="download-testlib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHOjN" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHOjO" role="398pKh">
        <ref role="398BVh" node="6IYCYtgo1oD" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHOjP" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHOjQ" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHOjR" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="2Ew8zTEYB1j">
    <property role="TrG5h" value="mpsFeedback" />
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsFeedback.xml" />
    <node concept="2_Ic$z" id="2Ew8zTEYB1k" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="2Ew8zTEYB1l" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtD" id="2Ew8zTEYB6Y" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="messages.customization" />
      <property role="3LESm3" value="7cf7c95b-c81e-4da9-a056-45e480a7abd3" />
      <property role="ZpmtF" value="true" />
      <node concept="55IIr" id="2Ew8zTEYB7V" role="3LF7KH">
        <node concept="2Ry0Ak" id="2Ew8zTEYB7W" role="iGT6I">
          <property role="2Ry0Am" value="samples" />
          <node concept="2Ry0Ak" id="2Ew8zTEYB7X" role="2Ry0An">
            <property role="2Ry0Am" value="messagesCustomization" />
            <node concept="2Ry0Ak" id="2Ew8zTEYB7Y" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="2Ew8zTEYB7Z" role="2Ry0An">
                <property role="2Ry0Am" value="messages.customization" />
                <node concept="2Ry0Ak" id="2Ew8zTEYB80" role="2Ry0An">
                  <property role="2Ry0Am" value="messages.customization.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2Ew8zTEYB87" role="3bR37C">
        <node concept="3bR9La" id="2Ew8zTEYB88" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn8mCi" resolve="jetbrains.mps.lang.feedback.problem.scopes" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Ew8zTEYB89" role="3bR37C">
        <node concept="3bR9La" id="2Ew8zTEYB8a" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn4_1I" resolve="jetbrains.mps.lang.constraints.rules.kinds" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Ew8zTEYB8b" role="3bR37C">
        <node concept="3bR9La" id="2Ew8zTEYB8c" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Ew8zTEYB8d" role="3bR37C">
        <node concept="3bR9La" id="2Ew8zTEYB8e" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn8nuy" resolve="jetbrains.mps.lang.feedback.problem.structural" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Ew8zTEYB8f" role="3bR37C">
        <node concept="3bR9La" id="2Ew8zTEYB8g" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:3qkjbZn89da" resolve="jetbrains.mps.lang.feedback.problem.childAndProp" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umQXC" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umQXD" role="1HemKq">
          <node concept="55IIr" id="73GUf$umQXy" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umQXz" role="iGT6I">
              <property role="2Ry0Am" value="samples" />
              <node concept="2Ry0Ak" id="73GUf$umQX$" role="2Ry0An">
                <property role="2Ry0Am" value="messagesCustomization" />
                <node concept="2Ry0Ak" id="73GUf$umQX_" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="73GUf$umQXA" role="2Ry0An">
                    <property role="2Ry0Am" value="messages.customization" />
                    <node concept="2Ry0Ak" id="73GUf$umQXB" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umQXE" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2Ew8zTEYB4a" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="messages.sandbox" />
      <property role="3LESm3" value="413b04bf-b1a3-4a43-93b8-837f7a86e401" />
      <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
      <property role="ZpmtF" value="true" />
      <node concept="3rtmxn" id="2Ew8zTEYB4b" role="3bR31x">
        <node concept="3LXTmp" id="2Ew8zTEYB4c" role="3rtmxm">
          <node concept="3qWCbU" id="2Ew8zTEYB4d" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="2Ew8zTEYB4e" role="3LXTmr">
            <node concept="2Ry0Ak" id="2Ew8zTEYB4f" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2Ew8zTEYB4g" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="2Ew8zTEYB4h" role="2Ry0An">
                  <property role="2Ry0Am" value="testConstraints" />
                  <node concept="2Ry0Ak" id="2Ew8zTEYB4i" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="2Ew8zTEYB4j" role="2Ry0An">
                      <property role="2Ry0Am" value="TestConstraints" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="2Ew8zTEYB4k" role="3LF7KH">
        <node concept="2Ry0Ak" id="2Ew8zTEYB4l" role="iGT6I">
          <property role="2Ry0Am" value="samples" />
          <node concept="2Ry0Ak" id="2Ew8zTEYB4m" role="2Ry0An">
            <property role="2Ry0Am" value="messagesCustomization" />
            <node concept="2Ry0Ak" id="2Ew8zTEYB4n" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="2Ew8zTEYB4o" role="2Ry0An">
                <property role="2Ry0Am" value="sandbox" />
                <node concept="2Ry0Ak" id="2Ew8zTEYB6g" role="2Ry0An">
                  <property role="2Ry0Am" value="messages.sandbox.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2Ew8zTEYB94" role="3bR37C">
        <node concept="3bR9La" id="2Ew8zTEYB95" role="1SiIV1">
          <ref role="3bR37D" node="2Ew8zTEYB6Y" resolve="messages.customization" />
        </node>
      </node>
      <node concept="1BupzO" id="73GUf$umQXL" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="73GUf$umQXM" role="1HemKq">
          <node concept="55IIr" id="73GUf$umQXF" role="3LXTmr">
            <node concept="2Ry0Ak" id="73GUf$umQXG" role="iGT6I">
              <property role="2Ry0Am" value="samples" />
              <node concept="2Ry0Ak" id="73GUf$umQXH" role="2Ry0An">
                <property role="2Ry0Am" value="messagesCustomization" />
                <node concept="2Ry0Ak" id="73GUf$umQXI" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="73GUf$umQXJ" role="2Ry0An">
                    <property role="2Ry0Am" value="sandbox" />
                    <node concept="2Ry0Ak" id="73GUf$umQXK" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="73GUf$umQXN" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="2Ew8zTEYB2B" role="1hWBAP">
      <property role="TrG5h" value="feedback" />
      <node concept="24cAiW" id="2Ew8zTEYB2C" role="24cAkG">
        <node concept="NbPM2" id="372aBDf0kTm" role="1psgkv">
          <node concept="3Mxwew" id="372aBDf0kTn" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRM" id="2Ew8zTEYB9a" role="22LTRK">
        <ref role="22LTRN" node="2Ew8zTEYB4a" resolve="messages.sandbox" />
      </node>
    </node>
    <node concept="13uUGR" id="2Ew8zTEYB2F" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="2Ew8zTEYB2G" role="13uUGP">
        <ref role="398BVh" node="2Ew8zTEYB2K" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2Ew8zTEYB2H" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="2Ew8zTEYB2I" role="2JcizS">
        <ref role="398BVh" node="2Ew8zTEYB2J" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="2Ew8zTEYB2J" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="2Ew8zTEYB2K" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="2Ew8zTEYB2L" role="398pKh">
        <ref role="398BVh" node="2Ew8zTEYB2J" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="2Ew8zTEYB2M" role="10PD9s" />
    <node concept="3b7kt6" id="2Ew8zTEYB2N" role="10PD9s" />
    <node concept="1gjT0q" id="2Ew8zTEYB2O" role="10PD9s" />
    <node concept="1l3spV" id="2Ew8zTEYB2P" role="1l3spN">
      <node concept="398223" id="2Ew8zTEYB2Q" role="39821P">
        <node concept="3_J27D" id="2Ew8zTEYB2R" role="Nbhlr">
          <node concept="3Mxwew" id="2Ew8zTEYB2S" role="3MwsjC">
            <property role="3MwjfP" value="solutions" />
          </node>
        </node>
        <node concept="L2wRC" id="2Ew8zTEYB2T" role="39821P">
          <ref role="L2wRA" node="2Ew8zTEYB4a" resolve="messages.sandbox" />
        </node>
      </node>
      <node concept="398223" id="2Ew8zTEYB2V" role="39821P">
        <node concept="3_J27D" id="2Ew8zTEYB2W" role="Nbhlr">
          <node concept="3Mxwew" id="2Ew8zTEYB2X" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
        <node concept="L2wRC" id="2Ew8zTEYB2Z" role="39821P">
          <ref role="L2wRA" node="2Ew8zTEYB6Y" resolve="messages.customization" />
        </node>
      </node>
    </node>
    <node concept="55IIr" id="2Ew8zTEYB30" role="auvoZ">
      <node concept="2Ry0Ak" id="2Ew8zTEYB31" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="2Ew8zTEYB32" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHObL" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHObM" role="398pKh">
        <ref role="398BVh" node="2Ew8zTEYB2J" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHObN" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHObO" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHObP" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1CUeZUoS3fw">
    <property role="TrG5h" value="mpsKotlin" />
    <property role="turDy" value="mpsKotlin.xml" />
    <property role="2DA0ip" value="../../../../" />
    <node concept="398rNT" id="1CUeZUoS3fx" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2_Ic$z" id="1CUeZUoS3fy" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="1CUeZUoS3fz" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="398rNT" id="1CUeZUoS3f$" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="1CUeZUoS3f_" role="398pKh">
        <ref role="398BVh" node="1CUeZUoS3fx" resolve="mps_home" />
      </node>
    </node>
    <node concept="13uUGR" id="1CUeZUoS3fA" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="1CUeZUoS3fB" role="13uUGP">
        <ref role="398BVh" node="1CUeZUoS3f$" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1CUeZUoS3fC" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="1CUeZUoS3fD" role="2JcizS">
        <ref role="398BVh" node="1CUeZUoS3fx" resolve="mps_home" />
      </node>
    </node>
    <node concept="22LTRH" id="1CUeZUoS3fG" role="1hWBAP">
      <property role="TrG5h" value="mpsKotlin" />
      <node concept="24cAiW" id="1CUeZUoS3fH" role="24cAkG">
        <node concept="NbPM2" id="1CUeZUoS3fJ" role="XX84c">
          <node concept="3Mxwew" id="1CUeZUoS3fK" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="1CUeZUoS3fL" role="1psgkv">
          <node concept="3Mxwew" id="1CUeZUoS3fM" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m" />
          </node>
        </node>
      </node>
      <node concept="22LTRF" id="1CUeZUoS3fN" role="22LTRK">
        <ref role="22LTRG" node="1CUeZUoS3fO" resolve="kotlin-tests" />
      </node>
    </node>
    <node concept="2G$12M" id="1CUeZUoS3fO" role="3989C9">
      <property role="TrG5h" value="kotlin-tests" />
      <node concept="1E1JtA" id="7GnJkgHG4j9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.kotlin.tests.misc" />
        <property role="3LESm3" value="e61a5b64-d5f3-4672-bf84-a75e1bd7e346" />
        <property role="ZpmtF" value="true" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7GnJkgHG4JU" role="3LF7KH">
          <node concept="2Ry0Ak" id="7GnJkgHG4JV" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="7GnJkgHG4JW" role="2Ry0An">
              <property role="2Ry0Am" value="mps-kotlin" />
              <node concept="2Ry0Ak" id="7GnJkgHG4JX" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7GnJkgHG4JY" role="2Ry0An">
                  <property role="2Ry0Am" value="kotlin.tests.misc" />
                  <node concept="2Ry0Ak" id="7GnJkgHG4Mg" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.kotlin.tests.misc.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7GnJkgHG4Np" role="3bR37C">
          <node concept="3bR9La" id="7GnJkgHG4Nq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5MjKXSeu3D$" resolve="jetbrains.mps.kotin.ui.dsl" />
          </node>
        </node>
        <node concept="1BupzO" id="7GnJkgHG4Nx" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7GnJkgHG4Ny" role="1HemKq">
            <node concept="55IIr" id="7GnJkgHG4Nr" role="3LXTmr">
              <node concept="2Ry0Ak" id="7GnJkgHG4Ns" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="7GnJkgHG4Nt" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-kotlin" />
                  <node concept="2Ry0Ak" id="7GnJkgHG4Nu" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="7GnJkgHG4Nv" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlin.tests.misc" />
                      <node concept="2Ry0Ak" id="7GnJkgHG4Nw" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7GnJkgHG4Nz" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2dcS_OZUtFa" role="3bR37C">
          <node concept="3bR9La" id="2dcS_OZUtFb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:Ye$g8PO8Uc" resolve="jetbrains.mps.kotlin" />
          </node>
        </node>
        <node concept="1SiIV0" id="2dcS_OZUtFc" role="3bR37C">
          <node concept="3bR9La" id="2dcS_OZUtFd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6aIAM_Qd5ki" resolve="jetbrains.mps.lang.test.matcher" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="1CUeZUoS3fP" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.kotlin.tests.editor" />
        <property role="3LESm3" value="5f5dc7f6-3323-460d-848a-1c2ae461be61" />
        <property role="aoJFB" value="eYcmk9QOlj/sources and tests" />
        <property role="ZpmtF" value="true" />
        <node concept="3rtmxn" id="1CUeZUoS3fQ" role="3bR31x">
          <node concept="3LXTmp" id="1CUeZUoS3fR" role="3rtmxm">
            <node concept="3qWCbU" id="1CUeZUoS3fS" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="1CUeZUoS3fT" role="3LXTmr">
              <node concept="2Ry0Ak" id="1CUeZUoS3fU" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="1CUeZUoS3fV" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-java" />
                  <node concept="2Ry0Ak" id="1CUeZUoS3fW" role="2Ry0An">
                    <property role="2Ry0Am" value="workbench" />
                    <node concept="2Ry0Ak" id="1CUeZUoS3fX" role="2Ry0An">
                      <property role="2Ry0Am" value="tests" />
                      <node concept="2Ry0Ak" id="1CUeZUoS3fY" role="2Ry0An">
                        <property role="2Ry0Am" value="jetbrains.mps.ide.java.tests" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="1CUeZUoS3fZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="1CUeZUoS3g0" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="1CUeZUoS3g1" role="2Ry0An">
              <property role="2Ry0Am" value="mps-kotlin" />
              <node concept="2Ry0Ak" id="1CUeZUoS3g2" role="2Ry0An">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="1CUeZUoS3g3" role="2Ry0An">
                  <property role="2Ry0Am" value="kotlin.tests.editor" />
                  <node concept="2Ry0Ak" id="1CUeZUoS3g4" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.kotlin.tests.editor.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="1CUeZUoS3go" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1euJyZllPza" role="1HemKq">
            <node concept="55IIr" id="1euJyZllPz4" role="3LXTmr">
              <node concept="2Ry0Ak" id="1euJyZllPz5" role="iGT6I">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="1euJyZllPz6" role="2Ry0An">
                  <property role="2Ry0Am" value="mps-kotlin" />
                  <node concept="2Ry0Ak" id="1euJyZllPz7" role="2Ry0An">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="1euJyZllPz8" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlin.tests.editor" />
                      <node concept="2Ry0Ak" id="1euJyZllPz9" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1euJyZllPzb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1CUeZUoS3rj" role="3bR37C">
          <node concept="3bR9La" id="1CUeZUoS3rk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:Ye$g8PO8Uc" resolve="jetbrains.mps.kotlin" />
          </node>
        </node>
        <node concept="1SiIV0" id="1CUeZUoS3rl" role="3bR37C">
          <node concept="3bR9La" id="1CUeZUoS3rm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="3PMETvllXis" role="3bR37C">
          <node concept="3bR9La" id="3PMETvllXit" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3PMETvllXiu" role="3bR37C">
          <node concept="3bR9La" id="3PMETvllXiv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1SiIV0" id="33FNpNi_DSY" role="3bR37C">
          <node concept="3bR9La" id="33FNpNi_DSZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3PMETvlnxVs" resolve="jetbrains.mps.kotlin.stubs" />
          </node>
        </node>
        <node concept="1SiIV0" id="6TifRYAeKU9" role="3bR37C">
          <node concept="3bR9La" id="6TifRYAeKUa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:Ye$g8PO8TM" resolve="jetbrains.mps.kotlin.javaRefs" />
          </node>
        </node>
        <node concept="1SiIV0" id="7JjKDUl0o$7" role="3bR37C">
          <node concept="3bR9La" id="7JjKDUl0o$8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1G33vFC9d3f" resolve="jetbrains.mps.kotlin.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7JjKDUl0o$9" role="3bR37C">
          <node concept="3bR9La" id="7JjKDUl0o$a" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="1CUeZUoS3hh" role="auvoZ">
      <node concept="2Ry0Ak" id="1CUeZUoS3hi" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="1CUeZUoS3hj" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="1CUeZUoS3hk" role="1l3spN">
      <node concept="L2wRC" id="1CUeZUoS3hl" role="39821P">
        <ref role="L2wRA" node="1CUeZUoS3fP" resolve="jetbrains.mps.kotlin.tests.editor" />
      </node>
      <node concept="L2wRC" id="7GnJkgHPiBf" role="39821P">
        <ref role="L2wRA" node="7GnJkgHG4j9" resolve="jetbrains.mps.kotlin.tests.misc" />
      </node>
    </node>
    <node concept="10PD9b" id="1CUeZUoS3hz" role="10PD9s" />
    <node concept="3b7kt6" id="1CUeZUoS3h$" role="10PD9s" />
    <node concept="1gjT0q" id="1CUeZUoS3h_" role="10PD9s" />
    <node concept="398rNT" id="2KA2zfKHOd7" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHOd8" role="398pKh">
        <ref role="398BVh" node="1CUeZUoS3fx" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHOd9" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHOda" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHOdb" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="7R9PHlpRsrd">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsToolTests" />
    <property role="turDy" value="mpsToolTests.xml" />
    <node concept="2_Ic$z" id="7R9PHlpRsre" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="7R9PHlpRsrf" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtA" id="7R9PHlpRsrh" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.ide.depanalyzer.test" />
      <property role="3LESm3" value="6e290803-df96-416d-a91a-a746ba0a76fb" />
      <property role="aoJFB" value="eYcmk9QOls/tests" />
      <property role="ZpmtF" value="true" />
      <node concept="55IIr" id="7R9PHlpRsri" role="3LF7KH">
        <node concept="2Ry0Ak" id="7R9PHlpRsrj" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="7R9PHlpRsrk" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="7R9PHlpRsrl" role="2Ry0An">
              <property role="2Ry0Am" value="depanalyzer" />
              <node concept="2Ry0Ak" id="7R9PHlpRsse" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.ide.depanalyzer.test.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="7R9PHlpRsrp" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="7R9PHlpRsst" role="1HemKq">
          <node concept="55IIr" id="7R9PHlpRsso" role="3LXTmr">
            <node concept="2Ry0Ak" id="7R9PHlpRssp" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="7R9PHlpRssq" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="7R9PHlpRssr" role="2Ry0An">
                  <property role="2Ry0Am" value="depanalyzer" />
                  <node concept="2Ry0Ak" id="7R9PHlpRsss" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="7R9PHlpRssu" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="7R9PHlpRssg" role="3bR37C">
        <node concept="3bR9La" id="7R9PHlpRssh" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="7R9PHlpRssi" role="3bR37C">
        <node concept="3bR9La" id="7R9PHlpRssj" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
        </node>
      </node>
      <node concept="1SiIV0" id="7R9PHlpRssm" role="3bR37C">
        <node concept="3bR9La" id="7R9PHlpRssn" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
        </node>
      </node>
      <node concept="1SiIV0" id="6S_FNWXEKAx" role="3bR37C">
        <node concept="3bR9La" id="6S_FNWXEKAy" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:6S_FNWXEKkg" resolve="jetbrains.mps.ide.depanalyzer" />
        </node>
      </node>
      <node concept="1SiIV0" id="1wWWPEu1yDg" role="3bR37C">
        <node concept="3bR9La" id="1wWWPEu1yDh" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
        </node>
      </node>
      <node concept="1SiIV0" id="1wWWPEu1yDi" role="3bR37C">
        <node concept="3bR9La" id="1wWWPEu1yDj" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2j4NQWLGvOb" role="3989C9">
      <property role="TrG5h" value="tests.testDepViewer" />
      <property role="3LESm3" value="4c6a90ca-b7fe-4942-9ee4-58e09ff23d6d" />
      <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
      <property role="BnDLt" value="true" />
      <property role="ZpmtF" value="true" />
      <node concept="55IIr" id="2j4NQWLGvOc" role="3LF7KH">
        <node concept="2Ry0Ak" id="2j4NQWLGvOd" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="2j4NQWLGvOe" role="2Ry0An">
            <property role="2Ry0Am" value="modules" />
            <node concept="2Ry0Ak" id="2j4NQWLGvOf" role="2Ry0An">
              <property role="2Ry0Am" value="testDepViewer" />
              <node concept="2Ry0Ak" id="2j4NQWLGvOg" role="2Ry0An">
                <property role="2Ry0Am" value="tests.testDepViewer.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3rtmxn" id="2j4NQWLGvOh" role="3bR31x">
        <node concept="3LXTmp" id="2j4NQWLGvOi" role="3rtmxm">
          <node concept="55IIr" id="2j4NQWLGvOj" role="3LXTmr">
            <node concept="2Ry0Ak" id="2j4NQWLGvOk" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2j4NQWLGvOl" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="2j4NQWLGvOm" role="2Ry0An">
                  <property role="2Ry0Am" value="testDepViewer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2j4NQWLGvOn" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2j4NQWLGvS6" role="3bR37C">
        <node concept="3bR9La" id="2j4NQWLGvS7" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="2j4NQWLGvS8" role="3bR37C">
        <node concept="3bR9La" id="2j4NQWLGvS9" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfd" resolve="jetbrains.mps.findUsages.runtime" />
        </node>
      </node>
      <node concept="1SiIV0" id="2j4NQWLGvSa" role="3bR37C">
        <node concept="3bR9La" id="2j4NQWLGvSb" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1BupzO" id="2j4NQWLGvSl" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="2j4NQWLGvSm" role="1HemKq">
          <node concept="55IIr" id="2j4NQWLGvSg" role="3LXTmr">
            <node concept="2Ry0Ak" id="2j4NQWLGvSh" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="2j4NQWLGvSi" role="2Ry0An">
                <property role="2Ry0Am" value="modules" />
                <node concept="2Ry0Ak" id="2j4NQWLGvSj" role="2Ry0An">
                  <property role="2Ry0Am" value="testDepViewer" />
                  <node concept="2Ry0Ak" id="2j4NQWLGvSk" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2j4NQWLGvSn" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="7TKpiq417yW" role="3bR37C">
        <node concept="3bR9La" id="7TKpiq417yX" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:6S_FNWXEKkg" resolve="jetbrains.mps.ide.depanalyzer" />
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="7R9PHlpRsrx" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="7R9PHlpRsry" role="13uUGP">
        <ref role="398BVh" node="7R9PHlpRsrB" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7R9PHlpRsrz" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7R9PHlpRsr$" role="2JcizS">
        <ref role="398BVh" node="7R9PHlpRsrA" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7R9PHlpRsr_" role="1l3spa">
      <ref role="1l3spb" to="ffeo:4O0hKJpjIUQ" resolve="mpsDevKit" />
    </node>
    <node concept="398rNT" id="7R9PHlpRsrA" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="7R9PHlpRsrB" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7R9PHlpRsrC" role="398pKh">
        <ref role="398BVh" node="7R9PHlpRsrA" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="7R9PHlpRsrD" role="auvoZ">
      <node concept="2Ry0Ak" id="7R9PHlpRsrE" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="7R9PHlpRsrF" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="7R9PHlpRsrG" role="1l3spN">
      <node concept="L2wRC" id="7R9PHlpRsrH" role="39821P">
        <ref role="L2wRA" node="7R9PHlpRsrh" resolve="jetbrains.mps.ide.depanalyzer.test" />
      </node>
      <node concept="L2wRC" id="1BXBf8Uw9dY" role="39821P">
        <ref role="L2wRA" node="2j4NQWLGvOb" resolve="tests.testDepViewer" />
      </node>
    </node>
    <node concept="10PD9b" id="7R9PHlpRsrI" role="10PD9s" />
    <node concept="3b7kt6" id="7R9PHlpRsrJ" role="10PD9s" />
    <node concept="1gjT0q" id="7R9PHlpRsrK" role="10PD9s" />
    <node concept="22LTRH" id="7R9PHlpRQhg" role="1hWBAP">
      <property role="TrG5h" value="depAnanlyzer" />
      <node concept="22LTRM" id="7R9PHlpRQhn" role="22LTRK">
        <ref role="22LTRN" node="7R9PHlpRsrh" resolve="jetbrains.mps.ide.depanalyzer.test" />
      </node>
      <node concept="22LTRM" id="1BXBf8Uw9sT" role="22LTRK">
        <ref role="22LTRN" node="2j4NQWLGvOb" resolve="tests.testDepViewer" />
      </node>
      <node concept="24cAiW" id="6S_FNWXEKAt" role="24cAkG">
        <node concept="24YFd4" id="6S_FNWXEKAv" role="24YFd7">
          <ref role="24YFd5" to="ffeo:4O0hKJpjIV3" resolve="jetbrains.mps.ide.devkit" />
        </node>
        <node concept="24YFd4" id="4xgF4dWwu8G" role="24YFd7">
          <ref role="24YFd5" to="ffeo:5ziJCXbfbGU" resolve="intellij.structureView.plugin" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2KA2zfKHPmS" role="1l3spd">
      <property role="TrG5h" value="kotlinc_home" />
      <node concept="398BVA" id="2KA2zfKHPmT" role="398pKh">
        <ref role="398BVh" node="7R9PHlpRsrA" resolve="mps_home" />
        <node concept="2Ry0Ak" id="2KA2zfKHPmU" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="2KA2zfKHPmV" role="2Ry0An">
            <property role="2Ry0Am" value="mps-kotlin" />
            <node concept="2Ry0Ak" id="2KA2zfKHPmW" role="2Ry0An">
              <property role="2Ry0Am" value="kotlinc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="5yKoVLN$7DA">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsVCS" />
    <property role="turDy" value="mpsVCS.xml" />
    <node concept="13uUGR" id="6ifcnI8$2lq" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="6ifcnI8$2lr" role="13uUGP">
        <ref role="398BVh" node="5yKoVLN_W91" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5yKoVLN$7Ef" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5yKoVLN$7Eg" role="2JcizS">
        <ref role="398BVh" node="3E9C6pCXzRL" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="3E9C6pCXzRL" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="3E9C6pCXzRM" role="398pKh" />
    </node>
    <node concept="398rNT" id="5yKoVLN_W91" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
    </node>
    <node concept="398rNT" id="3E9C6pCXO$D" role="1l3spd">
      <property role="TrG5h" value="plugin_home" />
      <node concept="55IIr" id="3RBjcWjH3ou" role="398pKh">
        <node concept="2Ry0Ak" id="3RBjcWjH3oz" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="3RBjcWjH3oA" role="2Ry0An">
            <property role="2Ry0Am" value="mps-vcs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="4X5j05vNi7n" role="10PD9s" />
    <node concept="3b7kt6" id="4X5j05vNi7o" role="10PD9s" />
    <node concept="_l39y" id="4X5j05vNkqo" role="10PD9s" />
    <node concept="55IIr" id="5yKoVLNGztV" role="auvoZ">
      <node concept="2Ry0Ak" id="5yKoVLNGzu1" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="5yKoVLNGzu6" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="5yKoVLN$7DC" role="1l3spN">
      <node concept="398223" id="5yKoVLN$lh8" role="39821P">
        <node concept="L2wRC" id="5yKoVLN$lhi" role="39821P">
          <ref role="L2wRA" node="5yKoVLN$7El" resolve="jetbrains.mps.vcs.tests" />
        </node>
        <node concept="3_J27D" id="5yKoVLN$lha" role="Nbhlr">
          <node concept="3Mxwew" id="5yKoVLN$lhe" role="3MwsjC">
            <property role="3MwjfP" value="modules" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="5yKoVLN$7El" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.vcs.tests" />
      <property role="3LESm3" value="ed3e0fd1-3ac2-4543-b6b2-d6d0bea8bf18" />
      <node concept="398BVA" id="5yKoVLN$lgM" role="3LF7KH">
        <ref role="398BVh" node="3E9C6pCXO$D" resolve="plugin_home" />
        <node concept="2Ry0Ak" id="5yKoVLN$lgS" role="iGT6I">
          <property role="2Ry0Am" value="tests" />
          <node concept="2Ry0Ak" id="5yKoVLN$lgX" role="2Ry0An">
            <property role="2Ry0Am" value="vcs.tests" />
            <node concept="2Ry0Ak" id="5yKoVLN$lh2" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.vcs.tests.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="5yKoVLN$lhn" role="3bR37C">
        <node concept="3bR9La" id="5yKoVLN$lho" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:4wxeloVufXp" resolve="jetbrains.mps.git4idea.stubs" />
        </node>
      </node>
      <node concept="1SiIV0" id="5yKoVLN$lhp" role="3bR37C">
        <node concept="3bR9La" id="5yKoVLN$lhq" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1BupzO" id="5yKoVLN$lhF" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="5yKoVLN$lhG" role="1HemKq">
          <node concept="398BVA" id="5yKoVLN$lhr" role="3LXTmr">
            <ref role="398BVh" node="3E9C6pCXO$D" resolve="plugin_home" />
            <node concept="2Ry0Ak" id="5yKoVLN$lhs" role="iGT6I">
              <property role="2Ry0Am" value="tests" />
              <node concept="2Ry0Ak" id="5yKoVLN$lht" role="2Ry0An">
                <property role="2Ry0Am" value="vcs.tests" />
                <node concept="2Ry0Ak" id="5yKoVLN$lhu" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="5yKoVLN$lhH" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="_awnq" id="5yKoVLN$lhl" role="1hWBAP">
      <property role="3MWwXZ" value="CheckGit4IdeaStubs" />
      <ref role="30Vec$" node="5yKoVLN$7El" resolve="jetbrains.mps.vcs.tests" />
      <node concept="24YFd5" id="5yKoVLN$li4" role="5id3f">
        <ref role="24YFd6" to="ffeo:I6XuqGYf8K" resolve="Git4Idea" />
      </node>
      <node concept="24YFd5" id="5yKoVLN$lif" role="5id3f">
        <ref role="24YFd6" to="ffeo:4wxeloVufXr" resolve="jetbrains.mps.git4idea.stubs" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4ZZ2R77b8ry">
    <property role="2DA0ip" value="../../../../" />
    <property role="TrG5h" value="mpsMigrations" />
    <property role="turDy" value="mpsMigrations.xml" />
    <node concept="22LTRH" id="4ZZ2R77b8rz" role="1hWBAP">
      <property role="TrG5h" value="test-migration" />
      <node concept="24cAiW" id="4ZZ2R77b8r$" role="24cAkG">
        <node concept="NbPM2" id="4ZZ2R77b8r_" role="1psgkv">
          <node concept="3Mxwew" id="4ZZ2R77fIk0" role="3MwsjC">
            <property role="3MwjfP" value="-Xmx2048m -Dprojects_dir=." />
          </node>
        </node>
        <node concept="24YFd4" id="4ZZ2R77b9l2" role="24YFd7">
          <ref role="24YFd5" to="ffeo:6OJi9XVRc7A" resolve="jetbrains.mps.ide.mpsmigration" />
        </node>
      </node>
      <node concept="22LTRM" id="4ZZ2R77b8rB" role="22LTRK">
        <ref role="22LTRN" node="4ZZ2R77b8rE" resolve="jetbrains.mps.tests.migration" />
      </node>
    </node>
    <node concept="2_Ic$z" id="4ZZ2R77b8rC" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="4ZZ2R77b8rD" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="1E1JtA" id="4ZZ2R77b8rE" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.tests.migration" />
      <property role="3LESm3" value="7bc89fb0-f934-4041-be76-ad6b7ec54e68" />
      <property role="aoJFB" value="eYcmk9QOls/tests" />
      <node concept="3rtmxn" id="4ZZ2R77b8rF" role="3bR31x">
        <node concept="3LXTmp" id="4ZZ2R77b8rG" role="3rtmxm">
          <node concept="3qWCbU" id="4ZZ2R77b8rH" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="4ZZ2R77b8rI" role="3LXTmr">
            <node concept="2Ry0Ak" id="4ZZ2R77b8rJ" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="4ZZ2R77b8rK" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="4ZZ2R77b8rL" role="2Ry0An">
                  <property role="2Ry0Am" value="jetbrains.mps.tests.sraMigration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="55IIr" id="4ZZ2R77b8rM" role="3LF7KH">
        <node concept="2Ry0Ak" id="4ZZ2R77b8rN" role="iGT6I">
          <property role="2Ry0Am" value="testbench" />
          <node concept="2Ry0Ak" id="4ZZ2R77b8rO" role="2Ry0An">
            <property role="2Ry0Am" value="testsolutions" />
            <node concept="2Ry0Ak" id="4ZZ2R77b8rP" role="2Ry0An">
              <property role="2Ry0Am" value="migration.test" />
              <node concept="2Ry0Ak" id="4ZZ2R77b8PQ" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.tests.migration.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4ZZ2R77b8s1" role="3bR37C">
        <node concept="3bR9La" id="4ZZ2R77b8s2" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
        </node>
      </node>
      <node concept="1BupzO" id="4ZZ2R77b8s3" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="4ZZ2R77b8XD" role="1HemKq">
          <node concept="55IIr" id="4ZZ2R77b8X$" role="3LXTmr">
            <node concept="2Ry0Ak" id="4ZZ2R77b8X_" role="iGT6I">
              <property role="2Ry0Am" value="testbench" />
              <node concept="2Ry0Ak" id="4ZZ2R77b8XA" role="2Ry0An">
                <property role="2Ry0Am" value="testsolutions" />
                <node concept="2Ry0Ak" id="4ZZ2R77b8XB" role="2Ry0An">
                  <property role="2Ry0Am" value="migration.test" />
                  <node concept="2Ry0Ak" id="4ZZ2R77b8XC" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="4ZZ2R77b8XE" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4ZZ2R77b8Xu" role="3bR37C">
        <node concept="3bR9La" id="4ZZ2R77b8Xv" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:5lGJ4Tajp1p" resolve="jetbrains.mps.migration.component" />
        </node>
      </node>
      <node concept="1SiIV0" id="4ZZ2R77b8Xw" role="3bR37C">
        <node concept="3bR9La" id="4ZZ2R77b8Xx" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
        </node>
      </node>
      <node concept="1SiIV0" id="4ZZ2R77b8Xy" role="3bR37C">
        <node concept="3bR9La" id="4ZZ2R77b8Xz" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
        </node>
      </node>
      <node concept="1SiIV0" id="3LuvecXmpDt" role="3bR37C">
        <node concept="3bR9La" id="3LuvecXmpDu" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="4ZZ2R77b8sb" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="4ZZ2R77b8sc" role="13uUGP">
        <ref role="398BVh" node="4ZZ2R77b8sg" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4ZZ2R77b8sd" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4ZZ2R77b8se" role="2JcizS">
        <ref role="398BVh" node="4ZZ2R77b8sf" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="4ZZ2R77b8sf" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="4ZZ2R77b8sg" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="4ZZ2R77b8sh" role="398pKh">
        <ref role="398BVh" node="4ZZ2R77b8sf" resolve="mps_home" />
      </node>
    </node>
    <node concept="55IIr" id="4ZZ2R77b8si" role="auvoZ">
      <node concept="2Ry0Ak" id="4ZZ2R77b8sj" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="4ZZ2R77b8sk" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="4ZZ2R77b8sl" role="1l3spN">
      <node concept="L2wRC" id="4ZZ2R77b8sm" role="39821P">
        <ref role="L2wRA" node="4ZZ2R77b8rE" resolve="jetbrains.mps.tests.migration" />
      </node>
    </node>
    <node concept="10PD9b" id="4ZZ2R77b8sn" role="10PD9s" />
    <node concept="3b7kt6" id="4ZZ2R77b8so" role="10PD9s" />
    <node concept="1gjT0q" id="4ZZ2R77b8sp" role="10PD9s" />
  </node>
</model>

