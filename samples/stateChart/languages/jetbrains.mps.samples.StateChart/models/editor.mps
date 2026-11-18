<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f2fc442e-c0f0-467d-ac9f-8f38c8182f6f(jetbrains.mps.samples.StateChart.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="oyog" ref="r:89aa1fb5-b463-4059-be0d-fc7ef188f902(jetbrains.mps.samples.StateChart.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
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
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <property id="6240706158490734113" name="collapseByDefault" index="3EXrWe" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="6240706158490734121" name="collapseByDefaultCondition" index="3EXrW6" />
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
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ngI" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="1id1$wMpDhI">
    <ref role="1XX52x" to="oyog:1id1$wMpeiz" resolve="Event" />
    <node concept="3F0A7n" id="2RZlCJYy479" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="1id1$wMpI0W">
    <ref role="1XX52x" to="oyog:1id1$wMpeiD" resolve="Transition" />
    <node concept="3EZMnI" id="1id1$wMpI0Y" role="2wV5jI">
      <node concept="3F0ifn" id="1id1$wMpI15" role="3EZMnx">
        <property role="3F0ifm" value="transit to" />
      </node>
      <node concept="1iCGBv" id="1id1$wMpI1b" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiG" resolve="target" />
        <node concept="1sVBvm" id="1id1$wMpI1d" role="1sWHZn">
          <node concept="3F0A7n" id="1id1$wMpI1l" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1id1$wMpI1u" role="3EZMnx">
        <property role="3F0ifm" value="upon" />
      </node>
      <node concept="1iCGBv" id="1id1$wMpI1G" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiE" resolve="trigger" />
        <node concept="1sVBvm" id="1id1$wMpI1I" role="1sWHZn">
          <node concept="3F0A7n" id="1id1$wMpI1U" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5Uf3geaGWzy" role="3EZMnx">
        <node concept="l2Vlx" id="5Uf3geaGWzz" role="2iSdaV" />
        <node concept="3F0ifn" id="5Uf3geaGWyk" role="3EZMnx">
          <property role="3F0ifm" value="while transiting do" />
          <node concept="ljvvj" id="5Uf3geaGWyx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="5Uf3geaGWyL" role="3EZMnx">
          <ref role="1NtTu8" to="oyog:5Uf3geaGWy6" resolve="onTransit" />
          <node concept="lj46D" id="5Uf3geaGWyZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5Uf3geaGWzg" role="3EZMnx">
          <property role="3F0ifm" value="end" />
          <node concept="pVoyu" id="5Uf3geaGWzw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pVoyu" id="5Uf3geaGW$A" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5Uf3geaGW$C" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="5Uf3geaH6QK" role="pqm2j">
          <node concept="3clFbS" id="5Uf3geaH6QL" role="2VODD2">
            <node concept="3clFbF" id="5Uf3geaGWFQ" role="3cqZAp">
              <node concept="2OqwBi" id="5Uf3geaH0jB" role="3clFbG">
                <node concept="2OqwBi" id="5Uf3geaGXJn" role="2Oq$k0">
                  <node concept="2OqwBi" id="5Uf3geaGWS1" role="2Oq$k0">
                    <node concept="pncrf" id="5Uf3geaGWFP" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5Uf3geaGXca" role="2OqNvi">
                      <ref role="3Tt5mk" to="oyog:5Uf3geaGWy6" resolve="onTransit" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5Uf3geaGYrN" role="2OqNvi">
                    <ref role="3TtcxE" to="oyog:5Uf3geaGAF2" resolve="operations" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5Uf3geaH3JX" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1id1$wMpI11" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1id1$wMpJYy">
    <ref role="1XX52x" to="oyog:1id1$wMpeiA" resolve="State" />
    <node concept="3EZMnI" id="1id1$wMpJY$" role="2wV5jI">
      <node concept="3F0ifn" id="1id1$wMpJYF" role="3EZMnx">
        <property role="3F0ifm" value="State:" />
      </node>
      <node concept="3F0A7n" id="1id1$wMpJYL" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="1id1$wMpJYP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1id1$wMpJZ8" role="3EZMnx">
        <property role="3F0ifm" value="initial state:" />
        <node concept="lj46D" id="1id1$wMpJZf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1id1$wMpJYW" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpoKY" resolve="isInitial" />
        <node concept="ljvvj" id="1id1$wMpJZh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1id1$wMpJZs" role="3EZMnx">
        <property role="3F0ifm" value="final state:" />
        <node concept="lj46D" id="1id1$wMpK09" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1id1$wMpJZK" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpCEF" resolve="isFinal" />
        <node concept="ljvvj" id="1id1$wMpJZV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="1id1$wMpK0b" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiJ" resolve="transitions" />
        <node concept="2iRkQZ" id="1id1$wMpK2N" role="2czzBx" />
        <node concept="lj46D" id="1id1$wMpK0r" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1id1$wMpK0t" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="5Uf3geaHDgk" role="3EZMnx">
        <node concept="VPM3Z" id="5Uf3geaHDgm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5Uf3geaHDpw" role="3EZMnx">
          <property role="3F0ifm" value="on entry do" />
          <node concept="ljvvj" id="5Uf3geaHDvZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="5Uf3geaHDw5" role="3EZMnx">
          <ref role="1NtTu8" to="oyog:5Uf3geaHD6P" resolve="onEntry" />
          <node concept="lj46D" id="5Uf3geaHDwa" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5Uf3geaHDwi" role="3EZMnx">
          <property role="3F0ifm" value="end" />
          <node concept="pVoyu" id="5Uf3geaHDwp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="5Uf3geaHDgp" role="2iSdaV" />
        <node concept="lj46D" id="5Uf3geaHDwr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="5Uf3geaHDwu" role="pqm2j">
          <node concept="3clFbS" id="5Uf3geaHDwv" role="2VODD2">
            <node concept="3clFbF" id="5Uf3geaHDBC" role="3cqZAp">
              <node concept="2OqwBi" id="5Uf3geaHHMC" role="3clFbG">
                <node concept="2OqwBi" id="5Uf3geaHF7A" role="2Oq$k0">
                  <node concept="2OqwBi" id="5Uf3geaHDPu" role="2Oq$k0">
                    <node concept="pncrf" id="5Uf3geaHDBB" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5Uf3geaHEy5" role="2OqNvi">
                      <ref role="3Tt5mk" to="oyog:5Uf3geaHD6P" resolve="onEntry" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5Uf3geaHFv$" role="2OqNvi">
                    <ref role="3TtcxE" to="oyog:5Uf3geaGAF2" resolve="operations" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5Uf3geaHLjc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5Uf3geaHLAh" role="3EZMnx">
        <node concept="VPM3Z" id="5Uf3geaHLAi" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5Uf3geaHLAj" role="3EZMnx">
          <property role="3F0ifm" value="on exit do" />
          <node concept="ljvvj" id="5Uf3geaHLAk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="5Uf3geaHLAl" role="3EZMnx">
          <ref role="1NtTu8" to="oyog:5Uf3geaHD7a" resolve="onExit" />
          <node concept="lj46D" id="5Uf3geaHLAm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5Uf3geaHLAn" role="3EZMnx">
          <property role="3F0ifm" value="end" />
          <node concept="pVoyu" id="5Uf3geaHLAo" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="5Uf3geaHLAp" role="2iSdaV" />
        <node concept="lj46D" id="5Uf3geaHLAq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="5Uf3geaHLAr" role="pqm2j">
          <node concept="3clFbS" id="5Uf3geaHLAs" role="2VODD2">
            <node concept="3clFbF" id="5Uf3geaHLAt" role="3cqZAp">
              <node concept="2OqwBi" id="5Uf3geaHLAu" role="3clFbG">
                <node concept="2OqwBi" id="5Uf3geaHLAv" role="2Oq$k0">
                  <node concept="2OqwBi" id="5Uf3geaHLAw" role="2Oq$k0">
                    <node concept="pncrf" id="5Uf3geaHLAx" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5Uf3geaHMQD" role="2OqNvi">
                      <ref role="3Tt5mk" to="oyog:5Uf3geaHD7a" resolve="onExit" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5Uf3geaHLAz" role="2OqNvi">
                    <ref role="3TtcxE" to="oyog:5Uf3geaGAF2" resolve="operations" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5Uf3geaHLA$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1id1$wMpK4Q" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="1id1$wMpK5i" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="5p4P5Xpjz8W" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="3EZMnI" id="5p4P5XpkHtU" role="3EZMnx">
          <node concept="2iRfu4" id="5p4P5XpkHtV" role="2iSdaV" />
          <node concept="3F0ifn" id="5p4P5XpkCVm" role="3EZMnx">
            <property role="3F0ifm" value="--------------------------------- " />
          </node>
          <node concept="1HlG4h" id="5p4P5XpkFJH" role="3EZMnx">
            <node concept="Vb9p2" id="5p4P5XpkHjj" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
            <node concept="1HfYo3" id="5p4P5XpkFJJ" role="1HlULh">
              <node concept="3TQlhw" id="5p4P5XpkFJL" role="1Hhtcw">
                <node concept="3clFbS" id="5p4P5XpkFJN" role="2VODD2">
                  <node concept="3clFbF" id="5p4P5XpkG3o" role="3cqZAp">
                    <node concept="2OqwBi" id="5p4P5XpkGhJ" role="3clFbG">
                      <node concept="pncrf" id="5p4P5XpkG3n" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5p4P5XpkGAW" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VechU" id="5p4P5XpkGY8" role="3F10Kt">
              <property role="Vb096" value="fLJRk5B/darkGray" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="5p4P5Xpjz8Y" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="5p4P5Xpjz91" role="2iSdaV" />
        <node concept="3EZMnI" id="5p4P5Xpjz9H" role="3EZMnx">
          <node concept="2iRfu4" id="5p4P5Xpjz9I" role="2iSdaV" />
          <node concept="3F0ifn" id="5p4P5Xpjz9k" role="3EZMnx">
            <property role="3F0ifm" value="Triggers:" />
          </node>
          <node concept="PMmxH" id="5p4P5XpjukK" role="3EZMnx">
            <ref role="PMmxG" node="5p4P5Xpjsx0" resolve="StateTriggers" />
            <node concept="ljvvj" id="5p4P5XpjukS" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="5p4P5Xpjzag" role="3EZMnx">
          <node concept="3F0ifn" id="5p4P5Xpjzay" role="3EZMnx">
            <property role="3F0ifm" value="Nested States:" />
          </node>
          <node concept="PMmxH" id="5p4P5XpjvhK" role="3EZMnx">
            <ref role="PMmxG" node="5p4P5Xpjvgi" resolve="StateStates" />
            <node concept="ljvvj" id="5p4P5XpjxNJ" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="5p4P5Xpjzai" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="5p4P5Xpjzal" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5p4P5XpkKTK" role="3EZMnx">
          <node concept="2iRfu4" id="5p4P5XpkKTL" role="2iSdaV" />
          <node concept="3F0ifn" id="5p4P5XpkKTM" role="3EZMnx">
            <property role="3F0ifm" value="--------------------------------- " />
          </node>
          <node concept="1HlG4h" id="5p4P5XpkKTN" role="3EZMnx">
            <node concept="Vb9p2" id="5p4P5XpkKTO" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
            <node concept="1HfYo3" id="5p4P5XpkKTP" role="1HlULh">
              <node concept="3TQlhw" id="5p4P5XpkKTQ" role="1Hhtcw">
                <node concept="3clFbS" id="5p4P5XpkKTR" role="2VODD2">
                  <node concept="3clFbF" id="5p4P5XpkKTS" role="3cqZAp">
                    <node concept="2OqwBi" id="5p4P5XpkKTT" role="3clFbG">
                      <node concept="pncrf" id="5p4P5XpkKTU" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5p4P5XpkKTV" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VechU" id="5p4P5XpkKTW" role="3F10Kt">
              <property role="Vb096" value="fLJRk5B/darkGray" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="5p4P5Xpjzcx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="5p4P5Xpjzc$" role="3EXrW6">
          <node concept="3clFbS" id="5p4P5Xpjzc_" role="2VODD2">
            <node concept="3clFbF" id="5p4P5Xpj$78" role="3cqZAp">
              <node concept="22lmx$" id="5p4P5XpjRuS" role="3clFbG">
                <node concept="2OqwBi" id="5p4P5XpjBBG" role="3uHU7w">
                  <node concept="2OqwBi" id="5p4P5Xpj$kR" role="2Oq$k0">
                    <node concept="pncrf" id="5p4P5Xpj$77" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5p4P5Xpj$Gs" role="2OqNvi">
                      <ref role="3TtcxE" to="oyog:1id1$wMpeiN" resolve="states" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="5p4P5XpjGaF" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="5p4P5XpjMj1" role="3uHU7B">
                  <node concept="2OqwBi" id="5p4P5XpjJg6" role="2Oq$k0">
                    <node concept="pncrf" id="5p4P5XpjJ24" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5p4P5XpjJIs" role="2OqNvi">
                      <ref role="3TtcxE" to="oyog:1id1$wMpeiL" resolve="availableTriggers" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="5p4P5XpjQpF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HlG4h" id="29xq$PBIrMX" role="AHCbl">
          <node concept="Vb9p2" id="5p4P5Xpk$n7" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VechU" id="5p4P5Xpk$nh" role="3F10Kt">
            <property role="Vb096" value="fLJRk5B/darkGray" />
          </node>
          <node concept="1HfYo3" id="29xq$PBIrN1" role="1HlULh">
            <node concept="3TQlhw" id="29xq$PBIrN5" role="1Hhtcw">
              <node concept="3clFbS" id="29xq$PBIrN9" role="2VODD2">
                <node concept="3clFbJ" id="29xq$PBIs7U" role="3cqZAp">
                  <node concept="2OqwBi" id="29xq$PBIv_6" role="3clFbw">
                    <node concept="2OqwBi" id="29xq$PBIsvy" role="2Oq$k0">
                      <node concept="pncrf" id="29xq$PBIsgr" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="29xq$PBIsQj" role="2OqNvi">
                        <ref role="3TtcxE" to="oyog:1id1$wMpeiN" resolve="states" />
                      </node>
                    </node>
                    <node concept="1v1jN8" id="29xq$PBI$CT" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="29xq$PBIs7W" role="3clFbx">
                    <node concept="3cpWs6" id="29xq$PBI$Oo" role="3cqZAp">
                      <node concept="Xl_RD" id="29xq$PBI_bq" role="3cqZAk">
                        <property role="Xl_RC" value="... no nested states ..." />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="29xq$PBIAZm" role="9aQIa">
                    <node concept="3clFbS" id="29xq$PBIAZn" role="9aQI4">
                      <node concept="3cpWs6" id="29xq$PBIBb2" role="3cqZAp">
                        <node concept="3cpWs3" id="29xq$PBIPQF" role="3cqZAk">
                          <node concept="Xl_RD" id="29xq$PBIQ83" role="3uHU7w">
                            <property role="Xl_RC" value=" nested states ..." />
                          </node>
                          <node concept="3cpWs3" id="29xq$PBICBn" role="3uHU7B">
                            <node concept="Xl_RD" id="29xq$PBIByx" role="3uHU7B">
                              <property role="Xl_RC" value="... " />
                            </node>
                            <node concept="2OqwBi" id="29xq$PBIFUO" role="3uHU7w">
                              <node concept="2OqwBi" id="29xq$PBID54" role="2Oq$k0">
                                <node concept="pncrf" id="29xq$PBICNk" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="29xq$PBIDvg" role="2OqNvi">
                                  <ref role="3TtcxE" to="oyog:1id1$wMpeiN" resolve="states" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="29xq$PBIKZK" role="2OqNvi" />
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
        </node>
      </node>
      <node concept="3F0ifn" id="2RZlCJYxUMh" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="l2Vlx" id="1id1$wMpJYB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1id1$wMpOKT">
    <ref role="1XX52x" to="oyog:1id1$wMpehE" resolve="StateChart" />
    <node concept="3EZMnI" id="1id1$wMpOKV" role="2wV5jI">
      <node concept="3F0ifn" id="1id1$wMpOL2" role="3EZMnx">
        <property role="3F0ifm" value="State chart" />
      </node>
      <node concept="3F0A7n" id="1id1$wMpOLc" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="1id1$wMpOM2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1id1$wMpOM9" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="1id1$wMpOMf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5p4P5XpjulL" role="3EZMnx">
        <property role="3F0ifm" value="Triggers:" />
        <node concept="lj46D" id="5p4P5XpjviA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="5p4P5XpjulX" role="3EZMnx">
        <ref role="PMmxG" node="5p4P5Xpjsx0" resolve="StateTriggers" />
        <node concept="ljvvj" id="5p4P5Xpjum3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5p4P5Xpjvib" role="3EZMnx">
        <property role="3F0ifm" value="States:" />
        <node concept="lj46D" id="5p4P5XpjviC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="5p4P5Xpjvit" role="3EZMnx">
        <ref role="PMmxG" node="5p4P5Xpjvgi" resolve="StateStates" />
        <node concept="ljvvj" id="5p4P5Xpk8pi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1id1$wMpOKY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Uf3geaGADN">
    <property role="3GE5qa" value="operations" />
    <ref role="1XX52x" to="oyog:5Uf3geaGADK" resolve="Raise" />
    <node concept="3EZMnI" id="5Uf3geaGADP" role="2wV5jI">
      <node concept="3F0ifn" id="5Uf3geaGADW" role="3EZMnx">
        <property role="3F0ifm" value="raise" />
      </node>
      <node concept="1iCGBv" id="5Uf3geaGAE2" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:5Uf3geaGADL" resolve="event" />
        <node concept="1sVBvm" id="5Uf3geaGAE4" role="1sWHZn">
          <node concept="3F0A7n" id="5Uf3geaGAEf" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5Uf3geaGADS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Uf3geaGAEI">
    <property role="3GE5qa" value="operations" />
    <ref role="1XX52x" to="oyog:5Uf3geaGAEi" resolve="Log" />
    <node concept="3EZMnI" id="5Uf3geaGAEK" role="2wV5jI">
      <node concept="3F0ifn" id="5Uf3geaGAER" role="3EZMnx">
        <property role="3F0ifm" value="log" />
      </node>
      <node concept="3F0A7n" id="5Uf3geaGAEX" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:5Uf3geaGAEj" resolve="value" />
      </node>
      <node concept="l2Vlx" id="5Uf3geaGAEN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Uf3geaGAFt">
    <property role="3GE5qa" value="operations" />
    <ref role="1XX52x" to="oyog:5Uf3geaGAF1" resolve="OperationsList" />
    <node concept="3F2HdR" id="5Uf3geaGAFB" role="2wV5jI">
      <ref role="1NtTu8" to="oyog:5Uf3geaGAF2" resolve="operations" />
      <node concept="2iRkQZ" id="5Uf3geaGAFE" role="2czzBx" />
    </node>
  </node>
  <node concept="24kQdi" id="5Uf3geaGAGw">
    <property role="3GE5qa" value="operations" />
    <ref role="1XX52x" to="oyog:5Uf3geaGAFG" resolve="EmptyOperation" />
    <node concept="3F0ifn" id="5Uf3geaGAGy" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <node concept="VPxyj" id="5Uf3geaGDFd" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="5Uf3geaLUhc">
    <property role="TrG5h" value="StateChartContents" />
    <ref role="1XX52x" to="oyog:2RZlCJYvtyP" resolve="Stateful" />
    <node concept="3EZMnI" id="5Uf3geaLUhh" role="2wV5jI">
      <node concept="3F0ifn" id="5Uf3geaLUho" role="3EZMnx">
        <property role="3F0ifm" value="Triggers" />
        <node concept="lj46D" id="5Uf3geaLUhp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5Uf3geaLUhq" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiL" resolve="availableTriggers" />
        <node concept="2iRkQZ" id="5Uf3geaLUhr" role="2czzBx" />
        <node concept="ljvvj" id="5Uf3geaLUhs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Uf3geaLUht" role="3EZMnx">
        <property role="3F0ifm" value="States:" />
        <node concept="lj46D" id="5Uf3geaLUhu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5Uf3geaLUhv" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiN" resolve="states" />
        <node concept="2iRkQZ" id="5Uf3geaLUhw" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="5Uf3geaLUhk" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="5p4P5Xpjsyq">
    <property role="TrG5h" value="StateTransitions" />
    <ref role="1XX52x" to="oyog:1id1$wMpeiA" resolve="State" />
    <node concept="3F2HdR" id="5p4P5Xpjsys" role="2wV5jI">
      <ref role="1NtTu8" to="oyog:1id1$wMpeiJ" resolve="transitions" />
      <node concept="2iRkQZ" id="5p4P5Xpjsyv" role="2czzBx" />
    </node>
  </node>
  <node concept="PKFIW" id="5p4P5Xpjsx0">
    <property role="TrG5h" value="StateTriggers" />
    <ref role="1XX52x" to="oyog:2RZlCJYvtyP" resolve="Stateful" />
    <node concept="3F2HdR" id="5p4P5XpjsxS" role="2wV5jI">
      <ref role="1NtTu8" to="oyog:1id1$wMpeiL" resolve="availableTriggers" />
      <node concept="2iRkQZ" id="5p4P5XpjsxV" role="2czzBx" />
    </node>
  </node>
  <node concept="PKFIW" id="5p4P5Xpjvgi">
    <property role="TrG5h" value="StateStates" />
    <ref role="1XX52x" to="oyog:2RZlCJYvtyP" resolve="Stateful" />
    <node concept="3F2HdR" id="5p4P5Xpjvgk" role="2wV5jI">
      <ref role="1NtTu8" to="oyog:1id1$wMpeiN" resolve="states" />
      <node concept="2iRkQZ" id="5p4P5Xpjvgn" role="2czzBx" />
    </node>
  </node>
  <node concept="3ICUPy" id="5Uf3geaH9Ew">
    <ref role="aqKnT" to="oyog:1id1$wMpeiD" resolve="Transition" />
    <node concept="22hDWj" id="xzgvwPPqqV" role="22hAXT" />
    <node concept="1Qtc8_" id="5Uf3geaH9Ex" role="IW6Ez">
      <node concept="3cWJ9i" id="5Uf3geaH9E_" role="1Qtc8$">
        <node concept="CtIbL" id="5Uf3geaH9EB" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="5Uf3geaH9EF" role="1Qtc8A">
        <node concept="1hCUdq" id="5Uf3geaH9EG" role="1hCUd6">
          <node concept="3clFbS" id="5Uf3geaH9EH" role="2VODD2">
            <node concept="3clFbF" id="5Uf3geaH9Nj" role="3cqZAp">
              <node concept="Xl_RD" id="5Uf3geaH9Ni" role="3clFbG">
                <property role="Xl_RC" value="when transiting" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5Uf3geaH9EI" role="IWgqQ">
          <node concept="3clFbS" id="5Uf3geaH9EJ" role="2VODD2">
            <node concept="3clFbF" id="5Uf3geaHkH2" role="3cqZAp">
              <node concept="2OqwBi" id="5Uf3geaHoRY" role="3clFbG">
                <node concept="2OqwBi" id="5Uf3geaHlOY" role="2Oq$k0">
                  <node concept="2OqwBi" id="5Uf3geaHkNW" role="2Oq$k0">
                    <node concept="7Obwk" id="5Uf3geaHkH1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5Uf3geaHlxq" role="2OqNvi">
                      <ref role="3Tt5mk" to="oyog:5Uf3geaGWy6" resolve="onTransit" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5Uf3geaHnno" role="2OqNvi">
                    <ref role="3TtcxE" to="oyog:5Uf3geaGAF2" resolve="operations" />
                  </node>
                </node>
                <node concept="2DeJg1" id="5Uf3geaH_AU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5Uf3geaHah7" role="2jiSrf">
          <node concept="3clFbS" id="5Uf3geaHah8" role="2VODD2">
            <node concept="3clFbF" id="5Uf3geaHaon" role="3cqZAp">
              <node concept="2OqwBi" id="5Uf3geaHepe" role="3clFbG">
                <node concept="2OqwBi" id="5Uf3geaHbaq" role="2Oq$k0">
                  <node concept="2OqwBi" id="5Uf3geaHa$y" role="2Oq$k0">
                    <node concept="7Obwk" id="5Uf3geaHaom" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5Uf3geaHaP6" role="2OqNvi">
                      <ref role="3Tt5mk" to="oyog:5Uf3geaGWy6" resolve="onTransit" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5Uf3geaHcxq" role="2OqNvi">
                    <ref role="3TtcxE" to="oyog:5Uf3geaGAF2" resolve="operations" />
                  </node>
                </node>
                <node concept="1v1jN8" id="5Uf3geaHku9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="5Uf3geaGAG6">
    <ref role="aqKnT" to="oyog:5Uf3geaGAFG" resolve="EmptyOperation" />
    <node concept="22hDWj" id="xzgvwPPqqW" role="22hAXT" />
  </node>
  <node concept="2ABfQD" id="1bheBWAD8hw">
    <property role="TrG5h" value="StateChartViews" />
    <node concept="2BsEeg" id="1bheBWAD8hx" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="review" />
      <property role="2BUmq6" value="Review" />
    </node>
  </node>
  <node concept="24kQdi" id="1bheBWAD9Ru">
    <property role="TrG5h" value="State_Review_Editor" />
    <ref role="1XX52x" to="oyog:1id1$wMpeiA" resolve="State" />
    <node concept="2aJ2om" id="1bheBWAD9Rv" role="CpUAK">
      <ref role="2$4xQ3" node="1bheBWAD8hx" resolve="review" />
    </node>
    <node concept="3EZMnI" id="1bheBWAD9Rw" role="2wV5jI">
      <node concept="l2Vlx" id="1bheBWAD9Rx" role="2iSdaV" />
      <node concept="PMmxH" id="1bheBWAD9Ry" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0A7n" id="1bheBWAD9Rz" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1bheBWAD9R$" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F2HdR" id="1bheBWAD9R_" role="3EZMnx">
        <property role="2czwfO" value=";" />
        <ref role="1NtTu8" to="oyog:1id1$wMpeiJ" resolve="transitions" />
        <node concept="l2Vlx" id="1bheBWAD9RA" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="1bheBWAD9RB" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1bheBWAD9RC">
    <property role="TrG5h" value="Transition_Review_Editor" />
    <ref role="1XX52x" to="oyog:1id1$wMpeiD" resolve="Transition" />
    <node concept="2aJ2om" id="1bheBWAD9RD" role="CpUAK">
      <ref role="2$4xQ3" node="1bheBWAD8hx" resolve="review" />
    </node>
    <node concept="3EZMnI" id="1bheBWAD9RE" role="2wV5jI">
      <node concept="l2Vlx" id="1bheBWAD9RF" role="2iSdaV" />
      <node concept="3F0ifn" id="1bheBWAD9RG" role="3EZMnx">
        <property role="3F0ifm" value="on" />
      </node>
      <node concept="3F0ifn" id="1bheBWAD9RH" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11LMrY" id="1bheBWAD9RI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="1bheBWAD9RJ" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiE" resolve="trigger" />
        <node concept="1sVBvm" id="1bheBWAD9RK" role="1sWHZn">
          <node concept="3F0A7n" id="1bheBWAD9RL" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1bheBWAD9RM" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="1bheBWAD9RN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1bheBWAD9RO" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="1iCGBv" id="1bheBWAD9RP" role="3EZMnx">
        <ref role="1NtTu8" to="oyog:1id1$wMpeiG" resolve="target" />
        <node concept="1sVBvm" id="1bheBWAD9RQ" role="1sWHZn">
          <node concept="3F0A7n" id="1bheBWAD9RR" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

