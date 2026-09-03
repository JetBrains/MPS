<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902e3(jetbrains.mps.lang.generator.editor)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpd3" ref="r:00000000-0000-4000-0000-011c895902bb(jetbrains.mps.lang.sharedConcepts.editor)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="75ov" ref="r:cdd4fc54-626c-4040-b1f7-5bc8bfd2ee53(jetbrains.mps.lang.generator.helper)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="tpfh" ref="r:00000000-0000-4000-0000-011c895902e1(jetbrains.mps.lang.generator.behavior)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpch" ref="r:00000000-0000-4000-0000-011c8959028d(jetbrains.mps.lang.structure.editor)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpf0" ref="r:00000000-0000-4000-0000-011c895902f0(jetbrains.mps.lang.generator.generationContext.editor)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="1402906326896143909" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNodes" flags="nn" index="0GJ7U" />
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ngI" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1164052439493" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_MatchingText" flags="in" index="6VE3a" />
      <concept id="1164052588708" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_DescriptionText" flags="in" index="6WeAF" />
      <concept id="1226339938453" name="jetbrains.mps.lang.editor.structure.AbstractPaddingStyleClassItem" flags="ln" index="27zB68">
        <property id="1226504838901" name="measure" index="2hoDZC" />
      </concept>
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="4510086454726375946" name="jetbrains.mps.lang.editor.structure.PropertyExpressionCellSelector" flags="ng" index="eON6Q">
        <child id="4510086454769912032" name="propertyDeclaration" index="ciSds" />
      </concept>
      <concept id="671290755174094691" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_parameterObject" flags="nn" index="2itN01" />
      <concept id="671290755174094686" name="jetbrains.mps.lang.editor.structure.QueryFunction_MethodPresentation" flags="in" index="2itN0W" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1106270637846" name="jetbrains.mps.lang.editor.structure.CellLayout_Flow" flags="nn" index="2iR$Sn" />
      <concept id="4203201205844553978" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_selectedNode" flags="nn" index="jzRn0" />
      <concept id="8954657570916342474" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Node" flags="ig" index="2jZ$Xn" />
      <concept id="4531786690998636238" name="jetbrains.mps.lang.editor.structure.AbstractStyledTextOperation" flags="nn" index="kdiOM">
        <child id="4531786690998636240" name="actualArgument" index="kdiOG" />
      </concept>
      <concept id="6089045305654894367" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Named" flags="ng" index="2kknPI">
        <reference id="6089045305654944382" name="menu" index="2kkw0f" />
      </concept>
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="1134379236839" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedPropertyCell" flags="ng" index="uhnNJ" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ngI" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1136564507907" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedLinkCell" flags="ng" index="2wxxgb" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="7667276221847612943" name="jetbrains.mps.lang.editor.structure.QueryFunction_ParametersList" flags="in" index="2$ogOm" />
      <concept id="7667276221847612622" name="jetbrains.mps.lang.editor.structure.ParametersInformationQuery" flags="ng" index="2$ogZn">
        <reference id="4203201205843994215" name="applicableConcept" index="jxYdt" />
        <child id="671290755174161557" name="presentation" index="2iu3JR" />
        <child id="7667276221847612623" name="methods" index="2$ogZm" />
        <child id="8178273524755058633" name="type" index="3evHYT" />
        <child id="1336839120510622371" name="methodDeclaration" index="3LrfaV" />
        <child id="6419604448124516218" name="isMethodCurrent" index="3LVrd1" />
      </concept>
      <concept id="7667276221847570194" name="jetbrains.mps.lang.editor.structure.ParametersInformationStyleClassItem" flags="ln" index="2$oqgb">
        <reference id="8863456892852949148" name="parametersInformation" index="Bvoe9" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha" />
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1160493135005" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues_GetValues" flags="in" index="MLZmj" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164833692343" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues" flags="ng" index="PvTIS">
        <child id="1164833692344" name="valuesFunction" index="PvTIR" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <property id="1136916941877" name="description" index="2PxWOX" />
        <property id="1163507208434" name="showInPopup" index="3ArL7W" />
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136917325338" name="isApplicableFunction" index="2Pzqsi" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917249679" name="jetbrains.mps.lang.editor.structure.CellKeyMap_IsApplicableFunction" flags="in" index="2Pz7Y7" />
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1214317859050" name="jetbrains.mps.lang.editor.structure.LayoutConstraintStyleClassItem" flags="ln" index="2UZ17K">
        <property id="1214317859051" name="layoutConstraint" index="2UZ17L" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV">
        <child id="7522821015001791840" name="filter" index="1Go12V" />
      </concept>
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
      </concept>
      <concept id="1164996492011" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReferentPrimary" flags="ng" index="ZcVJ$">
        <child id="6918029743851332884" name="matchingText" index="1NQq9M" />
      </concept>
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ngI" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1630016958697286851" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_parameterObject" flags="ng" index="2ZBlsa" />
      <concept id="1630016958697057551" name="jetbrains.mps.lang.editor.structure.IMenuPartParameterized" flags="ngI" index="2ZBHr6">
        <child id="1630016958697057552" name="parameterType" index="2ZBHrp" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1214406466686" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorSelectedStyleClassItem" flags="ln" index="30h1P$" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <property id="1149937560128" name="everyModel" index="2XBEHb" />
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="280151408461567367" name="jetbrains.mps.lang.editor.structure.AppendTextOperation" flags="nn" index="33jxAZ" />
      <concept id="280151408461909164" name="jetbrains.mps.lang.editor.structure.SetBoldOperation" flags="nn" index="33ks2k" />
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="2115302367868116903" name="jetbrains.mps.lang.editor.structure.GeneratedSubstituteMenuAttribute" flags="ng" index="382kZG" />
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="4647688914585456566" name="targetNode" index="W7ev7" />
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <property id="1165254125954" name="presentation" index="1ezIyd" />
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
        <child id="1165254159533" name="matchingTextFunction" index="1ezQQy" />
        <child id="1165254180581" name="descriptionTextFunction" index="1ezVZE" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="414384289274424754" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_AddConcept" flags="ng" index="3ft5Ry">
        <reference id="697754674827630451" name="concept" index="4PJHt" />
      </concept>
      <concept id="414384289274418283" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Group" flags="ng" index="3ft6gV">
        <child id="414384289274424750" name="condition" index="3ft5RY" />
        <child id="414384289274424751" name="parts" index="3ft5RZ" />
      </concept>
      <concept id="414384289274418284" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Condition" flags="ig" index="3ft6gW" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="7597241200646296619" name="jetbrains.mps.lang.editor.structure.QueryFunction_SNode" flags="in" index="3k4GqP" />
      <concept id="7597241200646296617" name="jetbrains.mps.lang.editor.structure.NavigatableNodeStyleClassItem" flags="ln" index="3k4GqR">
        <child id="7597241200646296618" name="functionNode" index="3k4GqO" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1165420413719" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group" flags="ng" index="1ou48o">
        <child id="1165420413721" name="handlerFunction" index="1ou48m" />
        <child id="1165420413720" name="parametersFunction" index="1ou48n" />
      </concept>
      <concept id="1165420626554" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group_Handler" flags="in" index="1ouSdP" />
      <concept id="3308396621974588243" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Contribution" flags="ng" index="3p309x">
        <child id="7173407872095451092" name="menuReference" index="1IG6uw" />
      </concept>
      <concept id="730181322658904464" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_IncludeMenu" flags="ng" index="1s_PAr">
        <child id="730181322658904467" name="menuReference" index="1s_PAo" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="4526149749187797167" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_StyledText" flags="nn" index="1unZQo" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1227861515039" name="jetbrains.mps.lang.editor.structure.NavigatableReferenceStyleClassItem" flags="ln" index="3yfXC2">
        <reference id="1227861587090" name="link" index="3ygfmf" />
      </concept>
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1215085197271" name="jetbrains.mps.lang.editor.structure.LastPositionAllowedStyleClassItem" flags="ln" index="3CIbrd" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1139416841293" name="usesBraces" index="1ayjP4" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="7522821015001613016" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_Concept" flags="ng" index="1GpqW3" />
      <concept id="7522821015001613004" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_FilterConcepts" flags="ig" index="1GpqWn" />
      <concept id="1163613035599" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_Query" flags="in" index="3GJtP1" />
      <concept id="1163613549566" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_parameterObject" flags="nn" index="3GLrbK" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
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
      <concept id="6419604448124516209" name="jetbrains.mps.lang.editor.structure.QueryFunction_IsMethodCurrent" flags="in" index="3LVrda" />
      <concept id="6918029743850363447" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_targetNode" flags="ng" index="1NM5Ph" />
      <concept id="6918029743850308467" name="jetbrains.mps.lang.editor.structure.QueryFunction_RefPresentation" flags="ig" index="1NMggl" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="4307758654696938365" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_RefPresentation" flags="ig" index="1WAQ3h" />
      <concept id="4307758654696952957" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ReferencedNode" flags="ng" index="1WAUZh" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166040637528" name="jetbrains.mps.lang.editor.structure.CellMenuComponent" flags="ng" index="1Xs25n">
        <child id="1166041505377" name="menuDescriptor" index="1XvlXI" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="8428109087107030357" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_ReferenceScope" flags="ng" index="3XHNnq">
        <reference id="8428109087107339113" name="reference" index="3XGfJA" />
        <child id="4307758654694904293" name="matchingTextFunction" index="1WZ6D9" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="3903367331818357915" name="jetbrains.mps.lang.editor.structure.StyledTextType" flags="in" index="1YN$XN" />
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="7776141288922801652" name="jetbrains.mps.lang.actions.structure.NF_Concept_NewInstance" flags="nn" index="q_SaT">
        <child id="3757480014665178932" name="prototype" index="1wAxWu" />
      </concept>
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9">
        <property id="1225118929411" name="build" index="YLPcu" />
        <property id="1225118933224" name="comment" index="YLQ7P" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1181952871644" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSubConcepts" flags="nn" index="LSoRf">
        <child id="1182506816063" name="smodel" index="1iTxcG" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1966870290088668520" name="jetbrains.mps.lang.smodel.structure.Enum_MembersOperation" flags="ng" index="2ViDtN" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1205861725686" name="jetbrains.mps.lang.smodel.structure.Node_IsAttributeOperation" flags="nn" index="32XrjI" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="3320646261221695165" name="jetbrains.mps.lang.smodel.structure.NodePointerArg_Identity" flags="ng" index="1QN52j">
        <child id="3320646261221695238" name="ref" index="1QN54C" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="fPc6lnJ">
    <property role="TrG5h" value="PropertyMacro_Editor" />
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:fP7UvrK" resolve="PropertyMacro" />
    <node concept="3EZMnI" id="fPc6lnO" role="6VMZX">
      <node concept="3F0ifn" id="fPclVR9" role="3EZMnx">
        <property role="3F0ifm" value="property value" />
        <node concept="VPM3Z" id="hEU$PHY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8D9" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJRO" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZzI70b" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PZy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="PMmxH" id="1WfddY$VyTn" role="3EZMnx">
        <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
      </node>
      <node concept="3EZMnI" id="gZzIfuG" role="3EZMnx">
        <node concept="3F0ifn" id="gZzIgd7" role="3EZMnx">
          <property role="3F0ifm" value="value :" />
          <node concept="VPM3Z" id="hEU$P8W" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="gZzIRf2" role="3EZMnx">
          <property role="1$x2rV" value="&lt;none&gt;" />
          <property role="1cu_pB" value="gtguBGO/2" />
          <ref role="1NtTu8" to="tpf8:gZzH08Z" resolve="propertyValueFunction" />
        </node>
        <node concept="VPM3Z" id="hEU$PF5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXUE" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBXSC" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gISW08w" role="2wV5jI">
      <node concept="3F0ifn" id="gISW0zb" role="3EZMnx">
        <property role="3F0ifm" value="$" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <ref role="1ERwB7" node="hV6D08N" resolve="PropertyMacroActions" />
        <node concept="VPxyj" id="6LnHxz$NacZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3CIbrd" id="7DPed4ifbgg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="7yIPXhIi7_H" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1k5W1q" node="7yIPXhIhYym" resolve="macroDescriptionText" />
        <ref role="1NtTu8" to="tpf8:2Pi793Do1U8" resolve="comment" />
        <node concept="pkWqt" id="7yIPXhIi7_I" role="pqm2j">
          <node concept="3clFbS" id="7yIPXhIi7_J" role="2VODD2">
            <node concept="3clFbF" id="7yIPXhIi7_K" role="3cqZAp">
              <node concept="3y3z36" id="7yIPXhIi7_L" role="3clFbG">
                <node concept="10Nm6u" id="7yIPXhIi7_M" role="3uHU7w" />
                <node concept="2OqwBi" id="7yIPXhIi7_N" role="3uHU7B">
                  <node concept="pncrf" id="7yIPXhIi7_O" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7yIPXhIi7_P" role="2OqNvi">
                    <ref role="3TsBF5" to="tpf8:2Pi793Do1U8" resolve="comment" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="uhnNJ" id="gISW1dU" role="3EZMnx">
        <ref role="1k5W1q" node="hG2jgB4" resolve="nodeUnderMacro" />
      </node>
      <node concept="2iRfu4" id="i2IBXW4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fPdtnXz">
    <property role="TrG5h" value="NodeMacro_Editor" />
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
    <node concept="3EZMnI" id="fQkYiRI" role="6VMZX">
      <node concept="3F0ifn" id="fQkYy$B" role="3EZMnx">
        <property role="3F0ifm" value="&lt; abstract node macro &gt;" />
      </node>
      <node concept="3F0ifn" id="fXl76cB" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$P0v" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hz3$$Fh" role="3EZMnx">
        <node concept="3EZMnI" id="hurWYTu" role="3EZMnx">
          <node concept="3F0ifn" id="hurWYTv" role="3EZMnx">
            <property role="3F0ifm" value="mapping label" />
            <node concept="VechU" id="hEZR8r$" role="3F10Kt">
              <property role="Vb096" value="fLwANPn/red" />
            </node>
          </node>
          <node concept="3F0ifn" id="hurWYTw" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PEs" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="1iCGBv" id="hurWYTx" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no label&gt;" />
            <ref role="1NtTu8" to="tpf8:hurW$JJ" resolve="mappingLabel" />
            <node concept="1sVBvm" id="hurWYTy" role="1sWHZn">
              <node concept="3F0A7n" id="hurWYTz" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="30gYXW" id="hF0kJRs" role="3F10Kt">
                  <property role="Vb096" value="fLwANPp/orange" />
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="h$IWzJT" role="pqm2j">
            <node concept="3clFbS" id="h$IWzJU" role="2VODD2">
              <node concept="3clFbF" id="h$IW_a0" role="3cqZAp">
                <node concept="3y3z36" id="h$IWB75" role="3clFbG">
                  <node concept="10Nm6u" id="h$IWBJU" role="3uHU7w" />
                  <node concept="2OqwBi" id="h$IWAmt" role="3uHU7B">
                    <node concept="pncrf" id="h$IW_a1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="h$IWAM$" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:hurW$JJ" resolve="mappingLabel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$OZk" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXTI" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="i2IBXVt" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$P42" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXVz" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gITmaif" role="2wV5jI">
      <node concept="3F0ifn" id="gITmbFD" role="3EZMnx">
        <property role="3F0ifm" value="$$" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="VechU" id="hEZR8_K" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
        <node concept="A1WHu" id="6GI$fc4d6XQ" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
      </node>
      <node concept="PMmxH" id="hurYX7G" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="i2IBXXj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fPZhTLX">
    <property role="TrG5h" value="ReferenceMacro_Editor" />
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
    <node concept="3EZMnI" id="fPZlpi8" role="6VMZX">
      <node concept="3F0ifn" id="gZ$yDS1" role="3EZMnx">
        <property role="3F0ifm" value="reference target" />
        <node concept="VPM3Z" id="hEU$OWX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8uI" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJQZ" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZ$yDSd" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pn$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="PMmxH" id="1WfddY$VzLq" role="3EZMnx">
        <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
      </node>
      <node concept="3EZMnI" id="gZ$yDSe" role="3EZMnx">
        <node concept="3F0ifn" id="gZ$yDSf" role="3EZMnx">
          <property role="3F0ifm" value="referent :" />
          <node concept="VPM3Z" id="hEU$PNL" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="gZ$yDSg" role="3EZMnx">
          <property role="1$x2rV" value="&lt;none&gt;" />
          <property role="1cu_pB" value="gtguBGO/2" />
          <ref role="1NtTu8" to="tpf8:gZ$ytBY" resolve="referentFunction" />
        </node>
        <node concept="VPM3Z" id="hEU$OUA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXSY" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PEE" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXVG" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gISVCKA" role="2wV5jI">
      <node concept="3F0ifn" id="gISVDa2" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;$" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="VPxyj" id="7DPed4ifwyP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3CIbrd" id="7DPed4ifwkx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPRnO" id="6A$8asZeXvs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="7yIPXhIi7_R" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpf8:2Pi793Do1U8" resolve="comment" />
        <ref role="1k5W1q" node="7yIPXhIhYym" resolve="macroDescriptionText" />
        <node concept="pkWqt" id="7yIPXhIi7_S" role="pqm2j">
          <node concept="3clFbS" id="7yIPXhIi7_T" role="2VODD2">
            <node concept="3clFbF" id="7yIPXhIi7_U" role="3cqZAp">
              <node concept="3y3z36" id="7yIPXhIi7_V" role="3clFbG">
                <node concept="10Nm6u" id="7yIPXhIi7_W" role="3uHU7w" />
                <node concept="2OqwBi" id="7yIPXhIi7_X" role="3uHU7B">
                  <node concept="pncrf" id="7yIPXhIi7_Y" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7yIPXhIi7_Z" role="2OqNvi">
                    <ref role="3TsBF5" to="tpf8:2Pi793Do1U8" resolve="comment" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2wxxgb" id="gISVEdT" role="3EZMnx">
        <ref role="1k5W1q" node="hG2jgB4" resolve="nodeUnderMacro" />
      </node>
      <node concept="2iRfu4" id="i2IBXWI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fT3TUAJ">
    <property role="TrG5h" value="TemplateDeclaration_Editor" />
    <property role="3GE5qa" value="template" />
    <ref role="1XX52x" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
    <node concept="3EZMnI" id="fT3TUAK" role="2wV5jI">
      <node concept="3EZMnI" id="h0nq256" role="3EZMnx">
        <node concept="3EZMnI" id="h0nq257" role="3EZMnx">
          <node concept="3F0ifn" id="h0nq258" role="3EZMnx">
            <property role="3F0ifm" value="template" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="hEU$Pym" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="h0nq259" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="OXEIz" id="hegXBCb" role="P5bDN">
              <node concept="PvTIS" id="hegXCUh" role="OY2wv">
                <node concept="MLZmj" id="hegXCUi" role="PvTIR">
                  <node concept="3clFbS" id="hegXCUj" role="2VODD2">
                    <node concept="3cpWs8" id="hegXGmg" role="3cqZAp">
                      <node concept="3cpWsn" id="hegXGmh" role="3cpWs9">
                        <property role="TrG5h" value="values" />
                        <node concept="_YKpA" id="hegXGmi" role="1tU5fm">
                          <node concept="17QB3L" id="hP38uRU" role="_ZDj9" />
                        </node>
                        <node concept="2ShNRf" id="hegXJlG" role="33vP2m">
                          <node concept="Tc6Ow" id="hegXJEx" role="2ShVmc">
                            <node concept="17QB3L" id="hP38uBu" role="HW$YZ" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="hegXN2L" role="3cqZAp">
                      <node concept="3clFbS" id="hegXN2M" role="3clFbx">
                        <node concept="3clFbF" id="hegXN2N" role="3cqZAp">
                          <node concept="2OqwBi" id="h$J4Vva" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTswG" role="2Oq$k0">
                              <ref role="3cqZAo" node="hegXGmh" resolve="values" />
                            </node>
                            <node concept="TSZUe" id="hegXU3w" role="2OqNvi">
                              <node concept="3cpWs3" id="hegXWSY" role="25WWJ7">
                                <node concept="2OqwBi" id="hxx$QgU" role="3uHU7w">
                                  <node concept="2OqwBi" id="hxx$R4T" role="2Oq$k0">
                                    <node concept="3GMtW1" id="hegXYUh" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hegY07t" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpf8:h03gUQu" resolve="applicableConcept" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="hegY0R4" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="hegXVrH" role="3uHU7B">
                                  <property role="Xl_RC" value="reduce_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="hegY3Ls" role="3cqZAp">
                          <node concept="2OqwBi" id="h$J4Vxq" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTAqQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="hegXGmh" resolve="values" />
                            </node>
                            <node concept="TSZUe" id="hegY4$q" role="2OqNvi">
                              <node concept="3cpWs3" id="hegY8sO" role="25WWJ7">
                                <node concept="2OqwBi" id="hxx$PQs" role="3uHU7w">
                                  <node concept="2OqwBi" id="hxx$O_h" role="2Oq$k0">
                                    <node concept="3GMtW1" id="hegY8Yt" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hegY9JS" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpf8:h03gUQu" resolve="applicableConcept" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="hegYaw2" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="hegY6dv" role="3uHU7B">
                                  <property role="Xl_RC" value="weave_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="hxx$Urd" role="3clFbw">
                        <node concept="2OqwBi" id="hxx_6_q" role="2Oq$k0">
                          <node concept="3GMtW1" id="hegXNsy" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hegXOT0" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:h03gUQu" resolve="applicableConcept" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="hegXSwe" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="hegY1S1" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTvqN" role="3clFbG">
                        <ref role="3cqZAo" node="hegXGmh" resolve="values" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PbV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWK" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h0nq3$2" role="3EZMnx">
          <node concept="3F0ifn" id="h0nq3$3" role="3EZMnx">
            <property role="3F0ifm" value="input" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="1iCGBv" id="h0nq3$4" role="3EZMnx">
            <property role="1$x2rV" value="&lt;any node&gt;" />
            <ref role="1NtTu8" to="tpf8:h03gUQu" resolve="applicableConcept" />
            <node concept="1sVBvm" id="h0nq3$5" role="1sWHZn">
              <node concept="3F0A7n" id="h0nq3$6" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VechU" id="hEZR8_A" role="3F10Kt">
                  <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Piq" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXUG" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3C_dErd6sF" role="3EZMnx">
          <node concept="VPM3Z" id="3C_dErd6sH" role="3F10Kt" />
          <node concept="3F0ifn" id="3C_dErd6sJ" role="3EZMnx">
            <node concept="VPM3Z" id="3C_dErfncR" role="3F10Kt" />
          </node>
          <node concept="3F0ifn" id="3C_dErd7KZ" role="3EZMnx">
            <property role="3F0ifm" value="requires call site" />
            <node concept="VPxyj" id="3C_dErd7L_" role="3F10Kt" />
            <node concept="VPM3Z" id="3C_dErd7LE" role="3F10Kt" />
            <node concept="Vb9p2" id="3C_dErd7LM" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
          </node>
          <node concept="2iRfu4" id="3C_dErd6sK" role="2iSdaV" />
          <node concept="pkWqt" id="3C_dErd6KH" role="pqm2j">
            <node concept="3clFbS" id="3C_dErd6KI" role="2VODD2">
              <node concept="3clFbF" id="3C_dErd6OD" role="3cqZAp">
                <node concept="2OqwBi" id="3C_dErd74w" role="3clFbG">
                  <node concept="pncrf" id="3C_dErd6OC" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3C_dErd7zm" role="2OqNvi">
                    <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1$dcvTE3luN" role="3EZMnx" />
        <node concept="3F0ifn" id="1$dcvTE3luT" role="3EZMnx">
          <property role="3F0ifm" value="parameters" />
          <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
        </node>
        <node concept="3F2HdR" id="1$dcvTE3x88" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:QzR6ThdYDm" resolve="parameter" />
          <node concept="2iRkQZ" id="1$dcvTE3x89" role="2czzBx" />
          <node concept="VPM3Z" id="1$dcvTE3x8a" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$OVE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXVj" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h03hAXl" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PMG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="fT3ULs9" role="3EZMnx">
        <property role="3F0ifm" value="content node:" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
        <node concept="VPM3Z" id="hEU$PsU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="fT8obLP" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no content node&gt;" />
        <ref role="1NtTu8" to="tpf8:fT3RC8V" resolve="contentNode" />
      </node>
      <node concept="2iRkQZ" id="i2IBXTq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fWc4auX">
    <property role="TrG5h" value="MappingConfiguration_Editor" />
    <ref role="1XX52x" to="tpf8:fWbUwhP" resolve="MappingConfiguration" />
    <node concept="3EZMnI" id="fWc4auY" role="2wV5jI">
      <node concept="3EZMnI" id="hf$z8md" role="3EZMnx">
        <node concept="3EZMnI" id="hf$z8me" role="3EZMnx">
          <node concept="3F0ifn" id="hf$z8mf" role="3EZMnx">
            <property role="3F0ifm" value="mapping configuration" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="3F0A7n" id="hf$z8mg" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="VPM3Z" id="hEU$P1R" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXU6" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hf$zeVD" role="3EZMnx">
          <node concept="3F0ifn" id="hf$zeVE" role="3EZMnx">
            <property role="3F0ifm" value="top-priority group" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="3F0A7n" id="hf$zeVF" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:hf$yP3U" resolve="topPriorityGroup" />
          </node>
          <node concept="VPM3Z" id="hEU$PIm" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWz" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P2u" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXTs" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="fWc5jkE" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PpO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="PMmxH" id="2EwDY2ImWhe" role="3EZMnx">
        <ref role="PMmxG" node="2EwDY2ImWhc" resolve="ExtensionsPlaceholder" />
      </node>
      <node concept="3EZMnI" id="hurTvqc" role="3EZMnx">
        <node concept="3F0ifn" id="hurTx3Y" role="3EZMnx">
          <property role="3F0ifm" value="mapping labels:" />
          <node concept="Vb9p2" id="hEUNQXy" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBK" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8lm" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hurT_6j" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTJ7A" role="3EZMnx" />
          <node concept="3F2HdR" id="hurTJKa" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:hurTMnT" resolve="mappingLabel" />
            <node concept="2EHx9g" id="i2IBXXY" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$PC_" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWB" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PfG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXSN" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hurTvP_" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Q12" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="28lK$1mBjJ4" role="3EZMnx">
        <node concept="3F0ifn" id="28lK$1mBjJ5" role="3EZMnx">
          <property role="3F0ifm" value="parameters:" />
          <node concept="Vb9p2" id="28lK$1mBjJ6" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="28lK$1mBjJ7" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="28lK$1mBjJ8" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="28lK$1mBjJ9" role="3EZMnx">
          <node concept="3XFhqQ" id="28lK$1mBjJa" role="3EZMnx" />
          <node concept="3F2HdR" id="28lK$1mBjJb" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:28lK$1mBjJ2" resolve="generationParameters" />
            <node concept="2EHx9g" id="28lK$1mBjJc" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="28lK$1mBjJd" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="28lK$1mBjJe" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="28lK$1mBjJf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="28lK$1mBjJg" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="28lK$1mBmjB" role="3EZMnx" />
      <node concept="3EZMnI" id="6MF_9TAPpal" role="3EZMnx">
        <node concept="3F0ifn" id="6MF_9TAPpap" role="3EZMnx">
          <property role="3F0ifm" value="is applicable:" />
          <node concept="Vb9p2" id="6MF_9TAPpaq" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="6MF_9TAPpar" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="6MF_9TAPpas" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="6MF_9TAPpat" role="3EZMnx">
          <node concept="3XFhqQ" id="6MF_9TAPpau" role="3EZMnx" />
          <node concept="3F1sOY" id="6MF_9TAPreX" role="3EZMnx">
            <property role="1$x2rV" value="&lt;always&gt;" />
            <property role="39s7Ar" value="true" />
            <ref role="1NtTu8" to="tpf8:6MF_9TAPreV" resolve="condition" />
          </node>
          <node concept="VPM3Z" id="6MF_9TAPpax" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="6MF_9TAPpay" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="6MF_9TAPpam" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="6MF_9TAPpao" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6MF_9TAPpaj" role="3EZMnx" />
      <node concept="3EZMnI" id="hppvUqF" role="3EZMnx">
        <node concept="3F0ifn" id="hppvUqG" role="3EZMnx">
          <property role="3F0ifm" value="conditional root rules:" />
          <node concept="VPM3Z" id="hEU$PTh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNR1q" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBJ" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8ub" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hppvUqH" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTAf6" role="3EZMnx" />
          <node concept="3F2HdR" id="hppvUqJ" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:gYVS0kp" resolve="createRootRule" />
            <node concept="VPM3Z" id="hEU$Pvd" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="i2IBXXy" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$PLB" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXVD" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Q0z" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXSE" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gZl_g1N" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pv6" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hppw0sJ" role="3EZMnx">
        <node concept="3F0ifn" id="hppw0sK" role="3EZMnx">
          <property role="3F0ifm" value="root mapping rules:" />
          <node concept="VPM3Z" id="hEU$P$C" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNR0o" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBM" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8x_" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hppw0sL" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTCcn" role="3EZMnx" />
          <node concept="3F2HdR" id="hppw0sN" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:gZlj3fB" resolve="rootMappingRule" />
            <node concept="VPM3Z" id="hEU$PF4" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRkQZ" id="i2IBXXt" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$PoX" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXX5" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PDX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXSx" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gZljcSs" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PRm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hppw4Kd" role="3EZMnx">
        <node concept="3F0ifn" id="hppw4Ke" role="3EZMnx">
          <property role="3F0ifm" value="weaving rules:" />
          <node concept="VPM3Z" id="hEU$OVl" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNR1b" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBN" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8yn" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hppw4Kf" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTCWu" role="3EZMnx" />
          <node concept="3F2HdR" id="hppw4Kh" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:gZ0SoFM" resolve="weavingMappingRule" />
            <node concept="VPM3Z" id="hEU$PQk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRkQZ" id="i2IBXXv" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$P0m" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXUl" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P3$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXUh" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gZ0SNkK" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PfK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hppw8pc" role="3EZMnx">
        <node concept="3F0ifn" id="hppw8pd" role="3EZMnx">
          <property role="3F0ifm" value="reduction rules:" />
          <node concept="VPM3Z" id="hEU$P$q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNR2f" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBQ" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8uc" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hppw8pe" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTDK0" role="3EZMnx" />
          <node concept="3F2HdR" id="hppw8pg" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:gZacgNl" resolve="reductionMappingRule" />
            <node concept="VPM3Z" id="hEU$PAT" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRkQZ" id="i2IBXXr" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$PXV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWX" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P2h" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXTE" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="1$dcvTE5RhO" role="3EZMnx">
        <node concept="VPM3Z" id="1$dcvTE5RhP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="1$dcvTE5RhQ" role="3EZMnx">
        <node concept="3F0ifn" id="1$dcvTE5RhR" role="3EZMnx">
          <property role="3F0ifm" value="pattern rules:" />
          <node concept="VPM3Z" id="1$dcvTE5RhS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="1$dcvTE5RhT" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="1$dcvTE5RhU" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="1$dcvTE5RhV" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="1$dcvTE5RhW" role="3EZMnx">
          <node concept="3XFhqQ" id="1$dcvTE5RhX" role="3EZMnx" />
          <node concept="3F2HdR" id="1$dcvTE5RhY" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:1$dcvTE5RhN" resolve="patternReductionRule" />
            <node concept="VPM3Z" id="1$dcvTE5RhZ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRkQZ" id="1$dcvTE5Ri0" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="1$dcvTE5Ri1" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="1$dcvTE5Ri2" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="1$dcvTE5Ri3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="1$dcvTE5Ri4" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="7u6$QPxJT90" role="3EZMnx">
        <node concept="VPM3Z" id="7u6$QPxJT91" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="7u6$QPxJT92" role="3EZMnx">
        <node concept="3F0ifn" id="7u6$QPxJT93" role="3EZMnx">
          <property role="3F0ifm" value="reduce references:" />
          <node concept="VPM3Z" id="7u6$QPxJT94" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="7u6$QPxJT95" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="7u6$QPxJT96" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="7u6$QPxJT97" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="7u6$QPxJT98" role="3EZMnx">
          <node concept="3XFhqQ" id="7u6$QPxJT99" role="3EZMnx" />
          <node concept="3F2HdR" id="7u6$QPxJT9a" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:7u6$QPxJT8L" resolve="referenceReductionRule" />
            <node concept="VPM3Z" id="7u6$QPxJT9b" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="7u6$QPxJT9c" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="7u6$QPxJT9d" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="7u6$QPxJT9e" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="7u6$QPxJT9f" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="7u6$QPxJT9g" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gZacr9O" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$OYR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hppwdBK" role="3EZMnx">
        <node concept="3F0ifn" id="hppwdBL" role="3EZMnx">
          <property role="3F0ifm" value="abandon roots:" />
          <node concept="VPM3Z" id="hEU$PUp" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNQZY" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBL" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8vK" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hKaR6YZ" role="3EZMnx">
          <node concept="3XFhqQ" id="hKaR6Z0" role="3EZMnx" />
          <node concept="3F2HdR" id="hKaR6Z1" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:hKaQY93" resolve="dropRootRule" />
            <node concept="VPM3Z" id="hKaR6Z2" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="i2IBXXq" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hKaR6Z3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXXf" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PvX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXUI" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hppvER3" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PvK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="6uPxrhfjwvN" role="3EZMnx">
        <node concept="3F0ifn" id="6uPxrhfjwvO" role="3EZMnx">
          <property role="3F0ifm" value="drop attributes:" />
          <node concept="VPM3Z" id="6uPxrhfjwvP" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="6uPxrhfjwvQ" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="6uPxrhfjwvR" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="6uPxrhfjwvS" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="6uPxrhfjwvT" role="3EZMnx">
          <node concept="3XFhqQ" id="6uPxrhfjwvU" role="3EZMnx" />
          <node concept="3F2HdR" id="6uPxrhfjwvV" role="3EZMnx">
            <property role="S$F3r" value="true" />
            <ref role="1NtTu8" to="tpf8:6uPxrhfjwrr" resolve="dropAttrubuteRule" />
            <node concept="VPM3Z" id="6uPxrhfjwvW" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="6uPxrhfjwvX" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="6uPxrhfjwvY" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="6uPxrhfjwvZ" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="6uPxrhfjww0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="6uPxrhfjww1" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6uPxrhfjwsz" role="3EZMnx" />
      <node concept="3EZMnI" id="hppwgAJ" role="3EZMnx">
        <node concept="3F0ifn" id="hppwgAK" role="3EZMnx">
          <property role="3F0ifm" value="pre-processing scripts:" />
          <node concept="VPM3Z" id="hEU$Pji" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNQXs" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBO" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8tW" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hppwgAL" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTFBb" role="3EZMnx" />
          <node concept="3F2HdR" id="hppwgAN" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:hppuA4d" resolve="preMappingScript" />
            <node concept="VPM3Z" id="hEU$P9k" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="i2IBXXV" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$Pmd" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXVI" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PGJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXSk" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hppwuq8" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PHT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hppwuq9" role="3EZMnx">
        <node concept="3F0ifn" id="hppwuqa" role="3EZMnx">
          <property role="3F0ifm" value="post-processing scripts:" />
          <node concept="VPM3Z" id="hEU$PHh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNQYQ" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VQ3r3" id="hEUVPBP" role="3F10Kt">
            <property role="2USNnj" value="gtbM8PH/2" />
          </node>
          <node concept="VechU" id="hEZR8yy" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hppwuqb" role="3EZMnx">
          <node concept="3XFhqQ" id="hurTG_t" role="3EZMnx" />
          <node concept="3F2HdR" id="hppwuqd" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:hppvy2_" resolve="postMappingScript" />
            <node concept="VPM3Z" id="hEU$P40" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="i2IBXXm" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$PfN" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXVh" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PFH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXUP" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBXU0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fWraTdi">
    <property role="TrG5h" value="TemplateFragment_Editor" />
    <property role="3GE5qa" value="template" />
    <ref role="1XX52x" to="tpf8:fWrartG" resolve="TemplateFragment" />
    <node concept="3EZMnI" id="fWrbuyL" role="6VMZX">
      <node concept="3F0ifn" id="hf2dFxQ" role="3EZMnx">
        <property role="3F0ifm" value="template fragment" />
        <node concept="VPM3Z" id="hEU$P7V" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8$H" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJT8" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="hf2dFxR" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Prs" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hf2dFxS" role="3EZMnx">
        <node concept="3EZMnI" id="husdFMX" role="3EZMnx">
          <node concept="3F0ifn" id="husdG0q" role="3EZMnx">
            <property role="3F0ifm" value="mapping label" />
          </node>
          <node concept="3F0ifn" id="husdH1C" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PZ3" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="1iCGBv" id="husdIJx" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no label&gt;" />
            <ref role="1NtTu8" to="tpf8:husdAGJ" resolve="labelDeclaration" />
            <node concept="1sVBvm" id="husdIJy" role="1sWHZn">
              <node concept="3F0A7n" id="husdJEW" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="30gYXW" id="fBC_gouD$F" role="3F10Kt">
                  <property role="Vb096" value="fLJRk5B/darkGray" />
                  <node concept="3ZlJ5R" id="fBC_gouD$G" role="VblUZ">
                    <node concept="3clFbS" id="fBC_gouD$H" role="2VODD2">
                      <node concept="3clFbF" id="fBC_gouD$I" role="3cqZAp">
                        <node concept="2OqwBi" id="fBC_gouD$J" role="3clFbG">
                          <node concept="2OqwBi" id="fBC_gouD$K" role="2Oq$k0">
                            <node concept="2OqwBi" id="fBC_gouD$L" role="2Oq$k0">
                              <node concept="2OqwBi" id="fBC_gouD$M" role="2Oq$k0">
                                <node concept="1Q80Hx" id="fBC_gouD$N" role="2Oq$k0" />
                                <node concept="liA8E" id="fBC_gouD$O" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                                </node>
                              </node>
                              <node concept="liA8E" id="fBC_gouD$P" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorComponent.getStyleRegistry()" resolve="getStyleRegistry" />
                              </node>
                            </node>
                            <node concept="liA8E" id="fBC_gouD$Q" role="2OqNvi">
                              <ref role="37wK5l" to="hox0:~StyleRegistry.getStyle(java.lang.String)" resolve="getStyle" />
                              <node concept="Xl_RD" id="fBC_gouD$R" role="37wK5m">
                                <property role="Xl_RC" value="HIGHLIGHTED_LABEL_IN_EDITOR" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="fBC_gouD$S" role="2OqNvi">
                            <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                            <node concept="10M0yZ" id="fBC_gouD$T" role="37wK5m">
                              <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_BACKGROUND_COLOR" resolve="TEXT_BACKGROUND_COLOR" />
                              <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
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
          <node concept="VPM3Z" id="hEU$PJy" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXW2" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PLs" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXU$" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$P4s" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXTj" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fWPeJik" role="2wV5jI">
      <node concept="3F0ifn" id="fWPeV30" role="3EZMnx">
        <property role="3F0ifm" value="&lt;TF" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <node concept="VPM3Z" id="hEU$Pm4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="hF0kJUP" role="3F10Kt">
          <property role="Vb096" value="fLwANPo/pink" />
        </node>
        <node concept="30h1P$" id="hF0kJWw" role="3F10Kt">
          <property role="Vb096" value="fLwANPs/magenta" />
          <node concept="3ZlJ5R" id="5MsRCEscxiR" role="VblUZ">
            <node concept="3clFbS" id="5MsRCEscxiS" role="2VODD2">
              <node concept="3clFbF" id="5MsRCEsg5cW" role="3cqZAp">
                <node concept="2ShNRf" id="5MsRCEsg5Zn" role="3clFbG">
                  <node concept="1pGfFk" id="5MsRCEsg5ZH" role="2ShVmc">
                    <ref role="37wK5l" to="lzb2:~JBColor.&lt;init&gt;(java.awt.Color,java.awt.Color)" resolve="JBColor" />
                    <node concept="2ShNRf" id="5MsRCEsg6Nx" role="37wK5m">
                      <node concept="1pGfFk" id="5MsRCEsg7pb" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                        <node concept="3cmrfG" id="5MsRCEsg7pc" role="37wK5m">
                          <property role="3cmrfH" value="175" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsg7pd" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsg7pe" role="37wK5m">
                          <property role="3cmrfH" value="175" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsg908" role="37wK5m">
                          <property role="3cmrfH" value="100" />
                        </node>
                      </node>
                    </node>
                    <node concept="2ShNRf" id="5MsRCEsg5ZK" role="37wK5m">
                      <node concept="1pGfFk" id="5MsRCEsg5ZL" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                        <node concept="3cmrfG" id="5MsRCEsg5ZM" role="37wK5m">
                          <property role="3cmrfH" value="151" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsg5ZN" role="37wK5m">
                          <property role="3cmrfH" value="118" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsg5ZO" role="37wK5m">
                          <property role="3cmrfH" value="169" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsg9$E" role="37wK5m">
                          <property role="3cmrfH" value="120" />
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
      <node concept="1iCGBv" id="husdPAR" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no label&gt;" />
        <ref role="1NtTu8" to="tpf8:husdAGJ" resolve="labelDeclaration" />
        <node concept="1sVBvm" id="husdPAS" role="1sWHZn">
          <node concept="3F0A7n" id="husdPAT" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="30gYXW" id="fBC_gouA$K" role="3F10Kt">
              <property role="Vb096" value="fLJRk5B/darkGray" />
              <node concept="3ZlJ5R" id="fBC_gouA$L" role="VblUZ">
                <node concept="3clFbS" id="fBC_gouA$M" role="2VODD2">
                  <node concept="3clFbF" id="fBC_gouA$N" role="3cqZAp">
                    <node concept="2OqwBi" id="fBC_gouA$O" role="3clFbG">
                      <node concept="2OqwBi" id="fBC_gouA$P" role="2Oq$k0">
                        <node concept="2OqwBi" id="fBC_gouA$Q" role="2Oq$k0">
                          <node concept="2OqwBi" id="fBC_gouA$R" role="2Oq$k0">
                            <node concept="1Q80Hx" id="fBC_gouA$S" role="2Oq$k0" />
                            <node concept="liA8E" id="fBC_gouA$T" role="2OqNvi">
                              <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                            </node>
                          </node>
                          <node concept="liA8E" id="fBC_gouA$U" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorComponent.getStyleRegistry()" resolve="getStyleRegistry" />
                          </node>
                        </node>
                        <node concept="liA8E" id="fBC_gouA$V" role="2OqNvi">
                          <ref role="37wK5l" to="hox0:~StyleRegistry.getStyle(java.lang.String)" resolve="getStyle" />
                          <node concept="Xl_RD" id="fBC_gouA$W" role="37wK5m">
                            <property role="Xl_RC" value="HIGHLIGHTED_LABEL_IN_EDITOR" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="fBC_gouA$X" role="2OqNvi">
                        <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                        <node concept="10M0yZ" id="fBC_gouA$Y" role="37wK5m">
                          <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_BACKGROUND_COLOR" resolve="TEXT_BACKGROUND_COLOR" />
                          <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="husdSYI" role="pqm2j">
          <node concept="3clFbS" id="husdSYJ" role="2VODD2">
            <node concept="3clFbF" id="husdTmV" role="3cqZAp">
              <node concept="3y3z36" id="husdU9N" role="3clFbG">
                <node concept="10Nm6u" id="husdUG1" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$QGj" role="3uHU7B">
                  <node concept="pncrf" id="husdTmW" role="2Oq$k0" />
                  <node concept="3TrEf2" id="husdTZ2" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:husdAGJ" resolve="labelDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="gISVm$i" role="3EZMnx">
        <node concept="3vyZuw" id="hEUG$0x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="hEVH_8G" role="3F10Kt">
          <property role="Vb096" value="fLwANPo/pink" />
        </node>
      </node>
      <node concept="3F0ifn" id="gISVs9o" role="3EZMnx">
        <property role="3F0ifm" value="TF&gt;" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <node concept="VPM3Z" id="hEU$PT6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="hF0kJRo" role="3F10Kt">
          <property role="Vb096" value="fLwANPo/pink" />
        </node>
        <node concept="30h1P$" id="hF0kJUS" role="3F10Kt">
          <property role="Vb096" value="fLwANPs/magenta" />
          <node concept="3ZlJ5R" id="5MsRCEsoPSr" role="VblUZ">
            <node concept="3clFbS" id="5MsRCEsoPSs" role="2VODD2">
              <node concept="3clFbF" id="5MsRCEsoQ4y" role="3cqZAp">
                <node concept="2ShNRf" id="5MsRCEsoQ4z" role="3clFbG">
                  <node concept="1pGfFk" id="5MsRCEsoQ4$" role="2ShVmc">
                    <ref role="37wK5l" to="lzb2:~JBColor.&lt;init&gt;(java.awt.Color,java.awt.Color)" resolve="JBColor" />
                    <node concept="2ShNRf" id="5MsRCEsoQ4_" role="37wK5m">
                      <node concept="1pGfFk" id="5MsRCEsoQ4A" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                        <node concept="3cmrfG" id="5MsRCEsoQ4B" role="37wK5m">
                          <property role="3cmrfH" value="175" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsoQ4C" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsoQ4D" role="37wK5m">
                          <property role="3cmrfH" value="175" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsoQ4E" role="37wK5m">
                          <property role="3cmrfH" value="100" />
                        </node>
                      </node>
                    </node>
                    <node concept="2ShNRf" id="5MsRCEsoQ4F" role="37wK5m">
                      <node concept="1pGfFk" id="5MsRCEsoQ4G" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                        <node concept="3cmrfG" id="5MsRCEsoQ4H" role="37wK5m">
                          <property role="3cmrfH" value="151" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsoQ4I" role="37wK5m">
                          <property role="3cmrfH" value="118" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsoQ4J" role="37wK5m">
                          <property role="3cmrfH" value="169" />
                        </node>
                        <node concept="3cmrfG" id="5MsRCEsoQ4K" role="37wK5m">
                          <property role="3cmrfH" value="120" />
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
      <node concept="2iRfu4" id="i2IBXSR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gck0mSq">
    <ref role="1XX52x" to="tpf8:gcjVnq8" resolve="TemplateSwitch" />
    <node concept="3EZMnI" id="gck0pCV" role="2wV5jI">
      <node concept="3EZMnI" id="gcRlnFN" role="3EZMnx">
        <node concept="3F0ifn" id="gcRlnFO" role="3EZMnx">
          <property role="3F0ifm" value="template switch" />
        </node>
        <node concept="3F0A7n" id="gcRlnFP" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="gcRlnFQ" role="3EZMnx">
          <property role="3F0ifm" value="extends" />
          <node concept="VPM3Z" id="hEU$Ptz" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="gcRlnFR" role="3EZMnx">
          <property role="1$x2rV" value="&lt;none&gt;" />
          <ref role="1NtTu8" to="tpf8:gcphYgk" resolve="modifiedSwitch" />
          <node concept="1sVBvm" id="gcRlnFS" role="1sWHZn">
            <node concept="3F0A7n" id="gcRlnFT" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PrB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXUW" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3C_dEreisx" role="3EZMnx">
        <node concept="VPM3Z" id="3C_dEreisy" role="3F10Kt" />
        <node concept="3F0ifn" id="3C_dEreisz" role="3EZMnx">
          <node concept="VPM3Z" id="3C_dErfmGX" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="3C_dEreis$" role="3EZMnx">
          <property role="3F0ifm" value="requires call site" />
          <node concept="VPxyj" id="3C_dEreis_" role="3F10Kt" />
          <node concept="VPM3Z" id="3C_dEreisA" role="3F10Kt" />
          <node concept="Vb9p2" id="3C_dEreisB" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="2iRfu4" id="3C_dEreisC" role="2iSdaV" />
        <node concept="pkWqt" id="3C_dEreisD" role="pqm2j">
          <node concept="3clFbS" id="3C_dEreisE" role="2VODD2">
            <node concept="3clFbF" id="3C_dEreisF" role="3cqZAp">
              <node concept="2OqwBi" id="3C_dEreisG" role="3clFbG">
                <node concept="pncrf" id="3C_dEreisH" role="2Oq$k0" />
                <node concept="3TrcHB" id="3C_dEreisI" role="2OqNvi">
                  <ref role="3TsBF5" to="tpf8:1zGVNdDoES9" resolve="needCallSite" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="QzR6ThIHt3" role="3EZMnx" />
      <node concept="3F0ifn" id="QzR6ThIHt4" role="3EZMnx">
        <property role="3F0ifm" value="parameters" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
      </node>
      <node concept="3F2HdR" id="QzR6ThIHt5" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:QzR6ThdYDm" resolve="parameter" />
        <node concept="2iRkQZ" id="QzR6ThIHt6" role="2czzBx" />
        <node concept="VPM3Z" id="QzR6ThIHt7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="QzR6ThIHs5" role="3EZMnx" />
      <node concept="3EZMnI" id="gck0_Ip" role="3EZMnx">
        <node concept="3XFhqQ" id="hQ8wNMt" role="3EZMnx" />
        <node concept="3EZMnI" id="gZaJ$aB" role="3EZMnx">
          <node concept="3EZMnI" id="hQ8x2Pq" role="3EZMnx">
            <node concept="VPM3Z" id="hQ8x2Pr" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="hQ8x2Ps" role="3EZMnx">
              <property role="3F0ifm" value="null-input message:" />
            </node>
            <node concept="3F1sOY" id="hQ8x73J" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpf8:hQ8wCJx" resolve="nullInputMessage" />
            </node>
            <node concept="2iRfu4" id="i2IBXUr" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="hQ8xd71" role="3EZMnx" />
          <node concept="3F0ifn" id="gZaVPtL" role="3EZMnx">
            <property role="3F0ifm" value="cases:" />
          </node>
          <node concept="3F0ifn" id="gZaWtkX" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PTf" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="gZaVPtM" role="3EZMnx">
            <node concept="3F0ifn" id="gZaVPtN" role="3EZMnx">
              <property role="3F0ifm" value="  " />
              <node concept="VPM3Z" id="hEU$PJw" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F2HdR" id="gZaVPtO" role="3EZMnx">
              <ref role="1NtTu8" to="tpf8:gZaUrV0" resolve="reductionMappingRule" />
              <node concept="VPM3Z" id="hEU$Q20" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRkQZ" id="i2IBXXo" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hEU$OX0" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBXXh" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="gZaVYM6" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PVt" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="gZaVZyX" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$P6l" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="h0jAwaI" role="3EZMnx">
            <node concept="3F0ifn" id="h0jAwaJ" role="3EZMnx">
              <property role="3F0ifm" value="default:" />
            </node>
            <node concept="3F1sOY" id="h0jAE80" role="3EZMnx">
              <property role="1$x2rV" value="&lt;ignore switch&gt;" />
              <ref role="1NtTu8" to="tpf8:h0jxRHN" resolve="defaultConsequence" />
            </node>
            <node concept="VPM3Z" id="hEU$PSY" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBXW0" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Pem" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBXSm" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P0X" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXX6" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBXUp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gcuH4ax">
    <ref role="1XX52x" to="tpf8:gcuGL8H" resolve="TemplateSwitchReference" />
    <node concept="1iCGBv" id="gcuHhsq" role="2wV5jI">
      <property role="1$x2rV" value="&lt;choose switch&gt;" />
      <ref role="1NtTu8" to="tpf8:gcuGPbZ" resolve="templateSwitch" />
      <node concept="1sVBvm" id="gcuH8Eo" role="1sWHZn">
        <node concept="3F0A7n" id="gcuHhsr" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="ge9Izch">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:ghW57bu" resolve="IfMacro" />
    <node concept="3EZMnI" id="ge9S5YP" role="6VMZX">
      <node concept="3F0ifn" id="ge9Spvp" role="3EZMnx">
        <property role="3F0ifm" value="conditional branch" />
        <node concept="VPM3Z" id="hEU$PIc" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8Ch" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJSb" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZEgyO$" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pda" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="gZJ1dj9" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$Vrtm" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$Vrtn" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="gZJ1fE7" role="3EZMnx">
          <node concept="3F0ifn" id="gZJ1fE8" role="3EZMnx">
            <property role="3F0ifm" value="condition" />
            <node concept="VPM3Z" id="hEU$PWp" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="gZJ1fE9" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$Plp" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="gZJ1fEa" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <property role="1cu_pB" value="gtguBGO/2" />
            <ref role="1NtTu8" to="tpf8:gZIZSF3" resolve="conditionFunction" />
          </node>
          <node concept="VPM3Z" id="hEU$P7o" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXSh" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hoUUOJK" role="3EZMnx">
          <node concept="3F0ifn" id="hoUUOJL" role="3EZMnx">
            <property role="3F0ifm" value="alternative" />
            <node concept="VPM3Z" id="hEU$PZt" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="hoUUOJM" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$OXO" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="hoUUOJN" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpf8:hoUU_w3" resolve="alternativeConsequence" />
          </node>
          <node concept="VPM3Z" id="hEU$PAw" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWn" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Pa_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXTU" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$P9Q" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXXc" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4c226Nmabs4" role="2wV5jI">
      <node concept="3EZMnI" id="4c226Nmabs6" role="3EZMnx">
        <node concept="3F0ifn" id="4c226Nmabs7" role="3EZMnx">
          <property role="3F0ifm" value="$IF$" />
          <property role="1cu_pB" value="gtgu$YJ/1" />
          <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
          <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
          <node concept="A1WHu" id="6GI$fc4d6sx" role="3vIgyS">
            <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
          </node>
          <node concept="VPRnO" id="6A$8asZeW5o" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="4c226Nmabsb" role="3EZMnx">
          <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
          <node concept="34QqEe" id="4c226NmaooO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="4c226NmaooP" role="2iSdaV" />
        <node concept="3F0ifn" id="4c226Nmabsd" role="3EZMnx">
          <property role="3F0ifm" value="/" />
          <node concept="pkWqt" id="4c226Nmabtj" role="pqm2j">
            <node concept="3clFbS" id="4c226Nmabtk" role="2VODD2">
              <node concept="3clFbF" id="4c226Nmabtl" role="3cqZAp">
                <node concept="2OqwBi" id="4c226Nmabts" role="3clFbG">
                  <node concept="2OqwBi" id="4c226Nmabtn" role="2Oq$k0">
                    <node concept="pncrf" id="4c226Nmabtm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4c226Nmabtr" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:hoUU_w3" resolve="alternativeConsequence" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="4c226Nmabtw" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4c226Nmabsc" role="3EZMnx">
        <node concept="3F0ifn" id="4c226Nmabsf" role="3EZMnx">
          <property role="3F0ifm" value="$ELSE$" />
          <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        </node>
        <node concept="3F1sOY" id="4c226Nmabsh" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:hoUU_w3" resolve="alternativeConsequence" />
          <node concept="3vyZuw" id="4c226Nmabsi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="34QqEe" id="4c226Nma$qe" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pkWqt" id="4c226Nmabs_" role="pqm2j">
          <node concept="3clFbS" id="4c226NmabsA" role="2VODD2">
            <node concept="3clFbF" id="4c226NmabsB" role="3cqZAp">
              <node concept="2OqwBi" id="2_1mL0eofUM" role="3clFbG">
                <node concept="2OqwBi" id="4c226NmabsD" role="2Oq$k0">
                  <node concept="pncrf" id="4c226NmabsE" role="2Oq$k0" />
                  <node concept="Bykcj" id="2_1mL0eofUJ" role="2OqNvi">
                    <node concept="1aIX9F" id="2_1mL0eofUK" role="1xVPHs">
                      <node concept="26LbJo" id="2_1mL0eofUL" role="1aIX9E">
                        <ref role="26LbJp" to="tpf8:hoUU_w3" resolve="alternativeConsequence" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2_1mL0eofUN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4c226NmabsH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pVoyu" id="4c226NmaooS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="4c226NmaooN" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3vbLOC8knvf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="geb3KjN">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:geb32N7" resolve="CopySrcListMacro" />
    <node concept="3EZMnI" id="geb3XPz" role="6VMZX">
      <node concept="3F0ifn" id="h02PzAR" role="3EZMnx">
        <property role="3F0ifm" value="copy/reduce list of nodes" />
        <node concept="VPM3Z" id="hEU$Pzn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8wh" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJRN" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="h02PzAS" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PCz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="h02PzAT" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$Vr76" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$Vr7J" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="h02PzBg" role="3EZMnx">
          <node concept="3F0ifn" id="h02PzBh" role="3EZMnx">
            <property role="3F0ifm" value="mapped nodes" />
            <node concept="VPM3Z" id="hEU$Pnn" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="h02PzBi" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$Plu" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="h02PzBj" role="3EZMnx">
            <property role="1cu_pB" value="gtguBGO/2" />
            <property role="39s7Ar" value="true" />
            <ref role="1NtTu8" to="tpf8:h02P8WO" resolve="sourceNodesQuery" />
          </node>
          <node concept="VPM3Z" id="hEU$Q0f" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXT6" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PeZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXU9" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$P5f" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXVB" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gITmv62" role="2wV5jI">
      <node concept="3F0ifn" id="gITmvqn" role="3EZMnx">
        <property role="3F0ifm" value="$COPY_SRCL$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4bRZ1" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeVPx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="hfvvLB8" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="i2IBXTW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ghW5HuI">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:ge9HgZJ" resolve="CopySrcNodeMacro" />
    <node concept="3EZMnI" id="gITmTHO" role="2wV5jI">
      <node concept="3F0ifn" id="hGCmjau" role="3EZMnx">
        <property role="3F0ifm" value="$COPY_SRC$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <node concept="A1WHu" id="6GI$fc4d6fm" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeVxg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="hfvvRd$" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="i2IBXWV" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="heSFwpk" role="6VMZX">
      <node concept="3F0ifn" id="heSFwpl" role="3EZMnx">
        <property role="3F0ifm" value="copy/reduce node" />
        <node concept="VPM3Z" id="hEU$PQZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8ts" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJSK" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="heSFwpm" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Q00" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="heSFwpn" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VrcF" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VrcG" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="heSFwpL" role="3EZMnx">
          <node concept="3F0ifn" id="heSFwpM" role="3EZMnx">
            <property role="3F0ifm" value="mapped node" />
            <node concept="VPM3Z" id="hEU$P9Z" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="heSFwpN" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$P5k" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="heSFwpO" role="3EZMnx">
            <property role="1cu_pB" value="gtguBGO/2" />
            <property role="1$x2rV" value="&lt;current source node&gt;" />
            <ref role="1NtTu8" to="tpf8:gZNFE_I" resolve="sourceNodeQuery" />
          </node>
          <node concept="VPM3Z" id="hEU$PbS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXVf" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PFF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXWZ" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PbC" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXUA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ghWSb2P">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:ghWS0B3" resolve="LoopMacro" />
    <node concept="3EZMnI" id="ghWSb2R" role="6VMZX">
      <node concept="3F0ifn" id="gZJoa3i" role="3EZMnx">
        <property role="3F0ifm" value="iterate over sequence of nodes" />
        <node concept="VPM3Z" id="hEU$PvE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8m$" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJRI" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZJoa3j" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$P05" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="gZJoa3k" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VuCw" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VuCx" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="gZJoa3_" role="3EZMnx">
          <node concept="3F0ifn" id="gZJoa3A" role="3EZMnx">
            <property role="3F0ifm" value="iteration sequence" />
            <node concept="VPM3Z" id="hEU$P_c" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="gZJoa3B" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PMJ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="gZJoa3S" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <property role="1cu_pB" value="gtguBGO/2" />
            <ref role="1NtTu8" to="tpf8:gZJn$bn" resolve="sourceNodesQuery" />
          </node>
          <node concept="VPM3Z" id="hEU$Q3i" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWe" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="4Eh_7JwmGt3" role="3EZMnx">
          <node concept="3F0ifn" id="4Eh_7JwmGt4" role="3EZMnx">
            <property role="3F0ifm" value="counter variable (deprecated)" />
            <node concept="VPM3Z" id="4Eh_7JwmGt5" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="4Eh_7JwmGt6" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="4Eh_7JwmGt7" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="4Eh_7JwmHXQ" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no variable&gt;" />
            <ref role="1NtTu8" to="tpf8:6suuiWX_Ud4" resolve="counterVarName" />
            <ref role="1k5W1q" to="tpf0:3TwGi_N3NKw" resolve="deprecated" />
          </node>
          <node concept="VPM3Z" id="4Eh_7JwmGt9" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="4Eh_7JwmGta" role="2iSdaV" />
          <node concept="pkWqt" id="3C_dEr6fFu" role="pqm2j">
            <node concept="3clFbS" id="3C_dEr6fFv" role="2VODD2">
              <node concept="3clFbF" id="3C_dEr4vIG" role="3cqZAp">
                <node concept="3y3z36" id="3vL64MrjA5b" role="3clFbG">
                  <node concept="10Nm6u" id="3vL64MrjAqZ" role="3uHU7w" />
                  <node concept="2OqwBi" id="3C_dEr4w2m" role="3uHU7B">
                    <node concept="pncrf" id="3C_dEr4vIF" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3C_dEr4wqe" role="2OqNvi">
                      <ref role="3TsBF5" to="tpf8:6suuiWX_Ud4" resolve="counterVarName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PXq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXUv" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PIO" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXUb" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gITmPAK" role="2wV5jI">
      <node concept="3F0ifn" id="gITmPOY" role="3EZMnx">
        <property role="3F0ifm" value="$LOOP$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4d6N4" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeWEf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="hfvuDr3" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="i2IBXUd" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gtpev$E">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
    <node concept="3EZMnI" id="gtpev$G" role="6VMZX">
      <node concept="3F0ifn" id="h031GGj" role="3EZMnx">
        <property role="3F0ifm" value="map node macro" />
        <node concept="VPM3Z" id="hEU$P78" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8oZ" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJTr" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="h031GGk" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$OWV" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="h031GGl" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VvWe" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VvWf" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="h031GGA" role="3EZMnx">
          <node concept="3F0ifn" id="h031GGB" role="3EZMnx">
            <property role="3F0ifm" value="mapped node" />
            <node concept="VPM3Z" id="hEU$PAE" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="h031GGC" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$P$b" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="h031GGD" role="3EZMnx">
            <property role="1$x2rV" value="&lt;current source node&gt;" />
            <property role="1cu_pB" value="gtguBGO/2" />
            <ref role="1NtTu8" to="tpf8:h031$YD" resolve="sourceNodeQuery" />
          </node>
          <node concept="VPM3Z" id="hEU$Pw_" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXSp" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h2kH4y$" role="3EZMnx">
          <node concept="3F0ifn" id="h2kH4y_" role="3EZMnx">
            <property role="3F0ifm" value="mapping func" />
            <node concept="VPM3Z" id="hEU$PvD" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="h2kH4yA" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$POY" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="h2kH4yB" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpf8:h2kGFpj" resolve="mapperFunction" />
          </node>
          <node concept="VPM3Z" id="hEU$P28" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXV0" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hP5n7Nx" role="3EZMnx">
          <node concept="3F0ifn" id="hP5n7Ny" role="3EZMnx">
            <property role="3F0ifm" value="post-processing" />
            <node concept="VPM3Z" id="hP5n7Nz" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="hP5n7N$" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hP5n7N_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="hP5n7NA" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpf8:hP5mYq0" resolve="postMapperFunction" />
          </node>
          <node concept="VPM3Z" id="hP5n7NB" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWM" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Pep" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXTC" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Pjk" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXX1" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gITmLdB" role="2wV5jI">
      <node concept="3F0ifn" id="gITmLrQ" role="3EZMnx">
        <property role="3F0ifm" value="$MAP_SRC$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4d6N8" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeWKb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="hfvvXT7" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="i2IBXT2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gvekHA5">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:gvejVYo" resolve="MapSrcListMacro" />
    <node concept="3EZMnI" id="gvekYCy" role="6VMZX">
      <node concept="3F0ifn" id="h03AM7U" role="3EZMnx">
        <property role="3F0ifm" value="map node macro" />
        <node concept="VPM3Z" id="hEU$Pqg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8tg" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJTj" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="h03AM7V" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PHl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="h03AM7W" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$Vvl2" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$Vvl3" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="h03AM8j" role="3EZMnx">
          <node concept="3F0ifn" id="h03AM8k" role="3EZMnx">
            <property role="3F0ifm" value="mapped nodes" />
            <node concept="VPM3Z" id="hEU$PPg" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="h03AM8l" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$Phs" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="h03AM8m" role="3EZMnx">
            <property role="1cu_pB" value="gtguBGO/2" />
            <property role="39s7Ar" value="true" />
            <ref role="1NtTu8" to="tpf8:h03_Rp0" resolve="sourceNodesQuery" />
          </node>
          <node concept="VPM3Z" id="hEU$Pit" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXSG" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h2v0UGX" role="3EZMnx">
          <node concept="3F0ifn" id="h2v0UGY" role="3EZMnx">
            <property role="3F0ifm" value="mapping func" />
            <node concept="VPM3Z" id="hEU$Pjb" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="h2v0UGZ" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$P0r" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="h2v0UH0" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpf8:h2tnRFT" resolve="mapperFunction" />
          </node>
          <node concept="VPM3Z" id="hEU$PUj" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWl" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hP5ov8b" role="3EZMnx">
          <node concept="3F0ifn" id="hP5ov8c" role="3EZMnx">
            <property role="3F0ifm" value="post-processing" />
            <node concept="VPM3Z" id="hP5ov8d" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="hP5ov8e" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hP5ov8f" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="hP5ov8g" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpf8:hP5om4f" resolve="postMapperFunction" />
          </node>
          <node concept="VPM3Z" id="hP5ov8h" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXV6" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PGR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXT$" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$P06" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXT0" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gITmmXS" role="2wV5jI">
      <node concept="3F0ifn" id="gITmncQ" role="3EZMnx">
        <property role="3F0ifm" value="$MAP_SRCL$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4d6N6" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeWHC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="hfvvV2u" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="i2IBXSI" role="2iSdaV" />
    </node>
  </node>
  <node concept="325Ffw" id="gITvFxk">
    <property role="TrG5h" value="MacrosSwitch_KeyMap" />
    <property role="2XBEHb" value="true" />
    <node concept="2PxR9H" id="gITvOZe" role="2QnnpI">
      <property role="2PxWOX" value="create template fragment" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="gITvOZf" role="2PyaAO">
        <property role="2PWKIS" value="VK_F" />
        <property role="2PWKIB" value="ctrl+shift" />
      </node>
      <node concept="2Pz7Y7" id="gITvOZg" role="2Pzqsi">
        <node concept="3clFbS" id="gITvOZh" role="2VODD2">
          <node concept="3clFbJ" id="hz3fuIV" role="3cqZAp">
            <node concept="3clFbS" id="hz3fuIW" role="3clFbx">
              <node concept="3cpWs6" id="hz3fuIX" role="3cqZAp">
                <node concept="3clFbT" id="hz3fuIY" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="hz3fuIZ" role="3clFbw">
              <node concept="2OqwBi" id="hz3fuJ0" role="3uHU7B">
                <node concept="34oBXx" id="hz3fuJ1" role="2OqNvi" />
                <node concept="0GJ7U" id="hz3fuJ2" role="2Oq$k0" />
              </node>
              <node concept="3cmrfG" id="hz3fuJ3" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="hz2Q9Cm" role="3cqZAp">
            <node concept="3clFbS" id="hz2Q9Cn" role="3clFbx">
              <node concept="3cpWs6" id="hz2QrOU" role="3cqZAp">
                <node concept="3clFbT" id="hz2Qskd" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="hz2QqIY" role="3clFbw">
              <node concept="10Nm6u" id="hz2QraS" role="3uHU7w" />
              <node concept="2OqwBi" id="hz2Qi8g" role="3uHU7B">
                <node concept="0GJ7k" id="hz345LT" role="2Oq$k0" />
                <node concept="2Xjw5R" id="hz2Qmre" role="2OqNvi">
                  <node concept="3gmYPX" id="7I5RuObTKdU" role="1xVPHs">
                    <node concept="3gn64h" id="7I5RuObTKdX" role="3gmYPZ">
                      <ref role="3gnhBz" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                    </node>
                    <node concept="3gn64h" id="7I5RuObTKdZ" role="3gmYPZ">
                      <ref role="3gnhBz" to="tpf8:7I5RuObTjPG" resolve="InlineTemplateWithContext_RuleConsequence" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="hz34r6g" role="3cqZAp">
            <node concept="3clFbS" id="hz34r6h" role="3clFbx">
              <node concept="3cpWs6" id="hz34ETP" role="3cqZAp">
                <node concept="3clFbT" id="hz34FvH" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hz34_z$" role="3clFbw">
              <node concept="2OqwBi" id="hz34wME" role="2Oq$k0">
                <node concept="2OqwBi" id="hz34s4P" role="2Oq$k0">
                  <node concept="0GJ7k" id="hz34rKN" role="2Oq$k0" />
                  <node concept="z$bX8" id="hz34vLt" role="2OqNvi" />
                </node>
                <node concept="3zZkjj" id="hRzaijA" role="2OqNvi">
                  <node concept="1bVj0M" id="hRzaijB" role="23t8la">
                    <node concept="gl6BB" id="5W7E4fV0Wef" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Weg" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="hRzaijE" role="1bW5cS">
                      <node concept="3clFbF" id="hRzaijF" role="3cqZAp">
                        <node concept="2OqwBi" id="hRzaijG" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgm8qR" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Wef" resolve="it" />
                          </node>
                          <node concept="32XrjI" id="hRzaijI" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="hz34DjH" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbJ" id="hz34g6n" role="3cqZAp">
            <node concept="3clFbS" id="hz34g6o" role="3clFbx">
              <node concept="3cpWs6" id="hz34iDB" role="3cqZAp">
                <node concept="3clFbT" id="hz34jhe" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="hz34hBQ" role="3clFbw">
              <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
              <ref role="37wK5l" to="75ov:hz2PbZ5" resolve="isInsideTemplateFragment" />
              <node concept="0GJ7k" id="hz34n4b" role="37wK5m" />
            </node>
          </node>
          <node concept="3cpWs6" id="gITvOZs" role="3cqZAp">
            <node concept="3clFbT" id="hz356i8" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2PzhpH" id="gITvOZw" role="2PL9iG">
        <node concept="3clFbS" id="gITvOZx" role="2VODD2">
          <node concept="3SKdUt" id="6pumIWoCFXv" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnVyf" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnVyg" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyh" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyi" role="1PaTwD">
                <property role="3oM_SC" value="hang" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyj" role="1PaTwD">
                <property role="3oM_SC" value="&lt;TF&gt;" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyk" role="1PaTwD">
                <property role="3oM_SC" value="on" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyl" role="1PaTwD">
                <property role="3oM_SC" value="other" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVym" role="1PaTwD">
                <property role="3oM_SC" value="attributes" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="hz35cnN" role="3cqZAp">
            <node concept="3cpWsn" id="hz35cnO" role="3cpWs9">
              <property role="TrG5h" value="applyToNode" />
              <node concept="3Tqbb2" id="hz35cnP" role="1tU5fm" />
              <node concept="2OqwBi" id="hz35p$6" role="33vP2m">
                <node concept="2OqwBi" id="hz35iTE" role="2Oq$k0">
                  <node concept="2OqwBi" id="hz35fO_" role="2Oq$k0">
                    <node concept="0GJ7k" id="hz35eRL" role="2Oq$k0" />
                    <node concept="z$bX8" id="hz35gYP" role="2OqNvi">
                      <node concept="1xIGOp" id="hz35iw1" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="hRzah9L" role="2OqNvi">
                    <node concept="1bVj0M" id="hRzah9M" role="23t8la">
                      <node concept="gl6BB" id="5W7E4fV0Weh" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wei" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="hRzah9P" role="1bW5cS">
                        <node concept="3clFbF" id="hRzah9Q" role="3cqZAp">
                          <node concept="3fqX7Q" id="hRzah9R" role="3clFbG">
                            <node concept="2OqwBi" id="hRzah9S" role="3fr31v">
                              <node concept="37vLTw" id="2BHiRxgldzK" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Weh" resolve="it" />
                              </node>
                              <node concept="32XrjI" id="hRzah9U" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1uHKPH" id="hz35qea" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hz3q5b6" role="3cqZAp">
            <node concept="2YIFZM" id="hz3q6wl" role="3clFbG">
              <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
              <ref role="37wK5l" to="75ov:hz3pGTK" resolve="createTemplateFragment" />
              <node concept="37vLTw" id="3GM_nagTtac" role="37wK5m">
                <ref role="3cqZAo" node="hz35cnO" resolve="applyToNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="gITvOZ_" role="2QnnpI">
      <property role="2PxWOX" value="add node macro" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="gITvOZA" role="2PyaAO">
        <property role="2PWKIS" value="VK_M" />
        <property role="2PWKIB" value="ctrl+shift" />
      </node>
      <node concept="2PzhpH" id="gITvOZF" role="2PL9iG">
        <node concept="3clFbS" id="gITvOZG" role="2VODD2">
          <node concept="3cpWs8" id="hGCsBnZ" role="3cqZAp">
            <node concept="3cpWsn" id="hGCsBo0" role="3cpWs9">
              <property role="TrG5h" value="nodeMacro" />
              <node concept="3Tqbb2" id="hGCsBo1" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
              </node>
              <node concept="2YIFZM" id="hGCsBo2" role="33vP2m">
                <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
                <ref role="37wK5l" to="75ov:hGCrXFp" resolve="addNodeMacro" />
                <node concept="0GJ7k" id="hGCsBo3" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6pumIWoCFPl" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnVyn" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnVyo" role="1PaTwD">
                <property role="3oM_SC" value="set" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyp" role="1PaTwD">
                <property role="3oM_SC" value="caret" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7of$qLgeukO" role="3cqZAp">
            <node concept="2OqwBi" id="7of$qLgeuuT" role="3clFbG">
              <node concept="37vLTw" id="7of$qLgeukN" role="2Oq$k0">
                <ref role="3cqZAo" node="hGCsBo0" resolve="nodeMacro" />
              </node>
              <node concept="1OKiuA" id="7of$qLgewQp" role="2OqNvi">
                <node concept="1Q80Hx" id="7of$qLgewRn" role="lBI5i" />
                <node concept="2B6iha" id="7of$qLh9vT3" role="lGT1i" />
                <node concept="3cmrfG" id="7of$qLgewSL" role="3dN3m$">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Pz7Y7" id="hz3gB3e" role="2Pzqsi">
        <node concept="3clFbS" id="hz3gB3f" role="2VODD2">
          <node concept="3clFbJ" id="hz3gJfz" role="3cqZAp">
            <node concept="3clFbS" id="hz3gJf$" role="3clFbx">
              <node concept="3cpWs6" id="hz3gJf_" role="3cqZAp">
                <node concept="3clFbT" id="hz3gJfA" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="hz3gJfB" role="3clFbw">
              <node concept="2OqwBi" id="hz3gJfC" role="3uHU7B">
                <node concept="34oBXx" id="hz3gJfD" role="2OqNvi" />
                <node concept="0GJ7U" id="hz3gJfE" role="2Oq$k0" />
              </node>
              <node concept="3cmrfG" id="hz3gJfF" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="hz3gMR7" role="3cqZAp">
            <node concept="2YIFZM" id="hGBYYut" role="3cqZAk">
              <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
              <ref role="37wK5l" to="75ov:hGCoY_U" resolve="isNodeMacroApplicable" />
              <node concept="0GJ7k" id="hGBYZ$M" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="gITvTiZ" role="2QnnpI">
      <property role="2PxWOX" value="add property macro" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="gITvTj0" role="2PyaAO">
        <property role="2PWKIS" value="VK_M" />
        <property role="2PWKIB" value="ctrl+shift" />
      </node>
      <node concept="2Pz7Y7" id="gITvTj1" role="2Pzqsi">
        <node concept="3clFbS" id="gITvTj2" role="2VODD2">
          <node concept="3clFbJ" id="hz3IZg8" role="3cqZAp">
            <node concept="3clFbS" id="hz3IZg9" role="3clFbx">
              <node concept="3cpWs6" id="hz3IZga" role="3cqZAp">
                <node concept="3clFbT" id="hz3IZgb" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="hz3IZgc" role="3clFbw">
              <node concept="2OqwBi" id="hz3IZgd" role="3uHU7B">
                <node concept="34oBXx" id="hz3IZge" role="2OqNvi" />
                <node concept="0GJ7U" id="hz3IZgf" role="2Oq$k0" />
              </node>
              <node concept="3cmrfG" id="hz3IZgg" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="hGCrf6k" role="3cqZAp">
            <node concept="2YIFZM" id="hGCrghz" role="3cqZAk">
              <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
              <ref role="37wK5l" to="75ov:hGCq1pH" resolve="isPropertyMacroApplicable" />
              <node concept="0GJ7k" id="hGCrgh$" role="37wK5m" />
              <node concept="2OqwBi" id="hGCrgh_" role="37wK5m">
                <node concept="1Q80Hx" id="hGCrghA" role="2Oq$k0" />
                <node concept="liA8E" id="hGCrghB" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2PzhpH" id="gITvTjj" role="2PL9iG">
        <node concept="3clFbS" id="gITvTjk" role="2VODD2">
          <node concept="3cpWs8" id="hGCtbIr" role="3cqZAp">
            <node concept="3cpWsn" id="hGCtbIs" role="3cpWs9">
              <property role="TrG5h" value="propertyMacro" />
              <node concept="3Tqbb2" id="hGCtbIt" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:fP7UvrK" resolve="PropertyMacro" />
              </node>
              <node concept="2YIFZM" id="hGCtbIu" role="33vP2m">
                <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
                <ref role="37wK5l" to="75ov:hGCsH4O" resolve="addPropertyMacro" />
                <node concept="0GJ7k" id="hGCtbIv" role="37wK5m" />
                <node concept="2OqwBi" id="hGCtbIw" role="37wK5m">
                  <node concept="1Q80Hx" id="hGCtbIx" role="2Oq$k0" />
                  <node concept="liA8E" id="hGCtbIy" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6pumIWoCFS7" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnVyq" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnVyr" role="1PaTwD">
                <property role="3oM_SC" value="set" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVys" role="1PaTwD">
                <property role="3oM_SC" value="caret" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7of$qLgipp6" role="3cqZAp">
            <node concept="2OqwBi" id="7of$qLgipBw" role="3clFbG">
              <node concept="37vLTw" id="7of$qLgipp5" role="2Oq$k0">
                <ref role="3cqZAo" node="hGCtbIs" resolve="propertyMacro" />
              </node>
              <node concept="1OKiuA" id="7of$qLgisqW" role="2OqNvi">
                <node concept="1Q80Hx" id="7of$qLgissr" role="lBI5i" />
                <node concept="2B6iha" id="7of$qLh9qZ5" role="lGT1i" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7vB9MbAfVLc" role="3cqZAp">
            <node concept="3cpWsn" id="7vB9MbAfVLd" role="3cpWs9">
              <property role="TrG5h" value="inspector" />
              <node concept="3uibUv" id="7vB9MbAfVLe" role="1tU5fm">
                <ref role="3uigEE" to="cj4x:~EditorInspector" resolve="EditorInspector" />
              </node>
              <node concept="2OqwBi" id="7vB9MbAfVLf" role="33vP2m">
                <node concept="1Q80Hx" id="7vB9MbAfVLg" role="2Oq$k0" />
                <node concept="liA8E" id="7vB9MbAfVLh" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getInspector()" resolve="getInspector" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="hRS2GtP" role="3cqZAp">
            <node concept="3y3z36" id="hRS2HCA" role="1gVkn0">
              <node concept="10Nm6u" id="hRS2HTf" role="3uHU7w" />
              <node concept="37vLTw" id="3GM_nagTvHW" role="3uHU7B">
                <ref role="3cqZAo" node="7vB9MbAfVLd" resolve="inspector" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7vB9MbAfVK$" role="3cqZAp">
            <node concept="2OqwBi" id="7vB9MbAfVKC" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagT_p2" role="2Oq$k0">
                <ref role="3cqZAo" node="7vB9MbAfVLd" resolve="inspector" />
              </node>
              <node concept="liA8E" id="7vB9MbAfVKH" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorInspector.activate()" resolve="activate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="gITw3oT" role="2QnnpI">
      <property role="2PxWOX" value="add reference macro" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="gITw3oU" role="2PyaAO">
        <property role="2PWKIS" value="VK_M" />
        <property role="2PWKIB" value="ctrl+shift" />
      </node>
      <node concept="2Pz7Y7" id="gITw3oV" role="2Pzqsi">
        <node concept="3clFbS" id="gITw3oW" role="2VODD2">
          <node concept="3clFbJ" id="hz3YawJ" role="3cqZAp">
            <node concept="3clFbS" id="hz3YawK" role="3clFbx">
              <node concept="3cpWs6" id="hz3YawL" role="3cqZAp">
                <node concept="3clFbT" id="hz3YawM" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="hz3YawN" role="3clFbw">
              <node concept="2OqwBi" id="hz3YawO" role="3uHU7B">
                <node concept="34oBXx" id="hz3YawP" role="2OqNvi" />
                <node concept="0GJ7U" id="hz3YawQ" role="2Oq$k0" />
              </node>
              <node concept="3cmrfG" id="hz3YawR" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="hGCrIcA" role="3cqZAp">
            <node concept="2YIFZM" id="hGCrL9E" role="3cqZAk">
              <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
              <ref role="37wK5l" to="75ov:hGCrraT" resolve="isReferenceMacroApplicable" />
              <node concept="0GJ7k" id="hGCrLQB" role="37wK5m" />
              <node concept="2OqwBi" id="hGCrNlF" role="37wK5m">
                <node concept="1Q80Hx" id="hGCrN0q" role="2Oq$k0" />
                <node concept="liA8E" id="hGCrNUn" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2PzhpH" id="gITw3pd" role="2PL9iG">
        <node concept="3clFbS" id="gITw3pe" role="2VODD2">
          <node concept="3cpWs8" id="hGCtJr3" role="3cqZAp">
            <node concept="3cpWsn" id="hGCtJr4" role="3cpWs9">
              <property role="TrG5h" value="referenceMacro" />
              <node concept="3Tqbb2" id="hGCtJr5" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
              </node>
              <node concept="2YIFZM" id="hGCtJr6" role="33vP2m">
                <ref role="1Pybhc" to="75ov:hz2ORac" resolve="EditingUtil" />
                <ref role="37wK5l" to="75ov:hGCtfr8" resolve="addReferenceMacro" />
                <node concept="0GJ7k" id="hGCtJr7" role="37wK5m" />
                <node concept="2OqwBi" id="hGCtJr8" role="37wK5m">
                  <node concept="1Q80Hx" id="hGCtJr9" role="2Oq$k0" />
                  <node concept="liA8E" id="hGCtJra" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6pumIWoCFTV" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnVyt" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnVyu" role="1PaTwD">
                <property role="3oM_SC" value="set" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyv" role="1PaTwD">
                <property role="3oM_SC" value="caret" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7of$qLgEv1D" role="3cqZAp">
            <node concept="2OqwBi" id="7of$qLgEvb1" role="3clFbG">
              <node concept="37vLTw" id="7of$qLgEv1C" role="2Oq$k0">
                <ref role="3cqZAo" node="hGCtJr4" resolve="referenceMacro" />
              </node>
              <node concept="1OKiuA" id="7of$qLgExWf" role="2OqNvi">
                <node concept="1Q80Hx" id="7of$qLgExWl" role="lBI5i" />
                <node concept="2B6iha" id="7of$qLh9uDf" role="lGT1i" />
                <node concept="3cmrfG" id="7of$qLgEy2c" role="3dN3m$">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7vB9MbAfVKW" role="3cqZAp">
            <node concept="3cpWsn" id="7vB9MbAfVKX" role="3cpWs9">
              <property role="TrG5h" value="inspector" />
              <node concept="3uibUv" id="7vB9MbAfVKY" role="1tU5fm">
                <ref role="3uigEE" to="cj4x:~EditorInspector" resolve="EditorInspector" />
              </node>
              <node concept="2OqwBi" id="7vB9MbAfVL3" role="33vP2m">
                <node concept="1Q80Hx" id="7vB9MbAfVL0" role="2Oq$k0" />
                <node concept="liA8E" id="7vB9MbAfVL9" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getInspector()" resolve="getInspector" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="hRS31NW" role="3cqZAp">
            <node concept="3y3z36" id="hRS31NX" role="1gVkn0">
              <node concept="10Nm6u" id="hRS31NY" role="3uHU7w" />
              <node concept="37vLTw" id="3GM_nagTzXk" role="3uHU7B">
                <ref role="3cqZAo" node="7vB9MbAfVKX" resolve="inspector" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7vB9MbAfVKJ" role="3cqZAp">
            <node concept="2OqwBi" id="7vB9MbAfVKN" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagT_VU" role="2Oq$k0">
                <ref role="3cqZAo" node="7vB9MbAfVKX" resolve="inspector" />
              </node>
              <node concept="liA8E" id="7vB9MbAfVKS" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorInspector.activate()" resolve="activate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="gYVRqBE">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:gYVPola" resolve="CreateRootRule" />
    <node concept="3EZMnI" id="gYVRr4c" role="2wV5jI">
      <node concept="3F0ifn" id="gYVRr4d" role="3EZMnx">
        <property role="3F0ifm" value="condition" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
        <node concept="VPM3Z" id="hEU$PVy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="gYVRwC2" role="3EZMnx">
        <property role="1$x2rV" value="&lt;always&gt;" />
        <ref role="1NtTu8" to="tpf8:gYVPolc" resolve="conditionFunction" />
      </node>
      <node concept="3F0ifn" id="gYVRr4f" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <node concept="VPM3Z" id="hEU$PU3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="husBRNd" role="3EZMnx">
        <node concept="1iCGBv" id="husBRNe" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:husBCMG" resolve="label" />
          <node concept="1sVBvm" id="hJARkSt" role="1sWHZn">
            <node concept="3F0A7n" id="hJARm9y" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
            </node>
          </node>
          <node concept="pkWqt" id="husBRNh" role="pqm2j">
            <node concept="3clFbS" id="husBRNi" role="2VODD2">
              <node concept="3clFbF" id="husBRNj" role="3cqZAp">
                <node concept="3y3z36" id="husBRNk" role="3clFbG">
                  <node concept="2OqwBi" id="hxx$VRz" role="3uHU7B">
                    <node concept="pncrf" id="husBRNm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="husBUBA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:husBCMG" resolve="label" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="husBRNo" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="husBSmk" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="VPM3Z" id="hEU$PHi" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXU2" role="2iSdaV" />
      </node>
      <node concept="1iCGBv" id="gYVRr4i" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no template&gt;" />
        <ref role="1NtTu8" to="tpf8:gYVPold" resolve="templateNode" />
        <node concept="1sVBvm" id="gYVRr4j" role="1sWHZn">
          <node concept="3SHvHV" id="5pxHGHAFF$7" role="2wV5jI">
            <node concept="2SqB2G" id="1GoWtC0zoa6" role="2SqHTX">
              <property role="TrG5h" value="templateName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="i0NmnXJ" role="3EZMnx">
        <node concept="pVoyu" id="i0Nmopm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0NlDhh" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gZlykx3" role="6VMZX">
      <node concept="3F0ifn" id="gZlykx4" role="3EZMnx">
        <property role="3F0ifm" value="conditional root rule" />
        <node concept="VPM3Z" id="hEU$PAd" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8_8" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJSQ" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZlykx5" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PaS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="husBJWY" role="3EZMnx">
        <node concept="3F0ifn" id="husBJWZ" role="3EZMnx">
          <property role="3F0ifm" value="mapping label" />
          <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
        </node>
        <node concept="3F0ifn" id="husBJX0" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$Pmo" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="hJARVBe" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no label&gt;" />
          <ref role="1NtTu8" to="tpf8:husBCMG" resolve="label" />
          <node concept="1sVBvm" id="hJARVBf" role="1sWHZn">
            <node concept="3F0A7n" id="hJARVBg" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$OZe" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXVn" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Puw" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXVl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gZ0QqxD">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:gZ0QclN" resolve="Weaving_MappingRule" />
    <node concept="3EZMnI" id="h1grrrs" role="2wV5jI">
      <node concept="3EZMnI" id="h1grrru" role="3EZMnx">
        <node concept="PMmxH" id="h1grrrv" role="3EZMnx">
          <ref role="PMmxG" node="gZabeD4" resolve="BaseMappingRule_premise" />
        </node>
        <node concept="VPM3Z" id="hEU$Peg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXWg" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h1grrrx" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <node concept="VPM3Z" id="hEU$Po0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hushqKd" role="3EZMnx">
        <node concept="1iCGBv" id="hushqKe" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:husgKN8" resolve="labelDeclaration" />
          <node concept="1sVBvm" id="hushqKf" role="1sWHZn">
            <node concept="3F0A7n" id="hushqKg" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="husiaPU" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="pkWqt" id="hushqKh" role="pqm2j">
          <node concept="3clFbS" id="hushqKi" role="2VODD2">
            <node concept="3clFbF" id="hushqKj" role="3cqZAp">
              <node concept="3y3z36" id="hushqKk" role="3clFbG">
                <node concept="10Nm6u" id="hushqKl" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$JWS" role="3uHU7B">
                  <node concept="pncrf" id="hushqKo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hushqKn" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:husgKN8" resolve="labelDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Ppf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXWQ" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h1grrrH" role="3EZMnx">
        <node concept="3F1sOY" id="h1grrrV" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:h1fOSCs" resolve="ruleConsequence" />
        </node>
        <node concept="3EZMnI" id="hfgCWMH" role="3EZMnx">
          <node concept="3F0ifn" id="hfgCWMI" role="3EZMnx">
            <property role="3F0ifm" value="context" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="3F0ifn" id="hpaE4CN" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PjX" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2UZ17K" id="hEV2aHD" role="3F10Kt">
              <property role="2UZ17L" value="g$1Qtxb/punctuation" />
            </node>
          </node>
          <node concept="3F1sOY" id="hfgCWMK" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no context node&gt;" />
            <ref role="1NtTu8" to="tpf8:hfgCiZ5" resolve="contextNodeQuery" />
          </node>
          <node concept="VPM3Z" id="hEU$PRU" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXTo" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$OYO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="hEUG$03" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="hEVH_8s" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
        <node concept="2EHx9g" id="i2IBXWx" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h1gruW9" role="3EZMnx">
        <node concept="VPxyj" id="hEZKQ$a" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="i0NirVf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0Nihj2" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gZlv$wf" role="6VMZX">
      <node concept="3F0ifn" id="gZlv$wg" role="3EZMnx">
        <property role="3F0ifm" value="weaving rule" />
        <node concept="VPM3Z" id="hEU$PeR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8vA" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJT7" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZlv$wh" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PZE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="PMmxH" id="6QrrVJV9biW" role="3EZMnx">
        <ref role="PMmxG" node="6QrrVJV4Wh7" resolve="MappingRuleCommonFields" />
      </node>
      <node concept="3F0ifn" id="SFyHGUKSp6" role="3EZMnx" />
      <node concept="3EZMnI" id="SFyHGUKSph" role="3EZMnx">
        <node concept="VPM3Z" id="SFyHGUKSpj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="SFyHGUKSpl" role="3EZMnx" />
        <node concept="3EZMnI" id="SFyHGUKSq2" role="3EZMnx">
          <node concept="3F0ifn" id="SFyHGUKSqo" role="3EZMnx">
            <property role="3F0ifm" value="anchor" />
          </node>
          <node concept="2iRkQZ" id="SFyHGUKSq5" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="SFyHGUKSqc" role="3EZMnx">
          <node concept="3F1sOY" id="SFyHGUKSrm" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:SFyHGUIP7S" resolve="anchorQuery" />
          </node>
          <node concept="2iRkQZ" id="SFyHGUKSqf" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="SFyHGUKSpm" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PFB" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXV_" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="gZabeD4">
    <property role="TrG5h" value="BaseMappingRule_premise" />
    <ref role="1XX52x" to="tpf8:gZ0H$p7" resolve="BaseMappingRule" />
    <node concept="3EZMnI" id="gZab_4x" role="2wV5jI">
      <node concept="3EZMnI" id="h1blag_" role="3EZMnx">
        <node concept="3F0ifn" id="h1blagA" role="3EZMnx">
          <property role="3F0ifm" value="concept" />
          <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          <node concept="VPM3Z" id="hEU$PQv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="h1blagB" role="3EZMnx">
          <property role="1cu_pB" value="gtguBGO/2" />
          <property role="1$x2rV" value="&lt;choose applicable concept&gt;" />
          <ref role="1NtTu8" to="tpf8:gZ0HIsK" resolve="applicableConcept" />
          <node concept="1sVBvm" id="h1blagC" role="1sWHZn">
            <node concept="3F0A7n" id="h1blagD" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8z2" role="3F10Kt">
                <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PHG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXWv" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h1blagE" role="3EZMnx">
        <node concept="3F0ifn" id="h1blagF" role="3EZMnx">
          <property role="3F0ifm" value="inheritors" />
          <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          <node concept="VPM3Z" id="hEU$PjS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="h1blagG" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:gZ6QfpO" resolve="applyToConceptInheritors" />
        </node>
        <node concept="VPM3Z" id="hEU$P4j" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXVx" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h1blagQ" role="3EZMnx">
        <node concept="3F0ifn" id="h1blagR" role="3EZMnx">
          <property role="3F0ifm" value="condition" />
          <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          <node concept="VPM3Z" id="hEU$Phm" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="h1blagS" role="3EZMnx">
          <property role="1$x2rV" value="&lt;always&gt;" />
          <ref role="1NtTu8" to="tpf8:gZ0HLAX" resolve="conditionFunction" />
        </node>
        <node concept="VPM3Z" id="hEU$PGT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXVP" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Pix" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3vyZuw" id="hEUG$05" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="hEVH_8p" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
      <node concept="2EHx9g" id="i2IBXSP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gZabTgE">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:gZaamkM" resolve="Reduction_MappingRule" />
    <node concept="3EZMnI" id="h1lWcEj" role="2wV5jI">
      <node concept="3EZMnI" id="h1lWcEl" role="3EZMnx">
        <node concept="PMmxH" id="h1lWcEm" role="3EZMnx">
          <ref role="PMmxG" node="gZabeD4" resolve="BaseMappingRule_premise" />
        </node>
        <node concept="VPM3Z" id="hEU$Pgu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBXVR" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h1lWcEo" role="3EZMnx">
        <node concept="3F0ifn" id="h1lWcEp" role="3EZMnx">
          <property role="3F0ifm" value="--&gt;" />
          <node concept="VPM3Z" id="hEU$PvL" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="husgZMZ" role="3EZMnx">
          <node concept="1iCGBv" id="hush2bn" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:husgKN8" resolve="labelDeclaration" />
            <node concept="1sVBvm" id="hush2bo" role="1sWHZn">
              <node concept="3F0A7n" id="hush2bp" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="husi8aZ" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="pkWqt" id="hush81q" role="pqm2j">
            <node concept="3clFbS" id="hush81r" role="2VODD2">
              <node concept="3clFbF" id="hush963" role="3cqZAp">
                <node concept="3y3z36" id="hush9OL" role="3clFbG">
                  <node concept="10Nm6u" id="hushatm" role="3uHU7w" />
                  <node concept="2OqwBi" id="hxx$X6r" role="3uHU7B">
                    <node concept="pncrf" id="hush964" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hush9CM" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:husgKN8" resolve="labelDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PKp" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXSU" role="2iSdaV" />
        </node>
        <node concept="3F1sOY" id="h1lWcEN" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:h1lVwvH" resolve="ruleConsequence" />
        </node>
        <node concept="VPM3Z" id="hEU$Q06" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXXk" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h1lWfM$" role="3EZMnx">
        <node concept="VPxyj" id="hEZKQyY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="i0Nk$tj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0NkwIL" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gZlwKll" role="6VMZX">
      <node concept="3F0ifn" id="gZlwKlm" role="3EZMnx">
        <property role="3F0ifm" value="reduction rule" />
        <node concept="VPM3Z" id="hEU$PFN" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8xd" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJRH" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZlwKln" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$P5X" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="PMmxH" id="6QrrVJV4WjR" role="3EZMnx">
        <ref role="PMmxG" node="6QrrVJV4Wh7" resolve="MappingRuleCommonFields" />
      </node>
      <node concept="VPM3Z" id="hEU$Po6" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXUY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gZli9BN">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:gZlhOrr" resolve="Root_MappingRule" />
    <node concept="3EZMnI" id="gZliaey" role="2wV5jI">
      <node concept="3EZMnI" id="h93P2$$" role="3EZMnx">
        <node concept="3EZMnI" id="h93P2$_" role="3EZMnx">
          <node concept="3F0ifn" id="h93P2$A" role="3EZMnx">
            <property role="3F0ifm" value="concept" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="hEU$PwI" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="1iCGBv" id="h93P2$B" role="3EZMnx">
            <property role="1cu_pB" value="gtguBGO/2" />
            <property role="1$x2rV" value="&lt;choose applicable concept&gt;" />
            <ref role="1NtTu8" to="tpf8:gZ0HIsK" resolve="applicableConcept" />
            <node concept="1sVBvm" id="h93P2$C" role="1sWHZn">
              <node concept="3F0A7n" id="h93P2$D" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VechU" id="hEZR8rT" role="3F10Kt">
                  <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Pa0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXSL" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h93P2$E" role="3EZMnx">
          <node concept="3F0ifn" id="h93P2$F" role="3EZMnx">
            <property role="3F0ifm" value="inheritors" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="hEU$Pom" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="h93P2$G" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:gZ6QfpO" resolve="applyToConceptInheritors" />
          </node>
          <node concept="VPM3Z" id="hEU$PCu" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWO" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h93P2$H" role="3EZMnx">
          <node concept="3F0ifn" id="h93P2$I" role="3EZMnx">
            <property role="3F0ifm" value="condition" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="hHP09Ut" role="3F10Kt" />
          </node>
          <node concept="3F1sOY" id="h93P2$J" role="3EZMnx">
            <property role="1$x2rV" value="&lt;always&gt;" />
            <ref role="1NtTu8" to="tpf8:gZ0HLAX" resolve="conditionFunction" />
          </node>
          <node concept="VPM3Z" id="hEU$PCr" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXV9" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h93PaRn" role="3EZMnx">
          <node concept="3F0ifn" id="h93PaRo" role="3EZMnx">
            <property role="3F0ifm" value="keep input root" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="hHP0cbg" role="3F10Kt" />
          </node>
          <node concept="3F0A7n" id="h93PcS5" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:3Ftr4R6BH5V" resolve="keepSourceRoot" />
          </node>
          <node concept="VPM3Z" id="hEU$P48" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXUy" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Q2g" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="hEUG$0e" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="hEVH_81" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
        <node concept="2EHx9g" id="i2IBXSt" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gZliaeA" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <node concept="VPM3Z" id="hEU$PtY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hushnA6" role="3EZMnx">
        <node concept="1iCGBv" id="hushnA7" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:husgKN8" resolve="labelDeclaration" />
          <node concept="1sVBvm" id="hushnA8" role="1sWHZn">
            <node concept="3F0A7n" id="hushnA9" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="husi55V" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="pkWqt" id="hushnAa" role="pqm2j">
          <node concept="3clFbS" id="hushnAb" role="2VODD2">
            <node concept="3clFbF" id="hushnAc" role="3cqZAp">
              <node concept="3y3z36" id="hushnAd" role="3clFbG">
                <node concept="10Nm6u" id="hushnAe" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$Xmj" role="3uHU7B">
                  <node concept="pncrf" id="hushnAh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hushnAg" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:husgKN8" resolve="labelDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$OYb" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXVY" role="2iSdaV" />
      </node>
      <node concept="1iCGBv" id="gZliaeB" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no template&gt;" />
        <ref role="1NtTu8" to="tpf8:gZlhOrt" resolve="template" />
        <node concept="1sVBvm" id="gZliaeC" role="1sWHZn">
          <node concept="3SHvHV" id="2fA4VmRaTU7" role="2wV5jI">
            <node concept="2SqB2G" id="3ciHSU5wk2n" role="2SqHTX">
              <property role="TrG5h" value="templateName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="i0NjrgX" role="2iSdaV" />
      <node concept="3F0ifn" id="gZliae_" role="3EZMnx">
        <node concept="VPxyj" id="hEZKQwQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="i0Nj$3p" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="gZlriWf" role="6VMZX">
      <node concept="3F0ifn" id="gZlrkoz" role="3EZMnx">
        <property role="3F0ifm" value="root mapping rule" />
        <node concept="VPM3Z" id="hEU$P4x" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="hEZR8xU" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="hF0kJTe" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="gZlrnUD" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Piv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="PMmxH" id="6QrrVJV9b3A" role="3EZMnx">
        <ref role="PMmxG" node="6QrrVJV4Wh7" resolve="MappingRuleCommonFields" />
      </node>
      <node concept="VPM3Z" id="hEU$P7l" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXTy" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="gZDQqLq">
    <property role="TrG5h" value="MacroSymbol_Actions" />
    <node concept="1hA7zw" id="gZDTq$k" role="1h_SK8">
      <property role="1hHO97" value="delete macro node" />
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="gZDTq$l" role="1hA7z_">
        <node concept="3clFbS" id="gZDTq$m" role="2VODD2">
          <node concept="3clFbF" id="gZDTDbz" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$OiE" role="3clFbG">
              <node concept="0IXxy" id="gZDTDb$" role="2Oq$k0" />
              <node concept="3YRAZt" id="gZDTEfu" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="h0jzUB$">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:h0jzcLb" resolve="RuleConsequence" />
    <node concept="1xolST" id="h0jzVgB" role="2wV5jI">
      <property role="1xolSY" value="choose consequence" />
    </node>
  </node>
  <node concept="24kQdi" id="h0j$q8w">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
    <node concept="3EZMnI" id="6x7hK5AsF$_" role="2wV5jI">
      <node concept="l2Vlx" id="6x7hK5AsF$B" role="2iSdaV" />
      <node concept="1iCGBv" id="h0j$rdS" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose template&gt;" />
        <ref role="1NtTu8" to="tpf8:1vDgt48Nz5N" resolve="template" />
        <node concept="1sVBvm" id="h0j$rdT" role="1sWHZn">
          <node concept="3F0A7n" id="h0j$suf" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="1vDgt48N_Cy" role="3EZMnx">
        <ref role="PMmxG" node="1vDgt48Nz52" resolve="ITemplateCall_actualArguments" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="h0j_CdH">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:h0j$LEX" resolve="DismissTopMappingRule" />
    <node concept="3EZMnI" id="h1lMDWj" role="2wV5jI">
      <node concept="3F0ifn" id="h1lMJgU" role="3EZMnx">
        <property role="3F0ifm" value="DISMISS TOP RULE" />
        <node concept="VechU" id="hEZR8vv" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
      </node>
      <node concept="3F1sOY" id="h1lMRnZ" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no message&gt;" />
        <ref role="1NtTu8" to="tpf8:h1lHHPV" resolve="generatorMessage" />
      </node>
      <node concept="2iRfu4" id="i2IBXUN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h0n9KKn">
    <property role="3GE5qa" value="annotation" />
    <ref role="1XX52x" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
    <node concept="3EZMnI" id="h0nafQL" role="2wV5jI">
      <node concept="3EZMnI" id="h0nx3fu" role="3EZMnx">
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <node concept="3F0ifn" id="h0nx4Uy" role="3EZMnx">
          <property role="3F0ifm" value="root template" />
          <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          <node concept="VPM3Z" id="hEU$P8H" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="h0nx3fv" role="3EZMnx">
          <node concept="3F0ifn" id="h0nx3fw" role="3EZMnx">
            <property role="3F0ifm" value="input" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="hEU$PHa" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="1iCGBv" id="h0nx3fx" role="3EZMnx">
            <property role="1$x2rV" value="&lt;unspecified&gt;" />
            <ref role="1NtTu8" to="tpf8:h0n9lNf" resolve="applicableConcept" />
            <node concept="1sVBvm" id="h0nx3fy" role="1sWHZn">
              <node concept="3F0A7n" id="h0nx3fz" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VechU" id="hEZR8pa" role="3F10Kt">
                  <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PT8" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXX3" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="h0nx6M7" role="3EZMnx">
          <node concept="VPM3Z" id="hEU$PYF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$POh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3vyZuw" id="hEUG$06" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="hEVH_85" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="2iRkQZ" id="i2IBXWa" role="2iSdaV" />
      </node>
      <node concept="2SsqMj" id="h0naTpc" role="3EZMnx" />
      <node concept="VPM3Z" id="hEU$PtZ" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IBXV4" role="2iSdaV" />
    </node>
  </node>
  <node concept="325Ffw" id="h0ncWpr">
    <property role="TrG5h" value="RootTemplateAnnotation_KeyMap" />
    <property role="2XBEHb" value="true" />
    <node concept="2PxR9H" id="h0ndCJz" role="2QnnpI">
      <property role="2PxWOX" value="add root template annotation" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="h0ndCJ$" role="2PyaAO">
        <property role="2PWKIS" value="VK_H" />
        <property role="2PWKIB" value="ctrl+shift" />
      </node>
      <node concept="2PzhpH" id="h0ndCJ_" role="2PL9iG">
        <node concept="3clFbS" id="h0ndCJA" role="2VODD2">
          <node concept="3clFbF" id="h0nlngP" role="3cqZAp">
            <node concept="2OqwBi" id="hz4fgBd" role="3clFbG">
              <node concept="2OqwBi" id="hz4feTi" role="2Oq$k0">
                <node concept="2OqwBi" id="hz4gC7b" role="2Oq$k0">
                  <node concept="0GJ7k" id="hz4feAH" role="2Oq$k0" />
                  <node concept="2Rxl7S" id="hz4gD22" role="2OqNvi" />
                </node>
                <node concept="3CFZ6_" id="2EuZkDRzIkB" role="2OqNvi">
                  <node concept="3CFYIy" id="2EuZkDRzIkC" role="3CFYIz">
                    <ref role="3CFYIx" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="2DeJnY" id="5wUAOoBBfq8" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2Pz7Y7" id="h0njuhy" role="2Pzqsi">
        <node concept="3clFbS" id="h0njuhz" role="2VODD2">
          <node concept="3clFbJ" id="hz4e66d" role="3cqZAp">
            <node concept="3clFbS" id="hz4e66e" role="3clFbx">
              <node concept="3cpWs6" id="hz4ec3M" role="3cqZAp">
                <node concept="3clFbT" id="hz4edRy" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="hz4eb96" role="3clFbw">
              <node concept="3cmrfG" id="hz4ebAt" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="hz4e9ze" role="3uHU7B">
                <node concept="0GJ7U" id="hz4e8Vb" role="2Oq$k0" />
                <node concept="34oBXx" id="hz4e9XR" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="yScPW6yDaG" role="3cqZAp">
            <node concept="3clFbS" id="yScPW6yDaI" role="3clFbx">
              <node concept="3cpWs6" id="yScPW6yHb6" role="3cqZAp">
                <node concept="3clFbT" id="yScPW6yHlT" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="yScPW6yH0k" role="3clFbw">
              <node concept="2YIFZM" id="yScPW6yH0m" role="3fr31v">
                <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
                <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                <node concept="2OqwBi" id="yScPW6yH0n" role="37wK5m">
                  <node concept="0GJ7k" id="yScPW6yH0o" role="2Oq$k0" />
                  <node concept="I4A8Y" id="yScPW6yH0p" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="hz4gwYK" role="3cqZAp">
            <node concept="3cpWsn" id="hz4gwYL" role="3cpWs9">
              <property role="TrG5h" value="applyToNode" />
              <node concept="3Tqbb2" id="hz4gwYM" role="1tU5fm" />
              <node concept="2OqwBi" id="hz4gwYN" role="33vP2m">
                <node concept="2Rxl7S" id="hz4gwYO" role="2OqNvi" />
                <node concept="0GJ7k" id="hz4gwYP" role="2Oq$k0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="h0njGkF" role="3cqZAp">
            <node concept="3clFbC" id="hz4f5xm" role="3cqZAk">
              <node concept="10Nm6u" id="hz4f6h0" role="3uHU7w" />
              <node concept="2OqwBi" id="hz4eYpf" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTwYd" role="2Oq$k0">
                  <ref role="3cqZAo" node="hz4gwYL" resolve="applyToNode" />
                </node>
                <node concept="3CFZ6_" id="2EuZkDRzIlZ" role="2OqNvi">
                  <node concept="3CFYIy" id="2EuZkDRzIm0" role="3CFYIz">
                    <ref role="3CFYIx" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="h1fNOhl">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:h1fMGeL" resolve="WeaveEach_RuleConsequence" />
    <node concept="3EZMnI" id="h1fNPtM" role="2wV5jI">
      <node concept="3EZMnI" id="hpa_t3n" role="3EZMnx">
        <node concept="3F0ifn" id="hpa_t3o" role="3EZMnx">
          <property role="3F0ifm" value="foreach" />
        </node>
        <node concept="3F0ifn" id="hpa_Mmt" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$PoY" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2UZ17K" id="hEV2aHo" role="3F10Kt">
            <property role="2UZ17L" value="g$1Qtxb/punctuation" />
          </node>
        </node>
        <node concept="3F1sOY" id="hpa_vtt" role="3EZMnx">
          <property role="1$x2rV" value="&lt;none&gt;" />
          <ref role="1NtTu8" to="tpf8:h1fNfX3" resolve="sourceNodesQuery" />
        </node>
        <node concept="VPM3Z" id="hEU$Pkw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXSv" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hpa_$zS" role="3EZMnx">
        <node concept="3F0ifn" id="hpa_$zT" role="3EZMnx">
          <property role="3F0ifm" value="apply" />
          <node concept="VPM3Z" id="hEU$PGk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="hpa_NIQ" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$P4R" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2UZ17K" id="hEV2aHY" role="3F10Kt">
            <property role="2UZ17L" value="g$1Qtxb/punctuation" />
          </node>
        </node>
        <node concept="3F1sOY" id="6JoULz$jqvO" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:6JoULz$jqnz" resolve="templateCall" />
        </node>
        <node concept="VPM3Z" id="hEU$Pgv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXSA" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hpaBrs5" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pi5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2EHx9g" id="i2IBXUK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h1lN7T8">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:h1lLz4x" resolve="GeneratorMessage" />
    <node concept="3EZMnI" id="h1lNaLw" role="2wV5jI">
      <node concept="3F0A7n" id="h1lNcfx" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:3Ftr4R6BH5X" resolve="messageType" />
        <node concept="Vb9p2" id="hEUNR0E" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
        <node concept="VechU" id="hEZR8tV" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
        </node>
      </node>
      <node concept="3F0ifn" id="h1lNfio" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="hEU$PWv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="h1lNh94" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no text&gt;" />
        <ref role="1NtTu8" to="tpf8:h1lLB5n" resolve="messageText" />
        <node concept="VechU" id="hEZR8nb" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBXTR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8gg28B">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:h8gft7C" resolve="InlineTemplate_RuleConsequence" />
    <node concept="3EZMnI" id="h8gg3n0" role="2wV5jI">
      <node concept="3F0ifn" id="h8gg4AC" role="3EZMnx">
        <property role="3F0ifm" value="&lt;T " />
        <node concept="30gYXW" id="hF0kJRq" role="3F10Kt">
          <property role="Vb096" value="fLwANPo/pink" />
        </node>
        <node concept="30h1P$" id="hF0kJUT" role="3F10Kt">
          <property role="Vb096" value="fLwANPs/magenta" />
        </node>
      </node>
      <node concept="3F1sOY" id="2dMY_rc6QLY" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:h8gfFXQ" resolve="templateNode" />
      </node>
      <node concept="3F0ifn" id="h8ggeOY" role="3EZMnx">
        <property role="3F0ifm" value=" T&gt;" />
        <node concept="30gYXW" id="hF0kJUm" role="3F10Kt">
          <property role="Vb096" value="fLwANPo/pink" />
        </node>
        <node concept="30h1P$" id="hF0kJWa" role="3F10Kt">
          <property role="Vb096" value="fLwANPs/magenta" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBXTd" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="hfvraJP">
    <property role="TrG5h" value="NodeMacro_postfix" />
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
    <node concept="3EZMnI" id="hfvurhb" role="2wV5jI">
      <node concept="3EZMnI" id="hfvursU" role="3EZMnx">
        <node concept="3F0ifn" id="hfvursV" role="3EZMnx">
          <property role="3F0ifm" value="bad role:" />
        </node>
        <node concept="1HlG4h" id="hPR1pGv" role="3EZMnx">
          <node concept="1HfYo3" id="hPR1pGw" role="1HlULh">
            <node concept="3TQlhw" id="hPR1pGx" role="1Hhtcw">
              <node concept="3clFbS" id="hPR1pGy" role="2VODD2">
                <node concept="3clFbF" id="hPR1pGz" role="3cqZAp">
                  <node concept="2OqwBi" id="4y5aVLuC37L" role="3clFbG">
                    <node concept="2OqwBi" id="6lZ8OoRvh2_" role="2Oq$k0">
                      <node concept="pncrf" id="6lZ8OoRvh2B" role="2Oq$k0" />
                      <node concept="2NL2c5" id="4y5aVLuC2zc" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="4y5aVLuC3v$" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VechU" id="hQ6rw16" role="3F10Kt">
            <property role="Vb096" value="fLwANPn/red" />
          </node>
        </node>
        <node concept="pkWqt" id="hfvurta" role="pqm2j">
          <node concept="3clFbS" id="hfvurtb" role="2VODD2">
            <node concept="3clFbF" id="1x7fy1yccvV" role="3cqZAp">
              <node concept="17QLQc" id="1x7fy1yceit" role="3clFbG">
                <node concept="2OqwBi" id="1x7fy1ycc_p" role="3uHU7B">
                  <node concept="2JrnkZ" id="5lAt$u$8eXM" role="2Oq$k0">
                    <node concept="pncrf" id="5lAt$u$8f5b" role="2JrQYb" />
                  </node>
                  <node concept="liA8E" id="5lAt$u$8f3p" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                  </node>
                </node>
                <node concept="359W_D" id="1x7fy1yce0f" role="3uHU7w">
                  <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="i2IBXTY" role="2iSdaV" />
      </node>
      <node concept="1iCGBv" id="hurYiq5" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:hurW$JJ" resolve="mappingLabel" />
        <node concept="1sVBvm" id="hurYiq6" role="1sWHZn">
          <node concept="3F0A7n" id="hurYiY1" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="hHcji$G" resolve="mappingLabelReference" />
          </node>
        </node>
        <node concept="pkWqt" id="hurYpCt" role="pqm2j">
          <node concept="3clFbS" id="hurYpCu" role="2VODD2">
            <node concept="3clFbF" id="hurYq0E" role="3cqZAp">
              <node concept="3y3z36" id="hurYqIb" role="3clFbG">
                <node concept="10Nm6u" id="hurYr9$" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$XwQ" role="3uHU7B">
                  <node concept="pncrf" id="hurYq0F" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hurYqA6" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hurW$JJ" resolve="mappingLabel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="hfvuyGn" role="3EZMnx">
        <ref role="1k5W1q" node="hG2jgB4" resolve="nodeUnderMacro" />
      </node>
      <node concept="VPM3Z" id="hEU$OVX" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="15ARfc" id="2Pi793DoIjY" role="3F10Kt">
        <property role="2hoDZC" value="hQhnRQp/PIXELS" />
        <property role="3$6WeP" value="3" />
      </node>
      <node concept="2iRfu4" id="i2IBXWT" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="hoxIl$x">
    <property role="TrG5h" value="Styles" />
    <node concept="14StLt" id="hOEhO6y" role="V601i">
      <property role="TrG5h" value="GeneratorKeyWord" />
      <node concept="VechU" id="hOEhRg7" role="3F10Kt">
        <property role="Vb096" value="fLJRk5B/darkGray" />
      </node>
      <node concept="Vb9p2" id="hOEhVXw" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="hoxIDwG" role="V601i">
      <property role="TrG5h" value="reference" />
      <node concept="3Xmtl4" id="6K5EsFlERWX" role="3F10Kt">
        <node concept="1wgc9g" id="6K5EsFlERWY" role="3XvnJa">
          <ref role="1wgcnl" to="tpch:24YP6ZDyde4" resolve="Keyword" />
        </node>
      </node>
      <node concept="Vb9p2" id="hoxJuDT" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
    </node>
    <node concept="14StLt" id="hpv47V$" role="V601i">
      <property role="TrG5h" value="constant" />
      <node concept="VechU" id="hpv4dx0" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
      </node>
      <node concept="Vb9p2" id="hpv4fV6" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="hrO$H73" role="V601i">
      <property role="TrG5h" value="literal" />
      <node concept="3Xmtl4" id="6K5EsFlERWR" role="3F10Kt">
        <node concept="1wgc9g" id="6K5EsFlERWS" role="3XvnJa">
          <ref role="1wgcnl" to="tpch:24YP6ZDyde4" resolve="Keyword" />
        </node>
      </node>
      <node concept="Vb9p2" id="hrO$J4O" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="hG2hEjs" role="V601i">
      <property role="TrG5h" value="macroStart" />
      <node concept="3Xmtl4" id="6K5EsFlBC0q" role="3F10Kt">
        <node concept="1wgc9g" id="6K5EsFlCOcH" role="3XvnJa">
          <ref role="1wgcnl" to="tpch:24YP6ZDyde4" resolve="Keyword" />
        </node>
      </node>
      <node concept="Vb9p2" id="hG2hHQN" role="3F10Kt">
        <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
      </node>
      <node concept="VPxyj" id="hG2hMLz" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11LMrY" id="18LSMZREuYA" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hG2jgB4" role="V601i">
      <property role="TrG5h" value="nodeUnderMacro" />
      <node concept="3vyZuw" id="hG2jlLA" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="hG2rrSO" role="3F10Kt">
        <property role="Vb096" value="hGRnIZc/LIGHT_BLUE" />
      </node>
    </node>
    <node concept="14StLt" id="hHcji$G" role="V601i">
      <property role="TrG5h" value="mappingLabelReference" />
      <node concept="30gYXW" id="hHcjrZf" role="3F10Kt">
        <property role="Vb096" value="fLwANPp/orange" />
        <node concept="3ZlJ5R" id="6LWztcAB2KC" role="VblUZ">
          <node concept="3clFbS" id="6LWztcAB2KD" role="2VODD2">
            <node concept="3clFbF" id="7WFkLno$Wct" role="3cqZAp">
              <node concept="2OqwBi" id="7WFkLno_1Fy" role="3clFbG">
                <node concept="2OqwBi" id="7WFkLno_047" role="2Oq$k0">
                  <node concept="2OqwBi" id="7WFkLno$Z0q" role="2Oq$k0">
                    <node concept="2OqwBi" id="7WFkLno$Wxp" role="2Oq$k0">
                      <node concept="1Q80Hx" id="7WFkLno$Wcs" role="2Oq$k0" />
                      <node concept="liA8E" id="7WFkLno$YQQ" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7WFkLno$Z_5" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorComponent.getStyleRegistry()" resolve="getStyleRegistry" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7WFkLno_0CF" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~StyleRegistry.getStyle(java.lang.String)" resolve="getStyle" />
                    <node concept="Xl_RD" id="7WFkLno_0R_" role="37wK5m">
                      <property role="Xl_RC" value="HIGHLIGHTED_LABEL_IN_EDITOR" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7WFkLno_25E" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                  <node concept="10M0yZ" id="7WFkLno_3nT" role="37wK5m">
                    <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_BACKGROUND_COLOR" resolve="TEXT_BACKGROUND_COLOR" />
                    <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7yIPXhIhYym" role="V601i">
      <property role="TrG5h" value="macroDescriptionText" />
      <node concept="30gYXW" id="7yIPXhIhYyn" role="3F10Kt">
        <property role="Vb096" value="hGRnIZc/LIGHT_BLUE" />
      </node>
      <node concept="VechU" id="7yIPXhIhYyp" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
      </node>
    </node>
    <node concept="14StLt" id="2uuOxPo1Vs7" role="V601i">
      <property role="TrG5h" value="mappingRuleDeclaration" />
      <node concept="30gYXW" id="1bYsF$HBCUY" role="3F10Kt">
        <property role="Vb096" value="fLJRk5B/darkGray" />
        <node concept="3ZlJ5R" id="1bYsF$HBCV0" role="VblUZ">
          <node concept="3clFbS" id="1bYsF$HBCV1" role="2VODD2">
            <node concept="3clFbF" id="7WFkLno_4A3" role="3cqZAp">
              <node concept="2OqwBi" id="7WFkLno_4A4" role="3clFbG">
                <node concept="2OqwBi" id="7WFkLno_4A5" role="2Oq$k0">
                  <node concept="2OqwBi" id="7WFkLno_4A6" role="2Oq$k0">
                    <node concept="2OqwBi" id="7WFkLno_4A7" role="2Oq$k0">
                      <node concept="1Q80Hx" id="7WFkLno_4A8" role="2Oq$k0" />
                      <node concept="liA8E" id="7WFkLno_4A9" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7WFkLno_4Aa" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorComponent.getStyleRegistry()" resolve="getStyleRegistry" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7WFkLno_4Ab" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~StyleRegistry.getStyle(java.lang.String)" resolve="getStyle" />
                    <node concept="Xl_RD" id="7WFkLno_4Ac" role="37wK5m">
                      <property role="Xl_RC" value="HIGHLIGHTED_LABEL_IN_EDITOR" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7WFkLno_4Ad" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                  <node concept="10M0yZ" id="7WFkLno_4Ae" role="37wK5m">
                    <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_BACKGROUND_COLOR" resolve="TEXT_BACKGROUND_COLOR" />
                    <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="6iCI9jWX5Q2" role="V601i">
      <property role="TrG5h" value="mappingRuleReference" />
      <node concept="3Xmtl4" id="3HPX3xRcOO3" role="3F10Kt">
        <node concept="1wgc9g" id="3HPX3xRcOO4" role="3XvnJa">
          <ref role="1wgcnl" node="2uuOxPo1Vs7" resolve="mappingRuleDeclaration" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="hF$iCJm" role="V601i">
      <property role="TrG5h" value="Parenthesis" />
      <node concept="34QqEe" id="75A9veqzBnl" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="75A9veqzBnn" role="3F10Kt" />
      <node concept="3mYdg7" id="i14cPte" role="3F10Kt">
        <property role="1413C4" value="parenthesis" />
      </node>
    </node>
    <node concept="14StLt" id="hFCSAw$" role="V601i">
      <property role="TrG5h" value="LeftParen" />
      <node concept="3Xmtl4" id="3HPX3xRcOOC" role="3F10Kt">
        <node concept="1wgc9g" id="3HPX3xRcOOD" role="3XvnJa">
          <ref role="1wgcnl" node="hF$iCJm" resolve="Parenthesis" />
        </node>
      </node>
      <node concept="11LMrY" id="i11Rb6B" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11L4FC" id="hY9fOTE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hFCSUmN" role="V601i">
      <property role="TrG5h" value="RightParen" />
      <node concept="3Xmtl4" id="3HPX3xRcONv" role="3F10Kt">
        <node concept="1wgc9g" id="3HPX3xRcONw" role="3XvnJa">
          <ref role="1wgcnl" node="hF$iCJm" resolve="Parenthesis" />
        </node>
      </node>
      <node concept="11L4FC" id="hX1U7Dc" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="5Ex$Jzqi8Mt" role="V601i">
      <property role="TrG5h" value="VariableRef" />
      <node concept="Vb9p2" id="4w6U_Q4Qdkh" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="4w6U_Q4Qdki" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="5Ex$Jzqi6o7" role="V601i">
      <property role="TrG5h" value="TemplateParameterRef" />
      <node concept="Vb9p2" id="5Ex$Jzqi8Pr" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="5Ex$Jzqi8Ps" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="5Ex$Jzqi8J0" role="V601i">
      <property role="TrG5h" value="PatternRef" />
      <node concept="Vb9p2" id="5Ex$Jzqi8Pv" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="5Ex$Jzqi8Pw" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="6t_vhrzKdF" role="V601i">
      <property role="TrG5h" value="Comment" />
      <node concept="VPxyj" id="6t_vhrzKe$" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="VechU" id="6t_vhrzKeD" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hp50PJM">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:hp4ZrX9" resolve="InlineSwitch_Case" />
    <node concept="3EZMnI" id="hp50Y4m" role="2wV5jI">
      <node concept="3EZMnI" id="hp50Y4n" role="3EZMnx">
        <node concept="3F0ifn" id="hpa0hje" role="3EZMnx">
          <property role="3F0ifm" value="case:" />
          <node concept="VPM3Z" id="hEU$Ptt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="hp51e8K" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:hp50hI_" resolve="conditionFunction" />
        </node>
        <node concept="VPM3Z" id="hEU$PSf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXWt" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hpa0bzf" role="3EZMnx">
        <node concept="3F0ifn" id="hpa46iL" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PRc" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hpa0bzi" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:hp50oEW" resolve="caseConsequence" />
        </node>
        <node concept="VPM3Z" id="hEU$Phk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXW_" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hp510qN" role="3EZMnx" />
      <node concept="2iRkQZ" id="i2IBXUS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hp51voO">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:hp4YyVu" resolve="InlineSwitch_RuleConsequence" />
    <node concept="3EZMnI" id="hp51_cF" role="2wV5jI">
      <node concept="3F2HdR" id="hp9YKHH" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:hp4ZwS6" resolve="case" />
        <node concept="2EHx9g" id="i2IBXXx" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="hp9YRsV" role="3EZMnx">
        <property role="3F0ifm" value="default:" />
        <node concept="VPM3Z" id="hEU$PfR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="hp51Ktd" role="3EZMnx">
        <node concept="3F0ifn" id="hp9YYE7" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PbR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hp51OM_" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:hp4YRX$" resolve="defaultConsequence" />
        </node>
        <node concept="VPM3Z" id="hEU$PPn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXWi" role="2iSdaV" />
      </node>
      <node concept="3vyZuw" id="hEUG$0z" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="hEVH_82" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
      <node concept="2iRkQZ" id="i2IBXTK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hppqW8G">
    <property role="3GE5qa" value="script" />
    <ref role="1XX52x" to="tpf8:hppmfNm" resolve="MappingScript" />
    <node concept="3EZMnI" id="hppr2mi" role="2wV5jI">
      <node concept="3EZMnI" id="hppr4eF" role="3EZMnx">
        <node concept="3F0ifn" id="hppr7Vh" role="3EZMnx">
          <property role="3F0ifm" value="mapping script" />
        </node>
        <node concept="3F0A7n" id="hpprczG" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hEU$OWn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBXTG" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hppriEm" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PFA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hpv3DCu" role="3EZMnx">
        <node concept="3EZMnI" id="hpv3GMD" role="3EZMnx">
          <node concept="3F0ifn" id="hpv3KNx" role="3EZMnx">
            <property role="3F0ifm" value="script kind" />
          </node>
          <node concept="3F0ifn" id="hpv3VUf" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PQ2" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="hpv3Z9M" role="3EZMnx">
            <ref role="1k5W1q" node="hpv47V$" resolve="constant" />
            <ref role="1NtTu8" to="tpf8:3Ftr4R6BH5Z" resolve="scriptKind" />
          </node>
          <node concept="VPM3Z" id="hEU$P4A" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXVT" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hpv4pel" role="3EZMnx">
          <node concept="3F0ifn" id="hpv4pem" role="3EZMnx">
            <property role="3F0ifm" value="modifies model" />
          </node>
          <node concept="3F0ifn" id="hpv4pen" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PIj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="hpv4peo" role="3EZMnx">
            <ref role="1k5W1q" node="hpv47V$" resolve="constant" />
            <ref role="1NtTu8" to="tpf8:hpv3jWJ" resolve="modifiesModel" />
          </node>
          <node concept="pkWqt" id="hpv4Kla" role="pqm2j">
            <node concept="3clFbS" id="hpv4Klb" role="2VODD2">
              <node concept="3clFbF" id="hpv4LOD" role="3cqZAp">
                <node concept="2OqwBi" id="hxx$Wd_" role="3clFbG">
                  <node concept="21noJN" id="3Ftr4R8p_Zw" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8p_Zx" role="21noJM">
                      <ref role="21nZrZ" to="tpf8:3Ftr4R6BFlN" resolve="pre_processing" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hxx$S2Z" role="2Oq$k0">
                    <node concept="pncrf" id="hpv4LOE" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hpv4NwS" role="2OqNvi">
                      <ref role="3TsBF5" to="tpf8:3Ftr4R6BH5Z" resolve="scriptKind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Q2$" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBXWp" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PcL" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IBXTM" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hpv79tx" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PIn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="hpprm2W" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:hppqMXK" resolve="codeBlock" />
      </node>
      <node concept="2iRkQZ" id="i2IBXWG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hppuVBD">
    <property role="3GE5qa" value="script" />
    <ref role="1XX52x" to="tpf8:hppuMuE" resolve="MappingScriptReference" />
    <node concept="1iCGBv" id="hppuXF2" role="2wV5jI">
      <property role="1$x2rV" value="choose script" />
      <ref role="1NtTu8" to="tpf8:hppuQoU" resolve="mappingScript" />
      <node concept="1sVBvm" id="hppuXF3" role="1sWHZn">
        <node concept="3F0A7n" id="hppuZQu" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
          <node concept="VPRnO" id="6o2z4lP5BHK" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hurTht_">
    <property role="3GE5qa" value="label" />
    <ref role="1XX52x" to="tpf8:hurT7o6" resolve="MappingLabelDeclaration" />
    <node concept="3EZMnI" id="hurThY5" role="2wV5jI">
      <node concept="3F0ifn" id="hurTiak" role="3EZMnx">
        <property role="3F0ifm" value="label" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
      </node>
      <node concept="3F0A7n" id="hurTiE_" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no name&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="2uuOxPo1Vs7" resolve="mappingRuleDeclaration" />
      </node>
      <node concept="3F0ifn" id="hurZBzc" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3EZMnI" id="34_HLrT_eEg" role="3EZMnx">
        <node concept="2iRfu4" id="34_HLrTArL6" role="2iSdaV" />
        <node concept="1iCGBv" id="hurTnmf" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no input concept&gt;" />
          <ref role="1NtTu8" to="tpf8:hurTdLu" resolve="sourceConcept" />
          <node concept="1sVBvm" id="hurTnmg" role="1sWHZn">
            <node concept="3F0A7n" id="hurTnMA" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8tf" role="3F10Kt">
                <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
              </node>
            </node>
          </node>
          <node concept="A1WHu" id="34_HLrTz6dO" role="3vIgyS">
            <ref role="A1WHt" node="34_HLrTtj04" resolve="SecondInput" />
          </node>
        </node>
        <node concept="3EZMnI" id="34_HLrTthvl" role="3EZMnx">
          <node concept="3F0ifn" id="34_HLrTthu9" role="3EZMnx">
            <property role="3F0ifm" value=", " />
          </node>
          <node concept="2iR$Sn" id="34_HLrTxUcp" role="2iSdaV" />
          <node concept="1iCGBv" id="34_HLrTthtz" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:34_HLrTtgLm" resolve="sourceConcept2" />
            <node concept="1sVBvm" id="34_HLrTtht_" role="1sWHZn">
              <node concept="3F0A7n" id="34_HLrTthuu" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VechU" id="34_HLrTBKBb" role="3F10Kt">
                  <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="34_HLrTthw2" role="pqm2j">
            <node concept="3clFbS" id="34_HLrTthw3" role="2VODD2">
              <node concept="3clFbF" id="34_HLrTthzY" role="3cqZAp">
                <node concept="2OqwBi" id="34_HLrTtij2" role="3clFbG">
                  <node concept="2OqwBi" id="34_HLrTthMW" role="2Oq$k0">
                    <node concept="pncrf" id="34_HLrTthzX" role="2Oq$k0" />
                    <node concept="3TrEf2" id="34_HLrTti17" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:34_HLrTtgLm" resolve="sourceConcept2" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="34_HLrTtiIy" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hurZCg9" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <node concept="A1WHu" id="34_HLrTw4si" role="3vIgyS">
          <ref role="A1WHt" node="34_HLrTtj04" resolve="SecondInput" />
        </node>
      </node>
      <node concept="1iCGBv" id="hurZCTs" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no output concept&gt;" />
        <ref role="1NtTu8" to="tpf8:hurZzxA" resolve="targetConcept" />
        <node concept="1sVBvm" id="hurZCTt" role="1sWHZn">
          <node concept="3F0A7n" id="hurZDDm" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="hEZR8nF" role="3F10Kt">
              <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBXSW" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6zsKAjKx4qd" role="6VMZX">
      <node concept="3EZMnI" id="6zsKAjKx4r3" role="3EZMnx">
        <node concept="2iRfu4" id="6zsKAjKx4r4" role="2iSdaV" />
        <node concept="3F0ifn" id="6zsKAjKx4rp" role="3EZMnx">
          <property role="3F0ifm" value="Limited to this generator" />
        </node>
        <node concept="3F0A7n" id="6zsKAjKx4qX" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:6zsKAjKx4f3" resolve="private" />
        </node>
      </node>
      <node concept="3F0ifn" id="6zsKAjKx4rt" role="3EZMnx">
        <property role="3F0ifm" value="Restrict uses of the label to templates of this generator. Label is not exported into checkpoint model" />
      </node>
      <node concept="2iRkQZ" id="6zsKAjKx4qg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hwbloTw">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:hwb5Tbr" resolve="AbandonInput_RuleConsequence" />
    <node concept="3F0ifn" id="hwblrFK" role="2wV5jI">
      <property role="3F0ifm" value="&lt;abandon input&gt;" />
      <node concept="Vb9p2" id="hEUNR28" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hKaPgjx">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:hKaNPzJ" resolve="DropRootRule" />
    <node concept="3EZMnI" id="hKaPhvu" role="2wV5jI">
      <node concept="1iCGBv" id="hKaPVNj" role="3EZMnx">
        <property role="1cu_pB" value="gtguBGO/2" />
        <property role="1$x2rV" value="&lt;choose concept&gt;" />
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <ref role="1NtTu8" to="tpf8:hKaOQmo" resolve="applicableConcept" />
        <node concept="1sVBvm" id="hKaPVNk" role="1sWHZn">
          <node concept="3F0A7n" id="hKaPVNl" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hKaQMTh" role="3EZMnx">
        <property role="3F0ifm" value="condition" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
      </node>
      <node concept="3F1sOY" id="hKaQQpV" role="3EZMnx">
        <property role="1$x2rV" value="&lt;none&gt;" />
        <ref role="1NtTu8" to="tpf8:hKaOLjn" resolve="conditionFunction" />
      </node>
      <node concept="3F0ifn" id="hKaSSfZ" role="3EZMnx">
        <node concept="pkWqt" id="hKaSUtA" role="pqm2j">
          <node concept="3clFbS" id="hKaSUtB" role="2VODD2">
            <node concept="3clFbF" id="hKaSVlM" role="3cqZAp">
              <node concept="3clFbC" id="hKaSWBr" role="3clFbG">
                <node concept="10Nm6u" id="hKaSWP9" role="3uHU7w" />
                <node concept="2OqwBi" id="hKaSVo1" role="3uHU7B">
                  <node concept="pncrf" id="hKaSVlN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hKaSWjC" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hKaOLjn" resolve="conditionFunction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hKaSZVD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBXVN" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="hV6D08N">
    <property role="TrG5h" value="PropertyMacroActions" />
    <property role="3GE5qa" value="macro" />
    <ref role="1h_SK9" to="tpf8:fP7UvrK" resolve="PropertyMacro" />
    <node concept="1hA7zw" id="hV6D3BY" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="hV6D3BZ" role="1hA7z_">
        <node concept="3clFbS" id="hV6D3C0" role="2VODD2">
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
                <node concept="eON6Q" id="3Un2VKNJJYu" role="lGT1i">
                  <node concept="1PxgMI" id="7R2Gq48BWko" role="ciSds">
                    <property role="1BlNFB" value="true" />
                    <node concept="2OqwBi" id="7R2Gq48BVUE" role="1m5AlR">
                      <node concept="2OqwBi" id="7R2Gq48BUEl" role="2Oq$k0">
                        <node concept="0IXxy" id="7R2Gq48BU$O" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORgSv" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7R2Gq48BWdi" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getDeclarationNode()" resolve="getDeclarationNode" />
                      </node>
                    </node>
                    <node concept="chp4Y" id="714IaVdGYtO" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
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
  <node concept="24kQdi" id="1$dcvTE3x8c">
    <property role="3GE5qa" value="template" />
    <ref role="1XX52x" to="tpf8:1$dcvTE2mbA" resolve="TemplateParameterDeclaration" />
    <node concept="3EZMnI" id="1$dcvTE3x8e" role="2wV5jI">
      <node concept="3F0A7n" id="1$dcvTE3x8f" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="VechU" id="1$dcvTE3x8g" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
        </node>
      </node>
      <node concept="3F0ifn" id="1$dcvTE3x8h" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="1$dcvTE3x8i" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:1$dcvTE2mFf" resolve="type" />
      </node>
      <node concept="2iRfu4" id="1$dcvTE3x8j" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1$dcvTE67kp">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
    <node concept="3EZMnI" id="1$dcvTE67kr" role="6VMZX">
      <node concept="3F0ifn" id="1$dcvTE67ks" role="3EZMnx">
        <property role="3F0ifm" value="pattern reduction rule" />
        <node concept="VPM3Z" id="1$dcvTE67kt" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="1$dcvTE67ku" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="1$dcvTE67kv" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="1$dcvTE67kw" role="3EZMnx">
        <node concept="VPM3Z" id="1$dcvTE67kx" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="1$dcvTE67ky" role="3EZMnx">
        <node concept="3F0ifn" id="1$dcvTE67kz" role="3EZMnx">
          <property role="3F0ifm" value="mapping label" />
        </node>
        <node concept="1iCGBv" id="1$dcvTE67k$" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:1$dcvTE4IIU" resolve="labelDeclaration" />
          <node concept="1sVBvm" id="1$dcvTE67k_" role="1sWHZn">
            <node concept="3F0A7n" id="1$dcvTE67kA" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="1$dcvTE67kC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1$dcvTE67kD" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="1$dcvTE67kE" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="1$dcvTE67kF" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1$dcvTE67kG" role="2wV5jI">
      <node concept="3EZMnI" id="1$dcvTE67kH" role="3EZMnx">
        <node concept="3EZMnI" id="1$dcvTE67lA" role="3EZMnx">
          <node concept="3F0ifn" id="1$dcvTE67lB" role="3EZMnx">
            <property role="3F0ifm" value="pattern" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="1$dcvTE67lC" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="1$dcvTE67lY" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:1$dcvTE4S$q" resolve="pattern" />
          </node>
          <node concept="VPM3Z" id="1$dcvTE67lH" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="1$dcvTE67lI" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1$dcvTE67lP" role="3EZMnx">
          <node concept="3F0ifn" id="1$dcvTE67lQ" role="3EZMnx">
            <property role="3F0ifm" value="condition" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
            <node concept="VPM3Z" id="1$dcvTE67lR" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="1$dcvTE67lS" role="3EZMnx">
            <property role="1$x2rV" value="&lt;always&gt;" />
            <ref role="1NtTu8" to="tpf8:1$dcvTE4IIP" resolve="conditionFunction" />
          </node>
          <node concept="VPM3Z" id="1$dcvTE67lT" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="1$dcvTE67lU" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="1$dcvTE67kJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="7jvQtjcd8Qn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="7jvQtjcdUI6" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
        <node concept="2EHx9g" id="7jvQtjcd8Qo" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1$dcvTE67kL" role="3EZMnx">
        <node concept="3F0ifn" id="1$dcvTE67kM" role="3EZMnx">
          <property role="3F0ifm" value="--&gt;" />
          <node concept="VPM3Z" id="1$dcvTE67kN" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="1$dcvTE67kO" role="3EZMnx">
          <node concept="1iCGBv" id="1$dcvTE67kP" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:1$dcvTE4IIU" resolve="labelDeclaration" />
            <node concept="1sVBvm" id="1$dcvTE67kQ" role="1sWHZn">
              <node concept="3F0A7n" id="1$dcvTE67kR" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <ref role="1k5W1q" node="6iCI9jWX5Q2" resolve="mappingRuleReference" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="1$dcvTE67kT" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="pkWqt" id="1$dcvTE67kU" role="pqm2j">
            <node concept="3clFbS" id="1$dcvTE67kV" role="2VODD2">
              <node concept="3clFbF" id="1$dcvTE67kW" role="3cqZAp">
                <node concept="3y3z36" id="1$dcvTE67kX" role="3clFbG">
                  <node concept="10Nm6u" id="1$dcvTE67kY" role="3uHU7w" />
                  <node concept="2OqwBi" id="1$dcvTE67kZ" role="3uHU7B">
                    <node concept="pncrf" id="1$dcvTE67l0" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1$dcvTE67lb" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:1$dcvTE4IIU" resolve="labelDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="1$dcvTE67l2" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="1$dcvTE67l3" role="2iSdaV" />
        </node>
        <node concept="3F1sOY" id="1$dcvTE67l4" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:1$dcvTE4IIS" resolve="ruleConsequence" />
        </node>
        <node concept="VPM3Z" id="1$dcvTE67l5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1$dcvTE67l6" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="1$dcvTE67l7" role="3EZMnx">
        <node concept="VPxyj" id="1$dcvTE67l8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1$dcvTE67l9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1$dcvTE67la" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="1vDgt48Nz52">
    <property role="TrG5h" value="ITemplateCall_actualArguments" />
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
    <node concept="3EZMnI" id="1vDgt48Nz54" role="2wV5jI">
      <node concept="3F0ifn" id="1vDgt48Nz55" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="1vDgt48Nz57" role="3EZMnx">
        <property role="1cu_pB" value="gtguBGO/2" />
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpf8:1vDgt48Nz4_" resolve="actualArgument" />
        <node concept="3F0ifn" id="1vDgt48Nz58" role="2czzBI">
          <node concept="VPM3Z" id="1vDgt48Nz59" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="1vDgt48Nz5a" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="34QqEe" id="1vDgt48Nz5b" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="1vDgt48Nz5c" role="2czzBx" />
        <node concept="2$oqgb" id="6q2TEcjuCQR" role="3F10Kt">
          <ref role="Bvoe9" node="6q2TEcjuDqI" resolve="TemplateDeclarationParameterInformationQuery" />
        </node>
      </node>
      <node concept="3F0ifn" id="1vDgt48Nz5h" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1k5W1q" node="hFCSUmN" resolve="RightParen" />
        <node concept="VPM3Z" id="1vDgt48Nz5i" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="1vDgt48Nz5k" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="VPM3Z" id="1vDgt48Nz5p" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="l2Vlx" id="1vDgt48Nz5q" role="2iSdaV" />
      <node concept="pkWqt" id="1vDgt48Nz5r" role="pqm2j">
        <node concept="3clFbS" id="1vDgt48Nz5s" role="2VODD2">
          <node concept="3clFbF" id="1vDgt48Nz5t" role="3cqZAp">
            <node concept="22lmx$" id="1vDgt48RfpD" role="3clFbG">
              <node concept="2OqwBi" id="2_1mL0eofUR" role="3uHU7B">
                <node concept="2OqwBi" id="1vDgt48RfpH" role="2Oq$k0">
                  <node concept="pncrf" id="1vDgt48RfpG" role="2Oq$k0" />
                  <node concept="Bykcj" id="2_1mL0eofUO" role="2OqNvi">
                    <node concept="1aIX9F" id="2_1mL0eofUP" role="1xVPHs">
                      <node concept="26LbJo" id="2_1mL0eofUQ" role="1aIX9E">
                        <ref role="26LbJp" to="tpf8:1vDgt48Nz4_" resolve="actualArgument" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2_1mL0eofUS" role="2OqNvi" />
              </node>
              <node concept="1Wc70l" id="1vDgt48Nz5u" role="3uHU7w">
                <node concept="2OqwBi" id="1vDgt48Nz5$" role="3uHU7w">
                  <node concept="2OqwBi" id="1vDgt48Nz5_" role="2Oq$k0">
                    <node concept="3Tsc0h" id="QzR6ThiNOw" role="2OqNvi">
                      <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" resolve="parameter" />
                    </node>
                    <node concept="2OqwBi" id="1vDgt48Nz5A" role="2Oq$k0">
                      <node concept="pncrf" id="1vDgt48Nz5B" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1vDgt48Nz5P" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="1vDgt48Nz5E" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="1vDgt48Nz5v" role="3uHU7B">
                  <node concept="2OqwBi" id="1vDgt48Nz5w" role="2Oq$k0">
                    <node concept="pncrf" id="1vDgt48Nz5x" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1vDgt48Nz5O" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="1vDgt48Nz5z" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3w1cHt2UoUw">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:3w1cHt2UcMK" resolve="TemplateArgumentQueryExpression" />
    <node concept="3EZMnI" id="3w1cHt2Up$D" role="2wV5jI">
      <property role="1ayjP4" value="true" />
      <node concept="3F1sOY" id="3w1cHt2Up$G" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:3w1cHt2UkU2" resolve="query" />
      </node>
      <node concept="2iRfu4" id="3w1cHt2Up$H" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="42YwEPgeNV5">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:42YwEPgeNM8" resolve="TemplateArgumentPatternVarRefExpression" />
    <node concept="1iCGBv" id="42YwEPgeQ9i" role="2wV5jI">
      <ref role="1NtTu8" to="tpf8:42YwEPgeNV4" resolve="patternVarDecl" />
      <node concept="1sVBvm" id="42YwEPgeQ9j" role="1sWHZn">
        <node concept="3F0A7n" id="42YwEPgeQ9o" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="5Ex$Jzqi8J0" resolve="PatternRef" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4bn6ZJF6_Ty">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:4bn6ZJF6_RC" resolve="TemplateArgumentLinkPatternRefExpression" />
    <node concept="1iCGBv" id="4bn6ZJF6_T$" role="2wV5jI">
      <ref role="1NtTu8" to="tpf8:4bn6ZJF6_RE" resolve="patternVar" />
      <node concept="1sVBvm" id="4bn6ZJF6_T_" role="1sWHZn">
        <node concept="3F0A7n" id="4bn6ZJF6_TA" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="5Ex$Jzqi8J0" resolve="PatternRef" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4bn6ZJF6_TD">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:4bn6ZJF6_RB" resolve="TemplateArgumentPropertyPatternRefExpression" />
    <node concept="1iCGBv" id="4bn6ZJF6_TF" role="2wV5jI">
      <ref role="1NtTu8" to="tpf8:4bn6ZJF6_RD" resolve="propertyPattern" />
      <node concept="1sVBvm" id="4bn6ZJF6_TG" role="1sWHZn">
        <node concept="3F0A7n" id="4bn6ZJF6_TH" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="5Ex$Jzqi8J0" resolve="PatternRef" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1jRYachI_al">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:1jRYachIf5f" resolve="TemplateCallMacro" />
    <node concept="3EZMnI" id="1jRYachI_an" role="2wV5jI">
      <node concept="3F0ifn" id="1jRYachI_ao" role="3EZMnx">
        <property role="3F0ifm" value="$CALL$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="11LMrY" id="1x7fy1ybyP6" role="3F10Kt" />
        <node concept="3CIbrd" id="1x7fy1ybyQR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPRnO" id="6A$8asZeXQB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="6GI$fc4d7jU" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
      </node>
      <node concept="1HlG4h" id="3JOD7wdllr6" role="3EZMnx">
        <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
        <node concept="1HfYo3" id="3JOD7wdllr8" role="1HlULh">
          <node concept="3TQlhw" id="3JOD7wdllra" role="1Hhtcw">
            <node concept="3clFbS" id="3JOD7wdllrc" role="2VODD2">
              <node concept="3clFbF" id="3JOD7wdlynJ" role="3cqZAp">
                <node concept="2OqwBi" id="3JOD7wdlBmT" role="3clFbG">
                  <node concept="2OqwBi" id="3JOD7wdlyO_" role="2Oq$k0">
                    <node concept="pncrf" id="3JOD7wdlynI" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3JOD7wdl_0i" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3JOD7wdlCof" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="3JOD7wdlCE7" role="pqm2j">
          <node concept="3clFbS" id="3JOD7wdlCE8" role="2VODD2">
            <node concept="3clFbF" id="3JOD7wdlD8T" role="3cqZAp">
              <node concept="1Wc70l" id="3JOD7wdlKkp" role="3clFbG">
                <node concept="2OqwBi" id="3JOD7wdlRMX" role="3uHU7w">
                  <node concept="2OqwBi" id="3JOD7wdlPf1" role="2Oq$k0">
                    <node concept="2OqwBi" id="3JOD7wdlKLR" role="2Oq$k0">
                      <node concept="pncrf" id="3JOD7wdlKAH" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3JOD7wdlN28" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3JOD7wdlQkW" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="3JOD7wdlVA6" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="3JOD7wdlHPU" role="3uHU7B">
                  <node concept="2OqwBi" id="3JOD7wdlDk3" role="2Oq$k0">
                    <node concept="pncrf" id="3JOD7wdlD8S" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3JOD7wdlFv$" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="3JOD7wdlJBF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3yfXC2" id="3JOD7wdm7oG" role="3F10Kt">
          <ref role="3ygfmf" to="tpf8:1vDgt48Nz5N" resolve="template" />
        </node>
        <node concept="11LMrY" id="7DPed4ig9MX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3CIbrd" id="7DPed4igwSI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="1jRYachI_ar" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="1jRYachI_as" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1jRYachIAPI" role="6VMZX">
      <node concept="3F0ifn" id="1jRYachIAPJ" role="3EZMnx">
        <property role="3F0ifm" value="call template and insert its outcome" />
        <node concept="VPM3Z" id="1jRYachIAPK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="1jRYachIAPL" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="1jRYachIAPM" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="1jRYachIAPN" role="3EZMnx">
        <node concept="VPM3Z" id="1jRYachIAPO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="1jRYachIAPP" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VBu6" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VBu7" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="1jRYachIAQ6" role="3EZMnx">
          <node concept="3F0ifn" id="1jRYachIAQ7" role="3EZMnx">
            <property role="3F0ifm" value="mapped node" />
            <node concept="VPM3Z" id="1jRYachIAQ8" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="1jRYachIAQ9" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="1jRYachIAQa" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="1jRYachIAQb" role="3EZMnx">
            <property role="1$x2rV" value="&lt;current input node&gt;" />
            <ref role="1NtTu8" to="tpf8:1jRYachIjWP" resolve="sourceNodeQuery" />
          </node>
          <node concept="VPM3Z" id="1jRYachIAQc" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="1jRYachIAQd" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="1jRYachIAQe" role="3EZMnx">
          <node concept="VPM3Z" id="1jRYachIAQf" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="1jRYachIAQg" role="3EZMnx">
          <node concept="3F0ifn" id="1jRYachIAQh" role="3EZMnx">
            <property role="3F0ifm" value="template" />
            <node concept="VPM3Z" id="1jRYachIAQi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="1jRYachIAQj" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="1jRYachIAQk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="1jRYachKJQm" role="3EZMnx">
            <node concept="1iCGBv" id="1jRYachIAQl" role="3EZMnx">
              <property role="1$x2rV" value="&lt;choose template&gt;" />
              <property role="1cu_pB" value="gtguBGO/2" />
              <ref role="1NtTu8" to="tpf8:1vDgt48Nz5N" resolve="template" />
              <node concept="1sVBvm" id="1jRYachIAQm" role="1sWHZn">
                <node concept="3F0A7n" id="1jRYachIAQn" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <property role="1$x2rV" value="&lt;no name&gt;" />
                  <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="PMmxH" id="1jRYachIG3M" role="3EZMnx">
              <ref role="PMmxG" node="1vDgt48Nz52" resolve="ITemplateCall_actualArguments" />
            </node>
            <node concept="l2Vlx" id="1jRYachKJQo" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="1jRYachIAQo" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="1jRYachIAQp" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="1jRYachIAQq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="1jRYachIAQr" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="1jRYachIAQs" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="1jRYachIAQt" role="2iSdaV" />
    </node>
  </node>
  <node concept="1Xs25n" id="1XKlXmqe6XA">
    <property role="TrG5h" value="replace_node_macro" />
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
    <node concept="OXEIz" id="1XKlXmqe6XB" role="1XvlXI">
      <node concept="1ou48o" id="1XKlXmqe6XC" role="OY2wv">
        <property role="1ezIyd" value="gWZP3tU/custom" />
        <node concept="3bZ5Sz" id="79k837C0OeZ" role="1eyP2E">
          <ref role="3bZ5Sy" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
        </node>
        <node concept="3GJtP1" id="1XKlXmqe6XD" role="1ou48n">
          <node concept="3clFbS" id="1XKlXmqe6XE" role="2VODD2">
            <node concept="3clFbF" id="79k837C0J3x" role="3cqZAp">
              <node concept="2OqwBi" id="79k837C0N6G" role="3clFbG">
                <node concept="2OqwBi" id="79k837C0La4" role="2Oq$k0">
                  <node concept="2OqwBi" id="79k837C0J$M" role="2Oq$k0">
                    <node concept="35c_gC" id="79k837C0J3v" role="2Oq$k0">
                      <ref role="35c_gD" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
                    </node>
                    <node concept="LSoRf" id="79k837C0K3j" role="2OqNvi">
                      <node concept="2OqwBi" id="79k837C0Kwr" role="1iTxcG">
                        <node concept="3GMtW1" id="79k837C0KjR" role="2Oq$k0" />
                        <node concept="I4A8Y" id="79k837C0KLs" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="79k837C0LIJ" role="2OqNvi">
                    <node concept="1bVj0M" id="79k837C0LIL" role="23t8la">
                      <node concept="3clFbS" id="79k837C0LIM" role="1bW5cS">
                        <node concept="3clFbF" id="79k837C0M1d" role="3cqZAp">
                          <node concept="3fqX7Q" id="79k837C0M1b" role="3clFbG">
                            <node concept="2OqwBi" id="79k837C0Mg1" role="3fr31v">
                              <node concept="37vLTw" id="79k837C0M1o" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wej" resolve="it" />
                              </node>
                              <node concept="liA8E" id="79k837C0MM2" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wej" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wek" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="79k837C0NsE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1ouSdP" id="1XKlXmqe6XF" role="1ou48m">
          <node concept="3clFbS" id="1XKlXmqe6XG" role="2VODD2">
            <node concept="3cpWs8" id="1XKlXmqejqh" role="3cqZAp">
              <node concept="3cpWsn" id="1XKlXmqejqi" role="3cpWs9">
                <property role="TrG5h" value="macro" />
                <node concept="3Tqbb2" id="1XKlXmqejqj" role="1tU5fm">
                  <ref role="ehGHo" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
                </node>
                <node concept="2OqwBi" id="1XKlXmqejqk" role="33vP2m">
                  <node concept="3GLrbK" id="1XKlXmqejql" role="2Oq$k0" />
                  <node concept="q_SaT" id="2b3Tt7jqkto" role="2OqNvi">
                    <node concept="3GMtW1" id="2b3Tt7jqktp" role="1wAxWu" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1XKlXmqejp$" role="3cqZAp">
              <node concept="2OqwBi" id="1XKlXmqejpH" role="3clFbG">
                <node concept="3GMtW1" id="1XKlXmqejpG" role="2Oq$k0" />
                <node concept="1P9Npp" id="1XKlXmqejpL" role="2OqNvi">
                  <node concept="37vLTw" id="3GM_nagTtH2" role="1P9ThW">
                    <ref role="3cqZAo" node="1XKlXmqejqi" resolve="macro" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7of$qLgIuA3" role="3cqZAp">
              <node concept="2OqwBi" id="7of$qLgIuHL" role="3clFbG">
                <node concept="37vLTw" id="7of$qLgUg0G" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XKlXmqejqi" resolve="macro" />
                </node>
                <node concept="1OKiuA" id="7of$qLgIxaU" role="2OqNvi">
                  <node concept="1Q80Hx" id="7of$qLgIxby" role="lBI5i" />
                  <node concept="2B6iha" id="7of$qLgQlH4" role="lGT1i" />
                  <node concept="3cmrfG" id="7of$qLgIxcY" role="3dN3m$">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6cmOUHS8aGj" role="3cqZAp">
              <node concept="2OqwBi" id="6cmOUHS8aGl" role="3clFbG">
                <node concept="1Q80Hx" id="1o_I2DFXlCj" role="2Oq$k0" />
                <node concept="liA8E" id="6cmOUHS8aMp" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.openInspector()" resolve="openInspector" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="6VE3a" id="1XKlXmqejpU" role="1ezQQy">
          <node concept="3clFbS" id="1XKlXmqejpV" role="2VODD2">
            <node concept="3clFbF" id="1XKlXmqejq2" role="3cqZAp">
              <node concept="2OqwBi" id="2wdLO7Kfxgp" role="3clFbG">
                <node concept="liA8E" id="79k837C0ONP" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
                </node>
                <node concept="3GLrbK" id="2wdLO7Kfxgr" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="6WeAF" id="1XKlXmqejpY" role="1ezVZE">
          <node concept="3clFbS" id="1XKlXmqejpZ" role="2VODD2">
            <node concept="3clFbJ" id="5U$CurFZly7" role="3cqZAp">
              <node concept="3clFbS" id="5U$CurFZlya" role="3clFbx">
                <node concept="3cpWs6" id="5U$CurG1Eo3" role="3cqZAp">
                  <node concept="2OqwBi" id="5U$CurG1ktq" role="3cqZAk">
                    <node concept="liA8E" id="79k837C0Pqo" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getShortDescription()" resolve="getShortDescription" />
                    </node>
                    <node concept="3GLrbK" id="5U$CurG1iRj" role="2Oq$k0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5U$CurG1czW" role="3clFbw">
                <node concept="2OqwBi" id="5U$CurG14jN" role="2Oq$k0">
                  <node concept="liA8E" id="79k837C0P5I" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getShortDescription()" resolve="getShortDescription" />
                  </node>
                  <node concept="3GLrbK" id="5U$CurG12GW" role="2Oq$k0" />
                </node>
                <node concept="17RvpY" id="5U$CurG1hrP" role="2OqNvi" />
              </node>
              <node concept="9aQIb" id="5U$CurG1quf" role="9aQIa">
                <node concept="3clFbS" id="5U$CurG1qug" role="9aQI4">
                  <node concept="3cpWs6" id="5U$CurG1wsU" role="3cqZAp">
                    <node concept="2OqwBi" id="5U$CurG1yEt" role="3cqZAk">
                      <node concept="liA8E" id="79k837C0PA9" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
                      </node>
                      <node concept="3GLrbK" id="5U$CurG1yEv" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="asaX9" id="6GI$fc4dsSf" role="lGtFl">
      <property role="YLPcu" value="2018.2" />
      <property role="YLQ7P" value="Use ReplaceNodeMacro transformation menu. (Select it in the &quot;transformation menu&quot; section in the cell inspector) It uses the engine of the substitute menu, not just &quot;sub-concept&quot;" />
    </node>
  </node>
  <node concept="24kQdi" id="7I5RuObTqNo">
    <property role="3GE5qa" value="rule.consequence" />
    <ref role="1XX52x" to="tpf8:7I5RuObTjPG" resolve="InlineTemplateWithContext_RuleConsequence" />
    <node concept="3EZMnI" id="7I5RuObTqNq" role="2wV5jI">
      <node concept="3F0ifn" id="7I5RuObTqOu" role="3EZMnx">
        <property role="3F0ifm" value="content node:" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
        <node concept="VPM3Z" id="7I5RuObTqOv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="7I5RuObTqOw" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no content node&gt;" />
        <ref role="1NtTu8" to="tpf8:7I5RuObTjPJ" resolve="contentNode" />
      </node>
      <node concept="2iRkQZ" id="7I5RuObTqOx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4mQX4lnwi9a">
    <property role="3GE5qa" value="parameter" />
    <ref role="1XX52x" to="tpf8:$79JWCfbYa" resolve="GeneratorParameterReference" />
    <node concept="3EZMnI" id="4mQX4lnwi9c" role="2wV5jI">
      <node concept="l2Vlx" id="4mQX4lnwi9e" role="2iSdaV" />
      <node concept="1iCGBv" id="4N$Ncbg_fpQ" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:$79JWCfbYc" resolve="declaration" />
        <node concept="1sVBvm" id="4N$Ncbg_fpR" role="1sWHZn">
          <node concept="3F0A7n" id="4N$Ncbg_fpY" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="OXEIz" id="47y0FrqhJTh" role="P5bDN">
          <node concept="ZcVJ$" id="47y0FrqhJTg" role="OY2wv">
            <node concept="1NMggl" id="47y0FrqhJTi" role="1NQq9M">
              <node concept="3clFbS" id="47y0FrqhJTj" role="2VODD2">
                <node concept="3clFbF" id="47y0FrqhJTk" role="3cqZAp">
                  <node concept="3cpWs3" id="47y0FrqhJTl" role="3clFbG">
                    <node concept="3cpWs3" id="47y0FrqhJTm" role="3uHU7B">
                      <node concept="2OqwBi" id="47y0FrqhJTn" role="3uHU7B">
                        <node concept="1NM5Ph" id="47y0FrqhJTu" role="2Oq$k0" />
                        <node concept="3TrcHB" id="47y0FrqhJTp" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="47y0FrqhJTq" role="3uHU7w">
                        <property role="Xl_RC" value=" : " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="47y0FrqhJTr" role="3uHU7w">
                      <node concept="1NM5Ph" id="47y0FrqhJTv" role="2Oq$k0" />
                      <node concept="3TrEf2" id="47y0FrqhJTt" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:$79JWCe2bl" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4N$Ncbg_w4s" role="3EZMnx">
        <node concept="VPM3Z" id="4N$Ncbg_w4t" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4N$Ncbg_w4I" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="1HlG4h" id="4N$Ncbg_w4K" role="3EZMnx">
          <node concept="1HfYo3" id="4N$Ncbg_w4L" role="1HlULh">
            <node concept="3TQlhw" id="4N$Ncbg_w4M" role="1Hhtcw">
              <node concept="3clFbS" id="4N$Ncbg_w4N" role="2VODD2">
                <node concept="3clFbF" id="4N$Ncbg_w4O" role="3cqZAp">
                  <node concept="2OqwBi" id="4N$Ncbg_w50" role="3clFbG">
                    <node concept="2OqwBi" id="4N$Ncbg_w4V" role="2Oq$k0">
                      <node concept="2OqwBi" id="4N$Ncbg_w4Q" role="2Oq$k0">
                        <node concept="pncrf" id="4N$Ncbg_w4P" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4N$Ncbg_w4U" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:$79JWCfbYc" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4N$Ncbg_w4Z" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:$79JWCe2bl" resolve="type" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORgSx" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPxyj" id="7ncwv__ZDeV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="4N$Ncbg_w4v" role="2iSdaV" />
        <node concept="pkWqt" id="4N$Ncbg_w4w" role="pqm2j">
          <node concept="3clFbS" id="4N$Ncbg_w4x" role="2VODD2">
            <node concept="3clFbF" id="4N$Ncbg_w4y" role="3cqZAp">
              <node concept="2OqwBi" id="4N$Ncbg_w4D" role="3clFbG">
                <node concept="2OqwBi" id="4N$Ncbg_w4$" role="2Oq$k0">
                  <node concept="pncrf" id="4N$Ncbg_w4z" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4N$Ncbg_w4C" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:$79JWCfbYc" resolve="declaration" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4N$Ncbg_w4H" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4N$Ncbg$pOq" role="3EZMnx">
        <node concept="VPM3Z" id="4N$Ncbg$pOr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4N$Ncbg$pOu" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="4N$Ncbg$DBr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="4N$Ncbg$pOx" role="3EZMnx">
          <property role="3F0ifm" value="optional" />
        </node>
        <node concept="3F0ifn" id="4N$Ncbg$pOy" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="4N$Ncbg$DBs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="4N$Ncbg$pOt" role="2iSdaV" />
        <node concept="pkWqt" id="4N$Ncbg$pOz" role="pqm2j">
          <node concept="3clFbS" id="4N$Ncbg$pO$" role="2VODD2">
            <node concept="3clFbF" id="4N$Ncbg$pO_" role="3cqZAp">
              <node concept="2OqwBi" id="4N$Ncbg$pOB" role="3clFbG">
                <node concept="pncrf" id="4N$Ncbg$pOA" role="2Oq$k0" />
                <node concept="3TrcHB" id="4N$Ncbg$pOF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpf8:4N$Ncbg$pOo" resolve="isOptional" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="4N$Ncbg$pOG" role="6VMZX">
      <node concept="2iRkQZ" id="4N$Ncbg$pOH" role="2iSdaV" />
      <node concept="3EZMnI" id="4N$Ncbg$pOL" role="3EZMnx">
        <node concept="2iRfu4" id="4N$Ncbg$pOM" role="2iSdaV" />
        <node concept="VPM3Z" id="4N$Ncbg$pON" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4N$Ncbg$pOO" role="3EZMnx">
          <property role="3F0ifm" value="optional:" />
        </node>
        <node concept="3F0A7n" id="4N$Ncbg$pOQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:4N$Ncbg$pOo" resolve="isOptional" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4lQlo5qukTV">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:4lQlo5qukTT" resolve="TemplateArgumentParameterExpression" />
    <node concept="3EZMnI" id="4lQlo5quodR" role="2wV5jI">
      <node concept="1iCGBv" id="4lQlo5quodU" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:4lQlo5qukTU" resolve="parameter" />
        <node concept="1sVBvm" id="4lQlo5quodV" role="1sWHZn">
          <node concept="3F0A7n" id="4lQlo5quodX" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="5Ex$Jzqi6o7" resolve="TemplateParameterRef" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4lQlo5quodT" role="2iSdaV" />
    </node>
  </node>
  <node concept="2$ogZn" id="6q2TEcjuDqI">
    <property role="TrG5h" value="TemplateDeclarationParameterInformationQuery" />
    <property role="3GE5qa" value="rule.argument" />
    <ref role="jxYdt" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
    <node concept="2XrIbr" id="6q2TEcjuEZ1" role="3LrfaV">
      <property role="TrG5h" value="getSelectedActualArgument" />
      <node concept="37vLTG" id="6q2TEcjuEZ2" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HnX8ndDct3" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="6q2TEcjuEZ4" role="3clF46">
        <property role="TrG5h" value="templateCall" />
        <node concept="3Tqbb2" id="6q2TEcjuEZ5" role="1tU5fm">
          <ref role="ehGHo" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6q2TEcjuEZ6" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="6q2TEcjuEZ7" role="3clF47">
        <node concept="3cpWs8" id="6q2TEcjuEZ8" role="3cqZAp">
          <node concept="3cpWsn" id="6q2TEcjuEZ9" role="3cpWs9">
            <property role="TrG5h" value="selectedNode" />
            <node concept="3Tqbb2" id="6q2TEcjuEZa" role="1tU5fm" />
            <node concept="2OqwBi" id="6q2TEcjuEZb" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm9Nb" role="2Oq$k0">
                <ref role="3cqZAo" node="6q2TEcjuEZ2" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="6q2TEcjuEZd" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6q2TEcjuEZe" role="3cqZAp">
          <node concept="3clFbS" id="6q2TEcjuEZf" role="3clFbx">
            <node concept="3cpWs6" id="6q2TEcjuEZg" role="3cqZAp">
              <node concept="10Nm6u" id="6q2TEcjuEZh" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6q2TEcjuEZi" role="3clFbw">
            <node concept="10Nm6u" id="6q2TEcjuEZj" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTsRA" role="3uHU7B">
              <ref role="3cqZAo" node="6q2TEcjuEZ9" resolve="selectedNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6q2TEcjuEZl" role="3cqZAp">
          <node concept="2OqwBi" id="6q2TEcjuEZm" role="3cqZAk">
            <node concept="2OqwBi" id="6q2TEcjuEZn" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTt9C" role="2Oq$k0">
                <ref role="3cqZAo" node="6q2TEcjuEZ9" resolve="selectedNode" />
              </node>
              <node concept="z$bX8" id="6q2TEcjuEZp" role="2OqNvi">
                <node concept="1xIGOp" id="6q2TEcjuEZq" role="1xVPHs" />
                <node concept="1xMEDy" id="6q2TEcjuEZr" role="1xVPHs">
                  <node concept="chp4Y" id="6q2TEcjuEZs" role="ri$Ld">
                    <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1z4cxt" id="6q2TEcjuEZt" role="2OqNvi">
              <node concept="1bVj0M" id="6q2TEcjuEZu" role="23t8la">
                <node concept="3clFbS" id="6q2TEcjuEZv" role="1bW5cS">
                  <node concept="3clFbF" id="6q2TEcjuEZw" role="3cqZAp">
                    <node concept="1Wc70l" id="6q2TEcjuEZx" role="3clFbG">
                      <node concept="17R0WA" id="4jf2Bbgb$Lt" role="3uHU7w">
                        <node concept="2OqwBi" id="6q2TEcjuEZ$" role="3uHU7B">
                          <node concept="37vLTw" id="2BHiRxgmkmn" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Wel" resolve="it" />
                          </node>
                          <node concept="2NL2c5" id="4jf2Bbgb$tm" role="2OqNvi" />
                        </node>
                        <node concept="359W_D" id="4jf2Bbgb_34" role="3uHU7w">
                          <ref role="359W_E" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
                          <ref role="359W_F" to="tpf8:1vDgt48Nz4_" resolve="actualArgument" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="6q2TEcjuEZB" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxgm717" role="3uHU7w">
                          <ref role="3cqZAo" node="6q2TEcjuEZ4" resolve="templateCall" />
                        </node>
                        <node concept="2OqwBi" id="6q2TEcjuEZD" role="3uHU7B">
                          <node concept="37vLTw" id="2BHiRxgm8Ba" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Wel" resolve="it" />
                          </node>
                          <node concept="1mfA1w" id="6q2TEcjuEZF" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Wel" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Wem" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6q2TEcjuEZI" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="6q2TEcjuIJh" role="3LrfaV">
      <property role="TrG5h" value="fillPresentation" />
      <node concept="37vLTG" id="6q2TEcjuIJl" role="3clF46">
        <property role="TrG5h" value="templateDeclaration" />
        <node concept="3Tqbb2" id="6q2TEcjuIJm" role="1tU5fm">
          <ref role="ehGHo" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="6q2TEcjuIJn" role="3clF46">
        <property role="TrG5h" value="selectedActualArgument" />
        <node concept="3Tqbb2" id="6q2TEcjuIJo" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="6q2TEcjuIJp" role="3clF46">
        <property role="TrG5h" value="styledText" />
        <node concept="1YN$XN" id="6q2TEcjuIJq" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6q2TEcjuIJj" role="3clF47">
        <node concept="3clFbJ" id="6q2TEcjuIJZ" role="3cqZAp">
          <node concept="3clFbS" id="6q2TEcjuIK0" role="3clFbx">
            <node concept="3clFbF" id="6q2TEcjuIK1" role="3cqZAp">
              <node concept="2OqwBi" id="6q2TEcjuIK2" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgkWo4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                </node>
                <node concept="33jxAZ" id="6q2TEcjuIK4" role="2OqNvi">
                  <node concept="2OqwBi" id="6q2TEcjuIK5" role="kdiOG">
                    <node concept="37vLTw" id="2BHiRxghfUS" role="2Oq$k0">
                      <ref role="3cqZAo" node="6q2TEcjuIJl" resolve="templateDeclaration" />
                    </node>
                    <node concept="3TrcHB" id="6q2TEcjuIK7" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6q2TEcjuIK8" role="3clFbw">
            <node concept="10Nm6u" id="6q2TEcjuIK9" role="3uHU7w" />
            <node concept="2OqwBi" id="6q2TEcjuIKa" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmwRQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6q2TEcjuIJl" resolve="templateDeclaration" />
              </node>
              <node concept="3TrcHB" id="6q2TEcjuIKc" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6q2TEcjuIKd" role="9aQIa">
            <node concept="3clFbS" id="6q2TEcjuIKe" role="9aQI4">
              <node concept="3clFbF" id="6q2TEcjuIKf" role="3cqZAp">
                <node concept="2OqwBi" id="6q2TEcjuIKg" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxgmaGk" role="2Oq$k0">
                    <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                  </node>
                  <node concept="33jxAZ" id="6q2TEcjuIKi" role="2OqNvi">
                    <node concept="Xl_RD" id="6q2TEcjuIKj" role="kdiOG">
                      <property role="Xl_RC" value="&lt;no name&gt;" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6q2TEcjuILh" role="3cqZAp" />
        <node concept="3cpWs8" id="6q2TEcjuILi" role="3cqZAp">
          <node concept="3cpWsn" id="6q2TEcjuILj" role="3cpWs9">
            <property role="TrG5h" value="argumentIndex" />
            <node concept="10Oyi0" id="6q2TEcjuILk" role="1tU5fm" />
            <node concept="3K4zz7" id="6q2TEcjuILl" role="33vP2m">
              <node concept="2OqwBi" id="6q2TEcjuILm" role="3K4E3e">
                <node concept="37vLTw" id="2BHiRxghiL$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6q2TEcjuIJn" resolve="selectedActualArgument" />
                </node>
                <node concept="2bSWHS" id="6q2TEcjuILo" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="6q2TEcjuILp" role="3K4GZi">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="3y3z36" id="6q2TEcjuILq" role="3K4Cdx">
                <node concept="10Nm6u" id="6q2TEcjuILr" role="3uHU7w" />
                <node concept="37vLTw" id="2BHiRxgmFq4" role="3uHU7B">
                  <ref role="3cqZAo" node="6q2TEcjuIJn" resolve="selectedActualArgument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6q2TEcjuILt" role="3cqZAp">
          <node concept="2OqwBi" id="6q2TEcjuILu" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfi2" role="2Oq$k0">
              <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
            </node>
            <node concept="33jxAZ" id="6q2TEcjuILw" role="2OqNvi">
              <node concept="Xl_RD" id="6q2TEcjuILx" role="kdiOG">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6q2TEcjuILy" role="3cqZAp">
          <node concept="2OqwBi" id="6q2TEcjuILz" role="1DdaDG">
            <node concept="3Tsc0h" id="QzR6ThiT2n" role="2OqNvi">
              <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" resolve="parameter" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmgn3" role="2Oq$k0">
              <ref role="3cqZAo" node="6q2TEcjuIJl" resolve="templateDeclaration" />
            </node>
          </node>
          <node concept="3cpWsn" id="6q2TEcjuILA" role="1Duv9x">
            <property role="TrG5h" value="param" />
            <node concept="3Tqbb2" id="6q2TEcjuILB" role="1tU5fm">
              <ref role="ehGHo" to="tpf8:1$dcvTE2mbA" resolve="TemplateParameterDeclaration" />
            </node>
          </node>
          <node concept="3clFbS" id="6q2TEcjuILC" role="2LFqv$">
            <node concept="3clFbJ" id="6q2TEcjuILD" role="3cqZAp">
              <node concept="3clFbS" id="6q2TEcjuILE" role="3clFbx">
                <node concept="3clFbF" id="6q2TEcjuILF" role="3cqZAp">
                  <node concept="2OqwBi" id="6q2TEcjuILG" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgl6s4" role="2Oq$k0">
                      <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                    </node>
                    <node concept="33jxAZ" id="6q2TEcjuILI" role="2OqNvi">
                      <node concept="Xl_RD" id="6q2TEcjuILJ" role="kdiOG">
                        <property role="Xl_RC" value=", " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="6q2TEcjuILK" role="3clFbw">
                <node concept="3cmrfG" id="6q2TEcjuILL" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="6q2TEcjuILM" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTwcQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6q2TEcjuILA" resolve="param" />
                  </node>
                  <node concept="2bSWHS" id="6q2TEcjuILO" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6q2TEcjuILP" role="3cqZAp">
              <node concept="3clFbS" id="6q2TEcjuILQ" role="3clFbx">
                <node concept="3clFbF" id="6q2TEcjuILR" role="3cqZAp">
                  <node concept="2OqwBi" id="6q2TEcjuILS" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglMW_" role="2Oq$k0">
                      <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                    </node>
                    <node concept="33ks2k" id="6q2TEcjuILU" role="2OqNvi">
                      <node concept="3clFbT" id="6q2TEcjuILV" role="kdiOG">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6q2TEcjuILW" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT_Jc" role="3uHU7w">
                  <ref role="3cqZAo" node="6q2TEcjuILj" resolve="argumentIndex" />
                </node>
                <node concept="2OqwBi" id="6q2TEcjuILY" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTzUS" role="2Oq$k0">
                    <ref role="3cqZAo" node="6q2TEcjuILA" resolve="param" />
                  </node>
                  <node concept="2bSWHS" id="6q2TEcjuIM0" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6q2TEcjuIM1" role="3cqZAp">
              <node concept="3clFbS" id="6q2TEcjuIM2" role="3clFbx">
                <node concept="3clFbF" id="6q2TEcjuIM3" role="3cqZAp">
                  <node concept="2OqwBi" id="6q2TEcjuIM4" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglB0V" role="2Oq$k0">
                      <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                    </node>
                    <node concept="33jxAZ" id="6q2TEcjuIM6" role="2OqNvi">
                      <node concept="2OqwBi" id="6q2TEcjuIM7" role="kdiOG">
                        <node concept="2OqwBi" id="6q2TEcjuIM8" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTzOT" role="2Oq$k0">
                            <ref role="3cqZAo" node="6q2TEcjuILA" resolve="param" />
                          </node>
                          <node concept="3TrEf2" id="6q2TEcjuIMO" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" resolve="type" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORgSz" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6q2TEcjuIMc" role="3clFbw">
                <node concept="10Nm6u" id="6q2TEcjuIMd" role="3uHU7w" />
                <node concept="2OqwBi" id="6q2TEcjuIMe" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTuiF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6q2TEcjuILA" resolve="param" />
                  </node>
                  <node concept="3TrEf2" id="6q2TEcjuIMN" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" resolve="type" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6q2TEcjuIMh" role="9aQIa">
                <node concept="3clFbS" id="6q2TEcjuIMi" role="9aQI4">
                  <node concept="3clFbF" id="6q2TEcjuIMj" role="3cqZAp">
                    <node concept="2OqwBi" id="6q2TEcjuIMk" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxghgrP" role="2Oq$k0">
                        <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                      </node>
                      <node concept="33jxAZ" id="6q2TEcjuIMm" role="2OqNvi">
                        <node concept="Xl_RD" id="6q2TEcjuIMn" role="kdiOG">
                          <property role="Xl_RC" value="???" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6q2TEcjuIMo" role="3cqZAp">
              <node concept="3clFbS" id="6q2TEcjuIMp" role="3clFbx">
                <node concept="3clFbF" id="6q2TEcjuIMq" role="3cqZAp">
                  <node concept="2OqwBi" id="6q2TEcjuIMr" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmerY" role="2Oq$k0">
                      <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                    </node>
                    <node concept="33jxAZ" id="6q2TEcjuIMt" role="2OqNvi">
                      <node concept="3cpWs3" id="6q2TEcjuIMu" role="kdiOG">
                        <node concept="Xl_RD" id="6q2TEcjuIMv" role="3uHU7B">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="2OqwBi" id="6q2TEcjuIMw" role="3uHU7w">
                          <node concept="37vLTw" id="3GM_nagTwnq" role="2Oq$k0">
                            <ref role="3cqZAo" node="6q2TEcjuILA" resolve="param" />
                          </node>
                          <node concept="3TrcHB" id="6q2TEcjuIMy" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6q2TEcjuIMz" role="3clFbw">
                <node concept="10Nm6u" id="6q2TEcjuIM$" role="3uHU7w" />
                <node concept="2OqwBi" id="6q2TEcjuIM_" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTAwn" role="2Oq$k0">
                    <ref role="3cqZAo" node="6q2TEcjuILA" resolve="param" />
                  </node>
                  <node concept="3TrcHB" id="6q2TEcjuIMB" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6q2TEcjuIMC" role="3cqZAp">
              <node concept="2OqwBi" id="6q2TEcjuIMD" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxghfcq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
                </node>
                <node concept="33ks2k" id="6q2TEcjuIMF" role="2OqNvi">
                  <node concept="3clFbT" id="6q2TEcjuIMG" role="kdiOG">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6q2TEcjuIMH" role="3cqZAp">
          <node concept="2OqwBi" id="6q2TEcjuIMI" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgh9Yb" role="2Oq$k0">
              <ref role="3cqZAo" node="6q2TEcjuIJp" resolve="styledText" />
            </node>
            <node concept="33jxAZ" id="6q2TEcjuIMK" role="2OqNvi">
              <node concept="Xl_RD" id="6q2TEcjuIML" role="kdiOG">
                <property role="Xl_RC" value=")" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6q2TEcjuIJk" role="3clF45" />
    </node>
    <node concept="3Tqbb2" id="6q2TEcjuEwg" role="3evHYT">
      <ref role="ehGHo" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
    </node>
    <node concept="2$ogOm" id="6q2TEcjuDqK" role="2$ogZm">
      <node concept="3clFbS" id="6q2TEcjuDqL" role="2VODD2">
        <node concept="3clFbF" id="6q2TEcjuEwL" role="3cqZAp">
          <node concept="2ShNRf" id="6q2TEcjuEwM" role="3clFbG">
            <node concept="2HTt$P" id="6q2TEcjuEwO" role="2ShVmc">
              <node concept="3Tqbb2" id="6q2TEcjuEYU" role="2HTBi0">
                <ref role="ehGHo" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
              </node>
              <node concept="2OqwBi" id="6q2TEcjuEwR" role="2HTEbv">
                <node concept="jzRn0" id="6q2TEcjuEwS" role="2Oq$k0" />
                <node concept="3TrEf2" id="6q2TEcjuEwT" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2itN0W" id="6q2TEcjuDqM" role="2iu3JR">
      <node concept="3clFbS" id="6q2TEcjuDqN" role="2VODD2">
        <node concept="3clFbF" id="6q2TEcjuJTv" role="3cqZAp">
          <node concept="2OqwBi" id="6q2TEcjuJTw" role="3clFbG">
            <node concept="2WthIp" id="6q2TEcjuJTx" role="2Oq$k0" />
            <node concept="2XshWL" id="6q2TEcjuJTy" role="2OqNvi">
              <ref role="2WH_rO" node="6q2TEcjuIJh" resolve="fillPresentation" />
              <node concept="2itN01" id="6q2TEcjuJTz" role="2XxRq1" />
              <node concept="2OqwBi" id="6q2TEcjuJT$" role="2XxRq1">
                <node concept="2WthIp" id="6q2TEcjuJT_" role="2Oq$k0" />
                <node concept="2XshWL" id="6q2TEcjuJTA" role="2OqNvi">
                  <ref role="2WH_rO" node="6q2TEcjuEZ1" resolve="getSelectedActualArgument" />
                  <node concept="1Q80Hx" id="6q2TEcjuJTB" role="2XxRq1" />
                  <node concept="jzRn0" id="6q2TEcjuJTC" role="2XxRq1" />
                </node>
              </node>
              <node concept="1unZQo" id="6q2TEcjuJTD" role="2XxRq1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3LVrda" id="6q2TEcjuDqO" role="3LVrd1">
      <node concept="3clFbS" id="6q2TEcjuDqP" role="2VODD2">
        <node concept="3clFbF" id="6q2TEcjuEYV" role="3cqZAp">
          <node concept="3clFbT" id="6q2TEcjuEYW" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4sWLrFSCvN8">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:4sWLrFSCuu$" resolve="LabelMacro" />
    <node concept="3EZMnI" id="4sWLrFSCvNa" role="2wV5jI">
      <node concept="3F0ifn" id="4sWLrFSCvNb" role="3EZMnx">
        <property role="3F0ifm" value="$LABEL$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <node concept="11LMrY" id="1x7fy1ybRzT" role="3F10Kt" />
        <node concept="3CIbrd" id="1x7fy1ybR_F" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPRnO" id="6A$8asZeWvf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="6GI$fc4d6N2" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
      </node>
      <node concept="PMmxH" id="4sWLrFSCvNe" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="4sWLrFSCvNf" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4sWLrFSCvNl" role="6VMZX">
      <node concept="3F0ifn" id="4sWLrFSCvNm" role="3EZMnx">
        <property role="3F0ifm" value="associate a label " />
        <node concept="VPM3Z" id="4sWLrFSCvNn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="4sWLrFSCvNo" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="4sWLrFSCvNp" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="4sWLrFSCvNq" role="3EZMnx">
        <node concept="VPM3Z" id="4sWLrFSCvNr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="4sWLrFSCvNs" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VtWc" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VtWd" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="34_HLrTteck" role="3EZMnx">
          <node concept="3F0ifn" id="34_HLrTtecl" role="3EZMnx">
            <property role="3F0ifm" value="input node to map" />
            <node concept="VPM3Z" id="34_HLrTtecm" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="34_HLrTtecn" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="34_HLrTteco" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="34_HLrTtecp" role="3EZMnx">
            <property role="1$x2rV" value="&lt;current source node&gt;" />
            <ref role="1NtTu8" to="tpf8:34_HLrTtecb" resolve="input1" />
          </node>
          <node concept="VPM3Z" id="34_HLrTtecq" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="34_HLrTtecr" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="34_HLrTtecL" role="3EZMnx">
          <node concept="3F0ifn" id="34_HLrTtecM" role="3EZMnx">
            <property role="3F0ifm" value="additional input node" />
            <node concept="VPM3Z" id="34_HLrTtecN" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="34_HLrTtecO" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="34_HLrTtecP" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="34_HLrTtecQ" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <property role="1cu_pB" value="gtguBGO/firstEditableCell" />
            <ref role="1NtTu8" to="tpf8:34_HLrTtecd" resolve="input2" />
          </node>
          <node concept="VPM3Z" id="34_HLrTtecR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="34_HLrTtecS" role="2iSdaV" />
          <node concept="pkWqt" id="34_HLrTtedX" role="pqm2j">
            <node concept="3clFbS" id="34_HLrTtedY" role="2VODD2">
              <node concept="3clFbF" id="34_HLrTtehT" role="3cqZAp">
                <node concept="2OqwBi" id="34_HLrTtg1c" role="3clFbG">
                  <node concept="2OqwBi" id="34_HLrTtfpj" role="2Oq$k0">
                    <node concept="2OqwBi" id="34_HLrTtezd" role="2Oq$k0">
                      <node concept="pncrf" id="34_HLrTtehS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="34_HLrTteQg" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:hurW$JJ" resolve="mappingLabel" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="34_HLrTthkm" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:34_HLrTtgLm" resolve="sourceConcept2" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="34_HLrTtgpf" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4sWLrFSCvO5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="4sWLrFSCvO6" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="4sWLrFSCvO7" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="4sWLrFSCvO8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="18LSMZREseO">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:18LSMZRElze" resolve="InsertMacro" />
    <node concept="3EZMnI" id="18LSMZREuYy" role="2wV5jI">
      <node concept="3F0ifn" id="18LSMZREuYz" role="3EZMnx">
        <property role="3F0ifm" value="$INSERT$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4d6N0" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeWd0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="18LSMZREuYB" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="18LSMZREuYC" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="18LSMZREuYD" role="6VMZX">
      <node concept="3F0ifn" id="18LSMZREuYE" role="3EZMnx">
        <property role="3F0ifm" value="insert a node " />
        <node concept="VPM3Z" id="18LSMZREuYF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="18LSMZREuYG" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="18LSMZREuYH" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="18LSMZREuYI" role="3EZMnx">
        <node concept="VPM3Z" id="18LSMZREuYJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="18LSMZREuYK" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VtU7" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VtU8" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="18LSMZREuZ1" role="3EZMnx">
          <node concept="3F0ifn" id="18LSMZREuZ2" role="3EZMnx">
            <property role="3F0ifm" value="output node" />
            <node concept="VPM3Z" id="18LSMZREuZ3" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="18LSMZREuZ4" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="18LSMZREuZ5" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="18LSMZREuZ6" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <property role="1cu_pB" value="gtguBGO/2" />
            <ref role="1NtTu8" to="tpf8:18LSMZREuZd" resolve="createNodeQuery" />
          </node>
          <node concept="VPM3Z" id="18LSMZREuZ7" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="18LSMZREuZ8" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="18LSMZREuZ9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="18LSMZREuZa" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="18LSMZREuZb" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="18LSMZREuZc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="30c0HY8gA7L">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:30c0HY8gznj" resolve="WeaveMacro" />
    <node concept="3EZMnI" id="30c0HY8gA7N" role="2wV5jI">
      <node concept="3F0ifn" id="30c0HY8gA7P" role="3EZMnx">
        <property role="3F0ifm" value="$WEAVE$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4d7E4" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeYlr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="30c0HY8gA7T" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
        <node concept="34QqEe" id="30c0HY8gA7U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="30c0HY8gA8m" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="30c0HY8gA8n" role="6VMZX">
      <node concept="3F0ifn" id="30c0HY8gA8o" role="3EZMnx">
        <property role="3F0ifm" value="weave nodes under output node" />
        <node concept="VPM3Z" id="30c0HY8gA8p" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="30c0HY8gA8q" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="30c0HY8gA8r" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="30c0HY8gA8s" role="3EZMnx">
        <node concept="VPM3Z" id="30c0HY8gA8t" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="30c0HY8gA8u" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VDkJ" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VDkK" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="30c0HY8gA93" role="3EZMnx">
          <node concept="3F0ifn" id="30c0HY8gA94" role="3EZMnx">
            <property role="3F0ifm" value="use input" />
            <node concept="VPM3Z" id="30c0HY8gA95" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="30c0HY8gA96" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="30c0HY8gA97" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="30c0HY8gA98" role="3EZMnx">
            <property role="1$x2rV" value="&lt;current source node&gt;" />
            <property role="1cu_pB" value="gtguBGO/2" />
            <ref role="1NtTu8" to="tpf8:30c0HY8gA7F" resolve="nodesToWeaveQuery" />
          </node>
          <node concept="VPM3Z" id="30c0HY8gA99" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="30c0HY8gA9a" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="30c0HY8gA8R" role="3EZMnx">
          <node concept="3F0ifn" id="30c0HY8gA8S" role="3EZMnx">
            <property role="3F0ifm" value="weave" />
            <node concept="VPM3Z" id="30c0HY8gA8T" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="30c0HY8gA8U" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="30c0HY8gA8V" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="30c0HY8gA8W" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpf8:30c0HY8gA7H" resolve="ruleConsequence" />
          </node>
          <node concept="VPM3Z" id="30c0HY8gA8X" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="30c0HY8gA8Y" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="2h9GiJ3xGgu" role="3EZMnx">
          <node concept="VPM3Z" id="2h9GiJ3xGgw" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="2h9GiJ3xGgy" role="3EZMnx">
            <property role="3F0ifm" value="anchor" />
            <node concept="VPM3Z" id="2h9GiJ3xJqw" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="2h9GiJ3xGh1" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="2h9GiJ3xJsa" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="2h9GiJ3xJsc" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:2h9GiJ3xGad" resolve="anchorQuery" />
          </node>
          <node concept="2iRfu4" id="2h9GiJ3xGgz" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="30c0HY8gA8Z" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="30c0HY8gA90" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="30c0HY8gA91" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="30c0HY8gA92" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2H5po9pnBev">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:2H5po9pnBer" resolve="TraceMacro" />
    <node concept="3EZMnI" id="2H5po9pnBex" role="2wV5jI">
      <node concept="3F0ifn" id="2H5po9pnBey" role="3EZMnx">
        <property role="3F0ifm" value="$TRACE$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="6GI$fc4d7E0" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeYiS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2H5po9pnBe_" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="2H5po9pnBeA" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="2H5po9pnBeC" role="6VMZX">
      <node concept="3F0ifn" id="2H5po9pnBeD" role="3EZMnx">
        <property role="3F0ifm" value="record input node as origin of the output" />
        <node concept="VPM3Z" id="2H5po9pnBeE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="2H5po9pnBeF" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="2H5po9pnBeG" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="2H5po9pnBeH" role="3EZMnx">
        <node concept="VPM3Z" id="2H5po9pnBeI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="2H5po9pnBeJ" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VCAw" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VCAx" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="2H5po9pnCDf" role="3EZMnx">
          <node concept="3F0ifn" id="2H5po9pnCDh" role="3EZMnx">
            <property role="3F0ifm" value="input node" />
            <node concept="VPM3Z" id="2H5po9pnCDi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="3DK91opyYeh" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="2j7w5oZrD17" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="2H5po9pnCDp" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:2H5po9pnBfh" resolve="sourceNodeQuery" />
          </node>
          <node concept="VPM3Z" id="2H5po9pnCDm" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="2H5po9pnCDn" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="2H5po9pnBf0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="2H5po9pnBf1" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="2H5po9pnBf2" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="2H5po9pnBf3" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="6QrrVJV4Wh7">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="MappingRuleCommonFields" />
    <ref role="1XX52x" to="tpf8:gZ0H$p7" resolve="BaseMappingRule" />
    <node concept="3EZMnI" id="6QrrVJV9aRU" role="2wV5jI">
      <node concept="2iRfu4" id="6QrrVJVmjCZ" role="2iSdaV" />
      <node concept="3F0ifn" id="6QrrVJVFO_H" role="3EZMnx">
        <node concept="VPM3Z" id="34i8I8dsuRQ" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="6QrrVJVmjD$" role="3EZMnx">
        <node concept="2iRkQZ" id="6QrrVJVmjD_" role="2iSdaV" />
        <node concept="3F0ifn" id="husgUvK" role="3EZMnx">
          <property role="3F0ifm" value="mapping label" />
          <node concept="VPM3Z" id="34i8I8drdb8" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="6QrrVJVmjEQ" role="3EZMnx">
          <node concept="VPM3Z" id="34i8I8drdbc" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="6QrrVJVmjF1" role="3EZMnx">
          <property role="3F0ifm" value="description" />
          <node concept="VPM3Z" id="34i8I8drdba" role="3F10Kt" />
        </node>
        <node concept="lj46D" id="6QrrVJVBB2E" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6QrrVJVmjE4" role="3EZMnx">
        <node concept="2iRkQZ" id="6QrrVJVmjE5" role="2iSdaV" />
        <node concept="1iCGBv" id="husgWeS" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:husgKN8" resolve="labelDeclaration" />
          <node concept="1sVBvm" id="husgWeT" role="1sWHZn">
            <node concept="3F0A7n" id="husgWtO" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="30gYXW" id="1bYsF$Hy2ko" role="3F10Kt">
                <property role="Vb096" value="hGRnIZc/lightBlue" />
                <node concept="3ZlJ5R" id="1bYsF$H_RTq" role="VblUZ">
                  <node concept="3clFbS" id="1bYsF$H_RTr" role="2VODD2">
                    <node concept="3clFbF" id="7WFkLno_5Ig" role="3cqZAp">
                      <node concept="2OqwBi" id="7WFkLno_5Ih" role="3clFbG">
                        <node concept="2OqwBi" id="7WFkLno_5Ii" role="2Oq$k0">
                          <node concept="2OqwBi" id="7WFkLno_5Ij" role="2Oq$k0">
                            <node concept="2OqwBi" id="7WFkLno_5Ik" role="2Oq$k0">
                              <node concept="1Q80Hx" id="7WFkLno_5Il" role="2Oq$k0" />
                              <node concept="liA8E" id="7WFkLno_5Im" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7WFkLno_5In" role="2OqNvi">
                              <ref role="37wK5l" to="cj4x:~EditorComponent.getStyleRegistry()" resolve="getStyleRegistry" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7WFkLno_5Io" role="2OqNvi">
                            <ref role="37wK5l" to="hox0:~StyleRegistry.getStyle(java.lang.String)" resolve="getStyle" />
                            <node concept="Xl_RD" id="7WFkLno_5Ip" role="37wK5m">
                              <property role="Xl_RC" value="HIGHLIGHTED_LABEL_IN_EDITOR" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7WFkLno_5Iq" role="2OqNvi">
                          <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                          <node concept="10M0yZ" id="7WFkLno_5Ir" role="37wK5m">
                            <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_BACKGROUND_COLOR" resolve="TEXT_BACKGROUND_COLOR" />
                            <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
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
        <node concept="3F0ifn" id="6QrrVJVmjFM" role="3EZMnx">
          <node concept="VPM3Z" id="34i8I8drdbe" role="3F10Kt" />
        </node>
        <node concept="3F0A7n" id="6QrrVJV4Wid" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;document rule's intentions here&gt;" />
          <ref role="1NtTu8" to="tpf8:6QrrVJUJLAA" resolve="description" />
        </node>
        <node concept="34QqEe" id="6QrrVJVBB4b" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="QzR6ThJimK">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:QzR6Tht7mj" resolve="TemplateSwitchMacro" />
    <node concept="3EZMnI" id="QzR6ThJinI" role="2wV5jI">
      <node concept="3F0ifn" id="QzR6ThJinJ" role="3EZMnx">
        <property role="3F0ifm" value="$SWITCH$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <node concept="11LMrY" id="5lAt$u$8JMZ" role="3F10Kt" />
        <node concept="3CIbrd" id="5lAt$u$8JN0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPRnO" id="6A$8asZeYeC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="6GI$fc4d7DY" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
      </node>
      <node concept="1HlG4h" id="3JOD7wdH8la" role="3EZMnx">
        <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
        <node concept="1HfYo3" id="3JOD7wdH8lc" role="1HlULh">
          <node concept="3TQlhw" id="3JOD7wdH8le" role="1Hhtcw">
            <node concept="3clFbS" id="3JOD7wdH8lg" role="2VODD2">
              <node concept="3clFbF" id="3JOD7wdHABH" role="3cqZAp">
                <node concept="2OqwBi" id="3JOD7wdHFbX" role="3clFbG">
                  <node concept="2OqwBi" id="3JOD7wdHAMR" role="2Oq$k0">
                    <node concept="pncrf" id="3JOD7wdHABG" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3JOD7wdHCYC" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3JOD7wdHG43" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3yfXC2" id="3JOD7wdH8SH" role="3F10Kt">
          <ref role="3ygfmf" to="tpf8:1vDgt48Nz5N" resolve="template" />
        </node>
        <node concept="11LMrY" id="5lAt$u$8JSM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3CIbrd" id="5lAt$u$8JSN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3JOD7wdH99d" role="pqm2j">
          <node concept="3clFbS" id="3JOD7wdH99e" role="2VODD2">
            <node concept="3clFbF" id="3JOD7wdH9sT" role="3cqZAp">
              <node concept="1Wc70l" id="3JOD7wdHsbU" role="3clFbG">
                <node concept="2OqwBi" id="3JOD7wdH$0V" role="3uHU7w">
                  <node concept="2OqwBi" id="3JOD7wdHx_B" role="2Oq$k0">
                    <node concept="2OqwBi" id="3JOD7wdHsJu" role="2Oq$k0">
                      <node concept="pncrf" id="3JOD7wdHs$k" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3JOD7wdHv5P" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3JOD7wdHyLj" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="3JOD7wdHAbz" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="3JOD7wdHemE" role="3uHU7B">
                  <node concept="2OqwBi" id="3JOD7wdH9C3" role="2Oq$k0">
                    <node concept="pncrf" id="3JOD7wdH9sS" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3JOD7wdHbU6" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" resolve="template" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="3JOD7wdHpHQ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="QzR6ThJinM" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="QzR6ThJinN" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="QzR6ThJirH" role="6VMZX">
      <node concept="3F0ifn" id="QzR6ThJirI" role="3EZMnx">
        <property role="3F0ifm" value="switch templates by input node" />
        <node concept="VPM3Z" id="QzR6ThJirJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="QzR6ThJirK" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="QzR6ThJirL" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="QzR6ThJirM" role="3EZMnx">
        <node concept="VPM3Z" id="QzR6ThJirN" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="QzR6ThJirO" role="3EZMnx">
        <node concept="PMmxH" id="1WfddY$VC$F" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="1WfddY$VC$G" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="3EZMnI" id="QzR6ThJis5" role="3EZMnx">
          <node concept="3F0ifn" id="QzR6ThJis6" role="3EZMnx">
            <property role="3F0ifm" value="use input" />
            <node concept="VPM3Z" id="QzR6ThJis7" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="QzR6ThJis8" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="QzR6ThJis9" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="QzR6ThJisa" role="3EZMnx">
            <property role="1$x2rV" value="&lt;current input node&gt;" />
            <ref role="1NtTu8" to="tpf8:QzR6Tht7mu" resolve="sourceNodeQuery" />
          </node>
          <node concept="VPM3Z" id="QzR6ThJisb" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="QzR6ThJisc" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="QzR6ThJisd" role="3EZMnx">
          <node concept="VPM3Z" id="QzR6ThJise" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="QzR6ThJisf" role="3EZMnx">
          <node concept="3F0ifn" id="QzR6ThJisg" role="3EZMnx">
            <property role="3F0ifm" value="template switch" />
            <node concept="VPM3Z" id="QzR6ThJish" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="QzR6ThJisi" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="QzR6ThJisj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="QzR6ThJiuo" role="3EZMnx">
            <node concept="1iCGBv" id="QzR6ThJiup" role="3EZMnx">
              <property role="1$x2rV" value="&lt;choose template&gt;" />
              <property role="1cu_pB" value="gtguBGO/2" />
              <ref role="1NtTu8" to="tpf8:1vDgt48Nz5N" resolve="template" />
              <node concept="1sVBvm" id="QzR6ThJiuq" role="1sWHZn">
                <node concept="3F0A7n" id="QzR6ThJiur" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <property role="1$x2rV" value="&lt;no name&gt;" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
                </node>
              </node>
            </node>
            <node concept="PMmxH" id="QzR6ThJius" role="3EZMnx">
              <ref role="PMmxG" node="1vDgt48Nz52" resolve="ITemplateCall_actualArguments" />
            </node>
            <node concept="l2Vlx" id="QzR6ThJiut" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="QzR6ThJisn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="QzR6ThJiso" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="QzR6ThJisp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="QzR6ThJisq" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="QzR6ThJisr" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="QzR6ThJiss" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="2EwDY2ImWhc">
    <property role="TrG5h" value="ExtensionsPlaceholder" />
    <ref role="1XX52x" to="tpf8:fWbUwhP" resolve="MappingConfiguration" />
    <node concept="3F0ifn" id="2EwDY2ImWhd" role="2wV5jI" />
  </node>
  <node concept="PKFIW" id="1WfddY$UDDx">
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="NodeMacro_label_inspector" />
    <ref role="1XX52x" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
    <node concept="3EZMnI" id="1WfddY$UJm$" role="2wV5jI">
      <node concept="3F0ifn" id="1WfddY$UJm_" role="3EZMnx">
        <property role="3F0ifm" value="mapping label" />
      </node>
      <node concept="3F0ifn" id="1WfddY$UJmA" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="1WfddY$UJmB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="1iCGBv" id="1WfddY$UJmC" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no label&gt;" />
        <ref role="1NtTu8" to="tpf8:hurW$JJ" resolve="mappingLabel" />
        <node concept="1sVBvm" id="1WfddY$UJmD" role="1sWHZn">
          <node concept="3F0A7n" id="1WfddY$UJmE" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="hHcji$G" resolve="mappingLabelReference" />
          </node>
        </node>
      </node>
      <node concept="VPM3Z" id="1WfddY$UJmF" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRfu4" id="1WfddY$UJmG" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="1WfddY$Vo$b">
    <property role="3GE5qa" value="macro" />
    <property role="TrG5h" value="AbstractMacro_comment_inspector" />
    <ref role="1XX52x" to="tpf8:hR0XTcV" resolve="AbstractMacro" />
    <node concept="3EZMnI" id="1WfddY$Vo$d" role="2wV5jI">
      <node concept="3F0ifn" id="1WfddY$Vo$e" role="3EZMnx">
        <property role="3F0ifm" value="comment" />
      </node>
      <node concept="3F0ifn" id="1WfddY$Vo$f" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="1WfddY$Vo$g" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="1WfddY$Vo$h" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;none&gt;" />
        <ref role="1k5W1q" node="7yIPXhIhYym" resolve="macroDescriptionText" />
        <ref role="1NtTu8" to="tpf8:2Pi793Do1U8" resolve="comment" />
      </node>
      <node concept="VPM3Z" id="1WfddY$Vo$i" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRfu4" id="1WfddY$Vo$j" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3mwbQJWA0rR">
    <property role="3GE5qa" value="checkpoint" />
    <ref role="1XX52x" to="tpf8:3mwbQJW_Z71" resolve="GeneratorDebug_Mappings" />
    <node concept="3F2HdR" id="3mwbQJWA0rT" role="2wV5jI">
      <ref role="1NtTu8" to="tpf8:3mwbQJWA0r5" resolve="labels" />
      <node concept="2iRkQZ" id="3mwbQJWA0rY" role="2czzBx" />
      <node concept="xShMh" id="3mwbQJWA1Ev" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3mwbQJWA1Fe">
    <property role="3GE5qa" value="checkpoint" />
    <ref role="1XX52x" to="tpf8:3mwbQJWA0r4" resolve="GeneratorDebug_LabelEntry" />
    <node concept="3EZMnI" id="2LhwpWcGWU8" role="2wV5jI">
      <node concept="3F0A7n" id="2LhwpWcGWUk" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:3mwbQJWA13D" resolve="label" />
      </node>
      <node concept="2iRkQZ" id="2LhwpWcGWU9" role="2iSdaV" />
      <node concept="3F2HdR" id="3mwbQJWA1Fg" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:3mwbQJWA13F" resolve="entries" />
        <node concept="2iRkQZ" id="3mwbQJWA1Fj" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3mwbQJWA1GV">
    <property role="3GE5qa" value="checkpoint" />
    <ref role="1XX52x" to="tpf8:3mwbQJWA0r7" resolve="GeneratorDebug_NodeMapEntry" />
    <node concept="3EZMnI" id="3mwbQJWA4aW" role="2wV5jI">
      <node concept="3EZMnI" id="Hduj2adaAe" role="3EZMnx">
        <node concept="3F1sOY" id="52s0aAoyvuK" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:52s0aAoyvtY" resolve="inputNode" />
        </node>
        <node concept="2iRfu4" id="Hduj2adaAf" role="2iSdaV" />
        <node concept="3F0ifn" id="Hduj2adaBb" role="3EZMnx" />
        <node concept="3F0ifn" id="Hduj2adaBt" role="3EZMnx">
          <property role="3F0ifm" value="origin:" />
        </node>
        <node concept="1iCGBv" id="3mwbQJWA4bw" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:3mwbQJWA0rr" resolve="inputOrigin" />
          <node concept="1sVBvm" id="3mwbQJWA4by" role="1sWHZn">
            <node concept="3SHvHV" id="3mwbQJWA4er" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="Hduj2acJjT" role="3EZMnx">
        <node concept="l2Vlx" id="Hduj2acJjU" role="2iSdaV" />
        <node concept="3F2HdR" id="3mwbQJWA4eA" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:3mwbQJWA0rl" resolve="outputNode" />
          <node concept="2iRkQZ" id="3mwbQJWA4eC" role="2czzBx" />
          <node concept="lj46D" id="Hduj2acJjR" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="Hduj2acJb4" role="3EZMnx" />
      <node concept="3F0ifn" id="Hduj2acJbp" role="3EZMnx" />
      <node concept="2iRkQZ" id="3mwbQJWA4aZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="Hduj2adtVr">
    <property role="3GE5qa" value="checkpoint" />
    <ref role="1XX52x" to="tpf8:3mwbQJWA0ri" resolve="GeneratorDebug_NodeRef" />
    <node concept="1iCGBv" id="Hduj2adtVt" role="2wV5jI">
      <ref role="1NtTu8" to="tpf8:3mwbQJWA0rj" resolve="node" />
      <node concept="1sVBvm" id="Hduj2adtVv" role="1sWHZn">
        <node concept="3SHvHV" id="Hduj2adtVA" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6uPxrhfjveW">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:6uPxrhfjpgV" resolve="DropAttributeRule" />
    <node concept="3EZMnI" id="6uPxrhfjveY" role="2wV5jI">
      <node concept="1iCGBv" id="6uPxrhfjveZ" role="3EZMnx">
        <property role="1cu_pB" value="gtguBGO/2" />
        <property role="1$x2rV" value="&lt;choose concept&gt;" />
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <ref role="1NtTu8" to="tpf8:6uPxrhfjpgY" resolve="applicableConcept" />
        <node concept="1sVBvm" id="6uPxrhfjvf0" role="1sWHZn">
          <node concept="3F0A7n" id="6uPxrhfjvf1" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6uPxrhfjvf2" role="3EZMnx">
        <property role="3F0ifm" value="condition" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
      </node>
      <node concept="3F1sOY" id="6uPxrhfjvf3" role="3EZMnx">
        <property role="1$x2rV" value="&lt;none&gt;" />
        <ref role="1NtTu8" to="tpf8:6uPxrhfjvcB" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="6uPxrhfjvf4" role="3EZMnx">
        <node concept="pkWqt" id="6uPxrhfjvf5" role="pqm2j">
          <node concept="3clFbS" id="6uPxrhfjvf6" role="2VODD2">
            <node concept="3clFbF" id="6uPxrhfjvf7" role="3cqZAp">
              <node concept="3clFbC" id="6uPxrhfjvf8" role="3clFbG">
                <node concept="10Nm6u" id="6uPxrhfjvf9" role="3uHU7w" />
                <node concept="2OqwBi" id="6uPxrhfjvfa" role="3uHU7B">
                  <node concept="pncrf" id="6uPxrhfjvfb" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3K84YJAC4iX" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:6uPxrhfjvcB" resolve="condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="6uPxrhfjvfd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="6uPxrhfjvfe" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1k7MCQBWS6m" role="6VMZX">
      <node concept="3F0ifn" id="1k7MCQBWS6n" role="3EZMnx">
        <property role="3F0ifm" value="inheritors" />
        <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
        <node concept="VPM3Z" id="1k7MCQBWS6o" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="1k7MCQBWS6p" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:1k7MCQBWRWu" resolve="applyToSubConcepts" />
      </node>
      <node concept="VPM3Z" id="1k7MCQBWS6q" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRfu4" id="1k7MCQBWS6r" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="52s0aAoyvvj">
    <property role="3GE5qa" value="checkpoint" />
    <ref role="1XX52x" to="tpf8:52s0aAoynkO" resolve="GeneratorDebug_InputNode" />
    <node concept="3EZMnI" id="52s0aAoyvvl" role="2wV5jI">
      <node concept="3F0A7n" id="52s0aAoyvvv" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:52s0aAoyvs2" resolve="presentation" />
      </node>
      <node concept="1iCGBv" id="52s0aAoyvvD" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:52s0aAoyvrZ" resolve="nodePtr" />
        <node concept="1sVBvm" id="52s0aAoyvvF" role="1sWHZn">
          <node concept="3SHvHV" id="52s0aAoyvvN" role="2wV5jI" />
        </node>
        <node concept="pkWqt" id="52s0aAoyvvQ" role="pqm2j">
          <node concept="3clFbS" id="52s0aAoyvvR" role="2VODD2">
            <node concept="3clFbF" id="52s0aAoyvHt" role="3cqZAp">
              <node concept="2OqwBi" id="52s0aAoywx4" role="3clFbG">
                <node concept="2OqwBi" id="52s0aAoyvS2" role="2Oq$k0">
                  <node concept="pncrf" id="52s0aAoyvHs" role="2Oq$k0" />
                  <node concept="3TrEf2" id="52s0aAoywaq" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:52s0aAoyvrZ" resolve="nodePtr" />
                  </node>
                </node>
                <node concept="3x8VRR" id="52s0aAoywWD" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="52s0aAoyvvo" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="52s0aAoyxoT" role="6VMZX">
      <node concept="3F0A7n" id="52s0aAo_8Ec" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:52s0aAo_87r" resolve="modelName" />
      </node>
      <node concept="1iCGBv" id="52s0aAoy_sE" role="3EZMnx">
        <ref role="1NtTu8" to="tpf8:52s0aAoyv2I" resolve="node" />
        <node concept="1sVBvm" id="52s0aAoy_sG" role="1sWHZn">
          <node concept="1HlG4h" id="52s0aAoyBOb" role="2wV5jI">
            <node concept="1HfYo3" id="52s0aAoyBOd" role="1HlULh">
              <node concept="3TQlhw" id="52s0aAoyBOf" role="1Hhtcw">
                <node concept="3clFbS" id="52s0aAoyBOh" role="2VODD2">
                  <node concept="3clFbF" id="52s0aAoyC6H" role="3cqZAp">
                    <node concept="3cpWs3" id="52s0aAoyQ71" role="3clFbG">
                      <node concept="1Xhbcc" id="52s0aAoyQ77" role="3uHU7w">
                        <property role="1XhdNS" value="]" />
                      </node>
                      <node concept="3cpWs3" id="52s0aAoyKCv" role="3uHU7B">
                        <node concept="1Xhbcc" id="52s0aAoyOwY" role="3uHU7B">
                          <property role="1XhdNS" value="[" />
                        </node>
                        <node concept="2YIFZM" id="$$Ni30VZW2" role="3uHU7w">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="52s0aAoyLYk" role="37wK5m">
                            <node concept="pncrf" id="$$Ni30VYB2" role="2Oq$k0" />
                            <node concept="3zqWPK" id="70OdufORgS_" role="2OqNvi">
                              <ref role="37wK5l" to="tpfh:39TODbGsIdf" resolve="getNodeId" />
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
      <node concept="2iRkQZ" id="52s0aAoyxoW" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p309x" id="1wEcoXjJG7T">
    <property role="TrG5h" value="templateCallArguments_Contribution" />
    <node concept="2kknPJ" id="1wEcoXjJG7U" role="1IG6uw">
      <ref role="2ZyFGn" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="3ft6gV" id="1wEcoXjJG7W" role="3ft7WO">
      <node concept="3ft6gW" id="1wEcoXjJG7X" role="3ft5RY">
        <node concept="3clFbS" id="1wEcoXjJG7Y" role="2VODD2">
          <node concept="3SKdUt" id="1c6WnGgeKef" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnVyw" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnVyx" role="1PaTwD">
                <property role="3oM_SC" value="under" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyy" role="1PaTwD">
                <property role="3oM_SC" value="template" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyz" role="1PaTwD">
                <property role="3oM_SC" value="call" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVy$" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVy_" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyA" role="1PaTwD">
                <property role="3oM_SC" value="under" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyB" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyC" role="1PaTwD">
                <property role="3oM_SC" value="CF." />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyD" role="1PaTwD">
                <property role="3oM_SC" value="There's" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyE" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyF" role="1PaTwD">
                <property role="3oM_SC" value="contribution" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyG" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyH" role="1PaTwD">
                <property role="3oM_SC" value="CFP" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyI" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyJ" role="1PaTwD">
                <property role="3oM_SC" value="adds" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyK" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyL" role="1PaTwD">
                <property role="3oM_SC" value="CFP" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyM" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyN" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyO" role="1PaTwD">
                <property role="3oM_SC" value="CF" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyP" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyQ" role="1PaTwD">
                <property role="3oM_SC" value="there's" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyR" role="1PaTwD">
                <property role="3oM_SC" value="one," />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyS" role="1PaTwD">
                <property role="3oM_SC" value="avoid" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyT" role="1PaTwD">
                <property role="3oM_SC" value="menu" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyU" role="1PaTwD">
                <property role="3oM_SC" value="item" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnVyV" role="1PaTwD">
                <property role="3oM_SC" value="duplication." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1wEcoXjJG7Z" role="3cqZAp">
            <node concept="1Wc70l" id="1c6WnGgeoTU" role="3clFbG">
              <node concept="2OqwBi" id="1c6WnGgez$J" role="3uHU7w">
                <node concept="2OqwBi" id="1c6WnGgepl0" role="2Oq$k0">
                  <node concept="3bvxqY" id="1c6WnGgep3W" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="1c6WnGgeJjE" role="2OqNvi">
                    <node concept="1xMEDy" id="1c6WnGgeJjG" role="1xVPHs">
                      <node concept="chp4Y" id="1c6WnGgeJjH" role="ri$Ld">
                        <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="1c6WnGgeJjI" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1c6WnGgeJLJ" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="1wEcoXjJG80" role="3uHU7B">
                <node concept="2OqwBi" id="1wEcoXjJG81" role="2Oq$k0">
                  <node concept="3bvxqY" id="1wEcoXjJG88" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="1wEcoXjJG83" role="2OqNvi">
                    <node concept="1xMEDy" id="1wEcoXjJG84" role="1xVPHs">
                      <node concept="chp4Y" id="1wEcoXjJG85" role="ri$Ld">
                        <ref role="cht4Q" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="1wEcoXjJG86" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1wEcoXjJG87" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft5Ry" id="1wEcoXjJG8z" role="3ft5RZ">
        <ref role="4PJHt" to="tpf8:gZ0H77W" resolve="TemplateFunctionParameter_sourceNode" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7u6$QPxIdGo">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:7u6$QPxIdFU" resolve="ReferenceReductionRule" />
    <node concept="3EZMnI" id="7u6$QPxIdGq" role="2wV5jI">
      <node concept="3EZMnI" id="7u6$QPxIdGx" role="3EZMnx">
        <node concept="3EZMnI" id="7u6$QPxMMM0" role="3EZMnx">
          <node concept="2iRfu4" id="7u6$QPxMMM1" role="2iSdaV" />
          <node concept="3F0ifn" id="7u6$QPxMN3T" role="3EZMnx">
            <property role="3F0ifm" value="link" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="1iCGBv" id="7u6$QPxIdZH" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:7u6$QPxIdFX" resolve="link" />
            <node concept="1sVBvm" id="7u6$QPxIdZJ" role="1sWHZn">
              <node concept="1HlG4h" id="7u6$QPxIe6b" role="2wV5jI">
                <node concept="VechU" id="3WrGJHz0qzy" role="3F10Kt">
                  <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                </node>
                <node concept="1HfYo3" id="7u6$QPxIe6d" role="1HlULh">
                  <node concept="3TQlhw" id="7u6$QPxIe6f" role="1Hhtcw">
                    <node concept="3clFbS" id="7u6$QPxIe6h" role="2VODD2">
                      <node concept="3clFbF" id="7u6$QPxIeeL" role="3cqZAp">
                        <node concept="2YIFZM" id="7u6$QPxIery" role="3clFbG">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                          <node concept="Xl_RD" id="7u6$QPxIpyn" role="37wK5m">
                            <property role="Xl_RC" value="%s:%s" />
                          </node>
                          <node concept="2OqwBi" id="7u6$QPxIt6z" role="37wK5m">
                            <node concept="1PxgMI" id="7u6$QPxIsyy" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="7u6$QPxIsHu" role="3oSUPX">
                                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                              </node>
                              <node concept="2OqwBi" id="7u6$QPxIrg3" role="1m5AlR">
                                <node concept="pncrf" id="7u6$QPxIqVu" role="2Oq$k0" />
                                <node concept="1mfA1w" id="7u6$QPxIrO9" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="7u6$QPxItwM" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7u6$QPxIuJu" role="37wK5m">
                            <node concept="pncrf" id="7u6$QPxIurG" role="2Oq$k0" />
                            <node concept="3TrcHB" id="7u6$QPxIvpP" role="2OqNvi">
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
          <node concept="VPM3Z" id="7u6$QPxNlia" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="sLrzzejH9i" role="3EZMnx">
          <node concept="2iRfu4" id="sLrzzejH9j" role="2iSdaV" />
          <node concept="3F0ifn" id="sLrzzejH7M" role="3EZMnx">
            <property role="3F0ifm" value="concept" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="1iCGBv" id="sLrzzejH9T" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:sLrzzejGPA" resolve="applicableConcept" />
            <node concept="1sVBvm" id="sLrzzejH9V" role="1sWHZn">
              <node concept="3F0A7n" id="sLrzzejHa6" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="7u6$QPxMN2Z" role="3EZMnx">
          <node concept="2iRfu4" id="7u6$QPxMN30" role="2iSdaV" />
          <node concept="3F0ifn" id="7u6$QPxIdZx" role="3EZMnx">
            <property role="3F0ifm" value="conditions" />
            <ref role="1k5W1q" node="hOEhO6y" resolve="GeneratorKeyWord" />
          </node>
          <node concept="3F1sOY" id="sLrzzejHiC" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:sLrzzejGPp" resolve="conditionFunction" />
          </node>
          <node concept="VPM3Z" id="7u6$QPxNlic" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="2EHx9g" id="7u6$QPxNli7" role="2iSdaV" />
        <node concept="VPM3Z" id="7u6$QPxLyY2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="7u6$QPxLyY3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="7u6$QPxLyY4" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
      </node>
      <node concept="3EZMnI" id="7u6$QPxIdZ4" role="3EZMnx">
        <node concept="VPM3Z" id="7u6$QPxIdZ6" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="7u6$QPxIdZk" role="2iSdaV" />
        <node concept="3F0ifn" id="7u6$QPxIdZ8" role="3EZMnx">
          <property role="3F0ifm" value="--&gt;" />
          <node concept="VPM3Z" id="2I_OWQOzHvE" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="2I_OWQOyQ0j" role="3EZMnx">
          <property role="1cu_pB" value="gtguBGO/2" />
          <ref role="1NtTu8" to="tpf8:2I_OWQOyPKU" resolve="referentFunction" />
        </node>
      </node>
      <node concept="3F0ifn" id="7u6$QPxIdQD" role="3EZMnx">
        <node concept="VPxyj" id="7u6$QPxIdQJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7u6$QPxIdQK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7u6$QPxIdGt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6JoULz$jqfJ">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="tpf8:6JoULz$jqfj" resolve="TemplateCall" />
    <node concept="3EZMnI" id="6JoULz$jqfL" role="2wV5jI">
      <node concept="l2Vlx" id="6JoULz$jqfM" role="2iSdaV" />
      <node concept="1iCGBv" id="6JoULz$jqfN" role="3EZMnx">
        <property role="1$x2rV" value="&lt;choose template&gt;" />
        <ref role="1NtTu8" to="tpf8:1vDgt48Nz5N" resolve="template" />
        <node concept="1sVBvm" id="6JoULz$jqfO" role="1sWHZn">
          <node concept="3F0A7n" id="6JoULz$jqfP" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1k5W1q" node="hoxIDwG" resolve="reference" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6JoULz$jqfQ" role="3EZMnx">
        <ref role="PMmxG" node="1vDgt48Nz52" resolve="ITemplateCall_actualArguments" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="UesZ_nZlyi">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:UesZ_nZ2HY" resolve="VarMacro2" />
    <node concept="3EZMnI" id="UesZ_nZlRy" role="2wV5jI">
      <node concept="3EZMnI" id="UesZ_nZlZw" role="3EZMnx">
        <node concept="2iRkQZ" id="UesZ_nZlZx" role="2iSdaV" />
        <node concept="3F0ifn" id="UesZ_nZlRz" role="3EZMnx">
          <property role="3F0ifm" value="$VAR$" />
          <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
          <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
          <node concept="11LMrY" id="UesZ_nZlR$" role="3F10Kt" />
          <node concept="3CIbrd" id="UesZ_nZlR_" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPRnO" id="6A$8asZd9xY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="A1WHu" id="UesZ_nZlRA" role="3vIgyS">
            <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
          </node>
        </node>
        <node concept="3EZMnI" id="UesZ_nZlZW" role="3EZMnx">
          <node concept="2iRfu4" id="1PTczGeLPUA" role="2iSdaV" />
          <node concept="3XFhqQ" id="1PTczGeN2CP" role="3EZMnx" />
          <node concept="3F2HdR" id="UesZ_nZlZN" role="3EZMnx">
            <ref role="1NtTu8" to="tpf8:UesZ_nZ2Id" resolve="variables" />
            <node concept="2iRkQZ" id="UesZ_nZlZP" role="2czzBx" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="UesZ_nZlRF" role="3EZMnx">
        <ref role="PMmxG" node="hfvraJP" resolve="NodeMacro_postfix" />
      </node>
      <node concept="2iRfu4" id="UesZ_nZlRG" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="UesZ_nZoDa" role="6VMZX">
      <node concept="3F0ifn" id="UesZ_nZoDb" role="3EZMnx">
        <property role="3F0ifm" value="declare variables" />
        <node concept="VPM3Z" id="UesZ_nZoDc" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="UesZ_nZoDd" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="UesZ_nZoDe" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="UesZ_nZoDf" role="3EZMnx">
        <node concept="VPM3Z" id="UesZ_nZoDg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="UesZ_nZoDh" role="3EZMnx">
        <node concept="PMmxH" id="UesZ_nZoDi" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$Vo$b" resolve="AbstractMacro_comment_inspector" />
        </node>
        <node concept="PMmxH" id="UesZ_nZoDj" role="3EZMnx">
          <ref role="PMmxG" node="1WfddY$UDDx" resolve="NodeMacro_label_inspector" />
        </node>
        <node concept="VPM3Z" id="UesZ_nZoDy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="UesZ_nZoDz" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="UesZ_nZoD$" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="UesZ_nZoD_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="UesZ_nZoBT">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:UesZ_nZ2I6" resolve="VarDeclaration" />
    <node concept="3F0A7n" id="UesZ_nZoBV" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <ref role="1k5W1q" node="5Ex$Jzqi8Mt" resolve="VariableRef" />
    </node>
    <node concept="3EZMnI" id="UesZ_nZoCb" role="6VMZX">
      <node concept="3EZMnI" id="UesZ_nZoCe" role="3EZMnx">
        <node concept="3F0ifn" id="UesZ_nZoCf" role="3EZMnx">
          <property role="3F0ifm" value="type" />
        </node>
        <node concept="3F0ifn" id="UesZ_nZoCg" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="UesZ_nZoCh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="UesZ_nZoCi" role="3EZMnx">
          <property role="1$x2rV" value="Object" />
          <property role="2ru_X1" value="true" />
          <ref role="1NtTu8" to="tpf8:UesZ_nZ2I9" resolve="type" />
          <node concept="1HlG4h" id="5oWc8mxWtwS" role="2ruayu">
            <ref role="1k5W1q" node="6t_vhrzKdF" resolve="Comment" />
            <node concept="1HfYo3" id="5oWc8mxWtwT" role="1HlULh">
              <node concept="3TQlhw" id="5oWc8mxWtwU" role="1Hhtcw">
                <node concept="3clFbS" id="5oWc8mxWtwV" role="2VODD2">
                  <node concept="3clFbF" id="5oWc8mxWtD_" role="3cqZAp">
                    <node concept="2OqwBi" id="5oWc8mxWySF" role="3clFbG">
                      <node concept="2OqwBi" id="5oWc8mxWuNt" role="2Oq$k0">
                        <node concept="2OqwBi" id="5oWc8mxWtRt" role="2Oq$k0">
                          <node concept="pncrf" id="5oWc8mxWtD$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5oWc8mxWuf5" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:UesZ_nZ2Ia" resolve="value" />
                          </node>
                        </node>
                        <node concept="3JvlWi" id="5oWc8mxWxIf" role="2OqNvi" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORgSB" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="UesZ_nZoCj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="UesZ_nZoCk" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="UesZ_nZoCl" role="3EZMnx">
        <node concept="3F0ifn" id="UesZ_nZoCm" role="3EZMnx">
          <property role="3F0ifm" value="value" />
        </node>
        <node concept="3F0ifn" id="UesZ_nZoCn" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="UesZ_nZoCo" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="UesZ_nZoCp" role="3EZMnx">
          <ref role="1NtTu8" to="tpf8:UesZ_nZ2Ia" resolve="value" />
        </node>
        <node concept="VPM3Z" id="UesZ_nZoCq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="UesZ_nZoCr" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="UesZ_nZoCs" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2EHx9g" id="UesZ_nZoCt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="UesZ_onNFR">
    <property role="3GE5qa" value="rule.argument" />
    <ref role="1XX52x" to="tpf8:UesZ_oiISf" resolve="TemplateArgumentVarRefExpression2" />
    <node concept="1iCGBv" id="UesZ_o1M7_" role="2wV5jI">
      <ref role="1NtTu8" to="tpf8:UesZ_oiISg" resolve="vardecl" />
      <node concept="1sVBvm" id="UesZ_o1M7A" role="1sWHZn">
        <node concept="3F0A7n" id="UesZ_o1M7B" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="5Ex$Jzqi8Mt" resolve="VariableRef" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="6GI$fc4bPsN">
    <ref role="aqKnT" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
    <node concept="22hDWg" id="xzgvwPPpkR" role="22hAXT">
      <property role="TrG5h" value="ReplaceNodeMacro" />
    </node>
    <node concept="1Qtc8_" id="6GI$fc4bPt6" role="IW6Ez">
      <node concept="3eGOoe" id="6GI$fc4bPta" role="1Qtc8$" />
      <node concept="3c8P5G" id="6GI$fc4bPA2" role="1Qtc8A">
        <node concept="2kknPJ" id="6GI$fc4bPAi" role="3c8P5H">
          <ref role="2ZyFGn" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
        </node>
        <node concept="3c8PGw" id="6GI$fc4bPA4" role="3c8PHt">
          <node concept="3clFbS" id="6GI$fc4bPA5" role="2VODD2">
            <node concept="3clFbF" id="6GI$fc4bQih" role="3cqZAp">
              <node concept="2OqwBi" id="6GI$fc4bQii" role="3clFbG">
                <node concept="7Obwk" id="6GI$fc4bRBz" role="2Oq$k0" />
                <node concept="1P9Npp" id="6GI$fc4bQik" role="2OqNvi">
                  <node concept="3c8USq" id="6GI$fc4bRys" role="1P9ThW" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3MQdgO2dk_f" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXnVyW" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXnVyX" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVyY" role="1PaTwD">
                  <property role="3oM_SC" value="condition" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVyZ" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz0" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz1" role="1PaTwD">
                  <property role="3oM_SC" value="prevent" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz2" role="1PaTwD">
                  <property role="3oM_SC" value="inspector" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz3" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz4" role="1PaTwD">
                  <property role="3oM_SC" value="opening" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz5" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz6" role="1PaTwD">
                  <property role="3oM_SC" value="VarMacro2" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz7" role="1PaTwD">
                  <property role="3oM_SC" value="nodes," />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz8" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVz9" role="1PaTwD">
                  <property role="3oM_SC" value="nothing" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVza" role="1PaTwD">
                  <property role="3oM_SC" value="valueable" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzb" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3MQdgO2dkVz" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXnVzc" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXnVzd" role="1PaTwD">
                  <property role="3oM_SC" value="inspector" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVze" role="1PaTwD">
                  <property role="3oM_SC" value="(I" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzf" role="1PaTwD">
                  <property role="3oM_SC" value="believe" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzg" role="1PaTwD">
                  <property role="3oM_SC" value="original" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzh" role="1PaTwD">
                  <property role="3oM_SC" value="motivation" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzi" role="1PaTwD">
                  <property role="3oM_SC" value="behind" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzj" role="1PaTwD">
                  <property role="3oM_SC" value="selection" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzk" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzl" role="1PaTwD">
                  <property role="3oM_SC" value="was" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzm" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzn" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzo" role="1PaTwD">
                  <property role="3oM_SC" value="cursor" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzp" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzq" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzr" role="1PaTwD">
                  <property role="3oM_SC" value="macro's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnVzs" role="1PaTwD">
                  <property role="3oM_SC" value="query)" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3MQdgO2dcCI" role="3cqZAp">
              <node concept="3clFbS" id="3MQdgO2dcCK" role="3clFbx">
                <node concept="3clFbF" id="6GI$fc4bQim" role="3cqZAp">
                  <node concept="2OqwBi" id="6GI$fc4bQin" role="3clFbG">
                    <node concept="3c8USq" id="6GI$fc4bRXl" role="2Oq$k0" />
                    <node concept="1OKiuA" id="6GI$fc4bQip" role="2OqNvi">
                      <node concept="1Q80Hx" id="6GI$fc4bQiq" role="lBI5i" />
                      <node concept="2B6iha" id="6GI$fc4bQir" role="lGT1i" />
                      <node concept="3cmrfG" id="6GI$fc4bQis" role="3dN3m$">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6GI$fc4bQit" role="3cqZAp">
                  <node concept="2OqwBi" id="6GI$fc4bQiu" role="3clFbG">
                    <node concept="1Q80Hx" id="6GI$fc4bQiv" role="2Oq$k0" />
                    <node concept="liA8E" id="6GI$fc4bQiw" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.openInspector()" resolve="openInspector" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3MQdgO2de$r" role="3clFbw">
                <node concept="2OqwBi" id="3MQdgO2dhmz" role="2Oq$k0">
                  <node concept="2OqwBi" id="3MQdgO2dcRU" role="2Oq$k0">
                    <node concept="3c8USq" id="3MQdgO2edot" role="2Oq$k0" />
                    <node concept="32TBzR" id="3MQdgO2ddau" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="3MQdgO2djZT" role="2OqNvi">
                    <node concept="chp4Y" id="3MQdgO2dk3i" role="v3oSu">
                      <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3MQdgO2dkqQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2jZ$Xn" id="6GI$fc4bQpU" role="W7ev7">
          <node concept="3clFbS" id="6GI$fc4bQpV" role="2VODD2">
            <node concept="3clFbF" id="6GI$fc4bQyJ" role="3cqZAp">
              <node concept="2OqwBi" id="6GI$fc4bQJ1" role="3clFbG">
                <node concept="7Obwk" id="6GI$fc4bQyI" role="2Oq$k0" />
                <node concept="1mfA1w" id="6GI$fc4bR3E" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="47y0FrqhJrd">
    <ref role="aqKnT" to="tpf8:$79JWCfbYa" resolve="GeneratorParameterReference" />
    <node concept="22hDWg" id="xzgvwPPpkS" role="22hAXT">
      <property role="TrG5h" value="GeneratorParameterReference_SmartReference" />
    </node>
    <node concept="3XHNnq" id="47y0FrqhJrb" role="3ft7WO">
      <ref role="3XGfJA" to="tpf8:$79JWCfbYc" resolve="declaration" />
      <node concept="1WAQ3h" id="47y0FrqhJrc" role="1WZ6D9">
        <node concept="3clFbS" id="47y0FrqhJqY" role="2VODD2">
          <node concept="3clFbF" id="47y0FrqhJqZ" role="3cqZAp">
            <node concept="3cpWs3" id="47y0FrqhJr0" role="3clFbG">
              <node concept="3cpWs3" id="47y0FrqhJr1" role="3uHU7B">
                <node concept="2OqwBi" id="47y0FrqhJr2" role="3uHU7B">
                  <node concept="1WAUZh" id="47y0FrqhJr9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="47y0FrqhJr4" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="47y0FrqhJr5" role="3uHU7w">
                  <property role="Xl_RC" value=" : " />
                </node>
              </node>
              <node concept="2OqwBi" id="47y0FrqhJr6" role="3uHU7w">
                <node concept="1WAUZh" id="47y0FrqhJra" role="2Oq$k0" />
                <node concept="3TrEf2" id="47y0FrqhJr8" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:$79JWCe2bl" resolve="type" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="382kZG" id="47y0FrqhJre" role="lGtFl" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG6A">
    <ref role="aqKnT" to="tpf8:h0jzcLb" resolve="RuleConsequence" />
    <node concept="22hDWj" id="xzgvwPPpkU" role="22hAXT" />
    <node concept="3ft6gV" id="1wEcoXjJG6C" role="3ft7WO">
      <node concept="2VfDsV" id="2jHvEnO$eHS" role="3ft5RZ">
        <node concept="1GpqWn" id="2jHvEnO$eI4" role="1Go12V">
          <node concept="3clFbS" id="2jHvEnO$eI5" role="2VODD2">
            <node concept="3clFbF" id="2jHvEnO$ePg" role="3cqZAp">
              <node concept="1Wc70l" id="2jHvEnO$hB5" role="3clFbG">
                <node concept="1Wc70l" id="2jHvEnO$h89" role="3uHU7B">
                  <node concept="1Wc70l" id="2jHvEnO$gE0" role="3uHU7B">
                    <node concept="17QLQc" id="2jHvEnO$f4H" role="3uHU7B">
                      <node concept="1GpqW3" id="2jHvEnO$ePf" role="3uHU7B" />
                      <node concept="35c_gC" id="2jHvEnO$ffA" role="3uHU7w">
                        <ref role="35c_gD" to="tpf8:h0j$LEX" resolve="DismissTopMappingRule" />
                      </node>
                    </node>
                    <node concept="17QLQc" id="2jHvEnO$gOt" role="3uHU7w">
                      <node concept="1GpqW3" id="2jHvEnO$gOu" role="3uHU7B" />
                      <node concept="35c_gC" id="2jHvEnO$gOv" role="3uHU7w">
                        <ref role="35c_gD" to="tpf8:h8gft7C" resolve="InlineTemplate_RuleConsequence" />
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="2jHvEnO$hj5" role="3uHU7w">
                    <node concept="1GpqW3" id="2jHvEnO$hj6" role="3uHU7B" />
                    <node concept="35c_gC" id="2jHvEnO$hj7" role="3uHU7w">
                      <ref role="35c_gD" to="tpf8:7I5RuObTjPG" resolve="InlineTemplateWithContext_RuleConsequence" />
                    </node>
                  </node>
                </node>
                <node concept="17QLQc" id="2jHvEnO$hMt" role="3uHU7w">
                  <node concept="1GpqW3" id="2jHvEnO$hMu" role="3uHU7B" />
                  <node concept="35c_gC" id="2jHvEnO$hMv" role="3uHU7w">
                    <ref role="35c_gD" to="tpf8:hwb5Tbr" resolve="AbandonInput_RuleConsequence" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft6gW" id="1wEcoXjJG6D" role="3ft5RY">
        <node concept="3clFbS" id="1wEcoXjJG6E" role="2VODD2">
          <node concept="3clFbF" id="1wEcoXjJG6F" role="3cqZAp">
            <node concept="2OqwBi" id="1wEcoXjJG6G" role="3clFbG">
              <node concept="3bvxqY" id="1wEcoXjJG6K" role="2Oq$k0" />
              <node concept="1mIQ4w" id="1wEcoXjJG6I" role="2OqNvi">
                <node concept="chp4Y" id="1wEcoXjJG6J" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:gZ0QclN" resolve="Weaving_MappingRule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft5Ry" id="1wEcoXjJG7f" role="3ft5RZ">
        <ref role="4PJHt" to="tpf8:h1fMGeL" resolve="WeaveEach_RuleConsequence" />
      </node>
    </node>
    <node concept="3ft6gV" id="2jHvEnO$jkp" role="3ft7WO">
      <node concept="3ft6gW" id="2jHvEnO$jle" role="3ft5RY">
        <node concept="3clFbS" id="2jHvEnO$jlf" role="2VODD2">
          <node concept="3clFbF" id="2jHvEnO$jvM" role="3cqZAp">
            <node concept="3fqX7Q" id="2jHvEnO$jIA" role="3clFbG">
              <node concept="2OqwBi" id="2jHvEnO$jIC" role="3fr31v">
                <node concept="3bvxqY" id="2jHvEnO$jID" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2jHvEnO$jIE" role="2OqNvi">
                  <node concept="chp4Y" id="2jHvEnO$jIF" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:gZ0QclN" resolve="Weaving_MappingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft6gV" id="1wEcoXjJG7j" role="3ft5RZ">
        <node concept="3ft6gW" id="1wEcoXjJG7k" role="3ft5RY">
          <node concept="3clFbS" id="1wEcoXjJG7l" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJG7m" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJG7n" role="3clFbG">
                <node concept="3bvxqY" id="1wEcoXjJG7r" role="2Oq$k0" />
                <node concept="1mIQ4w" id="1wEcoXjJG7p" role="2OqNvi">
                  <node concept="chp4Y" id="1wEcoXjJG7q" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:gZaamkM" resolve="Reduction_MappingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ft5Ry" id="1wEcoXjJG7Q" role="3ft5RZ">
          <ref role="4PJHt" to="tpf8:hp4YyVu" resolve="InlineSwitch_RuleConsequence" />
        </node>
      </node>
      <node concept="2VfDsV" id="1wEcoXjJG8A" role="3ft5RZ" />
    </node>
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8B">
    <ref role="aqKnT" to="tpf8:hf2cCeX" resolve="TemplateFunctionParameter_mainContextNode" />
    <node concept="22hDWj" id="xzgvwPPpkV" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8C">
    <ref role="aqKnT" to="tpf8:hp4YyVu" resolve="InlineSwitch_RuleConsequence" />
    <node concept="22hDWj" id="xzgvwPPpkW" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8D">
    <ref role="aqKnT" to="tpf8:gZ$xTLE" resolve="TemplateFunctionParameter_templateReferent" />
    <node concept="22hDWj" id="xzgvwPPpkX" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8E">
    <ref role="aqKnT" to="tpf8:gZzGtJF" resolve="TemplateFunctionParameter_templatePropertyValue" />
    <node concept="22hDWj" id="xzgvwPPpkY" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8F">
    <ref role="aqKnT" to="tpf8:hfr999a" resolve="TemplateFunctionParameter_parentOutputNode" />
    <node concept="22hDWj" id="xzgvwPPpkZ" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8G">
    <ref role="aqKnT" to="tpf8:h1fMGeL" resolve="WeaveEach_RuleConsequence" />
    <node concept="22hDWj" id="xzgvwPPpl0" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8H">
    <ref role="aqKnT" to="tpf8:fP7UvrK" resolve="PropertyMacro" />
    <node concept="22hDWj" id="xzgvwPPpl1" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8I">
    <ref role="aqKnT" to="tpf8:hfl3mJA" resolve="TemplateFunctionParameter_outputNode" />
    <node concept="22hDWj" id="xzgvwPPpl2" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="1wEcoXjJG8J">
    <ref role="aqKnT" to="tpf8:gZ0H77W" resolve="TemplateFunctionParameter_sourceNode" />
    <node concept="22hDWj" id="xzgvwPPpl3" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="47y0FrqhJrf">
    <ref role="aqKnT" to="tpf8:$79JWCfbYa" resolve="GeneratorParameterReference" />
    <node concept="22hDWj" id="xzgvwPPpl4" role="22hAXT" />
    <node concept="1s_PAr" id="47y0FrqhJrg" role="3ft7WO">
      <node concept="2kknPI" id="47y0FrqhJrh" role="1s_PAo">
        <ref role="2kkw0f" node="47y0FrqhJrd" resolve="GeneratorParameterReference_SmartReference" />
      </node>
    </node>
    <node concept="2VfDsV" id="47y0FrqhJri" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="4B_nWyeQseM">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="tpf8:4B_nWyeQsel" resolve="InsertCallSiteMacro" />
    <node concept="3EZMnI" id="4B_nWyeQseO" role="2wV5jI">
      <node concept="3F0ifn" id="4B_nWyeQseP" role="3EZMnx">
        <property role="3F0ifm" value="$CALL-SITE$" />
        <property role="1cu_pB" value="gtgu$YJ/1" />
        <ref role="1ERwB7" node="gZDQqLq" resolve="MacroSymbol_Actions" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="A1WHu" id="4B_nWyeQseQ" role="3vIgyS">
          <ref role="A1WHt" node="6GI$fc4bPsN" resolve="ReplaceNodeMacro" />
        </node>
        <node concept="VPRnO" id="6A$8asZeW7V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2SsqMj" id="4B_nWyeQsIA" role="3EZMnx">
        <ref role="1k5W1q" node="hG2jgB4" resolve="nodeUnderMacro" />
      </node>
      <node concept="2iRfu4" id="4B_nWyeQseS" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4B_nWyeQsHQ" role="6VMZX">
      <node concept="3F0ifn" id="4B_nWyeQsHW" role="3EZMnx">
        <property role="3F0ifm" value="insert a node template has been invoked at" />
        <node concept="VPM3Z" id="4B_nWyeQsHX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VechU" id="4B_nWyeQsHY" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
        </node>
        <node concept="30gYXW" id="4B_nWyeQsHZ" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0ifn" id="4B_nWyeQsI0" role="3EZMnx">
        <node concept="VPM3Z" id="4B_nWyeQsI1" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="4B_nWyeQsHR" role="2iSdaV" />
      <node concept="VPM3Z" id="4B_nWyeQsHU" role="3F10Kt" />
    </node>
  </node>
  <node concept="3ICUPy" id="34_HLrTtj04">
    <property role="3GE5qa" value="label" />
    <ref role="aqKnT" to="tpf8:hurT7o6" resolve="MappingLabelDeclaration" />
    <node concept="1Qtc8_" id="34_HLrTtj0T" role="IW6Ez">
      <node concept="3cWJ9i" id="34_HLrTtj0X" role="1Qtc8$">
        <node concept="CtIbL" id="34_HLrTx0bO" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="34_HLrTtj0Z" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="34_HLrTtj18" role="1Qtc8A">
        <node concept="1hCUdq" id="34_HLrTtj1a" role="1hCUd6">
          <node concept="3clFbS" id="34_HLrTtj1c" role="2VODD2">
            <node concept="3clFbF" id="34_HLrTtj7A" role="3cqZAp">
              <node concept="Xl_RD" id="34_HLrTtj7_" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="34_HLrTtj1e" role="IWgqQ">
          <node concept="3clFbS" id="34_HLrTtj1g" role="2VODD2">
            <node concept="3clFbF" id="34_HLrTtjcS" role="3cqZAp">
              <node concept="2OqwBi" id="34_HLrTtjMY" role="3clFbG">
                <node concept="2OqwBi" id="34_HLrTtjm2" role="2Oq$k0">
                  <node concept="7Obwk" id="34_HLrTtjcR" role="2Oq$k0" />
                  <node concept="3TrEf2" id="34_HLrTtjzZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:34_HLrTtgLm" resolve="sourceConcept2" />
                  </node>
                </node>
                <node concept="1AR3kn" id="34_HLrTtk7O" role="2OqNvi">
                  <node concept="1QN52j" id="34_HLrTtkaO" role="1AR3km">
                    <node concept="ZC_QK" id="34_HLrTtkaM" role="1QN54C">
                      <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="34_HLrTtj0R" role="22hAXT">
      <property role="TrG5h" value="SecondInput" />
    </node>
  </node>
  <node concept="22mcaB" id="1jlY2aid7tW">
    <property role="3GE5qa" value="macro.namespace" />
    <ref role="aqKnT" to="tpf8:2vVmcK3ii$G" resolve="LoopMacroNamespaceAccessor" />
    <node concept="3ft5Ry" id="1jlY2aihOCd" role="3ft7WO">
      <ref role="4PJHt" to="tpf8:2vVmcK3ii$G" resolve="LoopMacroNamespaceAccessor" />
    </node>
    <node concept="2F$Pav" id="1jlY2aid7tZ" role="3ft7WO">
      <node concept="3eGOop" id="1jlY2aid7Rc" role="2$S_pN">
        <node concept="ucgPf" id="1jlY2aid7Re" role="3aKz83">
          <node concept="3clFbS" id="1jlY2aid7Rg" role="2VODD2">
            <node concept="3clFbF" id="1jlY2aid8Mz" role="3cqZAp">
              <node concept="2pJPEk" id="1jlY2aid8Mx" role="3clFbG">
                <node concept="2pJPED" id="1jlY2aid8Qf" role="2pJPEn">
                  <ref role="2pJxaS" to="tpf8:2vVmcK3ii$G" resolve="LoopMacroNamespaceAccessor" />
                  <node concept="2pJxcG" id="3PMETvmeRFc" role="2pJxcM">
                    <ref role="2pJxcJ" to="tpf8:1jlY2aid0ux" resolve="variable" />
                    <node concept="WxPPo" id="3PMETvmeQ6i" role="28ntcv">
                      <node concept="2ZBlsa" id="3PMETvmeS3N" role="WxPPp" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="1jlY2aid919" role="upBLP">
          <node concept="uGdhv" id="1jlY2aid91W" role="16NL0q">
            <node concept="3clFbS" id="1jlY2aid91Y" role="2VODD2">
              <node concept="3clFbF" id="1jlY2aid96$" role="3cqZAp">
                <node concept="3cpWs3" id="1jlY2aihS4G" role="3clFbG">
                  <node concept="Xl_RD" id="1jlY2aihSe6" role="3uHU7w">
                    <property role="Xl_RC" value=" of enclosing $LOOP$" />
                  </node>
                  <node concept="2OqwBi" id="1jlY2aid9O1" role="3uHU7B">
                    <node concept="2ZBlsa" id="1jlY2aid9BY" role="2Oq$k0" />
                    <node concept="liA8E" id="1jlY2aid9Wi" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="1jlY2aihREp" role="upBLP">
          <node concept="uGdhv" id="1jlY2aihRGj" role="16NeZM">
            <node concept="3clFbS" id="1jlY2aihRGl" role="2VODD2">
              <node concept="3SKdUt" id="142DdPuYjzY" role="3cqZAp">
                <node concept="1PaTwC" id="142DdPuYjzZ" role="1aUNEU">
                  <node concept="3oM_SD" id="142DdPuYj$0" role="1PaTwD">
                    <property role="3oM_SC" value="No" />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$f" role="1PaTwD">
                    <property role="3oM_SC" value="dot" />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$j" role="1PaTwD">
                    <property role="3oM_SC" value="so" />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$o" role="1PaTwD">
                    <property role="3oM_SC" value="typing" />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$u" role="1PaTwD">
                    <property role="3oM_SC" value="LOOP." />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$_" role="1PaTwD">
                    <property role="3oM_SC" value="insert" />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$H" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="142DdPuYj$Q" role="1PaTwD">
                    <property role="3oM_SC" value="namespace" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1jlY2aihRGG" role="3cqZAp">
                <node concept="3cpWs3" id="1jlY2aihRGI" role="3clFbG">
                  <node concept="2OqwBi" id="1jlY2aihRGJ" role="3uHU7w">
                    <node concept="2ZBlsa" id="1jlY2aihRGK" role="2Oq$k0" />
                    <node concept="liA8E" id="1jlY2aihRGL" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1jlY2aihRGM" role="3uHU7B">
                    <property role="Xl_RC" value="LOOP " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ZThk1" id="1jlY2aid7R9" role="2ZBHrp">
        <ref role="2ZWj4r" to="tpf8:1jlY2aid0us" resolve="LoopMacroVariable" />
      </node>
      <node concept="2$S_p_" id="1jlY2aid7Ty" role="2$S_pT">
        <node concept="3clFbS" id="1jlY2aid7Tz" role="2VODD2">
          <node concept="3clFbF" id="1jlY2aid7Wz" role="3cqZAp">
            <node concept="2OqwBi" id="1jlY2aid8qw" role="3clFbG">
              <node concept="1XH99k" id="1jlY2aid7Wy" role="2Oq$k0">
                <ref role="1XH99l" to="tpf8:1jlY2aid0us" resolve="LoopMacroVariable" />
              </node>
              <node concept="2ViDtN" id="1jlY2aid8HX" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1jlY2aid8Y6" role="3ft7WO" />
    <node concept="22hDWj" id="1jlY2aid8K7" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="1jlY2aid0uE">
    <property role="3GE5qa" value="macro.namespace" />
    <ref role="1XX52x" to="tpf8:2vVmcK3ii$G" resolve="LoopMacroNamespaceAccessor" />
    <node concept="3EZMnI" id="1jlY2aid0uV" role="2wV5jI">
      <node concept="3F0ifn" id="142DdPv3S7u" role="3EZMnx">
        <property role="3F0ifm" value="LOOP" />
        <ref role="1k5W1q" node="hG2hEjs" resolve="macroStart" />
        <node concept="3k4GqR" id="142DdPv3S7H" role="3F10Kt">
          <node concept="3k4GqP" id="142DdPv3S7I" role="3k4GqO">
            <node concept="3clFbS" id="142DdPv3S7J" role="2VODD2">
              <node concept="3clFbF" id="142DdPv3S7K" role="3cqZAp">
                <node concept="2OqwBi" id="142DdPv3S7L" role="3clFbG">
                  <node concept="pncrf" id="142DdPv3S7M" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORgSD" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:2vVmcK3imJA" resolve="getTargetMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPxyj" id="142DdPv3S7O" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="1jlY2aid0vj" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <ref role="1k5W1q" to="tpen:hFDnyG9" resolve="Dot" />
      </node>
      <node concept="3F0A7n" id="1jlY2aid1xC" role="3EZMnx">
        <property role="1cu_pB" value="gtguBGO/firstEditableCell" />
        <ref role="1NtTu8" to="tpf8:1jlY2aid0ux" resolve="variable" />
      </node>
      <node concept="l2Vlx" id="1jlY2aid0vm" role="2iSdaV" />
    </node>
  </node>
</model>

