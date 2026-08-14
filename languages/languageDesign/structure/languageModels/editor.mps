<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959028d(jetbrains.mps.lang.structure.editor)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="iwwu" ref="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpcc" ref="r:00000000-0000-4000-0000-011c89590290(jetbrains.mps.lang.structure.plugin)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="3ahc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.cells(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ryx4" ref="r:cb40950c-9102-4caf-8d31-b0388f359313(jetbrains.mps.kernel.language)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpcg" ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" />
    <import index="5b0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.presentation(MPS.Core/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="9anm" ref="r:6f374023-1b4e-4a80-8bf6-2cc3148faa52(jetbrains.mps.lang.editor.plugin)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="562388756444790046" name="jetbrains.mps.lang.resources.structure.ConceptIconResourceExpression" flags="ng" index="ynFM6">
        <child id="4786190798786350692" name="concept" index="mzb_8" />
      </concept>
    </language>
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
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="4510086454722552739" name="jetbrains.mps.lang.editor.structure.PropertyDeclarationCellSelector" flags="ng" index="eBIwv">
        <reference id="4510086454740628767" name="propertyDeclaration" index="fyFUz" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="8954657570917870539" name="jetbrains.mps.lang.editor.structure.TransformationLocation_ContextAssistant" flags="ng" index="2j_NTm" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="1873541086576603957" name="location" index="3vPi4" />
        <child id="6718020819487784677" name="menuReference" index="A14EM" />
      </concept>
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="8478191136886962269" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_Icon" flags="ng" index="pEUQQ">
        <child id="8478191136886962270" name="query" index="pEUQP" />
      </concept>
      <concept id="8478191136886971898" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Icon" flags="in" index="pEWwh" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ngI" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="562388756446465666" name="jetbrains.mps.lang.editor.structure.MigratedSideTransformMenuAttribute" flags="ng" index="yp4Wq">
        <property id="562388756446465811" name="transformTag" index="yp4Ub" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
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
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="8449131619432941427" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super" flags="ng" index="L$LW2" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1216380990741" name="jetbrains.mps.lang.editor.structure.CellModel_TransactionalProperty" flags="sg" stub="8104358048506729358" index="PXfge">
        <property id="1232439938817" name="runInCommand" index="3N9gSv" />
        <child id="1216381211800" name="handlerBlock" index="PY5m3" />
      </concept>
      <concept id="1216381054717" name="jetbrains.mps.lang.editor.structure.TransactionalPropertyHandler" flags="in" index="PXuZA" />
      <concept id="1216381117100" name="jetbrains.mps.lang.editor.structure.TransactionPropertyHandler_oldValue" flags="nn" index="PXIeR" />
      <concept id="1216381148013" name="jetbrains.mps.lang.editor.structure.TransactionPropertyHandler_newValue" flags="nn" index="PXPDQ" />
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
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
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
        <child id="1221219051630" name="query" index="1mkY_M" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1630016958697286851" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_parameterObject" flags="ng" index="2ZBlsa" />
      <concept id="1630016958697057551" name="jetbrains.mps.lang.editor.structure.IMenuPartParameterized" flags="ngI" index="2ZBHr6">
        <child id="1630016958697057552" name="parameterType" index="2ZBHrp" />
      </concept>
      <concept id="1182191800432" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeListFilter" flags="in" index="107P5z" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1214406466686" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorSelectedStyleClassItem" flags="ln" index="30h1P$" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1182233249301" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_childNode" flags="nn" index="12_Ws6" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="3360401466585705291" name="jetbrains.mps.lang.editor.structure.CellModel_ContextAssistant" flags="ng" index="18a60v" />
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="1838685759388685703" name="jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText" flags="ng" index="3cqGtN">
        <child id="1838685759388685704" name="query" index="3cqGtW" />
      </concept>
      <concept id="1838685759388690401" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText" flags="ig" index="3cqJkl" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="1221062700015" name="jetbrains.mps.lang.editor.structure.QueryFunction_Underlined" flags="in" index="1d0yFN" />
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
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
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="7291101478617127464" name="jetbrains.mps.lang.editor.structure.IExtensibleTransformationMenuPart" flags="ngI" index="1joUw2">
        <child id="8954657570916349207" name="features" index="2jZA2a" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="2906093235281475560" name="jetbrains.mps.lang.editor.structure.SpellCheckStyle" flags="lg" index="1liFee" />
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="9122903797336200704" name="jetbrains.mps.lang.editor.structure.ApplyStyleClassCondition" flags="lg" index="1uO$qF">
        <child id="9122903797336200706" name="query" index="1uO$qD" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1180615838666" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints" flags="ng" index="3yc0Fo">
        <child id="1180615838667" name="postfixesFunction" index="3yc0Fp" />
      </concept>
      <concept id="1180616057533" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints_GetPostfixes" flags="in" index="3ycQeJ" />
      <concept id="5425882385312046132" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" flags="nn" index="1yR$tW" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <property id="6240706158490734113" name="collapseByDefault" index="3EXrWe" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <reference id="1173177718857" name="elementActionMap" index="APP_o" />
        <child id="1182233390675" name="filter" index="12AuX0" />
      </concept>
      <concept id="843003353410421268" name="jetbrains.mps.lang.editor.structure.IOutputConceptTransformationMenuPart" flags="ngI" index="1FNN41">
        <child id="843003353410424960" name="outputConceptReference" index="1FNMel" />
      </concept>
      <concept id="843003353410421233" name="jetbrains.mps.lang.editor.structure.OptionalConceptReference" flags="ng" index="1FNNb$">
        <reference id="843003353410421234" name="concept" index="1FNNbB" />
      </concept>
      <concept id="4233361609415247331" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter" flags="ig" index="1GhMSn" />
      <concept id="4233361609415240997" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized" flags="ng" index="1GhOrh">
        <child id="4233361609415240998" name="part" index="1GhOri" />
        <child id="4233361609415241000" name="parameterQuery" index="1GhOrs" />
      </concept>
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1187258617779" name="jetbrains.mps.lang.editor.structure.ForegroundNullColorStyleClassItem" flags="ln" index="1I8cUB" />
      <concept id="7985135009827365938" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Placeholder" flags="ng" index="1IAO7e" />
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ngI" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="2701921320705252232" name="selectionEnd" index="mNZMC" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="6171083915388330090" name="jetbrains.mps.lang.slanguage.structure.AspectModelRefExpression" flags="ng" index="1qvjxa">
        <reference id="6171083915388597767" name="aspect" index="1quiSB" />
        <child id="6171083915388330091" name="lang" index="1qvjxb" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
        <child id="7256306938026143676" name="child" index="2aWVGa" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE">
        <child id="3757480014665187678" name="prototype" index="1wAG5O" />
      </concept>
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="5480835971642160908" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewRootNodeOperation" flags="nn" index="15Ty1b" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
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
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
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
      <concept id="5779574625832259537" name="jetbrains.mps.lang.smodel.structure.EnumMember_PresentationOperation" flags="ng" index="1XCIdh" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="6126991172893676625" name="jetbrains.mps.baseLanguage.collections.structure.ContainsAllOperation" flags="nn" index="BjQpj" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="24kQdi" id="fKAAwPW">
    <property role="TrG5h" value="ConstrainedDataTypeDeclaration_Editor" />
    <ref role="1XX52x" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
    <node concept="3EZMnI" id="fKAAwPX" role="2wV5jI">
      <node concept="3EZMnI" id="fKAAwQe" role="3EZMnx">
        <node concept="3F0ifn" id="fKAAwQf" role="3EZMnx">
          <property role="3F0ifm" value="constrained string datatype:" />
          <node concept="VPM3Z" id="hEU$P1f" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="hEZKQzn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="fKAAwQg" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hEU$Pk0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJLC" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="fKFLMIB" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$P$z" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="fKFLMIC" role="3EZMnx">
        <node concept="3F0ifn" id="fKFLMID" role="3EZMnx">
          <property role="3F0ifm" value="    matching regexp:" />
        </node>
        <node concept="3F0A7n" id="fKFLMIE" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no value&gt;" />
          <ref role="1NtTu8" to="tpce:fKFLfW2" resolve="constraint" />
          <node concept="VechU" id="hEZR8nL" role="3F10Kt">
            <property role="Vb096" value="g1_eI4o/DARK_BLUE" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pf3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJLe" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2Iv53z" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fKAY64O">
    <property role="TrG5h" value="PropertyDeclaration_Editor" />
    <ref role="1XX52x" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    <node concept="3EZMnI" id="fKAY64P" role="2wV5jI">
      <node concept="PXfge" id="35wj_VwWi93" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="2SqB2G" id="JeRNd$X2Xd" role="2SqHTX">
          <property role="TrG5h" value="name" />
        </node>
        <node concept="PXuZA" id="35wj_VwWi94" role="PY5m3">
          <node concept="3clFbS" id="35wj_VwWi95" role="2VODD2">
            <node concept="3clFbJ" id="6UyJMA9G3FD" role="3cqZAp">
              <node concept="3clFbS" id="6UyJMA9G3FE" role="3clFbx">
                <node concept="3clFbF" id="6kjnJfQKRIW" role="3cqZAp">
                  <node concept="2OqwBi" id="6kjnJfQKRIX" role="3clFbG">
                    <node concept="2OqwBi" id="6kjnJfQKRIY" role="2Oq$k0">
                      <node concept="liA8E" id="6kjnJfQKRIZ" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                      </node>
                      <node concept="2OqwBi" id="6kjnJfQKRJ0" role="2Oq$k0">
                        <node concept="liA8E" id="6kjnJfQKRJ1" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                        </node>
                        <node concept="1Q80Hx" id="6kjnJfQKRJ2" role="2Oq$k0" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6kjnJfQKRJ3" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                      <node concept="2ShNRf" id="4HamRaEMFqT" role="37wK5m">
                        <node concept="YeOm9" id="4HamRaEMFqU" role="2ShVmc">
                          <node concept="1Y3b0j" id="4HamRaEMFqV" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="g51k:~ChangePropertyEditorCommand" resolve="ChangePropertyEditorCommand" />
                            <ref role="37wK5l" to="g51k:~ChangePropertyEditorCommand.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,java.lang.String)" resolve="ChangePropertyEditorCommand" />
                            <node concept="3Tm1VV" id="4HamRaEMFqW" role="1B3o_S" />
                            <node concept="3clFb_" id="4HamRaEMFqX" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="doExecute" />
                              <property role="DiZV1" value="false" />
                              <property role="od$2w" value="false" />
                              <node concept="3Tmbuc" id="4HamRaEMFqY" role="1B3o_S" />
                              <node concept="3cqZAl" id="4HamRaEMFqZ" role="3clF45" />
                              <node concept="3clFbS" id="4HamRaEMFr0" role="3clF47">
                                <node concept="3clFbF" id="4HamRaEMGcx" role="3cqZAp">
                                  <node concept="37vLTI" id="4HamRaEMGcy" role="3clFbG">
                                    <node concept="PXPDQ" id="4HamRaEMGcz" role="37vLTx" />
                                    <node concept="2OqwBi" id="4HamRaEMGc$" role="37vLTJ">
                                      <node concept="pncrf" id="4HamRaEMGc_" role="2Oq$k0" />
                                      <node concept="3TrcHB" id="4HamRaEMGcA" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Q80Hx" id="4HamRaEMFr7" role="37wK5m" />
                            <node concept="3cpWs3" id="4HamRaEMFr8" role="37wK5m">
                              <node concept="2OqwBi" id="4HamRaEMFr9" role="3uHU7w">
                                <node concept="2OqwBi" id="4HamRaEMFra" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="4HamRaEMFrb" role="2Oq$k0">
                                    <node concept="pncrf" id="4HamRaEMFrc" role="2JrQYb" />
                                  </node>
                                  <node concept="liA8E" id="4HamRaEMFrd" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4HamRaEMFre" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="4HamRaEMFrf" role="3uHU7B">
                                <property role="Xl_RC" value="name_" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6UyJMA9G3FL" role="3clFbw">
                <node concept="2OqwBi" id="6UyJMA9G3FM" role="3fr31v">
                  <node concept="2OqwBi" id="6UyJMA9G3FN" role="2Oq$k0">
                    <node concept="2O5UvJ" id="6UyJMA9G3FO" role="2Oq$k0">
                      <ref role="2O5UnU" to="tpcc:6UyJMA9FNHS" resolve="NodeRenamer" />
                    </node>
                    <node concept="SfwO_" id="6UyJMA9G3FP" role="2OqNvi" />
                  </node>
                  <node concept="2HwmR7" id="6UyJMA9G3FQ" role="2OqNvi">
                    <node concept="1bVj0M" id="6UyJMA9G3FR" role="23t8la">
                      <node concept="3clFbS" id="6UyJMA9G3FS" role="1bW5cS">
                        <node concept="3clFbF" id="6UyJMA9G3FT" role="3cqZAp">
                          <node concept="2Sg_IR" id="6UyJMA9G3FU" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxgm8QI" role="2SgG2M">
                              <ref role="3cqZAo" node="5W7E4fV0Wu9" resolve="it" />
                            </node>
                            <node concept="1Q80Hx" id="6UyJMA9G3FW" role="2SgHGx" />
                            <node concept="pncrf" id="6UyJMA9G3FX" role="2SgHGx" />
                            <node concept="PXIeR" id="6UyJMA9G3FY" role="2SgHGx" />
                            <node concept="PXPDQ" id="6UyJMA9G3FZ" role="2SgHGx" />
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wu9" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wua" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1uO$qF" id="LU8F6Gqy0A" role="3F10Kt">
          <node concept="3nzxsE" id="LU8F6Gqy0C" role="1uO$qD">
            <node concept="3clFbS" id="LU8F6Gqy0E" role="2VODD2">
              <node concept="3clFbF" id="LU8F6Gqy_z" role="3cqZAp">
                <node concept="2OqwBi" id="LU8F6Gq$vS" role="3clFbG">
                  <node concept="2OqwBi" id="LU8F6GqyRH" role="2Oq$k0">
                    <node concept="pncrf" id="LU8F6Gqy_y" role="2Oq$k0" />
                    <node concept="1mfA1w" id="LU8F6GqzK5" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="LU8F6Gq_kK" role="2OqNvi">
                    <node concept="chp4Y" id="LU8F6GqRdE" role="cj9EA">
                      <ref role="cht4Q" to="tpce:5CkWgdpgEmF" resolve="EnumPropertyMigrationInfo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7BS8DFNL8ap" role="3XvnJa">
            <ref role="1wgcnl" node="6t_vhrzKdF" resolve="Comment" />
          </node>
        </node>
        <node concept="Vb9p2" id="hEUNR1P" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="fKB3PJ2" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="39fSgdSExj7" role="3F10Kt" />
      </node>
      <node concept="1iCGBv" id="g62R6nm" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no data type&gt;" />
        <ref role="1ERwB7" node="16BE8Zl8tqG" resolve="PropertyDeclarationDeleteActions" />
        <ref role="1NtTu8" to="tpce:fKAX2Z_" resolve="dataType" />
        <node concept="1sVBvm" id="g62Qt2k" role="1sWHZn">
          <node concept="3F0A7n" id="g62R6nn" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="16BE8Zlf0Yh" role="3EZMnx">
        <node concept="VPM3Z" id="16BE8Zlf0Yj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="16BE8Zlf0Ym" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="40tMyUvm3Wf" role="3EZMnx">
        <node concept="VPM3Z" id="40tMyUvm3Wg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="40tMyUvm3Wh" role="2iSdaV" />
        <node concept="3F0ifn" id="40tMyUvm3Wi" role="3EZMnx">
          <property role="3F0ifm" value="ID: " />
        </node>
        <node concept="3F0A7n" id="40tMyUvm3Wj" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no id&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:dqwjwHwEjp" resolve="propertyId" />
        </node>
        <node concept="pkWqt" id="40tMyUvm3Wk" role="pqm2j">
          <node concept="3clFbS" id="40tMyUvm3Wl" role="2VODD2">
            <node concept="3clFbF" id="40tMyUvm3Wm" role="3cqZAp">
              <node concept="2YIFZM" id="40tMyUvm3Wo" role="3clFbG">
                <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                <node concept="pncrf" id="40tMyUvm3Wp" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IuJLG" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4B13ZO$O8gL" role="6VMZX">
      <node concept="2iRkQZ" id="4B13ZO$O8gM" role="2iSdaV" />
      <node concept="3EZMnI" id="dqwjwHx3io" role="3EZMnx">
        <node concept="pkWqt" id="40tMyUvm2Ne" role="pqm2j">
          <node concept="3clFbS" id="40tMyUvm2Nf" role="2VODD2">
            <node concept="3clFbF" id="40tMyUvm3hZ" role="3cqZAp">
              <node concept="3fqX7Q" id="40tMyUvm3rD" role="3clFbG">
                <node concept="2YIFZM" id="40tMyUvm3rF" role="3fr31v">
                  <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                  <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                  <node concept="pncrf" id="40tMyUvm3rG" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="dqwjwHx3ip" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="dqwjwHx3iq" role="2iSdaV" />
        <node concept="3F0ifn" id="dqwjwHx3ir" role="3EZMnx">
          <property role="3F0ifm" value="ID: " />
        </node>
        <node concept="3F0A7n" id="dqwjwHx3is" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no id&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:dqwjwHwEjp" resolve="propertyId" />
        </node>
      </node>
      <node concept="3EZMnI" id="4B13ZO$O8Za" role="3EZMnx">
        <node concept="VPM3Z" id="4B13ZO$O8Zc" role="3F10Kt" />
        <node concept="3F0ifn" id="4B13ZO$O9jY" role="3EZMnx">
          <property role="3F0ifm" value="transient:" />
        </node>
        <node concept="3F0A7n" id="4B13ZO$O9lI" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:4B13ZO$O3x3" resolve="transient" />
        </node>
        <node concept="l2Vlx" id="4B13ZO$O9eO" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="fKM6brr">
    <property role="TrG5h" value="EnumerationMemberDeclaration_Editor" />
    <property role="3GE5qa" value="enums.old" />
    <ref role="1XX52x" to="tpce:fKM4N6M" resolve="EnumerationMemberDeclaration_Old" />
    <node concept="3EZMnI" id="fLuZk5E" role="2wV5jI">
      <node concept="3EZMnI" id="hrm24mf" role="3EZMnx">
        <node concept="3F0ifn" id="hrm26LM" role="3EZMnx">
          <property role="3F0ifm" value="identifier" />
          <node concept="VPM3Z" id="hEU$P_A" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="Vb9p2" id="hEUNQXz" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VechU" id="hEZR8u5" role="3F10Kt">
            <property role="Vb096" value="fLJRk5B/darkGray" />
          </node>
          <node concept="3Xmtl4" id="LU8F6Gx6Sm" role="3F10Kt">
            <node concept="1wgc9g" id="LU8F6Gx6SR" role="3XvnJa">
              <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
            </node>
          </node>
        </node>
        <node concept="3F0A7n" id="hrm2c3G" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no identifier&gt;" />
          <ref role="1NtTu8" to="tpce:hmfHohT" resolve="javaIdentifier" />
          <node concept="Vb9p2" id="hEUNQYS" role="3F10Kt">
            <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
          </node>
          <node concept="VechU" id="hEZR8vP" role="3F10Kt">
            <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
          </node>
          <node concept="30h1P$" id="hF0kJW8" role="3F10Kt">
            <property role="Vb096" value="fLwANPt/cyan" />
          </node>
          <node concept="3Xmtl4" id="LU8F6Gx6SX" role="3F10Kt">
            <node concept="1wgc9g" id="LU8F6Gx6SY" role="3XvnJa">
              <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="hJB398Z" role="3EZMnx">
          <property role="3F0ifm" value="  " />
        </node>
        <node concept="pkWqt" id="hrm2ilk" role="pqm2j">
          <node concept="3clFbS" id="hrm2ill" role="2VODD2">
            <node concept="3clFbF" id="hrm2uTT" role="3cqZAp">
              <node concept="2OqwBi" id="hx3pFvA" role="3clFbG">
                <node concept="2OqwBi" id="hx3pFBf" role="2Oq$k0">
                  <node concept="1PxgMI" id="hrm2wh9" role="2Oq$k0">
                    <node concept="2OqwBi" id="hx3pFxe" role="1m5AlR">
                      <node concept="pncrf" id="hrm2uTU" role="2Oq$k0" />
                      <node concept="1mfA1w" id="hrm2vE4" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="714IaVdH1xP" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="hrm2BVt" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8C" resolve="memberIdentifierPolicy" />
                  </node>
                </node>
                <node concept="21noJN" id="3Ftr4R8$mHH" role="2OqNvi">
                  <node concept="21nZrQ" id="3Ftr4R8$mHI" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyt" resolve="custom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P9C" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJL_" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gUJxoAM" role="3EZMnx">
        <property role="3F0ifm" value="value" />
        <node concept="VPM3Z" id="hEU$PFW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="Vb9p2" id="hEUNQVX" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="VechU" id="hEZR8vr" role="3F10Kt">
          <property role="Vb096" value="fLJRk5B/darkGray" />
        </node>
        <node concept="3Xmtl4" id="LU8F6Gx6Tc" role="3F10Kt">
          <node concept="1wgc9g" id="LU8F6Gx6Td" role="3XvnJa">
            <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="fLuZk5K" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;NULL&gt;" />
        <ref role="1NtTu8" to="tpce:fLuS6pz" resolve="internalValue" />
        <node concept="VechU" id="hEZR8ta" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
        <node concept="30h1P$" id="hF0kJVg" role="3F10Kt">
          <property role="Vb096" value="fLwANPt/cyan" />
        </node>
        <node concept="3Xmtl4" id="LU8F6Gx6Tn" role="3F10Kt">
          <node concept="1wgc9g" id="LU8F6Gx6To" role="3XvnJa">
            <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="gUJxt_r" role="3EZMnx">
        <property role="3F0ifm" value="  presentation" />
        <node concept="VPM3Z" id="hEU$PJp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="Vb9p2" id="hEUNQYD" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="VechU" id="hEZR8xj" role="3F10Kt">
          <property role="Vb096" value="fLJRk5B/darkGray" />
        </node>
        <node concept="3Xmtl4" id="LU8F6Gx6Ty" role="3F10Kt">
          <node concept="1wgc9g" id="LU8F6Gx6Tz" role="3XvnJa">
            <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="fLuZk5I" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no external value&gt;" />
        <ref role="1NtTu8" to="tpce:fLuS6p$" resolve="externalValue" />
        <node concept="Vb9p2" id="hEUNQXt" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
        <node concept="VechU" id="hEZR8sq" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
        </node>
        <node concept="3Xmtl4" id="LU8F6Gx6TH" role="3F10Kt">
          <node concept="1wgc9g" id="LU8F6Gx6TI" role="3XvnJa">
            <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="fLuZk5M" role="3EZMnx">
        <property role="3F0ifm" value="    (default)" />
        <node concept="pkWqt" id="gUJwbR$" role="pqm2j">
          <node concept="3clFbS" id="gUJwbR_" role="2VODD2">
            <node concept="3clFbF" id="hCPIOru" role="3cqZAp">
              <node concept="3clFbC" id="hCPIOQQ" role="3clFbG">
                <node concept="2OqwBi" id="hCPIQNX" role="3uHU7w">
                  <node concept="1PxgMI" id="hCPIQjF" role="2Oq$k0">
                    <node concept="2OqwBi" id="hCPIQjG" role="1m5AlR">
                      <node concept="pncrf" id="hCPIQjH" role="2Oq$k0" />
                      <node concept="1mfA1w" id="hCPIQjI" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="714IaVdH1yc" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfyH" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIM$p" resolve="getDefaultMember" />
                  </node>
                </node>
                <node concept="pncrf" id="hCPIOrv" role="3uHU7B" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PaC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="Vb9p2" id="hEUNQXO" role="3F10Kt" />
        <node concept="3Xmtl4" id="LU8F6Gx6TU" role="3F10Kt">
          <node concept="1wgc9g" id="LU8F6Gx6TV" role="3XvnJa">
            <ref role="1wgcnl" node="LU8F6GvYJu" resolve="EnumMemberMigrated" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IuJMf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fKM75hV">
    <property role="TrG5h" value="EnumerationDataTypeDeclaration_Editor" />
    <property role="3GE5qa" value="enums.old" />
    <ref role="1XX52x" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
    <node concept="3EZMnI" id="fKM75hW" role="2wV5jI">
      <node concept="3EZMnI" id="fKM75hX" role="3EZMnx">
        <node concept="3F0ifn" id="fKM75hY" role="3EZMnx">
          <property role="3F0ifm" value="enumeration datatype" />
          <node concept="VPM3Z" id="hEU$Pio" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="fKM75hZ" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hEU$PWf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJMi" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gUJfDlQ" role="3EZMnx">
        <node concept="3XFhqQ" id="hJB3dsp" role="3EZMnx" />
        <node concept="3EZMnI" id="gUJfTbx" role="3EZMnx">
          <node concept="3F0ifn" id="hJB3NDG" role="3EZMnx">
            <node concept="VPM3Z" id="hJB3NDH" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="gUJfTby" role="3EZMnx">
            <node concept="3EZMnI" id="gUJfTbz" role="3EZMnx">
              <node concept="3F0ifn" id="gUJfTb$" role="3EZMnx">
                <property role="3F0ifm" value="member type" />
                <node concept="VPM3Z" id="hEU$PXv" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="gUJhMo0" role="3EZMnx">
                <property role="3F0ifm" value=":" />
                <node concept="VPM3Z" id="hEU$PYX" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="1iCGBv" id="gUJfTb_" role="3EZMnx">
                <property role="1$x2rV" value="&lt;no type&gt;" />
                <ref role="1NtTu8" to="tpce:fKM4eW5" resolve="memberDataType" />
                <node concept="1sVBvm" id="gUJfTbA" role="1sWHZn">
                  <node concept="3F0A7n" id="gUJfTbB" role="2wV5jI">
                    <property role="1Intyy" value="true" />
                    <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="hEU$Pn9" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IuJLo" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="gUJfTbC" role="3EZMnx">
              <node concept="3F0ifn" id="gUJfTbD" role="3EZMnx">
                <property role="3F0ifm" value="no default" />
                <node concept="VPM3Z" id="hEU$Pwh" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="gUJhOKS" role="3EZMnx">
                <property role="3F0ifm" value=":" />
                <node concept="VPM3Z" id="hEU$PFU" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0A7n" id="hCPDL8k" role="3EZMnx">
                <ref role="1NtTu8" to="tpce:hCPDuZq" resolve="hasNoDefaultMember" />
              </node>
              <node concept="VPM3Z" id="hEU$PFk" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IuJLN" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="hCQ35dg" role="3EZMnx">
              <node concept="3F0ifn" id="hCQ35dh" role="3EZMnx">
                <property role="3F0ifm" value="null text" />
                <node concept="VPM3Z" id="hEU$PTm" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="hCQ35di" role="3EZMnx">
                <property role="3F0ifm" value=":" />
                <node concept="VPM3Z" id="hEU$PJV" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0A7n" id="hCQ35dj" role="3EZMnx">
                <property role="1O74Pk" value="true" />
                <property role="1$x2rV" value="&lt;none&gt;" />
                <ref role="1NtTu8" to="tpce:hCQ2FqA" resolve="noValueText" />
                <node concept="VechU" id="hEZR8xh" role="3F10Kt">
                  <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
                </node>
                <node concept="3Xmtl4" id="LU8F6Gx8eV" role="3F10Kt">
                  <node concept="1wgc9g" id="LU8F6Gx8f2" role="3XvnJa">
                    <ref role="1wgcnl" node="LU8F6Gw22Z" resolve="EnumMigrated" />
                  </node>
                </node>
              </node>
              <node concept="pkWqt" id="hCQ3eHX" role="pqm2j">
                <node concept="3clFbS" id="hCQ3eHY" role="2VODD2">
                  <node concept="3clFbF" id="hCQ3jxU" role="3cqZAp">
                    <node concept="2OqwBi" id="hCQ3jRV" role="3clFbG">
                      <node concept="pncrf" id="hCQ3jxV" role="2Oq$k0" />
                      <node concept="3TrcHB" id="hCQ3lA_" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:hCPDuZq" resolve="hasNoDefaultMember" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="hEU$PKi" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IuJMa" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="hCPDDOy" role="3EZMnx">
              <node concept="3F0ifn" id="hCPDDOz" role="3EZMnx">
                <property role="3F0ifm" value="default" />
                <node concept="VPM3Z" id="hEU$P3x" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="hCPDDO$" role="3EZMnx">
                <property role="3F0ifm" value=":" />
                <node concept="VPM3Z" id="hEU$OY5" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="1iCGBv" id="hCPDDO_" role="3EZMnx">
                <property role="1$x2rV" value="&lt;1-st member&gt;" />
                <ref role="1NtTu8" to="tpce:fKQgatX" resolve="defaultMember" />
                <node concept="1sVBvm" id="hCPDDOA" role="1sWHZn">
                  <node concept="3F0A7n" id="hCPDDOB" role="2wV5jI">
                    <property role="1Intyy" value="true" />
                    <property role="1$x2rV" value="&lt;no external value&gt;" />
                    <ref role="1NtTu8" to="tpce:fLuS6p$" resolve="externalValue" />
                    <node concept="Vb9p2" id="hEUNR1D" role="3F10Kt">
                      <property role="Vbekb" value="g1_k_vY/BOLD" />
                    </node>
                    <node concept="VechU" id="hEZR8ue" role="3F10Kt">
                      <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                    </node>
                    <node concept="3Xmtl4" id="LU8F6Gx8f9" role="3F10Kt">
                      <node concept="1wgc9g" id="LU8F6Gx8fa" role="3XvnJa">
                        <ref role="1wgcnl" node="LU8F6Gw22Z" resolve="EnumMigrated" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="pkWqt" id="hCPDYfG" role="pqm2j">
                <node concept="3clFbS" id="hCPDYfH" role="2VODD2">
                  <node concept="3clFbF" id="hCPDZD$" role="3cqZAp">
                    <node concept="3fqX7Q" id="hCPE1HY" role="3clFbG">
                      <node concept="2OqwBi" id="hCPE1HZ" role="3fr31v">
                        <node concept="pncrf" id="hCPE1I0" role="2Oq$k0" />
                        <node concept="3TrcHB" id="hCPE1I1" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:hCPDuZq" resolve="hasNoDefaultMember" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="hEU$Q32" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IuJLx" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="hrlZUIj" role="3EZMnx">
              <node concept="3F0ifn" id="hrlZUIk" role="3EZMnx">
                <property role="3F0ifm" value="member identifier" />
                <node concept="VPM3Z" id="hEU$P$D" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="hrlZUIl" role="3EZMnx">
                <property role="3F0ifm" value=":" />
                <node concept="VPM3Z" id="hEU$PZI" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0A7n" id="hrm0bCB" role="3EZMnx">
                <ref role="1NtTu8" to="tpce:3Ftr4R6BH8C" resolve="memberIdentifierPolicy" />
                <node concept="Vb9p2" id="hEUNQXw" role="3F10Kt">
                  <property role="Vbekb" value="g1_k_vY/BOLD" />
                </node>
                <node concept="VechU" id="hEZR8ud" role="3F10Kt">
                  <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
                </node>
                <node concept="3Xmtl4" id="LU8F6Gx8fj" role="3F10Kt">
                  <node concept="1wgc9g" id="LU8F6Gx8fk" role="3XvnJa">
                    <ref role="1wgcnl" node="LU8F6Gw22Z" resolve="EnumMigrated" />
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="hEU$Q22" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IuJLq" role="2iSdaV" />
            </node>
            <node concept="VPM3Z" id="hEU$P_k" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="i2IuJLb" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="gUJjAXf" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Pce" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="gUJjEoL" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Pef" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F2HdR" id="gUJhHae" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:fKM5hVY" resolve="member" />
            <node concept="VPM3Z" id="hEU$Q0B" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="i2IuJMw" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="hEU$PIV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IuJLD" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PXA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJL8" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2Iv53x" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fKQoSD6">
    <property role="TrG5h" value="PrimitiveDataTypeDeclaration_Editor" />
    <ref role="1XX52x" to="tpce:fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
    <node concept="3EZMnI" id="fKQoSD7" role="2wV5jI">
      <node concept="3EZMnI" id="fKQoSD8" role="3EZMnx">
        <node concept="3F0ifn" id="fKQoSD9" role="3EZMnx">
          <property role="3F0ifm" value="primitive datatype:" />
          <node concept="VPM3Z" id="hEU$Piu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="hEZKQ$5" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="fKQoSDa" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="30gYXW" id="hF0kJU1" role="3F10Kt">
            <property role="Vb096" value="fLwANPq/yellow" />
          </node>
          <node concept="30h1P$" id="hF0kJW6" role="3F10Kt">
            <property role="Vb096" value="fLwANPt/cyan" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Px3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJLU" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IuJLI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fLIIZeL">
    <property role="TrG5h" value="LinkDeclaration_Editor" />
    <ref role="1XX52x" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    <node concept="3EZMnI" id="fLIIZeM" role="2wV5jI">
      <node concept="PXfge" id="4rDGDFJUR0t" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
        <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
        <node concept="2SqB2G" id="KkUvIDyFaY" role="2SqHTX">
          <property role="TrG5h" value="role" />
        </node>
        <node concept="PXuZA" id="4rDGDFJUR0u" role="PY5m3">
          <node concept="3clFbS" id="4rDGDFJUR0v" role="2VODD2">
            <node concept="3clFbJ" id="6UyJMA9G3F9" role="3cqZAp">
              <node concept="3clFbS" id="6UyJMA9G3Fa" role="3clFbx">
                <node concept="3clFbF" id="6kjnJfQKOIi" role="3cqZAp">
                  <node concept="2OqwBi" id="6kjnJfQKOIj" role="3clFbG">
                    <node concept="2OqwBi" id="6kjnJfQKOIk" role="2Oq$k0">
                      <node concept="liA8E" id="6kjnJfQKOIl" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                      </node>
                      <node concept="2OqwBi" id="6kjnJfQKOIm" role="2Oq$k0">
                        <node concept="liA8E" id="6kjnJfQKOIn" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                        </node>
                        <node concept="1Q80Hx" id="6kjnJfQKOIo" role="2Oq$k0" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6kjnJfQKOIp" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                      <node concept="2ShNRf" id="4HamRaEMATe" role="37wK5m">
                        <node concept="YeOm9" id="4HamRaEMATf" role="2ShVmc">
                          <node concept="1Y3b0j" id="4HamRaEMATg" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="g51k:~ChangePropertyEditorCommand" resolve="ChangePropertyEditorCommand" />
                            <ref role="37wK5l" to="g51k:~ChangePropertyEditorCommand.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,java.lang.String)" resolve="ChangePropertyEditorCommand" />
                            <node concept="3Tm1VV" id="4HamRaEMATh" role="1B3o_S" />
                            <node concept="3clFb_" id="4HamRaEMATi" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="doExecute" />
                              <property role="DiZV1" value="false" />
                              <property role="od$2w" value="false" />
                              <node concept="3Tmbuc" id="4HamRaEMATj" role="1B3o_S" />
                              <node concept="3cqZAl" id="4HamRaEMATk" role="3clF45" />
                              <node concept="3clFbS" id="4HamRaEMATl" role="3clF47">
                                <node concept="3clFbF" id="4HamRaEMDdX" role="3cqZAp">
                                  <node concept="37vLTI" id="4HamRaEMDdY" role="3clFbG">
                                    <node concept="PXPDQ" id="4HamRaEMDdZ" role="37vLTx" />
                                    <node concept="2OqwBi" id="4HamRaEMDe0" role="37vLTJ">
                                      <node concept="pncrf" id="4HamRaEMDe1" role="2Oq$k0" />
                                      <node concept="3TrcHB" id="4HamRaEMDe2" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Q80Hx" id="4HamRaEMATs" role="37wK5m" />
                            <node concept="3cpWs3" id="4HamRaEMBe0" role="37wK5m">
                              <node concept="2OqwBi" id="4HamRaEMBe1" role="3uHU7w">
                                <node concept="2OqwBi" id="4HamRaEMBe2" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="4HamRaEMBe3" role="2Oq$k0">
                                    <node concept="pncrf" id="4HamRaEMBe4" role="2JrQYb" />
                                  </node>
                                  <node concept="liA8E" id="4HamRaEMBe5" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4HamRaEMBe6" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="4HamRaEMBe7" role="3uHU7B">
                                <property role="Xl_RC" value="role_" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6UyJMA9G3Fh" role="3clFbw">
                <node concept="2OqwBi" id="6UyJMA9G3Fi" role="3fr31v">
                  <node concept="2OqwBi" id="6UyJMA9G3Fj" role="2Oq$k0">
                    <node concept="2O5UvJ" id="6UyJMA9G3Fk" role="2Oq$k0">
                      <ref role="2O5UnU" to="tpcc:6UyJMA9FNHS" resolve="NodeRenamer" />
                    </node>
                    <node concept="SfwO_" id="6UyJMA9G3Fl" role="2OqNvi" />
                  </node>
                  <node concept="2HwmR7" id="6UyJMA9G3Fm" role="2OqNvi">
                    <node concept="1bVj0M" id="6UyJMA9G3Fn" role="23t8la">
                      <node concept="3clFbS" id="6UyJMA9G3Fo" role="1bW5cS">
                        <node concept="3clFbF" id="6UyJMA9G3Fp" role="3cqZAp">
                          <node concept="2Sg_IR" id="6UyJMA9G3Fq" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxghfTj" role="2SgG2M">
                              <ref role="3cqZAo" node="5W7E4fV0Wub" resolve="it" />
                            </node>
                            <node concept="1Q80Hx" id="6UyJMA9G3Fs" role="2SgHGx" />
                            <node concept="pncrf" id="6UyJMA9G3Ft" role="2SgHGx" />
                            <node concept="PXIeR" id="6UyJMA9G3Fu" role="2SgHGx" />
                            <node concept="PXPDQ" id="6UyJMA9G3Fv" role="2SgHGx" />
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wub" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wuc" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="hhuyyUU" role="P5bDN">
          <node concept="3yc0Fo" id="hhuy$pj" role="OY2wv">
            <node concept="3ycQeJ" id="hhuy$pk" role="3yc0Fp">
              <node concept="3clFbS" id="hhuy$pl" role="2VODD2">
                <node concept="3cpWs8" id="hhuyNUF" role="3cqZAp">
                  <node concept="3cpWsn" id="hhuyNUG" role="3cpWs9">
                    <property role="TrG5h" value="postfixes" />
                    <node concept="_YKpA" id="hhuyNUH" role="1tU5fm">
                      <node concept="17QB3L" id="hP3azYt" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="hhuyRb1" role="33vP2m">
                      <node concept="Tc6Ow" id="hhuyRtw" role="2ShVmc">
                        <node concept="17QB3L" id="hP3azG4" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="hhuyTYB" role="3cqZAp">
                  <node concept="3clFbS" id="hhuyTYC" role="3clFbx">
                    <node concept="3cpWs8" id="hhuzYV3" role="3cqZAp">
                      <node concept="3cpWsn" id="hhuzYV4" role="3cpWs9">
                        <property role="TrG5h" value="name" />
                        <node concept="17QB3L" id="hP3azUF" role="1tU5fm" />
                        <node concept="2YIFZM" id="hhu$1IK" role="33vP2m">
                          <ref role="37wK5l" to="18ew:~NameUtil.decapitalize(java.lang.String)" resolve="decapitalize" />
                          <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                          <node concept="2OqwBi" id="hx3pF_G" role="37wK5m">
                            <node concept="2OqwBi" id="hx3pFA2" role="2Oq$k0">
                              <node concept="3GMtW1" id="hhu$21x" role="2Oq$k0" />
                              <node concept="3TrEf2" id="hhu$21w" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="hhu$21u" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="hhuzag3" role="3cqZAp">
                      <node concept="2OqwBi" id="hzHzCyY" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagT$qv" role="2Oq$k0">
                          <ref role="3cqZAo" node="hhuyNUG" resolve="postfixes" />
                        </node>
                        <node concept="X8dFx" id="hhuzaRK" role="2OqNvi">
                          <node concept="2YIFZM" id="hhuzbOE" role="25WWJ7">
                            <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                            <ref role="37wK5l" to="18ew:~NameUtil.splitByCamels(java.lang.String)" resolve="splitByCamels" />
                            <node concept="37vLTw" id="3GM_nagTuLg" role="37wK5m">
                              <ref role="3cqZAo" node="hhuzYV4" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hx3pFBU" role="3clFbw">
                    <node concept="2OqwBi" id="hx3pF$T" role="2Oq$k0">
                      <node concept="3GMtW1" id="hhuyUlF" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hhuyWTJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="hhuyXAF" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="hhuyTgn" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTy$A" role="3clFbG">
                    <ref role="3cqZAo" node="hhuyNUG" resolve="postfixes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="24YP6ZDq7si" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="5Djf22$o$19" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="24YP6ZDsf7Q" role="3EZMnx">
        <node concept="1iCGBv" id="hr$nSBM" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no target&gt;" />
          <ref role="1ERwB7" node="6LnHxz$z9uF" resolve="LinkDeclarationDeleteActions" />
          <ref role="1NtTu8" to="tpce:fA0lvVK" resolve="target" />
          <node concept="1sVBvm" id="hr$nSBN" role="1sWHZn">
            <node concept="3F0A7n" id="4rDGDFJUR0o" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="tpen:2adVrWyBK$Y" resolve="ConceptName" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="24YP6ZDsUS5" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <node concept="11L4FC" id="24YP6ZD_FHs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="24YP6ZD_EbU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3mYdg7" id="24YP6ZDw3Kj" role="3F10Kt">
            <property role="1413C4" value="card" />
          </node>
          <node concept="Vb9p2" id="24YP6ZDy6n1" role="3F10Kt" />
        </node>
        <node concept="3F0A7n" id="fLJGt1u" role="3EZMnx">
          <ref role="1k5W1q" to="tpen:hshT4rC" resolve="NumericLiteral" />
          <ref role="1NtTu8" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
          <node concept="pkWqt" id="gFR1JhW" role="pqm2j">
            <node concept="3clFbS" id="gFR1JhX" role="2VODD2">
              <node concept="3cpWs6" id="gFR1JMs" role="3cqZAp">
                <node concept="3clFbC" id="gFR1LOT" role="3cqZAk">
                  <node concept="10Nm6u" id="gFR1MNs" role="3uHU7w" />
                  <node concept="2OqwBi" id="hx3pFxC" role="3uHU7B">
                    <node concept="pncrf" id="gFR1Kjc" role="2Oq$k0" />
                    <node concept="3TrEf2" id="gFR1L6Y" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HlG4h" id="hPR1nTY" role="3EZMnx">
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
          <node concept="1HfYo3" id="hPR1nTZ" role="1HlULh">
            <node concept="3TQlhw" id="hPR1nU0" role="1Hhtcw">
              <node concept="3clFbS" id="hPR1nU1" role="2VODD2">
                <node concept="3cpWs6" id="hPR1nU9" role="3cqZAp">
                  <node concept="2OqwBi" id="3Ftr4R8$mJf" role="3cqZAk">
                    <node concept="1XCIdh" id="3Ftr4R8$mJh" role="2OqNvi" />
                    <node concept="2YIFZM" id="i3oeUxq" role="2Oq$k0">
                      <ref role="37wK5l" to="iwwu:i1dAkHk" resolve="getGenuineLinkSourceCardinality" />
                      <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
                      <node concept="pncrf" id="i3oeUxr" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="hPRLeLH" role="pqm2j">
            <node concept="3clFbS" id="hPRLeLI" role="2VODD2">
              <node concept="3clFbF" id="hPRLlIX" role="3cqZAp">
                <node concept="3y3z36" id="hPRLyOd" role="3clFbG">
                  <node concept="10Nm6u" id="hPRLzcc" role="3uHU7w" />
                  <node concept="2OqwBi" id="hPRLm22" role="3uHU7B">
                    <node concept="pncrf" id="hPRLlIY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hPRLywE" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="24YP6ZDt1JB" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <node concept="11L4FC" id="24YP6ZDvSg9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3mYdg7" id="24YP6ZDvZfn" role="3F10Kt">
            <property role="1413C4" value="card" />
          </node>
          <node concept="Vb9p2" id="24YP6ZDy9Ml" role="3F10Kt" />
        </node>
        <node concept="3EZMnI" id="gWFelUP" role="3EZMnx">
          <node concept="3F0ifn" id="gWFelUQ" role="3EZMnx">
            <property role="3F0ifm" value="specializes:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          </node>
          <node concept="1iCGBv" id="gWFesph" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpce:fA0ks94" resolve="specializedLink" />
            <node concept="1sVBvm" id="gWFespi" role="1sWHZn">
              <node concept="3F0A7n" id="2HHDUQHX7mx" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PZ1" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="l2Vlx" id="24YP6ZDw6S7" role="2iSdaV" />
          <node concept="pkWqt" id="24YP6ZDw9E3" role="pqm2j">
            <node concept="3clFbS" id="24YP6ZDw9E4" role="2VODD2">
              <node concept="3clFbF" id="24YP6ZDwbg5" role="3cqZAp">
                <node concept="2OqwBi" id="24YP6ZDweTw" role="3clFbG">
                  <node concept="3x8VRR" id="24YP6ZDwh7O" role="2OqNvi" />
                  <node concept="2OqwBi" id="24YP6ZDwbnl" role="2Oq$k0">
                    <node concept="3TrEf2" id="24YP6ZDwdxZ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                    </node>
                    <node concept="pncrf" id="24YP6ZDwbg4" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="24YP6ZDm0Ut" role="3EZMnx">
          <property role="3F0ifm" value="unordered" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="pkWqt" id="24YP6ZDm9pV" role="pqm2j">
            <node concept="3clFbS" id="24YP6ZDm9pW" role="2VODD2">
              <node concept="3clFbF" id="24YP6ZDmbj4" role="3cqZAp">
                <node concept="2OqwBi" id="24YP6ZDmbqm" role="3clFbG">
                  <node concept="3TrcHB" id="24YP6ZDmdCb" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:24YP6ZDjW8M" resolve="unordered" />
                  </node>
                  <node concept="pncrf" id="24YP6ZDmbj3" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="40tMyUvm1Uv" role="3EZMnx">
          <node concept="VPM3Z" id="40tMyUvm1Uw" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="40tMyUvm1Ux" role="2iSdaV" />
          <node concept="3F0ifn" id="40tMyUvm1Uy" role="3EZMnx">
            <property role="3F0ifm" value="ID: " />
          </node>
          <node concept="3F0A7n" id="40tMyUvm1Uz" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no id&gt;" />
            <property role="39s7Ar" value="false" />
            <ref role="1NtTu8" to="tpce:dqwjwHwEj$" resolve="linkId" />
          </node>
          <node concept="pkWqt" id="40tMyUvm1U$" role="pqm2j">
            <node concept="3clFbS" id="40tMyUvm1U_" role="2VODD2">
              <node concept="3clFbF" id="40tMyUvm1UA" role="3cqZAp">
                <node concept="2YIFZM" id="40tMyUvm1UC" role="3clFbG">
                  <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                  <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                  <node concept="pncrf" id="40tMyUvm1UD" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="24YP6ZDsf7S" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="24YP6ZDsf7V" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="i2IuJM1" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="dqwjwHx25p" role="6VMZX">
      <node concept="2iRkQZ" id="dqwjwHx25q" role="2iSdaV" />
      <node concept="3EZMnI" id="dqwjwHx3hI" role="3EZMnx">
        <node concept="pkWqt" id="40tMyUvlW$z" role="pqm2j">
          <node concept="3clFbS" id="40tMyUvlW$$" role="2VODD2">
            <node concept="3clFbF" id="40tMyUvlXMC" role="3cqZAp">
              <node concept="3fqX7Q" id="40tMyUvlXME" role="3clFbG">
                <node concept="2YIFZM" id="40tMyUvlXMF" role="3fr31v">
                  <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                  <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                  <node concept="pncrf" id="40tMyUvlXMG" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="dqwjwHx3hJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="dqwjwHx3hK" role="2iSdaV" />
        <node concept="3F0ifn" id="dqwjwHx3hL" role="3EZMnx">
          <property role="3F0ifm" value="ID: " />
        </node>
        <node concept="3F0A7n" id="dqwjwHx3hM" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no id&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:dqwjwHwEj$" resolve="linkId" />
        </node>
      </node>
      <node concept="3EZMnI" id="2NG7qWdS9pe" role="3EZMnx">
        <node concept="l2Vlx" id="24YP6ZDmpXL" role="2iSdaV" />
        <node concept="3F0ifn" id="24YP6ZDmwX8" role="3EZMnx">
          <property role="3F0ifm" value="unordered:" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="24YP6ZDmzKc" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:24YP6ZDjW8M" resolve="unordered" />
        </node>
      </node>
      <node concept="3EZMnI" id="4B13ZO$O9CH" role="3EZMnx">
        <node concept="VPM3Z" id="4B13ZO$O9CJ" role="3F10Kt" />
        <node concept="3F0ifn" id="4B13ZO$O9If" role="3EZMnx">
          <property role="3F0ifm" value="transient:" />
        </node>
        <node concept="3F0A7n" id="4B13ZO$O9KV" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:4B13ZO$O3Ox" resolve="transient" />
        </node>
        <node concept="l2Vlx" id="4B13ZO$O9CM" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="fOz5hWZ">
    <property role="TrG5h" value="ConceptDeclaration_Editor" />
    <ref role="1XX52x" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="3EZMnI" id="fOz5hX0" role="2wV5jI">
      <node concept="3EZMnI" id="fOz5hX1" role="3EZMnx">
        <node concept="3F0ifn" id="1BHbmDKX_jq" role="3EZMnx">
          <property role="3F0ifm" value="abstract" />
          <ref role="1ERwB7" node="43oQEeUEWZg" resolve="_ConceptDeclaration_DeleteAbstract_Action" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="2SqB2G" id="14TMHtHiX$e" role="2SqHTX">
            <property role="TrG5h" value="abstractKeyword" />
          </node>
          <node concept="VPxyj" id="1BHbmDKX_yn" role="3F10Kt" />
          <node concept="pkWqt" id="1BHbmDKX_yr" role="pqm2j">
            <node concept="3clFbS" id="1BHbmDKX_ys" role="2VODD2">
              <node concept="3clFbF" id="1BHbmDKXC2m" role="3cqZAp">
                <node concept="3clFbC" id="1BHbmDKXEDU" role="3clFbG">
                  <node concept="2OqwBi" id="1BHbmDKXD23" role="3uHU7B">
                    <node concept="pncrf" id="1BHbmDKXC2l" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1BHbmDKXE2b" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                    </node>
                  </node>
                  <node concept="3clFbT" id="1BHbmDKXF3h" role="3uHU7w">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="43oQEeUHdm4" role="3EZMnx">
          <property role="3F0ifm" value="final" />
          <ref role="1ERwB7" node="43oQEeUKL2$" resolve="_ConceptDeclaration_DeleteFinal_Action" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="2SqB2G" id="14TMHtHiY_B" role="2SqHTX">
            <property role="TrG5h" value="finalKeyword" />
          </node>
          <node concept="pkWqt" id="43oQEeUHdBl" role="pqm2j">
            <node concept="3clFbS" id="43oQEeUHdNx" role="2VODD2">
              <node concept="3clFbF" id="43oQEeUHdQz" role="3cqZAp">
                <node concept="3clFbC" id="43oQEeUHfBI" role="3clFbG">
                  <node concept="3clFbT" id="43oQEeUHfLT" role="3uHU7w">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="43oQEeUHek4" role="3uHU7B">
                    <node concept="3TrcHB" id="43oQEeUHeUh" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:40UcGlRb7V7" resolve="final" />
                    </node>
                    <node concept="pncrf" id="43oQEeUHe6U" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="fOz5hX2" role="3EZMnx">
          <property role="3F0ifm" value="concept" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="A1WHu" id="1wEcoXjJMWW" role="3vIgyS">
            <ref role="A1WHt" node="1wEcoXjJ80j" resolve="ConceptDeclaration_ext_1_RTransform_Menu" />
          </node>
        </node>
        <node concept="PXfge" id="hGQkfP6" role="3EZMnx">
          <property role="3N9gSv" value="false" />
          <ref role="1k5W1q" to="tpen:2adVrWyBK$Y" resolve="ConceptName" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="PXuZA" id="hGQkfP7" role="PY5m3">
            <node concept="3clFbS" id="hGQkfP8" role="2VODD2">
              <node concept="3clFbJ" id="6UyJMA9G3De" role="3cqZAp">
                <node concept="3clFbS" id="6UyJMA9G3Df" role="3clFbx">
                  <node concept="3clFbF" id="6kjnJfQJqJC" role="3cqZAp">
                    <node concept="2OqwBi" id="6kjnJfQJqJD" role="3clFbG">
                      <node concept="2OqwBi" id="6kjnJfQJqJE" role="2Oq$k0">
                        <node concept="liA8E" id="6kjnJfQJqJF" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                        <node concept="2OqwBi" id="6kjnJfQJqJG" role="2Oq$k0">
                          <node concept="liA8E" id="6kjnJfQJqJH" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                          <node concept="1Q80Hx" id="6kjnJfQJqJI" role="2Oq$k0" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6kjnJfQJqJJ" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                        <node concept="2ShNRf" id="4HamRaEM5u7" role="37wK5m">
                          <node concept="YeOm9" id="4HamRaEMveb" role="2ShVmc">
                            <node concept="1Y3b0j" id="4HamRaEMvee" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="g51k:~ChangePropertyEditorCommand" resolve="ChangePropertyEditorCommand" />
                              <ref role="37wK5l" to="g51k:~ChangePropertyEditorCommand.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,java.lang.String)" resolve="ChangePropertyEditorCommand" />
                              <node concept="3Tm1VV" id="4HamRaEMvef" role="1B3o_S" />
                              <node concept="3clFb_" id="4HamRaEMvf9" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="doExecute" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="3Tmbuc" id="4HamRaEMvfa" role="1B3o_S" />
                                <node concept="3cqZAl" id="4HamRaEMvfc" role="3clF45" />
                                <node concept="3clFbS" id="4HamRaEMvfd" role="3clF47">
                                  <node concept="3clFbF" id="4HamRaEMxvh" role="3cqZAp">
                                    <node concept="37vLTI" id="4HamRaEMxvi" role="3clFbG">
                                      <node concept="PXPDQ" id="4HamRaEMxvj" role="37vLTx" />
                                      <node concept="2OqwBi" id="4HamRaEMxvk" role="37vLTJ">
                                        <node concept="pncrf" id="4HamRaEMxvl" role="2Oq$k0" />
                                        <node concept="3TrcHB" id="4HamRaEMxvm" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Q80Hx" id="4HamRaEMvke" role="37wK5m" />
                              <node concept="3cpWs3" id="4HamRaEMwJZ" role="37wK5m">
                                <node concept="2OqwBi" id="4HamRaEMwK0" role="3uHU7w">
                                  <node concept="2OqwBi" id="4HamRaEMwK1" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="4HamRaEMwK2" role="2Oq$k0">
                                      <node concept="pncrf" id="4HamRaEMwK3" role="2JrQYb" />
                                    </node>
                                    <node concept="liA8E" id="4HamRaEMwK4" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4HamRaEMwK5" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="4HamRaEMwK6" role="3uHU7B">
                                  <property role="Xl_RC" value="name_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6UyJMA9G3DL" role="3clFbw">
                  <node concept="2OqwBi" id="6UyJMA9G3DM" role="3fr31v">
                    <node concept="2OqwBi" id="6UyJMA9G3DN" role="2Oq$k0">
                      <node concept="2O5UvJ" id="6UyJMA9G3DO" role="2Oq$k0">
                        <ref role="2O5UnU" to="tpcc:6UyJMA9FNHS" resolve="NodeRenamer" />
                      </node>
                      <node concept="SfwO_" id="6UyJMA9G3DP" role="2OqNvi" />
                    </node>
                    <node concept="2HwmR7" id="6UyJMA9G3DQ" role="2OqNvi">
                      <node concept="1bVj0M" id="6UyJMA9G3DR" role="23t8la">
                        <node concept="3clFbS" id="6UyJMA9G3DS" role="1bW5cS">
                          <node concept="3clFbF" id="6UyJMA9G3DT" role="3cqZAp">
                            <node concept="2Sg_IR" id="6UyJMA9G3DU" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgm86d" role="2SgG2M">
                                <ref role="3cqZAo" node="5W7E4fV0Wud" resolve="it" />
                              </node>
                              <node concept="1Q80Hx" id="6UyJMA9G3DW" role="2SgHGx" />
                              <node concept="pncrf" id="6UyJMA9G3DX" role="2SgHGx" />
                              <node concept="PXIeR" id="6UyJMA9G3DY" role="2SgHGx" />
                              <node concept="PXPDQ" id="6UyJMA9G3DZ" role="2SgHGx" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wud" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wue" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2SqB2G" id="6kjnJfQJj2F" role="2SqHTX">
            <property role="TrG5h" value="name" />
          </node>
        </node>
        <node concept="3EZMnI" id="hG8Ysam" role="3EZMnx">
          <node concept="VPM3Z" id="hG8Ysan" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3EZMnI" id="hG8Yz$i" role="3EZMnx">
            <node concept="3F0ifn" id="hG8Yz$j" role="3EZMnx">
              <property role="3F0ifm" value="extends" />
              <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            </node>
            <node concept="1iCGBv" id="hG8Yz$k" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpce:f_TJDff" resolve="extends" />
              <node concept="1sVBvm" id="hG8Yz$l" role="1sWHZn">
                <node concept="3F0A7n" id="hG8Yz$m" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <property role="1$x2rV" value="&lt;no name&gt;" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <ref role="1k5W1q" to="tpen:2adVrWyBK$Y" resolve="ConceptName" />
                  <node concept="VPRnO" id="3raE_QbVToB" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hG8Yz$o" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IuJLT" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hG8YD_p" role="3EZMnx">
            <node concept="3F0ifn" id="hG8YD_q" role="3EZMnx">
              <property role="3F0ifm" value="implements" />
              <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            </node>
            <node concept="3F2HdR" id="hG8YOD1" role="3EZMnx">
              <ref role="1k5W1q" to="tpen:2adVrWyBK$Y" resolve="ConceptName" />
              <ref role="1NtTu8" to="tpce:h0Pzm$Y" resolve="implements" />
              <node concept="3F0ifn" id="hG90U1L" role="2czzBI">
                <property role="ilYzB" value="&lt;none&gt;" />
                <node concept="VPxyj" id="hHc_LD6" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="2iRkQZ" id="i2IuJME" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hG8YD_v" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IuJM7" role="2iSdaV" />
          </node>
          <node concept="2EHx9g" id="i2IuJL$" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$OVf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJMb" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="g5NkyK9" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PP4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="g5MskOa" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIpK6m" role="3EZMnx" />
        <node concept="3EZMnI" id="g5MsN7D" role="3EZMnx">
          <node concept="3F0ifn" id="g5MsS9M" role="3EZMnx">
            <property role="3F0ifm" value="instance can be root:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          </node>
          <node concept="3F0A7n" id="g5MsS9N" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:fX9Ktp8" resolve="rootable" />
            <node concept="ljvvj" id="4G1g3fHey1B" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3EZMnI" id="7RPG7RvSuou" role="3EZMnx">
            <node concept="VPM3Z" id="7RPG7RvSuow" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="7RPG7RvSvsu" role="3EZMnx">
              <property role="3F0ifm" value="scope:" />
              <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            </node>
            <node concept="3F0A7n" id="4G1g3fIRgM7" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:3Ftr4R6BH8E" resolve="staticScope" />
              <node concept="ljvvj" id="2UAn0GTwM8R" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="l2Vlx" id="7RPG7RvSuoz" role="2iSdaV" />
            <node concept="pkWqt" id="7RPG7RvSzeT" role="pqm2j">
              <node concept="3clFbS" id="7RPG7RvSzeU" role="2VODD2">
                <node concept="3SKdUt" id="7RPG7RvUebg" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYKN" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYKO" role="1PaTwD">
                      <property role="3oM_SC" value="todo:" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKP" role="1PaTwD">
                      <property role="3oM_SC" value="temporary" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKQ" role="1PaTwD">
                      <property role="3oM_SC" value="disabled," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKR" role="1PaTwD">
                      <property role="3oM_SC" value="see" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKS" role="1PaTwD">
                      <property role="3oM_SC" value="MPS-18470" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7RPG7RvSzlx" role="3cqZAp">
                  <node concept="3clFbT" id="7RPG7RvSzlw" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="4G1g3fHey2g" role="2iSdaV" />
          <node concept="3F0ifn" id="4qF2Hm2r7jg" role="3EZMnx">
            <property role="3F0ifm" value="alias:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          </node>
          <node concept="3F0A7n" id="4qF2Hm2r7ji" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no alias&gt;" />
            <ref role="1NtTu8" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
            <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
            <node concept="Vb9p2" id="4qF2Hm2r7jn" role="3F10Kt">
              <property role="Vbekb" value="g1_k_vY/BOLD" />
            </node>
            <node concept="ljvvj" id="4G1g3fHey1E" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="7NP$lWSv_v_" role="3EZMnx">
            <property role="3F0ifm" value="short description:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          </node>
          <node concept="3F0A7n" id="7NP$lWSv_vO" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no short description&gt;" />
            <ref role="1NtTu8" to="tpce:40UcGlRaVSw" resolve="conceptShortDescription" />
            <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
            <node concept="Vb9p2" id="7NP$lWSv_zm" role="3F10Kt">
              <property role="Vbekb" value="g1_k_vY/BOLD" />
            </node>
            <node concept="ljvvj" id="4G1g3fHey1F" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="4qF2Hm2r7jk" role="3EZMnx">
            <node concept="ljvvj" id="4G1g3fHey1G" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPM3Z" id="4NE36Lgv$GB" role="3F10Kt" />
          </node>
          <node concept="3F0ifn" id="g5NcwXr" role="3EZMnx">
            <property role="3F0ifm" value="properties:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            <node concept="VPM3Z" id="hEU$Pcl" role="3F10Kt" />
            <node concept="ljvvj" id="4G1g3fHey1H" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="g5NcwXs" role="3EZMnx">
            <ref role="APP_o" node="16BE8Zl8tqG" resolve="PropertyDeclarationDeleteActions" />
            <ref role="1NtTu8" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
            <node concept="3F0ifn" id="16BE8Zl$cte" role="2czzBI">
              <property role="3F0ifm" value="" />
              <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
              <node concept="VechU" id="16BE8Zl$ctf" role="3F10Kt">
                <property role="Vb096" value="fLJRk5_/gray" />
              </node>
              <node concept="VPxyj" id="16BE8Zl$ctg" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2SqB2G" id="16BE8Zl$cth" role="2SqHTX">
                <property role="TrG5h" value="emptyPropertiesPlaceHolder" />
              </node>
              <node concept="A1WHu" id="1wEcoXjJMXr" role="3vIgyS">
                <ref role="A1WHt" node="1wEcoXjJMXf" resolve="ConceptDeclaration_ApplySideTransforms_2" />
              </node>
            </node>
            <node concept="2EHx9g" id="1KBnK_bwF2J" role="2czzBx" />
            <node concept="VPM3Z" id="hEU$P5i" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="4G1g3fHey1K" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="g5NcwXt" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PyS" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="4G1g3fHey1L" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="hd2D2PF" role="3EZMnx">
            <property role="3F0ifm" value="children:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            <node concept="ljvvj" id="4G1g3fHey1M" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPM3Z" id="23C0l7wHVjg" role="3F10Kt" />
          </node>
          <node concept="3F2HdR" id="hd2D4Ww" role="3EZMnx">
            <ref role="APP_o" node="6LnHxz$z9uF" resolve="LinkDeclarationDeleteActions" />
            <ref role="1NtTu8" to="tpce:f_TKVDF" resolve="linkDeclaration" />
            <ref role="1ERwB7" node="1IN3FLTMXPL" resolve="AbstractConceptDeclaration_Link_Actions" />
            <node concept="2EHx9g" id="1KBnK_bsqag" role="2czzBx" />
            <node concept="ljvvj" id="4G1g3fHey1P" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="107P5z" id="hd2D7tU" role="12AuX0">
              <node concept="3clFbS" id="hd2D7tV" role="2VODD2">
                <node concept="3cpWs6" id="hd2DcYt" role="3cqZAp">
                  <node concept="2OqwBi" id="i0I_m4m" role="3cqZAk">
                    <node concept="2OqwBi" id="hxVQN03" role="2Oq$k0">
                      <node concept="1PxgMI" id="hd2Dm1B" role="2Oq$k0">
                        <node concept="12_Ws6" id="hd2DhjS" role="1m5AlR" />
                        <node concept="chp4Y" id="714IaVdH1yz" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="i0I_apZ" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="21noJN" id="3Ftr4R8$mHJ" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHK" role="21noJM">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="4$FPG" id="hd2Em2O" role="4_6I_">
              <node concept="3clFbS" id="hd2Em2P" role="2VODD2">
                <node concept="3cpWs8" id="hd2EnBb" role="3cqZAp">
                  <node concept="3cpWsn" id="hd2EnBc" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3Tqbb2" id="hd2EnBd" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="hx3pF$v" role="33vP2m">
                      <node concept="2OqwBi" id="hx3pFw6" role="2Oq$k0">
                        <node concept="pncrf" id="hd2EpJM" role="2Oq$k0" />
                        <node concept="I4A8Y" id="hd2Eqao" role="2OqNvi" />
                      </node>
                      <node concept="15TzpJ" id="5wUAOoBBfp8" role="2OqNvi">
                        <ref role="I8UWU" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hd2EuBv" role="3cqZAp">
                  <node concept="2OqwBi" id="i0I_VkS" role="3clFbG">
                    <node concept="2OqwBi" id="hxVQN1i" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTxus" role="2Oq$k0">
                        <ref role="3cqZAo" node="hd2EnBc" resolve="result" />
                      </node>
                      <node concept="3TrcHB" id="i0I_V7V" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="i0I_Vsh" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHL" role="tz02z">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="hd2EyBN" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTAuT" role="3cqZAk">
                    <ref role="3cqZAo" node="hd2EnBc" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="6LnHxz$zgv7" role="2czzBI">
              <property role="3F0ifm" value="" />
              <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
              <node concept="VechU" id="6LnHxz$zgVR" role="3F10Kt">
                <property role="Vb096" value="fLJRk5_/gray" />
              </node>
              <node concept="VPxyj" id="6LnHxz$zgVS" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2SqB2G" id="6LnHxz$zhgQ" role="2SqHTX">
                <property role="TrG5h" value="emptyChildrenPlaceHolder" />
              </node>
              <node concept="A1WHu" id="1wEcoXjJMWC" role="3vIgyS">
                <ref role="A1WHt" node="1wEcoXjJMWs" resolve="ConceptDeclaration_ApplySideTransforms" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="g5MsS9R" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Pny" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="4G1g3fHey1Q" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="hd2ETAB" role="3EZMnx">
            <property role="3F0ifm" value="references:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            <node concept="ljvvj" id="4G1g3fHey1R" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPM3Z" id="23C0l7wHVjm" role="3F10Kt" />
          </node>
          <node concept="3F2HdR" id="hd2EUNy" role="3EZMnx">
            <ref role="APP_o" node="6LnHxz$z9uF" resolve="LinkDeclarationDeleteActions" />
            <ref role="1NtTu8" to="tpce:f_TKVDF" resolve="linkDeclaration" />
            <ref role="1ERwB7" node="1IN3FLTMXPL" resolve="AbstractConceptDeclaration_Link_Actions" />
            <node concept="2EHx9g" id="1KBnK_bwIA2" role="2czzBx" />
            <node concept="ljvvj" id="4G1g3fHey1U" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="107P5z" id="hd2EUNz" role="12AuX0">
              <node concept="3clFbS" id="hd2EUN$" role="2VODD2">
                <node concept="3cpWs6" id="hd2EUN_" role="3cqZAp">
                  <node concept="2OqwBi" id="hy079RV" role="3cqZAk">
                    <node concept="2OqwBi" id="hxVQN0O" role="2Oq$k0">
                      <node concept="1PxgMI" id="hd2EUNF" role="2Oq$k0">
                        <node concept="12_Ws6" id="hd2EUNG" role="1m5AlR" />
                        <node concept="chp4Y" id="714IaVdH1xr" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="i0I_rF$" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="21noJN" id="3Ftr4R8$mHM" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHN" role="21noJM">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="4$FPG" id="hd2EUNH" role="4_6I_">
              <node concept="3clFbS" id="hd2EUNI" role="2VODD2">
                <node concept="3cpWs8" id="hd2EUNJ" role="3cqZAp">
                  <node concept="3cpWsn" id="hd2EUNK" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3Tqbb2" id="hd2EUNL" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="hx3pFu5" role="33vP2m">
                      <node concept="2OqwBi" id="hx3pFuN" role="2Oq$k0">
                        <node concept="pncrf" id="hd2EUNQ" role="2Oq$k0" />
                        <node concept="I4A8Y" id="hd2EUNP" role="2OqNvi" />
                      </node>
                      <node concept="15TzpJ" id="5wUAOoBBfoG" role="2OqNvi">
                        <ref role="I8UWU" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hd2F576" role="3cqZAp">
                  <node concept="2OqwBi" id="i0I_RUY" role="3clFbG">
                    <node concept="2OqwBi" id="hxVQN21" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTujQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="hd2EUNK" resolve="result" />
                      </node>
                      <node concept="3TrcHB" id="i0I_Rpx" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="i0I_SdP" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHO" role="tz02z">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="hd2EUNX" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagT_fB" role="3cqZAk">
                    <ref role="3cqZAo" node="hd2EUNK" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="3zklUlUgGwP" role="2czzBI">
              <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
              <node concept="VechU" id="3zklUlUiyZ3" role="3F10Kt">
                <property role="Vb096" value="fLJRk5_/gray" />
              </node>
              <node concept="VPxyj" id="3zklUlUlKTB" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2SqB2G" id="3zklUlUoYMA" role="2SqHTX">
                <property role="TrG5h" value="emptyRefPlaceHolder" />
              </node>
              <node concept="A1WHu" id="1wEcoXjJMWS" role="3vIgyS">
                <ref role="A1WHt" node="1wEcoXjJMWG" resolve="ConceptDeclaration_ApplySideTransforms_1" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="7NTi8jMbuc3" role="3EZMnx">
            <node concept="3F0ifn" id="7NTi8jMbuc4" role="3EZMnx">
              <property role="3F0ifm" value=" " />
              <node concept="ljvvj" id="7NTi8jMbuc5" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="7NTi8jMbuc6" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="7NTi8jMbuc7" role="2iSdaV" />
            <node concept="3F0ifn" id="7NTi8jMbucb" role="3EZMnx">
              <property role="3F0ifm" value="concept ID:" />
            </node>
            <node concept="3F0A7n" id="7NTi8jMbucc" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
              <node concept="ljvvj" id="5SJcws9hyFo" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F0ifn" id="7NTi8jMbuc8" role="3EZMnx">
              <property role="3F0ifm" value="language UUID:" />
            </node>
            <node concept="3F0A7n" id="7NTi8jMbuc9" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:7NTi8jM8Rgz" resolve="languageId" />
              <node concept="ljvvj" id="7NTi8jMbuca" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F0ifn" id="5SJcws9hyNn" role="3EZMnx">
              <property role="3F0ifm" value="source node:" />
            </node>
            <node concept="1iCGBv" id="5SJcws9hyNo" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:4mSE8vfOBGG" resolve="sourceNode" />
              <node concept="1sVBvm" id="5SJcws9hyNp" role="1sWHZn">
                <node concept="1HlG4h" id="5SJcws9hyNq" role="2wV5jI">
                  <node concept="1HfYo3" id="5SJcws9hyNr" role="1HlULh">
                    <node concept="3TQlhw" id="5SJcws9hyNs" role="1Hhtcw">
                      <node concept="3clFbS" id="5SJcws9hyNt" role="2VODD2">
                        <node concept="3clFbF" id="5SJcws9hyNu" role="3cqZAp">
                          <node concept="3K4zz7" id="5SJcws9hyNv" role="3clFbG">
                            <node concept="Xl_RD" id="5SJcws9hyNw" role="3K4E3e">
                              <property role="Xl_RC" value="current node" />
                            </node>
                            <node concept="2OqwBi" id="5SJcws9hyNx" role="3K4GZi">
                              <node concept="pncrf" id="5SJcws9hyNy" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORfyJ" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                              </node>
                            </node>
                            <node concept="3clFbC" id="5SJcws9hyN$" role="3K4Cdx">
                              <node concept="10Nm6u" id="5SJcws9hyN_" role="3uHU7w" />
                              <node concept="pncrf" id="5SJcws9hyNA" role="3uHU7B" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="VPxyj" id="7ncwv_A2mFX" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="pkWqt" id="7NTi8jMbucd" role="pqm2j">
              <node concept="3clFbS" id="7NTi8jMbuce" role="2VODD2">
                <node concept="3clFbF" id="5SJcws9hlv8" role="3cqZAp">
                  <node concept="2YIFZM" id="5SJcws9hn7u" role="3clFbG">
                    <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                    <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                    <node concept="pncrf" id="5SJcws9hnf4" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$P0k" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pe4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJM0" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="1ZDuSTZt4z3" role="3EZMnx">
        <node concept="VPM3Z" id="4NE36Lgv$KF" role="3F10Kt" />
      </node>
      <node concept="18a60v" id="1ZDuSTZpo1V" role="3EZMnx">
        <node concept="VPM3Z" id="1ZDuSTZpo1X" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="i2Iv53A" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gSMKDI5" role="6VMZX">
      <node concept="3EZMnI" id="1o9qxtfa8vZ" role="3EZMnx">
        <node concept="VPM3Z" id="1o9qxtfa8w0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1o9qxtfa8w1" role="2iSdaV" />
        <node concept="3F0ifn" id="1o9qxtfa8w2" role="3EZMnx">
          <property role="3F0ifm" value="ID: " />
        </node>
        <node concept="3F0A7n" id="1o9qxtfa8w3" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no id&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
        </node>
        <node concept="pkWqt" id="5SJcws9h$Nj" role="pqm2j">
          <node concept="3clFbS" id="5SJcws9h$Nk" role="2VODD2">
            <node concept="3clFbF" id="5SJcws9hntT" role="3cqZAp">
              <node concept="3fqX7Q" id="5SJcws9hntR" role="3clFbG">
                <node concept="2YIFZM" id="5SJcws9hn_m" role="3fr31v">
                  <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                  <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                  <node concept="pncrf" id="5SJcws9hn_n" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="28RKVM5GTFX" role="3EZMnx">
        <node concept="VPM3Z" id="28RKVM5GTFY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="28RKVM5GTG0" role="2iSdaV" />
        <node concept="3F0ifn" id="28RKVM5GTG1" role="3EZMnx">
          <property role="3F0ifm" value="help URL (deprecated):" />
        </node>
        <node concept="3F0A7n" id="28RKVM5GTG3" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no URL&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:28RKVM5GRls" resolve="oldHelpURL" />
          <ref role="1k5W1q" to="tpen:MpZliP$Hlb" resolve="Url" />
        </node>
        <node concept="pkWqt" id="1yOtqsjMAF3" role="pqm2j">
          <node concept="3clFbS" id="1yOtqsjMAF4" role="2VODD2">
            <node concept="3clFbF" id="1yOtqsjMBAf" role="3cqZAp">
              <node concept="2OqwBi" id="1yOtqsjMDTu" role="3clFbG">
                <node concept="2OqwBi" id="1yOtqsjMBVU" role="2Oq$k0">
                  <node concept="pncrf" id="1yOtqsjMBAe" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1yOtqsjMCUy" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:28RKVM5GRls" resolve="oldHelpURL" />
                  </node>
                </node>
                <node concept="17RvpY" id="1yOtqsjMEMU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1yOtqsjMAvT" role="3EZMnx">
        <node concept="VPM3Z" id="1yOtqsjMAvU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1yOtqsjMAvV" role="2iSdaV" />
        <node concept="3F0ifn" id="1yOtqsjMAvW" role="3EZMnx">
          <property role="3F0ifm" value="help URL:" />
        </node>
        <node concept="3F1sOY" id="1yOtqsjMF9F" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:1yOtqsjM_nV" resolve="helpURL" />
        </node>
      </node>
      <node concept="3EZMnI" id="gSMKOBR" role="3EZMnx">
        <node concept="3F0ifn" id="gSMKOBS" role="3EZMnx">
          <property role="3F0ifm" value="icon (deprecated)" />
        </node>
        <node concept="3F0A7n" id="gSMKOBT" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no icon&gt;" />
          <ref role="1NtTu8" to="tpce:gSMwhzt" resolve="iconPath" />
          <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        </node>
        <node concept="VPM3Z" id="hEU$PQn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJLJ" role="2iSdaV" />
        <node concept="pkWqt" id="5vfjF5cjUZx" role="pqm2j">
          <node concept="3clFbS" id="5vfjF5cjUZy" role="2VODD2">
            <node concept="3clFbF" id="5vfjF5cjWd7" role="3cqZAp">
              <node concept="3y3z36" id="5vfjF5cjYzN" role="3clFbG">
                <node concept="10Nm6u" id="5vfjF5cjYGQ" role="3uHU7w" />
                <node concept="2OqwBi" id="5vfjF5cjWuT" role="3uHU7B">
                  <node concept="pncrf" id="5vfjF5cjWd6" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5vfjF5cjXTq" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:gSMwhzt" resolve="iconPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5vfjF5cjZAf" role="3EZMnx">
        <node concept="VPM3Z" id="5vfjF5cjZAg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="5vfjF5cjZAh" role="2iSdaV" />
        <node concept="3F0ifn" id="5vfjF5cjZAi" role="3EZMnx">
          <property role="3F0ifm" value="icon:" />
        </node>
        <node concept="3F1sOY" id="5vfjF5ck0fr" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:5vfjF5cjTVP" resolve="icon" />
        </node>
      </node>
      <node concept="3F0ifn" id="5_v6yKlJicH" role="3EZMnx">
        <node concept="pkWqt" id="5_v6yKlMLh6" role="pqm2j">
          <node concept="3clFbS" id="5_v6yKlMLh7" role="2VODD2">
            <node concept="3clFbF" id="5_v6yKlMMHO" role="3cqZAp">
              <node concept="2YIFZM" id="5_v6yKlMRc$" role="3clFbG">
                <ref role="37wK5l" to="fyhk:~RuntimeFlags.isInternalMode()" resolve="isInternalMode" />
                <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5_v6yKlJhJy" role="3EZMnx">
        <node concept="VPM3Z" id="5_v6yKlJhJz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5_v6yKlJhJ$" role="3EZMnx">
          <property role="3F0ifm" value="scope:" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="5_v6yKlJhJ_" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:3Ftr4R6BH8E" resolve="staticScope" />
          <node concept="ljvvj" id="5_v6yKlJhJA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="5_v6yKlJibQ" role="2iSdaV" />
        <node concept="pkWqt" id="5_v6yKlMRol" role="pqm2j">
          <node concept="3clFbS" id="5_v6yKlMRom" role="2VODD2">
            <node concept="3clFbF" id="5_v6yKlMRoo" role="3cqZAp">
              <node concept="2YIFZM" id="5_v6yKlMRop" role="3clFbG">
                <ref role="37wK5l" to="fyhk:~RuntimeFlags.isInternalMode()" resolve="isInternalMode" />
                <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="i2IuJLQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h0PlKm5">
    <ref role="1XX52x" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    <node concept="3EZMnI" id="h0PlMxh" role="2wV5jI">
      <node concept="3EZMnI" id="h0PlMxi" role="3EZMnx">
        <node concept="3F0ifn" id="h0PlMxj" role="3EZMnx">
          <property role="3F0ifm" value="interface concept" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
        </node>
        <node concept="PXfge" id="hGQm$eS" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="PXuZA" id="hGQm$eT" role="PY5m3">
            <node concept="3clFbS" id="hGQm$eU" role="2VODD2">
              <node concept="3clFbJ" id="6UyJMA9G3E_" role="3cqZAp">
                <node concept="3clFbS" id="6UyJMA9G3EA" role="3clFbx">
                  <node concept="3clFbF" id="6kjnJfQKNqG" role="3cqZAp">
                    <node concept="2OqwBi" id="6kjnJfQKNqH" role="3clFbG">
                      <node concept="2OqwBi" id="6kjnJfQKNqI" role="2Oq$k0">
                        <node concept="liA8E" id="6kjnJfQKNqJ" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                        <node concept="2OqwBi" id="6kjnJfQKNqK" role="2Oq$k0">
                          <node concept="liA8E" id="6kjnJfQKNqL" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                          <node concept="1Q80Hx" id="6kjnJfQKNqM" role="2Oq$k0" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6kjnJfQKNqN" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                        <node concept="2ShNRf" id="4HamRaEM_8X" role="37wK5m">
                          <node concept="YeOm9" id="4HamRaEM_8Y" role="2ShVmc">
                            <node concept="1Y3b0j" id="4HamRaEM_8Z" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="g51k:~ChangePropertyEditorCommand" resolve="ChangePropertyEditorCommand" />
                              <ref role="37wK5l" to="g51k:~ChangePropertyEditorCommand.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,java.lang.String)" resolve="ChangePropertyEditorCommand" />
                              <node concept="3Tm1VV" id="4HamRaEM_90" role="1B3o_S" />
                              <node concept="3clFb_" id="4HamRaEM_91" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="doExecute" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="3Tmbuc" id="4HamRaEM_92" role="1B3o_S" />
                                <node concept="3cqZAl" id="4HamRaEM_93" role="3clF45" />
                                <node concept="3clFbS" id="4HamRaEM_94" role="3clF47">
                                  <node concept="3clFbF" id="4HamRaEM_95" role="3cqZAp">
                                    <node concept="37vLTI" id="4HamRaEM_96" role="3clFbG">
                                      <node concept="PXPDQ" id="4HamRaEM_97" role="37vLTx" />
                                      <node concept="2OqwBi" id="4HamRaEM_98" role="37vLTJ">
                                        <node concept="pncrf" id="4HamRaEM_99" role="2Oq$k0" />
                                        <node concept="3TrcHB" id="4HamRaEM_9a" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Q80Hx" id="4HamRaEM_9b" role="37wK5m" />
                              <node concept="3cpWs3" id="4HamRaEM_9c" role="37wK5m">
                                <node concept="2OqwBi" id="4HamRaEM_9d" role="3uHU7w">
                                  <node concept="2OqwBi" id="4HamRaEM_9e" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="4HamRaEM_9f" role="2Oq$k0">
                                      <node concept="pncrf" id="4HamRaEM_9g" role="2JrQYb" />
                                    </node>
                                    <node concept="liA8E" id="4HamRaEM_9h" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4HamRaEM_9i" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="4HamRaEM_9j" role="3uHU7B">
                                  <property role="Xl_RC" value="name_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6UyJMA9G3EH" role="3clFbw">
                  <node concept="2OqwBi" id="6UyJMA9G3EI" role="3fr31v">
                    <node concept="2OqwBi" id="6UyJMA9G3EJ" role="2Oq$k0">
                      <node concept="2O5UvJ" id="6UyJMA9G3EK" role="2Oq$k0">
                        <ref role="2O5UnU" to="tpcc:6UyJMA9FNHS" resolve="NodeRenamer" />
                      </node>
                      <node concept="SfwO_" id="6UyJMA9G3EL" role="2OqNvi" />
                    </node>
                    <node concept="2HwmR7" id="6UyJMA9G3EM" role="2OqNvi">
                      <node concept="1bVj0M" id="6UyJMA9G3EN" role="23t8la">
                        <node concept="3clFbS" id="6UyJMA9G3EO" role="1bW5cS">
                          <node concept="3clFbF" id="6UyJMA9G3EP" role="3cqZAp">
                            <node concept="2Sg_IR" id="6UyJMA9G3EQ" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgm8G5" role="2SgG2M">
                                <ref role="3cqZAo" node="5W7E4fV0Wuf" resolve="it" />
                              </node>
                              <node concept="1Q80Hx" id="6UyJMA9G3ES" role="2SgHGx" />
                              <node concept="pncrf" id="6UyJMA9G3ET" role="2SgHGx" />
                              <node concept="PXIeR" id="6UyJMA9G3EU" role="2SgHGx" />
                              <node concept="PXPDQ" id="6UyJMA9G3EV" role="2SgHGx" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wuf" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wug" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2SqB2G" id="6kjnJfQKMoV" role="2SqHTX">
            <property role="TrG5h" value="name" />
          </node>
        </node>
        <node concept="3EZMnI" id="hG95IbS" role="3EZMnx">
          <node concept="VPM3Z" id="hG95IbT" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="hG95Kx_" role="3EZMnx">
            <property role="3F0ifm" value="extends" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          </node>
          <node concept="3F2HdR" id="hG95MWR" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:h0PrDRO" resolve="extends" />
            <node concept="3F0ifn" id="hG95S1P" role="2czzBI">
              <property role="ilYzB" value="&lt;none&gt;" />
              <node concept="VPxyj" id="42lfqf__fzT" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="2iRkQZ" id="i2IuJMt" role="2czzBx" />
          </node>
          <node concept="2iRfu4" id="i2IuJMj" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P19" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJLc" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h0PlMxl" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PSa" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="h0PlMxm" role="3EZMnx">
        <node concept="3XFhqQ" id="1KZwMoK7KDh" role="3EZMnx" />
        <node concept="3EZMnI" id="h0PlMxo" role="3EZMnx">
          <node concept="l2Vlx" id="4G1g3fHfeKW" role="2iSdaV" />
          <node concept="3F0ifn" id="5coNnRAJWXO" role="3EZMnx">
            <property role="3F0ifm" value="short description:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          </node>
          <node concept="3F0A7n" id="5coNnRAJWXP" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no short description&gt;" />
            <ref role="1NtTu8" to="tpce:40UcGlRaVSw" resolve="conceptShortDescription" />
            <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
            <node concept="Vb9p2" id="5coNnRAJWXQ" role="3F10Kt">
              <property role="Vbekb" value="g1_k_vY/BOLD" />
            </node>
            <node concept="ljvvj" id="5coNnRAJWXR" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="h0Psb2U" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$P7S" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="4G1g3fHfeKo" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="h0PlMxy" role="3EZMnx">
            <property role="3F0ifm" value="properties:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            <node concept="VPM3Z" id="23C0l7wHX5_" role="3F10Kt" />
            <node concept="ljvvj" id="4G1g3fHfeKp" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="h0PlMxz" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
            <node concept="3F0ifn" id="16BE8Zl$iEj" role="2czzBI">
              <property role="3F0ifm" value="" />
              <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
              <node concept="VechU" id="16BE8Zl$iEk" role="3F10Kt">
                <property role="Vb096" value="fLJRk5_/gray" />
              </node>
              <node concept="VPxyj" id="16BE8Zl$iEl" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2SqB2G" id="16BE8Zl$iEm" role="2SqHTX">
                <property role="TrG5h" value="emptyPropertiesPlaceHolder" />
              </node>
              <node concept="A1WHu" id="1wEcoXjJMXb" role="3vIgyS">
                <ref role="A1WHt" node="1wEcoXjJMWZ" resolve="InterfaceConceptDeclaration_ApplySideTransforms_2" />
              </node>
            </node>
            <node concept="l2Vlx" id="4G1g3fHfeKr" role="2czzBx" />
            <node concept="VPM3Z" id="hEU$P23" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="pj6Ft" id="4G1g3fHfeKq" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="4G1g3fHfeKs" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="h0PlMx$" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PJi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="4G1g3fHfeKt" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="hn8am1U" role="3EZMnx">
            <property role="3F0ifm" value="children:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            <node concept="ljvvj" id="4G1g3fHfeKu" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPM3Z" id="23C0l7wHX5F" role="3F10Kt" />
          </node>
          <node concept="3F2HdR" id="hn8am1V" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:f_TKVDF" resolve="linkDeclaration" />
            <ref role="1ERwB7" node="1IN3FLTMXPL" resolve="AbstractConceptDeclaration_Link_Actions" />
            <node concept="3F0ifn" id="4pmFEms0_An" role="2czzBI">
              <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
              <node concept="VechU" id="4pmFEms0Fdb" role="3F10Kt">
                <property role="Vb096" value="fLJRk5_/gray" />
              </node>
              <node concept="VPxyj" id="4pmFEms0Fdc" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2SqB2G" id="4pmFEms0L59" role="2SqHTX">
                <property role="TrG5h" value="emptyChildrenPlaceHolder" />
              </node>
              <node concept="A1WHu" id="1wEcoXjJMWo" role="3vIgyS">
                <ref role="A1WHt" node="1wEcoXjJMWc" resolve="InterfaceConceptDeclaration_ApplySideTransforms_1" />
              </node>
            </node>
            <node concept="pj6Ft" id="4G1g3fHfeKv" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="4G1g3fHfeKx" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="l2Vlx" id="4G1g3fHfeKw" role="2czzBx" />
            <node concept="107P5z" id="hn8am1W" role="12AuX0">
              <node concept="3clFbS" id="hn8am1X" role="2VODD2">
                <node concept="3cpWs6" id="hn8am1Y" role="3cqZAp">
                  <node concept="2OqwBi" id="i0IA7D6" role="3cqZAk">
                    <node concept="2OqwBi" id="hxVQN0K" role="2Oq$k0">
                      <node concept="1PxgMI" id="hn8am24" role="2Oq$k0">
                        <node concept="12_Ws6" id="hn8am25" role="1m5AlR" />
                        <node concept="chp4Y" id="714IaVdH1yw" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="i0IA7mi" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="21noJN" id="3Ftr4R8$mHP" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHQ" role="21noJM">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="4$FPG" id="hn8am26" role="4_6I_">
              <node concept="3clFbS" id="hn8am27" role="2VODD2">
                <node concept="3cpWs8" id="hn8am28" role="3cqZAp">
                  <node concept="3cpWsn" id="hn8am29" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3Tqbb2" id="hn8am2a" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="hx3pFtm" role="33vP2m">
                      <node concept="2OqwBi" id="hx3pF_E" role="2Oq$k0">
                        <node concept="pncrf" id="hn8am2f" role="2Oq$k0" />
                        <node concept="I4A8Y" id="hn8am2e" role="2OqNvi" />
                      </node>
                      <node concept="15TzpJ" id="5wUAOoBBfoD" role="2OqNvi">
                        <ref role="I8UWU" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hn8am2g" role="3cqZAp">
                  <node concept="2OqwBi" id="i0IAvp_" role="3clFbG">
                    <node concept="2OqwBi" id="hxVQN01" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTx9D" role="2Oq$k0">
                        <ref role="3cqZAo" node="hn8am29" resolve="result" />
                      </node>
                      <node concept="3TrcHB" id="i0IAv8u" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="i0IAvxe" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHR" role="tz02z">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="hn8am2m" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTBgm" role="3cqZAk">
                    <ref role="3cqZAo" node="hn8am29" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="hn8am2L" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Ps0" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="4G1g3fHfeKy" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="hn8am2M" role="3EZMnx">
            <property role="3F0ifm" value="references:" />
            <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            <node concept="ljvvj" id="4G1g3fHfeKz" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPM3Z" id="23C0l7wHX5L" role="3F10Kt" />
          </node>
          <node concept="3F2HdR" id="hn8am2N" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:f_TKVDF" resolve="linkDeclaration" />
            <ref role="1ERwB7" node="1IN3FLTMXPL" resolve="AbstractConceptDeclaration_Link_Actions" />
            <node concept="3F0ifn" id="4pmFEms0Hn6" role="2czzBI">
              <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
              <node concept="VechU" id="4pmFEms0Hn7" role="3F10Kt">
                <property role="Vb096" value="fLJRk5_/gray" />
              </node>
              <node concept="VPxyj" id="4pmFEms0Hn8" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2SqB2G" id="4pmFEms0Mvu" role="2SqHTX">
                <property role="TrG5h" value="emptyRefPlaceHolder" />
              </node>
              <node concept="A1WHu" id="1wEcoXjJMW8" role="3vIgyS">
                <ref role="A1WHt" node="1wEcoXjJMVW" resolve="InterfaceConceptDeclaration_ApplySideTransforms" />
              </node>
            </node>
            <node concept="pj6Ft" id="4G1g3fHfeK$" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="4G1g3fHfeKA" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="l2Vlx" id="4G1g3fHfeK_" role="2czzBx" />
            <node concept="107P5z" id="hn8am2O" role="12AuX0">
              <node concept="3clFbS" id="hn8am2P" role="2VODD2">
                <node concept="3cpWs6" id="hn8am2Q" role="3cqZAp">
                  <node concept="2OqwBi" id="i0IArg6" role="3cqZAk">
                    <node concept="2OqwBi" id="hxVQN0r" role="2Oq$k0">
                      <node concept="1PxgMI" id="hn8am2W" role="2Oq$k0">
                        <node concept="12_Ws6" id="hn8am2X" role="1m5AlR" />
                        <node concept="chp4Y" id="714IaVdH1y4" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="i0IAqI9" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="21noJN" id="3Ftr4R8$mHS" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHT" role="21noJM">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="4$FPG" id="hn8am2Y" role="4_6I_">
              <node concept="3clFbS" id="hn8am2Z" role="2VODD2">
                <node concept="3cpWs8" id="hn8am30" role="3cqZAp">
                  <node concept="3cpWsn" id="hn8am31" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3Tqbb2" id="hn8am32" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="hx3pFut" role="33vP2m">
                      <node concept="2OqwBi" id="hx3pFzb" role="2Oq$k0">
                        <node concept="pncrf" id="hn8am37" role="2Oq$k0" />
                        <node concept="I4A8Y" id="hn8am36" role="2OqNvi" />
                      </node>
                      <node concept="15TzpJ" id="5wUAOoBBfoT" role="2OqNvi">
                        <ref role="I8UWU" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hn8am38" role="3cqZAp">
                  <node concept="2OqwBi" id="i0IAnAk" role="3clFbG">
                    <node concept="2OqwBi" id="hxVQN1F" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTvmw" role="2Oq$k0">
                        <ref role="3cqZAo" node="hn8am31" resolve="result" />
                      </node>
                      <node concept="3TrcHB" id="i0IAnaI" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="i0IAo8k" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mHU" role="tz02z">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="hn8am3e" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTwvQ" role="3cqZAk">
                    <ref role="3cqZAo" node="hn8am31" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="7NTi8jMaQRO" role="3EZMnx">
            <node concept="3F0ifn" id="7NTi8jMaQwT" role="3EZMnx">
              <property role="3F0ifm" value=" " />
              <node concept="ljvvj" id="7NTi8jMaQGJ" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="VPM3Z" id="23C0l7wHXwy" role="3F10Kt" />
            </node>
            <node concept="VPM3Z" id="7NTi8jMaQRQ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="7NTi8jMaQRT" role="2iSdaV" />
            <node concept="3F0ifn" id="7NTi8jMaOnp" role="3EZMnx">
              <property role="3F0ifm" value="language UUID:" />
              <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            </node>
            <node concept="3F0A7n" id="7NTi8jMaOHj" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:7NTi8jM8Rgz" resolve="languageId" />
              <node concept="ljvvj" id="7NTi8jMaPZ$" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F0ifn" id="7NTi8jMaP3f" role="3EZMnx">
              <property role="3F0ifm" value="concept ID:" />
              <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
            </node>
            <node concept="3F0A7n" id="7NTi8jMaPpd" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
            </node>
            <node concept="pkWqt" id="7NTi8jMaRps" role="pqm2j">
              <node concept="3clFbS" id="7NTi8jMaRpt" role="2VODD2">
                <node concept="3SKdUt" id="7NTi8jMaV1A" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYKT" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYKU" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKV" role="1PaTwD">
                      <property role="3oM_SC" value="will" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKW" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKX" role="1PaTwD">
                      <property role="3oM_SC" value="shown" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKY" role="1PaTwD">
                      <property role="3oM_SC" value="only" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYKZ" role="1PaTwD">
                      <property role="3oM_SC" value="when" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL0" role="1PaTwD">
                      <property role="3oM_SC" value="generating" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL1" role="1PaTwD">
                      <property role="3oM_SC" value="into" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL2" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL3" role="1PaTwD">
                      <property role="3oM_SC" value="concept" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7NTi8jMaVov" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYL4" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYL5" role="1PaTwD">
                      <property role="3oM_SC" value="otherwise," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL6" role="1PaTwD">
                      <property role="3oM_SC" value="only" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL7" role="1PaTwD">
                      <property role="3oM_SC" value="concept" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL8" role="1PaTwD">
                      <property role="3oM_SC" value="id" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYL9" role="1PaTwD">
                      <property role="3oM_SC" value="will" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYLa" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYLb" role="1PaTwD">
                      <property role="3oM_SC" value="shown" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYLc" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYLd" role="1PaTwD">
                      <property role="3oM_SC" value="inspector" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7NTi8jMaT1G" role="3cqZAp">
                  <node concept="22lmx$" id="7NTi8jMaUrQ" role="3clFbG">
                    <node concept="1eOMI4" id="7NTi8jMaZ2Y" role="3uHU7w">
                      <node concept="2ZW3vV" id="7NTi8jMaZ2Z" role="1eOMHV">
                        <node concept="3uibUv" id="7BS8DFNL7Bw" role="2ZW6by">
                          <ref role="3uigEE" to="31cb:~TransientSModule" resolve="TransientSModule" />
                        </node>
                        <node concept="2OqwBi" id="7NTi8jMaZ31" role="2ZW6bz">
                          <node concept="2JrnkZ" id="7NTi8jMaZ32" role="2Oq$k0">
                            <node concept="2OqwBi" id="7NTi8jMaZ33" role="2JrQYb">
                              <node concept="pncrf" id="7NTi8jMaZ34" role="2Oq$k0" />
                              <node concept="I4A8Y" id="7NTi8jMaZ35" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7NTi8jMaZ36" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="7NTi8jMaThM" role="3uHU7B">
                      <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
                      <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                      <node concept="2OqwBi" id="7NTi8jMaRIP" role="37wK5m">
                        <node concept="pncrf" id="7NTi8jMaRwD" role="2Oq$k0" />
                        <node concept="I4A8Y" id="7NTi8jMaS_h" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$P9N" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PZK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJLR" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2Iv53$" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1o9qxtfa9Bt" role="6VMZX">
      <node concept="3EZMnI" id="1o9qxtfa9Ru" role="3EZMnx">
        <node concept="VPM3Z" id="1o9qxtfa9Rv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1o9qxtfa9Rw" role="2iSdaV" />
        <node concept="3F0ifn" id="1o9qxtfa9Rx" role="3EZMnx">
          <property role="3F0ifm" value="concept ID: " />
        </node>
        <node concept="3F0A7n" id="2tHJeLFeT3d" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no id&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
        </node>
      </node>
      <node concept="2iRkQZ" id="1o9qxtfa9Bu" role="2iSdaV" />
      <node concept="3EZMnI" id="1yOtqsjNz0R" role="3EZMnx">
        <node concept="VPM3Z" id="1yOtqsjNz0S" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1yOtqsjNz0T" role="2iSdaV" />
        <node concept="3F0ifn" id="1yOtqsjNz0U" role="3EZMnx">
          <property role="3F0ifm" value="help URL (deprecated):" />
        </node>
        <node concept="3F0A7n" id="1yOtqsjNz0V" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no URL&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:28RKVM5GRls" resolve="oldHelpURL" />
          <ref role="1k5W1q" to="tpen:MpZliP$Hlb" resolve="Url" />
        </node>
        <node concept="pkWqt" id="1yOtqsjNz0W" role="pqm2j">
          <node concept="3clFbS" id="1yOtqsjNz0X" role="2VODD2">
            <node concept="3clFbF" id="1yOtqsjNz0Y" role="3cqZAp">
              <node concept="2OqwBi" id="1yOtqsjNz0Z" role="3clFbG">
                <node concept="2OqwBi" id="1yOtqsjNz10" role="2Oq$k0">
                  <node concept="pncrf" id="1yOtqsjNz11" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1yOtqsjNz12" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:28RKVM5GRls" resolve="oldHelpURL" />
                  </node>
                </node>
                <node concept="17RvpY" id="1yOtqsjNz13" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1yOtqsjNz14" role="3EZMnx">
        <node concept="VPM3Z" id="1yOtqsjNz15" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1yOtqsjNz16" role="2iSdaV" />
        <node concept="3F0ifn" id="1yOtqsjNz17" role="3EZMnx">
          <property role="3F0ifm" value="help URL:" />
        </node>
        <node concept="3F1sOY" id="1yOtqsjNz18" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:1yOtqsjM_nV" resolve="helpURL" />
        </node>
      </node>
      <node concept="3EZMnI" id="4mSE8vfOMDF" role="3EZMnx">
        <node concept="VPM3Z" id="4mSE8vfOMDG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mSE8vfOMDH" role="2iSdaV" />
        <node concept="3F0ifn" id="4mSE8vfOMDI" role="3EZMnx">
          <property role="3F0ifm" value="source node:" />
        </node>
        <node concept="1iCGBv" id="4mSE8vfOMDJ" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:4mSE8vfOBGG" resolve="sourceNode" />
          <node concept="1sVBvm" id="4mSE8vfOMDK" role="1sWHZn">
            <node concept="1HlG4h" id="4mSE8vfOMDL" role="2wV5jI">
              <node concept="1HfYo3" id="4mSE8vfOMDM" role="1HlULh">
                <node concept="3TQlhw" id="4mSE8vfOMDN" role="1Hhtcw">
                  <node concept="3clFbS" id="4mSE8vfOMDO" role="2VODD2">
                    <node concept="3clFbF" id="4mSE8vfOMDP" role="3cqZAp">
                      <node concept="3K4zz7" id="4mSE8vfOMDQ" role="3clFbG">
                        <node concept="Xl_RD" id="4mSE8vfOMDR" role="3K4E3e">
                          <property role="Xl_RC" value="current node" />
                        </node>
                        <node concept="2OqwBi" id="4mSE8vfOMDS" role="3K4GZi">
                          <node concept="pncrf" id="4mSE8vfOMDT" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORfyL" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                        <node concept="3clFbC" id="4mSE8vfOMDV" role="3K4Cdx">
                          <node concept="10Nm6u" id="4mSE8vfOMDW" role="3uHU7w" />
                          <node concept="pncrf" id="4mSE8vfOMDX" role="3uHU7B" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPxyj" id="7ncwv_A2o6W" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="h0Ps2Gu">
    <ref role="1XX52x" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
    <node concept="1iCGBv" id="htfH2sw" role="2wV5jI">
      <ref role="1NtTu8" to="tpce:h0PrY0D" resolve="intfc" />
      <node concept="1sVBvm" id="htfH2sx" role="1sWHZn">
        <node concept="3F0A7n" id="htfH2sy" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="6o2z4lPAV9S" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hOauoxj">
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <ref role="1XX52x" to="tpce:hOasaTk" resolve="DeprecatedNodeAnnotation" />
    <node concept="3EZMnI" id="hOaB1vy" role="2wV5jI">
      <node concept="3EZMnI" id="hOaB2T9" role="3EZMnx">
        <node concept="2SqB2G" id="14TMHtHhSda" role="2SqHTX">
          <property role="TrG5h" value="deprecatedCollection" />
        </node>
        <node concept="VPM3Z" id="hOaB2Ta" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hOaB3GV" role="3EZMnx">
          <property role="3F0ifm" value="@Deprecated" />
          <ref role="1k5W1q" node="hOawUFH" resolve="AnnotationNode" />
          <ref role="1ERwB7" node="hP4bng3" resolve="DeprecatedNodeAnnotation_ActionMap" />
          <node concept="3$7jql" id="hOZ7MDD" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3EZMnI" id="hOZ5bSW" role="3EZMnx">
          <node concept="VPM3Z" id="hOZ5bSX" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="hOZ5cJV" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <node concept="3mYdg7" id="i17wfqD" role="3F10Kt">
              <property role="1413C4" value="brace" />
            </node>
            <node concept="VechU" id="hOZ5nL7" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11LMrY" id="i1VNe1k" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="hOZ5kQl" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <ref role="1NtTu8" to="tpce:hOYLQ3C" resolve="comment" />
            <node concept="VechU" id="hOZ5ol1" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="3$7fVu" id="hOZ1wdG" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="3$7jql" id="hOZ1xzr" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
          <node concept="3F0ifn" id="hOZ5jrg" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <node concept="3mYdg7" id="i17wjTt" role="3F10Kt">
              <property role="1413C4" value="brace" />
            </node>
            <node concept="VechU" id="hOZ5p3r" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11L4FC" id="i1VNg9k" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hOZ5bSZ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pkWqt" id="hOZ5rEG" role="pqm2j">
            <node concept="3clFbS" id="hOZ5rEH" role="2VODD2">
              <node concept="3clFbF" id="hOZ5s81" role="3cqZAp">
                <node concept="3y3z36" id="hOZ5u0f" role="3clFbG">
                  <node concept="10Nm6u" id="hOZ5uCO" role="3uHU7w" />
                  <node concept="2OqwBi" id="hOZ5ssN" role="3uHU7B">
                    <node concept="pncrf" id="hOZ5s82" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hOZ5tJ8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:hOYLQ3C" resolve="comment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IuJLw" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hOZ5fxg" role="3EZMnx">
          <node concept="VPM3Z" id="hOZ5fxh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="hOZ5fxi" role="3EZMnx">
            <property role="3F0ifm" value="since build" />
            <node concept="VechU" id="hOZ5fxj" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="3$7jql" id="hOZ5fxk" role="3F10Kt">
              <property role="3$6WeP" value="1.0" />
            </node>
          </node>
          <node concept="3F0A7n" id="hOZ5fxl" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <ref role="1NtTu8" to="tpce:hOYLP83" resolve="build" />
            <node concept="VechU" id="hOZ5fxm" role="3F10Kt">
              <property role="Vb096" value="fLwANPu/blue" />
            </node>
          </node>
          <node concept="VPM3Z" id="hOZ5fxo" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pkWqt" id="hOZ5fxp" role="pqm2j">
            <node concept="3clFbS" id="hOZ5fxq" role="2VODD2">
              <node concept="3clFbF" id="hOZ5fxr" role="3cqZAp">
                <node concept="3y3z36" id="hOZ5fxs" role="3clFbG">
                  <node concept="10Nm6u" id="hOZ5fxt" role="3uHU7w" />
                  <node concept="2OqwBi" id="hOZ5fxu" role="3uHU7B">
                    <node concept="pncrf" id="hOZ5fxv" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hOZ5fxw" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:hOYLP83" resolve="build" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IuJLy" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="i2IuJLr" role="2iSdaV" />
      </node>
      <node concept="2SsqMj" id="hOaB8ib" role="3EZMnx" />
      <node concept="2iRkQZ" id="i2IuJMd" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hOZ4pfF" role="6VMZX">
      <node concept="3EZMnI" id="hOZ4qZm" role="3EZMnx">
        <node concept="VPM3Z" id="hOZ4qZn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hOZ4rXU" role="3EZMnx">
          <property role="3F0ifm" value="comment" />
          <node concept="3$7jql" id="hOZ4w8i" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3F0A7n" id="hOZ4zbp" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpce:hOYLQ3C" resolve="comment" />
          <node concept="VechU" id="hOZ4_DR" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
        </node>
        <node concept="VPM3Z" id="hOZ4qZp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IuJL7" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hOZ5lfx" role="3EZMnx">
        <node concept="3F0ifn" id="hOZ5lfy" role="3EZMnx">
          <property role="3F0ifm" value="deprecated since build" />
          <node concept="3$7jql" id="hOZ5lfz" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3F0A7n" id="hOZ5lf$" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpce:hOYLP83" resolve="build" />
          <node concept="VechU" id="hOZ5lf_" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="2iRfu4" id="i2IuJLh" role="2iSdaV" />
      </node>
      <node concept="2EHx9g" id="i2IuJLB" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="hOawThP">
    <property role="TrG5h" value="structure" />
    <node concept="14StLt" id="hOawUFH" role="V601i">
      <property role="TrG5h" value="AnnotationNode" />
      <node concept="3$7jql" id="hOawYgv" role="3F10Kt">
        <property role="3$6WeP" value="0.0" />
      </node>
      <node concept="VQ3r3" id="hOawYgw" role="3F10Kt">
        <property role="2USNnj" value="gtbM8PH/2" />
      </node>
      <node concept="VechU" id="hOawYgx" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="24YP6ZDyde4" role="V601i">
      <property role="TrG5h" value="Keyword" />
      <node concept="3Xmtl4" id="3HPX3xRcOOI" role="3F10Kt">
        <node concept="1wgc9g" id="3HPX3xRcOOJ" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="LU8F6GyzzW" role="V601i">
      <property role="TrG5h" value="GrayOut" />
      <node concept="VechU" id="6t_vhrzKeD" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
      <node concept="1I8cUB" id="LU8F6G_O63" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
    <node concept="14StLt" id="LU8F6GvYJu" role="V601i">
      <property role="TrG5h" value="EnumMemberMigrated" />
      <node concept="1uO$qF" id="LU8F6GvYJC" role="3F10Kt">
        <node concept="3nzxsE" id="LU8F6GvYJD" role="1uO$qD">
          <node concept="3clFbS" id="LU8F6GvYJE" role="2VODD2">
            <node concept="3clFbF" id="LU8F6GvYRo" role="3cqZAp">
              <node concept="2OqwBi" id="LU8F6Gw0_z" role="3clFbG">
                <node concept="2OqwBi" id="LU8F6GvZMX" role="2Oq$k0">
                  <node concept="2OqwBi" id="LU8F6GvZ3i" role="2Oq$k0">
                    <node concept="pncrf" id="LU8F6GvYRn" role="2Oq$k0" />
                    <node concept="1mfA1w" id="LU8F6GvZjD" role="2OqNvi" />
                  </node>
                  <node concept="1mfA1w" id="LU8F6Gw06p" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="LU8F6Gw2Hd" role="2OqNvi">
                  <node concept="chp4Y" id="LU8F6Gw2Ul" role="cj9EA">
                    <ref role="cht4Q" to="tpce:1ob16QTis9A" resolve="EnumMigrationInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1wgc9g" id="LU8F6GzBpy" role="3XvnJa">
          <ref role="1wgcnl" node="LU8F6GyzzW" resolve="GrayOut" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="LU8F6Gw22Z" role="V601i">
      <property role="TrG5h" value="EnumMigrated" />
      <node concept="1uO$qF" id="LU8F6Gw230" role="3F10Kt">
        <node concept="3nzxsE" id="LU8F6Gw231" role="1uO$qD">
          <node concept="3clFbS" id="LU8F6Gw232" role="2VODD2">
            <node concept="3clFbF" id="LU8F6Gw233" role="3cqZAp">
              <node concept="2OqwBi" id="LU8F6Gw234" role="3clFbG">
                <node concept="2OqwBi" id="LU8F6Gw236" role="2Oq$k0">
                  <node concept="pncrf" id="LU8F6Gw237" role="2Oq$k0" />
                  <node concept="1mfA1w" id="LU8F6Gw238" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="LU8F6Gw39V" role="2OqNvi">
                  <node concept="chp4Y" id="LU8F6Gw39W" role="cj9EA">
                    <ref role="cht4Q" to="tpce:1ob16QTis9A" resolve="EnumMigrationInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1wgc9g" id="LU8F6GzBAz" role="3XvnJa">
          <ref role="1wgcnl" node="LU8F6GyzzW" resolve="GrayOut" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="6t_vhrzKdF" role="V601i">
      <property role="TrG5h" value="Comment" />
      <node concept="VPxyj" id="6t_vhrzKe$" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="VechU" id="7BS8DFNL7Wl" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="hP4bng3">
    <property role="TrG5h" value="DeprecatedNodeAnnotation_ActionMap" />
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <ref role="1h_SK9" to="tpce:hOasaTk" resolve="DeprecatedNodeAnnotation" />
    <node concept="1hA7zw" id="hP4buXN" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="hP4buXO" role="1hA7z_">
        <node concept="3clFbS" id="hP4buXP" role="2VODD2">
          <node concept="3clFbJ" id="14TMHtHhSok" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHhSom" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHhT6O" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHhS$M" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHhSp7" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHhT4n" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHhT4Z" role="2xHN3q" />
                <node concept="2TlHUq" id="14TMHtHhT6a" role="3a7HXU">
                  <ref role="2TlMyj" node="14TMHtHhSda" resolve="deprecatedCollection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hP4b_XQ" role="3cqZAp">
            <node concept="2OqwBi" id="hP4bApX" role="3clFbG">
              <node concept="0IXxy" id="hP4b_XR" role="2Oq$k0" />
              <node concept="3YRAZt" id="hP4bX3Y" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="43oQEeUEWZg">
    <property role="TrG5h" value="_ConceptDeclaration_DeleteAbstract_Action" />
    <ref role="1h_SK9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="1hA7zw" id="43oQEeUEXlC" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="43oQEeUEXlD" role="1hA7z_">
        <node concept="3clFbS" id="43oQEeUEXlE" role="2VODD2">
          <node concept="3clFbJ" id="14TMHtHiYSP" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHiYSQ" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHiYSR" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHiYSS" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHiYST" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHiYSU" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHiYSV" role="2xHN3q" />
                <node concept="2TlHUq" id="14TMHtHiZ38" role="3a7HXU">
                  <ref role="2TlMyj" node="14TMHtHiX$e" resolve="abstractKeyword" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="43oQEeUEXlJ" role="3cqZAp">
            <node concept="37vLTI" id="43oQEeUEYKc" role="3clFbG">
              <node concept="3clFbT" id="43oQEeUEYNt" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="43oQEeUEXuW" role="37vLTJ">
                <node concept="0IXxy" id="43oQEeUEXlI" role="2Oq$k0" />
                <node concept="3TrcHB" id="43oQEeUEYcc" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="43oQEeUKL2$">
    <property role="TrG5h" value="_ConceptDeclaration_DeleteFinal_Action" />
    <ref role="1h_SK9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="1hA7zw" id="43oQEeUKL2F" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="43oQEeUKL2G" role="1hA7z_">
        <node concept="3clFbS" id="43oQEeUKN97" role="2VODD2">
          <node concept="3clFbJ" id="14TMHtHiZ6J" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHiZ6K" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHiZ6L" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHiZ6M" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHiZ6N" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHiZ6O" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHiZ6P" role="2xHN3q" />
                <node concept="2TlHUq" id="14TMHtHiZdM" role="3a7HXU">
                  <ref role="2TlMyj" node="14TMHtHiY_B" resolve="finalKeyword" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="43oQEeUKN9a" role="3cqZAp">
            <node concept="37vLTI" id="43oQEeUKOkM" role="3clFbG">
              <node concept="3clFbT" id="43oQEeUKOla" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="43oQEeUKNip" role="37vLTJ">
                <node concept="3TrcHB" id="43oQEeUKNJS" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:40UcGlRb7V7" resolve="final" />
                </node>
                <node concept="0IXxy" id="43oQEeUKN99" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2A8AB0rF1Qy">
    <property role="3GE5qa" value="attribute" />
    <ref role="1XX52x" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
    <node concept="3EZMnI" id="2A8AB0rF2j1" role="2wV5jI">
      <node concept="PMmxH" id="2A8AB0rF2j2" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="ljvvj" id="6_fwX53rHtj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6_fwX53ooeR" role="3EZMnx">
        <node concept="VPM3Z" id="6_fwX53ooeT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="6_fwX53ooCr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6_fwX53UFTq" role="3EZMnx">
          <property role="3F0ifm" value="multiple:" />
        </node>
        <node concept="3F1sOY" id="6_fwX543B2Y" role="3EZMnx">
          <property role="1$x2rV" value="&lt;inherited&gt;" />
          <ref role="1NtTu8" to="tpce:6_fwX542JZE" resolve="multiple" />
          <node concept="ljvvj" id="6_fwX543BpL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6_fwX53mFpA" role="3EZMnx">
          <property role="3F0ifm" value="role:" />
        </node>
        <node concept="3F0A7n" id="6_fwX543C7e" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;inherited&gt;" />
          <ref role="1NtTu8" to="tpce:6_fwX542K77" resolve="role" />
          <node concept="ljvvj" id="6_fwX543Cu1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6_fwX53KBSW" role="3EZMnx">
          <property role="3F0ifm" value="attributed concepts:" />
        </node>
        <node concept="3F2HdR" id="6_fwX53KBTi" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:6_fwX53_MKe" resolve="attributed" />
          <node concept="l2Vlx" id="6_fwX53KBTj" role="2czzBx" />
          <node concept="ljvvj" id="6_fwX53Mhl4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6_fwX53NUOJ" role="2czzBI">
            <property role="ilYzB" value="&lt;no attributed concepts&gt;" />
            <node concept="VPM3Z" id="hT0KxlT" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPxyj" id="hT0KxlV" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2o9xnK" id="6_fwX53STmH" role="2gpyvW">
            <node concept="3clFbS" id="6_fwX53STmI" role="2VODD2">
              <node concept="3clFbF" id="6_fwX53ST$0" role="3cqZAp">
                <node concept="Xl_RD" id="6_fwX53STzZ" role="3clFbG">
                  <property role="Xl_RC" value="," />
                </node>
              </node>
            </node>
          </node>
          <node concept="tppnM" id="6_fwX53SU80" role="sWeuL">
            <node concept="11L4FC" id="6_fwX53SU_0" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="6_fwX53ooeW" role="2iSdaV" />
      </node>
      <node concept="2SsqMj" id="2A8AB0rF2j4" role="3EZMnx" />
      <node concept="l2Vlx" id="2A8AB0rF2j5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5g5Zgd9myTT">
    <property role="3GE5qa" value="attribute" />
    <ref role="1XX52x" to="tpce:5g5Zgd9mvvs" resolve="AttributeInfo_IsMultiple" />
    <node concept="3F0A7n" id="5g5Zgd9m$KB" role="2wV5jI">
      <ref role="1NtTu8" to="tpce:5g5Zgd9myRe" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="5g5Zgd9qIu3">
    <property role="3GE5qa" value="attribute" />
    <ref role="1XX52x" to="tpce:5g5Zgd9qGH9" resolve="AttributeInfo_AttributedConcept" />
    <node concept="1iCGBv" id="5g5Zgd9qIu5" role="2wV5jI">
      <ref role="1NtTu8" to="tpce:5g5Zgd9qGMp" resolve="concept" />
      <node concept="1sVBvm" id="5g5Zgd9qIu6" role="1sWHZn">
        <node concept="3F0A7n" id="5g5Zgd9qIuj" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="6LnHxz$z9uF">
    <property role="TrG5h" value="LinkDeclarationDeleteActions" />
    <property role="3GE5qa" value="" />
    <ref role="1h_SK9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    <node concept="1hA7zw" id="6LnHxz$z9uG" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="6LnHxz$z9uH" role="1hA7z_">
        <node concept="3clFbS" id="6LnHxz$z9uI" role="2VODD2">
          <node concept="3clFbJ" id="16BE8ZlrZYZ" role="3cqZAp">
            <node concept="3clFbS" id="16BE8ZlrZZ0" role="3clFbx">
              <node concept="3cpWs6" id="16BE8ZlrZZ1" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="16BE8ZlrZZ2" role="3clFbw">
              <node concept="2YIFZM" id="16BE8ZlrZZ3" role="3fr31v">
                <ref role="37wK5l" node="16BE8ZlllAu" resolve="canHandleAbstractConceptDeclarationMemberActions" />
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <node concept="0IXxy" id="16BE8ZlrZZ4" role="37wK5m" />
                <node concept="1Q80Hx" id="16BE8ZlrZZ5" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="14TMHtHhYRf" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHhYRh" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHi07y" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHhZzn" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHhZiY" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHi06a" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHi06P" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="16BE8ZlrZZ6" role="3cqZAp">
            <node concept="3cpWsn" id="16BE8ZlrZZ7" role="3cpWs9">
              <property role="TrG5h" value="containingAbstractConcept" />
              <node concept="3Tqbb2" id="16BE8ZlrZZ8" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="1PxgMI" id="16BE8ZlrZZ9" role="33vP2m">
                <node concept="2OqwBi" id="16BE8ZlrZZa" role="1m5AlR">
                  <node concept="0IXxy" id="16BE8ZlrZZb" role="2Oq$k0" />
                  <node concept="1mfA1w" id="16BE8ZlrZZc" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="714IaVdH1xu" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="16BE8ZlrZZd" role="3cqZAp">
            <node concept="3clFbS" id="16BE8ZlrZZe" role="3clFbx">
              <node concept="3clFbJ" id="16BE8Zl6lwO" role="3cqZAp">
                <node concept="3clFbS" id="16BE8Zl6lwP" role="3clFbx">
                  <node concept="3cpWs8" id="16BE8Zl6lwQ" role="3cqZAp">
                    <node concept="3cpWsn" id="16BE8Zl6lwR" role="3cpWs9">
                      <property role="TrG5h" value="cd" />
                      <node concept="3Tqbb2" id="16BE8Zl6lwS" role="1tU5fm">
                        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                      <node concept="1PxgMI" id="16BE8Zl6lwT" role="33vP2m">
                        <node concept="37vLTw" id="16BE8Zl6lwU" role="1m5AlR">
                          <ref role="3cqZAo" node="16BE8ZlrZZ7" resolve="containingAbstractConcept" />
                        </node>
                        <node concept="chp4Y" id="714IaVdH1yr" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="16BE8Zl6lwV" role="3cqZAp">
                    <node concept="3clFbS" id="16BE8Zl6lwW" role="3clFbx">
                      <node concept="3clFbF" id="16BE8Zl6lwX" role="3cqZAp">
                        <node concept="2OqwBi" id="16BE8Zl6lwY" role="3clFbG">
                          <node concept="37vLTw" id="16BE8Zl6lwZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="16BE8Zl6lwR" resolve="cd" />
                          </node>
                          <node concept="1OKiuA" id="16BE8Zl6lx0" role="2OqNvi">
                            <node concept="1Q80Hx" id="16BE8Zl6mPv" role="lBI5i" />
                            <node concept="2TlHUq" id="16BE8Zl6lx2" role="lGT1i">
                              <ref role="2TlMyj" node="6LnHxz$zhgQ" resolve="emptyChildrenPlaceHolder" />
                            </node>
                            <node concept="3cmrfG" id="16BE8Zlad17" role="3dN3m$">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="16BE8Zl6lx3" role="3clFbw">
                      <node concept="2OqwBi" id="16BE8Zl6lx4" role="2Oq$k0">
                        <node concept="0IXxy" id="16BE8Zl6mjk" role="2Oq$k0" />
                        <node concept="3TrcHB" id="16BE8Zl6lx6" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                        </node>
                      </node>
                      <node concept="21noJN" id="3Ftr4R8$mHV" role="2OqNvi">
                        <node concept="21nZrQ" id="3Ftr4R8$mHW" role="21noJM">
                          <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="16BE8Zl6lx9" role="9aQIa">
                      <node concept="3clFbS" id="16BE8Zl6lxa" role="9aQI4">
                        <node concept="3clFbF" id="16BE8Zl6lxb" role="3cqZAp">
                          <node concept="2OqwBi" id="16BE8Zl6lxc" role="3clFbG">
                            <node concept="37vLTw" id="16BE8Zl6lxd" role="2Oq$k0">
                              <ref role="3cqZAo" node="16BE8Zl6lwR" resolve="cd" />
                            </node>
                            <node concept="1OKiuA" id="16BE8Zl6lxe" role="2OqNvi">
                              <node concept="1Q80Hx" id="16BE8Zl6nog" role="lBI5i" />
                              <node concept="2TlHUq" id="16BE8Zl6lxg" role="lGT1i">
                                <ref role="2TlMyj" node="3zklUlUoYMA" resolve="emptyRefPlaceHolder" />
                              </node>
                              <node concept="3cmrfG" id="16BE8Zlad3n" role="3dN3m$">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="16BE8Zl6lxh" role="3clFbw">
                  <node concept="37vLTw" id="16BE8Zl6lxi" role="2Oq$k0">
                    <ref role="3cqZAo" node="16BE8ZlrZZ7" resolve="containingAbstractConcept" />
                  </node>
                  <node concept="1mIQ4w" id="16BE8Zl6lxj" role="2OqNvi">
                    <node concept="chp4Y" id="16BE8Zl6lxk" role="cj9EA">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="16BE8Zl6lxl" role="3eNLev">
                  <node concept="3clFbS" id="16BE8Zl6lxm" role="3eOfB_">
                    <node concept="3cpWs8" id="16BE8Zl6lxn" role="3cqZAp">
                      <node concept="3cpWsn" id="16BE8Zl6lxo" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3Tqbb2" id="16BE8Zl6lxp" role="1tU5fm">
                          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                        </node>
                        <node concept="1PxgMI" id="16BE8Zl6lxq" role="33vP2m">
                          <node concept="37vLTw" id="16BE8Zl6lxr" role="1m5AlR">
                            <ref role="3cqZAo" node="16BE8ZlrZZ7" resolve="containingAbstractConcept" />
                          </node>
                          <node concept="chp4Y" id="714IaVdH1yt" role="3oSUPX">
                            <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="16BE8Zl6lxs" role="3cqZAp">
                      <node concept="3clFbS" id="16BE8Zl6lxt" role="3clFbx">
                        <node concept="3clFbF" id="16BE8Zl6lxu" role="3cqZAp">
                          <node concept="2OqwBi" id="16BE8Zl6lxv" role="3clFbG">
                            <node concept="37vLTw" id="16BE8Zl6lxw" role="2Oq$k0">
                              <ref role="3cqZAo" node="16BE8Zl6lxo" resolve="id" />
                            </node>
                            <node concept="1OKiuA" id="16BE8Zl6lxx" role="2OqNvi">
                              <node concept="1Q80Hx" id="16BE8Zl6nW6" role="lBI5i" />
                              <node concept="2TlHUq" id="16BE8Zl6lxz" role="lGT1i">
                                <ref role="2TlMyj" node="4pmFEms0L59" resolve="emptyChildrenPlaceHolder" />
                              </node>
                              <node concept="3cmrfG" id="16BE8Zlad5f" role="3dN3m$">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="16BE8Zl6lx$" role="9aQIa">
                        <node concept="3clFbS" id="16BE8Zl6lx_" role="9aQI4">
                          <node concept="3clFbF" id="16BE8Zl6lxA" role="3cqZAp">
                            <node concept="2OqwBi" id="16BE8Zl6lxB" role="3clFbG">
                              <node concept="37vLTw" id="16BE8Zl6lxC" role="2Oq$k0">
                                <ref role="3cqZAo" node="16BE8Zl6lxo" resolve="id" />
                              </node>
                              <node concept="1OKiuA" id="16BE8Zl6lxD" role="2OqNvi">
                                <node concept="1Q80Hx" id="16BE8Zl6nX1" role="lBI5i" />
                                <node concept="2TlHUq" id="16BE8Zl6lxF" role="lGT1i">
                                  <ref role="2TlMyj" node="4pmFEms0Mvu" resolve="emptyRefPlaceHolder" />
                                </node>
                                <node concept="3cmrfG" id="16BE8Zlad77" role="3dN3m$">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="16BE8Zl6lxG" role="3clFbw">
                        <node concept="2OqwBi" id="16BE8Zl6lxH" role="2Oq$k0">
                          <node concept="0IXxy" id="16BE8Zl6nUa" role="2Oq$k0" />
                          <node concept="3TrcHB" id="16BE8Zl6lxJ" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                          </node>
                        </node>
                        <node concept="21noJN" id="3Ftr4R8$mHX" role="2OqNvi">
                          <node concept="21nZrQ" id="3Ftr4R8$mHY" role="21noJM">
                            <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="16BE8Zl6lxM" role="3eO9$A">
                    <node concept="37vLTw" id="16BE8Zl6lxN" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8ZlrZZ7" resolve="containingAbstractConcept" />
                    </node>
                    <node concept="1mIQ4w" id="16BE8Zl6lxO" role="2OqNvi">
                      <node concept="chp4Y" id="16BE8Zl6lxP" role="cj9EA">
                        <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="16BE8ZlrZZN" role="3clFbw">
              <node concept="2YIFZM" id="16BE8ZlrZZO" role="3fr31v">
                <ref role="37wK5l" node="16BE8Zll9Jg" resolve="deleteElementFromCollectionAndSetSelection" />
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <node concept="0IXxy" id="16BE8ZlrZZP" role="37wK5m" />
                <node concept="2OqwBi" id="16BE8Zls1np" role="37wK5m">
                  <node concept="2OqwBi" id="16BE8Zls1nq" role="2Oq$k0">
                    <node concept="37vLTw" id="16BE8Zls1nr" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8ZlrZZ7" resolve="containingAbstractConcept" />
                    </node>
                    <node concept="3Tsc0h" id="16BE8Zls1ns" role="2OqNvi">
                      <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="16BE8Zls1nt" role="2OqNvi">
                    <node concept="1bVj0M" id="16BE8Zls1nu" role="23t8la">
                      <node concept="3clFbS" id="16BE8Zls1nv" role="1bW5cS">
                        <node concept="3clFbF" id="16BE8Zls1nw" role="3cqZAp">
                          <node concept="3clFbC" id="16BE8Zls1nx" role="3clFbG">
                            <node concept="2OqwBi" id="16BE8Zls1n_" role="3uHU7B">
                              <node concept="37vLTw" id="16BE8Zls1nA" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wuh" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="16BE8Zls1nB" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="16BE8Zls1ny" role="3uHU7w">
                              <node concept="0IXxy" id="16BE8Zls1nz" role="2Oq$k0" />
                              <node concept="3TrcHB" id="16BE8Zls1n$" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wuh" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wui" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Q80Hx" id="16BE8ZlrZZT" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="6LnHxz$F3ok" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <node concept="1hAIg9" id="6LnHxz$F3ol" role="1hA7z_">
        <node concept="3clFbS" id="6LnHxz$F3om" role="2VODD2">
          <node concept="3clFbJ" id="16BE8Zls4RL" role="3cqZAp">
            <node concept="3clFbS" id="16BE8Zls4RM" role="3clFbx">
              <node concept="3cpWs6" id="16BE8Zls4RN" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="16BE8Zls4RO" role="3clFbw">
              <node concept="2YIFZM" id="16BE8Zls4RP" role="3fr31v">
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <ref role="37wK5l" node="16BE8ZlllAu" resolve="canHandleAbstractConceptDeclarationMemberActions" />
                <node concept="0IXxy" id="16BE8Zls4RQ" role="37wK5m" />
                <node concept="1Q80Hx" id="16BE8Zls4RR" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="14TMHtHi1he" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHi1hf" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHi1hg" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHi1hh" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHi1hi" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHi1hj" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHi1hk" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="16BE8Zls4RS" role="3cqZAp">
            <node concept="3cpWsn" id="16BE8Zls4RT" role="3cpWs9">
              <property role="TrG5h" value="containingAbstractConcept" />
              <node concept="3Tqbb2" id="16BE8Zls4RU" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="1PxgMI" id="16BE8Zls4RV" role="33vP2m">
                <node concept="2OqwBi" id="16BE8Zls4RW" role="1m5AlR">
                  <node concept="0IXxy" id="16BE8Zls4RX" role="2Oq$k0" />
                  <node concept="1mfA1w" id="16BE8Zls4RY" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="714IaVdH1xK" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="16BE8Zls4RZ" role="3cqZAp">
            <node concept="3clFbS" id="16BE8Zls4S0" role="3clFbx">
              <node concept="3clFbJ" id="16BE8Zl73s9" role="3cqZAp">
                <node concept="3clFbS" id="16BE8Zl73sa" role="3clFbx">
                  <node concept="3cpWs8" id="16BE8Zl73sb" role="3cqZAp">
                    <node concept="3cpWsn" id="16BE8Zl73sc" role="3cpWs9">
                      <property role="TrG5h" value="cd" />
                      <node concept="3Tqbb2" id="16BE8Zl73sd" role="1tU5fm">
                        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                      <node concept="1PxgMI" id="16BE8Zl73se" role="33vP2m">
                        <node concept="37vLTw" id="16BE8Zl73sf" role="1m5AlR">
                          <ref role="3cqZAo" node="16BE8Zls4RT" resolve="containingAbstractConcept" />
                        </node>
                        <node concept="chp4Y" id="714IaVdH1y0" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="16BE8Zl73sg" role="3cqZAp">
                    <node concept="3clFbS" id="16BE8Zl73sh" role="3clFbx">
                      <node concept="3clFbF" id="16BE8Zl73si" role="3cqZAp">
                        <node concept="2OqwBi" id="16BE8Zl73sj" role="3clFbG">
                          <node concept="37vLTw" id="16BE8Zl73sk" role="2Oq$k0">
                            <ref role="3cqZAo" node="16BE8Zl73sc" resolve="cd" />
                          </node>
                          <node concept="1OKiuA" id="16BE8Zl73sl" role="2OqNvi">
                            <node concept="1Q80Hx" id="16BE8Zl73Ix" role="lBI5i" />
                            <node concept="2TlHUq" id="16BE8Zl73sn" role="lGT1i">
                              <ref role="2TlMyj" node="6LnHxz$zhgQ" resolve="emptyChildrenPlaceHolder" />
                            </node>
                            <node concept="3cmrfG" id="16BE8ZladaC" role="3dN3m$">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="16BE8Zl73so" role="3clFbw">
                      <node concept="2OqwBi" id="16BE8Zl73sp" role="2Oq$k0">
                        <node concept="0IXxy" id="16BE8Zl73Gu" role="2Oq$k0" />
                        <node concept="3TrcHB" id="16BE8Zl73sr" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                        </node>
                      </node>
                      <node concept="21noJN" id="3Ftr4R8$mI5" role="2OqNvi">
                        <node concept="21nZrQ" id="3Ftr4R8$mI6" role="21noJM">
                          <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="16BE8Zl73su" role="9aQIa">
                      <node concept="3clFbS" id="16BE8Zl73sv" role="9aQI4">
                        <node concept="3clFbF" id="16BE8Zl73sw" role="3cqZAp">
                          <node concept="2OqwBi" id="16BE8Zl73sx" role="3clFbG">
                            <node concept="37vLTw" id="16BE8Zl73sy" role="2Oq$k0">
                              <ref role="3cqZAo" node="16BE8Zl73sc" resolve="cd" />
                            </node>
                            <node concept="1OKiuA" id="16BE8Zl73sz" role="2OqNvi">
                              <node concept="1Q80Hx" id="16BE8Zl73Jl" role="lBI5i" />
                              <node concept="2TlHUq" id="16BE8Zl73s_" role="lGT1i">
                                <ref role="2TlMyj" node="3zklUlUoYMA" resolve="emptyRefPlaceHolder" />
                              </node>
                              <node concept="3cmrfG" id="16BE8Zladcw" role="3dN3m$">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="16BE8Zl73sA" role="3clFbw">
                  <node concept="37vLTw" id="16BE8Zl73sB" role="2Oq$k0">
                    <ref role="3cqZAo" node="16BE8Zls4RT" resolve="containingAbstractConcept" />
                  </node>
                  <node concept="1mIQ4w" id="16BE8Zl73sC" role="2OqNvi">
                    <node concept="chp4Y" id="16BE8Zl73sD" role="cj9EA">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="16BE8Zl73sE" role="3eNLev">
                  <node concept="3clFbS" id="16BE8Zl73sF" role="3eOfB_">
                    <node concept="3cpWs8" id="16BE8Zl73sG" role="3cqZAp">
                      <node concept="3cpWsn" id="16BE8Zl73sH" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3Tqbb2" id="16BE8Zl73sI" role="1tU5fm">
                          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                        </node>
                        <node concept="1PxgMI" id="16BE8Zl73sJ" role="33vP2m">
                          <node concept="37vLTw" id="16BE8Zl73sK" role="1m5AlR">
                            <ref role="3cqZAo" node="16BE8Zls4RT" resolve="containingAbstractConcept" />
                          </node>
                          <node concept="chp4Y" id="714IaVdH1y9" role="3oSUPX">
                            <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="16BE8Zl73sL" role="3cqZAp">
                      <node concept="3clFbS" id="16BE8Zl73sM" role="3clFbx">
                        <node concept="3clFbF" id="16BE8Zl73sN" role="3cqZAp">
                          <node concept="2OqwBi" id="16BE8Zl73sO" role="3clFbG">
                            <node concept="37vLTw" id="16BE8Zl73sP" role="2Oq$k0">
                              <ref role="3cqZAo" node="16BE8Zl73sH" resolve="id" />
                            </node>
                            <node concept="1OKiuA" id="16BE8Zl73sQ" role="2OqNvi">
                              <node concept="1Q80Hx" id="16BE8Zl73Mc" role="lBI5i" />
                              <node concept="2TlHUq" id="16BE8Zl73sS" role="lGT1i">
                                <ref role="2TlMyj" node="4pmFEms0L59" resolve="emptyChildrenPlaceHolder" />
                              </node>
                              <node concept="3cmrfG" id="16BE8Zladeo" role="3dN3m$">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="16BE8Zl73sT" role="9aQIa">
                        <node concept="3clFbS" id="16BE8Zl73sU" role="9aQI4">
                          <node concept="3clFbF" id="16BE8Zl73sV" role="3cqZAp">
                            <node concept="2OqwBi" id="16BE8Zl73sW" role="3clFbG">
                              <node concept="37vLTw" id="16BE8Zl73sX" role="2Oq$k0">
                                <ref role="3cqZAo" node="16BE8Zl73sH" resolve="id" />
                              </node>
                              <node concept="1OKiuA" id="16BE8Zl73sY" role="2OqNvi">
                                <node concept="1Q80Hx" id="16BE8Zl73N7" role="lBI5i" />
                                <node concept="2TlHUq" id="16BE8Zl73t0" role="lGT1i">
                                  <ref role="2TlMyj" node="4pmFEms0Mvu" resolve="emptyRefPlaceHolder" />
                                </node>
                                <node concept="3cmrfG" id="16BE8Zladgg" role="3dN3m$">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="16BE8Zl73t1" role="3clFbw">
                        <node concept="2OqwBi" id="16BE8Zl73t2" role="2Oq$k0">
                          <node concept="0IXxy" id="16BE8Zl73Kg" role="2Oq$k0" />
                          <node concept="3TrcHB" id="16BE8Zl73t4" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                          </node>
                        </node>
                        <node concept="21noJN" id="3Ftr4R8$mI7" role="2OqNvi">
                          <node concept="21nZrQ" id="3Ftr4R8$mI8" role="21noJM">
                            <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="16BE8Zl73t7" role="3eO9$A">
                    <node concept="37vLTw" id="16BE8Zl73t8" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8Zls4RT" resolve="containingAbstractConcept" />
                    </node>
                    <node concept="1mIQ4w" id="16BE8Zl73t9" role="2OqNvi">
                      <node concept="chp4Y" id="16BE8Zl73ta" role="cj9EA">
                        <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="16BE8Zls4S_" role="3clFbw">
              <node concept="2YIFZM" id="16BE8Zls4SA" role="3fr31v">
                <ref role="37wK5l" node="16BE8ZlmWC5" resolve="backspaceElementFromCollectionAndSetSelection" />
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <node concept="0IXxy" id="16BE8Zls4SB" role="37wK5m" />
                <node concept="2OqwBi" id="6LnHxz$F3oZ" role="37wK5m">
                  <node concept="2OqwBi" id="6LnHxz$F3p0" role="2Oq$k0">
                    <node concept="37vLTw" id="16BE8Zl6wHK" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8Zls4RT" resolve="containingAbstractConcept" />
                    </node>
                    <node concept="3Tsc0h" id="6LnHxz$F3p2" role="2OqNvi">
                      <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6LnHxz$F3p3" role="2OqNvi">
                    <node concept="1bVj0M" id="6LnHxz$F3p4" role="23t8la">
                      <node concept="3clFbS" id="6LnHxz$F3p5" role="1bW5cS">
                        <node concept="3clFbF" id="6LnHxz$F3p6" role="3cqZAp">
                          <node concept="3clFbC" id="16BE8Zl6xSU" role="3clFbG">
                            <node concept="2OqwBi" id="6LnHxz$F3p8" role="3uHU7B">
                              <node concept="37vLTw" id="6LnHxz$F3p9" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wuj" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="6LnHxz$F3pa" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="16BE8Zl6yav" role="3uHU7w">
                              <node concept="0IXxy" id="16BE8Zl6y24" role="2Oq$k0" />
                              <node concept="3TrcHB" id="16BE8Zl6yOq" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wuj" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wuk" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Q80Hx" id="16BE8Zls4SF" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="16BE8Zl8tqG">
    <property role="TrG5h" value="PropertyDeclarationDeleteActions" />
    <ref role="1h_SK9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    <node concept="1hA7zw" id="16BE8Zl8vsu" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="16BE8Zl8vsv" role="1hA7z_">
        <node concept="3clFbS" id="16BE8Zl8vsw" role="2VODD2">
          <node concept="3clFbJ" id="16BE8ZlpqT9" role="3cqZAp">
            <node concept="3clFbS" id="16BE8ZlpqTc" role="3clFbx">
              <node concept="3cpWs6" id="16BE8ZlpscS" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="16BE8Zlps30" role="3clFbw">
              <node concept="2YIFZM" id="16BE8Zlps32" role="3fr31v">
                <ref role="37wK5l" node="16BE8ZlllAu" resolve="canHandleAbstractConceptDeclarationMemberActions" />
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <node concept="0IXxy" id="16BE8Zlps33" role="37wK5m" />
                <node concept="1Q80Hx" id="16BE8Zlps34" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="14TMHtHiWJX" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHiWJY" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHiWJZ" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHiWK0" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHiWK1" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHiWK2" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHiWK3" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="16BE8Zl8yaN" role="3cqZAp">
            <node concept="3cpWsn" id="16BE8Zl8yaO" role="3cpWs9">
              <property role="TrG5h" value="containingAbstractConcept" />
              <node concept="3Tqbb2" id="16BE8Zl8yaP" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="1PxgMI" id="16BE8Zl8yaQ" role="33vP2m">
                <node concept="2OqwBi" id="16BE8Zl8yaR" role="1m5AlR">
                  <node concept="0IXxy" id="16BE8Zl8yaS" role="2Oq$k0" />
                  <node concept="1mfA1w" id="16BE8Zl8yaT" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="714IaVdH1y8" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="16BE8Zlpum$" role="3cqZAp">
            <node concept="3clFbS" id="16BE8ZlpumB" role="3clFbx">
              <node concept="3clFbJ" id="16BE8Zl8ycm" role="3cqZAp">
                <node concept="3clFbS" id="16BE8Zl8ycn" role="3clFbx">
                  <node concept="3cpWs8" id="16BE8Zl8yco" role="3cqZAp">
                    <node concept="3cpWsn" id="16BE8Zl8ycp" role="3cpWs9">
                      <property role="TrG5h" value="cd" />
                      <node concept="3Tqbb2" id="16BE8Zl8ycq" role="1tU5fm">
                        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                      <node concept="1PxgMI" id="16BE8Zl8ycr" role="33vP2m">
                        <node concept="37vLTw" id="16BE8Zl8ycs" role="1m5AlR">
                          <ref role="3cqZAo" node="16BE8Zl8yaO" resolve="containingAbstractConcept" />
                        </node>
                        <node concept="chp4Y" id="714IaVdH1yp" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="16BE8Zl8CD_" role="3cqZAp">
                    <node concept="2OqwBi" id="16BE8Zl8CH4" role="3clFbG">
                      <node concept="37vLTw" id="16BE8Zl8CDz" role="2Oq$k0">
                        <ref role="3cqZAo" node="16BE8Zl8ycp" resolve="cd" />
                      </node>
                      <node concept="1OKiuA" id="16BE8Zl8CYP" role="2OqNvi">
                        <node concept="1Q80Hx" id="16BE8Zl8CZw" role="lBI5i" />
                        <node concept="2TlHUq" id="16BE8Zl$iZA" role="lGT1i">
                          <ref role="2TlMyj" node="16BE8Zl$cth" resolve="emptyPropertiesPlaceHolder" />
                        </node>
                        <node concept="3cmrfG" id="16BE8Zla9_i" role="3dN3m$">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="16BE8Zl8ycN" role="3clFbw">
                  <node concept="37vLTw" id="16BE8Zl8ycO" role="2Oq$k0">
                    <ref role="3cqZAo" node="16BE8Zl8yaO" resolve="containingAbstractConcept" />
                  </node>
                  <node concept="1mIQ4w" id="16BE8Zl8ycP" role="2OqNvi">
                    <node concept="chp4Y" id="16BE8Zl8ycQ" role="cj9EA">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="16BE8Zl8ycR" role="3eNLev">
                  <node concept="3clFbS" id="16BE8Zl8ycS" role="3eOfB_">
                    <node concept="3cpWs8" id="16BE8Zl8ycT" role="3cqZAp">
                      <node concept="3cpWsn" id="16BE8Zl8ycU" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3Tqbb2" id="16BE8Zl8ycV" role="1tU5fm">
                          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                        </node>
                        <node concept="1PxgMI" id="16BE8Zl8ycW" role="33vP2m">
                          <node concept="37vLTw" id="16BE8Zl8ycX" role="1m5AlR">
                            <ref role="3cqZAo" node="16BE8Zl8yaO" resolve="containingAbstractConcept" />
                          </node>
                          <node concept="chp4Y" id="714IaVdH1yu" role="3oSUPX">
                            <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="16BE8Zl8DuJ" role="3cqZAp">
                      <node concept="2OqwBi" id="16BE8Zl8Dyo" role="3clFbG">
                        <node concept="37vLTw" id="16BE8Zl8DuH" role="2Oq$k0">
                          <ref role="3cqZAo" node="16BE8Zl8ycU" resolve="id" />
                        </node>
                        <node concept="1OKiuA" id="16BE8Zl8Erc" role="2OqNvi">
                          <node concept="1Q80Hx" id="16BE8Zl8Esl" role="lBI5i" />
                          <node concept="2TlHUq" id="16BE8Zl$ksF" role="lGT1i">
                            <ref role="2TlMyj" node="16BE8Zl$iEm" resolve="emptyPropertiesPlaceHolder" />
                          </node>
                          <node concept="3cmrfG" id="16BE8Zla9BD" role="3dN3m$">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="16BE8Zl8ydk" role="3eO9$A">
                    <node concept="37vLTw" id="16BE8Zl8ydl" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8Zl8yaO" resolve="containingAbstractConcept" />
                    </node>
                    <node concept="1mIQ4w" id="16BE8Zl8ydm" role="2OqNvi">
                      <node concept="chp4Y" id="16BE8Zl8ydn" role="cj9EA">
                        <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="16BE8ZlpuvX" role="3clFbw">
              <node concept="2YIFZM" id="16BE8ZlpuA9" role="3fr31v">
                <ref role="37wK5l" node="16BE8Zll9Jg" resolve="deleteElementFromCollectionAndSetSelection" />
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <node concept="0IXxy" id="16BE8ZlpuB2" role="37wK5m" />
                <node concept="2OqwBi" id="16BE8ZlqIhG" role="37wK5m">
                  <node concept="37vLTw" id="16BE8ZlqIhH" role="2Oq$k0">
                    <ref role="3cqZAo" node="16BE8Zl8yaO" resolve="containingAbstractConcept" />
                  </node>
                  <node concept="3Tsc0h" id="16BE8ZlqIhI" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                  </node>
                </node>
                <node concept="1Q80Hx" id="16BE8ZlqIVv" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="16BE8Zl8v4x" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <node concept="1hAIg9" id="16BE8Zl8v4y" role="1hA7z_">
        <node concept="3clFbS" id="16BE8Zl8v4z" role="2VODD2">
          <node concept="3clFbJ" id="16BE8ZlqKHA" role="3cqZAp">
            <node concept="3clFbS" id="16BE8ZlqKHB" role="3clFbx">
              <node concept="3cpWs6" id="16BE8ZlqKHC" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="16BE8ZlqKHD" role="3clFbw">
              <node concept="2YIFZM" id="16BE8ZlqKHE" role="3fr31v">
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <ref role="37wK5l" node="16BE8ZlllAu" resolve="canHandleAbstractConceptDeclarationMemberActions" />
                <node concept="0IXxy" id="16BE8ZlqKHF" role="37wK5m" />
                <node concept="1Q80Hx" id="16BE8ZlqKHG" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="14TMHtHiXcU" role="3cqZAp">
            <node concept="3clFbS" id="14TMHtHiXcV" role="3clFbx">
              <node concept="3cpWs6" id="14TMHtHiXcW" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="14TMHtHiXcX" role="3clFbw">
              <node concept="0IXxy" id="14TMHtHiXcY" role="2Oq$k0" />
              <node concept="2xy62i" id="14TMHtHiXcZ" role="2OqNvi">
                <node concept="1Q80Hx" id="14TMHtHiXd0" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="16BE8ZlqKHH" role="3cqZAp">
            <node concept="3cpWsn" id="16BE8ZlqKHI" role="3cpWs9">
              <property role="TrG5h" value="containingAbstractConcept" />
              <node concept="3Tqbb2" id="16BE8ZlqKHJ" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="1PxgMI" id="16BE8ZlqKHK" role="33vP2m">
                <node concept="2OqwBi" id="16BE8ZlqKHL" role="1m5AlR">
                  <node concept="0IXxy" id="16BE8ZlqKHM" role="2Oq$k0" />
                  <node concept="1mfA1w" id="16BE8ZlqKHN" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="714IaVdH1yg" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="16BE8ZlqKHO" role="3cqZAp">
            <node concept="3clFbS" id="16BE8ZlqKHP" role="3clFbx">
              <node concept="3clFbJ" id="16BE8ZlqMf_" role="3cqZAp">
                <node concept="3clFbS" id="16BE8ZlqMfA" role="3clFbx">
                  <node concept="3cpWs8" id="16BE8ZlqMfB" role="3cqZAp">
                    <node concept="3cpWsn" id="16BE8ZlqMfC" role="3cpWs9">
                      <property role="TrG5h" value="cd" />
                      <node concept="3Tqbb2" id="16BE8ZlqMfD" role="1tU5fm">
                        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                      <node concept="1PxgMI" id="16BE8ZlqMfE" role="33vP2m">
                        <node concept="37vLTw" id="16BE8ZlqMfF" role="1m5AlR">
                          <ref role="3cqZAo" node="16BE8ZlqKHI" resolve="containingAbstractConcept" />
                        </node>
                        <node concept="chp4Y" id="714IaVdH1y7" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="16BE8ZlqMfG" role="3cqZAp">
                    <node concept="2OqwBi" id="16BE8ZlqMfH" role="3clFbG">
                      <node concept="37vLTw" id="16BE8ZlqMfI" role="2Oq$k0">
                        <ref role="3cqZAo" node="16BE8ZlqMfC" resolve="cd" />
                      </node>
                      <node concept="1OKiuA" id="16BE8ZlqMfJ" role="2OqNvi">
                        <node concept="1Q80Hx" id="16BE8ZlqMfK" role="lBI5i" />
                        <node concept="2TlHUq" id="16BE8Zl$j0Q" role="lGT1i">
                          <ref role="2TlMyj" node="16BE8Zl$cth" resolve="emptyPropertiesPlaceHolder" />
                        </node>
                        <node concept="3cmrfG" id="16BE8ZlqMfM" role="3dN3m$">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="16BE8ZlqMfN" role="3clFbw">
                  <node concept="37vLTw" id="16BE8ZlqMfO" role="2Oq$k0">
                    <ref role="3cqZAo" node="16BE8ZlqKHI" resolve="containingAbstractConcept" />
                  </node>
                  <node concept="1mIQ4w" id="16BE8ZlqMfP" role="2OqNvi">
                    <node concept="chp4Y" id="16BE8ZlqMfQ" role="cj9EA">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="16BE8ZlqMfR" role="3eNLev">
                  <node concept="3clFbS" id="16BE8ZlqMfS" role="3eOfB_">
                    <node concept="3cpWs8" id="16BE8ZlqMfT" role="3cqZAp">
                      <node concept="3cpWsn" id="16BE8ZlqMfU" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3Tqbb2" id="16BE8ZlqMfV" role="1tU5fm">
                          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                        </node>
                        <node concept="1PxgMI" id="16BE8ZlqMfW" role="33vP2m">
                          <node concept="37vLTw" id="16BE8ZlqMfX" role="1m5AlR">
                            <ref role="3cqZAo" node="16BE8ZlqKHI" resolve="containingAbstractConcept" />
                          </node>
                          <node concept="chp4Y" id="714IaVdH1xI" role="3oSUPX">
                            <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="16BE8ZlqMfY" role="3cqZAp">
                      <node concept="2OqwBi" id="16BE8ZlqMfZ" role="3clFbG">
                        <node concept="37vLTw" id="16BE8ZlqMg0" role="2Oq$k0">
                          <ref role="3cqZAo" node="16BE8ZlqMfU" resolve="id" />
                        </node>
                        <node concept="1OKiuA" id="16BE8ZlqMg1" role="2OqNvi">
                          <node concept="1Q80Hx" id="16BE8ZlqMg2" role="lBI5i" />
                          <node concept="2TlHUq" id="16BE8Zl$ktV" role="lGT1i">
                            <ref role="2TlMyj" node="16BE8Zl$iEm" resolve="emptyPropertiesPlaceHolder" />
                          </node>
                          <node concept="3cmrfG" id="16BE8ZlqMg4" role="3dN3m$">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="16BE8ZlqMg5" role="3eO9$A">
                    <node concept="37vLTw" id="16BE8ZlqMg6" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8ZlqKHI" resolve="containingAbstractConcept" />
                    </node>
                    <node concept="1mIQ4w" id="16BE8ZlqMg7" role="2OqNvi">
                      <node concept="chp4Y" id="16BE8ZlqMg8" role="cj9EA">
                        <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="16BE8ZlqKIq" role="3clFbw">
              <node concept="2YIFZM" id="16BE8ZlqLwl" role="3fr31v">
                <ref role="37wK5l" node="16BE8ZlmWC5" resolve="backspaceElementFromCollectionAndSetSelection" />
                <ref role="1Pybhc" node="16BE8ZlkSIC" resolve="CustomActionsHandler" />
                <node concept="0IXxy" id="16BE8ZlqLwm" role="37wK5m" />
                <node concept="2OqwBi" id="16BE8ZlqLwn" role="37wK5m">
                  <node concept="37vLTw" id="16BE8ZlqLwo" role="2Oq$k0">
                    <ref role="3cqZAo" node="16BE8ZlqKHI" resolve="containingAbstractConcept" />
                  </node>
                  <node concept="3Tsc0h" id="16BE8ZlqLwp" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                  </node>
                </node>
                <node concept="1Q80Hx" id="16BE8ZlqLwq" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="16BE8ZlkSIC">
    <property role="TrG5h" value="CustomActionsHandler" />
    <node concept="2YIFZL" id="16BE8ZlllAu" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="canHandleAbstractConceptDeclarationMemberActions" />
      <node concept="37vLTG" id="16BE8ZllyH9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="16BE8ZllyHa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="16BE8ZllyHb" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="16BE8ZllyHc" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="16BE8Zllk7k" role="3clF47">
        <node concept="3cpWs8" id="16BE8Zlly2I" role="3cqZAp">
          <node concept="3cpWsn" id="16BE8Zlly2J" role="3cpWs9">
            <property role="TrG5h" value="nodeCell" />
            <node concept="3uibUv" id="16BE8Zlly2K" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="16BE8Zlly2L" role="33vP2m">
              <node concept="2OqwBi" id="16BE8Zlly2M" role="2Oq$k0">
                <node concept="liA8E" id="16BE8Zlly2N" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
                <node concept="37vLTw" id="16BE8Zlly2O" role="2Oq$k0">
                  <ref role="3cqZAo" node="16BE8ZllyHb" resolve="editorContext" />
                </node>
              </node>
              <node concept="liA8E" id="16BE8Zlly2P" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode)" resolve="findNodeCell" />
                <node concept="37vLTw" id="16BE8Zlly2Q" role="37wK5m">
                  <ref role="3cqZAo" node="16BE8ZllyH9" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16BE8Zll_lb" role="3cqZAp">
          <node concept="1Wc70l" id="16BE8ZllFoF" role="3cqZAk">
            <node concept="1Wc70l" id="16BE8ZllCR6" role="3uHU7B">
              <node concept="3y3z36" id="16BE8ZllBa6" role="3uHU7B">
                <node concept="37vLTw" id="16BE8ZllAy9" role="3uHU7B">
                  <ref role="3cqZAo" node="16BE8Zlly2J" resolve="nodeCell" />
                </node>
                <node concept="10Nm6u" id="16BE8ZllBJM" role="3uHU7w" />
              </node>
              <node concept="3fqX7Q" id="16BE8ZllE2X" role="3uHU7w">
                <node concept="2YIFZM" id="16BE8Zlly2Z" role="3fr31v">
                  <ref role="37wK5l" to="3ahc:~ReadOnlyUtil.isCellOrSelectionReadOnlyInEditor(jetbrains.mps.openapi.editor.EditorComponent,jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="isCellOrSelectionReadOnlyInEditor" />
                  <ref role="1Pybhc" to="3ahc:~ReadOnlyUtil" resolve="ReadOnlyUtil" />
                  <node concept="2OqwBi" id="16BE8Zlly30" role="37wK5m">
                    <node concept="37vLTw" id="16BE8Zlly31" role="2Oq$k0">
                      <ref role="3cqZAo" node="16BE8ZllyHb" resolve="editorContext" />
                    </node>
                    <node concept="liA8E" id="16BE8Zlly32" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="16BE8Zlly33" role="37wK5m">
                    <ref role="3cqZAo" node="16BE8Zlly2J" resolve="nodeCell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="16BE8Zlly35" role="3uHU7w">
              <node concept="2OqwBi" id="16BE8Zlly36" role="2Oq$k0">
                <node concept="37vLTw" id="16BE8ZllJaR" role="2Oq$k0">
                  <ref role="3cqZAo" node="16BE8ZllyH9" resolve="node" />
                </node>
                <node concept="1mfA1w" id="16BE8Zlly38" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="16BE8Zlly39" role="2OqNvi">
                <node concept="chp4Y" id="16BE8Zlly3a" role="cj9EA">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="16BE8ZllmnR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="16BE8ZllhEr" role="jymVt" />
    <node concept="2YIFZL" id="16BE8ZlmWC5" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="backspaceElementFromCollectionAndSetSelection" />
      <node concept="37vLTG" id="16BE8ZlmWC6" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="16BE8ZlmWC7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="16BE8ZlmWC8" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="16BE8Zlpxvo" role="1tU5fm">
          <node concept="3Tqbb2" id="16BE8Zlpxvp" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="16BE8ZlmWCa" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="16BE8ZlmWCb" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="16BE8ZlmWCc" role="3clF47">
        <node concept="3cpWs8" id="16BE8ZlmWCd" role="3cqZAp">
          <node concept="3cpWsn" id="16BE8ZlmWCe" role="3cpWs9">
            <property role="TrG5h" value="prevNextTuple" />
            <node concept="1LlUBW" id="16BE8ZlmWCf" role="1tU5fm">
              <node concept="3Tqbb2" id="16BE8ZlmWCg" role="1Lm7xW" />
              <node concept="3Tqbb2" id="16BE8ZlmWCh" role="1Lm7xW" />
            </node>
            <node concept="1rXfSq" id="16BE8ZlmWCi" role="33vP2m">
              <ref role="37wK5l" node="16BE8Zlm$77" resolve="getPrevNext" />
              <node concept="37vLTw" id="16BE8ZlmWCj" role="37wK5m">
                <ref role="3cqZAo" node="16BE8ZlmWC6" resolve="node" />
              </node>
              <node concept="37vLTw" id="16BE8ZlmWCk" role="37wK5m">
                <ref role="3cqZAo" node="16BE8ZlmWC8" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16BE8ZlmWCl" role="3cqZAp">
          <node concept="2OqwBi" id="16BE8ZlmWCm" role="3clFbG">
            <node concept="37vLTw" id="16BE8ZlmWCn" role="2Oq$k0">
              <ref role="3cqZAo" node="16BE8ZlmWC6" resolve="node" />
            </node>
            <node concept="3YRAZt" id="16BE8ZlmWCo" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="16BE8ZlmWCp" role="3cqZAp">
          <node concept="3clFbS" id="16BE8ZlmWCq" role="3clFbx">
            <node concept="3clFbF" id="16BE8ZlmWCr" role="3cqZAp">
              <node concept="2OqwBi" id="16BE8ZlmWCs" role="3clFbG">
                <node concept="1LFfDK" id="16BE8ZlmWCt" role="2Oq$k0">
                  <node concept="37vLTw" id="16BE8ZlmWCv" role="1LFl5Q">
                    <ref role="3cqZAo" node="16BE8ZlmWCe" resolve="prevNextTuple" />
                  </node>
                  <node concept="3cmrfG" id="16BE8ZlmY$z" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="1OKiuA" id="16BE8ZlmWCw" role="2OqNvi">
                  <node concept="37vLTw" id="16BE8ZlmWCx" role="lBI5i">
                    <ref role="3cqZAo" node="16BE8ZlmWCa" resolve="editorContext" />
                  </node>
                  <node concept="2B6iha" id="16BE8ZlmYAy" role="lGT1i">
                    <property role="1lyBwo" value="1S2pyLby17K/last" />
                  </node>
                  <node concept="3cmrfG" id="16BE8ZlmWCz" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="16BE8ZlmWC$" role="3cqZAp">
              <node concept="3clFbT" id="16BE8ZlmWC_" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="16BE8ZlmWCA" role="3clFbw">
            <node concept="10Nm6u" id="16BE8ZlmWCB" role="3uHU7w" />
            <node concept="1LFfDK" id="16BE8ZlmWCC" role="3uHU7B">
              <node concept="37vLTw" id="16BE8ZlmWCE" role="1LFl5Q">
                <ref role="3cqZAo" node="16BE8ZlmWCe" resolve="prevNextTuple" />
              </node>
              <node concept="3cmrfG" id="16BE8ZlmYyk" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16BE8ZlmWCF" role="3eNLev">
            <node concept="3y3z36" id="16BE8ZlmWCG" role="3eO9$A">
              <node concept="10Nm6u" id="16BE8ZlmWCH" role="3uHU7w" />
              <node concept="1LFfDK" id="16BE8ZlmWCI" role="3uHU7B">
                <node concept="3cmrfG" id="16BE8ZlmWCJ" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="16BE8ZlmWCK" role="1LFl5Q">
                  <ref role="3cqZAo" node="16BE8ZlmWCe" resolve="prevNextTuple" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16BE8ZlmWCL" role="3eOfB_">
              <node concept="3clFbF" id="16BE8ZlmWCM" role="3cqZAp">
                <node concept="2OqwBi" id="16BE8ZlmWCN" role="3clFbG">
                  <node concept="1LFfDK" id="16BE8ZlmWCO" role="2Oq$k0">
                    <node concept="3cmrfG" id="16BE8ZlmWCP" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="16BE8ZlmWCQ" role="1LFl5Q">
                      <ref role="3cqZAo" node="16BE8ZlmWCe" resolve="prevNextTuple" />
                    </node>
                  </node>
                  <node concept="1OKiuA" id="16BE8ZlmWCR" role="2OqNvi">
                    <node concept="37vLTw" id="16BE8ZlmWCS" role="lBI5i">
                      <ref role="3cqZAo" node="16BE8ZlmWCa" resolve="editorContext" />
                    </node>
                    <node concept="3cmrfG" id="16BE8ZlmWCT" role="3dN3m$">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2B6iha" id="16BE8ZlmZGL" role="lGT1i" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="16BE8ZlmWCV" role="3cqZAp">
                <node concept="3clFbT" id="16BE8ZlmWCW" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16BE8ZlmWCX" role="3cqZAp">
          <node concept="3clFbT" id="16BE8ZlmWCY" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="16BE8ZlmWCZ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="16BE8ZlmWqs" role="jymVt" />
    <node concept="2YIFZL" id="16BE8Zll9Jg" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="deleteElementFromCollectionAndSetSelection" />
      <node concept="37vLTG" id="16BE8Zlle8Z" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="16BE8ZlleSf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="16BE8ZllTas" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="16BE8Zlpv30" role="1tU5fm">
          <node concept="3Tqbb2" id="16BE8Zlpve$" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="16BE8ZllbQp" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="16BE8Zllc9H" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="16BE8Zll9mD" role="3clF47">
        <node concept="3cpWs8" id="16BE8ZlmQC$" role="3cqZAp">
          <node concept="3cpWsn" id="16BE8ZlmQC_" role="3cpWs9">
            <property role="TrG5h" value="prevNextTuple" />
            <node concept="1LlUBW" id="16BE8ZlmQCq" role="1tU5fm">
              <node concept="3Tqbb2" id="16BE8ZlmQCw" role="1Lm7xW" />
              <node concept="3Tqbb2" id="16BE8ZlmQCv" role="1Lm7xW" />
            </node>
            <node concept="1rXfSq" id="16BE8ZlmQCA" role="33vP2m">
              <ref role="37wK5l" node="16BE8Zlm$77" resolve="getPrevNext" />
              <node concept="37vLTw" id="16BE8ZlmQCB" role="37wK5m">
                <ref role="3cqZAo" node="16BE8Zlle8Z" resolve="node" />
              </node>
              <node concept="37vLTw" id="16BE8ZlmQCC" role="37wK5m">
                <ref role="3cqZAo" node="16BE8ZllTas" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16BE8ZlkWQ3" role="3cqZAp">
          <node concept="2OqwBi" id="16BE8ZlkWQ4" role="3clFbG">
            <node concept="37vLTw" id="16BE8Zlm7s$" role="2Oq$k0">
              <ref role="3cqZAo" node="16BE8Zlle8Z" resolve="node" />
            </node>
            <node concept="3YRAZt" id="16BE8ZlkWQ6" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="16BE8Zlmtlk" role="3cqZAp">
          <node concept="3clFbS" id="16BE8Zlmtln" role="3clFbx">
            <node concept="3clFbF" id="16BE8ZlkWQ9" role="3cqZAp">
              <node concept="2OqwBi" id="16BE8ZlkWQa" role="3clFbG">
                <node concept="1LFfDK" id="16BE8ZlmTZu" role="2Oq$k0">
                  <node concept="3cmrfG" id="16BE8ZlmU0x" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="16BE8ZlmTSi" role="1LFl5Q">
                    <ref role="3cqZAo" node="16BE8ZlmQC_" resolve="prevNextTuple" />
                  </node>
                </node>
                <node concept="1OKiuA" id="16BE8ZlkWQc" role="2OqNvi">
                  <node concept="37vLTw" id="16BE8Zlm8j5" role="lBI5i">
                    <ref role="3cqZAo" node="16BE8ZllbQp" resolve="editorContext" />
                  </node>
                  <node concept="2B6iha" id="16BE8ZlkWQe" role="lGT1i" />
                  <node concept="3cmrfG" id="16BE8ZlkWQf" role="3dN3m$">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="16BE8ZlmvG6" role="3cqZAp">
              <node concept="3clFbT" id="16BE8ZlmvIZ" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="16BE8ZlmTi5" role="3clFbw">
            <node concept="10Nm6u" id="16BE8ZlmTmm" role="3uHU7w" />
            <node concept="1LFfDK" id="16BE8ZlmTbQ" role="3uHU7B">
              <node concept="3cmrfG" id="16BE8ZlmTga" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="16BE8ZlmRK0" role="1LFl5Q">
                <ref role="3cqZAo" node="16BE8ZlmQC_" resolve="prevNextTuple" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="16BE8ZlmvDh" role="3eNLev">
            <node concept="3y3z36" id="16BE8ZlmV3h" role="3eO9$A">
              <node concept="10Nm6u" id="16BE8ZlmV9k" role="3uHU7w" />
              <node concept="1LFfDK" id="16BE8ZlmUVz" role="3uHU7B">
                <node concept="3cmrfG" id="16BE8ZlmV1m" role="1LF_Uc">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="16BE8ZlmUFC" role="1LFl5Q">
                  <ref role="3cqZAo" node="16BE8ZlmQC_" resolve="prevNextTuple" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="16BE8ZlmvDj" role="3eOfB_">
              <node concept="3clFbF" id="16BE8ZlkWQo" role="3cqZAp">
                <node concept="2OqwBi" id="16BE8ZlkWQp" role="3clFbG">
                  <node concept="1LFfDK" id="16BE8ZlmVSc" role="2Oq$k0">
                    <node concept="3cmrfG" id="16BE8ZlmVTf" role="1LF_Uc">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="16BE8ZlmVLb" role="1LFl5Q">
                      <ref role="3cqZAo" node="16BE8ZlmQC_" resolve="prevNextTuple" />
                    </node>
                  </node>
                  <node concept="1OKiuA" id="16BE8ZlkWQr" role="2OqNvi">
                    <node concept="37vLTw" id="16BE8Zlm8Ec" role="lBI5i">
                      <ref role="3cqZAo" node="16BE8ZllbQp" resolve="editorContext" />
                    </node>
                    <node concept="3cmrfG" id="16BE8ZlkWQt" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                    <node concept="2B6iha" id="16BE8ZlkWQu" role="lGT1i">
                      <property role="1lyBwo" value="1S2pyLby17K/last" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="16BE8Zlma7B" role="3cqZAp">
                <node concept="3clFbT" id="16BE8Zlma8h" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16BE8ZlmaeT" role="3cqZAp">
          <node concept="3clFbT" id="16BE8Zlmafv" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="16BE8Zlla7U" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="16BE8Zlm$77" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getPrevNext" />
      <node concept="37vLTG" id="16BE8ZlmNL_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="16BE8ZlmNLA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="16BE8ZlmNLB" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="16BE8ZlpwoN" role="1tU5fm">
          <node concept="3Tqbb2" id="16BE8ZlpwDk" role="A3Ik2" />
        </node>
      </node>
      <node concept="3clFbS" id="16BE8ZlmzzW" role="3clF47">
        <node concept="3cpWs8" id="16BE8ZlmN3x" role="3cqZAp">
          <node concept="3cpWsn" id="16BE8ZlmN3y" role="3cpWs9">
            <property role="TrG5h" value="prevNode" />
            <node concept="3Tqbb2" id="16BE8ZlmN3z" role="1tU5fm" />
            <node concept="10Nm6u" id="16BE8ZlmN3$" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="16BE8ZlmN3_" role="3cqZAp">
          <node concept="3cpWsn" id="16BE8ZlmN3A" role="3cpWs9">
            <property role="TrG5h" value="nextNode" />
            <node concept="3Tqbb2" id="16BE8ZlmN3B" role="1tU5fm" />
            <node concept="10Nm6u" id="16BE8ZlmN3C" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="16BE8ZlmN3D" role="3cqZAp">
          <node concept="3cpWsn" id="16BE8ZlmN3E" role="3cpWs9">
            <property role="TrG5h" value="nodeVisited" />
            <node concept="10P_77" id="16BE8ZlmN3F" role="1tU5fm" />
            <node concept="3clFbT" id="16BE8ZlmN3G" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="16BE8ZlmN3H" role="3cqZAp">
          <node concept="2GrKxI" id="16BE8ZlmN3I" role="2Gsz3X">
            <property role="TrG5h" value="n" />
          </node>
          <node concept="37vLTw" id="16BE8ZlmOkK" role="2GsD0m">
            <ref role="3cqZAo" node="16BE8ZlmNLB" resolve="nodes" />
          </node>
          <node concept="3clFbS" id="16BE8ZlmN3K" role="2LFqv$">
            <node concept="3clFbJ" id="16BE8ZlmN3L" role="3cqZAp">
              <node concept="3clFbS" id="16BE8ZlmN3M" role="3clFbx">
                <node concept="3clFbF" id="16BE8ZlmN3N" role="3cqZAp">
                  <node concept="37vLTI" id="16BE8ZlmN3O" role="3clFbG">
                    <node concept="3clFbT" id="16BE8ZlmN3P" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="16BE8ZlmN3Q" role="37vLTJ">
                      <ref role="3cqZAo" node="16BE8ZlmN3E" resolve="nodeVisited" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="16BE8ZlmN3R" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="16BE8ZlmN3S" role="3clFbw">
                <node concept="37vLTw" id="16BE8ZlmN3T" role="3uHU7w">
                  <ref role="3cqZAo" node="16BE8ZlmNL_" resolve="node" />
                </node>
                <node concept="2GrUjf" id="16BE8ZlmN3U" role="3uHU7B">
                  <ref role="2Gs0qQ" node="16BE8ZlmN3I" resolve="n" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="16BE8ZlmN3V" role="3cqZAp">
              <node concept="3clFbS" id="16BE8ZlmN3W" role="3clFbx">
                <node concept="3clFbF" id="16BE8ZlmN3X" role="3cqZAp">
                  <node concept="37vLTI" id="16BE8ZlmN3Y" role="3clFbG">
                    <node concept="2GrUjf" id="16BE8ZlmN3Z" role="37vLTx">
                      <ref role="2Gs0qQ" node="16BE8ZlmN3I" resolve="n" />
                    </node>
                    <node concept="37vLTw" id="16BE8ZlmN40" role="37vLTJ">
                      <ref role="3cqZAo" node="16BE8ZlmN3y" resolve="prevNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="16BE8ZlmN41" role="3clFbw">
                <node concept="37vLTw" id="16BE8ZlmN42" role="3fr31v">
                  <ref role="3cqZAo" node="16BE8ZlmN3E" resolve="nodeVisited" />
                </node>
              </node>
              <node concept="9aQIb" id="16BE8ZlmN43" role="9aQIa">
                <node concept="3clFbS" id="16BE8ZlmN44" role="9aQI4">
                  <node concept="3clFbF" id="16BE8ZlmN45" role="3cqZAp">
                    <node concept="37vLTI" id="16BE8ZlmN46" role="3clFbG">
                      <node concept="2GrUjf" id="16BE8ZlmN47" role="37vLTx">
                        <ref role="2Gs0qQ" node="16BE8ZlmN3I" resolve="n" />
                      </node>
                      <node concept="37vLTw" id="16BE8ZlmN48" role="37vLTJ">
                        <ref role="3cqZAo" node="16BE8ZlmN3A" resolve="nextNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zACq4" id="16BE8ZlmN49" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16BE8ZlmP7_" role="3cqZAp">
          <node concept="1Ls8ON" id="16BE8ZlmPaH" role="3cqZAk">
            <node concept="37vLTw" id="16BE8ZlmPeY" role="1Lso8e">
              <ref role="3cqZAo" node="16BE8ZlmN3y" resolve="prevNode" />
            </node>
            <node concept="37vLTw" id="16BE8ZlmPj4" role="1Lso8e">
              <ref role="3cqZAo" node="16BE8ZlmN3A" resolve="nextNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="16BE8ZlmzBd" role="1B3o_S" />
      <node concept="1LlUBW" id="16BE8ZlmMwu" role="3clF45">
        <node concept="3Tqbb2" id="16BE8ZlmMx1" role="1Lm7xW" />
        <node concept="3Tqbb2" id="16BE8ZlmMxb" role="1Lm7xW" />
      </node>
    </node>
    <node concept="3Tm1VV" id="16BE8ZlkSID" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5SJcws9hiO3">
    <property role="TrG5h" value="IdEditorHelper" />
    <node concept="2YIFZL" id="5SJcws9hkFr" role="jymVt">
      <property role="TrG5h" value="shownInEditor" />
      <node concept="10P_77" id="5SJcws9hkG$" role="3clF45" />
      <node concept="3Tm1VV" id="5SJcws9hkFw" role="1B3o_S" />
      <node concept="3clFbS" id="5SJcws9hkFx" role="3clF47">
        <node concept="3SKdUt" id="5SJcws9hD0Z" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXnYLe" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXnYLf" role="1PaTwD">
              <property role="3oM_SC" value="IDs" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLh" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLi" role="1PaTwD">
              <property role="3oM_SC" value="shown" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLj" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLk" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLl" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLm" role="1PaTwD">
              <property role="3oM_SC" value="generator" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLn" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLo" role="1PaTwD">
              <property role="3oM_SC" value="transient" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnYLp" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40tMyUvm8ru" role="3cqZAp">
          <node concept="3cpWsn" id="40tMyUvm8rv" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="40tMyUvm8rq" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="40tMyUvm8rw" role="33vP2m">
              <node concept="2JrnkZ" id="40tMyUvm8rx" role="2Oq$k0">
                <node concept="2OqwBi" id="40tMyUvm8ry" role="2JrQYb">
                  <node concept="37vLTw" id="40tMyUvm8rz" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SJcws9hkNs" resolve="node" />
                  </node>
                  <node concept="I4A8Y" id="40tMyUvm8r$" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="40tMyUvm8r_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="40tMyUvm6Bt" role="3cqZAp">
          <node concept="3clFbS" id="40tMyUvm6Bv" role="3clFbx">
            <node concept="3cpWs6" id="40tMyUvm8hy" role="3cqZAp">
              <node concept="3clFbT" id="40tMyUvm8kX" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="40tMyUvm9TV" role="3clFbw">
            <node concept="2ZW3vV" id="40tMyUvmali" role="3uHU7w">
              <node concept="3uibUv" id="40tMyUvmaoI" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
              </node>
              <node concept="37vLTw" id="40tMyUvm9XT" role="2ZW6bz">
                <ref role="3cqZAo" node="40tMyUvm8rv" resolve="module" />
              </node>
            </node>
            <node concept="2ZW3vV" id="40tMyUvm87w" role="3uHU7B">
              <node concept="3uibUv" id="7BS8DFNL6_j" role="2ZW6by">
                <ref role="3uigEE" to="31cb:~TransientSModule" resolve="TransientSModule" />
              </node>
              <node concept="37vLTw" id="40tMyUvm8rA" role="2ZW6bz">
                <ref role="3cqZAo" node="40tMyUvm8rv" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5SJcws9hFLa" role="3cqZAp">
          <node concept="3clFbT" id="40tMyUvmavx" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5SJcws9hkNs" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5SJcws9hkNr" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5SJcws9hiO4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7Hlf$KPdzIQ">
    <property role="TrG5h" value="ConceptDeclarationAssistantUtil" />
    <node concept="312cEg" id="7Hlf$KPdzMJ" role="jymVt">
      <property role="TrG5h" value="myConcept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Hlf$KPdzMK" role="1B3o_S" />
      <node concept="3Tqbb2" id="7Hlf$KPdzNo" role="1tU5fm">
        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Hlf$KPdzNK" role="jymVt" />
    <node concept="3clFbW" id="7Hlf$KPdzKr" role="jymVt">
      <node concept="3cqZAl" id="7Hlf$KPdzKt" role="3clF45" />
      <node concept="3Tm1VV" id="7Hlf$KPdzKu" role="1B3o_S" />
      <node concept="3clFbS" id="7Hlf$KPdzKv" role="3clF47">
        <node concept="3clFbF" id="7Hlf$KPdzPI" role="3cqZAp">
          <node concept="37vLTI" id="7Hlf$KPdzZH" role="3clFbG">
            <node concept="37vLTw" id="7Hlf$KPd$4m" role="37vLTx">
              <ref role="3cqZAo" node="7Hlf$KPdzL2" resolve="concept" />
            </node>
            <node concept="37vLTw" id="7Hlf$KPdzPH" role="37vLTJ">
              <ref role="3cqZAo" node="7Hlf$KPdzMJ" resolve="myConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Hlf$KPdzL2" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3Tqbb2" id="7Hlf$KPdzL1" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Hlf$KPd$5X" role="jymVt" />
    <node concept="3clFb_" id="7Hlf$KPj9V3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getStructurallyEqualSuperConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7Hlf$KPj9V6" role="3clF47">
        <node concept="3cpWs8" id="7Hlf$KPkUF6" role="3cqZAp">
          <node concept="3cpWsn" id="7Hlf$KPkUF9" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="7Hlf$KPkUF2" role="1tU5fm">
              <node concept="3Tqbb2" id="7Hlf$KPkWpb" role="_ZDj9">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Hlf$KPkW$O" role="33vP2m">
              <node concept="Tc6Ow" id="7Hlf$KPkW$I" role="2ShVmc">
                <node concept="3Tqbb2" id="7Hlf$KPkW$J" role="HW$YZ">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Hlf$KPkT33" role="3cqZAp" />
        <node concept="3cpWs8" id="6AHMUXrf2A2" role="3cqZAp">
          <node concept="3cpWsn" id="6AHMUXrf2A5" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="6AHMUXrf2A7" role="1tU5fm">
              <node concept="3Tqbb2" id="6AHMUXrf2A9" role="2hN53Y">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="6AHMUXrf2Aa" role="33vP2m">
              <node concept="2i4dXS" id="6AHMUXrf2Ac" role="2ShVmc">
                <node concept="3Tqbb2" id="6AHMUXrf2Ad" role="HW$YZ">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Hlf$KPkoiT" role="3cqZAp">
          <node concept="3cpWsn" id="7Hlf$KPkoiU" role="3cpWs9">
            <property role="TrG5h" value="toCheck" />
            <node concept="3O6Q9H" id="7Hlf$KPkoiV" role="1tU5fm">
              <node concept="3Tqbb2" id="7Hlf$KPkoiW" role="3O5elw">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Hlf$KPkoiX" role="33vP2m">
              <node concept="2Jqq0_" id="7Hlf$KPkoiY" role="2ShVmc">
                <node concept="3Tqbb2" id="7Hlf$KPkoiZ" role="HW$YZ">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="37vLTw" id="7Hlf$KPkpYn" role="HW$Y0">
                  <ref role="3cqZAo" node="7Hlf$KPdzMJ" resolve="myConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="SMdHsk1aky" role="3cqZAp">
          <node concept="3cpWsn" id="SMdHsk1akz" role="3cpWs9">
            <property role="TrG5h" value="expectedLinks" />
            <property role="3TUv4t" value="true" />
            <node concept="2I9FWS" id="SMdHsk1aa_" role="1tU5fm">
              <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            </node>
            <node concept="2OqwBi" id="SMdHsk1ak$" role="33vP2m">
              <node concept="37vLTw" id="SMdHsk1ak_" role="2Oq$k0">
                <ref role="3cqZAo" node="7Hlf$KPdzMJ" resolve="myConcept" />
              </node>
              <node concept="3zqWPK" id="70OdufORfyN" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="SMdHsk1c9q" role="3cqZAp">
          <node concept="3cpWsn" id="SMdHsk1c9r" role="3cpWs9">
            <property role="TrG5h" value="expectedProperties" />
            <property role="3TUv4t" value="true" />
            <node concept="2I9FWS" id="SMdHsk1bFn" role="1tU5fm">
              <ref role="2I9WkF" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
            </node>
            <node concept="2OqwBi" id="SMdHsk1c9s" role="33vP2m">
              <node concept="37vLTw" id="SMdHsk1c9t" role="2Oq$k0">
                <ref role="3cqZAo" node="7Hlf$KPdzMJ" resolve="myConcept" />
              </node>
              <node concept="3zqWPK" id="70OdufORfyP" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="7Hlf$KPkoj5" role="3cqZAp">
          <node concept="2OqwBi" id="7Hlf$KPkoj6" role="2$JKZa">
            <node concept="37vLTw" id="7Hlf$KPkoj7" role="2Oq$k0">
              <ref role="3cqZAo" node="7Hlf$KPkoiU" resolve="toCheck" />
            </node>
            <node concept="3GX2aA" id="7Hlf$KPkoj8" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="7Hlf$KPkoj9" role="2LFqv$">
            <node concept="3cpWs8" id="7Hlf$KPkoja" role="3cqZAp">
              <node concept="3cpWsn" id="7Hlf$KPkojb" role="3cpWs9">
                <property role="TrG5h" value="acd" />
                <node concept="3Tqbb2" id="7Hlf$KPkojc" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="7Hlf$KPkojd" role="33vP2m">
                  <node concept="37vLTw" id="7Hlf$KPkoje" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Hlf$KPkoiU" resolve="toCheck" />
                  </node>
                  <node concept="2Kt2Hk" id="7Hlf$KPkojf" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6AHMUXrf2KT" role="3cqZAp">
              <node concept="2OqwBi" id="6AHMUXrf2KW" role="3clFbw">
                <node concept="37vLTw" id="6AHMUXrf2KZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6AHMUXrf2A5" resolve="visited" />
                </node>
                <node concept="3JPx81" id="6AHMUXrf2L0" role="2OqNvi">
                  <node concept="37vLTw" id="6AHMUXrf2L2" role="25WWJ7">
                    <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6AHMUXrf2L3" role="3clFbx">
                <node concept="3N13vt" id="6AHMUXrf2L4" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="6AHMUXrf2X1" role="3cqZAp">
              <node concept="2OqwBi" id="6AHMUXrf2X3" role="3clFbG">
                <node concept="37vLTw" id="6AHMUXrf2X6" role="2Oq$k0">
                  <ref role="3cqZAo" node="6AHMUXrf2A5" resolve="visited" />
                </node>
                <node concept="TSZUe" id="6AHMUXrf2X7" role="2OqNvi">
                  <node concept="37vLTw" id="6AHMUXrf2X9" role="25WWJ7">
                    <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Hlf$KPkojg" role="3cqZAp">
              <node concept="3clFbS" id="7Hlf$KPkojh" role="3clFbx">
                <node concept="3N13vt" id="7Hlf$KPkoji" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="7Hlf$KPkojj" role="3clFbw">
                <node concept="2OqwBi" id="3XR0QgVCjZn" role="3uHU7B">
                  <node concept="37vLTw" id="3XR0QgVCjZl" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                  </node>
                  <node concept="1QLmlb" id="3XR0QgVCjZo" role="2OqNvi">
                    <node concept="ZC_QK" id="3XR0QgVCjZm" role="1QLmnL">
                      <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3XR0QgVCke5" role="3uHU7w">
                  <node concept="37vLTw" id="3XR0QgVCke3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                  </node>
                  <node concept="1QLmlb" id="3XR0QgVCke6" role="2OqNvi">
                    <node concept="ZC_QK" id="3XR0QgVCke4" role="1QLmnL">
                      <ref role="2aWVGs" to="tpck:h0TrEE$" resolve="INamedConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Hlf$KPkojq" role="3cqZAp">
              <node concept="3clFbS" id="7Hlf$KPkojr" role="3clFbx">
                <node concept="3N13vt" id="7Hlf$KPkojs" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="7Hlf$KPkojt" role="3clFbw">
                <node concept="3fqX7Q" id="7Hlf$KPkoju" role="3uHU7B">
                  <node concept="2OqwBi" id="7Hlf$KPkojv" role="3fr31v">
                    <node concept="2OqwBi" id="7Hlf$KPkojw" role="2Oq$k0">
                      <node concept="37vLTw" id="7Hlf$KPkojx" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORfyR" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                      </node>
                    </node>
                    <node concept="BjQpj" id="7Hlf$KPkojz" role="2OqNvi">
                      <node concept="37vLTw" id="SMdHsk1akB" role="25WWJ7">
                        <ref role="3cqZAo" node="SMdHsk1akz" resolve="expectedLinks" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="7Hlf$KPkojB" role="3uHU7w">
                  <node concept="2OqwBi" id="7Hlf$KPkojC" role="3fr31v">
                    <node concept="2OqwBi" id="7Hlf$KPkojD" role="2Oq$k0">
                      <node concept="37vLTw" id="7Hlf$KPkojE" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORfyT" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                      </node>
                    </node>
                    <node concept="BjQpj" id="7Hlf$KPkojG" role="2OqNvi">
                      <node concept="37vLTw" id="SMdHsk1c9v" role="25WWJ7">
                        <ref role="3cqZAo" node="SMdHsk1c9r" resolve="expectedProperties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Hlf$KPuNLs" role="3cqZAp">
              <node concept="3clFbS" id="7Hlf$KPuNLu" role="3clFbx">
                <node concept="3clFbF" id="7Hlf$KPl37y" role="3cqZAp">
                  <node concept="2OqwBi" id="7Hlf$KPl6v5" role="3clFbG">
                    <node concept="37vLTw" id="7Hlf$KPl37w" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Hlf$KPkUF9" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="7Hlf$KPl9$r" role="2OqNvi">
                      <node concept="37vLTw" id="7Hlf$KPl9EJ" role="25WWJ7">
                        <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7Hlf$KPuOdZ" role="3clFbw">
                <node concept="37vLTw" id="7Hlf$KPuOgg" role="3uHU7w">
                  <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                </node>
                <node concept="37vLTw" id="7Hlf$KPuO1r" role="3uHU7B">
                  <ref role="3cqZAo" node="7Hlf$KPdzMJ" resolve="myConcept" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7Hlf$KPkokc" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXnYNC" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXnYND" role="1PaTwD">
                  <property role="3oM_SC" value="continue" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNE" role="1PaTwD">
                  <property role="3oM_SC" value="concept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNF" role="1PaTwD">
                  <property role="3oM_SC" value="hierarchy" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNG" role="1PaTwD">
                  <property role="3oM_SC" value="traversal" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNH" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNI" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNJ" role="1PaTwD">
                  <property role="3oM_SC" value="acd" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNK" role="1PaTwD">
                  <property role="3oM_SC" value="contains" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNL" role="1PaTwD">
                  <property role="3oM_SC" value="all" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNM" role="1PaTwD">
                  <property role="3oM_SC" value="properties/link" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNN" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNO" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNP" role="1PaTwD">
                  <property role="3oM_SC" value="current" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYNQ" role="1PaTwD">
                  <property role="3oM_SC" value="concept" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Hlf$KPkoke" role="3cqZAp">
              <node concept="2OqwBi" id="7Hlf$KPkokf" role="3clFbG">
                <node concept="37vLTw" id="7Hlf$KPkokg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Hlf$KPkoiU" resolve="toCheck" />
                </node>
                <node concept="X8dFx" id="7Hlf$KPkokh" role="2OqNvi">
                  <node concept="2OqwBi" id="7Hlf$KPkoki" role="25WWJ7">
                    <node concept="37vLTw" id="7Hlf$KPkokj" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Hlf$KPkojb" resolve="acd" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORfyV" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hMuxyK2" resolve="getImmediateSuperconcepts" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Hlf$KPkszG" role="3cqZAp">
          <node concept="37vLTw" id="7Hlf$KPlbhr" role="3cqZAk">
            <ref role="3cqZAo" node="7Hlf$KPkUF9" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Hlf$KPj8E8" role="1B3o_S" />
      <node concept="2I9FWS" id="SMdHsk19Ja" role="3clF45">
        <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7Hlf$KPdzIR" role="1B3o_S" />
  </node>
  <node concept="24kQdi" id="6OtXG9K2KVl">
    <property role="3GE5qa" value="document" />
    <ref role="1XX52x" to="tpce:6OtXG9K2KUD" resolve="DocumentedNodeAnnotation" />
    <node concept="3EZMnI" id="6OtXG9K2KVn" role="2wV5jI">
      <node concept="3EZMnI" id="6OtXG9K2KVo" role="3EZMnx">
        <node concept="VPM3Z" id="6OtXG9K2KVp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6OtXG9K2KVq" role="3EZMnx">
          <property role="3F0ifm" value="@doc" />
          <ref role="1k5W1q" node="hOawUFH" resolve="AnnotationNode" />
          <node concept="3$7jql" id="6OtXG9K2KVr" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3F0A7n" id="6OtXG9K2KVy" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpce:6OtXG9K2KUL" resolve="text" />
          <node concept="3Xmtl4" id="2mL_UKGkrnC" role="3F10Kt">
            <node concept="1wgc9g" id="2mL_UKGkrnL" role="3XvnJa">
              <ref role="1wgcnl" to="tpen:aeM1BF$KI9" />
            </node>
          </node>
          <node concept="3$7fVu" id="6OtXG9K2KV$" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
          <node concept="3$7jql" id="6OtXG9K2KV_" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
          <node concept="1liFee" id="3XLirLmzEei" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="6OtXG9K2KW5" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6OtXG9K2Sue" role="3EZMnx">
        <node concept="VPM3Z" id="6OtXG9K2Sug" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6OtXG9K33Vj" role="3EZMnx">
          <property role="3F0ifm" value="see also:" />
          <ref role="1k5W1q" node="hOawUFH" resolve="AnnotationNode" />
          <node concept="lj46D" id="6OtXG9K3458" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="6OtXG9K33tQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:6OtXG9K2KUS" resolve="seeAlso" />
          <node concept="2iRfu4" id="6OtXG9K33tT" role="2czzBx" />
        </node>
        <node concept="l2Vlx" id="6OtXG9K33ai" role="2iSdaV" />
        <node concept="pkWqt" id="6OtXG9K2Suy" role="pqm2j">
          <node concept="3clFbS" id="6OtXG9K2Suz" role="2VODD2">
            <node concept="3clFbF" id="6OtXG9K2S_K" role="3cqZAp">
              <node concept="2OqwBi" id="6OtXG9K2Zk3" role="3clFbG">
                <node concept="2OqwBi" id="6OtXG9K2SNv" role="2Oq$k0">
                  <node concept="pncrf" id="6OtXG9K2S_J" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6OtXG9K2Tau" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:6OtXG9K2KUS" resolve="seeAlso" />
                  </node>
                </node>
                <node concept="3GX2aA" id="6OtXG9K32Js" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="6OtXG9K2KW6" role="3EZMnx" />
      <node concept="2iRkQZ" id="6OtXG9K2KW7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6OtXG9KkzS7">
    <property role="3GE5qa" value="document" />
    <ref role="1XX52x" to="tpce:6OtXG9K2KUP" resolve="DocumentationObjectiveRef" />
    <node concept="1iCGBv" id="6OtXG9KkzSj" role="2wV5jI">
      <ref role="1NtTu8" to="tpce:6OtXG9K2KUQ" resolve="target" />
      <node concept="1sVBvm" id="6OtXG9KkzSl" role="1sWHZn">
        <node concept="3SHvHV" id="6OtXG9KkzSs" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7ERGDLdpEaa">
    <property role="3GE5qa" value="smartReference" />
    <ref role="1XX52x" to="tpce:7ERGDLdpClu" resolve="RefPresentationTemplate" />
    <node concept="3EZMnI" id="3J8eUL7n4Js" role="2wV5jI">
      <node concept="2iRfu4" id="3J8eUL7n4Jt" role="2iSdaV" />
      <node concept="3F0A7n" id="3J8eUL7n4Ic" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;empty prefix&gt;" />
        <ref role="1NtTu8" to="tpce:3J8eUL7n4Hp" resolve="prefix" />
        <node concept="VechU" id="3J8eUL7sKN0" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J8eUL7n4Il" role="3EZMnx">
        <property role="3F0ifm" value="&lt;ref. presentation&gt;" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <node concept="11L4FC" id="3J8eUL7pZYZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3J8eUL7pZZ7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3J8eUL7n4Iy" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;empty suffix&gt;" />
        <ref role="1NtTu8" to="tpce:3J8eUL7n4Hs" resolve="suffix" />
        <node concept="VechU" id="3J8eUL7sKMW" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7ERGDLdpELj">
    <property role="3GE5qa" value="smartReference" />
    <ref role="1XX52x" to="tpce:7ERGDLdoDvC" resolve="SmartReferenceAttribute" />
    <node concept="3EZMnI" id="7ERGDLdpELl" role="2wV5jI">
      <node concept="PMmxH" id="7ERGDLdpELm" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1ERwB7" node="2ZPUO8YhEwF" resolve="RemoveSmartReferenceAttribute_Action" />
        <node concept="ljvvj" id="7ERGDLdpELn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="2ZPUO8YiVk8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="7ERGDLdrEuV" role="3EZMnx">
        <node concept="2iRfu4" id="7ERGDLdrEuW" role="2iSdaV" />
        <node concept="3XFhqQ" id="7ERGDLdrEvM" role="3EZMnx" />
        <node concept="3EZMnI" id="7ERGDLdrEqV" role="3EZMnx">
          <node concept="3EZMnI" id="7ERGDLdrEnN" role="3EZMnx">
            <node concept="2iRfu4" id="7ERGDLdrEnO" role="2iSdaV" />
            <node concept="3F0ifn" id="7ERGDLdpELr" role="3EZMnx">
              <property role="3F0ifm" value="reference:" />
              <node concept="lj46D" id="7ERGDLdrEmD" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="1iCGBv" id="7ERGDLdpEWo" role="3EZMnx">
              <ref role="1NtTu8" to="tpce:7ERGDLdoDvH" resolve="charactersticReference" />
              <node concept="1sVBvm" id="7ERGDLdpEWq" role="1sWHZn">
                <node concept="3SHvHV" id="7ERGDLdpEWM" role="2wV5jI" />
              </node>
              <node concept="ljvvj" id="7ERGDLdpEWP" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="7ERGDLdrEwv" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="2iRkQZ" id="7ERGDLdrErn" role="2iSdaV" />
          <node concept="3EZMnI" id="7ERGDLdrEp4" role="3EZMnx">
            <node concept="2iRfu4" id="7ERGDLdrEp5" role="2iSdaV" />
            <node concept="3F0ifn" id="7ERGDLdpELx" role="3EZMnx">
              <property role="3F0ifm" value="presentation:" />
              <node concept="lj46D" id="7ERGDLdrEmF" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F1sOY" id="7ERGDLdpEXR" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpce:7ERGDLdpEKR" resolve="refPresentationTemplate" />
            </node>
            <node concept="VPM3Z" id="7ERGDLdrEwx" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="VPM3Z" id="7ERGDLdrEwt" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="7ERGDLdrEwr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2SsqMj" id="7ERGDLdpELJ" role="3EZMnx" />
      <node concept="2iRkQZ" id="7ERGDLdrEj5" role="2iSdaV" />
      <node concept="VPM3Z" id="7ERGDLdrEwp" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2ZPUO8YhEwF">
    <property role="3GE5qa" value="smartReference" />
    <property role="TrG5h" value="RemoveSmartReferenceAttribute_Action" />
    <ref role="1h_SK9" to="tpce:7ERGDLdoDvC" resolve="SmartReferenceAttribute" />
    <node concept="1hA7zw" id="2ZPUO8YhEwG" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="2ZPUO8YhEwH" role="1hA7z_">
        <node concept="3clFbS" id="2ZPUO8YhEwI" role="2VODD2">
          <node concept="3clFbF" id="2ZPUO8YhEwZ" role="3cqZAp">
            <node concept="2OqwBi" id="2ZPUO8YhEDd" role="3clFbG">
              <node concept="0IXxy" id="2ZPUO8YhEwY" role="2Oq$k0" />
              <node concept="3YRAZt" id="2ZPUO8YhF2s" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="1IN3FLTMXPL">
    <property role="TrG5h" value="AbstractConceptDeclaration_Link_Actions" />
    <ref role="1h_SK9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="1hA7zw" id="1IN3FLTEGup" role="1h_SK8">
      <property role="1hAc7j" value="3xhyJYa3zm9/insert_placeholder_action_id" />
      <node concept="1hAIg9" id="1IN3FLTEGuq" role="1hA7z_">
        <node concept="3clFbS" id="1IN3FLTEGur" role="2VODD2">
          <node concept="3cpWs8" id="1IN3FLTEGus" role="3cqZAp">
            <node concept="3cpWsn" id="1IN3FLTEGut" role="3cpWs9">
              <property role="TrG5h" value="action" />
              <node concept="3uibUv" id="1IN3FLTEGuu" role="1tU5fm">
                <ref role="3uigEE" to="f4zo:~CellAction" resolve="CellAction" />
              </node>
              <node concept="2OqwBi" id="1IN3FLTEGuv" role="33vP2m">
                <node concept="2OqwBi" id="1IN3FLTEGuw" role="2Oq$k0">
                  <node concept="1Q80Hx" id="1IN3FLTEGux" role="2Oq$k0" />
                  <node concept="liA8E" id="1IN3FLTEGuy" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
                  </node>
                </node>
                <node concept="liA8E" id="1IN3FLTEGuz" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getAction(jetbrains.mps.openapi.editor.cells.CellActionType)" resolve="getAction" />
                  <node concept="Rm8GO" id="1IN3FLTEGu$" role="37wK5m">
                    <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                    <ref role="Rm8GQ" to="f4zo:~CellActionType.INSERT" resolve="INSERT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1IN3FLTEGu_" role="3cqZAp">
            <node concept="2OqwBi" id="1IN3FLTEGuA" role="3clFbG">
              <node concept="37vLTw" id="1IN3FLTEGuB" role="2Oq$k0">
                <ref role="3cqZAo" node="1IN3FLTEGut" resolve="action" />
              </node>
              <node concept="liA8E" id="1IN3FLTEGuC" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~CellAction.execute(jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                <node concept="1Q80Hx" id="1IN3FLTEGuD" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="1IN3FLTEGuE" role="jK8aL">
        <node concept="3clFbS" id="1IN3FLTEGuF" role="2VODD2">
          <node concept="3cpWs8" id="1IN3FLTEGuG" role="3cqZAp">
            <node concept="3cpWsn" id="1IN3FLTEGuH" role="3cpWs9">
              <property role="TrG5h" value="action" />
              <node concept="3uibUv" id="1IN3FLTEGuI" role="1tU5fm">
                <ref role="3uigEE" to="f4zo:~CellAction" resolve="CellAction" />
              </node>
              <node concept="2OqwBi" id="1IN3FLTEGuJ" role="33vP2m">
                <node concept="2OqwBi" id="1IN3FLTEGuK" role="2Oq$k0">
                  <node concept="1Q80Hx" id="1IN3FLTEGuL" role="2Oq$k0" />
                  <node concept="liA8E" id="1IN3FLTEGuM" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
                  </node>
                </node>
                <node concept="liA8E" id="1IN3FLTEGuN" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getAction(jetbrains.mps.openapi.editor.cells.CellActionType)" resolve="getAction" />
                  <node concept="Rm8GO" id="1IN3FLTEGuO" role="37wK5m">
                    <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                    <ref role="Rm8GQ" to="f4zo:~CellActionType.INSERT" resolve="INSERT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1IN3FLTEGuP" role="3cqZAp">
            <node concept="2OqwBi" id="1IN3FLTEGuQ" role="3clFbG">
              <node concept="37vLTw" id="1IN3FLTEGuR" role="2Oq$k0">
                <ref role="3cqZAo" node="1IN3FLTEGuH" resolve="action" />
              </node>
              <node concept="liA8E" id="1IN3FLTEGuS" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~CellAction.canExecute(jetbrains.mps.openapi.editor.EditorContext)" resolve="canExecute" />
                <node concept="1Q80Hx" id="1IN3FLTEGuT" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="1IN3FLTEGuU" role="1h_SK8">
      <property role="1hAc7j" value="qmyvdpNLIC/insert_placeholder_before_action_id" />
      <node concept="1hAIg9" id="1IN3FLTEGuV" role="1hA7z_">
        <node concept="3clFbS" id="1IN3FLTEGuW" role="2VODD2">
          <node concept="3cpWs8" id="1IN3FLTEGuX" role="3cqZAp">
            <node concept="3cpWsn" id="1IN3FLTEGuY" role="3cpWs9">
              <property role="TrG5h" value="action" />
              <node concept="3uibUv" id="1IN3FLTEGuZ" role="1tU5fm">
                <ref role="3uigEE" to="f4zo:~CellAction" resolve="CellAction" />
              </node>
              <node concept="2OqwBi" id="1IN3FLTEGv0" role="33vP2m">
                <node concept="2OqwBi" id="1IN3FLTEGv1" role="2Oq$k0">
                  <node concept="1Q80Hx" id="1IN3FLTEGv2" role="2Oq$k0" />
                  <node concept="liA8E" id="1IN3FLTEGv3" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
                  </node>
                </node>
                <node concept="liA8E" id="1IN3FLTEGv4" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getAction(jetbrains.mps.openapi.editor.cells.CellActionType)" resolve="getAction" />
                  <node concept="Rm8GO" id="1IN3FLTEGv5" role="37wK5m">
                    <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                    <ref role="Rm8GQ" to="f4zo:~CellActionType.INSERT_BEFORE" resolve="INSERT_BEFORE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1IN3FLTEGv6" role="3cqZAp">
            <node concept="2OqwBi" id="1IN3FLTEGv7" role="3clFbG">
              <node concept="37vLTw" id="1IN3FLTEGv8" role="2Oq$k0">
                <ref role="3cqZAo" node="1IN3FLTEGuY" resolve="action" />
              </node>
              <node concept="liA8E" id="1IN3FLTEGv9" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~CellAction.execute(jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                <node concept="1Q80Hx" id="1IN3FLTEGva" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="1IN3FLTEGvb" role="jK8aL">
        <node concept="3clFbS" id="1IN3FLTEGvc" role="2VODD2">
          <node concept="3cpWs8" id="1IN3FLTEGvd" role="3cqZAp">
            <node concept="3cpWsn" id="1IN3FLTEGve" role="3cpWs9">
              <property role="TrG5h" value="action" />
              <node concept="3uibUv" id="1IN3FLTEGvf" role="1tU5fm">
                <ref role="3uigEE" to="f4zo:~CellAction" resolve="CellAction" />
              </node>
              <node concept="2OqwBi" id="1IN3FLTEGvg" role="33vP2m">
                <node concept="2OqwBi" id="1IN3FLTEGvh" role="2Oq$k0">
                  <node concept="1Q80Hx" id="1IN3FLTEGvi" role="2Oq$k0" />
                  <node concept="liA8E" id="1IN3FLTEGvj" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
                  </node>
                </node>
                <node concept="liA8E" id="1IN3FLTEGvk" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getAction(jetbrains.mps.openapi.editor.cells.CellActionType)" resolve="getAction" />
                  <node concept="Rm8GO" id="1IN3FLTEGvl" role="37wK5m">
                    <ref role="Rm8GQ" to="f4zo:~CellActionType.INSERT_BEFORE" resolve="INSERT_BEFORE" />
                    <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1IN3FLTEGvm" role="3cqZAp">
            <node concept="2OqwBi" id="1IN3FLTEGvn" role="3clFbG">
              <node concept="37vLTw" id="1IN3FLTEGvo" role="2Oq$k0">
                <ref role="3cqZAo" node="1IN3FLTEGve" resolve="action" />
              </node>
              <node concept="liA8E" id="1IN3FLTEGvp" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~CellAction.canExecute(jetbrains.mps.openapi.editor.EditorContext)" resolve="canExecute" />
                <node concept="1Q80Hx" id="1IN3FLTEGvq" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3naCKAeJ0$r">
    <property role="3GE5qa" value="enums" />
    <ref role="1XX52x" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
    <node concept="3EZMnI" id="3naCKAeJtro" role="2wV5jI">
      <node concept="3EZMnI" id="3naCKAeJtrI" role="3EZMnx">
        <node concept="VPM3Z" id="3naCKAeJtrK" role="3F10Kt" />
        <node concept="3F0ifn" id="3naCKAeJtrq" role="3EZMnx">
          <property role="3F0ifm" value="enumeration" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="3naCKAeJtsa" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3naCKAeJtrN" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3naCKAeJtsg" role="3EZMnx">
        <node concept="VPM3Z" id="7W$v8cT$LWk" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="VFd4XzZv7S" role="3EZMnx">
        <node concept="VPM3Z" id="VFd4XzZv7U" role="3F10Kt" />
        <node concept="3F0ifn" id="VFd4XzZv7W" role="3EZMnx">
          <property role="3F0ifm" value="members" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="VPM3Z" id="7W$v8cT$LYm" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="VFd4XzZvjr" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="11L4FC" id="VFd4XzZvjx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="VFd4XzZv7X" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="VFd4XzQnHK" role="3EZMnx">
        <node concept="VPM3Z" id="VFd4XzQnHM" role="3F10Kt" />
        <node concept="3F2HdR" id="3naCKAeJtul" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:2TR3acGo7N1" resolve="members" />
          <node concept="2EHx9g" id="VFd4XzUH4c" role="2czzBx" />
        </node>
        <node concept="2iRkQZ" id="VFd4XzQnHP" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3naCKAeJtu$" role="3EZMnx">
        <node concept="VPM3Z" id="7W$v8cT$M0o" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="3naCKAeJtJy" role="3EZMnx">
        <node concept="2iRfu4" id="3naCKAeJtJz" role="2iSdaV" />
        <node concept="3F0ifn" id="3naCKAeJtJH" role="3EZMnx">
          <property role="3F0ifm" value="default" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="51OOVwjHyuo" role="3EZMnx">
          <property role="3F0ifm" value="member" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="3naCKAeJtJP" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <ref role="1k5W1q" node="24YP6ZDyde4" resolve="Keyword" />
          <node concept="11L4FC" id="VFd4XzZvj$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1iCGBv" id="3naCKAeJtK2" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <property role="1$x2rV" value="null" />
          <ref role="1NtTu8" to="tpce:VFd4XzZw5G" resolve="defaultMember" />
          <node concept="1sVBvm" id="3naCKAeJtK4" role="1sWHZn">
            <node concept="3SHvHV" id="3naCKAeJtKi" role="2wV5jI" />
          </node>
        </node>
        <node concept="VPM3Z" id="VFd4X$DzDv" role="3F10Kt" />
      </node>
      <node concept="2iRkQZ" id="3naCKAeJtrr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3naCKAeJ4sU">
    <property role="3GE5qa" value="enums" />
    <ref role="1XX52x" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
    <node concept="3EZMnI" id="3naCKAeJ4sW" role="2wV5jI">
      <node concept="3F0ifn" id="51OOVwjHzli" role="3EZMnx">
        <property role="3F0ifm" value="•" />
        <node concept="Vb9p2" id="3naCKAeJcJt" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="VPM3Z" id="3naCKAeJpGv" role="3F10Kt" />
        <node concept="3$7fVu" id="VFd4X$dD6q" role="3F10Kt">
          <property role="3$6WeP" value="2" />
        </node>
      </node>
      <node concept="3F0A7n" id="3naCKAeJ4IM" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="VechU" id="3naCKAeJp9_" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
        </node>
        <node concept="Vb9p2" id="3naCKAeJp9H" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0A7n" id="3naCKAeJ4J_" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;default presentation&gt;" />
        <ref role="1NtTu8" to="tpce:_jzzDSlxy8" resolve="presentation" />
        <node concept="VechU" id="3naCKAeJp9Y" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
        </node>
        <node concept="VQ3r3" id="3naCKAeJpa6" role="3F10Kt">
          <property role="2USNnj" value="gtbM8PH/2" />
          <node concept="1d0yFN" id="LU8F6FNtNg" role="1mkY_M">
            <node concept="3clFbS" id="LU8F6FNtNh" role="2VODD2">
              <node concept="3clFbF" id="LU8F6FNxCF" role="3cqZAp">
                <node concept="2OqwBi" id="LU8F6FNw72" role="3clFbG">
                  <node concept="2OqwBi" id="LU8F6FNuhs" role="2Oq$k0">
                    <node concept="pncrf" id="LU8F6FNu2u" role="2Oq$k0" />
                    <node concept="3TrcHB" id="LU8F6FNvfU" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:_jzzDSlxy8" resolve="presentation" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="LU8F6FNxnm" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="3naCKAeJpaA" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="3$7fVu" id="51OOVwjPpGs" role="3F10Kt">
          <property role="3$6WeP" value="2" />
        </node>
      </node>
      <node concept="3EZMnI" id="1eSXJRelk5I" role="3EZMnx">
        <node concept="VPM3Z" id="1eSXJRelk5J" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1eSXJRelk5K" role="2iSdaV" />
        <node concept="3F0ifn" id="1eSXJRelk5L" role="3EZMnx">
          <property role="3F0ifm" value="ID: " />
          <node concept="3$7fVu" id="51OOVwjPpHv" role="3F10Kt">
            <property role="3$6WeP" value="2" />
          </node>
        </node>
        <node concept="3F0A7n" id="1eSXJRelk5M" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no id&gt;" />
          <property role="39s7Ar" value="false" />
          <ref role="1NtTu8" to="tpce:1eSXJRel0SS" resolve="memberId" />
        </node>
        <node concept="pkWqt" id="1eSXJRelk5N" role="pqm2j">
          <node concept="3clFbS" id="1eSXJRelk5O" role="2VODD2">
            <node concept="3clFbF" id="1eSXJRelk5P" role="3cqZAp">
              <node concept="2YIFZM" id="1eSXJRelk5Q" role="3clFbG">
                <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                <node concept="pncrf" id="1eSXJRelk5R" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="3naCKAeJ4sZ" role="2iSdaV" />
      <node concept="3F0ifn" id="51OOVwjOgwv" role="3EZMnx">
        <property role="3F0ifm" value="(default)" />
        <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        <node concept="VPM3Z" id="51OOVwjOgRJ" role="3F10Kt" />
        <node concept="VPxyj" id="51OOVwjOgRO" role="3F10Kt" />
        <node concept="3$7fVu" id="51OOVwjPpIk" role="3F10Kt">
          <property role="3$6WeP" value="2" />
        </node>
        <node concept="pkWqt" id="51OOVwjOgRS" role="pqm2j">
          <node concept="3clFbS" id="51OOVwjOgRT" role="2VODD2">
            <node concept="3clFbF" id="51OOVwjOgS4" role="3cqZAp">
              <node concept="2OqwBi" id="51OOVwjOh98" role="3clFbG">
                <node concept="pncrf" id="51OOVwjOgS3" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORfyX" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:VFd4X$DLvk" resolve="isDefault" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="1eSXJRell3T" role="6VMZX">
      <node concept="VPM3Z" id="1eSXJRell3U" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRfu4" id="1eSXJRell3V" role="2iSdaV" />
      <node concept="3F0ifn" id="1eSXJRell3W" role="3EZMnx">
        <property role="3F0ifm" value="ID: " />
      </node>
      <node concept="3F0A7n" id="1eSXJRell3X" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no id&gt;" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="tpce:1eSXJRel0SS" resolve="memberId" />
      </node>
      <node concept="pkWqt" id="1eSXJRell3Y" role="pqm2j">
        <node concept="3clFbS" id="1eSXJRell3Z" role="2VODD2">
          <node concept="3clFbF" id="1eSXJRell40" role="3cqZAp">
            <node concept="3fqX7Q" id="1eSXJRellUC" role="3clFbG">
              <node concept="2YIFZM" id="1eSXJRellUE" role="3fr31v">
                <ref role="1Pybhc" node="5SJcws9hiO3" resolve="IdEditorHelper" />
                <ref role="37wK5l" node="5SJcws9hkFr" resolve="shownInEditor" />
                <node concept="pncrf" id="1eSXJRellUF" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5CkWgdpEm6T">
    <property role="3GE5qa" value="enums.migration" />
    <ref role="1XX52x" to="tpce:5CkWgdpgEmF" resolve="EnumPropertyMigrationInfo" />
    <node concept="3EZMnI" id="LU8F6G9Tto" role="2wV5jI">
      <node concept="2SsqMj" id="LU8F6G9VJI" role="3EZMnx">
        <node concept="ljvvj" id="LU8F6GcneE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="LU8F6GlM7A" role="3EZMnx">
        <node concept="VPM3Z" id="LU8F6GlM7C" role="3F10Kt" />
        <node concept="3XFhqQ" id="LU8F6GlM7P" role="3EZMnx" />
        <node concept="3F0ifn" id="5CkWgdpEm73" role="3EZMnx">
          <property role="3F0ifm" value="migrated from:" />
          <node concept="VechU" id="5CkWgdpEm74" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="Vb9p2" id="5CkWgdpEm75" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="3EZMnI" id="LU8F6G9VJY" role="3EZMnx">
          <property role="S$Qs1" value="true" />
          <node concept="lj46D" id="LU8F6GcneM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPM3Z" id="LU8F6GlM8c" role="3F10Kt" />
          <node concept="3F1sOY" id="5CkWgdpEm76" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:5CkWgdpgEmQ" resolve="oldProperty" />
            <node concept="xShMh" id="LU8F6G9WBF" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VechU" id="LU8F6GpgTj" role="3F10Kt">
              <property role="Vb096" value="fLJRk5A/lightGray" />
            </node>
          </node>
          <node concept="2iRfu4" id="LU8F6G9VK3" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="LU8F6GlM7F" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="LU8F6GlM7u" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2UidVq6Wu_z">
    <property role="3GE5qa" value="enums.migration" />
    <ref role="1XX52x" to="tpce:2UidVq6Wu_3" resolve="EnumCustomMethodReplacementInfo" />
    <node concept="3EZMnI" id="2UidVq6Wu__" role="2wV5jI">
      <node concept="3F0ifn" id="20cGABp1WXZ" role="3EZMnx">
        <property role="3F0ifm" value="@" />
        <ref role="1k5W1q" node="hOawUFH" resolve="AnnotationNode" />
      </node>
      <node concept="3EZMnI" id="20cGABp1WYi" role="3EZMnx">
        <node concept="ljvvj" id="2UidVq6WzcC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPXOz" id="20cGABpE1nP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="20cGABp1WYk" role="3F10Kt" />
        <node concept="3F0ifn" id="2UidVq6WuAE" role="3EZMnx">
          <property role="3F0ifm" value="operation replacement" />
          <node concept="VechU" id="20cGABpE1$V" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="Vb9p2" id="20cGABpE1_0" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="3F0ifn" id="20cGABpE1_g" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <node concept="VechU" id="20cGABpE1_X" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="11LMrY" id="20cGABpE1_S" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="2UidVq6WuAu" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:2UidVq6Wu_6" resolve="kind" />
          <node concept="xShMh" id="20cGABpE1Ak" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VechU" id="20cGABpE1Aq" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
        </node>
        <node concept="3F0ifn" id="20cGABpE1_E" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <node concept="VechU" id="20cGABpE1A3" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="11L4FC" id="7aX5bqWyB$s" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2UidVq6WuAS" role="3EZMnx">
          <property role="3F0ifm" value="for migrated enumeration" />
          <node concept="VechU" id="20cGABpE1Ox" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="Vb9p2" id="20cGABpE1Oy" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="1iCGBv" id="2UidVq6WuB8" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:2UidVq6Wu_8" resolve="enum" />
          <node concept="1sVBvm" id="2UidVq6WuBa" role="1sWHZn">
            <node concept="3SHvHV" id="2UidVq6WuBn" role="2wV5jI">
              <node concept="VechU" id="7aX5bqWyB$w" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
              </node>
              <node concept="Vb9p2" id="7aX5bqWyB$x" role="3F10Kt">
                <property role="Vbekb" value="g1_kEg4/ITALIC" />
              </node>
              <node concept="VQ3r3" id="7aX5bqWyB$C" role="3F10Kt">
                <property role="2USNnj" value="gtbM8PH/2" />
              </node>
            </node>
          </node>
          <node concept="VPxyj" id="2UidVq6YfeH" role="3F10Kt" />
        </node>
        <node concept="l2Vlx" id="20cGABp1WYn" role="2iSdaV" />
      </node>
      <node concept="2SsqMj" id="2UidVq6WuB_" role="3EZMnx" />
      <node concept="l2Vlx" id="2UidVq6Wu_C" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="LU8F6FNR$W">
    <property role="3GE5qa" value="enums.migration" />
    <ref role="1XX52x" to="tpce:1ob16QTis9A" resolve="EnumMigrationInfo" />
    <node concept="3EZMnI" id="LU8F6FSumd" role="2wV5jI">
      <node concept="2iRkQZ" id="LU8F6FSume" role="2iSdaV" />
      <node concept="2SsqMj" id="LU8F6FSumh" role="3EZMnx" />
      <node concept="3F0ifn" id="LU8F6FSumj" role="3EZMnx" />
      <node concept="3EZMnI" id="LU8F6FNR_3" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="3F0ifn" id="LU8F6FNR_6" role="3EZMnx">
          <property role="3F0ifm" value="migrated from:" />
          <node concept="VechU" id="LU8F6FNR_7" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="Vb9p2" id="LU8F6FNR_8" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="3F1sOY" id="LU8F6FNR_9" role="3EZMnx">
          <ref role="1NtTu8" to="tpce:5CkWgdpgBAs" resolve="oldEnum" />
          <ref role="1k5W1q" node="6t_vhrzKdF" resolve="Comment" />
          <node concept="xShMh" id="LU8F6G2CUI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="LU8F6FNR_a" role="3EZMnx" />
        <node concept="3EZMnI" id="LU8F6FNR_b" role="3EZMnx">
          <node concept="VPM3Z" id="LU8F6FNR_c" role="3F10Kt" />
          <node concept="3F0ifn" id="LU8F6FNR_d" role="3EZMnx">
            <property role="3F0ifm" value="value operations:" />
            <node concept="VechU" id="LU8F6FNR_e" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="Vb9p2" id="LU8F6FNR_f" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
          </node>
          <node concept="3F0A7n" id="LU8F6FNR_g" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:5CkWgdpp3f$" resolve="valueOpMigration" />
            <node concept="xShMh" id="LU8F6G56DD" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="LU8F6FNR_h" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="LU8F6FNR_i" role="3EZMnx">
          <node concept="VPM3Z" id="LU8F6FNR_j" role="3F10Kt" />
          <node concept="3F0ifn" id="LU8F6FNR_k" role="3EZMnx">
            <property role="3F0ifm" value="name operations:" />
            <node concept="VechU" id="LU8F6FNR_l" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="Vb9p2" id="LU8F6FNR_m" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
          </node>
          <node concept="3F0A7n" id="LU8F6FNR_n" role="3EZMnx">
            <ref role="1NtTu8" to="tpce:5CkWgdpp0oI" resolve="nameOpMigration" />
            <node concept="xShMh" id="LU8F6G56DF" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="LU8F6FNR_o" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="LU8F6FNR_p" role="2iSdaV" />
        <node concept="3F0ifn" id="LU8F6FQjx3" role="AHCbl">
          <property role="3F0ifm" value="migrated from: ..." />
          <node concept="VechU" id="LU8F6FQjx5" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
          <node concept="Vb9p2" id="LU8F6FQjx6" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="Veino" id="LU8F6FQjxj" role="3F10Kt">
            <node concept="1iSF2X" id="LU8F6FQjxo" role="VblUZ">
              <property role="1iTho6" value="E0E0E0" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="LU8F6FSumS" role="3F10Kt" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="nddphzzGO$">
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <ref role="1XX52x" to="tpce:nddphzyHx5" resolve="ExperimentalAPINodeAttribute" />
    <node concept="3EZMnI" id="nddphzzGO_" role="2wV5jI">
      <node concept="3EZMnI" id="nddphzzGOA" role="3EZMnx">
        <node concept="VPM3Z" id="nddphzzGOC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="nddphzzGOD" role="3EZMnx">
          <property role="3F0ifm" value="@API.Experimental" />
          <ref role="1k5W1q" node="hOawUFH" resolve="AnnotationNode" />
          <ref role="1ERwB7" node="nddphzzJ7W" resolve="ExperimentalApiNodeAnnotation_ActionMap" />
          <node concept="3$7jql" id="nddphzzGOE" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3EZMnI" id="nddphzzGOF" role="3EZMnx">
          <node concept="VPM3Z" id="nddphzzGOG" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="nddphzzGOH" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <node concept="3mYdg7" id="nddphzzGOI" role="3F10Kt">
              <property role="1413C4" value="brace" />
            </node>
            <node concept="VechU" id="nddphzzGOJ" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11LMrY" id="nddphzzGOK" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="nddphzzGOL" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <ref role="1NtTu8" to="tpce:nddphzyHx9" resolve="comment" />
            <node concept="VechU" id="nddphzzGOM" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="3$7fVu" id="nddphzzGON" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="3$7jql" id="nddphzzGOO" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
          <node concept="3F0ifn" id="nddphzzGOP" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <node concept="3mYdg7" id="nddphzzGOQ" role="3F10Kt">
              <property role="1413C4" value="brace" />
            </node>
            <node concept="VechU" id="nddphzzGOR" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="11L4FC" id="nddphzzGOS" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="pkWqt" id="nddphzzGOU" role="pqm2j">
            <node concept="3clFbS" id="nddphzzGOV" role="2VODD2">
              <node concept="3clFbF" id="nddphzzGOW" role="3cqZAp">
                <node concept="3y3z36" id="nddphzzGOX" role="3clFbG">
                  <node concept="10Nm6u" id="nddphzzGOY" role="3uHU7w" />
                  <node concept="2OqwBi" id="nddphzzGOZ" role="3uHU7B">
                    <node concept="pncrf" id="nddphzzGP0" role="2Oq$k0" />
                    <node concept="3TrcHB" id="nddphzB_yu" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:nddphzyHx9" resolve="comment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="nddphzzGP2" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="nddphzzGP3" role="3EZMnx">
          <node concept="VPM3Z" id="nddphzzGP4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="nddphzzGP5" role="3EZMnx">
            <property role="3F0ifm" value="since build" />
            <node concept="VechU" id="nddphzzGP6" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
            </node>
            <node concept="3$7jql" id="nddphzzGP7" role="3F10Kt">
              <property role="3$6WeP" value="1.0" />
            </node>
          </node>
          <node concept="3F0A7n" id="nddphzzGP8" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <ref role="1NtTu8" to="tpce:nddphzyHx8" resolve="build" />
            <node concept="VechU" id="nddphzzGP9" role="3F10Kt">
              <property role="Vb096" value="fLwANPu/blue" />
            </node>
          </node>
          <node concept="pkWqt" id="nddphzzGPb" role="pqm2j">
            <node concept="3clFbS" id="nddphzzGPc" role="2VODD2">
              <node concept="3clFbF" id="nddphzzGPd" role="3cqZAp">
                <node concept="3y3z36" id="nddphzzGPe" role="3clFbG">
                  <node concept="10Nm6u" id="nddphzzGPf" role="3uHU7w" />
                  <node concept="2OqwBi" id="nddphzzGPg" role="3uHU7B">
                    <node concept="pncrf" id="nddphzzGPh" role="2Oq$k0" />
                    <node concept="3TrcHB" id="nddphzzGPi" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:nddphzyHx8" resolve="build" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="nddphzzGPj" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="nddphzzGPk" role="2iSdaV" />
        <node concept="2SqB2G" id="nddphzzJqR" role="2SqHTX">
          <property role="TrG5h" value="collection_cell" />
        </node>
      </node>
      <node concept="2SsqMj" id="nddphzzGPl" role="3EZMnx" />
      <node concept="2iRkQZ" id="nddphzzGPm" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="nddphzzGPn" role="6VMZX">
      <node concept="3EZMnI" id="nddphzzGPo" role="3EZMnx">
        <node concept="VPM3Z" id="nddphzzGPp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="nddphzzGPq" role="3EZMnx">
          <property role="3F0ifm" value="comment" />
          <node concept="3$7jql" id="nddphzzGPr" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3F0A7n" id="nddphzzGPs" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpce:nddphzyHx9" resolve="comment" />
          <node concept="VechU" id="nddphzzGPt" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/DARK_GREEN" />
          </node>
        </node>
        <node concept="2iRfu4" id="nddphzzGPv" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="nddphzzGPw" role="3EZMnx">
        <node concept="3F0ifn" id="nddphzzGPx" role="3EZMnx">
          <property role="3F0ifm" value="since build" />
          <node concept="3$7jql" id="nddphzzGPy" role="3F10Kt">
            <property role="3$6WeP" value="1.0" />
          </node>
        </node>
        <node concept="3F0A7n" id="nddphzzGPz" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpce:nddphzyHx8" resolve="build" />
          <node concept="VechU" id="nddphzzGP$" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="2iRfu4" id="nddphzzGP_" role="2iSdaV" />
      </node>
      <node concept="2EHx9g" id="nddphzzGPA" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="nddphzzJ7W">
    <property role="TrG5h" value="ExperimentalApiNodeAnnotation_ActionMap" />
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <ref role="1h_SK9" to="tpce:nddphzyHx5" resolve="ExperimentalAPINodeAttribute" />
    <node concept="1hA7zw" id="nddphzzJ7X" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="nddphzzJ7Y" role="1hA7z_">
        <node concept="3clFbS" id="nddphzzJ7Z" role="2VODD2">
          <node concept="3clFbJ" id="nddphzzJ80" role="3cqZAp">
            <node concept="3clFbS" id="nddphzzJ81" role="3clFbx">
              <node concept="3cpWs6" id="nddphzzJ82" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="nddphzzJ83" role="3clFbw">
              <node concept="0IXxy" id="nddphzzJ84" role="2Oq$k0" />
              <node concept="2xy62i" id="nddphzzJ85" role="2OqNvi">
                <node concept="1Q80Hx" id="nddphzzJ86" role="2xHN3q" />
                <node concept="2TlHUq" id="nddphzzJsf" role="3a7HXU">
                  <ref role="2TlMyj" node="nddphzzJqR" resolve="collection_cell" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="nddphzzJ88" role="3cqZAp">
            <node concept="2OqwBi" id="nddphzzJ89" role="3clFbG">
              <node concept="0IXxy" id="nddphzzJ8a" role="2Oq$k0" />
              <node concept="3YRAZt" id="nddphzzJ8b" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJ80j">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIEF" role="22hAXT">
      <property role="TrG5h" value="ConceptDeclaration_ext_1_RTransform_Menu" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ80Y" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ80Z" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ810" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJ811" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJ812" role="1Qtc8A">
        <node concept="A1WHu" id="1wEcoXjJ813" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ80l" resolve="addFinal" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJ85V" role="1Qtc8A">
        <node concept="A1WHu" id="1wEcoXjJ85W" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ85i" resolve="addAbstract" />
        </node>
      </node>
    </node>
    <node concept="yp4Wq" id="1wEcoXjJ80k" role="lGtFl">
      <property role="yp4Ub" value="ext_1_RTransform" />
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJ80l">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIEG" role="22hAXT">
      <property role="TrG5h" value="addFinal" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ80o" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ80m" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ80n" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ80q" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ80r" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ80s" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ80t" role="3cqZAp">
              <node concept="3fqX7Q" id="1wEcoXjJ80u" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJ80v" role="3fr31v">
                  <node concept="7Obwk" id="1wEcoXjJ80y" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1wEcoXjJ80x" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ80z" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ80$" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ80_" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ80A" role="3cqZAp">
                <node concept="Xl_RD" id="1wEcoXjJ80B" role="3clFbG">
                  <property role="Xl_RC" value="final" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ80C" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ80D" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ80E" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ80F" role="3clFbG">
                  <node concept="tyxLq" id="1wEcoXjJ80G" role="2OqNvi">
                    <node concept="3clFbT" id="1wEcoXjJ80H" role="tz02z">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ80I" role="2Oq$k0">
                    <node concept="3TrcHB" id="1wEcoXjJ80J" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:40UcGlRb7V7" resolve="final" />
                    </node>
                    <node concept="1PxgMI" id="1wEcoXjJ80K" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ80O" role="1m5AlR" />
                      <node concept="chp4Y" id="714IaVdH1yq" role="3oSUPX">
                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ80V" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ80Q" role="3clFbG">
                  <node concept="7Obwk" id="1wEcoXjJ80P" role="2Oq$k0" />
                  <node concept="1OKiuA" id="1wEcoXjJ80R" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjJ80S" role="lBI5i" />
                    <node concept="2B6iha" id="1wEcoXjJ80T" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="1wEcoXjJ80U" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
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
  <node concept="3ICUPy" id="1wEcoXjJ85i">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIEH" role="22hAXT">
      <property role="TrG5h" value="addAbstract" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ85l" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ85j" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ85k" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ85n" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ85o" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ85p" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ85q" role="3cqZAp">
              <node concept="3fqX7Q" id="1wEcoXjJ85r" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJ85s" role="3fr31v">
                  <node concept="3TrcHB" id="1wEcoXjJ85t" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:40UcGlRb7V7" resolve="final" />
                  </node>
                  <node concept="7Obwk" id="1wEcoXjJ85v" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ85w" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ85x" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ85y" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ85z" role="3cqZAp">
                <node concept="Xl_RD" id="1wEcoXjJ85$" role="3clFbG">
                  <property role="Xl_RC" value="abstract" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ85_" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ85A" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ85B" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ85C" role="3clFbG">
                  <node concept="tyxLq" id="1wEcoXjJ85D" role="2OqNvi">
                    <node concept="3clFbT" id="1wEcoXjJ85E" role="tz02z">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ85F" role="2Oq$k0">
                    <node concept="3TrcHB" id="1wEcoXjJ85G" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                    </node>
                    <node concept="1PxgMI" id="1wEcoXjJ85H" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ85L" role="1m5AlR" />
                      <node concept="chp4Y" id="714IaVdH1y1" role="3oSUPX">
                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ85S" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ85N" role="3clFbG">
                  <node concept="7Obwk" id="1wEcoXjJ85M" role="2Oq$k0" />
                  <node concept="1OKiuA" id="1wEcoXjJ85O" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjJ85P" role="lBI5i" />
                    <node concept="2B6iha" id="1wEcoXjJ85Q" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="1wEcoXjJ85R" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
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
  <node concept="3ICUPy" id="1wEcoXjJ85X">
    <ref role="aqKnT" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIEI" role="22hAXT">
      <property role="TrG5h" value="CreateFirstDeclaration_ext_3" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ861" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ85Z" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ860" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ863" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ864" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ865" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ866" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJ867" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJ868" role="2Oq$k0">
                  <node concept="2OqwBi" id="1wEcoXjJ869" role="2Oq$k0">
                    <node concept="7Obwk" id="1wEcoXjJ86p" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1wEcoXjJ86b" role="2OqNvi">
                      <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="1wEcoXjJ86c" role="2OqNvi">
                    <node concept="1bVj0M" id="1wEcoXjJ86d" role="23t8la">
                      <node concept="3clFbS" id="1wEcoXjJ86e" role="1bW5cS">
                        <node concept="3clFbF" id="1wEcoXjJ86f" role="3cqZAp">
                          <node concept="2OqwBi" id="1wEcoXjJ86g" role="3clFbG">
                            <node concept="2OqwBi" id="1wEcoXjJ86h" role="2Oq$k0">
                              <node concept="37vLTw" id="1wEcoXjJ86i" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wul" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="1wEcoXjJ86j" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                            <node concept="21noJN" id="3Ftr4R8$mIt" role="2OqNvi">
                              <node concept="21nZrQ" id="3Ftr4R8$mIu" role="21noJM">
                                <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wul" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wum" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="1wEcoXjJ86o" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ86q" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ86r" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ86s" role="2VODD2">
              <node concept="3cpWs6" id="1wEcoXjJ86t" role="3cqZAp">
                <node concept="3K4zz7" id="1wEcoXjJ86u" role="3cqZAk">
                  <node concept="10Nm6u" id="1wEcoXjJ86v" role="3K4E3e" />
                  <node concept="ub8z3" id="1wEcoXjJ86$" role="3K4GZi" />
                  <node concept="2OqwBi" id="1wEcoXjJ86x" role="3K4Cdx">
                    <node concept="ub8z3" id="1wEcoXjJ86_" role="2Oq$k0" />
                    <node concept="17RlXB" id="1wEcoXjJ86z" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="1wEcoXjJ86A" role="2jZA2a">
            <node concept="3cqJkl" id="1wEcoXjJ86B" role="3cqGtW">
              <node concept="3clFbS" id="1wEcoXjJ86C" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ86D" role="3cqZAp">
                  <node concept="Xl_RD" id="1wEcoXjJ86E" role="3clFbG">
                    <property role="Xl_RC" value="new reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ86F" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ86G" role="2VODD2">
              <node concept="3cpWs8" id="1wEcoXjJ86H" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ86I" role="3cpWs9">
                  <property role="TrG5h" value="childLink" />
                  <node concept="3Tqbb2" id="1wEcoXjJ86J" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ86K" role="33vP2m">
                    <node concept="2OqwBi" id="1wEcoXjJ86L" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ87F" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1wEcoXjJ86N" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="1wEcoXjJ86O" role="2OqNvi">
                      <ref role="1A0vxQ" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ86P" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ86Q" role="3clFbG">
                  <node concept="2OqwBi" id="1wEcoXjJ86R" role="2Oq$k0">
                    <node concept="37vLTw" id="1wEcoXjJ86S" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ86I" resolve="childLink" />
                    </node>
                    <node concept="3TrcHB" id="1wEcoXjJ86T" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="1wEcoXjJ86U" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8$mIv" role="tz02z">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ86W" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ86X" role="3clFbG">
                  <node concept="37vLTw" id="1wEcoXjJ86Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wEcoXjJ86I" resolve="childLink" />
                  </node>
                  <node concept="1OKiuA" id="1wEcoXjJ86Z" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjJ87G" role="lBI5i" />
                    <node concept="2TlHUq" id="1wEcoXjJ871" role="lGT1i">
                      <ref role="2TlMyj" node="KkUvIDyFaY" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1wEcoXjJ872" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ873" role="3cpWs9">
                  <property role="TrG5h" value="selectedCell" />
                  <node concept="3uibUv" id="1wEcoXjJ874" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ875" role="33vP2m">
                    <node concept="1Q80Hx" id="1wEcoXjJ87H" role="2Oq$k0" />
                    <node concept="liA8E" id="1wEcoXjJ877" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1wEcoXjJ878" role="3cqZAp">
                <node concept="3clFbS" id="1wEcoXjJ879" role="3clFbx">
                  <node concept="3cpWs8" id="1wEcoXjJ87a" role="3cqZAp">
                    <node concept="3cpWsn" id="1wEcoXjJ87b" role="3cpWs9">
                      <property role="TrG5h" value="label" />
                      <node concept="3uibUv" id="1wEcoXjJ87c" role="1tU5fm">
                        <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                      </node>
                      <node concept="10QFUN" id="1wEcoXjJ87d" role="33vP2m">
                        <node concept="3uibUv" id="1wEcoXjJ87e" role="10QFUM">
                          <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                        </node>
                        <node concept="37vLTw" id="1wEcoXjJ87f" role="10QFUP">
                          <ref role="3cqZAo" node="1wEcoXjJ873" resolve="selectedCell" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1wEcoXjJ87g" role="3cqZAp">
                    <node concept="2OqwBi" id="1wEcoXjJ87h" role="3clFbG">
                      <node concept="2OqwBi" id="1wEcoXjJ87i" role="2Oq$k0">
                        <node concept="2OqwBi" id="1wEcoXjJ87j" role="2Oq$k0">
                          <node concept="1Q80Hx" id="1wEcoXjJ87I" role="2Oq$k0" />
                          <node concept="liA8E" id="1wEcoXjJ87l" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wEcoXjJ87m" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1wEcoXjJ87n" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
                        <node concept="1bVj0M" id="1wEcoXjJ87o" role="37wK5m">
                          <node concept="3clFbS" id="1wEcoXjJ87p" role="1bW5cS">
                            <node concept="3clFbF" id="1wEcoXjJ87q" role="3cqZAp">
                              <node concept="2OqwBi" id="1wEcoXjJ87r" role="3clFbG">
                                <node concept="37vLTw" id="1wEcoXjJ87s" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1wEcoXjJ87b" resolve="label" />
                                </node>
                                <node concept="liA8E" id="1wEcoXjJ87t" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Label.changeText(java.lang.String)" resolve="changeText" />
                                  <node concept="ub8z3" id="1wEcoXjJ87J" role="37wK5m" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1wEcoXjJ87v" role="3cqZAp">
                              <node concept="2OqwBi" id="1wEcoXjJ87w" role="3clFbG">
                                <node concept="37vLTw" id="1wEcoXjJ87x" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1wEcoXjJ87b" resolve="label" />
                                </node>
                                <node concept="liA8E" id="1wEcoXjJ87y" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Label.setCaretPosition(int)" resolve="setCaretPosition" />
                                  <node concept="2OqwBi" id="1wEcoXjJ87z" role="37wK5m">
                                    <node concept="ub8z3" id="1wEcoXjJ87K" role="2Oq$k0" />
                                    <node concept="liA8E" id="1wEcoXjJ87_" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
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
                <node concept="2ZW3vV" id="1wEcoXjJ87A" role="3clFbw">
                  <node concept="3uibUv" id="1wEcoXjJ87B" role="2ZW6by">
                    <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                  <node concept="37vLTw" id="1wEcoXjJ87C" role="2ZW6bz">
                    <ref role="3cqZAo" node="1wEcoXjJ873" resolve="selectedCell" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1wEcoXjJ87D" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="1GhOrh" id="1wEcoXjJ87M" role="aenpr">
          <node concept="3Tqbb2" id="1wEcoXjJ87N" role="2ZBHrp">
            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
          </node>
          <node concept="1GhMSn" id="1wEcoXjJ87O" role="1GhOrs">
            <node concept="3clFbS" id="1wEcoXjJ87P" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ87Q" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ87R" role="3clFbG">
                  <node concept="2OqwBi" id="1wEcoXjJ87S" role="2Oq$k0">
                    <node concept="2OqwBi" id="1wEcoXjJ87T" role="2Oq$k0">
                      <node concept="2OqwBi" id="1wEcoXjJ87U" role="2Oq$k0">
                        <node concept="2YIFZM" id="1wEcoXjJ87V" role="2Oq$k0">
                          <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                          <ref role="37wK5l" to="tpcg:50vK5YapkBB" resolve="forConcepts" />
                          <node concept="7Obwk" id="1wEcoXjJ88i" role="37wK5m" />
                          <node concept="35c_gC" id="1wEcoXjJ87X" role="37wK5m">
                            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wEcoXjJ87Y" role="2OqNvi">
                          <ref role="37wK5l" to="o8zo:3fifI_xCtP7" resolve="getAvailableElements" />
                          <node concept="Xl_RD" id="1wEcoXjJ87Z" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="v3k3i" id="1sVIztzDO2y" role="2OqNvi">
                        <node concept="chp4Y" id="1sVIztzDObj" role="v3oSu">
                          <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="1KnU$U" id="1sVIztzDPzx" role="2OqNvi" />
                  </node>
                  <node concept="ANE8D" id="1wEcoXjJ88h" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="1wEcoXjJ88j" role="1GhOri">
            <node concept="1hCUdq" id="1wEcoXjJ88k" role="1hCUd6">
              <node concept="3clFbS" id="1wEcoXjJ88l" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ88m" role="3cqZAp">
                  <node concept="2YIFZM" id="4AvAon1SF0K" role="3clFbG">
                    <ref role="37wK5l" to="5b0:~NodePresentationUtil.visibleMatchingText(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="visibleMatchingText" />
                    <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                    <node concept="2ZBlsa" id="4AvAon1SF0L" role="37wK5m" />
                    <node concept="10Nm6u" id="4AvAon1SGE5" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cqGtN" id="1wEcoXjJ88r" role="2jZA2a">
              <node concept="3cqJkl" id="1wEcoXjJ88s" role="3cqGtW">
                <node concept="3clFbS" id="1wEcoXjJ88t" role="2VODD2">
                  <node concept="3clFbF" id="1wEcoXjJ88u" role="3cqZAp">
                    <node concept="3cpWs3" id="1wEcoXjJ88v" role="3clFbG">
                      <node concept="2YIFZM" id="1wEcoXjJ88w" role="3uHU7w">
                        <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                        <ref role="37wK5l" to="5b0:~NodePresentationUtil.descriptionText(org.jetbrains.mps.openapi.model.SNode)" resolve="descriptionText" />
                        <node concept="2ZBlsa" id="1wEcoXjJ88$" role="37wK5m" />
                      </node>
                      <node concept="Xl_RD" id="1wEcoXjJ88z" role="3uHU7B">
                        <property role="Xl_RC" value="^" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="1wEcoXjJ88_" role="IWgqQ">
              <node concept="3clFbS" id="1wEcoXjJ88A" role="2VODD2">
                <node concept="3cpWs8" id="1wEcoXjJ88B" role="3cqZAp">
                  <node concept="3cpWsn" id="1wEcoXjJ88C" role="3cpWs9">
                    <property role="TrG5h" value="childLink" />
                    <node concept="3Tqbb2" id="1wEcoXjJ88D" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1wEcoXjJ88E" role="33vP2m">
                      <node concept="2OqwBi" id="1wEcoXjJ88F" role="2Oq$k0">
                        <node concept="7Obwk" id="1wEcoXjJ88Y" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1wEcoXjJ88H" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="2DeJg1" id="1wEcoXjJ88I" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ88J" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ88K" role="3clFbG">
                    <node concept="2OqwBi" id="1wEcoXjJ88L" role="2Oq$k0">
                      <node concept="37vLTw" id="1wEcoXjJ88M" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wEcoXjJ88C" resolve="childLink" />
                      </node>
                      <node concept="3TrcHB" id="1wEcoXjJ88N" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="1wEcoXjJ88O" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mIw" role="tz02z">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ88Q" role="3cqZAp">
                  <node concept="37vLTI" id="1wEcoXjJ88R" role="3clFbG">
                    <node concept="2ZBlsa" id="1wEcoXjJ88Z" role="37vLTx" />
                    <node concept="2OqwBi" id="1wEcoXjJ88T" role="37vLTJ">
                      <node concept="37vLTw" id="1wEcoXjJ88U" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wEcoXjJ88C" resolve="childLink" />
                      </node>
                      <node concept="3TrEf2" id="1wEcoXjJ88V" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ895" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ890" role="3clFbG">
                    <node concept="37vLTw" id="1wEcoXjJ88X" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ88C" resolve="childLink" />
                    </node>
                    <node concept="1OKiuA" id="1wEcoXjJ891" role="2OqNvi">
                      <node concept="1Q80Hx" id="1wEcoXjJ892" role="lBI5i" />
                      <node concept="2B6iha" id="1wEcoXjJ893" role="lGT1i">
                        <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                      </node>
                      <node concept="3cmrfG" id="1wEcoXjJ894" role="3dN3m$">
                        <property role="3cmrfH" value="-1" />
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
    <node concept="yp4Wq" id="1wEcoXjJ85Y" role="lGtFl">
      <property role="yp4Ub" value="ext_3_RTransform" />
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJ898">
    <ref role="aqKnT" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIL5" role="22hAXT">
      <property role="TrG5h" value="CreateFirstDeclaration_ext_2" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ89c" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ89a" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ89b" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ89e" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ89f" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ89g" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ89h" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJ89i" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJ89j" role="2Oq$k0">
                  <node concept="2OqwBi" id="1wEcoXjJ89k" role="2Oq$k0">
                    <node concept="7Obwk" id="1wEcoXjJ89$" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1wEcoXjJ89m" role="2OqNvi">
                      <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="1wEcoXjJ89n" role="2OqNvi">
                    <node concept="1bVj0M" id="1wEcoXjJ89o" role="23t8la">
                      <node concept="3clFbS" id="1wEcoXjJ89p" role="1bW5cS">
                        <node concept="3clFbF" id="1wEcoXjJ89q" role="3cqZAp">
                          <node concept="2OqwBi" id="1wEcoXjJ89r" role="3clFbG">
                            <node concept="2OqwBi" id="1wEcoXjJ89s" role="2Oq$k0">
                              <node concept="37vLTw" id="1wEcoXjJ89t" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wur" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="1wEcoXjJ89u" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                              </node>
                            </node>
                            <node concept="21noJN" id="3Ftr4R8$mIx" role="2OqNvi">
                              <node concept="21nZrQ" id="3Ftr4R8$mIy" role="21noJM">
                                <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Wur" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wus" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="1wEcoXjJ89z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ89_" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ89A" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ89B" role="2VODD2">
              <node concept="3cpWs6" id="1wEcoXjJ89C" role="3cqZAp">
                <node concept="3K4zz7" id="1wEcoXjJ89D" role="3cqZAk">
                  <node concept="10Nm6u" id="1wEcoXjJ89E" role="3K4E3e" />
                  <node concept="ub8z3" id="1wEcoXjJ89J" role="3K4GZi" />
                  <node concept="2OqwBi" id="1wEcoXjJ89G" role="3K4Cdx">
                    <node concept="ub8z3" id="1wEcoXjJ89K" role="2Oq$k0" />
                    <node concept="17RlXB" id="1wEcoXjJ89I" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="1wEcoXjJ89L" role="2jZA2a">
            <node concept="3cqJkl" id="1wEcoXjJ89M" role="3cqGtW">
              <node concept="3clFbS" id="1wEcoXjJ89N" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ89O" role="3cqZAp">
                  <node concept="Xl_RD" id="1wEcoXjJ89P" role="3clFbG">
                    <property role="Xl_RC" value="new child" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ89Q" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ89R" role="2VODD2">
              <node concept="3cpWs8" id="1wEcoXjJ89S" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ89T" role="3cpWs9">
                  <property role="TrG5h" value="childLink" />
                  <node concept="3Tqbb2" id="1wEcoXjJ89U" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ89V" role="33vP2m">
                    <node concept="2OqwBi" id="1wEcoXjJ89W" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ8aQ" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1wEcoXjJ89Y" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="1wEcoXjJ89Z" role="2OqNvi">
                      <ref role="1A0vxQ" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ8a0" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ8a1" role="3clFbG">
                  <node concept="2OqwBi" id="1wEcoXjJ8a2" role="2Oq$k0">
                    <node concept="37vLTw" id="1wEcoXjJ8a3" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ89T" resolve="childLink" />
                    </node>
                    <node concept="3TrcHB" id="1wEcoXjJ8a4" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="1wEcoXjJ8a5" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8$mIz" role="tz02z">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ8a7" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ8a8" role="3clFbG">
                  <node concept="37vLTw" id="1wEcoXjJ8a9" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wEcoXjJ89T" resolve="childLink" />
                  </node>
                  <node concept="1OKiuA" id="1wEcoXjJ8aa" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjJ8aR" role="lBI5i" />
                    <node concept="2TlHUq" id="1wEcoXjJ8ac" role="lGT1i">
                      <ref role="2TlMyj" node="KkUvIDyFaY" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1wEcoXjJ8ad" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ8ae" role="3cpWs9">
                  <property role="TrG5h" value="selectedCell" />
                  <node concept="3uibUv" id="1wEcoXjJ8af" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ8ag" role="33vP2m">
                    <node concept="1Q80Hx" id="1wEcoXjJ8aS" role="2Oq$k0" />
                    <node concept="liA8E" id="1wEcoXjJ8ai" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1wEcoXjJ8aj" role="3cqZAp">
                <node concept="3clFbS" id="1wEcoXjJ8ak" role="3clFbx">
                  <node concept="3cpWs8" id="1wEcoXjJ8al" role="3cqZAp">
                    <node concept="3cpWsn" id="1wEcoXjJ8am" role="3cpWs9">
                      <property role="TrG5h" value="label" />
                      <node concept="3uibUv" id="1wEcoXjJ8an" role="1tU5fm">
                        <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                      </node>
                      <node concept="10QFUN" id="1wEcoXjJ8ao" role="33vP2m">
                        <node concept="3uibUv" id="1wEcoXjJ8ap" role="10QFUM">
                          <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                        </node>
                        <node concept="37vLTw" id="1wEcoXjJ8aq" role="10QFUP">
                          <ref role="3cqZAo" node="1wEcoXjJ8ae" resolve="selectedCell" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1wEcoXjJ8ar" role="3cqZAp">
                    <node concept="2OqwBi" id="1wEcoXjJ8as" role="3clFbG">
                      <node concept="2OqwBi" id="1wEcoXjJ8at" role="2Oq$k0">
                        <node concept="2OqwBi" id="1wEcoXjJ8au" role="2Oq$k0">
                          <node concept="1Q80Hx" id="1wEcoXjJ8aT" role="2Oq$k0" />
                          <node concept="liA8E" id="1wEcoXjJ8aw" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wEcoXjJ8ax" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1wEcoXjJ8ay" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
                        <node concept="1bVj0M" id="1wEcoXjJ8az" role="37wK5m">
                          <node concept="3clFbS" id="1wEcoXjJ8a$" role="1bW5cS">
                            <node concept="3clFbF" id="1wEcoXjJ8a_" role="3cqZAp">
                              <node concept="2OqwBi" id="1wEcoXjJ8aA" role="3clFbG">
                                <node concept="37vLTw" id="1wEcoXjJ8aB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1wEcoXjJ8am" resolve="label" />
                                </node>
                                <node concept="liA8E" id="1wEcoXjJ8aC" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Label.changeText(java.lang.String)" resolve="changeText" />
                                  <node concept="ub8z3" id="1wEcoXjJ8aU" role="37wK5m" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1wEcoXjJ8aE" role="3cqZAp">
                              <node concept="2OqwBi" id="1wEcoXjJ8aF" role="3clFbG">
                                <node concept="37vLTw" id="1wEcoXjJ8aG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1wEcoXjJ8am" resolve="label" />
                                </node>
                                <node concept="liA8E" id="1wEcoXjJ8aH" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Label.setCaretPosition(int)" resolve="setCaretPosition" />
                                  <node concept="2OqwBi" id="1wEcoXjJ8aI" role="37wK5m">
                                    <node concept="ub8z3" id="1wEcoXjJ8aV" role="2Oq$k0" />
                                    <node concept="liA8E" id="1wEcoXjJ8aK" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
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
                <node concept="2ZW3vV" id="1wEcoXjJ8aL" role="3clFbw">
                  <node concept="3uibUv" id="1wEcoXjJ8aM" role="2ZW6by">
                    <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                  <node concept="37vLTw" id="1wEcoXjJ8aN" role="2ZW6bz">
                    <ref role="3cqZAo" node="1wEcoXjJ8ae" resolve="selectedCell" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1wEcoXjJ8aO" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="1GhOrh" id="1wEcoXjJ8aX" role="aenpr">
          <node concept="3Tqbb2" id="1wEcoXjJ8aY" role="2ZBHrp">
            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
          </node>
          <node concept="1GhMSn" id="1wEcoXjJ8aZ" role="1GhOrs">
            <node concept="3clFbS" id="1wEcoXjJ8b0" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ8b1" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ8b2" role="3clFbG">
                  <node concept="2OqwBi" id="1wEcoXjJ8b3" role="2Oq$k0">
                    <node concept="2OqwBi" id="1wEcoXjJ8b4" role="2Oq$k0">
                      <node concept="2OqwBi" id="1wEcoXjJ8b5" role="2Oq$k0">
                        <node concept="2YIFZM" id="1wEcoXjJ8b6" role="2Oq$k0">
                          <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                          <ref role="37wK5l" to="tpcg:50vK5YapkBB" resolve="forConcepts" />
                          <node concept="7Obwk" id="1wEcoXjJ8bt" role="37wK5m" />
                          <node concept="35c_gC" id="1wEcoXjJ8b8" role="37wK5m">
                            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wEcoXjJ8b9" role="2OqNvi">
                          <ref role="37wK5l" to="o8zo:3fifI_xCtP7" resolve="getAvailableElements" />
                          <node concept="Xl_RD" id="1wEcoXjJ8ba" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="v3k3i" id="1sVIztzDHBe" role="2OqNvi">
                        <node concept="chp4Y" id="1sVIztzDHIb" role="v3oSu">
                          <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="1KnU$U" id="1sVIztzDIXP" role="2OqNvi" />
                  </node>
                  <node concept="ANE8D" id="1wEcoXjJ8bs" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="1wEcoXjJ8bu" role="1GhOri">
            <node concept="1hCUdq" id="1wEcoXjJ8bv" role="1hCUd6">
              <node concept="3clFbS" id="1wEcoXjJ8bw" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ8bx" role="3cqZAp">
                  <node concept="2YIFZM" id="4AvAon1SCrc" role="3clFbG">
                    <ref role="37wK5l" to="5b0:~NodePresentationUtil.visibleMatchingText(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="visibleMatchingText" />
                    <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                    <node concept="2ZBlsa" id="4AvAon1SCrd" role="37wK5m" />
                    <node concept="10Nm6u" id="4AvAon1SELB" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cqGtN" id="1wEcoXjJ8bA" role="2jZA2a">
              <node concept="3cqJkl" id="1wEcoXjJ8bB" role="3cqGtW">
                <node concept="3clFbS" id="1wEcoXjJ8bC" role="2VODD2">
                  <node concept="3clFbF" id="1wEcoXjJ8bD" role="3cqZAp">
                    <node concept="3cpWs3" id="1wEcoXjJ8bE" role="3clFbG">
                      <node concept="2YIFZM" id="5dQjTsKl_A6" role="3uHU7w">
                        <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                        <ref role="37wK5l" to="5b0:~NodePresentationUtil.descriptionText(org.jetbrains.mps.openapi.model.SNode)" resolve="descriptionText" />
                        <node concept="2ZBlsa" id="5dQjTsKl_A7" role="37wK5m" />
                      </node>
                      <node concept="Xl_RD" id="1wEcoXjJ8bI" role="3uHU7B">
                        <property role="Xl_RC" value="^" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="1wEcoXjJ8bK" role="IWgqQ">
              <node concept="3clFbS" id="1wEcoXjJ8bL" role="2VODD2">
                <node concept="3cpWs8" id="1wEcoXjJ8bM" role="3cqZAp">
                  <node concept="3cpWsn" id="1wEcoXjJ8bN" role="3cpWs9">
                    <property role="TrG5h" value="childLink" />
                    <node concept="3Tqbb2" id="1wEcoXjJ8bO" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1wEcoXjJ8bP" role="33vP2m">
                      <node concept="2OqwBi" id="1wEcoXjJ8bQ" role="2Oq$k0">
                        <node concept="7Obwk" id="1wEcoXjJ8c9" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1wEcoXjJ8bS" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="2DeJg1" id="1wEcoXjJ8bT" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ8bU" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ8bV" role="3clFbG">
                    <node concept="2OqwBi" id="1wEcoXjJ8bW" role="2Oq$k0">
                      <node concept="37vLTw" id="1wEcoXjJ8bX" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wEcoXjJ8bN" resolve="childLink" />
                      </node>
                      <node concept="3TrcHB" id="1wEcoXjJ8bY" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="1wEcoXjJ8bZ" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mI$" role="tz02z">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ8c1" role="3cqZAp">
                  <node concept="37vLTI" id="1wEcoXjJ8c2" role="3clFbG">
                    <node concept="2ZBlsa" id="1wEcoXjJ8ca" role="37vLTx" />
                    <node concept="2OqwBi" id="1wEcoXjJ8c4" role="37vLTJ">
                      <node concept="37vLTw" id="1wEcoXjJ8c5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wEcoXjJ8bN" resolve="childLink" />
                      </node>
                      <node concept="3TrEf2" id="1wEcoXjJ8c6" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ8cg" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ8cb" role="3clFbG">
                    <node concept="37vLTw" id="1wEcoXjJ8c8" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ8bN" resolve="childLink" />
                    </node>
                    <node concept="1OKiuA" id="1wEcoXjJ8cc" role="2OqNvi">
                      <node concept="1Q80Hx" id="1wEcoXjJ8cd" role="lBI5i" />
                      <node concept="2B6iha" id="1wEcoXjJ8ce" role="lGT1i">
                        <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                      </node>
                      <node concept="3cmrfG" id="1wEcoXjJ8cf" role="3dN3m$">
                        <property role="3cmrfH" value="-1" />
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
    <node concept="yp4Wq" id="1wEcoXjJ899" role="lGtFl">
      <property role="yp4Ub" value="ext_2_RTransform" />
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJ8cj">
    <ref role="aqKnT" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIL6" role="22hAXT">
      <property role="TrG5h" value="CreateFirstDeclaration" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ8cn" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ8cl" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ8cm" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ8cp" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ8cq" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ8cr" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ8cs" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJ8ct" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJ8cu" role="2Oq$k0">
                  <node concept="7Obwk" id="1wEcoXjJ8cy" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1wEcoXjJ8cw" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                  </node>
                </node>
                <node concept="1v1jN8" id="1wEcoXjJ8cx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ8cz" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ8c$" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ8c_" role="2VODD2">
              <node concept="3cpWs6" id="1wEcoXjJ8cA" role="3cqZAp">
                <node concept="3K4zz7" id="1wEcoXjJ8cB" role="3cqZAk">
                  <node concept="10Nm6u" id="1wEcoXjJ8cC" role="3K4E3e" />
                  <node concept="ub8z3" id="1wEcoXjJ8cH" role="3K4GZi" />
                  <node concept="2OqwBi" id="1wEcoXjJ8cE" role="3K4Cdx">
                    <node concept="ub8z3" id="1wEcoXjJ8cI" role="2Oq$k0" />
                    <node concept="17RlXB" id="1wEcoXjJ8cG" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="1wEcoXjJ8cJ" role="2jZA2a">
            <node concept="3cqJkl" id="1wEcoXjJ8cK" role="3cqGtW">
              <node concept="3clFbS" id="1wEcoXjJ8cL" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ8cM" role="3cqZAp">
                  <node concept="Xl_RD" id="1wEcoXjJ8cN" role="3clFbG">
                    <property role="Xl_RC" value="new property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ8cO" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ8cP" role="2VODD2">
              <node concept="3cpWs8" id="1wEcoXjJ8cQ" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ8cR" role="3cpWs9">
                  <property role="TrG5h" value="property" />
                  <node concept="3Tqbb2" id="1wEcoXjJ8cS" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ8cT" role="33vP2m">
                    <node concept="2OqwBi" id="1wEcoXjJ8cU" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ8dH" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1wEcoXjJ8cW" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="1wEcoXjJ8cX" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ8cY" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ8cZ" role="3clFbG">
                  <node concept="37vLTw" id="1wEcoXjJ8d0" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wEcoXjJ8cR" resolve="property" />
                  </node>
                  <node concept="1OKiuA" id="1wEcoXjJ8d1" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjJ8dI" role="lBI5i" />
                    <node concept="2TlHUq" id="1wEcoXjJ8d3" role="lGT1i">
                      <ref role="2TlMyj" node="JeRNd$X2Xd" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1wEcoXjJ8d4" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ8d5" role="3cpWs9">
                  <property role="TrG5h" value="selectedCell" />
                  <node concept="3uibUv" id="1wEcoXjJ8d6" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ8d7" role="33vP2m">
                    <node concept="1Q80Hx" id="1wEcoXjJ8dJ" role="2Oq$k0" />
                    <node concept="liA8E" id="1wEcoXjJ8d9" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1wEcoXjJ8da" role="3cqZAp">
                <node concept="3clFbS" id="1wEcoXjJ8db" role="3clFbx">
                  <node concept="3cpWs8" id="1wEcoXjJ8dc" role="3cqZAp">
                    <node concept="3cpWsn" id="1wEcoXjJ8dd" role="3cpWs9">
                      <property role="TrG5h" value="label" />
                      <node concept="3uibUv" id="1wEcoXjJ8de" role="1tU5fm">
                        <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                      </node>
                      <node concept="10QFUN" id="1wEcoXjJ8df" role="33vP2m">
                        <node concept="3uibUv" id="1wEcoXjJ8dg" role="10QFUM">
                          <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                        </node>
                        <node concept="37vLTw" id="1wEcoXjJ8dh" role="10QFUP">
                          <ref role="3cqZAo" node="1wEcoXjJ8d5" resolve="selectedCell" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1wEcoXjJ8di" role="3cqZAp">
                    <node concept="2OqwBi" id="1wEcoXjJ8dj" role="3clFbG">
                      <node concept="2OqwBi" id="1wEcoXjJ8dk" role="2Oq$k0">
                        <node concept="2OqwBi" id="1wEcoXjJ8dl" role="2Oq$k0">
                          <node concept="1Q80Hx" id="1wEcoXjJ8dK" role="2Oq$k0" />
                          <node concept="liA8E" id="1wEcoXjJ8dn" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wEcoXjJ8do" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1wEcoXjJ8dp" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
                        <node concept="1bVj0M" id="1wEcoXjJ8dq" role="37wK5m">
                          <node concept="3clFbS" id="1wEcoXjJ8dr" role="1bW5cS">
                            <node concept="3clFbF" id="1wEcoXjJ8ds" role="3cqZAp">
                              <node concept="2OqwBi" id="1wEcoXjJ8dt" role="3clFbG">
                                <node concept="37vLTw" id="1wEcoXjJ8du" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1wEcoXjJ8dd" resolve="label" />
                                </node>
                                <node concept="liA8E" id="1wEcoXjJ8dv" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Label.changeText(java.lang.String)" resolve="changeText" />
                                  <node concept="ub8z3" id="1wEcoXjJ8dL" role="37wK5m" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1wEcoXjJ8dx" role="3cqZAp">
                              <node concept="2OqwBi" id="1wEcoXjJ8dy" role="3clFbG">
                                <node concept="37vLTw" id="1wEcoXjJ8dz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1wEcoXjJ8dd" resolve="label" />
                                </node>
                                <node concept="liA8E" id="1wEcoXjJ8d$" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Label.setCaretPosition(int)" resolve="setCaretPosition" />
                                  <node concept="2OqwBi" id="1wEcoXjJ8d_" role="37wK5m">
                                    <node concept="ub8z3" id="1wEcoXjJ8dM" role="2Oq$k0" />
                                    <node concept="liA8E" id="1wEcoXjJ8dB" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
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
                <node concept="2ZW3vV" id="1wEcoXjJ8dC" role="3clFbw">
                  <node concept="3uibUv" id="1wEcoXjJ8dD" role="2ZW6by">
                    <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                  <node concept="37vLTw" id="1wEcoXjJ8dE" role="2ZW6bz">
                    <ref role="3cqZAo" node="1wEcoXjJ8d5" resolve="selectedCell" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1wEcoXjJ8dF" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="1GhOrh" id="1wEcoXjJ8dO" role="aenpr">
          <node concept="3Tqbb2" id="1wEcoXjJ8dP" role="2ZBHrp">
            <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
          </node>
          <node concept="1GhMSn" id="1wEcoXjJ8dQ" role="1GhOrs">
            <node concept="3clFbS" id="1wEcoXjJ8dR" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ8dS" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ8dT" role="3clFbG">
                  <node concept="2OqwBi" id="1wEcoXjJ8dU" role="2Oq$k0">
                    <node concept="2OqwBi" id="1wEcoXjJ8dV" role="2Oq$k0">
                      <node concept="2OqwBi" id="1wEcoXjJ8dW" role="2Oq$k0">
                        <node concept="2YIFZM" id="1wEcoXjJ8dX" role="2Oq$k0">
                          <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                          <ref role="37wK5l" to="tpcg:50vK5YapkBB" resolve="forConcepts" />
                          <node concept="7Obwk" id="1wEcoXjJ8ek" role="37wK5m" />
                          <node concept="35c_gC" id="1wEcoXjJ8dZ" role="37wK5m">
                            <ref role="35c_gD" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wEcoXjJ8e0" role="2OqNvi">
                          <ref role="37wK5l" to="o8zo:3fifI_xCtP7" resolve="getAvailableElements" />
                          <node concept="Xl_RD" id="1wEcoXjJ8e1" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="v3k3i" id="1sVIztzDBmK" role="2OqNvi">
                        <node concept="chp4Y" id="1sVIztzDBxV" role="v3oSu">
                          <ref role="cht4Q" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="1KnU$U" id="1sVIztzDCGz" role="2OqNvi" />
                  </node>
                  <node concept="ANE8D" id="1wEcoXjJ8ej" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="1wEcoXjJ8el" role="1GhOri">
            <node concept="1hCUdq" id="1wEcoXjJ8em" role="1hCUd6">
              <node concept="3clFbS" id="1wEcoXjJ8en" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ8eo" role="3cqZAp">
                  <node concept="2YIFZM" id="4AvAon1S_nf" role="3clFbG">
                    <ref role="37wK5l" to="5b0:~NodePresentationUtil.visibleMatchingText(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="visibleMatchingText" />
                    <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                    <node concept="2ZBlsa" id="4AvAon1S_ng" role="37wK5m" />
                    <node concept="10Nm6u" id="4AvAon1SCcc" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cqGtN" id="1wEcoXjJ8et" role="2jZA2a">
              <node concept="3cqJkl" id="1wEcoXjJ8eu" role="3cqGtW">
                <node concept="3clFbS" id="1wEcoXjJ8ev" role="2VODD2">
                  <node concept="3clFbF" id="1wEcoXjJ8ew" role="3cqZAp">
                    <node concept="3cpWs3" id="1wEcoXjJ8ex" role="3clFbG">
                      <node concept="2YIFZM" id="1wEcoXjJ8ey" role="3uHU7w">
                        <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                        <ref role="37wK5l" to="5b0:~NodePresentationUtil.descriptionText(org.jetbrains.mps.openapi.model.SNode)" resolve="descriptionText" />
                        <node concept="2ZBlsa" id="1wEcoXjJ8eA" role="37wK5m" />
                      </node>
                      <node concept="Xl_RD" id="1wEcoXjJ8e_" role="3uHU7B">
                        <property role="Xl_RC" value="^" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="1wEcoXjJ8eB" role="IWgqQ">
              <node concept="3clFbS" id="1wEcoXjJ8eC" role="2VODD2">
                <node concept="3cpWs8" id="1wEcoXjJ8eD" role="3cqZAp">
                  <node concept="3cpWsn" id="1wEcoXjJ8eE" role="3cpWs9">
                    <property role="TrG5h" value="property" />
                    <node concept="3Tqbb2" id="1wEcoXjJ8eF" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1wEcoXjJ8eG" role="33vP2m">
                      <node concept="2OqwBi" id="1wEcoXjJ8eH" role="2Oq$k0">
                        <node concept="7Obwk" id="1wEcoXjJ8eT" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1wEcoXjJ8eJ" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                        </node>
                      </node>
                      <node concept="2DeJg1" id="1wEcoXjJ8eK" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ8eL" role="3cqZAp">
                  <node concept="37vLTI" id="1wEcoXjJ8eM" role="3clFbG">
                    <node concept="2ZBlsa" id="1wEcoXjJ8eU" role="37vLTx" />
                    <node concept="2OqwBi" id="1wEcoXjJ8eO" role="37vLTJ">
                      <node concept="37vLTw" id="1wEcoXjJ8eP" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wEcoXjJ8eE" resolve="property" />
                      </node>
                      <node concept="3TrEf2" id="1wEcoXjJ8eQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ8f0" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ8eV" role="3clFbG">
                    <node concept="37vLTw" id="1wEcoXjJ8eS" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ8eE" resolve="property" />
                    </node>
                    <node concept="1OKiuA" id="1wEcoXjJ8eW" role="2OqNvi">
                      <node concept="1Q80Hx" id="1wEcoXjJ8eX" role="lBI5i" />
                      <node concept="2B6iha" id="1wEcoXjJ8eY" role="lGT1i">
                        <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                      </node>
                      <node concept="3cmrfG" id="1wEcoXjJ8eZ" role="3dN3m$">
                        <property role="3cmrfH" value="-1" />
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
    <node concept="yp4Wq" id="1wEcoXjJ8ck" role="lGtFl">
      <property role="yp4Ub" value="ext_4_RTransform" />
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJMVW">
    <ref role="aqKnT" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIL7" role="22hAXT">
      <property role="TrG5h" value="InterfaceConceptDeclaration_ApplySideTransforms" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMVX" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMVY" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMVZ" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMW0" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMW1" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMW2" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMW3" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMW6" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMW4" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMW5" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMW7" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ85X" resolve="CreateFirstDeclaration_ext_3" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJMWc">
    <ref role="aqKnT" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIL8" role="22hAXT">
      <property role="TrG5h" value="InterfaceConceptDeclaration_ApplySideTransforms_1" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMWd" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMWe" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMWf" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMWg" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMWh" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMWi" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMWj" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMWm" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMWk" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMWl" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMWn" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ898" resolve="CreateFirstDeclaration_ext_2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJMWs">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGIL9" role="22hAXT">
      <property role="TrG5h" value="ConceptDeclaration_ApplySideTransforms" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMWt" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMWu" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMWv" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMWw" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMWx" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMWy" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMWz" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMWA" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMW$" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMW_" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMWB" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ898" resolve="CreateFirstDeclaration_ext_2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJMWG">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGILa" role="22hAXT">
      <property role="TrG5h" value="ConceptDeclaration_ApplySideTransforms_1" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMWH" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMWI" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMWJ" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMWK" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMWL" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMWM" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMWN" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMWQ" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMWO" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMWP" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMWR" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ85X" resolve="CreateFirstDeclaration_ext_3" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJMWZ">
    <ref role="aqKnT" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGILb" role="22hAXT">
      <property role="TrG5h" value="InterfaceConceptDeclaration_ApplySideTransforms_2" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMX0" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMX1" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMX2" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMX3" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMX4" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMX5" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMX6" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMX9" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMX7" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMX8" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMXa" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ8cj" resolve="CreateFirstDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJMXf">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWg" id="6UtCO5dGILc" role="22hAXT">
      <property role="TrG5h" value="ConceptDeclaration_ApplySideTransforms_2" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMXg" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMXh" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMXi" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMXj" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMXk" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMXl" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMXm" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMXp" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMXn" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMXo" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMXq" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjJ8cj" resolve="CreateFirstDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1ZDuSTZq74U">
    <ref role="aqKnT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="22hDWj" id="6UtCO5dGILd" role="22hAXT" />
    <node concept="1Qtc8_" id="1ZDuSTZq74V" role="IW6Ez">
      <node concept="aenpk" id="7Hlf$KPslRK" role="1Qtc8A">
        <node concept="27VH4U" id="7Hlf$KPslRM" role="aenpu">
          <node concept="3clFbS" id="7Hlf$KPslRO" role="2VODD2">
            <node concept="3SKdUt" id="7Hlf$KPsqPz" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXnYLq" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXnYLr" role="1PaTwD">
                  <property role="3oM_SC" value="suppressing" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYLs" role="1PaTwD">
                  <property role="3oM_SC" value="assistant" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYLt" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYLu" role="1PaTwD">
                  <property role="3oM_SC" value="incomplete" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYLv" role="1PaTwD">
                  <property role="3oM_SC" value="concept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYLw" role="1PaTwD">
                  <property role="3oM_SC" value="/" />
                </node>
                <node concept="3oM_SD" id="ATZLwXnYLx" role="1PaTwD">
                  <property role="3oM_SC" value="BaseConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Hlf$KPsnOL" role="3cqZAp">
              <node concept="1Wc70l" id="7Hlf$KPspTV" role="3clFbG">
                <node concept="3fqX7Q" id="3XR0QgVCkel" role="3uHU7w">
                  <node concept="2OqwBi" id="3XR0QgVCkej" role="3fr31v">
                    <node concept="7Obwk" id="3XR0QgVCkeh" role="2Oq$k0" />
                    <node concept="1QLmlb" id="3XR0QgVCkek" role="2OqNvi">
                      <node concept="ZC_QK" id="3XR0QgVCkei" role="1QLmnL">
                        <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7Hlf$KPsp66" role="3uHU7B">
                  <node concept="2OqwBi" id="7Hlf$KPso2W" role="3uHU7B">
                    <node concept="7Obwk" id="7Hlf$KPsnOK" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7Hlf$KPsorn" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7Hlf$KPspfz" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="aenpk" id="7Hlf$KPsrfF" role="aenpr">
          <node concept="27VH4U" id="7Hlf$KPsrfG" role="aenpu">
            <node concept="3clFbS" id="7Hlf$KPsrfH" role="2VODD2">
              <node concept="3clFbF" id="7Hlf$KPsrqr" role="3cqZAp">
                <node concept="3y3z36" id="7Hlf$KPsrAv" role="3clFbG">
                  <node concept="2OqwBi" id="7Hlf$KPsrqv" role="3uHU7B">
                    <node concept="1Q80Hx" id="7Hlf$KPsrqw" role="2Oq$k0" />
                    <node concept="liA8E" id="7Hlf$KPsrqx" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getEditorPanelManager()" resolve="getEditorPanelManager" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7Hlf$KPsrqu" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="1ZDuSTZq7dT" role="aenpr">
            <node concept="1hCUdq" id="1ZDuSTZq7dU" role="1hCUd6">
              <node concept="3clFbS" id="1ZDuSTZq7dV" role="2VODD2">
                <node concept="3clFbF" id="1ZDuSTZq850" role="3cqZAp">
                  <node concept="Xl_RD" id="1ZDuSTZq84Z" role="3clFbG">
                    <property role="Xl_RC" value="Create Editor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="1ZDuSTZq7dW" role="IWgqQ">
              <node concept="3clFbS" id="1ZDuSTZq7dX" role="2VODD2">
                <node concept="3SKdUt" id="30J9Cm$A0Hz" role="3cqZAp">
                  <node concept="1PaTwC" id="30J9Cm$A0H$" role="1aUNEU">
                    <node concept="3oM_SD" id="30J9Cm$A0H_" role="1PaTwD">
                      <property role="3oM_SC" value="FIXME" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0Q4" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0Q6" role="1PaTwD">
                      <property role="3oM_SC" value="code" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0Q7" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0QG" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;Create" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0RP" role="1PaTwD">
                      <property role="3oM_SC" value="Editor" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0RQ" role="1PaTwD">
                      <property role="3oM_SC" value="For" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0U7" role="1PaTwD">
                      <property role="3oM_SC" value="...&quot;" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0VO" role="1PaTwD">
                      <property role="3oM_SC" value="action," />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$A0Wp" role="1PaTwD">
                      <property role="3oM_SC" value="below," />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$AaP9" role="1PaTwD">
                      <property role="3oM_SC" value="asl" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$AaPa" role="1PaTwD">
                      <property role="3oM_SC" value="well" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$AaPJ" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$AaPK" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$AaPL" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;Editor&quot;" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$AaRu" role="1PaTwD">
                      <property role="3oM_SC" value="tab" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="30J9Cm$_I_R" role="3cqZAp">
                  <node concept="3cpWsn" id="30J9Cm$_I_S" role="3cpWs9">
                    <property role="TrG5h" value="langModule" />
                    <node concept="3uibUv" id="30J9Cm$_I_T" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="30J9Cm$_I_U" role="33vP2m">
                      <node concept="2JrnkZ" id="30J9Cm$_I_V" role="2Oq$k0">
                        <node concept="2OqwBi" id="30J9Cm$_I_W" role="2JrQYb">
                          <node concept="7Obwk" id="30J9Cm$_I_X" role="2Oq$k0" />
                          <node concept="I4A8Y" id="30J9Cm$_I_Y" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="liA8E" id="30J9Cm$_I_Z" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="30J9Cm$_IA0" role="3cqZAp">
                  <node concept="3cpWsn" id="30J9Cm$_IA1" role="3cpWs9">
                    <property role="TrG5h" value="editorAspectModel" />
                    <node concept="H_c77" id="30J9Cm$_IA2" role="1tU5fm" />
                    <node concept="1qvjxa" id="30J9Cm$_IA3" role="33vP2m">
                      <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                      <node concept="37vLTw" id="30J9Cm$_IA4" role="1qvjxb">
                        <ref role="3cqZAo" node="30J9Cm$_I_S" resolve="langModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="30J9Cm$_IA5" role="3cqZAp">
                  <node concept="3clFbS" id="30J9Cm$_IA6" role="3clFbx">
                    <node concept="3cpWs8" id="30J9Cm$_IA7" role="3cqZAp">
                      <node concept="3cpWsn" id="30J9Cm$_IA8" role="3cpWs9">
                        <property role="TrG5h" value="ad" />
                        <node concept="3uibUv" id="30J9Cm$_IA9" role="1tU5fm">
                          <ref role="3uigEE" to="vndm:~LanguageAspectDescriptor" resolve="LanguageAspectDescriptor" />
                        </node>
                        <node concept="2YIFZM" id="30J9Cm$_IAa" role="33vP2m">
                          <ref role="37wK5l" to="vndm:~LanguageAspectSupport.getAspectDescriptorById(java.lang.String)" resolve="getAspectDescriptorById" />
                          <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
                          <node concept="Xl_RD" id="30J9Cm$_IAb" role="37wK5m">
                            <property role="Xl_RC" value="editor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="30J9Cm$_IAt" role="3cqZAp">
                      <node concept="3cpWsn" id="30J9Cm$_IAu" role="3cpWs9">
                        <property role="TrG5h" value="cac" />
                        <node concept="3uibUv" id="30J9Cm$_IAv" role="1tU5fm">
                          <ref role="3uigEE" to="vndm:~CreateAspectContext" resolve="CreateAspectContext" />
                        </node>
                        <node concept="2YIFZM" id="30J9Cm$_IAw" role="33vP2m">
                          <ref role="37wK5l" to="vndm:~CreateAspectContext.create(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.components.ComponentHost,java.util.function.Consumer)" resolve="create" />
                          <ref role="1Pybhc" to="vndm:~CreateAspectContext" resolve="CreateAspectContext" />
                          <node concept="37vLTw" id="30J9Cm$_IAx" role="37wK5m">
                            <ref role="3cqZAo" node="30J9Cm$_I_S" resolve="langModule" />
                          </node>
                          <node concept="2OqwBi" id="30J9Cm$_IAy" role="37wK5m">
                            <node concept="2OqwBi" id="30J9Cm$_IAz" role="2Oq$k0">
                              <node concept="2OqwBi" id="30J9Cm$_IA$" role="2Oq$k0">
                                <node concept="1Q80Hx" id="30J9Cm$_IA_" role="2Oq$k0" />
                                <node concept="liA8E" id="30J9Cm$_IAA" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="30J9Cm$_IAB" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="30J9Cm$_IAC" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="30J9Cm$_IAD" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="30J9Cm$_IAE" role="3cqZAp">
                      <node concept="3clFbS" id="30J9Cm$_IAF" role="3clFbx">
                        <node concept="3clFbF" id="30J9Cm$_IAG" role="3cqZAp">
                          <node concept="2OqwBi" id="30J9Cm$_IAH" role="3clFbG">
                            <node concept="37vLTw" id="30J9Cm$_IAI" role="2Oq$k0">
                              <ref role="3cqZAo" node="30J9Cm$_IA8" resolve="ad" />
                            </node>
                            <node concept="liA8E" id="30J9Cm$_IAJ" role="2OqNvi">
                              <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.create(jetbrains.mps.smodel.language.CreateAspectContext)" resolve="create" />
                              <node concept="37vLTw" id="30J9Cm$_IAK" role="37wK5m">
                                <ref role="3cqZAo" node="30J9Cm$_IAu" resolve="cac" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="30J9Cm$_IAL" role="3cqZAp">
                          <node concept="37vLTI" id="30J9Cm$_IAM" role="3clFbG">
                            <node concept="37vLTw" id="30J9Cm$_IAN" role="37vLTJ">
                              <ref role="3cqZAo" node="30J9Cm$_IA1" resolve="editorAspectModel" />
                            </node>
                            <node concept="1qvjxa" id="30J9Cm$_IAO" role="37vLTx">
                              <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                              <node concept="37vLTw" id="30J9Cm$_IAP" role="1qvjxb">
                                <ref role="3cqZAo" node="30J9Cm$_I_S" resolve="langModule" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="30J9Cm$_IAQ" role="3clFbw">
                        <node concept="2OqwBi" id="30J9Cm$_IAR" role="3uHU7w">
                          <node concept="37vLTw" id="30J9Cm$_IAS" role="2Oq$k0">
                            <ref role="3cqZAo" node="30J9Cm$_IA8" resolve="ad" />
                          </node>
                          <node concept="liA8E" id="30J9Cm$_IAT" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.canCreate(jetbrains.mps.smodel.language.CreateAspectContext)" resolve="canCreate" />
                            <node concept="37vLTw" id="30J9Cm$_IAU" role="37wK5m">
                              <ref role="3cqZAo" node="30J9Cm$_IAu" resolve="cac" />
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="30J9Cm$_IAV" role="3uHU7B">
                          <node concept="37vLTw" id="30J9Cm$_IAW" role="3uHU7B">
                            <ref role="3cqZAo" node="30J9Cm$_IA8" resolve="ad" />
                          </node>
                          <node concept="10Nm6u" id="30J9Cm$_IAX" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="30J9Cm$_IAY" role="3clFbw">
                    <node concept="10Nm6u" id="30J9Cm$_IAZ" role="3uHU7w" />
                    <node concept="37vLTw" id="30J9Cm$_IB0" role="3uHU7B">
                      <ref role="3cqZAo" node="30J9Cm$_IA1" resolve="editorAspectModel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="30J9Cm$_IB1" role="3cqZAp">
                  <node concept="3clFbS" id="30J9Cm$_IB2" role="3clFbx">
                    <node concept="3cpWs6" id="30J9Cm$_IB3" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="30J9Cm$_IB4" role="3clFbw">
                    <node concept="10Nm6u" id="30J9Cm$_IB5" role="3uHU7w" />
                    <node concept="37vLTw" id="30J9Cm$_IB6" role="3uHU7B">
                      <ref role="3cqZAo" node="30J9Cm$_IA1" resolve="editorAspectModel" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="yfdOY38v2$" role="3cqZAp">
                  <node concept="3cpWsn" id="yfdOY38v2_" role="3cpWs9">
                    <property role="TrG5h" value="editor" />
                    <node concept="3Tqbb2" id="yfdOY38v2w" role="1tU5fm">
                      <ref role="ehGHo" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="30J9Cm$A20U" role="33vP2m">
                      <node concept="37vLTw" id="30J9Cm$A1PG" role="2Oq$k0">
                        <ref role="3cqZAo" node="30J9Cm$_IA1" resolve="editorAspectModel" />
                      </node>
                      <node concept="15Ty1b" id="30J9Cm$A2kq" role="2OqNvi">
                        <ref role="I8UWU" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="30J9Cm$A2Df" role="3cqZAp">
                  <node concept="2YIFZM" id="yfdOY38v2A" role="3clFbG">
                    <ref role="37wK5l" to="ryx4:2$SWsiCtwZI" resolve="attachNewConceptAspect" />
                    <ref role="1Pybhc" to="ryx4:yfdOY36$xf" resolve="ConceptAspectsHelper" />
                    <node concept="7Obwk" id="yfdOY38v2C" role="37wK5m" />
                    <node concept="37vLTw" id="30J9Cm$A3vQ" role="37wK5m">
                      <ref role="3cqZAo" node="yfdOY38v2_" resolve="editor" />
                    </node>
                    <node concept="37vLTw" id="30J9Cm$A3W2" role="37wK5m">
                      <ref role="3cqZAo" node="30J9Cm$_IA1" resolve="editorAspectModel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5yG5hjeB$d8" role="3cqZAp">
                  <node concept="2OqwBi" id="5yG5hjeB_f_" role="3clFbG">
                    <node concept="2OqwBi" id="5yG5hjeB$Sk" role="2Oq$k0">
                      <node concept="1Q80Hx" id="5yG5hjeB$d6" role="2Oq$k0" />
                      <node concept="liA8E" id="5yG5hjeB_b5" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getEditorPanelManager()" resolve="getEditorPanelManager" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5yG5hjeB_za" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorPanelManager.openEditor(org.jetbrains.mps.openapi.model.SNode)" resolve="openEditor" />
                      <node concept="37vLTw" id="5yG5hjeB_zM" role="37wK5m">
                        <ref role="3cqZAo" node="yfdOY38v2_" resolve="editor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="27VH4U" id="1ZDuSTZq91x" role="2jiSrf">
              <node concept="3clFbS" id="1ZDuSTZq91y" role="2VODD2">
                <node concept="3clFbJ" id="7Hlf$KPQrxO" role="3cqZAp">
                  <node concept="3clFbS" id="7Hlf$KPQrxP" role="3clFbx">
                    <node concept="3SKdUt" id="7Hlf$KPQrxQ" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXnYLy" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXnYLz" role="1PaTwD">
                          <property role="3oM_SC" value="there" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYL$" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYL_" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLA" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLB" role="1PaTwD">
                          <property role="3oM_SC" value="defined" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7Hlf$KPQrxS" role="3cqZAp">
                      <node concept="3clFbT" id="7Hlf$KPQrxT" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Hlf$KPQrxU" role="3clFbw">
                    <node concept="2OqwBi" id="SMdHsk4zOS" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Hlf$KPQrxV" role="2Oq$k0">
                        <node concept="7Obwk" id="7Hlf$KPQrxW" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORfyZ" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                          <node concept="1qvjxa" id="70OdufORfz1" role="37wK5m">
                            <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                            <node concept="2OqwBi" id="70OdufORfz2" role="1qvjxb">
                              <node concept="2JrnkZ" id="70OdufORfz3" role="2Oq$k0">
                                <node concept="2OqwBi" id="70OdufORfz4" role="2JrQYb">
                                  <node concept="7Obwk" id="70OdufORfz5" role="2Oq$k0" />
                                  <node concept="I4A8Y" id="70OdufORfz6" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="liA8E" id="70OdufORfz7" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3k3i" id="SMdHsk4$JP" role="2OqNvi">
                        <node concept="chp4Y" id="SMdHsk4_h0" role="v3oSu">
                          <ref role="cht4Q" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3GX2aA" id="SMdHsk4AB3" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbH" id="7Hlf$KPQqWz" role="3cqZAp" />
                <node concept="3clFbJ" id="7Hlf$KPoXuy" role="3cqZAp">
                  <node concept="3clFbS" id="7Hlf$KPoXuz" role="3clFbx">
                    <node concept="3SKdUt" id="7Hlf$KPpTP7" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXnYLC" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXnYLD" role="1PaTwD">
                          <property role="3oM_SC" value="concept" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLE" role="1PaTwD">
                          <property role="3oM_SC" value="has" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLF" role="1PaTwD">
                          <property role="3oM_SC" value="no" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLG" role="1PaTwD">
                          <property role="3oM_SC" value="own" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLH" role="1PaTwD">
                          <property role="3oM_SC" value="features" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLI" role="1PaTwD">
                          <property role="3oM_SC" value="-&gt;" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLJ" role="1PaTwD">
                          <property role="3oM_SC" value="looking" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLK" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLL" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLM" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLN" role="1PaTwD">
                          <property role="3oM_SC" value="defined" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLO" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLP" role="1PaTwD">
                          <property role="3oM_SC" value="structurally-equal" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLQ" role="1PaTwD">
                          <property role="3oM_SC" value="super-concept" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="SMdHsk4kZc" role="3cqZAp">
                      <node concept="1PaTwC" id="SMdHsk4kZd" role="1aUNEU">
                        <node concept="3oM_SD" id="SMdHsk4kZe" role="1PaTwD">
                          <property role="3oM_SC" value="[artem]" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lAj" role="1PaTwD">
                          <property role="3oM_SC" value="I" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lAX" role="1PaTwD">
                          <property role="3oM_SC" value="don't" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lB4" role="1PaTwD">
                          <property role="3oM_SC" value="quite" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lBt" role="1PaTwD">
                          <property role="3oM_SC" value="agree" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lBQ" role="1PaTwD">
                          <property role="3oM_SC" value="why" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lC_" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lCY" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lDk" role="1PaTwD">
                          <property role="3oM_SC" value="suggest" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lDJ" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lDN" role="1PaTwD">
                          <property role="3oM_SC" value="create" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lEv" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lEz" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lEX" role="1PaTwD">
                          <property role="3oM_SC" value="here," />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lG7" role="1PaTwD">
                          <property role="3oM_SC" value="even" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lGI" role="1PaTwD">
                          <property role="3oM_SC" value="if" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lH4" role="1PaTwD">
                          <property role="3oM_SC" value="there" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lHP" role="1PaTwD">
                          <property role="3oM_SC" value="are" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lHU" role="1PaTwD">
                          <property role="3oM_SC" value="no" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lHY" role="1PaTwD">
                          <property role="3oM_SC" value="features." />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lIZ" role="1PaTwD">
                          <property role="3oM_SC" value="LD" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lJl" role="1PaTwD">
                          <property role="3oM_SC" value="could" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lJs" role="1PaTwD">
                          <property role="3oM_SC" value="want" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lJy" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lKW" role="1PaTwD">
                          <property role="3oM_SC" value="customize" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lLn" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk4lM7" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7Hlf$KPpVxc" role="3cqZAp">
                      <node concept="3clFbS" id="7Hlf$KPpVxe" role="3clFbx">
                        <node concept="3cpWs6" id="7Hlf$KPq4Mk" role="3cqZAp">
                          <node concept="3clFbT" id="7Hlf$KPq4Mz" role="3cqZAk">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Hlf$KPoXv7" role="3clFbw">
                        <node concept="2OqwBi" id="7Hlf$KPoXv8" role="2Oq$k0">
                          <node concept="2ShNRf" id="7Hlf$KPoXv9" role="2Oq$k0">
                            <node concept="1pGfFk" id="7Hlf$KPoXva" role="2ShVmc">
                              <ref role="37wK5l" node="7Hlf$KPdzKr" resolve="ConceptDeclarationAssistantUtil" />
                              <node concept="7Obwk" id="7Hlf$KPoXvb" role="37wK5m" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7Hlf$KPoXvc" role="2OqNvi">
                            <ref role="37wK5l" node="7Hlf$KPj9V3" resolve="getStructurallyEqualSuperConcepts" />
                          </node>
                        </node>
                        <node concept="2HwmR7" id="7Hlf$KPqK8k" role="2OqNvi">
                          <node concept="1bVj0M" id="7Hlf$KPqK8m" role="23t8la">
                            <node concept="3clFbS" id="7Hlf$KPqK8n" role="1bW5cS">
                              <node concept="3clFbF" id="7Hlf$KPqL5g" role="3cqZAp">
                                <node concept="2OqwBi" id="7Hlf$KPqL5i" role="3clFbG">
                                  <node concept="2OqwBi" id="SMdHsk4oI9" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7Hlf$KPqL5j" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Hlf$KPqL5k" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WuD" resolve="it" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfz8" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                                        <node concept="1qvjxa" id="70OdufORfza" role="37wK5m">
                                          <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                                          <node concept="2OqwBi" id="70OdufORfzb" role="1qvjxb">
                                            <node concept="2JrnkZ" id="70OdufORfzc" role="2Oq$k0">
                                              <node concept="2OqwBi" id="70OdufORfzd" role="2JrQYb">
                                                <node concept="37vLTw" id="70OdufORfze" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5W7E4fV0WuD" resolve="it" />
                                                </node>
                                                <node concept="I4A8Y" id="70OdufORfzf" role="2OqNvi" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="70OdufORfzg" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="v3k3i" id="SMdHsk4qmt" role="2OqNvi">
                                      <node concept="chp4Y" id="SMdHsk4qFy" role="v3oSu">
                                        <ref role="cht4Q" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3GX2aA" id="SMdHsk4szS" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WuD" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0WuE" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="7Hlf$KPQF9G" role="3clFbw">
                    <node concept="2OqwBi" id="7Hlf$KPoXuZ" role="3uHU7B">
                      <node concept="2OqwBi" id="7Hlf$KPoXv0" role="2Oq$k0">
                        <node concept="7Obwk" id="7Hlf$KPoXv1" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7Hlf$KPoXv2" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="7Hlf$KPQxWq" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="7Hlf$KPoXuU" role="3uHU7w">
                      <node concept="2OqwBi" id="7Hlf$KPoXuV" role="2Oq$k0">
                        <node concept="7Obwk" id="7Hlf$KPoXuW" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7Hlf$KPoXuX" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="7Hlf$KPQChV" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7Hlf$KPQKl2" role="3cqZAp" />
                <node concept="3clFbJ" id="7Hlf$KPq8AN" role="3cqZAp">
                  <node concept="3clFbS" id="7Hlf$KPq8AP" role="3clFbx">
                    <node concept="3SKdUt" id="7Hlf$KPqbVl" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXnYLR" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXnYLS" role="1PaTwD">
                          <property role="3oM_SC" value="Suppressing" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLT" role="1PaTwD">
                          <property role="3oM_SC" value="assistant" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLU" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLV" role="1PaTwD">
                          <property role="3oM_SC" value="abstract" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLW" role="1PaTwD">
                          <property role="3oM_SC" value="concepts" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLX" role="1PaTwD">
                          <property role="3oM_SC" value="if" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLY" role="1PaTwD">
                          <property role="3oM_SC" value="any" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYLZ" role="1PaTwD">
                          <property role="3oM_SC" value="sub-concept" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYM0" role="1PaTwD">
                          <property role="3oM_SC" value="has" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYM1" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYM2" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnYM3" role="1PaTwD">
                          <property role="3oM_SC" value="defined" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7Hlf$KPqyC0" role="3cqZAp">
                      <node concept="3clFbS" id="7Hlf$KPqyC2" role="3clFbx">
                        <node concept="3cpWs6" id="7Hlf$KPq_Kz" role="3cqZAp">
                          <node concept="3clFbT" id="7Hlf$KPqAKi" role="3cqZAk">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Hlf$KPqssZ" role="3clFbw">
                        <node concept="2OqwBi" id="7Hlf$KPqdN$" role="2Oq$k0">
                          <node concept="2OqwBi" id="7Hlf$KPqdN_" role="2Oq$k0">
                            <node concept="2OqwBi" id="7Hlf$KPqdNA" role="2Oq$k0">
                              <node concept="7Obwk" id="7Hlf$KPqdNB" role="2Oq$k0" />
                              <node concept="I4A8Y" id="7Hlf$KPqdNC" role="2OqNvi" />
                            </node>
                            <node concept="2RRcyG" id="7Hlf$KPqdND" role="2OqNvi">
                              <node concept="chp4Y" id="5QK5AMJp7wW" role="3MHsoP">
                                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                              </node>
                            </node>
                          </node>
                          <node concept="3zZkjj" id="7Hlf$KPqr9f" role="2OqNvi">
                            <node concept="1bVj0M" id="7Hlf$KPqr9h" role="23t8la">
                              <node concept="3clFbS" id="7Hlf$KPqr9i" role="1bW5cS">
                                <node concept="3clFbF" id="7Hlf$KPqr9j" role="3cqZAp">
                                  <node concept="2OqwBi" id="7Hlf$KPqr9k" role="3clFbG">
                                    <node concept="2OqwBi" id="7Hlf$KPqr9l" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Hlf$KPqr9m" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WuF" resolve="it" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfzh" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:2A8AB0rAWpG" resolve="getAllSuperConcepts" />
                                        <node concept="3clFbT" id="70OdufORfzj" role="37wK5m">
                                          <property role="3clFbU" value="false" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3JPx81" id="7Hlf$KPqr9p" role="2OqNvi">
                                      <node concept="7Obwk" id="7Hlf$KPqr9q" role="25WWJ7" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0WuF" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0WuG" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2HwmR7" id="7Hlf$KPqtEL" role="2OqNvi">
                          <node concept="1bVj0M" id="7Hlf$KPqtEN" role="23t8la">
                            <node concept="3clFbS" id="7Hlf$KPqtEO" role="1bW5cS">
                              <node concept="3clFbF" id="7Hlf$KPquNl" role="3cqZAp">
                                <node concept="2OqwBi" id="7Hlf$KPquNn" role="3clFbG">
                                  <node concept="2OqwBi" id="SMdHsk4u9U" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7Hlf$KPquNo" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Hlf$KPqvXS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WuJ" resolve="it" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfzk" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                                        <node concept="1qvjxa" id="70OdufORfzm" role="37wK5m">
                                          <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                                          <node concept="2OqwBi" id="70OdufORfzn" role="1qvjxb">
                                            <node concept="2JrnkZ" id="70OdufORfzo" role="2Oq$k0">
                                              <node concept="2OqwBi" id="70OdufORfzp" role="2JrQYb">
                                                <node concept="37vLTw" id="70OdufORfzq" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5W7E4fV0WuJ" resolve="it" />
                                                </node>
                                                <node concept="I4A8Y" id="70OdufORfzr" role="2OqNvi" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="70OdufORfzs" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="v3k3i" id="SMdHsk4wPL" role="2OqNvi">
                                      <node concept="chp4Y" id="SMdHsk4xrp" role="v3oSu">
                                        <ref role="cht4Q" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3GX2aA" id="SMdHsk4zks" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WuJ" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0WuK" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Hlf$KPqa3F" role="3clFbw">
                    <node concept="7Obwk" id="7Hlf$KPq9tU" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7Hlf$KPqb7W" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7Hlf$KPqGcL" role="3cqZAp" />
                <node concept="3cpWs6" id="7Hlf$KPqDnd" role="3cqZAp">
                  <node concept="3clFbT" id="7Hlf$KPqEnY" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1IAO7e" id="SMdHsk1KaM" role="aenpr" />
          <node concept="1GhOrh" id="SMdHsk0JLu" role="aenpr">
            <node concept="1GhMSn" id="SMdHsk0JLw" role="1GhOrs">
              <node concept="3clFbS" id="SMdHsk0JLy" role="2VODD2">
                <node concept="3SKdUt" id="30J9Cm$ChtR" role="3cqZAp">
                  <node concept="1PaTwC" id="30J9Cm$ChtS" role="1aUNEU">
                    <node concept="3oM_SD" id="SMdHsk1Etq" role="1PaTwD">
                      <property role="3oM_SC" value="This" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1Eu2" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1Eux" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1EuA" role="1PaTwD">
                      <property role="3oM_SC" value="single" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1Evc" role="1PaTwD">
                      <property role="3oM_SC" value="action" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1EvM" role="1PaTwD">
                      <property role="3oM_SC" value="contributed" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1EwT" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1Ex0" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="SMdHsk1Exv" role="1PaTwD">
                      <property role="3oM_SC" value="parameterised" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChJj" role="1PaTwD">
                      <property role="3oM_SC" value="one," />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChK4" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChLV" role="1PaTwD">
                      <property role="3oM_SC" value="avoid" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChLZ" role="1PaTwD">
                      <property role="3oM_SC" value="calculating" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChMU" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;structurally" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChOr" role="1PaTwD">
                      <property role="3oM_SC" value="equal" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChPy" role="1PaTwD">
                      <property role="3oM_SC" value="concepts&quot;" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChQO" role="1PaTwD">
                      <property role="3oM_SC" value="again" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChRi" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="30J9Cm$ChRF" role="1PaTwD">
                      <property role="3oM_SC" value="again" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="SMdHsk0PRh" role="3cqZAp">
                  <node concept="3clFbS" id="SMdHsk0PRi" role="3clFbx">
                    <node concept="3cpWs6" id="SMdHsk0PRj" role="3cqZAp">
                      <node concept="2ShNRf" id="SMdHsk0Qlj" role="3cqZAk">
                        <node concept="kMnCb" id="SMdHsk0Qlf" role="2ShVmc">
                          <node concept="3Tqbb2" id="SMdHsk0Qlg" role="kMuH3">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="SMdHsk0PRl" role="3clFbw">
                    <node concept="2OqwBi" id="SMdHsk0PRm" role="3uHU7B">
                      <node concept="2OqwBi" id="SMdHsk0PRn" role="2Oq$k0">
                        <node concept="7Obwk" id="SMdHsk0PRo" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="SMdHsk0PRp" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="SMdHsk0PRq" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="SMdHsk0PRr" role="3uHU7w">
                      <node concept="2OqwBi" id="SMdHsk0PRs" role="2Oq$k0">
                        <node concept="7Obwk" id="SMdHsk0PRt" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="SMdHsk0PRu" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="SMdHsk0PRv" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="SMdHsk0RMG" role="3cqZAp">
                  <node concept="3clFbS" id="SMdHsk0RMH" role="3clFbx">
                    <node concept="3SKdUt" id="SMdHsk0RMI" role="3cqZAp">
                      <node concept="1PaTwC" id="SMdHsk0RMJ" role="1aUNEU">
                        <node concept="3oM_SD" id="SMdHsk0RMK" role="1PaTwD">
                          <property role="3oM_SC" value="there" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RML" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMM" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMN" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMO" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMP" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMQ" role="1PaTwD">
                          <property role="3oM_SC" value="concept" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMR" role="1PaTwD">
                          <property role="3oM_SC" value="-" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMS" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMT" role="1PaTwD">
                          <property role="3oM_SC" value="necessary" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMU" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMV" role="1PaTwD">
                          <property role="3oM_SC" value="suggest" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMW" role="1PaTwD">
                          <property role="3oM_SC" value="new" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMX" role="1PaTwD">
                          <property role="3oM_SC" value="editor" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMY" role="1PaTwD">
                          <property role="3oM_SC" value="creation" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RMZ" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="SMdHsk0RN0" role="1PaTwD">
                          <property role="3oM_SC" value="super-concepts" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="SMdHsk0RN1" role="3cqZAp">
                      <node concept="2ShNRf" id="SMdHsk0ToQ" role="3cqZAk">
                        <node concept="kMnCb" id="SMdHsk0ToR" role="2ShVmc">
                          <node concept="3Tqbb2" id="SMdHsk0ToS" role="kMuH3">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="SMdHsk0RN3" role="3clFbw">
                    <node concept="2OqwBi" id="SMdHsk1Fev" role="2Oq$k0">
                      <node concept="2OqwBi" id="SMdHsk0RN4" role="2Oq$k0">
                        <node concept="7Obwk" id="SMdHsk0RN5" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORfzt" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                          <node concept="1qvjxa" id="70OdufORfzv" role="37wK5m">
                            <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                            <node concept="2OqwBi" id="70OdufORfzw" role="1qvjxb">
                              <node concept="2JrnkZ" id="70OdufORfzx" role="2Oq$k0">
                                <node concept="2OqwBi" id="70OdufORfzy" role="2JrQYb">
                                  <node concept="7Obwk" id="70OdufORfzz" role="2Oq$k0" />
                                  <node concept="I4A8Y" id="70OdufORfz$" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="liA8E" id="70OdufORfz_" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3k3i" id="SMdHsk1GiR" role="2OqNvi">
                        <node concept="chp4Y" id="SMdHsk1Gz9" role="v3oSu">
                          <ref role="cht4Q" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3GX2aA" id="SMdHsk1HT6" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs8" id="SMdHsk0THB" role="3cqZAp">
                  <node concept="3cpWsn" id="SMdHsk0THC" role="3cpWs9">
                    <property role="TrG5h" value="superConcepts" />
                    <node concept="2I9FWS" id="SMdHsk185j" role="1tU5fm">
                      <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="SMdHsk0THF" role="33vP2m">
                      <node concept="2ShNRf" id="SMdHsk0THG" role="2Oq$k0">
                        <node concept="1pGfFk" id="SMdHsk0THH" role="2ShVmc">
                          <ref role="37wK5l" node="7Hlf$KPdzKr" resolve="ConceptDeclarationAssistantUtil" />
                          <node concept="7Obwk" id="SMdHsk0THI" role="37wK5m" />
                        </node>
                      </node>
                      <node concept="liA8E" id="SMdHsk0THJ" role="2OqNvi">
                        <ref role="37wK5l" node="7Hlf$KPj9V3" resolve="getStructurallyEqualSuperConcepts" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="SMdHsk14rB" role="3cqZAp">
                  <node concept="3clFbS" id="SMdHsk14rD" role="3clFbx">
                    <node concept="3cpWs6" id="SMdHsk1kEU" role="3cqZAp">
                      <node concept="2ShNRf" id="SMdHsk1kTD" role="3cqZAk">
                        <node concept="2HTt$P" id="SMdHsk1kTB" role="2ShVmc">
                          <node concept="3Tqbb2" id="SMdHsk1kTC" role="2HTBi0">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="SMdHsk1qdW" role="2HTEbv">
                            <node concept="37vLTw" id="SMdHsk1l8e" role="2Oq$k0">
                              <ref role="3cqZAo" node="SMdHsk0THC" resolve="superConcepts" />
                            </node>
                            <node concept="1yVyf7" id="SMdHsk1_2N" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="SMdHsk0THL" role="3clFbw">
                    <node concept="2OqwBi" id="SMdHsk0THM" role="3uHU7B">
                      <node concept="37vLTw" id="SMdHsk0THN" role="2Oq$k0">
                        <ref role="3cqZAo" node="SMdHsk0THC" resolve="superConcepts" />
                      </node>
                      <node concept="3GX2aA" id="SMdHsk0THO" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="SMdHsk0THP" role="3uHU7w">
                      <node concept="37vLTw" id="SMdHsk0THQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="SMdHsk0THC" resolve="superConcepts" />
                      </node>
                      <node concept="2HxqBE" id="SMdHsk0THR" role="2OqNvi">
                        <node concept="1bVj0M" id="SMdHsk0THS" role="23t8la">
                          <node concept="3clFbS" id="SMdHsk0THT" role="1bW5cS">
                            <node concept="3clFbF" id="SMdHsk10fn" role="3cqZAp">
                              <node concept="2OqwBi" id="SMdHsk11rI" role="3clFbG">
                                <node concept="2OqwBi" id="SMdHsk0Vxy" role="2Oq$k0">
                                  <node concept="2OqwBi" id="SMdHsk0THY" role="2Oq$k0">
                                    <node concept="37vLTw" id="SMdHsk0THZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="SMdHsk0TIm" resolve="superConcept" />
                                    </node>
                                    <node concept="3zqWPK" id="70OdufORfzA" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                                      <node concept="1qvjxa" id="70OdufORfzC" role="37wK5m">
                                        <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                                        <node concept="2OqwBi" id="70OdufORfzD" role="1qvjxb">
                                          <node concept="2JrnkZ" id="70OdufORfzE" role="2Oq$k0">
                                            <node concept="2OqwBi" id="70OdufORfzF" role="2JrQYb">
                                              <node concept="I4A8Y" id="70OdufORfzG" role="2OqNvi" />
                                              <node concept="37vLTw" id="70OdufORfzH" role="2Oq$k0">
                                                <ref role="3cqZAo" node="SMdHsk0TIm" resolve="superConcept" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="70OdufORfzI" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="v3k3i" id="SMdHsk0YdC" role="2OqNvi">
                                    <node concept="chp4Y" id="SMdHsk0Z2n" role="v3oSu">
                                      <ref role="cht4Q" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="1v1jN8" id="SMdHsk12zP" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="SMdHsk0TIm" role="1bW2Oz">
                            <property role="TrG5h" value="superConcept" />
                            <node concept="2jxLKc" id="SMdHsk0TIn" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="SMdHsk0THK" role="3cqZAp">
                  <node concept="2ShNRf" id="SMdHsk16g_" role="3cqZAk">
                    <node concept="kMnCb" id="SMdHsk16gA" role="2ShVmc">
                      <node concept="3Tqbb2" id="SMdHsk16gB" role="kMuH3">
                        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWgqT" id="SMdHsk0KIU" role="1GhOri">
              <node concept="1hCUdq" id="SMdHsk0KIW" role="1hCUd6">
                <node concept="3clFbS" id="SMdHsk0KIY" role="2VODD2">
                  <node concept="3clFbF" id="SMdHsk0MsF" role="3cqZAp">
                    <node concept="2OqwBi" id="SMdHsk0NdA" role="3clFbG">
                      <node concept="Xl_RD" id="SMdHsk0MsH" role="2Oq$k0">
                        <property role="Xl_RC" value="Create Editor for %s" />
                      </node>
                      <node concept="2cAKMz" id="SMdHsk0OiR" role="2OqNvi">
                        <node concept="2OqwBi" id="SMdHsk0OTT" role="2cAKU6">
                          <node concept="2ZBlsa" id="SMdHsk0Opv" role="2Oq$k0" />
                          <node concept="3TrcHB" id="SMdHsk0PIG" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="IWg2L" id="SMdHsk0KJ0" role="IWgqQ">
                <node concept="3clFbS" id="SMdHsk0KJ2" role="2VODD2">
                  <node concept="3cpWs8" id="30J9Cm$_C11" role="3cqZAp">
                    <node concept="3cpWsn" id="30J9Cm$_C12" role="3cpWs9">
                      <property role="TrG5h" value="langModule" />
                      <node concept="3uibUv" id="30J9Cm$__HV" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="30J9Cm$_C13" role="33vP2m">
                        <node concept="2JrnkZ" id="30J9Cm$_C14" role="2Oq$k0">
                          <node concept="2OqwBi" id="30J9Cm$_C15" role="2JrQYb">
                            <node concept="2ZBlsa" id="SMdHsk1Cum" role="2Oq$k0" />
                            <node concept="I4A8Y" id="30J9Cm$_C17" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="liA8E" id="30J9Cm$_C18" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="30J9Cm$_j37" role="3cqZAp">
                    <node concept="3cpWsn" id="30J9Cm$_j38" role="3cpWs9">
                      <property role="TrG5h" value="editorAspectModel" />
                      <node concept="H_c77" id="30J9Cm$_iWy" role="1tU5fm" />
                      <node concept="1qvjxa" id="30J9Cm$_j39" role="33vP2m">
                        <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                        <node concept="37vLTw" id="30J9Cm$_C19" role="1qvjxb">
                          <ref role="3cqZAo" node="30J9Cm$_C12" resolve="langModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="30J9Cm$_j_C" role="3cqZAp">
                    <node concept="3clFbS" id="30J9Cm$_j_E" role="3clFbx">
                      <node concept="3cpWs8" id="3Ad6SpnR9F5" role="3cqZAp">
                        <node concept="3cpWsn" id="3Ad6SpnR9F6" role="3cpWs9">
                          <property role="TrG5h" value="ad" />
                          <node concept="3uibUv" id="3Ad6SpnR9F7" role="1tU5fm">
                            <ref role="3uigEE" to="vndm:~LanguageAspectDescriptor" resolve="LanguageAspectDescriptor" />
                          </node>
                          <node concept="2YIFZM" id="3Ad6SpnR9F8" role="33vP2m">
                            <ref role="37wK5l" to="vndm:~LanguageAspectSupport.getAspectDescriptorById(java.lang.String)" resolve="getAspectDescriptorById" />
                            <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
                            <node concept="Xl_RD" id="3Ad6SpnR9F9" role="37wK5m">
                              <property role="Xl_RC" value="editor" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="30J9Cm$_HXc" role="3cqZAp">
                        <node concept="1PaTwC" id="30J9Cm$_HXd" role="1aUNEU">
                          <node concept="3oM_SD" id="30J9Cm$_HXe" role="1PaTwD">
                            <property role="3oM_SC" value="FIXME" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I1K" role="1PaTwD">
                            <property role="3oM_SC" value="this" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I32" role="1PaTwD">
                            <property role="3oM_SC" value="use" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I3F" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I4k" role="1PaTwD">
                            <property role="3oM_SC" value="OperationContext.getProject()" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I7t" role="1PaTwD">
                            <property role="3oM_SC" value="waits" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I86" role="1PaTwD">
                            <property role="3oM_SC" value="for" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I87" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I8K" role="1PaTwD">
                            <property role="3oM_SC" value="moment" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_I9p" role="1PaTwD">
                            <property role="3oM_SC" value="EditorComponent/EditorContext" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_IdM" role="1PaTwD">
                            <property role="3oM_SC" value="answers" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_Ier" role="1PaTwD">
                            <property role="3oM_SC" value="with" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_Ies" role="1PaTwD">
                            <property role="3oM_SC" value="CH" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_IfH" role="1PaTwD">
                            <property role="3oM_SC" value="right" />
                          </node>
                          <node concept="3oM_SD" id="30J9Cm$_IfI" role="1PaTwD">
                            <property role="3oM_SC" value="away" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3Ad6SpnR9Fa" role="3cqZAp">
                        <node concept="3cpWsn" id="3Ad6SpnR9Fb" role="3cpWs9">
                          <property role="TrG5h" value="cac" />
                          <node concept="3uibUv" id="3Ad6SpnR9Fc" role="1tU5fm">
                            <ref role="3uigEE" to="vndm:~CreateAspectContext" resolve="CreateAspectContext" />
                          </node>
                          <node concept="2YIFZM" id="3Ad6SpnR9Fd" role="33vP2m">
                            <ref role="37wK5l" to="vndm:~CreateAspectContext.create(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.components.ComponentHost,java.util.function.Consumer)" resolve="create" />
                            <ref role="1Pybhc" to="vndm:~CreateAspectContext" resolve="CreateAspectContext" />
                            <node concept="37vLTw" id="3Ad6SpnR9Fe" role="37wK5m">
                              <ref role="3cqZAo" node="30J9Cm$_C12" resolve="langModule" />
                            </node>
                            <node concept="2OqwBi" id="30J9Cm$_GZC" role="37wK5m">
                              <node concept="2OqwBi" id="30J9Cm$_Gqj" role="2Oq$k0">
                                <node concept="2OqwBi" id="30J9Cm$_G95" role="2Oq$k0">
                                  <node concept="1Q80Hx" id="30J9Cm$_FYc" role="2Oq$k0" />
                                  <node concept="liA8E" id="30J9Cm$_GiH" role="2OqNvi">
                                    <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="30J9Cm$_GFO" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                                </node>
                              </node>
                              <node concept="liA8E" id="30J9Cm$_Ht7" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                              </node>
                            </node>
                            <node concept="10Nm6u" id="3Ad6SpnR9Fi" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3Ad6SpnR9Fj" role="3cqZAp">
                        <node concept="3clFbS" id="3Ad6SpnR9Fk" role="3clFbx">
                          <node concept="3clFbF" id="3Ad6SpnR9Fl" role="3cqZAp">
                            <node concept="2OqwBi" id="3Ad6SpnR9Fm" role="3clFbG">
                              <node concept="37vLTw" id="3Ad6SpnR9Fn" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Ad6SpnR9F6" resolve="ad" />
                              </node>
                              <node concept="liA8E" id="3Ad6SpnR9Fo" role="2OqNvi">
                                <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.create(jetbrains.mps.smodel.language.CreateAspectContext)" resolve="create" />
                                <node concept="37vLTw" id="3Ad6SpnR9Fp" role="37wK5m">
                                  <ref role="3cqZAo" node="3Ad6SpnR9Fb" resolve="cac" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3Ad6SpnR9Fq" role="3cqZAp">
                            <node concept="37vLTI" id="3Ad6SpnR9Fr" role="3clFbG">
                              <node concept="37vLTw" id="3Ad6SpnR9Fs" role="37vLTJ">
                                <ref role="3cqZAo" node="30J9Cm$_j38" resolve="editorAspectModel" />
                              </node>
                              <node concept="1qvjxa" id="3Ad6SpnR9Ft" role="37vLTx">
                                <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                                <node concept="37vLTw" id="3Ad6SpnR9Fu" role="1qvjxb">
                                  <ref role="3cqZAo" node="30J9Cm$_C12" resolve="langModule" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="3Ad6SpnR9Fv" role="3clFbw">
                          <node concept="2OqwBi" id="3Ad6SpnR9Fw" role="3uHU7w">
                            <node concept="37vLTw" id="3Ad6SpnR9Fx" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Ad6SpnR9F6" resolve="ad" />
                            </node>
                            <node concept="liA8E" id="3Ad6SpnR9Fy" role="2OqNvi">
                              <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.canCreate(jetbrains.mps.smodel.language.CreateAspectContext)" resolve="canCreate" />
                              <node concept="37vLTw" id="3Ad6SpnR9Fz" role="37wK5m">
                                <ref role="3cqZAo" node="3Ad6SpnR9Fb" resolve="cac" />
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="3Ad6SpnR9F$" role="3uHU7B">
                            <node concept="37vLTw" id="3Ad6SpnR9F_" role="3uHU7B">
                              <ref role="3cqZAo" node="3Ad6SpnR9F6" resolve="ad" />
                            </node>
                            <node concept="10Nm6u" id="3Ad6SpnR9FA" role="3uHU7w" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="30J9Cm$_kfw" role="3clFbw">
                      <node concept="10Nm6u" id="30J9Cm$_kq2" role="3uHU7w" />
                      <node concept="37vLTw" id="30J9Cm$_k0J" role="3uHU7B">
                        <ref role="3cqZAo" node="30J9Cm$_j38" resolve="editorAspectModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="30J9Cm$_DKm" role="3cqZAp">
                    <node concept="3clFbS" id="30J9Cm$_DKo" role="3clFbx">
                      <node concept="3cpWs6" id="30J9Cm$_FaE" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="30J9Cm$_Ede" role="3clFbw">
                      <node concept="10Nm6u" id="30J9Cm$_EmG" role="3uHU7w" />
                      <node concept="37vLTw" id="30J9Cm$_DSI" role="3uHU7B">
                        <ref role="3cqZAo" node="30J9Cm$_j38" resolve="editorAspectModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7Hlf$KPab_3" role="3cqZAp">
                    <node concept="3cpWsn" id="7Hlf$KPab_4" role="3cpWs9">
                      <property role="TrG5h" value="editor" />
                      <node concept="3Tqbb2" id="7Hlf$KPab_5" role="1tU5fm">
                        <ref role="ehGHo" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="30J9Cm$_mQl" role="33vP2m">
                        <node concept="37vLTw" id="30J9Cm$_mAT" role="2Oq$k0">
                          <ref role="3cqZAo" node="30J9Cm$_j38" resolve="editorAspectModel" />
                        </node>
                        <node concept="15Ty1b" id="30J9Cm$_n5y" role="2OqNvi">
                          <ref role="I8UWU" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="30J9Cm$_tvG" role="3cqZAp">
                    <node concept="2YIFZM" id="7Hlf$KPab_6" role="3clFbG">
                      <ref role="1Pybhc" to="ryx4:yfdOY36$xf" resolve="ConceptAspectsHelper" />
                      <ref role="37wK5l" to="ryx4:2$SWsiCtwZI" resolve="attachNewConceptAspect" />
                      <node concept="2ZBlsa" id="SMdHsk1CQJ" role="37wK5m" />
                      <node concept="37vLTw" id="30J9Cm$_sF6" role="37wK5m">
                        <ref role="3cqZAo" node="7Hlf$KPab_4" resolve="editor" />
                      </node>
                      <node concept="37vLTw" id="30J9Cm$_tiC" role="37wK5m">
                        <ref role="3cqZAo" node="30J9Cm$_j38" resolve="editorAspectModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7Hlf$KPab_c" role="3cqZAp">
                    <node concept="2OqwBi" id="7Hlf$KPab_d" role="3clFbG">
                      <node concept="2OqwBi" id="7Hlf$KPab_e" role="2Oq$k0">
                        <node concept="1Q80Hx" id="7Hlf$KPab_f" role="2Oq$k0" />
                        <node concept="liA8E" id="7Hlf$KPab_g" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorContext.getEditorPanelManager()" resolve="getEditorPanelManager" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7Hlf$KPab_h" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorPanelManager.openEditor(org.jetbrains.mps.openapi.model.SNode)" resolve="openEditor" />
                        <node concept="37vLTw" id="7Hlf$KPab_i" role="37wK5m">
                          <ref role="3cqZAo" node="7Hlf$KPab_4" resolve="editor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="27VH4U" id="SMdHsk1_iC" role="2jiSrf">
                <node concept="3clFbS" id="SMdHsk1_iD" role="2VODD2">
                  <node concept="3SKdUt" id="SMdHsk6NRw" role="3cqZAp">
                    <node concept="1PaTwC" id="SMdHsk6NRx" role="1aUNEU">
                      <node concept="3oM_SD" id="SMdHsk6NRy" role="1PaTwD">
                        <property role="3oM_SC" value="while" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NTO" role="1PaTwD">
                        <property role="3oM_SC" value="node" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NUa" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NUe" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NUA" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NUX" role="1PaTwD">
                        <property role="3oM_SC" value="editable" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NVr" role="1PaTwD">
                        <property role="3oM_SC" value="model" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NVy" role="1PaTwD">
                        <property role="3oM_SC" value="(MPS" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NWC" role="1PaTwD">
                        <property role="3oM_SC" value="doesn't" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NX5" role="1PaTwD">
                        <property role="3oM_SC" value="show" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NXv" role="1PaTwD">
                        <property role="3oM_SC" value="context" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NYg" role="1PaTwD">
                        <property role="3oM_SC" value="assistant" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NYr" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NYw" role="1PaTwD">
                        <property role="3oM_SC" value="r/o" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6NZf" role="1PaTwD">
                        <property role="3oM_SC" value="models," />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="SMdHsk6OfT" role="3cqZAp">
                    <node concept="1PaTwC" id="SMdHsk6OfU" role="1aUNEU">
                      <node concept="3oM_SD" id="SMdHsk6OfV" role="1PaTwD">
                        <property role="3oM_SC" value="its" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OhE" role="1PaTwD">
                        <property role="3oM_SC" value="super-concept" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Oj0" role="1PaTwD">
                        <property role="3oM_SC" value="(here," />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OjI" role="1PaTwD">
                        <property role="3oM_SC" value="parameterObject)," />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Omp" role="1PaTwD">
                        <property role="3oM_SC" value="could" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OnQ" role="1PaTwD">
                        <property role="3oM_SC" value="come" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OnW" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Oom" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Opx" role="1PaTwD">
                        <property role="3oM_SC" value="read-only" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Op$" role="1PaTwD">
                        <property role="3oM_SC" value="model" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OpF" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OpK" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Oq8" role="1PaTwD">
                        <property role="3oM_SC" value="shall" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Oqz" role="1PaTwD">
                        <property role="3oM_SC" value="not" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OqW" role="1PaTwD">
                        <property role="3oM_SC" value="attempt" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Orp" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6Ort" role="1PaTwD">
                        <property role="3oM_SC" value="create" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OrT" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="SMdHsk6OQm" role="3cqZAp">
                    <node concept="1PaTwC" id="SMdHsk6OQn" role="1aUNEU">
                      <node concept="3oM_SD" id="SMdHsk6OWL" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OWO" role="1PaTwD">
                        <property role="3oM_SC" value="new" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OWU" role="1PaTwD">
                        <property role="3oM_SC" value="aspect" />
                      </node>
                      <node concept="3oM_SD" id="SMdHsk6OX2" role="1PaTwD">
                        <property role="3oM_SC" value="there" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="SMdHsk1A0R" role="3cqZAp">
                    <node concept="3fqX7Q" id="SMdHsk1BS1" role="3clFbG">
                      <node concept="2OqwBi" id="SMdHsk1BS3" role="3fr31v">
                        <node concept="2JrnkZ" id="SMdHsk1BS4" role="2Oq$k0">
                          <node concept="2OqwBi" id="SMdHsk1BS5" role="2JrQYb">
                            <node concept="2ZBlsa" id="SMdHsk1BS6" role="2Oq$k0" />
                            <node concept="I4A8Y" id="SMdHsk1BS7" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="liA8E" id="SMdHsk1BS8" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="SMdHsk0Mhh" role="2ZBHrp">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="yfdOY31Tdx" role="aenpr">
          <node concept="1hCUdq" id="yfdOY31Tdz" role="1hCUd6">
            <node concept="3clFbS" id="yfdOY31Td_" role="2VODD2">
              <node concept="3clFbF" id="yfdOY31UTS" role="3cqZAp">
                <node concept="Xl_RD" id="yfdOY31UTR" role="3clFbG">
                  <property role="Xl_RC" value="Make rootable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="yfdOY31TdB" role="IWgqQ">
            <node concept="3clFbS" id="yfdOY31TdD" role="2VODD2">
              <node concept="3clFbF" id="yfdOY34QKQ" role="3cqZAp">
                <node concept="37vLTI" id="yfdOY34REY" role="3clFbG">
                  <node concept="3clFbT" id="yfdOY34RFw" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="yfdOY34QT3" role="37vLTJ">
                    <node concept="7Obwk" id="yfdOY34QKP" role="2Oq$k0" />
                    <node concept="3TrcHB" id="yfdOY34Rau" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="yfdOY328$q" role="2jiSrf">
            <node concept="3clFbS" id="yfdOY328$r" role="2VODD2">
              <node concept="3SKdUt" id="yfdOY33wU8" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXnYMm" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXnYMn" role="1PaTwD">
                    <property role="3oM_SC" value="Suggesting" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMo" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMp" role="1PaTwD">
                    <property role="3oM_SC" value="make" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMq" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMr" role="1PaTwD">
                    <property role="3oM_SC" value="concept" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMs" role="1PaTwD">
                    <property role="3oM_SC" value="rootable" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMt" role="1PaTwD">
                    <property role="3oM_SC" value="if:" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="yfdOY33xVR" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXnYMu" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXnYMv" role="1PaTwD">
                    <property role="3oM_SC" value="1." />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMw" role="1PaTwD">
                    <property role="3oM_SC" value="Concept" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMx" role="1PaTwD">
                    <property role="3oM_SC" value="has" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMy" role="1PaTwD">
                    <property role="3oM_SC" value="no" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMz" role="1PaTwD">
                    <property role="3oM_SC" value="super-concepts" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="yfdOY33yVw" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXnYM$" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXnYM_" role="1PaTwD">
                    <property role="3oM_SC" value="2." />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMA" role="1PaTwD">
                    <property role="3oM_SC" value="There" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMB" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMC" role="1PaTwD">
                    <property role="3oM_SC" value="no" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMD" role="1PaTwD">
                    <property role="3oM_SC" value="other" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYME" role="1PaTwD">
                    <property role="3oM_SC" value="concepts" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMF" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMG" role="1PaTwD">
                    <property role="3oM_SC" value="this" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMH" role="1PaTwD">
                    <property role="3oM_SC" value="model" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMI" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMJ" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMK" role="1PaTwD">
                    <property role="3oM_SC" value="containment" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYML" role="1PaTwD">
                    <property role="3oM_SC" value="link" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMM" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMN" role="1PaTwD">
                    <property role="3oM_SC" value="this" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMO" role="1PaTwD">
                    <property role="3oM_SC" value="concept" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="yfdOY31V_d" role="3cqZAp">
                <node concept="22lmx$" id="7Hlf$KP64_M" role="3clFbw">
                  <node concept="2OqwBi" id="7Hlf$KP66Ar" role="3uHU7w">
                    <node concept="7Obwk" id="7Hlf$KP66al" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7Hlf$KP67kd" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="yfdOY329xz" role="3uHU7B">
                    <node concept="7Obwk" id="yfdOY329iU" role="2Oq$k0" />
                    <node concept="3TrcHB" id="yfdOY329W9" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="yfdOY31V_f" role="3clFbx">
                  <node concept="3cpWs6" id="yfdOY328xF" role="3cqZAp">
                    <node concept="3clFbT" id="yfdOY328xY" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="yfdOY32a5T" role="3cqZAp">
                <node concept="2OqwBi" id="yfdOY32SGA" role="3clFbG">
                  <node concept="2OqwBi" id="yfdOY32KH8" role="2Oq$k0">
                    <node concept="2OqwBi" id="yfdOY32rsm" role="2Oq$k0">
                      <node concept="2OqwBi" id="F6gkAZqTbL" role="2Oq$k0">
                        <node concept="2OqwBi" id="yfdOY32bZ1" role="2Oq$k0">
                          <node concept="2OqwBi" id="yfdOY32aHX" role="2Oq$k0">
                            <node concept="7Obwk" id="yfdOY32a5R" role="2Oq$k0" />
                            <node concept="I4A8Y" id="yfdOY32bcH" role="2OqNvi" />
                          </node>
                          <node concept="2RRcyG" id="yfdOY32ckx" role="2OqNvi">
                            <node concept="chp4Y" id="5QK5AMJp7wX" role="3MHsoP">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="13MTOL" id="F6gkAZr35d" role="2OqNvi">
                          <ref role="13MTZf" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="yfdOY32s2C" role="2OqNvi">
                        <node concept="1bVj0M" id="yfdOY32s2E" role="23t8la">
                          <node concept="3clFbS" id="yfdOY32s2F" role="1bW5cS">
                            <node concept="3clFbF" id="yfdOY32t20" role="3cqZAp">
                              <node concept="1Wc70l" id="7Hlf$KPwrW6" role="3clFbG">
                                <node concept="3y3z36" id="7Hlf$KPwuxp" role="3uHU7B">
                                  <node concept="10Nm6u" id="7Hlf$KPwv1j" role="3uHU7w" />
                                  <node concept="2OqwBi" id="7Hlf$KPwsLw" role="3uHU7B">
                                    <node concept="37vLTw" id="7Hlf$KPwsoJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WuR" resolve="it" />
                                    </node>
                                    <node concept="3TrEf2" id="7Hlf$KPwtD1" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="yfdOY32DWg" role="3uHU7w">
                                  <node concept="2OqwBi" id="yfdOY32u1F" role="2Oq$k0">
                                    <node concept="37vLTw" id="yfdOY32t1Z" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WuR" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="yfdOY32C8o" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                    </node>
                                  </node>
                                  <node concept="21noJN" id="3Ftr4R8$mIf" role="2OqNvi">
                                    <node concept="21nZrQ" id="3Ftr4R8$mIg" role="21noJM">
                                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0WuR" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0WuS" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="yfdOY32L_P" role="2OqNvi">
                      <node concept="1bVj0M" id="yfdOY32L_R" role="23t8la">
                        <node concept="3clFbS" id="yfdOY32L_S" role="1bW5cS">
                          <node concept="3clFbF" id="7Hlf$KPwk1V" role="3cqZAp">
                            <node concept="2OqwBi" id="7Hlf$KPwksA" role="3clFbG">
                              <node concept="7Obwk" id="7Hlf$KPwk1T" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORfzJ" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                                <node concept="2OqwBi" id="70OdufORfzL" role="37wK5m">
                                  <node concept="37vLTw" id="70OdufORfzM" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WuT" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="70OdufORfzN" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0WuT" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0WuU" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1v1jN8" id="yfdOY32Ure" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="aenpk" id="78qF3ppIQeP" role="aenpr">
          <node concept="27VH4U" id="78qF3ppIQeR" role="aenpu">
            <node concept="3clFbS" id="78qF3ppIQeT" role="2VODD2">
              <node concept="3cpWs8" id="78qF3ppISsV" role="3cqZAp">
                <node concept="3cpWsn" id="78qF3ppISsW" role="3cpWs9">
                  <property role="TrG5h" value="links" />
                  <node concept="A3Dl8" id="78qF3ppISsX" role="1tU5fm">
                    <node concept="3Tqbb2" id="78qF3ppISsY" role="A3Ik2">
                      <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78qF3ppISsZ" role="33vP2m">
                    <node concept="2OqwBi" id="78qF3ppISt0" role="2Oq$k0">
                      <node concept="7Obwk" id="78qF3ppISt1" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORfzO" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="78qF3ppISt3" role="2OqNvi">
                      <node concept="1bVj0M" id="78qF3ppISt4" role="23t8la">
                        <node concept="3clFbS" id="78qF3ppISt5" role="1bW5cS">
                          <node concept="3clFbF" id="78qF3ppISt6" role="3cqZAp">
                            <node concept="3fqX7Q" id="3XR0QgVCkeY" role="3clFbG">
                              <node concept="2OqwBi" id="3XR0QgVCkeW" role="3fr31v">
                                <node concept="37vLTw" id="3XR0QgVCkeT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0WuV" resolve="it" />
                                </node>
                                <node concept="1QLmlb" id="3XR0QgVCkeX" role="2OqNvi">
                                  <node concept="ZC_QK" id="3XR0QgVCkeV" role="1QLmnL">
                                    <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    <node concept="ZC_QK" id="3XR0QgVCkeU" role="2aWVGa">
                                      <ref role="2aWVGs" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0WuV" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0WuW" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="78qF3ppISte" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXnYMP" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXnYMQ" role="1PaTwD">
                    <property role="3oM_SC" value="skipping" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMR" role="1PaTwD">
                    <property role="3oM_SC" value="abstract" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMS" role="1PaTwD">
                    <property role="3oM_SC" value="nodes" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMT" role="1PaTwD">
                    <property role="3oM_SC" value="&amp;" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMU" role="1PaTwD">
                    <property role="3oM_SC" value="smart" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXnYMV" role="1PaTwD">
                    <property role="3oM_SC" value="references" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="78qF3ppJrG0" role="3cqZAp">
                <node concept="1Wc70l" id="78qF3ppJu$R" role="3cqZAk">
                  <node concept="1eOMI4" id="78qF3ppJv7t" role="3uHU7w">
                    <node concept="22lmx$" id="78qF3ppIXpQ" role="1eOMHV">
                      <node concept="3y3z36" id="78qF3ppIWrU" role="3uHU7B">
                        <node concept="2OqwBi" id="78qF3ppIW4Y" role="3uHU7B">
                          <node concept="37vLTw" id="78qF3ppIW4Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="78qF3ppISsW" resolve="links" />
                          </node>
                          <node concept="34oBXx" id="78qF3ppIW50" role="2OqNvi" />
                        </node>
                        <node concept="3cmrfG" id="78qF3ppIW51" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="78qF3ppIXSY" role="3uHU7w">
                        <node concept="2OqwBi" id="78qF3ppIXT0" role="3fr31v">
                          <node concept="2OqwBi" id="78qF3ppIXT1" role="2Oq$k0">
                            <node concept="2OqwBi" id="78qF3ppIXT2" role="2Oq$k0">
                              <node concept="37vLTw" id="78qF3ppIXT3" role="2Oq$k0">
                                <ref role="3cqZAo" node="78qF3ppISsW" resolve="links" />
                              </node>
                              <node concept="1uHKPH" id="78qF3ppIXT4" role="2OqNvi" />
                            </node>
                            <node concept="3TrcHB" id="78qF3ppIXT5" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                            </node>
                          </node>
                          <node concept="21noJN" id="3Ftr4R8$mIh" role="2OqNvi">
                            <node concept="21nZrQ" id="3Ftr4R8$mIi" role="21noJM">
                              <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="78qF3ppJtNr" role="3uHU7B">
                    <node concept="2OqwBi" id="78qF3ppJtNt" role="3fr31v">
                      <node concept="7Obwk" id="78qF3ppJtNu" role="2Oq$k0" />
                      <node concept="3TrcHB" id="78qF3ppJtNv" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="4aTAL7cT4JY" role="aenpr">
            <node concept="1hCUdq" id="4aTAL7cT4K0" role="1hCUd6">
              <node concept="3clFbS" id="4aTAL7cT4K2" role="2VODD2">
                <node concept="3clFbF" id="4aTAL7cT6sA" role="3cqZAp">
                  <node concept="Xl_RD" id="4aTAL7cT6s_" role="3clFbG">
                    <property role="Xl_RC" value="Set Alias" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="4aTAL7cT4K4" role="IWgqQ">
              <node concept="3clFbS" id="4aTAL7cT4K6" role="2VODD2">
                <node concept="3clFbF" id="4aTAL7cU8_g" role="3cqZAp">
                  <node concept="37vLTI" id="4aTAL7cU9yS" role="3clFbG">
                    <node concept="2OqwBi" id="4aTAL7cU8Ht" role="37vLTJ">
                      <node concept="7Obwk" id="4aTAL7cU8_f" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4aTAL7cU8YS" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="4aTAL7cRgrG" role="37vLTx">
                      <node concept="Xl_RD" id="4aTAL7cRgrJ" role="3uHU7w">
                        <property role="Xl_RC" value="_Alias&gt;" />
                      </node>
                      <node concept="3cpWs3" id="4aTAL7cRgO7" role="3uHU7B">
                        <node concept="2OqwBi" id="4aTAL7cRh7u" role="3uHU7w">
                          <node concept="7Obwk" id="4aTAL7cUa2P" role="2Oq$k0" />
                          <node concept="3TrcHB" id="4aTAL7cRhq$" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4aTAL7cRg4K" role="3uHU7B">
                          <property role="Xl_RC" value="&lt;" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4aTAL7cUkYO" role="3cqZAp">
                  <node concept="2OqwBi" id="4aTAL7cUlbF" role="3clFbG">
                    <node concept="7Obwk" id="4aTAL7cUkYM" role="2Oq$k0" />
                    <node concept="1OKiuA" id="4aTAL7cUlva" role="2OqNvi">
                      <node concept="1Q80Hx" id="4aTAL7cUlx5" role="lBI5i" />
                      <node concept="eBIwv" id="4aTAL7cUlCR" role="lGT1i">
                        <ref role="fyFUz" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                      </node>
                      <node concept="3cmrfG" id="4aTAL7cUlH7" role="3dN3m$">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="4aTAL7cUlIp" role="mNZMC">
                        <property role="3cmrfH" value="-1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="27VH4U" id="4aTAL7cT7g4" role="2jiSrf">
              <node concept="3clFbS" id="4aTAL7cT7g5" role="2VODD2">
                <node concept="3clFbJ" id="78qF3ppL2A6" role="3cqZAp">
                  <node concept="3clFbS" id="78qF3ppL2A8" role="3clFbx">
                    <node concept="3cpWs6" id="78qF3ppL3IF" role="3cqZAp">
                      <node concept="3clFbT" id="78qF3ppL3SE" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5x65j4jCjJn" role="3clFbw">
                    <node concept="2OqwBi" id="78qF3ppJbiu" role="2Oq$k0">
                      <node concept="7Obwk" id="78qF3ppJbiv" role="2Oq$k0" />
                      <node concept="3TrcHB" id="78qF3ppJbiw" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="5x65j4jClgk" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbH" id="78qF3ppL2r_" role="3cqZAp" />
                <node concept="3cpWs8" id="78qF3ppLZJZ" role="3cqZAp">
                  <node concept="3cpWsn" id="78qF3ppLZK2" role="3cpWs9">
                    <property role="TrG5h" value="superContepts" />
                    <node concept="2hMVRd" id="78qF3ppLZJV" role="1tU5fm">
                      <node concept="3Tqbb2" id="78qF3ppM09d" role="2hN53Y">
                        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="78qF3ppM1VA" role="33vP2m">
                      <node concept="2i4dXS" id="78qF3ppM1Vx" role="2ShVmc">
                        <node concept="3Tqbb2" id="78qF3ppM1Vy" role="HW$YZ">
                          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="78qF3ppLWaD" role="I$8f6">
                          <node concept="7Obwk" id="78qF3ppLWaE" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORfzQ" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:2A8AB0rAWpG" resolve="getAllSuperConcepts" />
                            <node concept="3clFbT" id="70OdufORfzS" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="78qF3ppM7hI" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYMW" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYMX" role="1PaTwD">
                      <property role="3oM_SC" value="Suggesting" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYMY" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYMZ" role="1PaTwD">
                      <property role="3oM_SC" value="specify" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN0" role="1PaTwD">
                      <property role="3oM_SC" value="alias" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN1" role="1PaTwD">
                      <property role="3oM_SC" value="if:" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="78qF3ppM8fU" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYN2" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYN3" role="1PaTwD">
                      <property role="3oM_SC" value="1." />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN4" role="1PaTwD">
                      <property role="3oM_SC" value="one" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN5" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN6" role="1PaTwD">
                      <property role="3oM_SC" value="super-concepts" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN7" role="1PaTwD">
                      <property role="3oM_SC" value="has" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN8" role="1PaTwD">
                      <property role="3oM_SC" value="alias" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN9" role="1PaTwD">
                      <property role="3oM_SC" value="specified" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="78qF3ppM9gl" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYNa" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYNb" role="1PaTwD">
                      <property role="3oM_SC" value="2." />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNc" role="1PaTwD">
                      <property role="3oM_SC" value="any" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNd" role="1PaTwD">
                      <property role="3oM_SC" value="concept" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNe" role="1PaTwD">
                      <property role="3oM_SC" value="has" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNf" role="1PaTwD">
                      <property role="3oM_SC" value="chid" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNg" role="1PaTwD">
                      <property role="3oM_SC" value="reference" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNh" role="1PaTwD">
                      <property role="3oM_SC" value="containing" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNi" role="1PaTwD">
                      <property role="3oM_SC" value="super-concept" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNj" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNk" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNl" role="1PaTwD">
                      <property role="3oM_SC" value="one" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="78qF3ppMa7D" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnYNm" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnYNn" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNo" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNp" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNq" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNr" role="1PaTwD">
                      <property role="3oM_SC" value="means:" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNs" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNt" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNu" role="1PaTwD">
                      <property role="3oM_SC" value="will" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNv" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNw" role="1PaTwD">
                      <property role="3oM_SC" value="available" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNx" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNy" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNz" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN$" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYN_" role="1PaTwD">
                      <property role="3oM_SC" value="competion" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNA" role="1PaTwD">
                      <property role="3oM_SC" value="menu" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnYNB" role="1PaTwD">
                      <property role="3oM_SC" value="items" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="78qF3ppLgNj" role="3cqZAp">
                  <node concept="22lmx$" id="78qF3ppLh8u" role="3cqZAk">
                    <node concept="2OqwBi" id="78qF3ppLh8K" role="3uHU7B">
                      <node concept="37vLTw" id="78qF3ppM6m_" role="2Oq$k0">
                        <ref role="3cqZAo" node="78qF3ppLZK2" resolve="superContepts" />
                      </node>
                      <node concept="2HwmR7" id="78qF3ppLh8P" role="2OqNvi">
                        <node concept="1bVj0M" id="78qF3ppLh8Q" role="23t8la">
                          <node concept="3clFbS" id="78qF3ppLh8R" role="1bW5cS">
                            <node concept="3clFbF" id="78qF3ppLh8S" role="3cqZAp">
                              <node concept="2OqwBi" id="5x65j4jCn5x" role="3clFbG">
                                <node concept="2OqwBi" id="78qF3ppLh8V" role="2Oq$k0">
                                  <node concept="37vLTw" id="78qF3ppLh8W" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WuX" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="78qF3ppLh8X" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                                  </node>
                                </node>
                                <node concept="17RvpY" id="5x65j4jCodZ" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0WuX" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0WuY" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="78qF3ppLix_" role="3uHU7w">
                      <node concept="2OqwBi" id="78qF3ppLixA" role="2Oq$k0">
                        <node concept="2OqwBi" id="78qF3ppLixB" role="2Oq$k0">
                          <node concept="2OqwBi" id="78qF3ppLixC" role="2Oq$k0">
                            <node concept="2OqwBi" id="78qF3ppLixD" role="2Oq$k0">
                              <node concept="7Obwk" id="78qF3ppLixE" role="2Oq$k0" />
                              <node concept="I4A8Y" id="78qF3ppLixF" role="2OqNvi" />
                            </node>
                            <node concept="2RRcyG" id="78qF3ppLixG" role="2OqNvi">
                              <node concept="chp4Y" id="5QK5AMJp7wY" role="3MHsoP">
                                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                              </node>
                            </node>
                          </node>
                          <node concept="13MTOL" id="78qF3ppLixH" role="2OqNvi">
                            <ref role="13MTZf" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                          </node>
                        </node>
                        <node concept="3zZkjj" id="78qF3ppLixI" role="2OqNvi">
                          <node concept="1bVj0M" id="78qF3ppLixJ" role="23t8la">
                            <node concept="3clFbS" id="78qF3ppLixK" role="1bW5cS">
                              <node concept="3clFbF" id="78qF3ppLixL" role="3cqZAp">
                                <node concept="1Wc70l" id="78qF3ppLixM" role="3clFbG">
                                  <node concept="2OqwBi" id="78qF3ppLRUk" role="3uHU7w">
                                    <node concept="37vLTw" id="78qF3ppM6LI" role="2Oq$k0">
                                      <ref role="3cqZAo" node="78qF3ppLZK2" resolve="superContepts" />
                                    </node>
                                    <node concept="3JPx81" id="78qF3ppLUaj" role="2OqNvi">
                                      <node concept="2OqwBi" id="78qF3ppLV3U" role="25WWJ7">
                                        <node concept="37vLTw" id="78qF3ppLU$5" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0WuZ" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="78qF3ppLVGP" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="78qF3ppLixS" role="3uHU7B">
                                    <node concept="2OqwBi" id="78qF3ppLixT" role="2Oq$k0">
                                      <node concept="37vLTw" id="78qF3ppLixU" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WuZ" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="78qF3ppLixV" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="3Ftr4R8$mIj" role="2OqNvi">
                                      <node concept="21nZrQ" id="3Ftr4R8$mIk" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WuZ" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0Wv0" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="78qF3ppLiy0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="78qF3ppIzZ5" role="aenpr">
            <node concept="1hCUdq" id="78qF3ppIzZ6" role="1hCUd6">
              <node concept="3clFbS" id="78qF3ppIzZ7" role="2VODD2">
                <node concept="3clFbF" id="78qF3ppIzZ8" role="3cqZAp">
                  <node concept="Xl_RD" id="78qF3ppIzZ9" role="3clFbG">
                    <property role="Xl_RC" value="Add name property" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="78qF3ppIzZa" role="IWgqQ">
              <node concept="3clFbS" id="78qF3ppIzZb" role="2VODD2">
                <node concept="3clFbF" id="78qF3ppJScI" role="3cqZAp">
                  <node concept="2OqwBi" id="78qF3ppJUeN" role="3clFbG">
                    <node concept="2OqwBi" id="78qF3ppJSpE" role="2Oq$k0">
                      <node concept="7Obwk" id="78qF3ppJScG" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="78qF3ppJSHS" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="78qF3ppJWaB" role="2OqNvi">
                      <node concept="2c44tf" id="78qF3ppJXrH" role="25WWJ7">
                        <node concept="PrWs8" id="78qF3ppJXR$" role="2c44tc">
                          <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="27VH4U" id="78qF3ppIzZw" role="2jiSrf">
              <node concept="3clFbS" id="78qF3ppIzZx" role="2VODD2">
                <node concept="3clFbJ" id="78qF3ppJxlO" role="3cqZAp">
                  <node concept="3clFbS" id="78qF3ppJxlQ" role="3clFbx">
                    <node concept="3cpWs6" id="78qF3ppJxW7" role="3cqZAp">
                      <node concept="3clFbT" id="78qF3ppJy1D" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78qF3ppJ34t" role="3clFbw">
                    <node concept="7Obwk" id="78qF3ppJ34u" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORfzT" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                      <node concept="35c_gC" id="70OdufORfzV" role="37wK5m">
                        <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="78qF3ppJ2Ab" role="3cqZAp">
                  <node concept="22lmx$" id="78qF3ppJlmy" role="3cqZAk">
                    <node concept="2OqwBi" id="78qF3ppJkcp" role="3uHU7B">
                      <node concept="7Obwk" id="78qF3ppJjWI" role="2Oq$k0" />
                      <node concept="3TrcHB" id="78qF3ppJkEH" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="78qF3ppJR7J" role="3uHU7w">
                      <node concept="2OqwBi" id="78qF3ppJJZr" role="2Oq$k0">
                        <node concept="2OqwBi" id="78qF3ppJo4J" role="2Oq$k0">
                          <node concept="2OqwBi" id="78qF3ppJlFb" role="2Oq$k0">
                            <node concept="2OqwBi" id="78qF3ppJlFc" role="2Oq$k0">
                              <node concept="7Obwk" id="78qF3ppJlFd" role="2Oq$k0" />
                              <node concept="I4A8Y" id="78qF3ppJlFe" role="2OqNvi" />
                            </node>
                            <node concept="2RRcyG" id="78qF3ppJlFf" role="2OqNvi">
                              <node concept="chp4Y" id="5QK5AMJp7wZ" role="3MHsoP">
                                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                              </node>
                            </node>
                          </node>
                          <node concept="13MTOL" id="78qF3ppJGsQ" role="2OqNvi">
                            <ref role="13MTZf" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                          </node>
                        </node>
                        <node concept="3zZkjj" id="78qF3ppJKEJ" role="2OqNvi">
                          <node concept="1bVj0M" id="78qF3ppJKEL" role="23t8la">
                            <node concept="3clFbS" id="78qF3ppJKEM" role="1bW5cS">
                              <node concept="3clFbF" id="78qF3ppJKXm" role="3cqZAp">
                                <node concept="1Wc70l" id="78qF3ppJO7o" role="3clFbG">
                                  <node concept="3clFbC" id="78qF3ppJQga" role="3uHU7w">
                                    <node concept="7Obwk" id="78qF3ppJQBW" role="3uHU7w" />
                                    <node concept="2OqwBi" id="78qF3ppJOTl" role="3uHU7B">
                                      <node concept="37vLTw" id="78qF3ppJOrT" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Wv1" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="78qF3ppJPvU" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="78qF3ppJM_O" role="3uHU7B">
                                    <node concept="2OqwBi" id="78qF3ppJLh4" role="2Oq$k0">
                                      <node concept="37vLTw" id="78qF3ppJKXl" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Wv1" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="78qF3ppJLL0" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="3Ftr4R8$mIl" role="2OqNvi">
                                      <node concept="21nZrQ" id="3Ftr4R8$mIm" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0Wv1" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0Wv2" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="78qF3ppJRJW" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2j_NTm" id="1ZDuSTZq754" role="1Qtc8$" />
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjJ814">
    <ref role="aqKnT" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    <node concept="22hDWj" id="6UtCO5dGILe" role="22hAXT" />
    <node concept="1Qtc8_" id="1wEcoXjJ815" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ816" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ817" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJ818" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="1wEcoXjJ819" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ81c" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ81a" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ81b" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ81e" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ81f" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ81g" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ81h" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJ81i" role="3clFbG">
                <node concept="3w_OXm" id="1wEcoXjJ81j" role="2OqNvi" />
                <node concept="2OqwBi" id="1wEcoXjJ81k" role="2Oq$k0">
                  <node concept="3TrEf2" id="1wEcoXjJ81l" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                  </node>
                  <node concept="7Obwk" id="1wEcoXjJ81n" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1GhOrh" id="1wEcoXjJ81o" role="aenpr">
          <node concept="3Tqbb2" id="1wEcoXjJ81p" role="2ZBHrp">
            <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
          </node>
          <node concept="1GhMSn" id="1wEcoXjJ81q" role="1GhOrs">
            <node concept="3clFbS" id="1wEcoXjJ81r" role="2VODD2">
              <node concept="3cpWs8" id="1wEcoXjJ81s" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ81t" role="3cpWs9">
                  <property role="TrG5h" value="aggregation" />
                  <node concept="10P_77" id="1wEcoXjJ81u" role="1tU5fm" />
                  <node concept="2OqwBi" id="1wEcoXjJ81v" role="33vP2m">
                    <node concept="2OqwBi" id="1wEcoXjJ81w" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ82D" role="2Oq$k0" />
                      <node concept="3TrcHB" id="1wEcoXjJ81y" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="21noJN" id="3Ftr4R8$mIn" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8$mIo" role="21noJM">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1wEcoXjJ81_" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ81A" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="2I9FWS" id="1wEcoXjJ81B" role="1tU5fm">
                    <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="2ShNRf" id="1wEcoXjJ81C" role="33vP2m">
                    <node concept="2T8Vx0" id="1wEcoXjJ81D" role="2ShVmc">
                      <node concept="2I9FWS" id="1wEcoXjJ81E" role="2T96Bj">
                        <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1wEcoXjJ81F" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ81G" role="3cpWs9">
                  <property role="TrG5h" value="enclosingConcept" />
                  <node concept="3Tqbb2" id="1wEcoXjJ81H" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ81I" role="33vP2m">
                    <node concept="7Obwk" id="1wEcoXjJ82E" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="1wEcoXjJ81K" role="2OqNvi">
                      <node concept="1xIGOp" id="1wEcoXjJ81L" role="1xVPHs" />
                      <node concept="1xMEDy" id="1wEcoXjJ81M" role="1xVPHs">
                        <node concept="chp4Y" id="1wEcoXjJ81N" role="ri$Ld">
                          <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1wEcoXjJ81O" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJ81P" role="3cpWs9">
                  <property role="TrG5h" value="directSupers" />
                  <node concept="_YKpA" id="1wEcoXjJ81Q" role="1tU5fm">
                    <node concept="3Tqbb2" id="2raaoKmZ87U" role="_ZDj9">
                      <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ81S" role="33vP2m">
                    <node concept="37vLTw" id="1wEcoXjJ81T" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ81G" resolve="enclosingConcept" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORfzW" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hMuxyK2" resolve="getImmediateSuperconcepts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="1wEcoXjJ81V" role="3cqZAp">
                <node concept="2GrKxI" id="1wEcoXjJ81W" role="2Gsz3X">
                  <property role="TrG5h" value="concept" />
                </node>
                <node concept="37vLTw" id="1wEcoXjJ81X" role="2GsD0m">
                  <ref role="3cqZAo" node="1wEcoXjJ81P" resolve="directSupers" />
                </node>
                <node concept="3clFbS" id="1wEcoXjJ81Y" role="2LFqv$">
                  <node concept="3cpWs8" id="1wEcoXjJ81Z" role="3cqZAp">
                    <node concept="3cpWsn" id="1wEcoXjJ820" role="3cpWs9">
                      <property role="TrG5h" value="links" />
                      <node concept="2OqwBi" id="1wEcoXjJ821" role="33vP2m">
                        <node concept="2GrUjf" id="1wEcoXjJ824" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1wEcoXjJ81W" resolve="concept" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORfzY" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                        </node>
                      </node>
                      <node concept="2I9FWS" id="1wEcoXjJ826" role="1tU5fm">
                        <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1wEcoXjJ827" role="3cqZAp">
                    <node concept="2OqwBi" id="1wEcoXjJ828" role="3clFbG">
                      <node concept="37vLTw" id="1wEcoXjJ829" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wEcoXjJ81A" resolve="result" />
                      </node>
                      <node concept="X8dFx" id="1wEcoXjJ82a" role="2OqNvi">
                        <node concept="2OqwBi" id="1wEcoXjJ82b" role="25WWJ7">
                          <node concept="37vLTw" id="1wEcoXjJ82c" role="2Oq$k0">
                            <ref role="3cqZAo" node="1wEcoXjJ820" resolve="links" />
                          </node>
                          <node concept="3zZkjj" id="1wEcoXjJ82d" role="2OqNvi">
                            <node concept="1bVj0M" id="1wEcoXjJ82e" role="23t8la">
                              <node concept="gl6BB" id="5W7E4fV0Wv3" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Wv4" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="1wEcoXjJ82h" role="1bW5cS">
                                <node concept="3clFbJ" id="1wEcoXjJ82i" role="3cqZAp">
                                  <node concept="3clFbS" id="1wEcoXjJ82j" role="3clFbx">
                                    <node concept="3cpWs6" id="1wEcoXjJ82k" role="3cqZAp">
                                      <node concept="2OqwBi" id="1wEcoXjJ82l" role="3cqZAk">
                                        <node concept="2OqwBi" id="1wEcoXjJ82m" role="2Oq$k0">
                                          <node concept="37vLTw" id="1wEcoXjJ82n" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5W7E4fV0Wv3" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="1wEcoXjJ82o" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                          </node>
                                        </node>
                                        <node concept="21noJN" id="3Ftr4R8$mIp" role="2OqNvi">
                                          <node concept="21nZrQ" id="3Ftr4R8$mIq" role="21noJM">
                                            <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1wEcoXjJ82r" role="3clFbw">
                                    <ref role="3cqZAo" node="1wEcoXjJ81t" resolve="aggregation" />
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="1wEcoXjJ82s" role="3cqZAp">
                                  <node concept="2OqwBi" id="1wEcoXjJ82t" role="3cqZAk">
                                    <node concept="2OqwBi" id="1wEcoXjJ82u" role="2Oq$k0">
                                      <node concept="37vLTw" id="1wEcoXjJ82v" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Wv3" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="1wEcoXjJ82w" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="3Ftr4R8$mIr" role="2OqNvi">
                                      <node concept="21nZrQ" id="3Ftr4R8$mIs" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
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
              <node concept="3clFbF" id="1wEcoXjJ82z" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ82$" role="3clFbG">
                  <node concept="ANE8D" id="1wEcoXjJ82_" role="2OqNvi" />
                  <node concept="2OqwBi" id="1wEcoXjJ82A" role="2Oq$k0">
                    <node concept="1VAtEI" id="1wEcoXjJ82B" role="2OqNvi" />
                    <node concept="37vLTw" id="1wEcoXjJ82C" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJ81A" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWgqT" id="1wEcoXjJ82F" role="1GhOri">
            <node concept="1hCUdq" id="1wEcoXjJ82G" role="1hCUd6">
              <node concept="3clFbS" id="1wEcoXjJ82H" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ82I" role="3cqZAp">
                  <node concept="3cpWs3" id="1wEcoXjJ82J" role="3clFbG">
                    <node concept="2OqwBi" id="1wEcoXjJ82K" role="3uHU7w">
                      <node concept="3TrcHB" id="1wEcoXjJ82L" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                      </node>
                      <node concept="2ZBlsa" id="1wEcoXjJ82O" role="2Oq$k0" />
                    </node>
                    <node concept="Xl_RD" id="1wEcoXjJ82N" role="3uHU7B">
                      <property role="Xl_RC" value="specializes " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="IWg2L" id="1wEcoXjJ82P" role="IWgqQ">
              <node concept="3clFbS" id="1wEcoXjJ82Q" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJ82R" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ82S" role="3clFbG">
                    <node concept="2oxUTD" id="1wEcoXjJ82T" role="2OqNvi">
                      <node concept="2ZBlsa" id="1wEcoXjJ832" role="2oxUTC" />
                    </node>
                    <node concept="2OqwBi" id="1wEcoXjJ82V" role="2Oq$k0">
                      <node concept="3TrEf2" id="1wEcoXjJ82W" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                      </node>
                      <node concept="7Obwk" id="1wEcoXjJ830" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1wEcoXjJ838" role="3cqZAp">
                  <node concept="2OqwBi" id="1wEcoXjJ833" role="3clFbG">
                    <node concept="7Obwk" id="1wEcoXjJ831" role="2Oq$k0" />
                    <node concept="1OKiuA" id="1wEcoXjJ834" role="2OqNvi">
                      <node concept="1Q80Hx" id="1wEcoXjJ835" role="lBI5i" />
                      <node concept="2B6iha" id="1wEcoXjJ836" role="lGT1i">
                        <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                      </node>
                      <node concept="3cmrfG" id="1wEcoXjJ837" role="3dN3m$">
                        <property role="3cmrfH" value="-1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ83c" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ83d" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ83e" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ83f" role="3cqZAp">
              <node concept="3fqX7Q" id="1wEcoXjJ83g" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJ83h" role="3fr31v">
                  <node concept="3TrcHB" id="1wEcoXjJ83i" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:24YP6ZDjW8M" resolve="unordered" />
                  </node>
                  <node concept="7Obwk" id="1wEcoXjJ83k" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ83l" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ83m" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ83n" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ83o" role="3cqZAp">
                <node concept="Xl_RD" id="1wEcoXjJ83p" role="3clFbG">
                  <property role="Xl_RC" value="unordered" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ83q" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ83r" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ83s" role="3cqZAp">
                <node concept="37vLTI" id="1wEcoXjJ83t" role="3clFbG">
                  <node concept="3clFbT" id="1wEcoXjJ83u" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ83v" role="37vLTJ">
                    <node concept="3TrcHB" id="1wEcoXjJ83w" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:24YP6ZDjW8M" resolve="unordered" />
                    </node>
                    <node concept="7Obwk" id="1wEcoXjJ83$" role="2Oq$k0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJ83F" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJ83A" role="3clFbG">
                  <node concept="7Obwk" id="1wEcoXjJ83_" role="2Oq$k0" />
                  <node concept="1OKiuA" id="1wEcoXjJ83B" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjJ83C" role="lBI5i" />
                    <node concept="2B6iha" id="1wEcoXjJ83D" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="1wEcoXjJ83E" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
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
  <node concept="3ICUPy" id="1wEcoXjJ83I">
    <ref role="aqKnT" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
    <node concept="22hDWj" id="6UtCO5dGILf" role="22hAXT" />
    <node concept="1Qtc8_" id="1wEcoXjJ83J" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ83K" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ83L" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJ83M" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="1wEcoXjJ83N" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJ83Q" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJ83O" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJ83P" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjJ83S" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjJ83T" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjJ83U" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJ83V" role="3cqZAp">
              <node concept="1Wc70l" id="1wEcoXjJ83W" role="3clFbG">
                <node concept="1eOMI4" id="1wEcoXjJ83X" role="3uHU7w">
                  <node concept="22lmx$" id="1wEcoXjJ83Y" role="1eOMHV">
                    <node concept="2OqwBi" id="1wEcoXjJ83Z" role="3uHU7w">
                      <node concept="7Obwk" id="1wEcoXjJ84h" role="2Oq$k0" />
                      <node concept="1BlSNk" id="1wEcoXjJ841" role="2OqNvi">
                        <ref role="1BmUXE" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                        <ref role="1Bn3mz" to="tpce:h0PrDRO" resolve="extends" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1wEcoXjJ842" role="3uHU7B">
                      <node concept="7Obwk" id="1wEcoXjJ84i" role="2Oq$k0" />
                      <node concept="1BlSNk" id="1wEcoXjJ844" role="2OqNvi">
                        <ref role="1BmUXE" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        <ref role="1Bn3mz" to="tpce:h0Pzm$Y" resolve="implements" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1wEcoXjJ845" role="3uHU7B">
                  <node concept="2OqwBi" id="1wEcoXjJ846" role="3uHU7B">
                    <node concept="2OqwBi" id="1wEcoXjJ847" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ84j" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1wEcoXjJ849" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="1wEcoXjJ84a" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjJ84b" role="3uHU7w">
                    <node concept="2OqwBi" id="1wEcoXjJ84c" role="2Oq$k0">
                      <node concept="7Obwk" id="1wEcoXjJ84k" role="2Oq$k0" />
                      <node concept="1mfA1w" id="1wEcoXjJ84e" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="1wEcoXjJ84f" role="2OqNvi">
                      <node concept="chp4Y" id="1wEcoXjJ84g" role="cj9EA">
                        <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjJ84l" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjJ84m" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjJ84n" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJ84o" role="3cqZAp">
                <node concept="Xl_RD" id="1wEcoXjJ84p" role="3clFbG">
                  <property role="Xl_RC" value="," />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjJ84q" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjJ84r" role="2VODD2">
              <node concept="3clFbJ" id="1wEcoXjJ84s" role="3cqZAp">
                <node concept="3clFbS" id="1wEcoXjJ84t" role="3clFbx">
                  <node concept="3clFbF" id="1wEcoXjJ856" role="3cqZAp">
                    <node concept="2OqwBi" id="1wEcoXjJ851" role="3clFbG">
                      <node concept="2OqwBi" id="1wEcoXjJ84v" role="2Oq$k0">
                        <node concept="2OqwBi" id="1wEcoXjJ84w" role="2Oq$k0">
                          <node concept="1PxgMI" id="1wEcoXjJ84x" role="2Oq$k0">
                            <node concept="2OqwBi" id="1wEcoXjJ84y" role="1m5AlR">
                              <node concept="7Obwk" id="1wEcoXjJ84Y" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1wEcoXjJ84$" role="2OqNvi" />
                            </node>
                            <node concept="chp4Y" id="714IaVdH1xv" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="1wEcoXjJ84_" role="2OqNvi">
                            <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                          </node>
                        </node>
                        <node concept="TSZUe" id="1wEcoXjJ84A" role="2OqNvi">
                          <node concept="2ShNRf" id="1wEcoXjJ84B" role="25WWJ7">
                            <node concept="2fJWfE" id="1wEcoXjJ84C" role="2ShVmc">
                              <node concept="3Tqbb2" id="1wEcoXjJ84D" role="3zrR0E">
                                <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1OKiuA" id="1wEcoXjJ852" role="2OqNvi">
                        <node concept="1Q80Hx" id="1wEcoXjJ853" role="lBI5i" />
                        <node concept="2B6iha" id="1wEcoXjJ854" role="lGT1i">
                          <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                        </node>
                        <node concept="3cmrfG" id="1wEcoXjJ855" role="3dN3m$">
                          <property role="3cmrfH" value="-1" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1wEcoXjJ857" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="1wEcoXjJ84E" role="3clFbw">
                  <node concept="2OqwBi" id="1wEcoXjJ84F" role="2Oq$k0">
                    <node concept="7Obwk" id="1wEcoXjJ84Z" role="2Oq$k0" />
                    <node concept="1mfA1w" id="1wEcoXjJ84H" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="1wEcoXjJ84I" role="2OqNvi">
                    <node concept="chp4Y" id="1wEcoXjJ84J" role="cj9EA">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1wEcoXjJ84K" role="9aQIa">
                  <node concept="3clFbS" id="1wEcoXjJ84L" role="9aQI4">
                    <node concept="3clFbF" id="1wEcoXjJ85d" role="3cqZAp">
                      <node concept="2OqwBi" id="1wEcoXjJ858" role="3clFbG">
                        <node concept="2OqwBi" id="1wEcoXjJ84N" role="2Oq$k0">
                          <node concept="2OqwBi" id="1wEcoXjJ84O" role="2Oq$k0">
                            <node concept="1PxgMI" id="1wEcoXjJ84P" role="2Oq$k0">
                              <node concept="2OqwBi" id="1wEcoXjJ84Q" role="1m5AlR">
                                <node concept="7Obwk" id="1wEcoXjJ850" role="2Oq$k0" />
                                <node concept="1mfA1w" id="1wEcoXjJ84S" role="2OqNvi" />
                              </node>
                              <node concept="chp4Y" id="714IaVdH1yy" role="3oSUPX">
                                <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="1wEcoXjJ84T" role="2OqNvi">
                              <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                            </node>
                          </node>
                          <node concept="TSZUe" id="1wEcoXjJ84U" role="2OqNvi">
                            <node concept="2ShNRf" id="1wEcoXjJ84V" role="25WWJ7">
                              <node concept="2fJWfE" id="1wEcoXjJ84W" role="2ShVmc">
                                <node concept="3Tqbb2" id="1wEcoXjJ84X" role="3zrR0E">
                                  <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1OKiuA" id="1wEcoXjJ859" role="2OqNvi">
                          <node concept="1Q80Hx" id="1wEcoXjJ85a" role="lBI5i" />
                          <node concept="2B6iha" id="1wEcoXjJ85b" role="lGT1i">
                            <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                          </node>
                          <node concept="3cmrfG" id="1wEcoXjJ85c" role="3dN3m$">
                            <property role="3cmrfH" value="-1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1wEcoXjJ85e" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1FNNb$" id="1wEcoXjJ85f" role="1FNMel">
            <ref role="1FNNbB" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="1wEcoXjJfgU">
    <ref role="aqKnT" to="tpce:5g5Zgd9mvvs" resolve="AttributeInfo_IsMultiple" />
    <node concept="22hDWj" id="6UtCO5dGILg" role="22hAXT" />
    <node concept="2F$Pav" id="1wEcoXjJfgW" role="3ft7WO">
      <node concept="3uibUv" id="1wEcoXjJfgX" role="2ZBHrp">
        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
      </node>
      <node concept="2$S_p_" id="1wEcoXjJfgY" role="2$S_pT">
        <node concept="3clFbS" id="1wEcoXjJfgZ" role="2VODD2">
          <node concept="3clFbF" id="1wEcoXjJfh0" role="3cqZAp">
            <node concept="2ShNRf" id="1wEcoXjJfh1" role="3clFbG">
              <node concept="Tc6Ow" id="1wEcoXjJfh2" role="2ShVmc">
                <node concept="3uibUv" id="1wEcoXjJfh3" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
                <node concept="10M0yZ" id="1wEcoXjJfh4" role="HW$Y0">
                  <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                </node>
                <node concept="10M0yZ" id="1wEcoXjJfh5" role="HW$Y0">
                  <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOop" id="1wEcoXjJfhw" role="2$S_pN">
        <node concept="16NfWO" id="1wEcoXjJfhx" role="upBLP">
          <node concept="uGdhv" id="1wEcoXjJfhy" role="16NeZM">
            <node concept="3clFbS" id="1wEcoXjJfhz" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjJfh$" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjJfh_" role="3clFbG">
                  <node concept="2ZBlsa" id="1wEcoXjJfhC" role="2Oq$k0" />
                  <node concept="liA8E" id="1wEcoXjJfhB" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="1wEcoXjJfi3" role="3aKz83">
          <node concept="3clFbS" id="1wEcoXjJfi4" role="2VODD2">
            <node concept="3cpWs8" id="1wEcoXjJfi5" role="3cqZAp">
              <node concept="3cpWsn" id="1wEcoXjJfi6" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3Tqbb2" id="1wEcoXjJfi7" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:5g5Zgd9mvvs" resolve="AttributeInfo_IsMultiple" />
                </node>
                <node concept="2ShNRf" id="1wEcoXjJfi8" role="33vP2m">
                  <node concept="3zrR0B" id="1wEcoXjJfi9" role="2ShVmc">
                    <node concept="3Tqbb2" id="1wEcoXjJfia" role="3zrR0E">
                      <ref role="ehGHo" to="tpce:5g5Zgd9mvvs" resolve="AttributeInfo_IsMultiple" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1wEcoXjJfib" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJfic" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJfid" role="2Oq$k0">
                  <node concept="37vLTw" id="1wEcoXjJfie" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wEcoXjJfi6" resolve="result" />
                  </node>
                  <node concept="3TrcHB" id="1wEcoXjJfif" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:5g5Zgd9myRe" resolve="value" />
                  </node>
                </node>
                <node concept="tyxLq" id="1wEcoXjJfig" role="2OqNvi">
                  <node concept="2OqwBi" id="1wEcoXjJfih" role="tz02z">
                    <node concept="2ZBlsa" id="1wEcoXjJfim" role="2Oq$k0" />
                    <node concept="liA8E" id="1wEcoXjJfij" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Boolean.booleanValue()" resolve="booleanValue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1wEcoXjJfik" role="3cqZAp">
              <node concept="37vLTw" id="1wEcoXjJfil" role="3cqZAk">
                <ref role="3cqZAo" node="1wEcoXjJfi6" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="1wEcoXjJfiN">
    <ref role="aqKnT" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    <node concept="22hDWj" id="6UtCO5dGILh" role="22hAXT" />
    <node concept="3ft6gV" id="1wEcoXjJfiP" role="3ft7WO">
      <node concept="3ft6gW" id="1wEcoXjJfiQ" role="3ft5RY">
        <node concept="3clFbS" id="1wEcoXjJfiR" role="2VODD2">
          <node concept="3clFbF" id="1wEcoXjJfiS" role="3cqZAp">
            <node concept="3y3z36" id="1wEcoXjJfiT" role="3clFbG">
              <node concept="10Nm6u" id="1wEcoXjJfiU" role="3uHU7w" />
              <node concept="1yR$tW" id="1wEcoXjJfiW" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2F$Pav" id="1wEcoXjJfjn" role="3ft5RZ">
        <node concept="3Tqbb2" id="1wEcoXjJfjo" role="2ZBHrp">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
        <node concept="2$S_p_" id="1wEcoXjJfjp" role="2$S_pT">
          <node concept="3clFbS" id="1wEcoXjJfjq" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJfjr" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJfjs" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJfjt" role="2Oq$k0">
                  <node concept="2OqwBi" id="1wEcoXjJfju" role="2Oq$k0">
                    <node concept="2OqwBi" id="1wEcoXjJfjv" role="2Oq$k0">
                      <node concept="2YIFZM" id="1wEcoXjJfjw" role="2Oq$k0">
                        <ref role="1Pybhc" to="tpcg:6dmIS6MscR9" resolve="Scopes" />
                        <ref role="37wK5l" to="tpcg:50vK5YapkBB" resolve="forConcepts" />
                        <node concept="3bvxqY" id="1wEcoXjJfjR" role="37wK5m" />
                        <node concept="35c_gC" id="1wEcoXjJfjy" role="37wK5m">
                          <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1wEcoXjJfjz" role="2OqNvi">
                        <ref role="37wK5l" to="o8zo:3fifI_xCtP7" resolve="getAvailableElements" />
                        <node concept="Xl_RD" id="1wEcoXjJfj$" role="37wK5m">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                    <node concept="v3k3i" id="1sVIztzDT29" role="2OqNvi">
                      <node concept="chp4Y" id="1sVIztzDTaL" role="v3oSu">
                        <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="1KnU$U" id="6W7kgSAm_vu" role="2OqNvi" />
                </node>
                <node concept="ANE8D" id="1wEcoXjJfjQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3eGOop" id="1wEcoXjJfki" role="2$S_pN">
          <node concept="16NfWO" id="1wEcoXjJfkj" role="upBLP">
            <node concept="uGdhv" id="1wEcoXjJfkk" role="16NeZM">
              <node concept="3clFbS" id="1wEcoXjJfkl" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJfkm" role="3cqZAp">
                  <node concept="2YIFZM" id="4AvAon1SIiI" role="3clFbG">
                    <ref role="37wK5l" to="5b0:~NodePresentationUtil.visibleMatchingText(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="visibleMatchingText" />
                    <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                    <node concept="2ZBlsa" id="4AvAon1SIiJ" role="37wK5m" />
                    <node concept="10Nm6u" id="4AvAon1SIt5" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="16NL0t" id="1wEcoXjJfkP" role="upBLP">
            <node concept="uGdhv" id="1wEcoXjJfkQ" role="16NL0q">
              <node concept="3clFbS" id="1wEcoXjJfkR" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjJfkS" role="3cqZAp">
                  <node concept="3cpWs3" id="1wEcoXjJfkT" role="3clFbG">
                    <node concept="2YIFZM" id="1wEcoXjJfkU" role="3uHU7w">
                      <ref role="1Pybhc" to="5b0:~NodePresentationUtil" resolve="NodePresentationUtil" />
                      <ref role="37wK5l" to="5b0:~NodePresentationUtil.descriptionText(org.jetbrains.mps.openapi.model.SNode)" resolve="descriptionText" />
                      <node concept="2ZBlsa" id="1wEcoXjJfkY" role="37wK5m" />
                    </node>
                    <node concept="Xl_RD" id="1wEcoXjJfkX" role="3uHU7B">
                      <property role="Xl_RC" value="^" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pEUQQ" id="1wEcoXjJflp" role="upBLP">
            <node concept="pEWwh" id="1wEcoXjJflq" role="pEUQP">
              <node concept="3clFbS" id="1wEcoXjJflr" role="2VODD2">
                <node concept="3clFbF" id="49FXMLkVese" role="3cqZAp">
                  <node concept="ynFM6" id="49FXMLkVesb" role="3clFbG">
                    <node concept="25Kdxt" id="49FXMLkVeXW" role="mzb_8">
                      <node concept="2OqwBi" id="49FXMLkVfbR" role="25KhWn">
                        <node concept="2ZBlsa" id="49FXMLkVf04" role="2Oq$k0" />
                        <node concept="2yIwOk" id="49FXMLkVfG$" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ucgPf" id="1wEcoXjJflW" role="3aKz83">
            <node concept="3clFbS" id="1wEcoXjJflX" role="2VODD2">
              <node concept="3cpWs8" id="1wEcoXjJflY" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjJflZ" role="3cpWs9">
                  <property role="TrG5h" value="linkDeclaration" />
                  <node concept="3Tqbb2" id="1wEcoXjJfm0" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="2ShNRf" id="1wEcoXjJfm1" role="33vP2m">
                    <node concept="2fJWfE" id="1wEcoXjJfm2" role="2ShVmc">
                      <node concept="3Tqbb2" id="1wEcoXjJfm3" role="3zrR0E">
                        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                      <node concept="1yR$tW" id="1wEcoXjJfmd" role="1wAG5O" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjJfm5" role="3cqZAp">
                <node concept="37vLTI" id="1wEcoXjJfm6" role="3clFbG">
                  <node concept="2ZBlsa" id="1wEcoXjJfme" role="37vLTx" />
                  <node concept="2OqwBi" id="1wEcoXjJfm8" role="37vLTJ">
                    <node concept="37vLTw" id="1wEcoXjJfm9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1wEcoXjJflZ" resolve="linkDeclaration" />
                    </node>
                    <node concept="3TrEf2" id="1wEcoXjJfma" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1wEcoXjJfmb" role="3cqZAp">
                <node concept="37vLTw" id="1wEcoXjJfmc" role="3cqZAk">
                  <ref role="3cqZAo" node="1wEcoXjJflZ" resolve="linkDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4PXMYyZ4PZL">
    <ref role="1XX52x" to="tpce:4PXMYyZ4PZg" resolve="MarkerInterfaceAttribute" />
    <node concept="3EZMnI" id="4m7OOLmj14w" role="2wV5jI">
      <node concept="2iRkQZ" id="4m7OOLmj14x" role="2iSdaV" />
      <node concept="PMmxH" id="4PXMYyZ4PZN" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="ljvvj" id="4m7OOLmj14s" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="4m7OOLmj14t" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2SsqMj" id="4m7OOLmj1ga" role="3EZMnx" />
      <node concept="VPM3Z" id="4m7OOLmj1g3" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="6VgTGbN6NZ5">
    <ref role="1XX52x" to="tpce:6VgTGbN6NX2" resolve="ConceptDeclarationReference" />
    <node concept="1iCGBv" id="6VgTGbN6NZp" role="2wV5jI">
      <ref role="1NtTu8" to="tpce:6VgTGbN6NXB" resolve="cpnt" />
      <node concept="1sVBvm" id="6VgTGbN6NZr" role="1sWHZn">
        <node concept="3F0A7n" id="6VgTGbN6NZE" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

