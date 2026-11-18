<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb9e85a1-15cf-45ea-8495-bd74b79ce90c(jetbrains.mps.samples.fincalculator.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="64eg" ref="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
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
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
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
  </registry>
  <node concept="24kQdi" id="i46Yp_E">
    <ref role="1XX52x" to="64eg:i46Ymgg" resolve="Calculator" />
    <node concept="3EZMnI" id="i46Yq_E" role="2wV5jI">
      <node concept="3EZMnI" id="i46YrgV" role="3EZMnx">
        <node concept="VPM3Z" id="i46YrgW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="i46YsBb" role="3EZMnx">
          <property role="3F0ifm" value="Simulation" />
          <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
        </node>
        <node concept="3F0A7n" id="i46YuhE" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
        </node>
        <node concept="2iRfu4" id="i46YrgY" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="33wun1Dt3zI" role="3EZMnx" />
      <node concept="3F1sOY" id="33wun1Dt3_d" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:33wun1DsOh_" resolve="description" />
      </node>
      <node concept="3F0ifn" id="33wun1Dt3$6" role="3EZMnx" />
      <node concept="3F2HdR" id="1Oh785uWyV0" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:1Oh785uWyUK" resolve="commands" />
        <node concept="2iRkQZ" id="1Oh785uWyV2" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="i46Yq_G" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="i46YGbB">
    <ref role="1XX52x" to="64eg:i46Yz6h" resolve="InputField" />
    <node concept="3EZMnI" id="i46YGZa" role="2wV5jI">
      <node concept="3F0ifn" id="i46YHPC" role="3EZMnx">
        <property role="3F0ifm" value="input" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="i46YJNp" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="1Oh785uUtIY" role="3EZMnx">
        <property role="3F0ifm" value="kind:" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1Oh785uUtJ8" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:1Oh785uUtIN" resolve="value_kind" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="i46Zpuz">
    <ref role="1XX52x" to="64eg:i46ZlEo" resolve="OutputField" />
    <node concept="3EZMnI" id="i46Zq$D" role="2wV5jI">
      <node concept="3F0ifn" id="i46Zr2Y" role="3EZMnx">
        <property role="3F0ifm" value="output" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1Oh785uWpC2" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="1Oh785uWpCc" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="i470jvI" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:i470dVI" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="i46Zq$F" role="2iSdaV" />
      <node concept="3F0ifn" id="1Oh785uWpCA" role="3EZMnx">
        <property role="3F0ifm" value="kind:" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1Oh785uWpCo" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:1Oh785uUtIN" resolve="value_kind" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="i470z4T">
    <ref role="1XX52x" to="64eg:i470n16" resolve="FieldReference" />
    <node concept="1iCGBv" id="i470zF0" role="2wV5jI">
      <ref role="1NtTu8" to="64eg:i470soo" resolve="field" />
      <node concept="1sVBvm" id="i470zF1" role="1sWHZn">
        <node concept="3F0A7n" id="i470$XO" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1Oh785uVCCb">
    <ref role="1XX52x" to="64eg:1Oh785uVCBI" resolve="Parameter" />
    <node concept="3EZMnI" id="1Oh785uVCCd" role="2wV5jI">
      <node concept="3F0ifn" id="1Oh785uVCCe" role="3EZMnx">
        <property role="3F0ifm" value="parameter" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1Oh785uVCCf" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="1Oh785uVCCg" role="3EZMnx">
        <property role="3F0ifm" value="kind:" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1Oh785uVCCh" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:1Oh785uUtIN" resolve="value_kind" />
      </node>
      <node concept="3F0ifn" id="1Oh785uY8pz" role="3EZMnx">
        <property role="3F0ifm" value="default value:" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1Oh785uY8pL" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:1Oh785uVCBJ" resolve="default_value" />
        <ref role="1k5W1q" node="4qqfUlqoQae" resolve="Number" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1Oh785uWmPH">
    <ref role="1XX52x" to="64eg:1Oh785uWmPf" resolve="EmptyLine" />
    <node concept="3F0ifn" id="1Oh785uWmPJ" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <node concept="VPxyj" id="1Oh785uWmPM" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="1Oh785uWG5_">
    <ref role="aqKnT" to="64eg:1Oh785uWmPf" resolve="EmptyLine" />
    <node concept="22hDWj" id="1Oh785uWG5A" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="49kBZ1LqmAh">
    <ref role="1XX52x" to="64eg:49kBZ1Lqm_O" resolve="Logical" />
    <node concept="3EZMnI" id="49kBZ1LqmAj" role="2wV5jI">
      <node concept="3F0ifn" id="49kBZ1LqmAq" role="3EZMnx">
        <property role="3F0ifm" value="logical" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="49kBZ1LqmA$" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="l2Vlx" id="49kBZ1LqmAm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="49kBZ1LqmB5">
    <ref role="1XX52x" to="64eg:49kBZ1LqmAC" resolve="LogicalReference" />
    <node concept="1iCGBv" id="49kBZ1LqmB7" role="2wV5jI">
      <ref role="1NtTu8" to="64eg:49kBZ1LqmAD" resolve="target" />
      <node concept="1sVBvm" id="49kBZ1LqmB9" role="1sWHZn">
        <node concept="3F0A7n" id="49kBZ1LqmBj" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="49kBZ1LqWqI">
    <ref role="1XX52x" to="64eg:49kBZ1LqWqf" resolve="Option" />
    <node concept="3EZMnI" id="49kBZ1LqWqK" role="2wV5jI">
      <node concept="3F0A7n" id="49kBZ1LqWqU" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="49kBZ1LqWr0" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="49kBZ1LqWr8" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:49kBZ1LqWqi" resolve="value" />
        <ref role="1k5W1q" node="4qqfUlqoQae" resolve="Number" />
      </node>
      <node concept="l2Vlx" id="49kBZ1LqWqN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="49kBZ1LqWrD">
    <ref role="1XX52x" to="64eg:49kBZ1LqWqc" resolve="Selector" />
    <node concept="3EZMnI" id="49kBZ1LqWrF" role="2wV5jI">
      <node concept="3F0ifn" id="49kBZ1LqWrM" role="3EZMnx">
        <property role="3F0ifm" value="selector" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="49kBZ1LqWrW" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0A7n" id="4qqfUlqpBnC" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:4qqfUlqpBmC" resolve="value_kind" />
        <node concept="ljvvj" id="4qqfUlqpBoc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="49kBZ1LqWs7" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:49kBZ1LqWrd" resolve="options" />
        <node concept="l2Vlx" id="49kBZ1LqWs9" role="2czzBx" />
        <node concept="lj46D" id="49kBZ1LqWsf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="49kBZ1LqWsk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="49kBZ1LqWrI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="49kBZ1LqWsP">
    <ref role="1XX52x" to="64eg:49kBZ1LqWso" resolve="SelectorReference" />
    <node concept="1iCGBv" id="49kBZ1LqWsR" role="2wV5jI">
      <ref role="1NtTu8" to="64eg:49kBZ1LqWsp" resolve="target" />
      <node concept="1sVBvm" id="49kBZ1LqWsT" role="1sWHZn">
        <node concept="3F0A7n" id="49kBZ1LqWt3" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="4qqfUlqoQ91">
    <property role="TrG5h" value="Styles" />
    <node concept="14StLt" id="4qqfUlqoQ94" role="V601i">
      <property role="TrG5h" value="KeyWord" />
      <node concept="Vb9p2" id="4qqfUlqoQ99" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="4qqfUlqoQ9f" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/darkBlue" />
      </node>
    </node>
    <node concept="14StLt" id="4qqfUlqoQae" role="V601i">
      <property role="TrG5h" value="Number" />
      <node concept="Vb9p2" id="4qqfUlqoQc0" role="3F10Kt">
        <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
      </node>
      <node concept="VechU" id="4qqfUlqoQc1" role="3F10Kt">
        <property role="Vb096" value="fLwANPu/blue" />
      </node>
    </node>
    <node concept="14StLt" id="4qqfUlqpwOB" role="V601i">
      <property role="TrG5h" value="Text" />
      <node concept="Vb9p2" id="4qqfUlqpwOC" role="3F10Kt" />
      <node concept="VechU" id="4qqfUlqpwOD" role="3F10Kt">
        <property role="Vb096" value="fLwANPr/green" />
      </node>
    </node>
    <node concept="14StLt" id="4qqfUlqoQdt" role="V601i">
      <property role="TrG5h" value="Name" />
      <node concept="Vb9p2" id="4qqfUlqoQdA" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="4qqfUlqoQdB" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="23xMseUtmVp">
    <ref role="1XX52x" to="64eg:23xMseUt3XP" resolve="Calculation" />
    <node concept="3EZMnI" id="23xMseUtsGN" role="2wV5jI">
      <node concept="3F0ifn" id="23xMseUtsGU" role="3EZMnx">
        <property role="3F0ifm" value="calculation" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="23xMseUtsH4" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="23xMseUu32j" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="23xMseUu32_" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:23xMseUu328" resolve="returnType" />
        <node concept="ljvvj" id="23xMseUu32J" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="23xMseUtsHf" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:23xMseUtsxB" resolve="body" />
        <node concept="lj46D" id="23xMseUtsHl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="23xMseUtsHu" role="3EZMnx">
        <property role="3F0ifm" value="end" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
        <node concept="pVoyu" id="23xMseUtsHC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="23xMseUtsGQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23xMseUumr4">
    <ref role="1XX52x" to="64eg:23xMseUumqB" resolve="CalculationReference" />
    <node concept="1iCGBv" id="23xMseUumr6" role="2wV5jI">
      <ref role="1NtTu8" to="64eg:23xMseUumqC" resolve="target" />
      <node concept="1sVBvm" id="23xMseUumr8" role="1sWHZn">
        <node concept="3F0A7n" id="23xMseUumrf" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="23xMseUCgld">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="64eg:23xMseUC67l" resolve="CalculatorType" />
    <node concept="PMmxH" id="23xMseUCgli" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="5c4rtvXPufi">
    <ref role="1XX52x" to="64eg:5c4rtvXPueN" resolve="CalculationValue" />
    <node concept="3EZMnI" id="5c4rtvXPufk" role="2wV5jI">
      <node concept="3F0ifn" id="5c4rtvXPufr" role="3EZMnx">
        <property role="3F0ifm" value="value" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="5c4rtvXPuf_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="5c4rtvXPufH" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="5c4rtvXPufR" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:5c4rtvXPueO" resolve="initializer" />
      </node>
      <node concept="l2Vlx" id="5c4rtvXPufn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5c4rtvXQ3ja">
    <ref role="1XX52x" to="64eg:5c4rtvXQ3iH" resolve="CalculationValueReference" />
    <node concept="1iCGBv" id="5c4rtvXQ3jc" role="2wV5jI">
      <ref role="1NtTu8" to="64eg:5c4rtvXQ3iI" resolve="target" />
      <node concept="1sVBvm" id="5c4rtvXQ3je" role="1sWHZn">
        <node concept="3F0A7n" id="5c4rtvXQ3jo" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5c4rtvXSJj9">
    <ref role="1XX52x" to="64eg:5c4rtvXSJiG" resolve="OutputTable" />
    <node concept="3EZMnI" id="5c4rtvXSJjb" role="2wV5jI">
      <node concept="3F0ifn" id="5c4rtvXSJji" role="3EZMnx">
        <property role="3F0ifm" value="table" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="5c4rtvXTSVx" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4qqfUlqoQdt" resolve="Name" />
      </node>
      <node concept="3F0ifn" id="5c4rtvXTSWW" role="3EZMnx">
        <property role="3F0ifm" value="from" />
        <ref role="1k5W1q" node="4qqfUlqoQ94" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="5c4rtvXSJjo" role="3EZMnx">
        <ref role="1NtTu8" to="64eg:5c4rtvXSJiH" resolve="dataSource" />
      </node>
      <node concept="l2Vlx" id="5c4rtvXSJje" role="2iSdaV" />
    </node>
  </node>
</model>

