<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5ec7bf64-acd2-448b-8f9b-ce1b8d920038(jetbrains.mps.vcs.plugin)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="p37l" ref="r:df1b052a-af27-4b87-80fc-1492fa2192be(jetbrains.mps.vcs.diff.ui)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="zbx9" ref="r:c29f530b-f74d-4627-9da2-61138cfa6722(jetbrains.mps.vcs.platform.actions)" />
    <import index="ur19" ref="r:d58d9938-2526-431c-a5fe-6bbbfeb64ac2(jetbrains.mps.vcs.util)" />
    <import index="4rb9" ref="r:e4939376-be00-4167-9510-67715eca6425(jetbrains.mps.vcs.platform.util)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="4hrd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.vfs(MPS.Platform/)" />
    <import index="j86o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.impl(MPS.IDEA/)" />
    <import index="3fkn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileChooser(MPS.IDEA/)" />
    <import index="kart" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:org.xml.sax(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="iho" ref="r:57faf072-5a23-4c30-9cf6-da73f0e0a8ad(jetbrains.mps.vcspersistence)" />
    <import index="tcg7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.fileTypes(MPS.Platform/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="drpk" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.make(MPS.Platform/)" />
    <import index="o6ex" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.generator(MPS.Workbench/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="o8e1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.merge(MPS.IDEA/)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="iwsx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileEditor(MPS.IDEA/)" />
    <import index="phib" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.requests(MPS.IDEA/)" />
    <import index="2o8p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.contents(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="24bc" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.vfs.tracking(MPS.Platform/)" />
    <import index="iyvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence.datasource(MPS.Core/)" />
    <import index="ap4t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator(MPS.Core/)" />
    <import index="ap4u" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="1038" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.changes(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5023285075122009364" name="jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor" flags="ng" index="9BnSX">
        <property id="5023285075122009369" name="version" index="9BnSK" />
        <property id="5023285075122009368" name="descripttion" index="9BnSL" />
        <property id="5023285075122009371" name="vendor" index="9BnSM" />
        <property id="5023285075122009373" name="ideaVersion" index="9BnSO" />
        <property id="5023285075122009372" name="vendorUrl" index="9BnSP" />
        <property id="5023285075122009366" name="id" index="9BnSZ" />
        <property id="1573568368168371217" name="handleErrors" index="3FCvg6" />
      </concept>
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
        <child id="1227011543811" name="actualParameter" index="2J__8u" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1" />
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ngI" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5678361901872075170" name="jetbrains.mps.lang.plugin.structure.EditableModel" flags="ng" index="3dZWAM" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204383956737" name="jetbrains.mps.lang.plugin.structure.InterfaceGroup" flags="ng" index="1ESbSp">
        <child id="1206193920040" name="groupID" index="3mKD$K" />
      </concept>
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="8329979535468945057" name="jetbrains.mps.lang.smodel.structure.Node_PresentationOperation" flags="ng" index="2Iv5rx" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="sE7Ow" id="6ySnuJfjg$i">
    <property role="TrG5h" value="ReRunMergeFromBackup" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Rerun Merge from Backup" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="7xjR2e1II1J" role="32lrUH">
      <property role="TrG5h" value="getBackupFiles" />
      <node concept="A3Dl8" id="7xjR2e1IJ99" role="3clF45">
        <node concept="3uibUv" id="7xjR2e1IJ9b" role="A3Ik2">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="7xjR2e1II1L" role="3clF47">
        <node concept="3clFbF" id="7xjR2e1IJ9c" role="3cqZAp">
          <node concept="2YIFZM" id="nQhvklQS0D" role="3clFbG">
            <ref role="37wK5l" to="4rb9:nQhvklQRZU" resolve="findZipFilesForModelFile" />
            <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
            <node concept="2OqwBi" id="7xjR2e1IJa3" role="37wK5m">
              <node concept="2OqwBi" id="7xjR2e1IJ9f" role="2Oq$k0">
                <node concept="2WthIp" id="7xjR2e1IJ9g" role="2Oq$k0" />
                <node concept="2XshWL" id="7xjR2e1IJ9h" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjgA8" resolve="getModelFile" />
                </node>
              </node>
              <node concept="liA8E" id="7xjR2e1IJa7" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7xjR2e1II1M" role="1B3o_S" />
    </node>
    <node concept="2ScWuX" id="6ySnuJfjg$j" role="tmbBb">
      <node concept="3clFbS" id="6ySnuJfjg$k" role="2VODD2">
        <node concept="3clFbJ" id="4VS95Tzy1Uc" role="3cqZAp">
          <node concept="3clFbS" id="4VS95Tzy1Ue" role="3clFbx">
            <node concept="3cpWs6" id="4VS95Tzyp3P" role="3cqZAp">
              <node concept="3clFbT" id="4VS95Tzyrs6" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4VS95Tzy2Ha" role="3clFbw">
            <node concept="2ZW3vV" id="4VS95Tzyk6K" role="3fr31v">
              <node concept="3uibUv" id="4VS95TzymBz" role="2ZW6by">
                <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
              </node>
              <node concept="2OqwBi" id="4VS95Tzyc7n" role="2ZW6bz">
                <node concept="liA8E" id="4VS95TzyfiT" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                </node>
                <node concept="2OqwBi" id="4VS95Tzy3mn" role="2Oq$k0">
                  <node concept="1DTwFV" id="4VS95Tzy5nM" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjgCN" resolve="model" />
                  </node>
                  <node concept="2WthIp" id="4VS95Tzy2UO" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ySnuJfjg$l" role="3cqZAp">
          <node concept="3cpWsn" id="6ySnuJfjg$m" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="6ySnuJfjg$n" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
            </node>
            <node concept="2YIFZM" id="6ySnuJfjg$o" role="33vP2m">
              <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="jlcu:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
              <node concept="2OqwBi" id="6ySnuJfjg$p" role="37wK5m">
                <node concept="2WthIp" id="6ySnuJfjg$q" role="2Oq$k0" />
                <node concept="1DTwFV" id="6ySnuJfjg$r" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjgCO" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ySnuJfjg$s" role="3cqZAp">
          <node concept="3clFbS" id="6ySnuJfjg$t" role="3clFbx">
            <node concept="3cpWs6" id="6ySnuJfjg$u" role="3cqZAp">
              <node concept="3clFbT" id="6ySnuJfjg$v" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6ySnuJfjg$w" role="3clFbw">
            <node concept="2OqwBi" id="6ySnuJfjg$x" role="3uHU7B">
              <node concept="2OqwBi" id="6ySnuJfjg$y" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTwEL" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ySnuJfjg$m" resolve="manager" />
                </node>
                <node concept="liA8E" id="6ySnuJfjg$$" role="2OqNvi">
                  <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getAllVersionedRoots()" resolve="getAllVersionedRoots" />
                </node>
              </node>
              <node concept="1Rwk04" id="6ySnuJfjg$_" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="6ySnuJfjg$A" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ySnuJfjg$L" role="3cqZAp">
          <node concept="3cpWsn" id="6ySnuJfjg$M" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="6ySnuJfjg$N" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="Jpw4evqkEn" role="33vP2m">
              <node concept="2OqwBi" id="Jpw4evqhMy" role="2Oq$k0">
                <node concept="2OqwBi" id="Jpw4evqg$q" role="2Oq$k0">
                  <node concept="2WthIp" id="Jpw4evqg$t" role="2Oq$k0" />
                  <node concept="1DTwFV" id="Jpw4evqg$v" role="2OqNvi">
                    <ref role="2WH_rO" node="3oQv0AQayGV" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="Jpw4evqjWo" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                </node>
              </node>
              <node concept="liA8E" id="Jpw4evqnpS" role="2OqNvi">
                <ref role="37wK5l" to="4hrd:~IdeaFileSystem.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
                <node concept="2OqwBi" id="6tLsn3mRIo_" role="37wK5m">
                  <node concept="2WthIp" id="6tLsn3mRIoA" role="2Oq$k0" />
                  <node concept="2XshWL" id="6tLsn3mRIoB" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjgA8" resolve="getModelFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ySnuJfjg$S" role="3cqZAp">
          <node concept="3clFbS" id="6ySnuJfjg$T" role="3clFbx">
            <node concept="3cpWs6" id="6ySnuJfjg$U" role="3cqZAp">
              <node concept="3clFbT" id="6ySnuJfjg$V" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6ySnuJfjg$W" role="3clFbw">
            <node concept="10Nm6u" id="6ySnuJfjg$X" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTz83" role="3uHU7B">
              <ref role="3cqZAo" node="6ySnuJfjg$M" resolve="file" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ySnuJfjg$Z" role="3cqZAp">
          <node concept="1Wc70l" id="7xjR2e1IJa8" role="3cqZAk">
            <node concept="2OqwBi" id="7xjR2e1IJae" role="3uHU7w">
              <node concept="2OqwBi" id="7xjR2e1IJab" role="2Oq$k0">
                <node concept="2WthIp" id="7xjR2e1IJac" role="2Oq$k0" />
                <node concept="2XshWL" id="7xjR2e1IJad" role="2OqNvi">
                  <ref role="2WH_rO" node="7xjR2e1II1J" resolve="getBackupFiles" />
                </node>
              </node>
              <node concept="3GX2aA" id="7xjR2e1IJai" role="2OqNvi" />
            </node>
            <node concept="3y3z36" id="6ySnuJfjg_0" role="3uHU7B">
              <node concept="2OqwBi" id="6ySnuJfjg_2" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTsW1" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ySnuJfjg$m" resolve="manager" />
                </node>
                <node concept="liA8E" id="6ySnuJfjg_4" role="2OqNvi">
                  <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getVcsFor(com.intellij.openapi.vfs.VirtualFile)" resolve="getVcsFor" />
                  <node concept="37vLTw" id="3GM_nagTApk" role="37wK5m">
                    <ref role="3cqZAo" node="6ySnuJfjg$M" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="6ySnuJfjg_1" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="6ySnuJfjgA8" role="32lrUH">
      <property role="TrG5h" value="getModelFile" />
      <node concept="3clFbS" id="6ySnuJfjgA9" role="3clF47">
        <node concept="3clFbF" id="6ySnuJfjgAa" role="3cqZAp">
          <node concept="2OqwBi" id="6l95PJTb4zo" role="3clFbG">
            <node concept="1eOMI4" id="6ySnuJfjgAc" role="2Oq$k0">
              <node concept="10QFUN" id="4VS95TzwjOJ" role="1eOMHV">
                <node concept="3uibUv" id="4VS95TzwmeM" role="10QFUM">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="2OqwBi" id="4VS95TzwdUZ" role="10QFUP">
                  <node concept="liA8E" id="4VS95TzwgZv" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                  </node>
                  <node concept="2OqwBi" id="6ySnuJfjgAe" role="2Oq$k0">
                    <node concept="2WthIp" id="6ySnuJfjgAf" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6ySnuJfjgAg" role="2OqNvi">
                      <ref role="2WH_rO" node="6ySnuJfjgCN" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6l95PJTb5Fd" role="2OqNvi">
              <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6ySnuJfjgAj" role="1B3o_S" />
      <node concept="3uibUv" id="6ySnuJfjgAk" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
    </node>
    <node concept="2XrIbr" id="6ySnuJfjgAl" role="32lrUH">
      <property role="TrG5h" value="selectMineModel" />
      <node concept="17QB3L" id="1pUzypQvwjU" role="3clF45" />
      <node concept="37vLTG" id="6ySnuJfjgAn" role="3clF46">
        <property role="TrG5h" value="currentModel" />
        <node concept="17QB3L" id="1pUzypQvwiL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ySnuJfjgAp" role="3clF46">
        <property role="TrG5h" value="backUpModel" />
        <node concept="17QB3L" id="1pUzypQvwiM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6ySnuJfjgAr" role="3clF47">
        <node concept="3clFbJ" id="1pUzypQvwiT" role="3cqZAp">
          <node concept="3clFbS" id="1pUzypQvwiU" role="3clFbx">
            <node concept="3cpWs6" id="1pUzypQvwjS" role="3cqZAp">
              <node concept="37vLTw" id="2BHiRxgmj1A" role="3cqZAk">
                <ref role="3cqZAo" node="6ySnuJfjgAp" resolve="backUpModel" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1pUzypQvwiX" role="3clFbw">
            <node concept="2YIFZM" id="3YxHbpry0Wp" role="2Oq$k0">
              <ref role="37wK5l" to="ap4t:~ModelDigestUtil.hashText(java.lang.String)" resolve="hashText" />
              <ref role="1Pybhc" to="ap4t:~ModelDigestUtil" resolve="ModelDigestUtil" />
              <node concept="37vLTw" id="2BHiRxgmzsu" role="37wK5m">
                <ref role="3cqZAo" node="6ySnuJfjgAn" resolve="currentModel" />
              </node>
            </node>
            <node concept="liA8E" id="1pUzypQvwj0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2YIFZM" id="3YxHbpry1Z_" role="37wK5m">
                <ref role="37wK5l" to="ap4t:~ModelDigestUtil.hashText(java.lang.String)" resolve="hashText" />
                <ref role="1Pybhc" to="ap4t:~ModelDigestUtil" resolve="ModelDigestUtil" />
                <node concept="37vLTw" id="2BHiRxgh9Vd" role="37wK5m">
                  <ref role="3cqZAo" node="6ySnuJfjgAp" resolve="backUpModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1pUzypQvwj5" role="9aQIa">
            <node concept="3clFbS" id="1pUzypQvwj6" role="9aQI4">
              <node concept="3cpWs8" id="1pUzypQvwj7" role="3cqZAp">
                <node concept="3cpWsn" id="1pUzypQvwj8" role="3cpWs9">
                  <property role="TrG5h" value="current" />
                  <node concept="17QB3L" id="1pUzypQvwj9" role="1tU5fm" />
                  <node concept="Xl_RD" id="1pUzypQvwja" role="33vP2m">
                    <property role="Xl_RC" value="Currently Loaded Model" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1pUzypQvwjb" role="3cqZAp">
                <node concept="3cpWsn" id="1pUzypQvwjc" role="3cpWs9">
                  <property role="TrG5h" value="backup" />
                  <node concept="17QB3L" id="1pUzypQvwjd" role="1tU5fm" />
                  <node concept="Xl_RD" id="1pUzypQvwje" role="33vP2m">
                    <property role="Xl_RC" value="Backed Up Model" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1pUzypQvwjf" role="3cqZAp">
                <node concept="3cpWsn" id="1pUzypQvwjg" role="3cpWs9">
                  <property role="TrG5h" value="options" />
                  <node concept="10Q1$e" id="1pUzypQvwjh" role="1tU5fm">
                    <node concept="17QB3L" id="1pUzypQvwji" role="10Q1$1" />
                  </node>
                  <node concept="2BsdOp" id="1pUzypQvwjj" role="33vP2m">
                    <node concept="37vLTw" id="3GM_nagTuNv" role="2BsfMF">
                      <ref role="3cqZAo" node="1pUzypQvwj8" resolve="current" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTtC8" role="2BsfMF">
                      <ref role="3cqZAo" node="1pUzypQvwjc" resolve="backup" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1pUzypQvwjm" role="3cqZAp">
                <node concept="3cpWsn" id="1pUzypQvwjn" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="10Oyi0" id="1pUzypQvwjo" role="1tU5fm" />
                  <node concept="2YIFZM" id="1pUzypQvwjp" role="33vP2m">
                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                    <ref role="37wK5l" to="jkm4:~Messages.showDialog(java.lang.String,java.lang.String,java.lang.String[],int,javax.swing.Icon)" resolve="showDialog" />
                    <node concept="Xl_RD" id="1pUzypQvwjq" role="37wK5m">
                      <property role="Xl_RC" value="Backed up \&quot;mine\&quot; model is different from current model.\n Which version would you like to use?" />
                    </node>
                    <node concept="Xl_RD" id="1pUzypQvwjr" role="37wK5m">
                      <property role="Xl_RC" value="Current model differs from backup." />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTvpO" role="37wK5m">
                      <ref role="3cqZAo" node="1pUzypQvwjg" resolve="options" />
                    </node>
                    <node concept="3cmrfG" id="1pUzypQvwjt" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2YIFZM" id="1pUzypQvwju" role="37wK5m">
                      <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                      <ref role="37wK5l" to="jkm4:~Messages.getQuestionIcon()" resolve="getQuestionIcon" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1pUzypQvwjv" role="3cqZAp">
                <node concept="3clFbS" id="1pUzypQvwjw" role="3clFbx">
                  <node concept="3cpWs6" id="1pUzypQvwjx" role="3cqZAp">
                    <node concept="10Nm6u" id="1pUzypQvwjy" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3clFbC" id="1pUzypQvwjz" role="3clFbw">
                  <node concept="3cmrfG" id="1pUzypQvwj$" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTACh" role="3uHU7B">
                    <ref role="3cqZAo" node="1pUzypQvwjn" resolve="result" />
                  </node>
                </node>
                <node concept="3eNFk2" id="1pUzypQvwjA" role="3eNLev">
                  <node concept="3clFbS" id="1pUzypQvwjB" role="3eOfB_">
                    <node concept="3cpWs6" id="1pUzypQvwjC" role="3cqZAp">
                      <node concept="37vLTw" id="2BHiRxghguw" role="3cqZAk">
                        <ref role="3cqZAo" node="6ySnuJfjgAn" resolve="currentModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1pUzypQvwjE" role="3eO9$A">
                    <node concept="AH0OO" id="1pUzypQvwjF" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTrmO" role="AHEQo">
                        <ref role="3cqZAo" node="1pUzypQvwjn" resolve="result" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTyJ0" role="AHHXb">
                        <ref role="3cqZAo" node="1pUzypQvwjg" resolve="options" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1pUzypQvwjI" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="3GM_nagTvcr" role="37wK5m">
                        <ref role="3cqZAo" node="1pUzypQvwj8" resolve="current" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1pUzypQvwjK" role="9aQIa">
                  <node concept="3clFbS" id="1pUzypQvwjL" role="9aQI4">
                    <node concept="3cpWs6" id="1pUzypQvwjM" role="3cqZAp">
                      <node concept="37vLTw" id="2BHiRxgkWD$" role="3cqZAk">
                        <ref role="3cqZAo" node="6ySnuJfjgAp" resolve="backUpModel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6ySnuJfjgBp" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="6ySnuJfjgBq" role="tncku">
      <node concept="3clFbS" id="6ySnuJfjgBr" role="2VODD2">
        <node concept="3cpWs8" id="59Mw_8gJfFf" role="3cqZAp">
          <node concept="3cpWsn" id="59Mw_8gJfFg" role="3cpWs9">
            <property role="TrG5h" value="modelReference" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="59Mw_8gJfFd" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="59Mw_8gJfFh" role="33vP2m">
              <node concept="liA8E" id="59Mw_8gJfFi" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
              </node>
              <node concept="2OqwBi" id="59Mw_8gJfFj" role="2Oq$k0">
                <node concept="2WthIp" id="59Mw_8gJfFk" role="2Oq$k0" />
                <node concept="1DTwFV" id="59Mw_8gJfFl" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjgCN" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4BapoMDqoin" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokMx" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokMy" role="1PaTwD">
              <property role="3oM_SC" value="this.model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMz" role="1PaTwD">
              <property role="3oM_SC" value="came" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokM$" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokM_" role="1PaTwD">
              <property role="3oM_SC" value="repo," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMA" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMB" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMC" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMD" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokME" role="1PaTwD">
              <property role="3oM_SC" value="supported" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMF" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMG" role="1PaTwD">
              <property role="3oM_SC" value="ModelPersistence" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2MLOuzOTAfF" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokMH" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokMI" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMJ" role="1PaTwD">
              <property role="3oM_SC" value="^^^" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMK" role="1PaTwD">
              <property role="3oM_SC" value="WHY?" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7bkTVicVyxM" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokML" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokMM" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMN" role="1PaTwD">
              <property role="3oM_SC" value="prefer" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMO" role="1PaTwD">
              <property role="3oM_SC" value="ModelFactory.save(openapi.SModel," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMP" role="1PaTwD">
              <property role="3oM_SC" value="in-memory" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMQ" role="1PaTwD">
              <property role="3oM_SC" value="stream" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMR" role="1PaTwD">
              <property role="3oM_SC" value="data" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMS" role="1PaTwD">
              <property role="3oM_SC" value="source);" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMT" role="1PaTwD">
              <property role="3oM_SC" value="perhaps" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMU" role="1PaTwD">
              <property role="3oM_SC" value="PersVersAware.getModelFactory()?" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2MLOuzOTSWD" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokMV" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokMW" role="1PaTwD">
              <property role="3oM_SC" value="In" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMX" role="1PaTwD">
              <property role="3oM_SC" value="fact," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMY" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokMZ" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN0" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN1" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN2" role="1PaTwD">
              <property role="3oM_SC" value="actual" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN3" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN4" role="1PaTwD">
              <property role="3oM_SC" value="persistence" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN5" role="1PaTwD">
              <property role="3oM_SC" value="format," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN6" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN7" role="1PaTwD">
              <property role="3oM_SC" value="strings" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN8" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokN9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNa" role="1PaTwD">
              <property role="3oM_SC" value="zip" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNb" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNc" role="1PaTwD">
              <property role="3oM_SC" value="likely" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNd" role="1PaTwD">
              <property role="3oM_SC" value="plain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNe" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNf" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNg" role="1PaTwD">
              <property role="3oM_SC" value="VCS," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNh" role="1PaTwD">
              <property role="3oM_SC" value="which," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2MLOuzOTV0N" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokNi" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokNj" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNk" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNl" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNm" role="1PaTwD">
              <property role="3oM_SC" value="model," />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNn" role="1PaTwD">
              <property role="3oM_SC" value="usually" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNo" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNp" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNq" role="1PaTwD">
              <property role="3oM_SC" value="persistence" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNr" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNs" role="1PaTwD">
              <property role="3oM_SC" value="current" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNt" role="1PaTwD">
              <property role="3oM_SC" value="(unless" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNu" role="1PaTwD">
              <property role="3oM_SC" value="persistence" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNv" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNw" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNx" role="1PaTwD">
              <property role="3oM_SC" value="changed)." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gbSomzwiDZ" role="3cqZAp">
          <node concept="3cpWsn" id="1gbSomzwiE0" role="3cpWs9">
            <property role="TrG5h" value="modelData" />
            <node concept="17QB3L" id="1LiylnUNQ2c" role="1tU5fm" />
            <node concept="2OqwBi" id="59Mw_8gJK5k" role="33vP2m">
              <node concept="2ShNRf" id="59Mw_8gJAAd" role="2Oq$k0">
                <node concept="1pGfFk" id="59Mw_8gJGh5" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="59Mw_8gJIVC" role="37wK5m">
                    <node concept="2OqwBi" id="59Mw_8gJIVD" role="2Oq$k0">
                      <node concept="2WthIp" id="59Mw_8gJIVE" role="2Oq$k0" />
                      <node concept="1DTwFV" id="59Mw_8gJIVF" role="2OqNvi">
                        <ref role="2WH_rO" node="6ySnuJfjgCN" resolve="model" />
                      </node>
                    </node>
                    <node concept="liA8E" id="59Mw_8gJIVG" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="59Mw_8gJLg9" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="59Mw_8gJMdk" role="37wK5m">
                  <node concept="3clFbS" id="59Mw_8gJMdl" role="1bW5cS">
                    <node concept="3SKdUt" id="3oQv0AQ9kVV" role="3cqZAp">
                      <node concept="1PaTwC" id="3oQv0AQ9kVW" role="1aUNEU">
                        <node concept="3oM_SD" id="3oQv0AQ9kVY" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9lZo" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9mpj" role="1PaTwD">
                          <property role="3oM_SC" value="long" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9mpq" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9mGE" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9mGN" role="1PaTwD">
                          <property role="3oM_SC" value="use" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9mGX" role="1PaTwD">
                          <property role="3oM_SC" value="modelData" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9n0g" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9n0s" role="1PaTwD">
                          <property role="3oM_SC" value="match" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9no$" role="1PaTwD">
                          <property role="3oM_SC" value="against" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9noM" role="1PaTwD">
                          <property role="3oM_SC" value="'mine'" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9pae" role="1PaTwD">
                          <property role="3oM_SC" value="content" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9qwt" role="1PaTwD">
                          <property role="3oM_SC" value="from" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9qwI" role="1PaTwD">
                          <property role="3oM_SC" value="merge" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9qWd" role="1PaTwD">
                          <property role="3oM_SC" value="backup," />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9s97" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9s9r" role="1PaTwD">
                          <property role="3oM_SC" value="implicitly" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9sP3" role="1PaTwD">
                          <property role="3oM_SC" value="assume" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9utX" role="1PaTwD">
                          <property role="3oM_SC" value="here" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="3oQv0AQ9vs9" role="3cqZAp">
                      <node concept="1PaTwC" id="3oQv0AQ9vsa" role="1aUNEU">
                        <node concept="3oM_SD" id="3oQv0AQ9vsc" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9vsK" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9wmk" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9wmr" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9x5c" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9xlT" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9xmf" role="1PaTwD">
                          <property role="3oM_SC" value="merge" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9xDy" role="1PaTwD">
                          <property role="3oM_SC" value="uses" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9ziY" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9zAj" role="1PaTwD">
                          <property role="3oM_SC" value="same" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9zAx" role="1PaTwD">
                          <property role="3oM_SC" value="ModelFactory" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9_MH" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9_Ve" role="1PaTwD">
                          <property role="3oM_SC" value="save" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9AeB" role="1PaTwD">
                          <property role="3oM_SC" value="model" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9Ay1" role="1PaTwD">
                          <property role="3oM_SC" value="into" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9Ayk" role="1PaTwD">
                          <property role="3oM_SC" value="backup" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9C09" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9C0u" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9CjW" role="1PaTwD">
                          <property role="3oM_SC" value="use" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9CRG" role="1PaTwD">
                          <property role="3oM_SC" value="here" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9D8l" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9D8I" role="1PaTwD">
                          <property role="3oM_SC" value="obtain" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9ELG" role="1PaTwD">
                          <property role="3oM_SC" value="actual" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQ9FFv" role="1PaTwD">
                          <property role="3oM_SC" value="content" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="3oQv0AQb51q" role="3cqZAp">
                      <node concept="1PaTwC" id="3oQv0AQb51r" role="1aUNEU">
                        <node concept="3oM_SD" id="3oQv0AQb51t" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb5qb" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb5LC" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb5LJ" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb5LR" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb7FL" role="1PaTwD">
                          <property role="3oM_SC" value="I'd" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb9O8" role="1PaTwD">
                          <property role="3oM_SC" value="say" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQb9Oj" role="1PaTwD">
                          <property role="3oM_SC" value="it" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQba7b" role="1PaTwD">
                          <property role="3oM_SC" value="has" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbbaG" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbbaU" role="1PaTwD">
                          <property role="3oM_SC" value="use" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbbb9" role="1PaTwD">
                          <property role="3oM_SC" value="VCSPersistenceUtil.saveModel" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbggK" role="1PaTwD">
                          <property role="3oM_SC" value="so" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbhrD" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbhIB" role="1PaTwD">
                          <property role="3oM_SC" value="one" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbjes" role="1PaTwD">
                          <property role="3oM_SC" value="can" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbjxs" role="1PaTwD">
                          <property role="3oM_SC" value="expect" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbjT8" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbl46" role="1PaTwD">
                          <property role="3oM_SC" value="persistence" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQblIw" role="1PaTwD">
                          <property role="3oM_SC" value="approach" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbngR" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQboNf" role="1PaTwD">
                          <property role="3oM_SC" value="backup" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbpyn" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbpyM" role="1PaTwD">
                          <property role="3oM_SC" value="actual" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbwm7" role="1PaTwD">
                          <property role="3oM_SC" value="content" />
                        </node>
                        <node concept="3oM_SD" id="3oQv0AQbr5E" role="1PaTwD">
                          <property role="3oM_SC" value="matches" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3oQv0AQ9JRE" role="3cqZAp">
                      <node concept="3cpWsn" id="3oQv0AQ9JRF" role="3cpWs9">
                        <property role="TrG5h" value="xmlPersistence" />
                        <node concept="3uibUv" id="3oQv0AQ9JRG" role="1tU5fm">
                          <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
                        </node>
                        <node concept="2OqwBi" id="3oQv0AQaWP6" role="33vP2m">
                          <node concept="2OqwBi" id="3oQv0AQaTH5" role="2Oq$k0">
                            <node concept="2OqwBi" id="3oQv0AQaRZO" role="2Oq$k0">
                              <node concept="2WthIp" id="3oQv0AQaRZR" role="2Oq$k0" />
                              <node concept="1DTwFV" id="3oQv0AQaRZT" role="2OqNvi">
                                <ref role="2WH_rO" node="3oQv0AQayGV" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3oQv0AQaUCu" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                              <node concept="3VsKOn" id="3oQv0AQaWem" role="37wK5m">
                                <ref role="3VsUkX" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3oQv0AQaYaC" role="2OqNvi">
                            <ref role="37wK5l" to="ends:~ModelFactoryService.getDefaultModelFactory(org.jetbrains.mps.openapi.persistence.datasource.DataSourceType)" resolve="getDefaultModelFactory" />
                            <node concept="10M0yZ" id="3oQv0AQb2x$" role="37wK5m">
                              <ref role="3cqZAo" to="iyvn:~PreinstalledDataSourceTypes.MPS" resolve="MPS" />
                              <ref role="1PxDUh" to="iyvn:~PreinstalledDataSourceTypes" resolve="PreinstalledDataSourceTypes" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3oQv0AQ9RaR" role="3cqZAp">
                      <node concept="3cpWsn" id="3oQv0AQ9RaS" role="3cpWs9">
                        <property role="TrG5h" value="modelAsBytes" />
                        <node concept="10Q1$e" id="3oQv0AQ9QjZ" role="1tU5fm">
                          <node concept="10PrrI" id="3oQv0AQ9Qk2" role="10Q1$1" />
                        </node>
                        <node concept="2YIFZM" id="3oQv0AQ9RaT" role="33vP2m">
                          <ref role="37wK5l" to="pa15:~PersistenceUtil.modelAsBytes(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.persistence.ModelFactory)" resolve="modelAsBytes" />
                          <ref role="1Pybhc" to="pa15:~PersistenceUtil" resolve="PersistenceUtil" />
                          <node concept="2OqwBi" id="3oQv0AQ9RaU" role="37wK5m">
                            <node concept="2WthIp" id="3oQv0AQ9RaV" role="2Oq$k0" />
                            <node concept="1DTwFV" id="3oQv0AQ9RaW" role="2OqNvi">
                              <ref role="2WH_rO" node="6ySnuJfjgCN" resolve="model" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3oQv0AQ9RaX" role="37wK5m">
                            <ref role="3cqZAo" node="3oQv0AQ9JRF" resolve="xmlPersistence" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3oQv0AQ9SF8" role="3cqZAp">
                      <node concept="3K4zz7" id="3oQv0AQ9U6B" role="3cqZAk">
                        <node concept="10Nm6u" id="3oQv0AQ9Uqr" role="3K4E3e" />
                        <node concept="2ShNRf" id="3oQv0AQ9Vp7" role="3K4GZi">
                          <node concept="1pGfFk" id="3oQv0AQau5I" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(byte[],java.nio.charset.Charset)" resolve="String" />
                            <node concept="37vLTw" id="3oQv0AQavhY" role="37wK5m">
                              <ref role="3cqZAo" node="3oQv0AQ9RaS" resolve="modelAsBytes" />
                            </node>
                            <node concept="10M0yZ" id="3oQv0AQaxji" role="37wK5m">
                              <ref role="3cqZAo" to="18ew:~FileUtil.DEFAULT_CHARSET" resolve="DEFAULT_CHARSET" />
                              <ref role="1PxDUh" to="18ew:~FileUtil" resolve="FileUtil" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="3oQv0AQ9T3g" role="3K4Cdx">
                          <node concept="10Nm6u" id="3oQv0AQ9T3$" role="3uHU7w" />
                          <node concept="37vLTw" id="3oQv0AQ9SFa" role="3uHU7B">
                            <ref role="3cqZAo" node="3oQv0AQ9RaS" resolve="modelAsBytes" />
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
        <node concept="3clFbH" id="59Mw_8gJx$J" role="3cqZAp" />
        <node concept="3cpWs8" id="1LiylnUOL7m" role="3cqZAp">
          <node concept="3cpWsn" id="1LiylnUOL7n" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1LiylnUOL7o" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="Jpw4evqEd$" role="33vP2m">
              <node concept="2OqwBi" id="Jpw4evqEd_" role="2Oq$k0">
                <node concept="2OqwBi" id="Jpw4evqEdA" role="2Oq$k0">
                  <node concept="2WthIp" id="Jpw4evqEdB" role="2Oq$k0" />
                  <node concept="1DTwFV" id="Jpw4evqEdC" role="2OqNvi">
                    <ref role="2WH_rO" node="3oQv0AQayGV" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="Jpw4evqEdD" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                </node>
              </node>
              <node concept="liA8E" id="Jpw4evqEdE" role="2OqNvi">
                <ref role="37wK5l" to="4hrd:~IdeaFileSystem.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
                <node concept="2OqwBi" id="Jpw4evqEdF" role="37wK5m">
                  <node concept="2WthIp" id="Jpw4evqEdG" role="2Oq$k0" />
                  <node concept="2XshWL" id="Jpw4evqEdH" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjgA8" resolve="getModelFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1zbtVeNDtSL" role="3cqZAp">
          <node concept="3y3z36" id="1zbtVeNDvAa" role="1gVkn0">
            <node concept="10Nm6u" id="1zbtVeNDvK2" role="3uHU7w" />
            <node concept="37vLTw" id="1zbtVeNDuzp" role="3uHU7B">
              <ref role="3cqZAo" node="1LiylnUOL7n" resolve="file" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Jpw4evqCEL" role="3cqZAp" />
        <node concept="2Gpval" id="6ySnuJfjgBK" role="3cqZAp">
          <node concept="2OqwBi" id="7xjR2e1IJaj" role="2GsD0m">
            <node concept="2WthIp" id="7xjR2e1IJak" role="2Oq$k0" />
            <node concept="2XshWL" id="7xjR2e1IJal" role="2OqNvi">
              <ref role="2WH_rO" node="7xjR2e1II1J" resolve="getBackupFiles" />
            </node>
          </node>
          <node concept="2GrKxI" id="6ySnuJfjgBL" role="2Gsz3X">
            <property role="TrG5h" value="backupFile" />
          </node>
          <node concept="3clFbS" id="6ySnuJfjgBN" role="2LFqv$">
            <node concept="3J1_TO" id="6ySnuJfjgBO" role="3cqZAp">
              <node concept="3uVAMA" id="6ySnuJfjgCh" role="1zxBo5">
                <node concept="XOnhg" id="6ySnuJfjgCi" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dHYDu" role="1tU5fm">
                    <node concept="3uibUv" id="6ySnuJfjgCj" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6ySnuJfjgCk" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB37rV" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="Xl_RD" id="6ySnuJfjgCm" role="RRSoy" />
                    <node concept="37vLTw" id="3GM_nagTw6n" role="RRSow">
                      <ref role="3cqZAo" node="6ySnuJfjgCi" resolve="e" />
                    </node>
                  </node>
                  <node concept="3SKdUt" id="6ySnuJfjgCo" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXokNy" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXokNz" role="1PaTwD">
                        <property role="3oM_SC" value="Skip" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXokN$" role="1PaTwD">
                        <property role="3oM_SC" value="this" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXokN_" role="1PaTwD">
                        <property role="3oM_SC" value="backup" />
                      </node>
                    </node>
                  </node>
                  <node concept="3N13vt" id="6ySnuJfjgCq" role="3cqZAp" />
                </node>
              </node>
              <node concept="3uVAMA" id="1LiylnUOOYt" role="1zxBo5">
                <node concept="XOnhg" id="1LiylnUOOYu" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dHYDw" role="1tU5fm">
                    <node concept="3uibUv" id="1LiylnUOQ2q" role="nSUat">
                      <ref role="3uigEE" to="yt4f:~InvalidDiffRequestException" resolve="InvalidDiffRequestException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1LiylnUOOYw" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB37s3" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fh_4/error" />
                    <node concept="Xl_RD" id="1LiylnUOQB9" role="RRSoy" />
                    <node concept="37vLTw" id="1LiylnUOQBb" role="RRSow">
                      <ref role="3cqZAo" node="1LiylnUOOYu" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6ySnuJfjgBP" role="1zxBo7">
                <node concept="3cpWs8" id="6ySnuJfjgBQ" role="3cqZAp">
                  <node concept="3cpWsn" id="6ySnuJfjgBR" role="3cpWs9">
                    <property role="TrG5h" value="modelsAsText" />
                    <node concept="2YIFZM" id="nQhvklQAzw" role="33vP2m">
                      <ref role="37wK5l" to="4rb9:nQhvklQAxN" resolve="loadZippedModelsAsText" />
                      <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
                      <node concept="2GrUjf" id="3KWzedceql2" role="37wK5m">
                        <ref role="2Gs0qQ" node="6ySnuJfjgBL" resolve="backupFile" />
                      </node>
                      <node concept="uiWXb" id="3KWzedceqCt" role="37wK5m">
                        <ref role="uiZuM" to="ur19:341WClvYLId" resolve="MergeVersion" />
                      </node>
                    </node>
                    <node concept="10Q1$e" id="6ySnuJfjgBS" role="1tU5fm">
                      <node concept="17QB3L" id="1pUzypQvusv" role="10Q1$1" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1pUzypQvwBy" role="3cqZAp">
                  <node concept="3cpWsn" id="1pUzypQvwBz" role="3cpWs9">
                    <property role="TrG5h" value="mine" />
                    <node concept="17QB3L" id="1pUzypQvwB$" role="1tU5fm" />
                    <node concept="AH0OO" id="1pUzypQvwBA" role="33vP2m">
                      <node concept="2OqwBi" id="1pUzypQvwBB" role="AHEQo">
                        <node concept="Rm8GO" id="1pUzypQvwBC" role="2Oq$k0">
                          <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                          <ref role="Rm8GQ" to="ur19:341WClvYLIg" resolve="MINE" />
                        </node>
                        <node concept="liA8E" id="1pUzypQvwBD" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagT$fx" role="AHHXb">
                        <ref role="3cqZAo" node="6ySnuJfjgBR" resolve="modelsAsText" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1pUzypQvwBF" role="3cqZAp">
                  <node concept="3cpWsn" id="1pUzypQvwBG" role="3cpWs9">
                    <property role="TrG5h" value="base" />
                    <node concept="17QB3L" id="1pUzypQvwBH" role="1tU5fm" />
                    <node concept="AH0OO" id="1pUzypQvwBI" role="33vP2m">
                      <node concept="2OqwBi" id="1pUzypQvwBJ" role="AHEQo">
                        <node concept="Rm8GO" id="1pUzypQvwBN" role="2Oq$k0">
                          <ref role="Rm8GQ" to="ur19:341WClvYLIk" resolve="BASE" />
                          <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                        </node>
                        <node concept="liA8E" id="1pUzypQvwBL" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTt4m" role="AHHXb">
                        <ref role="3cqZAo" node="6ySnuJfjgBR" resolve="modelsAsText" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1pUzypQvwBO" role="3cqZAp">
                  <node concept="3cpWsn" id="1pUzypQvwBP" role="3cpWs9">
                    <property role="TrG5h" value="repository" />
                    <node concept="17QB3L" id="1pUzypQvwBQ" role="1tU5fm" />
                    <node concept="AH0OO" id="1pUzypQvwBR" role="33vP2m">
                      <node concept="2OqwBi" id="1pUzypQvwBS" role="AHEQo">
                        <node concept="Rm8GO" id="1pUzypQvwBW" role="2Oq$k0">
                          <ref role="Rm8GQ" to="ur19:341WClvYLIi" resolve="REPOSITORY" />
                          <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                        </node>
                        <node concept="liA8E" id="1pUzypQvwBU" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTzdE" role="AHHXb">
                        <ref role="3cqZAo" node="6ySnuJfjgBR" resolve="modelsAsText" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1OiuLPRkY8u" role="3cqZAp" />
                <node concept="3cpWs8" id="1OiuLPRkvVT" role="3cqZAp">
                  <node concept="3cpWsn" id="1OiuLPRkvVU" role="3cpWs9">
                    <property role="TrG5h" value="uid" />
                    <node concept="3uibUv" id="7dYbalgFVmO" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                    <node concept="2OqwBi" id="1OiuLPRkY5F" role="33vP2m">
                      <node concept="liA8E" id="7dYbalgFByT" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelHeader.getModelReference()" resolve="getModelReference" />
                      </node>
                      <node concept="2YIFZM" id="1OiuLPRkvVY" role="2Oq$k0">
                        <ref role="1Pybhc" to="iho:4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                        <ref role="37wK5l" to="iho:4BapoMDjgER" resolve="loadDescriptor" />
                        <node concept="2ShNRf" id="1OiuLPRkvWq" role="37wK5m">
                          <node concept="1pGfFk" id="1OiuLPRkW4y" role="2ShVmc">
                            <ref role="37wK5l" to="kart:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                            <node concept="2ShNRf" id="1OiuLPRkY48" role="37wK5m">
                              <node concept="1pGfFk" id="1OiuLPRkY4e" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                                <node concept="37vLTw" id="3GM_nagTyYC" role="37wK5m">
                                  <ref role="3cqZAo" node="1pUzypQvwBz" resolve="mine" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1OiuLPRkY5Z" role="3cqZAp">
                  <node concept="3clFbS" id="1OiuLPRkY60" role="3clFbx">
                    <node concept="3N13vt" id="1OiuLPRkY6t" role="3cqZAp" />
                  </node>
                  <node concept="22lmx$" id="1OiuLPRkY87" role="3clFbw">
                    <node concept="3fqX7Q" id="1OiuLPRkY8a" role="3uHU7w">
                      <node concept="2OqwBi" id="1OiuLPRkY8c" role="3fr31v">
                        <node concept="37vLTw" id="7dYbalgFWdi" role="2Oq$k0">
                          <ref role="3cqZAo" node="1OiuLPRkvVU" resolve="uid" />
                        </node>
                        <node concept="liA8E" id="1OiuLPRkY8f" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                          <node concept="37vLTw" id="59Mw_8gJfFm" role="37wK5m">
                            <ref role="3cqZAo" node="59Mw_8gJfFg" resolve="modelReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="1OiuLPRkY6u" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTB$U" role="3uHU7B">
                        <ref role="3cqZAo" node="1OiuLPRkvVU" resolve="uid" />
                      </node>
                      <node concept="10Nm6u" id="1OiuLPRkY6w" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1OiuLPRl1IC" role="3cqZAp" />
                <node concept="3clFbF" id="1pUzypQvwjY" role="3cqZAp">
                  <node concept="37vLTI" id="1pUzypQvwka" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTx3W" role="37vLTJ">
                      <ref role="3cqZAo" node="1pUzypQvwBz" resolve="mine" />
                    </node>
                    <node concept="2OqwBi" id="1pUzypQvwkd" role="37vLTx">
                      <node concept="2WthIp" id="1pUzypQvwke" role="2Oq$k0" />
                      <node concept="2XshWL" id="1pUzypQvwkf" role="2OqNvi">
                        <ref role="2WH_rO" node="6ySnuJfjgAl" resolve="selectMineModel" />
                        <node concept="37vLTw" id="1gbSomzwiEa" role="2XxRq1">
                          <ref role="3cqZAo" node="1gbSomzwiE0" resolve="modelData" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagT_qg" role="2XxRq1">
                          <ref role="3cqZAo" node="1pUzypQvwBz" resolve="mine" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1pUzypQvwky" role="3cqZAp">
                  <node concept="3clFbS" id="1pUzypQvwkz" role="3clFbx">
                    <node concept="3cpWs6" id="1pUzypQvwkJ" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="1pUzypQvwkF" role="3clFbw">
                    <node concept="10Nm6u" id="1pUzypQvwkI" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagTrWs" role="3uHU7B">
                      <ref role="3cqZAo" node="1pUzypQvwBz" resolve="mine" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1LiylnUO$AN" role="3cqZAp">
                  <node concept="3cpWsn" id="1LiylnUO$AQ" role="3cpWs9">
                    <property role="TrG5h" value="contents" />
                    <node concept="_YKpA" id="1LiylnUO$AJ" role="1tU5fm">
                      <node concept="17QB3L" id="1LiylnUO_tl" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="1LiylnUOA1Y" role="33vP2m">
                      <node concept="Tc6Ow" id="1LiylnUOA1U" role="2ShVmc">
                        <node concept="17QB3L" id="1LiylnUOA1V" role="HW$YZ" />
                        <node concept="37vLTw" id="1LiylnUOBdc" role="HW$Y0">
                          <ref role="3cqZAo" node="1pUzypQvwBz" resolve="mine" />
                        </node>
                        <node concept="37vLTw" id="1LiylnUOBlg" role="HW$Y0">
                          <ref role="3cqZAo" node="1pUzypQvwBG" resolve="base" />
                        </node>
                        <node concept="37vLTw" id="1LiylnUOB_w" role="HW$Y0">
                          <ref role="3cqZAo" node="1pUzypQvwBP" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1LiylnUOHcf" role="3cqZAp">
                  <node concept="3cpWsn" id="1LiylnUOHcg" role="3cpWs9">
                    <property role="TrG5h" value="titles" />
                    <node concept="_YKpA" id="1LiylnUOHch" role="1tU5fm">
                      <node concept="17QB3L" id="1LiylnUOHci" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="1LiylnUOHcj" role="33vP2m">
                      <node concept="Tc6Ow" id="1LiylnUOHck" role="2ShVmc">
                        <node concept="17QB3L" id="1LiylnUOHcl" role="HW$YZ" />
                        <node concept="Xl_RD" id="1LiylnUOIy_" role="HW$Y0">
                          <property role="Xl_RC" value="Mine" />
                        </node>
                        <node concept="Xl_RD" id="1LiylnUOIEV" role="HW$Y0">
                          <property role="Xl_RC" value="Base version" />
                        </node>
                        <node concept="Xl_RD" id="1LiylnUOINc" role="HW$Y0">
                          <property role="Xl_RC" value="Repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1LiylnUNFNp" role="3cqZAp">
                  <node concept="3cpWsn" id="1LiylnUNFNq" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="request" />
                    <node concept="3uibUv" id="1LiylnUNK8M" role="1tU5fm">
                      <ref role="3uigEE" to="o8e1:~MergeRequest" resolve="MergeRequest" />
                    </node>
                    <node concept="2OqwBi" id="1LiylnUNFNs" role="33vP2m">
                      <node concept="2YIFZM" id="1LiylnUNLXr" role="2Oq$k0">
                        <ref role="37wK5l" to="yt4f:~DiffRequestFactory.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="yt4f:~DiffRequestFactory" resolve="DiffRequestFactory" />
                      </node>
                      <node concept="liA8E" id="1LiylnUNFNu" role="2OqNvi">
                        <ref role="37wK5l" to="yt4f:~DiffRequestFactory.createMergeRequest(com.intellij.openapi.project.Project,com.intellij.openapi.fileTypes.FileType,com.intellij.openapi.editor.Document,java.util.List,java.lang.String,java.util.List,com.intellij.util.Consumer)" resolve="createMergeRequest" />
                        <node concept="2OqwBi" id="1LiylnUNKgI" role="37wK5m">
                          <node concept="2WthIp" id="1LiylnUNKgL" role="2Oq$k0" />
                          <node concept="1DTwFV" id="1LiylnUNKgN" role="2OqNvi">
                            <ref role="2WH_rO" node="6ySnuJfjgCO" resolve="project" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1LiylnUO87e" role="37wK5m">
                          <node concept="37vLTw" id="1LiylnUOMDT" role="2Oq$k0">
                            <ref role="3cqZAo" node="1LiylnUOL7n" resolve="file" />
                          </node>
                          <node concept="liA8E" id="1LiylnUO8QH" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getFileType()" resolve="getFileType" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1zbtVeNDiKe" role="37wK5m">
                          <node concept="2YIFZM" id="1zbtVeNDiKf" role="2Oq$k0">
                            <ref role="37wK5l" to="iwsx:~FileDocumentManager.getInstance()" resolve="getInstance" />
                            <ref role="1Pybhc" to="iwsx:~FileDocumentManager" resolve="FileDocumentManager" />
                          </node>
                          <node concept="liA8E" id="1zbtVeNDiKg" role="2OqNvi">
                            <ref role="37wK5l" to="iwsx:~FileDocumentManager.getDocument(com.intellij.openapi.vfs.VirtualFile)" resolve="getDocument" />
                            <node concept="37vLTw" id="1zbtVeNDiKh" role="37wK5m">
                              <ref role="3cqZAo" node="1LiylnUOL7n" resolve="file" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1LiylnUOBHQ" role="37wK5m">
                          <ref role="3cqZAo" node="1LiylnUO$AQ" resolve="contents" />
                        </node>
                        <node concept="10Nm6u" id="1LiylnUOD9$" role="37wK5m" />
                        <node concept="37vLTw" id="1LiylnUOJ3a" role="37wK5m">
                          <ref role="3cqZAo" node="1LiylnUOHcg" resolve="titles" />
                        </node>
                        <node concept="10Nm6u" id="1LiylnUNFN$" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1LiylnUNFNF" role="3cqZAp">
                  <node concept="2OqwBi" id="1LiylnUNFNG" role="3clFbG">
                    <node concept="2YIFZM" id="1LiylnUNNyc" role="2Oq$k0">
                      <ref role="37wK5l" to="yt4f:~DiffManager.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="yt4f:~DiffManager" resolve="DiffManager" />
                    </node>
                    <node concept="liA8E" id="1LiylnUNFNI" role="2OqNvi">
                      <ref role="37wK5l" to="yt4f:~DiffManager.showMerge(com.intellij.openapi.project.Project,com.intellij.diff.merge.MergeRequest)" resolve="showMerge" />
                      <node concept="2OqwBi" id="1LiylnUNNNf" role="37wK5m">
                        <node concept="2WthIp" id="1LiylnUNNNi" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1LiylnUNNNk" role="2OqNvi">
                          <ref role="2WH_rO" node="6ySnuJfjgCO" resolve="project" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1LiylnUNFNK" role="37wK5m">
                        <ref role="3cqZAo" node="1LiylnUNFNq" resolve="request" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6ySnuJfjgCg" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ySnuJfjgC_" role="3cqZAp">
          <node concept="2YIFZM" id="6ySnuJfjgCA" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(java.lang.String,java.lang.String)" resolve="showInfoMessage" />
            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
            <node concept="3cpWs3" id="6ySnuJfjgCB" role="37wK5m">
              <node concept="Xl_RD" id="6ySnuJfjgCC" role="3uHU7w">
                <property role="Xl_RC" value="was not found." />
              </node>
              <node concept="3cpWs3" id="6ySnuJfjgCD" role="3uHU7B">
                <node concept="2OqwBi" id="2ZDBRmk5i2A" role="3uHU7w">
                  <node concept="2OqwBi" id="2ZDBRmk5i2C" role="2Oq$k0">
                    <node concept="2WthIp" id="2ZDBRmk5i2D" role="2Oq$k0" />
                    <node concept="1DTwFV" id="2ZDBRmk5i2E" role="2OqNvi">
                      <ref role="2WH_rO" node="6ySnuJfjgCN" resolve="model" />
                    </node>
                  </node>
                  <node concept="liA8E" id="59Mw_8gJdnv" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6ySnuJfjgCE" role="3uHU7B">
                  <property role="Xl_RC" value="No suitable backup files for " />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="6ySnuJfjgCM" role="37wK5m">
              <property role="Xl_RC" value="No Backup Files Found" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6ySnuJfjgCN" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODEL" resolve="MODEL" />
      <node concept="1oajcY" id="7HZe2EwZDj$" role="1oa70y" />
      <node concept="3dZWAM" id="1HT8bsQ$u8e" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6ySnuJfjgCO" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDo9" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3oQv0AQayGV" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3oQv0AQayGW" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="6ySnuJfjgCP">
    <property role="TrG5h" value="ShowDifferencesWithModelOnDisk" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Show Differences with Model on Disk" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <property role="1rBW0U" value="true" />
    <node concept="tkhdA" id="5YG5KSKXSff" role="tmbBb">
      <node concept="3clFbS" id="5YG5KSKXSfg" role="2VODD2">
        <node concept="3cpWs8" id="46Iaplavz7y" role="3cqZAp">
          <node concept="3cpWsn" id="46Iaplavz7z" role="3cpWs9">
            <property role="TrG5h" value="ds" />
            <node concept="3uibUv" id="46Iaplavz2P" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2OqwBi" id="46Iaplavz7$" role="33vP2m">
              <node concept="liA8E" id="46Iaplavz7_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
              </node>
              <node concept="2OqwBi" id="46Iaplavz7A" role="2Oq$k0">
                <node concept="2WthIp" id="46Iaplavz7B" role="2Oq$k0" />
                <node concept="1DTwFV" id="46Iaplavz7C" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjgDN" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YG5KSKY1aX" role="3cqZAp">
          <node concept="1rXfSq" id="5YG5KSKY1aV" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="5YG5KSKY2u2" role="37wK5m">
              <node concept="tl45R" id="5YG5KSKY2oJ" role="2Oq$k0" />
              <node concept="liA8E" id="5YG5KSKY2Dm" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="1Wc70l" id="5YG5KSKY0Eg" role="37wK5m">
              <node concept="2ZW3vV" id="5YG5KSKY0Eh" role="3uHU7w">
                <node concept="3uibUv" id="5YG5KSKY0Ei" role="2ZW6by">
                  <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                </node>
                <node concept="2OqwBi" id="5YG5KSKY0Ej" role="2ZW6bz">
                  <node concept="2WthIp" id="5YG5KSKY0Ek" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5YG5KSKY0El" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjgDN" resolve="model" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="46IaplavN_Q" role="3uHU7B">
                <node concept="3fqX7Q" id="46IaplavQ7n" role="3uHU7w">
                  <node concept="2OqwBi" id="46IaplavQ7p" role="3fr31v">
                    <node concept="Rm8GO" id="46IaplavQ7q" role="2Oq$k0">
                      <ref role="Rm8GQ" to="dush:~NullDataSource$NullDataSourceType.INSTANCE" resolve="INSTANCE" />
                      <ref role="1Px2BO" to="dush:~NullDataSource$NullDataSourceType" resolve="NullDataSource.NullDataSourceType" />
                    </node>
                    <node concept="liA8E" id="46IaplavQ7r" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Enum.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="46IaplavQ7s" role="37wK5m">
                        <node concept="37vLTw" id="46IaplavQ7t" role="2Oq$k0">
                          <ref role="3cqZAo" node="46Iaplavz7z" resolve="ds" />
                        </node>
                        <node concept="liA8E" id="46IaplavQ7u" role="2OqNvi">
                          <ref role="37wK5l" to="dush:~DataSource.getType()" resolve="getType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="46IaplavNdB" role="3uHU7B">
                  <node concept="2OqwBi" id="46IaplavMHY" role="3uHU7B">
                    <node concept="37vLTw" id="46IaplavMo0" role="2Oq$k0">
                      <ref role="3cqZAo" node="46Iaplavz7z" resolve="ds" />
                    </node>
                    <node concept="liA8E" id="46IaplavN2I" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~DataSource.getType()" resolve="getType" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="46IaplavNuy" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="6ySnuJfjgCQ" role="tncku">
      <node concept="3clFbS" id="6ySnuJfjgCR" role="2VODD2">
        <node concept="3cpWs8" id="46IaplawqWr" role="3cqZAp">
          <node concept="3cpWsn" id="46IaplawqWs" role="3cpWs9">
            <property role="TrG5h" value="inMemoryModel" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="46IaplawqT_" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="46IaplawqWt" role="33vP2m">
              <node concept="2WthIp" id="46IaplawqWu" role="2Oq$k0" />
              <node concept="1DTwFV" id="46IaplawqWv" role="2OqNvi">
                <ref role="2WH_rO" node="6ySnuJfjgDN" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2b_cidrUig" role="3cqZAp">
          <node concept="3cpWsn" id="2b_cidrUih" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2b_cidrU3f" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="2b_cidrUii" role="33vP2m">
              <node concept="2WthIp" id="2b_cidrUij" role="2Oq$k0" />
              <node concept="1DTwFV" id="2b_cidrUik" role="2OqNvi">
                <ref role="2WH_rO" node="1O1cPuvVkur" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="46IaplawtTX" role="3cqZAp">
          <node concept="3cpWsn" id="46IaplawtTY" role="3cpWs9">
            <property role="TrG5h" value="modelFactory" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="46IaplawtTx" role="1tU5fm">
              <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
            </node>
            <node concept="3K4zz7" id="4ZAwk4U3RSb" role="33vP2m">
              <node concept="10Nm6u" id="4ZAwk4U3Sge" role="3K4GZi" />
              <node concept="2ZW3vV" id="4ZAwk4U3R92" role="3K4Cdx">
                <node concept="3uibUv" id="4ZAwk4U3R93" role="2ZW6by">
                  <ref role="3uigEE" to="pa15:~LoadedStrategyAware" resolve="LoadedStrategyAware" />
                </node>
                <node concept="37vLTw" id="4ZAwk4U3R94" role="2ZW6bz">
                  <ref role="3cqZAo" node="46IaplawqWs" resolve="inMemoryModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="4ZAwk4U3S3v" role="3K4E3e">
                <node concept="1eOMI4" id="4ZAwk4U3S3w" role="2Oq$k0">
                  <node concept="10QFUN" id="4ZAwk4U3S3x" role="1eOMHV">
                    <node concept="3uibUv" id="4ZAwk4U3S3y" role="10QFUM">
                      <ref role="3uigEE" to="pa15:~LoadedStrategyAware" resolve="LoadedStrategyAware" />
                    </node>
                    <node concept="37vLTw" id="4ZAwk4U3S3z" role="10QFUP">
                      <ref role="3cqZAo" node="46IaplawqWs" resolve="inMemoryModel" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ZAwk4U3S3$" role="2OqNvi">
                  <ref role="37wK5l" to="pa15:~LoadedStrategyAware.getModelFactory()" resolve="getModelFactory" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6z2l4wac7g7" role="3cqZAp">
          <node concept="3cpWsn" id="6z2l4wac7g8" role="3cpWs9">
            <property role="TrG5h" value="datasource" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6z2l4wac7g9" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2OqwBi" id="6z2l4wac9Jv" role="33vP2m">
              <node concept="liA8E" id="6z2l4wacaAB" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
              </node>
              <node concept="37vLTw" id="46IaplawqWx" role="2Oq$k0">
                <ref role="3cqZAo" node="46IaplawqWs" resolve="inMemoryModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4lSaJQRuFMO" role="3cqZAp" />
        <node concept="3cpWs8" id="4ZAwk4U3FH4" role="3cqZAp">
          <node concept="3cpWsn" id="4ZAwk4U3FH5" role="3cpWs9">
            <property role="TrG5h" value="diskContent" />
            <node concept="3uibUv" id="4ZAwk4U3FH6" role="1tU5fm">
              <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
            </node>
            <node concept="2ShNRf" id="4ZAwk4U3FX0" role="33vP2m">
              <node concept="YeOm9" id="4ZAwk4U3GkT" role="2ShVmc">
                <node concept="1Y3b0j" id="4ZAwk4U3GkW" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="24bc:~ModelDiffContent.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDiffContent" />
                  <ref role="1Y3XeK" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
                  <node concept="3Tm1VV" id="4ZAwk4U3GkX" role="1B3o_S" />
                  <node concept="10Nm6u" id="4ZAwk4U3FYm" role="37wK5m" />
                  <node concept="3clFb_" id="4ZAwk4U3K0I" role="jymVt">
                    <property role="TrG5h" value="onAssigned" />
                    <node concept="3clFbS" id="4ZAwk4U3K0L" role="3clF47">
                      <node concept="3clFbF" id="4ZAwk4U3Lxe" role="3cqZAp">
                        <node concept="3nyPlj" id="4ZAwk4U3Lxc" role="3clFbG">
                          <ref role="37wK5l" to="2o8p:~DiffContent.onAssigned(boolean)" resolve="onAssigned" />
                          <node concept="37vLTw" id="4ZAwk4U3LPB" role="37wK5m">
                            <ref role="3cqZAo" node="4ZAwk4U3Kpw" resolve="isAssigned" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4ZAwk4U3Mu5" role="3cqZAp">
                        <node concept="3clFbS" id="4ZAwk4U3Mu7" role="3clFbx">
                          <node concept="3clFbJ" id="46Iaplawy4Z" role="3cqZAp">
                            <node concept="3clFbS" id="46Iaplawy51" role="3clFbx">
                              <node concept="3clFbF" id="46Iaplawxzg" role="3cqZAp">
                                <node concept="37vLTI" id="46Iaplawxzi" role="3clFbG">
                                  <node concept="2YIFZM" id="6z2l4wacpgY" role="37vLTx">
                                    <ref role="1Pybhc" to="pa15:~PersistenceUtil" resolve="PersistenceUtil" />
                                    <ref role="37wK5l" to="pa15:~PersistenceUtil.loadModel(org.jetbrains.mps.openapi.persistence.DataSource,jetbrains.mps.extapi.persistence.ModelFactoryService)" resolve="loadModel" />
                                    <node concept="37vLTw" id="46Iaplawvd0" role="37wK5m">
                                      <ref role="3cqZAo" node="6z2l4wac7g8" resolve="datasource" />
                                    </node>
                                    <node concept="2OqwBi" id="46Iaplaw$Ht" role="37wK5m">
                                      <node concept="37vLTw" id="2b_cidrUil" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2b_cidrUih" resolve="mpsProject" />
                                      </node>
                                      <node concept="liA8E" id="46Iaplaw___" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                                        <node concept="3VsKOn" id="46IaplawA67" role="37wK5m">
                                          <ref role="3VsUkX" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="46Iaplawxzm" role="37vLTJ">
                                    <ref role="3cqZAo" to="24bc:~ModelDiffContent.myModel" resolve="myModel" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="46IaplawyBX" role="3clFbw">
                              <node concept="10Nm6u" id="46IaplawyN4" role="3uHU7w" />
                              <node concept="37vLTw" id="46IaplawyeL" role="3uHU7B">
                                <ref role="3cqZAo" node="46IaplawtTY" resolve="modelFactory" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="46IaplawyRn" role="9aQIa">
                              <node concept="3clFbS" id="46IaplawyRo" role="9aQI4">
                                <node concept="3clFbF" id="46IaplawzkE" role="3cqZAp">
                                  <node concept="37vLTI" id="46IaplawzkF" role="3clFbG">
                                    <node concept="2YIFZM" id="46IaplawzkG" role="37vLTx">
                                      <ref role="1Pybhc" to="pa15:~PersistenceUtil" resolve="PersistenceUtil" />
                                      <ref role="37wK5l" to="pa15:~PersistenceUtil.loadModel(org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelFactory)" resolve="loadModel" />
                                      <node concept="37vLTw" id="46IaplawzkH" role="37wK5m">
                                        <ref role="3cqZAo" node="6z2l4wac7g8" resolve="datasource" />
                                      </node>
                                      <node concept="37vLTw" id="46IaplawzkI" role="37wK5m">
                                        <ref role="3cqZAo" node="46IaplawtTY" resolve="modelFactory" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="46IaplawzkJ" role="37vLTJ">
                                      <ref role="3cqZAo" to="24bc:~ModelDiffContent.myModel" resolve="myModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="4ZAwk4U3MRc" role="3clFbw">
                          <ref role="3cqZAo" node="4ZAwk4U3Kpw" resolve="isAssigned" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="4ZAwk4U3HoB" role="1B3o_S" />
                    <node concept="3cqZAl" id="4ZAwk4U3JYT" role="3clF45" />
                    <node concept="37vLTG" id="4ZAwk4U3Kpw" role="3clF46">
                      <property role="TrG5h" value="isAssigned" />
                      <node concept="10P_77" id="4ZAwk4U3Kpv" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4lSaJQRuGs4" role="3cqZAp" />
        <node concept="3cpWs8" id="wriWL6Vml5" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6Vml6" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="_YKpA" id="wriWL6Vml7" role="1tU5fm">
              <node concept="3uibUv" id="wriWL6VxZ$" role="_ZDj9">
                <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
              </node>
            </node>
            <node concept="2ShNRf" id="wriWL6Vml8" role="33vP2m">
              <node concept="Tc6Ow" id="wriWL6Vml9" role="2ShVmc">
                <node concept="3uibUv" id="wriWL6VyXz" role="HW$YZ">
                  <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
                </node>
                <node concept="37vLTw" id="4ZAwk4U442k" role="HW$Y0">
                  <ref role="3cqZAo" node="4ZAwk4U3FH5" resolve="diskContent" />
                </node>
                <node concept="2ShNRf" id="wriWL6V6ss" role="HW$Y0">
                  <node concept="1pGfFk" id="wriWL6Va4l" role="2ShVmc">
                    <ref role="37wK5l" to="24bc:~ModelDiffContent.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDiffContent" />
                    <node concept="37vLTw" id="46IaplawqWw" role="37wK5m">
                      <ref role="3cqZAo" node="46IaplawqWs" resolve="inMemoryModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="wriWL6Vmla" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6Vmlb" role="3cpWs9">
            <property role="TrG5h" value="titles" />
            <node concept="_YKpA" id="wriWL6Vmlc" role="1tU5fm">
              <node concept="17QB3L" id="wriWL6Vmld" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="wriWL6Vmle" role="33vP2m">
              <node concept="Tc6Ow" id="wriWL6Vmlf" role="2ShVmc">
                <node concept="17QB3L" id="wriWL6Vmlg" role="HW$YZ" />
                <node concept="Xl_RD" id="wriWL6V$FB" role="HW$Y0">
                  <property role="Xl_RC" value="Disk" />
                </node>
                <node concept="Xl_RD" id="wriWL6V_1R" role="HW$Y0">
                  <property role="Xl_RC" value="Memory" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="wriWL6Vmlh" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6Vmli" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="3bsyx4MR3Db" role="1tU5fm">
              <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
            </node>
            <node concept="2ShNRf" id="3bsyx4MSSd_" role="33vP2m">
              <node concept="1pGfFk" id="3bsyx4MSSdA" role="2ShVmc">
                <ref role="37wK5l" to="phib:~SimpleDiffRequest.&lt;init&gt;(java.lang.String,java.util.List,java.util.List)" resolve="SimpleDiffRequest" />
                <node concept="3cpWs3" id="wriWL6VqCd" role="37wK5m">
                  <node concept="Xl_RD" id="wriWL6VqCt" role="3uHU7w" />
                  <node concept="2OqwBi" id="wriWL6VpnW" role="3uHU7B">
                    <node concept="liA8E" id="wriWL6VpIo" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                    </node>
                    <node concept="37vLTw" id="46IaplawqWy" role="2Oq$k0">
                      <ref role="3cqZAo" node="46IaplawqWs" resolve="inMemoryModel" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3bsyx4MSTQv" role="37wK5m">
                  <ref role="3cqZAo" node="wriWL6Vml6" resolve="contents" />
                </node>
                <node concept="37vLTw" id="3bsyx4MSVND" role="37wK5m">
                  <ref role="3cqZAo" node="wriWL6Vmlb" resolve="titles" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wriWL6Vmlj" role="3cqZAp">
          <node concept="2OqwBi" id="wriWL6Vmlk" role="3clFbG">
            <node concept="2YIFZM" id="wriWL6Vmll" role="2Oq$k0">
              <ref role="1Pybhc" to="yt4f:~DiffManager" resolve="DiffManager" />
              <ref role="37wK5l" to="yt4f:~DiffManager.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="wriWL6Vmlm" role="2OqNvi">
              <ref role="37wK5l" to="yt4f:~DiffManager.showDiff(com.intellij.openapi.project.Project,com.intellij.diff.requests.DiffRequest)" resolve="showDiff" />
              <node concept="2OqwBi" id="46IaplawBVI" role="37wK5m">
                <node concept="2OqwBi" id="wriWL6Vxza" role="2Oq$k0">
                  <node concept="2WthIp" id="wriWL6Vxzd" role="2Oq$k0" />
                  <node concept="1DTwFV" id="wriWL6Vxzf" role="2OqNvi">
                    <ref role="2WH_rO" node="1O1cPuvVkur" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="46IaplawCR8" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="wriWL6Vmln" role="37wK5m">
                <ref role="3cqZAo" node="wriWL6Vmli" resolve="request" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6ySnuJfjgDN" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODEL" resolve="MODEL" />
      <node concept="1oajcY" id="7HZe2EwZDl0" role="1oa70y" />
      <node concept="3dZWAM" id="6I7igKOqsR3" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1O1cPuvVkur" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDiW" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="6ySnuJfjgGI">
    <property role="TrG5h" value="VCSModelActions" />
    <property role="3GE5qa" value="Groups" />
    <node concept="tT9cl" id="6ySnuJfjgGK" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:6ySnuJfjgGO" resolve="mpsvcs" />
    </node>
    <node concept="ftmFs" id="6ySnuJfjgGL" role="ftER_">
      <node concept="tCFHf" id="6ySnuJfjgGM" role="ftvYc">
        <ref role="tCJdB" node="6ySnuJfjgCP" resolve="ShowDifferencesWithModelOnDisk" />
      </node>
      <node concept="tCFHf" id="6ySnuJfjgGN" role="ftvYc">
        <ref role="tCJdB" node="6ySnuJfjg$i" resolve="ReRunMergeFromBackup" />
      </node>
      <node concept="tCFHf" id="3ndSBELUhtr" role="ftvYc">
        <ref role="tCJdB" node="3ndSBELTfla" resolve="CompareTransientModels" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6ySnuJfjmo0">
    <property role="TrG5h" value="ShowDiffWithCurrRev" />
    <property role="3GE5qa" value="Groups" />
    <node concept="ftmFs" id="6ySnuJfjmo2" role="ftER_">
      <node concept="tCFHf" id="6ySnuJfjmo3" role="ftvYc">
        <ref role="tCJdB" node="6ySnuJfjmm_" resolve="ShowDiffererenceWithCurrentRevision" />
      </node>
      <node concept="tCFHf" id="1ODavq8ClGU" role="ftvYc">
        <ref role="tCJdB" node="778KdJ_uVEi" resolve="ShowNodeDifference" />
      </node>
    </node>
    <node concept="tT9cl" id="6ySnuJfjmo5" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:6ySnuJfjmo9" resolve="diff" />
    </node>
  </node>
  <node concept="tC5Ba" id="6ySnuJfjnzz">
    <property role="TrG5h" value="ModuleVcsActions" />
    <property role="3GE5qa" value="Groups" />
    <node concept="ftmFs" id="6ySnuJfjnz$" role="ftER_">
      <node concept="tCFHf" id="6ySnuJfjnz_" role="ftvYc">
        <ref role="tCJdB" node="6ySnuJfjn$c" resolve="AddModuleToVcs" />
      </node>
      <node concept="tCFHf" id="6ySnuJfjnzA" role="ftvYc">
        <ref role="tCJdB" node="6ySnuJfjnzD" resolve="IgnoreModuleInVcs" />
      </node>
    </node>
    <node concept="tT9cl" id="6ySnuJfjnzB" role="2f5YQi">
      <ref role="tU$_T" to="tprs:miYJQAr2Uj" resolve="CommonModuleActions" />
      <ref role="2f8Tey" to="tprs:miYJQArh7p" resolve="ideavcs" />
    </node>
  </node>
  <node concept="sE7Ow" id="6ySnuJfjnzD">
    <property role="TrG5h" value="IgnoreModuleInVcs" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Ignore Module..." />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="6ySnuJfjnzE" role="tncku">
      <node concept="3clFbS" id="6ySnuJfjnzF" role="2VODD2">
        <node concept="3SKdUt" id="srfjDK550e" role="3cqZAp">
          <node concept="1PaTwC" id="srfjDK550f" role="1aUNEU">
            <node concept="3oM_SD" id="srfjDK55PN" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="srfjDK56OP" role="1PaTwD">
              <property role="3oM_SC" value="investigate" />
            </node>
            <node concept="3oM_SD" id="srfjDK58Br" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="srfjDK5fLv" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ySnuJfjnzG" role="3cqZAp">
          <node concept="3cpWsn" id="6ySnuJfjnzH" role="3cpWs9">
            <property role="TrG5h" value="unversionedFiles" />
            <node concept="_YKpA" id="6ySnuJfjnzI" role="1tU5fm">
              <node concept="3uibUv" id="6ySnuJfjnzJ" role="_ZDj9">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="38wEix8egMI" role="33vP2m">
              <node concept="2YIFZM" id="6ySnuJfjnzK" role="2Oq$k0">
                <ref role="37wK5l" to="zbx9:78RbNhWi9Pq" resolve="getUnversionedFilesForModules" />
                <ref role="1Pybhc" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
                <node concept="2OqwBi" id="6ySnuJfjnzL" role="37wK5m">
                  <node concept="2WthIp" id="6ySnuJfjnzM" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6ySnuJfjnzN" role="2OqNvi">
                    <ref role="2WH_rO" node="38wEix8ed5x" resolve="project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6ySnuJfjnzO" role="37wK5m">
                  <node concept="2WthIp" id="6ySnuJfjnzP" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6ySnuJfjnzQ" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjn$a" resolve="modules" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="38wEix8eju3" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="38wEix8eg4t" role="3cqZAp">
          <node concept="1PaTwC" id="38wEix8eg4u" role="1aUNEU">
            <node concept="3oM_SD" id="38wEix8egaZ" role="1PaTwD">
              <property role="3oM_SC" value="IgnoreUnversionedDialog.ignoreSelectedFiles(project," />
            </node>
            <node concept="3oM_SD" id="38wEix8egbm" role="1PaTwD">
              <property role="3oM_SC" value="unversionedFiles);" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6ySnuJfjn$a" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
      <node concept="1oajcY" id="7HZe2EwZDhw" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="38wEix8ed5x" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="38wEix8ed5y" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="3$nB8L8HRcq" role="tmbBb">
      <node concept="3clFbS" id="3$nB8L8HRcr" role="2VODD2">
        <node concept="3cpWs8" id="1HWltx7v8lP" role="3cqZAp">
          <node concept="3cpWsn" id="1HWltx7v8lQ" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="1HWltx7v8lR" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="1HWltx7v8lS" role="33vP2m">
              <node concept="tl45R" id="1HWltx7v8lT" role="2Oq$k0" />
              <node concept="liA8E" id="1HWltx7v8lU" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$nB8L8HRcs" role="3cqZAp">
          <node concept="2OqwBi" id="3$nB8L8HRct" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTsZJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1HWltx7v8lQ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="3$nB8L8HRcx" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="3$nB8L8HRcy" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="3$nB8L8HRcz" role="37wK5m">
                  <property role="Xl_RC" value="Ignore %s..." />
                </node>
                <node concept="3K4zz7" id="1BVBoF3mNvc" role="37wK5m">
                  <node concept="Xl_RD" id="1BVBoF3mR_i" role="3K4E3e">
                    <property role="Xl_RC" value="Module" />
                  </node>
                  <node concept="Xl_RD" id="1BVBoF3mR_j" role="3K4GZi">
                    <property role="Xl_RC" value="Modules" />
                  </node>
                  <node concept="3clFbC" id="1BVBoF3mR_e" role="3K4Cdx">
                    <node concept="3cmrfG" id="1BVBoF3mR_h" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="6iuqFP5_qOO" role="3uHU7B">
                      <node concept="2OqwBi" id="6iuqFP5_qOP" role="2Oq$k0">
                        <node concept="2WthIp" id="6iuqFP5_qOQ" role="2Oq$k0" />
                        <node concept="1DTwFV" id="6iuqFP5_qOR" role="2OqNvi">
                          <ref role="2WH_rO" node="6ySnuJfjn$a" resolve="modules" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6iuqFP5_qOS" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HWltx7v8lx" role="3cqZAp">
          <node concept="3cpWsn" id="1HWltx7v8ly" role="3cpWs9">
            <property role="TrG5h" value="enabled" />
            <node concept="10P_77" id="1HWltx7v8lz" role="1tU5fm" />
            <node concept="2OqwBi" id="1HWltx7v8l$" role="33vP2m">
              <node concept="2YIFZM" id="1HWltx7v8l_" role="2Oq$k0">
                <ref role="37wK5l" to="zbx9:78RbNhWi9Pq" resolve="getUnversionedFilesForModules" />
                <ref role="1Pybhc" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
                <node concept="2OqwBi" id="1HWltx7v8lA" role="37wK5m">
                  <node concept="2WthIp" id="1HWltx7v8lB" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1HWltx7v8lC" role="2OqNvi">
                    <ref role="2WH_rO" node="38wEix8ed5x" resolve="project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1HWltx7v8lD" role="37wK5m">
                  <node concept="2WthIp" id="1HWltx7v8lE" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1HWltx7v8lF" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjn$a" resolve="modules" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="1HWltx7v8lG" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$nB8L8HRcA" role="3cqZAp">
          <node concept="2OqwBi" id="3$nB8L8HRcB" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTz5D" role="2Oq$k0">
              <ref role="3cqZAo" node="1HWltx7v8lQ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="3$nB8L8HRcF" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="37vLTw" id="3GM_nagTxoG" role="37wK5m">
                <ref role="3cqZAo" node="1HWltx7v8ly" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HWltx7v8lI" role="3cqZAp">
          <node concept="2OqwBi" id="1HWltx7v8lJ" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxaJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1HWltx7v8lQ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="1HWltx7v8lN" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="37vLTw" id="3GM_nagTAOp" role="37wK5m">
                <ref role="3cqZAo" node="1HWltx7v8ly" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6ySnuJfjn$c">
    <property role="TrG5h" value="AddModuleToVcs" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Add Module to VCS" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGB8" role="3Uehp1">
      <node concept="10M0yZ" id="2hX4PxwM2MW" role="1GtWoa">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Actions" resolve="MPSIcons.Actions" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Actions.AddToVCS" resolve="AddToVCS" />
      </node>
    </node>
    <node concept="1DS2jV" id="38wEix8eppO" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="38wEix8eppP" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="38wEix8ex4s" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="38wEix8ex4t" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6ySnuJfjn$e" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
      <node concept="1oajcY" id="7HZe2EwZDgm" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6ySnuJfjn$f" role="tncku">
      <node concept="3clFbS" id="6ySnuJfjn$g" role="2VODD2">
        <node concept="3cpWs8" id="6ySnuJfjn$h" role="3cqZAp">
          <node concept="3cpWsn" id="6ySnuJfjn$i" role="3cpWs9">
            <property role="TrG5h" value="unversionedFiles" />
            <node concept="_YKpA" id="6ySnuJfjn$j" role="1tU5fm">
              <node concept="3uibUv" id="6ySnuJfjn$k" role="_ZDj9">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="38wEix8errb" role="33vP2m">
              <node concept="2YIFZM" id="6ySnuJfjn$l" role="2Oq$k0">
                <ref role="37wK5l" to="zbx9:78RbNhWi9Pq" resolve="getUnversionedFilesForModules" />
                <ref role="1Pybhc" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
                <node concept="2OqwBi" id="6ySnuJfjn$m" role="37wK5m">
                  <node concept="2WthIp" id="6ySnuJfjn$n" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6ySnuJfjn$o" role="2OqNvi">
                    <ref role="2WH_rO" node="38wEix8eppO" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6ySnuJfjn$p" role="37wK5m">
                  <node concept="2WthIp" id="6ySnuJfjn$q" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6ySnuJfjn$r" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjn$e" resolve="modules" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="38wEix8eu1Z" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ySnuJfjn$D" role="3cqZAp">
          <node concept="3cpWsn" id="6ySnuJfjn$E" role="3cpWs9">
            <property role="TrG5h" value="changeListManager" />
            <node concept="3uibUv" id="6ySnuJfjn$F" role="1tU5fm">
              <ref role="3uigEE" to="1038:~ChangeListManagerImpl" resolve="ChangeListManagerImpl" />
            </node>
            <node concept="2YIFZM" id="6ySnuJfjn$G" role="33vP2m">
              <ref role="37wK5l" to="1038:~ChangeListManagerImpl.getInstanceImpl(com.intellij.openapi.project.Project)" resolve="getInstanceImpl" />
              <ref role="1Pybhc" to="1038:~ChangeListManagerImpl" resolve="ChangeListManagerImpl" />
              <node concept="2OqwBi" id="38wEix8exQH" role="37wK5m">
                <node concept="2WthIp" id="38wEix8exQK" role="2Oq$k0" />
                <node concept="1DTwFV" id="38wEix8exQM" role="2OqNvi">
                  <ref role="2WH_rO" node="38wEix8ex4s" resolve="ideaProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ySnuJfjn$K" role="3cqZAp">
          <node concept="2OqwBi" id="6ySnuJfjn$L" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTuvO" role="2Oq$k0">
              <ref role="3cqZAo" node="6ySnuJfjn$E" resolve="changeListManager" />
            </node>
            <node concept="liA8E" id="6ySnuJfjn$N" role="2OqNvi">
              <ref role="37wK5l" to="1038:~ChangeListManagerImpl.addUnversionedFiles(com.intellij.openapi.vcs.changes.LocalChangeList,java.util.List)" resolve="addUnversionedFiles" />
              <node concept="2OqwBi" id="6ySnuJfjn$O" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTrKL" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ySnuJfjn$E" resolve="changeListManager" />
                </node>
                <node concept="liA8E" id="6ySnuJfjn$Q" role="2OqNvi">
                  <ref role="37wK5l" to="1038:~ChangeListManagerImpl.getDefaultChangeList()" resolve="getDefaultChangeList" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTwww" role="37wK5m">
                <ref role="3cqZAo" node="6ySnuJfjn$i" resolve="unversionedFiles" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="3$nB8L8HEVK" role="tmbBb">
      <node concept="3clFbS" id="3$nB8L8HEVL" role="2VODD2">
        <node concept="3cpWs8" id="1HWltx7v8lY" role="3cqZAp">
          <node concept="3cpWsn" id="1HWltx7v8lZ" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="1HWltx7v8m0" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="1HWltx7v8m1" role="33vP2m">
              <node concept="tl45R" id="1HWltx7v8m2" role="2Oq$k0" />
              <node concept="liA8E" id="1HWltx7v8m3" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$nB8L8HEVM" role="3cqZAp">
          <node concept="2OqwBi" id="3$nB8L8HEVT" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBO_" role="2Oq$k0">
              <ref role="3cqZAo" node="1HWltx7v8lZ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="3$nB8L8HEVX" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="3$nB8L8HEW0" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="3$nB8L8HEVY" role="37wK5m">
                  <property role="Xl_RC" value="Add %s to VCS" />
                </node>
                <node concept="3K4zz7" id="1BVBoF3mRBf" role="37wK5m">
                  <node concept="Xl_RD" id="1BVBoF3mRBg" role="3K4E3e">
                    <property role="Xl_RC" value="Module" />
                  </node>
                  <node concept="Xl_RD" id="1BVBoF3mRBh" role="3K4GZi">
                    <property role="Xl_RC" value="Modules" />
                  </node>
                  <node concept="3clFbC" id="1BVBoF3mRBi" role="3K4Cdx">
                    <node concept="3cmrfG" id="1BVBoF3mRBj" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="1BVBoF3mRBk" role="3uHU7B">
                      <node concept="2OqwBi" id="1BVBoF3mRBl" role="2Oq$k0">
                        <node concept="2WthIp" id="1BVBoF3mRBm" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1BVBoF3mRBn" role="2OqNvi">
                          <ref role="2WH_rO" node="6ySnuJfjn$e" resolve="modules" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1BVBoF3mRBo" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HWltx7v8m6" role="3cqZAp">
          <node concept="3cpWsn" id="1HWltx7v8m7" role="3cpWs9">
            <property role="TrG5h" value="enabled" />
            <node concept="10P_77" id="1HWltx7v8m8" role="1tU5fm" />
            <node concept="2OqwBi" id="1HWltx7v8m9" role="33vP2m">
              <node concept="2YIFZM" id="1HWltx7v8ma" role="2Oq$k0">
                <ref role="37wK5l" to="zbx9:78RbNhWi9Pq" resolve="getUnversionedFilesForModules" />
                <ref role="1Pybhc" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
                <node concept="2OqwBi" id="1HWltx7v8mb" role="37wK5m">
                  <node concept="2WthIp" id="1HWltx7v8mc" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1HWltx7v8md" role="2OqNvi">
                    <ref role="2WH_rO" node="38wEix8eppO" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1HWltx7v8me" role="37wK5m">
                  <node concept="2WthIp" id="1HWltx7v8mf" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1HWltx7v8mg" role="2OqNvi">
                    <ref role="2WH_rO" node="6ySnuJfjn$e" resolve="modules" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="1HWltx7v8mh" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$nB8L8HRbZ" role="3cqZAp">
          <node concept="2OqwBi" id="3$nB8L8HRc6" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$97" role="2Oq$k0">
              <ref role="3cqZAo" node="1HWltx7v8lZ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="3$nB8L8HRca" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="37vLTw" id="3GM_nagT_vA" role="37wK5m">
                <ref role="3cqZAo" node="1HWltx7v8m7" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HWltx7v8mj" role="3cqZAp">
          <node concept="2OqwBi" id="1HWltx7v8mk" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvNE" role="2Oq$k0">
              <ref role="3cqZAo" node="1HWltx7v8lZ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="1HWltx7v8mm" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="37vLTw" id="3GM_nagTAQk" role="37wK5m">
                <ref role="3cqZAo" node="1HWltx7v8m7" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6ySnuJfjmm_">
    <property role="TrG5h" value="ShowDiffererenceWithCurrentRevision" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Compare with the Same Repository Version" />
    <property role="72QZ$" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="7HIuVrrXzoa" role="32lrUH">
      <property role="TrG5h" value="getVcsActionsUtil" />
      <node concept="3uibUv" id="7HIuVrrXE8N" role="3clF45">
        <ref role="3uigEE" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
      </node>
      <node concept="3clFbS" id="7HIuVrrXzoc" role="3clF47">
        <node concept="3cpWs8" id="7HIuVrrXGDW" role="3cqZAp">
          <node concept="3cpWsn" id="7HIuVrrXGDX" role="3cpWs9">
            <property role="TrG5h" value="rootName" />
            <node concept="17QB3L" id="7HIuVrrXGDY" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="7HIuVrrY3_0" role="3cqZAp">
          <node concept="2OqwBi" id="7HIuVrrXHcZ" role="3clFbG">
            <node concept="liA8E" id="7HIuVrrXHd1" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="7HIuVrrXHd2" role="37wK5m">
                <node concept="3clFbS" id="7HIuVrrXHd3" role="1bW5cS">
                  <node concept="3clFbF" id="7HIuVrrY0wd" role="3cqZAp">
                    <node concept="37vLTI" id="7HIuVrrY15E" role="3clFbG">
                      <node concept="37vLTw" id="7HIuVrrY0wb" role="37vLTJ">
                        <ref role="3cqZAo" node="7HIuVrrXGDX" resolve="rootName" />
                      </node>
                      <node concept="2OqwBi" id="7HIuVrrXLoQ" role="37vLTx">
                        <node concept="2JrnkZ" id="7HIuVrrXL5m" role="2Oq$k0">
                          <node concept="2OqwBi" id="7HIuVrrXIyx" role="2JrQYb">
                            <node concept="2OqwBi" id="7HIuVrrXHTf" role="2Oq$k0">
                              <node concept="2WthIp" id="7HIuVrrXHTi" role="2Oq$k0" />
                              <node concept="3gHZIF" id="7HIuVrrXHTk" role="2OqNvi">
                                <ref role="2WH_rO" node="5a5$n2xupB2" resolve="node" />
                              </node>
                            </node>
                            <node concept="2Rxl7S" id="7HIuVrrXJcr" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7HIuVrrXMmk" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7HIuVrrXSFi" role="2Oq$k0">
              <node concept="2OqwBi" id="7HIuVrrXSFj" role="2Oq$k0">
                <node concept="2WthIp" id="7HIuVrrXSFk" role="2Oq$k0" />
                <node concept="1DTwFV" id="7HIuVrrXSFl" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjmmC" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="7HIuVrrXSFm" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HIuVrrXGE7" role="3cqZAp">
          <node concept="2ShNRf" id="7HIuVrrXGE9" role="3clFbG">
            <node concept="1pGfFk" id="7HIuVrrXGEa" role="2ShVmc">
              <ref role="37wK5l" to="zbx9:78RbNhWi9Rf" resolve="VcsActionsUtil" />
              <node concept="2OqwBi" id="7HIuVrrXGEb" role="37wK5m">
                <node concept="2WthIp" id="7HIuVrrXGEc" role="2Oq$k0" />
                <node concept="1DTwFV" id="7HIuVrrXGEd" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjmmC" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="1Hxk2C1j3V_" role="37wK5m">
                <node concept="2JrnkZ" id="1Hxk2C1j3Gv" role="2Oq$k0">
                  <node concept="2OqwBi" id="7HIuVrrXGEe" role="2JrQYb">
                    <node concept="2WthIp" id="7HIuVrrXGEf" role="2Oq$k0" />
                    <node concept="3gHZIF" id="7HIuVrrXGEg" role="2OqNvi">
                      <ref role="2WH_rO" node="5a5$n2xupB2" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1Hxk2C1j46Y" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="37vLTw" id="1Hxk2C1hijL" role="37wK5m">
                <ref role="3cqZAo" node="7HIuVrrXGDX" resolve="rootName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8LSOAE" role="1B3o_S" />
    </node>
    <node concept="2S4$dB" id="5a5$n2xupB2" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5a5$n2xupB3" role="1B3o_S" />
      <node concept="1oajcY" id="5a5$n2xupB4" role="1oa70y" />
      <node concept="3Tqbb2" id="5a5$n2xupk1" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6ySnuJfjmmC" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDob" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6ySnuJfjmmE" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
      <node concept="1oajcY" id="7HZe2EwZDlu" role="1oa70y" />
      <node concept="3dZWAM" id="6sqsxb$VaLE" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6ySnuJfjmmF" role="tncku">
      <node concept="3clFbS" id="6ySnuJfjmmG" role="2VODD2">
        <node concept="3clFbF" id="523_aD7Z2Ji" role="3cqZAp">
          <node concept="2OqwBi" id="523_aD7Z2Vq" role="3clFbG">
            <node concept="2OqwBi" id="7HIuVrrYOG_" role="2Oq$k0">
              <node concept="2WthIp" id="7HIuVrrYOGC" role="2Oq$k0" />
              <node concept="2XshWL" id="7HIuVrrYOGE" role="2OqNvi">
                <ref role="2WH_rO" node="7HIuVrrXzoa" resolve="getVcsActionsUtil" />
              </node>
            </node>
            <node concept="liA8E" id="523_aD7Z5MG" role="2OqNvi">
              <ref role="37wK5l" to="zbx9:523_aD7XGzd" resolve="showRootDifference" />
              <node concept="10Nm6u" id="523_aD7Z5ZJ" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6ySnuJfjmn0" role="tmbBb">
      <node concept="3clFbS" id="6ySnuJfjmn1" role="2VODD2">
        <node concept="3SKdUt" id="2YCjM4f8vYX" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXokNA" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXokNB" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNC" role="1PaTwD">
              <property role="3oM_SC" value="applicable" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokND" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNE" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="ATZLwXokNF" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2YCjM4f8sz$" role="3cqZAp">
          <node concept="3clFbS" id="2YCjM4f8szA" role="3clFbx">
            <node concept="3cpWs6" id="2YCjM4f8vnf" role="3cqZAp">
              <node concept="3clFbT" id="2YCjM4f8vnE" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="2YCjM4f8uKA" role="3clFbw">
            <node concept="10Nm6u" id="2YCjM4f8v2j" role="3uHU7w" />
            <node concept="2OqwBi" id="2YCjM4f8t6j" role="3uHU7B">
              <node concept="2OqwBi" id="2YCjM4f8sPp" role="2Oq$k0">
                <node concept="2WthIp" id="2YCjM4f8sPs" role="2Oq$k0" />
                <node concept="3gHZIF" id="2YCjM4f8sPu" role="2OqNvi">
                  <ref role="2WH_rO" node="5a5$n2xupB2" resolve="node" />
                </node>
              </node>
              <node concept="1mfA1w" id="2YCjM4f8u8F" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="523_aD7YAjq" role="3cqZAp">
          <node concept="3cpWsn" id="523_aD7YAjr" role="3cpWs9">
            <property role="TrG5h" value="virtualFile" />
            <node concept="3uibUv" id="523_aD7YAjf" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="523_aD7YAjs" role="33vP2m">
              <node concept="2OqwBi" id="7HIuVrrYNXV" role="2Oq$k0">
                <node concept="2WthIp" id="7HIuVrrYNXY" role="2Oq$k0" />
                <node concept="2XshWL" id="7HIuVrrYNY0" role="2OqNvi">
                  <ref role="2WH_rO" node="7HIuVrrXzoa" resolve="getVcsActionsUtil" />
                </node>
              </node>
              <node concept="liA8E" id="523_aD7YAjA" role="2OqNvi">
                <ref role="37wK5l" to="zbx9:523_aD7XMir" resolve="detectVirtualFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="523_aD7YGfm" role="3cqZAp">
          <node concept="3clFbS" id="523_aD7YGfo" role="3clFbx">
            <node concept="3cpWs6" id="523_aD7YICe" role="3cqZAp">
              <node concept="3clFbT" id="523_aD7YLWa" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="523_aD7YHyz" role="3clFbw">
            <node concept="10Nm6u" id="523_aD7YI5X" role="3uHU7w" />
            <node concept="37vLTw" id="523_aD7YGKV" role="3uHU7B">
              <ref role="3cqZAo" node="523_aD7YAjr" resolve="virtualFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="523_aD7YMqS" role="3cqZAp" />
        <node concept="3cpWs8" id="523_aD7YVkY" role="3cqZAp">
          <node concept="3cpWsn" id="523_aD7YVkZ" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="523_aD7YVkX" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="523_aD7YVl0" role="33vP2m">
              <node concept="2OqwBi" id="523_aD7YVl1" role="2Oq$k0">
                <node concept="2WthIp" id="523_aD7YVl2" role="2Oq$k0" />
                <node concept="1DTwFV" id="523_aD7YVl3" role="2OqNvi">
                  <ref role="2WH_rO" node="6ySnuJfjmmC" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="523_aD7YVl4" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ySnuJfjmnp" role="3cqZAp">
          <node concept="3clFbS" id="6ySnuJfjmnq" role="3clFbx">
            <node concept="3cpWs8" id="6ySnuJfjmnr" role="3cqZAp">
              <node concept="3cpWsn" id="6ySnuJfjmns" role="3cpWs9">
                <property role="TrG5h" value="fileStatus" />
                <node concept="3uibUv" id="6ySnuJfjmnt" role="1tU5fm">
                  <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                </node>
                <node concept="2OqwBi" id="6ySnuJfjmnu" role="33vP2m">
                  <node concept="liA8E" id="6ySnuJfjmn_" role="2OqNvi">
                    <ref role="37wK5l" to="jlcu:~FileStatusManager.getStatus(com.intellij.openapi.vfs.VirtualFile)" resolve="getStatus" />
                    <node concept="37vLTw" id="523_aD7Z0go" role="37wK5m">
                      <ref role="3cqZAo" node="523_aD7YAjr" resolve="virtualFile" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6xz27f4huAt" role="2Oq$k0">
                    <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                    <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                    <node concept="37vLTw" id="6xz27f4huJg" role="37wK5m">
                      <ref role="3cqZAo" node="523_aD7YVkZ" resolve="ideaProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6ySnuJfjmnB" role="3cqZAp">
              <node concept="1Wc70l" id="6ySnuJfjmnC" role="3cqZAk">
                <node concept="3y3z36" id="6ySnuJfjmnD" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTvu4" role="3uHU7w">
                    <ref role="3cqZAo" node="6ySnuJfjmns" resolve="fileStatus" />
                  </node>
                  <node concept="10M0yZ" id="6ySnuJfjmnF" role="3uHU7B">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
                <node concept="3y3z36" id="6ySnuJfjmnG" role="3uHU7B">
                  <node concept="10M0yZ" id="6ySnuJfjmnH" role="3uHU7B">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.ADDED" resolve="ADDED" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTuxp" role="3uHU7w">
                    <ref role="3cqZAo" node="6ySnuJfjmns" resolve="fileStatus" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6ySnuJfjmnP" role="3clFbw">
            <node concept="10Nm6u" id="6ySnuJfjmnQ" role="3uHU7w" />
            <node concept="2OqwBi" id="6ySnuJfjmnR" role="3uHU7B">
              <node concept="2YIFZM" id="6ySnuJfjmnS" role="2Oq$k0">
                <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <ref role="1Pybhc" to="jlcu:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                <node concept="37vLTw" id="523_aD7YVl5" role="37wK5m">
                  <ref role="3cqZAo" node="523_aD7YVkZ" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="6ySnuJfjmnW" role="2OqNvi">
                <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getVcsFor(com.intellij.openapi.vfs.VirtualFile)" resolve="getVcsFor" />
                <node concept="37vLTw" id="523_aD7YSvu" role="37wK5m">
                  <ref role="3cqZAo" node="523_aD7YAjr" resolve="virtualFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ySnuJfjmnY" role="3cqZAp">
          <node concept="3clFbT" id="6ySnuJfjmnZ" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGB9" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphTPkx" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Diff" resolve="Diff" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
  </node>
  <node concept="9BnSX" id="340HLwknMqj">
    <property role="9BnSZ" value="jetbrains.mps.vcs" />
    <property role="3FCvg6" value="true" />
    <property role="9BnSP" value="http://www.jetbrains.com/mps/" />
    <property role="9BnSL" value="VCS features in MPS" />
    <property role="9BnSM" value="JetBrains" />
    <property role="TrG5h" value="VCS Integration for MPS" />
    <property role="9BnSO" value="252.1" />
    <property role="9BnSK" value="2025.2.4" />
  </node>
  <node concept="1ESbSp" id="10cWl49AXwe">
    <property role="TrG5h" value="IDEAChangesViewPopup" />
    <property role="3GE5qa" value="Groups" />
    <node concept="Xl_RD" id="10cWl49AXwh" role="3mKD$K">
      <property role="Xl_RC" value="ChangesViewPopupMenu" />
    </node>
    <node concept="ftmFs" id="10cWl49AXwg" role="ftER_" />
  </node>
  <node concept="tC5Ba" id="10cWl49AXwi">
    <property role="TrG5h" value="MakeFromChangesView" />
    <property role="3GE5qa" value="Groups" />
    <node concept="ftmFs" id="10cWl49AXwk" role="ftER_">
      <node concept="2a7GMi" id="5b4BNAI11rq" role="ftvYc" />
      <node concept="tCFHf" id="10cWl49AXwn" role="ftvYc">
        <ref role="tCJdB" node="10cWl49ANNW" resolve="MakeOrRebuildModelsFromChangeList" />
        <node concept="3clFbT" id="3oEExTwYstM" role="2J__8u">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="tCFHf" id="3oEExTwYstO" role="ftvYc">
        <ref role="tCJdB" node="10cWl49ANNW" resolve="MakeOrRebuildModelsFromChangeList" />
        <node concept="3clFbT" id="3oEExTwYstP" role="2J__8u">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="10cWl49AXwo" role="2f5YQi">
      <ref role="tU$_T" node="10cWl49AXwe" resolve="IDEAChangesViewPopup" />
    </node>
  </node>
  <node concept="sE7Ow" id="10cWl49ANNW">
    <property role="TrG5h" value="MakeOrRebuildModelsFromChangeList" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Make Models" />
    <property role="3GE5qa" value="Actions" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="16Z9VSyjeSJ" role="32lrUH">
      <property role="TrG5h" value="getModels2Build" />
      <node concept="_YKpA" id="16Z9VSyjfUw" role="3clF45">
        <node concept="3uibUv" id="16Z9VSyjg3m" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="16Z9VSyjeSL" role="3clF47">
        <node concept="3clFbJ" id="78RbNhWi9PS" role="3cqZAp">
          <node concept="3y3z36" id="78RbNhWi9PT" role="3clFbw">
            <node concept="10Nm6u" id="78RbNhWi9PU" role="3uHU7w" />
            <node concept="37vLTw" id="16Z9VSyjkEG" role="3uHU7B">
              <ref role="3cqZAo" node="16Z9VSyjgcp" resolve="virtualFiles" />
            </node>
          </node>
          <node concept="3clFbS" id="78RbNhWi9PW" role="3clFbx">
            <node concept="3cpWs8" id="6y_kxB1V8Kv" role="3cqZAp">
              <node concept="3cpWsn" id="6y_kxB1V8Kw" role="3cpWs9">
                <property role="TrG5h" value="modelFileTracker" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="6y_kxB1V8Ku" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                </node>
                <node concept="2YIFZM" id="6y_kxB1V8Kx" role="33vP2m">
                  <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                  <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                  <node concept="2OqwBi" id="6y_kxB1Vh91" role="37wK5m">
                    <node concept="2OqwBi" id="6y_kxB1Vgiz" role="2Oq$k0">
                      <node concept="2WthIp" id="6y_kxB1VgiA" role="2Oq$k0" />
                      <node concept="1DTwFV" id="6y_kxB1VgiC" role="2OqNvi">
                        <ref role="2WH_rO" node="7iCFfvQyOHZ" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6y_kxB1VhDs" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="V2e5CGXNNc" role="3cqZAp">
              <node concept="3cpWsn" id="V2e5CGXNNd" role="3cpWs9">
                <property role="TrG5h" value="fs" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="V2e5CGXNKc" role="1tU5fm">
                  <ref role="3uigEE" to="4hrd:~IdeaFileSystem" resolve="IdeaFileSystem" />
                </node>
                <node concept="2OqwBi" id="V2e5CGXNNe" role="33vP2m">
                  <node concept="2OqwBi" id="V2e5CGXNNf" role="2Oq$k0">
                    <node concept="2WthIp" id="V2e5CGXNNg" role="2Oq$k0" />
                    <node concept="1DTwFV" id="V2e5CGXNNh" role="2OqNvi">
                      <ref role="2WH_rO" node="7iCFfvQyOHZ" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="V2e5CGXNNi" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="78RbNhWi9PX" role="3cqZAp">
              <node concept="2OqwBi" id="78RbNhWi9PY" role="3cqZAk">
                <node concept="2OqwBi" id="78RbNhWi9PZ" role="2Oq$k0">
                  <node concept="3zZkjj" id="78RbNhWi9Q_" role="2OqNvi">
                    <node concept="1bVj0M" id="78RbNhWi9QA" role="23t8la">
                      <node concept="3clFbS" id="78RbNhWi9QB" role="1bW5cS">
                        <node concept="3clFbF" id="78RbNhWi9QC" role="3cqZAp">
                          <node concept="1Wc70l" id="16Z9VSyjsMa" role="3clFbG">
                            <node concept="2YIFZM" id="16Z9VSyjvut" role="3uHU7w">
                              <ref role="37wK5l" to="ap4u:~GenerationFacade.canGenerate(org.jetbrains.mps.openapi.model.SModel)" resolve="canGenerate" />
                              <ref role="1Pybhc" to="ap4u:~GenerationFacade" resolve="GenerationFacade" />
                              <node concept="37vLTw" id="16Z9VSyjvSK" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0X_i" resolve="m" />
                              </node>
                            </node>
                            <node concept="3y3z36" id="78RbNhWi9QD" role="3uHU7B">
                              <node concept="37vLTw" id="2BHiRxglqe5" role="3uHU7B">
                                <ref role="3cqZAo" node="5W7E4fV0X_i" resolve="m" />
                              </node>
                              <node concept="10Nm6u" id="78RbNhWi9QE" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0X_i" role="1bW2Oz">
                        <property role="TrG5h" value="m" />
                        <node concept="2jxLKc" id="5W7E4fV0X_j" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78RbNhWi9Q0" role="2Oq$k0">
                    <node concept="2OqwBi" id="V2e5CGXvSL" role="2Oq$k0">
                      <node concept="2OqwBi" id="6PUZm6l9IBp" role="2Oq$k0">
                        <node concept="2OqwBi" id="78RbNhWi9Q1" role="2Oq$k0">
                          <node concept="3zZkjj" id="78RbNhWi9Q5" role="2OqNvi">
                            <node concept="1bVj0M" id="78RbNhWi9Q6" role="23t8la">
                              <node concept="3clFbS" id="78RbNhWi9Q7" role="1bW5cS">
                                <node concept="3clFbF" id="78RbNhWi9Q8" role="3cqZAp">
                                  <node concept="1Wc70l" id="78RbNhWi9Q9" role="3clFbG">
                                    <node concept="1Wc70l" id="78RbNhWi9Qe" role="3uHU7B">
                                      <node concept="2OqwBi" id="78RbNhWi9Qf" role="3uHU7B">
                                        <node concept="liA8E" id="78RbNhWi9Qh" role="2OqNvi">
                                          <ref role="37wK5l" to="jlff:~VirtualFile.isInLocalFileSystem()" resolve="isInLocalFileSystem" />
                                        </node>
                                        <node concept="37vLTw" id="2BHiRxgm1Po" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0X_k" resolve="vf" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="78RbNhWi9Qi" role="3uHU7w">
                                        <node concept="liA8E" id="78RbNhWi9Qk" role="2OqNvi">
                                          <ref role="37wK5l" to="jlff:~VirtualFile.exists()" resolve="exists" />
                                        </node>
                                        <node concept="37vLTw" id="2BHiRxgheY8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0X_k" resolve="vf" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3fqX7Q" id="78RbNhWi9Qa" role="3uHU7w">
                                      <node concept="2OqwBi" id="78RbNhWi9Qb" role="3fr31v">
                                        <node concept="37vLTw" id="2BHiRxgmjkQ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0X_k" resolve="vf" />
                                        </node>
                                        <node concept="liA8E" id="78RbNhWi9Qd" role="2OqNvi">
                                          <ref role="37wK5l" to="jlff:~VirtualFile.isDirectory()" resolve="isDirectory" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0X_k" role="1bW2Oz">
                                <property role="TrG5h" value="vf" />
                                <node concept="2jxLKc" id="5W7E4fV0X_l" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="78RbNhWi9Q2" role="2Oq$k0">
                            <node concept="39bAoz" id="78RbNhWi9Q4" role="2OqNvi" />
                            <node concept="37vLTw" id="16Z9VSyjkFH" role="2Oq$k0">
                              <ref role="3cqZAo" node="16Z9VSyjgcp" resolve="virtualFiles" />
                            </node>
                          </node>
                        </node>
                        <node concept="3zZkjj" id="6PUZm6l9Ua8" role="2OqNvi">
                          <node concept="1bVj0M" id="6PUZm6l9Uaa" role="23t8la">
                            <node concept="3clFbS" id="6PUZm6l9Uab" role="1bW5cS">
                              <node concept="3clFbF" id="6PUZm6l9Uac" role="3cqZAp">
                                <node concept="2OqwBi" id="6PUZm6l9Uad" role="3clFbG">
                                  <node concept="37vLTw" id="6PUZm6l9Uae" role="2Oq$k0">
                                    <ref role="3cqZAo" node="V2e5CGXNNd" resolve="fs" />
                                  </node>
                                  <node concept="liA8E" id="6PUZm6l9VlO" role="2OqNvi">
                                    <ref role="37wK5l" to="4hrd:~IdeaFileSystem.canConvert(com.intellij.openapi.vfs.VirtualFile)" resolve="canConvert" />
                                    <node concept="37vLTw" id="6PUZm6l9VYv" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0X_m" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0X_m" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0X_n" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3$u5V9" id="V2e5CGXyFN" role="2OqNvi">
                        <node concept="1bVj0M" id="V2e5CGXyFP" role="23t8la">
                          <node concept="3clFbS" id="V2e5CGXyFQ" role="1bW5cS">
                            <node concept="3clFbF" id="V2e5CGXE0p" role="3cqZAp">
                              <node concept="2OqwBi" id="V2e5CGXZ2t" role="3clFbG">
                                <node concept="37vLTw" id="V2e5CGXNNj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="V2e5CGXNNd" resolve="fs" />
                                </node>
                                <node concept="liA8E" id="V2e5CGY1ZB" role="2OqNvi">
                                  <ref role="37wK5l" to="4hrd:~IdeaFileSystem.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                                  <node concept="37vLTw" id="V2e5CGYdaj" role="37wK5m">
                                    <ref role="3cqZAo" node="5W7E4fV0X_o" resolve="vf" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0X_o" role="1bW2Oz">
                            <property role="TrG5h" value="vf" />
                            <node concept="2jxLKc" id="5W7E4fV0X_p" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="78RbNhWi9Qn" role="2OqNvi">
                      <node concept="1bVj0M" id="78RbNhWi9Qo" role="23t8la">
                        <node concept="3clFbS" id="78RbNhWi9Qp" role="1bW5cS">
                          <node concept="3clFbF" id="2tkR5cH5dml" role="3cqZAp">
                            <node concept="2OqwBi" id="5ORmSV01Zol" role="3clFbG">
                              <node concept="37vLTw" id="6y_kxB1V8Ky" role="2Oq$k0">
                                <ref role="3cqZAo" node="6y_kxB1V8Kw" resolve="modelFileTracker" />
                              </node>
                              <node concept="liA8E" id="5ORmSV01Zon" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~SModelFileTracker.findModel(jetbrains.mps.vfs.IFile)" resolve="findModel" />
                                <node concept="37vLTw" id="V2e5CGYk1O" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0X_q" resolve="f" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0X_q" role="1bW2Oz">
                          <property role="TrG5h" value="f" />
                          <node concept="2jxLKc" id="5W7E4fV0X_r" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="78RbNhWi9QI" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="78RbNhWi9QJ" role="9aQIa">
            <node concept="3clFbS" id="78RbNhWi9QK" role="9aQI4">
              <node concept="3cpWs6" id="78RbNhWi9QL" role="3cqZAp">
                <node concept="2ShNRf" id="78RbNhWi9QM" role="3cqZAk">
                  <node concept="Tc6Ow" id="78RbNhWi9QN" role="2ShVmc">
                    <node concept="3uibUv" id="78RbNhWi9QO" role="HW$YZ">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="16Z9VSyjgcp" role="3clF46">
        <property role="TrG5h" value="virtualFiles" />
        <node concept="10Q1$e" id="16Z9VSyjghc" role="1tU5fm">
          <node concept="3uibUv" id="16Z9VSyjgco" role="10Q1$1">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="16Z9VSyjhNt" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="7iCFfvQyOHZ" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQyOI0" role="1oa70y" />
    </node>
    <node concept="2JriF1" id="3oEExTwXU92" role="2JrayB">
      <property role="TrG5h" value="rebuild" />
      <node concept="3Tm6S6" id="3oEExTwXU93" role="1B3o_S" />
      <node concept="10P_77" id="3oEExTwXUBO" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="10cWl49ANO5" role="1NuT2Z">
      <property role="TrG5h" value="virtualFiles" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.VIRTUAL_FILE_ARRAY" resolve="VIRTUAL_FILE_ARRAY" />
      <node concept="1oajcY" id="3oEExTwXUBP" role="1oa70y" />
    </node>
    <node concept="tnohg" id="10cWl49ANNX" role="tncku">
      <node concept="3clFbS" id="10cWl49ANNY" role="2VODD2">
        <node concept="3clFbH" id="IIVxgkNuVM" role="3cqZAp" />
        <node concept="3cpWs8" id="6xMoDGg_g3E" role="3cqZAp">
          <node concept="3cpWsn" id="6xMoDGg_g3F" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="6xMoDGg_g3A" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="6xMoDGg_g3G" role="33vP2m">
              <node concept="2WthIp" id="6xMoDGg_g3H" role="2Oq$k0" />
              <node concept="1DTwFV" id="6xMoDGg_g3I" role="2OqNvi">
                <ref role="2WH_rO" node="7iCFfvQyOHZ" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="16Z9VSyjK2C" role="3cqZAp">
          <node concept="3cpWsn" id="16Z9VSyjK2D" role="3cpWs9">
            <property role="TrG5h" value="resources" />
            <node concept="_YKpA" id="3t0KN6Kgj4x" role="1tU5fm">
              <node concept="3qUE_q" id="3t0KN6Kgj4z" role="_ZDj9">
                <node concept="3uibUv" id="3t0KN6Kgj4$" role="3qUE_r">
                  <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="16Z9VSyjK2E" role="33vP2m">
              <node concept="2ShNRf" id="16Z9VSyjK2F" role="2Oq$k0">
                <node concept="1pGfFk" id="16Z9VSyjK2G" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="16Z9VSyjK2H" role="37wK5m">
                    <node concept="37vLTw" id="6xMoDGg_g3J" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xMoDGg_g3F" resolve="project" />
                    </node>
                    <node concept="liA8E" id="16Z9VSyjK2L" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="16Z9VSyjK2M" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="16Z9VSyjK2N" role="37wK5m">
                  <node concept="3clFbS" id="16Z9VSyjK2O" role="1bW5cS">
                    <node concept="3cpWs8" id="16Z9VSyjK2P" role="3cqZAp">
                      <node concept="3cpWsn" id="16Z9VSyjK2Q" role="3cpWs9">
                        <property role="TrG5h" value="models" />
                        <node concept="_YKpA" id="16Z9VSyjK2R" role="1tU5fm">
                          <node concept="3uibUv" id="16Z9VSyjK2S" role="_ZDj9">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="16Z9VSyjK2T" role="33vP2m">
                          <node concept="2WthIp" id="16Z9VSyjK2U" role="2Oq$k0" />
                          <node concept="2XshWL" id="16Z9VSyjK2V" role="2OqNvi">
                            <ref role="2WH_rO" node="16Z9VSyjeSJ" resolve="getModels2Build" />
                            <node concept="2OqwBi" id="16Z9VSyjK2W" role="2XxRq1">
                              <node concept="2WthIp" id="16Z9VSyjK2X" role="2Oq$k0" />
                              <node concept="1DTwFV" id="16Z9VSyjK2Y" role="2OqNvi">
                                <ref role="2WH_rO" node="10cWl49ANO5" resolve="virtualFiles" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6xMoDGg_6oN" role="3cqZAp">
                      <node concept="3clFbS" id="6xMoDGg_6oP" role="3clFbx">
                        <node concept="3cpWs8" id="713BH0SEejk" role="3cqZAp">
                          <node concept="3cpWsn" id="713BH0SEejl" role="3cpWs9">
                            <property role="TrG5h" value="m2r" />
                            <node concept="3uibUv" id="713BH0SEejm" role="1tU5fm">
                              <ref role="3uigEE" to="fn29:6gLh390EkrJ" resolve="ModelsToResources" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="713BH0SEdcd" role="3cqZAp" />
                        <node concept="3clFbJ" id="713BH0SE72N" role="3cqZAp">
                          <node concept="3clFbS" id="713BH0SE72P" role="3clFbx">
                            <node concept="3cpWs8" id="3lEpTK7I2U1" role="3cqZAp">
                              <node concept="3cpWsn" id="3lEpTK7I2U2" role="3cpWs9">
                                <property role="TrG5h" value="statusManager" />
                                <node concept="3uibUv" id="3lEpTK7I2U0" role="1tU5fm">
                                  <ref role="3uigEE" to="ap4u:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                                </node>
                                <node concept="2OqwBi" id="3lEpTK7Igj9" role="33vP2m">
                                  <node concept="2OqwBi" id="3lEpTK7IfpO" role="2Oq$k0">
                                    <node concept="2WthIp" id="3lEpTK7IfpR" role="2Oq$k0" />
                                    <node concept="1DTwFV" id="3lEpTK7IfpT" role="2OqNvi">
                                      <ref role="2WH_rO" node="7iCFfvQyOHZ" resolve="mpsProject" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3lEpTK7IiGT" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                                    <node concept="3VsKOn" id="3lEpTK7Ijpc" role="37wK5m">
                                      <ref role="3VsUkX" to="ap4u:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="713BH0SEgyq" role="3cqZAp">
                              <node concept="37vLTI" id="713BH0SEgY1" role="3clFbG">
                                <node concept="37vLTw" id="713BH0SEgyo" role="37vLTJ">
                                  <ref role="3cqZAo" node="713BH0SEejl" resolve="m2r" />
                                </node>
                                <node concept="2ShNRf" id="713BH0SEhmP" role="37vLTx">
                                  <node concept="1pGfFk" id="713BH0SEhmQ" role="2ShVmc">
                                    <ref role="37wK5l" to="fn29:6zsZmIC0WqK" resolve="ModelsToResources" />
                                    <node concept="2OqwBi" id="713BH0SE5At" role="37wK5m">
                                      <node concept="37vLTw" id="3lEpTK7I2U4" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3lEpTK7I2U2" resolve="statusManager" />
                                      </node>
                                      <node concept="liA8E" id="713BH0SE5UK" role="2OqNvi">
                                        <ref role="37wK5l" to="ap4u:~ModelGenerationStatusManager.getModifiedModels(java.util.Collection)" resolve="getModifiedModels" />
                                        <node concept="37vLTw" id="713BH0SE69T" role="37wK5m">
                                          <ref role="3cqZAo" node="16Z9VSyjK2Q" resolve="models" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="713BH0SEacG" role="3clFbw">
                            <node concept="2OqwBi" id="713BH0SEacI" role="3fr31v">
                              <node concept="2WthIp" id="713BH0SEacJ" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="713BH0SEacK" role="2OqNvi">
                                <ref role="2WH_rO" node="3oEExTwXU92" resolve="rebuild" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="713BH0SEiEt" role="9aQIa">
                            <node concept="3clFbS" id="713BH0SEiEu" role="9aQI4">
                              <node concept="3clFbF" id="713BH0SEj3w" role="3cqZAp">
                                <node concept="37vLTI" id="713BH0SEjtj" role="3clFbG">
                                  <node concept="37vLTw" id="713BH0SEj3v" role="37vLTJ">
                                    <ref role="3cqZAo" node="713BH0SEejl" resolve="m2r" />
                                  </node>
                                  <node concept="2ShNRf" id="16Z9VSyjK32" role="37vLTx">
                                    <node concept="1pGfFk" id="16Z9VSyjK33" role="2ShVmc">
                                      <ref role="37wK5l" to="fn29:6zsZmIC0WqK" resolve="ModelsToResources" />
                                      <node concept="37vLTw" id="713BH0SE6Cj" role="37wK5m">
                                        <ref role="3cqZAo" node="16Z9VSyjK2Q" resolve="models" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="16Z9VSyjK2Z" role="3cqZAp">
                          <node concept="2OqwBi" id="16Z9VSyjK30" role="3cqZAk">
                            <node concept="2OqwBi" id="16Z9VSyjK31" role="2Oq$k0">
                              <node concept="liA8E" id="16Z9VSyjK35" role="2OqNvi">
                                <ref role="37wK5l" to="fn29:713BH0S$TAn" resolve="resources" />
                              </node>
                              <node concept="37vLTw" id="713BH0SEksL" role="2Oq$k0">
                                <ref role="3cqZAo" node="713BH0SEejl" resolve="m2r" />
                              </node>
                            </node>
                            <node concept="ANE8D" id="16Z9VSyjK39" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6xMoDGg_fAS" role="3clFbw">
                        <node concept="2ShNRf" id="6xMoDGg_6_O" role="2Oq$k0">
                          <node concept="1pGfFk" id="6xMoDGg_foK" role="2ShVmc">
                            <ref role="37wK5l" to="o6ex:~GenerationCheckHelper.&lt;init&gt;()" resolve="GenerationCheckHelper" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6xMoDGg_fPI" role="2OqNvi">
                          <ref role="37wK5l" to="o6ex:~GenerationCheckHelper.checkModelsBeforeGenerationIfNeeded(jetbrains.mps.project.Project,java.util.List)" resolve="checkModelsBeforeGenerationIfNeeded" />
                          <node concept="37vLTw" id="6xMoDGg_gH8" role="37wK5m">
                            <ref role="3cqZAo" node="6xMoDGg_g3F" resolve="project" />
                          </node>
                          <node concept="37vLTw" id="6xMoDGg_gUZ" role="37wK5m">
                            <ref role="3cqZAo" node="16Z9VSyjK2Q" resolve="models" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6xMoDGg_hTg" role="3cqZAp">
                      <node concept="2ShNRf" id="6xMoDGg_iYu" role="3cqZAk">
                        <node concept="Tc6Ow" id="6xMoDGg_k8r" role="2ShVmc">
                          <node concept="3uibUv" id="6xMoDGg_ooP" role="HW$YZ">
                            <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
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
        <node concept="3clFbJ" id="6xMoDGg_oF8" role="3cqZAp">
          <node concept="3clFbS" id="6xMoDGg_oFa" role="3clFbx">
            <node concept="3cpWs6" id="6xMoDGg_qYX" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6xMoDGg_pvi" role="3clFbw">
            <node concept="37vLTw" id="6xMoDGg_oV0" role="2Oq$k0">
              <ref role="3cqZAo" node="16Z9VSyjK2D" resolve="resources" />
            </node>
            <node concept="1v1jN8" id="6xMoDGg_qVb" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="16Z9VSyjLEO" role="3cqZAp">
          <node concept="3cpWsn" id="16Z9VSyjLEP" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="16Z9VSyjLEQ" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2ShNRf" id="16Z9VSyjLNP" role="33vP2m">
              <node concept="1pGfFk" id="16Z9VSyjMJf" role="2ShVmc">
                <ref role="37wK5l" to="hfuk:2BjwmTxT7Q7" resolve="MakeSession" />
                <node concept="37vLTw" id="6xMoDGg_g3K" role="37wK5m">
                  <ref role="3cqZAo" node="6xMoDGg_g3F" resolve="project" />
                </node>
                <node concept="2ShNRf" id="16Z9VSyjMMw" role="37wK5m">
                  <node concept="1pGfFk" id="16Z9VSyjP7D" role="2ShVmc">
                    <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                    <node concept="37vLTw" id="6xMoDGg_g3L" role="37wK5m">
                      <ref role="3cqZAo" node="6xMoDGg_g3F" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="16Z9VSyjPcN" role="37wK5m">
                  <node concept="2WthIp" id="16Z9VSyjPcQ" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="16Z9VSyjPcS" role="2OqNvi">
                    <ref role="2WH_rO" node="3oEExTwXU92" resolve="rebuild" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IIVxgkL6It" role="3cqZAp">
          <node concept="3cpWsn" id="IIVxgkL6Iu" role="3cpWs9">
            <property role="TrG5h" value="makeService" />
            <node concept="3uibUv" id="IIVxgkL6Is" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
            </node>
            <node concept="2OqwBi" id="IIVxgkLkzI" role="33vP2m">
              <node concept="2OqwBi" id="IIVxgkLjB5" role="2Oq$k0">
                <node concept="37vLTw" id="IIVxgkLjdD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xMoDGg_g3F" resolve="project" />
                </node>
                <node concept="liA8E" id="IIVxgkLkeU" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="IIVxgkLkn3" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkLkZ7" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1AfPmE4tJRS" role="3cqZAp">
          <node concept="2OqwBi" id="1AfPmE4tJRT" role="3clFbw">
            <node concept="37vLTw" id="IIVxgkL6Iw" role="2Oq$k0">
              <ref role="3cqZAo" node="IIVxgkL6Iu" resolve="makeService" />
            </node>
            <node concept="liA8E" id="1AfPmE4tJRV" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N63W" resolve="openNewSession" />
              <node concept="37vLTw" id="3GM_nagTyAS" role="37wK5m">
                <ref role="3cqZAo" node="16Z9VSyjLEP" resolve="session" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1AfPmE4tJRX" role="3clFbx">
            <node concept="3clFbF" id="1AfPmE4tJRZ" role="3cqZAp">
              <node concept="2OqwBi" id="1AfPmE4tJS1" role="3clFbG">
                <node concept="37vLTw" id="IIVxgkL6Ix" role="2Oq$k0">
                  <ref role="3cqZAo" node="IIVxgkL6Iu" resolve="makeService" />
                </node>
                <node concept="liA8E" id="1AfPmE4tJS5" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:7yGn3z4N64K" resolve="make" />
                  <node concept="37vLTw" id="3GM_nagTrxV" role="37wK5m">
                    <ref role="3cqZAo" node="16Z9VSyjLEP" resolve="session" />
                  </node>
                  <node concept="37vLTw" id="16Z9VSyjQkc" role="37wK5m">
                    <ref role="3cqZAo" node="16Z9VSyjK2D" resolve="resources" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="10cWl49ANNZ" role="tmbBb">
      <node concept="3clFbS" id="10cWl49ANO0" role="2VODD2">
        <node concept="3cpWs8" id="4O9Oe_fsJ$7" role="3cqZAp">
          <node concept="3cpWsn" id="4O9Oe_fsJ$8" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="_YKpA" id="4O9Oe_fsJ$9" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_fsJ$a" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="16Z9VSyjhiI" role="33vP2m">
              <node concept="2WthIp" id="16Z9VSyjhiL" role="2Oq$k0" />
              <node concept="2XshWL" id="16Z9VSyjhiN" role="2OqNvi">
                <ref role="2WH_rO" node="16Z9VSyjeSJ" resolve="getModels2Build" />
                <node concept="2OqwBi" id="16Z9VSyjhyV" role="2XxRq1">
                  <node concept="2WthIp" id="16Z9VSyjhyY" role="2Oq$k0" />
                  <node concept="1DTwFV" id="16Z9VSyjhz0" role="2OqNvi">
                    <ref role="2WH_rO" node="10cWl49ANO5" resolve="virtualFiles" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Ob_3slop_X" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slop_Y" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slop_Z" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slopA0" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="IIVxgkLmjx" role="3clFbw">
            <node concept="2OqwBi" id="10cWl49AXvs" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTxOu" role="2Oq$k0">
                <ref role="3cqZAo" node="4O9Oe_fsJ$8" resolve="models" />
              </node>
              <node concept="1v1jN8" id="10cWl49AXvu" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="IIVxgkLo30" role="3uHU7w">
              <node concept="2OqwBi" id="IIVxgkLn78" role="2Oq$k0">
                <node concept="2OqwBi" id="IIVxgkLq97" role="2Oq$k0">
                  <node concept="2WthIp" id="IIVxgkLq9a" role="2Oq$k0" />
                  <node concept="1DTwFV" id="IIVxgkLq9c" role="2OqNvi">
                    <ref role="2WH_rO" node="7iCFfvQyOHZ" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="IIVxgkLn7a" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="IIVxgkLn7b" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkLphu" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="16Z9VSyiOzP" role="3cqZAp">
          <node concept="3cpWsn" id="16Z9VSyiOzS" role="3cpWs9">
            <property role="TrG5h" value="what" />
            <node concept="17QB3L" id="16Z9VSyiOzN" role="1tU5fm" />
            <node concept="3K4zz7" id="16Z9VSyiUtT" role="33vP2m">
              <node concept="Xl_RD" id="16Z9VSyiZg$" role="3K4GZi">
                <property role="Xl_RC" value="selected models" />
              </node>
              <node concept="3cpWs3" id="16Z9VSyiVMj" role="3K4E3e">
                <node concept="2YIFZM" id="IIVxgkLEvb" role="3uHU7w">
                  <ref role="37wK5l" to="18ew:~NameUtil.compactModelName(org.jetbrains.mps.openapi.model.SModelReference)" resolve="compactModelName" />
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <node concept="2OqwBi" id="IIVxgkLEvd" role="37wK5m">
                    <node concept="2OqwBi" id="IIVxgkLEve" role="2Oq$k0">
                      <node concept="37vLTw" id="IIVxgkLEvf" role="2Oq$k0">
                        <ref role="3cqZAo" node="4O9Oe_fsJ$8" resolve="models" />
                      </node>
                      <node concept="1uHKPH" id="IIVxgkLEvg" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="IIVxgkLEvh" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="16Z9VSyiUGt" role="3uHU7B">
                  <property role="Xl_RC" value="model " />
                </node>
              </node>
              <node concept="3clFbC" id="16Z9VSyiTwO" role="3K4Cdx">
                <node concept="3cmrfG" id="16Z9VSyiTLs" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="16Z9VSyiRZ0" role="3uHU7B">
                  <node concept="37vLTw" id="16Z9VSyiRZ1" role="2Oq$k0">
                    <ref role="3cqZAo" node="4O9Oe_fsJ$8" resolve="models" />
                  </node>
                  <node concept="34oBXx" id="16Z9VSyiRZ2" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tZeFupJEXo" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJEXp" role="3cpWs9">
            <property role="TrG5h" value="fmt" />
            <node concept="17QB3L" id="7tZeFupJEXq" role="1tU5fm" />
            <node concept="3K4zz7" id="16Z9VSyj2x9" role="33vP2m">
              <node concept="Xl_RD" id="16Z9VSyj4C3" role="3K4GZi">
                <property role="Xl_RC" value="Make %s" />
              </node>
              <node concept="Xl_RD" id="16Z9VSyj2M8" role="3K4E3e">
                <property role="Xl_RC" value="Rebuild %s" />
              </node>
              <node concept="2OqwBi" id="16Z9VSyj1W4" role="3K4Cdx">
                <node concept="2WthIp" id="16Z9VSyj1W7" role="2Oq$k0" />
                <node concept="2BZ7hE" id="16Z9VSyj1W9" role="2OqNvi">
                  <ref role="2WH_rO" node="3oEExTwXU92" resolve="rebuild" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16Z9VSyj77K" role="3cqZAp">
          <node concept="2OqwBi" id="16Z9VSyj84E" role="3clFbG">
            <node concept="2OqwBi" id="16Z9VSyj7n9" role="2Oq$k0">
              <node concept="tl45R" id="16Z9VSyj77I" role="2Oq$k0" />
              <node concept="liA8E" id="16Z9VSyj7N0" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="16Z9VSyj8lM" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="16Z9VSyj8SN" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="37vLTw" id="16Z9VSyj9at" role="37wK5m">
                  <ref role="3cqZAo" node="7tZeFupJEXp" resolve="fmt" />
                </node>
                <node concept="37vLTw" id="16Z9VSyjarE" role="37wK5m">
                  <ref role="3cqZAo" node="16Z9VSyiOzS" resolve="what" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16Z9VSyjbC5" role="3cqZAp">
          <node concept="3clFbT" id="16Z9VSyjc9C" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3ndSBELTfla">
    <property role="TrG5h" value="CompareTransientModels" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Compare Models" />
    <property role="3GE5qa" value="Actions" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="3ndSBELTflb" role="tncku">
      <node concept="3clFbS" id="3ndSBELTflc" role="2VODD2">
        <node concept="3cpWs8" id="wriWL6W06k" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6W06l" role="3cpWs9">
            <property role="TrG5h" value="sortedModels" />
            <node concept="_YKpA" id="wriWL6W2o0" role="1tU5fm">
              <node concept="3uibUv" id="wriWL6W2o2" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2YIFZM" id="wriWL6W06m" role="33vP2m">
              <ref role="1Pybhc" to="7e8u:~SortUtil" resolve="SortUtil" />
              <ref role="37wK5l" to="7e8u:~SortUtil.sortModels(java.util.List)" resolve="sortModels" />
              <node concept="2OqwBi" id="wriWL6W06n" role="37wK5m">
                <node concept="2WthIp" id="wriWL6W06o" role="2Oq$k0" />
                <node concept="1DTwFV" id="wriWL6W06p" role="2OqNvi">
                  <ref role="2WH_rO" node="3ndSBELTJVj" resolve="models" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="wriWL6VYRp" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6VYRq" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="_YKpA" id="wriWL6VYRr" role="1tU5fm">
              <node concept="3uibUv" id="wriWL6X89p" role="_ZDj9">
                <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
              </node>
            </node>
            <node concept="2OqwBi" id="wriWL6WvNb" role="33vP2m">
              <node concept="2OqwBi" id="wriWL6WqA4" role="2Oq$k0">
                <node concept="37vLTw" id="wriWL6WpMx" role="2Oq$k0">
                  <ref role="3cqZAo" node="wriWL6W06l" resolve="sortedModels" />
                </node>
                <node concept="3$u5V9" id="wriWL6Wsy0" role="2OqNvi">
                  <node concept="1bVj0M" id="wriWL6Wsy2" role="23t8la">
                    <node concept="3clFbS" id="wriWL6Wsy3" role="1bW5cS">
                      <node concept="3clFbF" id="wriWL6WsM9" role="3cqZAp">
                        <node concept="10QFUN" id="wriWL6X8_t" role="3clFbG">
                          <node concept="3uibUv" id="wriWL6X8Yd" role="10QFUM">
                            <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
                          </node>
                          <node concept="2ShNRf" id="wriWL6WtgV" role="10QFUP">
                            <node concept="1pGfFk" id="wriWL6Wulw" role="2ShVmc">
                              <ref role="37wK5l" to="24bc:~ModelDiffContent.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDiffContent" />
                              <node concept="37vLTw" id="wriWL6Wu_X" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0X_s" resolve="model" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0X_s" role="1bW2Oz">
                      <property role="TrG5h" value="model" />
                      <node concept="2jxLKc" id="5W7E4fV0X_t" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="wriWL6WwwT" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="wriWL6VYRC" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6VYRD" role="3cpWs9">
            <property role="TrG5h" value="titles" />
            <node concept="_YKpA" id="wriWL6VYRE" role="1tU5fm">
              <node concept="17QB3L" id="wriWL6VYRF" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="wriWL6WoGd" role="33vP2m">
              <node concept="2OqwBi" id="wriWL6Wlgm" role="2Oq$k0">
                <node concept="37vLTw" id="wriWL6WksN" role="2Oq$k0">
                  <ref role="3cqZAo" node="wriWL6W06l" resolve="sortedModels" />
                </node>
                <node concept="3$u5V9" id="wriWL6Wnci" role="2OqNvi">
                  <node concept="1bVj0M" id="wriWL6Wnck" role="23t8la">
                    <node concept="3clFbS" id="wriWL6Wncl" role="1bW5cS">
                      <node concept="3clFbF" id="wriWL6Wnw2" role="3cqZAp">
                        <node concept="3cpWs3" id="wriWL6W_xw" role="3clFbG">
                          <node concept="Xl_RD" id="wriWL6W_xK" role="3uHU7w" />
                          <node concept="2OqwBi" id="wriWL6WnNA" role="3uHU7B">
                            <node concept="37vLTw" id="wriWL6Wnw1" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0X_u" resolve="model" />
                            </node>
                            <node concept="liA8E" id="wriWL6Woj4" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0X_u" role="1bW2Oz">
                      <property role="TrG5h" value="model" />
                      <node concept="2jxLKc" id="5W7E4fV0X_v" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="wriWL6Wppz" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="wriWL6VYRL" role="3cqZAp">
          <node concept="3cpWsn" id="wriWL6VYRM" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="wriWL6VYRN" role="1tU5fm">
              <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
            </node>
            <node concept="2ShNRf" id="wriWL6VYRO" role="33vP2m">
              <node concept="1pGfFk" id="wriWL6VYRP" role="2ShVmc">
                <ref role="37wK5l" to="phib:~SimpleDiffRequest.&lt;init&gt;(java.lang.String,java.util.List,java.util.List)" resolve="SimpleDiffRequest" />
                <node concept="Xl_RD" id="wriWL6WwJI" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="wriWL6VYRX" role="37wK5m">
                  <ref role="3cqZAo" node="wriWL6VYRq" resolve="contents" />
                </node>
                <node concept="37vLTw" id="wriWL6VYRY" role="37wK5m">
                  <ref role="3cqZAo" node="wriWL6VYRD" resolve="titles" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wriWL6VYS5" role="3cqZAp">
          <node concept="2OqwBi" id="wriWL6VYS6" role="3clFbG">
            <node concept="2YIFZM" id="wriWL6VYS7" role="2Oq$k0">
              <ref role="1Pybhc" to="yt4f:~DiffManager" resolve="DiffManager" />
              <ref role="37wK5l" to="yt4f:~DiffManager.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="wriWL6VYS8" role="2OqNvi">
              <ref role="37wK5l" to="yt4f:~DiffManager.showDiff(com.intellij.openapi.project.Project,com.intellij.diff.requests.DiffRequest)" resolve="showDiff" />
              <node concept="2OqwBi" id="wriWL6VYS9" role="37wK5m">
                <node concept="2WthIp" id="wriWL6VYSa" role="2Oq$k0" />
                <node concept="1DTwFV" id="wriWL6VYSb" role="2OqNvi">
                  <ref role="2WH_rO" node="3ndSBELTQVL" resolve="project" />
                </node>
              </node>
              <node concept="37vLTw" id="wriWL6VYSc" role="37wK5m">
                <ref role="3cqZAo" node="wriWL6VYRM" resolve="request" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3ndSBELTJVg" role="tmbBb">
      <node concept="3clFbS" id="3ndSBELTJVh" role="2VODD2">
        <node concept="3clFbF" id="3ndSBELTPQ6" role="3cqZAp">
          <node concept="1Wc70l" id="1nn1j2IMXwL" role="3clFbG">
            <node concept="1Wc70l" id="3ndSBELTQA3" role="3uHU7B">
              <node concept="1Wc70l" id="3ndSBELTQj7" role="3uHU7B">
                <node concept="3clFbC" id="3ndSBELTQj3" role="3uHU7B">
                  <node concept="2OqwBi" id="3ndSBELTPQa" role="3uHU7B">
                    <node concept="2OqwBi" id="3ndSBELTPQ7" role="2Oq$k0">
                      <node concept="2WthIp" id="3ndSBELTPQ8" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3ndSBELTPQ9" role="2OqNvi">
                        <ref role="2WH_rO" node="3ndSBELTJVj" resolve="models" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3ndSBELTPQe" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="3ndSBELTQj6" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="3ndSBELTQ__" role="3uHU7w">
                  <node concept="3uibUv" id="6X2NSHvN583" role="2ZW6by">
                    <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
                  </node>
                  <node concept="2OqwBi" id="3ndSBELTQjh" role="2ZW6bz">
                    <node concept="2OqwBi" id="3ndSBELTQja" role="2Oq$k0">
                      <node concept="2WthIp" id="3ndSBELTQjb" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3ndSBELTQjc" role="2OqNvi">
                        <ref role="2WH_rO" node="3ndSBELTJVj" resolve="models" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3ndSBELTQjl" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="3ndSBELTQjn" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="3ndSBELTQA6" role="3uHU7w">
                <node concept="3uibUv" id="6X2NSHvN5$e" role="2ZW6by">
                  <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
                </node>
                <node concept="2OqwBi" id="3ndSBELTQA8" role="2ZW6bz">
                  <node concept="2OqwBi" id="3ndSBELTQA9" role="2Oq$k0">
                    <node concept="2WthIp" id="3ndSBELTQAa" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3ndSBELTQAb" role="2OqNvi">
                      <ref role="2WH_rO" node="3ndSBELTJVj" resolve="models" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3ndSBELTQAc" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="3ndSBELTQAd" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1nn1j2IMXN9" role="3uHU7w">
              <node concept="2YIFZM" id="6X2NSHvN72n" role="3uHU7w">
                <ref role="37wK5l" to="18ew:~NameUtil.getModelLongName(org.jetbrains.mps.openapi.model.SModel)" resolve="getModelLongName" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="2OqwBi" id="6X2NSHvN72o" role="37wK5m">
                  <node concept="2OqwBi" id="6X2NSHvN72p" role="2Oq$k0">
                    <node concept="2WthIp" id="6X2NSHvN72q" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6X2NSHvN72r" role="2OqNvi">
                      <ref role="2WH_rO" node="3ndSBELTJVj" resolve="models" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6X2NSHvN72s" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="6X2NSHvN72t" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="6X2NSHvN6oj" role="3uHU7B">
                <ref role="37wK5l" to="18ew:~NameUtil.getModelLongName(org.jetbrains.mps.openapi.model.SModel)" resolve="getModelLongName" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="2OqwBi" id="6X2NSHvN6ok" role="37wK5m">
                  <node concept="2OqwBi" id="6X2NSHvN6ol" role="2Oq$k0">
                    <node concept="2WthIp" id="6X2NSHvN6om" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6X2NSHvN6on" role="2OqNvi">
                      <ref role="2WH_rO" node="3ndSBELTJVj" resolve="models" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6X2NSHvN6oo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="6X2NSHvN6op" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3ndSBELTJVj" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
      <node concept="1oajcY" id="4$Favkc8OnV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3ndSBELTQVL" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4$Favkc8OnP" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBa" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphTEox" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Diff" resolve="Diff" />
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6dAEaqvcioR" />
  <node concept="sE7Ow" id="4odLqy5SVBk">
    <property role="TrG5h" value="TestMergeAction" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Merge test data from ZIP" />
    <property role="3GE5qa" value="Actions" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="4odLqy5SXtm" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4odLqy5SXtn" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4odLqy5SVBl" role="tncku">
      <node concept="3clFbS" id="4odLqy5SVBm" role="2VODD2">
        <node concept="3cpWs8" id="4odLqy5T4PZ" role="3cqZAp">
          <node concept="3cpWsn" id="4odLqy5T4Q0" role="3cpWs9">
            <property role="TrG5h" value="descriptor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4odLqy5T53X" role="1tU5fm">
              <ref role="3uigEE" to="3fkn:~FileChooserDescriptor" resolve="FileChooserDescriptor" />
            </node>
            <node concept="2ShNRf" id="4odLqy5T4Q2" role="33vP2m">
              <node concept="YeOm9" id="4odLqy5T54s" role="2ShVmc">
                <node concept="1Y3b0j" id="4odLqy5T54t" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="3fkn:~FileChooserDescriptor" resolve="FileChooserDescriptor" />
                  <ref role="37wK5l" to="3fkn:~FileChooserDescriptor.&lt;init&gt;(boolean,boolean,boolean,boolean,boolean,boolean)" resolve="FileChooserDescriptor" />
                  <node concept="3clFb_" id="4odLqy5T54v" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="isFileSelectable" />
                    <property role="DiZV1" value="false" />
                    <node concept="2AHcQZ" id="4odLqy5T54O" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="4odLqy5T54$" role="3clF47">
                      <node concept="3cpWs6" id="4odLqy5T54_" role="3cqZAp">
                        <node concept="1Wc70l" id="4odLqy5T54A" role="3cqZAk">
                          <node concept="2OqwBi" id="4odLqy5T54G" role="3uHU7w">
                            <node concept="liA8E" id="4odLqy5T54M" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                              <node concept="Xl_RD" id="4odLqy5T54N" role="37wK5m">
                                <property role="Xl_RC" value=".zip" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4odLqy5T54H" role="2Oq$k0">
                              <node concept="liA8E" id="4odLqy5T54L" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                              </node>
                              <node concept="2OqwBi" id="4odLqy5T54I" role="2Oq$k0">
                                <node concept="liA8E" id="4odLqy5T54K" role="2OqNvi">
                                  <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                                </node>
                                <node concept="37vLTw" id="2BHiRxgmKaB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4odLqy5T54y" resolve="file" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="4odLqy5T54B" role="3uHU7B">
                            <node concept="1eOMI4" id="4odLqy5T54C" role="3fr31v">
                              <node concept="2OqwBi" id="4odLqy5T54D" role="1eOMHV">
                                <node concept="37vLTw" id="2BHiRxghgkh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4odLqy5T54y" resolve="file" />
                                </node>
                                <node concept="liA8E" id="4odLqy5T54F" role="2OqNvi">
                                  <ref role="37wK5l" to="jlff:~VirtualFile.isDirectory()" resolve="isDirectory" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="4odLqy5T54y" role="3clF46">
                      <property role="TrG5h" value="file" />
                      <property role="3TUv4t" value="false" />
                      <node concept="3uibUv" id="4odLqy5T54z" role="1tU5fm">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="4odLqy5T54w" role="1B3o_S" />
                    <node concept="10P_77" id="4odLqy5T54x" role="3clF45" />
                  </node>
                  <node concept="3Tm1VV" id="4odLqy5T54u" role="1B3o_S" />
                  <node concept="3clFbT" id="4odLqy5T53Z" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFbT" id="4odLqy5T541" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFbT" id="4odLqy5T543" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFbT" id="4odLqy5T549" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFbT" id="4odLqy5T546" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="3clFbT" id="4odLqy5T548" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4odLqy5T54P" role="3cqZAp" />
        <node concept="3clFbF" id="4odLqy5T54Q" role="3cqZAp">
          <node concept="2OqwBi" id="4odLqy5T54R" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTsXR" role="2Oq$k0">
              <ref role="3cqZAo" node="4odLqy5T4Q0" resolve="descriptor" />
            </node>
            <node concept="liA8E" id="4odLqy5T54T" role="2OqNvi">
              <ref role="37wK5l" to="3fkn:~FileChooserDescriptor.setTitle(java.lang.String)" resolve="setTitle" />
              <node concept="Xl_RD" id="4odLqy5T54U" role="37wK5m">
                <property role="Xl_RC" value="select archive with merge files" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4odLqy5T54V" role="3cqZAp">
          <node concept="2OqwBi" id="4odLqy5T54W" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxc4" role="2Oq$k0">
              <ref role="3cqZAo" node="4odLqy5T4Q0" resolve="descriptor" />
            </node>
            <node concept="liA8E" id="4odLqy5T54Y" role="2OqNvi">
              <ref role="37wK5l" to="3fkn:~FileChooserDescriptor.setDescription(java.lang.String)" resolve="setDescription" />
              <node concept="Xl_RD" id="4odLqy5T54Z" role="37wK5m">
                <property role="Xl_RC" value="Zip files (*.zip) " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="WEmn41A9bH" role="3cqZAp">
          <node concept="2OqwBi" id="WEmn41A9IP" role="3clFbG">
            <node concept="2YIFZM" id="WEmn41A9ti" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="WEmn41Aaal" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="1bVj0M" id="4odLqy5T5XX" role="37wK5m">
                <node concept="3clFbS" id="4odLqy5T5XY" role="1bW5cS">
                  <node concept="3cpWs8" id="4odLqy5T5XZ" role="3cqZAp">
                    <node concept="3cpWsn" id="4odLqy5T5Y0" role="3cpWs9">
                      <property role="TrG5h" value="vFile" />
                      <property role="3TUv4t" value="false" />
                      <node concept="3uibUv" id="4odLqy5T5Y1" role="1tU5fm">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                      <node concept="2YIFZM" id="4odLqy5T5Y2" role="33vP2m">
                        <ref role="1Pybhc" to="3fkn:~FileChooser" resolve="FileChooser" />
                        <ref role="37wK5l" to="3fkn:~FileChooser.chooseFile(com.intellij.openapi.fileChooser.FileChooserDescriptor,com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="chooseFile" />
                        <node concept="37vLTw" id="3CU1SI2geLt" role="37wK5m">
                          <ref role="3cqZAo" node="4odLqy5T4Q0" resolve="descriptor" />
                        </node>
                        <node concept="2OqwBi" id="4odLqy5T7H_" role="37wK5m">
                          <node concept="2WthIp" id="4odLqy5T7HA" role="2Oq$k0" />
                          <node concept="1DTwFV" id="4odLqy5T7HB" role="2OqNvi">
                            <ref role="2WH_rO" node="4odLqy5SXtm" resolve="project" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="3CU1SI2gfEx" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4odLqy5T7I_" role="3cqZAp" />
                  <node concept="3cpWs8" id="4odLqy5TTvi" role="3cqZAp">
                    <node concept="3cpWsn" id="4odLqy5TTvj" role="3cpWs9">
                      <property role="TrG5h" value="resFilePath" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="2_MQfvmqpTD" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4odLqy5TTvd" role="3cqZAp">
                    <node concept="3cpWsn" id="4odLqy5TTve" role="3cpWs9">
                      <property role="TrG5h" value="zipped" />
                      <node concept="10Q1$e" id="4odLqy5TTvf" role="1tU5fm">
                        <node concept="17QB3L" id="3SHxTHDeBgb" role="10Q1$1" />
                      </node>
                    </node>
                  </node>
                  <node concept="3J1_TO" id="4odLqy5TTvm" role="3cqZAp">
                    <node concept="3uVAMA" id="4odLqy5TTvp" role="1zxBo5">
                      <node concept="XOnhg" id="4odLqy5TTvq" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="e" />
                        <node concept="nSUau" id="xvs04dHYDm" role="1tU5fm">
                          <node concept="3uibUv" id="4odLqy5TVDr" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4odLqy5TTvs" role="1zc67A">
                        <node concept="3clFbF" id="4odLqy5TTwN" role="3cqZAp">
                          <node concept="2OqwBi" id="4odLqy5TTx7" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTvm8" role="2Oq$k0">
                              <ref role="3cqZAo" node="4odLqy5TTvq" resolve="e" />
                            </node>
                            <node concept="liA8E" id="4odLqy5TTxd" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="4odLqy5TU$b" role="3cqZAp" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4odLqy5TTvn" role="1zxBo7">
                      <node concept="3clFbF" id="4odLqy5TTvP" role="3cqZAp">
                        <node concept="37vLTI" id="4odLqy5TTw9" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTuZb" role="37vLTJ">
                            <ref role="3cqZAo" node="4odLqy5TTve" resolve="zipped" />
                          </node>
                          <node concept="2YIFZM" id="3SHxTHDewiT" role="37vLTx">
                            <ref role="37wK5l" to="4rb9:nQhvklQAxN" resolve="loadZippedModelsAsText" />
                            <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
                            <node concept="2ShNRf" id="3SHxTHDewiU" role="37wK5m">
                              <node concept="1pGfFk" id="3SHxTHDewiV" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                <node concept="2OqwBi" id="3SHxTHDewiW" role="37wK5m">
                                  <node concept="37vLTw" id="3SHxTHDewiX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4odLqy5T5Y0" resolve="vFile" />
                                  </node>
                                  <node concept="liA8E" id="3SHxTHDewiY" role="2OqNvi">
                                    <ref role="37wK5l" to="jlff:~VirtualFile.getCanonicalPath()" resolve="getCanonicalPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2ShNRf" id="3SHxTHDewiZ" role="37wK5m">
                              <node concept="3g6Rrh" id="3SHxTHDewj0" role="2ShVmc">
                                <node concept="3uibUv" id="3SHxTHDewj1" role="3g7fb8">
                                  <ref role="3uigEE" to="ur19:341WClvYLId" resolve="MergeVersion" />
                                </node>
                                <node concept="Rm8GO" id="3SHxTHDewj2" role="3g7hyw">
                                  <ref role="Rm8GQ" to="ur19:341WClvYLIk" resolve="BASE" />
                                  <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                                </node>
                                <node concept="Rm8GO" id="3SHxTHDewj3" role="3g7hyw">
                                  <ref role="Rm8GQ" to="ur19:341WClvYLIg" resolve="MINE" />
                                  <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                                </node>
                                <node concept="Rm8GO" id="3SHxTHDewj4" role="3g7hyw">
                                  <ref role="Rm8GQ" to="ur19:341WClvYLIi" resolve="REPOSITORY" />
                                  <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4odLqy5TTvt" role="3cqZAp">
                        <node concept="37vLTI" id="4odLqy5TTvL" role="3clFbG">
                          <node concept="37vLTw" id="4gQ5MKiF_qz" role="37vLTJ">
                            <ref role="3cqZAo" node="4odLqy5TTvj" resolve="resFilePath" />
                          </node>
                          <node concept="2YIFZM" id="4odLqy5TTwd" role="37vLTx">
                            <ref role="1Pybhc" to="guwi:~File" resolve="File" />
                            <ref role="37wK5l" to="guwi:~File.createTempFile(java.lang.String,java.lang.String)" resolve="createTempFile" />
                            <node concept="Xl_RD" id="4odLqy5TTwe" role="37wK5m">
                              <property role="Xl_RC" value="mpstmp" />
                            </node>
                            <node concept="10M0yZ" id="3OgfWJy14aa" role="37wK5m">
                              <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                              <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_MODEL" resolve="DOT_MODEL" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4odLqy5TTuj" role="3cqZAp" />
                  <node concept="3cpWs8" id="4gQ5MKiFaXY" role="3cqZAp">
                    <node concept="3cpWsn" id="4gQ5MKiFaXZ" role="3cpWs9">
                      <property role="TrG5h" value="resFile" />
                      <node concept="3uibUv" id="4gQ5MKiFaY0" role="1tU5fm">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                      <node concept="2OqwBi" id="2_MQfvmqrtE" role="33vP2m">
                        <node concept="2YIFZM" id="2_MQfvmqr13" role="2Oq$k0">
                          <ref role="37wK5l" to="jlff:~LocalFileSystem.getInstance()" resolve="getInstance" />
                          <ref role="1Pybhc" to="jlff:~LocalFileSystem" resolve="LocalFileSystem" />
                        </node>
                        <node concept="liA8E" id="2_MQfvmqrYu" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~LocalFileSystem.findFileByIoFile(java.io.File)" resolve="findFileByIoFile" />
                          <node concept="37vLTw" id="2_MQfvmqsbp" role="37wK5m">
                            <ref role="3cqZAo" node="4odLqy5TTvj" resolve="resFilePath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4gQ5MKiDX3z" role="3cqZAp">
                    <node concept="3cpWsn" id="4gQ5MKiDX3A" role="3cpWs9">
                      <property role="TrG5h" value="contents" />
                      <node concept="_YKpA" id="4gQ5MKiDX3v" role="1tU5fm">
                        <node concept="17QB3L" id="4gQ5MKiEVmt" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="3SHxTHDeVwQ" role="33vP2m">
                        <node concept="Tc6Ow" id="3SHxTHDeVwM" role="2ShVmc">
                          <node concept="17QB3L" id="3SHxTHDeVwN" role="HW$YZ" />
                          <node concept="37vLTw" id="3SHxTHDeWNq" role="I$8f6">
                            <ref role="3cqZAo" node="4odLqy5TTve" resolve="zipped" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4gQ5MKiEmrZ" role="3cqZAp">
                    <node concept="3cpWsn" id="4gQ5MKiEms2" role="3cpWs9">
                      <property role="TrG5h" value="titles" />
                      <node concept="_YKpA" id="4gQ5MKiEmrV" role="1tU5fm">
                        <node concept="17QB3L" id="4gQ5MKiEnui" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="4gQ5MKiEqgu" role="33vP2m">
                        <node concept="Tc6Ow" id="4gQ5MKiEqgq" role="2ShVmc">
                          <node concept="17QB3L" id="4gQ5MKiEqgr" role="HW$YZ" />
                          <node concept="Xl_RD" id="4gQ5MKiEw43" role="HW$Y0">
                            <property role="Xl_RC" value="Local Version" />
                          </node>
                          <node concept="Xl_RD" id="4gQ5MKiExVk" role="HW$Y0">
                            <property role="Xl_RC" value="Merge Result" />
                          </node>
                          <node concept="Xl_RD" id="4gQ5MKiEzML" role="HW$Y0">
                            <property role="Xl_RC" value="Remote Version" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3J1_TO" id="4gQ5MKiFOJx" role="3cqZAp">
                    <node concept="3uVAMA" id="4gQ5MKiFOJ$" role="1zxBo5">
                      <node concept="XOnhg" id="4gQ5MKiFOJA" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="e" />
                        <node concept="nSUau" id="xvs04dHYDo" role="1tU5fm">
                          <node concept="3uibUv" id="4gQ5MKiFRq_" role="nSUat">
                            <ref role="3uigEE" to="yt4f:~InvalidDiffRequestException" resolve="InvalidDiffRequestException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4gQ5MKiFOJE" role="1zc67A">
                        <node concept="RRSsy" id="3jYQuSB39JK" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="Xl_RD" id="4gQ5MKiFSrf" role="RRSoy" />
                          <node concept="37vLTw" id="4gQ5MKiFSrh" role="RRSow">
                            <ref role="3cqZAo" node="4gQ5MKiFOJA" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="4gQ5MKiFOJz" role="1zxBo7">
                      <node concept="3cpWs8" id="4gQ5MKiEXXn" role="3cqZAp">
                        <node concept="3cpWsn" id="4gQ5MKiEXXo" role="3cpWs9">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="request" />
                          <node concept="3uibUv" id="4gQ5MKiEXXp" role="1tU5fm">
                            <ref role="3uigEE" to="o8e1:~MergeRequest" resolve="MergeRequest" />
                          </node>
                          <node concept="2OqwBi" id="4gQ5MKiEXXq" role="33vP2m">
                            <node concept="2YIFZM" id="4gQ5MKiEXXr" role="2Oq$k0">
                              <ref role="1Pybhc" to="yt4f:~DiffRequestFactory" resolve="DiffRequestFactory" />
                              <ref role="37wK5l" to="yt4f:~DiffRequestFactory.getInstance()" resolve="getInstance" />
                            </node>
                            <node concept="liA8E" id="4gQ5MKiEXXs" role="2OqNvi">
                              <ref role="37wK5l" to="yt4f:~DiffRequestFactory.createMergeRequest(com.intellij.openapi.project.Project,com.intellij.openapi.fileTypes.FileType,com.intellij.openapi.editor.Document,java.util.List,java.lang.String,java.util.List,com.intellij.util.Consumer)" resolve="createMergeRequest" />
                              <node concept="2OqwBi" id="4gQ5MKiEXXt" role="37wK5m">
                                <node concept="2WthIp" id="4gQ5MKiEXXu" role="2Oq$k0" />
                                <node concept="1DTwFV" id="4gQ5MKiEXXv" role="2OqNvi">
                                  <ref role="2WH_rO" node="4odLqy5SXtm" resolve="project" />
                                </node>
                              </node>
                              <node concept="10M0yZ" id="4gQ5MKiF1uL" role="37wK5m">
                                <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
                                <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_FILE_TYPE" resolve="MPS_FILE_TYPE" />
                              </node>
                              <node concept="2OqwBi" id="4gQ5MKiEXXz" role="37wK5m">
                                <node concept="2YIFZM" id="4gQ5MKiEXX$" role="2Oq$k0">
                                  <ref role="37wK5l" to="iwsx:~FileDocumentManager.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="iwsx:~FileDocumentManager" resolve="FileDocumentManager" />
                                </node>
                                <node concept="liA8E" id="4gQ5MKiEXX_" role="2OqNvi">
                                  <ref role="37wK5l" to="iwsx:~FileDocumentManager.getDocument(com.intellij.openapi.vfs.VirtualFile)" resolve="getDocument" />
                                  <node concept="37vLTw" id="4gQ5MKiFh9y" role="37wK5m">
                                    <ref role="3cqZAo" node="4gQ5MKiFaXZ" resolve="resFile" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="4gQ5MKiF3tA" role="37wK5m">
                                <ref role="3cqZAo" node="4gQ5MKiDX3A" resolve="contents" />
                              </node>
                              <node concept="3cpWs3" id="3OgfWJy37NY" role="37wK5m">
                                <node concept="37vLTw" id="3OgfWJy38cd" role="3uHU7w">
                                  <ref role="3cqZAo" node="4odLqy5TTvj" resolve="resFilePath" />
                                </node>
                                <node concept="3cpWs3" id="3OgfWJy33$Q" role="3uHU7B">
                                  <node concept="3cpWs3" id="3OgfWJy32Fs" role="3uHU7B">
                                    <node concept="Xl_RD" id="3OgfWJy2YGn" role="3uHU7B">
                                      <property role="Xl_RC" value="Merge files from " />
                                    </node>
                                    <node concept="37vLTw" id="3OgfWJy32Zb" role="3uHU7w">
                                      <ref role="3cqZAo" node="4odLqy5T5Y0" resolve="vFile" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="3OgfWJy33_6" role="3uHU7w">
                                    <property role="Xl_RC" value=" and save result to " />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="4gQ5MKiEXXD" role="37wK5m">
                                <ref role="3cqZAo" node="4gQ5MKiEms2" resolve="titles" />
                              </node>
                              <node concept="10Nm6u" id="4gQ5MKiEXXE" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4gQ5MKiF6Vx" role="3cqZAp">
                        <node concept="2OqwBi" id="4gQ5MKiF6Vy" role="3clFbG">
                          <node concept="2YIFZM" id="4gQ5MKiF6Vz" role="2Oq$k0">
                            <ref role="37wK5l" to="yt4f:~DiffManager.getInstance()" resolve="getInstance" />
                            <ref role="1Pybhc" to="yt4f:~DiffManager" resolve="DiffManager" />
                          </node>
                          <node concept="liA8E" id="4gQ5MKiF6V$" role="2OqNvi">
                            <ref role="37wK5l" to="yt4f:~DiffManager.showMerge(com.intellij.openapi.project.Project,com.intellij.diff.merge.MergeRequest)" resolve="showMerge" />
                            <node concept="2OqwBi" id="4gQ5MKiF6V_" role="37wK5m">
                              <node concept="2WthIp" id="4gQ5MKiF6VA" role="2Oq$k0" />
                              <node concept="1DTwFV" id="4gQ5MKiF6VB" role="2OqNvi">
                                <ref role="2WH_rO" node="4odLqy5SXtm" resolve="project" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4gQ5MKiF6VC" role="37wK5m">
                              <ref role="3cqZAo" node="4gQ5MKiEXXo" resolve="request" />
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
  </node>
  <node concept="sE7Ow" id="778KdJ_uVEi">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="ShowNodeDifference" />
    <property role="2uzpH1" value="Compare Two Nodes" />
    <property role="1WHSii" value="Structure difference (node IDs ignored) between two nodes" />
    <property role="1rBW0U" value="true" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="1DS2jV" id="778KdJ_uZCL" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="778KdJ_uZCM" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1ODavq8BPZh" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1ODavq8BPZi" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Lqwa_HtW2t" role="1NuT2Z">
      <property role="TrG5h" value="nodes" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODES" resolve="NODES" />
      <node concept="1oajcY" id="6Lqwa_HtW2u" role="1oa70y" />
    </node>
    <node concept="tnohg" id="778KdJ_uVEj" role="tncku">
      <node concept="3clFbS" id="778KdJ_uVEk" role="2VODD2">
        <node concept="3clFbF" id="1ODavq8BT_O" role="3cqZAp">
          <node concept="2OqwBi" id="1ODavq8BUcV" role="3clFbG">
            <node concept="2OqwBi" id="1ODavq8BU1M" role="2Oq$k0">
              <node concept="2OqwBi" id="1ODavq8BTPj" role="2Oq$k0">
                <node concept="2OqwBi" id="1ODavq8BT_I" role="2Oq$k0">
                  <node concept="2WthIp" id="1ODavq8BT_L" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1ODavq8BT_N" role="2OqNvi">
                    <ref role="2WH_rO" node="1ODavq8BPZh" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="1ODavq8BU0F" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="1ODavq8BUaO" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1ODavq8BUnh" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1ODavq8BUpA" role="37wK5m">
                <node concept="3clFbS" id="1ODavq8BUpB" role="1bW5cS">
                  <node concept="3cpWs8" id="778KdJ_v8JL" role="3cqZAp">
                    <node concept="3cpWsn" id="778KdJ_v8JR" role="3cpWs9">
                      <property role="TrG5h" value="n1" />
                      <node concept="3Tqbb2" id="778KdJ_v9Mt" role="1tU5fm" />
                      <node concept="2OqwBi" id="778KdJ_va9U" role="33vP2m">
                        <node concept="2OqwBi" id="6Lqwa_HtZpi" role="2Oq$k0">
                          <node concept="2WthIp" id="6Lqwa_HtZpl" role="2Oq$k0" />
                          <node concept="1DTwFV" id="6Lqwa_HtZpn" role="2OqNvi">
                            <ref role="2WH_rO" node="6Lqwa_HtW2t" resolve="nodes" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6Lqwa_Hu0uo" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="6Lqwa_Hu0z$" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="778KdJ_vaLT" role="3cqZAp">
                    <node concept="3cpWsn" id="778KdJ_vaLU" role="3cpWs9">
                      <property role="TrG5h" value="n2" />
                      <node concept="3Tqbb2" id="778KdJ_vaLV" role="1tU5fm" />
                      <node concept="2OqwBi" id="6Lqwa_Hu0Xk" role="33vP2m">
                        <node concept="2OqwBi" id="6Lqwa_Hu0Cq" role="2Oq$k0">
                          <node concept="2WthIp" id="6Lqwa_Hu0Ct" role="2Oq$k0" />
                          <node concept="1DTwFV" id="6Lqwa_Hu0Cv" role="2OqNvi">
                            <ref role="2WH_rO" node="6Lqwa_HtW2t" resolve="nodes" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6Lqwa_Hu1nh" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="6Lqwa_Hu1v7" role="37wK5m">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7lhhttEn3yr" role="3cqZAp">
                    <node concept="3cpWsn" id="7lhhttEn3yu" role="3cpWs9">
                      <property role="TrG5h" value="title1" />
                      <node concept="17QB3L" id="7lhhttEn3yp" role="1tU5fm" />
                      <node concept="2OqwBi" id="7lhhttEn4Ob" role="33vP2m">
                        <node concept="37vLTw" id="7lhhttEn4uQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="778KdJ_v8JR" resolve="n1" />
                        </node>
                        <node concept="2Iv5rx" id="1nLePmVlpAk" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7lhhttEn6Qt" role="3cqZAp">
                    <node concept="3cpWsn" id="7lhhttEn6Qw" role="3cpWs9">
                      <property role="TrG5h" value="title2" />
                      <node concept="17QB3L" id="7lhhttEn6Qr" role="1tU5fm" />
                      <node concept="2OqwBi" id="7lhhttEn7UL" role="33vP2m">
                        <node concept="37vLTw" id="7lhhttEn7A_" role="2Oq$k0">
                          <ref role="3cqZAo" node="778KdJ_vaLU" resolve="n2" />
                        </node>
                        <node concept="2Iv5rx" id="1nLePmVlrx_" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7lhhttEnbNM" role="3cqZAp">
                    <node concept="3clFbS" id="7lhhttEnbNO" role="3clFbx">
                      <node concept="3cpWs8" id="1nLePmVlBsC" role="3cqZAp">
                        <node concept="3cpWsn" id="1nLePmVlBsD" role="3cpWs9">
                          <property role="TrG5h" value="fmt" />
                          <property role="3TUv4t" value="true" />
                          <node concept="17QB3L" id="1nLePmVlBiv" role="1tU5fm" />
                          <node concept="Xl_RD" id="1nLePmVlBsE" role="33vP2m">
                            <property role="Xl_RC" value="%s from %s (%s)" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1nLePmVlHaG" role="3cqZAp">
                        <node concept="37vLTI" id="1nLePmVlIKE" role="3clFbG">
                          <node concept="2YIFZM" id="1nLePmVlKHa" role="37vLTx">
                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="37vLTw" id="1nLePmVlLXC" role="37wK5m">
                              <ref role="3cqZAo" node="1nLePmVlBsD" resolve="fmt" />
                            </node>
                            <node concept="37vLTw" id="1nLePmVlNbx" role="37wK5m">
                              <ref role="3cqZAo" node="7lhhttEn3yu" resolve="title1" />
                            </node>
                            <node concept="2OqwBi" id="7lhhttEnlYs" role="37wK5m">
                              <node concept="2OqwBi" id="7lhhttEngZw" role="2Oq$k0">
                                <node concept="37vLTw" id="7lhhttEngGx" role="2Oq$k0">
                                  <ref role="3cqZAo" node="778KdJ_v8JR" resolve="n1" />
                                </node>
                                <node concept="I4A8Y" id="7lhhttEnhuo" role="2OqNvi" />
                              </node>
                              <node concept="LkI2h" id="7lhhttEnmnj" role="2OqNvi" />
                            </node>
                            <node concept="2YIFZM" id="1nLePmVmwBS" role="37wK5m">
                              <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String)" resolve="compactNamespace" />
                              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                              <node concept="2OqwBi" id="5xdpofjnGD$" role="37wK5m">
                                <node concept="2OqwBi" id="5xdpofjnDX5" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="1nLePmVlgFj" role="2Oq$k0">
                                    <node concept="2OqwBi" id="5xdpofjnDeA" role="2JrQYb">
                                      <node concept="37vLTw" id="5xdpofjnCPf" role="2Oq$k0">
                                        <ref role="3cqZAo" node="778KdJ_v8JR" resolve="n1" />
                                      </node>
                                      <node concept="I4A8Y" id="5xdpofjnDCu" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1nLePmVlkk$" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5xdpofjnH0C" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1nLePmVlHaE" role="37vLTJ">
                            <ref role="3cqZAo" node="7lhhttEn3yu" resolve="title1" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1nLePmVlSk$" role="3cqZAp">
                        <node concept="37vLTI" id="1nLePmVlSk_" role="3clFbG">
                          <node concept="2YIFZM" id="1nLePmVlSkA" role="37vLTx">
                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="37vLTw" id="1nLePmVlSkB" role="37wK5m">
                              <ref role="3cqZAo" node="1nLePmVlBsD" resolve="fmt" />
                            </node>
                            <node concept="37vLTw" id="1nLePmVlSkC" role="37wK5m">
                              <ref role="3cqZAo" node="7lhhttEn6Qw" resolve="title2" />
                            </node>
                            <node concept="2OqwBi" id="1nLePmVlSkD" role="37wK5m">
                              <node concept="2OqwBi" id="1nLePmVlSkE" role="2Oq$k0">
                                <node concept="37vLTw" id="1nLePmVlSkF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="778KdJ_vaLU" resolve="n2" />
                                </node>
                                <node concept="I4A8Y" id="1nLePmVlSkG" role="2OqNvi" />
                              </node>
                              <node concept="LkI2h" id="1nLePmVlSkH" role="2OqNvi" />
                            </node>
                            <node concept="2YIFZM" id="1nLePmVmxw8" role="37wK5m">
                              <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String)" resolve="compactNamespace" />
                              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                              <node concept="2OqwBi" id="1nLePmVmxw9" role="37wK5m">
                                <node concept="2OqwBi" id="1nLePmVmxwa" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="1nLePmVmxwb" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1nLePmVmxwc" role="2JrQYb">
                                      <node concept="37vLTw" id="1nLePmVmxwd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="778KdJ_vaLU" resolve="n2" />
                                      </node>
                                      <node concept="I4A8Y" id="1nLePmVmxwe" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1nLePmVmxwf" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1nLePmVmxwg" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1nLePmVlSkQ" role="37vLTJ">
                            <ref role="3cqZAo" node="7lhhttEn6Qw" resolve="title2" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="7lhhttEnduE" role="3clFbw">
                      <node concept="37vLTw" id="7lhhttEndHq" role="3uHU7w">
                        <ref role="3cqZAo" node="7lhhttEn6Qw" resolve="title2" />
                      </node>
                      <node concept="37vLTw" id="7lhhttEnc8U" role="3uHU7B">
                        <ref role="3cqZAo" node="7lhhttEn3yu" resolve="title1" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="778KdJ_vg0z" role="3cqZAp">
                    <node concept="2YIFZM" id="778KdJ_vg2m" role="3clFbG">
                      <ref role="1Pybhc" to="p37l:778KdJ_suR6" resolve="StructDifferenceDialog" />
                      <ref role="37wK5l" to="p37l:778KdJ_sv2Z" resolve="showNodeDifference" />
                      <node concept="2OqwBi" id="778KdJ_vgO9" role="37wK5m">
                        <node concept="2WthIp" id="778KdJ_vgOc" role="2Oq$k0" />
                        <node concept="1DTwFV" id="778KdJ_vgOe" role="2OqNvi">
                          <ref role="2WH_rO" node="778KdJ_uZCL" resolve="project" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6Lqwa_Hu2LB" role="37wK5m">
                        <ref role="3cqZAo" node="778KdJ_v8JR" resolve="n1" />
                      </node>
                      <node concept="37vLTw" id="6Lqwa_Hu3lR" role="37wK5m">
                        <ref role="3cqZAo" node="778KdJ_vaLU" resolve="n2" />
                      </node>
                      <node concept="37vLTw" id="7lhhttEn9HW" role="37wK5m">
                        <ref role="3cqZAo" node="7lhhttEn3yu" resolve="title1" />
                      </node>
                      <node concept="37vLTw" id="7lhhttEnaaY" role="37wK5m">
                        <ref role="3cqZAo" node="7lhhttEn6Qw" resolve="title2" />
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
    <node concept="2ScWuX" id="6Lqwa_HtX4u" role="tmbBb">
      <node concept="3clFbS" id="6Lqwa_HtX4v" role="2VODD2">
        <node concept="3clFbF" id="6Lqwa_HtXYr" role="3cqZAp">
          <node concept="3clFbC" id="6Lqwa_HtZ36" role="3clFbG">
            <node concept="3cmrfG" id="6Lqwa_HtZ84" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="6Lqwa_HtYgb" role="3uHU7B">
              <node concept="2OqwBi" id="6Lqwa_HtXYl" role="2Oq$k0">
                <node concept="2WthIp" id="6Lqwa_HtXYo" role="2Oq$k0" />
                <node concept="1DTwFV" id="6Lqwa_HtXYq" role="2OqNvi">
                  <ref role="2WH_rO" node="6Lqwa_HtW2t" resolve="nodes" />
                </node>
              </node>
              <node concept="liA8E" id="6Lqwa_HtYCh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="3KectwfR6zd">
    <property role="TrG5h" value="Default" />
    <node concept="Zd509" id="3KectwfR6zg" role="Zd508">
      <ref role="1bYAoF" node="778KdJ_uVEi" resolve="ShowNodeDifference" />
      <node concept="pLAjd" id="3KectwfR6zi" role="Zd501">
        <property role="pLAjc" value="ctrl" />
        <property role="pLAjf" value="VK_D" />
      </node>
    </node>
  </node>
</model>

