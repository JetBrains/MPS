<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:557b6444-752b-478f-a018-f0abe80a35cd(jetbrains.mps.build.startup.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="s7om" ref="r:a930f08c-5447-4203-8f2e-507bb76fab12(jetbrains.mps.build.startup.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpch" ref="r:00000000-0000-4000-0000-011c8959028d(jetbrains.mps.lang.structure.editor)" />
    <import index="o2va" ref="r:00f69407-23a8-49a2-a236-9e89a32679aa(jetbrains.mps.build.editor)" implicit="true" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3nFPImNgRkh">
    <ref role="1XX52x" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    <node concept="3EZMnI" id="3nFPImNgRkj" role="2wV5jI">
      <node concept="3EZMnI" id="2g$3PZUbq1B" role="3EZMnx">
        <node concept="2iRfu4" id="2g$3PZUbq1C" role="2iSdaV" />
        <node concept="3F0A7n" id="3nFPImNgRkm" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3EZMnI" id="2g$3PZUbqia" role="3EZMnx">
          <node concept="2iRfu4" id="2g$3PZUbqib" role="2iSdaV" />
          <node concept="3F0ifn" id="2g$3PZUbq6K" role="3EZMnx">
            <property role="3F0ifm" value="script name is defined in branding:" />
            <ref role="1k5W1q" to="o2va:7UAfeVQSDww" resolve="comment" />
          </node>
          <node concept="1iCGBv" id="2g$3PZUbqdG" role="3EZMnx">
            <ref role="1NtTu8" to="s7om:32A7APlXEJ9" resolve="branding" />
            <node concept="1sVBvm" id="2g$3PZUbqdI" role="1sWHZn">
              <node concept="3F1sOY" id="2g$3PZUbqfY" role="2wV5jI">
                <ref role="1NtTu8" to="kdzh:Nf0pasGVkV" resolve="script" />
                <node concept="xShMh" id="2g$3PZUbqi6" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="2g$3PZUbqiS" role="pqm2j">
            <node concept="3clFbS" id="2g$3PZUbqiT" role="2VODD2">
              <node concept="3clFbF" id="2g$3PZUbqq4" role="3cqZAp">
                <node concept="2OqwBi" id="2g$3PZUbrwW" role="3clFbG">
                  <node concept="2OqwBi" id="2g$3PZUbqB3" role="2Oq$k0">
                    <node concept="pncrf" id="2g$3PZUbqq3" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2g$3PZUbqVI" role="2OqNvi">
                      <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="2g$3PZUbrWm" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3nFPImNgRkr" role="3EZMnx">
        <node concept="VPM3Z" id="3nFPImNgRso" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="3nFPImNh3ik" role="3EZMnx">
        <node concept="VPM3Z" id="3nFPImNh3il" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3nFPImNh3io" role="3EZMnx">
          <property role="3F0ifm" value="class" />
        </node>
        <node concept="3F0A7n" id="3nFPImNh3iq" role="3EZMnx">
          <ref role="1NtTu8" to="s7om:3nFPImNh3ii" resolve="startupClass" />
        </node>
        <node concept="2iRfu4" id="3nFPImNh3in" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="32A7APlXFcM" role="3EZMnx">
        <node concept="VPM3Z" id="32A7APlXFcO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="32A7APlXFcQ" role="3EZMnx">
          <property role="3F0ifm" value="branding" />
        </node>
        <node concept="1iCGBv" id="BsOHnj9Vew" role="3EZMnx">
          <ref role="1NtTu8" to="s7om:32A7APlXEJ9" resolve="branding" />
          <node concept="1sVBvm" id="BsOHnj9Vey" role="1sWHZn">
            <node concept="3SHvHV" id="BsOHnja3C5" role="2wV5jI" />
          </node>
        </node>
        <node concept="2iRfu4" id="32A7APlXFcR" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3nFPImNgRsz" role="3EZMnx">
        <node concept="VPM3Z" id="3nFPImNgRs_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="3nFPImNgRsA" role="3EZMnx">
        <property role="3F0ifm" value="boot classpath" />
      </node>
      <node concept="3EZMnI" id="3nFPImNgRsO" role="3EZMnx">
        <node concept="3XFhqQ" id="3nFPImNgRsR" role="3EZMnx" />
        <node concept="2iRfu4" id="3nFPImNgRsP" role="2iSdaV" />
        <node concept="3F2HdR" id="3nFPImNgRsE" role="3EZMnx">
          <ref role="1NtTu8" to="s7om:3nFPImNgRsC" resolve="bootClasspath" />
          <node concept="2iRkQZ" id="3nFPImNgRsF" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="7mPGpETqOk3" role="3EZMnx">
        <node concept="VPM3Z" id="7mPGpETqOk4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="7mPGpETqO8$" role="3EZMnx">
        <property role="3F0ifm" value="ext boot classpath" />
      </node>
      <node concept="3EZMnI" id="7mPGpETqO8v" role="3EZMnx">
        <node concept="3XFhqQ" id="7mPGpETqO8w" role="3EZMnx" />
        <node concept="2iRfu4" id="7mPGpETqO8x" role="2iSdaV" />
        <node concept="3F2HdR" id="7mPGpETqO8y" role="3EZMnx">
          <ref role="1NtTu8" to="s7om:7mPGpETqNW1" resolve="extBootClasspath" />
          <node concept="2iRkQZ" id="7mPGpETqO8z" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwFGYOQF3b" role="3EZMnx">
        <node concept="VPM3Z" id="2lwFGYOQF3c" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwFGYOQF3d" role="3EZMnx">
        <property role="3F0ifm" value="vm options (64 bit)" />
      </node>
      <node concept="3EZMnI" id="2lwFGYOQF3e" role="3EZMnx">
        <node concept="VPM3Z" id="2lwFGYOQF3f" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="2lwFGYOQF3g" role="3EZMnx" />
        <node concept="3F2HdR" id="2lwFGYOQF3h" role="3EZMnx">
          <ref role="1NtTu8" to="s7om:2lwFGYOQzXr" resolve="vmOptions64" />
          <node concept="2iRkQZ" id="2lwFGYOQF3i" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="2lwFGYOQF3j" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3nFPImNgRsH" role="3EZMnx">
        <node concept="VPM3Z" id="3nFPImNgRsI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="3nFPImNgRsK" role="3EZMnx">
        <property role="3F0ifm" value="vm options (32 bit)" />
      </node>
      <node concept="3EZMnI" id="3nFPImNgRsT" role="3EZMnx">
        <node concept="VPM3Z" id="3nFPImNgRsU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="3nFPImNgRsX" role="3EZMnx" />
        <node concept="3F2HdR" id="3nFPImNh2pA" role="3EZMnx">
          <ref role="1NtTu8" to="s7om:3nFPImNh2p$" resolve="vmOptions" />
          <node concept="2iRkQZ" id="3nFPImNh2pC" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="3nFPImNgRsW" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3nFPImNgRkl" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="3XLirLp3IyU" role="6VMZX">
      <node concept="3EZMnI" id="32A7APlXFaE" role="3EZMnx">
        <node concept="2iRfu4" id="32A7APlXFaF" role="2iSdaV" />
        <node concept="3F0ifn" id="32A7APlXF9n" role="3EZMnx">
          <property role="3F0ifm" value="@Deprecated" />
          <ref role="1k5W1q" to="tpch:hOawUFH" resolve="AnnotationNode" />
        </node>
        <node concept="3F0ifn" id="32A7APlXFa0" role="3EZMnx">
          <property role="3F0ifm" value="(Since version 2017.1 it is not used anymore.)" />
          <ref role="1k5W1q" to="o2va:7UAfeVQSDww" resolve="comment" />
        </node>
      </node>
      <node concept="3EZMnI" id="3nFPImNgRsr" role="3EZMnx">
        <node concept="VPM3Z" id="3nFPImNgRss" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3nFPImNgRsv" role="3EZMnx">
          <property role="3F0ifm" value="startup folder" />
        </node>
        <node concept="3F0A7n" id="3nFPImNgRsx" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="s7om:3nFPImNgRkb" resolve="startupFolder" />
        </node>
        <node concept="2iRfu4" id="3nFPImNgRsu" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3XLirLp3IyX" role="2iSdaV" />
      <node concept="pkWqt" id="3XLirLp3IS2" role="pqm2j">
        <node concept="3clFbS" id="3XLirLp3IS3" role="2VODD2">
          <node concept="3SKdUt" id="3XLirLp3KA8" role="3cqZAp">
            <node concept="1PaTwC" id="3XLirLp3KA9" role="1aUNEU">
              <node concept="3oM_SD" id="3XLirLp3KAl" role="1PaTwD">
                <property role="3oM_SC" value="I" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KBe" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KBK" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KCh" role="1PaTwD">
                <property role="3oM_SC" value="idea" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KK3" role="1PaTwD">
                <property role="3oM_SC" value="why" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KLd" role="1PaTwD">
                <property role="3oM_SC" value="deprecated" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KOV" role="1PaTwD">
                <property role="3oM_SC" value="property" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KQc" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KQM" role="1PaTwD">
                <property role="3oM_SC" value="still" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KS2" role="1PaTwD">
                <property role="3oM_SC" value="set" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KSF" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="3XLirLp3KTU" role="1PaTwD">
                <property role="3oM_SC" value="BuildGeneratorImpl" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3XLirLp3IWQ" role="3cqZAp">
            <node concept="2OqwBi" id="3XLirLp3JOY" role="3clFbG">
              <node concept="2OqwBi" id="3XLirLp3Jav" role="2Oq$k0">
                <node concept="pncrf" id="3XLirLp3IWP" role="2Oq$k0" />
                <node concept="3TrcHB" id="3XLirLp3Jtk" role="2OqNvi">
                  <ref role="3TsBF5" to="s7om:3nFPImNgRkb" resolve="startupFolder" />
                </node>
              </node>
              <node concept="17RvpY" id="3XLirLp3KfP" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3nFPImNgRtl">
    <ref role="1XX52x" to="s7om:3nFPImNgRtc" resolve="SimpleVmOptions" />
    <node concept="3EZMnI" id="4jsNilqZlpC" role="2wV5jI">
      <node concept="3F0ifn" id="4jsNilqZlpF" role="3EZMnx">
        <property role="3F0ifm" value="#" />
        <node concept="pkWqt" id="4jsNilqZlpG" role="pqm2j">
          <node concept="3clFbS" id="4jsNilqZlpH" role="2VODD2">
            <node concept="3clFbF" id="4jsNilqZlpI" role="3cqZAp">
              <node concept="2OqwBi" id="4jsNilqZlpK" role="3clFbG">
                <node concept="pncrf" id="4jsNilqZlpJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="4jsNilqZlpO" role="2OqNvi">
                  <ref role="3TsBF5" to="s7om:54lRqzvvvMy" resolve="commented" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="4jsNilqZlpD" role="2iSdaV" />
      <node concept="3F0A7n" id="3nFPImNgRtn" role="3EZMnx">
        <ref role="1NtTu8" to="s7om:3nFPImNgRtd" resolve="options" />
      </node>
    </node>
    <node concept="3EZMnI" id="54lRqzvvvMz" role="6VMZX">
      <node concept="2iRfu4" id="54lRqzvvvM$" role="2iSdaV" />
      <node concept="3F0ifn" id="54lRqzvvvM_" role="3EZMnx">
        <property role="3F0ifm" value="commented" />
      </node>
      <node concept="3F0A7n" id="54lRqzvvvMB" role="3EZMnx">
        <ref role="1NtTu8" to="s7om:54lRqzvvvMy" resolve="commented" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3nFPImNh2nE">
    <ref role="1XX52x" to="s7om:3nFPImNgRk9" resolve="ClassPathItem" />
    <node concept="3F0A7n" id="3nFPImNh2nG" role="2wV5jI">
      <ref role="1NtTu8" to="s7om:3nFPImNgRka" resolve="path" />
    </node>
  </node>
  <node concept="24kQdi" id="1w81suLPAzC">
    <ref role="1XX52x" to="s7om:1w81suLPAxW" resolve="TextFile" />
    <node concept="3EZMnI" id="1w81suLQXcr" role="2wV5jI">
      <node concept="3F0A7n" id="1w81suLQXcB" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="1w81suLQXfL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1w81suMfgbO" role="3EZMnx">
        <node concept="ljvvj" id="1w81suMfgdq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="1w81suMfgeX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="1w81suLQXcs" role="2iSdaV" />
      <node concept="3F2HdR" id="1w81suLPC1K" role="3EZMnx">
        <ref role="1NtTu8" to="s7om:1w81suLPAyL" resolve="lines" />
        <node concept="pj6Ft" id="1w81suLPJLI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="1w81suLRCQP" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1w81suLPJOA">
    <ref role="1XX52x" to="s7om:1w81suLPAyy" resolve="TextLine" />
    <node concept="3F0A7n" id="1w81suLS7eu" role="2wV5jI">
      <property role="39s7Ar" value="true" />
      <property role="1O74Pk" value="true" />
      <ref role="1NtTu8" to="s7om:1w81suLRRvp" resolve="text" />
    </node>
  </node>
</model>

