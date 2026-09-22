<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:02e26212-728e-46cb-bbf3-c544990b3781(jetbrains.mps.build.sandbox.stripImplementation)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="-1" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="6998860900671147996" name="javaLevel" index="TZNOO" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ngI" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <property id="3389822811991596365" name="stripImplementation" index="vjkMI" />
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868064" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ManualPluginLayoutType" flags="ng" index="pUk6w" />
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="2Wb4ucKlQKe">
    <property role="TrG5h" value="buildPlugin" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="2Wb4ucKmaSR" role="10PD9s" />
    <node concept="m$_wf" id="2Wb4ucKlR0y" role="3989C9">
      <property role="m$_wk" value="test" />
      <node concept="m$_yC" id="2Wb4ucKmawm" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="JexYrmfkE2" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
      <node concept="3_J27D" id="2Wb4ucKlR0$" role="m$_yQ">
        <node concept="3Mxwew" id="2Wb4ucKlR1c" role="3MwsjC">
          <property role="3MwjfP" value="test plugin" />
        </node>
      </node>
      <node concept="3_J27D" id="2Wb4ucKlR0A" role="m_cZH">
        <node concept="3Mxwew" id="2Wb4ucKlR1e" role="3MwsjC">
          <property role="3MwjfP" value="test1" />
        </node>
      </node>
      <node concept="3_J27D" id="2Wb4ucKlR0C" role="m$_w8">
        <node concept="3Mxwew" id="2Wb4ucKlR1g" role="3MwsjC">
          <property role="3MwjfP" value="1.1" />
        </node>
      </node>
      <node concept="m$_yB" id="2Wb4ucKmnI1" role="m$_yh">
        <ref role="m$_yA" node="2Wb4ucKlQX3" resolve="jetbrains.mps.build.sandbox" />
      </node>
      <node concept="m$_yB" id="2Wb4ucKmnHM" role="m$_yh">
        <ref role="m$_yA" node="2Wb4ucKmnFy" resolve="jetbrains.mps.build.tests" />
      </node>
      <node concept="m$_yC" id="4O8Iq91ELvL" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:ymnOULATpW" resolve="jetbrains.mps.testing" />
      </node>
    </node>
    <node concept="2sgV4H" id="2Wb4ucKlQZl" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
    </node>
    <node concept="1E1JtA" id="2Wb4ucKlQX3" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.build.sandbox" />
      <property role="3LESm3" value="d029512f-7357-432e-b758-ecdc37cc94f5" />
      <node concept="55IIr" id="2Wb4ucKlQX5" role="3LF7KH">
        <node concept="2Ry0Ak" id="2Wb4ucKlQYi" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="78Xg4jb$car" role="2Ry0An">
            <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
            <node concept="2Ry0Ak" id="78Xg4jb$cas" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKlQZ_" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKlQZA" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKlQZB" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKlQZC" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1d41uYMTRXo" resolve="jetbrains.mps.baseLanguage.scopes" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKlQZD" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKlQZE" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKlQZF" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKlQZG" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKlQZH" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKlQZI" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
        </node>
      </node>
      <node concept="3rtmxn" id="EpEP7iihCG" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iihCH" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iihCI" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iihCJ" role="3LXTmr">
            <node concept="2Ry0Ak" id="78Xg4jb$caB" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="78Xg4jb$caG" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="1heWa4_XuSA" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="1heWa4_XuSB" role="1HemKq">
          <node concept="55IIr" id="1heWa4_XuSz" role="3LXTmr">
            <node concept="2Ry0Ak" id="1heWa4_XuS$" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="78Xg4jb$caJ" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                <node concept="2Ry0Ak" id="78Xg4jb$caK" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="1heWa4_XuSC" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2Wb4ucKmnFy" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.build.tests" />
      <property role="3LESm3" value="39742b07-848c-43a7-be0a-845055dd3333" />
      <node concept="55IIr" id="2Wb4ucKmnF$" role="3LF7KH">
        <node concept="2Ry0Ak" id="78Xg4jbz3xL" role="iGT6I">
          <property role="2Ry0Am" value="test" />
          <node concept="2Ry0Ak" id="78Xg4jbz3Ae" role="2Ry0An">
            <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
            <node concept="2Ry0Ak" id="78Xg4jbz3Af" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.build.tests.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKmnH4" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKmnH5" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
        </node>
      </node>
      <node concept="1SiIV0" id="2Wb4ucKmnH6" role="3bR37C">
        <node concept="3bR9La" id="2Wb4ucKmnH7" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7pdFgzxlDoA" resolve="jetbrains.mps.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3S4PaHvGdIr" role="3bR37C">
        <node concept="3bR9La" id="3S4PaHvGdIs" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7pdFgzxlDoP" resolve="jetbrains.mps.build.mps" />
        </node>
      </node>
      <node concept="1SiIV0" id="6US6r0rz780" role="3bR37C">
        <node concept="3bR9La" id="6US6r0rz781" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="2GV7oweqSQc" role="3bR37C">
        <node concept="3bR9La" id="2GV7oweqSQd" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
        </node>
      </node>
      <node concept="1SiIV0" id="JexYrmfjG6" role="3bR37C">
        <node concept="3bR9La" id="JexYrmfjG7" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
        </node>
      </node>
      <node concept="1SiIV0" id="JexYrmfjG8" role="3bR37C">
        <node concept="3bR9La" id="JexYrmfjG9" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="3rtmxn" id="EpEP7iihCA" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iihCB" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iihCC" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iihCD" role="3LXTmr">
            <node concept="2Ry0Ak" id="78Xg4jbz3Al" role="iGT6I">
              <property role="2Ry0Am" value="test" />
              <node concept="2Ry0Ak" id="78Xg4jbz3Aq" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="1heWa4_XuSD" role="3bR37C">
        <node concept="3bR9La" id="1heWa4_XuSE" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:rD7wKO6k$" resolve="MPS.Generator" />
        </node>
      </node>
      <node concept="1BupzO" id="1heWa4_XuSI" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="1heWa4_XuSJ" role="1HemKq">
          <node concept="55IIr" id="1heWa4_XuSF" role="3LXTmr">
            <node concept="2Ry0Ak" id="78Xg4jbz3At" role="iGT6I">
              <property role="2Ry0Am" value="test" />
              <node concept="2Ry0Ak" id="78Xg4jbz3Ay" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                <node concept="2Ry0Ak" id="78Xg4jbz3Az" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="1heWa4_XuSK" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="2Wb4ucKlQKf" role="auvoZ">
      <node concept="2Ry0Ak" id="3ev_qFmA0CM" role="iGT6I">
        <property role="2Ry0Am" value="solutions" />
        <node concept="2Ry0Ak" id="26lJ8ldkpR6" role="2Ry0An">
          <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
          <node concept="2Ry0Ak" id="26lJ8ldkpR7" role="2Ry0An">
            <property role="2Ry0Am" value="samples" />
            <node concept="2Ry0Ak" id="26lJ8ldkpR8" role="2Ry0An">
              <property role="2Ry0Am" value="stripImpl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="2Wb4ucKlQKg" role="1l3spN">
      <node concept="m$_wl" id="2Wb4ucKmdz8" role="39821P">
        <property role="vjkMI" value="true" />
        <ref role="m_rDy" node="2Wb4ucKlR0y" resolve="test" />
        <node concept="398223" id="2Wb4ucKmnEb" role="39821P">
          <node concept="3_J27D" id="2Wb4ucKmnEd" role="Nbhlr">
            <node concept="3Mxwew" id="2Wb4ucKmnEo" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="2Wb4ucKmkhM" role="39821P">
            <ref role="L2wRA" node="2Wb4ucKlQX3" resolve="jetbrains.mps.build.sandbox" />
          </node>
          <node concept="L2wRC" id="5peYeZGo8Vn" role="39821P">
            <ref role="L2wRA" node="2Wb4ucKmnFy" resolve="jetbrains.mps.build.tests" />
          </node>
        </node>
        <node concept="pUk6w" id="6UtCO5dHXco" role="pUk7w" />
      </node>
    </node>
    <node concept="3b7kt6" id="2Wb4ucKlQKh" role="10PD9s" />
    <node concept="2_Ic$z" id="5e$ORFFkHIj" role="3989C9">
      <property role="TZNOO" value="21" />
    </node>
  </node>
</model>

