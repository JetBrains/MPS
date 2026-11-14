<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dc468d7c-ca2d-45f7-ace9-6f81e4694f66(jetbrains.mps.lang.resources.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="1oap" ref="r:03d44d4c-3d65-461c-9085-0f48e9569e59(jetbrains.mps.lang.resources.structure)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="3767" ref="r:7f24d329-a444-4288-af92-f8ef91dfd241(jetbrains.mps.lang.resources.behavior)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="7a0s" ref="r:2af017c2-293f-4ebb-99f3-81e353b3d6e6(jetbrains.mps.editor.runtime)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpch" ref="r:00000000-0000-4000-0000-011c8959028d(jetbrains.mps.lang.structure.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176899348742" name="jetbrains.mps.lang.editor.structure.QueryFunction_ImagePath" flags="in" index="4EIwk" />
      <concept id="1198489924438" name="jetbrains.mps.lang.editor.structure.CellModel_Block" flags="sg" stub="8104358048506730066" index="b$f91">
        <child id="1198489985045" name="header" index="b$u42" />
        <child id="1198489993734" name="body" index="b$wch" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
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
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ngI" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
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
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="ln" index="3nxI2P" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139744628335" name="jetbrains.mps.lang.editor.structure.CellModel_Image" flags="sg" stub="8104358048506731195" index="1u4HXA">
        <child id="1176899909521" name="imagePathProvider" index="4GRq3" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
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
        <property id="1082639509531" name="nullText" index="ilYzB" />
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
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7Mb2akaesrc">
    <property role="3GE5qa" value="icons.descriptors" />
    <ref role="1XX52x" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
    <node concept="3EZMnI" id="63hNSM1YCme" role="2wV5jI">
      <node concept="3EZMnI" id="2XCQUUY5z$r" role="3EZMnx">
        <node concept="l2Vlx" id="2XCQUUY5z$s" role="2iSdaV" />
        <node concept="1QoScp" id="7Mb2akaesre" role="3EZMnx">
          <property role="1QpmdY" value="true" />
          <node concept="pkWqt" id="7Mb2akaesrf" role="3e4ffs">
            <node concept="3clFbS" id="7Mb2akaesrg" role="2VODD2">
              <node concept="3clFbF" id="7Mb2akaesrh" role="3cqZAp">
                <node concept="2OqwBi" id="7Mb2akaesri" role="3clFbG">
                  <node concept="2OqwBi" id="7Mb2akaesrj" role="2Oq$k0">
                    <node concept="pncrf" id="7Mb2akaesrk" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2p1v3tOap0s" role="2OqNvi">
                      <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                    </node>
                  </node>
                  <node concept="17RlXB" id="7Mb2akaesrm" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="7Mb2akaesrn" role="1QoS34">
            <property role="3F0ifm" value="&lt;no icon&gt;" />
            <node concept="VechU" id="7Mb2akaesro" role="3F10Kt">
              <property role="Vb096" value="fLJRk5A/lightGray" />
            </node>
          </node>
          <node concept="1QoScp" id="7Mb2akaesrp" role="1QoVPY">
            <property role="1QpmdY" value="true" />
            <node concept="pkWqt" id="7Mb2akaesrq" role="3e4ffs">
              <node concept="3clFbS" id="7Mb2akaesrr" role="2VODD2">
                <node concept="3clFbF" id="7Mb2akaesrs" role="3cqZAp">
                  <node concept="2OqwBi" id="7Mb2akaesrt" role="3clFbG">
                    <node concept="pncrf" id="7Mb2akaesru" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORdyh" role="2OqNvi">
                      <ref role="37wK5l" to="3767:7Mb2akaestJ" resolve="isValid" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3EZMnI" id="7Mb2akaesrw" role="1QoS34">
              <node concept="1u4HXA" id="7Mb2akaesrx" role="3EZMnx">
                <node concept="4EIwk" id="7Mb2akaesry" role="4GRq3">
                  <node concept="3clFbS" id="7Mb2akaesrz" role="2VODD2">
                    <node concept="3clFbF" id="3rB6Bs2cnXx" role="3cqZAp">
                      <node concept="2OqwBi" id="7Mb2akaesr_" role="3clFbG">
                        <node concept="pncrf" id="7Mb2akaesrA" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2p1v3tOaqQc" role="2OqNvi">
                          <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3EZMnI" id="214iujPBOlm" role="3EZMnx">
                <node concept="2iRfu4" id="214iujPBOln" role="2iSdaV" />
                <node concept="3F0ifn" id="214iujPBpeV" role="3EZMnx">
                  <property role="3F0ifm" value="[" />
                  <node concept="11LMrY" id="214iujPBOgP" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
                <node concept="1u4HXA" id="214iujPBpoj" role="3EZMnx">
                  <node concept="4EIwk" id="214iujPBpwZ" role="4GRq3">
                    <node concept="3clFbS" id="214iujPBpx1" role="2VODD2">
                      <node concept="3clFbF" id="214iujPBpx4" role="3cqZAp">
                        <node concept="2OqwBi" id="214iujPBpx5" role="3clFbG">
                          <node concept="pncrf" id="214iujPBpx6" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORdyj" role="2OqNvi">
                            <ref role="37wK5l" to="3767:1$fQzw7$wcx" resolve="getNamingConventionNewuiFileName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3F0ifn" id="214iujPBOj6" role="3EZMnx">
                  <property role="3F0ifm" value="]" />
                  <node concept="11LMrY" id="214iujPBOll" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
                <node concept="pkWqt" id="214iujPBOGA" role="pqm2j">
                  <node concept="3clFbS" id="214iujPBOGB" role="2VODD2">
                    <node concept="3clFbF" id="214iujPBIOk" role="3cqZAp">
                      <node concept="2OqwBi" id="214iujPBJ5U" role="3clFbG">
                        <node concept="pncrf" id="214iujPBIOj" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORdyl" role="2OqNvi">
                          <ref role="37wK5l" to="3767:1$fQzw7$hd7" resolve="isFileValid" />
                          <node concept="2OqwBi" id="70OdufORdyn" role="37wK5m">
                            <node concept="pncrf" id="70OdufORdyo" role="2Oq$k0" />
                            <node concept="3zqWPK" id="3nvRoz9x4$V" role="2OqNvi">
                              <ref role="37wK5l" to="3767:1$fQzw7$wcx" resolve="getNamingConventionNewuiFileName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="7Mb2akaesrC" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="7Mb2akaesrD" role="2iSdaV" />
            </node>
            <node concept="3F0ifn" id="7Mb2akaesrE" role="1QoVPY">
              <property role="3F0ifm" value="&lt;invalid path&gt;" />
              <node concept="VechU" id="7Mb2akaesrF" role="3F10Kt">
                <property role="Vb096" value="fLwANPn/red" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3gTLQM" id="7Mb2akaesrG" role="3EZMnx">
          <node concept="3Fmcul" id="7Mb2akaesrH" role="3FoqZy">
            <node concept="3clFbS" id="7Mb2akaesrI" role="2VODD2">
              <node concept="3clFbF" id="5xzMQBRErxd" role="3cqZAp">
                <node concept="2YIFZM" id="5SODKnr7Y_7" role="3clFbG">
                  <ref role="37wK5l" to="7a0s:5SODKnqNvMs" resolve="createSelectIdeaIconButton" />
                  <ref role="1Pybhc" to="7a0s:6UDbxo8i0QW" resolve="EditorUtil" />
                  <node concept="pncrf" id="5SODKnr7Y_8" role="37wK5m" />
                  <node concept="355D3s" id="5SODKnr7Y_9" role="37wK5m">
                    <ref role="355D3t" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
                    <ref role="355D3u" to="1oap:2p1v3tOafqN" resolve="file" />
                  </node>
                  <node concept="1Q80Hx" id="5SODKnr7Y_a" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="5SODKnqFH4h" role="3EZMnx">
          <node concept="lj46D" id="7MKI4BAgEKk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="7MKI4BAgE$W" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPM3Z" id="5SODKnqFH4j" role="3F10Kt" />
          <node concept="l2Vlx" id="5SODKnqFH4m" role="2iSdaV" />
          <node concept="3F0ifn" id="5SODKnqD1ju" role="3EZMnx">
            <property role="3F0ifm" value="including if present" />
          </node>
          <node concept="1HlG4h" id="2NwO_B0Z9P6" role="3EZMnx">
            <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
            <node concept="1HfYo3" id="2NwO_B0Z9P8" role="1HlULh">
              <node concept="3TQlhw" id="2NwO_B0Z9Pa" role="1Hhtcw">
                <node concept="3clFbS" id="2NwO_B0Z9Pc" role="2VODD2">
                  <node concept="3clFbF" id="2NwO_B0Zan8" role="3cqZAp">
                    <node concept="2OqwBi" id="5SODKnqCWlg" role="3clFbG">
                      <node concept="2OqwBi" id="2NwO_B0ZaBN" role="2Oq$k0">
                        <node concept="pncrf" id="2NwO_B0Zan7" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORdys" role="2OqNvi">
                          <ref role="37wK5l" to="3767:2NwO_B0ZkCe" resolve="getAdditionalFiles" />
                          <node concept="2OqwBi" id="70OdufORdyu" role="37wK5m">
                            <node concept="2OqwBi" id="70OdufORdyv" role="2Oq$k0">
                              <node concept="pncrf" id="70OdufORdyw" role="2Oq$k0" />
                              <node concept="3TrcHB" id="70OdufORdyx" role="2OqNvi">
                                <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70OdufORdyy" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                              <node concept="3cpWs3" id="70OdufORdyz" role="37wK5m">
                                <node concept="3cmrfG" id="70OdufORdy$" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="70OdufORdy_" role="3uHU7B">
                                  <node concept="2OqwBi" id="70OdufORdyA" role="2Oq$k0">
                                    <node concept="pncrf" id="70OdufORdyB" role="2Oq$k0" />
                                    <node concept="3TrcHB" id="70OdufORdyC" role="2OqNvi">
                                      <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70OdufORdyD" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                                    <node concept="Xl_RD" id="70OdufORdyE" role="37wK5m">
                                      <property role="Xl_RC" value="/" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uJxvA" id="5SODKnqCZWB" role="2OqNvi">
                        <node concept="Xl_RD" id="5SODKnqD0yM" role="3uJOhx">
                          <property role="Xl_RC" value=", " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="5SODKnqFIzs" role="pqm2j">
            <node concept="3clFbS" id="5SODKnqFIzt" role="2VODD2">
              <node concept="3clFbF" id="5SODKnqFJUM" role="3cqZAp">
                <node concept="3eOSWO" id="5SODKnqGuVw" role="3clFbG">
                  <node concept="2OqwBi" id="5SODKnqFLiK" role="3uHU7B">
                    <node concept="2OqwBi" id="5SODKnqFKbZ" role="2Oq$k0">
                      <node concept="pncrf" id="5SODKnqFJUL" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdyF" role="2OqNvi">
                        <ref role="37wK5l" to="3767:2NwO_B0ZkCe" resolve="getAdditionalFiles" />
                        <node concept="2OqwBi" id="70OdufORdyH" role="37wK5m">
                          <node concept="pncrf" id="70OdufORdyI" role="2Oq$k0" />
                          <node concept="3TrcHB" id="70OdufORdyJ" role="2OqNvi">
                            <ref role="3TsBF5" to="1oap:2p1v3tOafqN" resolve="file" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="34oBXx" id="5SODKnqFPIM" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="5SODKnqFRYg" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Bsynf" id="214iujR9Zya" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="2XCQUUY5Or_" role="3EZMnx">
          <property role="3EXrWe" value="true" />
          <property role="S$Qs1" value="true" />
          <ref role="1ERwB7" node="7MKI4BAhNV$" resolve="DeleteNewUIFileIcon" />
          <node concept="3F0ifn" id="214iujRqhUb" role="3EZMnx">
            <node concept="ljvvj" id="214iujRqhZA" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPxyj" id="214iujREwTE" role="3F10Kt" />
            <node concept="VPM3Z" id="214iujREwTH" role="3F10Kt" />
          </node>
          <node concept="3F0ifn" id="2XCQUUY6CDp" role="3EZMnx">
            <property role="3F0ifm" value="[Explicit new UI only variant:" />
          </node>
          <node concept="l2Vlx" id="2XCQUUY5OrA" role="2iSdaV" />
          <node concept="1QoScp" id="2XCQUUY5OrB" role="3EZMnx">
            <property role="1QpmdY" value="true" />
            <node concept="pkWqt" id="2XCQUUY5OrC" role="3e4ffs">
              <node concept="3clFbS" id="2XCQUUY5OrD" role="2VODD2">
                <node concept="3clFbF" id="2XCQUUY5OrE" role="3cqZAp">
                  <node concept="2OqwBi" id="2XCQUUY5OrF" role="3clFbG">
                    <node concept="2OqwBi" id="2XCQUUY5OrG" role="2Oq$k0">
                      <node concept="pncrf" id="2XCQUUY5OrH" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2XCQUUY5OrI" role="2OqNvi">
                        <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                      </node>
                    </node>
                    <node concept="17RlXB" id="2XCQUUY5OrJ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="2XCQUUY5OrK" role="1QoS34">
              <property role="3F0ifm" value="&lt;no icon&gt;" />
              <node concept="VechU" id="2XCQUUY5OrL" role="3F10Kt">
                <property role="Vb096" value="fLJRk5A/lightGray" />
              </node>
            </node>
            <node concept="1QoScp" id="2XCQUUY5OrM" role="1QoVPY">
              <property role="1QpmdY" value="true" />
              <node concept="pkWqt" id="2XCQUUY5OrN" role="3e4ffs">
                <node concept="3clFbS" id="2XCQUUY5OrO" role="2VODD2">
                  <node concept="3clFbF" id="2XCQUUY5OrP" role="3cqZAp">
                    <node concept="2OqwBi" id="2XCQUUY5OrQ" role="3clFbG">
                      <node concept="pncrf" id="2XCQUUY5OrR" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdyK" role="2OqNvi">
                        <ref role="37wK5l" to="3767:1$fQzw7$eeH" resolve="isExplicitNewuiFileValid" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3EZMnI" id="2XCQUUY5OrT" role="1QoS34">
                <node concept="1u4HXA" id="2XCQUUY5OrU" role="3EZMnx">
                  <ref role="1ERwB7" node="7MKI4BAhNV$" resolve="DeleteNewUIFileIcon" />
                  <node concept="4EIwk" id="2XCQUUY5OrV" role="4GRq3">
                    <node concept="3clFbS" id="2XCQUUY5OrW" role="2VODD2">
                      <node concept="3clFbF" id="2XCQUUY5OrX" role="3cqZAp">
                        <node concept="2OqwBi" id="2XCQUUY5OrY" role="3clFbG">
                          <node concept="pncrf" id="2XCQUUY5OrZ" role="2Oq$k0" />
                          <node concept="3TrcHB" id="2XCQUUY5Os0" role="2OqNvi">
                            <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="VPM3Z" id="2XCQUUY5Os1" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
                <node concept="2iRfu4" id="2XCQUUY5Os2" role="2iSdaV" />
              </node>
              <node concept="3F0ifn" id="2XCQUUY5Os3" role="1QoVPY">
                <property role="3F0ifm" value="&lt;invalid path&gt;" />
                <node concept="VechU" id="2XCQUUY5Os4" role="3F10Kt">
                  <property role="Vb096" value="fLwANPn/red" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3gTLQM" id="2XCQUUY5Os5" role="3EZMnx">
            <node concept="3Fmcul" id="2XCQUUY5Os6" role="3FoqZy">
              <node concept="3clFbS" id="2XCQUUY5Os7" role="2VODD2">
                <node concept="3clFbF" id="2XCQUUY5Os8" role="3cqZAp">
                  <node concept="2YIFZM" id="2XCQUUY5Os9" role="3clFbG">
                    <ref role="37wK5l" to="7a0s:5SODKnqNvMs" resolve="createSelectIdeaIconButton" />
                    <ref role="1Pybhc" to="7a0s:6UDbxo8i0QW" resolve="EditorUtil" />
                    <node concept="pncrf" id="2XCQUUY5Osa" role="37wK5m" />
                    <node concept="355D3s" id="2XCQUUY5Osb" role="37wK5m">
                      <ref role="355D3t" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
                      <ref role="355D3u" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                    </node>
                    <node concept="1Q80Hx" id="2XCQUUY5Osc" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="2XCQUUY9Y_M" role="3EZMnx">
            <property role="3F0ifm" value="]" />
            <node concept="11L4FC" id="214iujRa0v2" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="pVoyu" id="2XCQUUY5Qyv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2SqB2G" id="7MKI4BAioko" role="2SqHTX">
            <property role="TrG5h" value="newuiVariantWrapper" />
          </node>
          <node concept="1HlG4h" id="214iujRUCeA" role="AHCbl">
            <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
            <node concept="1HfYo3" id="214iujRUCeC" role="1HlULh">
              <node concept="3TQlhw" id="214iujRUCeE" role="1Hhtcw">
                <node concept="3clFbS" id="214iujRUCeG" role="2VODD2">
                  <node concept="3clFbJ" id="214iujRUCKS" role="3cqZAp">
                    <node concept="3clFbS" id="214iujRUCKU" role="3clFbx">
                      <node concept="3cpWs6" id="214iujRUExg" role="3cqZAp">
                        <node concept="Xl_RD" id="214iujRUEzm" role="3cqZAk">
                          <property role="Xl_RC" value="No explicit new UI variant" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="214iujRUDTk" role="3clFbw">
                      <node concept="2OqwBi" id="214iujRUD8v" role="2Oq$k0">
                        <node concept="pncrf" id="214iujRUCRv" role="2Oq$k0" />
                        <node concept="3TrcHB" id="214iujRUDnH" role="2OqNvi">
                          <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                        </node>
                      </node>
                      <node concept="17RlXB" id="214iujRUEpO" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="214iujRUEJK" role="3cqZAp">
                    <node concept="Xl_RD" id="214iujRUCDV" role="3cqZAk">
                      <property role="Xl_RC" value="Explicit new UI variant provided" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="lj46D" id="214iujR9Zox" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="214iujREwTJ" role="3EXrW6">
            <node concept="3clFbS" id="214iujREwTK" role="2VODD2">
              <node concept="3clFbF" id="214iujRExl5" role="3cqZAp">
                <node concept="2OqwBi" id="214iujREypf" role="3clFbG">
                  <node concept="2OqwBi" id="214iujRExAF" role="2Oq$k0">
                    <node concept="pncrf" id="214iujRExl4" role="2Oq$k0" />
                    <node concept="3TrcHB" id="214iujRExNV" role="2OqNvi">
                      <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                    </node>
                  </node>
                  <node concept="17RlXB" id="214iujREzmu" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="214iujRa0Ll" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="63hNSM20RmF" role="2iSdaV" />
      <node concept="1QoScp" id="63hNSM1ZSLy" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="35HoNQ" id="63hNSM20dCo" role="1QoVPY" />
        <node concept="pkWqt" id="63hNSM1ZSL_" role="3e4ffs">
          <node concept="3clFbS" id="63hNSM1ZSLB" role="2VODD2">
            <node concept="3clFbF" id="2p1v3tOan9Q" role="3cqZAp">
              <node concept="2OqwBi" id="2p1v3tOan9S" role="3clFbG">
                <node concept="3x8VRR" id="2p1v3tOan9T" role="2OqNvi" />
                <node concept="2OqwBi" id="2p1v3tOan9U" role="2Oq$k0">
                  <node concept="3TrEf2" id="2p1v3tOan9V" role="2OqNvi">
                    <ref role="3Tt5mk" to="1oap:63hNSM1YIC9" resolve="iconExpression" />
                  </node>
                  <node concept="pncrf" id="2p1v3tOan9W" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F1sOY" id="63hNSM1YKlw" role="1QoS34">
          <ref role="1NtTu8" to="1oap:63hNSM1YIC9" resolve="iconExpression" />
        </node>
        <node concept="pkWqt" id="63hNSM20usr" role="pqm2j">
          <node concept="3clFbS" id="63hNSM20uss" role="2VODD2">
            <node concept="3clFbF" id="63hNSM20w$z" role="3cqZAp">
              <node concept="2OqwBi" id="63hNSM20Gom" role="3clFbG">
                <node concept="3x8VRR" id="2p1v3tOamKz" role="2OqNvi" />
                <node concept="2OqwBi" id="63hNSM20EIU" role="2Oq$k0">
                  <node concept="3TrEf2" id="2p1v3tOalPK" role="2OqNvi">
                    <ref role="3Tt5mk" to="1oap:63hNSM1YIC9" resolve="iconExpression" />
                  </node>
                  <node concept="pncrf" id="63hNSM20ECq" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="2XCQUUY5zyP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="214iujRa2uy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="214iujPT1sf" role="6VMZX">
      <node concept="2iRkQZ" id="214iujPT1sg" role="2iSdaV" />
      <node concept="3EZMnI" id="214iujPSZac" role="3EZMnx">
        <node concept="3F0ifn" id="214iujPT0jC" role="3EZMnx">
          <property role="3F0ifm" value="Icon file:" />
        </node>
        <node concept="l2Vlx" id="214iujQpkIN" role="2iSdaV" />
        <node concept="3F0A7n" id="7Mb2akaesrP" role="3EZMnx">
          <ref role="1NtTu8" to="1oap:2p1v3tOafqN" resolve="file" />
          <node concept="VechU" id="7Mb2akaesrQ" role="3F10Kt">
            <node concept="3ZlJ5R" id="7Mb2akaesrR" role="VblUZ">
              <node concept="3clFbS" id="7Mb2akaesrS" role="2VODD2">
                <node concept="3clFbF" id="7Mb2akaesrT" role="3cqZAp">
                  <node concept="3K4zz7" id="7Mb2akaesrU" role="3clFbG">
                    <node concept="2OqwBi" id="7Mb2akaesrV" role="3K4Cdx">
                      <node concept="pncrf" id="7Mb2akaesrW" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdyM" role="2OqNvi">
                        <ref role="37wK5l" to="3767:7Mb2akaestJ" resolve="isValid" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="7Mb2akaesrY" role="3K4E3e">
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                      <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                    </node>
                    <node concept="10M0yZ" id="7Mb2akaesrZ" role="3K4GZi">
                      <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                      <ref role="3cqZAo" to="exr9:~MPSColors.RED" resolve="RED" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ljvvj" id="214iujQpkX5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="214iujPT0m0" role="3EZMnx">
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
          <node concept="VPM3Z" id="214iujPT0m2" role="3F10Kt" />
          <node concept="3F0ifn" id="214iujPT0PB" role="3EZMnx">
            <property role="3F0ifm" value="New UI only variant (by '_newui.svg&quot; naming convention)" />
          </node>
          <node concept="1HlG4h" id="214iujPT11f" role="3EZMnx">
            <node concept="1HfYo3" id="214iujPT11h" role="1HlULh">
              <node concept="3TQlhw" id="214iujPT11j" role="1Hhtcw">
                <node concept="3clFbS" id="214iujPT11l" role="2VODD2">
                  <node concept="3clFbF" id="214iujPT1ew" role="3cqZAp">
                    <node concept="2OqwBi" id="214iujPT1ex" role="3clFbG">
                      <node concept="pncrf" id="214iujPT1ey" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdyO" role="2OqNvi">
                        <ref role="37wK5l" to="3767:1$fQzw7$wcx" resolve="getNamingConventionNewuiFileName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="214iujPT0m5" role="2iSdaV" />
          <node concept="pkWqt" id="214iujPT0$o" role="pqm2j">
            <node concept="3clFbS" id="214iujPT0$p" role="2VODD2">
              <node concept="3clFbF" id="214iujPT0$r" role="3cqZAp">
                <node concept="2OqwBi" id="214iujPT0$s" role="3clFbG">
                  <node concept="pncrf" id="214iujPT0$t" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdyQ" role="2OqNvi">
                    <ref role="37wK5l" to="3767:1$fQzw7$hd7" resolve="isFileValid" />
                    <node concept="2OqwBi" id="70OdufORdyS" role="37wK5m">
                      <node concept="pncrf" id="70OdufORdyT" role="2Oq$k0" />
                      <node concept="3zqWPK" id="3nvRoz9x4$T" role="2OqNvi">
                        <ref role="37wK5l" to="3767:1$fQzw7$wcx" resolve="getNamingConventionNewuiFileName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="lj46D" id="214iujQpkZo" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="214iujPT2ml" role="3EZMnx" />
      <node concept="3EZMnI" id="214iujPT2pi" role="3EZMnx">
        <node concept="3F0ifn" id="214iujPT2pj" role="3EZMnx">
          <property role="3F0ifm" value="Explicit new UI only variant:" />
        </node>
        <node concept="2iRfu4" id="214iujPT2pk" role="2iSdaV" />
        <node concept="3F0A7n" id="214iujPT2pl" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
          <node concept="VechU" id="214iujPT2pm" role="3F10Kt">
            <node concept="3ZlJ5R" id="214iujPT2pn" role="VblUZ">
              <node concept="3clFbS" id="214iujPT2po" role="2VODD2">
                <node concept="3clFbF" id="214iujPT2pp" role="3cqZAp">
                  <node concept="3K4zz7" id="214iujPT2pq" role="3clFbG">
                    <node concept="2OqwBi" id="214iujPT2pr" role="3K4Cdx">
                      <node concept="pncrf" id="214iujPT2ps" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdyX" role="2OqNvi">
                        <ref role="37wK5l" to="3767:7Mb2akaestJ" resolve="isValid" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="214iujPT2pu" role="3K4E3e">
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                      <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                    </node>
                    <node concept="10M0yZ" id="214iujPT2pv" role="3K4GZi">
                      <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                      <ref role="3cqZAo" to="exr9:~MPSColors.RED" resolve="RED" />
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
  <node concept="24kQdi" id="7Mb2akaess0">
    <property role="3GE5qa" value="icons.instantiation" />
    <ref role="1XX52x" to="1oap:7Mb2akaesr3" resolve="IconExpression" />
    <node concept="3EZMnI" id="7Mb2akaess1" role="2wV5jI">
      <node concept="PMmxH" id="5bVxHVEur_2" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="7Mb2akaess3" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="7Mb2akaess4" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:7Mb2akaesr5" resolve="icon" />
      </node>
      <node concept="3F0ifn" id="7Mb2akaess5" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="7Mb2akaess6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5bVxHVEur_w">
    <property role="3GE5qa" value="icons.instantiation" />
    <ref role="1XX52x" to="1oap:5bVxHVEuklu" resolve="IconResourceExpression" />
    <node concept="3EZMnI" id="5bVxHVEur_y" role="2wV5jI">
      <node concept="PMmxH" id="5bVxHVEur_z" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="5bVxHVEur_$" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="5bVxHVEur__" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:5bVxHVEur_0" resolve="icon" />
      </node>
      <node concept="3F0ifn" id="5bVxHVEur_A" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="5bVxHVEur_B" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2p1v3tObwTC">
    <property role="3GE5qa" value="icons.descriptors" />
    <ref role="1XX52x" to="1oap:2p1v3tObwP5" resolve="TextIcon" />
    <node concept="3EZMnI" id="4rOpugP9puE" role="2wV5jI">
      <node concept="3EZMnI" id="4GjgyZ7ZGV$" role="3EZMnx">
        <node concept="2iRkQZ" id="4GjgyZ7ZGV_" role="2iSdaV" />
        <node concept="3EZMnI" id="1brHjIQHBiv" role="3EZMnx">
          <node concept="2iRfu4" id="1brHjIQHBiw" role="2iSdaV" />
          <node concept="3F0ifn" id="2p1v3tObwX8" role="3EZMnx">
            <property role="3F0ifm" value="describe" />
          </node>
          <node concept="3F0ifn" id="1brHjIQHBiK" role="3EZMnx">
            <property role="3F0ifm" value="id=" />
          </node>
          <node concept="3F0A7n" id="1brHjIQHBiC" role="3EZMnx">
            <ref role="1NtTu8" to="1oap:1brHjIQHw0T" resolve="iconId" />
            <node concept="11L4FC" id="1BguvjG3J7r" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="b$f91" id="7MKI4BBVgXi" role="3EZMnx">
          <node concept="3F2HdR" id="7MKI4BBVgXu" role="b$wch">
            <ref role="1NtTu8" to="1oap:7MKI4BBUT$V" resolve="newuiLayers" />
            <node concept="3F0ifn" id="7MKI4BBVgXx" role="2czzBI">
              <property role="3F0ifm" value="define the icon layers here" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
            </node>
            <node concept="2iRkQZ" id="4GjgyZ80pel" role="2czzBx" />
          </node>
          <node concept="3F0ifn" id="7MKI4BBVgXs" role="b$u42">
            <property role="3F0ifm" value="Layers:" />
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="6cky_RDI3RW" role="2iSdaV" />
      <node concept="3EZMnI" id="4rOpugP9pux" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="l2Vlx" id="4rOpugP9puy" role="2iSdaV" />
        <node concept="3F0ifn" id="4rOpugP9puz" role="3EZMnx">
          <property role="3F0ifm" value="Old UI" />
          <node concept="3nxI2P" id="4rOpugP9pu$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="4rOpugP9puC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="4rOpugP9puA" role="3EZMnx">
          <ref role="1NtTu8" to="1oap:2p1v3tObwTA" resolve="layers" />
          <node concept="2iRkQZ" id="4rOpugP9puB" role="2czzBx" />
        </node>
        <node concept="pVoyu" id="4rOpugP9Nte" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="4rOpugPa13I" role="AHCbl">
          <property role="3F0ifm" value="Old UI version" />
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
          <node concept="3nxI2P" id="4rOpugPa150" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2p1v3tObyz3">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:2p1v3tObwTw" resolve="Circle" />
    <node concept="3EZMnI" id="2p1v3tObyz5" role="2wV5jI">
      <node concept="l2Vlx" id="2p1v3tObyz6" role="2iSdaV" />
      <node concept="3F0ifn" id="2p1v3tObyz7" role="3EZMnx">
        <property role="3F0ifm" value="circle" />
        <node concept="A1WHr" id="6o_U3kAWqJI" role="3vIgyS">
          <ref role="2ZyFGn" to="1oap:2p1v3tObyyL" resolve="Primitive" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObyzc" role="3EZMnx">
        <property role="3F0ifm" value="fill" />
      </node>
      <node concept="3F0ifn" id="1ng4Vf3TdIk" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="1ng4Vf3TdIC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ng4Vf3TdID" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1BguvjG4Cpx" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:1BguvjG4kKh" resolve="fillColor" />
      </node>
      <node concept="3F0ifn" id="2p1v3tObyzg" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="2p1v3tObyzh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObyzi" role="3EZMnx">
        <property role="3F0ifm" value="border" />
      </node>
      <node concept="3F0ifn" id="1ng4Vf3TdHE" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="1ng4Vf3TdHV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ng4Vf3TdHW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1BguvjG5_qd" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="1oap:1BguvjG4kKj" resolve="borderColor" />
        <node concept="3F0ifn" id="1ng4Vf3Tp2X" role="2ruayu">
          <property role="ilYzB" value="&lt;default&gt;" />
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObyzm" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="2p1v3tObyzn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObyzo" role="3EZMnx">
        <property role="3F0ifm" value="size" />
      </node>
      <node concept="3F0ifn" id="1ng4Vf3Tbv2" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="1ng4Vf3TbwS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ng4Vf3TbxO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1ng4Vf3VLdY" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:3Ftr4R6BH86" resolve="r" />
      </node>
      <node concept="3F0ifn" id="4rOpugPb5d0" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="4rOpugPb5d1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="4rOpugP4jx4" role="3EZMnx">
        <ref role="PMmxG" node="4rOpugP4iUV" resolve="TextIconThemeSelection" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2p1v3tObZtw">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:2p1v3tObwTx" resolve="Rect" />
    <node concept="3EZMnI" id="2p1v3tObZty" role="2wV5jI">
      <node concept="l2Vlx" id="2p1v3tObZtz" role="2iSdaV" />
      <node concept="3F0ifn" id="2p1v3tObZt$" role="3EZMnx">
        <property role="3F0ifm" value="rect" />
        <node concept="A1WHr" id="6o_U3kAWqkA" role="3vIgyS">
          <ref role="2ZyFGn" to="1oap:2p1v3tObyyL" resolve="Primitive" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObZtD" role="3EZMnx">
        <property role="3F0ifm" value="fillColor" />
      </node>
      <node concept="3F0ifn" id="1ng4Vf3TfYb" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="1ng4Vf3TfYp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ng4Vf3TfYq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1BguvjG4B3a" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:1BguvjG4kKh" resolve="fillColor" />
      </node>
      <node concept="3F0ifn" id="2p1v3tObZtH" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="2p1v3tObZtI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObZtJ" role="3EZMnx">
        <property role="3F0ifm" value="border" />
      </node>
      <node concept="3F0ifn" id="1ng4Vf3TfYJ" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="1ng4Vf3TfZ0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ng4Vf3TfZ1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1ng4Vf3UMts" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="1oap:1BguvjG4kKj" resolve="borderColor" />
        <node concept="3F0ifn" id="1ng4Vf3UMtt" role="2ruayu">
          <property role="3F0ifm" value="&lt;default&gt;" />
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObZtN" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="2p1v3tObZtO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObZtP" role="3EZMnx">
        <property role="3F0ifm" value="size" />
      </node>
      <node concept="3F0ifn" id="1ng4Vf3TfZp" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="1ng4Vf3TfZH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ng4Vf3TfZI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2p1v3tObZtS" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:3Ftr4R6BH88" resolve="r" />
      </node>
      <node concept="3F0ifn" id="4rOpugPb5cY" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="4rOpugPb5cZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="4rOpugP4jx6" role="3EZMnx">
        <ref role="PMmxG" node="4rOpugP4iUV" resolve="TextIconThemeSelection" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2p1v3tObZuU">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:2p1v3tObyyT" resolve="Text" />
    <node concept="3EZMnI" id="2p1v3tObZuW" role="2wV5jI">
      <node concept="l2Vlx" id="2p1v3tObZuX" role="2iSdaV" />
      <node concept="3F0ifn" id="2p1v3tObZuY" role="3EZMnx">
        <property role="3F0ifm" value="text" />
      </node>
      <node concept="3F0ifn" id="2p1v3tObZv4" role="3EZMnx">
        <property role="3F0ifm" value="color=" />
        <node concept="11LMrY" id="1BguvjG5EqM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1BguvjG4kKp" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:1BguvjG4kKm" resolve="color" />
      </node>
      <node concept="3F0ifn" id="1BguvjG4kLK" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="4rOpugPb5cT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2p1v3tObZvD" role="3EZMnx">
        <property role="3F0ifm" value="value=" />
        <node concept="11LMrY" id="1BguvjG5EqP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2p1v3tObZx5" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:2p1v3tObyyY" resolve="text" />
      </node>
      <node concept="3F0ifn" id="4rOpugPb5cV" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="4rOpugPb5cX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="4rOpugP4jx8" role="3EZMnx">
        <ref role="PMmxG" node="4rOpugP4iUV" resolve="TextIconThemeSelection" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Ib_Fk7zNfp">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:Ib_Fk7zNdB" resolve="Image" />
    <node concept="3EZMnI" id="Ib_Fk7zNfr" role="2wV5jI">
      <node concept="1QoScp" id="Ib_Fk7zNfs" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="pkWqt" id="Ib_Fk7zNft" role="3e4ffs">
          <node concept="3clFbS" id="Ib_Fk7zNfu" role="2VODD2">
            <node concept="3clFbF" id="Ib_Fk7zNfv" role="3cqZAp">
              <node concept="2OqwBi" id="Ib_Fk7zNfw" role="3clFbG">
                <node concept="2OqwBi" id="Ib_Fk7zNfx" role="2Oq$k0">
                  <node concept="pncrf" id="Ib_Fk7zNfy" role="2Oq$k0" />
                  <node concept="3TrcHB" id="Ib_Fk7zNZz" role="2OqNvi">
                    <ref role="3TsBF5" to="1oap:Ib_Fk7zNeV" resolve="file" />
                  </node>
                </node>
                <node concept="17RlXB" id="Ib_Fk7zNf$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="Ib_Fk7zNf_" role="1QoS34">
          <property role="3F0ifm" value="&lt;no icon&gt;" />
          <node concept="VechU" id="Ib_Fk7zNfA" role="3F10Kt">
            <property role="Vb096" value="fLJRk5A/lightGray" />
          </node>
        </node>
        <node concept="1QoScp" id="Ib_Fk7zNfB" role="1QoVPY">
          <property role="1QpmdY" value="true" />
          <node concept="pkWqt" id="Ib_Fk7zNfC" role="3e4ffs">
            <node concept="3clFbS" id="Ib_Fk7zNfD" role="2VODD2">
              <node concept="3clFbF" id="Ib_Fk7zNfE" role="3cqZAp">
                <node concept="2OqwBi" id="Ib_Fk7zNfF" role="3clFbG">
                  <node concept="pncrf" id="Ib_Fk7zNfG" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdyZ" role="2OqNvi">
                    <ref role="37wK5l" to="3767:Ib_Fk7zRKP" resolve="isValid" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="Ib_Fk7zNfI" role="1QoS34">
            <node concept="1u4HXA" id="Ib_Fk7zNfJ" role="3EZMnx">
              <node concept="4EIwk" id="Ib_Fk7zNfK" role="4GRq3">
                <node concept="3clFbS" id="Ib_Fk7zNfL" role="2VODD2">
                  <node concept="3clFbF" id="Ib_Fk7zNfM" role="3cqZAp">
                    <node concept="2OqwBi" id="Ib_Fk7zNfZ" role="3clFbG">
                      <node concept="pncrf" id="Ib_Fk7zNg0" role="2Oq$k0" />
                      <node concept="3TrcHB" id="Ib_Fk7zQte" role="2OqNvi">
                        <ref role="3TsBF5" to="1oap:Ib_Fk7zNeV" resolve="file" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="Ib_Fk7zNg2" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="Ib_Fk7zNg3" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="Ib_Fk7zNg4" role="1QoVPY">
            <property role="3F0ifm" value="&lt;invalid path&gt;" />
            <node concept="VechU" id="Ib_Fk7zNg5" role="3F10Kt">
              <property role="Vb096" value="fLwANPn/red" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3gTLQM" id="Ib_Fk7zNg6" role="3EZMnx">
        <node concept="3Fmcul" id="Ib_Fk7zNg7" role="3FoqZy">
          <node concept="3clFbS" id="Ib_Fk7zNg8" role="2VODD2">
            <node concept="3cpWs6" id="Ib_Fk7zNg9" role="3cqZAp">
              <node concept="2YIFZM" id="AN0tL0jRgr" role="3cqZAk">
                <ref role="37wK5l" to="7a0s:lnREv2ShpJ" resolve="createSelectImageButton" />
                <ref role="1Pybhc" to="7a0s:6UDbxo8i0QW" resolve="EditorUtil" />
                <node concept="pncrf" id="AN0tL0jRgs" role="37wK5m" />
                <node concept="355D3s" id="AN0tL0jRgt" role="37wK5m">
                  <ref role="355D3t" to="1oap:Ib_Fk7zNdB" resolve="Image" />
                  <ref role="355D3u" to="1oap:Ib_Fk7zNeV" resolve="file" />
                </node>
                <node concept="1Q80Hx" id="AN0tL0jRgu" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4rOpugPbjVP" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="4rOpugPbjVQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="4rOpugP4jrD" role="3EZMnx">
        <ref role="PMmxG" node="4rOpugP4iUV" resolve="TextIconThemeSelection" />
      </node>
      <node concept="l2Vlx" id="Ib_Fk7zNge" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1BguvjG4kJY">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:1BguvjG4kJt" resolve="ColorLiteral" />
    <node concept="3EZMnI" id="1BguvjG4kK3" role="2wV5jI">
      <node concept="2iRfu4" id="1BguvjG4kK4" role="2iSdaV" />
      <node concept="3F0ifn" id="1BguvjG4kK0" role="3EZMnx">
        <property role="3F0ifm" value="#" />
        <node concept="11LMrY" id="1ng4Vf3TdKo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHr" id="6cky_RDv_nt" role="3vIgyS">
          <ref role="2ZyFGn" to="1oap:1BguvjG4kJt" resolve="ColorLiteral" />
        </node>
      </node>
      <node concept="3F0A7n" id="1BguvjG4kKc" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:1BguvjG4kJx" resolve="val" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="ve0pw_$bON">
    <property role="3GE5qa" value="icons.instantiation" />
    <ref role="1XX52x" to="1oap:ve0pw_$bOu" resolve="ConceptIconResourceExpression" />
    <node concept="3EZMnI" id="ve0pw_$bOR" role="2wV5jI">
      <node concept="l2Vlx" id="ve0pw_$bOS" role="2iSdaV" />
      <node concept="PMmxH" id="ve0pw_$bOP" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="ve0pw_$bP0" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="11L4FC" id="ve0pw_$bRu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="ve0pw_$bTn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="49FXMLkTSh8" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:49FXMLkTOT$" resolve="concept" />
      </node>
      <node concept="3F0ifn" id="ve0pw_$bPy" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="11L4FC" id="ve0pw_$bRk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="ve0pw_$bRn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="ve0pw_$Alw">
    <property role="3GE5qa" value="icons.instantiation" />
    <ref role="1XX52x" to="1oap:ve0pw_$_Kq" resolve="NodeIconResourceExpression" />
    <node concept="3EZMnI" id="ve0pw_$Aly" role="2wV5jI">
      <node concept="l2Vlx" id="ve0pw_$Alz" role="2iSdaV" />
      <node concept="PMmxH" id="ve0pw_$Al$" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="ve0pw_$Al_" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="11L4FC" id="ve0pw_$AlA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="ve0pw_$AlB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="ve0pw_$AlY" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:ve0pw_$_Ks" resolve="node" />
      </node>
      <node concept="3F0ifn" id="ve0pw_$AlF" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="11L4FC" id="ve0pw_$AlG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="ve0pw_$AlH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="46nPloeq57g">
    <property role="3GE5qa" value="url" />
    <ref role="1XX52x" to="1oap:4voYo4rsXen" resolve="HelpURL" />
    <node concept="3EZMnI" id="46nPloeq57h" role="2wV5jI">
      <node concept="1iCGBv" id="46nPloeqmNv" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no base URL&gt;" />
        <ref role="1NtTu8" to="1oap:46nPloeqmr4" resolve="baseURL" />
        <node concept="1sVBvm" id="46nPloeqmNx" role="1sWHZn">
          <node concept="3F0A7n" id="46nPloeqnbv" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="Vb9p2" id="46nPloeAnUF" role="3F10Kt">
          <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
        </node>
      </node>
      <node concept="3F0A7n" id="4voYo4rtbR_" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no URL&gt;" />
        <ref role="1NtTu8" to="1oap:4voYo4rsXeo" resolve="url" />
      </node>
      <node concept="2iRfu4" id="4voYo4ruG$4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="46nPloeqmpr">
    <property role="3GE5qa" value="url" />
    <ref role="1XX52x" to="1oap:46nPloeqmpm" resolve="BaseURLFunction" />
    <node concept="3EZMnI" id="46nPloeqmpt" role="2wV5jI">
      <node concept="l2Vlx" id="46nPloeqmpu" role="2iSdaV" />
      <node concept="3F0ifn" id="46nPloeqmpv" role="3EZMnx">
        <property role="3F0ifm" value="URL" />
      </node>
      <node concept="3F0A7n" id="46nPloeqmqC" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="46nPloeqzza" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="46nPloeqmpC" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:46nPloeqmpn" resolve="calculator" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="46nPloeqzZW">
    <property role="3GE5qa" value="url" />
    <ref role="1XX52x" to="1oap:46nPloeqzyS" resolve="BaseURLLiteral" />
    <node concept="3EZMnI" id="46nPloeqzZY" role="2wV5jI">
      <node concept="l2Vlx" id="46nPloeqzZZ" role="2iSdaV" />
      <node concept="3F0ifn" id="46nPloeq$00" role="3EZMnx">
        <property role="3F0ifm" value="URL" />
      </node>
      <node concept="3F0A7n" id="46nPloeq$01" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="46nPloeq$0F" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="46nPloeq$09" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:46nPloeqzzN" resolve="url" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="7MKI4BAhNV$">
    <property role="3GE5qa" value="icons.descriptors" />
    <property role="TrG5h" value="DeleteNewUIFileIcon" />
    <ref role="1h_SK9" to="1oap:7Mb2akaesqV" resolve="FileIcon" />
    <node concept="1hA7zw" id="7MKI4BAhNV_" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="7MKI4BAhNVA" role="1hA7z_">
        <node concept="3clFbS" id="7MKI4BAhNVB" role="2VODD2">
          <node concept="3clFbJ" id="7MsHfaPJhuk" role="3cqZAp">
            <node concept="3clFbS" id="7MsHfaPJhul" role="3clFbx">
              <node concept="3cpWs6" id="7MsHfaPJhum" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7MsHfaPJhun" role="3clFbw">
              <node concept="0IXxy" id="7MsHfaPJhuo" role="2Oq$k0" />
              <node concept="2xy62i" id="7MsHfaPJhup" role="2OqNvi">
                <node concept="1Q80Hx" id="7MsHfaPJhuq" role="2xHN3q" />
                <node concept="2TlHUq" id="7MKI4BAiozQ" role="3a7HXU">
                  <ref role="2TlMyj" node="7MKI4BAioko" resolve="newuiVariantWrapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7MKI4BAhNWv" role="3cqZAp">
            <node concept="2OqwBi" id="7MKI4BAhPBf" role="3clFbG">
              <node concept="2OqwBi" id="7MKI4BAhO7t" role="2Oq$k0">
                <node concept="0IXxy" id="7MKI4BAhNWu" role="2Oq$k0" />
                <node concept="3TrcHB" id="7MKI4BAhOkD" role="2OqNvi">
                  <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                </node>
              </node>
              <node concept="tyxLq" id="7MKI4BAhQxO" role="2OqNvi">
                <node concept="Xl_RD" id="7MKI4BAhQyu" role="tz02z">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="7MKI4BAi_H1" role="jK8aL">
        <node concept="3clFbS" id="7MKI4BAi_H2" role="2VODD2">
          <node concept="3clFbF" id="7MKI4BAi_VU" role="3cqZAp">
            <node concept="2OqwBi" id="7MKI4BAiCiz" role="3clFbG">
              <node concept="2OqwBi" id="7MKI4BAiAmd" role="2Oq$k0">
                <node concept="0IXxy" id="7MKI4BAi_VT" role="2Oq$k0" />
                <node concept="3TrcHB" id="7MKI4BAiAMm" role="2OqNvi">
                  <ref role="3TsBF5" to="1oap:1$fQzw7xISD" resolve="newuiFile" />
                </node>
              </node>
              <node concept="17RvpY" id="7MKI4BAiDf0" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6S5fI02tqpQ">
    <property role="3GE5qa" value="icons.descriptors" />
    <ref role="1XX52x" to="1oap:6S5fI02sJjS" resolve="ConstantFieldIcon" />
    <node concept="3EZMnI" id="6S5fI02tqso" role="2wV5jI">
      <node concept="3F0ifn" id="6S5fI02tqtX" role="3EZMnx">
        <property role="3F0ifm" value="constant:" />
      </node>
      <node concept="3F1sOY" id="6S5fI02tquZ" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:6S5fI02sJzE" resolve="field" />
      </node>
      <node concept="l2Vlx" id="6S5fI02tqsr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7tcRu9qvNeO">
    <property role="3GE5qa" value="icons.descriptors" />
    <ref role="1XX52x" to="1oap:7tcRu9qvxgB" resolve="FactoryMethodIcon" />
    <node concept="3EZMnI" id="7tcRu9qvNfV" role="2wV5jI">
      <node concept="3F0ifn" id="7tcRu9qvNfW" role="3EZMnx">
        <property role="3F0ifm" value="factory method" />
      </node>
      <node concept="3F1sOY" id="7tcRu9qvNfX" role="3EZMnx">
        <ref role="1NtTu8" to="1oap:7tcRu9qvxgD" resolve="factoryMethod" />
      </node>
      <node concept="l2Vlx" id="7tcRu9qvNfY" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rOpugP4iUV">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <property role="TrG5h" value="TextIconThemeSelection" />
    <ref role="1XX52x" to="1oap:3CuULxINGAz" resolve="IThemeKindSpecific" />
    <node concept="3EZMnI" id="4rOpugPcWZV" role="2wV5jI">
      <node concept="2iRfu4" id="4rOpugPcWZW" role="2iSdaV" />
      <node concept="3EZMnI" id="4rOpugP4iUX" role="3EZMnx">
        <node concept="3F0ifn" id="4rOpugP4iV3" role="3EZMnx">
          <property role="3F0ifm" value="apply to:" />
        </node>
        <node concept="3F1sOY" id="4rOpugP5j8B" role="3EZMnx">
          <property role="2ru_X1" value="true" />
          <ref role="1NtTu8" to="1oap:3CuULxINMq$" resolve="targetThemeKind" />
          <node concept="3F0ifn" id="4rOpugP5j8D" role="2ruayu">
            <property role="3F0ifm" value="all themes" />
            <ref role="1k5W1q" to="tpch:6t_vhrzKdF" resolve="Comment" />
            <node concept="VPxyj" id="4rOpugPcJZG" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="4rOpugP4iV0" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="4rOpugPcWZY" role="3EZMnx">
        <node concept="VPM3Z" id="4rOpugPcX00" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4rOpugP5x3w">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:4rOpugP5j8z" resolve="TargetTextIconThemeKind" />
    <node concept="PMmxH" id="4rOpugP5x3y" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" to="tpch:24YP6ZDyde4" resolve="Keyword" />
    </node>
  </node>
  <node concept="24kQdi" id="4rOpugPdaE_">
    <property role="3GE5qa" value="icons.descriptors.text" />
    <ref role="1XX52x" to="1oap:4rOpugPdabk" resolve="JBColorLiteral" />
    <node concept="3EZMnI" id="4rOpugPdaEB" role="2wV5jI">
      <node concept="2iRfu4" id="4rOpugPdaEC" role="2iSdaV" />
      <node concept="3F0ifn" id="4rOpugPdaED" role="3EZMnx">
        <property role="3F0ifm" value="##" />
        <node concept="A1WHr" id="6cky_RDvNYv" role="3vIgyS">
          <ref role="2ZyFGn" to="1oap:4rOpugPdabk" resolve="JBColorLiteral" />
        </node>
        <node concept="11LMrY" id="6cky_RDKCBi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6cky_RDJHSb" role="3EZMnx">
        <property role="3F0ifm" value="light:" />
        <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        <node concept="11LMrY" id="6cky_RDJWxM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4rOpugPdaEF" role="3EZMnx">
        <property role="1$x2rV" value="light" />
        <ref role="1NtTu8" to="1oap:4rOpugPdaEz" resolve="lightThemeVal" />
      </node>
      <node concept="3F0ifn" id="4rOpugPdaEH" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="11L4FC" id="6cky_RDJvfU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6cky_RDJvfW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6cky_RDJHSh" role="3EZMnx">
        <property role="3F0ifm" value="dark:" />
        <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        <node concept="11LMrY" id="6cky_RDJWxO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4rOpugPdaEN" role="3EZMnx">
        <property role="1$x2rV" value="dark" />
        <ref role="1NtTu8" to="1oap:4rOpugPdaE$" resolve="darkThemeVal" />
      </node>
    </node>
  </node>
</model>

