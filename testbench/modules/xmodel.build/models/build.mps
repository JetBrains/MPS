<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c038eee7-4c1b-499b-b130-c7394a2f3517(jetbrains.mps.generator.xmodel.build.test.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
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
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
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
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
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
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
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
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375794190" name="jetbrains.mps.build.mps.structure.BuildMps_DevKit" flags="ng" index="3LEwk6">
        <child id="322010710375832962" name="exports" index="3LEDUa" />
      </concept>
      <concept id="322010710375832938" name="jetbrains.mps.build.mps.structure.BuildMps_DevKitExportLanguage" flags="ng" index="3LEDTy">
        <reference id="322010710375832947" name="language" index="3LEDTV" />
      </concept>
      <concept id="322010710375832954" name="jetbrains.mps.build.mps.structure.BuildMps_DevKitExportSolution" flags="ng" index="3LEDTM">
        <reference id="322010710375832955" name="solution" index="3LEDTN" />
      </concept>
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
  <node concept="1l3spW" id="3Af5TgnBvoA">
    <property role="2DA0ip" value="../../../" />
    <property role="TrG5h" value="p1" />
    <property role="turDy" value="p1.xml" />
    <node concept="10PD9b" id="3Af5TgnEeC1" role="10PD9s" />
    <node concept="2sgV4H" id="3Af5TgnBvtw" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="3Af5TgnBvu2" role="2JcizS">
        <ref role="398BVh" node="4X5j05vNi7p" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="4X5j05vNi7p" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="1E1JtA" id="3Af5TgnBvrs" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.generator.xmodel.test" />
      <property role="3LESm3" value="519e5d27-6128-4ba6-8758-43a055b1222d" />
      <node concept="55IIr" id="3Af5TgnBvr$" role="3LF7KH">
        <node concept="2Ry0Ak" id="3Af5TgnBvrJ" role="iGT6I">
          <property role="2Ry0Am" value="languages" />
          <node concept="2Ry0Ak" id="7ux1RCzo3dy" role="2Ry0An">
            <property role="2Ry0Am" value="languageDesign" />
            <node concept="2Ry0Ak" id="7ux1RCzo3dD" role="2Ry0An">
              <property role="2Ry0Am" value="generator" />
              <node concept="2Ry0Ak" id="7ux1RCzo3dK" role="2Ry0An">
                <property role="2Ry0Am" value="project.xmodel.test1" />
                <node concept="2Ry0Ak" id="7ux1RCzo3dI" role="2Ry0An">
                  <property role="2Ry0Am" value="xmodel.test" />
                  <node concept="2Ry0Ak" id="7ux1RCzo3dJ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.generator.xmodel.test.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3rtmxn" id="EpEP7iij4M" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iij4N" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iij4O" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iij4P" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iij4Q" role="iGT6I">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="EpEP7iij4R" role="2Ry0An">
                <property role="2Ry0Am" value="languageDesign" />
                <node concept="2Ry0Ak" id="EpEP7iij4S" role="2Ry0An">
                  <property role="2Ry0Am" value="generator" />
                  <node concept="2Ry0Ak" id="EpEP7iij4T" role="2Ry0An">
                    <property role="2Ry0Am" value="project.xmodel.test1" />
                    <node concept="2Ry0Ak" id="EpEP7iij4U" role="2Ry0An">
                      <property role="2Ry0Am" value="xmodel.test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3LEwk6" id="3Af5TgnBvrX" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.generator.xmodel-sample" />
      <property role="3LESm3" value="b04c0af8-5334-4ab7-8f34-739bfd22ae88" />
      <node concept="55IIr" id="3Af5TgnBvrZ" role="3LF7KH">
        <node concept="2Ry0Ak" id="3Af5TgnBvsd" role="iGT6I">
          <property role="2Ry0Am" value="languages" />
          <node concept="2Ry0Ak" id="7ux1RCzo3f9" role="2Ry0An">
            <property role="2Ry0Am" value="languageDesign" />
            <node concept="2Ry0Ak" id="7ux1RCzo3fG" role="2Ry0An">
              <property role="2Ry0Am" value="generator" />
              <node concept="2Ry0Ak" id="7ux1RCzo3g8" role="2Ry0An">
                <property role="2Ry0Am" value="project.xmodel.test1" />
                <node concept="2Ry0Ak" id="7ux1RCzo3g6" role="2Ry0An">
                  <property role="2Ry0Am" value="xmodel.dk" />
                  <node concept="2Ry0Ak" id="7ux1RCzo3g7" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.generator.xmodel-sample.devkit" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LEDTy" id="3Af5TgnBvsY" role="3LEDUa">
        <ref role="3LEDTV" node="3Af5TgnBvsw" resolve="jetbrains.mps.generator.test.xmodel.lang1" />
      </node>
      <node concept="3LEDTM" id="3Af5TgnBvsZ" role="3LEDUa">
        <ref role="3LEDTN" node="3Af5TgnBvrs" resolve="jetbrains.mps.generator.xmodel.test" />
      </node>
    </node>
    <node concept="1E1JtD" id="3Af5TgnBvsw" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.generator.test.xmodel.lang1" />
      <property role="3LESm3" value="b2d9d19b-9a47-47a4-93f4-0c9390001bf2" />
      <node concept="55IIr" id="3Af5TgnBvsy" role="3LF7KH">
        <node concept="2Ry0Ak" id="3Af5TgnBvsP" role="iGT6I">
          <property role="2Ry0Am" value="languages" />
          <node concept="2Ry0Ak" id="7ux1RCzo3gY" role="2Ry0An">
            <property role="2Ry0Am" value="languageDesign" />
            <node concept="2Ry0Ak" id="7ux1RCzo3hx" role="2Ry0An">
              <property role="2Ry0Am" value="generator" />
              <node concept="2Ry0Ak" id="7ux1RCzo3hQ" role="2Ry0An">
                <property role="2Ry0Am" value="project.xmodel.test1" />
                <node concept="2Ry0Ak" id="7ux1RCzo3hO" role="2Ry0An">
                  <property role="2Ry0Am" value="xmodel.lang1" />
                  <node concept="2Ry0Ak" id="7ux1RCzo3hP" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.generator.test.xmodel.lang1.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1yeLz9" id="3Af5TgnBvsW" role="1TViLv">
        <property role="TrG5h" value="jetbrains.mps.generator.test.xmodel.lang1#7618674748894117488" />
        <property role="3LESm3" value="b91edd51-b22d-4568-9ef0-89fad4f753d2" />
        <node concept="1SiIV0" id="3Af5TgnBvu5" role="3bR37C">
          <node concept="3bR9La" id="3Af5TgnBvu6" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="3rtmxn" id="EpEP7iij56" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iij57" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iij58" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iij59" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iij5a" role="iGT6I">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="EpEP7iij5b" role="2Ry0An">
                <property role="2Ry0Am" value="languageDesign" />
                <node concept="2Ry0Ak" id="EpEP7iij5c" role="2Ry0An">
                  <property role="2Ry0Am" value="generator" />
                  <node concept="2Ry0Ak" id="EpEP7iij5d" role="2Ry0An">
                    <property role="2Ry0Am" value="project.xmodel.test1" />
                    <node concept="2Ry0Ak" id="EpEP7iij5e" role="2Ry0An">
                      <property role="2Ry0Am" value="xmodel.lang1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="3Af5TgnBvoB" role="auvoZ">
      <node concept="2Ry0Ak" id="7ux1RCzo3ah" role="iGT6I">
        <property role="2Ry0Am" value="testbench" />
        <node concept="2Ry0Ak" id="7ux1RCzo3ak" role="2Ry0An">
          <property role="2Ry0Am" value="modules" />
          <node concept="2Ry0Ak" id="7ux1RCzo3ap" role="2Ry0An">
            <property role="2Ry0Am" value="xmodel.build" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="3Af5TgnBvoC" role="1l3spN">
      <node concept="L2wRC" id="3Af5TgnBvvF" role="39821P">
        <ref role="L2wRA" node="3Af5TgnBvsw" resolve="jetbrains.mps.generator.test.xmodel.lang1" />
      </node>
      <node concept="L2wRC" id="3Af5TgnBvwf" role="39821P">
        <ref role="L2wRA" node="3Af5TgnBvrs" resolve="jetbrains.mps.generator.xmodel.test" />
      </node>
      <node concept="398223" id="3Af5TgnB$DQ" role="39821P">
        <node concept="3_J27D" id="3Af5TgnB$DS" role="Nbhlr">
          <node concept="3Mxwew" id="3Af5TgnB$E8" role="3MwsjC">
            <property role="3MwjfP" value="devkits" />
          </node>
        </node>
        <node concept="L2wRC" id="4qrVxlJ3X8A" role="39821P">
          <ref role="L2wRA" node="3Af5TgnBvrX" resolve="jetbrains.mps.generator.xmodel-sample" />
        </node>
      </node>
    </node>
    <node concept="3b7kt6" id="3Af5TgnBvoI" role="10PD9s" />
  </node>
  <node concept="1l3spW" id="3Af5TgnBvoD">
    <property role="2DA0ip" value="../../.." />
    <property role="TrG5h" value="p2" />
    <property role="turDy" value="p2.xml" />
    <node concept="2sgV4H" id="3Af5TgnExnX" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="3Af5TgnExnY" role="2JcizS">
        <ref role="398BVh" node="3Af5TgnEtmO" resolve="mps_home" />
      </node>
    </node>
    <node concept="1E1JtA" id="3Af5TgnEtn3" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="jetbrains.mps.generator.xmodel.test2" />
      <property role="3LESm3" value="d8256d18-f5f5-4d78-8999-0bf716e43a91" />
      <node concept="55IIr" id="3Af5TgnEtn5" role="3LF7KH">
        <node concept="2Ry0Ak" id="3Af5TgnEtnb" role="iGT6I">
          <property role="2Ry0Am" value="languages" />
          <node concept="2Ry0Ak" id="7ux1RCzo4v4" role="2Ry0An">
            <property role="2Ry0Am" value="languageDesign" />
            <node concept="2Ry0Ak" id="7ux1RCzo4vb" role="2Ry0An">
              <property role="2Ry0Am" value="generator" />
              <node concept="2Ry0Ak" id="7ux1RCzo4vi" role="2Ry0An">
                <property role="2Ry0Am" value="project.xmodel.test1" />
                <node concept="2Ry0Ak" id="7ux1RCzo4vg" role="2Ry0An">
                  <property role="2Ry0Am" value="xmodel.test2" />
                  <node concept="2Ry0Ak" id="7ux1RCzo4vh" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.generator.xmodel.test2.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3Af5TgnEtni" role="3bR37C">
        <node concept="3bR9La" id="3Af5TgnEtnj" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" node="3Af5TgnBvrs" resolve="jetbrains.mps.generator.xmodel.test" />
        </node>
      </node>
      <node concept="1SiIV0" id="5kOge16Ar2c" role="3bR37C">
        <node concept="3bR9La" id="5kOge16Ar2d" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="3rtmxn" id="EpEP7iij4W" role="3bR31x">
        <node concept="3LXTmp" id="EpEP7iij4X" role="3rtmxm">
          <node concept="3qWCbU" id="EpEP7iij4Y" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="55IIr" id="EpEP7iij4Z" role="3LXTmr">
            <node concept="2Ry0Ak" id="EpEP7iij50" role="iGT6I">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="EpEP7iij51" role="2Ry0An">
                <property role="2Ry0Am" value="languageDesign" />
                <node concept="2Ry0Ak" id="EpEP7iij52" role="2Ry0An">
                  <property role="2Ry0Am" value="generator" />
                  <node concept="2Ry0Ak" id="EpEP7iij53" role="2Ry0An">
                    <property role="2Ry0Am" value="project.xmodel.test1" />
                    <node concept="2Ry0Ak" id="EpEP7iij54" role="2Ry0An">
                      <property role="2Ry0Am" value="xmodel.test2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="3Af5TgnEtmX" role="10PD9s" />
    <node concept="398rNT" id="3Af5TgnEtmO" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="3Af5TgnBvoM" role="1l3spa">
      <ref role="1l3spb" node="3Af5TgnBvoA" resolve="p1" />
    </node>
    <node concept="55IIr" id="3Af5TgnBvoE" role="auvoZ">
      <node concept="2Ry0Ak" id="5kOge16_Z7a" role="iGT6I">
        <property role="2Ry0Am" value="testbench" />
        <node concept="2Ry0Ak" id="7ux1RCzo4uM" role="2Ry0An">
          <property role="2Ry0Am" value="modules" />
          <node concept="2Ry0Ak" id="7ux1RCzo4uL" role="2Ry0An">
            <property role="2Ry0Am" value="xmodel.build" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="3Af5TgnBvoF" role="1l3spN">
      <node concept="L2wRC" id="3Af5TgnEtns" role="39821P">
        <ref role="L2wRA" node="3Af5TgnEtn3" resolve="jetbrains.mps.generator.xmodel.test2" />
      </node>
    </node>
    <node concept="3b7kt6" id="3Af5TgnBvoG" role="10PD9s" />
  </node>
</model>

