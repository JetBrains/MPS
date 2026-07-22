<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590384(jetbrains.mps.lang.test.editor)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="rliy" ref="r:00a69138-8767-4011-a710-463511eae7a6(jetbrains.mps.lang.test.plugin)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpch" ref="r:00000000-0000-4000-0000-011c8959028d(jetbrains.mps.lang.structure.editor)" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="yctd" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.findUsages(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tpdd" ref="r:00000000-0000-4000-0000-011c895902ad(jetbrains.mps.lang.typesystem.behavior)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="tpc5" ref="r:00000000-0000-4000-0000-011c89590299(jetbrains.mps.lang.editor.editor)" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" />
    <import index="tpe0" ref="r:00000000-0000-4000-0000-011c895902d4(jetbrains.mps.baseLanguage.unitTest.editor)" />
    <import index="53vh" ref="r:53885008-7612-46ff-8b11-27f1d42c3adb(jetbrains.mps.lang.migration.structure)" />
    <import index="bm42" ref="r:83f25986-cdbc-469a-a327-db97a2ec5a39(jetbrains.mps.lang.constraints.rules.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="ng" index="3zqWPK" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="ng" index="0IXxy" />
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ngI" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1164052439493" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_MatchingText" flags="ig" index="6VE3a" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="ng" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="ng" index="2iRkQZ" />
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="ng" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="lg" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="lg" index="ljvvj" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="ig" index="2o9xnK" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="lg" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="ig" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="ng" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="lg" index="pVoyu" />
      <concept id="1134379236839" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedPropertyCell" flags="ng" index="uhnNJ" />
      <concept id="1136564507907" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedLinkCell" flags="ng" index="2wxxgb" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
      </concept>
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
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
      <concept id="1160493135005" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues_GetValues" flags="ig" index="MLZmj" />
      <concept id="4151393920374910634" name="jetbrains.mps.lang.editor.structure.StyleKey" flags="ng" index="2NdhxG" />
      <concept id="4151393920374910722" name="jetbrains.mps.lang.editor.structure.StyleKeyPack" flags="ng" index="2NdhB4">
        <child id="4151393920375014512" name="styleKey" index="2NdZaQ" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164833692343" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues" flags="ng" index="PvTIS">
        <child id="1164833692344" name="valuesFunction" index="PvTIR" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="lg" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="lg" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="lg" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="lg" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="lg" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="lg" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="lg" index="VPRnO" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="lg" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
      </concept>
      <concept id="1074767920765" name="jetbrains.mps.lang.editor.structure.CellModel_ModelAccess" flags="sg" stub="8104358048506729357" index="XafU7">
        <property id="1082638248796" name="nullText" index="ihaIw" />
        <child id="1176718152741" name="modelAcessor" index="3TRxkO" />
      </concept>
      <concept id="1184319644772" name="jetbrains.mps.lang.editor.structure.CellModel_NonEmptyProperty" flags="sg" stub="730538219796134178" index="2YWUlR" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ngI" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="lg" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="lg" index="11LMrY" />
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="lg" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <property id="1165254125954" name="presentation" index="1ezIyd" />
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
        <child id="1165254159533" name="matchingTextFunction" index="1ezQQy" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="ig" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="lg" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="lg" index="3nxI2P" />
      <concept id="1165420413719" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group" flags="ng" index="1ou48o">
        <child id="1165420413721" name="handlerFunction" index="1ou48m" />
        <child id="1165420413720" name="parametersFunction" index="1ou48n" />
      </concept>
      <concept id="1165420626554" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group_Handler" flags="ig" index="1ouSdP" />
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="ig" index="1oIgkG" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="lg" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1227861515039" name="jetbrains.mps.lang.editor.structure.NavigatableReferenceStyleClassItem" flags="lg" index="3yfXC2">
        <reference id="1227861587090" name="link" index="3ygfmf" />
      </concept>
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="lg" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="lg" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="lg" index="1Bsynf" />
      <concept id="7667708318090877006" name="jetbrains.mps.lang.editor.structure.IndentLayoutWrapAnchorStyleClassItem" flags="lg" index="1Bt7hp" />
      <concept id="1215085197271" name="jetbrains.mps.lang.editor.structure.LastPositionAllowedStyleClassItem" flags="lg" index="3CIbrd" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sg" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sg" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <child id="5861024100072578575" name="addHints" index="3xwHhi" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1163613035599" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_Query" flags="ig" index="3GJtP1" />
      <concept id="1163613549566" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_parameterObject" flags="ng" index="3GLrbK" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="ng" index="3GMtW1" />
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
      <concept id="6684862045052272180" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_NodeToWrap" flags="ng" index="3N4pyC" />
      <concept id="6684862045052059649" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_WrapperHandler" flags="ig" index="3N5aqt" />
      <concept id="6684862045052059291" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Wrapper" flags="ng" index="3N5dw7">
        <child id="6089045305655104958" name="reference" index="2klrvf" />
        <child id="6684862045053873740" name="handler" index="3Na0zg" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="ng" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="ng" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717779940" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_text" flags="ng" index="3TQ6bP" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="ig" index="3TQlhw" />
      <concept id="1176717871254" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Setter" flags="ig" index="3TQsA7" />
      <concept id="1176717888428" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Validator" flags="ig" index="3TQwEX" />
      <concept id="1176717996748" name="jetbrains.mps.lang.editor.structure.ModelAccessor" flags="ng" index="3TQVft">
        <child id="1176718001874" name="getter" index="3TQWv3" />
        <child id="1176718007938" name="setter" index="3TQXYj" />
        <child id="1176718014393" name="validator" index="3TQZqC" />
      </concept>
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="ng" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="ng" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="ng" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="ig" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="ng" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="ng" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="ng" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="ng" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="ig" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="ng" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="ng" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="ng" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="ng" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="ng" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="ng" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="ng" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="ig" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="ng" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="ng" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="ng" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="ng" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="ng" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sg" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="ng" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="ng" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="ng" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="ng" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="ng" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="ng" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="ng" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="ig" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="ng" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="ng" index="3y3z36" />
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="ng" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="ng" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="ng" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="ng" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="ng" index="SfwO_" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="ng" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="ng" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="ng" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="ng" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="ng" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="ng" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="ng" index="$5XWr">
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="ng" index="I4A8Y" />
      <concept id="8329979535468945057" name="jetbrains.mps.lang.smodel.structure.Node_PresentationOperation" flags="ng" index="2Iv5rx" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="ng" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="ng" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1176109685393" name="jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation" flags="ng" index="3lApI0">
        <child id="6750920497477143611" name="conceptArgument" index="3MHPDn" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="ng" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="ng" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="ng" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="ng" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="ng" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="ig" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="ng" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="ng" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="ng" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="ng" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="ng" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="ng" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="ig" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="ng" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="ig" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="ng" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="ng" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="ng" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="ng" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="ng" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="ng" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="ng" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="ng" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="ng" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="ng" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="ng" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="hBxLYGT">
    <ref role="1XX52x" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
    <node concept="3EZMnI" id="hBxLZJn" role="2wV5jI">
      <node concept="3F0ifn" id="hBxM0Xm" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F0A7n" id="hBxM0lw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="hGd_SRr" resolve="NodeAnnotation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <node concept="3$7jql" id="hGdBDx$" role="3F10Kt">
          <property role="3$6WeP" value="1.0" />
        </node>
      </node>
      <node concept="2SsqMj" id="hBxMcjE" role="3EZMnx" />
      <node concept="3F0ifn" id="hBxMcOr" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2iRfu4" id="i2ICqHq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hBxORFd">
    <ref role="1XX52x" to="tp5g:hBxON8j" resolve="TestNodeReference" />
    <node concept="1iCGBv" id="hBxOTaL" role="2wV5jI">
      <ref role="1NtTu8" to="tp5g:hBxOPr6" resolve="declaration" />
      <node concept="1sVBvm" id="hBxOTaM" role="1sWHZn">
        <node concept="3F0A7n" id="hBxOTJd" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="hGd_SRr" resolve="NodeAnnotation" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hCJAwke">
    <property role="3GE5qa" value="asserts" />
    <ref role="1XX52x" to="tp5g:hCJA54K" resolve="AssertMatch" />
    <node concept="3EZMnI" id="hCJAPqN" role="2wV5jI">
      <node concept="3F0ifn" id="hCJAQsK" role="3EZMnx">
        <property role="3F0ifm" value="assert" />
        <ref role="1k5W1q" node="hFqhsME" resolve="AssertStyle" />
      </node>
      <node concept="3F0ifn" id="hCJLaOn" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="hCJATAs" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp5g:hCJA96l" resolve="before" />
        <node concept="l2Vlx" id="i1BONmP" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="hCJLdv3" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="hCJAYEV" role="3EZMnx">
        <property role="3F0ifm" value="match" />
        <ref role="1k5W1q" node="hFqhsME" resolve="AssertStyle" />
      </node>
      <node concept="3F0ifn" id="hCJLhCI" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="hCJB14K" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp5g:hCJAdgf" resolve="after" />
        <node concept="l2Vlx" id="i1BOOtY" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="hCJLl2N" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="PMmxH" id="4uU5oUYY2Mu" role="3EZMnx">
        <ref role="PMmxG" to="tpe0:4uU5oUYY2Mi" resolve="MessageComponent" />
        <node concept="VPM3Z" id="5$EexpDmvOZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="hCJB45T" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="i0Nmw$I" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="hFqhqNG">
    <property role="TrG5h" value="transformationTest" />
    <node concept="14StLt" id="hFqhsME" role="V601i">
      <property role="TrG5h" value="AssertStyle" />
      <node concept="VechU" id="hFqhDAL" role="3F10Kt">
        <property role="Vb096" value="fLwANPu/blue" />
      </node>
    </node>
    <node concept="14StLt" id="hGd_SRr" role="V601i">
      <property role="TrG5h" value="NodeAnnotation" />
      <node concept="VQ3r3" id="hGdCbAq" role="3F10Kt">
        <property role="2USNnj" value="gtbM8PH/2" />
      </node>
      <node concept="VechU" id="hGdCMKD" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="hGdEPg1" role="V601i">
      <property role="TrG5h" value="NodeOperation" />
      <node concept="VechU" id="hGdETX_" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
      </node>
      <node concept="Vb9p2" id="7cmDwXU1c7w" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="7uNrZ$pp7Rn" role="V601i">
      <property role="TrG5h" value="TestLabel" />
      <node concept="VQ3r3" id="7uNrZ$pp7RX" role="3F10Kt">
        <property role="2USNnj" value="gtbM8PH/2" />
      </node>
      <node concept="Vb9p2" id="7uNrZ$pp7Sg" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="7uNrZ$pp7RR" role="3F10Kt">
        <property role="Vb096" value="fLJRk5B/darkGray" />
      </node>
    </node>
    <node concept="14StLt" id="hQUhkJ8" role="V601i">
      <property role="TrG5h" value="EditorOperation" />
      <node concept="VechU" id="hQUhoG$" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
      </node>
    </node>
    <node concept="14StLt" id="75A9veqzBnk" role="V601i">
      <property role="TrG5h" value="AnyBracket" />
      <node concept="34QqEe" id="75A9veqzBnl" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="75A9veqzBnn" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="hF$iCJm" role="V601i">
      <property role="TrG5h" value="Parenthesis" />
      <node concept="3Xmtl4" id="2jpN4Xvjl9d" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl9e" role="3XvnJa">
          <ref role="1wgcnl" node="75A9veqzBnk" resolve="AnyBracket" />
        </node>
      </node>
      <node concept="3Xmtl4" id="2jpN4Xvjl8P" role="3F10Kt">
        <node concept="1wgc9g" id="41csb_kfALI" role="3XvnJa">
          <ref role="1wgcnl" node="3yX4vo1QFNt" />
        </node>
      </node>
      <node concept="3mYdg7" id="i14cPte" role="3F10Kt">
        <property role="1413C4" value="parenthesis" />
      </node>
    </node>
    <node concept="14StLt" id="hFCSAw$" role="V601i">
      <property role="TrG5h" value="LeftParen" />
      <node concept="3Xmtl4" id="2jpN4Xvjl98" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl99" role="3XvnJa">
          <ref role="1wgcnl" node="hF$iCJm" resolve="Parenthesis" />
        </node>
      </node>
      <node concept="11LMrY" id="i11Rb6B" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hFCSUmN" role="V601i">
      <property role="TrG5h" value="RightParen" />
      <node concept="3Xmtl4" id="2jpN4Xvjl8Y" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl8Z" role="3XvnJa">
          <ref role="1wgcnl" node="hF$iCJm" resolve="Parenthesis" />
        </node>
      </node>
      <node concept="11L4FC" id="hX1U7Dc" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hY9fg1G" role="V601i">
      <property role="TrG5h" value="LeftParenAfterName" />
      <node concept="3Xmtl4" id="2jpN4Xvjl93" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl94" role="3XvnJa">
          <ref role="1wgcnl" node="hFCSAw$" resolve="LeftParen" />
        </node>
      </node>
      <node concept="11L4FC" id="hY9fOTE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hG1TRPI">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:hG1TMwX" resolve="NodeErrorCheckOperation" />
    <node concept="3EZMnI" id="7uNrZ$pvgnx" role="2wV5jI">
      <node concept="PMmxH" id="nMEi6GLwvB" role="3EZMnx">
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="nMEi6GN3QG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="3J6bWQr0BTN" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:7nf9pEwhZWl" resolve="errorRef" />
        <node concept="OXEIz" id="2TGpZRbmmxU" role="P5bDN">
          <node concept="1ou48o" id="2TGpZRbndZJ" role="OY2wv">
            <property role="1ezIyd" value="gWZP3tU/custom" />
            <node concept="3GJtP1" id="2TGpZRbndZK" role="1ou48n">
              <node concept="3clFbS" id="2TGpZRbndZL" role="2VODD2">
                <node concept="3cpWs8" id="YtwwC4IiP$" role="3cqZAp">
                  <node concept="3cpWsn" id="YtwwC4IiP_" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3uibUv" id="YtwwC4IiPx" role="1tU5fm">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="1eOMI4" id="YtwwC4IiPA" role="33vP2m">
                      <node concept="10QFUN" id="YtwwC4IiPB" role="1eOMHV">
                        <node concept="2OqwBi" id="YtwwC4IiPC" role="10QFUP">
                          <node concept="2JrnkZ" id="YtwwC4IiPD" role="2Oq$k0">
                            <node concept="2OqwBi" id="YtwwC4IiPE" role="2JrQYb">
                              <node concept="3GMtW1" id="YtwwC4IiPF" role="2Oq$k0" />
                              <node concept="I4A8Y" id="YtwwC4IiPG" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="YtwwC4IiPH" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="YtwwC4IiPI" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="60nu8cesPfx" role="3cqZAp">
                  <node concept="3cpWsn" id="60nu8cesPfy" role="3cpWs9">
                    <property role="TrG5h" value="cs" />
                    <node concept="2hMVRd" id="60nu8cesUvq" role="1tU5fm">
                      <node concept="3uibUv" id="60nu8cesUvs" role="2hN53Y">
                        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="60nu8cesPfz" role="33vP2m">
                      <node concept="2i4dXS" id="60nu8cesUdO" role="2ShVmc">
                        <node concept="3uibUv" id="60nu8cesUdS" role="HW$YZ">
                          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                        </node>
                        <node concept="35c_gC" id="60nu8cesUdQ" role="HW$Y0">
                          <ref role="35c_gD" to="tpd4:h6MkqoE" resolve="ReportErrorStatement" />
                        </node>
                        <node concept="35c_gC" id="2TAxyaPzQSW" role="HW$Y0">
                          <ref role="35c_gD" to="bm42:6kKc3mjm6Ry" resolve="Rule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="YtwwC4KagK" role="3cqZAp">
                  <node concept="3cpWsn" id="YtwwC4KagL" role="3cpWs9">
                    <property role="TrG5h" value="errorInstances" />
                    <node concept="2OqwBi" id="YtwwC4KagM" role="33vP2m">
                      <node concept="2YIFZM" id="YtwwC4KagN" role="2Oq$k0">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="yctd:~FindUsagesManager" resolve="FindUsagesManager" />
                      </node>
                      <node concept="liA8E" id="YtwwC4KagO" role="2OqNvi">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                        <node concept="2OqwBi" id="YtwwC4KagP" role="37wK5m">
                          <node concept="37vLTw" id="YtwwC4KagQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="YtwwC4IiP_" resolve="module" />
                          </node>
                          <node concept="liA8E" id="YtwwC4KagR" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="60nu8cesPfB" role="37wK5m">
                          <ref role="3cqZAo" node="60nu8cesPfy" resolve="cs" />
                        </node>
                        <node concept="3clFbT" id="YtwwC4KagU" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="2ShNRf" id="YtwwC4KagV" role="37wK5m">
                          <node concept="1pGfFk" id="YtwwC4KagW" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2hMVRd" id="YtwwC4Kevx" role="1tU5fm">
                      <node concept="3uibUv" id="YtwwC4Kghb" role="2hN53Y">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="YtwwC4Koo_" role="3cqZAp">
                  <node concept="2OqwBi" id="YtwwC4Kqf8" role="3clFbG">
                    <node concept="37vLTw" id="YtwwC4Koo$" role="2Oq$k0">
                      <ref role="3cqZAo" node="YtwwC4KagL" resolve="errorInstances" />
                    </node>
                    <node concept="ANE8D" id="YtwwC4KvzC" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="2TGpZRbndZM" role="1ou48m">
              <node concept="3clFbS" id="2TGpZRbndZN" role="2VODD2">
                <node concept="3clFbJ" id="4wdCbMCaFT5" role="3cqZAp">
                  <node concept="3eNFk2" id="4wdCbMCaFT6" role="3eNLev">
                    <node concept="3clFbS" id="4wdCbMCaFT7" role="3eOfB_">
                      <node concept="3clFbF" id="4wdCbMCb9rR" role="3cqZAp">
                        <node concept="37vLTI" id="4wdCbMCb9rS" role="3clFbG">
                          <node concept="2ShNRf" id="4wdCbMCb9rT" role="37vLTx">
                            <node concept="3zrR0B" id="4wdCbMCb9rU" role="2ShVmc">
                              <node concept="3Tqbb2" id="4wdCbMCb9rV" role="3zrR0E">
                                <ref role="ehGHo" to="tp5g:6EW1JnOFKPB" resolve="UnknownRuleReference" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4wdCbMCb9rW" role="37vLTJ">
                            <node concept="3GMtW1" id="4wdCbMCb9rX" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4wdCbMCb9rY" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:7nf9pEwhZWl" resolve="errorRef" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4wdCbMCb9rZ" role="3cqZAp">
                        <node concept="37vLTI" id="4wdCbMCb9s0" role="3clFbG">
                          <node concept="3GLrbK" id="4wdCbMCb9s1" role="37vLTx" />
                          <node concept="2OqwBi" id="4wdCbMCb9s2" role="37vLTJ">
                            <node concept="2OqwBi" id="4wdCbMCb9s3" role="2Oq$k0">
                              <node concept="3GMtW1" id="4wdCbMCb9s4" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4wdCbMCb9s5" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:7nf9pEwhZWl" resolve="errorRef" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="4wdCbMCb9s6" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:7eBNsYUkvtl" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4wdCbMCaFTe" role="3eO9$A">
                      <node concept="3GLrbK" id="4wdCbMCaFTf" role="2Oq$k0" />
                      <node concept="1mIQ4w" id="4wdCbMCaFTg" role="2OqNvi">
                        <node concept="chp4Y" id="4wdCbMCaFTh" role="cj9EA">
                          <ref role="cht4Q" to="bm42:6kKc3mjm6Ry" resolve="Rule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="4wdCbMCaFTi" role="3clFbx">
                    <node concept="3clFbF" id="2TGpZRbCFPi" role="3cqZAp">
                      <node concept="37vLTI" id="2TGpZRbDTVy" role="3clFbG">
                        <node concept="2ShNRf" id="2TGpZRbDTYC" role="37vLTx">
                          <node concept="3zrR0B" id="2TGpZRbDUgW" role="2ShVmc">
                            <node concept="3Tqbb2" id="2TGpZRbDUgY" role="3zrR0E">
                              <ref role="ehGHo" to="tp5g:3VyMYUb6r1H" resolve="ReportErrorStatementReference" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2TGpZRbCGlM" role="37vLTJ">
                          <node concept="3GMtW1" id="2TGpZRbCFPg" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2TGpZRbDSNx" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:7nf9pEwhZWl" resolve="errorRef" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2TGpZRbDUm2" role="3cqZAp">
                      <node concept="37vLTI" id="2TGpZRbDXMn" role="3clFbG">
                        <node concept="3GLrbK" id="2TGpZRbDXQZ" role="37vLTx" />
                        <node concept="2OqwBi" id="2TGpZRbDWEL" role="37vLTJ">
                          <node concept="2OqwBi" id="2TGpZRbDUus" role="2Oq$k0">
                            <node concept="3GMtW1" id="2TGpZRbDUm0" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2TGpZRbDV$G" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:7nf9pEwhZWl" resolve="errorRef" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2TGpZRbDXml" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:7eBNsYUkvtl" resolve="declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4wdCbMCaFTt" role="3clFbw">
                    <node concept="3GLrbK" id="4wdCbMCaFTu" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="4wdCbMCaFTv" role="2OqNvi">
                      <node concept="chp4Y" id="4wdCbMCaFTw" role="cj9EA">
                        <ref role="cht4Q" to="tpd4:h6MkqoE" resolve="ReportErrorStatement" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="4wdCbMCaFTJ" role="9aQIa">
                    <node concept="3clFbS" id="4wdCbMCaFTK" role="9aQI4">
                      <node concept="YS8fn" id="4wdCbMCaFTL" role="3cqZAp">
                        <node concept="2ShNRf" id="4wdCbMCaFTM" role="YScLw">
                          <node concept="1pGfFk" id="4wdCbMCaFTN" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                            <node concept="3cpWs3" id="4wdCbMCaFTO" role="37wK5m">
                              <node concept="2OqwBi" id="4wdCbMCaFTP" role="3uHU7w">
                                <node concept="3GLrbK" id="4wdCbMCaFTQ" role="2Oq$k0" />
                                <node concept="2Iv5rx" id="4wdCbMCaFTR" role="2OqNvi" />
                              </node>
                              <node concept="Xl_RD" id="4wdCbMCaFTS" role="3uHU7B">
                                <property role="Xl_RC" value="Unrecognized parameter object " />
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
            <node concept="3Tqbb2" id="2TGpZRbnejd" role="1eyP2E" />
            <node concept="6VE3a" id="2TGpZRbngQu" role="1ezQQy">
              <node concept="3clFbS" id="2TGpZRbngQv" role="2VODD2">
                <node concept="3clFbJ" id="60nu8cesX1E" role="3cqZAp">
                  <node concept="3eNFk2" id="EPjDMsFoNP" role="3eNLev">
                    <node concept="3clFbS" id="EPjDMsFoNR" role="3eOfB_">
                      <node concept="3cpWs6" id="EPjDMsFpif" role="3cqZAp">
                        <node concept="2OqwBi" id="EPjDMsFpig" role="3cqZAk">
                          <node concept="1PxgMI" id="EPjDMsFpii" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="EPjDMsFpij" role="3oSUPX">
                              <ref role="cht4Q" to="bm42:6kKc3mjm6Ry" resolve="Rule" />
                            </node>
                            <node concept="3GLrbK" id="EPjDMsFpik" role="1m5AlR" />
                          </node>
                          <node concept="3TrcHB" id="EPjDMsFpim" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="EPjDMsFoX4" role="3eO9$A">
                      <node concept="3GLrbK" id="EPjDMsFoX5" role="2Oq$k0" />
                      <node concept="1mIQ4w" id="EPjDMsFoX6" role="2OqNvi">
                        <node concept="chp4Y" id="EPjDMsFoX7" role="cj9EA">
                          <ref role="cht4Q" to="bm42:6kKc3mjm6Ry" resolve="Rule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="60nu8cesX1G" role="3clFbx">
                    <node concept="3cpWs8" id="2TGpZRb$fpg" role="3cqZAp">
                      <node concept="3cpWsn" id="2TGpZRb$fpj" role="3cpWs9">
                        <property role="TrG5h" value="errorStatement" />
                        <node concept="3Tqbb2" id="2TGpZRb$fpe" role="1tU5fm">
                          <ref role="ehGHo" to="tpd4:h6MkqoE" resolve="ReportErrorStatement" />
                        </node>
                        <node concept="1PxgMI" id="60nu8cesWAs" role="33vP2m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="60nu8cesWMw" role="3oSUPX">
                            <ref role="cht4Q" to="tpd4:h6MkqoE" resolve="ReportErrorStatement" />
                          </node>
                          <node concept="3GLrbK" id="1oFBbRejXlA" role="1m5AlR" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1oFBbRejY_d" role="3cqZAp">
                      <node concept="2OqwBi" id="1oFBbRejZ9R" role="3cqZAk">
                        <node concept="37vLTw" id="1oFBbRejYUG" role="2Oq$k0">
                          <ref role="3cqZAo" node="2TGpZRb$fpj" resolve="errorStatement" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORd_G" role="2OqNvi">
                          <ref role="37wK5l" to="tpdd:1oFBbRehoLP" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="60nu8cesX60" role="3clFbw">
                    <node concept="3GLrbK" id="60nu8cesX38" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="60nu8cesXho" role="2OqNvi">
                      <node concept="chp4Y" id="60nu8cesXkp" role="cj9EA">
                        <ref role="cht4Q" to="tpd4:h6MkqoE" resolve="ReportErrorStatement" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="60nu8cet0UB" role="9aQIa">
                    <node concept="3clFbS" id="60nu8cet0UC" role="9aQI4">
                      <node concept="YS8fn" id="60nu8cet14h" role="3cqZAp">
                        <node concept="2ShNRf" id="60nu8cet16L" role="YScLw">
                          <node concept="1pGfFk" id="60nu8cet2bp" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                            <node concept="3cpWs3" id="60nu8cet3si" role="37wK5m">
                              <node concept="2OqwBi" id="60nu8cet3Lp" role="3uHU7w">
                                <node concept="3GLrbK" id="60nu8cet3vd" role="2Oq$k0" />
                                <node concept="2Iv5rx" id="60nu8cet4hU" role="2OqNvi" />
                              </node>
                              <node concept="Xl_RD" id="60nu8cet2gy" role="3uHU7B">
                                <property role="Xl_RC" value="Unrecognized parameter object " />
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
      </node>
      <node concept="3F1sOY" id="2w7KopAW5bW" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAW5bX" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAW5bY" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAW5bZ" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAW5c0" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAW5c1" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAW5c2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAW5c3" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAW5c4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="7uNrZ$pvgnz" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="7uNrZ$pvgn$" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7uNrZ$pvgos" role="6VMZX">
      <node concept="3F0ifn" id="7uNrZ$pvgot" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7uNrZ$pvgou" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7uNrZ$pvgov" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7uNrZ$pvgoA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hG2n6N2">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:hG29bgx" resolve="NodeWarningCheckOperation" />
    <node concept="3EZMnI" id="7uNrZ$pxc5B" role="2wV5jI">
      <node concept="PMmxH" id="4QaU5oHRUVl" role="3EZMnx">
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <node concept="VPxyj" id="4QaU5oHRUVm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="3J6bWQr0EHB" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:7nf9pEwhZYb" resolve="warningRef" />
        <node concept="OXEIz" id="1e$gelAFdTB" role="P5bDN">
          <node concept="1ou48o" id="1e$gelAFdTC" role="OY2wv">
            <property role="1ezIyd" value="gWZP3tU/custom" />
            <node concept="3GJtP1" id="1e$gelAFdTD" role="1ou48n">
              <node concept="3clFbS" id="1e$gelAFdTE" role="2VODD2">
                <node concept="3cpWs8" id="1e$gelAFdTF" role="3cqZAp">
                  <node concept="3cpWsn" id="1e$gelAFdTG" role="3cpWs9">
                    <property role="TrG5h" value="concept" />
                    <node concept="3uibUv" id="1e$gelAFdTH" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                    </node>
                    <node concept="35c_gC" id="7JBhbjismAo" role="33vP2m">
                      <ref role="35c_gD" to="tpd4:h$a7r4L" resolve="WarningStatement" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="YtwwC4MeY3" role="3cqZAp">
                  <node concept="3cpWsn" id="YtwwC4MeY4" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3uibUv" id="YtwwC4MeY5" role="1tU5fm">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="1eOMI4" id="YtwwC4MeY6" role="33vP2m">
                      <node concept="10QFUN" id="YtwwC4MeY7" role="1eOMHV">
                        <node concept="2OqwBi" id="YtwwC4MeY8" role="10QFUP">
                          <node concept="2JrnkZ" id="YtwwC4MeY9" role="2Oq$k0">
                            <node concept="2OqwBi" id="YtwwC4MeYa" role="2JrQYb">
                              <node concept="3GMtW1" id="YtwwC4MeYb" role="2Oq$k0" />
                              <node concept="I4A8Y" id="YtwwC4MeYc" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="YtwwC4MeYd" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="YtwwC4MeYe" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="YtwwC4MeYf" role="3cqZAp">
                  <node concept="3cpWsn" id="YtwwC4MeYg" role="3cpWs9">
                    <property role="TrG5h" value="warningInstances" />
                    <node concept="2OqwBi" id="YtwwC4MeYh" role="33vP2m">
                      <node concept="2YIFZM" id="YtwwC4MeYi" role="2Oq$k0">
                        <ref role="1Pybhc" to="yctd:~FindUsagesManager" resolve="FindUsagesManager" />
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.getInstance()" resolve="getInstance" />
                      </node>
                      <node concept="liA8E" id="YtwwC4MeYj" role="2OqNvi">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                        <node concept="2OqwBi" id="YtwwC4MeYk" role="37wK5m">
                          <node concept="37vLTw" id="YtwwC4MeYl" role="2Oq$k0">
                            <ref role="3cqZAo" node="YtwwC4MeY4" resolve="module" />
                          </node>
                          <node concept="liA8E" id="YtwwC4MeYm" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="YtwwC4MeYn" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                          <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                          <node concept="37vLTw" id="YtwwC4MeYo" role="37wK5m">
                            <ref role="3cqZAo" node="1e$gelAFdTG" resolve="concept" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="YtwwC4MeYp" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="2ShNRf" id="YtwwC4MeYq" role="37wK5m">
                          <node concept="1pGfFk" id="YtwwC4MeYr" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2hMVRd" id="YtwwC4MeYs" role="1tU5fm">
                      <node concept="3uibUv" id="YtwwC4MeYt" role="2hN53Y">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="YtwwC4MeYu" role="3cqZAp">
                  <node concept="2OqwBi" id="YtwwC4MeYv" role="3clFbG">
                    <node concept="2OqwBi" id="YtwwC4MeYw" role="2Oq$k0">
                      <node concept="2OqwBi" id="YtwwC4MeYx" role="2Oq$k0">
                        <node concept="37vLTw" id="YtwwC4MeYy" role="2Oq$k0">
                          <ref role="3cqZAo" node="YtwwC4MeYg" resolve="warningInstances" />
                        </node>
                        <node concept="ANE8D" id="YtwwC4MeYz" role="2OqNvi" />
                      </node>
                      <node concept="3$u5V9" id="YtwwC4MeY$" role="2OqNvi">
                        <node concept="1bVj0M" id="YtwwC4MeY_" role="23t8la">
                          <node concept="3clFbS" id="YtwwC4MeYA" role="1bW5cS">
                            <node concept="3clFbF" id="YtwwC4MeYB" role="3cqZAp">
                              <node concept="1PxgMI" id="YtwwC4MeYC" role="3clFbG">
                                <node concept="chp4Y" id="714IaVdGZ4c" role="3oSUPX">
                                  <ref role="cht4Q" to="tpd4:h$a7r4L" resolve="WarningStatement" />
                                </node>
                                <node concept="37vLTw" id="YtwwC4MeYD" role="1m5AlR">
                                  <ref role="3cqZAo" node="5W7E4fV0WVv" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0WVv" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0WVw" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="YtwwC4MeYG" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="1e$gelAFdU7" role="1ou48m">
              <node concept="3clFbS" id="1e$gelAFdU8" role="2VODD2">
                <node concept="3clFbF" id="1e$gelAFdU9" role="3cqZAp">
                  <node concept="37vLTI" id="1e$gelAFdUa" role="3clFbG">
                    <node concept="2ShNRf" id="1e$gelAFdUb" role="37vLTx">
                      <node concept="3zrR0B" id="1e$gelAFdUc" role="2ShVmc">
                        <node concept="3Tqbb2" id="1e$gelAFdUd" role="3zrR0E">
                          <ref role="ehGHo" to="tp5g:3VyMYUbe6PQ" resolve="WarningStatementReference" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1e$gelAFdUe" role="37vLTJ">
                      <node concept="3GMtW1" id="1e$gelAFdUf" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1e$gelAFss7" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:7nf9pEwhZYb" resolve="warningRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1e$gelAFdUh" role="3cqZAp">
                  <node concept="37vLTI" id="1e$gelAFdUi" role="3clFbG">
                    <node concept="3GLrbK" id="1e$gelAFdUj" role="37vLTx" />
                    <node concept="2OqwBi" id="1e$gelAFdUk" role="37vLTJ">
                      <node concept="2OqwBi" id="1e$gelAFdUl" role="2Oq$k0">
                        <node concept="3GMtW1" id="1e$gelAFdUm" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1e$gelAFtzy" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:7nf9pEwhZYb" resolve="warningRef" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1e$gelAFtWP" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:3VyMYUbe6PR" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="1e$gelAFdUp" role="1eyP2E">
              <ref role="ehGHo" to="tpd4:h$a7r4L" resolve="WarningStatement" />
            </node>
            <node concept="6VE3a" id="1e$gelAFdUq" role="1ezQQy">
              <node concept="3clFbS" id="1e$gelAFdUr" role="2VODD2">
                <node concept="3cpWs8" id="1e$gelAFdUz" role="3cqZAp">
                  <node concept="3cpWsn" id="1e$gelAFdU$" role="3cpWs9">
                    <property role="TrG5h" value="warningStatement" />
                    <node concept="3Tqbb2" id="1e$gelAFdU_" role="1tU5fm">
                      <ref role="ehGHo" to="tpd4:h$a7r4L" resolve="WarningStatement" />
                    </node>
                    <node concept="3GLrbK" id="1e$gelAFdUB" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs6" id="1oFBbRehuR1" role="3cqZAp">
                  <node concept="2OqwBi" id="1oFBbRehwxK" role="3cqZAk">
                    <node concept="3zqWPK" id="70OdufORd_I" role="2OqNvi">
                      <ref role="37wK5l" to="tpdd:1oFBbRehoLP" resolve="getName" />
                    </node>
                    <node concept="37vLTw" id="1oFBbRehHYb" role="2Oq$k0">
                      <ref role="3cqZAo" node="1e$gelAFdU$" resolve="warningStatement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2w7KopAW37R" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAW37S" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAW37T" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAW37U" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAW37V" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAW37W" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAW37X" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAW37Y" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAW37Z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="7uNrZ$pxc5D" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="7uNrZ$pxc5E" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7uNrZ$pxdwj" role="6VMZX">
      <node concept="3F0ifn" id="7uNrZ$pxdwk" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7uNrZ$pxdwl" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7uNrZ$pxdwm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7uNrZ$pxdwn" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="hG2S5d1">
    <property role="TrG5h" value="Annotation_Actions" />
    <node concept="1hA7zw" id="hG2SaxS" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="hG2SaxT" role="1hA7z_">
        <node concept="3clFbS" id="hG2SaxU" role="2VODD2">
          <node concept="3clFbF" id="hG2SeUX" role="3cqZAp">
            <node concept="2OqwBi" id="hG2Sf3i" role="3clFbG">
              <node concept="0IXxy" id="hG2SeUY" role="2Oq$k0" />
              <node concept="3YRAZt" id="hG2SfE9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hG30Zaa">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:hG30Oi4" resolve="NodeTypeCheckOperation" />
    <node concept="3EZMnI" id="hG31kVI" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY5I" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <node concept="VPxyj" id="yji4X$8TC7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="hG31ogV" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:hG31dwS" resolve="type" />
      </node>
      <node concept="2YWUlR" id="7uNrZ$pwxys" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="i2ICqHG" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7uNrZ$pxdmx" role="6VMZX">
      <node concept="3F0ifn" id="7uNrZ$pxdmy" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7uNrZ$pxdmz" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7uNrZ$pxdm$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7uNrZ$pxdm_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hG7EYlu">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:hG7CXiP" resolve="NodeOperationsContainer" />
    <node concept="3EZMnI" id="hG7EZ9K" role="2wV5jI">
      <node concept="3F0ifn" id="7uNrZ$pqtAm" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
        <node concept="VechU" id="7uNrZ$prHlf" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
      </node>
      <node concept="3F0ifn" id="7uNrZ$pn$Nd" role="3EZMnx">
        <property role="3F0ifm" value="check" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <node concept="VPxyj" id="7cmDwXU22lA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2SsqMj" id="7uNrZ$pkAtN" role="3EZMnx" />
      <node concept="3EZMnI" id="4F7HDKkYe5H" role="3EZMnx">
        <node concept="VPM3Z" id="4F7HDKkYe5J" role="3F10Kt" />
        <node concept="3F2HdR" id="hG7F1VN" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="tp5g:hG7EUTW" resolve="nodeOperations" />
          <node concept="3F0ifn" id="hG7F8ze" role="2czzBI">
            <ref role="1k5W1q" to="tpen:hshU_KJ" resolve="Annotation" />
            <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
            <node concept="11L4FC" id="hXFCIuq" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2SqB2G" id="yji4X$a8L3" role="2SqHTX">
              <property role="TrG5h" value="operationCell" />
            </node>
          </node>
          <node concept="11L4FC" id="hXFCIvN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="1Bt7hp" id="4F7HDKkXtvc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="4F7HDKkMcPb" role="2czzBx" />
        </node>
        <node concept="l2Vlx" id="4F7HDKkYe5M" role="2iSdaV" />
        <node concept="3F0ifn" id="hG7F5Jx" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          <node concept="VechU" id="hGeb1GQ" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICqHs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hG7P2To">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:hG7OXla" resolve="CheckNodeForErrorMessagesOperation" />
    <node concept="3EZMnI" id="1cGy5mYF1hO" role="2wV5jI">
      <node concept="PMmxH" id="yji4X$8$_W" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <node concept="VPxyj" id="yji4X$8T_1" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2YWUlR" id="1cGy5mYF261" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="1cGy5mYF1hQ" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="JjtHGBNrEO" role="6VMZX">
      <node concept="3F0ifn" id="rQ9NTvx5pi" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="rQ9NTvx5pf" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="rQ9NTvx5pg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="JjtHGBNrER" role="3EZMnx">
        <property role="3F0ifm" value="allow errors:" />
      </node>
      <node concept="3F0A7n" id="JjtHGBNrET" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:JjtHGBNrEH" resolve="allowErrors" />
        <node concept="ljvvj" id="JjtHGBNrEU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="JjtHGBNJvu" role="3EZMnx">
        <property role="3F0ifm" value="allow warnings:" />
      </node>
      <node concept="3F0A7n" id="JjtHGBNJvv" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:JjtHGBNrEI" resolve="allowWarnings" />
        <node concept="ljvvj" id="JjtHGBNJvw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3fN3QovzdML" role="3EZMnx">
        <property role="3F0ifm" value="include self:" />
      </node>
      <node concept="3F0A7n" id="3fN3QovzdN9" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:3fN3QovzdMy" resolve="includeSelf" />
        <node concept="ljvvj" id="3fN3QovzdX$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="JjtHGBNrEQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hHlHjiu">
    <ref role="1XX52x" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
    <node concept="3EZMnI" id="hHlIOwQ" role="2wV5jI">
      <node concept="3EZMnI" id="hHlIQzw" role="3EZMnx">
        <node concept="VPM3Z" id="hHlIQzx" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIyp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIyo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hHlIQzz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCI_Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCI_Y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="hHlISWa" role="3EZMnx">
          <property role="3F0ifm" value="Test case" />
        </node>
        <node concept="3F0A7n" id="hHlJuPg" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="i2ICqHd" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hHSLiAJ" role="3EZMnx">
        <property role="3F0ifm" value="nodes" />
        <node concept="VQ3r3" id="hHSMkGj" role="3F10Kt">
          <property role="2USNnj" value="gtbM8PH/2" />
        </node>
      </node>
      <node concept="3EZMnI" id="hHTI9Sm" role="3EZMnx">
        <node concept="VPM3Z" id="hHTI9Sn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIAd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIAc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="hHTIaJl" role="3EZMnx" />
        <node concept="3F2HdR" id="hHTIc8d" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:hHSKRN6" resolve="nodesToCheck" />
          <node concept="2iRkQZ" id="i2ICqHQ" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hHTI9Sp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIyL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIyJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="i2ICqHk" role="2iSdaV" />
      </node>
      <node concept="3XFhqQ" id="hHTFUlv" role="3EZMnx" />
      <node concept="3F0ifn" id="hHSLs5i" role="3EZMnx">
        <property role="3F0ifm" value="test methods" />
        <node concept="VQ3r3" id="hHSMmUE" role="3F10Kt">
          <property role="2USNnj" value="gtbM8PH/2" />
        </node>
      </node>
      <node concept="3EZMnI" id="hHTFX1B" role="3EZMnx">
        <node concept="VPM3Z" id="hHTFX1C" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIyD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIyC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="hHTFXFq" role="3EZMnx" />
        <node concept="3F2HdR" id="hHTFYEb" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:hHSL9AP" resolve="testMethods" />
          <node concept="2o9xnK" id="2_AUN5Gs50o" role="2gpyvW">
            <node concept="3clFbS" id="2_AUN5Gs50p" role="2VODD2">
              <node concept="3clFbF" id="2_AUN5Gs58Q" role="3cqZAp">
                <node concept="Xl_RD" id="2_AUN5Gs58P" role="3clFbG">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRkQZ" id="i2ICqHV" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hHTFX1E" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIyi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIyg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="i2ICqHz" role="2iSdaV" />
      </node>
      <node concept="3XFhqQ" id="hHTFVAM" role="3EZMnx" />
      <node concept="3EZMnI" id="2154_0wZ4t2" role="3EZMnx">
        <node concept="VPM3Z" id="2154_0wZ4t3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="2154_0wZ4t4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2154_0wZ4t5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="2154_0wZ4t6" role="3EZMnx" />
        <node concept="3F1sOY" id="2vy5TEsvZl_" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:2154_0wVVpx" resolve="beforeTests" />
          <node concept="VQ3r3" id="2vy5TEswt5l" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
        </node>
        <node concept="VPM3Z" id="2154_0wZ4td" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="2154_0wZ4te" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2154_0wZ4tf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="2154_0wZ4tg" role="2iSdaV" />
      </node>
      <node concept="3XFhqQ" id="2vy5TEsvZn9" role="3EZMnx" />
      <node concept="3EZMnI" id="2vy5TEsvZoo" role="3EZMnx">
        <node concept="VPM3Z" id="2vy5TEsvZop" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="2vy5TEsvZoq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2vy5TEsvZor" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="2vy5TEsvZos" role="3EZMnx" />
        <node concept="3F1sOY" id="2vy5TEsvZot" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:2154_0wVVpG" resolve="afterTests" />
          <node concept="VQ3r3" id="2vy5TEswt5n" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
        </node>
        <node concept="VPM3Z" id="2vy5TEsvZou" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="2vy5TEsvZov" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2vy5TEsvZow" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="2vy5TEsvZox" role="2iSdaV" />
      </node>
      <node concept="3XFhqQ" id="2vy5TEsvZpT" role="3EZMnx" />
      <node concept="3F0ifn" id="hHqtKL6" role="3EZMnx">
        <property role="3F0ifm" value="utility methods" />
        <node concept="VQ3r3" id="hHDSG_O" role="3F10Kt">
          <property role="2USNnj" value="gtbM8PH/2" />
        </node>
      </node>
      <node concept="3EZMnI" id="hHTG0aQ" role="3EZMnx">
        <node concept="VPM3Z" id="hHTG0aR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIA7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIA6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="hHTG0G7" role="3EZMnx" />
        <node concept="3F2HdR" id="hHTG2o2" role="3EZMnx">
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="tp5g:hHqtyUn" resolve="methods" />
          <node concept="2iRkQZ" id="i2ICqHS" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hHTG0aT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIxT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIxS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="i2ICqHN" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2ICqHb" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5vTxdEzuLYM" role="6VMZX">
      <node concept="2iRkQZ" id="5vTxdEzuLYN" role="2iSdaV" />
      <node concept="3EZMnI" id="5_jSk8p92zm" role="3EZMnx">
        <node concept="3F0ifn" id="5_jSk8p92zt" role="3EZMnx">
          <property role="3F0ifm" value="Can execute-in-process:" />
        </node>
        <node concept="XafU7" id="3AAOMCHcv$6" role="3EZMnx">
          <property role="ihaIw" value=" " />
          <node concept="3TQVft" id="3AAOMCHcv$8" role="3TRxkO">
            <node concept="3TQlhw" id="3AAOMCHcv$a" role="3TQWv3">
              <node concept="3clFbS" id="3AAOMCHcv$c" role="2VODD2">
                <node concept="3clFbF" id="3AAOMCHcwyL" role="3cqZAp">
                  <node concept="3cpWs3" id="3AAOMCHcy91" role="3clFbG">
                    <node concept="Xl_RD" id="3AAOMCHcy96" role="3uHU7w">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="3AAOMCHcwCw" role="3uHU7B">
                      <node concept="pncrf" id="3AAOMCHcwyK" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORd_K" role="2OqNvi">
                        <ref role="37wK5l" to="tpe5:5_jSk8paieB" resolve="canRunInProcess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="3AAOMCHcv$e" role="3TQXYj">
              <node concept="3clFbS" id="3AAOMCHcv$g" role="2VODD2">
                <node concept="3clFbJ" id="3AAOMCHcyw6" role="3cqZAp">
                  <node concept="3clFbS" id="3AAOMCHcyw7" role="3clFbx">
                    <node concept="3clFbF" id="3AAOMCHczIL" role="3cqZAp">
                      <node concept="37vLTI" id="3AAOMCHc$J1" role="3clFbG">
                        <node concept="3clFbT" id="3AAOMCHc$Jr" role="37vLTx">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="2OqwBi" id="3AAOMCHczLK" role="37vLTJ">
                          <node concept="pncrf" id="3AAOMCHczIK" role="2Oq$k0" />
                          <node concept="3TrcHB" id="60FoAFgjK0T" role="2OqNvi">
                            <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3AAOMCHcyFQ" role="3clFbw">
                    <node concept="3TQ6bP" id="3AAOMCHcywq" role="2Oq$k0" />
                    <node concept="liA8E" id="3AAOMCHczE6" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="Xl_RD" id="3AAOMCHczER" role="37wK5m">
                        <property role="Xl_RC" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="3AAOMCHc$JW" role="3eNLev">
                    <node concept="2OqwBi" id="3AAOMCHc$XI" role="3eO9$A">
                      <node concept="3TQ6bP" id="3AAOMCHc$Mi" role="2Oq$k0" />
                      <node concept="liA8E" id="3AAOMCHc_VY" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="3AAOMCHc_WJ" role="37wK5m">
                          <property role="Xl_RC" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3AAOMCHc$JY" role="3eOfB_">
                      <node concept="3clFbF" id="3AAOMCHcA2q" role="3cqZAp">
                        <node concept="37vLTI" id="3AAOMCHcA2r" role="3clFbG">
                          <node concept="3clFbT" id="3AAOMCHcA2s" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="2OqwBi" id="3AAOMCHcA2t" role="37vLTJ">
                            <node concept="pncrf" id="3AAOMCHcA2u" role="2Oq$k0" />
                            <node concept="3TrcHB" id="60FoAFgjKCN" role="2OqNvi">
                              <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="3AAOMCHcv$i" role="3TQZqC">
              <node concept="3clFbS" id="3AAOMCHcv$k" role="2VODD2">
                <node concept="3cpWs6" id="3AAOMCHcCRk" role="3cqZAp">
                  <node concept="22lmx$" id="3AAOMCHcEZs" role="3cqZAk">
                    <node concept="2OqwBi" id="3AAOMCHcFoV" role="3uHU7w">
                      <node concept="3TQ6bP" id="3AAOMCHcFcA" role="2Oq$k0" />
                      <node concept="liA8E" id="3AAOMCHcGzN" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="3AAOMCHcGLb" role="37wK5m">
                          <property role="Xl_RC" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3AAOMCHcDnI" role="3uHU7B">
                      <node concept="3TQ6bP" id="3AAOMCHcD76" role="2Oq$k0" />
                      <node concept="liA8E" id="3AAOMCHcEw7" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="3AAOMCHcEFu" role="37wK5m">
                          <property role="Xl_RC" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="OXEIz" id="2Jo3M8QBiI5" role="P5bDN">
            <node concept="1oHujT" id="2Jo3M8QBj68" role="OY2wv">
              <property role="1oHujS" value="false" />
              <node concept="1oIgkG" id="2Jo3M8QBj69" role="1oHujR">
                <node concept="3clFbS" id="2Jo3M8QBj6a" role="2VODD2">
                  <node concept="3clFbF" id="2Jo3M8QBj6V" role="3cqZAp">
                    <node concept="37vLTI" id="2Jo3M8QBkBl" role="3clFbG">
                      <node concept="3clFbT" id="2Jo3M8QBkC1" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="2OqwBi" id="2Jo3M8QBj9V" role="37vLTJ">
                        <node concept="3GMtW1" id="2Jo3M8QBj6T" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2Jo3M8QBk6G" role="2OqNvi">
                          <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="2Jo3M8QBj6v" role="OY2wv">
              <property role="1oHujS" value="true" />
              <node concept="1oIgkG" id="2Jo3M8QBj6x" role="1oHujR">
                <node concept="3clFbS" id="2Jo3M8QBj6z" role="2VODD2">
                  <node concept="3clFbF" id="2Jo3M8QBl9o" role="3cqZAp">
                    <node concept="37vLTI" id="2Jo3M8QBl9p" role="3clFbG">
                      <node concept="3clFbT" id="2Jo3M8QBl9q" role="37vLTx" />
                      <node concept="2OqwBi" id="2Jo3M8QBl9r" role="37vLTJ">
                        <node concept="3GMtW1" id="2Jo3M8QBl9s" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2Jo3M8QBl9t" role="2OqNvi">
                          <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="5_jSk8p92zp" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5vTxdEzuMGJ" role="3EZMnx">
        <node concept="3F0ifn" id="5vTxdEzuMGK" role="3EZMnx">
          <property role="3F0ifm" value="Needs write action to run:" />
          <node concept="3nxI2P" id="2hh8MJdXeHC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="5vTxdEzuMGL" role="2iSdaV" />
        <node concept="XafU7" id="3AAOMCHeeWW" role="3EZMnx">
          <property role="ihaIw" value=" " />
          <node concept="3TQVft" id="3AAOMCHeeWX" role="3TRxkO">
            <node concept="3TQlhw" id="3AAOMCHeeWY" role="3TQWv3">
              <node concept="3clFbS" id="3AAOMCHeeWZ" role="2VODD2">
                <node concept="3clFbF" id="3AAOMCHeeX0" role="3cqZAp">
                  <node concept="3cpWs3" id="3AAOMCHeeX1" role="3clFbG">
                    <node concept="Xl_RD" id="3AAOMCHeeX2" role="3uHU7w">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="3AAOMCHeeX3" role="3uHU7B">
                      <node concept="pncrf" id="3AAOMCHeeX4" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORd_M" role="2OqNvi">
                        <ref role="37wK5l" to="tp5o:5vTxdEzuQjU" resolve="needsWriteAction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="3AAOMCHeeX6" role="3TQXYj">
              <node concept="3clFbS" id="3AAOMCHeeX7" role="2VODD2">
                <node concept="3clFbJ" id="3AAOMCHeeX8" role="3cqZAp">
                  <node concept="3clFbS" id="3AAOMCHeeX9" role="3clFbx">
                    <node concept="3clFbF" id="3AAOMCHeeXa" role="3cqZAp">
                      <node concept="37vLTI" id="3AAOMCHeeXb" role="3clFbG">
                        <node concept="3clFbT" id="3AAOMCHeeXc" role="37vLTx">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="2OqwBi" id="3AAOMCHeeXd" role="37vLTJ">
                          <node concept="pncrf" id="3AAOMCHeeXe" role="2Oq$k0" />
                          <node concept="3TrcHB" id="3AAOMCHegqR" role="2OqNvi">
                            <ref role="3TsBF5" to="tp5g:5vTxdEzuHPa" resolve="needsNoWriteAction" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3AAOMCHeeXg" role="3clFbw">
                    <node concept="3TQ6bP" id="3AAOMCHeeXh" role="2Oq$k0" />
                    <node concept="liA8E" id="3AAOMCHeeXi" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="Xl_RD" id="3AAOMCHeeXj" role="37wK5m">
                        <property role="Xl_RC" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="3AAOMCHeeXk" role="3eNLev">
                    <node concept="2OqwBi" id="3AAOMCHeeXl" role="3eO9$A">
                      <node concept="3TQ6bP" id="3AAOMCHeeXm" role="2Oq$k0" />
                      <node concept="liA8E" id="3AAOMCHeeXn" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="3AAOMCHeeXo" role="37wK5m">
                          <property role="Xl_RC" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3AAOMCHeeXp" role="3eOfB_">
                      <node concept="3clFbF" id="3AAOMCHeeXq" role="3cqZAp">
                        <node concept="37vLTI" id="3AAOMCHeeXr" role="3clFbG">
                          <node concept="3clFbT" id="3AAOMCHeeXs" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="2OqwBi" id="3AAOMCHeeXt" role="37vLTJ">
                            <node concept="pncrf" id="3AAOMCHeeXu" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3AAOMCHeh5L" role="2OqNvi">
                              <ref role="3TsBF5" to="tp5g:5vTxdEzuHPa" resolve="needsNoWriteAction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="3AAOMCHeeXw" role="3TQZqC">
              <node concept="3clFbS" id="3AAOMCHeeXx" role="2VODD2">
                <node concept="3cpWs6" id="3AAOMCHeeXy" role="3cqZAp">
                  <node concept="22lmx$" id="3AAOMCHeeXz" role="3cqZAk">
                    <node concept="2OqwBi" id="3AAOMCHeeX$" role="3uHU7w">
                      <node concept="3TQ6bP" id="3AAOMCHeeX_" role="2Oq$k0" />
                      <node concept="liA8E" id="3AAOMCHeeXA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="3AAOMCHeeXB" role="37wK5m">
                          <property role="Xl_RC" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3AAOMCHeeXC" role="3uHU7B">
                      <node concept="3TQ6bP" id="3AAOMCHeeXD" role="2Oq$k0" />
                      <node concept="liA8E" id="3AAOMCHeeXE" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="3AAOMCHeeXF" role="37wK5m">
                          <property role="Xl_RC" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="OXEIz" id="2Jo3M8QD9of" role="P5bDN">
            <node concept="1oHujT" id="2Jo3M8QD9og" role="OY2wv">
              <property role="1oHujS" value="false" />
              <node concept="1oIgkG" id="2Jo3M8QD9oh" role="1oHujR">
                <node concept="3clFbS" id="2Jo3M8QD9oi" role="2VODD2">
                  <node concept="3clFbF" id="2Jo3M8QD9oj" role="3cqZAp">
                    <node concept="37vLTI" id="2Jo3M8QD9ok" role="3clFbG">
                      <node concept="3clFbT" id="2Jo3M8QD9ol" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="2OqwBi" id="2Jo3M8QD9om" role="37vLTJ">
                        <node concept="3GMtW1" id="2Jo3M8QD9on" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2Jo3M8QDaIj" role="2OqNvi">
                          <ref role="3TsBF5" to="tp5g:5vTxdEzuHPa" resolve="needsNoWriteAction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="2Jo3M8QD9op" role="OY2wv">
              <property role="1oHujS" value="true" />
              <node concept="1oIgkG" id="2Jo3M8QD9oq" role="1oHujR">
                <node concept="3clFbS" id="2Jo3M8QD9or" role="2VODD2">
                  <node concept="3clFbF" id="2Jo3M8QD9os" role="3cqZAp">
                    <node concept="37vLTI" id="2Jo3M8QD9ot" role="3clFbG">
                      <node concept="3clFbT" id="2Jo3M8QD9ou" role="37vLTx" />
                      <node concept="2OqwBi" id="2Jo3M8QD9ov" role="37vLTJ">
                        <node concept="3GMtW1" id="2Jo3M8QD9ow" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2Jo3M8QDbpf" role="2OqNvi">
                          <ref role="3TsBF5" to="tp5g:5vTxdEzuHPa" resolve="needsNoWriteAction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3nxI2P" id="2hh8MJdXePr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pkWqt" id="4JT$SJtuYum" role="pqm2j">
          <node concept="3clFbS" id="4JT$SJtuYun" role="2VODD2">
            <node concept="3SKdUt" id="4JT$SJtxsCG" role="3cqZAp">
              <node concept="1PaTwC" id="4JT$SJtxsCH" role="1aUNEU">
                <node concept="3oM_SD" id="4JT$SJtxsMK" role="1PaTwD">
                  <property role="3oM_SC" value="show" />
                </node>
                <node concept="3oM_SD" id="4JT$SJtxsNg" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="4JT$SJtxsOK" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="4JT$SJtxsR3" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="4JT$SJtxsUm" role="1PaTwD">
                  <property role="3oM_SC" value="migrated" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4JT$SJtuYLJ" role="3cqZAp">
              <node concept="2OqwBi" id="4JT$SJtKUCD" role="3clFbG">
                <node concept="2OqwBi" id="4JT$SJtGMhD" role="2Oq$k0">
                  <node concept="pncrf" id="4JT$SJtGMhE" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4JT$SJtKUjw" role="2OqNvi">
                    <ref role="3TsBF5" to="tp5g:2hh8MJdUWcZ" resolve="accessMode" />
                  </node>
                </node>
                <node concept="21noJN" id="4JT$SJtKUZj" role="2OqNvi">
                  <node concept="21nZrQ" id="4JT$SJtKUZl" role="21noJM">
                    <ref role="21nZrZ" to="tp5g:4JT$SJtKH0m" resolve="unset" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2hh8MJdXcK6" role="3EZMnx">
        <node concept="2iRfu4" id="2hh8MJdXcK7" role="2iSdaV" />
        <node concept="3F0ifn" id="2hh8MJdXdis" role="3EZMnx">
          <property role="3F0ifm" value="Model access mode:" />
        </node>
        <node concept="3F0A7n" id="2hh8MJdVC4n" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:2hh8MJdUWcZ" resolve="accessMode" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hHqerh7">
    <ref role="1XX52x" to="tp5g:hHqefK1" resolve="TestNode" />
    <node concept="3EZMnI" id="hHqoeRd" role="2wV5jI">
      <node concept="3F0ifn" id="nfIF2FIRjb" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="hHqogoz" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:hHqenIi" resolve="nodeToCheck" />
        <node concept="3vyZuw" id="hHqoln7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="nfIF2FIRjd" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="i2ICqHu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hPjy30z">
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="tp5g:hPjxXux" resolve="ProjectExpression" />
    <node concept="PMmxH" id="2wdLO7KhYaX" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="hPjGBsr">
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="tp5g:hPjGwIs" resolve="ModelExpression" />
    <node concept="PMmxH" id="2wdLO7KhY1n" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="hPLZoFV">
    <ref role="1XX52x" to="tp5g:hPLZb6h" resolve="SimpleNodeTest" />
    <node concept="3EZMnI" id="hPLZpbd" role="2wV5jI">
      <node concept="PMmxH" id="hWoAMEI" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hNAtxlY" resolve="_DeprecatedPart" />
      </node>
      <node concept="PMmxH" id="7FDT6FiIjgp" role="3EZMnx">
        <ref role="PMmxG" to="tpen:6aS1KHf_xVK" resolve="HasAnnotation_AnnotationComponent" />
      </node>
      <node concept="3EZMnI" id="hPLZpbe" role="3EZMnx">
        <node concept="VPM3Z" id="hPLZpbf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIy6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIy5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="hPLZpbg" role="3EZMnx">
          <property role="3F0ifm" value="test" />
        </node>
        <node concept="3F0A7n" id="hPLZpbh" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="PMmxH" id="3S6zbbsdXKu" role="3EZMnx">
          <ref role="PMmxG" to="tpen:5UYpxeVafB6" resolve="BaseMethodDeclaration_BodyComponent" />
        </node>
        <node concept="VPM3Z" id="hPLZpbk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXFCIy2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXFCIy1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="3S6zbbsdXKs" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2ICqH$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hPMGr28">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
    <node concept="3EZMnI" id="hPMGsRQ" role="2wV5jI">
      <node concept="3F0ifn" id="hPMGtNG" role="3EZMnx">
        <property role="3F0ifm" value="invoke intention" />
      </node>
      <node concept="1iCGBv" id="hPMGxkl" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:hPMFYKr" resolve="intention" />
        <node concept="1sVBvm" id="hPMGxkm" role="1sWHZn">
          <node concept="3F0A7n" id="hPMGF1Z" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7JT4LO$qcEL" role="3EZMnx">
        <node concept="l2Vlx" id="7JT4LO$qcEM" role="2iSdaV" />
        <node concept="3F0ifn" id="7JT4LO$qcEr" role="3EZMnx">
          <property role="3F0ifm" value="with parameter" />
        </node>
        <node concept="3F1sOY" id="7JT4LO$qcED" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
        </node>
        <node concept="pkWqt" id="7JT4LO$qcF6" role="pqm2j">
          <node concept="3clFbS" id="7JT4LO$qcF7" role="2VODD2">
            <node concept="3clFbF" id="7JT4LO$qcUU" role="3cqZAp">
              <node concept="2OqwBi" id="7JT4LO$qdOy" role="3clFbG">
                <node concept="2OqwBi" id="7JT4LO$qd87" role="2Oq$k0">
                  <node concept="pncrf" id="7JT4LO$qcUT" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7JT4LO$qdqV" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7JT4LO$qemB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="i0Nnj4p" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7JT4LO$qeOq" role="6VMZX">
      <node concept="3F0ifn" id="7JT4LO$qeZH" role="3EZMnx">
        <property role="3F0ifm" value="parameter:" />
      </node>
      <node concept="3F1sOY" id="7JT4LO$qeZR" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
      </node>
      <node concept="l2Vlx" id="7JT4LO$qeOt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hQTKeoX">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:hQTK7X3" resolve="TypeKeyStatement" />
    <node concept="3EZMnI" id="hQTKuqT" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY6O" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="3F0ifn" id="hSrRU1b" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <node concept="11LMrY" id="hXJi7d4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="hQTTqNC" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:hQTTdxU" resolve="keys" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
      </node>
      <node concept="3F0ifn" id="hSrRW0T" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <node concept="11L4FC" id="hXJi8P_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0No1iD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hSyddFL">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:hSyd1fI" resolve="PressKeyStatement" />
    <node concept="3EZMnI" id="hSydeS1" role="2wV5jI">
      <node concept="PMmxH" id="41csb_keekm" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="3F2HdR" id="hSydk3y" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp5g:hSyd6OA" resolve="keyStrokes" />
        <node concept="l2Vlx" id="i1BOQH7" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="hSyffCq" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="i0NnzCS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hSLjLJm">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
    <node concept="3EZMnI" id="hSLjOx7" role="2wV5jI">
      <node concept="3F0ifn" id="hSLjUBS" role="3EZMnx">
        <property role="3F0ifm" value="Editor test case" />
      </node>
      <node concept="3F0A7n" id="hSLo4wc" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="1CyoCb$wKhN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1CyoCb$wKhK" role="3EZMnx">
        <property role="3F0ifm" value="description:" />
      </node>
      <node concept="3F0A7n" id="1CyoCb$wKhM" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="no description" />
        <ref role="1NtTu8" to="tp5g:1CyoCb$wKhC" resolve="description" />
        <node concept="ljvvj" id="1CyoCb$wKhO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hSLkcbQ" role="3EZMnx">
        <property role="3F0ifm" value="before:" />
      </node>
      <node concept="3F1sOY" id="a0NfrtNR4G" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
        <node concept="ljvvj" id="a0NfrtNRD2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2w$q5c" id="a0NfrtOtcQ" role="3xwHhi">
          <node concept="2aJ2om" id="a0NfrtOtcR" role="2w$qW5">
            <ref role="2$4xQ3" node="a0NfrtN4a4" resolve="skipTestNode" />
          </node>
        </node>
        <node concept="A1WHr" id="56mQY6v8d5N" role="3vIgyS">
          <ref role="2ZyFGn" to="tp5g:hHqefK1" resolve="TestNode" />
        </node>
      </node>
      <node concept="3F0ifn" id="hSLknVe" role="3EZMnx">
        <property role="3F0ifm" value="result:" />
      </node>
      <node concept="3F1sOY" id="56mQY6v8Mua" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:2IvnPUIp3m5" resolve="testNodeResult" />
        <node concept="ljvvj" id="56mQY6v8Mup" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2w$q5c" id="56mQY6v8Muq" role="3xwHhi">
          <node concept="2aJ2om" id="56mQY6v8Mur" role="2w$qW5">
            <ref role="2$4xQ3" node="a0NfrtN4a4" resolve="skipTestNode" />
          </node>
        </node>
        <node concept="A1WHr" id="56mQY6v8Mus" role="3vIgyS">
          <ref role="2ZyFGn" to="tp5g:hHqefK1" resolve="TestNode" />
        </node>
      </node>
      <node concept="3F0ifn" id="hSLkDpz" role="3EZMnx">
        <property role="3F0ifm" value="code:" />
        <node concept="ljvvj" id="1CyoCb$wKhR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="hSLkKXC" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:hSLjaOj" resolve="code" />
        <node concept="lj46D" id="1CyoCb$wKhS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1CyoCb$wKhT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1CyoCb$wKhU" role="2iSdaV" />
      <node concept="3F0ifn" id="7jkP8ZYrdNG" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="VPM3Z" id="7jkP8ZYre5F" role="3F10Kt" />
        <node concept="ljvvj" id="7jkP8ZYrdNI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1Vts4spynH6" role="3EZMnx">
        <property role="3F0ifm" value="custom node matching:" />
        <node concept="ljvvj" id="1Vts4spynH7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1Vts4spyobC" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
        <node concept="lj46D" id="1Vts4spyobD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1Vts4spyobE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="2Jo3M8QDg70" role="6VMZX">
      <node concept="2iRkQZ" id="2Jo3M8QDg71" role="2iSdaV" />
      <node concept="3EZMnI" id="2Jo3M8QDg72" role="3EZMnx">
        <node concept="3F0ifn" id="2Jo3M8QDg73" role="3EZMnx">
          <property role="3F0ifm" value="Can execute-in-process:" />
        </node>
        <node concept="XafU7" id="2Jo3M8QDg74" role="3EZMnx">
          <property role="ihaIw" value=" " />
          <node concept="3TQVft" id="2Jo3M8QDg75" role="3TRxkO">
            <node concept="3TQlhw" id="2Jo3M8QDg76" role="3TQWv3">
              <node concept="3clFbS" id="2Jo3M8QDg77" role="2VODD2">
                <node concept="3clFbF" id="2Jo3M8QDg78" role="3cqZAp">
                  <node concept="3cpWs3" id="2Jo3M8QDg79" role="3clFbG">
                    <node concept="Xl_RD" id="2Jo3M8QDg7a" role="3uHU7w">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="2Jo3M8QDg7b" role="3uHU7B">
                      <node concept="pncrf" id="2Jo3M8QDg7c" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORd_O" role="2OqNvi">
                        <ref role="37wK5l" to="tpe5:5_jSk8paieB" resolve="canRunInProcess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQsA7" id="2Jo3M8QDg7e" role="3TQXYj">
              <node concept="3clFbS" id="2Jo3M8QDg7f" role="2VODD2">
                <node concept="3clFbJ" id="2Jo3M8QDg7g" role="3cqZAp">
                  <node concept="3clFbS" id="2Jo3M8QDg7h" role="3clFbx">
                    <node concept="3clFbF" id="2Jo3M8QDg7i" role="3cqZAp">
                      <node concept="37vLTI" id="2Jo3M8QDg7j" role="3clFbG">
                        <node concept="3clFbT" id="2Jo3M8QDg7k" role="37vLTx">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="2OqwBi" id="2Jo3M8QDg7l" role="37vLTJ">
                          <node concept="pncrf" id="2Jo3M8QDg7m" role="2Oq$k0" />
                          <node concept="3TrcHB" id="2Jo3M8QDg7n" role="2OqNvi">
                            <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2Jo3M8QDg7o" role="3clFbw">
                    <node concept="3TQ6bP" id="2Jo3M8QDg7p" role="2Oq$k0" />
                    <node concept="liA8E" id="2Jo3M8QDg7q" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="Xl_RD" id="2Jo3M8QDg7r" role="37wK5m">
                        <property role="Xl_RC" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="2Jo3M8QDg7s" role="3eNLev">
                    <node concept="2OqwBi" id="2Jo3M8QDg7t" role="3eO9$A">
                      <node concept="3TQ6bP" id="2Jo3M8QDg7u" role="2Oq$k0" />
                      <node concept="liA8E" id="2Jo3M8QDg7v" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="2Jo3M8QDg7w" role="37wK5m">
                          <property role="Xl_RC" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2Jo3M8QDg7x" role="3eOfB_">
                      <node concept="3clFbF" id="2Jo3M8QDg7y" role="3cqZAp">
                        <node concept="37vLTI" id="2Jo3M8QDg7z" role="3clFbG">
                          <node concept="3clFbT" id="2Jo3M8QDg7$" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="2OqwBi" id="2Jo3M8QDg7_" role="37vLTJ">
                            <node concept="pncrf" id="2Jo3M8QDg7A" role="2Oq$k0" />
                            <node concept="3TrcHB" id="2Jo3M8QDg7B" role="2OqNvi">
                              <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TQwEX" id="2Jo3M8QDg7C" role="3TQZqC">
              <node concept="3clFbS" id="2Jo3M8QDg7D" role="2VODD2">
                <node concept="3cpWs6" id="2Jo3M8QDg7E" role="3cqZAp">
                  <node concept="22lmx$" id="2Jo3M8QDg7F" role="3cqZAk">
                    <node concept="2OqwBi" id="2Jo3M8QDg7G" role="3uHU7w">
                      <node concept="3TQ6bP" id="2Jo3M8QDg7H" role="2Oq$k0" />
                      <node concept="liA8E" id="2Jo3M8QDg7I" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="2Jo3M8QDg7J" role="37wK5m">
                          <property role="Xl_RC" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2Jo3M8QDg7K" role="3uHU7B">
                      <node concept="3TQ6bP" id="2Jo3M8QDg7L" role="2Oq$k0" />
                      <node concept="liA8E" id="2Jo3M8QDg7M" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="2Jo3M8QDg7N" role="37wK5m">
                          <property role="Xl_RC" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="OXEIz" id="2Jo3M8QDg7O" role="P5bDN">
            <node concept="1oHujT" id="2Jo3M8QDg7P" role="OY2wv">
              <property role="1oHujS" value="false" />
              <node concept="1oIgkG" id="2Jo3M8QDg7Q" role="1oHujR">
                <node concept="3clFbS" id="2Jo3M8QDg7R" role="2VODD2">
                  <node concept="3clFbF" id="2Jo3M8QDg7S" role="3cqZAp">
                    <node concept="37vLTI" id="2Jo3M8QDg7T" role="3clFbG">
                      <node concept="3clFbT" id="2Jo3M8QDg7U" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="2OqwBi" id="2Jo3M8QDg7V" role="37vLTJ">
                        <node concept="3GMtW1" id="2Jo3M8QDg7W" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2Jo3M8QDg7X" role="2OqNvi">
                          <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1oHujT" id="2Jo3M8QDg7Y" role="OY2wv">
              <property role="1oHujS" value="true" />
              <node concept="1oIgkG" id="2Jo3M8QDg7Z" role="1oHujR">
                <node concept="3clFbS" id="2Jo3M8QDg80" role="2VODD2">
                  <node concept="3clFbF" id="2Jo3M8QDg81" role="3cqZAp">
                    <node concept="37vLTI" id="2Jo3M8QDg82" role="3clFbG">
                      <node concept="3clFbT" id="2Jo3M8QDg83" role="37vLTx" />
                      <node concept="2OqwBi" id="2Jo3M8QDg84" role="37vLTJ">
                        <node concept="3GMtW1" id="2Jo3M8QDg85" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2Jo3M8QDg86" role="2OqNvi">
                          <ref role="3TsBF5" to="tpe3:5$NvszvZwQt" resolve="canNotRunInProcess" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="2Jo3M8QDg87" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="4xJw7Bvdbub" role="3EZMnx" />
      <node concept="3EZMnI" id="4xJw7BvdcfP" role="3EZMnx">
        <node concept="VPM3Z" id="4xJw7BvdcfR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="4xJw7BvdcfU" role="2iSdaV" />
        <node concept="3F0ifn" id="4xJw7Bvd2sj" role="3EZMnx">
          <property role="3F0ifm" value="Expected log events:" />
          <node concept="ljvvj" id="4xJw7Bvd2sk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="4xJw7Bvd2sl" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:4xJw7BvbXxC" resolve="logEvents" />
          <node concept="l2Vlx" id="4xJw7Bvd2sm" role="2czzBx" />
          <node concept="lj46D" id="4xJw7Bvd2sn" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="4xJw7Bvd2so" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hSLIMXg">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:hSLIFSi" resolve="AnonymousCellAnnotation" />
    <node concept="3EZMnI" id="hSLIS0i" role="2wV5jI">
      <node concept="3F0ifn" id="hSLITcJ" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="hXJhAmX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hSLJcHW" role="3EZMnx">
        <property role="3F0ifm" value="cell" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
      </node>
      <node concept="2SsqMj" id="hSLJ7Ys" role="3EZMnx" />
      <node concept="3F0ifn" id="hSLIYVY" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="hXJhCa1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1HNcKYLagtn" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hSQECpS" role="6VMZX">
      <node concept="3F0ifn" id="1HNcKYLa3T5" role="3EZMnx">
        <property role="3F0ifm" value="is in inspector" />
      </node>
      <node concept="3F0A7n" id="1HNcKYLa3Tm" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:1HNcKYL91S1" resolve="isInInspector" />
        <node concept="ljvvj" id="1HNcKYLa3Tn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hSQEF3C" role="3EZMnx">
        <property role="3F0ifm" value="cell id:" />
      </node>
      <node concept="3F0A7n" id="hSQEPMs" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:hSLIFSj" resolve="cellId" />
        <node concept="ljvvj" id="1HNcKYLa3Tg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hSZRzjP" role="3EZMnx">
        <property role="3F0ifm" value="position:" />
      </node>
      <node concept="1QoScp" id="hSZSyRD" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="3F0ifn" id="hSZSGou" role="1QoS34">
          <property role="3F0ifm" value="last" />
        </node>
        <node concept="pkWqt" id="hSZSyRF" role="3e4ffs">
          <node concept="3clFbS" id="hSZSyRG" role="2VODD2">
            <node concept="3clFbF" id="hSZSB2l" role="3cqZAp">
              <node concept="2OqwBi" id="hSZSBhZ" role="3clFbG">
                <node concept="pncrf" id="hSZSB2m" role="2Oq$k0" />
                <node concept="3TrcHB" id="hSZSCrh" role="2OqNvi">
                  <ref role="3TsBF5" to="tp5g:hSZRAX1" resolve="isLastPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2YWUlR" id="hSZSN0N" role="1QoVPY">
          <ref role="1NtTu8" to="tp5g:hSLIFSk" resolve="caretPosition" />
        </node>
        <node concept="ljvvj" id="1HNcKYLa3Th" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="1FgNkkI9zDv" role="3EZMnx">
        <node concept="VPM3Z" id="1FgNkkI9zDF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pkWqt" id="1FgNkkI9zDG" role="pqm2j">
          <node concept="3clFbS" id="1FgNkkI9zDH" role="2VODD2">
            <node concept="3clFbF" id="1FgNkkI9zDI" role="3cqZAp">
              <node concept="2OqwBi" id="1FgNkkI9zDK" role="3clFbG">
                <node concept="pncrf" id="1FgNkkI9zDJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="1FgNkkI9zDO" role="2OqNvi">
                  <ref role="3TsBF5" to="tp5g:1FgNkkI9h56" resolve="useLabelSelection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1FgNkkI9zDy" role="3EZMnx">
          <property role="3F0ifm" value="selection start:" />
        </node>
        <node concept="3F0A7n" id="1FgNkkI9zDz" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:5rZKa_fTvKN" resolve="selectionStart" />
          <node concept="ljvvj" id="1HNcKYLa3Tc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1FgNkkI9zDB" role="3EZMnx">
          <property role="3F0ifm" value="selection end:" />
        </node>
        <node concept="3F0A7n" id="1FgNkkI9zDC" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:5rZKa_fTvKP" resolve="selectionEnd" />
          <node concept="ljvvj" id="1HNcKYLa3Td" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="1HNcKYLa3Te" role="2iSdaV" />
        <node concept="ljvvj" id="1HNcKYLa3Ti" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1HNcKYLa3Tj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hTJ7qe0">
    <property role="3GE5qa" value="mock" />
    <ref role="1XX52x" to="tp5g:hTJ5cZc" resolve="MockAnnotation" />
    <node concept="3EZMnI" id="hTJ7rDP" role="2wV5jI">
      <node concept="3F0ifn" id="hTJ7u2s" role="3EZMnx">
        <property role="3F0ifm" value="&lt;mock" />
      </node>
      <node concept="2SsqMj" id="hTJ7zJu" role="3EZMnx" />
      <node concept="3F0ifn" id="hTJ7_xL" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="2iRfu4" id="i2ICqHp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5k1cI6h4Ka">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:5k1cI6h4in" resolve="NodeTypeSetCheckOperation" />
    <node concept="3EZMnI" id="5k1cI6h4Kc" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYbd" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <node concept="VPxyj" id="yji4X$8TDE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F2HdR" id="5k1cI6h4Kh" role="3EZMnx">
        <property role="2czwfO" value="|" />
        <ref role="1NtTu8" to="tp5g:5k1cI6h4io" resolve="type" />
        <node concept="2iRfu4" id="5k1cI6h4Ki" role="2czzBx" />
      </node>
      <node concept="2YWUlR" id="7uNrZ$pxbqj" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="5k1cI6h4Kf" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7uNrZ$pxdm7" role="6VMZX">
      <node concept="3F0ifn" id="7uNrZ$pxdm8" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7uNrZ$pxdm9" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7uNrZ$pxdma" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7uNrZ$pxdmb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2l6iv8BZPPP">
    <ref role="1XX52x" to="tp5g:2l6iv8BZPPM" resolve="ExpressionContainer" />
    <node concept="3EZMnI" id="2l6iv8BZPPS" role="2wV5jI">
      <node concept="3F0ifn" id="2l6iv8BZPPT" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="2l6iv8BZPPW" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:2l6iv8BZPPN" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="2l6iv8BZPPY" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRfu4" id="2l6iv8BZPPU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="50vRVamdIij">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:50vRVamdIih" resolve="SwitchToInspector" />
    <node concept="PMmxH" id="2wdLO7KhY2l" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
    </node>
  </node>
  <node concept="24kQdi" id="50vRVameF40">
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
    <node concept="PMmxH" id="2wdLO7KhY3L" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="4qWC2JVrBcc">
    <ref role="1XX52x" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
    <node concept="3EZMnI" id="4qWC2JVrBce" role="2wV5jI">
      <node concept="3F0ifn" id="4qWC2JVrBch" role="3EZMnx">
        <property role="3F0ifm" value="Project path:" />
      </node>
      <node concept="3F0A7n" id="4qWC2JVrBcj" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:4qWC2JVrBcb" resolve="projectPath" />
        <node concept="ljvvj" id="6LGtwpU5aij" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="ThWTaQhCnt" role="3EZMnx">
        <property role="3F0ifm" value="ReOpen project:" />
      </node>
      <node concept="3F0A7n" id="ThWTaQhCnv" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:ThWTaQhCnp" resolve="reOpenProject" />
      </node>
      <node concept="l2Vlx" id="4qWC2JVrBcg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="X8Ly3tyk4w">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:65clA3cMU1F" resolve="InvokeActionStatement" />
    <node concept="3EZMnI" id="X8Ly3tyk4y" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY8a" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="3F1sOY" id="X8Ly3tyr4T" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:X8Ly3tyr4R" resolve="actionReference" />
      </node>
      <node concept="2iRfu4" id="X8Ly3tyk4$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="X8Ly3tytJ8">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="tp5g:X8Ly3typO6" resolve="BootstrapActionReference" />
    <node concept="3EZMnI" id="X8Ly3tytJa" role="2wV5jI">
      <node concept="3F0ifn" id="12VrnoksSBX" role="3EZMnx">
        <property role="3F0ifm" value="by id:" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
        <node concept="VPM3Z" id="12VrnoksYN7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="X8Ly3tytJh" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:X8Ly3tyr4I" resolve="actionId" />
        <node concept="OXEIz" id="X8Ly3tytJm" role="P5bDN">
          <node concept="PvTIS" id="X8Ly3tytJn" role="OY2wv">
            <node concept="MLZmj" id="X8Ly3tytJo" role="PvTIR">
              <node concept="3clFbS" id="X8Ly3tytJp" role="2VODD2">
                <node concept="3cpWs8" id="7_E_pNXStN" role="3cqZAp">
                  <node concept="3cpWsn" id="X8Ly3tyQzg" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="_YKpA" id="X8Ly3tyQzh" role="1tU5fm">
                      <node concept="17QB3L" id="X8Ly3tyQzj" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="7_E_pNXStP" role="33vP2m">
                      <node concept="Tc6Ow" id="7_E_pNXStR" role="2ShVmc">
                        <node concept="17QB3L" id="7_E_pNXStT" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="7_E_pNXStH" role="3cqZAp">
                  <node concept="3clFbS" id="7_E_pNXStI" role="2LFqv$">
                    <node concept="3clFbF" id="7_E_pNXSud" role="3cqZAp">
                      <node concept="2OqwBi" id="7_E_pNXSuh" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTzF7" role="2Oq$k0">
                          <ref role="3cqZAo" node="X8Ly3tyQzg" resolve="result" />
                        </node>
                        <node concept="X8dFx" id="7_E_pNXSun" role="2OqNvi">
                          <node concept="37vLTw" id="3GM_nagTyWu" role="25WWJ7">
                            <ref role="3cqZAo" node="7_E_pNXStK" resolve="ext" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7_E_pNXStK" role="1Duv9x">
                    <property role="TrG5h" value="ext" />
                    <node concept="_YKpA" id="3IB4KjUfuVd" role="1tU5fm">
                      <node concept="17QB3L" id="3IB4KjUfuVf" role="_ZDj9" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IB4KjUfuV5" role="1DdaDG">
                    <node concept="2O5UvJ" id="7_E_pNXSto" role="2Oq$k0">
                      <ref role="2O5UnU" to="rliy:7_E_pNXQSn" resolve="ActionIDs" />
                    </node>
                    <node concept="SfwO_" id="3IB4KjUfuVb" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs6" id="X8Ly3tyQzp" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagT$nF" role="3cqZAk">
                    <ref role="3cqZAo" node="X8Ly3tyQzg" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="X8Ly3tyDvP" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="2iRfu4" id="X8Ly3tytJc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3FlSiDCuDgk">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="tp5g:3FlSiDCuCBp" resolve="MPSActionReference" />
    <node concept="3EZMnI" id="3FlSiDCuDgm" role="2wV5jI">
      <node concept="3F0ifn" id="3FlSiDCuE79" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
        <node concept="VPM3Z" id="3FlSiDCuE7a" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="1iCGBv" id="3FlSiDCuDgs" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:3FlSiDCuDcn" resolve="action" />
        <node concept="1sVBvm" id="3FlSiDCuDgt" role="1sWHZn">
          <node concept="3F0A7n" id="3FlSiDCuE77" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3FlSiDCuDgo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="so7passzSq">
    <property role="3GE5qa" value="scopes" />
    <ref role="1XX52x" to="tp5g:so7passww9" resolve="ScopesTest" />
    <node concept="3EZMnI" id="so7passzSy" role="2wV5jI">
      <node concept="3F0ifn" id="so7pass_jY" role="3EZMnx">
        <property role="3F0ifm" value="@check scope@" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <node concept="Vb9p2" id="so7pass_sD" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="VechU" id="so7pass_sH" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
      </node>
      <node concept="2SsqMj" id="so7passzS_" role="3EZMnx" />
      <node concept="2iRfu4" id="so7passzS$" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="3aUmKV2nYC5" role="6VMZX">
      <node concept="3F0ifn" id="4IvydoGulLS" role="3EZMnx">
        <property role="3F0ifm" value="checking reference:" />
      </node>
      <node concept="1iCGBv" id="4IvydoGulLU" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:4IvydoGulmm" resolve="checkingReference" />
        <ref role="1ERwB7" node="7UiJYzpUrKE" resolve="ScopeTest_DeleteExpectedNodes" />
        <node concept="1sVBvm" id="4IvydoGulLV" role="1sWHZn">
          <node concept="3SHvHV" id="4IvydoGulLX" role="2wV5jI" />
        </node>
      </node>
      <node concept="VPM3Z" id="3aUmKV2nYC6" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3EZMnI" id="4IvydoGvxMP" role="3EZMnx">
        <node concept="l2Vlx" id="4IvydoGvxMQ" role="2iSdaV" />
        <node concept="3F0ifn" id="3aUmKV2nYC9" role="3EZMnx">
          <property role="3F0ifm" value="expected nodes:" />
          <node concept="ljvvj" id="4IvydoGvxMS" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="9JHLycyEyT" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:3aUmKV2nYC3" resolve="nodes" />
          <node concept="2iRkQZ" id="9JHLycyEyU" role="2czzBx" />
        </node>
        <node concept="pkWqt" id="4IvydoGvxZI" role="pqm2j">
          <node concept="3clFbS" id="4IvydoGvxZJ" role="2VODD2">
            <node concept="3clFbF" id="4IvydoGvxZM" role="3cqZAp">
              <node concept="3y3z36" id="4IvydoGvy0w" role="3clFbG">
                <node concept="10Nm6u" id="4IvydoGvy0z" role="3uHU7w" />
                <node concept="2OqwBi" id="4IvydoGvy06" role="3uHU7B">
                  <node concept="pncrf" id="4IvydoGvxZN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4IvydoGvy0c" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:4IvydoGulmm" resolve="checkingReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="4IvydoGulLQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3aUmKV2nYBP">
    <property role="3GE5qa" value="scopes" />
    <ref role="1XX52x" to="tp5g:3aUmKV2nYBN" resolve="ScopesExpectedNode" />
    <node concept="3EZMnI" id="3wYn_nuxYOv" role="2wV5jI">
      <node concept="l2Vlx" id="3wYn_nuxYOw" role="2iSdaV" />
      <node concept="1iCGBv" id="3wYn_nuyrKx" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:3wYn_nuyrKv" resolve="ref" />
        <node concept="1sVBvm" id="3wYn_nuyrKy" role="1sWHZn">
          <node concept="3SHvHV" id="3wYn_nuF1Dj" role="2wV5jI">
            <node concept="VPRnO" id="7XYaZQUCclI" role="3F10Kt" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="7UiJYzpUrKE">
    <property role="TrG5h" value="ScopeTest_DeleteExpectedNodes" />
    <property role="3GE5qa" value="scopes" />
    <ref role="1h_SK9" to="tp5g:so7passww9" resolve="ScopesTest" />
    <node concept="1hA7zw" id="7UiJYzpUrKF" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="7UiJYzpUrKG" role="1hA7z_">
        <node concept="3clFbS" id="7UiJYzpUrKH" role="2VODD2">
          <node concept="3clFbF" id="7UiJYzpUrKI" role="3cqZAp">
            <node concept="2OqwBi" id="7UiJYzpUrLO" role="3clFbG">
              <node concept="2OqwBi" id="7UiJYzpUrLq" role="2Oq$k0">
                <node concept="0IXxy" id="7UiJYzpUrKJ" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7UiJYzpUrLw" role="2OqNvi">
                  <ref role="3TtcxE" to="tp5g:3aUmKV2nYC3" resolve="nodes" />
                </node>
              </node>
              <node concept="2Kehj3" id="7UiJYzpUrLU" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="7UiJYzpUw0r" role="3cqZAp">
            <node concept="2OqwBi" id="7UiJYzpUw19" role="3clFbG">
              <node concept="2OqwBi" id="7UiJYzpUw0J" role="2Oq$k0">
                <node concept="0IXxy" id="7UiJYzpUw0s" role="2Oq$k0" />
                <node concept="3TrEf2" id="7UiJYzpUw0P" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:4IvydoGulmm" resolve="checkingReference" />
                </node>
              </node>
              <node concept="2oxUTD" id="48R2RKjty5h" role="2OqNvi">
                <node concept="10Nm6u" id="48R2RKjty5k" role="2oxUTC" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="nMEi6GN30$">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:nMEi6GLtoU" resolve="NodeTypeSystemErrorCheckOperation" />
    <node concept="3EZMnI" id="nMEi6GNigs" role="2wV5jI">
      <node concept="PMmxH" id="nMEi6GNigt" role="3EZMnx">
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="nMEi6GNigu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="426cbTMetsq" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:426cbTMe2uN" resolve="equationRef" />
        <node concept="OXEIz" id="426cbTMetsr" role="P5bDN">
          <node concept="1ou48o" id="426cbTMetss" role="OY2wv">
            <property role="1ezIyd" value="gWZP3tU/custom" />
            <node concept="3GJtP1" id="426cbTMetst" role="1ou48n">
              <node concept="3clFbS" id="426cbTMetsu" role="2VODD2">
                <node concept="3cpWs8" id="426cbTMetsv" role="3cqZAp">
                  <node concept="3cpWsn" id="426cbTMetsw" role="3cpWs9">
                    <property role="TrG5h" value="concept" />
                    <node concept="3uibUv" id="426cbTMetsx" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                    </node>
                    <node concept="35c_gC" id="426cbTMetsy" role="33vP2m">
                      <ref role="35c_gD" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="426cbTMetsz" role="3cqZAp">
                  <node concept="3cpWsn" id="426cbTMets$" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3uibUv" id="426cbTMets_" role="1tU5fm">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="1eOMI4" id="426cbTMetsA" role="33vP2m">
                      <node concept="10QFUN" id="426cbTMetsB" role="1eOMHV">
                        <node concept="2OqwBi" id="426cbTMetsC" role="10QFUP">
                          <node concept="2JrnkZ" id="426cbTMetsD" role="2Oq$k0">
                            <node concept="2OqwBi" id="426cbTMetsE" role="2JrQYb">
                              <node concept="3GMtW1" id="426cbTMetsF" role="2Oq$k0" />
                              <node concept="I4A8Y" id="426cbTMetsG" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="426cbTMetsH" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="426cbTMetsI" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="426cbTMetsJ" role="3cqZAp">
                  <node concept="3cpWsn" id="426cbTMetsK" role="3cpWs9">
                    <property role="TrG5h" value="errorInstances" />
                    <node concept="2OqwBi" id="426cbTMetsL" role="33vP2m">
                      <node concept="2YIFZM" id="426cbTMetsM" role="2Oq$k0">
                        <ref role="1Pybhc" to="yctd:~FindUsagesManager" resolve="FindUsagesManager" />
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.getInstance()" resolve="getInstance" />
                      </node>
                      <node concept="liA8E" id="426cbTMetsN" role="2OqNvi">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                        <node concept="2OqwBi" id="426cbTMetsO" role="37wK5m">
                          <node concept="37vLTw" id="426cbTMetsP" role="2Oq$k0">
                            <ref role="3cqZAo" node="426cbTMets$" resolve="module" />
                          </node>
                          <node concept="liA8E" id="426cbTMetsQ" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="426cbTMetsR" role="37wK5m">
                          <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                          <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                          <node concept="37vLTw" id="426cbTMetsS" role="37wK5m">
                            <ref role="3cqZAo" node="426cbTMetsw" resolve="concept" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="426cbTMetsT" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="2ShNRf" id="426cbTMetsU" role="37wK5m">
                          <node concept="1pGfFk" id="426cbTMetsV" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2hMVRd" id="426cbTMetsW" role="1tU5fm">
                      <node concept="3uibUv" id="426cbTMetsX" role="2hN53Y">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="426cbTMetsY" role="3cqZAp">
                  <node concept="2OqwBi" id="426cbTMetsZ" role="3clFbG">
                    <node concept="2OqwBi" id="426cbTMett0" role="2Oq$k0">
                      <node concept="2OqwBi" id="426cbTMett1" role="2Oq$k0">
                        <node concept="37vLTw" id="426cbTMett2" role="2Oq$k0">
                          <ref role="3cqZAo" node="426cbTMetsK" resolve="errorInstances" />
                        </node>
                        <node concept="ANE8D" id="426cbTMett3" role="2OqNvi" />
                      </node>
                      <node concept="3$u5V9" id="426cbTMett4" role="2OqNvi">
                        <node concept="1bVj0M" id="426cbTMett5" role="23t8la">
                          <node concept="3clFbS" id="426cbTMett6" role="1bW5cS">
                            <node concept="3clFbF" id="426cbTMett7" role="3cqZAp">
                              <node concept="1PxgMI" id="426cbTMett8" role="3clFbG">
                                <node concept="chp4Y" id="426cbTMewV4" role="3oSUPX">
                                  <ref role="cht4Q" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
                                </node>
                                <node concept="37vLTw" id="426cbTMetta" role="1m5AlR">
                                  <ref role="3cqZAo" node="5W7E4fV0WVx" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0WVx" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0WVy" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="426cbTMettd" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="426cbTMette" role="1ou48m">
              <node concept="3clFbS" id="426cbTMettf" role="2VODD2">
                <node concept="3clFbF" id="426cbTMettg" role="3cqZAp">
                  <node concept="37vLTI" id="426cbTMetth" role="3clFbG">
                    <node concept="2ShNRf" id="426cbTMetti" role="37vLTx">
                      <node concept="3zrR0B" id="426cbTMettj" role="2ShVmc">
                        <node concept="3Tqbb2" id="426cbTMettk" role="3zrR0E">
                          <ref role="ehGHo" to="tp5g:426cbTMdZVv" resolve="TypesystemEquationReference" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="426cbTMettl" role="37vLTJ">
                      <node concept="3GMtW1" id="426cbTMettm" role="2Oq$k0" />
                      <node concept="3TrEf2" id="426cbTMeyBC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:426cbTMe2uN" resolve="equationRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="426cbTMetto" role="3cqZAp">
                  <node concept="37vLTI" id="426cbTMettp" role="3clFbG">
                    <node concept="3GLrbK" id="426cbTMettq" role="37vLTx" />
                    <node concept="2OqwBi" id="426cbTMettr" role="37vLTJ">
                      <node concept="2OqwBi" id="426cbTMetts" role="2Oq$k0">
                        <node concept="3GMtW1" id="426cbTMettt" role="2Oq$k0" />
                        <node concept="3TrEf2" id="426cbTMeyHe" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:426cbTMe2uN" resolve="equationRef" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="426cbTMeyZB" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:426cbTMdZVw" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="426cbTMettw" role="1eyP2E">
              <ref role="ehGHo" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
            </node>
            <node concept="6VE3a" id="426cbTMettx" role="1ezQQy">
              <node concept="3clFbS" id="426cbTMetty" role="2VODD2">
                <node concept="3cpWs8" id="426cbTMettz" role="3cqZAp">
                  <node concept="3cpWsn" id="426cbTMett$" role="3cpWs9">
                    <property role="TrG5h" value="errorStatement" />
                    <node concept="3Tqbb2" id="426cbTMett_" role="1tU5fm">
                      <ref role="ehGHo" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
                    </node>
                    <node concept="3GLrbK" id="426cbTMettA" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs6" id="426cbTMettB" role="3cqZAp">
                  <node concept="2OqwBi" id="426cbTMettC" role="3cqZAk">
                    <node concept="37vLTw" id="426cbTMettD" role="2Oq$k0">
                      <ref role="3cqZAo" node="426cbTMett$" resolve="errorStatement" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORd_Q" role="2OqNvi">
                      <ref role="37wK5l" to="tpdd:1oFBbRehoLP" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2w7KopAW1Qm" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAW1Qn" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAW1Qo" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAW1Qp" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAW1Qq" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAW1Qr" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAW1Qs" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAW1Qt" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAW1Qu" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="nMEi6GNigw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
      </node>
      <node concept="2iRfu4" id="nMEi6GNigx" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="nMEi6GNigX" role="6VMZX">
      <node concept="3F0ifn" id="nMEi6GNigY" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="nMEi6GNigZ" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="nMEi6GNih0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="nMEi6GNih1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7eBNsYUkDiC">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:6MWlVHU6huX" resolve="NodeUnknownErrorCheckOperation" />
    <node concept="3EZMnI" id="7eBNsYUkH5P" role="6VMZX">
      <node concept="3F0ifn" id="7eBNsYUkH5Q" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7eBNsYUkH5R" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7eBNsYUkH5S" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7eBNsYUkH5T" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7eBNsYVSDiY" role="2wV5jI">
      <node concept="PMmxH" id="7eBNsYVSDiZ" role="3EZMnx">
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="7eBNsYVSDj0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="7eBNsYVSDj1" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:7eBNsYUjDou" resolve="errorRef" />
      </node>
      <node concept="3F1sOY" id="2w7KopAVWCK" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAVWCL" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAVWCM" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAVWCN" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAVWCO" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAVWCP" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAVWCQ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAVWCR" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAVWCS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="7eBNsYVSDkk" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
      </node>
      <node concept="2iRfu4" id="7eBNsYVSDkl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7eBNsYUkMM_">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:6EW1JnOFUIt" resolve="IRuleReference" />
    <node concept="1HlG4h" id="7eBNsYUkMZp" role="2wV5jI">
      <ref role="1k5W1q" to="tpch:hOawUFH" resolve="AnnotationNode" />
      <node concept="1HfYo3" id="7eBNsYUkMZq" role="1HlULh">
        <node concept="3TQlhw" id="7eBNsYUkMZr" role="1Hhtcw">
          <node concept="3clFbS" id="7eBNsYUkMZs" role="2VODD2">
            <node concept="3clFbF" id="7eBNsYUkMZt" role="3cqZAp">
              <node concept="2OqwBi" id="7eBNsYUkMZu" role="3clFbG">
                <node concept="pncrf" id="7eBNsYUkMZv" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORd_S" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:6EW1JnOFUIS" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yfXC2" id="7eBNsYUkMZx" role="3F10Kt">
        <ref role="3ygfmf" to="tp5g:7eBNsYUkvtl" resolve="declaration" />
      </node>
      <node concept="VechU" id="7eBNsYUkMZy" role="3F10Kt">
        <property role="Vb096" value="fLwANPu/blue" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7eBNsYUNfjM">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:7eBNsYUkBrv" resolve="NodeConstraintsErrorCheckOperation" />
    <node concept="3EZMnI" id="7eBNsYUNfk9" role="2wV5jI">
      <node concept="PMmxH" id="7eBNsYUNfka" role="3EZMnx">
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="7eBNsYUNfkb" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="A1WHu" id="Bszh9w6Uo4" role="3vIgyS">
          <ref role="A1WHt" node="Bszh9w5RYg" resolve="ShowText" />
        </node>
      </node>
      <node concept="3F1sOY" id="7eBNsYUNfkc" role="3EZMnx">
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="1NtTu8" to="tp5g:7eBNsYUMJVx" resolve="errorRef" />
      </node>
      <node concept="3F1sOY" id="Bszh9w5YdE" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="Bszh9w5YdL" role="pqm2j">
          <node concept="3clFbS" id="Bszh9w5YdM" role="2VODD2">
            <node concept="3clFbF" id="Bszh9w5YhM" role="3cqZAp">
              <node concept="2OqwBi" id="Bszh9w60Pp" role="3clFbG">
                <node concept="2OqwBi" id="Bszh9w5YAi" role="2Oq$k0">
                  <node concept="pncrf" id="Bszh9w5YhL" role="2Oq$k0" />
                  <node concept="3TrEf2" id="Bszh9w61nU" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="Bszh9w61U7" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="7eBNsYUNfke" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
      </node>
      <node concept="2iRfu4" id="7eBNsYUNfkf" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7eBNsYW5rkV" role="6VMZX">
      <node concept="3F0ifn" id="7eBNsYW5rkW" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7eBNsYW5rkX" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7eBNsYW5rkY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7eBNsYW5rkZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7eBNsYVJUeY">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:7eBNsYVJSEH" resolve="NodeConstraintsWarningCheckOperation" />
    <node concept="3EZMnI" id="7eBNsYVJW1a" role="2wV5jI">
      <node concept="PMmxH" id="7eBNsYVJW1b" role="3EZMnx">
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="7eBNsYVJW1c" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="7eBNsYVJW1d" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:7eBNsYVJSL1" resolve="warningRef" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
      </node>
      <node concept="3F1sOY" id="2w7KopAVZ5B" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAVZ5C" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAVZ5D" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAVZ5E" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAVZ5F" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAVZ5G" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAVZ5H" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAVZ5I" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAVZ5J" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="7eBNsYVJW2w" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="7eBNsYVJW2x" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7eBNsYVJZSB" role="6VMZX">
      <node concept="3F0ifn" id="7eBNsYVJZSC" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7eBNsYVJZSD" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7eBNsYVJZSE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7eBNsYVJZSF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7eBNsYVKhqx">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:7eBNsYVKb$0" resolve="NodeUnknownWarningCheckOperation" />
    <node concept="3EZMnI" id="7eBNsYVKnQ6" role="6VMZX">
      <node concept="3F0ifn" id="7eBNsYVKnQ7" role="3EZMnx">
        <property role="3F0ifm" value="name:" />
      </node>
      <node concept="3F0A7n" id="7eBNsYVKnQ8" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="default" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7eBNsYVKnQ9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7eBNsYVKnQa" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7eBNsYVRzf5" role="2wV5jI">
      <node concept="PMmxH" id="7eBNsYVRzf6" role="3EZMnx">
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="7eBNsYVRzf7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="7eBNsYVRzf8" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:7eBNsYVKhqz" resolve="warningRef" />
      </node>
      <node concept="3F1sOY" id="2w7KopAVZkU" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAVZkV" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAVZkW" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAVZkX" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAVZkY" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAVZkZ" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAVZl0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAVZl1" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAVZl2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="7eBNsYVRzgr" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="7eBNsYVRzgs" role="2iSdaV" />
    </node>
  </node>
  <node concept="2NdhB4" id="3yX4vo1Qwgl">
    <property role="TrG5h" value="EditorLanguageKeyPack" />
    <node concept="2NdhxG" id="3yX4vo1QFNt" role="2NdZaQ">
      <property role="Xl_RC" value="PARENTH" />
    </node>
    <node concept="2NdhxG" id="2NgG6tkHvVt" role="2NdZaQ">
      <property role="Xl_RC" value="KEYWORD" />
    </node>
  </node>
  <node concept="24kQdi" id="bG3Ez5dmV9">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
    <node concept="3EZMnI" id="bG3Ez5dn7W" role="2wV5jI">
      <node concept="l2Vlx" id="bG3Ez5dn7X" role="2iSdaV" />
      <node concept="3F0ifn" id="bG3Ez5fCTq" role="3EZMnx">
        <property role="3F0ifm" value="press mouse" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5fDHS" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F0A7n" id="bG3Ez5fE$f" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:bG3Ez5fDVB" resolve="x" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5fE_f" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="Vb9p2" id="bG3Ez5fEMv" role="3F10Kt" />
        <node concept="11L4FC" id="bG3Ez5fEMw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3CIbrd" id="bG3Ez5fEMx" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="bG3Ez5fE$I" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:bG3Ez5fDVC" resolve="y" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5fDIk" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5dn7Y" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="hFCSAw$" resolve="LeftParen" />
        <node concept="ljvvj" id="bG3Ez5dnYq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="bG3Ez5hm9I" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:fK9aQHS" resolve="statementList" />
        <node concept="lj46D" id="bG3Ez5hmdo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="bG3Ez5hmbz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="bG3Ez5dn7Z" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5doQQ" role="3EZMnx">
        <property role="3F0ifm" value="release mouse" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5pL$9" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="bG3Ez5qRK7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="bG3Ez5nad1">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:bG3Ez5na2z" resolve="DragMouseStatement" />
    <node concept="3EZMnI" id="bG3Ez5nae_" role="2wV5jI">
      <node concept="PMmxH" id="bG3Ez5naeA" role="3EZMnx">
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="bG3Ez5naeB" role="2iSdaV" />
      <node concept="3F0ifn" id="bG3Ez5naeC" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpc5:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F0A7n" id="bG3Ez5naeD" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:bG3Ez5na7K" resolve="x" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5naeE" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="Vb9p2" id="bG3Ez5naeF" role="3F10Kt" />
        <node concept="11L4FC" id="bG3Ez5naeG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3CIbrd" id="bG3Ez5naeH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="bG3Ez5naeI" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:bG3Ez5na7L" resolve="y" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5naeJ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpc5:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="bG3Ez5pLmN" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="71GR8EvPDcX">
    <ref role="1XX52x" to="tp5g:71GR8EvPDc$" resolve="UntypedExpression" />
    <node concept="3F0ifn" id="71GR8EvPDcZ" role="2wV5jI">
      <property role="3F0ifm" value="_" />
    </node>
  </node>
  <node concept="24kQdi" id="4xJw7Bve2nw">
    <property role="3GE5qa" value="log" />
    <ref role="1XX52x" to="tp5g:4xJw7BvbXoK" resolve="LogEvent" />
    <node concept="3EZMnI" id="4xJw7Bve2rx" role="2wV5jI">
      <node concept="3F0ifn" id="4xJw7Bve2uC" role="3EZMnx">
        <property role="3F0ifm" value="log level:" />
      </node>
      <node concept="l2Vlx" id="4xJw7Bve2ry" role="2iSdaV" />
      <node concept="3F0A7n" id="4xJw7Bve2tF" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:3Ftr4R6BHaB" resolve="level" />
      </node>
      <node concept="3F0ifn" id="4xJw7Bve2rz" role="3EZMnx">
        <property role="3F0ifm" value="message:" />
      </node>
      <node concept="3F0A7n" id="4xJw7Bve2r$" role="3EZMnx">
        <property role="1$x2rV" value="&lt;&lt;any text&gt;&gt;" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tp5g:4xJw7Bve0TB" resolve="message" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1RxYXnVZEBr">
    <property role="3GE5qa" value="nodeOperation" />
    <ref role="1XX52x" to="tp5g:1RxYXnVZA9M" resolve="NodeInfoCheckOperation" />
    <node concept="3EZMnI" id="1RxYXnVZEBt" role="2wV5jI">
      <node concept="PMmxH" id="1RxYXnVZEBu" role="3EZMnx">
        <ref role="1ERwB7" node="hG2S5d1" resolve="Annotation_Actions" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <node concept="VPxyj" id="1RxYXnVZEBv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="1RxYXnVZEBw" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:1RxYXnVZDuH" resolve="statementRef" />
        <node concept="OXEIz" id="1RxYXnVZEBx" role="P5bDN">
          <node concept="1ou48o" id="1RxYXnVZEBy" role="OY2wv">
            <property role="1ezIyd" value="gWZP3tU/custom" />
            <node concept="3GJtP1" id="1RxYXnVZEBz" role="1ou48n">
              <node concept="3clFbS" id="1RxYXnVZEB$" role="2VODD2">
                <node concept="3cpWs8" id="1RxYXnVZEB_" role="3cqZAp">
                  <node concept="3cpWsn" id="1RxYXnVZEBA" role="3cpWs9">
                    <property role="TrG5h" value="concept" />
                    <node concept="3uibUv" id="1RxYXnVZEBB" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                    </node>
                    <node concept="35c_gC" id="1RxYXnVZEBC" role="33vP2m">
                      <ref role="35c_gD" to="tpd4:hODpp5F" resolve="InfoStatement" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1RxYXnVZEBD" role="3cqZAp">
                  <node concept="3cpWsn" id="1RxYXnVZEBE" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3uibUv" id="1RxYXnVZEBF" role="1tU5fm">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="1eOMI4" id="1RxYXnVZEBG" role="33vP2m">
                      <node concept="10QFUN" id="1RxYXnVZEBH" role="1eOMHV">
                        <node concept="2OqwBi" id="1RxYXnVZEBI" role="10QFUP">
                          <node concept="2JrnkZ" id="1RxYXnVZEBJ" role="2Oq$k0">
                            <node concept="2OqwBi" id="1RxYXnVZEBK" role="2JrQYb">
                              <node concept="3GMtW1" id="1RxYXnVZEBL" role="2Oq$k0" />
                              <node concept="I4A8Y" id="1RxYXnVZEBM" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1RxYXnVZEBN" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="1RxYXnVZEBO" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1RxYXnVZEBP" role="3cqZAp">
                  <node concept="3cpWsn" id="1RxYXnVZEBQ" role="3cpWs9">
                    <property role="TrG5h" value="statementInstances" />
                    <node concept="2OqwBi" id="1RxYXnVZEBR" role="33vP2m">
                      <node concept="2YIFZM" id="1RxYXnVZEBS" role="2Oq$k0">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="yctd:~FindUsagesManager" resolve="FindUsagesManager" />
                      </node>
                      <node concept="liA8E" id="1RxYXnVZEBT" role="2OqNvi">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                        <node concept="2OqwBi" id="1RxYXnVZEBU" role="37wK5m">
                          <node concept="37vLTw" id="1RxYXnVZEBV" role="2Oq$k0">
                            <ref role="3cqZAo" node="1RxYXnVZEBE" resolve="module" />
                          </node>
                          <node concept="liA8E" id="1RxYXnVZEBW" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="1RxYXnVZEBX" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                          <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                          <node concept="37vLTw" id="1RxYXnVZEBY" role="37wK5m">
                            <ref role="3cqZAo" node="1RxYXnVZEBA" resolve="concept" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="1RxYXnVZEBZ" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="2ShNRf" id="1RxYXnVZEC0" role="37wK5m">
                          <node concept="1pGfFk" id="1RxYXnVZEC1" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2hMVRd" id="1RxYXnVZEC2" role="1tU5fm">
                      <node concept="3uibUv" id="1RxYXnVZEC3" role="2hN53Y">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1RxYXnVZEC4" role="3cqZAp">
                  <node concept="2OqwBi" id="1RxYXnVZEC5" role="3clFbG">
                    <node concept="2OqwBi" id="1RxYXnVZEC6" role="2Oq$k0">
                      <node concept="2OqwBi" id="1RxYXnVZEC7" role="2Oq$k0">
                        <node concept="37vLTw" id="1RxYXnVZEC8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1RxYXnVZEBQ" resolve="statementInstances" />
                        </node>
                        <node concept="ANE8D" id="1RxYXnVZEC9" role="2OqNvi" />
                      </node>
                      <node concept="3$u5V9" id="1RxYXnVZECa" role="2OqNvi">
                        <node concept="1bVj0M" id="1RxYXnVZECb" role="23t8la">
                          <node concept="3clFbS" id="1RxYXnVZECc" role="1bW5cS">
                            <node concept="3clFbF" id="1RxYXnVZECd" role="3cqZAp">
                              <node concept="1PxgMI" id="1RxYXnVZECe" role="3clFbG">
                                <node concept="chp4Y" id="714IaVdGZ4k" role="3oSUPX">
                                  <ref role="cht4Q" to="tpd4:hODpp5F" resolve="InfoStatement" />
                                </node>
                                <node concept="37vLTw" id="1RxYXnVZECf" role="1m5AlR">
                                  <ref role="3cqZAo" node="5W7E4fV0WVz" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0WVz" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0WV$" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="1RxYXnVZECi" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="1RxYXnVZECj" role="1ou48m">
              <node concept="3clFbS" id="1RxYXnVZECk" role="2VODD2">
                <node concept="3clFbF" id="1RxYXnVZECl" role="3cqZAp">
                  <node concept="37vLTI" id="1RxYXnVZECm" role="3clFbG">
                    <node concept="2ShNRf" id="1RxYXnVZECn" role="37vLTx">
                      <node concept="3zrR0B" id="1RxYXnVZECo" role="2ShVmc">
                        <node concept="3Tqbb2" id="1RxYXnVZECp" role="3zrR0E">
                          <ref role="ehGHo" to="tp5g:1RxYXnVZDNT" resolve="InfoStatementReference" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1RxYXnVZECq" role="37vLTJ">
                      <node concept="3GMtW1" id="1RxYXnVZECr" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1RxYXnVZRZ$" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:1RxYXnVZDuH" resolve="statementRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1RxYXnVZECt" role="3cqZAp">
                  <node concept="37vLTI" id="1RxYXnVZECu" role="3clFbG">
                    <node concept="3GLrbK" id="1RxYXnVZECv" role="37vLTx" />
                    <node concept="2OqwBi" id="1RxYXnVZECw" role="37vLTJ">
                      <node concept="2OqwBi" id="1RxYXnVZECx" role="2Oq$k0">
                        <node concept="3GMtW1" id="1RxYXnVZECy" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1RxYXnVZSUj" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:1RxYXnVZDuH" resolve="statementRef" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1RxYXnVZTd7" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:1RxYXnVZDNU" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="1RxYXnVZEC_" role="1eyP2E">
              <ref role="ehGHo" to="tpd4:hODpp5F" resolve="InfoStatement" />
            </node>
            <node concept="6VE3a" id="1RxYXnVZECA" role="1ezQQy">
              <node concept="3clFbS" id="1RxYXnVZECB" role="2VODD2">
                <node concept="3cpWs6" id="1RxYXnVZECG" role="3cqZAp">
                  <node concept="2OqwBi" id="1RxYXnVZECH" role="3cqZAk">
                    <node concept="3zqWPK" id="70OdufORd_U" role="2OqNvi">
                      <ref role="37wK5l" to="tpdd:1oFBbRehoLP" resolve="getName" />
                    </node>
                    <node concept="3GLrbK" id="1RxYXnVZQUz" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2w7KopAW0yU" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
        <node concept="pkWqt" id="2w7KopAW0yV" role="pqm2j">
          <node concept="3clFbS" id="2w7KopAW0yW" role="2VODD2">
            <node concept="3clFbF" id="2w7KopAW0yX" role="3cqZAp">
              <node concept="2OqwBi" id="2w7KopAW0yY" role="3clFbG">
                <node concept="2OqwBi" id="2w7KopAW0yZ" role="2Oq$k0">
                  <node concept="pncrf" id="2w7KopAW0z0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2w7KopAW0z1" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2w7KopAW0z2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YWUlR" id="1RxYXnVZECK" role="3EZMnx">
        <ref role="1k5W1q" node="7uNrZ$pp7Rn" resolve="TestLabel" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="1RxYXnVZECL" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1RxYXnVXBG1">
    <property role="3GE5qa" value="scopes" />
    <ref role="1XX52x" to="tp5g:1RxYXnVXz$p" resolve="MockScopeProvider" />
    <node concept="3EZMnI" id="1RxYXnVXBGn" role="2wV5jI">
      <node concept="l2Vlx" id="1RxYXnVXBGo" role="2iSdaV" />
      <node concept="3F0ifn" id="1RxYXnVXBGw" role="3EZMnx">
        <property role="3F0ifm" value="mock scopes" />
      </node>
      <node concept="3F2HdR" id="1RxYXnVXBG$" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:1RxYXnVXBGj" resolve="entries" />
        <node concept="l2Vlx" id="1RxYXnVXBG_" role="2czzBx" />
        <node concept="pj6Ft" id="1RxYXnVXBGA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1RxYXnVXBGB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1RxYXnVXBGC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1RxYXnVZ8wj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1RxYXnVZ8wy" role="3EZMnx">
        <property role="3F0ifm" value="in" />
      </node>
      <node concept="3F1sOY" id="1RxYXnVZ8wQ" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:1RxYXnVZ8u5" resolve="node" />
        <node concept="lj46D" id="1RxYXnVZ8x1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1RxYXnVZ8x2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1RxYXnVZ8x3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3vyZuw" id="1RxYXnVZ8yO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1RxYXnVXBHe">
    <property role="3GE5qa" value="scopes" />
    <ref role="1XX52x" to="tp5g:1RxYXnVXBFy" resolve="ScopeEntry" />
    <node concept="3EZMnI" id="1RxYXnVYs8m" role="2wV5jI">
      <node concept="l2Vlx" id="1RxYXnVYs8n" role="2iSdaV" />
      <node concept="3F0ifn" id="1RxYXnVZjHp" role="3EZMnx">
        <property role="3F0ifm" value="for" />
      </node>
      <node concept="1iCGBv" id="1RxYXnVYs8t" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:1RxYXnVYpq4" resolve="kind" />
        <node concept="1sVBvm" id="1RxYXnVYs8w" role="1sWHZn">
          <node concept="3F0A7n" id="1RxYXnVZ2ZM" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1RxYXnVZjIX" role="3EZMnx">
        <property role="3F0ifm" value="use" />
      </node>
      <node concept="3F2HdR" id="1RxYXnVYs8q" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp5g:1RxYXnVXBF_" resolve="nodes" />
        <node concept="l2Vlx" id="1RxYXnVYs8r" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1RxYXnVYsps">
    <property role="3GE5qa" value="scopes" />
    <ref role="1XX52x" to="tp5g:1RxYXnVYs8h" resolve="NamedNodeReference" />
    <node concept="1iCGBv" id="1RxYXnVYspu" role="2wV5jI">
      <ref role="1NtTu8" to="tp5g:1RxYXnVYs8i" resolve="node" />
      <node concept="1sVBvm" id="1RxYXnVYspw" role="1sWHZn">
        <node concept="3F0A7n" id="1RxYXnVYspB" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="wUiM63T53x">
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="tp5g:wUiM63T4Ip" resolve="IsIntentionApplicableExpression" />
    <node concept="3EZMnI" id="wUiM63T53z" role="2wV5jI">
      <node concept="PMmxH" id="wUiM63T53E" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="1iCGBv" id="wUiM63T53Z" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:wUiM63T4Iq" resolve="intention" />
        <node concept="1sVBvm" id="wUiM63T541" role="1sWHZn">
          <node concept="3F0A7n" id="wUiM63T549" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="wUiM63T53A" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4K12N3pJCcu">
    <property role="3GE5qa" value="migration" />
    <ref role="1XX52x" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
    <node concept="3EZMnI" id="4K12N3pJCcw" role="2wV5jI">
      <node concept="3EZMnI" id="4K12N3pJCcx" role="3EZMnx">
        <node concept="VPM3Z" id="4K12N3pJCcy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="4K12N3pJCcz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4K12N3pJCc$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="4K12N3pJCc_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="4K12N3pJCcA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4K12N3pJCcB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="4K12N3pJCcC" role="3EZMnx">
          <property role="3F0ifm" value="Migration test case" />
        </node>
        <node concept="3F0A7n" id="5JRx$mlRVmp" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="4K12N3pJCcE" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5JRx$mlRVro" role="3EZMnx">
        <node concept="VPM3Z" id="5JRx$mlRVrq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5JRx$mlRVs7" role="3EZMnx" />
        <node concept="3F0ifn" id="5JRx$mlRVsd" role="3EZMnx">
          <property role="3F0ifm" value="for migration" />
        </node>
        <node concept="3F2HdR" id="5JRx$mlRVs_" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:5JRx$mlRSG2" resolve="migration" />
          <node concept="2iRkQZ" id="5JRx$mlRVsG" role="2czzBx" />
          <node concept="1xolST" id="5JRx$mlVsRU" role="2czzBI">
            <property role="1xolSY" value="&lt;no migration&gt;" />
            <node concept="OXEIz" id="5JRx$mlVsRX" role="P5bDN">
              <node concept="1ou48o" id="5JRx$mlSHI7" role="OY2wv">
                <node concept="3GJtP1" id="5JRx$mlSHI8" role="1ou48n">
                  <node concept="3clFbS" id="5JRx$mlSHI9" role="2VODD2">
                    <node concept="3clFbF" id="oIXu13FPtH" role="3cqZAp">
                      <node concept="2OqwBi" id="oIXu13FTkh" role="3clFbG">
                        <node concept="2OqwBi" id="oIXu13FPZ4" role="2Oq$k0">
                          <node concept="3GMtW1" id="oIXu13FPtF" role="2Oq$k0" />
                          <node concept="I4A8Y" id="oIXu13FSyV" role="2OqNvi" />
                        </node>
                        <node concept="3lApI0" id="oIXu13FUqO" role="2OqNvi">
                          <node concept="chp4Y" id="5QK5AMJp7yI" role="3MHPDn">
                            <ref role="cht4Q" to="53vh:4uVwhQyFcjm" resolve="IMigrationUnit" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ouSdP" id="5JRx$mlSHIa" role="1ou48m">
                  <node concept="3clFbS" id="5JRx$mlSHIb" role="2VODD2">
                    <node concept="3clFbF" id="5JRx$mlUts9" role="3cqZAp">
                      <node concept="2OqwBi" id="5JRx$mlUwCY" role="3clFbG">
                        <node concept="2OqwBi" id="5JRx$mlUtZR" role="2Oq$k0">
                          <node concept="3GMtW1" id="5JRx$mlUts8" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="5JRx$mlUuYD" role="2OqNvi">
                            <ref role="3TtcxE" to="tp5g:5JRx$mlRSG2" resolve="migration" />
                          </node>
                        </node>
                        <node concept="TSZUe" id="5JRx$mlUyll" role="2OqNvi">
                          <node concept="2pJPEk" id="5JRx$mlU$2U" role="25WWJ7">
                            <node concept="2pJPED" id="5JRx$mlU$nM" role="2pJPEn">
                              <ref role="2pJxaS" to="tp5g:5JRx$mlRtY9" resolve="MigrationReference" />
                              <node concept="2pIpSj" id="5JRx$mlU$On" role="2pJxcM">
                                <ref role="2pIpSl" to="tp5g:5JRx$mlRtYa" resolve="migration" />
                                <node concept="36biLy" id="5JRx$mlU_6h" role="28nt2d">
                                  <node concept="3GLrbK" id="5JRx$mlU_b7" role="36biLW" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5JRx$mlW3ca" role="3cqZAp">
                      <node concept="37vLTI" id="5JRx$mlW5Xb" role="3clFbG">
                        <node concept="3cpWs3" id="5JRx$mlW87C" role="37vLTx">
                          <node concept="Xl_RD" id="5JRx$mlW8cT" role="3uHU7w">
                            <property role="Xl_RC" value="_Test" />
                          </node>
                          <node concept="2OqwBi" id="5JRx$mlW78z" role="3uHU7B">
                            <node concept="3GLrbK" id="5JRx$mlW6Z9" role="2Oq$k0" />
                            <node concept="3TrcHB" id="5JRx$mlW7mt" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5JRx$mlW3us" role="37vLTJ">
                          <node concept="3GMtW1" id="5JRx$mlW3c8" role="2Oq$k0" />
                          <node concept="3TrcHB" id="5JRx$mlW4jn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="5JRx$mlSHYw" role="1eyP2E">
                  <ref role="ehGHo" to="53vh:4uVwhQyFcjm" resolve="IMigrationUnit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="5JRx$mlRVrt" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5j9sOBrKrSB" role="3EZMnx">
        <node concept="VPM3Z" id="5j9sOBrKrSC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5j9sOBrKrSD" role="3EZMnx" />
        <node concept="3F0ifn" id="5j9sOBrKrSE" role="3EZMnx">
          <property role="3F0ifm" value="which is assumed to be deterministic" />
        </node>
        <node concept="3F2HdR" id="5j9sOBrLfVv" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:5j9sOBrGAXZ" resolve="option" />
          <node concept="2iRkQZ" id="5j9sOBrLfVz" role="2czzBx" />
          <node concept="VPM3Z" id="5j9sOBrLfV$" role="3F10Kt" />
          <node concept="3F0ifn" id="5j9sOBrLfVE" role="2czzBI">
            <property role="ilYzB" value="&lt;structurally&gt;" />
          </node>
        </node>
        <node concept="2iRfu4" id="5j9sOBrKrTg" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5j9sOBrKqVJ" role="3EZMnx" />
      <node concept="3F0ifn" id="4K12N3pJCcF" role="3EZMnx">
        <property role="3F0ifm" value="input" />
        <node concept="VQ3r3" id="4K12N3pJCcG" role="3F10Kt">
          <property role="2USNnj" value="gtbM8PH/2" />
        </node>
      </node>
      <node concept="3EZMnI" id="4K12N3pJCcH" role="3EZMnx">
        <node concept="VPM3Z" id="4K12N3pJCcI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="4K12N3pJCcJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4K12N3pJCcK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="4K12N3pJCcL" role="3EZMnx" />
        <node concept="3F2HdR" id="4K12N3pJCcM" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:4K12N3pJ$JC" resolve="inputNodes" />
          <node concept="2iRkQZ" id="4K12N3pJCcN" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="4K12N3pJCcO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="4K12N3pJCcP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4K12N3pJCcQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="4K12N3pJCcR" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="4K12N3pJIIp" role="3EZMnx">
        <property role="3F0ifm" value="output" />
        <node concept="VQ3r3" id="4K12N3pJIIq" role="3F10Kt">
          <property role="2USNnj" value="gtbM8PH/2" />
        </node>
      </node>
      <node concept="3EZMnI" id="4K12N3pJIF$" role="3EZMnx">
        <node concept="VPM3Z" id="4K12N3pJIF_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="4K12N3pJIFA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4K12N3pJIFB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3XFhqQ" id="4K12N3pJIFC" role="3EZMnx" />
        <node concept="3F2HdR" id="4K12N3pJIFD" role="3EZMnx">
          <ref role="1NtTu8" to="tp5g:4K12N3pJ_ik" resolve="outputNodes" />
          <node concept="2iRkQZ" id="4K12N3pJIFE" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="4K12N3pJIFF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="4K12N3pJIFG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4K12N3pJIFH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="4K12N3pJIFI" role="2iSdaV" />
      </node>
      <node concept="3XFhqQ" id="4K12N3pJCda" role="3EZMnx" />
      <node concept="2iRkQZ" id="4K12N3pJCdo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2154_0wV2x$">
    <ref role="1XX52x" to="tp5g:2154_0wV2x7" resolve="BeforeTestsMethod" />
    <node concept="PMmxH" id="6woObKL_kMj" role="2wV5jI">
      <ref role="PMmxG" node="6woObKL_kM5" resolve="BeforeAfterEditor" />
    </node>
  </node>
  <node concept="24kQdi" id="2154_0wV2Aw">
    <ref role="1XX52x" to="tp5g:2154_0wV2x8" resolve="AfterTestsMethod" />
    <node concept="PMmxH" id="6woObKL_kM$" role="2wV5jI">
      <ref role="PMmxG" node="6woObKL_kM5" resolve="BeforeAfterEditor" />
    </node>
  </node>
  <node concept="PKFIW" id="6woObKL_kM5">
    <property role="TrG5h" value="BeforeAfterEditor" />
    <ref role="1XX52x" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="3EZMnI" id="6woObKL_kM6" role="2wV5jI">
      <node concept="PMmxH" id="6woObKL_kM7" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3EZMnI" id="6woObKL_kM8" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="ljvvj" id="6woObKL_kM9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="6woObKL_kMa" role="2iSdaV" />
        <node concept="3F0ifn" id="6woObKL_kMb" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
          <node concept="ljvvj" id="6woObKL_kMc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6woObKL_kMd" role="3EZMnx">
          <property role="1cu_pB" value="gtguBGO/2" />
          <ref role="1NtTu8" to="tpee:gyVODHa" resolve="body" />
          <node concept="lj46D" id="6woObKL_kMe" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="6woObKL_kMf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6woObKL_kMg" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        </node>
        <node concept="PMmxH" id="6woObKL_kMh" role="AHCbl">
          <ref role="PMmxG" to="tpen:MTvSFwydN_" resolve="ConceptFunction_Folded_Component" />
        </node>
      </node>
      <node concept="l2Vlx" id="6woObKL_kMi" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5JRx$mlRtYG">
    <property role="3GE5qa" value="migration" />
    <ref role="1XX52x" to="tp5g:5JRx$mlRtY9" resolve="MigrationReference" />
    <node concept="1iCGBv" id="5JRx$mlRtYM" role="2wV5jI">
      <ref role="1NtTu8" to="tp5g:5JRx$mlRtYa" resolve="migration" />
      <node concept="1sVBvm" id="5JRx$mlRtYP" role="1sWHZn">
        <node concept="3F0A7n" id="5JRx$mlRtYR" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="H9$uslP7vu">
    <property role="3GE5qa" value="expression" />
    <ref role="1XX52x" to="tp5g:H9$uslP7vo" resolve="IsActionApplicableExpression" />
    <node concept="3EZMnI" id="H9$uslP7vw" role="2wV5jI">
      <node concept="PMmxH" id="H9$uslP7vx" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="3F1sOY" id="H9$uslP7vy" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:H9$uslP7vq" resolve="actionReference" />
      </node>
      <node concept="2iRfu4" id="H9$uslP7vz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1488IJS6w6l">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:1488IJS6sZl" resolve="InvokeSurroundWithIntentionStatement" />
    <node concept="3EZMnI" id="1488IJS6w6n" role="2wV5jI">
      <node concept="PMmxH" id="1488IJS6whV" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="1488IJS6w6p" role="2iSdaV" />
      <node concept="1iCGBv" id="1488IJS6wi3" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:1488IJS6sZo" resolve="intention" />
        <node concept="ljvvj" id="1488IJS6wi4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1488IJS6wi5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1sVBvm" id="1488IJS6wi6" role="1sWHZn">
          <node concept="3SHvHV" id="1488IJS6wi8" role="2wV5jI" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5j9sOBrM2Aj">
    <property role="3GE5qa" value="migration" />
    <ref role="1XX52x" to="tp5g:5j9sOBrG_KN" resolve="IgnoreMigrationDataOption" />
    <node concept="3EZMnI" id="5j9sOBrRvDE" role="2wV5jI">
      <node concept="PMmxH" id="5j9sOBrMRvA" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1ERwB7" node="5j9sOBrXeoS" resolve="MigrationTestOption_Delete" />
        <node concept="VPxyj" id="5j9sOBrWFAs" role="3F10Kt" />
        <node concept="Vb9p2" id="5j9sOBrNGo2" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="5j9sOBrRvDO" role="3EZMnx">
        <property role="3F0ifm" value="by scripts" />
      </node>
      <node concept="1HlG4h" id="5j9sOBrRvFr" role="3EZMnx">
        <ref role="1ERwB7" node="5j9sOBrXeoS" resolve="MigrationTestOption_Delete" />
        <node concept="1HfYo3" id="5j9sOBrRvFt" role="1HlULh">
          <node concept="3TQlhw" id="5j9sOBrRvFv" role="1Hhtcw">
            <node concept="3clFbS" id="5j9sOBrRvFx" role="2VODD2">
              <node concept="3cpWs8" id="5j9sOBrRTL1" role="3cqZAp">
                <node concept="3cpWsn" id="5j9sOBrRTL2" role="3cpWs9">
                  <property role="TrG5h" value="sb" />
                  <node concept="3uibUv" id="5j9sOBrRTL3" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                  </node>
                  <node concept="2ShNRf" id="5j9sOBrRVrY" role="33vP2m">
                    <node concept="1pGfFk" id="5j9sOBrRV1r" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="5j9sOBrRVRd" role="3cqZAp">
                <node concept="2GrKxI" id="5j9sOBrRVRf" role="2Gsz3X">
                  <property role="TrG5h" value="producingData" />
                </node>
                <node concept="3clFbS" id="5j9sOBrRVRj" role="2LFqv$">
                  <node concept="3clFbJ" id="5j9sOBrSQxq" role="3cqZAp">
                    <node concept="3clFbS" id="5j9sOBrSQxs" role="3clFbx">
                      <node concept="3clFbF" id="5j9sOBrSXm2" role="3cqZAp">
                        <node concept="2OqwBi" id="5j9sOBrS6oa" role="3clFbG">
                          <node concept="37vLTw" id="5j9sOBrS5RN" role="2Oq$k0">
                            <ref role="3cqZAo" node="5j9sOBrRTL2" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="5j9sOBrS7sE" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="Xl_RD" id="5j9sOBrS9IY" role="37wK5m">
                              <property role="Xl_RC" value=", " />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5j9sOBrSQxr" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="5j9sOBrSTyh" role="3clFbw">
                      <node concept="2OqwBi" id="5j9sOBrSRjg" role="2Oq$k0">
                        <node concept="37vLTw" id="5j9sOBrSQRp" role="2Oq$k0">
                          <ref role="3cqZAo" node="5j9sOBrRTL2" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="5j9sOBrSSUb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                        </node>
                      </node>
                      <node concept="17RvpY" id="5j9sOBrSWJO" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="5j9sOBrS5RP" role="3cqZAp">
                    <node concept="2OqwBi" id="5j9sOBrSbZA" role="3clFbG">
                      <node concept="liA8E" id="5j9sOBrScD6" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="2OqwBi" id="5j9sOBrS3xS" role="37wK5m">
                          <node concept="2OqwBi" id="5j9sOBrRYPd" role="2Oq$k0">
                            <node concept="2GrUjf" id="5j9sOBrRYup" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="5j9sOBrRVRf" resolve="producingData" />
                            </node>
                            <node concept="3TrEf2" id="5j9sOBrRZHC" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:5JRx$mlRtYa" resolve="migration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="5j9sOBrS4rw" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="5j9sOBrSXHQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5j9sOBrRTL2" resolve="sb" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5j9sOBrRXyd" role="2GsD0m">
                  <node concept="pncrf" id="5j9sOBrRXye" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORd_W" role="2OqNvi">
                    <ref role="37wK5l" to="tp5o:5j9sOBrGDSz" resolve="getProducingData" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5j9sOBrSew7" role="3cqZAp">
                <node concept="2OqwBi" id="5j9sOBrSffN" role="3cqZAk">
                  <node concept="37vLTw" id="5j9sOBrSeP2" role="2Oq$k0">
                    <ref role="3cqZAo" node="5j9sOBrRTL2" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="5j9sOBrSgRP" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5j9sOBrRvDF" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="5j9sOBrXeoS">
    <property role="3GE5qa" value="migration" />
    <property role="TrG5h" value="MigrationTestOption_Delete" />
    <ref role="1h_SK9" to="tp5g:5j9sOBrE7yu" resolve="MigrationTestOption" />
    <node concept="1hA7zw" id="5j9sOBrXeoT" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5j9sOBrXeoU" role="1hA7z_">
        <node concept="3clFbS" id="5j9sOBrXeoV" role="2VODD2">
          <node concept="3clFbJ" id="5j9sOBrXepb" role="3cqZAp">
            <node concept="3fqX7Q" id="5j9sOBrYPEl" role="3clFbw">
              <node concept="2OqwBi" id="5j9sOBrYPEn" role="3fr31v">
                <node concept="0IXxy" id="5j9sOBrYPEo" role="2Oq$k0" />
                <node concept="2xy62i" id="5j9sOBrYPEp" role="2OqNvi">
                  <node concept="1Q80Hx" id="5j9sOBrYPEq" role="2xHN3q" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5j9sOBrXepd" role="3clFbx">
              <node concept="3clFbF" id="5j9sOBrXeKX" role="3cqZAp">
                <node concept="2OqwBi" id="5j9sOBrXeSF" role="3clFbG">
                  <node concept="0IXxy" id="5j9sOBrXeKW" role="2Oq$k0" />
                  <node concept="3YRAZt" id="5j9sOBrXf5h" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2ABfQD" id="a0NfrtN4a3">
    <property role="TrG5h" value="TestLanguageVisualization" />
    <node concept="2BsEeg" id="a0NfrtN4a4" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="skipTestNode" />
      <property role="2BUmq6" value="Do not show TestNode in the editor - show TestNode content directly" />
    </node>
  </node>
  <node concept="24kQdi" id="a0NfrtN4a1">
    <ref role="1XX52x" to="tp5g:hHqefK1" resolve="TestNode" />
    <node concept="2aJ2om" id="a0NfrtNh3n" role="CpUAK">
      <ref role="2$4xQ3" node="a0NfrtN4a4" resolve="skipTestNode" />
    </node>
    <node concept="3F1sOY" id="a0NfrtNh3$" role="2wV5jI">
      <ref role="1NtTu8" to="tp5g:hHqenIi" resolve="nodeToCheck" />
    </node>
  </node>
  <node concept="24kQdi" id="Bszh9w5XmU">
    <ref role="1XX52x" to="tp5g:Bszh9w5Xms" resolve="ExpectedMessageContainer" />
    <node concept="3EZMnI" id="Bszh9w5XmZ" role="2wV5jI">
      <node concept="2iRfu4" id="Bszh9w5Xn0" role="2iSdaV" />
      <node concept="3F0ifn" id="Bszh9w5XmW" role="3EZMnx">
        <property role="3F0ifm" value="with message" />
        <ref role="1k5W1q" node="hGdEPg1" resolve="NodeOperation" />
        <node concept="VPxyj" id="Bszh9w9lQb" role="3F10Kt" />
        <node concept="VPM3Z" id="Bszh9wb2P6" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="Bszh9w9t_r" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VPxyj" id="Bszh9w9t_I" role="3F10Kt" />
        <node concept="VPM3Z" id="Bszh9wb2Pa" role="3F10Kt" />
        <node concept="11LMrY" id="Bszh9wagIS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="Bszh9w5Xn8" role="3EZMnx">
        <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
        <ref role="1NtTu8" to="tp5g:Bszh9w5Xmt" resolve="text" />
      </node>
      <node concept="3F0ifn" id="Bszh9w9t_B" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="Bszh9wagIZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="Bszh9wb2Pe" role="3F10Kt" />
        <node concept="VPxyj" id="Bszh9w9t_K" role="3F10Kt" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="Bszh9w5RYg">
    <ref role="aqKnT" to="tp5g:7eBNsYUkBrv" resolve="NodeConstraintsErrorCheckOperation" />
    <node concept="22hDWg" id="xzgvwPPq6N" role="22hAXT">
      <property role="TrG5h" value="ShowText" />
    </node>
    <node concept="1Qtc8_" id="Bszh9w5RYh" role="IW6Ez">
      <node concept="3cWJ9i" id="Bszh9w5RYl" role="1Qtc8$">
        <node concept="CtIbL" id="Bszh9w5RYn" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="Bszh9w5RYr" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="Bszh9w5RYu" role="1Qtc8A">
        <node concept="1hCUdq" id="Bszh9w5RYv" role="1hCUd6">
          <node concept="3clFbS" id="Bszh9w5RYw" role="2VODD2">
            <node concept="3clFbF" id="Bszh9w5UKX" role="3cqZAp">
              <node concept="Xl_RD" id="Bszh9w67Cp" role="3clFbG">
                <property role="Xl_RC" value="with expected message" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="Bszh9w5RYx" role="IWgqQ">
          <node concept="3clFbS" id="Bszh9w5RYy" role="2VODD2">
            <node concept="3clFbF" id="Bszh9w5ViW" role="3cqZAp">
              <node concept="37vLTI" id="Bszh9w5XeB" role="3clFbG">
                <node concept="2OqwBi" id="Bszh9w5VwG" role="37vLTJ">
                  <node concept="7Obwk" id="Bszh9w5ViV" role="2Oq$k0" />
                  <node concept="3TrEf2" id="Bszh9w62Lm" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="2ShNRf" id="Bszh9w62X5" role="37vLTx">
                  <node concept="3zrR0B" id="Bszh9w64Cr" role="2ShVmc">
                    <node concept="3Tqbb2" id="Bszh9w64Ct" role="3zrR0E">
                      <ref role="ehGHo" to="tp5g:Bszh9w5Xms" resolve="ExpectedMessageContainer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Bszh9w64R1" role="3cqZAp">
              <node concept="2OqwBi" id="Bszh9w66F3" role="3clFbG">
                <node concept="2OqwBi" id="Bszh9w6553" role="2Oq$k0">
                  <node concept="7Obwk" id="Bszh9w64QZ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="Bszh9w665s" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
                <node concept="1OKiuA" id="Bszh9w676b" role="2OqNvi">
                  <node concept="1Q80Hx" id="Bszh9w678g" role="lBI5i" />
                  <node concept="2B6iha" id="Bszh9w67pz" role="lGT1i">
                    <property role="1lyBwo" value="1S2pyLby17G/firstEditable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="Bszh9w5S3i" role="2jiSrf">
          <node concept="3clFbS" id="Bszh9w5S3j" role="2VODD2">
            <node concept="3clFbF" id="Bszh9w5S7o" role="3cqZAp">
              <node concept="3clFbC" id="Bszh9w5UhS" role="3clFbG">
                <node concept="10Nm6u" id="Bszh9w5Ui6" role="3uHU7w" />
                <node concept="2OqwBi" id="Bszh9w5SrS" role="3uHU7B">
                  <node concept="7Obwk" id="Bszh9w5S7n" role="2Oq$k0" />
                  <node concept="3TrEf2" id="Bszh9w62Kf" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="1wEcoXjJwOi">
    <ref role="aqKnT" to="tp5g:7eBNsYVJSEH" resolve="NodeConstraintsWarningCheckOperation" />
    <node concept="22hDWj" id="xzgvwPPq6O" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJwOj">
    <ref role="aqKnT" to="tp5g:7eBNsYUkBrv" resolve="NodeConstraintsErrorCheckOperation" />
    <node concept="22hDWj" id="xzgvwPPq6P" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJwOk">
    <ref role="aqKnT" to="tp5g:6MWlVHU6huX" resolve="NodeUnknownErrorCheckOperation" />
    <node concept="22hDWj" id="xzgvwPPq6Q" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJwOl">
    <ref role="aqKnT" to="tp5g:7eBNsYVKb$0" resolve="NodeUnknownWarningCheckOperation" />
    <node concept="22hDWj" id="xzgvwPPq6R" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="37IDDoEg2yq">
    <ref role="aqKnT" to="tp5g:hHqefK1" resolve="TestNode" />
    <node concept="22hDWj" id="xzgvwPPq6S" role="22hAXT" />
    <node concept="3N5dw7" id="37IDDoEg2yr" role="3ft7WO">
      <node concept="3N5aqt" id="37IDDoEg2ys" role="3Na0zg">
        <node concept="3clFbS" id="37IDDoEg2yt" role="2VODD2">
          <node concept="3clFbF" id="37IDDoEg2N1" role="3cqZAp">
            <node concept="2pJPEk" id="37IDDoEg2MZ" role="3clFbG">
              <node concept="2pJPED" id="37IDDoEg2Sx" role="2pJPEn">
                <ref role="2pJxaS" to="tp5g:hHqefK1" resolve="TestNode" />
                <node concept="2pIpSj" id="37IDDoEg2US" role="2pJxcM">
                  <ref role="2pIpSl" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                  <node concept="36biLy" id="37IDDoEg2Xm" role="28nt2d">
                    <node concept="3N4pyC" id="37IDDoEg31E" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="37IDDoEg2_5" role="2klrvf">
        <ref role="2ZyFGn" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5zRGbU5_oFj">
    <property role="3GE5qa" value="migration" />
    <ref role="1XX52x" to="tp5g:5zRGbU5_gLx" resolve="StableIdOption" />
    <node concept="PMmxH" id="5zRGbU5_p88" role="2wV5jI">
      <ref role="1ERwB7" node="5j9sOBrXeoS" resolve="MigrationTestOption_Delete" />
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="VPxyj" id="5zRGbU5_p89" role="3F10Kt" />
      <node concept="Vb9p2" id="5zRGbU5_p8a" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="4$lRloVWaH3">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="tp5g:4$lRloVW7sK" resolve="ApplyQuickFix" />
    <node concept="3EZMnI" id="4$lRloVWaH5" role="2wV5jI">
      <node concept="3F0ifn" id="6DH2cg3LXTI" role="3EZMnx">
        <property role="3F0ifm" value="apply quick fix" />
      </node>
      <node concept="1iCGBv" id="6DH2cg3Vnaq" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <property role="1$x2rV" value="&lt;the only one available&gt;" />
        <ref role="1NtTu8" to="tp5g:6DH2cg3TEQn" resolve="quickfix" />
        <node concept="1sVBvm" id="6DH2cg3Vnas" role="1sWHZn">
          <node concept="1HlG4h" id="6DH2cg3YfXX" role="2wV5jI">
            <node concept="VQ3r3" id="6DH2cg3Zc0K" role="3F10Kt">
              <property role="2USNnj" value="gtbM8PH/underlined" />
            </node>
            <node concept="1HfYo3" id="6DH2cg3YfXZ" role="1HlULh">
              <node concept="3TQlhw" id="6DH2cg3YfY1" role="1Hhtcw">
                <node concept="3clFbS" id="6DH2cg3YfY3" role="2VODD2">
                  <node concept="3cpWs8" id="6DH2cg414rl" role="3cqZAp">
                    <node concept="3cpWsn" id="6DH2cg414rm" role="3cpWs9">
                      <property role="TrG5h" value="parent" />
                      <node concept="3Tqbb2" id="6DH2cg414rn" role="1tU5fm">
                        <ref role="ehGHo" to="tpd4:3qzTJpCN_Dp" resolve="AbstractReportStatement" />
                      </node>
                      <node concept="10QFUN" id="6DH2cg414ro" role="33vP2m">
                        <node concept="2OqwBi" id="6DH2cg414rp" role="10QFUP">
                          <node concept="pncrf" id="6DH2cg414Vp" role="2Oq$k0" />
                          <node concept="1mfA1w" id="6DH2cg414rr" role="2OqNvi" />
                        </node>
                        <node concept="3Tqbb2" id="6DH2cg414rs" role="10QFUM">
                          <ref role="ehGHo" to="tpd4:3qzTJpCN_Dp" resolve="AbstractReportStatement" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6DH2cg3YfYz" role="3cqZAp">
                    <node concept="3cpWs3" id="6DH2cg415z1" role="3clFbG">
                      <node concept="2OqwBi" id="6DH2cg4162V" role="3uHU7w">
                        <node concept="37vLTw" id="6DH2cg415H$" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DH2cg414rm" resolve="parent" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORd_Y" role="2OqNvi">
                          <ref role="37wK5l" to="tpdd:1oFBbRehoLP" resolve="getName" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="6DH2cg414iG" role="3uHU7B">
                        <node concept="2OqwBi" id="6DH2cg3Ygab" role="3uHU7B">
                          <node concept="pncrf" id="6DH2cg3YfYy" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORdA0" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6DH2cg415wN" role="3uHU7w">
                          <property role="Xl_RC" value=" from " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VechU" id="6DH2cg3Ygy0" role="3F10Kt">
              <property role="Vb096" value="fLwANPu/blue" />
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="6DH2cg3VnyI" role="P5bDN">
          <node concept="1ou48o" id="6DH2cg3VnyK" role="OY2wv">
            <property role="1ezIyd" value="gWZP3tU/custom_" />
            <node concept="3GJtP1" id="6DH2cg3VnyL" role="1ou48n">
              <node concept="3clFbS" id="6DH2cg3VnyM" role="2VODD2">
                <node concept="3cpWs8" id="6DH2cg3VnyR" role="3cqZAp">
                  <node concept="3cpWsn" id="6DH2cg3VnyS" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3uibUv" id="6DH2cg3VnyT" role="1tU5fm">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="10QFUN" id="6DH2cg3VnyU" role="33vP2m">
                      <node concept="3uibUv" id="6DH2cg3VnyV" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="2OqwBi" id="6DH2cg3VnyW" role="10QFUP">
                        <node concept="2JrnkZ" id="6DH2cg3VnyX" role="2Oq$k0">
                          <node concept="2OqwBi" id="6DH2cg3VnyY" role="2JrQYb">
                            <node concept="3GMtW1" id="6DH2cg3VnyZ" role="2Oq$k0" />
                            <node concept="I4A8Y" id="6DH2cg3Vnz0" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6DH2cg3Vnz1" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6Y7keYNQjbx" role="3cqZAp" />
                <node concept="3cpWs8" id="6DH2cg3VnyN" role="3cqZAp">
                  <node concept="3cpWsn" id="6DH2cg3VnyO" role="3cpWs9">
                    <property role="TrG5h" value="reportConcept" />
                    <node concept="3uibUv" id="6DH2cg3VnyP" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                    </node>
                    <node concept="35c_gC" id="6DH2cg3VnyQ" role="33vP2m">
                      <ref role="35c_gD" to="tpd4:3qzTJpCN_Dp" resolve="AbstractReportStatement" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6DH2cg3Vnz2" role="3cqZAp">
                  <node concept="3cpWsn" id="6DH2cg3Vnz3" role="3cpWs9">
                    <property role="TrG5h" value="reportInstances" />
                    <node concept="2OqwBi" id="6DH2cg3Vnz4" role="33vP2m">
                      <node concept="2YIFZM" id="6DH2cg3Vnz5" role="2Oq$k0">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="yctd:~FindUsagesManager" resolve="FindUsagesManager" />
                      </node>
                      <node concept="liA8E" id="6DH2cg3Vnz6" role="2OqNvi">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                        <node concept="2OqwBi" id="6DH2cg3Vnz7" role="37wK5m">
                          <node concept="37vLTw" id="6DH2cg3Vnz8" role="2Oq$k0">
                            <ref role="3cqZAo" node="6DH2cg3VnyS" resolve="module" />
                          </node>
                          <node concept="liA8E" id="6DH2cg3Vnz9" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="6DH2cg3Vnza" role="37wK5m">
                          <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                          <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                          <node concept="37vLTw" id="6DH2cg3Vnzb" role="37wK5m">
                            <ref role="3cqZAo" node="6DH2cg3VnyO" resolve="reportConcept" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="6DH2cg3Vnzc" role="37wK5m" />
                        <node concept="2ShNRf" id="6DH2cg3Vnzd" role="37wK5m">
                          <node concept="1pGfFk" id="6DH2cg3Vnze" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2hMVRd" id="6DH2cg3Vnzf" role="1tU5fm">
                      <node concept="3uibUv" id="6DH2cg3Vnzg" role="2hN53Y">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6DH2cg3Vnzh" role="3cqZAp">
                  <node concept="3cpWsn" id="6DH2cg3Vnzi" role="3cpWs9">
                    <property role="TrG5h" value="reports" />
                    <node concept="_YKpA" id="6DH2cg3Vnzj" role="1tU5fm">
                      <node concept="3Tqbb2" id="6DH2cg3Vnzk" role="_ZDj9">
                        <ref role="ehGHo" to="tpd4:3qzTJpCN_Dp" resolve="AbstractReportStatement" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6DH2cg3Vnzl" role="33vP2m">
                      <node concept="2OqwBi" id="6DH2cg3Vnzm" role="2Oq$k0">
                        <node concept="2OqwBi" id="6DH2cg3Vnzn" role="2Oq$k0">
                          <node concept="2OqwBi" id="6DH2cg3Vnzo" role="2Oq$k0">
                            <node concept="37vLTw" id="6DH2cg3Vnzp" role="2Oq$k0">
                              <ref role="3cqZAo" node="6DH2cg3Vnz3" resolve="reportInstances" />
                            </node>
                            <node concept="ANE8D" id="6DH2cg3Vnzq" role="2OqNvi" />
                          </node>
                          <node concept="3$u5V9" id="6DH2cg3Vnzr" role="2OqNvi">
                            <node concept="1bVj0M" id="6DH2cg3Vnzs" role="23t8la">
                              <node concept="3clFbS" id="6DH2cg3Vnzt" role="1bW5cS">
                                <node concept="3clFbF" id="6DH2cg3Vnzu" role="3cqZAp">
                                  <node concept="1PxgMI" id="6DH2cg3Vnzv" role="3clFbG">
                                    <node concept="chp4Y" id="6DH2cg3Vnzw" role="3oSUPX">
                                      <ref role="cht4Q" to="tpd4:3qzTJpCN_Dp" resolve="AbstractReportStatement" />
                                    </node>
                                    <node concept="37vLTw" id="6DH2cg3Vnzx" role="1m5AlR">
                                      <ref role="3cqZAo" node="5W7E4fV0WV_" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0WV_" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0WVA" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3zZkjj" id="6DH2cg3Vnz$" role="2OqNvi">
                          <node concept="1bVj0M" id="6DH2cg3Vnz_" role="23t8la">
                            <node concept="3clFbS" id="6DH2cg3VnzA" role="1bW5cS">
                              <node concept="3clFbF" id="6DH2cg3VnzB" role="3cqZAp">
                                <node concept="2OqwBi" id="6DH2cg3VnzC" role="3clFbG">
                                  <node concept="2OqwBi" id="6DH2cg3VnzD" role="2Oq$k0">
                                    <node concept="37vLTw" id="6DH2cg3VnzE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WVB" resolve="it" />
                                    </node>
                                    <node concept="3Tsc0h" id="6DH2cg3VnzF" role="2OqNvi">
                                      <ref role="3TtcxE" to="tpd4:3qzTJpCN_Kl" resolve="helginsIntention" />
                                    </node>
                                  </node>
                                  <node concept="3GX2aA" id="6DH2cg3VnzG" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WVB" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0WVC" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="6DH2cg3VnzJ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6Y7keYNQkAn" role="3cqZAp" />
                <node concept="3cpWs8" id="6Y7keYNQf3D" role="3cqZAp">
                  <node concept="3cpWsn" id="6Y7keYNQf3E" role="3cpWs9">
                    <property role="TrG5h" value="equationConcept" />
                    <node concept="3uibUv" id="6Y7keYNQf3F" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                    </node>
                    <node concept="35c_gC" id="6Y7keYNQf3G" role="33vP2m">
                      <ref role="35c_gD" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6Y7keYNQtf0" role="3cqZAp">
                  <node concept="3cpWsn" id="6Y7keYNQtf3" role="3cpWs9">
                    <property role="TrG5h" value="equationInstances" />
                    <node concept="2hMVRd" id="6Y7keYNQteW" role="1tU5fm">
                      <node concept="3uibUv" id="6Y7keYNQtX3" role="2hN53Y">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6Y7keYNQadw" role="33vP2m">
                      <node concept="2YIFZM" id="6Y7keYNQadx" role="2Oq$k0">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="yctd:~FindUsagesManager" resolve="FindUsagesManager" />
                      </node>
                      <node concept="liA8E" id="6Y7keYNQady" role="2OqNvi">
                        <ref role="37wK5l" to="yctd:~FindUsagesManager.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                        <node concept="2OqwBi" id="6Y7keYNQadz" role="37wK5m">
                          <node concept="37vLTw" id="6Y7keYNQad$" role="2Oq$k0">
                            <ref role="3cqZAo" node="6DH2cg3VnyS" resolve="module" />
                          </node>
                          <node concept="liA8E" id="6Y7keYNQad_" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="6Y7keYNQadA" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                          <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                          <node concept="37vLTw" id="6Y7keYNQ_Vb" role="37wK5m">
                            <ref role="3cqZAo" node="6Y7keYNQf3E" resolve="equationConcept" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="6Y7keYNQadC" role="37wK5m" />
                        <node concept="2ShNRf" id="6Y7keYNQadD" role="37wK5m">
                          <node concept="1pGfFk" id="6Y7keYNQadE" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6Y7keYNPXuZ" role="3cqZAp">
                  <node concept="3cpWsn" id="6Y7keYNPXv0" role="3cpWs9">
                    <property role="TrG5h" value="equations" />
                    <node concept="_YKpA" id="6Y7keYNPXv1" role="1tU5fm">
                      <node concept="3Tqbb2" id="6Y7keYNPXv2" role="_ZDj9">
                        <ref role="ehGHo" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6Y7keYNPXv3" role="33vP2m">
                      <node concept="2OqwBi" id="6Y7keYNPXv4" role="2Oq$k0">
                        <node concept="2OqwBi" id="6Y7keYNPXv5" role="2Oq$k0">
                          <node concept="2OqwBi" id="6Y7keYNPXv6" role="2Oq$k0">
                            <node concept="37vLTw" id="6Y7keYNQAAA" role="2Oq$k0">
                              <ref role="3cqZAo" node="6Y7keYNQtf3" resolve="equationInstances" />
                            </node>
                            <node concept="ANE8D" id="6Y7keYNPXv8" role="2OqNvi" />
                          </node>
                          <node concept="3$u5V9" id="6Y7keYNPXv9" role="2OqNvi">
                            <node concept="1bVj0M" id="6Y7keYNPXva" role="23t8la">
                              <node concept="3clFbS" id="6Y7keYNPXvb" role="1bW5cS">
                                <node concept="3clFbF" id="6Y7keYNPXvc" role="3cqZAp">
                                  <node concept="1PxgMI" id="6Y7keYNPXvd" role="3clFbG">
                                    <node concept="chp4Y" id="6Y7keYNQ1Vq" role="3oSUPX">
                                      <ref role="cht4Q" to="tpd4:h5Zf1ZU" resolve="AbstractEquationStatement" />
                                    </node>
                                    <node concept="37vLTw" id="6Y7keYNPXvf" role="1m5AlR">
                                      <ref role="3cqZAo" node="5W7E4fV0WVD" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0WVD" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0WVE" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3zZkjj" id="6Y7keYNPXvi" role="2OqNvi">
                          <node concept="1bVj0M" id="6Y7keYNPXvj" role="23t8la">
                            <node concept="3clFbS" id="6Y7keYNPXvk" role="1bW5cS">
                              <node concept="3clFbF" id="6Y7keYNPXvl" role="3cqZAp">
                                <node concept="2OqwBi" id="6Y7keYNPXvm" role="3clFbG">
                                  <node concept="2OqwBi" id="6Y7keYNPXvn" role="2Oq$k0">
                                    <node concept="37vLTw" id="6Y7keYNPXvo" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WVF" resolve="it" />
                                    </node>
                                    <node concept="3Tsc0h" id="6Y7keYNQ3xN" role="2OqNvi">
                                      <ref role="3TtcxE" to="tpd4:hGFrUIT" resolve="helginsIntention" />
                                    </node>
                                  </node>
                                  <node concept="3GX2aA" id="6Y7keYNPXvq" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WVF" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0WVG" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="6Y7keYNPXvt" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6Y7keYNQcYp" role="3cqZAp" />
                <node concept="3cpWs8" id="6DH2cg3VnzK" role="3cqZAp">
                  <node concept="3cpWsn" id="6DH2cg3VnzL" role="3cpWs9">
                    <property role="TrG5h" value="intentions" />
                    <node concept="_YKpA" id="6DH2cg3VnzM" role="1tU5fm">
                      <node concept="3Tqbb2" id="6DH2cg3VnzN" role="_ZDj9">
                        <ref role="ehGHo" to="tpd4:hBCnwce" resolve="TypesystemIntention" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="6DH2cg3VnzO" role="33vP2m">
                      <node concept="Tc6Ow" id="6DH2cg3VnzP" role="2ShVmc">
                        <node concept="3Tqbb2" id="6DH2cg3VnzQ" role="HW$YZ">
                          <ref role="ehGHo" to="tpd4:hBCnwce" resolve="TypesystemIntention" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="6DH2cg3VnzR" role="3cqZAp">
                  <node concept="2GrKxI" id="6DH2cg3VnzS" role="2Gsz3X">
                    <property role="TrG5h" value="report" />
                  </node>
                  <node concept="37vLTw" id="6DH2cg3VnzT" role="2GsD0m">
                    <ref role="3cqZAo" node="6DH2cg3Vnzi" resolve="reports" />
                  </node>
                  <node concept="3clFbS" id="6DH2cg3VnzU" role="2LFqv$">
                    <node concept="3clFbF" id="6DH2cg3VnzV" role="3cqZAp">
                      <node concept="2OqwBi" id="6DH2cg3VnzW" role="3clFbG">
                        <node concept="37vLTw" id="6DH2cg3VnzX" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DH2cg3VnzL" resolve="intentions" />
                        </node>
                        <node concept="liA8E" id="6DH2cg3VnzY" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                          <node concept="2OqwBi" id="6DH2cg3VnzZ" role="37wK5m">
                            <node concept="2OqwBi" id="6DH2cg3Vn$0" role="2Oq$k0">
                              <node concept="2GrUjf" id="6DH2cg3Vn$1" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6DH2cg3VnzS" resolve="report" />
                              </node>
                              <node concept="3Tsc0h" id="6DH2cg3Vn$2" role="2OqNvi">
                                <ref role="3TtcxE" to="tpd4:3qzTJpCN_Kl" resolve="helginsIntention" />
                              </node>
                            </node>
                            <node concept="ANE8D" id="6DH2cg3Vn$3" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="6Y7keYNQ47V" role="3cqZAp">
                  <node concept="2GrKxI" id="6Y7keYNQ47W" role="2Gsz3X">
                    <property role="TrG5h" value="report" />
                  </node>
                  <node concept="37vLTw" id="6Y7keYNQ4PF" role="2GsD0m">
                    <ref role="3cqZAo" node="6Y7keYNPXv0" resolve="equations" />
                  </node>
                  <node concept="3clFbS" id="6Y7keYNQ47Y" role="2LFqv$">
                    <node concept="3clFbF" id="6Y7keYNQ47Z" role="3cqZAp">
                      <node concept="2OqwBi" id="6Y7keYNQ480" role="3clFbG">
                        <node concept="37vLTw" id="6Y7keYNQ481" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DH2cg3VnzL" resolve="intentions" />
                        </node>
                        <node concept="liA8E" id="6Y7keYNQ482" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                          <node concept="2OqwBi" id="6Y7keYNQ483" role="37wK5m">
                            <node concept="2OqwBi" id="6Y7keYNQ484" role="2Oq$k0">
                              <node concept="2GrUjf" id="6Y7keYNQ485" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6Y7keYNQ47W" resolve="report" />
                              </node>
                              <node concept="3Tsc0h" id="6Y7keYNQ5$w" role="2OqNvi">
                                <ref role="3TtcxE" to="tpd4:hGFrUIT" resolve="helginsIntention" />
                              </node>
                            </node>
                            <node concept="ANE8D" id="6Y7keYNQ487" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6DH2cg3Vn$4" role="3cqZAp">
                  <node concept="37vLTw" id="6DH2cg3Vn$5" role="3cqZAk">
                    <ref role="3cqZAo" node="6DH2cg3VnzL" resolve="intentions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="6DH2cg3Vn$6" role="1ou48m">
              <node concept="3clFbS" id="6DH2cg3Vn$7" role="2VODD2">
                <node concept="3clFbF" id="6DH2cg3Vn$g" role="3cqZAp">
                  <node concept="37vLTI" id="6DH2cg3Vn$h" role="3clFbG">
                    <node concept="3GLrbK" id="6DH2cg3Vn$i" role="37vLTx" />
                    <node concept="2OqwBi" id="6DH2cg3Vn$k" role="37vLTJ">
                      <node concept="3GMtW1" id="6DH2cg3Vn$l" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6DH2cg3Vwlq" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:6DH2cg3TEQn" resolve="quickfix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="6DH2cg3Vn$o" role="1eyP2E">
              <ref role="ehGHo" to="tpd4:hBCnwce" resolve="TypesystemIntention" />
            </node>
            <node concept="6VE3a" id="6DH2cg3Vn$p" role="1ezQQy">
              <node concept="3clFbS" id="6DH2cg3Vn$q" role="2VODD2">
                <node concept="3clFbF" id="6DH2cg3Vn$z" role="3cqZAp">
                  <node concept="3cpWs3" id="6DH2cg3Vn$$" role="3clFbG">
                    <node concept="3cpWs3" id="6DH2cg3Vn$_" role="3uHU7B">
                      <node concept="2OqwBi" id="6DH2cg3Vxey" role="3uHU7B">
                        <node concept="2OqwBi" id="6DH2cg3Vn$A" role="2Oq$k0">
                          <node concept="3GLrbK" id="6DH2cg3Vn$C" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6DH2cg3Vx0y" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpd4:hGQpYLV" resolve="quickFix" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="6DH2cg3VxFb" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6DH2cg3Vn$F" role="3uHU7w">
                        <property role="Xl_RC" value=" from " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6Y7keYNQICZ" role="3uHU7w">
                      <node concept="1PxgMI" id="6Y7keYNQIgl" role="2Oq$k0">
                        <node concept="chp4Y" id="6Y7keYNQIwu" role="3oSUPX">
                          <ref role="cht4Q" to="tpd4:hQOEHw2" resolve="MessageStatement" />
                        </node>
                        <node concept="2OqwBi" id="6DH2cg3Vn$G" role="1m5AlR">
                          <node concept="3GLrbK" id="6Y7keYNQH8l" role="2Oq$k0" />
                          <node concept="1mfA1w" id="6Y7keYNQHEa" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORdA2" role="2OqNvi">
                        <ref role="37wK5l" to="tpdd:1oFBbRehoLP" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6DH2cg3VzMt" role="3EZMnx">
        <property role="3F0ifm" value="to the selected node" />
      </node>
      <node concept="l2Vlx" id="4$lRloVWaH8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1Vts4spyn8I">
    <ref role="1XX52x" to="tp5g:60ggPToKIiB" resolve="UnorderedChildrenRule" />
    <node concept="3EZMnI" id="1Vts4spyn8K" role="2wV5jI">
      <node concept="l2Vlx" id="1Vts4spyn8L" role="2iSdaV" />
      <node concept="3F0ifn" id="1Vts4spyn8M" role="3EZMnx">
        <property role="3F0ifm" value="unordered children" />
      </node>
      <node concept="1iCGBv" id="1Vts4spyn8N" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:60ggPToKIiG" resolve="link" />
        <node concept="1sVBvm" id="1Vts4spyn8Q" role="1sWHZn">
          <node concept="1HlG4h" id="1Vts4spyn8S" role="2wV5jI">
            <node concept="1HfYo3" id="1Vts4spyn8W" role="1HlULh">
              <node concept="3TQlhw" id="1Vts4spyn8Z" role="1Hhtcw">
                <node concept="3clFbS" id="1Vts4spyn91" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spyn92" role="3cqZAp">
                    <node concept="3cpWs3" id="1Vts4spyn94" role="3clFbG">
                      <node concept="3cpWs3" id="1Vts4spyn97" role="3uHU7B">
                        <node concept="2OqwBi" id="1Vts4spyn9a" role="3uHU7B">
                          <node concept="1PxgMI" id="1Vts4spyn9d" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <node concept="2OqwBi" id="1Vts4spyn9g" role="1m5AlR">
                              <node concept="pncrf" id="1Vts4spyn9j" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Vts4spyn9k" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="1Vts4spyn9l" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1Vts4spyn9m" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="1Vts4spyn9n" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1Vts4spyn9o" role="3uHU7w">
                        <node concept="pncrf" id="1Vts4spyn9r" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1Vts4spyn9s" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
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
  <node concept="24kQdi" id="1Vts4spyn9t">
    <ref role="1XX52x" to="tp5g:60ggPToKIiC" resolve="IgnoreChildrenRule" />
    <node concept="3EZMnI" id="1Vts4spyn9v" role="2wV5jI">
      <node concept="l2Vlx" id="1Vts4spyn9w" role="2iSdaV" />
      <node concept="3F0ifn" id="1Vts4spyn9x" role="3EZMnx">
        <property role="3F0ifm" value="ignore child" />
      </node>
      <node concept="1iCGBv" id="1Vts4spyn9y" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:60ggPToKIiH" resolve="link" />
        <node concept="1sVBvm" id="1Vts4spyn9_" role="1sWHZn">
          <node concept="1HlG4h" id="1Vts4spyn9B" role="2wV5jI">
            <node concept="1HfYo3" id="1Vts4spyn9F" role="1HlULh">
              <node concept="3TQlhw" id="1Vts4spyn9I" role="1Hhtcw">
                <node concept="3clFbS" id="1Vts4spyn9K" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spyn9L" role="3cqZAp">
                    <node concept="3cpWs3" id="1Vts4spyn9N" role="3clFbG">
                      <node concept="3cpWs3" id="1Vts4spyn9Q" role="3uHU7B">
                        <node concept="2OqwBi" id="1Vts4spyn9T" role="3uHU7B">
                          <node concept="1PxgMI" id="1Vts4spyn9W" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <node concept="2OqwBi" id="1Vts4spyn9Z" role="1m5AlR">
                              <node concept="pncrf" id="1Vts4spyna2" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Vts4spyna3" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="1Vts4spyna4" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1Vts4spyna5" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="1Vts4spyna6" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1Vts4spyna7" role="3uHU7w">
                        <node concept="pncrf" id="1Vts4spynaa" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1Vts4spynab" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
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
  <node concept="24kQdi" id="1Vts4spynac">
    <ref role="1XX52x" to="tp5g:60ggPToKIiD" resolve="IgnoreReferenceRule" />
    <node concept="3EZMnI" id="1Vts4spynae" role="2wV5jI">
      <node concept="l2Vlx" id="1Vts4spynaf" role="2iSdaV" />
      <node concept="3F0ifn" id="1Vts4spynag" role="3EZMnx">
        <property role="3F0ifm" value="ignore reference" />
      </node>
      <node concept="1iCGBv" id="1Vts4spynah" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:60ggPToKIiI" resolve="link" />
        <node concept="1sVBvm" id="1Vts4spynak" role="1sWHZn">
          <node concept="1HlG4h" id="1Vts4spynam" role="2wV5jI">
            <node concept="1HfYo3" id="1Vts4spynaq" role="1HlULh">
              <node concept="3TQlhw" id="1Vts4spynat" role="1Hhtcw">
                <node concept="3clFbS" id="1Vts4spynav" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spynaw" role="3cqZAp">
                    <node concept="3cpWs3" id="1Vts4spynay" role="3clFbG">
                      <node concept="3cpWs3" id="1Vts4spyna_" role="3uHU7B">
                        <node concept="2OqwBi" id="1Vts4spynaC" role="3uHU7B">
                          <node concept="1PxgMI" id="1Vts4spynaF" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <node concept="2OqwBi" id="1Vts4spynaI" role="1m5AlR">
                              <node concept="pncrf" id="1Vts4spynaL" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Vts4spynaM" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="1Vts4spynaN" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1Vts4spynaO" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="1Vts4spynaP" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1Vts4spynaQ" role="3uHU7w">
                        <node concept="pncrf" id="1Vts4spynaT" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1Vts4spynaU" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
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
  <node concept="24kQdi" id="1Vts4spynaV">
    <ref role="1XX52x" to="tp5g:60ggPToKIiE" resolve="IgnorePropertyRule" />
    <node concept="3EZMnI" id="1Vts4spynaX" role="2wV5jI">
      <node concept="l2Vlx" id="1Vts4spynaY" role="2iSdaV" />
      <node concept="3F0ifn" id="1Vts4spynaZ" role="3EZMnx">
        <property role="3F0ifm" value="ignore property" />
      </node>
      <node concept="1iCGBv" id="1Vts4spynb0" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:60ggPToKIiJ" resolve="property" />
        <node concept="1sVBvm" id="1Vts4spynb3" role="1sWHZn">
          <node concept="1HlG4h" id="1Vts4spynb5" role="2wV5jI">
            <node concept="1HfYo3" id="1Vts4spynb9" role="1HlULh">
              <node concept="3TQlhw" id="1Vts4spynbc" role="1Hhtcw">
                <node concept="3clFbS" id="1Vts4spynbe" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spynbf" role="3cqZAp">
                    <node concept="3cpWs3" id="1Vts4spynbh" role="3clFbG">
                      <node concept="3cpWs3" id="1Vts4spynbk" role="3uHU7B">
                        <node concept="2OqwBi" id="1Vts4spynbn" role="3uHU7B">
                          <node concept="1PxgMI" id="1Vts4spynbq" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <node concept="2OqwBi" id="1Vts4spynbt" role="1m5AlR">
                              <node concept="pncrf" id="1Vts4spynbw" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Vts4spynbx" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="1Vts4spynby" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1Vts4spynbz" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="1Vts4spynb$" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1Vts4spynb_" role="3uHU7w">
                        <node concept="pncrf" id="1Vts4spynbC" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1Vts4spynbD" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="24kQdi" id="1Vts4spynbE">
    <ref role="1XX52x" to="tp5g:60ggPToKIi$" resolve="NodeMatchingRules" />
    <node concept="3EZMnI" id="1Vts4spynbG" role="2wV5jI">
      <node concept="l2Vlx" id="1Vts4spynbH" role="2iSdaV" />
      <node concept="3F0ifn" id="1Vts4spynbI" role="3EZMnx">
        <property role="3F0ifm" value="default matching, except:" />
      </node>
      <node concept="3F2HdR" id="1Vts4spynbJ" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:60ggPToKIiF" resolve="rules" />
        <node concept="l2Vlx" id="1Vts4spynbK" role="2czzBx" />
        <node concept="pj6Ft" id="1Vts4spynbM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1Vts4spynbN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1Bsynf" id="1Vts4sp_vq3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="1Vts4spynbO" role="2czzBI">
          <property role="ilYzB" value="&lt;no rules&gt;" />
          <node concept="VPxyj" id="5zsFj6m6fzA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="18QbqASqPP6">
    <ref role="1XX52x" to="tp5g:18QbqASogIh" resolve="IgnoreNodeMark" />
    <node concept="3EZMnI" id="18QbqASqPP8" role="2wV5jI">
      <node concept="3F0ifn" id="7nCjZadGkFn" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="7nCjZadGkHz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="18QbqASqPP9" role="2iSdaV" />
      <node concept="3F0ifn" id="18QbqASqPPa" role="3EZMnx">
        <property role="3F0ifm" value="ignored child" />
        <ref role="1ERwB7" node="18QbqASFai7" resolve="DeleteMatchRelaxationMark" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="2SsqMj" id="18QbqASqPPb" role="3EZMnx" />
      <node concept="3F0ifn" id="7nCjZadGkJJ" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="7nCjZadGkO5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="18QbqASqPPc">
    <ref role="1XX52x" to="tp5g:18QbqASogIe" resolve="UnorderedChildrenMark" />
    <node concept="3EZMnI" id="18QbqAST44R" role="2wV5jI">
      <node concept="3F0ifn" id="7nCjZadGjmM" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="7nCjZadGjwx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="18QbqAST44S" role="3EZMnx">
        <property role="3F0ifm" value="unordered child:" />
        <ref role="1ERwB7" node="18QbqASFai7" resolve="DeleteMatchRelaxationMark" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="1iCGBv" id="18QbqAST44T" role="3EZMnx">
        <ref role="1NtTu8" to="tp5g:18QbqASRexq" resolve="link" />
        <node concept="1sVBvm" id="18QbqAST44W" role="1sWHZn">
          <node concept="3SHvHV" id="18QbqAST44Y" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="7nCjZadIMdY" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="7nCjZadIMga" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2SsqMj" id="18QbqAST450" role="3EZMnx" />
      <node concept="l2Vlx" id="18QbqAST451" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="18QbqASqPPi">
    <ref role="1XX52x" to="tp5g:18QbqASogIf" resolve="IgnorePropertyMark" />
    <node concept="3EZMnI" id="18QbqASqPPk" role="2wV5jI">
      <node concept="3F0ifn" id="7nCjZadGks9" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="7nCjZadGkwv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="18QbqASqPPl" role="2iSdaV" />
      <node concept="3F0ifn" id="18QbqASqPPm" role="3EZMnx">
        <property role="3F0ifm" value="ignored property" />
        <ref role="1ERwB7" node="18QbqASFai7" resolve="DeleteMatchRelaxationMark" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="uhnNJ" id="18QbqASqPPn" role="3EZMnx" />
      <node concept="3F0ifn" id="7nCjZadGkyF" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="7nCjZadGk$R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="18QbqASqPPo">
    <ref role="1XX52x" to="tp5g:18QbqASogIg" resolve="IgnoreReferenceMark" />
    <node concept="3EZMnI" id="18QbqASqPPq" role="2wV5jI">
      <node concept="3F0ifn" id="7nCjZadGkcV" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="7nCjZadGkf7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="18QbqASqPPr" role="2iSdaV" />
      <node concept="3F0ifn" id="18QbqASqPPs" role="3EZMnx">
        <property role="3F0ifm" value="ignored reference" />
        <ref role="1ERwB7" node="18QbqASFai7" resolve="DeleteMatchRelaxationMark" />
        <ref role="1k5W1q" node="hQUhkJ8" resolve="EditorOperation" />
      </node>
      <node concept="2wxxgb" id="18QbqASqPPt" role="3EZMnx" />
      <node concept="3F0ifn" id="7nCjZadGkhj" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="7nCjZadGkk$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="18QbqASFai7">
    <property role="TrG5h" value="DeleteMatchRelaxationMark" />
    <ref role="1h_SK9" to="tp5g:18QbqASogIi" resolve="IMatchRelaxationMark" />
    <node concept="1hA7zw" id="18QbqASFasA" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="18QbqASFasB" role="1hA7z_">
        <node concept="3clFbS" id="18QbqASFasC" role="2VODD2">
          <node concept="3cpWs8" id="hV6Dj3E" role="3cqZAp">
            <node concept="3cpWsn" id="hV6Dj3F" role="3cpWs9">
              <property role="TrG5h" value="attributedNode" />
              <node concept="3Tqbb2" id="hV6Dj3G" role="1tU5fm">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
              <node concept="2OqwBi" id="hV6Dj3H" role="33vP2m">
                <node concept="0IXxy" id="hV6Dj3I" role="2Oq$k0" />
                <node concept="1mfA1w" id="hV6Dj3J" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hV6HhR5" role="3cqZAp">
            <node concept="2OqwBi" id="hV6HhXH" role="3clFbG">
              <node concept="0IXxy" id="hV6HhR6" role="2Oq$k0" />
              <node concept="3YRAZt" id="hV6HiiJ" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="3Un2VKNJIOT" role="3cqZAp">
            <node concept="2OqwBi" id="3Un2VKNJIUE" role="3clFbG">
              <node concept="37vLTw" id="789ORCIcgpc" role="2Oq$k0">
                <ref role="3cqZAo" node="hV6Dj3F" resolve="attributedNode" />
              </node>
              <node concept="1OKiuA" id="3Un2VKNJJJD" role="2OqNvi">
                <node concept="1Q80Hx" id="3Un2VKNJJJP" role="lBI5i" />
                <node concept="2B6iha" id="18QbqASFhV8" role="lGT1i" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

