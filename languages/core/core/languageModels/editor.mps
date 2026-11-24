<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="b3bi" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.impl.cellActions(MPS.Editor/)" />
    <import index="wcxw" ref="r:b9f36c08-4a75-4513-9277-a390d3426e0f(jetbrains.mps.editor.runtime.impl.cellActions)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="q4oi" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellActions(MPS.Editor/)" />
    <import index="fulz" ref="r:6f792c44-2a5d-40e8-9f05-33f7d4ae26ec(jetbrains.mps.editor.runtime.completion)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="av1m" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.menus.style(MPS.Editor/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ngI" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="540685334799947899" name="jetbrains.mps.lang.editor.structure.SubstituteMenuVariableDeclaration" flags="ig" index="23wRS9">
        <child id="540685334802085316" name="initializerBlock" index="23DdeQ" />
      </concept>
      <concept id="540685334799947902" name="jetbrains.mps.lang.editor.structure.SubstituteMenuVariableReference" flags="ng" index="23wRSc" />
      <concept id="540685334802085318" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenuVariable_Initializer" flags="ig" index="23DdeO" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="8954657570916342474" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Node" flags="ig" index="2jZ$Xn" />
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="2491174914159318432" name="jetbrains.mps.lang.editor.structure.DominatesRecord" flags="lg" index="2lhJJ2" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="784421273959492606" name="nodeFunction" index="mvV$0" />
      </concept>
      <concept id="784421273959493166" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_TargetNode" flags="ig" index="mvVNg" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="4820515453818318288" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReferenceExpression" flags="ng" index="2pYGij">
        <reference id="4820515453818318891" name="hint" index="2pYH_C" />
      </concept>
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="7671875129586001610" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeSubstituteMenu" flags="ng" index="ulPW2">
        <reference id="6089045305656903095" name="link" index="2ks2v6" />
        <child id="6089045305656903122" name="menuReference" index="2ks2uz" />
      </concept>
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ngI" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
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
      <concept id="8383079901754291618" name="jetbrains.mps.lang.editor.structure.CellModel_NextEditor" flags="ng" index="B$lHz">
        <child id="8383079901754291620" name="removeHints" index="B$lH_" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
      </concept>
      <concept id="6150987479542522273" name="jetbrains.mps.lang.editor.structure.QueryHintsSpecification" flags="ig" index="2Hnlc$" />
      <concept id="7250830207897895674" name="jetbrains.mps.lang.editor.structure.CompletionCustomizationContextSpecificator_Concept" flags="ng" index="KNhPi">
        <reference id="9115396979021131941" name="conceptDeclaration" index="2RIln$" />
      </concept>
      <concept id="7250830207897895678" name="jetbrains.mps.lang.editor.structure.CompletionCustomizationConceptCreatingSpecificator" flags="ng" index="KNhPm" />
      <concept id="8449131619432941427" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super" flags="ng" index="L$LW2" />
      <concept id="4151393920374910634" name="jetbrains.mps.lang.editor.structure.StyleKey" flags="ng" index="2NdhxG" />
      <concept id="4151393920374910722" name="jetbrains.mps.lang.editor.structure.StyleKeyPack" flags="ng" index="2NdhB4">
        <child id="4151393920375014512" name="styleKey" index="2NdZaQ" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="2508844969609391941" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Concept" flags="in" index="SLHDK" />
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
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
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
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt">
        <child id="3383245079137422296" name="dominates" index="14Sbyx" />
      </concept>
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="3360401466585705291" name="jetbrains.mps.lang.editor.structure.CellModel_ContextAssistant" flags="ng" index="18a60v" />
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
      <concept id="7818019076292260194" name="jetbrains.mps.lang.editor.structure.CompletionStyling" flags="ig" index="3dRTYf">
        <child id="7250830207897909099" name="specificator" index="KNiz3" />
        <child id="772883491827840107" name="customizeFunction" index="3l$a4r" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="414384289274418283" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Group" flags="ng" index="3ft6gV">
        <child id="540685334802084769" name="variables" index="23Ddnj" />
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
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="772883491827578824" name="jetbrains.mps.lang.editor.structure.CompletionCustomization_CustomizeFunction" flags="ig" index="3lBaaS" />
      <concept id="772883491827671409" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameterCustomize_CompletionItemInformation" flags="ng" index="3lBNg1" />
      <concept id="772883491827671446" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameterCustomize_Style" flags="ng" index="3lBNjA" />
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="730181322658904464" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_IncludeMenu" flags="ng" index="1s_PAr">
        <child id="730181322658904467" name="menuReference" index="1s_PAo" />
      </concept>
      <concept id="8210508057161359081" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_DefaultWithFunction" flags="ng" index="3tp4HU">
        <child id="8210508057161359082" name="query" index="3tp4HT" />
      </concept>
      <concept id="8210508057161359084" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Concept" flags="in" index="3tp4HZ" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="5425882385312046132" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" flags="nn" index="1yR$tW" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
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
        <child id="5861024100072578575" name="addHints" index="3xwHhi" />
      </concept>
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
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
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
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="7776141288922801652" name="jetbrains.mps.lang.actions.structure.NF_Concept_NewInstance" flags="nn" index="q_SaT" />
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143224066846" name="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" flags="nn" index="HtI8k">
        <child id="1143224066849" name="insertedNode" index="HtI8F" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1181952871644" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSubConcepts" flags="nn" index="LSoRf">
        <child id="1182506816063" name="smodel" index="1iTxcG" />
      </concept>
      <concept id="1145573345940" name="jetbrains.mps.lang.smodel.structure.Node_GetAllSiblingsOperation" flags="nn" index="2TvwIu" />
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="6870613620391345436" name="jetbrains.mps.lang.smodel.structure.ConceptShortDescriptionOperation" flags="ng" index="3neUYN" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="24kQdi" id="4uZwTti3__3">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="tpck:4uZwTti3_$T" resolve="Attribute" />
    <node concept="3EZMnI" id="2ZnZLV$deS2" role="2wV5jI">
      <node concept="1HlG4h" id="2ZnZLV$dMjt" role="3EZMnx">
        <node concept="1HfYo3" id="2ZnZLV$dMjv" role="1HlULh">
          <node concept="3TQlhw" id="2ZnZLV$dMjx" role="1Hhtcw">
            <node concept="3clFbS" id="2ZnZLV$dMjz" role="2VODD2">
              <node concept="3clFbF" id="2ZnZLV$dN1y" role="3cqZAp">
                <node concept="2OqwBi" id="2ZnZLV$dXyn" role="3clFbG">
                  <node concept="liA8E" id="66vxhH6hqhA" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                  <node concept="2OqwBi" id="66vxhH6hqh$" role="2Oq$k0">
                    <node concept="2yIwOk" id="66vxhH6hqh_" role="2OqNvi" />
                    <node concept="pncrf" id="2ZnZLV$dN1x" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2ZnZLV$dfh7" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="11L4FC" id="2ZnZLV$e8Nl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="2ZnZLV$e5dA" role="3F10Kt">
          <property role="1413C4" value="attribute_brace" />
        </node>
        <node concept="Vb9p2" id="2ZnZLV$e4UR" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2ZnZLV$deS3" role="2iSdaV" />
      <node concept="2SsqMj" id="4uZwTti3BDS" role="3EZMnx" />
      <node concept="3F0ifn" id="2ZnZLV$dfhf" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="2ZnZLV$e5dV" role="3F10Kt">
          <property role="1413C4" value="attribute_brace" />
        </node>
        <node concept="Vb9p2" id="2ZnZLV$e58P" role="3F10Kt" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="5K$8XMPc9pW">
    <property role="TrG5h" value="ShortDescriptionEditorComponent" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1HlG4h" id="5K$8XMPcbrm" role="2wV5jI">
      <node concept="1HfYo3" id="5K$8XMPcbrn" role="1HlULh">
        <node concept="3TQlhw" id="5K$8XMPcbro" role="1Hhtcw">
          <node concept="3clFbS" id="5K$8XMPcbrp" role="2VODD2">
            <node concept="3clFbF" id="5K$8XMPcbuq" role="3cqZAp">
              <node concept="2OqwBi" id="5K$8XMPcc5k" role="3clFbG">
                <node concept="2OqwBi" id="66vxhH69X9$" role="2Oq$k0">
                  <node concept="2yIwOk" id="66vxhH69X9_" role="2OqNvi" />
                  <node concept="pncrf" id="5K$8XMPcbup" role="2Oq$k0" />
                </node>
                <node concept="3neUYN" id="66vxhH69X9A" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2wZex4PafBj">
    <property role="TrG5h" value="alias" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1HlG4h" id="2wZex4PafBl" role="2wV5jI">
      <node concept="1HfYo3" id="2wZex4PafBm" role="1HlULh">
        <node concept="3TQlhw" id="2wZex4PafBn" role="1Hhtcw">
          <node concept="3clFbS" id="2wZex4PafBo" role="2VODD2">
            <node concept="3clFbF" id="78qF3pqaZ9v" role="3cqZAp">
              <node concept="2OqwBi" id="78qF3pqb02d" role="3clFbG">
                <node concept="2OqwBi" id="78qF3pqaZiM" role="2Oq$k0">
                  <node concept="pncrf" id="78qF3pqaZ9t" role="2Oq$k0" />
                  <node concept="2yIwOk" id="78qF3pqaZAF" role="2OqNvi" />
                </node>
                <node concept="3n3YKJ" id="78qF3pqb0x$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="4W7TaJQkr65" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VPxyj" id="4ybvZlFTCGV" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2SqB2G" id="1USvB3ZvF7B" role="2SqHTX">
        <property role="TrG5h" value="ALIAS_EDITOR_COMPONENT" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="_mhz_5U$MB">
    <property role="3GE5qa" value="types" />
    <ref role="1XX52x" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
    <node concept="1QoScp" id="7s1FVdAuPDv" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="7s1FVdAuPDy" role="3e4ffs">
        <node concept="3clFbS" id="7s1FVdAuPD$" role="2VODD2">
          <node concept="3clFbF" id="7s1FVdAv7Fe" role="3cqZAp">
            <node concept="2OqwBi" id="7s1FVdAvbvD" role="3clFbG">
              <node concept="2OqwBi" id="7s1FVdAwUDL" role="2Oq$k0">
                <node concept="2OqwBi" id="7s1FVdAv9zQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="7s1FVdAv7Se" role="2Oq$k0">
                    <node concept="pncrf" id="7s1FVdAv7Fc" role="2Oq$k0" />
                    <node concept="2TvwIu" id="7s1FVdAv8ks" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="7s1FVdAvaU6" role="2OqNvi">
                    <node concept="chp4Y" id="7s1FVdAvb97" role="v3oSu">
                      <ref role="cht4Q" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                    </node>
                  </node>
                </node>
                <node concept="3QWeyG" id="7s1FVdAwV71" role="2OqNvi">
                  <node concept="2ShNRf" id="7s1FVdAwVhk" role="576Qk">
                    <node concept="2HTt$P" id="7s1FVdAwVO8" role="2ShVmc">
                      <node concept="3Tqbb2" id="7s1FVdAwW20" role="2HTBi0">
                        <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                      </node>
                      <node concept="pncrf" id="7s1FVdAwWvH" role="2HTEbv" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="7s1FVdAvc11" role="2OqNvi">
                <node concept="1bVj0M" id="7s1FVdAvc13" role="23t8la">
                  <node concept="3clFbS" id="7s1FVdAvc14" role="1bW5cS">
                    <node concept="3clFbF" id="7s1FVdAvcx5" role="3cqZAp">
                      <node concept="3y3z36" id="7s1FVdA_jTF" role="3clFbG">
                        <node concept="10Nm6u" id="7s1FVdA_kmf" role="3uHU7w" />
                        <node concept="2OqwBi" id="7s1FVdA_ePH" role="3uHU7B">
                          <node concept="2JrnkZ" id="7s1FVdA_ezi" role="2Oq$k0">
                            <node concept="37vLTw" id="7s1FVdAvcx4" role="2JrQYb">
                              <ref role="3cqZAo" node="5W7E4fV0W1X" resolve="it" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7s1FVdA_fQN" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="355D3s" id="7s1FVdA_g92" role="37wK5m">
                              <ref role="355D3t" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                              <ref role="355D3u" to="tpck:7s1FVdAuNzV" resolve="comment" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W1X" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W1Y" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="7s1FVdAuPKV" role="1QoS34">
        <ref role="PMmxG" node="7s1FVdAuPxz" resolve="SuppressedErrorComponent" />
      </node>
      <node concept="2SsqMj" id="7s1FVdAuPKZ" role="1QoVPY" />
    </node>
    <node concept="1QoScp" id="7s1FVdAvES7" role="6VMZX">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="7s1FVdAvES8" role="3e4ffs">
        <node concept="3clFbS" id="7s1FVdAvES9" role="2VODD2">
          <node concept="3clFbF" id="7s1FVdA_kOS" role="3cqZAp">
            <node concept="2OqwBi" id="7s1FVdA_kOT" role="3clFbG">
              <node concept="2OqwBi" id="7s1FVdA_kOU" role="2Oq$k0">
                <node concept="2OqwBi" id="7s1FVdA_kOV" role="2Oq$k0">
                  <node concept="2OqwBi" id="7s1FVdA_kOW" role="2Oq$k0">
                    <node concept="pncrf" id="7s1FVdA_kOX" role="2Oq$k0" />
                    <node concept="2TvwIu" id="7s1FVdA_kOY" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="7s1FVdA_kOZ" role="2OqNvi">
                    <node concept="chp4Y" id="7s1FVdA_kP0" role="v3oSu">
                      <ref role="cht4Q" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                    </node>
                  </node>
                </node>
                <node concept="3QWeyG" id="7s1FVdA_kP1" role="2OqNvi">
                  <node concept="2ShNRf" id="7s1FVdA_kP2" role="576Qk">
                    <node concept="2HTt$P" id="7s1FVdA_kP3" role="2ShVmc">
                      <node concept="3Tqbb2" id="7s1FVdA_kP4" role="2HTBi0">
                        <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                      </node>
                      <node concept="pncrf" id="7s1FVdA_kP5" role="2HTEbv" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="7s1FVdA_kP6" role="2OqNvi">
                <node concept="1bVj0M" id="7s1FVdA_kP7" role="23t8la">
                  <node concept="3clFbS" id="7s1FVdA_kP8" role="1bW5cS">
                    <node concept="3clFbF" id="7s1FVdA_kP9" role="3cqZAp">
                      <node concept="3y3z36" id="7s1FVdA_kPa" role="3clFbG">
                        <node concept="10Nm6u" id="7s1FVdA_kPb" role="3uHU7w" />
                        <node concept="2OqwBi" id="7s1FVdA_kPc" role="3uHU7B">
                          <node concept="2JrnkZ" id="7s1FVdA_kPd" role="2Oq$k0">
                            <node concept="37vLTw" id="7s1FVdA_kPe" role="2JrQYb">
                              <ref role="3cqZAo" node="5W7E4fV0W1Z" resolve="it" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7s1FVdA_kPf" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="355D3s" id="7s1FVdA_kPg" role="37wK5m">
                              <ref role="355D3t" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                              <ref role="355D3u" to="tpck:7s1FVdAuNzV" resolve="comment" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W1Z" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W20" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="7s1FVdAwjnV" role="1QoS34">
        <property role="1$x2rV" value="&lt;any error&gt;" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpck:26xHjLJaBbH" resolve="filter" />
      </node>
      <node concept="18a60v" id="7s1FVdAB7qe" role="1QoVPY">
        <node concept="VPM3Z" id="7s1FVdAB7qf" role="3F10Kt" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="37EzmTDC95l">
    <property role="TrG5h" value="ImplementationRemovedInStubMessage" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="37EzmTDC9aV" role="2wV5jI">
      <property role="3F0ifm" value="/* compiled code */" />
      <ref role="1k5W1q" node="hshO_Yc" resolve="StubImplementation" />
    </node>
  </node>
  <node concept="V5hpn" id="2BgJggCahQS">
    <property role="TrG5h" value="BaseStyles" />
    <node concept="14StLt" id="hshO_Yc" role="V601i">
      <property role="TrG5h" value="StubImplementation" />
      <node concept="3Xmtl4" id="3HPX3xRcOHI" role="3F10Kt">
        <node concept="1wgc9g" id="2BgJggCaJyt" role="3XvnJa">
          <ref role="1wgcnl" node="2BgJggCaJy6" />
        </node>
      </node>
      <node concept="2lhJJ2" id="4IkflqMjM1L" role="14Sbyx" />
    </node>
  </node>
  <node concept="2NdhB4" id="2BgJggCaJdK">
    <property role="TrG5h" value="BaseKeyPack" />
    <node concept="2NdhxG" id="2BgJggCaJy6" role="2NdZaQ">
      <property role="Xl_RC" value="LINE_COMMENT" />
    </node>
    <node concept="2NdhxG" id="16zq0OE7Du4" role="2NdZaQ">
      <property role="Xl_RC" value="KEYWORD" />
    </node>
  </node>
  <node concept="PKFIW" id="1GOfCi7TDXl">
    <property role="TrG5h" value="VirtualPackage" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3EZMnI" id="1GOfCi7TEno" role="2wV5jI">
      <node concept="l2Vlx" id="1GOfCi7TEnp" role="2iSdaV" />
      <node concept="3F0ifn" id="1GOfCi7TEns" role="3EZMnx">
        <property role="3F0ifm" value="virtual package:" />
      </node>
      <node concept="3F0A7n" id="1GOfCi7TEnk" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="none" />
        <ref role="1NtTu8" to="tpck:hnGE5uv" resolve="virtualPackage" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5op3ZHNnIJA">
    <property role="3GE5qa" value="attributes.editing" />
    <ref role="1XX52x" to="tpck:Fg1jLUUh_d" resolve="SideTransformInfo" />
    <node concept="2SsqMj" id="Fg1jLUYiLQ" role="2wV5jI" />
  </node>
  <node concept="2ABfQD" id="3Rc6kd0K$RP">
    <property role="TrG5h" value="BaseEditorContextHints" />
    <node concept="2BsEeg" id="3Rc6kd0K$RQ" role="2ABdcP">
      <property role="TrG5h" value="comment" />
      <property role="2BUmq6" value="comment" />
    </node>
    <node concept="2BsEeg" id="VnA7RS5fnE" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="include_deprecated_elements" />
      <property role="2BUmq6" value="Include deprecated elements" />
    </node>
    <node concept="2BsEeg" id="3YRgRgnTV5p" role="2ABdcP">
      <property role="2BUmq6" value="reflectiveEditor" />
      <property role="TrG5h" value="reflectiveEditor" />
      <node concept="asaX9" id="1wmCOkk8BJN" role="lGtFl" />
    </node>
  </node>
  <node concept="24kQdi" id="2ETBKOyksop">
    <property role="3GE5qa" value="attributes.editing" />
    <ref role="1XX52x" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
    <node concept="3EZMnI" id="43t9AOLcZPi" role="2wV5jI">
      <ref role="1ERwB7" node="5FzO4t9jA_b" resolve="BaseCommentAttribute_Actions" />
      <node concept="l2Vlx" id="43t9AOLcZPj" role="2iSdaV" />
      <node concept="3F1sOY" id="4NfTi62PfCN" role="3EZMnx">
        <ref role="1ERwB7" node="5FzO4t9jA_b" resolve="BaseCommentAttribute_Actions" />
        <ref role="1NtTu8" to="tpck:2ETBKOyieyt" resolve="commentedNode" />
        <node concept="2w$q5c" id="5FKjex9hEng" role="3xwHhi">
          <node concept="2aJ2om" id="5FKjex9hEnh" role="2w$qW5">
            <ref role="2$4xQ3" node="3Rc6kd0K$RQ" resolve="comment" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5FzO4t9jA_b">
    <property role="3GE5qa" value="attributes.editing" />
    <property role="TrG5h" value="BaseCommentAttribute_Actions" />
    <ref role="1h_SK9" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
    <node concept="1hA7zw" id="6cD7K5bTsay" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="jK8Ss" id="iVU$Vdi8lE" role="jK8aL">
        <node concept="3clFbS" id="iVU$Vdi8lF" role="2VODD2">
          <node concept="3clFbF" id="iVU$VdiaLV" role="3cqZAp">
            <node concept="2OqwBi" id="iVU$VdihbP" role="3clFbG">
              <node concept="2ShNRf" id="iVU$VdiaLT" role="2Oq$k0">
                <node concept="1pGfFk" id="iVU$Vdigj7" role="2ShVmc">
                  <ref role="37wK5l" to="wcxw:6xSPNrOme6o" resolve="CellAction_DeleteSimple" />
                  <node concept="0IXxy" id="iVU$VdigNh" role="37wK5m" />
                  <node concept="Rm8GO" id="7DH9HgSGW0V" role="37wK5m">
                    <ref role="Rm8GQ" to="q4oi:~CellAction_DeleteNode$DeleteDirection.FORWARD" resolve="FORWARD" />
                    <ref role="1Px2BO" to="q4oi:~CellAction_DeleteNode$DeleteDirection" resolve="CellAction_DeleteNode.DeleteDirection" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="iVU$VdihzB" role="2OqNvi">
                <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.canExecute(jetbrains.mps.openapi.editor.EditorContext)" resolve="canExecute" />
                <node concept="1Q80Hx" id="iVU$VdihI6" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1hAIg9" id="6cD7K5bTsaz" role="1hA7z_">
        <node concept="3clFbS" id="6cD7K5bTsa$" role="2VODD2">
          <node concept="3clFbF" id="iVU$VdihW4" role="3cqZAp">
            <node concept="2OqwBi" id="iVU$VdihW5" role="3clFbG">
              <node concept="2ShNRf" id="iVU$VdihW6" role="2Oq$k0">
                <node concept="1pGfFk" id="iVU$VdihW7" role="2ShVmc">
                  <ref role="37wK5l" to="wcxw:6xSPNrOme6o" resolve="CellAction_DeleteSimple" />
                  <node concept="0IXxy" id="iVU$VdihW8" role="37wK5m" />
                  <node concept="Rm8GO" id="7DH9HgSGWjx" role="37wK5m">
                    <ref role="1Px2BO" to="q4oi:~CellAction_DeleteNode$DeleteDirection" resolve="CellAction_DeleteNode.DeleteDirection" />
                    <ref role="Rm8GQ" to="q4oi:~CellAction_DeleteNode$DeleteDirection.FORWARD" resolve="FORWARD" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="iVU$VdihW9" role="2OqNvi">
                <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.execute(jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                <node concept="1Q80Hx" id="iVU$VdihWa" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="7DH9HgSGWmf" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <node concept="1hAIg9" id="7DH9HgSGWmg" role="1hA7z_">
        <node concept="3clFbS" id="7DH9HgSGWmh" role="2VODD2">
          <node concept="3clFbF" id="7DH9HgSGWmi" role="3cqZAp">
            <node concept="2OqwBi" id="7DH9HgSGWmj" role="3clFbG">
              <node concept="2ShNRf" id="7DH9HgSGWmk" role="2Oq$k0">
                <node concept="1pGfFk" id="7DH9HgSGWml" role="2ShVmc">
                  <ref role="37wK5l" to="wcxw:6xSPNrOme6o" resolve="CellAction_DeleteSimple" />
                  <node concept="0IXxy" id="7DH9HgSGWmm" role="37wK5m" />
                  <node concept="Rm8GO" id="7DH9HgSGWQO" role="37wK5m">
                    <ref role="Rm8GQ" to="q4oi:~CellAction_DeleteNode$DeleteDirection.BACKWARD" resolve="BACKWARD" />
                    <ref role="1Px2BO" to="q4oi:~CellAction_DeleteNode$DeleteDirection" resolve="CellAction_DeleteNode.DeleteDirection" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7DH9HgSGWmo" role="2OqNvi">
                <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.execute(jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                <node concept="1Q80Hx" id="7DH9HgSGWmp" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="7DH9HgSGWmq" role="jK8aL">
        <node concept="3clFbS" id="7DH9HgSGWmr" role="2VODD2">
          <node concept="3clFbF" id="7DH9HgSGWms" role="3cqZAp">
            <node concept="2OqwBi" id="7DH9HgSGWmt" role="3clFbG">
              <node concept="2ShNRf" id="7DH9HgSGWmu" role="2Oq$k0">
                <node concept="1pGfFk" id="7DH9HgSGWmv" role="2ShVmc">
                  <ref role="37wK5l" to="wcxw:6xSPNrOme6o" resolve="CellAction_DeleteSimple" />
                  <node concept="0IXxy" id="7DH9HgSGWmw" role="37wK5m" />
                  <node concept="Rm8GO" id="7DH9HgSGWCf" role="37wK5m">
                    <ref role="Rm8GQ" to="q4oi:~CellAction_DeleteNode$DeleteDirection.BACKWARD" resolve="BACKWARD" />
                    <ref role="1Px2BO" to="q4oi:~CellAction_DeleteNode$DeleteDirection" resolve="CellAction_DeleteNode.DeleteDirection" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7DH9HgSGWmy" role="2OqNvi">
                <ref role="37wK5l" to="q4oi:~CellAction_DeleteNode.canExecute(jetbrains.mps.openapi.editor.EditorContext)" resolve="canExecute" />
                <node concept="1Q80Hx" id="7DH9HgSGWmz" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="3VARyd8XcQl">
    <property role="TrG5h" value="BaseStyleSheet" />
    <node concept="14StLt" id="3VARyd8XcQs" role="V601i">
      <property role="TrG5h" value="Comment" />
      <node concept="2lhJJ2" id="3VARyd8XcQy" role="14Sbyx" />
      <node concept="3Xmtl4" id="3VARyd8XcSu" role="3F10Kt">
        <node concept="1wgc9g" id="3VARyd8XcS$" role="3XvnJa">
          <ref role="1wgcnl" node="2BgJggCaJy6" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7hmFG5jQPyy">
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3EZMnI" id="7hmFG5jQPBs" role="2wV5jI">
      <ref role="1k5W1q" node="3VARyd8XcQs" resolve="Comment" />
      <node concept="3F0ifn" id="7hmFG5jQPBz" role="3EZMnx">
        <property role="3F0ifm" value="/*" />
        <ref role="1ERwB7" node="3kgLzc6vspC" resolve="BaseConcept_comment_Actions" />
        <node concept="2SqB2G" id="6EsXCvAxypg" role="2SqHTX">
          <property role="TrG5h" value="LEFT_COMMENT_ANCHOR" />
        </node>
        <node concept="11LMrY" id="3VARyd8Xg0r" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7hmFG5jQPBv" role="2iSdaV" />
      <node concept="B$lHz" id="5DmTQrINSQQ" role="3EZMnx">
        <node concept="2w$q5c" id="5FS0W4V2r66" role="B$lH_">
          <node concept="2aJ2om" id="5FS0W4V2r67" role="2w$qW5">
            <ref role="2$4xQ3" node="3Rc6kd0K$RQ" resolve="comment" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3VARyd8X5Rv" role="3EZMnx">
        <property role="3F0ifm" value="*/" />
        <ref role="1ERwB7" node="3kgLzc6vspC" resolve="BaseConcept_comment_Actions" />
        <node concept="2SqB2G" id="6EsXCvAxypj" role="2SqHTX">
          <property role="TrG5h" value="RIGHT_COMMENT_ANCHOR" />
        </node>
        <node concept="11L4FC" id="3VARyd8Xg26" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="7hmFG5jQPBm" role="CpUAK">
      <ref role="2$4xQ3" node="3Rc6kd0K$RQ" resolve="comment" />
    </node>
    <node concept="B$lHz" id="7B8ZS0iLo7m" role="6VMZX">
      <node concept="2w$q5c" id="7B8ZS0iLo7n" role="B$lH_">
        <node concept="2aJ2om" id="7B8ZS0iLo7o" role="2w$qW5">
          <ref role="2$4xQ3" node="3Rc6kd0K$RQ" resolve="comment" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3kgLzc6vspC">
    <property role="TrG5h" value="BaseConcept_comment_Actions" />
    <ref role="1h_SK9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1hA7zw" id="3kgLzc6vspD" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <node concept="1hAIg9" id="3kgLzc6vspE" role="1hA7z_">
        <node concept="3clFbS" id="3kgLzc6vspF" role="2VODD2">
          <node concept="3clFbF" id="3kgLzc6vsIA" role="3cqZAp">
            <node concept="2OqwBi" id="3kgLzc6vu4R" role="3clFbG">
              <node concept="2ShNRf" id="3kgLzc6vsI$" role="2Oq$k0">
                <node concept="1pGfFk" id="3kgLzc6vtXI" role="2ShVmc">
                  <ref role="37wK5l" to="b3bi:~CellAction_Uncomment.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="CellAction_Uncomment" />
                  <node concept="2OqwBi" id="3kgLzc6vtZU" role="37wK5m">
                    <node concept="0IXxy" id="3kgLzc6vtXS" role="2Oq$k0" />
                    <node concept="1mfA1w" id="3kgLzc6vu3_" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3kgLzc6vu8d" role="2OqNvi">
                <ref role="37wK5l" to="b3bi:~AbstractCommentAction.execute(jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                <node concept="1Q80Hx" id="3kgLzc6vu8Q" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3kgLzc6vspJ" role="jK8aL">
        <node concept="3clFbS" id="3kgLzc6vspK" role="2VODD2">
          <node concept="3clFbF" id="3kgLzc6vsqP" role="3cqZAp">
            <node concept="2OqwBi" id="3kgLzc6vs_c" role="3clFbG">
              <node concept="2OqwBi" id="3kgLzc6vss$" role="2Oq$k0">
                <node concept="0IXxy" id="3kgLzc6vsqO" role="2Oq$k0" />
                <node concept="1mfA1w" id="3kgLzc6vsxc" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="3kgLzc6vsE1" role="2OqNvi">
                <node concept="chp4Y" id="3kgLzc6vsGd" role="cj9EA">
                  <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="3kgLzc6vu9I" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="3kgLzc6vu9J" role="1hA7z_">
        <node concept="3clFbS" id="3kgLzc6vu9K" role="2VODD2">
          <node concept="3clFbF" id="3kgLzc6vufL" role="3cqZAp">
            <node concept="2OqwBi" id="3kgLzc6vufM" role="3clFbG">
              <node concept="2ShNRf" id="3kgLzc6vufN" role="2Oq$k0">
                <node concept="1pGfFk" id="3kgLzc6vufO" role="2ShVmc">
                  <ref role="37wK5l" to="b3bi:~CellAction_Uncomment.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="CellAction_Uncomment" />
                  <node concept="2OqwBi" id="3kgLzc6vufP" role="37wK5m">
                    <node concept="0IXxy" id="3kgLzc6vufQ" role="2Oq$k0" />
                    <node concept="1mfA1w" id="3kgLzc6vufR" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3kgLzc6vufS" role="2OqNvi">
                <ref role="37wK5l" to="b3bi:~AbstractCommentAction.execute(jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                <node concept="1Q80Hx" id="3kgLzc6vufT" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3kgLzc6vud3" role="jK8aL">
        <node concept="3clFbS" id="3kgLzc6vud4" role="2VODD2">
          <node concept="3clFbF" id="3kgLzc6vud5" role="3cqZAp">
            <node concept="2OqwBi" id="3kgLzc6vud6" role="3clFbG">
              <node concept="2OqwBi" id="3kgLzc6vud7" role="2Oq$k0">
                <node concept="0IXxy" id="3kgLzc6vud8" role="2Oq$k0" />
                <node concept="1mfA1w" id="3kgLzc6vud9" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="3kgLzc6vuda" role="2OqNvi">
                <node concept="chp4Y" id="3kgLzc6vudb" role="cj9EA">
                  <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2Jn37$FZlEb">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="B$lHz" id="2Jn37$FZlMc" role="2wV5jI">
      <node concept="2Hnlc$" id="2Jn37$FZlMf" role="B$lH_">
        <node concept="3clFbS" id="2Jn37$FZlMg" role="2VODD2">
          <node concept="3cpWs8" id="2Jn37$FZocj" role="3cqZAp">
            <node concept="3cpWsn" id="2Jn37$FZock" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="2Jn37$FZocf" role="1tU5fm">
                <node concept="17QB3L" id="2Jn37$FZoci" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="2Jn37$FZocl" role="33vP2m">
                <node concept="Tc6Ow" id="2Jn37$FZocm" role="2ShVmc">
                  <node concept="17QB3L" id="2Jn37$FZocn" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2Jn37$FZlNk" role="3cqZAp">
            <node concept="3clFbS" id="2Jn37$FZlNl" role="3clFbx">
              <node concept="3clFbF" id="2Jn37$FZopm" role="3cqZAp">
                <node concept="2OqwBi" id="2Jn37$FZoyW" role="3clFbG">
                  <node concept="37vLTw" id="2Jn37$FZopl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Jn37$FZock" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="2Jn37$FZpcz" role="2OqNvi">
                    <node concept="2pYGij" id="2Jn37$FZpou" role="25WWJ7">
                      <ref role="2pYH_C" node="3Rc6kd0K$RQ" resolve="comment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2EnYce" id="2Jn37$G05IY" role="3clFbw">
              <node concept="2OqwBi" id="2Jn37$FZmoS" role="2Oq$k0">
                <node concept="2JrnkZ" id="2Jn37$FZmn8" role="2Oq$k0">
                  <node concept="pncrf" id="2Jn37$FZlOx" role="2JrQYb" />
                </node>
                <node concept="liA8E" id="2Jn37$FZmrX" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
              <node concept="liA8E" id="2Jn37$FZmA7" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="359W_D" id="2Jn37$FZmBN" role="37wK5m">
                  <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2Jn37$FZpzC" role="3cqZAp">
            <node concept="37vLTw" id="2Jn37$FZpAE" role="3cqZAk">
              <ref role="3cqZAo" node="2Jn37$FZock" resolve="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="2Jn37$FZlMa" role="CpUAK">
      <ref role="2$4xQ3" node="3Rc6kd0K$RQ" resolve="comment" />
    </node>
    <node concept="B$lHz" id="7B8ZS0iM6tn" role="6VMZX">
      <node concept="2Hnlc$" id="7B8ZS0iM6to" role="B$lH_">
        <node concept="3clFbS" id="7B8ZS0iM6tp" role="2VODD2">
          <node concept="3cpWs8" id="7B8ZS0iM6tq" role="3cqZAp">
            <node concept="3cpWsn" id="7B8ZS0iM6tr" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="7B8ZS0iM6ts" role="1tU5fm">
                <node concept="17QB3L" id="7B8ZS0iM6tt" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="7B8ZS0iM6tu" role="33vP2m">
                <node concept="Tc6Ow" id="7B8ZS0iM6tv" role="2ShVmc">
                  <node concept="17QB3L" id="7B8ZS0iM6tw" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7B8ZS0iM6tx" role="3cqZAp">
            <node concept="3clFbS" id="7B8ZS0iM6ty" role="3clFbx">
              <node concept="3clFbF" id="7B8ZS0iM6tz" role="3cqZAp">
                <node concept="2OqwBi" id="7B8ZS0iM6t$" role="3clFbG">
                  <node concept="37vLTw" id="7B8ZS0iM6t_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7B8ZS0iM6tr" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="7B8ZS0iM6tA" role="2OqNvi">
                    <node concept="2pYGij" id="7B8ZS0iM6tB" role="25WWJ7">
                      <ref role="2pYH_C" node="3Rc6kd0K$RQ" resolve="comment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2EnYce" id="7B8ZS0iM6tC" role="3clFbw">
              <node concept="2OqwBi" id="7B8ZS0iM6tD" role="2Oq$k0">
                <node concept="2JrnkZ" id="7B8ZS0iM6tE" role="2Oq$k0">
                  <node concept="pncrf" id="7B8ZS0iM6tF" role="2JrQYb" />
                </node>
                <node concept="liA8E" id="7B8ZS0iM6tG" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
              <node concept="liA8E" id="7B8ZS0iM6tH" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="359W_D" id="7B8ZS0iM6tI" role="37wK5m">
                  <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7B8ZS0iM6tJ" role="3cqZAp">
            <node concept="37vLTw" id="7B8ZS0iM6tK" role="3cqZAk">
              <ref role="3cqZAo" node="7B8ZS0iM6tr" resolve="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="29O0pTxSzke">
    <property role="3GE5qa" value="attributes.migration" />
    <ref role="1XX52x" to="tpck:29O0pTxSzj9" resolve="ReviewMigration_old" />
    <node concept="3EZMnI" id="29O0pTxS_rT" role="2wV5jI">
      <node concept="3EZMnI" id="29O0pTxS_KG" role="3EZMnx">
        <ref role="1ERwB7" node="7YdSxSAfUuX" resolve="ReviewMigration_old_ActionMap" />
        <node concept="2iRfu4" id="29O0pTxS_KH" role="2iSdaV" />
        <node concept="3F0ifn" id="29O0pTxS__X" role="3EZMnx">
          <property role="3F0ifm" value="@Review" />
          <ref role="1ERwB7" node="7YdSxSAfUuX" resolve="ReviewMigration_old_ActionMap" />
          <node concept="VechU" id="29O0pTxS_A3" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
        </node>
        <node concept="3EZMnI" id="29O0pTxS_L6" role="3EZMnx">
          <node concept="VPM3Z" id="29O0pTxS_L8" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="29O0pTxS_Li" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <node concept="VechU" id="29O0pTxS_LI" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11LMrY" id="7FVQM9jqU$F" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="29O0pTxS_LA" role="3EZMnx">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:29O0pTxSzjm" resolve="reasonShort" />
            <node concept="VechU" id="29O0pTxS_LK" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="VPxyj" id="22ReF3aTeHB" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="29O0pTxS_Lo" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <node concept="VechU" id="29O0pTxS_LM" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11L4FC" id="7FVQM9jqU$M" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="29O0pTxS_Lb" role="2iSdaV" />
          <node concept="pkWqt" id="29O0pTxSB0y" role="pqm2j">
            <node concept="3clFbS" id="29O0pTxSB0z" role="2VODD2">
              <node concept="3clFbF" id="29O0pTxSB7G" role="3cqZAp">
                <node concept="2OqwBi" id="29O0pTxSCmr" role="3clFbG">
                  <node concept="2OqwBi" id="29O0pTxSBp4" role="2Oq$k0">
                    <node concept="pncrf" id="29O0pTxSB7F" role="2Oq$k0" />
                    <node concept="3TrcHB" id="29O0pTxSBI9" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:29O0pTxSzjm" resolve="reasonShort" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="29O0pTxSD6r" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="7YdSxSAfZIN" role="3EZMnx">
        <node concept="VLuvy" id="29O0pTxS_rE" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
        <node concept="3vyZuw" id="29O0pTxS_rM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="29O0pTxS_K6" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="29O0pTxUv_b" role="6VMZX">
      <node concept="2iRkQZ" id="29O0pTxUv_c" role="2iSdaV" />
      <node concept="3EZMnI" id="29O0pTxUvIO" role="3EZMnx">
        <node concept="2iRfu4" id="29O0pTxUvIP" role="2iSdaV" />
        <node concept="3F0ifn" id="29O0pTxUvIF" role="3EZMnx">
          <property role="3F0ifm" value="Migration:" />
        </node>
        <node concept="3F0A7n" id="29O0pTxUvIY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:29O0pTxUvrE" resolve="readableId" />
        </node>
      </node>
      <node concept="3F0A7n" id="29O0pTxSMqz" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:29O0pTxSzjh" resolve="todo" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="7YdSxSAfUuX">
    <property role="TrG5h" value="ReviewMigration_old_ActionMap" />
    <property role="3GE5qa" value="attributes.migration" />
    <ref role="1h_SK9" to="tpck:29O0pTxSzj9" resolve="ReviewMigration_old" />
    <node concept="1hA7zw" id="7YdSxSAfUuY" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="7YdSxSAfUuZ" role="1hA7z_">
        <node concept="3clFbS" id="7YdSxSAfUv0" role="2VODD2">
          <node concept="3clFbJ" id="14TMHtHeeg_" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHeegA" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHeegB" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHeegC" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHeegD" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHeegE" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHeegF" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7YdSxSAfUv1" role="3cqZAp">
            <node concept="2OqwBi" id="7YdSxSAfUvn" role="3clFbG">
              <node concept="0IXxy" id="7YdSxSAfUv2" role="2Oq$k0" />
              <node concept="3YRAZt" id="7YdSxSAfUvt" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6ofa_0tLI5V">
    <property role="3GE5qa" value="attributes.editing.comment" />
    <ref role="1XX52x" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
    <node concept="3EZMnI" id="6ofa_0tLI5X" role="2wV5jI">
      <node concept="3F1sOY" id="6ofa_0tLI67" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="tpck:3emwrjqjJ6X" resolve="content" />
        <node concept="3F0ifn" id="6ofa_0tLI6a" role="2ruayu">
          <ref role="1ERwB7" node="3xhyJYa31cw" resolve="BasePlaceholderEmptyCell_ActionMap" />
          <node concept="A1WHu" id="3xhyJYa4Coh" role="3vIgyS">
            <ref role="A1WHt" node="3xhyJYa45YD" resolve="BasePlaceholder_TransformationMenu" />
          </node>
          <node concept="VPxyj" id="5wR$28Jm1JL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6ofa_0tLI60" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="3xhyJYa31cw">
    <property role="3GE5qa" value="attributes.editing.comment" />
    <property role="TrG5h" value="BasePlaceholderEmptyCell_ActionMap" />
    <ref role="1h_SK9" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
    <node concept="1hA7zw" id="3xhyJYa3zb9" role="1h_SK8">
      <property role="1hAc7j" value="3xhyJYa3zm9/insert_placeholder_action_id" />
      <node concept="1hAIg9" id="3xhyJYa3zba" role="1hA7z_">
        <node concept="3clFbS" id="3xhyJYa3zbb" role="2VODD2">
          <node concept="3cpWs8" id="3xhyJYa3V31" role="3cqZAp">
            <node concept="3cpWsn" id="3xhyJYa3V32" role="3cpWs9">
              <property role="TrG5h" value="placeholder" />
              <node concept="3Tqbb2" id="3xhyJYa3V2Z" role="1tU5fm">
                <ref role="ehGHo" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
              </node>
              <node concept="2ShNRf" id="3xhyJYa3V33" role="33vP2m">
                <node concept="3zrR0B" id="3xhyJYa3V34" role="2ShVmc">
                  <node concept="3Tqbb2" id="3xhyJYa3V35" role="3zrR0E">
                    <ref role="ehGHo" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3xhyJYa40Ig" role="3cqZAp">
            <node concept="2OqwBi" id="3xhyJYa40S3" role="3clFbG">
              <node concept="37vLTw" id="3xhyJYa40Ie" role="2Oq$k0">
                <ref role="3cqZAo" node="3xhyJYa3V32" resolve="placeholder" />
              </node>
              <node concept="3zqWPK" id="70OdufORh5l" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:BpxLfMirzM" resolve="setLink" />
                <node concept="2OqwBi" id="70OdufORh5n" role="37wK5m">
                  <node concept="0IXxy" id="70OdufORh5o" role="2Oq$k0" />
                  <node concept="3zqWPK" id="47jP3PjRlfa" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3xhyJYa3zbk" role="3cqZAp">
            <node concept="2OqwBi" id="3xhyJYa3zbl" role="3clFbG">
              <node concept="0IXxy" id="3xhyJYa3zbm" role="2Oq$k0" />
              <node concept="HtI8k" id="3xhyJYa3zbn" role="2OqNvi">
                <node concept="37vLTw" id="3xhyJYa3V7A" role="HtI8F">
                  <ref role="3cqZAo" node="3xhyJYa3V32" resolve="placeholder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="qmyvdpRlT8" role="1h_SK8">
      <property role="1hAc7j" value="qmyvdpNLIC/insert_placeholder_before_action_id" />
      <node concept="1hAIg9" id="qmyvdpRlT9" role="1hA7z_">
        <node concept="3clFbS" id="qmyvdpRlTa" role="2VODD2">
          <node concept="3cpWs8" id="qmyvdpRlTb" role="3cqZAp">
            <node concept="3cpWsn" id="qmyvdpRlTc" role="3cpWs9">
              <property role="TrG5h" value="placeholder" />
              <node concept="3Tqbb2" id="qmyvdpRlTd" role="1tU5fm">
                <ref role="ehGHo" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
              </node>
              <node concept="2ShNRf" id="qmyvdpRlTe" role="33vP2m">
                <node concept="3zrR0B" id="qmyvdpRlTf" role="2ShVmc">
                  <node concept="3Tqbb2" id="qmyvdpRlTg" role="3zrR0E">
                    <ref role="ehGHo" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="qmyvdpRlTh" role="3cqZAp">
            <node concept="2OqwBi" id="qmyvdpRlTi" role="3clFbG">
              <node concept="37vLTw" id="qmyvdpRlTj" role="2Oq$k0">
                <ref role="3cqZAo" node="qmyvdpRlTc" resolve="placeholder" />
              </node>
              <node concept="3zqWPK" id="70OdufORh5s" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:BpxLfMirzM" resolve="setLink" />
                <node concept="2OqwBi" id="70OdufORh5u" role="37wK5m">
                  <node concept="0IXxy" id="70OdufORh5v" role="2Oq$k0" />
                  <node concept="3zqWPK" id="47jP3PjRlfc" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="qmyvdpRlTo" role="3cqZAp">
            <node concept="2OqwBi" id="qmyvdpRlTp" role="3clFbG">
              <node concept="0IXxy" id="qmyvdpRlTq" role="2Oq$k0" />
              <node concept="HtI8k" id="qmyvdpRlTr" role="2OqNvi">
                <node concept="37vLTw" id="qmyvdpRlTs" role="HtI8F">
                  <ref role="3cqZAo" node="qmyvdpRlTc" resolve="placeholder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7z7TTo_Ah2Y">
    <property role="3GE5qa" value="attributes.migration" />
    <ref role="1XX52x" to="tpck:7z7TTo_Agmh" resolve="MigrationDataAnnotation" />
    <node concept="2SsqMj" id="7z7TTo_Ah30" role="2wV5jI" />
  </node>
  <node concept="1h_SRR" id="7z7TTo_FCne">
    <property role="TrG5h" value="ReviewMigration_ActionMap" />
    <property role="3GE5qa" value="attributes.migration" />
    <ref role="1h_SK9" to="tpck:7z7TTo_CSS6" resolve="ReviewMigration" />
    <node concept="1hA7zw" id="7z7TTo_FCnf" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="7z7TTo_FCng" role="1hA7z_">
        <node concept="3clFbS" id="7z7TTo_FCnh" role="2VODD2">
          <node concept="3clFbJ" id="7z7TTo_FCni" role="3cqZAp">
            <node concept="3clFbS" id="7z7TTo_FCnj" role="3clFbx">
              <node concept="3cpWs6" id="7z7TTo_FCnk" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7z7TTo_FCnl" role="3clFbw">
              <node concept="0IXxy" id="7z7TTo_FCnm" role="2Oq$k0" />
              <node concept="2xy62i" id="7z7TTo_FCnn" role="2OqNvi">
                <node concept="1Q80Hx" id="7z7TTo_FCno" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7z7TTo_FCnp" role="3cqZAp">
            <node concept="2OqwBi" id="7z7TTo_FCnq" role="3clFbG">
              <node concept="0IXxy" id="7z7TTo_FCnr" role="2Oq$k0" />
              <node concept="3YRAZt" id="7z7TTo_FCns" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7z7TTo_FCnt">
    <property role="3GE5qa" value="attributes.migration" />
    <ref role="1XX52x" to="tpck:7z7TTo_CSS6" resolve="ReviewMigration" />
    <node concept="3EZMnI" id="7z7TTo_FCnu" role="2wV5jI">
      <node concept="3EZMnI" id="7z7TTo_FCnv" role="3EZMnx">
        <ref role="1ERwB7" node="7z7TTo_FCne" resolve="ReviewMigration_ActionMap" />
        <node concept="2iRfu4" id="7z7TTo_FCnw" role="2iSdaV" />
        <node concept="3F0ifn" id="7z7TTo_FCnx" role="3EZMnx">
          <property role="3F0ifm" value="@Review" />
          <ref role="1ERwB7" node="7z7TTo_FCne" resolve="ReviewMigration_ActionMap" />
          <node concept="VechU" id="7z7TTo_FCny" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
        </node>
        <node concept="3EZMnI" id="7z7TTo_FCnz" role="3EZMnx">
          <node concept="VPM3Z" id="7z7TTo_FCn$" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="7z7TTo_FCn_" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <node concept="VechU" id="7z7TTo_FCnA" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11LMrY" id="7z7TTo_FCnB" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="7z7TTo_FCnC" role="3EZMnx">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:7z7TTo_CSS7" resolve="reasonShort" />
            <node concept="VechU" id="7z7TTo_FCnD" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="VPxyj" id="7z7TTo_FCnE" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="7z7TTo_FCnF" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <node concept="VechU" id="7z7TTo_FCnG" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11L4FC" id="7z7TTo_FCnH" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="7z7TTo_FCnI" role="2iSdaV" />
          <node concept="pkWqt" id="7z7TTo_FCnJ" role="pqm2j">
            <node concept="3clFbS" id="7z7TTo_FCnK" role="2VODD2">
              <node concept="3clFbF" id="7z7TTo_FCnL" role="3cqZAp">
                <node concept="2OqwBi" id="7z7TTo_FCnM" role="3clFbG">
                  <node concept="2OqwBi" id="7z7TTo_FCnN" role="2Oq$k0">
                    <node concept="pncrf" id="7z7TTo_FCnO" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7z7TTo_FCnP" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:7z7TTo_CSS7" resolve="reasonShort" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="7z7TTo_FCnQ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="7z7TTo_FCnR" role="3EZMnx">
        <node concept="VLuvy" id="7z7TTo_FCnS" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
        <node concept="3vyZuw" id="7z7TTo_FCnT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7z7TTo_FCnU" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7z7TTo_FCnV" role="6VMZX">
      <node concept="2iRkQZ" id="7z7TTo_FCnW" role="2iSdaV" />
      <node concept="3EZMnI" id="7z7TTo_FCnX" role="3EZMnx">
        <node concept="2iRfu4" id="7z7TTo_FCnY" role="2iSdaV" />
        <node concept="3F0ifn" id="7z7TTo_FCnZ" role="3EZMnx">
          <property role="3F0ifm" value="Migration:" />
        </node>
        <node concept="3F0A7n" id="7z7TTo_FCo0" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:7z7TTo_CSS9" resolve="readableId" />
        </node>
      </node>
      <node concept="3F0A7n" id="7z7TTo_FCo1" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:7z7TTo_CSS8" resolve="todo" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6lWnjhKubdL">
    <property role="3GE5qa" value="types" />
    <ref role="1XX52x" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
    <node concept="2aJ2om" id="6lWnjhKuess" role="CpUAK">
      <ref role="2$4xQ3" node="6lWnjhKuesq" resolve="ShowSuppressedErrors" />
    </node>
    <node concept="PMmxH" id="7s1FVdAuPxJ" role="2wV5jI">
      <ref role="PMmxG" node="7s1FVdAuPxz" resolve="SuppressedErrorComponent" />
    </node>
    <node concept="3F0A7n" id="7s1FVdAwtoX" role="6VMZX">
      <ref role="1NtTu8" to="tpck:26xHjLJaBbH" resolve="filter" />
    </node>
  </node>
  <node concept="2ABfQD" id="6lWnjhKuesp">
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="SuppressedHints" />
    <node concept="2BsEeg" id="6lWnjhKuesq" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ShowSuppressedErrors" />
      <property role="2BUmq6" value="Show Suppressed Errors" />
    </node>
  </node>
  <node concept="1h_SRR" id="6lWnjhKuvnL">
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="StopErrorSuppressing" />
    <ref role="1h_SK9" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
    <node concept="1hA7zw" id="6lWnjhKuvnM" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="6lWnjhKuvnN" role="1hA7z_">
        <node concept="3clFbS" id="6lWnjhKuvnO" role="2VODD2">
          <node concept="3clFbJ" id="2dHt7HYYEC_" role="3cqZAp">
            <node concept="3clFbS" id="2dHt7HYYECB" role="3clFbx">
              <node concept="3clFbF" id="6lWnjhKuvo1" role="3cqZAp">
                <node concept="2OqwBi" id="6lWnjhKuvx3" role="3clFbG">
                  <node concept="0IXxy" id="6lWnjhKuvo0" role="2Oq$k0" />
                  <node concept="3YRAZt" id="6lWnjhKuvZ5" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2dHt7HYYNpN" role="3clFbw">
              <node concept="2OqwBi" id="2dHt7HYYF2x" role="3fr31v">
                <node concept="0IXxy" id="2dHt7HYYERs" role="2Oq$k0" />
                <node concept="2xy62i" id="2dHt7HYYFgT" role="2OqNvi">
                  <node concept="1Q80Hx" id="2dHt7HYYFhs" role="2xHN3q" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="7s1FVdAuPxz">
    <property role="TrG5h" value="SuppressedErrorComponent" />
    <property role="3GE5qa" value="types" />
    <ref role="1XX52x" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
    <node concept="3EZMnI" id="7s1FVdAuPx$" role="2wV5jI">
      <node concept="3EZMnI" id="7s1FVdAuPx_" role="3EZMnx">
        <node concept="VPM3Z" id="7s1FVdAuPxA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7s1FVdAuPxB" role="3EZMnx">
          <property role="3F0ifm" value="//" />
          <ref role="1k5W1q" node="3VARyd8XcQs" resolve="Comment" />
          <ref role="1ERwB7" node="6lWnjhKuvnL" resolve="StopErrorSuppressing" />
          <node concept="2SqB2G" id="7s1FVdAuPxC" role="2SqHTX">
            <property role="TrG5h" value="suppressedInfo" />
          </node>
        </node>
        <node concept="3F0ifn" id="7s1FVdAuPxD" role="3EZMnx">
          <property role="3F0ifm" value="NoInspection" />
          <ref role="1k5W1q" node="3VARyd8XcQs" resolve="Comment" />
        </node>
        <node concept="3F0A7n" id="7s1FVdAwtDm" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:7s1FVdAuNzP" resolve="message" />
        </node>
        <node concept="3XFhqQ" id="7s1FVdAwtEh" role="3EZMnx">
          <node concept="pVoyu" id="7s1FVdAwtEq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7s1FVdAwtDG" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:7s1FVdAuNzV" resolve="comment" />
          <node concept="VechU" id="7s1FVdAwBwD" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="Vb9p2" id="7s1FVdAwtEG" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="l2Vlx" id="7s1FVdAuPxG" role="2iSdaV" />
      </node>
      <node concept="2SsqMj" id="7s1FVdAuPxH" role="3EZMnx" />
      <node concept="2iRkQZ" id="7s1FVdAuPxI" role="2iSdaV" />
      <node concept="2SsqMj" id="7s1FVdA$$7b" role="AHCbl" />
      <node concept="2w$q5c" id="7s1FVdABRU8" role="2whIAn">
        <node concept="2aJ2om" id="7s1FVdABRU9" role="2w$qW5">
          <ref role="2$4xQ3" node="6lWnjhKuesq" resolve="ShowSuppressedErrors" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4zXXBldea2O">
    <property role="3GE5qa" value="types" />
    <ref role="1XX52x" to="tpck:4zXXBldea2D" resolve="TypeAnnotated" />
    <node concept="3EZMnI" id="4zXXBldea2Q" role="2wV5jI">
      <node concept="3F0ifn" id="4zXXBldea2X" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F0ifn" id="4zXXBldfhbg" role="3EZMnx">
        <property role="3F0ifm" value="_" />
      </node>
      <node concept="3F0ifn" id="4zXXBldea3b" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4zXXBldea3l" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:4zXXBldea2E" resolve="annotation" />
      </node>
      <node concept="3F0ifn" id="4zXXBldea33" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
      <node concept="2iRfu4" id="4zXXBldea2T" role="2iSdaV" />
    </node>
  </node>
  <node concept="3dRTYf" id="2FKC0NlcwDm">
    <property role="TrG5h" value="StrikeOutActionsOfDeprecatedConcept" />
    <node concept="3Tm1VV" id="2FKC0NlcwDn" role="1B3o_S" />
    <node concept="KNhPm" id="2FKC0NlcwH1" role="KNiz3">
      <ref role="2RIln$" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="3lBaaS" id="2FKC0NlcwDp" role="3l$a4r">
      <node concept="3clFbS" id="2FKC0NlcwDq" role="2VODD2">
        <node concept="3cpWs8" id="2FKC0Nlcxf9" role="3cqZAp">
          <node concept="3cpWsn" id="2FKC0Nlcxfa" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="2FKC0NlcxeL" role="1tU5fm" />
            <node concept="2OqwBi" id="2FKC0Nlcxfb" role="33vP2m">
              <node concept="3lBNg1" id="2FKC0Nlcxfc" role="2Oq$k0" />
              <node concept="liA8E" id="2FKC0Nlcxfd" role="2OqNvi">
                <ref role="37wK5l" to="fulz:6MqJAGngeyC" resolve="getOutputConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3AtIBSEQ$Df" role="3cqZAp">
          <node concept="3clFbS" id="3AtIBSEQ$Dh" role="3clFbx">
            <node concept="3cpWs6" id="3AtIBSEQ_fM" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3AtIBSEQ_2X" role="3clFbw">
            <node concept="10Nm6u" id="3AtIBSEQ_ff" role="3uHU7w" />
            <node concept="37vLTw" id="3AtIBSEQ$Gd" role="3uHU7B">
              <ref role="3cqZAo" node="2FKC0Nlcxfa" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FKC0NlcBOS" role="3cqZAp">
          <node concept="3cpWsn" id="2FKC0NlcBOT" role="3cpWs9">
            <property role="TrG5h" value="conceptProperties" />
            <node concept="3uibUv" id="2FKC0NlcBOn" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
            </node>
            <node concept="2OqwBi" id="2FKC0NlcBOU" role="33vP2m">
              <node concept="2YIFZM" id="2FKC0NlcBOV" role="2Oq$k0">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
              </node>
              <node concept="liA8E" id="2FKC0NlcBOW" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getConceptProperties(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConceptProperties" />
                <node concept="37vLTw" id="2FKC0NlcBOX" role="37wK5m">
                  <ref role="3cqZAo" node="2FKC0Nlcxfa" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2FKC0NlcBSV" role="3cqZAp">
          <node concept="3clFbS" id="2FKC0NlcBSX" role="3clFbx">
            <node concept="3clFbF" id="2FKC0NlcCam" role="3cqZAp">
              <node concept="2OqwBi" id="2FKC0NlcCgW" role="3clFbG">
                <node concept="3lBNjA" id="2FKC0NlcCak" role="2Oq$k0" />
                <node concept="liA8E" id="2FKC0NlcCo7" role="2OqNvi">
                  <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setStrikeout()" resolve="setStrikeout" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="54BiH4AAirq" role="3cqZAp">
              <node concept="2OqwBi" id="54BiH4AAirr" role="3clFbG">
                <node concept="3lBNjA" id="54BiH4AAirs" role="2Oq$k0" />
                <node concept="liA8E" id="54BiH4AAiz5" role="2OqNvi">
                  <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setPriority(double)" resolve="setPriority" />
                  <node concept="3cmrfG" id="54BiH4AAl9x" role="37wK5m">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="30CQStNAX9k" role="3clFbw">
            <node concept="3y3z36" id="30CQStNAXz_" role="3uHU7B">
              <node concept="10Nm6u" id="30CQStNAX$H" role="3uHU7w" />
              <node concept="37vLTw" id="30CQStNAXiY" role="3uHU7B">
                <ref role="3cqZAo" node="2FKC0NlcBOT" resolve="conceptProperties" />
              </node>
            </node>
            <node concept="2OqwBi" id="2FKC0NlcC27" role="3uHU7w">
              <node concept="37vLTw" id="2FKC0NlcBUD" role="2Oq$k0">
                <ref role="3cqZAo" node="2FKC0NlcBOT" resolve="conceptProperties" />
              </node>
              <node concept="liA8E" id="2FKC0NlcC9z" role="2OqNvi">
                <ref role="37wK5l" to="ze1i:~ConceptPresentation.isDeprecated()" resolve="isDeprecated" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3xhyJYa45YD">
    <ref role="aqKnT" to="tpck:3emwrjqjJ6B" resolve="BasePlaceholder" />
    <node concept="22hDWg" id="xzgvwPPp6e" role="22hAXT">
      <property role="TrG5h" value="BasePlaceholder_TransformationMenu" />
    </node>
    <node concept="1Qtc8_" id="3xhyJYa4JwS" role="IW6Ez">
      <node concept="3eGOoe" id="3xhyJYa4JwW" role="1Qtc8$" />
      <node concept="ulPW2" id="3xhyJYa4JwZ" role="1Qtc8A">
        <ref role="2ks2v6" to="tpck:3emwrjqjJ6X" resolve="content" />
        <node concept="2kknPJ" id="3xhyJYa4Jx1" role="2ks2uz">
          <ref role="2ZyFGn" to="tpck:3xhyJYa45Zm" resolve="IPlaceholderContent" />
        </node>
      </node>
      <node concept="L$LW2" id="5wR$28JkIdS" role="1Qtc8A" />
    </node>
  </node>
  <node concept="3ICUPy" id="5Ygr$oBdnjL">
    <ref role="aqKnT" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="22hDWj" id="xzgvwPPp6f" role="22hAXT" />
    <node concept="1Qtc8_" id="5Ygr$oBdnjM" role="IW6Ez">
      <node concept="3eGOoe" id="5Ygr$oBdnjS" role="1Qtc8$" />
      <node concept="ulPW2" id="5Ygr$oBdnk8" role="1Qtc8A" />
    </node>
  </node>
  <node concept="3ICUPy" id="5iFVnFAwGxg">
    <ref role="aqKnT" to="tpck:4uZwTti3_$T" resolve="Attribute" />
    <node concept="22hDWj" id="xzgvwPPp6g" role="22hAXT" />
    <node concept="1Qtc8_" id="5iFVnFAwGxh" role="IW6Ez">
      <node concept="3cWJ9i" id="5iFVnFAxHL_" role="1Qtc8$">
        <node concept="CtIbL" id="5iFVnFAxHLB" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="5iFVnFAxHPl" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="3eGOoe" id="3IckRr9kXWs" role="1Qtc8$" />
      <node concept="mvV$s" id="5iFVnFAwGxv" role="1Qtc8A">
        <node concept="mvVNg" id="5iFVnFAwGxx" role="mvV$0">
          <node concept="3clFbS" id="5iFVnFAwGxy" role="2VODD2">
            <node concept="3clFbF" id="5iFVnFAwH9I" role="3cqZAp">
              <node concept="2OqwBi" id="5iFVnFAwHhF" role="3clFbG">
                <node concept="7Obwk" id="5iFVnFAwH9H" role="2Oq$k0" />
                <node concept="1mfA1w" id="5iFVnFAwHqX" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="2bhdjkqxMXq">
    <ref role="aqKnT" to="tpck:BpxLfMhSxq" resolve="ChildAttribute" />
    <node concept="22hDWj" id="xzgvwPPp6h" role="22hAXT" />
    <node concept="1Qtc8_" id="2bhdjkqxMXr" role="IW6Ez">
      <node concept="3eGOoe" id="2bhdjkqxMXv" role="1Qtc8$" />
      <node concept="3c8P5G" id="2bhdjkqxMXy" role="1Qtc8A">
        <node concept="3tp4HU" id="2bhdjkqxMXP" role="3c8P5H">
          <node concept="SLHDK" id="2bhdjkqxMXQ" role="3tp4HT">
            <node concept="3clFbS" id="2bhdjkqxMXR" role="2VODD2">
              <node concept="3clFbF" id="5wR$28JkaaY" role="3cqZAp">
                <node concept="2OqwBi" id="5wR$28JkaUc" role="3clFbG">
                  <node concept="2OqwBi" id="5wR$28Jkamv" role="2Oq$k0">
                    <node concept="7Obwk" id="5wR$28JkaaX" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORh5z" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5wR$28Jkbih" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3c8PGw" id="2bhdjkqxMX$" role="3c8PHt">
          <node concept="3clFbS" id="2bhdjkqxMX_" role="2VODD2">
            <node concept="3clFbF" id="5wR$28Jk7iy" role="3cqZAp">
              <node concept="2OqwBi" id="5wR$28Jk8m8" role="3clFbG">
                <node concept="2JrnkZ" id="5wR$28Jk8eq" role="2Oq$k0">
                  <node concept="2OqwBi" id="5wR$28Jk7qo" role="2JrQYb">
                    <node concept="7Obwk" id="5wR$28Jk7iw" role="2Oq$k0" />
                    <node concept="1mfA1w" id="5wR$28Jk7HF" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="5wR$28Jk8uB" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.insertChildAfter(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildAfter" />
                  <node concept="2OqwBi" id="5wR$28Jk8GA" role="37wK5m">
                    <node concept="7Obwk" id="5wR$28Jk8yW" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORh5_" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
                    </node>
                  </node>
                  <node concept="3c8USq" id="5wR$28Jk94M" role="37wK5m" />
                  <node concept="7Obwk" id="5wR$28Jk9hi" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5wR$28Jk9BZ" role="3cqZAp">
              <node concept="2OqwBi" id="5wR$28Jk9KF" role="3clFbG">
                <node concept="7Obwk" id="5wR$28Jk9BX" role="2Oq$k0" />
                <node concept="3YRAZt" id="5wR$28Jka8B" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="5wR$28Jk6EJ" role="3cqZAp">
              <node concept="2OqwBi" id="5wR$28Jk6LE" role="3clFbG">
                <node concept="3c8USq" id="5wR$28Jk6EH" role="2Oq$k0" />
                <node concept="1OKiuA" id="5wR$28Jk79S" role="2OqNvi">
                  <node concept="1Q80Hx" id="5wR$28Jk7bG" role="lBI5i" />
                  <node concept="2B6iha" id="5wR$28Jk7dv" role="lGT1i">
                    <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="5wR$28Jk7fl" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2jZ$Xn" id="5wR$28IZd53" role="W7ev7">
          <node concept="3clFbS" id="5wR$28IZd54" role="2VODD2">
            <node concept="3clFbF" id="5wR$28IZdhA" role="3cqZAp">
              <node concept="2OqwBi" id="5wR$28IZdra" role="3clFbG">
                <node concept="7Obwk" id="5wR$28IZdh_" role="2Oq$k0" />
                <node concept="1mfA1w" id="5wR$28IZdC2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="PjG4KWRFxL">
    <ref role="aqKnT" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="22hDWj" id="xzgvwPPp6i" role="22hAXT" />
    <node concept="3ft6gV" id="5EbKzCm8jo3" role="3ft7WO">
      <node concept="23wRS9" id="5EbKzCm8jvQ" role="23Ddnj">
        <property role="TrG5h" value="isChildNullOrExactlyBaseConcept" />
        <node concept="23DdeO" id="5EbKzCm8jvR" role="23DdeQ">
          <node concept="3clFbS" id="5EbKzCm8jvS" role="2VODD2">
            <node concept="3clFbF" id="2jnOeKLbeno" role="3cqZAp">
              <node concept="22lmx$" id="2jnOeKLbfh1" role="3clFbG">
                <node concept="2OqwBi" id="2jnOeKLbglY" role="3uHU7w">
                  <node concept="2OqwBi" id="2jnOeKLbfDw" role="2Oq$k0">
                    <node concept="1yR$tW" id="2jnOeKLbfqf" role="2Oq$k0" />
                    <node concept="2yIwOk" id="2jnOeKLbg1Y" role="2OqNvi" />
                  </node>
                  <node concept="3O6GUB" id="2jnOeKLbgTs" role="2OqNvi">
                    <node concept="chp4Y" id="2jnOeKLbh8f" role="3QVz_e">
                      <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2jnOeKLbexl" role="3uHU7B">
                  <node concept="1yR$tW" id="2jnOeKLbenn" role="2Oq$k0" />
                  <node concept="3w_OXm" id="2jnOeKLbeO$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="10P_77" id="5EbKzCm8jwd" role="1tU5fm" />
      </node>
      <node concept="3ft6gV" id="2jnOeKLbd$w" role="3ft5RZ">
        <node concept="2F$Pav" id="6D0QE9BxB9Z" role="3ft5RZ">
          <node concept="3eGOop" id="6D0QE9BxDvW" role="2$S_pN">
            <node concept="ucgPf" id="6D0QE9BxDvY" role="3aKz83">
              <node concept="3clFbS" id="6D0QE9BxDw0" role="2VODD2">
                <node concept="3clFbF" id="6D0QE9BxY6Z" role="3cqZAp">
                  <node concept="2OqwBi" id="6D0QE9BxYiR" role="3clFbG">
                    <node concept="q_SaT" id="30bJSo_fwyk" role="2OqNvi" />
                    <node concept="2ZBlsa" id="6D0QE9BxY6Y" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="16NfWO" id="7Nx4mSUpKRY" role="upBLP">
              <node concept="uGdhv" id="7Nx4mSUpLd$" role="16NeZM">
                <node concept="3clFbS" id="7Nx4mSUpLdA" role="2VODD2">
                  <node concept="3clFbF" id="2jnOeKLamaK" role="3cqZAp">
                    <node concept="2OqwBi" id="2jnOeKLampa" role="3clFbG">
                      <node concept="2ZBlsa" id="2jnOeKLamaJ" role="2Oq$k0" />
                      <node concept="liA8E" id="2jnOeKLamH8" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="16NL0t" id="7Nx4mSUpMnf" role="upBLP">
              <node concept="uGdhv" id="7Nx4mSUpMGW" role="16NL0q">
                <node concept="3clFbS" id="7Nx4mSUpMGY" role="2VODD2">
                  <node concept="3cpWs6" id="2jnOeKLan3h" role="3cqZAp">
                    <node concept="3cpWs3" id="2jnOeKLan3i" role="3cqZAk">
                      <node concept="2OqwBi" id="2wOKyujLdqT" role="3uHU7w">
                        <node concept="2OqwBi" id="3FNV1f3zfbL" role="2Oq$k0">
                          <node concept="liA8E" id="2wOKyujLd7K" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                          </node>
                          <node concept="2ZBlsa" id="3FNV1f3zeTX" role="2Oq$k0" />
                        </node>
                        <node concept="liA8E" id="2wOKyujLdK5" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2jnOeKLan3j" role="3uHU7B">
                        <property role="Xl_RC" value="lang: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3bZ5Sz" id="6D0QE9BxBlk" role="2ZBHrp" />
          <node concept="2$S_p_" id="6D0QE9BxBln" role="2$S_pT">
            <node concept="3clFbS" id="6D0QE9BxBlo" role="2VODD2">
              <node concept="3clFbF" id="6D0QE9BxBq9" role="3cqZAp">
                <node concept="1eOMI4" id="3FNV1f3zJwV" role="3clFbG">
                  <node concept="10QFUN" id="3FNV1f3zJwW" role="1eOMHV">
                    <node concept="2OqwBi" id="3FNV1f3zJwP" role="10QFUP">
                      <node concept="35c_gC" id="3FNV1f3zJwQ" role="2Oq$k0">
                        <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                      <node concept="LSoRf" id="3FNV1f3zJwR" role="2OqNvi">
                        <node concept="2OqwBi" id="3FNV1f3zJwS" role="1iTxcG">
                          <node concept="3bvxqY" id="3FNV1f3zJwT" role="2Oq$k0" />
                          <node concept="I4A8Y" id="3FNV1f3zJwU" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="A3Dl8" id="3FNV1f3zJGX" role="10QFUM">
                      <node concept="3bZ5Sz" id="3FNV1f3zJWR" role="A3Ik2">
                        <ref role="3bZ5Sy" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ft6gW" id="5EbKzCmg4eV" role="3ft5RY">
          <node concept="3clFbS" id="5EbKzCmg4eW" role="2VODD2">
            <node concept="3clFbF" id="5EbKzCmu72w" role="3cqZAp">
              <node concept="23wRSc" id="5EbKzCmu72u" role="3clFbG">
                <ref role="3cqZAo" node="5EbKzCm8jvQ" resolve="isChildNullOrExactlyBaseConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft6gV" id="PjG4KWRFxO" role="3ft5RZ">
        <node concept="3ft6gW" id="PjG4KWRFxQ" role="3ft5RY">
          <node concept="3clFbS" id="PjG4KWRFxS" role="2VODD2">
            <node concept="3clFbF" id="5EbKzCmu7xn" role="3cqZAp">
              <node concept="3fqX7Q" id="5EbKzCmu7xl" role="3clFbG">
                <node concept="23wRSc" id="5EbKzCmu7Gf" role="3fr31v">
                  <ref role="3cqZAo" node="5EbKzCm8jvQ" resolve="isChildNullOrExactlyBaseConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1s_PAr" id="68HoNdDYc3g" role="3ft5RZ">
          <node concept="3tp4HU" id="68HoNdDYc3n" role="1s_PAo">
            <node concept="3tp4HZ" id="68HoNdDYc3o" role="3tp4HT">
              <node concept="3clFbS" id="68HoNdDYc3p" role="2VODD2">
                <node concept="3clFbF" id="68HoNdDYchV" role="3cqZAp">
                  <node concept="2OqwBi" id="68HoNdDYdaH" role="3clFbG">
                    <node concept="2JrnkZ" id="68HoNdDYd0X" role="2Oq$k0">
                      <node concept="1yR$tW" id="68HoNdDYchU" role="2JrQYb" />
                    </node>
                    <node concept="liA8E" id="68HoNdDYdme" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
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
  <node concept="22mcaB" id="3xhyJYa4JwP">
    <ref role="aqKnT" to="tpck:3xhyJYa45Zm" resolve="IPlaceholderContent" />
    <node concept="22hDWj" id="xzgvwPPp6j" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="4zXXBldfhbK">
    <ref role="aqKnT" to="tpck:4zXXBldea2D" resolve="TypeAnnotated" />
    <node concept="22hDWj" id="xzgvwPPp6k" role="22hAXT" />
  </node>
</model>

