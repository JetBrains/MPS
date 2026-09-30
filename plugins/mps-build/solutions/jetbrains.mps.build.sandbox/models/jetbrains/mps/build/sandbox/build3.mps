<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:22d2df5f-8d49-41a5-894e-4bb67ea2dfab(jetbrains.mps.build.sandbox.build3)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="3717132724152913083" name="jetbrains.mps.build.structure.BuildSource_JavaLibraryCP" flags="ng" index="25yagZ">
        <child id="3717132724152913085" name="classpath" index="25yagT" />
      </concept>
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220774" name="parameters" index="28jJR8" />
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="2754769020641646247" name="jetbrains.mps.build.structure.BuildSource_JavaDependencyModule" flags="ng" index="nCB5N">
        <reference id="2754769020641646250" name="module" index="nCB5Y" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
      </concept>
      <concept id="4993211115183250894" name="jetbrains.mps.build.structure.BuildSource_JavaDependencyLibrary" flags="ng" index="2sjeV3">
        <reference id="4993211115183250895" name="library" index="2sjeV2" />
      </concept>
      <concept id="7801138212747054656" name="jetbrains.mps.build.structure.BuildLayout_Filemode" flags="ng" index="yKbIv">
        <property id="7801138212747054661" name="dirmode" index="yKbIq" />
        <property id="7801138212747054660" name="filemode" index="yKbIr" />
      </concept>
      <concept id="6859736767834557908" name="jetbrains.mps.build.structure.BuildSource_JavaDependencyExternalJar" flags="ng" index="2GhqfE">
        <property id="6859736767834590422" name="reexport" index="2GhibC" />
        <child id="5610619299014309674" name="extJar" index="3yrxIG" />
      </concept>
      <concept id="1500819558096177282" name="jetbrains.mps.build.structure.BuildSource_JavaFiles" flags="ng" index="2GAZfH">
        <child id="1500819558096177283" name="resset" index="2GAZfG" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
        <child id="2750015747481074433" name="parameters" index="2HvfZ1" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="6057319140845467763" name="jetbrains.mps.build.structure.BuildSource_JavaLibrary" flags="ng" index="PiPfp">
        <child id="6057319140845478673" name="elements" index="PiKyV" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="2303926226081001727" name="jetbrains.mps.build.structure.BuildInputSingleFolder" flags="ng" index="TIC1d">
        <child id="2303926226081001728" name="path" index="TIC6M" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7181125477683216329" name="jetbrains.mps.build.structure.BuildExternalLayout" flags="ng" index="13uchq" />
      <concept id="7181125477683370806" name="jetbrains.mps.build.structure.BuildLayout_FileStub" flags="ng" index="13uQ2_">
        <child id="7181125477683370900" name="fileName" index="13uQ07" />
      </concept>
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
      <concept id="9201269590678307768" name="jetbrains.mps.build.structure.BuildLayout_ImportTarContent" flags="ng" index="15jnD9">
        <reference id="9201269590678307770" name="target" index="15jnDb" />
        <child id="9201269590678307769" name="selectors" index="15jnD8" />
      </concept>
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848073784" name="jetbrains.mps.build.structure.BuildSource_JavaModule" flags="ng" index="398b33">
        <child id="2754769020641646251" name="dependencies" index="nCB5Z" />
        <child id="7389400916848073826" name="sources" index="398b2p" />
      </concept>
      <concept id="4198392933254416812" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterFixCRLF" flags="ng" index="3co7Ac">
        <property id="4198392933254416822" name="eol" index="3co7Am" />
        <property id="4198392933254551900" name="removeEOF" index="3cpA_W" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8577651205286814211" name="jetbrains.mps.build.structure.BuildLayout_Tar" flags="ng" index="1tmT9g">
        <property id="1979010778009209128" name="compression" index="AB_bT" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ngI" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="5610619299013057363" name="jetbrains.mps.build.structure.BuildLayout_ImportContent" flags="ng" index="3ygNvl">
        <reference id="5610619299013057365" name="target" index="3ygNvj" />
      </concept>
      <concept id="5610619299014446503" name="jetbrains.mps.build.structure.BuildSource_JavaLibraryExternalJar" flags="ng" index="3yqu4x">
        <child id="5610619299014446504" name="extJar" index="3yqu4I" />
      </concept>
      <concept id="5610619299014309452" name="jetbrains.mps.build.structure.BuildSource_JavaExternalJarRef" flags="ng" index="3yrxFa">
        <reference id="5610619299014309453" name="jar" index="3yrxFb" />
      </concept>
      <concept id="8488675646594641900" name="jetbrains.mps.build.structure.BuildLayout_TarFiles" flags="ng" index="3_1rDE">
        <property id="5554377977757465281" name="compression" index="3_qmum" />
        <child id="8488675646594641902" name="selectors" index="3_1rDC" />
        <child id="8488675646594641901" name="archive" index="3_1rDF" />
      </concept>
      <concept id="841011766565753074" name="jetbrains.mps.build.structure.BuildLayout_Import" flags="ng" index="3_I8Xc">
        <reference id="841011766565753076" name="target" index="3_I8Xa" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="6977615362525721939" name="jetbrains.mps.build.structure.BuildLayout_CopyFlattenMapper" flags="ng" index="1AswPB" />
      <concept id="5248329904288051111" name="jetbrains.mps.build.structure.BuildFileExcludeSelector" flags="ng" index="3LWZYq">
        <property id="5248329904288051112" name="pattern" index="3LWZYl" />
      </concept>
      <concept id="5248329904288051100" name="jetbrains.mps.build.structure.BuildFileIncludeSelector" flags="ng" index="3LWZYx">
        <property id="5248329904288051101" name="pattern" index="3LWZYw" />
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
  </registry>
  <node concept="1l3spW" id="4zCbl23db48">
    <property role="2DA0ip" value=".." />
    <property role="TrG5h" value="buildMpsA" />
    <property role="turDy" value="buildMpsA.xml" />
    <node concept="398b33" id="5WMFzVNu3T0" role="3989C9">
      <property role="TrG5h" value="A" />
      <node concept="2GAZfH" id="5WMFzVNuDXQ" role="398b2p">
        <node concept="TIC1d" id="5WMFzVNuDXR" role="2GAZfG">
          <node concept="55IIr" id="5WMFzVNuDXS" role="TIC6M">
            <node concept="2Ry0Ak" id="5WMFzVNuDXT" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="5WMFzVNuDXU" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="5WMFzVNuDXV" role="2Ry0An">
                  <property role="2Ry0Am" value="buildD" />
                  <node concept="2Ry0Ak" id="5WMFzVNuDXW" role="2Ry0An">
                    <property role="2Ry0Am" value="src" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2GhqfE" id="5WMFzVNuuhh" role="nCB5Z">
        <property role="2GhibC" value="true" />
        <node concept="3yrxFa" id="35zoHQHSGSs" role="3yrxIG">
          <ref role="3yrxFb" node="35zoHQHSGcW" />
        </node>
      </node>
    </node>
    <node concept="398b33" id="5WMFzVNu3T2" role="3989C9">
      <property role="TrG5h" value="testImportJarReexport" />
      <node concept="2GAZfH" id="5WMFzVNuDWy" role="398b2p">
        <node concept="TIC1d" id="5WMFzVNuDWz" role="2GAZfG">
          <node concept="55IIr" id="5WMFzVNuDW$" role="TIC6M">
            <node concept="2Ry0Ak" id="5WMFzVNuDW_" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="5WMFzVNuDWA" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="5WMFzVNuDWB" role="2Ry0An">
                  <property role="2Ry0Am" value="buildA" />
                  <node concept="2Ry0Ak" id="5WMFzVNuDWC" role="2Ry0An">
                    <property role="2Ry0Am" value="src" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="nCB5N" id="5WMFzVNuDVo" role="nCB5Z">
        <ref role="nCB5Y" node="5WMFzVNu3T0" resolve="A" />
      </node>
    </node>
    <node concept="55IIr" id="2L4pT56hNoW" role="auvoZ">
      <node concept="2Ry0Ak" id="50RHf4RGFZ8" role="iGT6I">
        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
        <node concept="2Ry0Ak" id="50RHf4RGFZ9" role="2Ry0An">
          <property role="2Ry0Am" value="samples" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="4zCbl23db4b" role="1l3spN">
      <node concept="398223" id="2OnA2re5qhD" role="39821P">
        <node concept="3_J27D" id="2OnA2re5qhE" role="Nbhlr">
          <node concept="3Mxwew" id="2OnA2re5qhF" role="3MwsjC">
            <property role="3MwjfP" value="temp" />
          </node>
        </node>
        <node concept="3_I8Xc" id="2OnA2re5qhG" role="39821P">
          <ref role="3_I8Xa" node="35zoHQHSGcX" />
        </node>
        <node concept="3981dG" id="5zIo$W4rXy4" role="39821P">
          <node concept="3_J27D" id="5zIo$W4rXy5" role="Nbhlr">
            <node concept="3Mxwew" id="5zIo$W4rXy6" role="3MwsjC">
              <property role="3MwjfP" value="zipfilesettest1.zip" />
            </node>
          </node>
          <node concept="398223" id="5zIo$W4rXy9" role="39821P">
            <node concept="3_I8Xc" id="5zIo$W4rXy7" role="39821P">
              <ref role="3_I8Xa" node="5WMFzVNu3Ta" resolve="X" />
            </node>
            <node concept="28jJK3" id="35zoHQHSGcT" role="39821P">
              <node concept="55IIr" id="5zIo$W4rXyg" role="28jJRO">
                <node concept="2Ry0Ak" id="5zIo$W4rXyh" role="iGT6I">
                  <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                  <node concept="2Ry0Ak" id="5zIo$W4rXyi" role="2Ry0An">
                    <property role="2Ry0Am" value="samples" />
                    <node concept="2Ry0Ak" id="5zIo$W4rXyj" role="2Ry0An">
                      <property role="2Ry0Am" value="build.xml" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="35zoHQHSGd7" role="39821P">
              <node concept="55IIr" id="5zIo$W4rXII" role="28jJRO">
                <node concept="2Ry0Ak" id="5zIo$W4rXIK" role="iGT6I">
                  <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                  <node concept="2Ry0Ak" id="5zIo$W4rXIL" role="2Ry0An">
                    <property role="2Ry0Am" value="tests.msd" />
                  </node>
                </node>
              </node>
              <node concept="3co7Ac" id="5zIo$W4rXIM" role="28jJR8">
                <property role="3co7Am" value="3D3G23Q8WAM/crlf" />
                <property role="3cpA_W" value="true" />
              </node>
            </node>
            <node concept="3_J27D" id="5zIo$W4rXya" role="Nbhlr">
              <node concept="3Mxwew" id="5zIo$W4rXyb" role="3MwsjC">
                <property role="3MwjfP" value="AAA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1tmT9g" id="5zIo$W4rXym" role="39821P">
          <node concept="3_J27D" id="5zIo$W4rXyn" role="Nbhlr">
            <node concept="3Mxwew" id="5zIo$W4rXyo" role="3MwsjC">
              <property role="3MwjfP" value="tarfilesettest1.tar" />
            </node>
          </node>
          <node concept="398223" id="1HQQX4XUzS5" role="39821P">
            <node concept="3_J27D" id="1HQQX4XUzS6" role="Nbhlr">
              <node concept="3Mxwew" id="1HQQX4XUzS8" role="3MwsjC">
                <property role="3MwjfP" value="repack" />
              </node>
            </node>
            <node concept="398223" id="1HQQX4XUzS9" role="39821P">
              <node concept="3_J27D" id="1HQQX4XUzSa" role="Nbhlr">
                <node concept="3Mxwew" id="1HQQX4XUzSd" role="3MwsjC">
                  <property role="3MwjfP" value="none" />
                </node>
              </node>
              <node concept="3_I8Xc" id="1HQQX4XUzSe" role="39821P">
                <ref role="3_I8Xa" node="35zoHQHSGcV" />
              </node>
            </node>
            <node concept="398223" id="1HQQX4XUzSf" role="39821P">
              <node concept="3_J27D" id="1HQQX4XUzSg" role="Nbhlr">
                <node concept="3Mxwew" id="1HQQX4XUzSh" role="3MwsjC">
                  <property role="3MwjfP" value="gzip" />
                </node>
              </node>
              <node concept="3_I8Xc" id="1HQQX4XUzSi" role="39821P">
                <ref role="3_I8Xa" node="35zoHQHSGd0" />
              </node>
            </node>
          </node>
          <node concept="398223" id="5zIo$W4rXyp" role="39821P">
            <node concept="3_J27D" id="5zIo$W4rXyq" role="Nbhlr">
              <node concept="3Mxwew" id="5zIo$W4rXyr" role="3MwsjC">
                <property role="3MwjfP" value="QQQ" />
              </node>
            </node>
            <node concept="398223" id="5zIo$W4rXys" role="39821P">
              <node concept="3_J27D" id="5zIo$W4rXyt" role="Nbhlr">
                <node concept="3Mxwew" id="5zIo$W4rXyu" role="3MwsjC">
                  <property role="3MwjfP" value="PPP" />
                </node>
              </node>
              <node concept="3ygNvl" id="5zIo$W4rXyw" role="39821P">
                <ref role="3ygNvj" node="5WMFzVNu3Ta" resolve="X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1tmT9g" id="5zIo$W4rXyx" role="39821P">
          <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
          <node concept="3_J27D" id="5zIo$W4rXyy" role="Nbhlr">
            <node concept="3Mxwew" id="5zIo$W4rXyz" role="3MwsjC">
              <property role="3MwjfP" value="tarfilesettest2.tar.gz" />
            </node>
          </node>
          <node concept="398223" id="$8kyfUD02Z" role="39821P">
            <node concept="3_J27D" id="$8kyfUD030" role="Nbhlr">
              <node concept="3Mxwew" id="$8kyfUD031" role="3MwsjC">
                <property role="3MwjfP" value="prefix1" />
              </node>
            </node>
            <node concept="yKbIv" id="$8kyfUD0v8" role="39821P">
              <property role="yKbIr" value="600" />
              <node concept="28jJK3" id="35zoHQHSGda" role="39821P">
                <node concept="55IIr" id="$8kyfUD0Hy" role="28jJRO">
                  <node concept="2Ry0Ak" id="$8kyfUD0Hz" role="iGT6I">
                    <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                    <node concept="2Ry0Ak" id="$8kyfUD0H$" role="2Ry0An">
                      <property role="2Ry0Am" value="tests.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="$8kyfUD032" role="39821P">
              <node concept="3_J27D" id="$8kyfUD033" role="Nbhlr">
                <node concept="3Mxwew" id="$8kyfUD034" role="3MwsjC">
                  <property role="3MwjfP" value="prefix2" />
                </node>
              </node>
              <node concept="yKbIv" id="$8kyfUD035" role="39821P">
                <property role="yKbIr" value="640" />
                <property role="yKbIq" value="750" />
                <node concept="3ygNvl" id="5zIo$W4rXyE" role="39821P">
                  <ref role="3ygNvj" node="5WMFzVNu3Ta" resolve="X" />
                </node>
                <node concept="yKbIv" id="$8kyfUD0gR" role="39821P">
                  <property role="yKbIr" value="600" />
                  <node concept="2HvfSZ" id="35zoHQHSGdc" role="39821P">
                    <node concept="55IIr" id="$8kyfUD0h4" role="2HvfZ0">
                      <node concept="2Ry0Ak" id="$8kyfUD0h5" role="iGT6I">
                        <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                      </node>
                    </node>
                    <node concept="3LWZYx" id="$8kyfUD0h7" role="2HvfZ1">
                      <property role="3LWZYw" value="*.msd" />
                    </node>
                    <node concept="1AswPB" id="$8kyfUD0h2" role="2HvfZ1" />
                  </node>
                </node>
                <node concept="398223" id="$8kyfUD037" role="39821P">
                  <node concept="3_J27D" id="$8kyfUD038" role="Nbhlr">
                    <node concept="3Mxwew" id="$8kyfUD039" role="3MwsjC">
                      <property role="3MwjfP" value="prefix3" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="35zoHQHSGcY" role="39821P">
                    <node concept="55IIr" id="$8kyfUD03c" role="28jJRO">
                      <node concept="2Ry0Ak" id="$8kyfUD03d" role="iGT6I">
                        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                        <node concept="2Ry0Ak" id="$8kyfUD03e" role="2Ry0An">
                          <property role="2Ry0Am" value="sandbox.msd" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="28jJK3" id="35zoHQHSGd6" role="39821P">
                    <node concept="55IIr" id="$8kyfUD03i" role="28jJRO">
                      <node concept="2Ry0Ak" id="$8kyfUD03j" role="iGT6I">
                        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                        <node concept="2Ry0Ak" id="$8kyfUD03k" role="2Ry0An">
                          <property role="2Ry0Am" value="models" />
                          <node concept="2Ry0Ak" id="$8kyfUD03l" role="2Ry0An">
                            <property role="2Ry0Am" value="build1.mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3co7Ac" id="$8kyfUD03m" role="28jJR8">
                      <property role="3co7Am" value="3D3G23Q8WAM/crlf" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="2L4pT56gZV$" role="10PD9s" />
    <node concept="2sgV4H" id="5WMFzVNu3T8" role="1l3spa">
      <ref role="1l3spb" node="5WMFzVNu3T3" resolve="buildMpsB" />
    </node>
  </node>
  <node concept="1l3spW" id="5WMFzVNu3T3">
    <property role="2DA0ip" value=".." />
    <property role="TrG5h" value="buildMpsB" />
    <property role="turDy" value="buildMpsB.xml" />
    <node concept="55IIr" id="5WMFzVNu3T4" role="auvoZ">
      <node concept="2Ry0Ak" id="5WMFzVNu3T6" role="iGT6I">
        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
        <node concept="2Ry0Ak" id="5WMFzVNu3T7" role="2Ry0An">
          <property role="2Ry0Am" value="samples" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="5WMFzVNu3T5" role="1l3spN">
      <node concept="398223" id="5WMFzVNu3Ta" role="39821P">
        <node concept="3_J27D" id="5WMFzVNu3Tb" role="Nbhlr">
          <node concept="3Mxwew" id="5WMFzVNu3Tc" role="3MwsjC">
            <property role="3MwjfP" value="X" />
          </node>
        </node>
        <node concept="3981dG" id="5WMFzVNuDVk" role="39821P">
          <node concept="28jJK3" id="35zoHQHSGcW" role="39821P">
            <node concept="55IIr" id="5WMFzVNu3Tf" role="28jJRO">
              <node concept="2Ry0Ak" id="5WMFzVNu3Tg" role="iGT6I">
                <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                <node concept="2Ry0Ak" id="5WMFzVNu3Th" role="2Ry0An">
                  <property role="2Ry0Am" value="samples" />
                  <node concept="2Ry0Ak" id="5WMFzVNu3Ti" role="2Ry0An">
                    <property role="2Ry0Am" value="buildA" />
                    <node concept="2Ry0Ak" id="5WMFzVNu3Tj" role="2Ry0An">
                      <property role="2Ry0Am" value="abcde.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="5WMFzVNuDVl" role="Nbhlr">
            <node concept="3Mxwew" id="5WMFzVNuDVn" role="3MwsjC">
              <property role="3MwjfP" value="MpsB.zip" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="1HQQX4XUzRN" role="39821P">
        <node concept="398223" id="1HQQX4XU$86" role="39821P">
          <node concept="3_J27D" id="1HQQX4XU$87" role="Nbhlr">
            <node concept="3Mxwew" id="1HQQX4XU$88" role="3MwsjC">
              <property role="3MwjfP" value="A1" />
            </node>
          </node>
          <node concept="28jJK3" id="35zoHQHSGd0" role="39821P">
            <node concept="55IIr" id="1HQQX4XUzRS" role="28jJRO">
              <node concept="2Ry0Ak" id="1HQQX4XUzRT" role="iGT6I">
                <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                <node concept="2Ry0Ak" id="1HQQX4XUzRU" role="2Ry0An">
                  <property role="2Ry0Am" value="tests.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1HQQX4XUzRO" role="Nbhlr">
          <node concept="3Mxwew" id="1HQQX4XUzRP" role="3MwsjC">
            <property role="3MwjfP" value="my.tar" />
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="1HQQX4XUzRW" role="39821P">
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="398223" id="1HQQX4XU$8b" role="39821P">
          <node concept="3_J27D" id="1HQQX4XU$8c" role="Nbhlr">
            <node concept="3Mxwew" id="1HQQX4XU$8d" role="3MwsjC">
              <property role="3MwjfP" value="A2" />
            </node>
          </node>
          <node concept="yKbIv" id="1HQQX4XU$8e" role="39821P">
            <node concept="398223" id="1HQQX4XU$8g" role="39821P">
              <node concept="3_J27D" id="1HQQX4XU$8h" role="Nbhlr">
                <node concept="3Mxwew" id="1HQQX4XU$8i" role="3MwsjC">
                  <property role="3MwjfP" value="A3" />
                </node>
              </node>
              <node concept="28jJK3" id="35zoHQHSGcV" role="39821P">
                <node concept="55IIr" id="1HQQX4XUzS1" role="28jJRO">
                  <node concept="2Ry0Ak" id="1HQQX4XUzS2" role="iGT6I">
                    <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                    <node concept="2Ry0Ak" id="1HQQX4XUzS3" role="2Ry0An">
                      <property role="2Ry0Am" value="tests.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1HQQX4XUzRX" role="Nbhlr">
          <node concept="3Mxwew" id="1HQQX4XUzRY" role="3MwsjC">
            <property role="3MwjfP" value="my.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="7s9W5cElg6y" role="39821P">
        <property role="AB_bT" value="1HQQX4XU8$B/bzip2" />
        <node concept="3_J27D" id="7s9W5cElg6z" role="Nbhlr">
          <node concept="3Mxwew" id="7s9W5cElg6$" role="3MwsjC">
            <property role="3MwjfP" value="my.tar.bz2" />
          </node>
        </node>
        <node concept="yKbIv" id="$8kyfUD0VY" role="39821P">
          <property role="yKbIq" value="750" />
          <property role="yKbIr" value="640" />
          <node concept="28jJK3" id="35zoHQHSGcX" role="39821P">
            <node concept="55IIr" id="7s9W5cElg6E" role="28jJRO">
              <node concept="2Ry0Ak" id="7s9W5cElg6G" role="iGT6I">
                <property role="2Ry0Am" value="jetbrains.mps.build.tests" />
                <node concept="2Ry0Ak" id="7s9W5cElg6H" role="2Ry0An">
                  <property role="2Ry0Am" value="tests.msd" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2HvfSZ" id="35zoHQHSGd3" role="39821P">
            <node concept="55IIr" id="7s9W5cElg6L" role="2HvfZ0">
              <node concept="2Ry0Ak" id="7s9W5cElg6M" role="iGT6I">
                <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                <node concept="2Ry0Ak" id="7s9W5cElg6N" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3LWZYx" id="7s9W5cElg6P" role="2HvfZ1">
              <property role="3LWZYw" value="*.mps" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13uchq" id="4RsV8qJHsR_">
    <property role="TrG5h" value="JarFromA" />
    <node concept="398223" id="4RsV8qJHsRA" role="39821P">
      <node concept="3_J27D" id="4RsV8qJHsRB" role="Nbhlr">
        <node concept="3Mxwew" id="4RsV8qJHsRC" role="3MwsjC">
          <property role="3MwjfP" value="buildA" />
        </node>
      </node>
      <node concept="13uQ2_" id="4RsV8qJHsRM" role="39821P">
        <node concept="3_J27D" id="4RsV8qJHsRN" role="13uQ07">
          <node concept="3Mxwew" id="4RsV8qJHsRO" role="3MwsjC">
            <property role="3MwjfP" value="abcde.jar" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4RsV8qJHsRP">
    <property role="2DA0ip" value=".." />
    <property role="TrG5h" value="buildMpsC" />
    <property role="turDy" value="buildMpsC.xml" />
    <node concept="PiPfp" id="4RsV8qJHsRW" role="3989C9">
      <property role="TrG5h" value="aaa" />
      <node concept="25yagZ" id="4RsV8qJHsRY" role="PiKyV">
        <node concept="3yqu4x" id="4RsV8qJHsRZ" role="25yagT">
          <node concept="3yrxFa" id="4RsV8qJHsS1" role="3yqu4I">
            <ref role="3yrxFb" node="4RsV8qJHsRM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398b33" id="4RsV8qJHsS4" role="3989C9">
      <property role="TrG5h" value="testModuleWithAbcde" />
      <node concept="2sjeV3" id="4RsV8qJHsS5" role="nCB5Z">
        <ref role="2sjeV2" node="4RsV8qJHsRW" resolve="aaa" />
      </node>
      <node concept="2GAZfH" id="4RsV8qJHsS6" role="398b2p">
        <node concept="TIC1d" id="4RsV8qJHsS7" role="2GAZfG">
          <node concept="55IIr" id="4RsV8qJHsS8" role="TIC6M">
            <node concept="2Ry0Ak" id="4RsV8qJHsS9" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="4RsV8qJHsSa" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="4RsV8qJHsSb" role="2Ry0An">
                  <property role="2Ry0Am" value="buildA" />
                  <node concept="2Ry0Ak" id="4RsV8qJHsSc" role="2Ry0An">
                    <property role="2Ry0Am" value="src" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="4RsV8qJHsRG" role="1l3spa">
      <ref role="13uUGO" node="4RsV8qJHsR_" resolve="JarFromA" />
      <node concept="55IIr" id="4RsV8qJHsRH" role="13uUGP">
        <node concept="2Ry0Ak" id="4RsV8qJHsRI" role="iGT6I">
          <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
          <node concept="2Ry0Ak" id="4RsV8qJHsRJ" role="2Ry0An">
            <property role="2Ry0Am" value="samples" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="4RsV8qJHsRR" role="1l3spN" />
    <node concept="55IIr" id="4RsV8qJHsRS" role="auvoZ">
      <node concept="2Ry0Ak" id="4RsV8qJHsRT" role="iGT6I">
        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
        <node concept="2Ry0Ak" id="4RsV8qJHsRU" role="2Ry0An">
          <property role="2Ry0Am" value="samples" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="4RsV8qJHsRX" role="10PD9s" />
  </node>
  <node concept="1l3spW" id="7B9bSSBHjuI">
    <property role="2DA0ip" value=".." />
    <property role="TrG5h" value="buildMpsD" />
    <property role="turDy" value="buildMpsD.xml" />
    <node concept="13uUGR" id="7B9bSSBHjvf" role="1l3spa">
      <ref role="13uUGO" node="4RsV8qJHsR_" resolve="JarFromA" />
      <node concept="55IIr" id="7B9bSSBHjvg" role="13uUGP">
        <node concept="2Ry0Ak" id="7B9bSSBHjvh" role="iGT6I">
          <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
          <node concept="2Ry0Ak" id="7B9bSSBHjvi" role="2Ry0An">
            <property role="2Ry0Am" value="samples" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398b33" id="7B9bSSBHjuO" role="3989C9">
      <property role="TrG5h" value="mps_D_using_lib_from_C" />
      <node concept="2sjeV3" id="7B9bSSBHjuP" role="nCB5Z">
        <ref role="2sjeV2" node="4RsV8qJHsRW" resolve="aaa" />
      </node>
      <node concept="2GAZfH" id="7B9bSSBHjuQ" role="398b2p">
        <node concept="TIC1d" id="7B9bSSBHjuR" role="2GAZfG">
          <node concept="55IIr" id="7B9bSSBHjuS" role="TIC6M">
            <node concept="2Ry0Ak" id="7B9bSSBHjuT" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="7B9bSSBHjuU" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="7B9bSSBHjuV" role="2Ry0An">
                  <property role="2Ry0Am" value="buildA" />
                  <node concept="2Ry0Ak" id="7B9bSSBHjuW" role="2Ry0An">
                    <property role="2Ry0Am" value="src" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="7B9bSSBHjuJ" role="auvoZ">
      <node concept="2Ry0Ak" id="7B9bSSBHjuM" role="iGT6I">
        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
        <node concept="2Ry0Ak" id="7B9bSSBHjuN" role="2Ry0An">
          <property role="2Ry0Am" value="samples" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="7B9bSSBHjuK" role="1l3spN" />
    <node concept="2sgV4H" id="7B9bSSBHjuL" role="1l3spa">
      <ref role="1l3spb" node="4RsV8qJHsRP" resolve="buildMpsC" />
    </node>
    <node concept="10PD9b" id="7B9bSSBHjuX" role="10PD9s" />
  </node>
  <node concept="13uchq" id="4Ol7luCqbvB">
    <property role="TrG5h" value="TarsFromT" />
    <node concept="13uQ2_" id="4Ol7luCqbvI" role="39821P">
      <node concept="3_J27D" id="4Ol7luCqbvJ" role="13uQ07">
        <node concept="3Mxwew" id="4Ol7luCqbvK" role="3MwsjC">
          <property role="3MwjfP" value="tarFileSource.tar" />
          <property role="TrG5h" value="tarSource.tar" />
        </node>
      </node>
    </node>
    <node concept="13uQ2_" id="6c6sXSd38qU" role="39821P">
      <node concept="3_J27D" id="6c6sXSd38qV" role="13uQ07">
        <node concept="3Mxwew" id="6c6sXSd38qW" role="3MwsjC">
          <property role="3MwjfP" value="tarbzFileSource.tar.bz2" />
          <property role="TrG5h" value="tarbzFileSource.tar.bz2" />
        </node>
      </node>
    </node>
    <node concept="1tmT9g" id="4Ol7luCv5gO" role="39821P">
      <node concept="3_J27D" id="4Ol7luCv5gQ" role="Nbhlr">
        <node concept="3Mxwew" id="4Ol7luCv5gS" role="3MwsjC">
          <property role="3MwjfP" value="tarSource.tar" />
        </node>
      </node>
    </node>
    <node concept="1tmT9g" id="4Ol7luCv5gU" role="39821P">
      <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
      <node concept="3_J27D" id="4Ol7luCv5gW" role="Nbhlr">
        <node concept="3Mxwew" id="4Ol7luCv5gY" role="3MwsjC">
          <property role="3MwjfP" value="targzSource.tar.gz" />
        </node>
      </node>
    </node>
    <node concept="1tmT9g" id="6c6sXSd33w4" role="39821P">
      <property role="AB_bT" value="1HQQX4XU8$B/bzip2" />
      <property role="TrG5h" value="tarbzSource.tar.bz2" />
      <node concept="3_J27D" id="6c6sXSd33w5" role="Nbhlr">
        <node concept="3Mxwew" id="6c6sXSd33w6" role="3MwsjC">
          <property role="3MwjfP" value="tarbzSource.tar.bz2" />
          <property role="TrG5h" value="tarbzSource.tar.bz2" />
        </node>
      </node>
    </node>
    <node concept="398223" id="4Ol7luCv5hm" role="39821P">
      <node concept="13uQ2_" id="4Ol7luCv7EA" role="39821P">
        <node concept="3_J27D" id="4Ol7luCv7EC" role="13uQ07">
          <node concept="3Mxwew" id="4Ol7luCv7EF" role="3MwsjC">
            <property role="3MwjfP" value="targzFileSource.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCv5ht" role="39821P">
        <node concept="398223" id="4Ol7luCv5h$" role="39821P">
          <node concept="3_J27D" id="4Ol7luCv5hA" role="Nbhlr">
            <node concept="3Mxwew" id="4Ol7luCv5hC" role="3MwsjC">
              <property role="3MwjfP" value="test" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="4Ol7luCv5hv" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCv5hy" role="3MwsjC">
            <property role="3MwjfP" value="tarInFolder.tar" />
          </node>
        </node>
      </node>
      <node concept="398223" id="4Ol7luCv5hF" role="39821P">
        <node concept="3_J27D" id="4Ol7luCv5hH" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCv5hK" role="3MwsjC">
            <property role="3MwjfP" value="secondFolder" />
          </node>
        </node>
        <node concept="1tmT9g" id="4Ol7luCv5hL" role="39821P">
          <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
          <node concept="3_J27D" id="4Ol7luCv5hM" role="Nbhlr">
            <node concept="3Mxwew" id="4Ol7luCv5hO" role="3MwsjC">
              <property role="3MwjfP" value="targzInFolder.tar.gz" />
            </node>
          </node>
          <node concept="13uQ2_" id="4Ol7luCv5hP" role="39821P">
            <node concept="3_J27D" id="4Ol7luCv5hQ" role="13uQ07">
              <node concept="3Mxwew" id="4Ol7luCv5hS" role="3MwsjC">
                <property role="3MwjfP" value="test.txt" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="4Ol7luCv5ho" role="Nbhlr">
        <node concept="3Mxwew" id="4Ol7luCv5hr" role="3MwsjC">
          <property role="3MwjfP" value="topFolder" />
        </node>
      </node>
    </node>
    <node concept="3981dG" id="4Ol7luCv5h0" role="39821P">
      <node concept="3_J27D" id="4Ol7luCv5h2" role="Nbhlr">
        <node concept="3Mxwew" id="4Ol7luCv5h5" role="3MwsjC">
          <property role="3MwjfP" value="zipFile.zip" />
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCv5h6" role="39821P">
        <node concept="3_J27D" id="4Ol7luCv5h7" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCv5ha" role="3MwsjC">
            <property role="3MwjfP" value="tarInZip.tar" />
          </node>
        </node>
      </node>
      <node concept="398223" id="4Ol7luCv5hc" role="39821P">
        <node concept="3_J27D" id="4Ol7luCv5he" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCv5hh" role="3MwsjC">
            <property role="3MwjfP" value="fold" />
          </node>
        </node>
        <node concept="1tmT9g" id="4Ol7luCv5hi" role="39821P">
          <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
          <node concept="3_J27D" id="4Ol7luCv5hj" role="Nbhlr">
            <node concept="3Mxwew" id="4Ol7luCv5hk" role="3MwsjC">
              <property role="3MwjfP" value="targzInZip.tar.gz" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4Ol7luCqbvL">
    <property role="2DA0ip" value=".." />
    <property role="TrG5h" value="buildMpsT" />
    <property role="turDy" value="buildMpsT.xml" />
    <node concept="13uUGR" id="4Ol7luCqbvZ" role="1l3spa">
      <ref role="13uUGO" node="4Ol7luCqbvB" resolve="TarsFromT" />
      <node concept="55IIr" id="4Ol7luCqbw0" role="13uUGP">
        <node concept="2Ry0Ak" id="4Ol7luCqbw1" role="iGT6I">
          <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
          <node concept="2Ry0Ak" id="4Ol7luCqbw2" role="2Ry0An">
            <property role="2Ry0Am" value="samples" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="4Ol7luCqbw3" role="1l3spN">
      <node concept="1tmT9g" id="4Ol7luCqbw4" role="39821P">
        <property role="TrG5h" value="plain-folder.tar" />
        <node concept="3_J27D" id="4Ol7luCqbw5" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCqbw6" role="3MwsjC">
            <property role="3MwjfP" value="plain-folder.tar" />
            <property role="TrG5h" value="plain-folder.tar" />
          </node>
        </node>
        <node concept="398223" id="4Ol7luCqbw7" role="39821P">
          <property role="TrG5h" value="repacked" />
          <node concept="3_J27D" id="4Ol7luCqbw8" role="Nbhlr">
            <node concept="3Mxwew" id="4Ol7luCqbw9" role="3MwsjC">
              <property role="3MwjfP" value="repacked" />
              <property role="TrG5h" value="repacked" />
            </node>
          </node>
          <node concept="15jnD9" id="4Ol7luCqbwa" role="39821P">
            <ref role="15jnDb" node="4Ol7luCqbvI" />
            <node concept="3LWZYx" id="4Ol7luCqbwb" role="15jnD8">
              <property role="3LWZYw" value="lib/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="6c6sXSd33wf" role="39821P">
        <property role="TrG5h" value="layout-bzip.tar" />
        <node concept="3_J27D" id="6c6sXSd33wg" role="Nbhlr">
          <node concept="3Mxwew" id="6c6sXSd33wh" role="3MwsjC">
            <property role="3MwjfP" value="layout-bzip.tar" />
            <property role="TrG5h" value="layout-bzip.tar" />
          </node>
        </node>
        <node concept="398223" id="6c6sXSd33wi" role="39821P">
          <property role="TrG5h" value="repacked" />
          <node concept="3_J27D" id="6c6sXSd33wj" role="Nbhlr">
            <node concept="3Mxwew" id="6c6sXSd33wk" role="3MwsjC">
              <property role="3MwjfP" value="repacked" />
              <property role="TrG5h" value="repacked" />
            </node>
          </node>
          <node concept="15jnD9" id="6c6sXSd33wl" role="39821P">
            <ref role="15jnDb" node="6c6sXSd33w4" />
            <node concept="3LWZYx" id="6c6sXSd33wm" role="15jnD8">
              <property role="3LWZYw" value="lib/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCqbww" role="39821P">
        <property role="TrG5h" value="gzip-folder.tar.gz" />
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="3_J27D" id="4Ol7luCqbwx" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCqbwy" role="3MwsjC">
            <property role="3MwjfP" value="gzip-folder.tar.gz" />
            <property role="TrG5h" value="gzip-folder.tar.gz" />
          </node>
        </node>
        <node concept="398223" id="4Ol7luCqbwz" role="39821P">
          <property role="TrG5h" value="repacked" />
          <node concept="3_J27D" id="4Ol7luCqbw$" role="Nbhlr">
            <node concept="3Mxwew" id="4Ol7luCqbw_" role="3MwsjC">
              <property role="3MwjfP" value="repacked" />
              <property role="TrG5h" value="repacked" />
            </node>
          </node>
          <node concept="3_1rDE" id="7YLuv4UWzQC" role="39821P">
            <node concept="55IIr" id="7YLuv4UWzQD" role="3_1rDF">
              <node concept="2Ry0Ak" id="7YLuv4UWzQE" role="iGT6I">
                <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
                <node concept="2Ry0Ak" id="7YLuv4UWzQF" role="2Ry0An">
                  <property role="2Ry0Am" value="samples" />
                  <node concept="2Ry0Ak" id="7YLuv4UWzQG" role="2Ry0An">
                    <property role="2Ry0Am" value="tarSource.tar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3LWZYx" id="7YLuv4UWzQH" role="3_1rDC">
              <property role="3LWZYw" value="lib/**" />
            </node>
            <node concept="3LWZYq" id="7YLuv4UWzQO" role="3_1rDC">
              <property role="3LWZYl" value="**/*.txt" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCqbwo" role="39821P">
        <property role="TrG5h" value="plain-direct.tar" />
        <node concept="3_J27D" id="4Ol7luCqbwp" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCqbwq" role="3MwsjC">
            <property role="3MwjfP" value="plain-direct.tar" />
            <property role="TrG5h" value="plain-direct.tar" />
          </node>
        </node>
        <node concept="3_1rDE" id="7YLuv4UWzQt" role="39821P">
          <node concept="55IIr" id="7YLuv4UWzQu" role="3_1rDF">
            <node concept="2Ry0Ak" id="7YLuv4UWzQv" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="7YLuv4UWzQw" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="7YLuv4UWzQx" role="2Ry0An">
                  <property role="2Ry0Am" value="tarSource.tar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCByBj" role="39821P">
        <property role="TrG5h" value="source-gzip.tar" />
        <node concept="3_J27D" id="4Ol7luCByBk" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCByBl" role="3MwsjC">
            <property role="3MwjfP" value="source-gzip.tar" />
            <property role="TrG5h" value="source-gzip.tar" />
          </node>
        </node>
        <node concept="3_1rDE" id="4Ol7luCByBm" role="39821P">
          <property role="3_qmum" value="1HQQX4XU8$A/gzip" />
          <node concept="55IIr" id="4Ol7luCByBn" role="3_1rDF">
            <node concept="2Ry0Ak" id="4Ol7luCByBo" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="4Ol7luCByBp" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="4Ol7luCByBq" role="2Ry0An">
                  <property role="2Ry0Am" value="targzSource.tar.gz" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="6c6sXSd33w7" role="39821P">
        <property role="TrG5h" value="source-bzip.tar" />
        <node concept="3_J27D" id="6c6sXSd33w8" role="Nbhlr">
          <node concept="3Mxwew" id="6c6sXSd33w9" role="3MwsjC">
            <property role="3MwjfP" value="source-bzip.tar" />
            <property role="TrG5h" value="source-bzip.tar" />
          </node>
        </node>
        <node concept="3_1rDE" id="6c6sXSd33wa" role="39821P">
          <property role="3_qmum" value="1HQQX4XU8$B/bzip2" />
          <node concept="55IIr" id="6c6sXSd33wb" role="3_1rDF">
            <node concept="2Ry0Ak" id="6c6sXSd33wc" role="iGT6I">
              <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
              <node concept="2Ry0Ak" id="6c6sXSd33wd" role="2Ry0An">
                <property role="2Ry0Am" value="samples" />
                <node concept="2Ry0Ak" id="6c6sXSd33we" role="2Ry0An">
                  <property role="2Ry0Am" value="tarbzSource.tar.bz2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCqbwg" role="39821P">
        <property role="TrG5h" value="gzip-direct.tar.gz" />
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="3_J27D" id="4Ol7luCqbwh" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCqbwi" role="3MwsjC">
            <property role="3MwjfP" value="gzip-direct.tar.gz" />
            <property role="TrG5h" value="gzip-direct.tar.gz" />
          </node>
        </node>
        <node concept="15jnD9" id="4Ol7luCqbwm" role="39821P">
          <ref role="15jnDb" node="4Ol7luCv7EA" />
          <node concept="3LWZYx" id="4Ol7luCqbwn" role="15jnD8">
            <property role="3LWZYw" value="lib/**" />
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="6c6sXSd38qX" role="39821P">
        <property role="TrG5h" value="file-bzip.tar.gz" />
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="3_J27D" id="6c6sXSd38qY" role="Nbhlr">
          <node concept="3Mxwew" id="6c6sXSd38qZ" role="3MwsjC">
            <property role="3MwjfP" value="file-bzip.tar.gz" />
            <property role="TrG5h" value="file-bzip.tar.gz" />
          </node>
        </node>
        <node concept="15jnD9" id="6c6sXSd38r0" role="39821P">
          <ref role="15jnDb" node="6c6sXSd38qU" />
          <node concept="3LWZYx" id="6c6sXSd38r1" role="15jnD8">
            <property role="3LWZYw" value="lib/**" />
          </node>
        </node>
      </node>
      <node concept="1tmT9g" id="4Ol7luCBw6L" role="39821P">
        <property role="TrG5h" value="zip-nested.tar.gz" />
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="3_J27D" id="4Ol7luCBw6M" role="Nbhlr">
          <node concept="3Mxwew" id="4Ol7luCBw6N" role="3MwsjC">
            <property role="3MwjfP" value="zip-nested.tar.gz" />
            <property role="TrG5h" value="zip-nested.tar.gz" />
          </node>
        </node>
        <node concept="15jnD9" id="4Ol7luCBw6O" role="39821P">
          <ref role="15jnDb" node="4Ol7luCv5hi" />
          <node concept="3LWZYx" id="4Ol7luCBw6P" role="15jnD8">
            <property role="3LWZYw" value="lib/**" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="4Ol7luCqbwc" role="auvoZ">
      <node concept="2Ry0Ak" id="4Ol7luCqbwd" role="iGT6I">
        <property role="2Ry0Am" value="jetbrains.mps.build.sandbox" />
        <node concept="2Ry0Ak" id="4Ol7luCqbwe" role="2Ry0An">
          <property role="2Ry0Am" value="samples" />
        </node>
      </node>
    </node>
  </node>
</model>

