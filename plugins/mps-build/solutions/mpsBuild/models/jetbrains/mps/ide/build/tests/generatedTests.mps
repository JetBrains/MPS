<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:12897c41-1d23-444a-8c3d-8a254e74f9b6(jetbrains.mps.ide.build.tests.generatedTests)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="-1" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="-1" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469355" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModuleGroup" flags="ng" index="22LTRF">
        <reference id="4560297596904469356" name="group" index="22LTRG" />
      </concept>
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options" flags="ng" index="24cAiW" />
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
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
        <child id="927724900262033863" name="resourceSelectors" index="2_Ic$A" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
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
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
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
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="7CPkROrbWbi">
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsTestModules.xml" />
    <property role="TrG5h" value="mpsTestModules" />
    <property role="3GE5qa" value="generated" />
    <node concept="2_Ic$z" id="7CPkROrbWbj" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="7CPkROrbWbk" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="7CPkROrbWbl" role="3989C9">
      <property role="TrG5h" value="mpsTestModules-test-languages" />
      <node concept="1E1JtD" id="7CPkROrbW9F" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.persistence.transients" />
        <property role="3LESm3" value="8a1d24e1-cf4e-440a-9855-08a714a1c1f3" />
        <node concept="55IIr" id="7CPkROrbW9G" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbW9H" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbW9I" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7CPkROrbW9J" role="2Ry0An">
                <property role="2Ry0Am" value="smodel.transient" />
                <node concept="2Ry0Ak" id="7CPkROrbW9K" role="2Ry0An">
                  <property role="2Ry0Am" value="transients.lang" />
                  <node concept="2Ry0Ak" id="7CPkROrbW9L" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.persistence.transients.mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbW9M" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbW9N" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbW9O" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbW9P" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbW9Q" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbW9R" role="2Ry0An">
                    <property role="2Ry0Am" value="smodel.transient" />
                    <node concept="2Ry0Ak" id="7CPkROrbW9S" role="2Ry0An">
                      <property role="2Ry0Am" value="transients.lang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbW9T" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWbO" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWbP" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWbI" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWbJ" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWbK" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWbL" role="2Ry0An">
                    <property role="2Ry0Am" value="smodel.transient" />
                    <node concept="2Ry0Ak" id="7CPkROrbWbM" role="2Ry0An">
                      <property role="2Ry0Am" value="transients.lang" />
                      <node concept="2Ry0Ak" id="7CPkROrbWbN" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWbQ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7CPkROrbWbm" role="3989C9">
      <property role="TrG5h" value="mpsTestModules-tests" />
      <node concept="1E1JtA" id="7CPkROrbW9U" role="2G$12L">
        <property role="TrG5h" value="tests.testPersistence" />
        <property role="3LESm3" value="f2f32c65-17db-4e68-ad2f-8b0e2554dbd6" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbW9V" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbW9W" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbW9X" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7CPkROrbW9Y" role="2Ry0An">
                <property role="2Ry0Am" value="testPersistence" />
                <node concept="2Ry0Ak" id="7CPkROrbW9Z" role="2Ry0An">
                  <property role="2Ry0Am" value="tests.testPersistence.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWa0" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWa1" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWa2" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWa3" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWa4" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="7CPkROrbWa5" role="2Ry0An">
                    <property role="2Ry0Am" value="testPersistence" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWa6" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWbR" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWbS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWbT" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWbU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWbV" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWbW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWbX" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWbY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWbZ" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWc0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWc1" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWc2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWc8" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWc9" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWc3" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWc4" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWc5" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="7CPkROrbWc6" role="2Ry0An">
                    <property role="2Ry0Am" value="testPersistence" />
                    <node concept="2Ry0Ak" id="7CPkROrbWc7" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWca" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5yInWDRG0FT" role="3bR37C">
          <node concept="3bR9La" id="5yInWDRG0FU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7CPkROrbWa7" role="2G$12L">
        <property role="TrG5h" value="CloneModule.test" />
        <property role="3LESm3" value="99305b9b-aa2f-490a-a517-130cdd46b087" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbWa8" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbWa9" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbWaa" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7CPkROrbWab" role="2Ry0An">
                <property role="2Ry0Am" value="clone.module.test" />
                <node concept="2Ry0Ak" id="7CPkROrbWac" role="2Ry0An">
                  <property role="2Ry0Am" value="clone.module.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWad" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWae" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWaf" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWag" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWah" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWai" role="2Ry0An">
                    <property role="2Ry0Am" value="clone.module.test" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWaj" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcb" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcd" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWce" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcf" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWch" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWci" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:rD7wKO6k$" resolve="MPS.Generator" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcj" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWck" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcl" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcn" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWco" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWcu" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWcv" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWcp" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWcq" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWcr" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWcs" role="2Ry0An">
                    <property role="2Ry0Am" value="clone.module.test" />
                    <node concept="2Ry0Ak" id="7CPkROrbWct" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWcw" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5yInWDRG0G0" role="3bR37C">
          <node concept="3bR9La" id="5yInWDRG0G1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7CPkROrbWak" role="2G$12L">
        <property role="TrG5h" value="JavaCompilationXmlConflict.test" />
        <property role="3LESm3" value="b0a89157-db40-4955-b2ac-edf8fcc90dde" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbWal" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbWam" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbWan" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7CPkROrbWao" role="2Ry0An">
                <property role="2Ry0Am" value="JavaCompilationXmlConflict.test" />
                <node concept="2Ry0Ak" id="7CPkROrbWap" role="2Ry0An">
                  <property role="2Ry0Am" value="JavaCompilationXmlConflict.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWaq" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWar" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWas" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWat" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWau" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWav" role="2Ry0An">
                    <property role="2Ry0Am" value="JavaCompilationXmlConflict.test" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWaw" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcx" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcz" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWc$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWc_" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcB" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcD" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcF" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWcM" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWcN" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWcH" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWcI" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWcJ" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWcK" role="2Ry0An">
                    <property role="2Ry0Am" value="JavaCompilationXmlConflict.test" />
                    <node concept="2Ry0Ak" id="7CPkROrbWcL" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWcO" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7CPkROrbWax" role="2G$12L">
        <property role="TrG5h" value="mps.test.findusages" />
        <property role="3LESm3" value="9ebe73c6-437b-4a56-95a7-1d7eec081f24" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbWay" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbWaz" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbWa$" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7CPkROrbWa_" role="2Ry0An">
                <property role="2Ry0Am" value="testFindUsages" />
                <node concept="2Ry0Ak" id="7CPkROrbWaA" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.test.findusages.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWaB" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWaC" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWaD" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWaE" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWaF" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="7CPkROrbWaG" role="2Ry0An">
                    <property role="2Ry0Am" value="testFindUsages" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWaH" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcP" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcR" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfd" resolve="jetbrains.mps.findUsages.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcT" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcV" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWcX" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWcY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWd4" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWd5" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWcZ" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWd0" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWd1" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="7CPkROrbWd2" role="2Ry0An">
                    <property role="2Ry0Am" value="testFindUsages" />
                    <node concept="2Ry0Ak" id="7CPkROrbWd3" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWd6" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7CPkROrbWaI" role="2G$12L">
        <property role="TrG5h" value="jetbrains.mps.persistence.transients.tests" />
        <property role="3LESm3" value="744e8fdc-be86-476c-90fa-c51c36b899e5" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbWaJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbWaK" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbWaL" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7CPkROrbWaM" role="2Ry0An">
                <property role="2Ry0Am" value="smodel.transient" />
                <node concept="2Ry0Ak" id="7CPkROrbWaN" role="2Ry0An">
                  <property role="2Ry0Am" value="transients.test" />
                  <node concept="2Ry0Ak" id="7CPkROrbWaO" role="2Ry0An">
                    <property role="2Ry0Am" value="jetbrains.mps.persistence.transients.tests.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWaP" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWaQ" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWaR" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWaS" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWaT" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWaU" role="2Ry0An">
                    <property role="2Ry0Am" value="smodel.transient" />
                    <node concept="2Ry0Ak" id="7CPkROrbWaV" role="2Ry0An">
                      <property role="2Ry0Am" value="transients.test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWaW" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWd7" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWd8" role="1SiIV1">
            <ref role="3bR37D" node="7CPkROrbW9F" resolve="jetbrains.mps.persistence.transients" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWd9" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWda" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWdb" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:HHlBn9$wJ2" resolve="org.jdom" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWdj" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWdk" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWdd" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWde" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWdf" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWdg" role="2Ry0An">
                    <property role="2Ry0Am" value="smodel.transient" />
                    <node concept="2Ry0Ak" id="7CPkROrbWdh" role="2Ry0An">
                      <property role="2Ry0Am" value="transients.test" />
                      <node concept="2Ry0Ak" id="7CPkROrbWdi" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWdl" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7CPkROrbWaX" role="2G$12L">
        <property role="TrG5h" value="testModelRenaming" />
        <property role="3LESm3" value="7cb9725f-b441-49fd-97a7-f8cc78dc90bd" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbWaY" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbWaZ" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbWb0" role="2Ry0An">
              <property role="2Ry0Am" value="modules" />
              <node concept="2Ry0Ak" id="7CPkROrbWb1" role="2Ry0An">
                <property role="2Ry0Am" value="testModelRenaming" />
                <node concept="2Ry0Ak" id="7CPkROrbWb2" role="2Ry0An">
                  <property role="2Ry0Am" value="testModelRenaming.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWb3" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWb4" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWb5" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWb6" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWb7" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="7CPkROrbWb8" role="2Ry0An">
                    <property role="2Ry0Am" value="testModelRenaming" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWb9" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWdm" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWdo" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWdq" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWds" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWdu" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWdw" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWdx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWdB" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWdC" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWdy" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWdz" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWd$" role="2Ry0An">
                  <property role="2Ry0Am" value="modules" />
                  <node concept="2Ry0Ak" id="7CPkROrbWd_" role="2Ry0An">
                    <property role="2Ry0Am" value="testModelRenaming" />
                    <node concept="2Ry0Ak" id="7CPkROrbWdA" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWdD" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="7CPkROrbWbn" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="7CPkROrbWbo" role="13uUGP">
        <ref role="398BVh" node="7CPkROrbWbs" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7CPkROrbWbp" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7CPkROrbWbq" role="2JcizS">
        <ref role="398BVh" node="7CPkROrbWbr" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="7CPkROrbWbr" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="7CPkROrbWbs" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7CPkROrbWbt" role="398pKh">
        <ref role="398BVh" node="7CPkROrbWbr" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="7CPkROrbWbu" role="10PD9s" />
    <node concept="3b7kt6" id="7CPkROrbWbv" role="10PD9s" />
    <node concept="1gjT0q" id="7CPkROrbWbw" role="10PD9s" />
    <node concept="1l3spV" id="7CPkROrbWbx" role="1l3spN">
      <node concept="398223" id="7CPkROrbWby" role="39821P">
        <node concept="3_J27D" id="7CPkROrbWbz" role="Nbhlr">
          <node concept="3Mxwew" id="7CPkROrbWb$" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
        <node concept="L2wRC" id="7CPkROrbWba" role="39821P">
          <ref role="L2wRA" node="7CPkROrbW9F" resolve="jetbrains.mps.persistence.transients" />
        </node>
      </node>
      <node concept="398223" id="7CPkROrbWb_" role="39821P">
        <node concept="3_J27D" id="7CPkROrbWbA" role="Nbhlr">
          <node concept="3Mxwew" id="7CPkROrbWbB" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
        <node concept="L2wRC" id="7CPkROrbWbb" role="39821P">
          <ref role="L2wRA" node="7CPkROrbW9U" resolve="tests.testPersistence" />
        </node>
        <node concept="L2wRC" id="7CPkROrbWbc" role="39821P">
          <ref role="L2wRA" node="7CPkROrbWa7" resolve="CloneModule.test" />
        </node>
        <node concept="L2wRC" id="7CPkROrbWbd" role="39821P">
          <ref role="L2wRA" node="7CPkROrbWak" resolve="JavaCompilationXmlConflict.test" />
        </node>
        <node concept="L2wRC" id="7CPkROrbWbe" role="39821P">
          <ref role="L2wRA" node="7CPkROrbWax" resolve="mps.test.findusages" />
        </node>
        <node concept="L2wRC" id="7CPkROrbWbf" role="39821P">
          <ref role="L2wRA" node="7CPkROrbWaI" resolve="jetbrains.mps.persistence.transients.tests" />
        </node>
        <node concept="L2wRC" id="7CPkROrbWbg" role="39821P">
          <ref role="L2wRA" node="7CPkROrbWaX" resolve="testModelRenaming" />
        </node>
      </node>
    </node>
    <node concept="2igEWh" id="7CPkROrbWbC" role="1hWBAP">
      <property role="2igJW4" value="true" />
    </node>
    <node concept="22LTRH" id="7CPkROrbWbD" role="1hWBAP">
      <property role="TrG5h" value="mpsTestModules" />
      <node concept="22LTRF" id="7CPkROrbWbh" role="22LTRK">
        <ref role="22LTRG" node="7CPkROrbWbm" resolve="mpsTestModules-tests" />
      </node>
      <node concept="24cAiW" id="7CPkROrbWbE" role="24cAkG" />
    </node>
    <node concept="55IIr" id="7CPkROrbWbF" role="auvoZ">
      <node concept="2Ry0Ak" id="7CPkROrbWbG" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="7CPkROrbWbH" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="7CPkROrbWlM">
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsTestRefactoring.xml" />
    <property role="TrG5h" value="mpsTestRefactoring" />
    <property role="3GE5qa" value="generated" />
    <node concept="2_Ic$z" id="7CPkROrbWlN" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="21" />
      <node concept="3qWCbU" id="7CPkROrbWlO" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="7CPkROrbWlP" role="3989C9">
      <property role="TrG5h" value="mpsTestRefactoring-test-languages" />
    </node>
    <node concept="2G$12M" id="7CPkROrbWlQ" role="3989C9">
      <property role="TrG5h" value="mpsTestRefactoring-tests" />
      <node concept="1E1JtA" id="7CPkROrbWlz" role="2G$12L">
        <property role="TrG5h" value="refactoring.test" />
        <property role="3LESm3" value="64b24ebe-97a2-466e-83d8-bd3afefcbb41" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="55IIr" id="7CPkROrbWl$" role="3LF7KH">
          <node concept="2Ry0Ak" id="7CPkROrbWl_" role="iGT6I">
            <property role="2Ry0Am" value="testbench" />
            <node concept="2Ry0Ak" id="7CPkROrbWlA" role="2Ry0An">
              <property role="2Ry0Am" value="testsolutions" />
              <node concept="2Ry0Ak" id="7CPkROrbWlB" role="2Ry0An">
                <property role="2Ry0Am" value="refactoring.test" />
                <node concept="2Ry0Ak" id="7CPkROrbWlC" role="2Ry0An">
                  <property role="2Ry0Am" value="refactoring.test.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7CPkROrbWlD" role="3bR31x">
          <node concept="3LXTmp" id="7CPkROrbWlE" role="3rtmxm">
            <node concept="55IIr" id="7CPkROrbWlF" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWlG" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWlH" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWlI" role="2Ry0An">
                    <property role="2Ry0Am" value="refactoring.test" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWlJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWme" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmg" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5bqL32k0kue" resolve="jetbrains.mps.lang.core.pluginSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmi" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfd" resolve="jetbrains.mps.findUsages.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmk" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWml" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmm" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5lGJ4Tajp1p" resolve="jetbrains.mps.migration.component" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmo" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmq" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:l1L199LeP5" resolve="jetbrains.mps.ide.refactoring" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWms" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmu" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmw" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7MSVDs3$Uns" resolve="jetbrains.mps.baseLanguage.unitTest.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmy" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4p" resolve="jetbrains.mps.lang.behavior" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWm$" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWm_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1xb0AuwN7WS" resolve="JUnit" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmA" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmB" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:nbn5Dym2sp" resolve="Testbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmC" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1qokWp1VAAr" resolve="jetbrains.mps.refactoring" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmE" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmG" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:71aLKqdKvPp" resolve="jetbrains.mps.ide.make" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmI" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmK" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4Hc8TwAmyoE" resolve="jetbrains.mps.tool.builder" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmM" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6zEiAnm2Tr5" resolve="jetbrains.mps.lang.migration.pluginSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmO" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmQ" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmS" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5bqL32k0kxU" resolve="jetbrains.mps.lang.structure.pluginSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmU" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4x" resolve="jetbrains.mps.lang.constraints" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmW" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ULLXZL0gZG" resolve="org.junit.junit5" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWmY" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWmZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWn0" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWn1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CPkROrbWn2" role="3bR37C">
          <node concept="3bR9La" id="7CPkROrbWn3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4X1d9kMCbcv" resolve="jetbrains.mps.ide.refactoring.platform" />
          </node>
        </node>
        <node concept="1BupzO" id="7CPkROrbWn9" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7CPkROrbWna" role="1HemKq">
            <node concept="55IIr" id="7CPkROrbWn4" role="3LXTmr">
              <node concept="2Ry0Ak" id="7CPkROrbWn5" role="iGT6I">
                <property role="2Ry0Am" value="testbench" />
                <node concept="2Ry0Ak" id="7CPkROrbWn6" role="2Ry0An">
                  <property role="2Ry0Am" value="testsolutions" />
                  <node concept="2Ry0Ak" id="7CPkROrbWn7" role="2Ry0An">
                    <property role="2Ry0Am" value="refactoring.test" />
                    <node concept="2Ry0Ak" id="7CPkROrbWn8" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7CPkROrbWnb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="15HoS4$rlTm" role="3bR37C">
          <node concept="3bR9La" id="15HoS4$rlTn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L2N" resolve="jetbrains.mps.baseLanguage.tuples.runtime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="7CPkROrbWlR" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="7CPkROrbWlS" role="13uUGP">
        <ref role="398BVh" node="7CPkROrbWlW" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7CPkROrbWlT" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7CPkROrbWlU" role="2JcizS">
        <ref role="398BVh" node="7CPkROrbWlV" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="7CPkROrbWlV" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="7CPkROrbWlW" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="7CPkROrbWlX" role="398pKh">
        <ref role="398BVh" node="7CPkROrbWlV" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="7CPkROrbWlY" role="10PD9s" />
    <node concept="3b7kt6" id="7CPkROrbWlZ" role="10PD9s" />
    <node concept="1gjT0q" id="7CPkROrbWm0" role="10PD9s" />
    <node concept="1l3spV" id="7CPkROrbWm1" role="1l3spN">
      <node concept="398223" id="7CPkROrbWm2" role="39821P">
        <node concept="3_J27D" id="7CPkROrbWm3" role="Nbhlr">
          <node concept="3Mxwew" id="7CPkROrbWm4" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
      </node>
      <node concept="398223" id="7CPkROrbWm5" role="39821P">
        <node concept="3_J27D" id="7CPkROrbWm6" role="Nbhlr">
          <node concept="3Mxwew" id="7CPkROrbWm7" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
        <node concept="L2wRC" id="7CPkROrbWlK" role="39821P">
          <ref role="L2wRA" node="7CPkROrbWlz" resolve="refactoring.test" />
        </node>
      </node>
    </node>
    <node concept="2igEWh" id="7CPkROrbWm8" role="1hWBAP">
      <property role="2igJW4" value="true" />
    </node>
    <node concept="22LTRH" id="7CPkROrbWm9" role="1hWBAP">
      <property role="TrG5h" value="mpsTestRefactoring" />
      <node concept="22LTRF" id="7CPkROrbWlL" role="22LTRK">
        <ref role="22LTRG" node="7CPkROrbWlQ" resolve="mpsTestRefactoring-tests" />
      </node>
      <node concept="24cAiW" id="7CPkROrbWma" role="24cAkG" />
    </node>
    <node concept="55IIr" id="7CPkROrbWmb" role="auvoZ">
      <node concept="2Ry0Ak" id="7CPkROrbWmc" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="7CPkROrbWmd" role="2Ry0An">
          <property role="2Ry0Am" value="tests" />
        </node>
      </node>
    </node>
  </node>
</model>

