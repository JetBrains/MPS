<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c29f530b-f74d-4627-9da2-61138cfa6722(jetbrains.mps.vcs.platform.actions)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
  </languages>
  <imports>
    <import index="lsse" ref="r:06e50ed3-c893-4772-ba4a-878fc9de01d0(jetbrains.mps.vcs.changesmanager.editor)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="80f9" ref="r:36539f52-7ec3-4937-98bf-1fbc1fbe99fc(jetbrains.mps.vcs.platform.mergedriver)" />
    <import index="bvbc" ref="r:f509a650-cbd9-47e7-b2a0-79f49c562c0b(jetbrains.mps.vcs.annotate)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="4rb9" ref="r:e4939376-be00-4167-9510-67715eca6425(jetbrains.mps.vcs.platform.util)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="qy69" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.blame.dialog(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="4hrd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.vfs(MPS.Platform/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="qyr2" ref="r:f7252e75-44f2-46f6-9600-c9b291e7dd5f(jetbrains.mps.vcs.platform.integration)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="phib" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.requests(MPS.IDEA/)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="2o8p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.contents(MPS.IDEA/)" />
    <import index="p37l" ref="r:df1b052a-af27-4b87-80fc-1492fa2192be(jetbrains.mps.vcs.diff.ui)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="5fzo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.persistence.def(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="hr4p" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea(jetbrains.mps.git4idea.stubs/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="yrtf" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.i18n(jetbrains.mps.git4idea.stubs/)" />
    <import index="1wbl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.idea(MPS.IDEA/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="px75" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.leftHighlighter(MPS.Editor/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="jbqa" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ide(MPS.IDEA/)" />
    <import index="5p6x" ref="r:2897a5d4-aed7-4a4e-ac07-fbc830f9ed9b(jetbrains.mps.vcs.history)" />
    <import index="ihz5" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.blame.api(MPS.Platform/)" />
    <import index="j86o" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.impl(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="yah0" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.history(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="lhm8" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log.ui(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="e0ho" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log.impl(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="yah1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.history(MPS.IDEA/)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="idua" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.vcs.log(MPS.IDEA/)" />
    <import index="fy1h" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.diff(MPS.IDEA/)" />
    <import index="7g4e" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.vcsUtil(MPS.IDEA/)" />
    <import index="hlwo" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.merge(MPS.IDEA/)" />
    <import index="idub" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log(jetbrains.mps.vcs.idea.stubs/)" implicit="true" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
    </language>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="6368583333374291912" name="isPluginXmlGroup" index="3OnEW4" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="3205778618063718746" name="jetbrains.mps.lang.plugin.structure.IdeaConfigurationXml" flags="ng" index="yhzZL">
        <property id="1004145947012803941" name="outputPath" index="BHXKe" />
        <child id="3205778618063718748" name="actions" index="yhzZR" />
      </concept>
      <concept id="331224023792854814" name="jetbrains.mps.lang.plugin.structure.IdeaActionsDescriptor" flags="lg" index="2zDL_w">
        <child id="331224023792854818" name="actionGroups" index="2zDL_s" />
      </concept>
      <concept id="331224023792854815" name="jetbrains.mps.lang.plugin.structure.ActionGroupRef" flags="ng" index="2zDL_x">
        <reference id="331224023792854816" name="group" index="2zDL_u" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="7915009415671748557" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReferenceTypeTargetExpression" flags="ng" index="2FaPjH">
        <child id="7915009415671751864" name="type" index="2FaQuo" />
      </concept>
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
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
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="3133179214568824809" name="jetbrains.mps.lang.text.structure.NodeWrapperElement" flags="nn" index="tu5oc">
        <child id="3133179214568824810" name="node" index="tu5of" />
      </concept>
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="sE7Ow" id="78RbNhWi9JH">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="RollbackChanges" />
    <property role="2uzpH1" value="Rollback" />
    <property role="3GE5qa" value="Actions" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="3w_vEw9Kvmm" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3w_vEw9Kvmn" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBb" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphUl0t" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$General" resolve="AllIcons.General" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$General.Reset" resolve="Reset" />
      </node>
    </node>
    <node concept="1DS2jV" id="78RbNhWi9JJ" role="1NuT2Z">
      <property role="TrG5h" value="editorContext" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CONTEXT" resolve="EDITOR_CONTEXT" />
      <node concept="1oajcY" id="78RbNhWi9JK" role="1oa70y" />
    </node>
    <node concept="tnohg" id="78RbNhWi9JL" role="tncku">
      <node concept="3clFbS" id="78RbNhWi9JM" role="2VODD2">
        <node concept="3clFbF" id="3w_vEw9Kvta" role="3cqZAp">
          <node concept="2OqwBi" id="3w_vEw9KwUL" role="3clFbG">
            <node concept="2ShNRf" id="3w_vEw9Kvt6" role="2Oq$k0">
              <node concept="1pGfFk" id="3w_vEw9KwMQ" role="2ShVmc">
                <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                <node concept="2OqwBi" id="3w_vEw9KwN_" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9KwNC" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9KwNE" role="2OqNvi">
                    <ref role="2WH_rO" node="3w_vEw9Kvmm" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3w_vEw9KwQ$" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9KwQB" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9KwQD" role="2OqNvi">
                    <ref role="2WH_rO" node="78RbNhWi9JJ" resolve="editorContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3w_vEw9KC4O" role="2OqNvi">
              <ref role="37wK5l" to="lsse:3w_vEw9Kyu9" resolve="rollbackChanges" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="78RbNhWi9JS">
    <property role="1WHSii" value="Go to previous change" />
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="GoToPreviousChange" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Previous Change" />
    <property role="3GE5qa" value="Actions" />
    <node concept="1GtWCo" id="6S5fI02CGBc" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphUlL_" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.PreviousOccurence" resolve="PreviousOccurence" />
      </node>
    </node>
    <node concept="1DS2jV" id="78RbNhWi9JU" role="1NuT2Z">
      <property role="TrG5h" value="editorContext" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CONTEXT" resolve="EDITOR_CONTEXT" />
      <node concept="1oajcY" id="78RbNhWi9JV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3w_vEw9LE88" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3w_vEw9LE89" role="1oa70y" />
    </node>
    <node concept="tnohg" id="78RbNhWi9JW" role="tncku">
      <node concept="3clFbS" id="78RbNhWi9JX" role="2VODD2">
        <node concept="3clFbF" id="3w_vEw9LK02" role="3cqZAp">
          <node concept="2OqwBi" id="3w_vEw9LKb3" role="3clFbG">
            <node concept="2ShNRf" id="3w_vEw9LK04" role="2Oq$k0">
              <node concept="1pGfFk" id="3w_vEw9LK05" role="2ShVmc">
                <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                <node concept="2OqwBi" id="3w_vEw9LK06" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9LK07" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9LK08" role="2OqNvi">
                    <ref role="2WH_rO" node="3w_vEw9LE88" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3w_vEw9LK09" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9LK0a" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9LK0b" role="2OqNvi">
                    <ref role="2WH_rO" node="78RbNhWi9JU" resolve="editorContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3w_vEw9LKmc" role="2OqNvi">
              <ref role="37wK5l" to="lsse:3w_vEw9LFP0" resolve="goToNeighbourGroup" />
              <node concept="3clFbT" id="3w_vEw9LKoC" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="78RbNhWi9K5" role="tmbBb">
      <node concept="3clFbS" id="78RbNhWi9K6" role="2VODD2">
        <node concept="3cpWs8" id="3w_vEw9LEdO" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9LEdR" role="3cpWs9">
            <property role="TrG5h" value="avail" />
            <node concept="10P_77" id="3w_vEw9LEdS" role="1tU5fm" />
            <node concept="2OqwBi" id="3w_vEw9LEdT" role="33vP2m">
              <node concept="2ShNRf" id="3w_vEw9LEdU" role="2Oq$k0">
                <node concept="1pGfFk" id="3w_vEw9LEdV" role="2ShVmc">
                  <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                  <node concept="2OqwBi" id="3w_vEw9LEdW" role="37wK5m">
                    <node concept="2WthIp" id="3w_vEw9LEdX" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3w_vEw9LEdY" role="2OqNvi">
                      <ref role="2WH_rO" node="3w_vEw9LE88" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3w_vEw9LEdZ" role="37wK5m">
                    <node concept="2WthIp" id="3w_vEw9LEe0" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3w_vEw9LEe1" role="2OqNvi">
                      <ref role="2WH_rO" node="78RbNhWi9JU" resolve="editorContext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3w_vEw9LEe2" role="2OqNvi">
                <ref role="37wK5l" to="lsse:3w_vEw9L$1o" resolve="isNeighbourGroupAvailable" />
                <node concept="3clFbT" id="3w_vEw9LEe3" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78RbNhWi9K7" role="3cqZAp">
          <node concept="2OqwBi" id="78RbNhWi9K8" role="3clFbG">
            <node concept="2OqwBi" id="78RbNhWi9K9" role="2Oq$k0">
              <node concept="tl45R" id="78RbNhWi9Ka" role="2Oq$k0" />
              <node concept="liA8E" id="78RbNhWi9Kb" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="78RbNhWi9Kc" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="37vLTw" id="3w_vEw9LEpb" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9LEdR" resolve="avail" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="78RbNhWi9Ki">
    <property role="1WHSii" value="Go to next change" />
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="GoToNextChange" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Next Change" />
    <property role="3GE5qa" value="Actions" />
    <node concept="1GtWCo" id="6S5fI02CGBd" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphUmys" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.NextOccurence" resolve="NextOccurence" />
      </node>
    </node>
    <node concept="tnohg" id="78RbNhWi9Kk" role="tncku">
      <node concept="3clFbS" id="78RbNhWi9Kl" role="2VODD2">
        <node concept="3clFbF" id="3w_vEw9LKyZ" role="3cqZAp">
          <node concept="2OqwBi" id="3w_vEw9LKCu" role="3clFbG">
            <node concept="2ShNRf" id="3w_vEw9LKz1" role="2Oq$k0">
              <node concept="1pGfFk" id="3w_vEw9LKz2" role="2ShVmc">
                <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                <node concept="2OqwBi" id="3w_vEw9LKz3" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9LKz4" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9LKz5" role="2OqNvi">
                    <ref role="2WH_rO" node="3w_vEw9Ly55" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3w_vEw9LKz6" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9LKz7" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9LKz8" role="2OqNvi">
                    <ref role="2WH_rO" node="78RbNhWi9Kt" resolve="editorContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3w_vEw9LKNB" role="2OqNvi">
              <ref role="37wK5l" to="lsse:3w_vEw9LFP0" resolve="goToNeighbourGroup" />
              <node concept="3clFbT" id="3w_vEw9LKQ5" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="78RbNhWi9Kt" role="1NuT2Z">
      <property role="TrG5h" value="editorContext" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CONTEXT" resolve="EDITOR_CONTEXT" />
      <node concept="1oajcY" id="78RbNhWi9Ku" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3w_vEw9Ly55" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3w_vEw9Ly56" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="78RbNhWi9Kx" role="tmbBb">
      <node concept="3clFbS" id="78RbNhWi9Ky" role="2VODD2">
        <node concept="3cpWs8" id="3w_vEw9LDfj" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9LDfk" role="3cpWs9">
            <property role="TrG5h" value="avail" />
            <node concept="10P_77" id="3w_vEw9LDf8" role="1tU5fm" />
            <node concept="2OqwBi" id="3w_vEw9LDfl" role="33vP2m">
              <node concept="2ShNRf" id="3w_vEw9LDfm" role="2Oq$k0">
                <node concept="1pGfFk" id="3w_vEw9LDfn" role="2ShVmc">
                  <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                  <node concept="2OqwBi" id="3w_vEw9LDfo" role="37wK5m">
                    <node concept="2WthIp" id="3w_vEw9LDfp" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3w_vEw9LDfq" role="2OqNvi">
                      <ref role="2WH_rO" node="3w_vEw9Ly55" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3w_vEw9LDfr" role="37wK5m">
                    <node concept="2WthIp" id="3w_vEw9LDfs" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3w_vEw9LDft" role="2OqNvi">
                      <ref role="2WH_rO" node="78RbNhWi9Kt" resolve="editorContext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3w_vEw9LDfu" role="2OqNvi">
                <ref role="37wK5l" to="lsse:3w_vEw9L$1o" resolve="isNeighbourGroupAvailable" />
                <node concept="3clFbT" id="3w_vEw9LDfv" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78RbNhWi9Kz" role="3cqZAp">
          <node concept="2OqwBi" id="78RbNhWi9K$" role="3clFbG">
            <node concept="2OqwBi" id="78RbNhWi9K_" role="2Oq$k0">
              <node concept="tl45R" id="78RbNhWi9KA" role="2Oq$k0" />
              <node concept="liA8E" id="78RbNhWi9KB" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="78RbNhWi9KC" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="37vLTw" id="3w_vEw9LDuD" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9LDfk" resolve="avail" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="78RbNhWi9KI">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="ShowDiffFromChanges" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Show Difference" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGBe" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphUjnP" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Diff" resolve="Diff" />
      </node>
    </node>
    <node concept="1DS2jV" id="78RbNhWi9KJ" role="1NuT2Z">
      <property role="TrG5h" value="editorContext" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CONTEXT" resolve="EDITOR_CONTEXT" />
      <node concept="1oajcY" id="78RbNhWi9KK" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3w_vEw9KSqi" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3w_vEw9KSqj" role="1oa70y" />
    </node>
    <node concept="tnohg" id="78RbNhWi9KN" role="tncku">
      <node concept="3clFbS" id="78RbNhWi9KO" role="2VODD2">
        <node concept="3cpWs8" id="78RbNhWi9KP" role="3cqZAp">
          <node concept="3cpWsn" id="78RbNhWi9KQ" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="2pR195" id="78RbNhWi9KR" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
            </node>
            <node concept="2OqwBi" id="3w_vEw9KSGu" role="33vP2m">
              <node concept="2ShNRf" id="3w_vEw9KQze" role="2Oq$k0">
                <node concept="1pGfFk" id="3w_vEw9KRDY" role="2ShVmc">
                  <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                  <node concept="2OqwBi" id="3w_vEw9KS$x" role="37wK5m">
                    <node concept="2WthIp" id="3w_vEw9KS$$" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3w_vEw9KS$A" role="2OqNvi">
                      <ref role="2WH_rO" node="3w_vEw9KSqi" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3w_vEw9KSBB" role="37wK5m">
                    <node concept="2WthIp" id="3w_vEw9KSBE" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3w_vEw9KSBG" role="2OqNvi">
                      <ref role="2WH_rO" node="78RbNhWi9KJ" resolve="editorContext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3w_vEw9KSUE" role="2OqNvi">
                <ref role="37wK5l" to="lsse:3w_vEw9KM6r" resolve="getCurrentChangeGroupPositionAndHidePopup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78RbNhWi9L6" role="3cqZAp">
          <node concept="2OqwBi" id="78RbNhWi9L7" role="3clFbG">
            <node concept="2OqwBi" id="3w_vEw9KTYk" role="2Oq$k0">
              <node concept="2OqwBi" id="3w_vEw9KTC3" role="2Oq$k0">
                <node concept="2OqwBi" id="3w_vEw9KTm8" role="2Oq$k0">
                  <node concept="2WthIp" id="3w_vEw9KTmb" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9KTmd" role="2OqNvi">
                    <ref role="2WH_rO" node="78RbNhWi9KJ" resolve="editorContext" />
                  </node>
                </node>
                <node concept="liA8E" id="3w_vEw9KTP7" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="3w_vEw9KUdj" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="78RbNhWi9L9" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="1bVj0M" id="78RbNhWi9La" role="37wK5m">
                <node concept="3clFbS" id="78RbNhWi9Lb" role="1bW5cS">
                  <node concept="3cpWs8" id="78RbNhWi9KW" role="3cqZAp">
                    <node concept="3cpWsn" id="78RbNhWi9KX" role="3cpWs9">
                      <property role="TrG5h" value="editedNode" />
                      <node concept="3uibUv" id="78RbNhWi9KY" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="78RbNhWi9KZ" role="33vP2m">
                        <node concept="2OqwBi" id="78RbNhWi9L0" role="2Oq$k0">
                          <node concept="2OqwBi" id="78RbNhWi9L1" role="2Oq$k0">
                            <node concept="2WthIp" id="78RbNhWi9L2" role="2Oq$k0" />
                            <node concept="1DTwFV" id="78RbNhWi9L3" role="2OqNvi">
                              <ref role="2WH_rO" node="78RbNhWi9KJ" resolve="editorContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="78RbNhWi9L4" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                          </node>
                        </node>
                        <node concept="liA8E" id="78RbNhWi9L5" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="523_aD7Zf_s" role="3cqZAp">
                    <node concept="3cpWsn" id="523_aD7Zf_t" role="3cpWs9">
                      <property role="TrG5h" value="vau" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="523_aD7Zf_o" role="1tU5fm">
                        <ref role="3uigEE" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
                      </node>
                      <node concept="2ShNRf" id="523_aD7Zf_u" role="33vP2m">
                        <node concept="1pGfFk" id="523_aD7Zf_v" role="2ShVmc">
                          <ref role="37wK5l" node="78RbNhWi9Rf" resolve="VcsActionsUtil" />
                          <node concept="2OqwBi" id="523_aD7Zf_w" role="37wK5m">
                            <node concept="2WthIp" id="523_aD7Zf_x" role="2Oq$k0" />
                            <node concept="1DTwFV" id="523_aD7Zf_y" role="2OqNvi">
                              <ref role="2WH_rO" node="3w_vEw9KSqi" resolve="mpsProject" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1Hxk2C1jfid" role="37wK5m">
                            <node concept="37vLTw" id="523_aD7Zf_z" role="2Oq$k0">
                              <ref role="3cqZAo" node="78RbNhWi9KX" resolve="editedNode" />
                            </node>
                            <node concept="liA8E" id="1Hxk2C1jfvU" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="523_aD7Zf_$" role="37wK5m">
                            <node concept="2OqwBi" id="523_aD7Zf__" role="2Oq$k0">
                              <node concept="37vLTw" id="523_aD7Zf_A" role="2Oq$k0">
                                <ref role="3cqZAo" node="78RbNhWi9KX" resolve="editedNode" />
                              </node>
                              <node concept="liA8E" id="523_aD7Zf_B" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                              </node>
                            </node>
                            <node concept="liA8E" id="523_aD7Zf_C" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="523_aD7Zgtr" role="3cqZAp">
                    <node concept="2OqwBi" id="523_aD7Zg$v" role="3clFbG">
                      <node concept="37vLTw" id="523_aD7Zgtp" role="2Oq$k0">
                        <ref role="3cqZAo" node="523_aD7Zf_t" resolve="vau" />
                      </node>
                      <node concept="liA8E" id="523_aD7ZgIc" role="2OqNvi">
                        <ref role="37wK5l" node="523_aD7XGzd" resolve="showRootDifference" />
                        <node concept="37vLTw" id="523_aD7ZgRl" role="37wK5m">
                          <ref role="3cqZAo" node="78RbNhWi9KQ" resolve="bounds" />
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
  <node concept="sE7Ow" id="78RbNhWi9L_">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="CopyOldNodes" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Copy Old Code" />
    <node concept="15s5l7" id="5uz$l7tjjHY" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Warning: Action can get command from editor&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/3567673624826940359]&quot;;" />
      <property role="huDt6" value="Warning: Action can get command from editor" />
    </node>
    <node concept="1DS2jV" id="3w_vEw9KYqP" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3w_vEw9KYqQ" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBf" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphUnmB" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Copy" resolve="Copy" />
      </node>
    </node>
    <node concept="tnohg" id="78RbNhWi9LA" role="tncku">
      <node concept="3clFbS" id="78RbNhWi9LB" role="2VODD2">
        <node concept="3clFbF" id="3w_vEw9LtV0" role="3cqZAp">
          <node concept="2OqwBi" id="3w_vEw9Lu0r" role="3clFbG">
            <node concept="2ShNRf" id="3w_vEw9LtV2" role="2Oq$k0">
              <node concept="1pGfFk" id="3w_vEw9LtV3" role="2ShVmc">
                <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                <node concept="2OqwBi" id="3w_vEw9LtV4" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9LtV5" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9LtV6" role="2OqNvi">
                    <ref role="2WH_rO" node="3w_vEw9KYqP" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3w_vEw9LtV7" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9LtV8" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9LtV9" role="2OqNvi">
                    <ref role="2WH_rO" node="78RbNhWi9LI" resolve="editorContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3w_vEw9LuhO" role="2OqNvi">
              <ref role="37wK5l" to="lsse:3w_vEw9Lh6S" resolve="copyOldNodes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="78RbNhWi9LI" role="1NuT2Z">
      <property role="TrG5h" value="editorContext" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CONTEXT" resolve="EDITOR_CONTEXT" />
      <node concept="1oajcY" id="78RbNhWi9LJ" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="78RbNhWi9LK" role="tmbBb">
      <node concept="3clFbS" id="78RbNhWi9LL" role="2VODD2">
        <node concept="3clFbF" id="3w_vEw9KYKI" role="3cqZAp">
          <node concept="2OqwBi" id="3w_vEw9L0vE" role="3clFbG">
            <node concept="2ShNRf" id="3w_vEw9KYKE" role="2Oq$k0">
              <node concept="1pGfFk" id="3w_vEw9KZTC" role="2ShVmc">
                <ref role="37wK5l" to="lsse:1LVXsqEggcm" resolve="ChangesStripActionsHelper" />
                <node concept="2OqwBi" id="3w_vEw9L01L" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9L01O" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9L01Q" role="2OqNvi">
                    <ref role="2WH_rO" node="3w_vEw9KYqP" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3w_vEw9L0jZ" role="37wK5m">
                  <node concept="2WthIp" id="3w_vEw9L0k2" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3w_vEw9L0k4" role="2OqNvi">
                    <ref role="2WH_rO" node="78RbNhWi9LI" resolve="editorContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3w_vEw9LtxQ" role="2OqNvi">
              <ref role="37wK5l" to="lsse:3w_vEw9LeMD" resolve="areOldNodesAvailable" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1ESbSp" id="78RbNhWi9LR">
    <property role="TrG5h" value="IDEAGoTo" />
    <property role="3GE5qa" value="Groups" />
    <node concept="Xl_RD" id="78RbNhWi9LS" role="3mKD$K">
      <property role="Xl_RC" value="GoToMenu" />
    </node>
    <node concept="ftmFs" id="78RbNhWi9LT" role="ftER_" />
  </node>
  <node concept="tC5Ba" id="78RbNhWi9LU">
    <property role="TrG5h" value="GoToVCS" />
    <property role="3GE5qa" value="Groups" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="78RbNhWi9LV" role="ftER_">
      <node concept="tCFHf" id="78RbNhWi9LW" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9Ki" resolve="GoToNextChange" />
      </node>
      <node concept="tCFHf" id="78RbNhWi9LX" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9JS" resolve="GoToPreviousChange" />
      </node>
    </node>
    <node concept="tT9cl" id="78RbNhWi9LY" role="2f5YQi">
      <ref role="tU$_T" node="78RbNhWi9LR" resolve="IDEAGoTo" />
    </node>
  </node>
  <node concept="tC5Ba" id="78RbNhWi9LZ">
    <property role="TrG5h" value="ChangesStrip" />
    <property role="3GE5qa" value="Groups" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="78RbNhWi9M0" role="ftER_">
      <node concept="tCFHf" id="78RbNhWi9M1" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9Ki" resolve="GoToNextChange" />
      </node>
      <node concept="tCFHf" id="78RbNhWi9M2" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9JS" resolve="GoToPreviousChange" />
      </node>
      <node concept="tCFHf" id="78RbNhWi9M3" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9JH" resolve="RollbackChanges" />
      </node>
      <node concept="tCFHf" id="78RbNhWi9M4" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9KI" resolve="ShowDiffFromChanges" />
      </node>
      <node concept="tCFHf" id="78RbNhWi9M5" role="ftvYc">
        <ref role="tCJdB" node="78RbNhWi9L_" resolve="CopyOldNodes" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="78RbNhWi9Md">
    <property role="TrG5h" value="VcsActionsUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="523_aD7XB4m" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="523_aD7X_ur" role="1B3o_S" />
      <node concept="3uibUv" id="523_aD7XB47" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="523_aD7XCmB" role="jymVt">
      <property role="TrG5h" value="myNodeRef" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="523_aD7XCmC" role="1B3o_S" />
      <node concept="3uibUv" id="1Hxk2C1h4lz" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="523_aD7XF0m" role="jymVt">
      <property role="TrG5h" value="myContainingRootName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="523_aD7XF0n" role="1B3o_S" />
      <node concept="3uibUv" id="523_aD7XF0p" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="523_aD7XC5q" role="jymVt" />
    <node concept="3clFbW" id="78RbNhWi9Rf" role="jymVt">
      <node concept="3clFbS" id="78RbNhWi9Ri" role="3clF47">
        <node concept="3clFbF" id="523_aD7XBuo" role="3cqZAp">
          <node concept="37vLTI" id="523_aD7XBNj" role="3clFbG">
            <node concept="37vLTw" id="523_aD7XC1G" role="37vLTx">
              <ref role="3cqZAo" node="523_aD7X$wU" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="523_aD7XBun" role="37vLTJ">
              <ref role="3cqZAo" node="523_aD7XB4m" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="523_aD7XCmF" role="3cqZAp">
          <node concept="37vLTI" id="523_aD7XCmH" role="3clFbG">
            <node concept="37vLTw" id="523_aD7XCmK" role="37vLTJ">
              <ref role="3cqZAo" node="523_aD7XCmB" resolve="myNodeRef" />
            </node>
            <node concept="37vLTw" id="523_aD7XCmL" role="37vLTx">
              <ref role="3cqZAo" node="523_aD7X$xX" resolve="nodeRef" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="523_aD7XF0q" role="3cqZAp">
          <node concept="37vLTI" id="523_aD7XF0s" role="3clFbG">
            <node concept="37vLTw" id="523_aD7XF0v" role="37vLTJ">
              <ref role="3cqZAo" node="523_aD7XF0m" resolve="myContainingRootName" />
            </node>
            <node concept="37vLTw" id="523_aD7XF0w" role="37vLTx">
              <ref role="3cqZAo" node="523_aD7XEEZ" resolve="containingRootName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="78RbNhWi9Rh" role="3clF45" />
      <node concept="3Tm1VV" id="523_aD7Xz3w" role="1B3o_S" />
      <node concept="37vLTG" id="523_aD7X$wU" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="523_aD7X$wT" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="523_aD7X$xX" role="3clF46">
        <property role="TrG5h" value="nodeRef" />
        <node concept="3uibUv" id="1Hxk2C1hdEj" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="523_aD7XEEZ" role="3clF46">
        <property role="TrG5h" value="containingRootName" />
        <node concept="3uibUv" id="523_aD7XEO_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="523_aD7XL3g" role="jymVt" />
    <node concept="3clFb_" id="523_aD7XMir" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="detectVirtualFile" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="523_aD7XMiu" role="3clF47">
        <node concept="3cpWs8" id="523_aD7XOyg" role="3cqZAp">
          <node concept="3cpWsn" id="523_aD7XOyh" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="523_aD7XOyi" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Hxk2C1hiwo" role="3cqZAp">
          <node concept="2OqwBi" id="7HIuVrrXHcZ" role="3clFbG">
            <node concept="liA8E" id="7HIuVrrXHd1" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="7HIuVrrXHd2" role="37wK5m">
                <node concept="3clFbS" id="7HIuVrrXHd3" role="1bW5cS">
                  <node concept="3clFbF" id="1Hxk2C1htk_" role="3cqZAp">
                    <node concept="37vLTI" id="1Hxk2C1htkB" role="3clFbG">
                      <node concept="37vLTw" id="1Hxk2C1htkF" role="37vLTJ">
                        <ref role="3cqZAo" node="523_aD7XOyh" resolve="source" />
                      </node>
                      <node concept="2YIFZM" id="6ww30ZnjLYf" role="37vLTx">
                        <ref role="1Pybhc" to="pa15:~DataLocationAwareModelFactory" resolve="DataLocationAwareModelFactory" />
                        <ref role="37wK5l" to="pa15:~DataLocationAwareModelFactory.nodeLocation(org.jetbrains.mps.openapi.model.SNode)" resolve="nodeLocation" />
                        <node concept="2OqwBi" id="7vnZ8Y086SE" role="37wK5m">
                          <node concept="37vLTw" id="7vnZ8Y086Jf" role="2Oq$k0">
                            <ref role="3cqZAo" node="523_aD7XCmB" resolve="myNodeRef" />
                          </node>
                          <node concept="liA8E" id="7vnZ8Y08753" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="2OqwBi" id="7vnZ8Y087Ot" role="37wK5m">
                              <node concept="37vLTw" id="7vnZ8Y087e8" role="2Oq$k0">
                                <ref role="3cqZAo" node="523_aD7XB4m" resolve="myProject" />
                              </node>
                              <node concept="liA8E" id="7vnZ8Y088tE" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
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
            <node concept="2OqwBi" id="7HIuVrrXSFi" role="2Oq$k0">
              <node concept="37vLTw" id="1Hxk2C1hjjQ" role="2Oq$k0">
                <ref role="3cqZAo" node="523_aD7XB4m" resolve="myProject" />
              </node>
              <node concept="liA8E" id="7HIuVrrXSFm" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7xaEgha5nr6" role="3cqZAp">
          <node concept="3clFbS" id="7xaEgha5nr8" role="3clFbx">
            <node concept="3cpWs6" id="7xaEgha5phv" role="3cqZAp">
              <node concept="10Nm6u" id="7vnZ8Y083Lm" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="7xaEgha5pck" role="3clFbw">
            <node concept="1eOMI4" id="7xaEgha5pcm" role="3fr31v">
              <node concept="2ZW3vV" id="7xaEgha5pcn" role="1eOMHV">
                <node concept="3uibUv" id="7xaEgha5pco" role="2ZW6by">
                  <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                </node>
                <node concept="37vLTw" id="7vnZ8Y081Gk" role="2ZW6bz">
                  <ref role="3cqZAo" node="523_aD7XOyh" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7xaEgha5qgE" role="3cqZAp">
          <node concept="3cpWsn" id="7xaEgha5qgF" role="3cpWs9">
            <property role="TrG5h" value="fbds" />
            <node concept="3uibUv" id="7xaEgha5qgG" role="1tU5fm">
              <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
            </node>
            <node concept="10QFUN" id="7xaEgha5rgK" role="33vP2m">
              <node concept="37vLTw" id="7vnZ8Y081HW" role="10QFUP">
                <ref role="3cqZAo" node="523_aD7XOyh" resolve="source" />
              </node>
              <node concept="3uibUv" id="7xaEgha5rgI" role="10QFUM">
                <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ww30ZnjUuo" role="3cqZAp">
          <node concept="3cpWsn" id="6ww30ZnjUup" role="3cpWs9">
            <property role="TrG5h" value="anyFile" />
            <node concept="3uibUv" id="6ww30ZnjUrg" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
              <node concept="3uibUv" id="6ww30ZnjUrj" role="11_B2D">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ww30ZnjUuq" role="33vP2m">
              <node concept="2OqwBi" id="6ww30ZnjUur" role="2Oq$k0">
                <node concept="37vLTw" id="6ww30ZnjUus" role="2Oq$k0">
                  <ref role="3cqZAo" node="7xaEgha5qgF" resolve="fbds" />
                </node>
                <node concept="liA8E" id="6ww30ZnjUut" role="2OqNvi">
                  <ref role="37wK5l" to="ends:~FileSystemBasedDataSource.getAffectedFilesWithDirsExtracted()" resolve="getAffectedFilesWithDirsExtracted" />
                </node>
              </node>
              <node concept="liA8E" id="6ww30ZnjUuu" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.findAny()" resolve="findAny" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ww30ZnjUMC" role="3cqZAp">
          <node concept="3clFbS" id="6ww30ZnjUME" role="3clFbx">
            <node concept="3cpWs6" id="6ww30ZnjWmy" role="3cqZAp">
              <node concept="10Nm6u" id="7vnZ8Y081J_" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="6ww30ZnjWhr" role="3clFbw">
            <node concept="37vLTw" id="6ww30ZnjWhs" role="2Oq$k0">
              <ref role="3cqZAo" node="6ww30ZnjUup" resolve="anyFile" />
            </node>
            <node concept="liA8E" id="6ww30ZnlEpQ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Jpw4evvoiZ" role="3cqZAp">
          <node concept="3cpWsn" id="Jpw4evvoj0" role="3cpWs9">
            <property role="TrG5h" value="fileSystem" />
            <node concept="3uibUv" id="Jpw4evvmLI" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
            </node>
            <node concept="2OqwBi" id="Jpw4evvoj1" role="33vP2m">
              <node concept="37vLTw" id="Jpw4evvoj2" role="2Oq$k0">
                <ref role="3cqZAo" node="523_aD7XB4m" resolve="myProject" />
              </node>
              <node concept="liA8E" id="Jpw4evvoj3" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="523_aD7XPAK" role="3cqZAp">
          <node concept="2OqwBi" id="Jpw4evv$TU" role="3cqZAk">
            <node concept="37vLTw" id="Jpw4evvynz" role="2Oq$k0">
              <ref role="3cqZAo" node="Jpw4evvoj0" resolve="fileSystem" />
            </node>
            <node concept="liA8E" id="Jpw4evvB2L" role="2OqNvi">
              <ref role="37wK5l" to="4hrd:~FileSystemBridge.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
              <node concept="2OqwBi" id="6ww30ZnjX3n" role="37wK5m">
                <node concept="37vLTw" id="6ww30ZnjUuv" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ww30ZnjUup" resolve="anyFile" />
                </node>
                <node concept="liA8E" id="6ww30ZnjXjO" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="523_aD7XLDh" role="1B3o_S" />
      <node concept="3uibUv" id="523_aD7XMeZ" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="2AHcQZ" id="523_aD7XNPC" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="523_aD7X$YW" role="jymVt" />
    <node concept="3clFb_" id="523_aD7XGzd" role="jymVt">
      <property role="TrG5h" value="showRootDifference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="78RbNhWi9Mh" role="3clF47">
        <node concept="3cpWs8" id="523_aD7XWQQ" role="3cqZAp">
          <node concept="3cpWsn" id="523_aD7XWQR" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="523_aD7XWQN" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="523_aD7XWQS" role="33vP2m">
              <node concept="37vLTw" id="523_aD7XWQT" role="2Oq$k0">
                <ref role="3cqZAo" node="523_aD7XB4m" resolve="myProject" />
              </node>
              <node concept="liA8E" id="523_aD7XWQU" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Hxk2C1iBHe" role="3cqZAp">
          <node concept="3cpWsn" id="1Hxk2C1iBHc" role="3cpWs9">
            <property role="TrG5h" value="exception" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1zVp7pQYB54" role="1tU5fm">
              <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="1zVp7pQYBPu" role="11_B2D">
                <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
              </node>
            </node>
            <node concept="2ShNRf" id="1zVp7pQYCr7" role="33vP2m">
              <node concept="1pGfFk" id="1zVp7pQYCpw" role="2ShVmc">
                <ref role="37wK5l" to="18ew:~Reference.&lt;init&gt;()" resolve="Reference" />
                <node concept="3uibUv" id="1zVp7pQYCpx" role="1pMfVU">
                  <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Hxk2C1iEx1" role="3cqZAp">
          <node concept="3cpWsn" id="1Hxk2C1iEwZ" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="1zVp7pQYCOP" role="1tU5fm">
              <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="1zVp7pQYEgD" role="11_B2D">
                <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
              </node>
            </node>
            <node concept="2ShNRf" id="1zVp7pQYEMD" role="33vP2m">
              <node concept="1pGfFk" id="1zVp7pQYEL2" role="2ShVmc">
                <ref role="37wK5l" to="18ew:~Reference.&lt;init&gt;()" resolve="Reference" />
                <node concept="3uibUv" id="1zVp7pQYEL3" role="1pMfVU">
                  <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55$aReHjU97" role="3cqZAp">
          <node concept="3cpWsn" id="6ySnuJfjmnd" role="3cpWs9">
            <property role="TrG5h" value="vFile" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6ySnuJfjmne" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="523_aD7XUqV" role="33vP2m">
              <ref role="37wK5l" node="523_aD7XMir" resolve="detectVirtualFile" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6tLsn3mT14L" role="3cqZAp">
          <node concept="3y3z36" id="6tLsn3mT23l" role="1gVkn0">
            <node concept="10Nm6u" id="6tLsn3mT2bo" role="3uHU7w" />
            <node concept="37vLTw" id="6tLsn3mT1CR" role="3uHU7B">
              <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Hxk2C1iq7m" role="3cqZAp">
          <node concept="2OqwBi" id="54iJvNQZOjP" role="3clFbG">
            <node concept="2YIFZM" id="54iJvNQZOjO" role="2Oq$k0">
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="54iJvNQZOjT" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="54iJvNQZOjU" role="37wK5m">
                <node concept="YeOm9" id="54iJvNQZOjW" role="2ShVmc">
                  <node concept="1Y3b0j" id="54iJvNQZOjX" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Task.Backgroundable" />
                    <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Backgroundable" />
                    <node concept="3clFb_" id="54iJvNQZOjZ" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <node concept="3clFbS" id="54iJvNQZOk5" role="3clF47">
                        <node concept="3J1_TO" id="78RbNhWi9Mi" role="3cqZAp">
                          <node concept="3clFbS" id="78RbNhWi9Mj" role="1zxBo7">
                            <node concept="3cpWs8" id="78RbNhWi9Ms" role="3cqZAp">
                              <node concept="3cpWsn" id="78RbNhWi9Mt" role="3cpWs9">
                                <property role="TrG5h" value="vcs" />
                                <node concept="2OqwBi" id="78RbNhWi9Mv" role="33vP2m">
                                  <node concept="liA8E" id="78RbNhWi9My" role="2OqNvi">
                                    <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getVcsFor(com.intellij.openapi.vfs.VirtualFile)" resolve="getVcsFor" />
                                    <node concept="37vLTw" id="55$aReHklbF" role="37wK5m">
                                      <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
                                    </node>
                                  </node>
                                  <node concept="2YIFZM" id="78RbNhWi9Mw" role="2Oq$k0">
                                    <ref role="1Pybhc" to="jlcu:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                                    <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                    <node concept="37vLTw" id="523_aD7XWQV" role="37wK5m">
                                      <ref role="3cqZAo" node="523_aD7XWQR" resolve="ideaProject" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="78RbNhWi9Mu" role="1tU5fm">
                                  <ref role="3uigEE" to="jlcu:~AbstractVcs" resolve="AbstractVcs" />
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="6tLsn3mT2U_" role="3cqZAp">
                              <node concept="3y3z36" id="6tLsn3mT3Jc" role="1gVkn0">
                                <node concept="10Nm6u" id="6tLsn3mT3Rt" role="3uHU7w" />
                                <node concept="37vLTw" id="6tLsn3mT3va" role="3uHU7B">
                                  <ref role="3cqZAo" node="78RbNhWi9Mt" resolve="vcs" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6tLsn3mTc6L" role="3cqZAp">
                              <node concept="3cpWsn" id="6tLsn3mTc6M" role="3cpWs9">
                                <property role="TrG5h" value="diffProvider" />
                                <node concept="3uibUv" id="6tLsn3mTc6I" role="1tU5fm">
                                  <ref role="3uigEE" to="fy1h:~DiffProvider" resolve="DiffProvider" />
                                </node>
                                <node concept="2OqwBi" id="6tLsn3mTc6N" role="33vP2m">
                                  <node concept="liA8E" id="6tLsn3mTc6O" role="2OqNvi">
                                    <ref role="37wK5l" to="jlcu:~AbstractVcs.getDiffProvider()" resolve="getDiffProvider" />
                                  </node>
                                  <node concept="37vLTw" id="6tLsn3mTc6P" role="2Oq$k0">
                                    <ref role="3cqZAo" node="78RbNhWi9Mt" resolve="vcs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="6tLsn3mTdlH" role="3cqZAp">
                              <node concept="3y3z36" id="6tLsn3mTed4" role="1gVkn0">
                                <node concept="10Nm6u" id="6tLsn3mTelK" role="3uHU7w" />
                                <node concept="37vLTw" id="6tLsn3mTdWB" role="3uHU7B">
                                  <ref role="3cqZAo" node="6tLsn3mTc6M" resolve="diffProvider" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="78RbNhWi9M$" role="3cqZAp">
                              <node concept="3cpWsn" id="78RbNhWi9M_" role="3cpWs9">
                                <property role="TrG5h" value="revisionNumber" />
                                <node concept="3uibUv" id="78RbNhWi9MA" role="1tU5fm">
                                  <ref role="3uigEE" to="yah1:~VcsRevisionNumber" resolve="VcsRevisionNumber" />
                                </node>
                                <node concept="2OqwBi" id="78RbNhWi9MB" role="33vP2m">
                                  <node concept="liA8E" id="78RbNhWi9MF" role="2OqNvi">
                                    <ref role="37wK5l" to="fy1h:~DiffProvider.getCurrentRevision(com.intellij.openapi.vfs.VirtualFile)" resolve="getCurrentRevision" />
                                    <node concept="37vLTw" id="55$aReHkrU0" role="37wK5m">
                                      <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="6tLsn3mTc6Q" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6tLsn3mTc6M" resolve="diffProvider" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="3r0tX$XekWw" role="3cqZAp">
                              <node concept="3clFbS" id="3r0tX$XekWy" role="3clFbx">
                                <node concept="RRSsy" id="3r0tX$XenQK" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fksE/warn" />
                                  <node concept="3cpWs3" id="3r0tX$Xep1X" role="RRSoy">
                                    <node concept="37vLTw" id="3r0tX$Xepi8" role="3uHU7w">
                                      <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
                                    </node>
                                    <node concept="Xl_RD" id="3r0tX$XenQM" role="3uHU7B">
                                      <property role="Xl_RC" value="current revision number is null for file " />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="3r0tX$Xer6N" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="3r0tX$Xemn0" role="3clFbw">
                                <node concept="37vLTw" id="3r0tX$XelVQ" role="3uHU7B">
                                  <ref role="3cqZAo" node="78RbNhWi9M_" resolve="revisionNumber" />
                                </node>
                                <node concept="10Nm6u" id="3r0tX$XemDl" role="3uHU7w" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="AvLpigISHX" role="3cqZAp">
                              <node concept="3cpWsn" id="AvLpigISHY" role="3cpWs9">
                                <property role="TrG5h" value="revisionContent" />
                                <node concept="3uibUv" id="AvLpigISHZ" role="1tU5fm">
                                  <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
                                </node>
                                <node concept="1rXfSq" id="4_JpahyAJ2L" role="33vP2m">
                                  <ref role="37wK5l" node="4_Jpahy_Zt2" resolve="createRevisionContent" />
                                  <node concept="37vLTw" id="4_JpahyAQyF" role="37wK5m">
                                    <ref role="3cqZAo" node="523_aD7XWQR" resolve="ideaProject" />
                                  </node>
                                  <node concept="37vLTw" id="4_JpahyATSA" role="37wK5m">
                                    <ref role="3cqZAo" node="78RbNhWi9Mt" resolve="vcs" />
                                  </node>
                                  <node concept="37vLTw" id="4_JpahyB09N" role="37wK5m">
                                    <ref role="3cqZAo" node="78RbNhWi9M_" resolve="revisionNumber" />
                                  </node>
                                  <node concept="37vLTw" id="4_JpahyB7IA" role="37wK5m">
                                    <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4_JpahyBIvC" role="3cqZAp">
                              <node concept="3clFbS" id="4_JpahyBIvE" role="3clFbx">
                                <node concept="3cpWs6" id="4_JpahyBSYS" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="4_JpahyBO3c" role="3clFbw">
                                <node concept="10Nm6u" id="4_JpahyBPyW" role="3uHU7w" />
                                <node concept="37vLTw" id="4_JpahyBLup" role="3uHU7B">
                                  <ref role="3cqZAo" node="AvLpigISHY" resolve="revisionContent" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="4DmG9PJC8to" role="3cqZAp">
                              <node concept="3cpWsn" id="4DmG9PJC8tp" role="3cpWs9">
                                <property role="TrG5h" value="currentContent" />
                                <node concept="3uibUv" id="4DmG9PJC8tq" role="1tU5fm">
                                  <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
                                </node>
                                <node concept="1rXfSq" id="2AsRvWbyBpJ" role="33vP2m">
                                  <ref role="37wK5l" node="2AsRvWbyslA" resolve="createCurrentContent" />
                                  <node concept="37vLTw" id="2AsRvWbyE1d" role="37wK5m">
                                    <ref role="3cqZAo" node="523_aD7XWQR" resolve="ideaProject" />
                                  </node>
                                  <node concept="37vLTw" id="2AsRvWbyItf" role="37wK5m">
                                    <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
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
                                    <node concept="3cpWs3" id="5NaeIb8V1$e" role="HW$Y0">
                                      <node concept="Xl_RD" id="5NaeIb8V1$f" role="3uHU7w">
                                        <property role="Xl_RC" value=" (Read-Only)" />
                                      </node>
                                      <node concept="2OqwBi" id="5NaeIb8V1$g" role="3uHU7B">
                                        <node concept="37vLTw" id="5NaeIb8V1$h" role="2Oq$k0">
                                          <ref role="3cqZAo" node="78RbNhWi9M_" resolve="revisionNumber" />
                                        </node>
                                        <node concept="liA8E" id="5NaeIb8V1$i" role="2OqNvi">
                                          <ref role="37wK5l" to="yah1:~VcsRevisionNumber.asString()" resolve="asString" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5NaeIb8V1X6" role="HW$Y0">
                                      <property role="Xl_RC" value="Your Version" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1LiylnUNFNp" role="3cqZAp">
                              <node concept="3cpWsn" id="1LiylnUNFNq" role="3cpWs9">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="req" />
                                <node concept="3uibUv" id="3bsyx4MR3Db" role="1tU5fm">
                                  <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
                                </node>
                                <node concept="2ShNRf" id="3bsyx4MSSd_" role="33vP2m">
                                  <node concept="1pGfFk" id="3bsyx4MSSdA" role="2ShVmc">
                                    <ref role="37wK5l" to="phib:~SimpleDiffRequest.&lt;init&gt;(java.lang.String,java.util.List,java.util.List)" resolve="SimpleDiffRequest" />
                                    <node concept="37vLTw" id="523_aD7XKLA" role="37wK5m">
                                      <ref role="3cqZAo" node="523_aD7XF0m" resolve="myContainingRootName" />
                                    </node>
                                    <node concept="2YIFZM" id="4DmG9PJCcaX" role="37wK5m">
                                      <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                                      <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                                      <node concept="37vLTw" id="4DmG9PJCcDw" role="37wK5m">
                                        <ref role="3cqZAo" node="AvLpigISHY" resolve="revisionContent" />
                                      </node>
                                      <node concept="37vLTw" id="4DmG9PJCdv$" role="37wK5m">
                                        <ref role="3cqZAo" node="4DmG9PJC8tp" resolve="currentContent" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3bsyx4MSVND" role="37wK5m">
                                      <ref role="3cqZAo" node="1LiylnUOHcg" resolve="titles" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="6gKvA3DxdCt" role="3cqZAp">
                              <node concept="1PaTwC" id="ATZLwXomkX" role="1aUNEU">
                                <node concept="3oM_SD" id="ATZLwXomkY" role="1PaTwD">
                                  <property role="3oM_SC" value="put" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXomkZ" role="1PaTwD">
                                  <property role="3oM_SC" value="hint" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml0" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml1" role="1PaTwD">
                                  <property role="3oM_SC" value="show" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml2" role="1PaTwD">
                                  <property role="3oM_SC" value="only" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml3" role="1PaTwD">
                                  <property role="3oM_SC" value="one" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml4" role="1PaTwD">
                                  <property role="3oM_SC" value="root" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml5" role="1PaTwD">
                                  <property role="3oM_SC" value="and" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXoml6" role="1PaTwD">
                                  <property role="3oM_SC" value="navigate" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="78RbNhWi9N2" role="3cqZAp">
                              <node concept="3cpWsn" id="78RbNhWi9N3" role="3cpWs9">
                                <property role="TrG5h" value="id" />
                                <property role="3TUv4t" value="true" />
                                <node concept="3uibUv" id="78RbNhWi9N4" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                                </node>
                                <node concept="2OqwBi" id="1KUoCipvDHK" role="33vP2m">
                                  <node concept="liA8E" id="1KUoCipvDHL" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="37vLTw" id="523_aD7XKA0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="523_aD7XCmB" resolve="myNodeRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3bsyx4MT56H" role="3cqZAp">
                              <node concept="2OqwBi" id="3bsyx4MT56J" role="3clFbG">
                                <node concept="liA8E" id="3bsyx4MT56L" role="2OqNvi">
                                  <ref role="37wK5l" to="phib:~DiffRequest.putUserData(com.intellij.openapi.util.Key,java.lang.Object)" resolve="putUserData" />
                                  <node concept="10M0yZ" id="3bsyx4MT56M" role="37wK5m">
                                    <ref role="1PxDUh" to="qyr2:1R9fMbxrLzY" resolve="ModelDiffViewer" />
                                    <ref role="3cqZAo" to="qyr2:3bsyx4MRX1o" resolve="DIFF_SHOW_ROOTID" />
                                  </node>
                                  <node concept="37vLTw" id="5NaeIb8WR4J" role="37wK5m">
                                    <ref role="3cqZAo" node="78RbNhWi9N3" resolve="id" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3bsyx4MT8S5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1LiylnUNFNq" resolve="req" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2XVPiKXGVmr" role="3cqZAp">
                              <node concept="2OqwBi" id="2XVPiKXGVms" role="3clFbG">
                                <node concept="liA8E" id="2XVPiKXGVmt" role="2OqNvi">
                                  <ref role="37wK5l" to="phib:~DiffRequest.putUserData(com.intellij.openapi.util.Key,java.lang.Object)" resolve="putUserData" />
                                  <node concept="10M0yZ" id="2XVPiKXGVmu" role="37wK5m">
                                    <ref role="1PxDUh" to="qyr2:1R9fMbxrLzY" resolve="ModelDiffViewer" />
                                    <ref role="3cqZAo" to="qyr2:2XVPiKXGj6s" resolve="DIFF_NAVIGATE_TO" />
                                  </node>
                                  <node concept="37vLTw" id="2XVPiKXGWOm" role="37wK5m">
                                    <ref role="3cqZAo" node="78RbNhWi9O7" resolve="bounds" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2XVPiKXGVmw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1LiylnUNFNq" resolve="req" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1Hxk2C1iIFC" role="3cqZAp">
                              <node concept="2OqwBi" id="1zVp7pQYFu$" role="3clFbG">
                                <node concept="37vLTw" id="1Hxk2C1iIFA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1Hxk2C1iEwZ" resolve="request" />
                                </node>
                                <node concept="liA8E" id="1zVp7pQYFLM" role="2OqNvi">
                                  <ref role="37wK5l" to="18ew:~Reference.set(java.lang.Object)" resolve="set" />
                                  <node concept="37vLTw" id="1zVp7pQYFZp" role="37wK5m">
                                    <ref role="3cqZAo" node="1LiylnUNFNq" resolve="req" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uVAMA" id="78RbNhWi9N$" role="1zxBo5">
                            <node concept="XOnhg" id="78RbNhWi9N_" role="1zc67B">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="e" />
                              <node concept="nSUau" id="xvs04dIfLA" role="1tU5fm">
                                <node concept="3uibUv" id="78RbNhWi9NA" role="nSUat">
                                  <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="78RbNhWi9NB" role="1zc67A">
                              <node concept="RRSsy" id="3jYQuSB39MQ" role="3cqZAp">
                                <property role="RRSoG" value="gZ5fksE/warn" />
                                <node concept="Xl_RD" id="78RbNhWi9ND" role="RRSoy" />
                                <node concept="37vLTw" id="3GM_nagTrHY" role="RRSow">
                                  <ref role="3cqZAo" node="78RbNhWi9N_" resolve="e" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="1Hxk2C1iGqB" role="3cqZAp">
                                <node concept="2OqwBi" id="1zVp7pQYG$k" role="3clFbG">
                                  <node concept="37vLTw" id="1Hxk2C1iGq_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1Hxk2C1iBHc" resolve="exception" />
                                  </node>
                                  <node concept="liA8E" id="1zVp7pQYGRD" role="2OqNvi">
                                    <ref role="37wK5l" to="18ew:~Reference.set(java.lang.Object)" resolve="set" />
                                    <node concept="37vLTw" id="1zVp7pQYH4T" role="37wK5m">
                                      <ref role="3cqZAo" node="78RbNhWi9N_" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="54iJvNQZOk2" role="3clF46">
                        <property role="TrG5h" value="pi" />
                        <node concept="2AHcQZ" id="54iJvNQZOk4" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="3uibUv" id="54iJvNQZOk3" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="54iJvNQZOk1" role="3clF45" />
                      <node concept="3Tm1VV" id="54iJvNQZOk0" role="1B3o_S" />
                      <node concept="2AHcQZ" id="3tYsUK_UBez" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="54iJvNQZOjY" role="1B3o_S" />
                    <node concept="37vLTw" id="1Hxk2C1itHT" role="37wK5m">
                      <ref role="3cqZAo" node="523_aD7XWQR" resolve="ideaProject" />
                    </node>
                    <node concept="2YIFZM" id="3r0tX$Xf5$$" role="37wK5m">
                      <ref role="37wK5l" to="jlcu:~VcsBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                      <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                      <node concept="Xl_RD" id="3r0tX$Xf5$_" role="37wK5m">
                        <property role="Xl_RC" value="show.diff.progress.title.detailed" />
                      </node>
                      <node concept="2OqwBi" id="3r0tX$Xf5$A" role="37wK5m">
                        <node concept="37vLTw" id="3r0tX$Xf5$B" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ySnuJfjmnd" resolve="vFile" />
                        </node>
                        <node concept="liA8E" id="3r0tX$Xf5$C" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~VirtualFile.getPresentableUrl()" resolve="getPresentableUrl" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbT" id="2FnJTyiYG1q" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="3clFb_" id="1Hxk2C1iLIN" role="jymVt">
                      <property role="TrG5h" value="onCancel" />
                      <node concept="3Tm1VV" id="1Hxk2C1iLIO" role="1B3o_S" />
                      <node concept="3cqZAl" id="1Hxk2C1iLIQ" role="3clF45" />
                      <node concept="3clFbS" id="1Hxk2C1iLIU" role="3clF47">
                        <node concept="3clFbF" id="1Hxk2C1iLIX" role="3cqZAp">
                          <node concept="1rXfSq" id="1Hxk2C1iNuc" role="3clFbG">
                            <ref role="37wK5l" node="1Hxk2C1iMuw" resolve="onSuccess" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1Hxk2C1iLIV" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="1Hxk2C1iMuw" role="jymVt">
                      <property role="TrG5h" value="onSuccess" />
                      <node concept="3Tm1VV" id="1Hxk2C1iMux" role="1B3o_S" />
                      <node concept="3cqZAl" id="1Hxk2C1iMuz" role="3clF45" />
                      <node concept="3clFbS" id="1Hxk2C1iMuB" role="3clF47">
                        <node concept="3clFbJ" id="1Hxk2C1iO7b" role="3cqZAp">
                          <node concept="3y3z36" id="1Hxk2C1iP95" role="3clFbw">
                            <node concept="10Nm6u" id="1Hxk2C1iPtI" role="3uHU7w" />
                            <node concept="2OqwBi" id="1zVp7pQYIHx" role="3uHU7B">
                              <node concept="37vLTw" id="1Hxk2C1iOkS" role="2Oq$k0">
                                <ref role="3cqZAo" node="1Hxk2C1iBHc" resolve="exception" />
                              </node>
                              <node concept="liA8E" id="1zVp7pQYITD" role="2OqNvi">
                                <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1Hxk2C1iO7d" role="3clFbx">
                            <node concept="3clFbF" id="78RbNhWi9NF" role="3cqZAp">
                              <node concept="2YIFZM" id="78RbNhWi9NG" role="3clFbG">
                                <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                <node concept="37vLTw" id="523_aD7Y2_v" role="37wK5m">
                                  <ref role="3cqZAo" node="523_aD7XWQR" resolve="ideaProject" />
                                </node>
                                <node concept="3cpWs3" id="78RbNhWi9NI" role="37wK5m">
                                  <node concept="2OqwBi" id="78RbNhWi9NK" role="3uHU7w">
                                    <node concept="liA8E" id="78RbNhWi9NM" role="2OqNvi">
                                      <ref role="37wK5l" to="jlcu:~VcsException.getMessage()" resolve="getMessage" />
                                    </node>
                                    <node concept="2OqwBi" id="1zVp7pQYJ7t" role="2Oq$k0">
                                      <node concept="37vLTw" id="1Hxk2C1iWnO" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1Hxk2C1iBHc" resolve="exception" />
                                      </node>
                                      <node concept="liA8E" id="1zVp7pQYJjP" role="2OqNvi">
                                        <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="78RbNhWi9NJ" role="3uHU7B">
                                    <property role="Xl_RC" value="Can't show difference due to the following error: " />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="78RbNhWi9NN" role="37wK5m">
                                  <property role="Xl_RC" value="Error" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1Hxk2C1iR7_" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1Hxk2C1iRyf" role="3cqZAp">
                          <node concept="3clFbS" id="1Hxk2C1iRyh" role="3clFbx">
                            <node concept="3clFbF" id="5NaeIb8WSwf" role="3cqZAp">
                              <node concept="2OqwBi" id="1LiylnUNFNG" role="3clFbG">
                                <node concept="2YIFZM" id="1LiylnUNNyc" role="2Oq$k0">
                                  <ref role="37wK5l" to="yt4f:~DiffManager.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="yt4f:~DiffManager" resolve="DiffManager" />
                                </node>
                                <node concept="liA8E" id="1LiylnUNFNI" role="2OqNvi">
                                  <ref role="37wK5l" to="yt4f:~DiffManager.showDiff(com.intellij.openapi.project.Project,com.intellij.diff.requests.DiffRequest)" resolve="showDiff" />
                                  <node concept="37vLTw" id="523_aD7XYTV" role="37wK5m">
                                    <ref role="3cqZAo" node="523_aD7XWQR" resolve="ideaProject" />
                                  </node>
                                  <node concept="2OqwBi" id="1zVp7pQYKvW" role="37wK5m">
                                    <node concept="37vLTw" id="1Hxk2C1iVFc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1Hxk2C1iEwZ" resolve="request" />
                                    </node>
                                    <node concept="liA8E" id="1zVp7pQYKQm" role="2OqNvi">
                                      <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="1Hxk2C1iSHa" role="3clFbw">
                            <node concept="10Nm6u" id="1Hxk2C1iT4h" role="3uHU7w" />
                            <node concept="2OqwBi" id="1zVp7pQYJRF" role="3uHU7B">
                              <node concept="37vLTw" id="1Hxk2C1iRRV" role="2Oq$k0">
                                <ref role="3cqZAo" node="1Hxk2C1iEwZ" resolve="request" />
                              </node>
                              <node concept="liA8E" id="1zVp7pQYKbD" role="2OqNvi">
                                <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1Hxk2C1iMuC" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="78RbNhWi9O7" role="3clF46">
        <property role="TrG5h" value="bounds" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="78RbNhWi9O9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2pR195" id="78RbNhWi9O8" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
        </node>
      </node>
      <node concept="3cqZAl" id="78RbNhWi9Mf" role="3clF45" />
      <node concept="3Tm1VV" id="78RbNhWi9Mg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2AsRvWby1gk" role="jymVt" />
    <node concept="2YIFZL" id="2AsRvWbyslA" role="jymVt">
      <property role="TrG5h" value="createCurrentContent" />
      <node concept="37vLTG" id="2AsRvWbywtQ" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="2AsRvWbywtR" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2AsRvWbywtW" role="3clF46">
        <property role="TrG5h" value="vFile" />
        <node concept="3uibUv" id="2AsRvWbywtX" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="2AsRvWbyslD" role="3clF47">
        <node concept="3cpWs6" id="2AsRvWby$gI" role="3cqZAp">
          <node concept="2OqwBi" id="4DmG9PJC9O5" role="3cqZAk">
            <node concept="liA8E" id="4DmG9PJC9O7" role="2OqNvi">
              <ref role="37wK5l" to="yt4f:~DiffContentFactory.create(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="create" />
              <node concept="37vLTw" id="4DmG9PJC9O8" role="37wK5m">
                <ref role="3cqZAo" node="2AsRvWbywtQ" resolve="ideaProject" />
              </node>
              <node concept="37vLTw" id="4DmG9PJC9O9" role="37wK5m">
                <ref role="3cqZAo" node="2AsRvWbywtW" resolve="vFile" />
              </node>
            </node>
            <node concept="2YIFZM" id="4_JpahyB_V0" role="2Oq$k0">
              <ref role="1Pybhc" to="yt4f:~DiffContentFactory" resolve="DiffContentFactory" />
              <ref role="37wK5l" to="yt4f:~DiffContentFactory.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2AsRvWbyn4J" role="1B3o_S" />
      <node concept="3uibUv" id="2AsRvWbys8n" role="3clF45">
        <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
      </node>
      <node concept="2AHcQZ" id="2AsRvWbzNwe" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_Jpahy_MIY" role="jymVt" />
    <node concept="2YIFZL" id="4_Jpahy_Zt2" role="jymVt">
      <property role="TrG5h" value="createRevisionContent" />
      <node concept="3clFbS" id="4_Jpahy_Zt5" role="3clF47">
        <node concept="3cpWs8" id="4_JpahyAjX5" role="3cqZAp">
          <node concept="3cpWsn" id="4_JpahyAjX6" role="3cpWs9">
            <property role="TrG5h" value="diffProvider" />
            <node concept="3uibUv" id="4_JpahyAjX7" role="1tU5fm">
              <ref role="3uigEE" to="fy1h:~DiffProvider" resolve="DiffProvider" />
            </node>
            <node concept="2OqwBi" id="4_JpahyAjX8" role="33vP2m">
              <node concept="liA8E" id="4_JpahyAjX9" role="2OqNvi">
                <ref role="37wK5l" to="jlcu:~AbstractVcs.getDiffProvider()" resolve="getDiffProvider" />
              </node>
              <node concept="37vLTw" id="4_JpahyAjXa" role="2Oq$k0">
                <ref role="3cqZAo" node="4_JpahyA5vf" resolve="vcs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="4_JpahyAjXb" role="3cqZAp">
          <node concept="3y3z36" id="4_JpahyAjXc" role="1gVkn0">
            <node concept="10Nm6u" id="4_JpahyAjXd" role="3uHU7w" />
            <node concept="37vLTw" id="4_JpahyAjXe" role="3uHU7B">
              <ref role="3cqZAo" node="4_JpahyAjX6" resolve="diffProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_JpahyAjfa" role="3cqZAp" />
        <node concept="3cpWs8" id="78RbNhWi9MH" role="3cqZAp">
          <node concept="3cpWsn" id="78RbNhWi9MI" role="3cpWs9">
            <property role="TrG5h" value="revision" />
            <node concept="2OqwBi" id="78RbNhWi9MK" role="33vP2m">
              <node concept="liA8E" id="78RbNhWi9MO" role="2OqNvi">
                <ref role="37wK5l" to="fy1h:~DiffProvider.createFileContent(com.intellij.openapi.vcs.history.VcsRevisionNumber,com.intellij.openapi.vfs.VirtualFile)" resolve="createFileContent" />
                <node concept="37vLTw" id="3GM_nagTxfk" role="37wK5m">
                  <ref role="3cqZAo" node="4_JpahyA4Q7" resolve="revisionNumber" />
                </node>
                <node concept="37vLTw" id="55$aReHkyga" role="37wK5m">
                  <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                </node>
              </node>
              <node concept="37vLTw" id="6tLsn3mTc6R" role="2Oq$k0">
                <ref role="3cqZAo" node="4_JpahyAjX6" resolve="diffProvider" />
              </node>
            </node>
            <node concept="3uibUv" id="78RbNhWi9MJ" role="1tU5fm">
              <ref role="3uigEE" to="1037:~ContentRevision" resolve="ContentRevision" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3r0tX$XerbT" role="3cqZAp">
          <node concept="3clFbS" id="3r0tX$XerbU" role="3clFbx">
            <node concept="RRSsy" id="3r0tX$XerbV" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="3cpWs3" id="3r0tX$Xets4" role="RRSoy">
                <node concept="37vLTw" id="3r0tX$XetLv" role="3uHU7w">
                  <ref role="3cqZAo" node="4_JpahyA4Q7" resolve="revisionNumber" />
                </node>
                <node concept="3cpWs3" id="3r0tX$XesET" role="3uHU7B">
                  <node concept="3cpWs3" id="3r0tX$XerbW" role="3uHU7B">
                    <node concept="Xl_RD" id="3r0tX$XerbY" role="3uHU7B">
                      <property role="Xl_RC" value="content revision is null for file " />
                    </node>
                    <node concept="37vLTw" id="3r0tX$XerbX" role="3uHU7w">
                      <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3r0tX$XesKs" role="3uHU7w">
                    <property role="Xl_RC" value=" revision=" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3r0tX$XerbZ" role="3cqZAp">
              <node concept="10Nm6u" id="4_JpahyAp1r" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3r0tX$Xerc0" role="3clFbw">
            <node concept="37vLTw" id="3r0tX$XerRu" role="3uHU7B">
              <ref role="3cqZAo" node="78RbNhWi9MI" resolve="revision" />
            </node>
            <node concept="10Nm6u" id="3r0tX$Xerc2" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="5NaeIb8V0Sx" role="3cqZAp" />
        <node concept="3cpWs8" id="523_aD7ZqST" role="3cqZAp">
          <node concept="3cpWsn" id="523_aD7ZqSU" role="3cpWs9">
            <property role="TrG5h" value="diffContentFactory" />
            <node concept="3uibUv" id="523_aD7ZqSS" role="1tU5fm">
              <ref role="3uigEE" to="yt4f:~DiffContentFactory" resolve="DiffContentFactory" />
            </node>
            <node concept="2YIFZM" id="523_aD7ZqSV" role="33vP2m">
              <ref role="37wK5l" to="yt4f:~DiffContentFactory.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="yt4f:~DiffContentFactory" resolve="DiffContentFactory" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3r0tX$XetTo" role="3cqZAp">
          <node concept="3cpWsn" id="3r0tX$XetTp" role="3cpWs9">
            <property role="TrG5h" value="revisionStringContent" />
            <node concept="17QB3L" id="DuTZ70UrvN" role="1tU5fm" />
            <node concept="2OqwBi" id="3r0tX$XetTq" role="33vP2m">
              <node concept="37vLTw" id="3r0tX$XetTr" role="2Oq$k0">
                <ref role="3cqZAo" node="78RbNhWi9MI" resolve="revision" />
              </node>
              <node concept="liA8E" id="3r0tX$XetTs" role="2OqNvi">
                <ref role="37wK5l" to="1037:~ContentRevision.getContent()" resolve="getContent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3r0tX$Xev8B" role="3cqZAp">
          <node concept="3clFbS" id="3r0tX$Xev8D" role="3clFbx">
            <node concept="YS8fn" id="3r0tX$XewLe" role="3cqZAp">
              <node concept="2ShNRf" id="3r0tX$XexxA" role="YScLw">
                <node concept="1pGfFk" id="3r0tX$XeG9N" role="2ShVmc">
                  <ref role="37wK5l" to="jlcu:~VcsException.&lt;init&gt;(java.lang.String)" resolve="VcsException" />
                  <node concept="Xl_RD" id="3r0tX$XeGmD" role="37wK5m">
                    <property role="Xl_RC" value="Failed to load content" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3r0tX$Xewq0" role="3clFbw">
            <node concept="10Nm6u" id="3r0tX$XewvB" role="3uHU7w" />
            <node concept="37vLTw" id="3r0tX$XevUC" role="3uHU7B">
              <ref role="3cqZAo" node="3r0tX$XetTp" resolve="revisionStringContent" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7P299JsktXY" role="3cqZAp">
          <node concept="3clFbS" id="7P299JsktXZ" role="1zxBo7">
            <node concept="3cpWs6" id="4_JpahyAys_" role="3cqZAp">
              <node concept="3K4zz7" id="7P299Jsk8Tn" role="3cqZAk">
                <node concept="2OqwBi" id="7P299Jsk9L9" role="3K4E3e">
                  <node concept="37vLTw" id="7P299Jsk9og" role="2Oq$k0">
                    <ref role="3cqZAo" node="523_aD7ZqSU" resolve="diffContentFactory" />
                  </node>
                  <node concept="liA8E" id="7P299Jska9v" role="2OqNvi">
                    <ref role="37wK5l" to="yt4f:~DiffContentFactory.createBinary(com.intellij.openapi.project.Project,byte[],com.intellij.openapi.fileTypes.FileType,java.lang.String)" resolve="createBinary" />
                    <node concept="37vLTw" id="7P299Jskata" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyArCO" resolve="ideaProject" />
                    </node>
                    <node concept="2OqwBi" id="7P299JskbZM" role="37wK5m">
                      <node concept="1eOMI4" id="7P299Jskceo" role="2Oq$k0">
                        <node concept="10QFUN" id="7P299Jskcel" role="1eOMHV">
                          <node concept="3uibUv" id="7P299JskcBO" role="10QFUM">
                            <ref role="3uigEE" to="1037:~BinaryContentRevision" resolve="BinaryContentRevision" />
                          </node>
                          <node concept="37vLTw" id="7P299JskpBe" role="10QFUP">
                            <ref role="3cqZAo" node="78RbNhWi9MI" resolve="revision" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7P299JskpbV" role="2OqNvi">
                        <ref role="37wK5l" to="1037:~BinaryContentRevision.getBinaryContent()" resolve="getBinaryContent" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7P299JskeEi" role="37wK5m">
                      <node concept="37vLTw" id="7P299Jske6I" role="2Oq$k0">
                        <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                      </node>
                      <node concept="liA8E" id="7P299JskflT" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getFileType()" resolve="getFileType" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7P299JskgGL" role="37wK5m">
                      <node concept="37vLTw" id="7P299Jskg54" role="2Oq$k0">
                        <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                      </node>
                      <node concept="liA8E" id="7P299Jskhq5" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7P299Jskiyj" role="3K4GZi">
                  <node concept="37vLTw" id="7P299JskhNZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="523_aD7ZqSU" resolve="diffContentFactory" />
                  </node>
                  <node concept="liA8E" id="7P299JskiXH" role="2OqNvi">
                    <ref role="37wK5l" to="yt4f:~DiffContentFactory.create(java.lang.String,com.intellij.openapi.fileTypes.FileType)" resolve="create" />
                    <node concept="37vLTw" id="7P299Jskjix" role="37wK5m">
                      <ref role="3cqZAo" node="3r0tX$XetTp" resolve="revisionStringContent" />
                    </node>
                    <node concept="2OqwBi" id="7P299JskkHh" role="37wK5m">
                      <node concept="37vLTw" id="7P299Jskk5T" role="2Oq$k0">
                        <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                      </node>
                      <node concept="liA8E" id="7P299JsklsV" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getFileType()" resolve="getFileType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="AvLpigIUlp" role="3K4Cdx">
                  <node concept="3uibUv" id="7P299JsktvV" role="2ZW6by">
                    <ref role="3uigEE" to="1037:~BinaryContentRevision" resolve="BinaryContentRevision" />
                  </node>
                  <node concept="37vLTw" id="7P299JsksQU" role="2ZW6bz">
                    <ref role="3cqZAo" node="78RbNhWi9MI" resolve="revision" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7P299JsktY1" role="1zxBo5">
            <node concept="3clFbS" id="7P299JsktY2" role="1zc67A">
              <node concept="RRSsy" id="4DmG9PJC2gH" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="3cpWs3" id="4DmG9PJC2gI" role="RRSoy">
                  <node concept="37vLTw" id="4DmG9PJC2gJ" role="3uHU7w">
                    <ref role="3cqZAo" node="4_JpahyA4Q7" resolve="revisionNumber" />
                  </node>
                  <node concept="3cpWs3" id="4DmG9PJC2gK" role="3uHU7B">
                    <node concept="3cpWs3" id="4DmG9PJC2gL" role="3uHU7B">
                      <node concept="Xl_RD" id="4DmG9PJC2gM" role="3uHU7B">
                        <property role="Xl_RC" value="error when reading revision content from file " />
                      </node>
                      <node concept="37vLTw" id="4DmG9PJC2gN" role="3uHU7w">
                        <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4DmG9PJC2gO" role="3uHU7w">
                      <property role="Xl_RC" value=" revision=" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4DmG9PJC2DH" role="RRSow">
                  <ref role="3cqZAo" node="7P299JsktY3" resolve="e" />
                </node>
              </node>
              <node concept="3cpWs6" id="4DmG9PJC2gP" role="3cqZAp">
                <node concept="10Nm6u" id="4_JpahyANUX" role="3cqZAk" />
              </node>
            </node>
            <node concept="XOnhg" id="7P299JsktY3" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7P299JsktY4" role="1tU5fm">
                <node concept="3uibUv" id="7P299JsktY0" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_JpahyA4fv" role="1B3o_S" />
      <node concept="3uibUv" id="4_JpahyA42B" role="3clF45">
        <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
      </node>
      <node concept="37vLTG" id="4_JpahyArCO" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4_JpahyAsZG" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="4_JpahyA5vf" role="3clF46">
        <property role="TrG5h" value="vcs" />
        <node concept="3uibUv" id="4_JpahyA6b5" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~AbstractVcs" resolve="AbstractVcs" />
        </node>
      </node>
      <node concept="37vLTG" id="4_JpahyA4Q7" role="3clF46">
        <property role="TrG5h" value="revisionNumber" />
        <node concept="3uibUv" id="4_JpahyA4Q6" role="1tU5fm">
          <ref role="3uigEE" to="yah1:~VcsRevisionNumber" resolve="VcsRevisionNumber" />
        </node>
      </node>
      <node concept="37vLTG" id="4_JpahyAlbL" role="3clF46">
        <property role="TrG5h" value="vFile" />
        <node concept="3uibUv" id="4_JpahyAmjR" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4_JpahyAp_g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4_JpahyAqLz" role="Sfmx6">
        <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
      </node>
    </node>
    <node concept="2tJIrI" id="523_aD7Y2KA" role="jymVt" />
    <node concept="2YIFZL" id="78RbNhWi9Oa" role="jymVt">
      <property role="TrG5h" value="collectUnversionedFiles" />
      <node concept="37vLTG" id="78RbNhWi9OE" role="3clF46">
        <property role="TrG5h" value="fileStatusProvider" />
        <node concept="3uibUv" id="78RbNhWi9OF" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
        </node>
      </node>
      <node concept="37vLTG" id="78RbNhWi9OG" role="3clF46">
        <property role="TrG5h" value="dir" />
        <node concept="3uibUv" id="78RbNhWi9OH" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
        <node concept="2AHcQZ" id="110LydknQtT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="78RbNhWi9Oe" role="3clF47">
        <node concept="3cpWs6" id="78RbNhWi9Of" role="3cqZAp">
          <node concept="2OqwBi" id="78RbNhWi9Og" role="3cqZAk">
            <node concept="1Bd96e" id="78RbNhWi9OD" role="2OqNvi" />
            <node concept="1bVj0M" id="78RbNhWi9Oh" role="2Oq$k0">
              <node concept="3clFbS" id="78RbNhWi9Oi" role="1bW5cS">
                <node concept="3clFbJ" id="78RbNhWi9Oj" role="3cqZAp">
                  <node concept="3clFbC" id="78RbNhWi9On" role="3clFbw">
                    <node concept="10M0yZ" id="78RbNhWi9Oo" role="3uHU7w">
                      <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                      <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    </node>
                    <node concept="2OqwBi" id="78RbNhWi9Op" role="3uHU7B">
                      <node concept="37vLTw" id="2BHiRxgmpNv" role="2Oq$k0">
                        <ref role="3cqZAo" node="78RbNhWi9OE" resolve="fileStatusProvider" />
                      </node>
                      <node concept="liA8E" id="78RbNhWi9Or" role="2OqNvi">
                        <ref role="37wK5l" to="jlcu:~FileStatusManager.getStatus(com.intellij.openapi.vfs.VirtualFile)" resolve="getStatus" />
                        <node concept="37vLTw" id="2BHiRxgm5EV" role="37wK5m">
                          <ref role="3cqZAo" node="78RbNhWi9OG" resolve="dir" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="78RbNhWi9Ok" role="3clFbx">
                    <node concept="2n63Yl" id="78RbNhWi9Ol" role="3cqZAp">
                      <node concept="37vLTw" id="2BHiRxglzFK" role="2n6tg2">
                        <ref role="3cqZAo" node="78RbNhWi9OG" resolve="dir" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="78RbNhWi9Ot" role="3cqZAp">
                  <node concept="3clFbS" id="78RbNhWi9O$" role="2LFqv$">
                    <node concept="_Z6PX" id="78RbNhWi9O_" role="3cqZAp">
                      <node concept="1rXfSq" id="4hiugqysiIe" role="_Z9Zf">
                        <ref role="37wK5l" node="78RbNhWi9Oa" resolve="collectUnversionedFiles" />
                        <node concept="37vLTw" id="2BHiRxgmjkN" role="37wK5m">
                          <ref role="3cqZAo" node="78RbNhWi9OE" resolve="fileStatusProvider" />
                        </node>
                        <node concept="2GrUjf" id="78RbNhWi9OC" role="37wK5m">
                          <ref role="2Gs0qQ" node="78RbNhWi9Ou" resolve="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2GrKxI" id="78RbNhWi9Ou" role="2Gsz3X">
                    <property role="TrG5h" value="child" />
                  </node>
                  <node concept="2OqwBi" id="78RbNhWi9Ov" role="2GsD0m">
                    <node concept="2OqwBi" id="78RbNhWi9Ow" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxgkWh3" role="2Oq$k0">
                        <ref role="3cqZAo" node="78RbNhWi9OG" resolve="dir" />
                      </node>
                      <node concept="liA8E" id="78RbNhWi9Oy" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getChildren()" resolve="getChildren" />
                      </node>
                    </node>
                    <node concept="39bAoz" id="78RbNhWi9Oz" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="78RbNhWi9Od" role="1B3o_S" />
      <node concept="A3Dl8" id="78RbNhWi9Ob" role="3clF45">
        <node concept="3uibUv" id="78RbNhWi9Oc" role="A3Ik2">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="DuTZ70Nzhl" role="jymVt" />
    <node concept="2YIFZL" id="78RbNhWi9Pq" role="jymVt">
      <property role="TrG5h" value="getUnversionedFilesForModules" />
      <node concept="A3Dl8" id="38wEix8elrj" role="3clF45">
        <node concept="3uibUv" id="38wEix8elrl" role="A3Ik2">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="78RbNhWi9Pu" role="3clF47">
        <node concept="3cpWs8" id="38wEix8dDOD" role="3cqZAp">
          <node concept="3cpWsn" id="38wEix8dDOE" role="3cpWs9">
            <property role="TrG5h" value="statusProvider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="38wEix8dDOF" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
            </node>
            <node concept="2YIFZM" id="1M$6WUeKhMV" role="33vP2m">
              <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
              <node concept="2OqwBi" id="1M$6WUeKhMW" role="37wK5m">
                <node concept="37vLTw" id="1M$6WUeKhMX" role="2Oq$k0">
                  <ref role="3cqZAo" node="38wEix8dGgI" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="1M$6WUeKhMY" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38wEix8dEvU" role="3cqZAp">
          <node concept="3cpWsn" id="38wEix8dEvV" role="3cpWs9">
            <property role="TrG5h" value="fsb" />
            <node concept="3uibUv" id="38wEix8dEvW" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
            </node>
            <node concept="2OqwBi" id="38wEix8dEvX" role="33vP2m">
              <node concept="37vLTw" id="38wEix8dEvY" role="2Oq$k0">
                <ref role="3cqZAo" node="38wEix8dGgI" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="38wEix8dEvZ" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="78RbNhWi9Pv" role="3cqZAp">
          <node concept="2OqwBi" id="78RbNhWi9Py" role="3cqZAk">
            <node concept="2OqwBi" id="38wEix8dSpl" role="2Oq$k0">
              <node concept="2OqwBi" id="38wEix8dMG3" role="2Oq$k0">
                <node concept="2OqwBi" id="38wEix8dz$d" role="2Oq$k0">
                  <node concept="2OqwBi" id="38wEix8dxLx" role="2Oq$k0">
                    <node concept="2OqwBi" id="38wEix8du4t" role="2Oq$k0">
                      <node concept="2OqwBi" id="38wEix8dqGU" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxglBAF" role="2Oq$k0">
                          <ref role="3cqZAo" node="78RbNhWi9PK" resolve="module" />
                        </node>
                        <node concept="UnYns" id="38wEix8dsIF" role="2OqNvi">
                          <node concept="3uibUv" id="38wEix8dtAU" role="UnYnz">
                            <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                          </node>
                        </node>
                      </node>
                      <node concept="3$u5V9" id="38wEix8dviH" role="2OqNvi">
                        <node concept="37Ijox" id="38wEix8dBoB" role="23t8la">
                          <ref role="37Ijqf" to="z1c3:~AbstractModule.getDescriptorFile()" resolve="getDescriptorFile" />
                          <node concept="2FaPjH" id="38wEix8dBoD" role="wWaWy">
                            <node concept="3uibUv" id="38wEix8dBoE" role="2FaQuo">
                              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1KnU$U" id="38wEix8dz6H" role="2OqNvi" />
                  </node>
                  <node concept="3$u5V9" id="38wEix8d_$T" role="2OqNvi">
                    <node concept="37Ijox" id="38wEix8dDbS" role="23t8la">
                      <ref role="37Ijqf" to="3ju5:~IFile.getParent()" resolve="getParent" />
                      <node concept="2FaPjH" id="38wEix8dDbU" role="wWaWy">
                        <node concept="3uibUv" id="38wEix8dDbV" role="2FaQuo">
                          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="38wEix8dQq1" role="2OqNvi">
                  <node concept="37Ijox" id="38wEix8dRrC" role="23t8la">
                    <ref role="37Ijqf" to="4hrd:~FileSystemBridge.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
                    <node concept="37vLTw" id="38wEix8dQWW" role="wWaWy">
                      <ref role="3cqZAo" node="38wEix8dEvV" resolve="fsb" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1KnU$U" id="38wEix8dUND" role="2OqNvi" />
            </node>
            <node concept="3goQfb" id="78RbNhWi9P$" role="2OqNvi">
              <node concept="1bVj0M" id="78RbNhWi9P_" role="23t8la">
                <node concept="gl6BB" id="5W7E4fV0XSi" role="1bW2Oz">
                  <property role="TrG5h" value="vf" />
                  <node concept="2jxLKc" id="5W7E4fV0XSj" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="78RbNhWi9PA" role="1bW5cS">
                  <node concept="3clFbF" id="78RbNhWi9PB" role="3cqZAp">
                    <node concept="1rXfSq" id="38wEix8dWqf" role="3clFbG">
                      <ref role="37wK5l" node="78RbNhWi9Oa" resolve="collectUnversionedFiles" />
                      <node concept="37vLTw" id="38wEix8dX0J" role="37wK5m">
                        <ref role="3cqZAo" node="38wEix8dDOE" resolve="statusProvider" />
                      </node>
                      <node concept="37vLTw" id="38wEix8dXGY" role="37wK5m">
                        <ref role="3cqZAo" node="5W7E4fV0XSi" resolve="vf" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78RbNhWi9Pt" role="1B3o_S" />
      <node concept="37vLTG" id="38wEix8dGgI" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="38wEix8dGgJ" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="38wEix8dGJX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="78RbNhWi9PK" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="_YKpA" id="78RbNhWi9PL" role="1tU5fm">
          <node concept="3uibUv" id="78RbNhWi9PM" role="_ZDj9">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="78RbNhWi9Re" role="1B3o_S" />
    <node concept="2tJIrI" id="4eJXCVM8wDG" role="jymVt" />
    <node concept="2YIFZL" id="4eJXCVM8M3c" role="jymVt">
      <property role="TrG5h" value="getAnnotationColumn" />
      <node concept="3clFbS" id="4eJXCVM8J8V" role="3clF47">
        <node concept="1DcWWT" id="4eJXCVM8J8W" role="3cqZAp">
          <node concept="3clFbS" id="4eJXCVM8J8X" role="2LFqv$">
            <node concept="3clFbJ" id="4eJXCVM8J8Y" role="3cqZAp">
              <node concept="3clFbS" id="4eJXCVM8J8Z" role="3clFbx">
                <node concept="3cpWs6" id="4eJXCVM8J90" role="3cqZAp">
                  <node concept="0kSF2" id="4eJXCVM8J91" role="3cqZAk">
                    <node concept="3uibUv" id="4eJXCVM8J92" role="0kSFW">
                      <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
                    </node>
                    <node concept="37vLTw" id="4eJXCVM8J93" role="0kSFX">
                      <ref role="3cqZAo" node="4eJXCVM8J97" resolve="column" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4eJXCVM8J94" role="3clFbw">
                <node concept="3uibUv" id="4eJXCVM8J95" role="2ZW6by">
                  <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
                </node>
                <node concept="37vLTw" id="4eJXCVM8J96" role="2ZW6bz">
                  <ref role="3cqZAo" node="4eJXCVM8J97" resolve="column" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4eJXCVM8J97" role="1Duv9x">
            <property role="TrG5h" value="column" />
            <node concept="3uibUv" id="4eJXCVM8J98" role="1tU5fm">
              <ref role="3uigEE" to="px75:~AbstractLeftColumn" resolve="AbstractLeftColumn" />
            </node>
          </node>
          <node concept="2OqwBi" id="4eJXCVM8J99" role="1DdaDG">
            <node concept="2OqwBi" id="4eJXCVM8J9a" role="2Oq$k0">
              <node concept="liA8E" id="4eJXCVM8J9d" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getLeftEditorHighlighter()" resolve="getLeftEditorHighlighter" />
              </node>
              <node concept="37vLTw" id="4eJXCVM8UJC" role="2Oq$k0">
                <ref role="3cqZAo" node="4eJXCVM8Oy6" resolve="editorComponent" />
              </node>
            </node>
            <node concept="liA8E" id="4eJXCVM8J9e" role="2OqNvi">
              <ref role="37wK5l" to="px75:~LeftEditorHighlighter.getLeftColumns()" resolve="getLeftColumns" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4eJXCVM8J9f" role="3cqZAp">
          <node concept="10Nm6u" id="4eJXCVM8J9g" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="4eJXCVM8J8U" role="3clF45">
        <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
      </node>
      <node concept="37vLTG" id="4eJXCVM8Oy6" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="4eJXCVM8Oy5" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4eJXCVM8W$A" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4eJXCVM90be" role="jymVt" />
    <node concept="2YIFZL" id="4eJXCVM9_O_" role="jymVt">
      <property role="TrG5h" value="getMessageForCell" />
      <node concept="2AHcQZ" id="4eJXCVM9l4U" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4eJXCVM8J9n" role="3clF47">
        <node concept="3clFbJ" id="4eJXCVM8J9o" role="3cqZAp">
          <node concept="3clFbS" id="4eJXCVM8J9p" role="3clFbx">
            <node concept="3cpWs6" id="4eJXCVM8J9q" role="3cqZAp">
              <node concept="10Nm6u" id="4eJXCVM8J9r" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4eJXCVM8J9s" role="3clFbw">
            <node concept="10Nm6u" id="4eJXCVM8J9t" role="3uHU7w" />
            <node concept="37vLTw" id="4eJXCVM9jhU" role="3uHU7B">
              <ref role="3cqZAo" node="4eJXCVM94ZQ" resolve="cell" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eJXCVM8J9w" role="3cqZAp">
          <node concept="3cpWsn" id="4eJXCVM8J9x" role="3cpWs9">
            <property role="TrG5h" value="column" />
            <node concept="3uibUv" id="4eJXCVM8J9y" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2AHcQZ" id="4eJXCVM8J9_" role="2AJF6D">
              <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
            </node>
            <node concept="1rXfSq" id="4eJXCVM9ccn" role="33vP2m">
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <node concept="37vLTw" id="4eJXCVM9ePi" role="37wK5m">
                <ref role="3cqZAo" node="4eJXCVM92Hw" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4eJXCVM8J9K" role="3cqZAp">
          <node concept="3K4zz7" id="1SbZFGF5UJ6" role="3cqZAk">
            <node concept="10Nm6u" id="1SbZFGF5UZs" role="3K4E3e" />
            <node concept="3clFbC" id="1SbZFGF5UgD" role="3K4Cdx">
              <node concept="10Nm6u" id="1SbZFGF5UCm" role="3uHU7w" />
              <node concept="37vLTw" id="1SbZFGF5TSs" role="3uHU7B">
                <ref role="3cqZAo" node="4eJXCVM8J9x" resolve="column" />
              </node>
            </node>
            <node concept="2OqwBi" id="4eJXCVM8J9L" role="3K4GZi">
              <node concept="2OqwBi" id="4eJXCVM8J9M" role="2Oq$k0">
                <node concept="37vLTw" id="4eJXCVM8J9N" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eJXCVM8J9x" resolve="column" />
                </node>
                <node concept="liA8E" id="4eJXCVM8J9O" role="2OqNvi">
                  <ref role="37wK5l" to="bvbc:51QsBmumgLR" resolve="getEditorAnnotation" />
                </node>
              </node>
              <node concept="liA8E" id="4eJXCVM8J9P" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:4eJXCVM711U" resolve="getMessageForCell" />
                <node concept="37vLTw" id="4eJXCVM9t8c" role="37wK5m">
                  <ref role="3cqZAo" node="4eJXCVM94ZQ" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4eJXCVM92Hw" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="4eJXCVM92Hx" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="4eJXCVM94ZQ" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="4eJXCVM97j1" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3uibUv" id="etXRtFkKo1" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
    </node>
    <node concept="2tJIrI" id="9ijxdaXN7Q" role="jymVt" />
    <node concept="2YIFZL" id="9ijxdaXUnE" role="jymVt">
      <property role="TrG5h" value="showCommitInGitLog" />
      <node concept="37vLTG" id="10YBiB190eM" role="3clF46">
        <property role="TrG5h" value="myRevision" />
        <node concept="3uibUv" id="10YBiB190eN" role="1tU5fm">
          <ref role="3uigEE" to="yah1:~VcsFileRevision" resolve="VcsFileRevision" />
        </node>
      </node>
      <node concept="37vLTG" id="10YBiB190nv" role="3clF46">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="10YBiB190nw" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="9ijxdaXUnH" role="3clF47">
        <node concept="3cpWs8" id="9ijxdaY3B0" role="3cqZAp">
          <node concept="3cpWsn" id="9ijxdaY3B1" role="3cpWs9">
            <property role="TrG5h" value="hash" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="9ijxdaY3B2" role="1tU5fm">
              <ref role="3uigEE" to="idua:~Hash" resolve="Hash" />
            </node>
            <node concept="2YIFZM" id="9ijxdaY5bG" role="33vP2m">
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <ref role="37wK5l" node="6CDIgLlLumy" resolve="tryCreateHash" />
              <node concept="2OqwBi" id="9ijxdaY5bH" role="37wK5m">
                <node concept="2OqwBi" id="9ijxdaY5bI" role="2Oq$k0">
                  <node concept="37vLTw" id="9ijxdaY5bJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="10YBiB190eM" resolve="myRevision" />
                  </node>
                  <node concept="liA8E" id="9ijxdaY5bK" role="2OqNvi">
                    <ref role="37wK5l" to="yah1:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
                  </node>
                </node>
                <node concept="liA8E" id="9ijxdaY5bL" role="2OqNvi">
                  <ref role="37wK5l" to="yah1:~VcsRevisionNumber.asString()" resolve="asString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9ijxdaY3B3" role="3cqZAp">
          <node concept="3clFbS" id="9ijxdaY3B4" role="3clFbx">
            <node concept="3cpWs6" id="9ijxdaY3B5" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="9ijxdaY3B6" role="3clFbw">
            <node concept="37vLTw" id="9ijxdaY3B7" role="3uHU7B">
              <ref role="3cqZAo" node="9ijxdaY3B1" resolve="hash" />
            </node>
            <node concept="10Nm6u" id="9ijxdaY3B8" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs8" id="9ijxdaY3B9" role="3cqZAp">
          <node concept="3cpWsn" id="9ijxdaY3Ba" role="3cpWs9">
            <property role="TrG5h" value="consumer" />
            <node concept="3uibUv" id="9ijxdaY3Bb" role="1tU5fm">
              <ref role="3uigEE" to="9w4s:~Consumer" resolve="Consumer" />
              <node concept="3qUtgH" id="9ijxdaY3Bc" role="11_B2D">
                <node concept="3uibUv" id="9ijxdaY3Bd" role="3qUvdb">
                  <ref role="3uigEE" to="lhm8:~MainVcsLogUi" resolve="MainVcsLogUi" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="9ijxdaY3Be" role="33vP2m">
              <node concept="YeOm9" id="9ijxdaY3Bf" role="2ShVmc">
                <node concept="1Y3b0j" id="9ijxdaY3Bg" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="9w4s:~Consumer" resolve="Consumer" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="9ijxdaY3Bh" role="1B3o_S" />
                  <node concept="3clFb_" id="9ijxdaY3Bi" role="jymVt">
                    <property role="TrG5h" value="consume" />
                    <node concept="3Tm1VV" id="9ijxdaY3Bj" role="1B3o_S" />
                    <node concept="3cqZAl" id="9ijxdaY3Bk" role="3clF45" />
                    <node concept="37vLTG" id="9ijxdaY3Bl" role="3clF46">
                      <property role="TrG5h" value="p1" />
                      <node concept="3uibUv" id="9ijxdaY3Bm" role="1tU5fm">
                        <ref role="3uigEE" to="lhm8:~VcsLogUiEx" resolve="VcsLogUiEx" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="9ijxdaY3Bn" role="3clF47">
                      <node concept="3clFbF" id="10YBiB18PKO" role="3cqZAp">
                        <node concept="2YIFZM" id="9ijxdaY5b$" role="3clFbG">
                          <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
                          <ref role="37wK5l" node="10YBiB18FmK" resolve="jumpToRevisionUnderProgress" />
                          <node concept="37vLTw" id="9ijxdaY5b_" role="37wK5m">
                            <ref role="3cqZAo" node="10YBiB190nv" resolve="myProject" />
                          </node>
                          <node concept="37vLTw" id="9ijxdaY5bA" role="37wK5m">
                            <ref role="3cqZAo" node="9ijxdaY3Bl" resolve="p1" />
                          </node>
                          <node concept="37vLTw" id="9ijxdaY5bB" role="37wK5m">
                            <ref role="3cqZAo" node="9ijxdaY3B1" resolve="hash" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="9ijxdaY3Bo" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="9ijxdaY3Bp" role="2Ghqu4">
                    <ref role="3uigEE" to="lhm8:~VcsLogUiEx" resolve="VcsLogUiEx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xcsi$R$dK_" role="3cqZAp">
          <node concept="2OqwBi" id="4xcsi$R$fj3" role="3clFbG">
            <node concept="2YIFZM" id="4xcsi$R$eia" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="4xcsi$R$h20" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="1bVj0M" id="4xcsi$RAop9" role="37wK5m">
                <node concept="3clFbS" id="4xcsi$RAopc" role="1bW5cS">
                  <node concept="3clFbF" id="4xcsi$RAp01" role="3cqZAp">
                    <node concept="2YIFZM" id="4xcsi$RAp03" role="3clFbG">
                      <ref role="37wK5l" to="e0ho:~VcsLogContentUtil.runInMainLog(com.intellij.openapi.project.Project,com.intellij.util.Consumer)" resolve="runInMainLog" />
                      <ref role="1Pybhc" to="e0ho:~VcsLogContentUtil" resolve="VcsLogContentUtil" />
                      <node concept="37vLTw" id="4xcsi$RAp04" role="37wK5m">
                        <ref role="3cqZAo" node="10YBiB190nv" resolve="myProject" />
                      </node>
                      <node concept="37vLTw" id="4xcsi$RAp05" role="37wK5m">
                        <ref role="3cqZAo" node="9ijxdaY3Ba" resolve="consumer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9ijxdaXQ_C" role="1B3o_S" />
      <node concept="3cqZAl" id="9ijxdaXWuc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="9ijxdaXYV5" role="jymVt" />
    <node concept="2YIFZL" id="10YBiB18FmK" role="jymVt">
      <property role="TrG5h" value="jumpToRevisionUnderProgress" />
      <node concept="3clFbS" id="10YBiB18FmL" role="3clF47">
        <node concept="3cpWs8" id="9ijxdaXZTQ" role="3cqZAp">
          <node concept="3cpWsn" id="9ijxdaXZTR" role="3cpWs9">
            <property role="TrG5h" value="future" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="9ijxdaXZTS" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
              <node concept="3uibUv" id="9ijxdaXZTT" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
            <node concept="2OqwBi" id="9ijxdaXZTU" role="33vP2m">
              <node concept="2OqwBi" id="9ijxdaXZTV" role="2Oq$k0">
                <node concept="37vLTw" id="9ijxdaXZTW" role="2Oq$k0">
                  <ref role="3cqZAo" node="9ijxdaXZUN" resolve="logUi" />
                </node>
                <node concept="liA8E" id="9ijxdaXZTX" role="2OqNvi">
                  <ref role="37wK5l" to="lhm8:~VcsLogUiEx.getVcsLog()" resolve="getVcsLog" />
                </node>
              </node>
              <node concept="liA8E" id="9ijxdaXZTY" role="2OqNvi">
                <ref role="37wK5l" to="idub:~VcsLog.jumpToReference(java.lang.String)" resolve="jumpToReference" />
                <node concept="2OqwBi" id="9ijxdaXZTZ" role="37wK5m">
                  <node concept="37vLTw" id="9ijxdaXZU0" role="2Oq$k0">
                    <ref role="3cqZAo" node="9ijxdaXZUQ" resolve="hash" />
                  </node>
                  <node concept="liA8E" id="9ijxdaXZU1" role="2OqNvi">
                    <ref role="37wK5l" to="idua:~Hash.asString()" resolve="asString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9ijxdaXZU2" role="3cqZAp">
          <node concept="3clFbS" id="9ijxdaXZU3" role="3clFbx">
            <node concept="3clFbF" id="9ijxdaXZU4" role="3cqZAp">
              <node concept="2OqwBi" id="9ijxdaXZU5" role="3clFbG">
                <node concept="2YIFZM" id="9ijxdaXZU6" role="2Oq$k0">
                  <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                </node>
                <node concept="liA8E" id="9ijxdaXZU7" role="2OqNvi">
                  <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
                  <node concept="2ShNRf" id="9ijxdaXZU8" role="37wK5m">
                    <node concept="YeOm9" id="9ijxdaXZU9" role="2ShVmc">
                      <node concept="1Y3b0j" id="9ijxdaXZUa" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean,com.intellij.openapi.progress.PerformInBackgroundOption)" resolve="Task.Backgroundable" />
                        <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Task.Backgroundable" />
                        <node concept="37vLTw" id="10YBiB18Fn7" role="37wK5m">
                          <ref role="3cqZAo" node="10YBiB18FnN" resolve="project" />
                        </node>
                        <node concept="2YIFZM" id="9ijxdaXZUb" role="37wK5m">
                          <ref role="37wK5l" to="yrtf:~GitBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                          <ref role="1Pybhc" to="yrtf:~GitBundle" resolve="GitBundle" />
                          <node concept="Xl_RD" id="9ijxdaXZUc" role="37wK5m">
                            <property role="Xl_RC" value="git.log.show.commit.in.log.process" />
                          </node>
                          <node concept="2OqwBi" id="9ijxdaXZUd" role="37wK5m">
                            <node concept="37vLTw" id="9ijxdaXZUe" role="2Oq$k0">
                              <ref role="3cqZAo" node="9ijxdaXZUQ" resolve="hash" />
                            </node>
                            <node concept="liA8E" id="9ijxdaXZUf" role="2OqNvi">
                              <ref role="37wK5l" to="idua:~Hash.asString()" resolve="asString" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbT" id="9ijxdaXZUg" role="37wK5m" />
                        <node concept="10M0yZ" id="9ijxdaXZUh" role="37wK5m">
                          <ref role="3cqZAo" to="xygl:~PerformInBackgroundOption.ALWAYS_BACKGROUND" resolve="ALWAYS_BACKGROUND" />
                          <ref role="1PxDUh" to="xygl:~PerformInBackgroundOption" resolve="PerformInBackgroundOption" />
                        </node>
                        <node concept="3Tm1VV" id="9ijxdaXZUi" role="1B3o_S" />
                        <node concept="3clFb_" id="9ijxdaXZUj" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="3Tm1VV" id="9ijxdaXZUk" role="1B3o_S" />
                          <node concept="3cqZAl" id="9ijxdaXZUl" role="3clF45" />
                          <node concept="37vLTG" id="9ijxdaXZUm" role="3clF46">
                            <property role="TrG5h" value="p1" />
                            <node concept="3uibUv" id="9ijxdaXZUn" role="1tU5fm">
                              <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                            </node>
                            <node concept="2AHcQZ" id="9ijxdaXZUo" role="2AJF6D">
                              <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="9ijxdaXZUp" role="3clF47">
                            <node concept="3J1_TO" id="9ijxdaXZUq" role="3cqZAp">
                              <node concept="3uVAMA" id="9ijxdaXZUr" role="1zxBo5">
                                <node concept="XOnhg" id="9ijxdaXZUs" role="1zc67B">
                                  <property role="TrG5h" value="ignored" />
                                  <node concept="nSUau" id="9ijxdaXZUt" role="1tU5fm">
                                    <node concept="3uibUv" id="9ijxdaXZUu" role="nSUat">
                                      <ref role="3uigEE" to="5zyv:~CancellationException" resolve="CancellationException" />
                                    </node>
                                    <node concept="3uibUv" id="9ijxdaXZUv" role="nSUat">
                                      <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="9ijxdaXZUw" role="1zc67A" />
                              </node>
                              <node concept="3uVAMA" id="9ijxdaXZUx" role="1zxBo5">
                                <node concept="XOnhg" id="9ijxdaXZUy" role="1zc67B">
                                  <property role="TrG5h" value="e" />
                                  <node concept="nSUau" id="9ijxdaXZUz" role="1tU5fm">
                                    <node concept="3uibUv" id="9ijxdaXZU$" role="nSUat">
                                      <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="9ijxdaXZU_" role="1zc67A">
                                  <node concept="RRSsy" id="9ijxdaXZUA" role="3cqZAp">
                                    <property role="RRSoG" value="gZ5fh_4/error" />
                                    <node concept="Xl_RD" id="9ijxdaXZUB" role="RRSoy" />
                                    <node concept="37vLTw" id="9ijxdaXZUC" role="RRSow">
                                      <ref role="3cqZAo" node="9ijxdaXZUy" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="9ijxdaXZUD" role="1zxBo7">
                                <node concept="3clFbF" id="9ijxdaXZUE" role="3cqZAp">
                                  <node concept="2OqwBi" id="9ijxdaXZUF" role="3clFbG">
                                    <node concept="37vLTw" id="9ijxdaXZUG" role="2Oq$k0">
                                      <ref role="3cqZAo" node="9ijxdaXZTR" resolve="future" />
                                    </node>
                                    <node concept="liA8E" id="9ijxdaXZUH" role="2OqNvi">
                                      <ref role="37wK5l" to="5zyv:~Future.get()" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="9ijxdaXZUI" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="9ijxdaXZUJ" role="3clFbw">
            <node concept="2OqwBi" id="9ijxdaXZUK" role="3fr31v">
              <node concept="37vLTw" id="9ijxdaXZUL" role="2Oq$k0">
                <ref role="3cqZAo" node="9ijxdaXZTR" resolve="future" />
              </node>
              <node concept="liA8E" id="9ijxdaXZUM" role="2OqNvi">
                <ref role="37wK5l" to="5zyv:~Future.isDone()" resolve="isDone" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="10YBiB18FnL" role="1B3o_S" />
      <node concept="3cqZAl" id="10YBiB18FnM" role="3clF45" />
      <node concept="37vLTG" id="10YBiB18FnN" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="10YBiB18FnO" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="10YBiB18FnP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="9ijxdaXZUN" role="3clF46">
        <property role="TrG5h" value="logUi" />
        <node concept="3uibUv" id="9ijxdaXZUO" role="1tU5fm">
          <ref role="3uigEE" to="lhm8:~VcsLogUiEx" resolve="VcsLogUiEx" />
        </node>
        <node concept="2AHcQZ" id="9ijxdaXZUP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="9ijxdaXZUQ" role="3clF46">
        <property role="TrG5h" value="hash" />
        <node concept="3uibUv" id="9ijxdaXZUR" role="1tU5fm">
          <ref role="3uigEE" to="idua:~Hash" resolve="Hash" />
        </node>
        <node concept="2AHcQZ" id="9ijxdaXZUS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6CDIgLlLrEj" role="jymVt" />
    <node concept="2YIFZL" id="6CDIgLlLumy" role="jymVt">
      <property role="TrG5h" value="tryCreateHash" />
      <node concept="3clFbS" id="6CDIgLlLum$" role="3clF47">
        <node concept="3J1_TO" id="9ijxdaXZV6" role="3cqZAp">
          <node concept="3uVAMA" id="9ijxdaXZV7" role="1zxBo5">
            <node concept="XOnhg" id="9ijxdaXZV8" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="9ijxdaXZV9" role="1tU5fm">
                <node concept="3uibUv" id="9ijxdaXZVa" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="9ijxdaXZVb" role="1zc67A">
              <node concept="3cpWs6" id="9ijxdaXZVc" role="3cqZAp">
                <node concept="10Nm6u" id="9ijxdaXZVd" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="9ijxdaXZVe" role="1zxBo7">
            <node concept="3cpWs6" id="9ijxdaXZVf" role="3cqZAp">
              <node concept="2YIFZM" id="9ijxdaXZVg" role="3cqZAk">
                <ref role="37wK5l" to="e0ho:~HashImpl.build(java.lang.String)" resolve="build" />
                <ref role="1Pybhc" to="e0ho:~HashImpl" resolve="HashImpl" />
                <node concept="37vLTw" id="6CDIgLlLvVT" role="37wK5m">
                  <ref role="3cqZAo" node="6CDIgLlLumB" resolve="revision" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6CDIgLlLumA" role="3clF45">
        <ref role="3uigEE" to="idua:~Hash" resolve="Hash" />
      </node>
      <node concept="37vLTG" id="6CDIgLlLumB" role="3clF46">
        <property role="TrG5h" value="revision" />
        <node concept="17QB3L" id="6CDIgLlLumC" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="6CDIgLlLum_" role="1B3o_S" />
      <node concept="2AHcQZ" id="6CDIgLlLv5D" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5hLQ1IgCU3S" role="jymVt" />
    <node concept="2YIFZL" id="5hLQ1IgC8$s" role="jymVt">
      <property role="TrG5h" value="getAnnotateRootLock" />
      <node concept="3clFbS" id="5hLQ1IgC8$v" role="3clF47">
        <node concept="3clFbF" id="5hLQ1IgC8$w" role="3cqZAp">
          <node concept="2YIFZM" id="5hLQ1IgC8$x" role="3clFbG">
            <ref role="37wK5l" to="j86o:~BackgroundableActionLock.getLock(com.intellij.openapi.project.Project,java.lang.Object...)" resolve="getLock" />
            <ref role="1Pybhc" to="j86o:~BackgroundableActionLock" resolve="BackgroundableActionLock" />
            <node concept="37vLTw" id="5hLQ1IgC8$y" role="37wK5m">
              <ref role="3cqZAo" node="5hLQ1IgC8$D" resolve="project" />
            </node>
            <node concept="Rm8GO" id="5hLQ1IgC8$z" role="37wK5m">
              <ref role="1Px2BO" to="j86o:~VcsBackgroundableActions" resolve="VcsBackgroundableActions" />
              <ref role="Rm8GQ" to="j86o:~VcsBackgroundableActions.ANNOTATE" resolve="ANNOTATE" />
            </node>
            <node concept="37vLTw" id="7kt42U9QwaU" role="37wK5m">
              <ref role="3cqZAo" node="5hLQ1IgC8$F" resolve="taskName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5hLQ1IgC8$u" role="3clF45">
        <ref role="3uigEE" to="j86o:~BackgroundableActionLock" resolve="BackgroundableActionLock" />
      </node>
      <node concept="37vLTG" id="5hLQ1IgC8$D" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5hLQ1IgC8$E" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5hLQ1IgC8$F" role="3clF46">
        <property role="TrG5h" value="taskName" />
        <node concept="17QB3L" id="7kt42U9QuIU" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7GdQgoXDE6V" role="1B3o_S" />
    </node>
  </node>
  <node concept="yhzZL" id="78RbNhWi9Rj">
    <property role="TrG5h" value="MPSVcs" />
    <property role="BHXKe" value="${module}/../META-INF/" />
    <node concept="2zDL_w" id="78RbNhWi9Rk" role="yhzZR">
      <node concept="2zDL_x" id="78RbNhWi9Rl" role="2zDL_s">
        <ref role="2zDL_u" node="78RbNhWi9LZ" resolve="ChangesStrip" />
      </node>
      <node concept="2zDL_x" id="78RbNhWi9Rn" role="2zDL_s">
        <ref role="2zDL_u" node="78RbNhWi9LU" resolve="GoToVCS" />
      </node>
      <node concept="2zDL_x" id="341WClvYU0P" role="2zDL_s">
        <ref role="2zDL_u" node="341WClvYTW8" resolve="MPSGlobalVcsGroup" />
      </node>
      <node concept="2zDL_x" id="3WCIgQv3c8f" role="2zDL_s">
        <ref role="2zDL_u" node="3WCIgQv3c8a" resolve="AnnotateGroup" />
      </node>
      <node concept="2zDL_x" id="5EaKfm594Me" role="2zDL_s">
        <ref role="2zDL_u" node="1Xv6sND1SvM" resolve="AnnotatedCellGroup" />
      </node>
      <node concept="2zDL_x" id="nEmtK1ZFX2" role="2zDL_s">
        <ref role="2zDL_u" node="nEmtK1VY8B" resolve="DiffEditorPopupGroup" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="341WClvYTW8">
    <property role="TrG5h" value="MPSGlobalVcsGroup" />
    <property role="3GE5qa" value="Groups" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="341WClvYTW9" role="ftER_">
      <node concept="2a7GMi" id="341WClvYTWa" role="ftvYc" />
      <node concept="tCFHf" id="341WClvYTWb" role="ftvYc">
        <ref role="tCJdB" node="341WClvYU08" resolve="InstalVcsAddons" />
      </node>
      <node concept="tCFHf" id="341WClvYTWc" role="ftvYc">
        <ref role="tCJdB" node="341WClvYTWh" resolve="ReportModelMergeProblem" />
      </node>
    </node>
    <node concept="tT9cl" id="341WClvYTWd" role="2f5YQi">
      <ref role="tU$_T" node="67kWSvhRIy3" resolve="IDEAVcsGroups" />
    </node>
  </node>
  <node concept="1ESbSp" id="341WClvYTWe">
    <property role="TrG5h" value="IDEAVcsGlobal" />
    <property role="3GE5qa" value="Groups" />
    <node concept="Xl_RD" id="341WClvYTWf" role="3mKD$K">
      <property role="Xl_RC" value="VcsGlobalGroup" />
    </node>
    <node concept="ftmFs" id="341WClvYTWg" role="ftER_" />
  </node>
  <node concept="sE7Ow" id="341WClvYTWh">
    <property role="TrG5h" value="ReportModelMergeProblem" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Actions" />
    <property role="2uzpH1" value="Report Model Merge Problem..." />
    <node concept="2XrIbr" id="341WClvYTWi" role="32lrUH">
      <property role="TrG5h" value="showNoBackupsAvailable" />
      <node concept="3cqZAl" id="341WClvYTWj" role="3clF45" />
      <node concept="3clFbS" id="341WClvYTWk" role="3clF47">
        <node concept="3clFbF" id="341WClvYTWl" role="3cqZAp">
          <node concept="2YIFZM" id="341WClvYTWm" role="3clFbG">
            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
            <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showInfoMessage" />
            <node concept="2OqwBi" id="341WClvYTWn" role="37wK5m">
              <node concept="2WthIp" id="341WClvYTWo" role="2Oq$k0" />
              <node concept="1DTwFV" id="341WClvYTWp" role="2OqNvi">
                <ref role="2WH_rO" node="341WClvYTWt" resolve="project" />
              </node>
            </node>
            <node concept="Xl_RD" id="341WClvYTWq" role="37wK5m">
              <property role="Xl_RC" value="No merge backups available, that is MPS merge was not invoked." />
            </node>
            <node concept="Xl_RD" id="341WClvYTWr" role="37wK5m">
              <property role="Xl_RC" value="Model Merge Problem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="341WClvYTWs" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="341WClvYTWt" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4$Favkc8OnZ" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="341WClvYTWu" role="1NuT2Z">
      <property role="TrG5h" value="frame" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.FRAME" resolve="FRAME" />
      <node concept="1oajcY" id="4$Favkc8OnM" role="1oa70y" />
    </node>
    <node concept="tnohg" id="341WClvYTWv" role="tncku">
      <node concept="3clFbS" id="341WClvYTWw" role="2VODD2">
        <node concept="3cpWs8" id="341WClvYTWx" role="3cqZAp">
          <node concept="3cpWsn" id="341WClvYTWy" role="3cpWs9">
            <property role="TrG5h" value="blameDialog" />
            <node concept="3uibUv" id="341WClvYTWz" role="1tU5fm">
              <ref role="3uigEE" to="qy69:~BlameDialog" resolve="BlameDialog" />
            </node>
            <node concept="2OqwBi" id="341WClvYTW$" role="33vP2m">
              <node concept="2YIFZM" id="341WClvYTW_" role="2Oq$k0">
                <ref role="37wK5l" to="qy69:~BlameDialogComponent.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="qy69:~BlameDialogComponent" resolve="BlameDialogComponent" />
              </node>
              <node concept="liA8E" id="341WClvYTWA" role="2OqNvi">
                <ref role="37wK5l" to="qy69:~BlameDialogComponent.createDialog(com.intellij.openapi.project.Project,java.awt.Component)" resolve="createDialog" />
                <node concept="2OqwBi" id="341WClvYTWB" role="37wK5m">
                  <node concept="2WthIp" id="341WClvYTWC" role="2Oq$k0" />
                  <node concept="1DTwFV" id="341WClvYTWD" role="2OqNvi">
                    <ref role="2WH_rO" node="341WClvYTWt" resolve="project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="341WClvYTWE" role="37wK5m">
                  <node concept="2WthIp" id="341WClvYTWF" role="2Oq$k0" />
                  <node concept="1DTwFV" id="341WClvYTWG" role="2OqNvi">
                    <ref role="2WH_rO" node="341WClvYTWu" resolve="frame" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Y4IFFLHfds" role="3cqZAp">
          <node concept="2OqwBi" id="1Y4IFFLHfrn" role="3clFbG">
            <node concept="37vLTw" id="1Y4IFFLHfdq" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
            </node>
            <node concept="liA8E" id="1Y4IFFLHfx2" role="2OqNvi">
              <ref role="37wK5l" to="qy69:~BlameDialog.initDialog()" resolve="initDialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTWH" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTWI" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwG0" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
            </node>
            <node concept="liA8E" id="341WClvYTWK" role="2OqNvi">
              <ref role="37wK5l" to="qy69:~BlameDialog.setIssueHidden(boolean)" resolve="setIssueHidden" />
              <node concept="3clFbT" id="341WClvYTWL" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTWM" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTWN" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTw7Y" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
            </node>
            <node concept="liA8E" id="341WClvYTWP" role="2OqNvi">
              <ref role="37wK5l" to="qy69:~BlameDialog.setSubsystem(java.lang.String)" resolve="setSubsystem" />
              <node concept="10M0yZ" id="6lwQXX7u9C5" role="37wK5m">
                <ref role="3cqZAo" to="ihz5:~Reporter.SUBSYSTEM_VERSION_CONTROL" resolve="SUBSYSTEM_VERSION_CONTROL" />
                <ref role="1PxDUh" to="ihz5:~Reporter" resolve="Reporter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2gV3$ksh5Tw" role="3cqZAp">
          <node concept="2OqwBi" id="2gV3$ksh5Tx" role="3clFbG">
            <node concept="37vLTw" id="2gV3$ksh5Ty" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
            </node>
            <node concept="liA8E" id="2gV3$ksh5Tz" role="2OqNvi">
              <ref role="37wK5l" to="qy69:~BlameDialog.setType(java.lang.String)" resolve="setType" />
              <node concept="10M0yZ" id="2gV3$ksh8fB" role="37wK5m">
                <ref role="3cqZAo" to="ihz5:~Reporter.TYPE_PROBLEM" resolve="TYPE_PROBLEM" />
                <ref role="1PxDUh" to="ihz5:~Reporter" resolve="Reporter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTWR" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTWS" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxMQ" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
            </node>
            <node concept="liA8E" id="341WClvYTWU" role="2OqNvi">
              <ref role="37wK5l" to="qy69:~BlameDialog.setIssueTitle(java.lang.String)" resolve="setIssueTitle" />
              <node concept="Xl_RD" id="341WClvYTWV" role="37wK5m">
                <property role="Xl_RC" value="Model merge problem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="341WClvYTWW" role="3cqZAp">
          <node concept="3cpWsn" id="341WClvYTWX" role="3cpWs9">
            <property role="TrG5h" value="filesToAttach" />
            <node concept="_YKpA" id="341WClvYTWY" role="1tU5fm">
              <node concept="3uibUv" id="341WClvYTWZ" role="_ZDj9">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="341WClvYTX0" role="33vP2m">
              <node concept="Tc6Ow" id="341WClvYTX1" role="2ShVmc">
                <node concept="3uibUv" id="341WClvYTX2" role="HW$YZ">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTX3" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTX4" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTsqO" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWX" resolve="filesToAttach" />
            </node>
            <node concept="TSZUe" id="341WClvYTX6" role="2OqNvi">
              <node concept="2ShNRf" id="341WClvYTX7" role="25WWJ7">
                <node concept="1pGfFk" id="341WClvYTX8" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="3cpWs3" id="341WClvYTX9" role="37wK5m">
                    <node concept="Xl_RD" id="341WClvYTXa" role="3uHU7w">
                      <property role="Xl_RC" value=".gitconfig" />
                    </node>
                    <node concept="3cpWs3" id="341WClvYTXb" role="3uHU7B">
                      <node concept="2YIFZM" id="341WClvYTXc" role="3uHU7B">
                        <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        <node concept="Xl_RD" id="341WClvYTXd" role="37wK5m">
                          <property role="Xl_RC" value="user.home" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="341WClvYTXe" role="3uHU7w">
                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                        <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTXf" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTXg" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$zv" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWX" resolve="filesToAttach" />
            </node>
            <node concept="TSZUe" id="341WClvYTXi" role="2OqNvi">
              <node concept="2ShNRf" id="341WClvYTXj" role="25WWJ7">
                <node concept="1pGfFk" id="341WClvYTXk" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="3cpWs3" id="341WClvYTXl" role="37wK5m">
                    <node concept="3cpWs3" id="341WClvYTXm" role="3uHU7B">
                      <node concept="2YIFZM" id="341WClvYTXn" role="3uHU7B">
                        <ref role="37wK5l" to="bd8o:~PathManager.getConfigPath()" resolve="getConfigPath" />
                        <ref role="1Pybhc" to="bd8o:~PathManager" resolve="PathManager" />
                      </node>
                      <node concept="10M0yZ" id="341WClvYTXo" role="3uHU7w">
                        <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="341WClvYTXp" role="3uHU7w">
                      <property role="Xl_RC" value="mps-merger.sh" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTXq" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTXr" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTx3p" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWX" resolve="filesToAttach" />
            </node>
            <node concept="X8dFx" id="341WClvYTXt" role="2OqNvi">
              <node concept="2OqwBi" id="341WClvYTXu" role="25WWJ7">
                <node concept="2OqwBi" id="341WClvYTXv" role="2Oq$k0">
                  <node concept="2ShNRf" id="341WClvYTXw" role="2Oq$k0">
                    <node concept="1pGfFk" id="341WClvYTXx" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="2YIFZM" id="341WClvYTXy" role="37wK5m">
                        <ref role="37wK5l" to="bd8o:~PathManager.getLogPath()" resolve="getLogPath" />
                        <ref role="1Pybhc" to="bd8o:~PathManager" resolve="PathManager" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="341WClvYTXz" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.listFiles(java.io.FilenameFilter)" resolve="listFiles" />
                    <node concept="1bVj0M" id="341WClvYTX$" role="37wK5m">
                      <node concept="37vLTG" id="341WClvYTX_" role="1bW2Oz">
                        <property role="TrG5h" value="dir" />
                        <node concept="3uibUv" id="341WClvYTXA" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~File" resolve="File" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="341WClvYTXB" role="1bW2Oz">
                        <property role="TrG5h" value="name" />
                        <node concept="17QB3L" id="341WClvYTXC" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="341WClvYTXD" role="1bW5cS">
                        <node concept="3clFbF" id="341WClvYTXE" role="3cqZAp">
                          <node concept="2OqwBi" id="341WClvYTXF" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxgmaJY" role="2Oq$k0">
                              <ref role="3cqZAo" node="341WClvYTXB" resolve="name" />
                            </node>
                            <node concept="liA8E" id="341WClvYTXH" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                              <node concept="Xl_RD" id="341WClvYTXI" role="37wK5m">
                                <property role="Xl_RC" value="mergedriver.log" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="39bAoz" id="341WClvYTXJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="341WClvYTXK" role="3cqZAp">
          <node concept="2OqwBi" id="341WClvYTXL" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$d2" role="2Oq$k0">
              <ref role="3cqZAo" node="341WClvYTWX" resolve="filesToAttach" />
            </node>
            <node concept="2es0OD" id="341WClvYTXN" role="2OqNvi">
              <node concept="1bVj0M" id="341WClvYTXO" role="23t8la">
                <node concept="3clFbS" id="341WClvYTXP" role="1bW5cS">
                  <node concept="3clFbF" id="341WClvYTXQ" role="3cqZAp">
                    <node concept="2OqwBi" id="341WClvYTXR" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTBhx" role="2Oq$k0">
                        <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
                      </node>
                      <node concept="liA8E" id="341WClvYTXT" role="2OqNvi">
                        <ref role="37wK5l" to="qy69:~BlameDialog.addFile(java.io.File)" resolve="addFile" />
                        <node concept="37vLTw" id="2BHiRxglRO4" role="37wK5m">
                          <ref role="3cqZAo" node="5W7E4fV0XSk" resolve="f" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XSk" role="1bW2Oz">
                  <property role="TrG5h" value="f" />
                  <node concept="2jxLKc" id="5W7E4fV0XSl" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="341WClvYTXX" role="3cqZAp" />
        <node concept="3SKdUt" id="341WClvYTXY" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoml7" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoml8" role="1PaTwD">
              <property role="3oM_SC" value="Select" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoml9" role="1PaTwD">
              <property role="3oM_SC" value="merge-backup" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomla" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomlb" role="1PaTwD">
              <property role="3oM_SC" value="attach" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="341WClvYTY0" role="3cqZAp">
          <node concept="3cpWsn" id="341WClvYTY1" role="3cpWs9">
            <property role="TrG5h" value="backupDir" />
            <node concept="3uibUv" id="341WClvYTY2" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="341WClvYTY3" role="33vP2m">
              <node concept="1pGfFk" id="341WClvYTY4" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="2YIFZM" id="nQhvklQRZ5" role="37wK5m">
                  <ref role="37wK5l" to="4rb9:nQhvklQRXK" resolve="getMergeBackupDirPath" />
                  <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="341WClvYTY6" role="3cqZAp">
          <node concept="3cpWsn" id="341WClvYTY7" role="3cpWs9">
            <property role="TrG5h" value="listFiles" />
            <node concept="10Q1$e" id="341WClvYTY8" role="1tU5fm">
              <node concept="3uibUv" id="341WClvYTY9" role="10Q1$1">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2OqwBi" id="341WClvYTYa" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTweU" role="2Oq$k0">
                <ref role="3cqZAo" node="341WClvYTY1" resolve="backupDir" />
              </node>
              <node concept="liA8E" id="341WClvYTYc" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.listFiles(java.io.FilenameFilter)" resolve="listFiles" />
                <node concept="1bVj0M" id="341WClvYTYd" role="37wK5m">
                  <node concept="37vLTG" id="341WClvYTYe" role="1bW2Oz">
                    <property role="TrG5h" value="dir" />
                    <node concept="3uibUv" id="341WClvYTYf" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="341WClvYTYg" role="1bW2Oz">
                    <property role="TrG5h" value="name" />
                    <node concept="17QB3L" id="341WClvYTYh" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="341WClvYTYi" role="1bW5cS">
                    <node concept="3clFbF" id="341WClvYTYj" role="3cqZAp">
                      <node concept="2OqwBi" id="341WClvYTYk" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm8Yl" role="2Oq$k0">
                          <ref role="3cqZAo" node="341WClvYTYg" resolve="name" />
                        </node>
                        <node concept="liA8E" id="341WClvYTYm" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                          <node concept="Xl_RD" id="341WClvYTYn" role="37wK5m">
                            <property role="Xl_RC" value=".zip" />
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
        <node concept="3clFbJ" id="341WClvYTYo" role="3cqZAp">
          <node concept="3clFbS" id="341WClvYTYp" role="3clFbx">
            <node concept="3clFbF" id="341WClvYTYq" role="3cqZAp">
              <node concept="2OqwBi" id="341WClvYTYr" role="3clFbG">
                <node concept="2WthIp" id="341WClvYTYs" role="2Oq$k0" />
                <node concept="2XshWL" id="341WClvYTYt" role="2OqNvi">
                  <ref role="2WH_rO" node="341WClvYTWi" resolve="showNoBackupsAvailable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="341WClvYTYu" role="3clFbw">
            <node concept="10Nm6u" id="341WClvYTYv" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT$lY" role="3uHU7B">
              <ref role="3cqZAo" node="341WClvYTY7" resolve="listFiles" />
            </node>
          </node>
          <node concept="9aQIb" id="341WClvYTYx" role="9aQIa">
            <node concept="3clFbS" id="341WClvYTYy" role="9aQI4">
              <node concept="3cpWs8" id="341WClvYTYz" role="3cqZAp">
                <node concept="3cpWsn" id="341WClvYTY$" role="3cpWs9">
                  <property role="TrG5h" value="zipFiles" />
                  <node concept="_YKpA" id="341WClvYTY_" role="1tU5fm">
                    <node concept="3uibUv" id="341WClvYTYA" role="_ZDj9">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="341WClvYTYB" role="33vP2m">
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                    <node concept="37vLTw" id="3GM_nagTz_N" role="37wK5m">
                      <ref role="3cqZAo" node="341WClvYTY7" resolve="listFiles" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="341WClvYTYD" role="3cqZAp">
                <node concept="3cpWsn" id="341WClvYTYE" role="3cpWs9">
                  <property role="TrG5h" value="zipNames" />
                  <node concept="10Q1$e" id="341WClvYTYF" role="1tU5fm">
                    <node concept="17QB3L" id="341WClvYTYG" role="10Q1$1" />
                  </node>
                  <node concept="2OqwBi" id="341WClvYTYH" role="33vP2m">
                    <node concept="2OqwBi" id="341WClvYTYI" role="2Oq$k0">
                      <node concept="2OqwBi" id="341WClvYTYJ" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTrRH" role="2Oq$k0">
                          <ref role="3cqZAo" node="341WClvYTY$" resolve="zipFiles" />
                        </node>
                        <node concept="2S7cBI" id="341WClvYTYL" role="2OqNvi">
                          <node concept="1bVj0M" id="341WClvYTYM" role="23t8la">
                            <node concept="3clFbS" id="341WClvYTYN" role="1bW5cS">
                              <node concept="3clFbF" id="341WClvYTYO" role="3cqZAp">
                                <node concept="2OqwBi" id="341WClvYTYP" role="3clFbG">
                                  <node concept="37vLTw" id="2BHiRxglrgo" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XSm" resolve="f" />
                                  </node>
                                  <node concept="liA8E" id="341WClvYTYR" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~File.lastModified()" resolve="lastModified" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XSm" role="1bW2Oz">
                              <property role="TrG5h" value="f" />
                              <node concept="2jxLKc" id="5W7E4fV0XSn" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1nlBCl" id="341WClvYTYU" role="2S7zOq">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="3$u5V9" id="341WClvYTYV" role="2OqNvi">
                        <node concept="1bVj0M" id="341WClvYTYW" role="23t8la">
                          <node concept="3clFbS" id="341WClvYTYX" role="1bW5cS">
                            <node concept="3clFbF" id="341WClvYTYY" role="3cqZAp">
                              <node concept="2OqwBi" id="341WClvYTYZ" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgmyTB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0XSo" resolve="f" />
                                </node>
                                <node concept="liA8E" id="341WClvYTZ1" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XSo" role="1bW2Oz">
                            <property role="TrG5h" value="f" />
                            <node concept="2jxLKc" id="5W7E4fV0XSp" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3_kTaI" id="341WClvYTZ4" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="341WClvYTZ5" role="3cqZAp">
                <node concept="3clFbS" id="341WClvYTZ6" role="3clFbx">
                  <node concept="3clFbF" id="341WClvYTZ7" role="3cqZAp">
                    <node concept="2OqwBi" id="341WClvYTZ8" role="3clFbG">
                      <node concept="2WthIp" id="341WClvYTZ9" role="2Oq$k0" />
                      <node concept="2XshWL" id="341WClvYTZa" role="2OqNvi">
                        <ref role="2WH_rO" node="341WClvYTWi" resolve="showNoBackupsAvailable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="341WClvYTZb" role="3clFbw">
                  <node concept="3cmrfG" id="341WClvYTZc" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="341WClvYTZd" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTBrE" role="2Oq$k0">
                      <ref role="3cqZAo" node="341WClvYTYE" resolve="zipNames" />
                    </node>
                    <node concept="1Rwk04" id="341WClvYTZf" role="2OqNvi" />
                  </node>
                </node>
                <node concept="9aQIb" id="341WClvYTZg" role="9aQIa">
                  <node concept="3clFbS" id="341WClvYTZh" role="9aQI4">
                    <node concept="3cpWs8" id="341WClvYTZi" role="3cqZAp">
                      <node concept="3cpWsn" id="341WClvYTZj" role="3cpWs9">
                        <property role="TrG5h" value="selectedIndex" />
                        <node concept="10Oyi0" id="341WClvYTZk" role="1tU5fm" />
                        <node concept="2YIFZM" id="341WClvYTZl" role="33vP2m">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showChooseDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon,java.lang.String[],java.lang.String)" resolve="showChooseDialog" />
                          <node concept="2OqwBi" id="341WClvYTZm" role="37wK5m">
                            <node concept="2WthIp" id="341WClvYTZn" role="2Oq$k0" />
                            <node concept="1DTwFV" id="341WClvYTZo" role="2OqNvi">
                              <ref role="2WH_rO" node="341WClvYTWt" resolve="project" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="341WClvYTZp" role="37wK5m">
                            <property role="Xl_RC" value="Choose merge backup file to attach" />
                          </node>
                          <node concept="Xl_RD" id="341WClvYTZq" role="37wK5m">
                            <property role="Xl_RC" value="Model Merge Problem" />
                          </node>
                          <node concept="2YIFZM" id="341WClvYTZr" role="37wK5m">
                            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                            <ref role="37wK5l" to="jkm4:~Messages.getQuestionIcon()" resolve="getQuestionIcon" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagT$WU" role="37wK5m">
                            <ref role="3cqZAo" node="341WClvYTYE" resolve="zipNames" />
                          </node>
                          <node concept="AH0OO" id="341WClvYTZt" role="37wK5m">
                            <node concept="3cmrfG" id="341WClvYTZu" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTz1D" role="AHHXb">
                              <ref role="3cqZAo" node="341WClvYTYE" resolve="zipNames" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="j0l9mMNL4U" role="3cqZAp">
                      <node concept="3clFbS" id="j0l9mMNL4V" role="3clFbx">
                        <node concept="3cpWs6" id="j0l9mMO5eW" role="3cqZAp" />
                      </node>
                      <node concept="3eOVzh" id="j0l9mMO5eS" role="3clFbw">
                        <node concept="3cmrfG" id="j0l9mMO5eV" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTzbq" role="3uHU7B">
                          <ref role="3cqZAo" node="341WClvYTZj" resolve="selectedIndex" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="341WClvYTZw" role="3cqZAp">
                      <node concept="2OqwBi" id="341WClvYTZx" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTAR_" role="2Oq$k0">
                          <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
                        </node>
                        <node concept="liA8E" id="341WClvYTZz" role="2OqNvi">
                          <ref role="37wK5l" to="qy69:~BlameDialog.addFile(java.io.File)" resolve="addFile" />
                          <node concept="2ShNRf" id="341WClvYTZ$" role="37wK5m">
                            <node concept="1pGfFk" id="341WClvYTZ_" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                              <node concept="37vLTw" id="3GM_nagTvLJ" role="37wK5m">
                                <ref role="3cqZAo" node="341WClvYTY1" resolve="backupDir" />
                              </node>
                              <node concept="AH0OO" id="341WClvYTZB" role="37wK5m">
                                <node concept="37vLTw" id="3GM_nagTw6b" role="AHEQo">
                                  <ref role="3cqZAo" node="341WClvYTZj" resolve="selectedIndex" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTyCY" role="AHHXb">
                                  <ref role="3cqZAo" node="341WClvYTYE" resolve="zipNames" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="341WClvYTZE" role="3cqZAp">
                      <node concept="2OqwBi" id="341WClvYTZF" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTrRU" role="2Oq$k0">
                          <ref role="3cqZAo" node="341WClvYTWy" resolve="blameDialog" />
                        </node>
                        <node concept="liA8E" id="341WClvYTZH" role="2OqNvi">
                          <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
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
    <node concept="2ScWuX" id="341WClvYTZI" role="tmbBb">
      <node concept="3clFbS" id="341WClvYTZJ" role="2VODD2">
        <node concept="1X3_iC" id="6zZtkNLgkOi" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="341WClvYTZK" role="8Wnug">
            <node concept="3cpWsn" id="341WClvYTZL" role="3cpWs9">
              <property role="TrG5h" value="mappings" />
              <node concept="_YKpA" id="341WClvYTZM" role="1tU5fm">
                <node concept="3uibUv" id="341WClvYTZN" role="_ZDj9">
                  <ref role="3uigEE" to="jlcu:~VcsDirectoryMapping" resolve="VcsDirectoryMapping" />
                </node>
              </node>
              <node concept="2OqwBi" id="341WClvYTZO" role="33vP2m">
                <node concept="2YIFZM" id="341WClvYTZP" role="2Oq$k0">
                  <ref role="1Pybhc" to="jlcu:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                  <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <node concept="2OqwBi" id="341WClvYTZQ" role="37wK5m">
                    <node concept="2WthIp" id="341WClvYTZR" role="2Oq$k0" />
                    <node concept="1DTwFV" id="341WClvYTZS" role="2OqNvi">
                      <ref role="2WH_rO" node="341WClvYTWt" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="341WClvYTZT" role="2OqNvi">
                  <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getDirectoryMappings()" resolve="getDirectoryMappings" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="6zZtkNLgkOj" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="341WClvYTZU" role="8Wnug">
            <node concept="2OqwBi" id="341WClvYTZV" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagT$9Z" role="2Oq$k0">
                <ref role="3cqZAo" node="341WClvYTZL" resolve="mappings" />
              </node>
              <node concept="2HwmR7" id="341WClvYTZX" role="2OqNvi">
                <node concept="1bVj0M" id="341WClvYTZY" role="23t8la">
                  <node concept="3clFbS" id="341WClvYTZZ" role="1bW5cS">
                    <node concept="3clFbF" id="341WClvYU00" role="3cqZAp">
                      <node concept="2OqwBi" id="341WClvYU01" role="3clFbG">
                        <node concept="2OqwBi" id="341WClvYU02" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgm7lu" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XSq" resolve="m" />
                          </node>
                          <node concept="liA8E" id="341WClvYU04" role="2OqNvi">
                            <ref role="37wK5l" to="jlcu:~VcsDirectoryMapping.getVcs()" resolve="getVcs" />
                          </node>
                        </node>
                        <node concept="17RvpY" id="341WClvYU05" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XSq" role="1bW2Oz">
                    <property role="TrG5h" value="m" />
                    <node concept="2jxLKc" id="5W7E4fV0XSr" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6zZtkNLgw3E" role="3cqZAp">
          <node concept="3clFbT" id="6zZtkNLgw3D" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="341WClvYU08">
    <property role="fJN8o" value="true" />
    <property role="1WHSii" value="Install custom merge driver for Git and custom diff3 for Subversion" />
    <property role="TrG5h" value="InstalVcsAddons" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Install MPS VCS Add-ons..." />
    <property role="3GE5qa" value="Actions" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="341WClvYU09" role="tncku">
      <node concept="3clFbS" id="341WClvYU0a" role="2VODD2">
        <node concept="3clFbF" id="341WClvYU0b" role="3cqZAp">
          <node concept="2YIFZM" id="341WClvYU0c" role="3clFbG">
            <ref role="37wK5l" to="80f9:3OxOldILLP6" resolve="installWhereNeeded" />
            <ref role="1Pybhc" to="80f9:3OxOldILH8I" resolve="MergeDriverInstaller" />
            <node concept="2OqwBi" id="341WClvYU0d" role="37wK5m">
              <node concept="2WthIp" id="341WClvYU0e" role="2Oq$k0" />
              <node concept="1DTwFV" id="341WClvYU0f" role="2OqNvi">
                <ref role="2WH_rO" node="341WClvYU0g" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="341WClvYU0g" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="341WClvYU0h" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="341WClvYU0i" role="tmbBb">
      <node concept="3clFbS" id="341WClvYU0j" role="2VODD2">
        <node concept="3clFbF" id="341WClvYU0k" role="3cqZAp">
          <node concept="2YIFZM" id="341WClvYU0l" role="3clFbG">
            <ref role="37wK5l" to="80f9:3OxOldILH8O" resolve="isApplicable" />
            <ref role="1Pybhc" to="80f9:3OxOldILH8I" resolve="MergeDriverInstaller" />
            <node concept="2OqwBi" id="341WClvYU0m" role="37wK5m">
              <node concept="2WthIp" id="341WClvYU0n" role="2Oq$k0" />
              <node concept="1DTwFV" id="341WClvYU0o" role="2OqNvi">
                <ref role="2WH_rO" node="341WClvYU0g" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3WCIgQv3c7T">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="Annotate" />
    <property role="2uzpH1" value="Annotate" />
    <property role="3GE5qa" value="Actions" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="3WCIgQv3c7U" role="tncku">
      <node concept="3clFbS" id="3WCIgQv3c7V" role="2VODD2">
        <node concept="3cpWs8" id="2Xa_rpYpsly" role="3cqZAp">
          <node concept="3cpWsn" id="2Xa_rpYpslz" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="2Xa_rpYpsl$" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="2Xa_rpYpsl_" role="33vP2m">
              <node concept="2WthIp" id="2Xa_rpYpslA" role="2Oq$k0" />
              <node concept="2XshWL" id="2Xa_rpYpslB" role="2OqNvi">
                <ref role="2WH_rO" node="10bCf_kmIM$" resolve="findEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="13$TqNLIgvg" role="3cqZAp">
          <node concept="3cpWsn" id="13$TqNLIgvh" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="13$TqNLIgvi" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="3V0wRzjTyTu" role="33vP2m">
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <node concept="37vLTw" id="2Xa_rpYpPye" role="37wK5m">
                <ref role="3cqZAo" node="2Xa_rpYpslz" resolve="component" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13$TqNLIgvl" role="3cqZAp">
          <node concept="3y3z36" id="13$TqNLIgvm" role="3clFbw">
            <node concept="37vLTw" id="13$TqNLIgvn" role="3uHU7B">
              <ref role="3cqZAo" node="13$TqNLIgvh" resolve="annotationColumn" />
            </node>
            <node concept="10Nm6u" id="13$TqNLIgvo" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="13$TqNLIgvp" role="3clFbx">
            <node concept="3clFbF" id="13$TqNLIgvs" role="3cqZAp">
              <node concept="2OqwBi" id="13$TqNLIgvt" role="3clFbG">
                <node concept="37vLTw" id="13$TqNLIgvu" role="2Oq$k0">
                  <ref role="3cqZAo" node="13$TqNLIgvh" resolve="annotationColumn" />
                </node>
                <node concept="liA8E" id="13$TqNLIgvv" role="2OqNvi">
                  <ref role="37wK5l" to="bvbc:3Htuv$d1QL9" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="13$TqNLIgvy" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSerkfQ" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSerkfR" role="3cpWs9">
            <property role="TrG5h" value="editedNode" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="P$ZiSerlCH" role="1tU5fm" />
            <node concept="2OqwBi" id="P$ZiSerkfS" role="33vP2m">
              <node concept="liA8E" id="P$ZiSerkfW" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
              <node concept="37vLTw" id="2Xa_rpYpQjw" role="2Oq$k0">
                <ref role="3cqZAo" node="2Xa_rpYpslz" resolve="component" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSerj3u" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSerj3v" role="3cpWs9">
            <property role="TrG5h" value="nh" />
            <node concept="3uibUv" id="P$ZiSerj3w" role="1tU5fm">
              <ref role="3uigEE" node="38wEix89a$D" resolve="NodeHistoryUtil" />
            </node>
            <node concept="2ShNRf" id="P$ZiSerj3x" role="33vP2m">
              <node concept="1pGfFk" id="P$ZiSerj3y" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="38wEix89d8J" resolve="NodeHistoryUtil" />
                <node concept="2OqwBi" id="P$ZiSerj3z" role="37wK5m">
                  <node concept="2WthIp" id="P$ZiSerj3$" role="2Oq$k0" />
                  <node concept="1DTwFV" id="P$ZiSerj3_" role="2OqNvi">
                    <ref role="2WH_rO" node="13$TqNLJqBK" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSerj3A" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSerj3B" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSerj3C" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSerj3v" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSerj3D" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSem1ir" resolve="initFileAndVcs" />
              <node concept="37vLTw" id="P$ZiSerj3E" role="37wK5m">
                <ref role="3cqZAo" node="P$ZiSerkfR" resolve="editedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSerrPx" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSersoT" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSerrPv" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSerj3v" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSert7b" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSeqRhX" resolve="runAnnotate" />
              <node concept="37vLTw" id="2Xa_rpYpRdA" role="37wK5m">
                <ref role="3cqZAo" node="2Xa_rpYpslz" resolve="component" />
              </node>
              <node concept="2OqwBi" id="P$ZiSeryTV" role="37wK5m">
                <node concept="2WthIp" id="P$ZiSeryTW" role="2Oq$k0" />
                <node concept="2XshWL" id="P$ZiSeryTX" role="2OqNvi">
                  <ref role="2WH_rO" node="1YeblkqU7a2" resolve="getAnnotateRootLock" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3WCIgQv3c81" role="1NuT2Z">
      <property role="TrG5h" value="editor" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
    </node>
    <node concept="1DS2jV" id="13$TqNLJqBK" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="13$TqNLJqBL" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="3WCIgQv3c83" role="tmbBb">
      <node concept="3clFbS" id="3WCIgQv3c84" role="2VODD2">
        <node concept="3cpWs8" id="2ukUXcwdXAW" role="3cqZAp">
          <node concept="3cpWsn" id="2ukUXcwdXAX" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="2ukUXcwdXs3" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="10bCf_kncfK" role="33vP2m">
              <node concept="2WthIp" id="10bCf_kncfN" role="2Oq$k0" />
              <node concept="2XshWL" id="10bCf_kncfP" role="2OqNvi">
                <ref role="2WH_rO" node="10bCf_kmIM$" resolve="findEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2$2IPPd1QMU" role="3cqZAp">
          <node concept="3y3z36" id="2$2IPPd1QMV" role="3clFbw">
            <node concept="10Nm6u" id="2$2IPPd1QMX" role="3uHU7w" />
            <node concept="2YIFZM" id="3V0wRzjTAoc" role="3uHU7B">
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <node concept="37vLTw" id="2ukUXcwdXB3" role="37wK5m">
                <ref role="3cqZAo" node="2ukUXcwdXAX" resolve="component" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2$2IPPd1QMY" role="3clFbx">
            <node concept="3cpWs6" id="2$2IPPd1QN7" role="3cqZAp">
              <node concept="3clFbT" id="2$2IPPd1QN8" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3_ALl2yyX30" role="3cqZAp">
          <node concept="3clFbS" id="3_ALl2yyX32" role="3clFbx">
            <node concept="3cpWs6" id="3_ALl2yyYDA" role="3cqZAp">
              <node concept="3clFbT" id="3_ALl2yyYTk" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="3_ALl2yyXRZ" role="3clFbw">
            <node concept="liA8E" id="3_ALl2yyYl7" role="2OqNvi">
              <ref role="37wK5l" to="j86o:~BackgroundableActionLock.isLocked()" resolve="isLocked" />
            </node>
            <node concept="2OqwBi" id="1YeblkqUbjB" role="2Oq$k0">
              <node concept="2WthIp" id="1YeblkqUbjE" role="2Oq$k0" />
              <node concept="2XshWL" id="1YeblkqUbjG" role="2OqNvi">
                <ref role="2WH_rO" node="1YeblkqU7a2" resolve="getAnnotateRootLock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSeq9pB" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSeq9pC" role="3cpWs9">
            <property role="TrG5h" value="editedNode" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="P$ZiSeqbj9" role="1tU5fm" />
            <node concept="2OqwBi" id="P$ZiSeq9pD" role="33vP2m">
              <node concept="2OqwBi" id="7k6bNyCD_Mw" role="2Oq$k0">
                <node concept="2OqwBi" id="7k6bNyCD_Mx" role="2Oq$k0">
                  <node concept="2WthIp" id="7k6bNyCD_My" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7k6bNyCD_Mz" role="2OqNvi">
                    <ref role="2WH_rO" node="5LmJNNlM0cE" resolve="context" />
                  </node>
                </node>
                <node concept="liA8E" id="7k6bNyCD_M$" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
              <node concept="liA8E" id="P$ZiSeq9pH" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSeq5uU" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSeq5uV" role="3cpWs9">
            <property role="TrG5h" value="nh" />
            <node concept="3uibUv" id="P$ZiSeq5eY" role="1tU5fm">
              <ref role="3uigEE" node="38wEix89a$D" resolve="NodeHistoryUtil" />
            </node>
            <node concept="2ShNRf" id="P$ZiSeq5uW" role="33vP2m">
              <node concept="1pGfFk" id="P$ZiSeq5uX" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="38wEix89d8J" resolve="NodeHistoryUtil" />
                <node concept="2OqwBi" id="P$ZiSeq5uY" role="37wK5m">
                  <node concept="2WthIp" id="P$ZiSeq5uZ" role="2Oq$k0" />
                  <node concept="1DTwFV" id="P$ZiSeq5v0" role="2OqNvi">
                    <ref role="2WH_rO" node="13$TqNLJqBK" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSeq6Yx" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSeq7Ah" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSeq6Yv" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSeq5uV" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSeq81P" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSem1ir" resolve="initFileAndVcs" />
              <node concept="37vLTw" id="P$ZiSeqh2H" role="37wK5m">
                <ref role="3cqZAo" node="P$ZiSeq9pC" resolve="editedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="P$ZiSeqij8" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSeqjWy" role="3cqZAk">
            <node concept="37vLTw" id="P$ZiSeqjfY" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSeq5uV" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSeqkN9" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSemqw9" resolve="isHistoryTracked" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="1YeblkqU7a2" role="32lrUH">
      <property role="TrG5h" value="getAnnotateRootLock" />
      <node concept="3uibUv" id="1YeblkqU7Zv" role="3clF45">
        <ref role="3uigEE" to="j86o:~BackgroundableActionLock" resolve="BackgroundableActionLock" />
      </node>
      <node concept="3clFbS" id="1YeblkqU7a4" role="3clF47">
        <node concept="3clFbF" id="1YeblkqU8n1" role="3cqZAp">
          <node concept="2YIFZM" id="1YeblkqU8n3" role="3clFbG">
            <ref role="1Pybhc" to="j86o:~BackgroundableActionLock" resolve="BackgroundableActionLock" />
            <ref role="37wK5l" to="j86o:~BackgroundableActionLock.getLock(com.intellij.openapi.project.Project,java.lang.Object...)" resolve="getLock" />
            <node concept="2OqwBi" id="1YeblkqU8n4" role="37wK5m">
              <node concept="2OqwBi" id="1YeblkqU8n5" role="2Oq$k0">
                <node concept="2WthIp" id="1YeblkqU8n6" role="2Oq$k0" />
                <node concept="1DTwFV" id="1YeblkqU8n7" role="2OqNvi">
                  <ref role="2WH_rO" node="13$TqNLJqBK" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="1YeblkqU8n8" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="Rm8GO" id="48Xq_bGvkh7" role="37wK5m">
              <ref role="Rm8GQ" to="j86o:~VcsBackgroundableActions.ANNOTATE" resolve="ANNOTATE" />
              <ref role="1Px2BO" to="j86o:~VcsBackgroundableActions" resolve="VcsBackgroundableActions" />
            </node>
            <node concept="2OqwBi" id="1YeblkqU8Y2" role="37wK5m">
              <node concept="2OqwBi" id="1YeblkqU8Y3" role="2Oq$k0">
                <node concept="2OqwBi" id="10bCf_kndj9" role="2Oq$k0">
                  <node concept="2WthIp" id="10bCf_kndjc" role="2Oq$k0" />
                  <node concept="2XshWL" id="10bCf_kndje" role="2OqNvi">
                    <ref role="2WH_rO" node="10bCf_kmIM$" resolve="findEditorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="1YeblkqU8Y7" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                </node>
              </node>
              <node concept="liA8E" id="1YeblkqU8Y8" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8Me5ME" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="10bCf_kmIM$" role="32lrUH">
      <property role="TrG5h" value="findEditorComponent" />
      <node concept="3uibUv" id="10bCf_kn7Ow" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="3clFbS" id="10bCf_kmIMA" role="3clF47">
        <node concept="3cpWs8" id="10bCf_kn8WA" role="3cqZAp">
          <node concept="3cpWsn" id="10bCf_kn8WB" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="10bCf_kn8Nk" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="10bCf_kn8WC" role="33vP2m">
              <node concept="2WthIp" id="10bCf_kn8WD" role="2Oq$k0" />
              <node concept="1DTwFV" id="10bCf_kn8WE" role="2OqNvi">
                <ref role="2WH_rO" node="3WCIgQv3c81" resolve="editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="10bCf_kn9sp" role="3cqZAp">
          <node concept="3clFbS" id="10bCf_kn9sq" role="3clFbx">
            <node concept="3cpWs8" id="10bCf_kn9sr" role="3cqZAp">
              <node concept="3cpWsn" id="10bCf_kn9ss" role="3cpWs9">
                <property role="TrG5h" value="editorComponent" />
                <node concept="3uibUv" id="10bCf_kn9st" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2OqwBi" id="10bCf_kn9su" role="33vP2m">
                  <node concept="2OqwBi" id="10bCf_kn9sv" role="2Oq$k0">
                    <node concept="2WthIp" id="10bCf_kn9sw" role="2Oq$k0" />
                    <node concept="1DTwFV" id="10bCf_kn9sx" role="2OqNvi">
                      <ref role="2WH_rO" node="5LmJNNlM0cE" resolve="context" />
                    </node>
                  </node>
                  <node concept="liA8E" id="10bCf_kn9sy" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="10bCf_kn9sz" role="3cqZAp">
              <node concept="37vLTI" id="10bCf_kn9s$" role="3clFbG">
                <node concept="1eOMI4" id="10bCf_kn9s_" role="37vLTx">
                  <node concept="10QFUN" id="10bCf_kn9sA" role="1eOMHV">
                    <node concept="3uibUv" id="10bCf_kn9sB" role="10QFUM">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                    <node concept="37vLTw" id="10bCf_kn9sC" role="10QFUP">
                      <ref role="3cqZAo" node="10bCf_kn9ss" resolve="editorComponent" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="10bCf_kn9sD" role="37vLTJ">
                  <ref role="3cqZAo" node="10bCf_kn8WB" resolve="component" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="10bCf_kn9sE" role="3clFbw">
            <node concept="10Nm6u" id="10bCf_kn9sF" role="3uHU7w" />
            <node concept="37vLTw" id="10bCf_kn9sG" role="3uHU7B">
              <ref role="3cqZAo" node="10bCf_kn8WB" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="10bCf_kna_m" role="3cqZAp">
          <node concept="37vLTw" id="10bCf_knbeT" role="3cqZAk">
            <ref role="3cqZAo" node="10bCf_kn8WB" resolve="component" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="10bCf_kmIMB" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="5LmJNNlM0cE" role="1NuT2Z">
      <property role="TrG5h" value="context" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CONTEXT" resolve="EDITOR_CONTEXT" />
      <node concept="1oajcY" id="5LmJNNlM0cF" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="3WCIgQv3c8a">
    <property role="TrG5h" value="AnnotateGroup" />
    <property role="3GE5qa" value="Groups" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="3WCIgQv3c8b" role="ftER_">
      <node concept="tCFHf" id="3WCIgQv3c8c" role="ftvYc">
        <ref role="tCJdB" node="3WCIgQv3c7T" resolve="Annotate" />
      </node>
    </node>
    <node concept="tT9cl" id="3WCIgQv3c8d" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:JQxM8nB4zE" resolve="EditorLeftPanelMenu" />
    </node>
  </node>
  <node concept="tC5Ba" id="7yFo2E9ZaLd">
    <property role="3GE5qa" value="Groups" />
    <property role="TrG5h" value="MPSGitFileActions" />
    <property role="3OnEW4" value="true" />
    <node concept="tT9cl" id="7yFo2E9ZaYH" role="2f5YQi">
      <ref role="tU$_T" node="7yFo2E9YwdC" resolve="IDEAGitFileActions" />
    </node>
    <node concept="ftmFs" id="7yFo2E9ZaYE" role="ftER_">
      <node concept="tCFHf" id="4LKtpFhIlVh" role="ftvYc">
        <ref role="tCJdB" node="7yFo2E9ZaYJ" resolve="ResolveNonconflictingChanges" />
      </node>
      <node concept="tCFHf" id="5$O_bu7vLHi" role="ftvYc">
        <ref role="tCJdB" node="5$O_bu7vnDK" resolve="ShowRootHistory" />
      </node>
      <node concept="tCFHf" id="5RSgT5FlnTD" role="ftvYc">
        <ref role="tCJdB" node="5RSgT5FiYVM" resolve="ShowNodeHistory" />
      </node>
    </node>
  </node>
  <node concept="1ESbSp" id="7yFo2E9YwdC">
    <property role="3GE5qa" value="Groups" />
    <property role="TrG5h" value="IDEAGitFileActions" />
    <node concept="ftmFs" id="7yFo2E9ZaKY" role="ftER_" />
    <node concept="Xl_RD" id="7yFo2E9ZaJO" role="3mKD$K">
      <property role="Xl_RC" value="Git.FileActions" />
    </node>
  </node>
  <node concept="sE7Ow" id="7yFo2E9ZaYJ">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="ResolveNonconflictingChanges" />
    <property role="2uzpH1" value="Try to resolve non-conflicting changes in MPS models" />
    <property role="72QZ$" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7yFo2E9ZbMd" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7yFo2E9ZbMe" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7yFo2E9ZaYK" role="tncku">
      <node concept="3clFbS" id="7yFo2E9ZaYL" role="2VODD2">
        <node concept="3cpWs8" id="27DL58Tyt9q" role="3cqZAp">
          <node concept="3cpWsn" id="27DL58Tyt9t" role="3cpWs9">
            <property role="TrG5h" value="conflictedModelFiles" />
            <node concept="2YIFZM" id="68MS4n2Ilaz" role="33vP2m">
              <ref role="37wK5l" to="qyr2:68MS4n2Ifb3" resolve="getConflictingModelFiles" />
              <ref role="1Pybhc" to="qyr2:68MS4n2I8HR" resolve="ConflictingModelsUtil" />
              <node concept="2OqwBi" id="68MS4n2Ip1R" role="37wK5m">
                <node concept="2OqwBi" id="68MS4n2ImNs" role="2Oq$k0">
                  <node concept="2WthIp" id="68MS4n2ImNv" role="2Oq$k0" />
                  <node concept="1DTwFV" id="68MS4n2ImNx" role="2OqNvi">
                    <ref role="2WH_rO" node="7yFo2E9ZbMd" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="68MS4n2IrzA" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="27DL58Tyt9m" role="1tU5fm">
              <node concept="3uibUv" id="27DL58TyuZA" role="_ZDj9">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7yFo2Ea0RmV" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomlc" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomld" role="1PaTwD">
              <property role="3oM_SC" value="merge" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomle" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomlf" role="1PaTwD">
              <property role="3oM_SC" value="git" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomlg" role="1PaTwD">
              <property role="3oM_SC" value="provider" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7yFo2Ea1dCW" role="3cqZAp">
          <node concept="3cpWsn" id="7yFo2Ea1dCX" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <node concept="3uibUv" id="7yFo2Ea1dCY" role="1tU5fm">
              <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
            </node>
            <node concept="2OqwBi" id="7yFo2Ea1ivE" role="33vP2m">
              <node concept="2YIFZM" id="7yFo2Ea1fRB" role="2Oq$k0">
                <ref role="1Pybhc" to="hr4p:~GitVcs" resolve="GitVcs" />
                <ref role="37wK5l" to="hr4p:~GitVcs.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <node concept="2OqwBi" id="7yFo2Ea1h4f" role="37wK5m">
                  <node concept="2OqwBi" id="7yFo2Ea1g3Q" role="2Oq$k0">
                    <node concept="2WthIp" id="7yFo2Ea1g3T" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7yFo2Ea1g3V" role="2OqNvi">
                      <ref role="2WH_rO" node="7yFo2E9ZbMd" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7yFo2Ea1iji" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7yFo2Ea1j7U" role="2OqNvi">
                <ref role="37wK5l" to="hr4p:~GitVcs.getMergeProvider()" resolve="getMergeProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6y9_CIdcHMZ" role="3cqZAp">
          <node concept="3cpWsn" id="6y9_CIdcHN0" role="3cpWs9">
            <property role="TrG5h" value="hasResolvableConflicts" />
            <node concept="10P_77" id="6y9_CIdcHML" role="1tU5fm" />
            <node concept="2YIFZM" id="6y9_CIdcHN1" role="33vP2m">
              <ref role="37wK5l" to="qyr2:68MS4n2NqGe" resolve="hasResolvableConflicts" />
              <ref role="1Pybhc" to="qyr2:68MS4n2I8HR" resolve="ConflictingModelsUtil" />
              <node concept="2OqwBi" id="6y9_CIdcHN2" role="37wK5m">
                <node concept="2OqwBi" id="6y9_CIdcHN3" role="2Oq$k0">
                  <node concept="2WthIp" id="6y9_CIdcHN4" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6y9_CIdcHN5" role="2OqNvi">
                    <ref role="2WH_rO" node="7yFo2E9ZbMd" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="6y9_CIdcHN6" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="6y9_CIdcHN7" role="37wK5m">
                <ref role="3cqZAo" node="7yFo2Ea1dCX" resolve="provider" />
              </node>
              <node concept="37vLTw" id="6y9_CIdcHN8" role="37wK5m">
                <ref role="3cqZAo" node="27DL58Tyt9t" resolve="conflictedModelFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6y9_CIdcA9S" role="3cqZAp">
          <node concept="3clFbS" id="6y9_CIdcA9U" role="3clFbx">
            <node concept="3clFbF" id="6y9_CIdcIZi" role="3cqZAp">
              <node concept="2YIFZM" id="6y9_CIdcJBX" role="3clFbG">
                <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showInfoMessage" />
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                <node concept="2OqwBi" id="6y9_CIdcJBY" role="37wK5m">
                  <node concept="2OqwBi" id="6y9_CIdcJBZ" role="2Oq$k0">
                    <node concept="2WthIp" id="6y9_CIdcJC0" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6y9_CIdcJC1" role="2OqNvi">
                      <ref role="2WH_rO" node="7yFo2E9ZbMd" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6y9_CIdcJC2" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6y9_CIdcJXe" role="37wK5m">
                  <property role="Xl_RC" value="No autoresolvable conflicts were found" />
                </node>
                <node concept="Xl_RD" id="6y9_CIdcJC4" role="37wK5m">
                  <property role="Xl_RC" value="Conflict Resolver" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6y9_CIdcJmj" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="6y9_CIdcIHa" role="3clFbw">
            <node concept="37vLTw" id="6y9_CIdcIHc" role="3fr31v">
              <ref role="3cqZAo" node="6y9_CIdcHN0" resolve="hasResolvableConflicts" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6y9_CIdc_fm" role="3cqZAp" />
        <node concept="3cpWs8" id="7yFo2Ea1kAj" role="3cqZAp">
          <node concept="3cpWsn" id="7yFo2Ea1kAk" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="7yFo2Ea1kAl" role="1tU5fm">
              <ref role="3uigEE" to="hlwo:~MergeSession" resolve="MergeSession" />
            </node>
            <node concept="3K4zz7" id="7yFo2Ea1mpT" role="33vP2m">
              <node concept="10Nm6u" id="7yFo2Ea1rb1" role="3K4GZi" />
              <node concept="2OqwBi" id="7yFo2Ea1mJr" role="3K4E3e">
                <node concept="1eOMI4" id="7yFo2Ea1mrF" role="2Oq$k0">
                  <node concept="10QFUN" id="7yFo2Ea1mrC" role="1eOMHV">
                    <node concept="3uibUv" id="7yFo2Ea1mDs" role="10QFUM">
                      <ref role="3uigEE" to="hlwo:~MergeProvider2" resolve="MergeProvider2" />
                    </node>
                    <node concept="37vLTw" id="7yFo2Ea1mEh" role="10QFUP">
                      <ref role="3cqZAo" node="7yFo2Ea1dCX" resolve="provider" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7yFo2Ea1nHR" role="2OqNvi">
                  <ref role="37wK5l" to="hlwo:~MergeProvider2.createMergeSession(java.util.List)" resolve="createMergeSession" />
                  <node concept="37vLTw" id="7yFo2Ea1nJ2" role="37wK5m">
                    <ref role="3cqZAo" node="27DL58Tyt9t" resolve="conflictedModelFiles" />
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="7yFo2Ea1lrq" role="3K4Cdx">
                <node concept="3uibUv" id="7yFo2Ea1lRl" role="2ZW6by">
                  <ref role="3uigEE" to="hlwo:~MergeProvider2" resolve="MergeProvider2" />
                </node>
                <node concept="37vLTw" id="7yFo2Ea1lnR" role="2ZW6bz">
                  <ref role="3cqZAo" node="7yFo2Ea1dCX" resolve="provider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7yFo2Ea1rfY" role="3cqZAp" />
        <node concept="3cpWs8" id="29lH0gw0EL0" role="3cqZAp">
          <node concept="3cpWsn" id="29lH0gw0EL1" role="3cpWs9">
            <property role="TrG5h" value="resolver" />
            <node concept="3uibUv" id="29lH0gw0EL2" role="1tU5fm">
              <ref role="3uigEE" to="qyr2:68MS4n2IA6m" resolve="ConflictingModelsUtil.ModelConflictResolver" />
            </node>
            <node concept="2YIFZM" id="29lH0gw0GbX" role="33vP2m">
              <ref role="37wK5l" to="qyr2:68MS4n2MKAn" resolve="getModelConflictResolverTask" />
              <ref role="1Pybhc" to="qyr2:68MS4n2I8HR" resolve="ConflictingModelsUtil" />
              <node concept="2OqwBi" id="29lH0gw0GbY" role="37wK5m">
                <node concept="2OqwBi" id="29lH0gw0GbZ" role="2Oq$k0">
                  <node concept="2WthIp" id="29lH0gw0Gc0" role="2Oq$k0" />
                  <node concept="1DTwFV" id="29lH0gw0Gc1" role="2OqNvi">
                    <ref role="2WH_rO" node="7yFo2E9ZbMd" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="29lH0gw0Gc2" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="29lH0gw0Gc3" role="37wK5m">
                <ref role="3cqZAo" node="7yFo2Ea1dCX" resolve="provider" />
              </node>
              <node concept="37vLTw" id="29lH0gw0Gc4" role="37wK5m">
                <ref role="3cqZAo" node="7yFo2Ea1kAk" resolve="session" />
              </node>
              <node concept="37vLTw" id="29lH0gw0Gc5" role="37wK5m">
                <ref role="3cqZAo" node="27DL58Tyt9t" resolve="conflictedModelFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68MS4n2MqhO" role="3cqZAp">
          <node concept="2OqwBi" id="68MS4n2MumT" role="3clFbG">
            <node concept="2YIFZM" id="68MS4n2Mt6y" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="68MS4n2Mw2u" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="37vLTw" id="29lH0gw0JFA" role="37wK5m">
                <ref role="3cqZAo" node="29lH0gw0EL1" resolve="resolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="29lH0gw0R4G" role="3cqZAp" />
        <node concept="3clFbJ" id="29lH0gw0K_$" role="3cqZAp">
          <node concept="3clFbS" id="29lH0gw0K_B" role="3clFbx">
            <node concept="3cpWs8" id="29lH0gvZB5c" role="3cqZAp">
              <node concept="3cpWsn" id="29lH0gvZB5d" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="17QB3L" id="29lH0gvZB5e" role="1tU5fm" />
                <node concept="Xl_RD" id="29lH0gvZB5f" role="33vP2m">
                  <property role="Xl_RC" value="Conflicts in the following model files were not autoresolved:\n" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="29lH0gvZB5g" role="3cqZAp">
              <node concept="2GrKxI" id="29lH0gvZB5h" role="2Gsz3X">
                <property role="TrG5h" value="file" />
              </node>
              <node concept="3clFbS" id="29lH0gvZB5i" role="2LFqv$">
                <node concept="3clFbF" id="29lH0gvZB5j" role="3cqZAp">
                  <node concept="d57v9" id="29lH0gvZB5k" role="3clFbG">
                    <node concept="3cpWs3" id="29lH0gvZB5l" role="37vLTx">
                      <node concept="Xl_RD" id="29lH0gvZB5m" role="3uHU7w">
                        <property role="Xl_RC" value="\n" />
                      </node>
                      <node concept="3cpWs3" id="3dMY8lFLtVz" role="3uHU7B">
                        <node concept="Xl_RD" id="3dMY8lFLu70" role="3uHU7B">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="2OqwBi" id="29lH0gvZB5n" role="3uHU7w">
                          <node concept="2GrUjf" id="29lH0gvZB5o" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="29lH0gvZB5h" resolve="file" />
                          </node>
                          <node concept="liA8E" id="29lH0gvZB5p" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="29lH0gvZB5q" role="37vLTJ">
                      <ref role="3cqZAo" node="29lH0gvZB5d" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="29lH0gw14U3" role="2GsD0m">
                <node concept="37vLTw" id="29lH0gw14U4" role="2Oq$k0">
                  <ref role="3cqZAo" node="29lH0gw0EL1" resolve="resolver" />
                </node>
                <node concept="liA8E" id="29lH0gw14U5" role="2OqNvi">
                  <ref role="37wK5l" to="qyr2:29lH0gvYgfx" resolve="getUnresolvedFiles" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3dMY8lFLvdL" role="3cqZAp">
              <node concept="d57v9" id="3dMY8lFLwgU" role="3clFbG">
                <node concept="3cpWs3" id="3dMY8lFLIeg" role="37vLTx">
                  <node concept="Xl_RD" id="3dMY8lFLIem" role="3uHU7B">
                    <property role="Xl_RC" value="This happens when you merge in models in an old persistence format and have not merged and re-generated all of their used languages." />
                  </node>
                  <node concept="Xl_RD" id="3dMY8lFLIeo" role="3uHU7w">
                    <property role="Xl_RC" value=" It is recommended to first merge and re-generate the used languages, and then try to auto resolve the conflicts again." />
                  </node>
                </node>
                <node concept="37vLTw" id="3dMY8lFLvdJ" role="37vLTJ">
                  <ref role="3cqZAo" node="29lH0gvZB5d" resolve="message" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="29lH0gw0YpC" role="3cqZAp">
              <node concept="2YIFZM" id="29lH0gw0ZUi" role="3clFbG">
                <ref role="37wK5l" to="jkm4:~Messages.showWarningDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showWarningDialog" />
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                <node concept="2OqwBi" id="29lH0gw11uI" role="37wK5m">
                  <node concept="2OqwBi" id="29lH0gw0ZUj" role="2Oq$k0">
                    <node concept="2WthIp" id="29lH0gw0ZUk" role="2Oq$k0" />
                    <node concept="1DTwFV" id="29lH0gw0ZUl" role="2OqNvi">
                      <ref role="2WH_rO" node="7yFo2E9ZbMd" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="29lH0gw139C" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="29lH0gw1aGM" role="37wK5m">
                  <ref role="3cqZAo" node="29lH0gvZB5d" resolve="message" />
                </node>
                <node concept="Xl_RD" id="29lH0gw0ZUn" role="37wK5m">
                  <property role="Xl_RC" value="Conflict Resolver" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="29lH0gw0MVf" role="3clFbw">
            <node concept="2OqwBi" id="29lH0gw0LuL" role="2Oq$k0">
              <node concept="37vLTw" id="29lH0gw0L1G" role="2Oq$k0">
                <ref role="3cqZAo" node="29lH0gw0EL1" resolve="resolver" />
              </node>
              <node concept="liA8E" id="29lH0gw0MxO" role="2OqNvi">
                <ref role="37wK5l" to="qyr2:29lH0gvYgfx" resolve="getUnresolvedFiles" />
              </node>
            </node>
            <node concept="3GX2aA" id="29lH0gw0R3b" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="nEmtK1VY8B">
    <property role="3GE5qa" value="Groups" />
    <property role="TrG5h" value="DiffEditorPopupGroup" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="nEmtK1W19E" role="ftER_">
      <node concept="tCFHf" id="nEmtK1W19U" role="ftvYc">
        <ref role="tCJdB" to="ekwn:3h8YwSwZlsY" resolve="PushEditorHints" />
      </node>
      <node concept="tCFHf" id="nEmtK1W19M" role="ftvYc">
        <ref role="tCJdB" to="ekwn:1XfowaweGRd" resolve="ShowRegularEditor" />
      </node>
      <node concept="tCFHf" id="nEmtK1W19H" role="ftvYc">
        <ref role="tCJdB" to="ekwn:5SnwAr0vAm_" resolve="ShowReflectiveEditor" />
      </node>
      <node concept="tCFHf" id="7prA6ZS4Q_B" role="ftvYc">
        <ref role="tCJdB" to="ekwn:1wo9YwOHLtB" resolve="ShowReflectiveEditorsForSubtree" />
      </node>
    </node>
    <node concept="tT9cl" id="nEmtK1ZLj8" role="2f5YQi">
      <ref role="tU$_T" node="3WCIgQv3c8a" resolve="AnnotateGroup" />
    </node>
  </node>
  <node concept="sE7Ow" id="5$O_bu7vnDK">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="ShowRootHistory" />
    <property role="2uzpH1" value="Show Root History" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="5$O_bu7vyh_" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5$O_bu7vyhA" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5$O_bu7vyFc" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="5$O_bu7vyFd" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5$O_bu7vnDL" role="tncku">
      <node concept="3clFbS" id="5$O_bu7vnDM" role="2VODD2">
        <node concept="3cpWs8" id="gkhJ4LtHv4" role="3cqZAp">
          <node concept="3cpWsn" id="gkhJ4LtHv5" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="P$ZiSepmiB" role="1tU5fm" />
            <node concept="2OqwBi" id="gkhJ4LtHv6" role="33vP2m">
              <node concept="2OqwBi" id="gkhJ4LtHv8" role="2Oq$k0">
                <node concept="2OqwBi" id="gkhJ4LtHv9" role="2Oq$k0">
                  <node concept="2WthIp" id="gkhJ4LtHva" role="2Oq$k0" />
                  <node concept="1DTwFV" id="gkhJ4LtHvb" role="2OqNvi">
                    <ref role="2WH_rO" node="5$O_bu7vyFc" resolve="component" />
                  </node>
                </node>
                <node concept="liA8E" id="1CL_qsJXg01" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                </node>
              </node>
              <node concept="liA8E" id="gkhJ4LtHve" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSepnf9" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSepnfa" role="3cpWs9">
            <property role="TrG5h" value="nh" />
            <node concept="3uibUv" id="P$ZiSepnfb" role="1tU5fm">
              <ref role="3uigEE" node="38wEix89a$D" resolve="NodeHistoryUtil" />
            </node>
            <node concept="2ShNRf" id="P$ZiSepnfc" role="33vP2m">
              <node concept="1pGfFk" id="P$ZiSepnfd" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="38wEix89d8J" resolve="NodeHistoryUtil" />
                <node concept="2OqwBi" id="P$ZiSepnfe" role="37wK5m">
                  <node concept="2WthIp" id="P$ZiSepnff" role="2Oq$k0" />
                  <node concept="1DTwFV" id="P$ZiSepnfg" role="2OqNvi">
                    <ref role="2WH_rO" node="5$O_bu7vyh_" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSepnfh" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSepnfi" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSepnfj" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSepnfa" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSepnfk" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSem1ir" resolve="initFileAndVcs" />
              <node concept="37vLTw" id="P$ZiSepoEW" role="37wK5m">
                <ref role="3cqZAo" node="gkhJ4LtHv5" resolve="containingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSepq4s" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSepq4t" role="3cpWs9">
            <property role="TrG5h" value="modelName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="P$ZiSepq4u" role="1tU5fm" />
            <node concept="2YIFZM" id="P$ZiSepq4v" role="33vP2m">
              <ref role="37wK5l" to="18ew:~NameUtil.compactModelName(org.jetbrains.mps.openapi.model.SModelReference)" resolve="compactModelName" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <node concept="2OqwBi" id="P$ZiSepq4w" role="37wK5m">
                <node concept="2JrnkZ" id="P$ZiSeq$sy" role="2Oq$k0">
                  <node concept="2OqwBi" id="P$ZiSeqynq" role="2JrQYb">
                    <node concept="37vLTw" id="P$ZiSeqxGF" role="2Oq$k0">
                      <ref role="3cqZAo" node="gkhJ4LtHv5" resolve="containingRoot" />
                    </node>
                    <node concept="I4A8Y" id="P$ZiSeqyYl" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="P$ZiSepq4$" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="DuTZ70QcTH" role="3cqZAp">
          <node concept="3cpWsn" id="DuTZ70QcTK" role="3cpWs9">
            <property role="TrG5h" value="dialogTitle" />
            <node concept="17QB3L" id="DuTZ70QcTF" role="1tU5fm" />
            <node concept="2OqwBi" id="P$ZiSepwMK" role="33vP2m">
              <node concept="Xl_RD" id="P$ZiSepuEy" role="2Oq$k0">
                <property role="Xl_RC" value="%s/%s" />
              </node>
              <node concept="2cAKMz" id="P$ZiSepzei" role="2OqNvi">
                <node concept="37vLTw" id="P$ZiSep$MJ" role="2cAKU6">
                  <ref role="3cqZAo" node="P$ZiSepq4t" resolve="modelName" />
                </node>
                <node concept="2OqwBi" id="P$ZiSep_5Y" role="2cAKU6">
                  <node concept="37vLTw" id="P$ZiSep$XR" role="2Oq$k0">
                    <ref role="3cqZAo" node="gkhJ4LtHv5" resolve="containingRoot" />
                  </node>
                  <node concept="2Iv5rx" id="P$ZiSep_gW" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38wEix8bryv" role="3cqZAp">
          <node concept="2OqwBi" id="38wEix8bsiq" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSepzHH" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSepnfa" resolve="nh" />
            </node>
            <node concept="liA8E" id="38wEix8bsF8" role="2OqNvi">
              <ref role="37wK5l" node="38wEix8aLlM" resolve="showNodeHistory" />
              <node concept="2OqwBi" id="P$ZiSepBKJ" role="37wK5m">
                <node concept="2JrnkZ" id="P$ZiSepByD" role="2Oq$k0">
                  <node concept="37vLTw" id="DuTZ70QbWb" role="2JrQYb">
                    <ref role="3cqZAo" node="gkhJ4LtHv5" resolve="containingRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="P$ZiSepC3g" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
              <node concept="37vLTw" id="DuTZ70Qgzw" role="37wK5m">
                <ref role="3cqZAo" node="DuTZ70QcTK" resolve="dialogTitle" />
              </node>
              <node concept="2YIFZM" id="1SqTYwM1ZeE" role="37wK5m">
                <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
                <node concept="Xl_RD" id="1SqTYwM1ZeF" role="37wK5m">
                  <property role="Xl_RC" value="vcs.show.root.history.compare.models" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5$O_bu7vAo0" role="tmbBb">
      <node concept="3clFbS" id="5$O_bu7vAo1" role="2VODD2">
        <node concept="3cpWs8" id="P$ZiSepaUq" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSepaUr" role="3cpWs9">
            <property role="TrG5h" value="editedNode" />
            <node concept="3Tqbb2" id="P$ZiSepbv4" role="1tU5fm" />
            <node concept="2OqwBi" id="P$ZiSepaUs" role="33vP2m">
              <node concept="2OqwBi" id="P$ZiSepaUt" role="2Oq$k0">
                <node concept="2WthIp" id="P$ZiSepaUu" role="2Oq$k0" />
                <node concept="1DTwFV" id="P$ZiSepaUv" role="2OqNvi">
                  <ref role="2WH_rO" node="5$O_bu7vyFc" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="P$ZiSepaUw" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSepa8d" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSepa8e" role="3cpWs9">
            <property role="TrG5h" value="nh" />
            <node concept="3uibUv" id="P$ZiSep9JQ" role="1tU5fm">
              <ref role="3uigEE" node="38wEix89a$D" resolve="NodeHistoryUtil" />
            </node>
            <node concept="2ShNRf" id="P$ZiSepa8f" role="33vP2m">
              <node concept="1pGfFk" id="P$ZiSepa8g" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="38wEix89d8J" resolve="NodeHistoryUtil" />
                <node concept="2OqwBi" id="P$ZiSepa8h" role="37wK5m">
                  <node concept="2WthIp" id="P$ZiSepa8i" role="2Oq$k0" />
                  <node concept="1DTwFV" id="P$ZiSepa8j" role="2OqNvi">
                    <ref role="2WH_rO" node="5$O_bu7vyh_" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSepceL" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSepd7e" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSepceJ" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSepa8e" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSepe5l" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSem1ir" resolve="initFileAndVcs" />
              <node concept="2OqwBi" id="P$ZiSepjUE" role="37wK5m">
                <node concept="37vLTw" id="P$ZiSepfO9" role="2Oq$k0">
                  <ref role="3cqZAo" node="P$ZiSepaUr" resolve="editedNode" />
                </node>
                <node concept="2Rxl7S" id="P$ZiSepl9s" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38wEix8bmSN" role="3cqZAp">
          <node concept="2OqwBi" id="38wEix8bmSO" role="3cqZAk">
            <node concept="37vLTw" id="P$ZiSepa8k" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSepa8e" resolve="nh" />
            </node>
            <node concept="liA8E" id="38wEix8bmSU" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSemqw9" resolve="isHistoryTracked" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5RSgT5FiYVM">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="ShowNodeHistory" />
    <property role="2uzpH1" value="Show Node History" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="5RSgT5FiYX8" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5RSgT5FiYX9" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="P$ZiSeoFR_" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="P$ZiSeoFRA" role="1B3o_S" />
      <node concept="1oajcY" id="P$ZiSeoFRB" role="1oa70y" />
      <node concept="3Tqbb2" id="P$ZiSeoFH5" role="1tU5fm" />
    </node>
    <node concept="tnohg" id="5RSgT5FiYXg" role="tncku">
      <node concept="3clFbS" id="5RSgT5FiYXh" role="2VODD2">
        <node concept="3cpWs8" id="5RSgT5FiYXN" role="3cqZAp">
          <node concept="3cpWsn" id="5RSgT5FiYXO" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="P$ZiSeobwh" role="1tU5fm" />
            <node concept="2OqwBi" id="P$ZiSeoL29" role="33vP2m">
              <node concept="2OqwBi" id="5RSgT5FiYXT" role="2Oq$k0">
                <node concept="2WthIp" id="5RSgT5FiYXU" role="2Oq$k0" />
                <node concept="3gHZIF" id="P$ZiSeoJvC" role="2OqNvi">
                  <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                </node>
              </node>
              <node concept="2Rxl7S" id="P$ZiSeoLmC" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSeo84P" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSeo84Q" role="3cpWs9">
            <property role="TrG5h" value="modelName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="P$ZiSeoa4r" role="1tU5fm" />
            <node concept="2YIFZM" id="P$ZiSeo84R" role="33vP2m">
              <ref role="37wK5l" to="18ew:~NameUtil.compactModelName(org.jetbrains.mps.openapi.model.SModelReference)" resolve="compactModelName" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <node concept="2OqwBi" id="P$ZiSeo84S" role="37wK5m">
                <node concept="2JrnkZ" id="P$ZiSeqCql" role="2Oq$k0">
                  <node concept="2OqwBi" id="P$ZiSeqBAW" role="2JrQYb">
                    <node concept="2OqwBi" id="P$ZiSeo84T" role="2Oq$k0">
                      <node concept="2WthIp" id="P$ZiSeo84U" role="2Oq$k0" />
                      <node concept="3gHZIF" id="P$ZiSeqBfH" role="2OqNvi">
                        <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                      </node>
                    </node>
                    <node concept="I4A8Y" id="P$ZiSeqC0$" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="P$ZiSeo84W" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSeoN2z" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSeoN2$" role="3cpWs9">
            <property role="TrG5h" value="fmt" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="P$ZiSeoMRG" role="1tU5fm" />
            <node concept="3K4zz7" id="P$ZiSeoOqt" role="33vP2m">
              <node concept="Xl_RD" id="P$ZiSeoN2_" role="3K4E3e">
                <property role="Xl_RC" value="%s/%s" />
              </node>
              <node concept="Xl_RD" id="P$ZiSeoOv0" role="3K4GZi">
                <property role="Xl_RC" value="%s/%s/%s" />
              </node>
              <node concept="3clFbC" id="P$ZiSeoVvZ" role="3K4Cdx">
                <node concept="37vLTw" id="P$ZiSeoVFy" role="3uHU7w">
                  <ref role="3cqZAo" node="5RSgT5FiYXO" resolve="containingRoot" />
                </node>
                <node concept="2OqwBi" id="P$ZiSeoU0d" role="3uHU7B">
                  <node concept="2WthIp" id="P$ZiSeoU0g" role="2Oq$k0" />
                  <node concept="3gHZIF" id="P$ZiSeoU0i" role="2OqNvi">
                    <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1rxFxvUM4JH" role="3cqZAp">
          <node concept="3cpWsn" id="1rxFxvUM4JK" role="3cpWs9">
            <property role="TrG5h" value="dialogTitle" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="1rxFxvUM4JF" role="1tU5fm" />
            <node concept="2OqwBi" id="P$ZiSeo6IU" role="33vP2m">
              <node concept="37vLTw" id="P$ZiSeoN2A" role="2Oq$k0">
                <ref role="3cqZAo" node="P$ZiSeoN2$" resolve="fmt" />
              </node>
              <node concept="2cAKMz" id="P$ZiSeo7ZO" role="2OqNvi">
                <node concept="37vLTw" id="P$ZiSeoaiG" role="2cAKU6">
                  <ref role="3cqZAo" node="P$ZiSeo84Q" resolve="modelName" />
                </node>
                <node concept="2OqwBi" id="P$ZiSeoaP3" role="2cAKU6">
                  <node concept="37vLTw" id="P$ZiSeoamr" role="2Oq$k0">
                    <ref role="3cqZAo" node="5RSgT5FiYXO" resolve="containingRoot" />
                  </node>
                  <node concept="2Iv5rx" id="P$ZiSeoMnv" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="P$ZiSeoMQ4" role="2cAKU6">
                  <node concept="2OqwBi" id="P$ZiSeoMv2" role="2Oq$k0">
                    <node concept="2WthIp" id="P$ZiSeoMv5" role="2Oq$k0" />
                    <node concept="3gHZIF" id="P$ZiSeoMv7" role="2OqNvi">
                      <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                    </node>
                  </node>
                  <node concept="2Iv5rx" id="P$ZiSeoMYc" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$ZiSeoR2z" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSeoR2$" role="3cpWs9">
            <property role="TrG5h" value="nh" />
            <node concept="3uibUv" id="P$ZiSeoQTZ" role="1tU5fm">
              <ref role="3uigEE" node="38wEix89a$D" resolve="NodeHistoryUtil" />
            </node>
            <node concept="2ShNRf" id="P$ZiSeoR2_" role="33vP2m">
              <node concept="1pGfFk" id="P$ZiSeoR2A" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="38wEix89d8J" resolve="NodeHistoryUtil" />
                <node concept="2OqwBi" id="P$ZiSeoR2B" role="37wK5m">
                  <node concept="2WthIp" id="P$ZiSeoR2C" role="2Oq$k0" />
                  <node concept="1DTwFV" id="P$ZiSeoR2D" role="2OqNvi">
                    <ref role="2WH_rO" node="5RSgT5FiYX8" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSeoRTG" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSeoSFJ" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSeoRTE" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSeoR2$" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSeoTA3" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSem1ir" resolve="initFileAndVcs" />
              <node concept="2OqwBi" id="P$ZiSeoTLO" role="37wK5m">
                <node concept="2WthIp" id="P$ZiSeoTLR" role="2Oq$k0" />
                <node concept="3gHZIF" id="P$ZiSeoTLT" role="2OqNvi">
                  <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38wEix8bfx3" role="3cqZAp">
          <node concept="2OqwBi" id="38wEix8bfx5" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSeoR2E" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSeoR2$" resolve="nh" />
            </node>
            <node concept="liA8E" id="38wEix8bfxb" role="2OqNvi">
              <ref role="37wK5l" node="38wEix8aLlM" resolve="showNodeHistory" />
              <node concept="2OqwBi" id="P$ZiSeoZz$" role="37wK5m">
                <node concept="2JrnkZ" id="P$ZiSeoZgL" role="2Oq$k0">
                  <node concept="2OqwBi" id="P$ZiSeoY4c" role="2JrQYb">
                    <node concept="2WthIp" id="P$ZiSeoY4f" role="2Oq$k0" />
                    <node concept="3gHZIF" id="P$ZiSeoY4h" role="2OqNvi">
                      <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="P$ZiSeoZTd" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
              <node concept="37vLTw" id="DuTZ70PwsM" role="37wK5m">
                <ref role="3cqZAo" node="1rxFxvUM4JK" resolve="dialogTitle" />
              </node>
              <node concept="3clFbT" id="DuTZ70Q9fa" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5RSgT5FiYZJ" role="tmbBb">
      <node concept="3clFbS" id="5RSgT5FiYZK" role="2VODD2">
        <node concept="3cpWs8" id="P$ZiSenNn0" role="3cqZAp">
          <node concept="3cpWsn" id="P$ZiSenNn1" role="3cpWs9">
            <property role="TrG5h" value="nh" />
            <node concept="3uibUv" id="P$ZiSen7Im" role="1tU5fm">
              <ref role="3uigEE" node="38wEix89a$D" resolve="NodeHistoryUtil" />
            </node>
            <node concept="2ShNRf" id="P$ZiSenNn2" role="33vP2m">
              <node concept="1pGfFk" id="P$ZiSenNn3" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="38wEix89d8J" resolve="NodeHistoryUtil" />
                <node concept="2OqwBi" id="P$ZiSenNn4" role="37wK5m">
                  <node concept="2WthIp" id="P$ZiSenNn5" role="2Oq$k0" />
                  <node concept="1DTwFV" id="P$ZiSenNn6" role="2OqNvi">
                    <ref role="2WH_rO" node="5RSgT5FiYX8" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSenOOA" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSenPR0" role="3clFbG">
            <node concept="37vLTw" id="P$ZiSenOO$" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSenNn1" resolve="nh" />
            </node>
            <node concept="liA8E" id="P$ZiSenQXD" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSem1ir" resolve="initFileAndVcs" />
              <node concept="2OqwBi" id="P$ZiSenXQw" role="37wK5m">
                <node concept="2WthIp" id="P$ZiSenXQz" role="2Oq$k0" />
                <node concept="3gHZIF" id="P$ZiSeoIvv" role="2OqNvi">
                  <ref role="2WH_rO" node="P$ZiSeoFR_" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="DuTZ70QIRT" role="3cqZAp">
          <node concept="2OqwBi" id="38wEix8bcg6" role="3cqZAk">
            <node concept="37vLTw" id="P$ZiSenNn7" role="2Oq$k0">
              <ref role="3cqZAo" node="P$ZiSenNn1" resolve="nh" />
            </node>
            <node concept="liA8E" id="38wEix8bcIb" role="2OqNvi">
              <ref role="37wK5l" node="P$ZiSemqw9" resolve="isHistoryTracked" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="yhzZL" id="7P7YAtPMDqq">
    <property role="TrG5h" value="MPSVcsGit" />
    <property role="BHXKe" value="${module}/../META-INF/" />
    <node concept="2zDL_w" id="7P7YAtPMDqr" role="yhzZR">
      <node concept="2zDL_x" id="7P7YAtPNblB" role="2zDL_s">
        <ref role="2zDL_u" node="7yFo2E9ZaLd" resolve="MPSGitFileActions" />
      </node>
    </node>
  </node>
  <node concept="1ESbSp" id="67kWSvhRIy3">
    <property role="TrG5h" value="IDEAVcsGroups" />
    <property role="3GE5qa" value="Groups" />
    <node concept="Xl_RD" id="67kWSvhRIy4" role="3mKD$K">
      <property role="Xl_RC" value="VcsGroups" />
    </node>
    <node concept="ftmFs" id="67kWSvhRIy5" role="ftER_" />
  </node>
  <node concept="sE7Ow" id="fiTISYRu9y">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="ShowDiffFromAnnotation" />
    <property role="2uzpH1" value="Show Diff" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <node concept="1DS2jV" id="fiTISYRPUI" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="fiTISYRPUJ" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="fiTISYRPUK" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="fiTISYRPUL" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="fiTISYRPba" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="etXRtFlSk8" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="fiTISYRPbc" role="3clF47">
        <node concept="3clFbF" id="fiTISYRPbd" role="3cqZAp">
          <node concept="2YIFZM" id="fiTISYRPbe" role="3clFbG">
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <node concept="2OqwBi" id="fiTISYRPbf" role="37wK5m">
              <node concept="2WthIp" id="fiTISYRPbg" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOv8i" role="2OqNvi">
                <ref role="2WH_rO" node="fiTISYRPUI" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="fiTISYRPbi" role="37wK5m">
              <node concept="2WthIp" id="fiTISYRPbj" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOvhU" role="2OqNvi">
                <ref role="2WH_rO" node="fiTISYRPUK" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="fiTISYRPbl" role="1B3o_S" />
      <node concept="2AHcQZ" id="fiTISYRPbm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="tnohg" id="fiTISYRu9z" role="tncku">
      <node concept="3clFbS" id="fiTISYRu9$" role="2VODD2">
        <node concept="3cpWs8" id="jTLJ_ayia1" role="3cqZAp">
          <node concept="3cpWsn" id="jTLJ_ayia2" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlSzW" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="jTLJ_ayia4" role="33vP2m">
              <node concept="2WthIp" id="jTLJ_ayia5" role="2Oq$k0" />
              <node concept="2XshWL" id="4_oGy7zOuil" role="2OqNvi">
                <ref role="2WH_rO" node="fiTISYRPba" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="jTLJ_ayia7" role="3cqZAp">
          <node concept="3cpWsn" id="jTLJ_ayia8" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="jTLJ_ayia9" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="jTLJ_ayiaa" role="33vP2m">
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <node concept="2OqwBi" id="jTLJ_ayiab" role="37wK5m">
                <node concept="2WthIp" id="jTLJ_ayiac" role="2Oq$k0" />
                <node concept="1DTwFV" id="4_oGy7zOulA" role="2OqNvi">
                  <ref role="2WH_rO" node="fiTISYRPUI" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="jTLJ_ayiae" role="3cqZAp">
          <node concept="3clFbS" id="jTLJ_ayiaf" role="3clFbx">
            <node concept="3cpWs6" id="jTLJ_ayiag" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="jTLJ_ayiah" role="3clFbw">
            <node concept="3clFbC" id="jTLJ_ayiai" role="3uHU7B">
              <node concept="10Nm6u" id="jTLJ_ayiaj" role="3uHU7w" />
              <node concept="37vLTw" id="4_oGy7zOunk" role="3uHU7B">
                <ref role="3cqZAo" node="jTLJ_ayia8" resolve="annotationColumn" />
              </node>
            </node>
            <node concept="3clFbC" id="jTLJ_ayial" role="3uHU7w">
              <node concept="10Nm6u" id="jTLJ_ayiam" role="3uHU7w" />
              <node concept="37vLTw" id="4_oGy7zOupS" role="3uHU7B">
                <ref role="3cqZAo" node="jTLJ_ayia2" resolve="cellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jTLJ_ayiao" role="3cqZAp">
          <node concept="2OqwBi" id="jTLJ_ayiap" role="3clFbG">
            <node concept="2OqwBi" id="jTLJ_ayiaq" role="2Oq$k0">
              <node concept="37vLTw" id="4_oGy7zOuss" role="2Oq$k0">
                <ref role="3cqZAo" node="jTLJ_ayia8" resolve="annotationColumn" />
              </node>
              <node concept="liA8E" id="jTLJ_ayias" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:51QsBmumgLR" resolve="getEditorAnnotation" />
              </node>
            </node>
            <node concept="liA8E" id="jTLJ_ayiat" role="2OqNvi">
              <ref role="37wK5l" to="bvbc:jTLJ_ak$$y" resolve="showDiff" />
              <node concept="2OqwBi" id="jTLJ_ayiav" role="37wK5m">
                <node concept="37vLTw" id="4_oGy7zOuxo" role="2Oq$k0">
                  <ref role="3cqZAo" node="jTLJ_ayia2" resolve="cellMessage" />
                </node>
                <node concept="liA8E" id="jTLJ_ayiax" role="2OqNvi">
                  <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2D243O$sxwE" role="tmbBb">
      <node concept="3clFbS" id="2D243O$sxwF" role="2VODD2">
        <node concept="3clFbF" id="2D243O$sxIB" role="3cqZAp">
          <node concept="2OqwBi" id="2D243O$sxIC" role="3clFbG">
            <node concept="2OqwBi" id="2D243O$sxID" role="2Oq$k0">
              <node concept="tl45R" id="2D243O$sxIE" role="2Oq$k0" />
              <node concept="liA8E" id="2D243O$sxIF" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2D243O$sxIG" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="jTLJ_avohU" role="37wK5m">
                <ref role="1Pybhc" to="1wbl:~ActionsBundle" resolve="ActionsBundle" />
                <ref role="37wK5l" to="1wbl:~ActionsBundle.actionText(java.lang.String)" resolve="actionText" />
                <node concept="10M0yZ" id="jTLJ_avohV" role="37wK5m">
                  <ref role="3cqZAo" to="qkt:~IdeActions.ACTION_SHOW_DIFF_COMMON" resolve="ACTION_SHOW_DIFF_COMMON" />
                  <ref role="1PxDUh" to="qkt:~IdeActions" resolve="IdeActions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2D243O$sxIJ" role="3cqZAp">
          <node concept="1rXfSq" id="2D243O$sxIK" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="2D243O$sxIL" role="37wK5m">
              <node concept="tl45R" id="2D243O$sxIM" role="2Oq$k0" />
              <node concept="liA8E" id="2D243O$sxIN" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3y3z36" id="2D243O$sxIO" role="37wK5m">
              <node concept="10Nm6u" id="2D243O$sxIP" role="3uHU7w" />
              <node concept="2OqwBi" id="2D243O$sxIQ" role="3uHU7B">
                <node concept="2WthIp" id="2D243O$sxIR" role="2Oq$k0" />
                <node concept="2XshWL" id="2D243O$sxIS" role="2OqNvi">
                  <ref role="2WH_rO" node="fiTISYRPba" resolve="getCellMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBg" role="3Uehp1">
      <node concept="10M0yZ" id="3zdyGKLANI1" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Diff" resolve="Diff" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1Xv6sND20Bj">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="CopyRevisionNumber" />
    <property role="2uzpH1" value="Copy Revision Number" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <property role="1WHSii" value="Copy revision number" />
    <node concept="2XrIbr" id="4eJXCVM8jNM" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="etXRtFlMkP" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="4eJXCVM8jNO" role="3clF47">
        <node concept="3clFbF" id="4eJXCVM9FB0" role="3cqZAp">
          <node concept="2YIFZM" id="4_oGy7zOnP_" role="3clFbG">
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <node concept="2OqwBi" id="4_oGy7zOnPA" role="37wK5m">
              <node concept="2WthIp" id="4_oGy7zOnPB" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOocn" role="2OqNvi">
                <ref role="2WH_rO" node="6gRlhLgnCqV" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="4_oGy7zOnPD" role="37wK5m">
              <node concept="2WthIp" id="4_oGy7zOnPE" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOokE" role="2OqNvi">
                <ref role="2WH_rO" node="6gRlhLgnCL3" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4eJXCVM8lwT" role="1B3o_S" />
      <node concept="2AHcQZ" id="4eJXCVM8lEp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="1DS2jV" id="6gRlhLgnCqV" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="6gRlhLgnCqW" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6gRlhLgnCL3" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6gRlhLgnCL4" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1Xv6sND20Bk" role="tncku">
      <node concept="3clFbS" id="1Xv6sND20Bl" role="2VODD2">
        <node concept="3cpWs8" id="4eJXCVM8j3g" role="3cqZAp">
          <node concept="3cpWsn" id="4eJXCVM8j3h" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlMzm" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="4eJXCVM9HnI" role="33vP2m">
              <node concept="2WthIp" id="4eJXCVM9HnL" role="2Oq$k0" />
              <node concept="2XshWL" id="4_oGy7zOniC" role="2OqNvi">
                <ref role="2WH_rO" node="4eJXCVM8jNM" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4eJXCVM8pDh" role="3cqZAp">
          <node concept="3clFbS" id="4eJXCVM8pDj" role="3clFbx">
            <node concept="3cpWs6" id="4eJXCVM8qqt" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4eJXCVM8qbC" role="3clFbw">
            <node concept="10Nm6u" id="4eJXCVM8qgX" role="3uHU7w" />
            <node concept="37vLTw" id="4_oGy7zOnk0" role="3uHU7B">
              <ref role="3cqZAo" node="4eJXCVM8j3h" resolve="cellMessage" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4zPruQLukD2" role="3cqZAp">
          <node concept="3cpWsn" id="4zPruQLukD3" role="3cpWs9">
            <property role="TrG5h" value="revisionAsString" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="4zPruQLukD4" role="1tU5fm" />
            <node concept="2OqwBi" id="4zPruQLukD5" role="33vP2m">
              <node concept="2OqwBi" id="4zPruQLukD6" role="2Oq$k0">
                <node concept="liA8E" id="1QlAFX5V6Z4" role="2OqNvi">
                  <ref role="37wK5l" to="yah1:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
                </node>
                <node concept="2OqwBi" id="1QlAFX5V6gz" role="2Oq$k0">
                  <node concept="liA8E" id="1QlAFX5V6zP" role="2OqNvi">
                    <ref role="37wK5l" to="5p6x:6wgNI6tC_ug" resolve="getRevision" />
                  </node>
                  <node concept="2OqwBi" id="4eJXCVM8qzG" role="2Oq$k0">
                    <node concept="37vLTw" id="4_oGy7zOnnL" role="2Oq$k0">
                      <ref role="3cqZAo" node="4eJXCVM8j3h" resolve="cellMessage" />
                    </node>
                    <node concept="liA8E" id="4eJXCVM8qLQ" role="2OqNvi">
                      <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4zPruQLukDb" role="2OqNvi">
                <ref role="37wK5l" to="yah1:~VcsRevisionNumber.asString()" resolve="asString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4zPruQLukDc" role="3cqZAp">
          <node concept="2OqwBi" id="4zPruQLukDd" role="3clFbG">
            <node concept="2YIFZM" id="4zPruQLukDe" role="2Oq$k0">
              <ref role="37wK5l" to="jbqa:~CopyPasteManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="jbqa:~CopyPasteManager" resolve="CopyPasteManager" />
            </node>
            <node concept="liA8E" id="4zPruQLukDf" role="2OqNvi">
              <ref role="37wK5l" to="jbqa:~CopyPasteManager.setContents(java.awt.datatransfer.Transferable)" resolve="setContents" />
              <node concept="2ShNRf" id="4zPruQLukDg" role="37wK5m">
                <node concept="1pGfFk" id="4zPruQLukDh" role="2ShVmc">
                  <ref role="37wK5l" to="g1qu:~TextTransferable.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="TextTransferable" />
                  <node concept="37vLTw" id="4_oGy7zOnq0" role="37wK5m">
                    <ref role="3cqZAo" node="4zPruQLukD3" resolve="revisionAsString" />
                  </node>
                  <node concept="37vLTw" id="4_oGy7zOnwM" role="37wK5m">
                    <ref role="3cqZAo" node="4zPruQLukD3" resolve="revisionAsString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2BuYHhJnjhd" role="tmbBb">
      <node concept="3clFbS" id="2BuYHhJnjhe" role="2VODD2">
        <node concept="3clFbF" id="2BuYHhJnzgo" role="3cqZAp">
          <node concept="2OqwBi" id="2BuYHhJnzBW" role="3clFbG">
            <node concept="2OqwBi" id="2BuYHhJnzsF" role="2Oq$k0">
              <node concept="tl45R" id="2BuYHhJnzgn" role="2Oq$k0" />
              <node concept="liA8E" id="2BuYHhJnzuZ" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2BuYHhJnzPy" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.util.function.Supplier)" resolve="setText" />
              <node concept="2YIFZM" id="54exbsqibTw" role="37wK5m">
                <ref role="37wK5l" to="jlcu:~VcsBundle.messagePointer(java.lang.String,java.lang.Object...)" resolve="messagePointer" />
                <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                <node concept="Xl_RD" id="54exbsqiccU" role="37wK5m">
                  <property role="Xl_RC" value="copy.revision.number.action" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2BuYHhJnjyF" role="3cqZAp">
          <node concept="1rXfSq" id="2BuYHhJnjyE" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="2BuYHhJnjJa" role="37wK5m">
              <node concept="tl45R" id="2BuYHhJnjzm" role="2Oq$k0" />
              <node concept="liA8E" id="2BuYHhJnk8I" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="1Wc70l" id="1BKxgOUmAsT" role="37wK5m">
              <node concept="3fqX7Q" id="1BKxgOUnpUY" role="3uHU7w">
                <node concept="2OqwBi" id="1BKxgOUnpV0" role="3fr31v">
                  <node concept="2OqwBi" id="1BKxgOUnpV1" role="2Oq$k0">
                    <node concept="2OqwBi" id="1BKxgOUnpV2" role="2Oq$k0">
                      <node concept="2WthIp" id="1BKxgOUnpV3" role="2Oq$k0" />
                      <node concept="2XshWL" id="1BKxgOUnpV4" role="2OqNvi">
                        <ref role="2WH_rO" node="4eJXCVM8jNM" resolve="getCellMessage" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1BKxgOUnpV5" role="2OqNvi">
                      <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1BKxgOUnpV6" role="2OqNvi">
                    <ref role="37wK5l" to="5p6x:6STmDFFaSyK" resolve="isLocalRevision" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2BuYHhJnkOv" role="3uHU7B">
                <node concept="2OqwBi" id="2BuYHhJnkpi" role="3uHU7B">
                  <node concept="2WthIp" id="2BuYHhJnkac" role="2Oq$k0" />
                  <node concept="2XshWL" id="2BuYHhJnkGi" role="2OqNvi">
                    <ref role="2WH_rO" node="4eJXCVM8jNM" resolve="getCellMessage" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2BuYHhJnkTi" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBh" role="3Uehp1">
      <node concept="10M0yZ" id="3zdyGKLAAk6" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Copy" resolve="Copy" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3Y7DjknpGkp">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="ShowAffectedFiles" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <property role="2uzpH1" value="Show All Affected Files" />
    <property role="1WHSii" value="Show all affected files" />
    <node concept="1DS2jV" id="3Y7DjknpKpN" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="3Y7DjknpKpO" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3Y7DjknpKpP" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3Y7DjknpKpQ" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="3Y7DjknpJwX" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="etXRtFlRrP" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="3Y7DjknpJwZ" role="3clF47">
        <node concept="3clFbF" id="3Y7DjknpJx0" role="3cqZAp">
          <node concept="2YIFZM" id="3Y7DjknpJx1" role="3clFbG">
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <node concept="2OqwBi" id="3Y7DjknpJx2" role="37wK5m">
              <node concept="2WthIp" id="3Y7DjknpJx3" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOsXP" role="2OqNvi">
                <ref role="2WH_rO" node="3Y7DjknpKpN" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="3Y7DjknpJx5" role="37wK5m">
              <node concept="2WthIp" id="3Y7DjknpJx6" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOt82" role="2OqNvi">
                <ref role="2WH_rO" node="3Y7DjknpKpP" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3Y7DjknpJx8" role="1B3o_S" />
      <node concept="2AHcQZ" id="3Y7DjknpJx9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="tnohg" id="3Y7DjknpGkq" role="tncku">
      <node concept="3clFbS" id="3Y7DjknpGkr" role="2VODD2">
        <node concept="3cpWs8" id="3Y7Djknq1Cr" role="3cqZAp">
          <node concept="3cpWsn" id="3Y7Djknq1Cs" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlRGi" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="3Y7Djknq1Cu" role="33vP2m">
              <node concept="2WthIp" id="3Y7Djknq1Cv" role="2Oq$k0" />
              <node concept="2XshWL" id="4_oGy7zOs6G" role="2OqNvi">
                <ref role="2WH_rO" node="3Y7DjknpJwX" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Y7DjknqLCw" role="3cqZAp">
          <node concept="3cpWsn" id="3Y7DjknqLCx" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="3Y7DjknqLCy" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="4_oGy7zOsaa" role="33vP2m">
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <node concept="2OqwBi" id="4_oGy7zOsab" role="37wK5m">
                <node concept="2WthIp" id="4_oGy7zOsac" role="2Oq$k0" />
                <node concept="1DTwFV" id="4_oGy7zOsdK" role="2OqNvi">
                  <ref role="2WH_rO" node="3Y7DjknpKpN" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3Y7Djknq1Cx" role="3cqZAp">
          <node concept="3clFbS" id="3Y7Djknq1Cy" role="3clFbx">
            <node concept="3cpWs6" id="3Y7Djknq1Cz" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="3Y7DjknqVJ6" role="3clFbw">
            <node concept="3clFbC" id="3Y7DjknqWhG" role="3uHU7B">
              <node concept="10Nm6u" id="3Y7DjknqWrS" role="3uHU7w" />
              <node concept="37vLTw" id="4_oGy7zOsfC" role="3uHU7B">
                <ref role="3cqZAo" node="3Y7DjknqLCx" resolve="annotationColumn" />
              </node>
            </node>
            <node concept="3clFbC" id="3Y7Djknq1C$" role="3uHU7w">
              <node concept="10Nm6u" id="3Y7Djknq1C_" role="3uHU7w" />
              <node concept="37vLTw" id="4_oGy7zOsis" role="3uHU7B">
                <ref role="3cqZAo" node="3Y7Djknq1Cs" resolve="cellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y7DjknqM$N" role="3cqZAp">
          <node concept="2OqwBi" id="3Y7DjknqNan" role="3clFbG">
            <node concept="2OqwBi" id="3Y7DjknqMIN" role="2Oq$k0">
              <node concept="37vLTw" id="4_oGy7zOsl6" role="2Oq$k0">
                <ref role="3cqZAo" node="3Y7DjknqLCx" resolve="annotationColumn" />
              </node>
              <node concept="liA8E" id="3Y7DjknqMYq" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:51QsBmumgLR" resolve="getEditorAnnotation" />
              </node>
            </node>
            <node concept="liA8E" id="3Y7DjknqNOz" role="2OqNvi">
              <ref role="37wK5l" to="bvbc:CLCVuHrauP" resolve="showPathsAffectedByRevision" />
              <node concept="2OqwBi" id="1QlAFX5V9CJ" role="37wK5m">
                <node concept="liA8E" id="1QlAFX5V9UM" role="2OqNvi">
                  <ref role="37wK5l" to="5p6x:6wgNI6tC_ug" resolve="getRevision" />
                </node>
                <node concept="2OqwBi" id="3Y7DjknqTHH" role="2Oq$k0">
                  <node concept="37vLTw" id="4_oGy7zOsoJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Y7Djknq1Cs" resolve="cellMessage" />
                  </node>
                  <node concept="liA8E" id="3Y7DjknqTHJ" role="2OqNvi">
                    <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2D243O$s708" role="tmbBb">
      <node concept="3clFbS" id="2D243O$s709" role="2VODD2">
        <node concept="3clFbF" id="2D243O$s7eE" role="3cqZAp">
          <node concept="2OqwBi" id="2D243O$s7eF" role="3clFbG">
            <node concept="2OqwBi" id="2D243O$s7eG" role="2Oq$k0">
              <node concept="tl45R" id="2D243O$s7eH" role="2Oq$k0" />
              <node concept="liA8E" id="2D243O$s7eI" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2D243O$s7eJ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="Xl_RD" id="2D243O$sw7k" role="37wK5m">
                <property role="Xl_RC" value="Show All Affected Files" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2D243O$s7eM" role="3cqZAp">
          <node concept="1rXfSq" id="2D243O$s7eN" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="2D243O$s7eO" role="37wK5m">
              <node concept="tl45R" id="2D243O$s7eP" role="2Oq$k0" />
              <node concept="liA8E" id="2D243O$s7eQ" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="1Wc70l" id="1BKxgOUnV3Y" role="37wK5m">
              <node concept="3fqX7Q" id="1BKxgOUnY5a" role="3uHU7w">
                <node concept="2OqwBi" id="1BKxgOUnY5c" role="3fr31v">
                  <node concept="2OqwBi" id="1BKxgOUnY5d" role="2Oq$k0">
                    <node concept="2OqwBi" id="1BKxgOUnY5e" role="2Oq$k0">
                      <node concept="2WthIp" id="1BKxgOUnY5f" role="2Oq$k0" />
                      <node concept="2XshWL" id="1BKxgOUnY5g" role="2OqNvi">
                        <ref role="2WH_rO" node="3Y7DjknpJwX" resolve="getCellMessage" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1BKxgOUnY5h" role="2OqNvi">
                      <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1BKxgOUnY5i" role="2OqNvi">
                    <ref role="37wK5l" to="5p6x:6STmDFFaSyK" resolve="isLocalRevision" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2D243O$s7eR" role="3uHU7B">
                <node concept="2OqwBi" id="2D243O$s7eT" role="3uHU7B">
                  <node concept="2WthIp" id="2D243O$s7eU" role="2Oq$k0" />
                  <node concept="2XshWL" id="2D243O$s7eV" role="2OqNvi">
                    <ref role="2WH_rO" node="3Y7DjknpJwX" resolve="getCellMessage" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2D243O$s7eS" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBi" role="3Uehp1">
      <node concept="10M0yZ" id="3zdyGKLAU0A" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.ListChanges" resolve="ListChanges" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2Qdh779$bbR">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="AnnotatePreviousRevision" />
    <property role="2uzpH1" value="Annotate Previous Revision" />
    <property role="1WHSii" value="Show all affected files" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="2Qdh779$bbS" role="1NuT2Z">
      <property role="TrG5h" value="editor" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="2Qdh779$bbT" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2Qdh779$bbU" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="2Qdh779$bbV" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="2Qdh779$bc2" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="etXRtFlOlS" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="2Qdh779$bc4" role="3clF47">
        <node concept="3clFbF" id="2Qdh779$bc5" role="3cqZAp">
          <node concept="2YIFZM" id="414Ozk3WMx" role="3clFbG">
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <node concept="2OqwBi" id="414Ozk3WMy" role="37wK5m">
              <node concept="2WthIp" id="414Ozk3WMz" role="2Oq$k0" />
              <node concept="1DTwFV" id="414Ozk3WUh" role="2OqNvi">
                <ref role="2WH_rO" node="2Qdh779$bbS" resolve="editor" />
              </node>
            </node>
            <node concept="2OqwBi" id="414Ozk3WM_" role="37wK5m">
              <node concept="2WthIp" id="414Ozk3WMA" role="2Oq$k0" />
              <node concept="1DTwFV" id="414Ozk3X3e" role="2OqNvi">
                <ref role="2WH_rO" node="2Qdh779$bbU" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2Qdh779$bcd" role="1B3o_S" />
      <node concept="2AHcQZ" id="2Qdh779$bce" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="tnohg" id="2Qdh779$bcf" role="tncku">
      <node concept="3clFbS" id="2Qdh779$bcg" role="2VODD2">
        <node concept="3cpWs8" id="2Qdh779$bch" role="3cqZAp">
          <node concept="3cpWsn" id="2Qdh779$bci" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlOIt" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="2Qdh779$bck" role="33vP2m">
              <node concept="2WthIp" id="2Qdh779$bcl" role="2Oq$k0" />
              <node concept="2XshWL" id="414Ozk3Xkd" role="2OqNvi">
                <ref role="2WH_rO" node="2Qdh779$bc2" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Qdh779$bcn" role="3cqZAp">
          <node concept="3cpWsn" id="2Qdh779$bco" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="2Qdh779$bcp" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="414Ozk415T" role="33vP2m">
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <node concept="2OqwBi" id="414Ozk415U" role="37wK5m">
                <node concept="2WthIp" id="414Ozk415V" role="2Oq$k0" />
                <node concept="1DTwFV" id="414Ozk415W" role="2OqNvi">
                  <ref role="2WH_rO" node="2Qdh779$bbS" resolve="editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Qdh779$bcu" role="3cqZAp">
          <node concept="3clFbS" id="2Qdh779$bcv" role="3clFbx">
            <node concept="3cpWs6" id="2Qdh779$bcw" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="2Qdh779$bcx" role="3clFbw">
            <node concept="3clFbC" id="2Qdh779$bcy" role="3uHU7B">
              <node concept="10Nm6u" id="2Qdh779$bcz" role="3uHU7w" />
              <node concept="37vLTw" id="414Ozk3XwI" role="3uHU7B">
                <ref role="3cqZAo" node="2Qdh779$bco" resolve="annotationColumn" />
              </node>
            </node>
            <node concept="3clFbC" id="2Qdh779$bc_" role="3uHU7w">
              <node concept="10Nm6u" id="2Qdh779$bcA" role="3uHU7w" />
              <node concept="37vLTw" id="414Ozk3XNL" role="3uHU7B">
                <ref role="3cqZAo" node="2Qdh779$bci" resolve="cellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Qdh779$bcO" role="3cqZAp">
          <node concept="3cpWsn" id="2Qdh779$bcP" role="3cpWs9">
            <property role="TrG5h" value="commitsGraphNode" />
            <node concept="3uibUv" id="2Qdh779$bcQ" role="1tU5fm">
              <ref role="3uigEE" to="5p6x:6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
            <node concept="2OqwBi" id="2Qdh779$bcR" role="33vP2m">
              <node concept="37vLTw" id="414Ozk3Y5i" role="2Oq$k0">
                <ref role="3cqZAo" node="2Qdh779$bci" resolve="cellMessage" />
              </node>
              <node concept="liA8E" id="2Qdh779$bcT" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6PVY$JZgUpf" role="3cqZAp">
          <node concept="3clFbS" id="6PVY$JZgUph" role="3clFbx">
            <node concept="3cpWs6" id="6PVY$JZgX52" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6PVY$JZgVRe" role="3clFbw">
            <node concept="2OqwBi" id="6PVY$JZgUHq" role="2Oq$k0">
              <node concept="37vLTw" id="6PVY$JZgUxZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2Qdh779$bcP" resolve="commitsGraphNode" />
              </node>
              <node concept="liA8E" id="1MsUFH6ajFs" role="2OqNvi">
                <ref role="37wK5l" to="5p6x:1MsUFH695KS" resolve="getParentsWithRoot" />
              </node>
            </node>
            <node concept="1v1jN8" id="6PVY$JZgWVb" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7T1TnycwqIM" role="3cqZAp">
          <node concept="2OqwBi" id="7T1TnycwrHC" role="3clFbG">
            <node concept="2OqwBi" id="7T1Tnycwr6G" role="2Oq$k0">
              <node concept="37vLTw" id="7T1TnycwqIK" role="2Oq$k0">
                <ref role="3cqZAo" node="2Qdh779$bco" resolve="annotationColumn" />
              </node>
              <node concept="liA8E" id="7T1Tnycwrxd" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:51QsBmumgLR" resolve="getEditorAnnotation" />
              </node>
            </node>
            <node concept="liA8E" id="7T1Tnycwsur" role="2OqNvi">
              <ref role="37wK5l" to="bvbc:7GdQgoXwclr" resolve="annotateRevision" />
              <node concept="2OqwBi" id="7T1TnycwsGF" role="37wK5m">
                <node concept="2OqwBi" id="7T1TnycwsGG" role="2Oq$k0">
                  <node concept="2OqwBi" id="7T1TnycwsGH" role="2Oq$k0">
                    <node concept="37vLTw" id="7T1TnycwsGI" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Qdh779$bcP" resolve="commitsGraphNode" />
                    </node>
                    <node concept="liA8E" id="1MsUFH6ao66" role="2OqNvi">
                      <ref role="37wK5l" to="5p6x:1MsUFH695KS" resolve="getParentsWithRoot" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="7T1TnycwsGK" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="7T1TnycwsGL" role="2OqNvi">
                  <ref role="37wK5l" to="5p6x:6wgNI6tC_ug" resolve="getRevision" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2Qdh779$bgy" role="tmbBb">
      <node concept="3clFbS" id="2Qdh779$bgz" role="2VODD2">
        <node concept="3cpWs8" id="7yb$P2D0IKM" role="3cqZAp">
          <node concept="3cpWsn" id="7yb$P2D0IKN" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlP9A" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="7yb$P2D0IKP" role="33vP2m">
              <node concept="2WthIp" id="7yb$P2D0IKQ" role="2Oq$k0" />
              <node concept="2XshWL" id="7yb$P2D0IKR" role="2OqNvi">
                <ref role="2WH_rO" node="2Qdh779$bc2" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Rx1KtaNKGx" role="3cqZAp">
          <node concept="2OqwBi" id="2Rx1KtaNKGy" role="3clFbG">
            <node concept="2OqwBi" id="2Rx1KtaNKGz" role="2Oq$k0">
              <node concept="tl45R" id="2Rx1KtaNKG$" role="2Oq$k0" />
              <node concept="liA8E" id="2Rx1KtaNKG_" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2Rx1KtaNKGA" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.util.function.Supplier)" resolve="setText" />
              <node concept="2YIFZM" id="2Rx1KtaNKGB" role="37wK5m">
                <ref role="37wK5l" to="jlcu:~VcsBundle.messagePointer(java.lang.String,java.lang.Object...)" resolve="messagePointer" />
                <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                <node concept="Xl_RD" id="2Rx1KtaNKGC" role="37wK5m">
                  <property role="Xl_RC" value="action.annotate.previous.revision.text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Rx1KtaNKGD" role="3cqZAp">
          <node concept="2OqwBi" id="2Rx1KtaNKGE" role="3clFbG">
            <node concept="2OqwBi" id="2Rx1KtaNKGF" role="2Oq$k0">
              <node concept="tl45R" id="2Rx1KtaNKGG" role="2Oq$k0" />
              <node concept="liA8E" id="2Rx1KtaNKGH" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2Rx1KtaNKGI" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setDescription(java.util.function.Supplier)" resolve="setDescription" />
              <node concept="2YIFZM" id="2Rx1KtaNKGJ" role="37wK5m">
                <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                <ref role="37wK5l" to="jlcu:~VcsBundle.messagePointer(java.lang.String,java.lang.Object...)" resolve="messagePointer" />
                <node concept="Xl_RD" id="2Rx1KtaNKGK" role="37wK5m">
                  <property role="Xl_RC" value="action.annotate.successor.selected.revision.in.new.tab.description" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Qdh779$bgF" role="3cqZAp">
          <node concept="1rXfSq" id="2Qdh779$bgG" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="2Qdh779$bgH" role="37wK5m">
              <node concept="tl45R" id="2Qdh779$bgI" role="2Oq$k0" />
              <node concept="liA8E" id="2Qdh779$bgJ" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3y3z36" id="6J0tOMlKCV0" role="37wK5m">
              <node concept="37vLTw" id="6J0tOMlKCU1" role="3uHU7B">
                <ref role="3cqZAo" node="7yb$P2D0IKN" resolve="cellMessage" />
              </node>
              <node concept="10Nm6u" id="6J0tOMlKCU0" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="rIMoekNIIU" role="3cqZAp">
          <node concept="3clFbS" id="rIMoekNIIW" role="3clFbx">
            <node concept="3clFbF" id="rIMoekNGz9" role="3cqZAp">
              <node concept="2OqwBi" id="rIMoekNHsz" role="3clFbG">
                <node concept="2OqwBi" id="rIMoekNGS2" role="2Oq$k0">
                  <node concept="tl45R" id="rIMoekNGz8" role="2Oq$k0" />
                  <node concept="liA8E" id="rIMoekNHjA" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="rIMoekNHTM" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                  <node concept="2OqwBi" id="rIMoekNHZf" role="37wK5m">
                    <node concept="2OqwBi" id="rIMoekNHZg" role="2Oq$k0">
                      <node concept="liA8E" id="1MsUFH6aizX" role="2OqNvi">
                        <ref role="37wK5l" to="5p6x:1MsUFH695KS" resolve="getParentsWithRoot" />
                      </node>
                      <node concept="2OqwBi" id="rIMoekNJa3" role="2Oq$k0">
                        <node concept="37vLTw" id="rIMoekNJa4" role="2Oq$k0">
                          <ref role="3cqZAo" node="7yb$P2D0IKN" resolve="cellMessage" />
                        </node>
                        <node concept="liA8E" id="rIMoekNJa5" role="2OqNvi">
                          <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="3GX2aA" id="rIMoekNIrH" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6J0tOMlKCMr" role="3clFbw">
            <node concept="37vLTw" id="6J0tOMlKCJ8" role="3uHU7B">
              <ref role="3cqZAo" node="7yb$P2D0IKN" resolve="cellMessage" />
            </node>
            <node concept="10Nm6u" id="6J0tOMlKCJ7" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBj" role="3Uehp1">
      <node concept="10M0yZ" id="2Qdh779$Zkw" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Annotate" resolve="Annotate" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="1Xv6sND1SvM">
    <property role="3GE5qa" value="Groups" />
    <property role="TrG5h" value="AnnotatedCellGroup" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="1Xv6sND20DA" role="ftER_">
      <node concept="tCFHf" id="4_oGy7zOvpk" role="ftvYc">
        <ref role="tCJdB" node="fiTISYRu9y" resolve="ShowDiffFromAnnotation" />
      </node>
      <node concept="tCFHf" id="4_oGy7zOvpq" role="ftvYc">
        <ref role="tCJdB" node="3Y7DjknpGkp" resolve="ShowAffectedFiles" />
      </node>
      <node concept="tCFHf" id="4_oGy7zOvpw" role="ftvYc">
        <ref role="tCJdB" node="1Xv6sND20Bj" resolve="CopyRevisionNumber" />
      </node>
      <node concept="tCFHf" id="4_oGy7zOvpA" role="ftvYc">
        <ref role="tCJdB" node="3V0wRzjRD1c" resolve="GitShowCommitInLog" />
      </node>
      <node concept="tCFHf" id="6PVY$JZgZet" role="ftvYc">
        <ref role="tCJdB" node="6PVY$JZgRbf" resolve="AnnotateRevision" />
      </node>
      <node concept="tCFHf" id="2Qdh779$UEU" role="ftvYc">
        <ref role="tCJdB" node="2Qdh779$bbR" resolve="AnnotatePreviousRevision" />
      </node>
      <node concept="tCFHf" id="1YQ$Agpy6zG" role="ftvYc">
        <ref role="tCJdB" node="1YQ$Agpgz3w" resolve="HideRevision" />
      </node>
    </node>
    <node concept="tT9cl" id="1Xv6sND23T8" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
      <ref role="2f8Tey" to="ekwn:6hBJ1S4$w8a" resolve="annotatedCell" />
    </node>
  </node>
  <node concept="sE7Ow" id="3V0wRzjRD1c">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="GitShowCommitInLog" />
    <property role="2uzpH1" value="Show in Git Log" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <property role="1WHSii" value="Show in git log" />
    <node concept="1DS2jV" id="3V0wRzjRRFT" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="3V0wRzjRRFU" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3V0wRzjRSeM" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3V0wRzjRSeN" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3V0wRzjTW4O" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="3V0wRzjTW4P" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="3V0wRzjRJPv" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="etXRtFlQlf" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="3V0wRzjRJPx" role="3clF47">
        <node concept="3clFbF" id="3V0wRzjRJPy" role="3cqZAp">
          <node concept="2YIFZM" id="3V0wRzjRJPz" role="3clFbG">
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <node concept="2OqwBi" id="3V0wRzjRJP$" role="37wK5m">
              <node concept="2WthIp" id="3V0wRzjRJP_" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOr5G" role="2OqNvi">
                <ref role="2WH_rO" node="3V0wRzjRRFT" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="3V0wRzjRJPB" role="37wK5m">
              <node concept="2WthIp" id="3V0wRzjRJPC" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOr06" role="2OqNvi">
                <ref role="2WH_rO" node="3V0wRzjRSeM" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3V0wRzjRJPE" role="1B3o_S" />
      <node concept="2AHcQZ" id="3V0wRzjRJPF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2XrIbr" id="2D243O$rMgf" role="32lrUH">
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="2D243O$rZfF" role="3clF45" />
      <node concept="3clFbS" id="2D243O$rMgh" role="3clF47">
        <node concept="3clFbJ" id="2D243O$rZlY" role="3cqZAp">
          <node concept="3clFbS" id="2D243O$rZlZ" role="3clFbx">
            <node concept="3cpWs6" id="2D243O$rZm0" role="3cqZAp">
              <node concept="3clFbT" id="2D243O$rZm1" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2D243O$rZm2" role="3clFbw">
            <node concept="2OqwBi" id="2D243O$rZm3" role="3uHU7B">
              <node concept="2WthIp" id="2D243O$rZm4" role="2Oq$k0" />
              <node concept="2XshWL" id="2D243O$rZm5" role="2OqNvi">
                <ref role="2WH_rO" node="3V0wRzjRJPv" resolve="getCellMessage" />
              </node>
            </node>
            <node concept="10Nm6u" id="2D243O$rZm6" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbJ" id="1BKxgOUnDKw" role="3cqZAp">
          <node concept="3clFbS" id="1BKxgOUnDKy" role="3clFbx">
            <node concept="3cpWs6" id="1BKxgOUnH0S" role="3cqZAp">
              <node concept="3clFbT" id="1BKxgOUnH95" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="1BKxgOUnFUH" role="3clFbw">
            <node concept="2OqwBi" id="1BKxgOUnFc$" role="2Oq$k0">
              <node concept="2OqwBi" id="1BKxgOUnEeY" role="2Oq$k0">
                <node concept="2WthIp" id="1BKxgOUnDV1" role="2Oq$k0" />
                <node concept="2XshWL" id="1BKxgOUnELb" role="2OqNvi">
                  <ref role="2WH_rO" node="3V0wRzjRJPv" resolve="getCellMessage" />
                </node>
              </node>
              <node concept="liA8E" id="1BKxgOUnFFm" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
              </node>
            </node>
            <node concept="liA8E" id="1BKxgOUnGqS" role="2OqNvi">
              <ref role="37wK5l" to="5p6x:6STmDFFaSyK" resolve="isLocalRevision" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2D243O$rZm7" role="3cqZAp">
          <node concept="3cpWsn" id="2D243O$rZm8" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="2D243O$rZm9" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="2D243O$rZma" role="33vP2m">
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <node concept="2OqwBi" id="2D243O$rZmb" role="37wK5m">
                <node concept="2WthIp" id="2D243O$rZmc" role="2Oq$k0" />
                <node concept="1DTwFV" id="2D243O$rZmd" role="2OqNvi">
                  <ref role="2WH_rO" node="3V0wRzjRRFT" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2D243O$rZme" role="3cqZAp">
          <node concept="3clFbS" id="2D243O$rZmf" role="3clFbx">
            <node concept="3cpWs6" id="2D243O$rZmg" role="3cqZAp">
              <node concept="3clFbT" id="2D243O$rZmh" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2D243O$rZmi" role="3clFbw">
            <node concept="10Nm6u" id="2D243O$rZmj" role="3uHU7w" />
            <node concept="37vLTw" id="2D243O$rZmk" role="3uHU7B">
              <ref role="3cqZAo" node="2D243O$rZm8" resolve="annotationColumn" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2D243O$rZml" role="3cqZAp">
          <node concept="2OqwBi" id="2D243O$rZmm" role="3cqZAk">
            <node concept="2OqwBi" id="2D243O$rZmn" role="2Oq$k0">
              <node concept="37vLTw" id="2D243O$rZmo" role="2Oq$k0">
                <ref role="3cqZAo" node="2D243O$rZm8" resolve="annotationColumn" />
              </node>
              <node concept="liA8E" id="2D243O$rZmp" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:51QsBmumgLR" resolve="getEditorAnnotation" />
              </node>
            </node>
            <node concept="liA8E" id="2D243O$rZmq" role="2OqNvi">
              <ref role="37wK5l" to="bvbc:10YBiB19SOH" resolve="isGit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8Me5MF" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="3V0wRzjRD1d" role="tncku">
      <node concept="3clFbS" id="3V0wRzjRD1e" role="2VODD2">
        <node concept="3cpWs8" id="3V0wRzjS9Km" role="3cqZAp">
          <node concept="3cpWsn" id="3V0wRzjS9Kn" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlQBr" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="3V0wRzjS9Kp" role="33vP2m">
              <node concept="2WthIp" id="3V0wRzjS9Kq" role="2Oq$k0" />
              <node concept="2XshWL" id="4_oGy7zOpM_" role="2OqNvi">
                <ref role="2WH_rO" node="3V0wRzjRJPv" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3V0wRzjS9Ks" role="3cqZAp">
          <node concept="3clFbS" id="3V0wRzjS9Kt" role="3clFbx">
            <node concept="3cpWs6" id="3V0wRzjS9Ku" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3V0wRzjS9Kv" role="3clFbw">
            <node concept="10Nm6u" id="3V0wRzjS9Kw" role="3uHU7w" />
            <node concept="37vLTw" id="4_oGy7zOpOH" role="3uHU7B">
              <ref role="3cqZAo" node="3V0wRzjS9Kn" resolve="cellMessage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9ijxdb3CHs" role="3cqZAp">
          <node concept="2YIFZM" id="9ijxdb3D4H" role="3clFbG">
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <ref role="37wK5l" node="9ijxdaXUnE" resolve="showCommitInGitLog" />
            <node concept="2OqwBi" id="9ijxdb3DeM" role="37wK5m">
              <node concept="2OqwBi" id="9ijxdb3DeN" role="2Oq$k0">
                <node concept="37vLTw" id="4_oGy7zOqei" role="2Oq$k0">
                  <ref role="3cqZAo" node="3V0wRzjS9Kn" resolve="cellMessage" />
                </node>
                <node concept="liA8E" id="9ijxdb3DeP" role="2OqNvi">
                  <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                </node>
              </node>
              <node concept="liA8E" id="9ijxdb3DeQ" role="2OqNvi">
                <ref role="37wK5l" to="5p6x:6wgNI6tC_ug" resolve="getRevision" />
              </node>
            </node>
            <node concept="2OqwBi" id="9ijxdb3DC3" role="37wK5m">
              <node concept="2WthIp" id="9ijxdb3DlF" role="2Oq$k0" />
              <node concept="1DTwFV" id="4_oGy7zOq7t" role="2OqNvi">
                <ref role="2WH_rO" node="3V0wRzjTW4O" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2D243O$rLyL" role="tmbBb">
      <node concept="3clFbS" id="2D243O$rLyM" role="2VODD2">
        <node concept="3clFbF" id="2D243O$s1Fs" role="3cqZAp">
          <node concept="2OqwBi" id="2D243O$s2pj" role="3clFbG">
            <node concept="2OqwBi" id="2D243O$s2cv" role="2Oq$k0">
              <node concept="tl45R" id="2D243O$s20F" role="2Oq$k0" />
              <node concept="liA8E" id="2D243O$s2gm" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2D243O$s2A$" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.util.function.Supplier)" resolve="setText" />
              <node concept="2YIFZM" id="9ijxdaZCbY" role="37wK5m">
                <ref role="37wK5l" to="yrtf:~GitBundle.messagePointer(java.lang.String,java.lang.Object...)" resolve="messagePointer" />
                <ref role="1Pybhc" to="yrtf:~GitBundle" resolve="GitBundle" />
                <node concept="Xl_RD" id="9ijxdaZCbZ" role="37wK5m">
                  <property role="Xl_RC" value="vcs.history.action.gitlog" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2D243O$s0eM" role="3cqZAp">
          <node concept="1rXfSq" id="2D243O$s0eN" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="2D243O$s0eO" role="37wK5m">
              <node concept="tl45R" id="2D243O$s165" role="2Oq$k0" />
              <node concept="liA8E" id="2D243O$s1kL" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="2OqwBi" id="2D243O$s0Al" role="37wK5m">
              <node concept="2WthIp" id="2D243O$s0n7" role="2Oq$k0" />
              <node concept="2XshWL" id="2D243O$s0Vk" role="2OqNvi">
                <ref role="2WH_rO" node="2D243O$rMgf" resolve="isApplicable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6PVY$JZgRbf">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="AnnotateRevision" />
    <property role="2uzpH1" value="Annotate Revision" />
    <property role="1WHSii" value="Show all affected files" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="6PVY$JZgRbg" role="1NuT2Z">
      <property role="TrG5h" value="editor" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="6PVY$JZgRbh" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6PVY$JZgRbi" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6PVY$JZgRbj" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="6PVY$JZgRbm" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="etXRtFlNhh" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="6PVY$JZgRbo" role="3clF47">
        <node concept="3clFbF" id="6PVY$JZgRbp" role="3cqZAp">
          <node concept="2YIFZM" id="6PVY$JZgRbq" role="3clFbG">
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <node concept="2OqwBi" id="6PVY$JZgRbr" role="37wK5m">
              <node concept="2WthIp" id="6PVY$JZgRbs" role="2Oq$k0" />
              <node concept="1DTwFV" id="6PVY$JZgRbt" role="2OqNvi">
                <ref role="2WH_rO" node="6PVY$JZgRbg" resolve="editor" />
              </node>
            </node>
            <node concept="2OqwBi" id="6PVY$JZgRbu" role="37wK5m">
              <node concept="2WthIp" id="6PVY$JZgRbv" role="2Oq$k0" />
              <node concept="1DTwFV" id="6PVY$JZgRbw" role="2OqNvi">
                <ref role="2WH_rO" node="6PVY$JZgRbi" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6PVY$JZgRbx" role="1B3o_S" />
      <node concept="2AHcQZ" id="6PVY$JZgRby" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="tnohg" id="6PVY$JZgRbz" role="tncku">
      <node concept="3clFbS" id="6PVY$JZgRb$" role="2VODD2">
        <node concept="3cpWs8" id="6PVY$JZgRb_" role="3cqZAp">
          <node concept="3cpWsn" id="6PVY$JZgRbA" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="etXRtFlNxI" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="6PVY$JZgRbC" role="33vP2m">
              <node concept="2WthIp" id="6PVY$JZgRbD" role="2Oq$k0" />
              <node concept="2XshWL" id="6PVY$JZgRbE" role="2OqNvi">
                <ref role="2WH_rO" node="6PVY$JZgRbm" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6PVY$JZgRbF" role="3cqZAp">
          <node concept="3cpWsn" id="6PVY$JZgRbG" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="6PVY$JZgRbH" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="6PVY$JZgRbI" role="33vP2m">
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <node concept="2OqwBi" id="6PVY$JZgRbJ" role="37wK5m">
                <node concept="2WthIp" id="6PVY$JZgRbK" role="2Oq$k0" />
                <node concept="1DTwFV" id="6PVY$JZgRbL" role="2OqNvi">
                  <ref role="2WH_rO" node="6PVY$JZgRbg" resolve="editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6PVY$JZgRbM" role="3cqZAp">
          <node concept="3clFbS" id="6PVY$JZgRbN" role="3clFbx">
            <node concept="3cpWs6" id="6PVY$JZgRbO" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="6PVY$JZgRbP" role="3clFbw">
            <node concept="3clFbC" id="6PVY$JZgRbQ" role="3uHU7B">
              <node concept="10Nm6u" id="6PVY$JZgRbR" role="3uHU7w" />
              <node concept="37vLTw" id="6PVY$JZgRbS" role="3uHU7B">
                <ref role="3cqZAo" node="6PVY$JZgRbG" resolve="annotationColumn" />
              </node>
            </node>
            <node concept="3clFbC" id="6PVY$JZgRbT" role="3uHU7w">
              <node concept="10Nm6u" id="6PVY$JZgRbU" role="3uHU7w" />
              <node concept="37vLTw" id="6PVY$JZgRbV" role="3uHU7B">
                <ref role="3cqZAo" node="6PVY$JZgRbA" resolve="cellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7T1TnycvDvp" role="3cqZAp">
          <node concept="2OqwBi" id="7T1TnycvErj" role="3clFbG">
            <node concept="2OqwBi" id="7T1TnycvDO_" role="2Oq$k0">
              <node concept="37vLTw" id="7T1TnycvDvn" role="2Oq$k0">
                <ref role="3cqZAo" node="6PVY$JZgRbG" resolve="annotationColumn" />
              </node>
              <node concept="liA8E" id="7T1TnycvEeS" role="2OqNvi">
                <ref role="37wK5l" to="bvbc:51QsBmumgLR" resolve="getEditorAnnotation" />
              </node>
            </node>
            <node concept="liA8E" id="7T1TnycvF7r" role="2OqNvi">
              <ref role="37wK5l" to="bvbc:7GdQgoXwclr" resolve="annotateRevision" />
              <node concept="2OqwBi" id="7T1TnycvFvn" role="37wK5m">
                <node concept="2OqwBi" id="7T1TnycvFhz" role="2Oq$k0">
                  <node concept="37vLTw" id="7T1TnycvFh$" role="2Oq$k0">
                    <ref role="3cqZAo" node="6PVY$JZgRbA" resolve="cellMessage" />
                  </node>
                  <node concept="liA8E" id="7T1TnycvFh_" role="2OqNvi">
                    <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                  </node>
                </node>
                <node concept="liA8E" id="7T1TnycvFPE" role="2OqNvi">
                  <ref role="37wK5l" to="5p6x:6wgNI6tC_ug" resolve="getRevision" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="6PVY$JZgRch" role="tmbBb">
      <node concept="3clFbS" id="6PVY$JZgRci" role="2VODD2">
        <node concept="3clFbF" id="6PVY$JZgRcj" role="3cqZAp">
          <node concept="2OqwBi" id="6PVY$JZgRck" role="3clFbG">
            <node concept="2OqwBi" id="6PVY$JZgRcl" role="2Oq$k0">
              <node concept="tl45R" id="6PVY$JZgRcm" role="2Oq$k0" />
              <node concept="liA8E" id="6PVY$JZgRcn" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="6PVY$JZgRco" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.util.function.Supplier)" resolve="setText" />
              <node concept="2YIFZM" id="7GdQgoXGqyp" role="37wK5m">
                <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                <ref role="37wK5l" to="jlcu:~VcsBundle.messagePointer(java.lang.String,java.lang.Object...)" resolve="messagePointer" />
                <node concept="Xl_RD" id="7GdQgoXGqyq" role="37wK5m">
                  <property role="Xl_RC" value="action.annotate.revision.text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7T1TnycvY2d" role="3cqZAp">
          <node concept="2OqwBi" id="7T1TnycvYdY" role="3clFbG">
            <node concept="2OqwBi" id="7T1TnycvY2f" role="2Oq$k0">
              <node concept="tl45R" id="7T1TnycvY2g" role="2Oq$k0" />
              <node concept="liA8E" id="7T1TnycvY2h" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7T1TnycvYt0" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setDescription(java.util.function.Supplier)" resolve="setDescription" />
              <node concept="2YIFZM" id="3d1o$V9E5gk" role="37wK5m">
                <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                <ref role="37wK5l" to="jlcu:~VcsBundle.messagePointer(java.lang.String,java.lang.Object...)" resolve="messagePointer" />
                <node concept="Xl_RD" id="3d1o$V9E5gl" role="37wK5m">
                  <property role="Xl_RC" value="action.annotate.selected.revision.in.new.tab.description" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PVY$JZgRcq" role="3cqZAp">
          <node concept="1rXfSq" id="6PVY$JZgRcr" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="6PVY$JZgRcs" role="37wK5m">
              <node concept="tl45R" id="6PVY$JZgRct" role="2Oq$k0" />
              <node concept="liA8E" id="6PVY$JZgRcu" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="1Wc70l" id="1BKxgOUnY$k" role="37wK5m">
              <node concept="3fqX7Q" id="1BKxgOUo1cg" role="3uHU7w">
                <node concept="2OqwBi" id="1BKxgOUo1ci" role="3fr31v">
                  <node concept="2OqwBi" id="1BKxgOUo1cj" role="2Oq$k0">
                    <node concept="2OqwBi" id="1BKxgOUo1ck" role="2Oq$k0">
                      <node concept="2WthIp" id="1BKxgOUo1cl" role="2Oq$k0" />
                      <node concept="2XshWL" id="1BKxgOUo1cm" role="2OqNvi">
                        <ref role="2WH_rO" node="6PVY$JZgRbm" resolve="getCellMessage" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1BKxgOUo1cn" role="2OqNvi">
                      <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1BKxgOUo1co" role="2OqNvi">
                    <ref role="37wK5l" to="5p6x:6STmDFFaSyK" resolve="isLocalRevision" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6PVY$JZgRcv" role="3uHU7B">
                <node concept="2OqwBi" id="6PVY$JZgRcx" role="3uHU7B">
                  <node concept="2WthIp" id="6PVY$JZgRcy" role="2Oq$k0" />
                  <node concept="2XshWL" id="6PVY$JZgRcz" role="2OqNvi">
                    <ref role="2WH_rO" node="6PVY$JZgRbm" resolve="getCellMessage" />
                  </node>
                </node>
                <node concept="10Nm6u" id="6PVY$JZgRcw" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBk" role="3Uehp1">
      <node concept="10M0yZ" id="6PVY$JZgRc_" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Annotate" resolve="Annotate" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1YQ$Agpgz3w">
    <property role="3GE5qa" value="Actions" />
    <property role="TrG5h" value="HideRevision" />
    <property role="2uzpH1" value="Hide Revision" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <node concept="1DS2jV" id="1YQ$Agpgz3x" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="1YQ$Agpgz3y" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1YQ$Agpgz3z" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="1YQ$Agpgz3$" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="1YQ$Agpgz3_" role="32lrUH">
      <property role="TrG5h" value="getCellMessage" />
      <node concept="3uibUv" id="1YQ$Agpgz3A" role="3clF45">
        <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
      </node>
      <node concept="3clFbS" id="1YQ$Agpgz3B" role="3clF47">
        <node concept="3clFbF" id="1YQ$Agpgz3C" role="3cqZAp">
          <node concept="2YIFZM" id="1YQ$Agpgz3D" role="3clFbG">
            <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
            <ref role="37wK5l" node="4eJXCVM9_O_" resolve="getMessageForCell" />
            <node concept="2OqwBi" id="1YQ$Agpgz3E" role="37wK5m">
              <node concept="2WthIp" id="1YQ$Agpgz3F" role="2Oq$k0" />
              <node concept="1DTwFV" id="1YQ$Agpgz3G" role="2OqNvi">
                <ref role="2WH_rO" node="1YQ$Agpgz3x" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1YQ$Agpgz3H" role="37wK5m">
              <node concept="2WthIp" id="1YQ$Agpgz3I" role="2Oq$k0" />
              <node concept="1DTwFV" id="1YQ$Agpgz3J" role="2OqNvi">
                <ref role="2WH_rO" node="1YQ$Agpgz3z" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1YQ$Agpgz3K" role="1B3o_S" />
      <node concept="2AHcQZ" id="1YQ$Agpgz3L" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="tnohg" id="1YQ$Agpgz3M" role="tncku">
      <node concept="3clFbS" id="1YQ$Agpgz3N" role="2VODD2">
        <node concept="3cpWs8" id="1YQ$Agpgz3O" role="3cqZAp">
          <node concept="3cpWsn" id="1YQ$Agpgz3P" role="3cpWs9">
            <property role="TrG5h" value="cellMessage" />
            <node concept="3uibUv" id="1YQ$Agpgz3Q" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:3WD3WEj2798" resolve="AnnotatedCellMessage" />
            </node>
            <node concept="2OqwBi" id="1YQ$Agpgz3R" role="33vP2m">
              <node concept="2WthIp" id="1YQ$Agpgz3S" role="2Oq$k0" />
              <node concept="2XshWL" id="1YQ$Agpgz3T" role="2OqNvi">
                <ref role="2WH_rO" node="1YQ$Agpgz3_" resolve="getCellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1YQ$Agpgz3U" role="3cqZAp">
          <node concept="3cpWsn" id="1YQ$Agpgz3V" role="3cpWs9">
            <property role="TrG5h" value="annotationColumn" />
            <node concept="3uibUv" id="1YQ$Agpgz3W" role="1tU5fm">
              <ref role="3uigEE" to="bvbc:hapR_kTy$1" resolve="AnnotationColumn" />
            </node>
            <node concept="2YIFZM" id="1YQ$Agpgz3X" role="33vP2m">
              <ref role="1Pybhc" node="78RbNhWi9Md" resolve="VcsActionsUtil" />
              <ref role="37wK5l" node="4eJXCVM8M3c" resolve="getAnnotationColumn" />
              <node concept="2OqwBi" id="1YQ$Agpgz3Y" role="37wK5m">
                <node concept="2WthIp" id="1YQ$Agpgz3Z" role="2Oq$k0" />
                <node concept="1DTwFV" id="1YQ$Agpgz40" role="2OqNvi">
                  <ref role="2WH_rO" node="1YQ$Agpgz3x" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1YQ$Agpgz41" role="3cqZAp">
          <node concept="3clFbS" id="1YQ$Agpgz42" role="3clFbx">
            <node concept="3cpWs6" id="1YQ$Agpgz43" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="1YQ$Agpgz44" role="3clFbw">
            <node concept="3clFbC" id="1YQ$Agpgz45" role="3uHU7B">
              <node concept="10Nm6u" id="1YQ$Agpgz46" role="3uHU7w" />
              <node concept="37vLTw" id="1YQ$Agpgz47" role="3uHU7B">
                <ref role="3cqZAo" node="1YQ$Agpgz3V" resolve="annotationColumn" />
              </node>
            </node>
            <node concept="3clFbC" id="1YQ$Agpgz48" role="3uHU7w">
              <node concept="10Nm6u" id="1YQ$Agpgz49" role="3uHU7w" />
              <node concept="37vLTw" id="1YQ$Agpgz4a" role="3uHU7B">
                <ref role="3cqZAo" node="1YQ$Agpgz3P" resolve="cellMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1YQ$Agpgz4b" role="3cqZAp">
          <node concept="2OqwBi" id="1YQ$Agpgz4c" role="3clFbG">
            <node concept="37vLTw" id="1YQ$Agpgz4e" role="2Oq$k0">
              <ref role="3cqZAo" node="1YQ$Agpgz3V" resolve="annotationColumn" />
            </node>
            <node concept="liA8E" id="1YQ$Agpgz4g" role="2OqNvi">
              <ref role="37wK5l" to="bvbc:7ep4mekq44u" resolve="hideRevision" />
              <node concept="2OqwBi" id="1YQ$Agpgz4h" role="37wK5m">
                <node concept="37vLTw" id="1YQ$Agpgz4i" role="2Oq$k0">
                  <ref role="3cqZAo" node="1YQ$Agpgz3P" resolve="cellMessage" />
                </node>
                <node concept="liA8E" id="1YQ$Agpgz4j" role="2OqNvi">
                  <ref role="37wK5l" to="bvbc:nCL4V20hTI" resolve="getCommitsGraphNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="1YQ$Agpgz4k" role="tmbBb">
      <node concept="3clFbS" id="1YQ$Agpgz4l" role="2VODD2">
        <node concept="3clFbF" id="1YQ$Agpgz4u" role="3cqZAp">
          <node concept="1rXfSq" id="1YQ$Agpgz4v" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="1YQ$Agpgz4w" role="37wK5m">
              <node concept="tl45R" id="1YQ$Agpgz4x" role="2Oq$k0" />
              <node concept="liA8E" id="1YQ$Agpgz4y" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3y3z36" id="1YQ$Agpgz4z" role="37wK5m">
              <node concept="10Nm6u" id="1YQ$Agpgz4$" role="3uHU7w" />
              <node concept="2OqwBi" id="1YQ$Agpgz4_" role="3uHU7B">
                <node concept="2WthIp" id="1YQ$Agpgz4A" role="2Oq$k0" />
                <node concept="2XshWL" id="1YQ$Agpgz4B" role="2OqNvi">
                  <ref role="2WH_rO" node="1YQ$Agpgz3_" resolve="getCellMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGBl" role="3Uehp1">
      <node concept="10M0yZ" id="5tfq$cL$Qu5" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Vcs.Remove" resolve="Remove" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Vcs" resolve="AllIcons.Vcs" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38wEix89a$D">
    <property role="TrG5h" value="NodeHistoryUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="38wEix89dXr" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="38wEix89dXs" role="1B3o_S" />
      <node concept="3uibUv" id="38wEix89dXu" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="P$ZiSemaUF" role="jymVt">
      <property role="TrG5h" value="myIdeaFile" />
      <node concept="3Tm6S6" id="P$ZiSem7Nn" role="1B3o_S" />
      <node concept="3uibUv" id="P$ZiSemaOc" role="1tU5fm">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
    </node>
    <node concept="312cEg" id="P$ZiSemeqt" role="jymVt">
      <property role="TrG5h" value="myActiveVcs" />
      <node concept="3Tm6S6" id="P$ZiSemcJ1" role="1B3o_S" />
      <node concept="3uibUv" id="P$ZiSemela" role="1tU5fm">
        <ref role="3uigEE" to="jlcu:~AbstractVcs" resolve="AbstractVcs" />
      </node>
    </node>
    <node concept="2tJIrI" id="38wEix89ehM" role="jymVt" />
    <node concept="3clFbW" id="38wEix89d8J" role="jymVt">
      <node concept="3cqZAl" id="38wEix89d8M" role="3clF45" />
      <node concept="3Tm1VV" id="38wEix89d8N" role="1B3o_S" />
      <node concept="3clFbS" id="38wEix89d8O" role="3clF47">
        <node concept="3clFbF" id="38wEix89dXv" role="3cqZAp">
          <node concept="37vLTI" id="38wEix89dXx" role="3clFbG">
            <node concept="37vLTw" id="38wEix89dX$" role="37vLTJ">
              <ref role="3cqZAo" node="38wEix89dXr" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="38wEix89dX_" role="37vLTx">
              <ref role="3cqZAo" node="38wEix89dWA" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38wEix89dWA" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="38wEix89dW_" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="38wEix89ewp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="P$ZiSelxUA" role="jymVt" />
    <node concept="3clFb_" id="P$ZiSem1ir" role="jymVt">
      <property role="TrG5h" value="initFileAndVcs" />
      <node concept="3cqZAl" id="P$ZiSem1it" role="3clF45" />
      <node concept="3Tm1VV" id="P$ZiSem1iu" role="1B3o_S" />
      <node concept="3clFbS" id="P$ZiSem1iv" role="3clF47">
        <node concept="3SKdUt" id="P$ZiSes5UE" role="3cqZAp">
          <node concept="1PaTwC" id="P$ZiSes5UF" role="1aUNEU">
            <node concept="3oM_SD" id="P$ZiSes6rq" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="P$ZiSes6tY" role="1PaTwD">
              <property role="3oM_SC" value="planned" />
            </node>
            <node concept="3oM_SD" id="P$ZiSes6uR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="P$ZiSes6uV" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdJD" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="tu5oc" id="P$ZiSesdJE" role="1PaTwD">
              <node concept="2YIFZM" id="P$ZiSesdJF" role="tu5of">
                <ref role="37wK5l" to="pa15:~DataLocationAwareModelFactory.nodeLocation(org.jetbrains.mps.openapi.model.SNode)" resolve="nodeLocation" />
                <ref role="1Pybhc" to="pa15:~DataLocationAwareModelFactory" resolve="DataLocationAwareModelFactory" />
                <node concept="37vLTw" id="P$ZiSesdJG" role="37wK5m">
                  <ref role="3cqZAo" node="P$ZiSem5oK" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="P$ZiSesdLF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdMW" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdRa" role="1PaTwD">
              <property role="3oM_SC" value="node's" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdUo" role="1PaTwD">
              <property role="3oM_SC" value="source" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdVF" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdWJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="P$ZiSesgc4" role="3cqZAp">
          <node concept="1PaTwC" id="P$ZiSesgbM" role="1aUNEU">
            <node concept="3oM_SD" id="P$ZiSesgbL" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdXe" role="1PaTwD">
              <property role="3oM_SC" value="uniform" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgI2" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgJd" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgKS" role="1PaTwD">
              <property role="3oM_SC" value="seems" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgMV" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgN3" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgRj" role="1PaTwD">
              <property role="3oM_SC" value="endorsed" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesdY$" role="1PaTwD">
              <property role="3oM_SC" value="way," />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgSz" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesgTe" role="1PaTwD">
              <property role="3oM_SC" value="noticed" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesh1H" role="1PaTwD">
              <property role="3oM_SC" value="FilePerRootModelFactory.nodeLocation" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesh4A" role="1PaTwD">
              <property role="3oM_SC" value="logic" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="P$ZiSesimm" role="3cqZAp">
          <node concept="1PaTwC" id="P$ZiSesimn" role="1aUNEU">
            <node concept="3oM_SD" id="P$ZiSesiS2" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesiS4" role="1PaTwD">
              <property role="3oM_SC" value="likely" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesiSX" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesiT1" role="1PaTwD">
              <property role="3oM_SC" value="mishandle" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesiXk" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesiZ6" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesiZd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesj0b" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesj0k" role="1PaTwD">
              <property role="3oM_SC" value="name," />
            </node>
            <node concept="3oM_SD" id="P$ZiSesj1k" role="1PaTwD">
              <property role="3oM_SC" value="while" />
            </node>
            <node concept="tu5oc" id="P$ZiSeso1X" role="1PaTwD">
              <node concept="2YIFZM" id="P$ZiSeso1Y" role="tu5of">
                <ref role="37wK5l" to="5fzo:~FilePerRootFormatUtil.getStreamNames(java.lang.Iterable)" resolve="getStreamNames" />
                <ref role="1Pybhc" to="5fzo:~FilePerRootFormatUtil" resolve="FilePerRootFormatUtil" />
              </node>
            </node>
            <node concept="3oM_SD" id="P$ZiSesn3g" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesoa2" role="1PaTwD">
              <property role="3oM_SC" value="least" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesobn" role="1PaTwD">
              <property role="3oM_SC" value="leaves" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="P$ZiSespsE" role="3cqZAp">
          <node concept="1PaTwC" id="P$ZiSespsF" role="1aUNEU">
            <node concept="3oM_SD" id="P$ZiSespYB" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="P$ZiSespYD" role="1PaTwD">
              <property role="3oM_SC" value="chance" />
            </node>
            <node concept="3oM_SD" id="P$ZiSespZy" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="P$ZiSespZA" role="1PaTwD">
              <property role="3oM_SC" value="handle" />
            </node>
            <node concept="3oM_SD" id="P$ZiSespZF" role="1PaTwD">
              <property role="3oM_SC" value="such" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesq2j" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="P$ZiSesqSN" role="1PaTwD">
              <property role="3oM_SC" value="correctly" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSepIc7" role="3cqZAp">
          <node concept="37vLTI" id="P$ZiSepK4J" role="3clFbG">
            <node concept="1rXfSq" id="P$ZiSepLbM" role="37vLTx">
              <ref role="37wK5l" node="38wEix89hdu" resolve="getFileFromModel" />
              <node concept="2OqwBi" id="P$ZiSeqttA" role="37wK5m">
                <node concept="37vLTw" id="P$ZiSeqttB" role="2Oq$k0">
                  <ref role="3cqZAo" node="P$ZiSem5oK" resolve="node" />
                </node>
                <node concept="I4A8Y" id="P$ZiSeqttC" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="P$ZiSepQrZ" role="37wK5m">
                <node concept="liA8E" id="P$ZiSepR5r" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
                <node concept="2JrnkZ" id="P$ZiSepQs8" role="2Oq$k0">
                  <node concept="2OqwBi" id="P$ZiSepOGZ" role="2JrQYb">
                    <node concept="37vLTw" id="P$ZiSepNDq" role="2Oq$k0">
                      <ref role="3cqZAo" node="P$ZiSem5oK" resolve="node" />
                    </node>
                    <node concept="2Rxl7S" id="P$ZiSepPD7" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="P$ZiSepIc5" role="37vLTJ">
              <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSepGr8" role="3cqZAp">
          <node concept="37vLTI" id="P$ZiSepRXk" role="3clFbG">
            <node concept="3K4zz7" id="P$ZiSepV4k" role="37vLTx">
              <node concept="10Nm6u" id="P$ZiSepVLI" role="3K4E3e" />
              <node concept="3clFbC" id="P$ZiSepUhV" role="3K4Cdx">
                <node concept="10Nm6u" id="P$ZiSepUqy" role="3uHU7w" />
                <node concept="37vLTw" id="P$ZiSepSBQ" role="3uHU7B">
                  <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
                </node>
              </node>
              <node concept="2OqwBi" id="38wEix89kmT" role="3K4GZi">
                <node concept="liA8E" id="38wEix89kmU" role="2OqNvi">
                  <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getVcsFor(com.intellij.openapi.vfs.VirtualFile)" resolve="getVcsFor" />
                  <node concept="37vLTw" id="38wEix89kmV" role="37wK5m">
                    <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
                  </node>
                </node>
                <node concept="2YIFZM" id="38wEix89kmW" role="2Oq$k0">
                  <ref role="1Pybhc" to="jlcu:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                  <ref role="37wK5l" to="jlcu:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <node concept="2OqwBi" id="38wEix89kmX" role="37wK5m">
                    <node concept="37vLTw" id="38wEix89kmY" role="2Oq$k0">
                      <ref role="3cqZAo" node="38wEix89dXr" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="38wEix89kmZ" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="P$ZiSepGr7" role="37vLTJ">
              <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="P$ZiSepY3N" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="P$ZiSem5oK" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="P$ZiSem6it" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="38wEix89e_e" role="jymVt" />
    <node concept="3clFb_" id="38wEix89hdu" role="jymVt">
      <property role="TrG5h" value="getFileFromModel" />
      <node concept="3clFbS" id="38wEix89hdw" role="3clF47">
        <node concept="3cpWs8" id="38wEix89hdx" role="3cqZAp">
          <node concept="3cpWsn" id="38wEix89hdy" role="3cpWs9">
            <property role="TrG5h" value="ds" />
            <node concept="3uibUv" id="38wEix89hdz" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2OqwBi" id="38wEix89hd$" role="33vP2m">
              <node concept="37vLTw" id="38wEix89hd_" role="2Oq$k0">
                <ref role="3cqZAo" node="38wEix89heI" resolve="model" />
              </node>
              <node concept="liA8E" id="38wEix89hdA" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38wEix8cwlP" role="3cqZAp">
          <node concept="3cpWsn" id="38wEix8cwlQ" role="3cpWs9">
            <property role="TrG5h" value="fileSystem" />
            <node concept="3uibUv" id="38wEix8cw9E" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
            </node>
            <node concept="2OqwBi" id="38wEix8cwlR" role="33vP2m">
              <node concept="37vLTw" id="38wEix8cwlS" role="2Oq$k0">
                <ref role="3cqZAo" node="38wEix89dXr" resolve="myProject" />
              </node>
              <node concept="liA8E" id="38wEix8cwlT" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38wEix89hdB" role="3cqZAp">
          <node concept="3clFbS" id="38wEix89hdC" role="3clFbx">
            <node concept="3cpWs6" id="38wEix89hdD" role="3cqZAp">
              <node concept="2OqwBi" id="38wEix8c$EL" role="3cqZAk">
                <node concept="37vLTw" id="38wEix8c$23" role="2Oq$k0">
                  <ref role="3cqZAo" node="38wEix8cwlQ" resolve="fileSystem" />
                </node>
                <node concept="liA8E" id="38wEix8c_qo" role="2OqNvi">
                  <ref role="37wK5l" to="4hrd:~FileSystemBridge.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
                  <node concept="2OqwBi" id="38wEix89hdF" role="37wK5m">
                    <node concept="1eOMI4" id="38wEix89hdG" role="2Oq$k0">
                      <node concept="10QFUN" id="38wEix89hdH" role="1eOMHV">
                        <node concept="3uibUv" id="38wEix89hdI" role="10QFUM">
                          <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                        </node>
                        <node concept="37vLTw" id="38wEix89hdJ" role="10QFUP">
                          <ref role="3cqZAo" node="38wEix89hdy" resolve="ds" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="38wEix89hdK" role="2OqNvi">
                      <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="38wEix89hdL" role="3clFbw">
            <node concept="3uibUv" id="38wEix89hdM" role="2ZW6by">
              <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
            </node>
            <node concept="37vLTw" id="38wEix89hdN" role="2ZW6bz">
              <ref role="3cqZAo" node="38wEix89hdy" resolve="ds" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38wEix89hdO" role="3cqZAp">
          <node concept="3clFbS" id="38wEix89hdP" role="3clFbx">
            <node concept="3cpWs8" id="38wEix89he0" role="3cqZAp">
              <node concept="3cpWsn" id="38wEix89he1" role="3cpWs9">
                <property role="TrG5h" value="streamNames" />
                <node concept="3uibUv" id="38wEix89he2" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="3uibUv" id="38wEix89he3" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                  </node>
                  <node concept="17QB3L" id="38wEix89he4" role="11_B2D" />
                </node>
                <node concept="2YIFZM" id="38wEix89he5" role="33vP2m">
                  <ref role="37wK5l" to="5fzo:~FilePerRootFormatUtil.getStreamNames(java.lang.Iterable)" resolve="getStreamNames" />
                  <ref role="1Pybhc" to="5fzo:~FilePerRootFormatUtil" resolve="FilePerRootFormatUtil" />
                  <node concept="2OqwBi" id="38wEix89he6" role="37wK5m">
                    <node concept="liA8E" id="38wEix89he7" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                    </node>
                    <node concept="37vLTw" id="38wEix89he8" role="2Oq$k0">
                      <ref role="3cqZAo" node="38wEix89heI" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="38wEix89he9" role="3cqZAp">
              <node concept="3cpWsn" id="38wEix89hea" role="3cpWs9">
                <property role="TrG5h" value="rootStream" />
                <node concept="2OqwBi" id="38wEix89heb" role="33vP2m">
                  <node concept="37vLTw" id="38wEix89hec" role="2Oq$k0">
                    <ref role="3cqZAo" node="38wEix89he1" resolve="streamNames" />
                  </node>
                  <node concept="liA8E" id="38wEix89hed" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="1CL_qsJWqwr" role="37wK5m">
                      <ref role="3cqZAo" node="38wEix89heK" resolve="rootNodeId" />
                    </node>
                  </node>
                </node>
                <node concept="17QB3L" id="38wEix89heh" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbJ" id="38wEix89hei" role="3cqZAp">
              <node concept="3clFbC" id="38wEix89hej" role="3clFbw">
                <node concept="10Nm6u" id="38wEix89hek" role="3uHU7w" />
                <node concept="37vLTw" id="38wEix89hel" role="3uHU7B">
                  <ref role="3cqZAo" node="38wEix89hea" resolve="rootStream" />
                </node>
              </node>
              <node concept="3clFbS" id="38wEix89hem" role="3clFbx">
                <node concept="3cpWs6" id="38wEix89hen" role="3cqZAp">
                  <node concept="10Nm6u" id="38wEix89heo" role="3cqZAk" />
                </node>
              </node>
              <node concept="9aQIb" id="38wEix89hep" role="9aQIa">
                <node concept="3clFbS" id="38wEix89heq" role="9aQI4">
                  <node concept="3cpWs8" id="38wEix89her" role="3cqZAp">
                    <node concept="3cpWsn" id="38wEix89hes" role="3cpWs9">
                      <property role="TrG5h" value="file" />
                      <node concept="3uibUv" id="38wEix89het" role="1tU5fm">
                        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                      </node>
                      <node concept="2OqwBi" id="38wEix89heu" role="33vP2m">
                        <node concept="1eOMI4" id="38wEix89hev" role="2Oq$k0">
                          <node concept="10QFUN" id="38wEix89hew" role="1eOMHV">
                            <node concept="3uibUv" id="38wEix89hex" role="10QFUM">
                              <ref role="3uigEE" to="pa15:~FilePerRootDataSource" resolve="FilePerRootDataSource" />
                            </node>
                            <node concept="37vLTw" id="38wEix89hey" role="10QFUP">
                              <ref role="3cqZAo" node="38wEix89hdy" resolve="ds" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="38wEix89hez" role="2OqNvi">
                          <ref role="37wK5l" to="ends:~FolderDataSource.getFile(java.lang.String)" resolve="getFile" />
                          <node concept="37vLTw" id="38wEix89he$" role="37wK5m">
                            <ref role="3cqZAo" node="38wEix89hea" resolve="rootStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="38wEix89he_" role="3cqZAp">
                    <node concept="2OqwBi" id="38wEix8cCOg" role="3cqZAk">
                      <node concept="37vLTw" id="38wEix8cCfB" role="2Oq$k0">
                        <ref role="3cqZAo" node="38wEix8cwlQ" resolve="fileSystem" />
                      </node>
                      <node concept="liA8E" id="38wEix8cDGg" role="2OqNvi">
                        <ref role="37wK5l" to="4hrd:~FileSystemBridge.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
                        <node concept="37vLTw" id="38wEix8cEuQ" role="37wK5m">
                          <ref role="3cqZAo" node="38wEix89hes" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="38wEix89heC" role="3clFbw">
            <node concept="3uibUv" id="38wEix89heD" role="2ZW6by">
              <ref role="3uigEE" to="pa15:~FilePerRootDataSource" resolve="FilePerRootDataSource" />
            </node>
            <node concept="37vLTw" id="38wEix89heE" role="2ZW6bz">
              <ref role="3cqZAo" node="38wEix89hdy" resolve="ds" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38wEix89heF" role="3cqZAp">
          <node concept="10Nm6u" id="38wEix89heG" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="38wEix89heH" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="37vLTG" id="38wEix89heI" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="38wEix89heJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="38wEix89heK" role="3clF46">
        <property role="TrG5h" value="rootNodeId" />
        <node concept="3uibUv" id="1CL_qsJWkqZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="3Tm6S6" id="P$ZiSequCh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="P$ZiSemnH5" role="jymVt" />
    <node concept="3clFb_" id="P$ZiSemqw9" role="jymVt">
      <property role="TrG5h" value="isHistoryTracked" />
      <node concept="3clFbS" id="P$ZiSemqwc" role="3clF47">
        <node concept="3cpWs6" id="P$ZiSemshg" role="3cqZAp">
          <node concept="1Wc70l" id="P$ZiSemztE" role="3cqZAk">
            <node concept="1Wc70l" id="P$ZiSemvZ6" role="3uHU7B">
              <node concept="3y3z36" id="P$ZiSemxVr" role="3uHU7B">
                <node concept="10Nm6u" id="P$ZiSemyOX" role="3uHU7w" />
                <node concept="37vLTw" id="P$ZiSemwzt" role="3uHU7B">
                  <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
                </node>
              </node>
              <node concept="3y3z36" id="P$ZiSemu2M" role="3uHU7w">
                <node concept="37vLTw" id="P$ZiSemt9h" role="3uHU7B">
                  <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
                </node>
                <node concept="10Nm6u" id="P$ZiSemuW7" role="3uHU7w" />
              </node>
            </node>
            <node concept="2YIFZM" id="P$ZiSem$hK" role="3uHU7w">
              <ref role="1Pybhc" to="jlcu:~AbstractVcs" resolve="AbstractVcs" />
              <ref role="37wK5l" to="jlcu:~AbstractVcs.fileInVcsByFileStatus(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="fileInVcsByFileStatus" />
              <node concept="2OqwBi" id="P$ZiSem$hL" role="37wK5m">
                <node concept="37vLTw" id="P$ZiSem$hM" role="2Oq$k0">
                  <ref role="3cqZAo" node="38wEix89dXr" resolve="myProject" />
                </node>
                <node concept="liA8E" id="P$ZiSem$hN" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="P$ZiSem$hO" role="37wK5m">
                <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="P$ZiSempga" role="1B3o_S" />
      <node concept="10P_77" id="P$ZiSemqmP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="38wEix89jlA" role="jymVt" />
    <node concept="3clFb_" id="38wEix8aLlM" role="jymVt">
      <property role="TrG5h" value="showNodeHistory" />
      <node concept="3clFbS" id="38wEix8aLlO" role="3clF47">
        <node concept="3clFbJ" id="P$ZiSemRzT" role="3cqZAp">
          <node concept="22lmx$" id="P$ZiSemVW6" role="3clFbw">
            <node concept="3clFbC" id="P$ZiSemXQm" role="3uHU7w">
              <node concept="10Nm6u" id="P$ZiSemYCh" role="3uHU7w" />
              <node concept="37vLTw" id="P$ZiSemWV7" role="3uHU7B">
                <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
              </node>
            </node>
            <node concept="3clFbC" id="P$ZiSemTXi" role="3uHU7B">
              <node concept="37vLTw" id="P$ZiSemSCj" role="3uHU7B">
                <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
              </node>
              <node concept="10Nm6u" id="P$ZiSemUU3" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="P$ZiSemRzV" role="3clFbx">
            <node concept="3SKdUt" id="38wEix8b0mR" role="3cqZAp">
              <node concept="1PaTwC" id="38wEix8b0mS" role="1aUNEU">
                <node concept="3oM_SD" id="38wEix8b0Xj" role="1PaTwD">
                  <property role="3oM_SC" value="isHistoryTracked()" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0Xt" role="1PaTwD">
                  <property role="3oM_SC" value="==" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0Xw" role="1PaTwD">
                  <property role="3oM_SC" value="true" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0XG" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0XL" role="1PaTwD">
                  <property role="3oM_SC" value="precondition" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0Yf" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0Ym" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0Yu" role="1PaTwD">
                  <property role="3oM_SC" value="method," />
                </node>
                <node concept="3oM_SD" id="38wEix8b0YB" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0YL" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0Z4" role="1PaTwD">
                  <property role="3oM_SC" value="hurt" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0ZC" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="38wEix8b0ZP" role="1PaTwD">
                  <property role="3oM_SC" value="avoid" />
                </node>
                <node concept="3oM_SD" id="38wEix8b10b" role="1PaTwD">
                  <property role="3oM_SC" value="NPE" />
                </node>
                <node concept="3oM_SD" id="38wEix8b10M" role="1PaTwD">
                  <property role="3oM_SC" value="anyway" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="P$ZiSemZJo" role="3cqZAp" />
          </node>
        </node>
        <node concept="3SKdUt" id="38wEix8aLmh" role="3cqZAp">
          <node concept="1PaTwC" id="38wEix8aLmi" role="1aUNEU">
            <node concept="3oM_SD" id="38wEix8aLmj" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmk" role="1PaTwD">
              <property role="3oM_SC" value="RootHistoryDialog.show" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLml" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmm" role="1PaTwD">
              <property role="3oM_SC" value="explanation" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmn" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmo" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmp" role="1PaTwD">
              <property role="3oM_SC" value="resort" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmq" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmr" role="1PaTwD">
              <property role="3oM_SC" value="roots." />
            </node>
            <node concept="3oM_SD" id="38wEix8aLms" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmt" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmu" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmv" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmw" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmx" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmy" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmz" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLm$" role="1PaTwD">
              <property role="3oM_SC" value="show()," />
            </node>
            <node concept="3oM_SD" id="38wEix8aLm_" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmA" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmB" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmC" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmE" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmF" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmG" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmH" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmI" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmJ" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmK" role="1PaTwD">
              <property role="3oM_SC" value="(it's" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmL" role="1PaTwD">
              <property role="3oM_SC" value="likely" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmM" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmN" role="1PaTwD">
              <property role="3oM_SC" value="background)." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="38wEix8aLmO" role="3cqZAp">
          <node concept="1PaTwC" id="38wEix8aLmP" role="1aUNEU">
            <node concept="3oM_SD" id="38wEix8aLmQ" role="1PaTwD">
              <property role="3oM_SC" value="copied" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmR" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmS" role="1PaTwD">
              <property role="3oM_SC" value="IDEA's" />
            </node>
            <node concept="3oM_SD" id="38wEix8aLmT" role="1PaTwD">
              <property role="3oM_SC" value="SelectedBlockHistoryAction" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38wEix8aLmU" role="3cqZAp">
          <node concept="2YIFZM" id="38wEix8aLmV" role="3clFbG">
            <ref role="1Pybhc" to="yah0:~VcsCachingHistory" resolve="VcsCachingHistory" />
            <ref role="37wK5l" to="yah0:~VcsCachingHistory.collectInBackground(com.intellij.openapi.vcs.AbstractVcs,com.intellij.openapi.vcs.FilePath,com.intellij.openapi.vcs.impl.VcsBackgroundableActions,com.intellij.util.Consumer)" resolve="collectInBackground" />
            <node concept="37vLTw" id="38wEix8aLmW" role="37wK5m">
              <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
            </node>
            <node concept="2YIFZM" id="38wEix8aLmX" role="37wK5m">
              <ref role="1Pybhc" to="7g4e:~VcsUtil" resolve="VcsUtil" />
              <ref role="37wK5l" to="7g4e:~VcsUtil.getFilePath(com.intellij.openapi.vfs.VirtualFile)" resolve="getFilePath" />
              <node concept="37vLTw" id="38wEix8aLmY" role="37wK5m">
                <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
              </node>
            </node>
            <node concept="Rm8GO" id="38wEix8aLmZ" role="37wK5m">
              <ref role="1Px2BO" to="j86o:~VcsBackgroundableActions" resolve="VcsBackgroundableActions" />
              <ref role="Rm8GQ" to="j86o:~VcsBackgroundableActions.HISTORY_FOR_SELECTION" resolve="HISTORY_FOR_SELECTION" />
            </node>
            <node concept="1bVj0M" id="38wEix8aLn0" role="37wK5m">
              <node concept="37vLTG" id="38wEix8aLn1" role="1bW2Oz">
                <property role="TrG5h" value="vcsSession" />
                <node concept="3uibUv" id="38wEix8aLn2" role="1tU5fm">
                  <ref role="3uigEE" to="yah1:~VcsHistorySession" resolve="VcsHistorySession" />
                </node>
              </node>
              <node concept="3clFbS" id="38wEix8aLn3" role="1bW5cS">
                <node concept="3clFbJ" id="38wEix8aLn4" role="3cqZAp">
                  <node concept="3clFbS" id="38wEix8aLn5" role="3clFbx">
                    <node concept="3cpWs8" id="38wEix8aLn6" role="3cqZAp">
                      <node concept="3cpWsn" id="38wEix8aLn7" role="3cpWs9">
                        <property role="TrG5h" value="dlg" />
                        <node concept="3uibUv" id="38wEix8aLn8" role="1tU5fm">
                          <ref role="3uigEE" to="p37l:5$O_bu7tMHR" resolve="RootHistoryDialog" />
                        </node>
                        <node concept="2ShNRf" id="38wEix8aLn9" role="33vP2m">
                          <node concept="1pGfFk" id="38wEix8aLna" role="2ShVmc">
                            <ref role="37wK5l" to="p37l:5$O_bu7tUYt" resolve="RootHistoryDialog" />
                            <node concept="37vLTw" id="38wEix8aLnb" role="37wK5m">
                              <ref role="3cqZAo" node="38wEix89dXr" resolve="myProject" />
                            </node>
                            <node concept="37vLTw" id="38wEix8aLnc" role="37wK5m">
                              <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
                            </node>
                            <node concept="37vLTw" id="38wEix8aLnd" role="37wK5m">
                              <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
                            </node>
                            <node concept="37vLTw" id="38wEix8aLne" role="37wK5m">
                              <ref role="3cqZAo" node="38wEix8aLn1" resolve="vcsSession" />
                            </node>
                            <node concept="37vLTw" id="38wEix8aLnf" role="37wK5m">
                              <ref role="3cqZAo" node="38wEix8aLnD" resolve="compareModels" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="38wEix8aLng" role="3cqZAp">
                      <node concept="2OqwBi" id="38wEix8aLnh" role="3clFbG">
                        <node concept="37vLTw" id="38wEix8aLni" role="2Oq$k0">
                          <ref role="3cqZAo" node="38wEix8aLn7" resolve="dlg" />
                        </node>
                        <node concept="liA8E" id="38wEix8aLnj" role="2OqNvi">
                          <ref role="37wK5l" to="jkm4:~FrameWrapper.setTitle(java.lang.String)" resolve="setTitle" />
                          <node concept="37vLTw" id="38wEix8aLnk" role="37wK5m">
                            <ref role="3cqZAo" node="38wEix8aLnB" resolve="dialogTitle" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="38wEix8aLnl" role="3cqZAp">
                      <node concept="2OqwBi" id="38wEix8aLnm" role="3clFbG">
                        <node concept="37vLTw" id="38wEix8aLnn" role="2Oq$k0">
                          <ref role="3cqZAo" node="38wEix8aLn7" resolve="dlg" />
                        </node>
                        <node concept="liA8E" id="38wEix8aLno" role="2OqNvi">
                          <ref role="37wK5l" to="p37l:5$O_bu7vHaU" resolve="show" />
                          <node concept="2YIFZM" id="38wEix8aLnp" role="37wK5m">
                            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                            <node concept="37vLTw" id="38wEix8aLnq" role="37wK5m">
                              <ref role="3cqZAo" node="38wEix8aLn_" resolve="nodeId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="38wEix8aLnr" role="3clFbw">
                    <node concept="10Nm6u" id="38wEix8aLns" role="3uHU7w" />
                    <node concept="37vLTw" id="38wEix8aLnt" role="3uHU7B">
                      <ref role="3cqZAo" node="38wEix8aLn1" resolve="vcsSession" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="38wEix8aLnv" role="3clF45" />
      <node concept="37vLTG" id="38wEix8aLn_" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3uibUv" id="38wEix8aLnA" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="38wEix8aLnB" role="3clF46">
        <property role="TrG5h" value="dialogTitle" />
        <node concept="17QB3L" id="38wEix8aLnC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38wEix8aLnD" role="3clF46">
        <property role="TrG5h" value="compareModels" />
        <node concept="10P_77" id="38wEix8aLnE" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="38wEix8aLnu" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="38wEix8aDWP" role="jymVt" />
    <node concept="3clFb_" id="P$ZiSeqRhX" role="jymVt">
      <property role="TrG5h" value="runAnnotate" />
      <node concept="37vLTG" id="55zwzn2BFea" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="55zwzn2BFXw" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3_ALl2yzh3r" role="3clF46">
        <property role="TrG5h" value="actionLock" />
        <node concept="3uibUv" id="3_ALl2yzhEo" role="1tU5fm">
          <ref role="3uigEE" to="j86o:~BackgroundableActionLock" resolve="BackgroundableActionLock" />
        </node>
      </node>
      <node concept="3cqZAl" id="P$ZiSeqRhZ" role="3clF45" />
      <node concept="3Tm1VV" id="P$ZiSeqRi0" role="1B3o_S" />
      <node concept="3clFbS" id="P$ZiSeqRi1" role="3clF47">
        <node concept="3clFbJ" id="P$ZiSer14o" role="3cqZAp">
          <node concept="22lmx$" id="P$ZiSer14p" role="3clFbw">
            <node concept="3clFbC" id="P$ZiSer14q" role="3uHU7w">
              <node concept="10Nm6u" id="P$ZiSer14r" role="3uHU7w" />
              <node concept="37vLTw" id="P$ZiSer14s" role="3uHU7B">
                <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
              </node>
            </node>
            <node concept="3clFbC" id="P$ZiSer14t" role="3uHU7B">
              <node concept="37vLTw" id="P$ZiSer14u" role="3uHU7B">
                <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
              </node>
              <node concept="10Nm6u" id="P$ZiSer14v" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="P$ZiSer14w" role="3clFbx">
            <node concept="3SKdUt" id="P$ZiSer14x" role="3cqZAp">
              <node concept="1PaTwC" id="P$ZiSer14y" role="1aUNEU">
                <node concept="3oM_SD" id="P$ZiSer14z" role="1PaTwD">
                  <property role="3oM_SC" value="isHistoryTracked()" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14$" role="1PaTwD">
                  <property role="3oM_SC" value="==" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14_" role="1PaTwD">
                  <property role="3oM_SC" value="true" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14A" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14B" role="1PaTwD">
                  <property role="3oM_SC" value="precondition" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14C" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14D" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14E" role="1PaTwD">
                  <property role="3oM_SC" value="method," />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14F" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14G" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14H" role="1PaTwD">
                  <property role="3oM_SC" value="hurt" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14I" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14J" role="1PaTwD">
                  <property role="3oM_SC" value="avoid" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14K" role="1PaTwD">
                  <property role="3oM_SC" value="NPE" />
                </node>
                <node concept="3oM_SD" id="P$ZiSer14L" role="1PaTwD">
                  <property role="3oM_SC" value="anyway" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="P$ZiSer14M" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="1MwXCw0PrFR" role="3cqZAp">
          <node concept="2OqwBi" id="1MwXCw0PshK" role="3clFbG">
            <node concept="37vLTw" id="1MwXCw0PrFP" role="2Oq$k0">
              <ref role="3cqZAo" node="3_ALl2yzh3r" resolve="actionLock" />
            </node>
            <node concept="liA8E" id="1MwXCw0Pt03" role="2OqNvi">
              <ref role="37wK5l" to="j86o:~BackgroundableActionLock.lock()" resolve="lock" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="P$ZiSer2g_" role="3cqZAp">
          <node concept="1PaTwC" id="P$ZiSer2gA" role="1aUNEU">
            <node concept="3oM_SD" id="P$ZiSer3d1" role="1PaTwD">
              <property role="3oM_SC" value="wrong" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3dT" role="1PaTwD">
              <property role="3oM_SC" value="placement" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3eM" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3eQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3fL" role="1PaTwD">
              <property role="3oM_SC" value="method," />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3hM" role="1PaTwD">
              <property role="3oM_SC" value="stupid" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3hT" role="1PaTwD">
              <property role="3oM_SC" value="Util" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3k0" role="1PaTwD">
              <property role="3oM_SC" value="class," />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3k9" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3l9" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3lk" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3lw" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3oG" role="1PaTwD">
              <property role="3oM_SC" value="showNodeHistory()" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3oU" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3pZ" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3r5" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="P$ZiSer3rm" role="1PaTwD">
              <property role="3oM_SC" value="bother" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$ZiSer690" role="3cqZAp">
          <node concept="2OqwBi" id="P$ZiSer691" role="3clFbG">
            <node concept="2YIFZM" id="P$ZiSer692" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="P$ZiSer693" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="P$ZiSer694" role="37wK5m">
                <node concept="1pGfFk" id="P$ZiSer695" role="2ShVmc">
                  <ref role="37wK5l" to="bvbc:55zwzn2Ba_w" resolve="AnnotateBackgroundableTask" />
                  <node concept="37vLTw" id="P$ZiSer8JT" role="37wK5m">
                    <ref role="3cqZAo" node="38wEix89dXr" resolve="myProject" />
                  </node>
                  <node concept="37vLTw" id="P$ZiSeraxa" role="37wK5m">
                    <ref role="3cqZAo" node="55zwzn2BFea" resolve="editor" />
                  </node>
                  <node concept="37vLTw" id="P$ZiSer69c" role="37wK5m">
                    <ref role="3cqZAo" node="P$ZiSemaUF" resolve="myIdeaFile" />
                  </node>
                  <node concept="37vLTw" id="P$ZiSer69d" role="37wK5m">
                    <ref role="3cqZAo" node="P$ZiSemeqt" resolve="myActiveVcs" />
                  </node>
                  <node concept="37vLTw" id="P$ZiSer69e" role="37wK5m">
                    <ref role="3cqZAo" node="3_ALl2yzh3r" resolve="actionLock" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38wEix89e_v" role="jymVt" />
    <node concept="3Tm1VV" id="38wEix89a$E" role="1B3o_S" />
  </node>
</model>

