<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:97d6b60a-b381-42e8-9ea4-402ec93eaf11(jetbrains.mps.ide.refactoring.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="-1" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="-1" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="-1" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="-1" />
    <use id="64d34fcd-ad02-4e73-aff8-a581124c2e30" name="jetbrains.mps.lang.findUsages" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
  </languages>
  <imports>
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="yrws" ref="r:478bf62d-84fb-4fba-aeda-183fb2769e64(jetbrains.mps.ide.dialogs.project.creation)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="kxvg" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree.module(MPS.Platform/)" />
    <import index="5nvm" ref="r:27bc780b-59b2-4d26-9db5-a38b63c35884(jetbrains.mps.refactoring.participant)" />
    <import index="4ugc" ref="r:bd779a69-a10b-4882-b646-c1303f2dd4f7(jetbrains.mps.refactoring.participant.plugin)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="gp7a" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.dependency(MPS.Core/)" />
    <import index="d94j" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.actions.model(MPS.Workbench/)" />
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="u42p" ref="r:986938bb-bdb1-4307-b062-e4647a4db0f9(jetbrains.mps.ide.platform.refactoring)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="thjj" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.featureStatistics(MPS.IDEA/)" />
    <import index="2yc6" ref="r:d9efd362-28b8-4f70-9bcd-fb582528d11c(jetbrains.mps.lang.core.refactorings)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lfzw" ref="r:cc08a4fa-e4f1-443c-b8f2-4a41972141bb(jetbrains.mps.refactoring.participant.plugin)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="3ahc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.cells(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="yha4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.choose(MPS.Platform/)" />
    <import index="xj2j" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.plugins.projectplugins(MPS.Workbench/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="b3f7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.plugins.relations(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="mte5" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.model.scopes(MPS.Platform/)" />
    <import index="lgib" ref="r:3d049421-2cf2-4818-944e-c4d825789632(jetbrains.mps.lang.core.findUsages)" />
    <import index="tpci" ref="r:00000000-0000-4000-0000-011c8959028e(jetbrains.mps.lang.structure.findUsages)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="52hy" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.dialogs(MPS.Workbench/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="6tbz" ref="r:e7c3bc1e-bce9-494c-bef3-a2cbdbbaff66(jetbrains.mps.ide.refactoring)" />
    <import index="ge2m" ref="r:bd8551c6-e2e3-4499-a261-45b0c886d1d1(jetbrains.mps.refactoring.framework)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="y38" ref="r:4c8c6241-8bf4-4d04-84a1-f7fd7fcbdc2c(jetbrains.mps.refactoring.runtime.access)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" implicit="true" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
        <property id="6785623076777470797" name="change" index="3hacHL" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1204991940915" name="caption" index="2f7twF" />
        <property id="1217005992861" name="isInvisibleWhenDisabled" index="1rdrE6" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
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
      <concept id="5896642449625987000" name="jetbrains.mps.lang.plugin.structure.AddTabOperation" flags="nn" index="2wDMaC">
        <child id="7566788359602201160" name="tab" index="11Dce$" />
      </concept>
      <concept id="5896642449625981893" name="jetbrains.mps.lang.plugin.structure.TabbedToolDeclaration" flags="ng" index="2wDNrl" />
      <concept id="6938053545825350222" name="jetbrains.mps.lang.plugin.structure.ToolTab" flags="ng" index="2BLXyY">
        <child id="6938053545825381648" name="componentExpression" index="2BLOvw" />
        <child id="6938053545825381649" name="titleExpression" index="2BLOvx" />
        <child id="6938053545825381651" name="disposeTabClosure" index="2BLOvz" />
      </concept>
      <concept id="1512255007353869535" name="jetbrains.mps.lang.plugin.structure.ActionReference" flags="ln" index="2JRCWP">
        <reference id="1512255007353869536" name="actionDeclaration" index="2JRCWa" />
      </concept>
      <concept id="1512255007353869532" name="jetbrains.mps.lang.plugin.structure.NonDumbAwareActions" flags="ng" index="2JRCWQ">
        <child id="1512255007353869533" name="actions" index="2JRCWR" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <property id="1562714432501166281" name="keymap" index="Zd52Q" />
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ngI" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5678361901872075170" name="jetbrains.mps.lang.plugin.structure.EditableModel" flags="ng" index="3dZWAM" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="5818192529492099570" name="jetbrains.mps.lang.plugin.structure.CloseTabOperation" flags="nn" index="3ryLUP">
        <child id="5818192529492102108" name="componentExpression" index="3ryLir" />
      </concept>
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="3418954410726344423" name="jetbrains.mps.lang.plugin.standalone.structure.PlatformAccessExpression" flags="ng" index="XUXob" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ngI" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
      <concept id="126958800891274162" name="jetbrains.mps.lang.extension.structure.Extension" flags="ig" index="1lYeZD">
        <reference id="126958800891274597" name="extensionPoint" index="1lYe$Y" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
    </language>
    <language id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring">
      <concept id="6598645150040035709" name="jetbrains.mps.lang.refactoring.structure.IsRefactoringApplicable" flags="nn" index="3trCAK">
        <reference id="6598645150040035710" name="refactoring" index="3trCAN" />
        <child id="5217171010854307053" name="project" index="3a2dA9" />
        <child id="6598645150040036518" name="target" index="3trCLF" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
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
      <concept id="3506770386464365589" name="jetbrains.mps.lang.smodel.structure.Model_PointerOperation" flags="ng" index="aIX43" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
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
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="64d34fcd-ad02-4e73-aff8-a581124c2e30" name="jetbrains.mps.lang.findUsages">
      <concept id="2005690715325995359" name="jetbrains.mps.lang.findUsages.structure.FinderReference" flags="ng" index="zAVLb">
        <reference id="7222148688691763792" name="finder" index="2$JaeB" />
      </concept>
      <concept id="2005690715325995353" name="jetbrains.mps.lang.findUsages.structure.ExecuteFindersGetSearchResults" flags="nn" index="zAVLd">
        <child id="6366407517031970111" name="scope" index="2GiN3o" />
        <child id="6366407517031970110" name="queryNode" index="2GiN3p" />
        <child id="8150507060913099385" name="finder" index="1C5ry4" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="sE7Ow" id="6YK8y67o2Yu">
    <property role="TrG5h" value="MoveModel" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Move Model" />
    <property role="3GE5qa" value="Menu.ProjectPane.Model.Actions" />
    <property role="1teQrl" value="true" />
    <node concept="tnohg" id="6YK8y67o2Yv" role="tncku">
      <node concept="3clFbS" id="6YK8y67o2Yw" role="2VODD2">
        <node concept="3clFbF" id="3QWQ9jDSKnN" role="3cqZAp">
          <node concept="2OqwBi" id="3QWQ9jDSOvN" role="3clFbG">
            <node concept="2OqwBi" id="3QWQ9jDSOlA" role="2Oq$k0">
              <node concept="2WthIp" id="3QWQ9jDSOlD" role="2Oq$k0" />
              <node concept="2XshWL" id="3QWQ9jDSOlF" role="2OqNvi">
                <ref role="2WH_rO" node="3QWQ9jDSxnz" resolve="getExecutor" />
              </node>
            </node>
            <node concept="liA8E" id="3QWQ9jDSOJY" role="2OqNvi">
              <ref role="37wK5l" to="tprs:695k0NOvqqp" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6YK8y67s5oJ" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODEL" resolve="MODEL" />
      <node concept="1oajcY" id="6YK8y67s5oK" role="1oa70y" />
      <node concept="3dZWAM" id="65dH5rmWbr4" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6YK8y67o2Z$" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6YK8y67o2Z_" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6YK8y67s5oN" role="1NuT2Z">
      <property role="TrG5h" value="selSize" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_SELECTION_SIZE" resolve="TREE_SELECTION_SIZE" />
      <node concept="1oajcY" id="6YK8y67s5oO" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="6aHs3s7Q$yB" role="tmbBb">
      <node concept="3clFbS" id="6aHs3s7Q$yC" role="2VODD2">
        <node concept="3cpWs8" id="6aHs3s7Q_B7" role="3cqZAp">
          <node concept="3cpWsn" id="6aHs3s7Q_B8" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="6aHs3s7Q_AK" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="6aHs3s7Q_B9" role="33vP2m">
              <node concept="tl45R" id="6aHs3s7Q_Ba" role="2Oq$k0" />
              <node concept="liA8E" id="6aHs3s7Q_Bb" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6aHs3s7QH9b" role="3cqZAp" />
        <node concept="3clFbF" id="6aHs3s7Q_aM" role="3cqZAp">
          <node concept="2OqwBi" id="6aHs3s7Q_Q3" role="3clFbG">
            <node concept="37vLTw" id="6aHs3s7Q_Bc" role="2Oq$k0">
              <ref role="3cqZAo" node="6aHs3s7Q_B8" resolve="presentation" />
            </node>
            <node concept="liA8E" id="6aHs3s7QA80" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="1Wc70l" id="6aHs3s7QElB" role="37wK5m">
                <node concept="1Wc70l" id="6aHs3s7QDdn" role="3uHU7B">
                  <node concept="3clFbC" id="6aHs3s7QAHO" role="3uHU7B">
                    <node concept="2OqwBi" id="6aHs3s7QA95" role="3uHU7B">
                      <node concept="2WthIp" id="6aHs3s7QA96" role="2Oq$k0" />
                      <node concept="1DTwFV" id="6aHs3s7QA97" role="2OqNvi">
                        <ref role="2WH_rO" node="6YK8y67s5oN" resolve="selSize" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="6aHs3s7QA94" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6aHs3s7QDzz" role="3uHU7w">
                    <node concept="1eOMI4" id="6aHs3s7QDz_" role="3fr31v">
                      <node concept="2ZW3vV" id="6aHs3s7QDTf" role="1eOMHV">
                        <node concept="3uibUv" id="6aHs3s7QDTg" role="2ZW6by">
                          <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
                        </node>
                        <node concept="2OqwBi" id="6aHs3s7QDTh" role="2ZW6bz">
                          <node concept="2WthIp" id="6aHs3s7QDTi" role="2Oq$k0" />
                          <node concept="1DTwFV" id="6aHs3s7QDTj" role="2OqNvi">
                            <ref role="2WH_rO" node="6YK8y67s5oJ" resolve="model" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6aHs3s7QG7P" role="3uHU7w">
                  <node concept="2YIFZM" id="6aHs3s7QG7R" role="3fr31v">
                    <ref role="37wK5l" to="vndm:~LanguageAspectSupport.isAspectModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isAspectModel" />
                    <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
                    <node concept="2OqwBi" id="6aHs3s7QG7S" role="37wK5m">
                      <node concept="2WthIp" id="6aHs3s7QG7T" role="2Oq$k0" />
                      <node concept="1DTwFV" id="6aHs3s7QG7U" role="2OqNvi">
                        <ref role="2WH_rO" node="6YK8y67s5oJ" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6aHs3s7QHdA" role="3cqZAp" />
        <node concept="3clFbF" id="6aHs3s7QHri" role="3cqZAp">
          <node concept="2OqwBi" id="6aHs3s7QHBy" role="3clFbG">
            <node concept="37vLTw" id="6aHs3s7QHrg" role="2Oq$k0">
              <ref role="3cqZAo" node="6aHs3s7Q_B8" resolve="presentation" />
            </node>
            <node concept="liA8E" id="6aHs3s7QI6g" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="6aHs3s7QIck" role="37wK5m">
                <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                <node concept="Xl_RD" id="6aHs3s7QIdq" role="37wK5m">
                  <property role="Xl_RC" value="actions.model.move.title" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3QWQ9jDSxnz" role="32lrUH">
      <property role="TrG5h" value="getExecutor" />
      <node concept="3uibUv" id="3QWQ9jDSzJl" role="3clF45">
        <ref role="3uigEE" node="3QWQ9jDO9st" resolve="MoveModelActionExecutor" />
      </node>
      <node concept="3clFbS" id="3QWQ9jDSxn_" role="3clF47">
        <node concept="3clFbF" id="3QWQ9jDS_3G" role="3cqZAp">
          <node concept="2ShNRf" id="3QWQ9jDS_3E" role="3clFbG">
            <node concept="1pGfFk" id="3QWQ9jDSB$_" role="2ShVmc">
              <ref role="37wK5l" node="3zqCb3QEI5s" resolve="MoveModelActionExecutor" />
              <node concept="2OqwBi" id="3QWQ9jDSBTI" role="37wK5m">
                <node concept="2WthIp" id="3QWQ9jDSBEW" role="2Oq$k0" />
                <node concept="1DTwFV" id="3QWQ9jDSHAU" role="2OqNvi">
                  <ref role="2WH_rO" node="6YK8y67o2Z$" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="3QWQ9jDSIMD" role="37wK5m">
                <node concept="2WthIp" id="3QWQ9jDSIzu" role="2Oq$k0" />
                <node concept="1DTwFV" id="3QWQ9jDSJ5L" role="2OqNvi">
                  <ref role="2WH_rO" node="6YK8y67s5oJ" resolve="model" />
                </node>
              </node>
              <node concept="2OqwBi" id="3zqCb3QHvTU" role="37wK5m">
                <node concept="2WthIp" id="3zqCb3QHvTX" role="2Oq$k0" />
                <node concept="1DTwFV" id="3zqCb3QHvTZ" role="2OqNvi">
                  <ref role="2WH_rO" node="53cI0Bj$Ggq" resolve="targetModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8LSzHw" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="53cI0Bj$Ggq" role="1NuT2Z">
      <property role="TrG5h" value="targetModule" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TARGET_MODULE" resolve="TARGET_MODULE" />
    </node>
  </node>
  <node concept="Zd50a" id="2fhbn0FCdDa">
    <property role="TrG5h" value="Refactoring_Default" />
    <node concept="Zd509" id="64AN2EWtFXN" role="Zd508">
      <ref role="1bYAoF" node="hSPYZl3" resolve="DeleteNode" />
      <node concept="pLAjd" id="64AN2EWtFXO" role="Zd501">
        <property role="pLAjf" value="VK_DELETE" />
      </node>
    </node>
    <node concept="Zd509" id="7BBQIYkR4lj" role="Zd508">
      <ref role="1bYAoF" node="7BBQIYkR4kU" resolve="SafeDelete" />
      <node concept="pLAjd" id="5GUQLVLhlPS" role="Zd501">
        <property role="pLAjf" value="VK_DELETE" />
        <property role="pLAjc" value="alt" />
      </node>
    </node>
    <node concept="Zd509" id="I5wdVHTnQg" role="Zd508">
      <ref role="1bYAoF" node="I5wdVHTn$t" resolve="MoveNodes" />
      <node concept="pLAjd" id="I5wdVHTnQh" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
      </node>
    </node>
    <node concept="Zd509" id="6YK8y67rteX" role="Zd508">
      <ref role="1bYAoF" node="6YK8y67o2Yu" resolve="MoveModel" />
      <node concept="pLAjd" id="6YK8y67rteZ" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
      </node>
    </node>
    <node concept="Zd509" id="7BBQIYkR472" role="Zd508">
      <ref role="1bYAoF" node="7BBQIYkR45T" resolve="RenameNode" />
      <node concept="pLAjd" id="5GUQLVLhlPO" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
        <property role="pLAjc" value="shift" />
      </node>
    </node>
    <node concept="Zd509" id="64AN2EWtFZ_" role="Zd508">
      <ref role="1bYAoF" node="5VIEYrBjMRo" resolve="RenameModel" />
      <node concept="pLAjd" id="64AN2EWtFZA" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
        <property role="pLAjc" value="shift" />
      </node>
    </node>
    <node concept="Zd509" id="64AN2EWtFZv" role="Zd508">
      <ref role="1bYAoF" node="3fhZBTge84q" resolve="RenameModule" />
      <node concept="pLAjd" id="64AN2EWtFZw" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
        <property role="pLAjc" value="shift" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="I5wdVHTn$t">
    <property role="TrG5h" value="MoveNodes" />
    <property role="72QZ$" value="true" />
    <property role="1teQrl" value="true" />
    <property role="2uzpH1" value="Move Nodes" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node.Actions" />
    <node concept="2S4$dB" id="I5wdVHTn$u" role="1NuT2Z">
      <property role="TrG5h" value="nodesToMove" />
      <node concept="3Tm6S6" id="I5wdVHTn$v" role="1B3o_S" />
      <node concept="2I9FWS" id="I5wdVHTn$w" role="1tU5fm" />
      <node concept="1oajcY" id="I5wdVHTn$x" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="I5wdVHTn$y" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="I5wdVHTn$z" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2M3H3BXpUJm" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
    </node>
    <node concept="tnohg" id="I5wdVHTn$$" role="tncku">
      <node concept="3clFbS" id="I5wdVHTn$_" role="2VODD2">
        <node concept="3clFbF" id="1F5g4zQxfxV" role="3cqZAp">
          <node concept="2OqwBi" id="1F5g4zQxfC7" role="3clFbG">
            <node concept="liA8E" id="1F5g4zQxfIn" role="2OqNvi">
              <ref role="37wK5l" to="lfzw:7YjnSrg2usG" resolve="execute" />
              <node concept="2OqwBi" id="1F5g4zQxfJc" role="37wK5m">
                <node concept="2WthIp" id="1F5g4zQxfJf" role="2Oq$k0" />
                <node concept="1DTwFV" id="1F5g4zQxfJh" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="1F5g4zQxfMc" role="37wK5m">
                <node concept="2WthIp" id="1F5g4zQxfMf" role="2Oq$k0" />
                <node concept="3gHZIF" id="1F5g4zQxfMh" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                </node>
              </node>
              <node concept="2OqwBi" id="7YjnSrg6Dok" role="37wK5m">
                <node concept="2WthIp" id="7YjnSrg6Don" role="2Oq$k0" />
                <node concept="1DTwFV" id="7YjnSrg6Dop" role="2OqNvi">
                  <ref role="2WH_rO" node="7YjnSrg1ASb" resolve="targetModel" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="4X1d9kMB6kR" role="2Oq$k0">
              <ref role="1Pybhc" to="lfzw:30kw7F05k9w" resolve="MoveNodesActionHelper" />
              <ref role="37wK5l" to="lfzw:30kw7F05kW_" resolve="getRefactoring" />
              <node concept="2OqwBi" id="30kw7F05q0X" role="37wK5m">
                <node concept="2WthIp" id="30kw7F05q0Y" role="2Oq$k0" />
                <node concept="1DTwFV" id="30kw7F05q0Z" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="30kw7F05q10" role="37wK5m">
                <node concept="2WthIp" id="30kw7F05q11" role="2Oq$k0" />
                <node concept="3gHZIF" id="30kw7F05q12" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2W$k3RWu0dk" role="tmbBb">
      <node concept="3clFbS" id="2W$k3RWu0dl" role="2VODD2">
        <node concept="3clFbJ" id="7l8SZlcMrSz" role="3cqZAp">
          <node concept="3clFbS" id="7l8SZlcMrS_" role="3clFbx">
            <node concept="3clFbF" id="7l8SZlcMsyB" role="3cqZAp">
              <node concept="2OqwBi" id="7l8SZlcMsyC" role="3clFbG">
                <node concept="2OqwBi" id="7l8SZlcMsyD" role="2Oq$k0">
                  <node concept="tl45R" id="7l8SZlcMsyE" role="2Oq$k0" />
                  <node concept="liA8E" id="7l8SZlcMsyF" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7l8SZlcMsyG" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                  <node concept="3clFbT" id="7l8SZlcMsyH" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7l8SZlcMsBH" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="7l8SZlcMIqL" role="3clFbw">
            <node concept="3y3z36" id="7l8SZlcMKuf" role="3uHU7B">
              <node concept="10Nm6u" id="7l8SZlcMKuF" role="3uHU7w" />
              <node concept="2OqwBi" id="7l8SZlcMJ66" role="3uHU7B">
                <node concept="2WthIp" id="7l8SZlcMICW" role="2Oq$k0" />
                <node concept="1DTwFV" id="7l8SZlcMJ$f" role="2OqNvi">
                  <ref role="2WH_rO" node="2M3H3BXpUJm" resolve="editorComponent" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7l8SZlcMnVA" role="3uHU7w">
              <node concept="2OqwBi" id="7l8SZlcMmy5" role="2Oq$k0">
                <node concept="2WthIp" id="7l8SZlcMlVZ" role="2Oq$k0" />
                <node concept="3gHZIF" id="7l8SZlcMn1C" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                </node>
              </node>
              <node concept="2HwmR7" id="7l8SZlcMpxR" role="2OqNvi">
                <node concept="1bVj0M" id="7l8SZlcMpxT" role="23t8la">
                  <node concept="3clFbS" id="7l8SZlcMpxU" role="1bW5cS">
                    <node concept="3clFbF" id="7l8SZlcMpNb" role="3cqZAp">
                      <node concept="2YIFZM" id="4HCUGw9vZPw" role="3clFbG">
                        <ref role="37wK5l" to="3ahc:~ReadOnlyUtil.isCellsReadOnlyInEditor(jetbrains.mps.openapi.editor.EditorComponent,java.lang.Iterable)" resolve="isCellsReadOnlyInEditor" />
                        <ref role="1Pybhc" to="3ahc:~ReadOnlyUtil" resolve="ReadOnlyUtil" />
                        <node concept="2OqwBi" id="7l8SZlcMiV_" role="37wK5m">
                          <node concept="2WthIp" id="7l8SZlcMiCL" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7l8SZlcMj89" role="2OqNvi">
                            <ref role="2WH_rO" node="2M3H3BXpUJm" resolve="editorComponent" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="4HCUGw9vZP$" role="37wK5m">
                          <node concept="2HTt$P" id="4HCUGw9vZP_" role="2ShVmc">
                            <node concept="3uibUv" id="7l8SZlcMreN" role="2HTBi0">
                              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                            </node>
                            <node concept="2OqwBi" id="4HCUGw9vZPB" role="2HTEbv">
                              <node concept="liA8E" id="4HCUGw9vZPF" role="2OqNvi">
                                <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode)" resolve="findNodeCell" />
                                <node concept="37vLTw" id="7l8SZlcMqUa" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0Xp$" resolve="node" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7l8SZlcMjlC" role="2Oq$k0">
                                <node concept="2WthIp" id="7l8SZlcMjlD" role="2Oq$k0" />
                                <node concept="1DTwFV" id="7l8SZlcMjlE" role="2OqNvi">
                                  <ref role="2WH_rO" node="2M3H3BXpUJm" resolve="editorComponent" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xp$" role="1bW2Oz">
                    <property role="TrG5h" value="node" />
                    <node concept="2jxLKc" id="5W7E4fV0Xp_" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HcORs6EnFe" role="3cqZAp">
          <node concept="3clFbS" id="3HcORs6EnFg" role="3clFbx">
            <node concept="3clFbF" id="3HcORs6Ey9n" role="3cqZAp">
              <node concept="2OqwBi" id="3HcORs6Ey9o" role="3clFbG">
                <node concept="2OqwBi" id="3HcORs6Ey9p" role="2Oq$k0">
                  <node concept="tl45R" id="3HcORs6Ey9q" role="2Oq$k0" />
                  <node concept="liA8E" id="3HcORs6Ey9r" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="3HcORs6Ey9s" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                  <node concept="3clFbT" id="3HcORs6Ey9t" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3HcORs6EzB2" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="61ZTWDjM1yg" role="3clFbw">
            <node concept="2OqwBi" id="3HcORs6EpxR" role="2Oq$k0">
              <node concept="2WthIp" id="3HcORs6EpxU" role="2Oq$k0" />
              <node concept="3gHZIF" id="3HcORs6EpxW" role="2OqNvi">
                <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
              </node>
            </node>
            <node concept="2HwmR7" id="3HcORs6Ew_o" role="2OqNvi">
              <node concept="1bVj0M" id="3HcORs6Ew_q" role="23t8la">
                <node concept="3clFbS" id="3HcORs6Ew_r" role="1bW5cS">
                  <node concept="3clFbF" id="3HcORs6Ew_s" role="3cqZAp">
                    <node concept="22lmx$" id="3HcORs6ExI7" role="3clFbG">
                      <node concept="2OqwBi" id="3HcORs6Ew_C" role="3uHU7B">
                        <node concept="2JrnkZ" id="3HcORs6Ew_D" role="2Oq$k0">
                          <node concept="2OqwBi" id="3HcORs6Ew_E" role="2JrQYb">
                            <node concept="37vLTw" id="3HcORs6Ew_F" role="2Oq$k0">
                              <ref role="3cqZAo" node="3HcORs6Ew_I" resolve="it" />
                            </node>
                            <node concept="I4A8Y" id="3HcORs6Ew_G" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3HcORs6Ew_H" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3HcORs6Ew_v" role="3uHU7w">
                        <node concept="2OqwBi" id="3HcORs6Ew_w" role="2Oq$k0">
                          <node concept="2JrnkZ" id="3HcORs6Ew_x" role="2Oq$k0">
                            <node concept="2OqwBi" id="3HcORs6Ew_y" role="2JrQYb">
                              <node concept="37vLTw" id="3HcORs6Ew_z" role="2Oq$k0">
                                <ref role="3cqZAo" node="3HcORs6Ew_I" resolve="it" />
                              </node>
                              <node concept="I4A8Y" id="3HcORs6Ew_$" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3HcORs6Ew__" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3HcORs6Ew_A" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="3HcORs6Ew_I" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3HcORs6Ew_J" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gEjUfBq$aW" role="3cqZAp">
          <node concept="2YIFZM" id="4X1d9kMBzJ2" role="3clFbw">
            <ref role="1Pybhc" to="lfzw:42LwYUtqJvj" resolve="MoveNodesUtil" />
            <ref role="37wK5l" to="lfzw:55uxGWy8qqr" resolve="areSiblings" />
            <node concept="2OqwBi" id="6gEjUfBq$p1" role="37wK5m">
              <node concept="2WthIp" id="6gEjUfBq$p4" role="2Oq$k0" />
              <node concept="3gHZIF" id="6gEjUfBq$p6" role="2OqNvi">
                <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
              </node>
            </node>
            <node concept="2OqwBi" id="3AJCY8PTwqr" role="37wK5m">
              <node concept="2OqwBi" id="3AJCY8PTw7J" role="2Oq$k0">
                <node concept="2WthIp" id="3AJCY8PTw7M" role="2Oq$k0" />
                <node concept="1DTwFV" id="3AJCY8PTw7O" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="3AJCY8PTwUi" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6gEjUfBq$aY" role="3clFbx">
            <node concept="3cpWs8" id="1F5g4zQxlXA" role="3cqZAp">
              <node concept="3cpWsn" id="1F5g4zQxlXB" role="3cpWs9">
                <property role="TrG5h" value="refactoring" />
                <node concept="3uibUv" id="1F5g4zQxlX$" role="1tU5fm">
                  <ref role="3uigEE" to="lfzw:1F5g4zQqSPt" resolve="MoveNodesAction" />
                </node>
                <node concept="2YIFZM" id="4X1d9kMB6kS" role="33vP2m">
                  <ref role="1Pybhc" to="lfzw:30kw7F05k9w" resolve="MoveNodesActionHelper" />
                  <ref role="37wK5l" to="lfzw:30kw7F05kW_" resolve="getRefactoring" />
                  <node concept="2OqwBi" id="30kw7F05p$1" role="37wK5m">
                    <node concept="2WthIp" id="30kw7F05p$4" role="2Oq$k0" />
                    <node concept="1DTwFV" id="30kw7F05p$6" role="2OqNvi">
                      <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="30kw7F05pCZ" role="37wK5m">
                    <node concept="2WthIp" id="30kw7F05pD2" role="2Oq$k0" />
                    <node concept="3gHZIF" id="30kw7F05pD4" role="2OqNvi">
                      <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1F5g4zQxm6q" role="3cqZAp">
              <node concept="2OqwBi" id="1F5g4zQxm6r" role="3clFbG">
                <node concept="2OqwBi" id="1F5g4zQxm6s" role="2Oq$k0">
                  <node concept="tl45R" id="1F5g4zQxm6t" role="2Oq$k0" />
                  <node concept="liA8E" id="1F5g4zQxm6u" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="1F5g4zQxm6v" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="2OqwBi" id="1F5g4zQxm6w" role="37wK5m">
                    <node concept="37vLTw" id="1F5g4zQxm6x" role="2Oq$k0">
                      <ref role="3cqZAo" node="1F5g4zQxlXB" resolve="refactoring" />
                    </node>
                    <node concept="liA8E" id="1F5g4zQxm6y" role="2OqNvi">
                      <ref role="37wK5l" to="lfzw:1F5g4zQxi0e" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2W$k3RWuy9$" role="3cqZAp">
              <node concept="2OqwBi" id="2W$k3RWuyr0" role="3clFbG">
                <node concept="2OqwBi" id="2W$k3RWuycU" role="2Oq$k0">
                  <node concept="tl45R" id="2W$k3RWuy9z" role="2Oq$k0" />
                  <node concept="liA8E" id="2W$k3RWuyq7" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="2W$k3RWuyvZ" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                  <node concept="3clFbT" id="6gEjUfBq_24" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6gEjUfBq_52" role="9aQIa">
            <node concept="3clFbS" id="6gEjUfBq_53" role="9aQI4">
              <node concept="3clFbF" id="6gEjUfBq_8c" role="3cqZAp">
                <node concept="2OqwBi" id="6gEjUfBq_8d" role="3clFbG">
                  <node concept="2OqwBi" id="6gEjUfBq_8e" role="2Oq$k0">
                    <node concept="tl45R" id="6gEjUfBq_8f" role="2Oq$k0" />
                    <node concept="liA8E" id="6gEjUfBq_8g" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6gEjUfBq_8h" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                    <node concept="3clFbT" id="6gEjUfBq_8i" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7YjnSrg1ASb" role="1NuT2Z">
      <property role="TrG5h" value="targetModel" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TARGET_MODEL" resolve="TARGET_MODEL" />
    </node>
  </node>
  <node concept="312cEu" id="3QWQ9jDO9st">
    <property role="3GE5qa" value="Menu.ProjectPane.Model.Actions" />
    <property role="TrG5h" value="MoveModelActionExecutor" />
    <node concept="2tJIrI" id="3QWQ9jDPmg6" role="jymVt" />
    <node concept="312cEg" id="3QWQ9jDPmZv" role="jymVt">
      <property role="TrG5h" value="myDialogSettingsFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3QWQ9jDPmZw" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDPmZx" role="1tU5fm">
        <ref role="3uigEE" to="yrws:695k0NOxCSK" resolve="NewModelDialogSettings.Factory" />
      </node>
    </node>
    <node concept="312cEg" id="3QWQ9jDPq$b" role="jymVt">
      <property role="TrG5h" value="myOriginalModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3QWQ9jDPq$c" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDPq$d" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="3zqCb3QF8y8" role="jymVt">
      <property role="TrG5h" value="myTargetModule" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3zqCb3QF8y9" role="1B3o_S" />
      <node concept="3uibUv" id="3zqCb3QF8yb" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPq$4" role="jymVt" />
    <node concept="3clFbW" id="3QWQ9jDPqB7" role="jymVt">
      <node concept="37vLTG" id="3QWQ9jDPqBa" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3QWQ9jDPqBb" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="3QWQ9jDPqBc" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="3uibUv" id="3QWQ9jDPqBd" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3cqZAl" id="3QWQ9jDPqBe" role="3clF45" />
      <node concept="3Tm1VV" id="3QWQ9jDPqBf" role="1B3o_S" />
      <node concept="3clFbS" id="3QWQ9jDPqBg" role="3clF47">
        <node concept="1VxSAg" id="3QWQ9jDPqBh" role="3cqZAp">
          <ref role="37wK5l" node="3QWQ9jDPqBo" resolve="MoveModelActionExecutor" />
          <node concept="37vLTw" id="3QWQ9jDPqBj" role="37wK5m">
            <ref role="3cqZAo" node="3QWQ9jDPqBa" resolve="project" />
          </node>
          <node concept="37vLTw" id="3QWQ9jDPAXC" role="37wK5m">
            <ref role="3cqZAo" node="3QWQ9jDPqBc" resolve="originalModel" />
          </node>
          <node concept="1rXfSq" id="3QWQ9jDPB9B" role="37wK5m">
            <ref role="37wK5l" node="3QWQ9jDPqX0" resolve="getDefaultSettingsFactoryForMoved" />
            <node concept="37vLTw" id="3QWQ9jDPBkT" role="37wK5m">
              <ref role="3cqZAo" node="3QWQ9jDPqBc" resolve="originalModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPqBn" role="jymVt" />
    <node concept="3clFbW" id="3zqCb3QEI5s" role="jymVt">
      <node concept="37vLTG" id="3zqCb3QEI5t" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3zqCb3QEI5u" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="3zqCb3QEI5v" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="3uibUv" id="3zqCb3QEI5w" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="3zqCb3QELpP" role="3clF46">
        <property role="TrG5h" value="targetModule" />
        <node concept="3uibUv" id="3zqCb3QEUx2" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="3zqCb3QEI5x" role="3clF45" />
      <node concept="3Tm1VV" id="3zqCb3QEI5y" role="1B3o_S" />
      <node concept="3clFbS" id="3zqCb3QEI5z" role="3clF47">
        <node concept="1VxSAg" id="3zqCb3QEI5$" role="3cqZAp">
          <ref role="37wK5l" node="3zqCb3QEV5X" resolve="MoveModelActionExecutor" />
          <node concept="37vLTw" id="3zqCb3QEI5_" role="37wK5m">
            <ref role="3cqZAo" node="3zqCb3QEI5t" resolve="project" />
          </node>
          <node concept="37vLTw" id="3zqCb3QEI5A" role="37wK5m">
            <ref role="3cqZAo" node="3zqCb3QEI5v" resolve="originalModel" />
          </node>
          <node concept="37vLTw" id="3zqCb3QFdiS" role="37wK5m">
            <ref role="3cqZAo" node="3zqCb3QELpP" resolve="targetModule" />
          </node>
          <node concept="1rXfSq" id="3zqCb3QEI5B" role="37wK5m">
            <ref role="37wK5l" node="3QWQ9jDPqX0" resolve="getDefaultSettingsFactoryForMoved" />
            <node concept="37vLTw" id="3zqCb3QEI5C" role="37wK5m">
              <ref role="3cqZAo" node="3zqCb3QEI5v" resolve="originalModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3zqCb3QEI5r" role="jymVt" />
    <node concept="3clFbW" id="3QWQ9jDPqBo" role="jymVt">
      <node concept="37vLTG" id="3QWQ9jDPqBr" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3QWQ9jDPqBs" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="3QWQ9jDPqBt" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="3uibUv" id="3QWQ9jDPqBu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="3QWQ9jDPqBv" role="3clF46">
        <property role="TrG5h" value="dialogSettingsFactory" />
        <node concept="3uibUv" id="3QWQ9jDPqBw" role="1tU5fm">
          <ref role="3uigEE" to="yrws:695k0NOxCSK" resolve="NewModelDialogSettings.Factory" />
        </node>
      </node>
      <node concept="3cqZAl" id="3QWQ9jDPqBx" role="3clF45" />
      <node concept="3Tm1VV" id="3QWQ9jDPqBy" role="1B3o_S" />
      <node concept="3clFbS" id="3QWQ9jDPqBz" role="3clF47">
        <node concept="1VxSAg" id="3zqCb3QF3xM" role="3cqZAp">
          <ref role="37wK5l" node="3zqCb3QEV5X" resolve="MoveModelActionExecutor" />
          <node concept="37vLTw" id="3zqCb3QF48O" role="37wK5m">
            <ref role="3cqZAo" node="3QWQ9jDPqBr" resolve="project" />
          </node>
          <node concept="37vLTw" id="3zqCb3QF5Il" role="37wK5m">
            <ref role="3cqZAo" node="3QWQ9jDPqBt" resolve="originalModel" />
          </node>
          <node concept="10Nm6u" id="3zqCb3QF6jH" role="37wK5m" />
          <node concept="37vLTw" id="3zqCb3QF7_g" role="37wK5m">
            <ref role="3cqZAo" node="3QWQ9jDPqBv" resolve="dialogSettingsFactory" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3zqCb3QEYdc" role="jymVt" />
    <node concept="3clFbW" id="3zqCb3QEV5X" role="jymVt">
      <node concept="37vLTG" id="3zqCb3QEV5Y" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3zqCb3QEV5Z" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="3zqCb3QEV60" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="3uibUv" id="3zqCb3QEV61" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="3zqCb3QF10h" role="3clF46">
        <property role="TrG5h" value="targetModule" />
        <node concept="3uibUv" id="3zqCb3QF212" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="3zqCb3QEV62" role="3clF46">
        <property role="TrG5h" value="dialogSettingsFactory" />
        <node concept="3uibUv" id="3zqCb3QEV63" role="1tU5fm">
          <ref role="3uigEE" to="yrws:695k0NOxCSK" resolve="NewModelDialogSettings.Factory" />
        </node>
      </node>
      <node concept="3cqZAl" id="3zqCb3QEV64" role="3clF45" />
      <node concept="3Tm1VV" id="3zqCb3QEV65" role="1B3o_S" />
      <node concept="3clFbS" id="3zqCb3QEV66" role="3clF47">
        <node concept="XkiVB" id="3zqCb3QEV67" role="3cqZAp">
          <ref role="37wK5l" to="tprs:695k0NOvHbp" resolve="ModelCreationActionsBaseExecutor" />
          <node concept="37vLTw" id="3zqCb3QEV68" role="37wK5m">
            <ref role="3cqZAo" node="3zqCb3QEV5Y" resolve="project" />
          </node>
        </node>
        <node concept="3clFbF" id="3zqCb3QEV69" role="3cqZAp">
          <node concept="37vLTI" id="3zqCb3QEV6a" role="3clFbG">
            <node concept="37vLTw" id="3zqCb3QEV6b" role="37vLTx">
              <ref role="3cqZAo" node="3zqCb3QEV60" resolve="originalModel" />
            </node>
            <node concept="37vLTw" id="3zqCb3QEV6c" role="37vLTJ">
              <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zqCb3QF8yc" role="3cqZAp">
          <node concept="37vLTI" id="3zqCb3QF8ye" role="3clFbG">
            <node concept="37vLTw" id="3zqCb3QF8yh" role="37vLTJ">
              <ref role="3cqZAo" node="3zqCb3QF8y8" resolve="myTargetModule" />
            </node>
            <node concept="37vLTw" id="3zqCb3QF8yi" role="37vLTx">
              <ref role="3cqZAo" node="3zqCb3QF10h" resolve="targetModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zqCb3QEV6d" role="3cqZAp">
          <node concept="37vLTI" id="3zqCb3QEV6e" role="3clFbG">
            <node concept="37vLTw" id="3zqCb3QEV6f" role="37vLTx">
              <ref role="3cqZAo" node="3zqCb3QEV62" resolve="dialogSettingsFactory" />
            </node>
            <node concept="37vLTw" id="3zqCb3QEV6g" role="37vLTJ">
              <ref role="3cqZAo" node="3QWQ9jDPmZv" resolve="myDialogSettingsFactory" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPmg8" role="jymVt" />
    <node concept="3clFb_" id="3QWQ9jDPBy7" role="jymVt">
      <property role="TrG5h" value="selectModule" />
      <property role="DiZV1" value="true" />
      <node concept="3Tmbuc" id="3QWQ9jDPBy8" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDPBy9" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3clFbS" id="3QWQ9jDPBya" role="3clF47">
        <node concept="3clFbJ" id="3zqCb3QGkkL" role="3cqZAp">
          <node concept="3clFbS" id="3zqCb3QGkkN" role="3clFbx">
            <node concept="3cpWs6" id="3zqCb3QGsxq" role="3cqZAp">
              <node concept="37vLTw" id="3zqCb3QGvRY" role="3cqZAk">
                <ref role="3cqZAo" node="3zqCb3QF8y8" resolve="myTargetModule" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zqCb3QGoI6" role="3clFbw">
            <node concept="10Nm6u" id="3zqCb3QGqwb" role="3uHU7w" />
            <node concept="37vLTw" id="3zqCb3QGmtk" role="3uHU7B">
              <ref role="3cqZAo" node="3zqCb3QF8y8" resolve="myTargetModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3zqCb3QGxqY" role="3cqZAp" />
        <node concept="3cpWs8" id="3QWQ9jDPDpy" role="3cqZAp">
          <node concept="3cpWsn" id="3QWQ9jDPDpz" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="_YKpA" id="3QWQ9jDPDp$" role="1tU5fm">
              <node concept="3uibUv" id="3QWQ9jDPDp_" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="3QWQ9jDPDpA" role="33vP2m">
              <node concept="Tc6Ow" id="3QWQ9jDPDpB" role="2ShVmc">
                <node concept="3uibUv" id="3QWQ9jDPDpC" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="3QWQ9jDPDpD" role="3cqZAp">
          <node concept="1QHqEC" id="3QWQ9jDPDpE" role="1QHqEI">
            <node concept="3clFbS" id="3QWQ9jDPDpF" role="1bW5cS">
              <node concept="2Gpval" id="3QWQ9jDPDpG" role="3cqZAp">
                <node concept="2GrKxI" id="3QWQ9jDPDpH" role="2Gsz3X">
                  <property role="TrG5h" value="module" />
                </node>
                <node concept="3clFbS" id="3QWQ9jDPDpI" role="2LFqv$">
                  <node concept="3clFbF" id="3QWQ9jDPDpJ" role="3cqZAp">
                    <node concept="2OqwBi" id="3QWQ9jDPDpK" role="3clFbG">
                      <node concept="37vLTw" id="3QWQ9jDPDpL" role="2Oq$k0">
                        <ref role="3cqZAo" node="3QWQ9jDPDpz" resolve="modules" />
                      </node>
                      <node concept="TSZUe" id="3QWQ9jDPDpM" role="2OqNvi">
                        <node concept="2OqwBi" id="3QWQ9jDPDpN" role="25WWJ7">
                          <node concept="2GrUjf" id="3QWQ9jDPDpO" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3QWQ9jDPDpH" resolve="module" />
                          </node>
                          <node concept="liA8E" id="3QWQ9jDPDpP" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3QWQ9jDPDpQ" role="2GsD0m">
                  <node concept="37vLTw" id="3QWQ9jDPFzH" role="2Oq$k0">
                    <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="3QWQ9jDPDpU" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getProjectModulesWithGenerators()" resolve="getProjectModulesWithGenerators" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3QWQ9jDPDpV" role="ukAjM">
            <node concept="liA8E" id="3QWQ9jDPDpZ" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
            <node concept="37vLTw" id="3QWQ9jDPF0z" role="2Oq$k0">
              <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3QWQ9jDPDq8" role="3cqZAp">
          <node concept="3cpWsn" id="3QWQ9jDPDq9" role="3cpWs9">
            <property role="TrG5h" value="selectedModule" />
            <node concept="3uibUv" id="3QWQ9jDPDqg" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
            </node>
            <node concept="2OqwBi" id="2NGkazlhLik" role="33vP2m">
              <node concept="2ShNRf" id="2NGkazlhHQ9" role="2Oq$k0">
                <node concept="1pGfFk" id="2NGkazlhJEL" role="2ShVmc">
                  <ref role="37wK5l" node="5r7NrS5qB0T" resolve="MoveModelDialog" />
                  <node concept="37vLTw" id="2NGkazlhJJi" role="37wK5m">
                    <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                  </node>
                  <node concept="1rXfSq" id="2NGkazlhK7Z" role="37wK5m">
                    <ref role="37wK5l" node="3_TiVQaO3E7" resolve="getTitle" />
                  </node>
                  <node concept="37vLTw" id="2NGkazlhK$N" role="37wK5m">
                    <ref role="3cqZAo" node="3QWQ9jDPDpz" resolve="modules" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2NGkazlhMiL" role="2OqNvi">
                <ref role="37wK5l" to="u42p:4_ns_JET_Ey" resolve="showAndGetSelected" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3QWQ9jDPDqh" role="3cqZAp">
          <node concept="3clFbS" id="3QWQ9jDPDqi" role="3clFbx">
            <node concept="3cpWs6" id="3QWQ9jDPDqj" role="3cqZAp">
              <node concept="10Nm6u" id="3QWQ9jDPGZC" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3QWQ9jDPDqk" role="3clFbw">
            <node concept="10Nm6u" id="3QWQ9jDPDql" role="3uHU7w" />
            <node concept="37vLTw" id="3QWQ9jDPDqm" role="3uHU7B">
              <ref role="3cqZAo" node="3QWQ9jDPDq9" resolve="selectedModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3QWQ9jDPDhM" role="3cqZAp" />
        <node concept="3clFbF" id="3QWQ9jDPByb" role="3cqZAp">
          <node concept="2OqwBi" id="3QWQ9jDPByc" role="3clFbG">
            <node concept="liA8E" id="3QWQ9jDPByd" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="3QWQ9jDPBye" role="37wK5m">
                <node concept="3clFbS" id="3QWQ9jDPByf" role="1bW5cS">
                  <node concept="3clFbF" id="3QWQ9jDPByg" role="3cqZAp">
                    <node concept="2OqwBi" id="3QWQ9jDPJF4" role="3clFbG">
                      <node concept="37vLTw" id="3QWQ9jDPJwg" role="2Oq$k0">
                        <ref role="3cqZAo" node="3QWQ9jDPDq9" resolve="selectedModule" />
                      </node>
                      <node concept="liA8E" id="3QWQ9jDPJPa" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="2OqwBi" id="3QWQ9jDPIjF" role="37wK5m">
                          <node concept="37vLTw" id="3QWQ9jDPH_J" role="2Oq$k0">
                            <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                          </node>
                          <node concept="liA8E" id="3QWQ9jDPJbO" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3QWQ9jDPByk" role="2Oq$k0">
              <node concept="1pGfFk" id="3QWQ9jDPByl" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="3QWQ9jDPBym" role="37wK5m">
                  <node concept="37vLTw" id="3QWQ9jDPByn" role="2Oq$k0">
                    <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="3QWQ9jDPByo" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3QWQ9jDPByp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPBso" role="jymVt" />
    <node concept="2tJIrI" id="3QWQ9jDPKsk" role="jymVt" />
    <node concept="3clFb_" id="3QWQ9jDPKSj" role="jymVt">
      <property role="TrG5h" value="showDialog" />
      <node concept="37vLTG" id="3QWQ9jDPKSk" role="3clF46">
        <property role="TrG5h" value="module" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3QWQ9jDPKSl" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tmbuc" id="3QWQ9jDPKSn" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDPKSo" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3clFbS" id="3QWQ9jDPKSs" role="3clF47">
        <node concept="3cpWs8" id="3QWQ9jDPLK8" role="3cqZAp">
          <node concept="3cpWsn" id="3QWQ9jDPLK9" role="3cpWs9">
            <property role="TrG5h" value="refactoringBody" />
            <node concept="3uibUv" id="3QWQ9jDStZC" role="1tU5fm">
              <ref role="3uigEE" node="3QWQ9jDQM6l" resolve="MoveModelActionExecutor.MoveModelRefactoringBody" />
            </node>
            <node concept="2ShNRf" id="3QWQ9jDRzFq" role="33vP2m">
              <node concept="1pGfFk" id="3QWQ9jDSomN" role="2ShVmc">
                <ref role="37wK5l" node="3QWQ9jDRKQX" resolve="MoveModelActionExecutor.MoveModelRefactoringBody" />
                <node concept="37vLTw" id="3QWQ9jDSprY" role="37wK5m">
                  <ref role="3cqZAo" node="3QWQ9jDPKSk" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3QWQ9jDSj0_" role="3cqZAp" />
        <node concept="3clFbF" id="3QWQ9jDPLNy" role="3cqZAp">
          <node concept="2YIFZM" id="4AevHfIt_Gi" role="3clFbG">
            <ref role="37wK5l" to="5nvm:4fSm5R8N4ge" resolve="performRefactoringInProject" />
            <ref role="1Pybhc" to="5nvm:5dWUYKKJ14W" resolve="RefactoringProcessor" />
            <node concept="37vLTw" id="3QWQ9jDS5Rx" role="37wK5m">
              <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
            </node>
            <node concept="2ShNRf" id="3QWQ9jDPLNB" role="37wK5m">
              <node concept="1pGfFk" id="3QWQ9jDPLNC" role="2ShVmc">
                <ref role="37wK5l" to="lfzw:7i7ttYT1Jur" resolve="DefaultRefactoringUI" />
                <node concept="37vLTw" id="3QWQ9jDS6ZV" role="37wK5m">
                  <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                </node>
                <node concept="2OqwBi" id="7i7ttYT4xk1" role="37wK5m">
                  <node concept="37vLTw" id="7i7ttYT4wOi" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QWQ9jDPLK9" resolve="refactoringBody" />
                  </node>
                  <node concept="liA8E" id="7i7ttYT4xWs" role="2OqNvi">
                    <ref role="37wK5l" node="3QWQ9jDQQhu" resolve="getRefactoringName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3QWQ9jDPLNG" role="37wK5m">
              <ref role="3cqZAo" node="3QWQ9jDPLK9" resolve="refactoringBody" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3QWQ9jDSgku" role="3cqZAp" />
        <node concept="3cpWs6" id="3QWQ9jDSh90" role="3cqZAp">
          <node concept="2OqwBi" id="3QWQ9jDSsjy" role="3cqZAk">
            <node concept="37vLTw" id="3QWQ9jDSrye" role="2Oq$k0">
              <ref role="3cqZAo" node="3QWQ9jDPLK9" resolve="refactoringBody" />
            </node>
            <node concept="liA8E" id="3QWQ9jDSw3Z" role="2OqNvi">
              <ref role="37wK5l" node="3QWQ9jDRqad" resolve="getNewModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3QWQ9jDPKSt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPBtP" role="jymVt" />
    <node concept="2tJIrI" id="3QWQ9jDPqT8" role="jymVt" />
    <node concept="2YIFZL" id="3QWQ9jDPqX0" role="jymVt">
      <property role="TrG5h" value="getDefaultSettingsFactoryForMoved" />
      <node concept="3clFbS" id="3QWQ9jDPqX1" role="3clF47">
        <node concept="3clFbF" id="3QWQ9jDPqX2" role="3cqZAp">
          <node concept="2YIFZM" id="3QWQ9jDPqX3" role="3clFbG">
            <ref role="1Pybhc" to="yrws:695k0NOxxHF" resolve="NewModelDialogDefaultSettings" />
            <ref role="37wK5l" to="yrws:695k0NO_dVY" resolve="getFactory" />
            <node concept="1rXfSq" id="3QWQ9jDPqX4" role="37wK5m">
              <ref role="37wK5l" node="3QWQ9jDPqXd" resolve="getNameForMoved" />
              <node concept="37vLTw" id="3QWQ9jDPqX5" role="37wK5m">
                <ref role="3cqZAo" node="3QWQ9jDPqXa" resolve="originalModel" />
              </node>
            </node>
            <node concept="1rXfSq" id="3QWQ9jDPqX6" role="37wK5m">
              <ref role="37wK5l" node="3QWQ9jDPqXw" resolve="getStereotypeForMoved" />
              <node concept="37vLTw" id="3QWQ9jDPqX7" role="37wK5m">
                <ref role="3cqZAo" node="3QWQ9jDPqXa" resolve="originalModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3QWQ9jDPqX8" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDPqX9" role="3clF45">
        <ref role="3uigEE" to="yrws:695k0NOxCSK" resolve="NewModelDialogSettings.Factory" />
      </node>
      <node concept="37vLTG" id="3QWQ9jDPqXa" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="3uibUv" id="3QWQ9jDPqXb" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPqXc" role="jymVt" />
    <node concept="2YIFZL" id="3QWQ9jDPqXd" role="jymVt">
      <property role="TrG5h" value="getNameForMoved" />
      <node concept="3clFbS" id="3QWQ9jDPqXe" role="3clF47">
        <node concept="3clFbF" id="3QWQ9jDPqXf" role="3cqZAp">
          <node concept="2OqwBi" id="3QWQ9jDP$Yf" role="3clFbG">
            <node concept="liA8E" id="3QWQ9jDP$Yg" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
            </node>
            <node concept="2OqwBi" id="3QWQ9jDP$Yh" role="2Oq$k0">
              <node concept="37vLTw" id="3QWQ9jDP$Yi" role="2Oq$k0">
                <ref role="3cqZAo" node="3QWQ9jDPqXt" resolve="originalModel" />
              </node>
              <node concept="liA8E" id="3QWQ9jDP$Yj" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3QWQ9jDPqXr" role="1B3o_S" />
      <node concept="17QB3L" id="3QWQ9jDPqXs" role="3clF45" />
      <node concept="37vLTG" id="3QWQ9jDPqXt" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="3uibUv" id="3QWQ9jDPqXu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDPqXv" role="jymVt" />
    <node concept="2YIFZL" id="3QWQ9jDPqXw" role="jymVt">
      <property role="TrG5h" value="getStereotypeForMoved" />
      <node concept="3clFbS" id="3QWQ9jDPqXx" role="3clF47">
        <node concept="3clFbF" id="3QWQ9jDPqXy" role="3cqZAp">
          <node concept="2YIFZM" id="3QWQ9jDP_t5" role="3clFbG">
            <ref role="37wK5l" to="kxvg:~StereotypeProvider.create(java.lang.String,boolean)" resolve="create" />
            <ref role="1Pybhc" to="kxvg:~StereotypeProvider" resolve="StereotypeProvider" />
            <node concept="2OqwBi" id="3QWQ9jDPA30" role="37wK5m">
              <node concept="2OqwBi" id="3QWQ9jDP_NR" role="2Oq$k0">
                <node concept="37vLTw" id="3QWQ9jDP_DT" role="2Oq$k0">
                  <ref role="3cqZAo" node="3QWQ9jDPqXW" resolve="model" />
                </node>
                <node concept="liA8E" id="3QWQ9jDP_Yv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="liA8E" id="3QWQ9jDPAex" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelName.getStereotype()" resolve="getStereotype" />
              </node>
            </node>
            <node concept="3clFbT" id="3QWQ9jDPAnM" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3QWQ9jDPqXU" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDPqXV" role="3clF45">
        <ref role="3uigEE" to="kxvg:~StereotypeProvider" resolve="StereotypeProvider" />
      </node>
      <node concept="37vLTG" id="3QWQ9jDPqXW" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3QWQ9jDPqXX" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3_TiVQaNaWm" role="jymVt" />
    <node concept="2YIFZL" id="3_TiVQaO3E7" role="jymVt">
      <property role="TrG5h" value="getTitle" />
      <node concept="3clFbS" id="3_TiVQaO3Ea" role="3clF47">
        <node concept="3clFbF" id="3_TiVQaO5Fb" role="3cqZAp">
          <node concept="2YIFZM" id="3_TiVQaO5Fv" role="3clFbG">
            <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
            <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
            <node concept="Xl_RD" id="3_TiVQaO5KO" role="37wK5m">
              <property role="Xl_RC" value="actions.model.move.title" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3_TiVQaO1S3" role="1B3o_S" />
      <node concept="3uibUv" id="3_TiVQaO56T" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="3QWQ9jDQKlE" role="jymVt" />
    <node concept="312cEu" id="3QWQ9jDQM6l" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MoveModelRefactoringBody" />
      <node concept="312cEg" id="3QWQ9jDQZ14" role="jymVt">
        <property role="TrG5h" value="myParticipants" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="3QWQ9jDQZ15" role="1B3o_S" />
        <node concept="3uibUv" id="3QWQ9jDQZ17" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="3QWQ9jDQZ18" role="11_B2D">
            <node concept="3uibUv" id="3QWQ9jDQZ19" role="3qUE_r">
              <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
              <node concept="3qTvmN" id="3QWQ9jDQZ1a" role="11_B2D" />
              <node concept="3qTvmN" id="3QWQ9jDQZ1b" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQZ1c" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQZ1d" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3QWQ9jDQZ1e" role="33vP2m">
          <node concept="2O5UvJ" id="3QWQ9jDQZ1f" role="2Oq$k0">
            <ref role="2O5UnU" to="4ugc:2ziiPwwD3Q0" resolve="MoveModelParticipantEP" />
          </node>
          <node concept="SfwO_" id="3QWQ9jDQZ1g" role="2OqNvi" />
        </node>
      </node>
      <node concept="312cEg" id="3QWQ9jDRH$e" role="jymVt">
        <property role="TrG5h" value="myModule" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="3QWQ9jDRERY" role="1B3o_S" />
        <node concept="3uibUv" id="3QWQ9jDRGG9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="312cEg" id="3QWQ9jDQQhU" role="jymVt">
        <property role="TrG5h" value="myNewModel" />
        <node concept="3Tm6S6" id="3QWQ9jDQQhV" role="1B3o_S" />
        <node concept="3uibUv" id="3QWQ9jDQQhW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
        </node>
        <node concept="10Nm6u" id="3QWQ9jDQQhX" role="33vP2m" />
      </node>
      <node concept="2tJIrI" id="3QWQ9jDQXSM" role="jymVt" />
      <node concept="3clFbW" id="3QWQ9jDRKQX" role="jymVt">
        <node concept="3cqZAl" id="3QWQ9jDRKQY" role="3clF45" />
        <node concept="3Tm1VV" id="3QWQ9jDS4Gq" role="1B3o_S" />
        <node concept="3clFbS" id="3QWQ9jDRKR1" role="3clF47">
          <node concept="3clFbF" id="3QWQ9jDRKR5" role="3cqZAp">
            <node concept="37vLTI" id="3QWQ9jDRKR7" role="3clFbG">
              <node concept="37vLTw" id="3QWQ9jDRQE8" role="37vLTJ">
                <ref role="3cqZAo" node="3QWQ9jDRH$e" resolve="myModule" />
              </node>
              <node concept="37vLTw" id="3QWQ9jDRKRe" role="37vLTx">
                <ref role="3cqZAo" node="3QWQ9jDRKR4" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3QWQ9jDRKR4" role="3clF46">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="3QWQ9jDRKR3" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDRJr5" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQhu" role="jymVt">
        <property role="TrG5h" value="getRefactoringName" />
        <property role="1EzhhJ" value="false" />
        <node concept="3Tm1VV" id="3QWQ9jDQQhv" role="1B3o_S" />
        <node concept="17QB3L" id="3QWQ9jDQQhw" role="3clF45" />
        <node concept="3clFbS" id="3QWQ9jDQQhx" role="3clF47">
          <node concept="3clFbF" id="3QWQ9jDQXBo" role="3cqZAp">
            <node concept="1rXfSq" id="3_TiVQaO7nW" role="3clFbG">
              <ref role="37wK5l" node="3_TiVQaO3E7" resolve="getTitle" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDR4Ag" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQh$" role="jymVt">
        <property role="TrG5h" value="getAllAvailableParticipants" />
        <property role="1EzhhJ" value="false" />
        <node concept="3Tm1VV" id="3QWQ9jDQQh_" role="1B3o_S" />
        <node concept="3uibUv" id="3QWQ9jDQQhA" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="3QWQ9jDQQhB" role="11_B2D">
            <node concept="3uibUv" id="3QWQ9jDQQhC" role="3qUE_r">
              <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
              <node concept="3qTvmN" id="3QWQ9jDQQhD" role="11_B2D" />
              <node concept="3qTvmN" id="3QWQ9jDQQhE" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQQhF" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQQhG" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3QWQ9jDQQhH" role="3clF47">
          <node concept="3clFbF" id="3QWQ9jDR250" role="3cqZAp">
            <node concept="37vLTw" id="3QWQ9jDR24X" role="3clFbG">
              <ref role="3cqZAo" node="3QWQ9jDQZ14" resolve="myParticipants" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDR5Lt" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQhK" role="jymVt">
        <property role="TrG5h" value="findInitialStates" />
        <property role="1EzhhJ" value="false" />
        <node concept="3Tm1VV" id="3QWQ9jDQQhL" role="1B3o_S" />
        <node concept="_YKpA" id="3QWQ9jDQQhM" role="3clF45">
          <node concept="H_c77" id="3QWQ9jDQQhN" role="_ZDj9" />
        </node>
        <node concept="3clFbS" id="3QWQ9jDQQhO" role="3clF47">
          <node concept="3clFbF" id="3QWQ9jDQQhP" role="3cqZAp">
            <node concept="2ShNRf" id="3QWQ9jDQQhQ" role="3clFbG">
              <node concept="Tc6Ow" id="3QWQ9jDQQhR" role="2ShVmc">
                <node concept="H_c77" id="3QWQ9jDQQhS" role="HW$YZ" />
                <node concept="37vLTw" id="3QWQ9jDQQhT" role="HW$Y0">
                  <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDR6_c" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQhY" role="jymVt">
        <property role="TrG5h" value="prepareRefactoring" />
        <node concept="3Tm1VV" id="3QWQ9jDQQhZ" role="1B3o_S" />
        <node concept="3cqZAl" id="3QWQ9jDQQi0" role="3clF45" />
        <node concept="3clFbS" id="3QWQ9jDQQi1" role="3clF47">
          <node concept="3cpWs8" id="3QWQ9jDQQi2" role="3cqZAp">
            <node concept="3cpWsn" id="3QWQ9jDQQi3" role="3cpWs9">
              <property role="TrG5h" value="dialog" />
              <node concept="3uibUv" id="3QWQ9jDQQi4" role="1tU5fm">
                <ref role="3uigEE" to="yrws:1pyYjDPR9Zv" resolve="NewModelDialog" />
              </node>
              <node concept="2ShNRf" id="3QWQ9jDQQi5" role="33vP2m">
                <node concept="1pGfFk" id="3QWQ9jDQQi6" role="2ShVmc">
                  <ref role="37wK5l" to="yrws:1pyYjDPRa0t" resolve="NewModelDialog" />
                  <node concept="37vLTw" id="3QWQ9jDQQi7" role="37wK5m">
                    <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                  </node>
                  <node concept="10QFUN" id="3QWQ9jDRVZ7" role="37wK5m">
                    <node concept="3uibUv" id="3QWQ9jDRXtP" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="3QWQ9jDRSJo" role="10QFUP">
                      <ref role="3cqZAo" node="3QWQ9jDRH$e" resolve="myModule" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3_TiVQaO9RI" role="37wK5m">
                    <ref role="37wK5l" node="3_TiVQaO3E7" resolve="getTitle" />
                  </node>
                  <node concept="37vLTw" id="3QWQ9jDQQi9" role="37wK5m">
                    <ref role="3cqZAo" node="3QWQ9jDPmZv" resolve="myDialogSettingsFactory" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3QWQ9jDQQib" role="3cqZAp">
            <node concept="2OqwBi" id="3QWQ9jDQQic" role="3clFbG">
              <node concept="37vLTw" id="3QWQ9jDQQid" role="2Oq$k0">
                <ref role="3cqZAo" node="3QWQ9jDQQi3" resolve="dialog" />
              </node>
              <node concept="liA8E" id="3QWQ9jDQQie" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3QWQ9jDQQif" role="3cqZAp">
            <node concept="37vLTI" id="3QWQ9jDQQig" role="3clFbG">
              <node concept="37vLTw" id="3QWQ9jDQQih" role="37vLTJ">
                <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
              </node>
              <node concept="2EnYce" id="3QWQ9jDQQii" role="37vLTx">
                <node concept="2EnYce" id="3QWQ9jDQQij" role="2Oq$k0">
                  <node concept="2OqwBi" id="3QWQ9jDQQik" role="2Oq$k0">
                    <node concept="37vLTw" id="3QWQ9jDQQil" role="2Oq$k0">
                      <ref role="3cqZAo" node="3QWQ9jDQQi3" resolve="dialog" />
                    </node>
                    <node concept="liA8E" id="3QWQ9jDQQim" role="2OqNvi">
                      <ref role="37wK5l" to="yrws:7KfSwxyC4R7" resolve="getResultHelper" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3QWQ9jDQQin" role="2OqNvi">
                    <ref role="37wK5l" to="yrws:ZfFelTVGx4" resolve="setClone" />
                    <node concept="37vLTw" id="3QWQ9jDR91v" role="37wK5m">
                      <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
                    </node>
                    <node concept="3clFbT" id="3QWQ9jDQQir" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3QWQ9jDQQis" role="2OqNvi">
                  <ref role="37wK5l" to="yrws:ZfFelTpLNg" resolve="createModelHandleExceptions" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDRZKA" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQit" role="jymVt">
        <property role="TrG5h" value="doRefactor" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3QWQ9jDQQiu" role="3clF46">
          <property role="TrG5h" value="participantStates" />
          <node concept="A3Dl8" id="3QWQ9jDQQiv" role="1tU5fm">
            <node concept="3uibUv" id="3QWQ9jDQQiw" role="A3Ik2">
              <ref role="3uigEE" to="5nvm:5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
              <node concept="3qTvmN" id="3QWQ9jDQQix" role="11_B2D" />
              <node concept="3qTvmN" id="3QWQ9jDQQiy" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQQiz" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQQi$" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQQi_" role="11_B2D" />
              <node concept="H_c77" id="3QWQ9jDQQiA" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3QWQ9jDQQiB" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="3QWQ9jDQQiC" role="1tU5fm">
            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3QWQ9jDQQiD" role="1B3o_S" />
        <node concept="3cqZAl" id="3QWQ9jDQQiE" role="3clF45" />
        <node concept="3clFbS" id="3QWQ9jDQQiF" role="3clF47">
          <node concept="3clFbJ" id="3QWQ9jDQQiG" role="3cqZAp">
            <node concept="3clFbS" id="3QWQ9jDQQiH" role="3clFbx">
              <node concept="3cpWs6" id="3QWQ9jDQQiI" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="3QWQ9jDQQiJ" role="3clFbw">
              <node concept="37vLTw" id="3QWQ9jDQQiK" role="3uHU7B">
                <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
              </node>
              <node concept="10Nm6u" id="3QWQ9jDQQiL" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbH" id="3QWQ9jDQQiM" role="3cqZAp" />
          <node concept="3clFbJ" id="3QWQ9jDQQiN" role="3cqZAp">
            <node concept="3clFbS" id="3QWQ9jDQQiO" role="3clFbx">
              <node concept="3cpWs8" id="6g8JTHLvPVR" role="3cqZAp">
                <node concept="3cpWsn" id="6g8JTHLvPVS" role="3cpWs9">
                  <property role="TrG5h" value="oldModuleDependencies" />
                  <node concept="3uibUv" id="6g8JTHLvPVT" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                    <node concept="3uibUv" id="6g8JTHLvPVU" role="11_B2D">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6g8JTHLvPVV" role="33vP2m">
                    <node concept="2ShNRf" id="6g8JTHLvPVW" role="2Oq$k0">
                      <node concept="1pGfFk" id="6g8JTHLvPVX" role="2ShVmc">
                        <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule)" resolve="GlobalModuleDependenciesManager" />
                        <node concept="2OqwBi" id="6g8JTHLvPVY" role="37wK5m">
                          <node concept="37vLTw" id="6g8JTHLvR5J" role="2Oq$k0">
                            <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
                          </node>
                          <node concept="liA8E" id="6g8JTHLvRGd" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6g8JTHLvPW1" role="2OqNvi">
                      <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.getModules(jetbrains.mps.project.dependency.GlobalModuleDependenciesManager$Deptype)" resolve="getModules" />
                      <node concept="Rm8GO" id="6g8JTHLvPW2" role="37wK5m">
                        <ref role="1Px2BO" to="gp7a:~GlobalModuleDependenciesManager$Deptype" resolve="GlobalModuleDependenciesManager.Deptype" />
                        <ref role="Rm8GQ" to="gp7a:~GlobalModuleDependenciesManager$Deptype.VISIBLE" resolve="VISIBLE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3QWQ9jDQQiP" role="3cqZAp">
                <node concept="3cpWsn" id="3QWQ9jDQQiQ" role="3cpWs9">
                  <property role="TrG5h" value="exisingModuleDependencies" />
                  <node concept="3uibUv" id="3QWQ9jDQQiR" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                    <node concept="3uibUv" id="3QWQ9jDQQiS" role="11_B2D">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3QWQ9jDQQiT" role="33vP2m">
                    <node concept="2ShNRf" id="3QWQ9jDQQiU" role="2Oq$k0">
                      <node concept="1pGfFk" id="3QWQ9jDQQiV" role="2ShVmc">
                        <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule)" resolve="GlobalModuleDependenciesManager" />
                        <node concept="2OqwBi" id="3QWQ9jDQQiW" role="37wK5m">
                          <node concept="37vLTw" id="3QWQ9jDQQiX" role="2Oq$k0">
                            <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
                          </node>
                          <node concept="liA8E" id="3QWQ9jDQQiY" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3QWQ9jDQQiZ" role="2OqNvi">
                      <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.getModules(jetbrains.mps.project.dependency.GlobalModuleDependenciesManager$Deptype)" resolve="getModules" />
                      <node concept="Rm8GO" id="3QWQ9jDQQj0" role="37wK5m">
                        <ref role="1Px2BO" to="gp7a:~GlobalModuleDependenciesManager$Deptype" resolve="GlobalModuleDependenciesManager.Deptype" />
                        <ref role="Rm8GQ" to="gp7a:~GlobalModuleDependenciesManager$Deptype.VISIBLE" resolve="VISIBLE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="3QWQ9jDQQj1" role="3cqZAp">
                <node concept="2GrKxI" id="3QWQ9jDQQj2" role="2Gsz3X">
                  <property role="TrG5h" value="dependency" />
                </node>
                <node concept="3clFbS" id="3QWQ9jDQQj3" role="2LFqv$">
                  <node concept="3cpWs8" id="3QWQ9jDQQj4" role="3cqZAp">
                    <node concept="3cpWsn" id="3QWQ9jDQQj5" role="3cpWs9">
                      <property role="TrG5h" value="depModule" />
                      <node concept="3uibUv" id="3QWQ9jDQQj6" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="3QWQ9jDQQj7" role="33vP2m">
                        <node concept="2OqwBi" id="3QWQ9jDQQj8" role="2Oq$k0">
                          <node concept="2GrUjf" id="3QWQ9jDQQj9" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3QWQ9jDQQj2" resolve="dependency" />
                          </node>
                          <node concept="liA8E" id="3QWQ9jDQQja" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="2OqwBi" id="3QWQ9jDQQjb" role="37wK5m">
                              <node concept="37vLTw" id="3QWQ9jDRb0D" role="2Oq$k0">
                                <ref role="3cqZAo" to="tprs:695k0NOvCtd" resolve="myProject" />
                              </node>
                              <node concept="liA8E" id="3QWQ9jDQQjf" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3QWQ9jDQQjg" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3QWQ9jDQQjh" role="3cqZAp">
                    <node concept="3clFbS" id="3QWQ9jDQQji" role="3clFbx">
                      <node concept="3clFbF" id="3QWQ9jDQQjj" role="3cqZAp">
                        <node concept="2OqwBi" id="3QWQ9jDQQjk" role="3clFbG">
                          <node concept="1eOMI4" id="3QWQ9jDQQjl" role="2Oq$k0">
                            <node concept="10QFUN" id="3QWQ9jDQQjm" role="1eOMHV">
                              <node concept="2OqwBi" id="3QWQ9jDQQjn" role="10QFUP">
                                <node concept="37vLTw" id="3QWQ9jDQQjo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
                                </node>
                                <node concept="liA8E" id="3QWQ9jDQQjp" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                </node>
                              </node>
                              <node concept="3uibUv" id="3QWQ9jDQQjq" role="10QFUM">
                                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3QWQ9jDQQjr" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.addDependency(org.jetbrains.mps.openapi.module.SModuleReference,boolean)" resolve="addDependency" />
                            <node concept="2OqwBi" id="3QWQ9jDQQjs" role="37wK5m">
                              <node concept="37vLTw" id="3QWQ9jDQQjt" role="2Oq$k0">
                                <ref role="3cqZAo" node="3QWQ9jDQQj5" resolve="depModule" />
                              </node>
                              <node concept="liA8E" id="3QWQ9jDQQju" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="3QWQ9jDQQjv" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="6g8JTHLvSBk" role="3clFbw">
                      <node concept="3fqX7Q" id="3QWQ9jDQQjw" role="3uHU7B">
                        <node concept="2OqwBi" id="3QWQ9jDQQjx" role="3fr31v">
                          <node concept="37vLTw" id="3QWQ9jDQQjy" role="2Oq$k0">
                            <ref role="3cqZAo" node="3QWQ9jDQQiQ" resolve="exisingModuleDependencies" />
                          </node>
                          <node concept="liA8E" id="3QWQ9jDQQjz" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                            <node concept="37vLTw" id="3QWQ9jDQQj$" role="37wK5m">
                              <ref role="3cqZAo" node="3QWQ9jDQQj5" resolve="depModule" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6g8JTHLvSJ0" role="3uHU7w">
                        <node concept="37vLTw" id="6g8JTHLvT3C" role="2Oq$k0">
                          <ref role="3cqZAo" node="6g8JTHLvPVS" resolve="oldModuleDependencies" />
                        </node>
                        <node concept="liA8E" id="6g8JTHLvSJ2" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                          <node concept="37vLTw" id="6g8JTHLvSJ3" role="37wK5m">
                            <ref role="3cqZAo" node="3QWQ9jDQQj5" resolve="depModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6g8JTHLvOSI" role="2GsD0m">
                  <node concept="2OqwBi" id="6g8JTHLvN29" role="2Oq$k0">
                    <node concept="2OqwBi" id="6g8JTHLvM1Z" role="2Oq$k0">
                      <node concept="2OqwBi" id="6g8JTHLvLa4" role="2Oq$k0">
                        <node concept="2OqwBi" id="6g8JTHLvKtO" role="2Oq$k0">
                          <node concept="2ShNRf" id="6g8JTHLvGav" role="2Oq$k0">
                            <node concept="1pGfFk" id="6g8JTHLvKmA" role="2ShVmc">
                              <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.&lt;init&gt;()" resolve="ModelDependencyScanner" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6g8JTHLvKM1" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.crossModelReferences(boolean)" resolve="crossModelReferences" />
                            <node concept="3clFbT" id="6g8JTHLvL2g" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6g8JTHLvLuj" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.usedLanguages(boolean)" resolve="usedLanguages" />
                          <node concept="3clFbT" id="6g8JTHLvLNK" role="37wK5m" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6g8JTHLvMhC" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.usedConcepts(boolean)" resolve="usedConcepts" />
                        <node concept="3clFbT" id="6g8JTHLvMI8" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6g8JTHLvNbt" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.walk(org.jetbrains.mps.openapi.model.SModel)" resolve="walk" />
                      <node concept="37vLTw" id="6g8JTHLvOe$" role="37wK5m">
                        <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6g8JTHLvPzz" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~ModelDependencyScanner.getCrossModelReferences()" resolve="getCrossModelReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3QWQ9jDQQjG" role="3clFbw">
              <node concept="3uibUv" id="3QWQ9jDQQjH" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="2OqwBi" id="3QWQ9jDQQjI" role="2ZW6bz">
                <node concept="37vLTw" id="3QWQ9jDQQjJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
                </node>
                <node concept="liA8E" id="3QWQ9jDQQjK" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3QWQ9jDQQjO" role="3cqZAp">
            <node concept="2YIFZM" id="2fhbn0FCqao" role="3clFbG">
              <ref role="37wK5l" node="2ziiPwwLvC1" resolve="updateUsages" />
              <ref role="1Pybhc" node="2ziiPwwD4vZ" resolve="UpdateDependentModelsRefactoringParticipant" />
              <node concept="37vLTw" id="3QWQ9jDQQjQ" role="37wK5m">
                <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
              </node>
              <node concept="2OqwBi" id="3QWQ9jDRdnK" role="37wK5m">
                <node concept="37vLTw" id="3QWQ9jDRcDo" role="2Oq$k0">
                  <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
                </node>
                <node concept="liA8E" id="3QWQ9jDRe5Q" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="2OqwBi" id="3QWQ9jDQQjS" role="37wK5m">
                <node concept="37vLTw" id="3QWQ9jDQQjT" role="2Oq$k0">
                  <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
                </node>
                <node concept="liA8E" id="3QWQ9jDQQjU" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3QWQ9jDQQjV" role="3cqZAp">
            <node concept="2YIFZM" id="3QWQ9jDQQjW" role="3clFbG">
              <ref role="1Pybhc" to="d94j:~DeleteModelHelper" resolve="DeleteModelHelper" />
              <ref role="37wK5l" to="d94j:~DeleteModelHelper.delete(org.jetbrains.mps.openapi.module.SModule,org.jetbrains.mps.openapi.model.SModel,boolean)" resolve="delete" />
              <node concept="2OqwBi" id="3QWQ9jDQQjX" role="37wK5m">
                <node concept="37vLTw" id="3QWQ9jDRh6B" role="2Oq$k0">
                  <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
                </node>
                <node concept="liA8E" id="3QWQ9jDQQk1" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
              <node concept="37vLTw" id="3QWQ9jDRlJv" role="37wK5m">
                <ref role="3cqZAo" node="3QWQ9jDPq$b" resolve="myOriginalModel" />
              </node>
              <node concept="3clFbT" id="3QWQ9jDQQk5" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDS0Sz" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQk6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getFinalStateFor" />
        <node concept="37vLTG" id="3QWQ9jDQQk7" role="3clF46">
          <property role="TrG5h" value="initialState" />
          <node concept="H_c77" id="3QWQ9jDQQk8" role="1tU5fm" />
        </node>
        <node concept="H_c77" id="3QWQ9jDQQk9" role="3clF45" />
        <node concept="3Tm1VV" id="3QWQ9jDQQka" role="1B3o_S" />
        <node concept="3clFbS" id="3QWQ9jDQQkb" role="3clF47">
          <node concept="3cpWs6" id="3QWQ9jDQQkc" role="3cqZAp">
            <node concept="37vLTw" id="3QWQ9jDQQkd" role="3cqZAk">
              <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDS2fK" role="jymVt" />
      <node concept="3clFb_" id="3QWQ9jDQQke" role="jymVt">
        <property role="TrG5h" value="doCleanup" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="3QWQ9jDQQkf" role="3clF45" />
        <node concept="3Tm1VV" id="3QWQ9jDQQkg" role="1B3o_S" />
        <node concept="3clFbS" id="3QWQ9jDQQkh" role="3clF47">
          <node concept="3SKdUt" id="3QWQ9jDQQki" role="3cqZAp">
            <node concept="1PaTwC" id="3QWQ9jDQQkj" role="1aUNEU">
              <node concept="3oM_SD" id="3QWQ9jDQQkk" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="3QWQ9jDQQkl" role="1PaTwD">
                <property role="3oM_SC" value="nothing" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3QWQ9jDS3rJ" role="jymVt" />
      <node concept="3Tm6S6" id="3QWQ9jDRoop" role="1B3o_S" />
      <node concept="3uibUv" id="3QWQ9jDQOMb" role="EKbjA">
        <ref role="3uigEE" to="5nvm:2EZTs$tsIo8" resolve="RefactoringProcessor.RefactoringBody" />
        <node concept="H_c77" id="3QWQ9jDQQ7N" role="11_B2D" />
        <node concept="H_c77" id="3QWQ9jDQQgz" role="11_B2D" />
      </node>
      <node concept="3clFb_" id="3QWQ9jDRqad" role="jymVt">
        <property role="TrG5h" value="getNewModel" />
        <node concept="3uibUv" id="3QWQ9jDRqae" role="3clF45">
          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
        </node>
        <node concept="3Tm1VV" id="3QWQ9jDRqaf" role="1B3o_S" />
        <node concept="3clFbS" id="3QWQ9jDRqag" role="3clF47">
          <node concept="3clFbF" id="3QWQ9jDRx7Z" role="3cqZAp">
            <node concept="37vLTw" id="3QWQ9jDRx7Y" role="3clFbG">
              <ref role="3cqZAo" node="3QWQ9jDQQhU" resolve="myNewModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3QWQ9jDO9su" role="1B3o_S" />
    <node concept="3uibUv" id="3QWQ9jDO9yZ" role="1zkMxy">
      <ref role="3uigEE" to="tprs:695k0NOHWA8" resolve="ModelCreationActionsBaseExecutor" />
    </node>
  </node>
  <node concept="312cEu" id="2ziiPwwD4vZ">
    <property role="3GE5qa" value="Menu.ProjectPane.Model.Actions" />
    <property role="TrG5h" value="UpdateDependentModelsRefactoringParticipant" />
    <node concept="2tJIrI" id="2ziiPwwD9MX" role="jymVt" />
    <node concept="1lYeZD" id="56Biz00k8ke" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="UpdateDependentModelsRefactoringParticipant_extension" />
      <ref role="1lYe$Y" to="4ugc:2ziiPwwD3Q0" resolve="MoveModelParticipantEP" />
      <node concept="3Tm1VV" id="56Biz00k8kf" role="1B3o_S" />
      <node concept="q3mfD" id="56Biz00k8kl" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="56Biz00k8kn" role="1B3o_S" />
        <node concept="3clFbS" id="56Biz00k8kp" role="3clF47">
          <node concept="3clFbF" id="56Biz00mg4n" role="3cqZAp">
            <node concept="2ShNRf" id="56Biz00mg4l" role="3clFbG">
              <node concept="HV5vD" id="56Biz00mhZo" role="2ShVmc">
                <ref role="HV5vE" node="2ziiPwwD4vZ" resolve="UpdateDependentModelsRefactoringParticipant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="56Biz00k8kq" role="3clF45">
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
          <ref role="1QQUv3" node="56Biz00k8kl" resolve="get" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="56Biz00jkDT" role="jymVt" />
    <node concept="312cEg" id="2ziiPwwDhuO" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myDataCollector" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2ziiPwwDh1L" role="1B3o_S" />
      <node concept="3uibUv" id="2ziiPwwDhRg" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
        <node concept="3uibUv" id="2ziiPwwDhRh" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3uibUv" id="2ziiPwwDhRi" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="H_c77" id="2ziiPwwDhRj" role="11_B2D" />
        <node concept="H_c77" id="2ziiPwwDhRk" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="2ziiPwwDiyM" role="33vP2m">
        <node concept="YeOm9" id="2ziiPwwDTuc" role="2ShVmc">
          <node concept="1Y3b0j" id="2ziiPwwDTuf" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="5nvm:5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
            <node concept="3Tm1VV" id="2ziiPwwDTug" role="1B3o_S" />
            <node concept="3clFb_" id="2ziiPwwDTuh" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="beforeMove" />
              <node concept="3uibUv" id="2ziiPwwDTuB" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
              <node concept="3Tm1VV" id="2ziiPwwDTuj" role="1B3o_S" />
              <node concept="37vLTG" id="2ziiPwwDTul" role="3clF46">
                <property role="TrG5h" value="modelToMove" />
                <node concept="H_c77" id="2ziiPwwDTuF" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="2ziiPwwDTun" role="3clF47">
                <node concept="3clFbF" id="2ziiPwwDVNt" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgXNyBb" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgXNyBa" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ziiPwwDTul" resolve="modelToMove" />
                    </node>
                    <node concept="aIX43" id="3XR0QgXNyBc" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="2ziiPwwDTup" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="afterMove" />
              <node concept="3uibUv" id="2ziiPwwDTuD" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
              <node concept="3Tm1VV" id="2ziiPwwDTur" role="1B3o_S" />
              <node concept="37vLTG" id="2ziiPwwDTut" role="3clF46">
                <property role="TrG5h" value="movedModel" />
                <node concept="H_c77" id="2ziiPwwDTuH" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="2ziiPwwDTuv" role="3clF47">
                <node concept="3clFbF" id="2ziiPwwDXIX" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgXNyBi" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgXNyBh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ziiPwwDTut" resolve="movedModel" />
                    </node>
                    <node concept="aIX43" id="3XR0QgXNyBj" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2ziiPwwDTuA" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="3uibUv" id="2ziiPwwDTuC" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="H_c77" id="2ziiPwwDTuE" role="2Ghqu4" />
            <node concept="H_c77" id="2ziiPwwDTuG" role="2Ghqu4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ziiPwwDgyy" role="jymVt" />
    <node concept="3clFb_" id="2ziiPwwE1WO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataCollector" />
      <node concept="3uibUv" id="2ziiPwwE1WP" role="3clF45">
        <ref role="3uigEE" to="5nvm:5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
        <node concept="3uibUv" id="2ziiPwwE1Xc" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3uibUv" id="2ziiPwwE1Xd" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="H_c77" id="2ziiPwwE1Xe" role="11_B2D" />
        <node concept="H_c77" id="2ziiPwwE1Xf" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="2ziiPwwE1WU" role="1B3o_S" />
      <node concept="3clFbS" id="2ziiPwwE1Xg" role="3clF47">
        <node concept="3clFbF" id="2ziiPwwE3Fb" role="3cqZAp">
          <node concept="37vLTw" id="2ziiPwwE3F9" role="3clFbG">
            <ref role="3cqZAo" node="2ziiPwwDhuO" resolve="myDataCollector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ziiPwwE05U" role="jymVt" />
    <node concept="312cEg" id="2ziiPwwETZI" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myOption" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2ziiPwwESP4" role="1B3o_S" />
      <node concept="3uibUv" id="2ziiPwwETC6" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
      </node>
      <node concept="2ShNRf" id="2ziiPwwEV2S" role="33vP2m">
        <node concept="1pGfFk" id="2ziiPwwEV2R" role="2ShVmc">
          <ref role="37wK5l" to="5nvm:37Il31hWKPu" resolve="RefactoringParticipant.Option" />
          <node concept="Xl_RD" id="37Il31hXfsA" role="37wK5m">
            <property role="Xl_RC" value="moveModel.options.updateNodeReferences" />
          </node>
          <node concept="Xl_RD" id="4SG2RcUG_LS" role="37wK5m">
            <property role="Xl_RC" value="Update node references" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ziiPwwESba" role="jymVt" />
    <node concept="3clFb_" id="2ziiPwwEENv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="2ziiPwwEENw" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="2ziiPwwEENJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwEENy" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2ziiPwwEENz" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ziiPwwEEN$" role="1B3o_S" />
      <node concept="_YKpA" id="2ziiPwwEEN_" role="3clF45">
        <node concept="3uibUv" id="2ziiPwwEENA" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="2ziiPwwEENK" role="3clF47">
        <node concept="3clFbF" id="2ziiPwwF413" role="3cqZAp">
          <node concept="2ShNRf" id="2ziiPwwF40X" role="3clFbG">
            <node concept="Tc6Ow" id="2ziiPwwF5ko" role="2ShVmc">
              <node concept="3uibUv" id="2ziiPwwF6NY" role="HW$YZ">
                <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
              </node>
              <node concept="37vLTw" id="2ziiPwwF7rj" role="HW$Y0">
                <ref role="3cqZAo" node="2ziiPwwETZI" resolve="myOption" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ziiPwwEENL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ziiPwwEcnY" role="jymVt" />
    <node concept="3clFb_" id="2ziiPwwEPeI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="2ziiPwwEPeJ" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2ziiPwwEPfe" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwEPeL" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2ziiPwwEPeM" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwEPeN" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="2ziiPwwEPeO" role="1tU5fm">
          <node concept="3uibUv" id="2ziiPwwEPeP" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwEPeQ" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="2ziiPwwEPeR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwEPeS" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="2ziiPwwEPeT" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ziiPwwEPeU" role="1B3o_S" />
      <node concept="_YKpA" id="2ziiPwwEPf8" role="3clF45">
        <node concept="3uibUv" id="2ziiPwwEPf9" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="3uibUv" id="2ziiPwwEPfc" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
          <node concept="3uibUv" id="2ziiPwwEPfd" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2ziiPwwEPff" role="3clF47">
        <node concept="3clFbJ" id="2ziiPwwF8Dz" role="3cqZAp">
          <node concept="3clFbS" id="2ziiPwwF8D$" role="3clFbx">
            <node concept="3cpWs6" id="2ziiPwwFcvH" role="3cqZAp">
              <node concept="2ShNRf" id="2ziiPwwFdz_" role="3cqZAk">
                <node concept="Tc6Ow" id="2ziiPwwFd7_" role="2ShVmc">
                  <node concept="3uibUv" id="2ziiPwwFd7A" role="HW$YZ">
                    <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                    <node concept="3uibUv" id="2ziiPwwFd7B" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                    <node concept="3uibUv" id="2ziiPwwFd7C" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2ziiPwwFbEk" role="3clFbw">
            <node concept="2OqwBi" id="2ziiPwwFbEm" role="3fr31v">
              <node concept="37vLTw" id="2ziiPwwFbEn" role="2Oq$k0">
                <ref role="3cqZAo" node="2ziiPwwEPeN" resolve="selectedOptions" />
              </node>
              <node concept="3JPx81" id="2ziiPwwFbEo" role="2OqNvi">
                <node concept="37vLTw" id="2ziiPwwFbEp" role="25WWJ7">
                  <ref role="3cqZAo" node="2ziiPwwETZI" resolve="myOption" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ziiPwwFe7b" role="3cqZAp" />
        <node concept="3clFbF" id="2ziiPwwFkh0" role="3cqZAp">
          <node concept="2OqwBi" id="2ziiPwwFkGa" role="3clFbG">
            <node concept="37vLTw" id="2ziiPwwFkgY" role="2Oq$k0">
              <ref role="3cqZAo" node="2ziiPwwEPeS" resolve="progressMonitor" />
            </node>
            <node concept="liA8E" id="2ziiPwwFlce" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="2OqwBi" id="2ziiPwwFmZ4" role="37wK5m">
                <node concept="37vLTw" id="2ziiPwwFmky" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ziiPwwETZI" resolve="myOption" />
                </node>
                <node concept="liA8E" id="2ziiPwwFni$" role="2OqNvi">
                  <ref role="37wK5l" to="5nvm:37Il31hWTci" resolve="getDescription" />
                </node>
              </node>
              <node concept="3cmrfG" id="2ziiPwwFCsf" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ziiPwwFgpJ" role="3cqZAp">
          <node concept="3cpWsn" id="2ziiPwwFgpK" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="usages" />
            <node concept="2hMVRd" id="2ziiPwwFzJQ" role="1tU5fm">
              <node concept="3uibUv" id="2ziiPwwFzJS" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ziiPwwKwK5" role="3cqZAp">
          <node concept="3cpWsn" id="2ziiPwwKwK6" role="3cpWs9">
            <property role="TrG5h" value="sourceModel" />
            <node concept="3uibUv" id="2ziiPwwKwK1" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="2ziiPwwFqqJ" role="3cqZAp">
          <node concept="1QHqEC" id="2ziiPwwFqqL" role="1QHqEI">
            <node concept="3clFbS" id="2ziiPwwFqqN" role="1bW5cS">
              <node concept="3clFbF" id="2ziiPwwFoc2" role="3cqZAp">
                <node concept="37vLTI" id="2ziiPwwFoc4" role="3clFbG">
                  <node concept="2OqwBi" id="2ziiPwwFgpN" role="37vLTx">
                    <node concept="2YIFZM" id="2ziiPwwFgpO" role="2Oq$k0">
                      <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                      <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="2ziiPwwFgpP" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~FindUsagesFacade.findModelUsages(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findModelUsages" />
                      <node concept="2ShNRf" id="4y5Xi4pMQcw" role="37wK5m">
                        <node concept="1pGfFk" id="4y5Xi4pMRWS" role="2ShVmc">
                          <ref role="37wK5l" to="z1c3:~GlobalScope.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="GlobalScope" />
                          <node concept="37vLTw" id="4y5Xi4pMSvD" role="37wK5m">
                            <ref role="3cqZAo" node="2ziiPwwEPeL" resolve="repository" />
                          </node>
                        </node>
                      </node>
                      <node concept="2YIFZM" id="2ziiPwwFgpR" role="37wK5m">
                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                        <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                        <node concept="37vLTw" id="2ziiPwwKs6k" role="37wK5m">
                          <ref role="3cqZAo" node="2ziiPwwEPeJ" resolve="initialState" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2ziiPwwFhX6" role="37wK5m">
                        <node concept="37vLTw" id="2ziiPwwFhjp" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ziiPwwEPeS" resolve="progressMonitor" />
                        </node>
                        <node concept="liA8E" id="2ziiPwwFimX" role="2OqNvi">
                          <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                          <node concept="3cmrfG" id="2ziiPwwFiDp" role="37wK5m">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2ziiPwwFoc8" role="37vLTJ">
                    <ref role="3cqZAo" node="2ziiPwwFgpK" resolve="usages" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2ziiPwwK$6q" role="3cqZAp">
                <node concept="37vLTI" id="2ziiPwwK$6s" role="3clFbG">
                  <node concept="2OqwBi" id="2ziiPwwKwK7" role="37vLTx">
                    <node concept="37vLTw" id="2ziiPwwKwK8" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ziiPwwEPeJ" resolve="initialState" />
                    </node>
                    <node concept="liA8E" id="2ziiPwwKwK9" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                      <node concept="37vLTw" id="2ziiPwwKwKa" role="37wK5m">
                        <ref role="3cqZAo" node="2ziiPwwEPeL" resolve="repository" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2ziiPwwK$6w" role="37vLTJ">
                    <ref role="3cqZAo" node="2ziiPwwKwK6" resolve="sourceModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2ziiPwwFsoh" role="ukAjM">
            <ref role="3cqZAo" node="2ziiPwwEPeL" resolve="repository" />
          </node>
        </node>
        <node concept="3clFbH" id="2ziiPwwFuVQ" role="3cqZAp" />
        <node concept="3cpWs6" id="2ziiPwwFwrU" role="3cqZAp">
          <node concept="2OqwBi" id="2ziiPwwJz3d" role="3cqZAk">
            <node concept="2OqwBi" id="2ziiPwwFyv4" role="2Oq$k0">
              <node concept="37vLTw" id="2ziiPwwFxVH" role="2Oq$k0">
                <ref role="3cqZAo" node="2ziiPwwFgpK" resolve="usages" />
              </node>
              <node concept="3$u5V9" id="2ziiPwwFA1t" role="2OqNvi">
                <node concept="1bVj0M" id="2ziiPwwFA1v" role="23t8la">
                  <node concept="3clFbS" id="2ziiPwwFA1w" role="1bW5cS">
                    <node concept="3cpWs8" id="2ziiPwwGBdw" role="3cqZAp">
                      <node concept="3cpWsn" id="2ziiPwwGBdx" role="3cpWs9">
                        <property role="TrG5h" value="usageRef" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="2ziiPwwGBdy" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                        </node>
                        <node concept="2OqwBi" id="2ziiPwwGVeS" role="33vP2m">
                          <node concept="37vLTw" id="2ziiPwwGUCz" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XpA" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2ziiPwwH0rN" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2ziiPwwKnt9" role="3cqZAp">
                      <node concept="3cpWsn" id="1xRmxf63uEV" role="3cpWs9">
                        <property role="TrG5h" value="searchResults" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="1xRmxf63uEW" role="1tU5fm">
                          <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                        </node>
                        <node concept="2ShNRf" id="1xRmxf63uEX" role="33vP2m">
                          <node concept="1pGfFk" id="1xRmxf63uEY" role="2ShVmc">
                            <ref role="37wK5l" to="g4jo:6hZLf2Yo3pm" resolve="SearchResults" />
                            <node concept="2ShNRf" id="1xRmxf63uEZ" role="37wK5m">
                              <node concept="2i4dXS" id="1xRmxf63uF0" role="2ShVmc">
                                <node concept="H_c77" id="2ziiPwwKp9C" role="HW$YZ" />
                                <node concept="37vLTw" id="2ziiPwwKwKb" role="HW$Y0">
                                  <ref role="3cqZAo" node="2ziiPwwKwK6" resolve="sourceModel" />
                                </node>
                              </node>
                            </node>
                            <node concept="2ShNRf" id="1xRmxf63uF3" role="37wK5m">
                              <node concept="Tc6Ow" id="1xRmxf63uF4" role="2ShVmc">
                                <node concept="3uibUv" id="1xRmxf63uF5" role="HW$YZ">
                                  <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                                  <node concept="H_c77" id="2ziiPwwKLT9" role="11_B2D" />
                                </node>
                                <node concept="2ShNRf" id="1xRmxf63uF7" role="HW$Y0">
                                  <node concept="1pGfFk" id="1xRmxf63uF8" role="2ShVmc">
                                    <ref role="37wK5l" to="g4jo:J2bOg02GIy" resolve="SearchResult" />
                                    <node concept="37vLTw" id="2ziiPwwKFR4" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0XpA" resolve="it" />
                                    </node>
                                    <node concept="Xl_RD" id="1xRmxf63uFc" role="37wK5m">
                                      <property role="Xl_RC" value="dependent model" />
                                    </node>
                                    <node concept="3uibUv" id="2ziiPwwKK5A" role="1pMfVU">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2ziiPwwJLfL" role="3cqZAp">
                      <node concept="3cpWsn" id="2ziiPwwJLfM" role="3cpWs9">
                        <property role="TrG5h" value="change" />
                        <node concept="3uibUv" id="2ziiPwwJLfK" role="1tU5fm">
                          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                          <node concept="3uibUv" id="2ziiPwwJLft" role="11_B2D">
                            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                          </node>
                          <node concept="3uibUv" id="2ziiPwwJLfu" role="11_B2D">
                            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="2ziiPwwJLfN" role="33vP2m">
                          <node concept="YeOm9" id="2ziiPwwJLfO" role="2ShVmc">
                            <node concept="1Y3b0j" id="2ziiPwwJLfP" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <ref role="1Y3XeK" to="5nvm:7tV5ZLw1f3b" resolve="MoveNodeRefactoringParticipant.ChangeBase" />
                              <node concept="3clFb_" id="2ziiPwwJQyJ" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="getSearchResults" />
                                <node concept="3uibUv" id="2ziiPwwJQyK" role="3clF45">
                                  <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                                </node>
                                <node concept="3Tm1VV" id="2ziiPwwJQyL" role="1B3o_S" />
                                <node concept="3clFbS" id="2ziiPwwJQyQ" role="3clF47">
                                  <node concept="3clFbF" id="2ziiPwwKfpC" role="3cqZAp">
                                    <node concept="37vLTw" id="2ziiPwwKNmk" role="3clFbG">
                                      <ref role="3cqZAo" node="1xRmxf63uEV" resolve="searchResults" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="2ziiPwwJLfQ" role="1B3o_S" />
                              <node concept="3uibUv" id="2ziiPwwJLfR" role="2Ghqu4">
                                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                              </node>
                              <node concept="3uibUv" id="2ziiPwwJLfS" role="2Ghqu4">
                                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                              </node>
                              <node concept="3clFb_" id="2ziiPwwJLfT" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="confirm" />
                                <node concept="3cqZAl" id="2ziiPwwJLfU" role="3clF45" />
                                <node concept="3Tm1VV" id="2ziiPwwJLfV" role="1B3o_S" />
                                <node concept="37vLTG" id="2ziiPwwJLfW" role="3clF46">
                                  <property role="TrG5h" value="finalState" />
                                  <node concept="3uibUv" id="2ziiPwwJLfX" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="2ziiPwwJLfY" role="3clF46">
                                  <property role="TrG5h" value="repository" />
                                  <node concept="3uibUv" id="2ziiPwwJLfZ" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="2ziiPwwJLg0" role="3clF46">
                                  <property role="TrG5h" value="refactoringSession" />
                                  <node concept="3uibUv" id="2ziiPwwJLg1" role="1tU5fm">
                                    <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="2ziiPwwJLg2" role="3clF47">
                                  <node concept="3clFbF" id="7WDAPLDU8AX" role="3cqZAp">
                                    <node concept="2OqwBi" id="7WDAPLDU9_5" role="3clFbG">
                                      <node concept="37vLTw" id="7WDAPLDU8AV" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2ziiPwwJLg0" resolve="refactoringSession" />
                                      </node>
                                      <node concept="liA8E" id="7WDAPLDU9R1" role="2OqNvi">
                                        <ref role="37wK5l" to="5nvm:3KqYwoBJ0Rs" resolve="registerChange" />
                                        <node concept="1bVj0M" id="7WDAPLDUboy" role="37wK5m">
                                          <node concept="3clFbS" id="7WDAPLDUboz" role="1bW5cS">
                                            <node concept="3cpWs8" id="2ziiPwwJLg3" role="3cqZAp">
                                              <node concept="3cpWsn" id="2ziiPwwJLg4" role="3cpWs9">
                                                <property role="TrG5h" value="usage" />
                                                <node concept="3uibUv" id="2ziiPwwJLg5" role="1tU5fm">
                                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                                </node>
                                                <node concept="2OqwBi" id="2ziiPwwJLg6" role="33vP2m">
                                                  <node concept="37vLTw" id="2ziiPwwJLg7" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="2ziiPwwGBdx" resolve="usageRef" />
                                                  </node>
                                                  <node concept="liA8E" id="2ziiPwwJLg8" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                    <node concept="37vLTw" id="2ziiPwwJLg9" role="37wK5m">
                                                      <ref role="3cqZAo" node="2ziiPwwJLfY" resolve="repository" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="2ziiPwwJLga" role="3cqZAp">
                                              <node concept="3clFbS" id="2ziiPwwJLgb" role="3clFbx">
                                                <node concept="3clFbF" id="2ziiPwwJLgc" role="3cqZAp">
                                                  <node concept="2OqwBi" id="2ziiPwwJLgd" role="3clFbG">
                                                    <node concept="1eOMI4" id="2ziiPwwJLge" role="2Oq$k0">
                                                      <node concept="10QFUN" id="2ziiPwwJLgf" role="1eOMHV">
                                                        <node concept="37vLTw" id="2ziiPwwJLgg" role="10QFUP">
                                                          <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                        </node>
                                                        <node concept="3uibUv" id="2ziiPwwJLgh" role="10QFUM">
                                                          <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="2ziiPwwJLgi" role="2OqNvi">
                                                      <ref role="37wK5l" to="w1kc:~SModelInternal.addModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="addModelImport" />
                                                      <node concept="37vLTw" id="2ziiPwwJLgj" role="37wK5m">
                                                        <ref role="3cqZAo" node="2ziiPwwJLfW" resolve="finalState" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="2ziiPwwJLgl" role="3cqZAp">
                                                  <node concept="1rXfSq" id="2ziiPwwJLgm" role="3clFbG">
                                                    <ref role="37wK5l" node="2ziiPwwLvC1" resolve="updateUsages" />
                                                    <node concept="10QFUN" id="2ziiPwwJLgn" role="37wK5m">
                                                      <node concept="37vLTw" id="2ziiPwwJLgo" role="10QFUP">
                                                        <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                      </node>
                                                      <node concept="3uibUv" id="2ziiPwwJLgp" role="10QFUM">
                                                        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                                      </node>
                                                    </node>
                                                    <node concept="37vLTw" id="2ziiPwwJLgq" role="37wK5m">
                                                      <ref role="3cqZAo" node="2ziiPwwEPeJ" resolve="initialState" />
                                                    </node>
                                                    <node concept="37vLTw" id="2ziiPwwJLgr" role="37wK5m">
                                                      <ref role="3cqZAo" node="2ziiPwwJLfW" resolve="finalState" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="2ziiPwwJLgs" role="3cqZAp">
                                                  <node concept="2OqwBi" id="2ziiPwwJLgt" role="3clFbG">
                                                    <node concept="1eOMI4" id="2ziiPwwJLgu" role="2Oq$k0">
                                                      <node concept="10QFUN" id="2ziiPwwJLgv" role="1eOMHV">
                                                        <node concept="37vLTw" id="2ziiPwwJLgw" role="10QFUP">
                                                          <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                        </node>
                                                        <node concept="3uibUv" id="2ziiPwwJLgx" role="10QFUM">
                                                          <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="2ziiPwwJLgy" role="2OqNvi">
                                                      <ref role="37wK5l" to="w1kc:~SModelInternal.deleteModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="deleteModelImport" />
                                                      <node concept="37vLTw" id="2ziiPwwJLgz" role="37wK5m">
                                                        <ref role="3cqZAo" node="2ziiPwwEPeJ" resolve="initialState" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="1Wc70l" id="6ncgYad27KM" role="3clFbw">
                                                <node concept="1Wc70l" id="2ziiPwwJLg$" role="3uHU7B">
                                                  <node concept="2ZW3vV" id="2ziiPwwJLgC" role="3uHU7B">
                                                    <node concept="3uibUv" id="2ziiPwwJLgD" role="2ZW6by">
                                                      <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                                                    </node>
                                                    <node concept="37vLTw" id="2ziiPwwJLgE" role="2ZW6bz">
                                                      <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                    </node>
                                                  </node>
                                                  <node concept="2ZW3vV" id="2ziiPwwJLg_" role="3uHU7w">
                                                    <node concept="3uibUv" id="2ziiPwwJLgA" role="2ZW6by">
                                                      <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                                    </node>
                                                    <node concept="37vLTw" id="2ziiPwwJLgB" role="2ZW6bz">
                                                      <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="2OqwBi" id="6ncgYad2bhg" role="3uHU7w">
                                                  <node concept="2OqwBi" id="6ncgYad2arj" role="2Oq$k0">
                                                    <node concept="1eOMI4" id="6ncgYad2aac" role="2Oq$k0">
                                                      <node concept="10QFUN" id="6ncgYad2aad" role="1eOMHV">
                                                        <node concept="37vLTw" id="6ncgYad2aae" role="10QFUP">
                                                          <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                        </node>
                                                        <node concept="3uibUv" id="6ncgYad2aaf" role="10QFUM">
                                                          <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="6ncgYad2aKv" role="2OqNvi">
                                                      <ref role="37wK5l" to="w1kc:~SModelInternal.getModelImports()" resolve="getModelImports" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="6ncgYad2bZ4" role="2OqNvi">
                                                    <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                                                    <node concept="37vLTw" id="6ncgYad2cLs" role="37wK5m">
                                                      <ref role="3cqZAo" node="2ziiPwwEPeJ" resolve="initialState" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="6ncgYad2vzJ" role="3cqZAp">
                                              <node concept="3cpWsn" id="6ncgYad2vzK" role="3cpWs9">
                                                <property role="TrG5h" value="targetModule" />
                                                <node concept="3uibUv" id="6ncgYad2voI" role="1tU5fm">
                                                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                                </node>
                                                <node concept="2OqwBi" id="6ncgYad2vzL" role="33vP2m">
                                                  <node concept="2OqwBi" id="6ncgYad2vzM" role="2Oq$k0">
                                                    <node concept="37vLTw" id="6ncgYad2vzN" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="2ziiPwwJLfW" resolve="finalState" />
                                                    </node>
                                                    <node concept="liA8E" id="6ncgYad2vzO" role="2OqNvi">
                                                      <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                      <node concept="37vLTw" id="6ncgYad2vzP" role="37wK5m">
                                                        <ref role="3cqZAo" node="2ziiPwwJLfY" resolve="repository" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="6ncgYad2vzQ" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="6ncgYad2o7x" role="3cqZAp">
                                              <node concept="3clFbS" id="6ncgYad2o7z" role="3clFbx">
                                                <node concept="3clFbF" id="6ncgYad2eCW" role="3cqZAp">
                                                  <node concept="2OqwBi" id="6ncgYad2DUA" role="3clFbG">
                                                    <node concept="1eOMI4" id="6ncgYad2Dwh" role="2Oq$k0">
                                                      <node concept="10QFUN" id="6ncgYad2Adg" role="1eOMHV">
                                                        <node concept="2OqwBi" id="6ncgYad2Add" role="10QFUP">
                                                          <node concept="37vLTw" id="6ncgYad2Ade" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                          </node>
                                                          <node concept="liA8E" id="6ncgYad2Adf" role="2OqNvi">
                                                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                                          </node>
                                                        </node>
                                                        <node concept="3uibUv" id="6ncgYad2AOv" role="10QFUM">
                                                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="6ncgYad2E$i" role="2OqNvi">
                                                      <ref role="37wK5l" to="z1c3:~AbstractModule.addDependency(org.jetbrains.mps.openapi.module.SModuleReference,boolean)" resolve="addDependency" />
                                                      <node concept="2OqwBi" id="6ncgYad2JuE" role="37wK5m">
                                                        <node concept="37vLTw" id="6ncgYad2G7g" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="6ncgYad2vzK" resolve="targetModule" />
                                                        </node>
                                                        <node concept="liA8E" id="6ncgYad2K0x" role="2OqNvi">
                                                          <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbT" id="6ncgYad2IqG" role="37wK5m" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="1Wc70l" id="6ncgYad2xWu" role="3clFbw">
                                                <node concept="2ZW3vV" id="6ncgYad2_dl" role="3uHU7B">
                                                  <node concept="3uibUv" id="6ncgYad2_RF" role="2ZW6by">
                                                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                                                  </node>
                                                  <node concept="2OqwBi" id="6ncgYad2zFF" role="2ZW6bz">
                                                    <node concept="37vLTw" id="6ncgYad2yS1" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                    </node>
                                                    <node concept="liA8E" id="6ncgYad2$4I" role="2OqNvi">
                                                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3fqX7Q" id="6ncgYad2wH9" role="3uHU7w">
                                                  <node concept="2OqwBi" id="6ncgYad2wHb" role="3fr31v">
                                                    <node concept="2OqwBi" id="6ncgYad2wHc" role="2Oq$k0">
                                                      <node concept="2ShNRf" id="6ncgYad2wHd" role="2Oq$k0">
                                                        <node concept="1pGfFk" id="6ncgYad2wHe" role="2ShVmc">
                                                          <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule)" resolve="GlobalModuleDependenciesManager" />
                                                          <node concept="2OqwBi" id="6ncgYad2wHf" role="37wK5m">
                                                            <node concept="37vLTw" id="6ncgYad2wHg" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="2ziiPwwJLg4" resolve="usage" />
                                                            </node>
                                                            <node concept="liA8E" id="6ncgYad2wHh" role="2OqNvi">
                                                              <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="6ncgYad2wHi" role="2OqNvi">
                                                        <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.getModules(jetbrains.mps.project.dependency.GlobalModuleDependenciesManager$Deptype)" resolve="getModules" />
                                                        <node concept="Rm8GO" id="6ncgYad2wHj" role="37wK5m">
                                                          <ref role="1Px2BO" to="gp7a:~GlobalModuleDependenciesManager$Deptype" resolve="GlobalModuleDependenciesManager.Deptype" />
                                                          <ref role="Rm8GQ" to="gp7a:~GlobalModuleDependenciesManager$Deptype.VISIBLE" resolve="VISIBLE" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="6ncgYad2wHk" role="2OqNvi">
                                                      <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                                                      <node concept="37vLTw" id="6ncgYad2wHl" role="37wK5m">
                                                        <ref role="3cqZAo" node="6ncgYad2vzK" resolve="targetModule" />
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
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="2ziiPwwJN$t" role="3cqZAp">
                      <node concept="37vLTw" id="2ziiPwwJP4F" role="3cqZAk">
                        <ref role="3cqZAo" node="2ziiPwwJLfM" resolve="change" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XpA" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XpB" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2ziiPwwJzX4" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ziiPwwEPfg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ziiPwwJ$Rp" role="jymVt" />
    <node concept="2YIFZL" id="2ziiPwwLvC1" role="jymVt">
      <property role="TrG5h" value="updateUsages" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2ziiPwwJ__2" role="3clF47">
        <node concept="1DcWWT" id="4ws8qsEh7MG" role="3cqZAp">
          <node concept="3clFbS" id="4ws8qsEh7MJ" role="2LFqv$">
            <node concept="3clFbF" id="4ws8qsEheho" role="3cqZAp">
              <node concept="2OqwBi" id="4ws8qsEicjo" role="3clFbG">
                <node concept="2ShNRf" id="4ws8qsEhehm" role="2Oq$k0">
                  <node concept="1pGfFk" id="4ws8qsEi0Ue" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="w1kc:~SNodeImplAccess.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="SNodeImplAccess" />
                    <node concept="37vLTw" id="4ws8qsEi47y" role="37wK5m">
                      <ref role="3cqZAo" node="4ws8qsEh7MK" resolve="r" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4ws8qsEif63" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeImplAccess.rerouteAssociationDeep(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.model.SModelReference)" resolve="rerouteAssociationDeep" />
                  <node concept="37vLTw" id="4ws8qsEiiZk" role="37wK5m">
                    <ref role="3cqZAo" node="2ziiPwwJ__W" resolve="oldModelReference" />
                  </node>
                  <node concept="37vLTw" id="4ws8qsEivsR" role="37wK5m">
                    <ref role="3cqZAo" node="2ziiPwwJ__Y" resolve="newModelReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4ws8qsEh7MK" role="1Duv9x">
            <property role="TrG5h" value="r" />
            <node concept="3uibUv" id="4ws8qsEh7MO" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="4ws8qsEh7MP" role="1DdaDG">
            <node concept="37vLTw" id="4ws8qsEh7MQ" role="2Oq$k0">
              <ref role="3cqZAo" node="2ziiPwwJ__U" resolve="usageModel" />
            </node>
            <node concept="liA8E" id="4ws8qsEh7MR" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ziiPwwJ__O" role="3cqZAp">
          <node concept="2OqwBi" id="2ziiPwwJ__P" role="3clFbG">
            <node concept="37vLTw" id="2ziiPwwJ__Q" role="2Oq$k0">
              <ref role="3cqZAo" node="2ziiPwwJ__U" resolve="usageModel" />
            </node>
            <node concept="liA8E" id="2ziiPwwJ__R" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~EditableSModel.setChanged(boolean)" resolve="setChanged" />
              <node concept="3clFbT" id="2ziiPwwJ__S" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwJ__U" role="3clF46">
        <property role="TrG5h" value="usageModel" />
        <node concept="3uibUv" id="2ziiPwwJ__V" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
        </node>
        <node concept="2AHcQZ" id="4ws8qsEgPol" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwJ__W" role="3clF46">
        <property role="TrG5h" value="oldModelReference" />
        <node concept="3uibUv" id="2ziiPwwJ__X" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="4ws8qsEgDE_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2ziiPwwJ__Y" role="3clF46">
        <property role="TrG5h" value="newModelReference" />
        <node concept="3uibUv" id="2ziiPwwJ__Z" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="4ws8qsEgKaX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="2ziiPwwJ__T" role="3clF45" />
      <node concept="3Tm1VV" id="2ziiPwwLrnL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2ziiPwwJ_eb" role="jymVt" />
    <node concept="3Tm1VV" id="2ziiPwwD4w0" role="1B3o_S" />
    <node concept="3uibUv" id="2ziiPwwD81D" role="1zkMxy">
      <ref role="3uigEE" to="5nvm:4GNx7T6VEiw" resolve="RefactoringParticipantBase" />
      <node concept="3uibUv" id="2ziiPwwD9sM" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
      <node concept="3uibUv" id="2ziiPwwD9sN" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
      <node concept="H_c77" id="2ziiPwwD9Cy" role="11_B2D" />
      <node concept="H_c77" id="2ziiPwwD9Lv" role="11_B2D" />
    </node>
    <node concept="3uibUv" id="2ziiPwwD8go" role="EKbjA">
      <ref role="3uigEE" to="5nvm:2ziiPwwD3nW" resolve="MoveModelRefactoringParticipant" />
      <node concept="3uibUv" id="2ziiPwwD8JR" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
      <node concept="3uibUv" id="2ziiPwwD9rn" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="7iDMXj5NWaO" />
  <node concept="tC5Ba" id="hMfdTlX">
    <property role="TrG5h" value="ModelRefactoring" />
    <property role="2f7twF" value="Refactoring" />
    <property role="3GE5qa" value="Menu.ProjectPane.Model" />
    <property role="1XlLyE" value="true" />
    <property role="1rdrE6" value="true" />
    <node concept="ftmFs" id="hMfdXE6" role="ftER_">
      <node concept="tCFHf" id="3kZk24KeQRn" role="ftvYc">
        <ref role="tCJdB" node="5VIEYrBjMRo" resolve="RenameModel" />
      </node>
      <node concept="tCFHf" id="2fhbn0FCh41" role="ftvYc">
        <ref role="tCJdB" node="6YK8y67o2Yu" resolve="MoveModel" />
      </node>
    </node>
    <node concept="tT9cl" id="hMfeksK" role="2f5YQi">
      <ref role="2f8Tey" to="tprs:hMfehyW" resolve="refactoring" />
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
    </node>
  </node>
  <node concept="sE7Ow" id="7BBQIYkR45T">
    <property role="TrG5h" value="RenameNode" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rename" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node.Actions" />
    <node concept="2XrIbr" id="1SNZnic04UL" role="32lrUH">
      <property role="TrG5h" value="canBeRenamed" />
      <node concept="10P_77" id="1SNZnic05zQ" role="3clF45" />
      <node concept="3clFbS" id="1SNZnic04UN" role="3clF47">
        <node concept="3SKdUt" id="7BBQIYkR5mm" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqUD" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqUE" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUF" role="1PaTwD">
              <property role="3oM_SC" value="won't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUG" role="1PaTwD">
              <property role="3oM_SC" value="rename" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUH" role="1PaTwD">
              <property role="3oM_SC" value="nodes," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUI" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUJ" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUK" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUM" role="1PaTwD">
              <property role="3oM_SC" value="getter" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUN" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUO" role="1PaTwD">
              <property role="3oM_SC" value="setter" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2do2zVkn2RA" role="3cqZAp">
          <node concept="3cpWsn" id="2do2zVkn2RB" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="2do2zVkn2R_" role="1tU5fm">
              <ref role="3bZ5Sy" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="2OqwBi" id="2do2zVkn2RC" role="33vP2m">
              <node concept="2yIwOk" id="2do2zVkn2RE" role="2OqNvi" />
              <node concept="2OqwBi" id="1SNZnic06Lf" role="2Oq$k0">
                <node concept="2WthIp" id="1SNZnic06Lg" role="2Oq$k0" />
                <node concept="3gHZIF" id="1SNZnic06Lh" role="2OqNvi">
                  <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="LaLafJXgTz" role="3cqZAp">
          <node concept="3cpWsn" id="LaLafJXgT$" role="3cpWs9">
            <property role="TrG5h" value="cd" />
            <node concept="3uibUv" id="LaLafJXgTt" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="LaLafJXgT_" role="33vP2m">
              <node concept="2YIFZM" id="LaLafJXgTA" role="2Oq$k0">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
              </node>
              <node concept="liA8E" id="LaLafJXgTB" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getConstraintsDescriptor(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConstraintsDescriptor" />
                <node concept="37vLTw" id="2do2zVkn2RF" role="37wK5m">
                  <ref role="3cqZAo" node="2do2zVkn2RB" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1yYqhLB_7zt" role="3cqZAp">
          <node concept="3cpWsn" id="1yYqhLB_7zu" role="3cpWs9">
            <property role="TrG5h" value="propertyConstraint" />
            <node concept="3uibUv" id="1yYqhLB_7zp" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="1yYqhLB_7zv" role="33vP2m">
              <node concept="37vLTw" id="1yYqhLB_7zw" role="2Oq$k0">
                <ref role="3cqZAo" node="LaLafJXgT$" resolve="cd" />
              </node>
              <node concept="liA8E" id="1yYqhLB_7zx" role="2OqNvi">
                <ref role="37wK5l" to="ze1i:~ConstraintsDescriptor.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                <node concept="355D3s" id="1SNZnic040R" role="37wK5m">
                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="LaLafJXhng" role="3cqZAp">
          <node concept="3clFbC" id="LaLafJXhnh" role="3clFbw">
            <node concept="37vLTw" id="1yYqhLB_AlN" role="3uHU7B">
              <ref role="3cqZAo" node="1yYqhLB_7zu" resolve="propertyConstraint" />
            </node>
            <node concept="10Nm6u" id="LaLafJXhnj" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="LaLafJXhnl" role="3clFbx">
            <node concept="RRSsy" id="3jYQuSB37xj" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="3cpWs3" id="LaLafJXhno" role="RRSoy">
                <node concept="Xl_RD" id="1yYqhLB_ACW" role="3uHU7B">
                  <property role="Xl_RC" value="Missing constraints descriptor for property INamedConcept.name for concept:" />
                </node>
                <node concept="37vLTw" id="2do2zVkn2RG" role="3uHU7w">
                  <ref role="3cqZAo" node="2do2zVkn2RB" resolve="concept" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="LaLafJXhnr" role="3cqZAp">
              <node concept="3clFbT" id="LaLafJXhns" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="LaLafJXhnt" role="3cqZAp">
          <node concept="3fqX7Q" id="LaLafJXhnu" role="3cqZAk">
            <node concept="2OqwBi" id="LaLafJXhnv" role="3fr31v">
              <node concept="37vLTw" id="1yYqhLB_7zz" role="2Oq$k0">
                <ref role="3cqZAo" node="1yYqhLB_7zu" resolve="propertyConstraint" />
              </node>
              <node concept="liA8E" id="LaLafJXhny" role="2OqNvi">
                <ref role="37wK5l" to="ze1i:~PropertyConstraintsDescriptor.isReadOnly()" resolve="isReadOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2do2zVkn47N" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4nmoJNYHiY" role="32lrUH">
      <property role="TrG5h" value="validateValue" />
      <node concept="37vLTG" id="4nmoJNYJvK" role="3clF46">
        <property role="TrG5h" value="newValue" />
        <node concept="17QB3L" id="4nmoJNYJC1" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="4nmoJNYHHL" role="3clF45" />
      <node concept="3clFbS" id="4nmoJNYHj0" role="3clF47">
        <node concept="3cpWs8" id="4nmoJNYHRO" role="3cqZAp">
          <node concept="3cpWsn" id="4nmoJNYHRP" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="4nmoJNYHRQ" role="1tU5fm">
              <ref role="3bZ5Sy" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="2OqwBi" id="4nmoJNYHRR" role="33vP2m">
              <node concept="2yIwOk" id="4nmoJNYHRS" role="2OqNvi" />
              <node concept="2OqwBi" id="4nmoJNYHRT" role="2Oq$k0">
                <node concept="2WthIp" id="4nmoJNYHRU" role="2Oq$k0" />
                <node concept="3gHZIF" id="4nmoJNYHRV" role="2OqNvi">
                  <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4nmoJNYHOo" role="3cqZAp">
          <node concept="3cpWsn" id="4nmoJNYHOp" role="3cpWs9">
            <property role="TrG5h" value="cd" />
            <node concept="3uibUv" id="4nmoJNYHOq" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="4nmoJNYHOr" role="33vP2m">
              <node concept="2YIFZM" id="4nmoJNYHOs" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="4nmoJNYHOt" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getConstraintsDescriptor(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConstraintsDescriptor" />
                <node concept="37vLTw" id="4nmoJNYHZc" role="37wK5m">
                  <ref role="3cqZAo" node="4nmoJNYHRP" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4nmoJNYHOv" role="3cqZAp">
          <node concept="3cpWsn" id="4nmoJNYHOw" role="3cpWs9">
            <property role="TrG5h" value="propertyConstraints" />
            <node concept="3uibUv" id="4nmoJNYHOx" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="4nmoJNYHOy" role="33vP2m">
              <node concept="37vLTw" id="4nmoJNYHOz" role="2Oq$k0">
                <ref role="3cqZAo" node="4nmoJNYHOp" resolve="cd" />
              </node>
              <node concept="liA8E" id="4nmoJNYHO$" role="2OqNvi">
                <ref role="37wK5l" to="ze1i:~ConstraintsDescriptor.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                <node concept="355D3s" id="4nmoJNYHO_" role="37wK5m">
                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4nmoJNYI6g" role="3cqZAp">
          <node concept="2OqwBi" id="4nmoJNYIh9" role="3clFbG">
            <node concept="37vLTw" id="4nmoJNYI6e" role="2Oq$k0">
              <ref role="3cqZAo" node="4nmoJNYHOw" resolve="propertyConstraints" />
            </node>
            <node concept="liA8E" id="4nmoJNYIqo" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~PropertyConstraintsDescriptor.validateValue(org.jetbrains.mps.openapi.model.SNode,java.lang.Object,jetbrains.mps.smodel.runtime.CheckingNodeContext)" resolve="validateValue" />
              <node concept="2OqwBi" id="4nmoJNYIKf" role="37wK5m">
                <node concept="2WthIp" id="4nmoJNYIrp" role="2Oq$k0" />
                <node concept="3gHZIF" id="4nmoJNYJ8Z" role="2OqNvi">
                  <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                </node>
              </node>
              <node concept="37vLTw" id="4nmoJNYJGz" role="37wK5m">
                <ref role="3cqZAo" node="4nmoJNYJvK" resolve="newValue" />
              </node>
              <node concept="10Nm6u" id="4nmoJNYJZQ" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4nmoJNYHCb" role="1B3o_S" />
    </node>
    <node concept="2S4$dB" id="7BBQIYkR45U" role="1NuT2Z">
      <property role="TrG5h" value="target" />
      <node concept="3Tm6S6" id="7BBQIYkR45V" role="1B3o_S" />
      <node concept="3Tqbb2" id="7BBQIYkR45W" role="1tU5fm">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
      <node concept="1oajcY" id="7BBQIYkR45X" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7BBQIYkR45Y" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7BBQIYkR45Z" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7BBQIYkR460" role="1NuT2Z">
      <property role="TrG5h" value="frame" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.FRAME" resolve="FRAME" />
      <node concept="1oajcY" id="7BBQIYkR461" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7BBQIYkR462" role="tncku">
      <node concept="3clFbS" id="7BBQIYkR463" role="2VODD2">
        <node concept="3clFbF" id="1wPwVvaJhqh" role="3cqZAp">
          <node concept="2OqwBi" id="1wPwVvaJhqi" role="3clFbG">
            <node concept="2YIFZM" id="1wPwVvaJhqj" role="2Oq$k0">
              <ref role="37wK5l" to="thjj:~FeatureUsageTracker.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="thjj:~FeatureUsageTracker" resolve="FeatureUsageTracker" />
            </node>
            <node concept="liA8E" id="1wPwVvaJhqk" role="2OqNvi">
              <ref role="37wK5l" to="thjj:~FeatureUsageTracker.triggerFeatureUsed(java.lang.String)" resolve="triggerFeatureUsed" />
              <node concept="Xl_RD" id="1wPwVvaJhql" role="37wK5m">
                <property role="Xl_RC" value="refactoring.rename" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4oi2Bf2ke4e" role="3cqZAp" />
        <node concept="3cpWs8" id="73QkbSJR3DL" role="3cqZAp">
          <node concept="3cpWsn" id="73QkbSJR3DM" role="3cpWs9">
            <property role="TrG5h" value="oldName" />
            <node concept="17QB3L" id="73QkbSJR3DN" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="73QkbSJR3Do" role="3cqZAp">
          <node concept="3cpWsn" id="73QkbSJR3Dp" role="3cpWs9">
            <property role="TrG5h" value="canBeRenamed" />
            <node concept="10P_77" id="73QkbSJR3Dq" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="76O06llMuOx" role="3cqZAp">
          <node concept="1QHqEC" id="76O06llMuOz" role="1QHqEI">
            <node concept="3clFbS" id="76O06llMuO_" role="1bW5cS">
              <node concept="3clFbF" id="73QkbSJR3DE" role="3cqZAp">
                <node concept="37vLTI" id="73QkbSJR3DF" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagT_cj" role="37vLTJ">
                    <ref role="3cqZAo" node="73QkbSJR3Dp" resolve="canBeRenamed" />
                  </node>
                  <node concept="2OqwBi" id="1SNZnic067A" role="37vLTx">
                    <node concept="2WthIp" id="1SNZnic067D" role="2Oq$k0" />
                    <node concept="2XshWL" id="1SNZnic067F" role="2OqNvi">
                      <ref role="2WH_rO" node="1SNZnic04UL" resolve="canBeRenamed" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="73QkbSJR3DP" role="3cqZAp">
                <node concept="37vLTI" id="73QkbSJR3Eb" role="3clFbG">
                  <node concept="2OqwBi" id="73QkbSJR3F0" role="37vLTx">
                    <node concept="2OqwBi" id="73QkbSJR3Ee" role="2Oq$k0">
                      <node concept="2WthIp" id="73QkbSJR3Ef" role="2Oq$k0" />
                      <node concept="3gHZIF" id="73QkbSJR3Eg" role="2OqNvi">
                        <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="73QkbSJR3F5" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTucj" role="37vLTJ">
                    <ref role="3cqZAo" node="73QkbSJR3DM" resolve="oldName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="76O06llMvjR" role="ukAjM">
            <node concept="2OqwBi" id="76O06llMv2z" role="2Oq$k0">
              <node concept="2WthIp" id="76O06llMv2A" role="2Oq$k0" />
              <node concept="1DTwFV" id="76O06llMv2C" role="2OqNvi">
                <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="76O06llMvBg" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7BBQIYkR46b" role="3cqZAp">
          <node concept="3clFbS" id="7BBQIYkR46c" role="3clFbx">
            <node concept="3clFbF" id="2H0sNMX6yoq" role="3cqZAp">
              <node concept="2YIFZM" id="2H0sNMX6z5x" role="3clFbG">
                <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(java.awt.Component,java.lang.String,java.lang.String)" resolve="showInfoMessage" />
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                <node concept="2OqwBi" id="2H0sNMX6Lcy" role="37wK5m">
                  <node concept="2WthIp" id="2H0sNMX6z6Y" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2H0sNMX6OSA" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR460" resolve="frame" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2H0sNMX6Pen" role="37wK5m">
                  <property role="Xl_RC" value="Nodes with getter and without setter for the \&quot;name\&quot; property can't be renamed" />
                </node>
                <node concept="Xl_RD" id="2H0sNMX6PvE" role="37wK5m">
                  <property role="Xl_RC" value="Read-only property" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7BBQIYkR46l" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="7BBQIYkR46m" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTBu1" role="3fr31v">
              <ref role="3cqZAo" node="73QkbSJR3Dp" resolve="canBeRenamed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4nmoJNZuua" role="3cqZAp">
          <node concept="3cpWsn" id="4nmoJNZuub" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <node concept="3uibUv" id="4nmoJNZuuc" role="1tU5fm">
              <ref role="3uigEE" to="u42p:1t_LRy89_0M" resolve="RenameDialog" />
            </node>
            <node concept="2ShNRf" id="4nmoJNZuud" role="33vP2m">
              <node concept="YeOm9" id="4nmoJNZzIL" role="2ShVmc">
                <node concept="1Y3b0j" id="4nmoJNZzIO" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="u42p:1t_LRy89_1q" resolve="RenameDialog" />
                  <ref role="1Y3XeK" to="u42p:1t_LRy89_0M" resolve="RenameDialog" />
                  <node concept="3Tm1VV" id="4nmoJNZzIP" role="1B3o_S" />
                  <node concept="2OqwBi" id="4nmoJNZxFc" role="37wK5m">
                    <node concept="2OqwBi" id="4nmoJNZvU3" role="2Oq$k0">
                      <node concept="2WthIp" id="4nmoJNZvU6" role="2Oq$k0" />
                      <node concept="1DTwFV" id="4nmoJNZvU8" role="2OqNvi">
                        <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4nmoJNZy_H" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4nmoJNZwbJ" role="37wK5m">
                    <ref role="3cqZAo" node="73QkbSJR3DM" resolve="oldName" />
                  </node>
                  <node concept="Xl_RD" id="4nmoJNZuuv" role="37wK5m">
                    <property role="Xl_RC" value="node" />
                  </node>
                  <node concept="3clFb_" id="4nmoJNZzS_" role="jymVt">
                    <property role="TrG5h" value="checkValue" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <property role="2aFKle" value="false" />
                    <node concept="3Tmbuc" id="4nmoJNZzSD" role="1B3o_S" />
                    <node concept="17QB3L" id="4nmoJNZzSE" role="3clF45" />
                    <node concept="2AHcQZ" id="4nmoJNZzSF" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="3clFbS" id="4nmoJNZzTj" role="3clF47">
                      <node concept="3clFbJ" id="4nmoJNZEM2" role="3cqZAp">
                        <node concept="3fqX7Q" id="4nmoJNZH31" role="3clFbw">
                          <node concept="2OqwBi" id="4nmoJNZH32" role="3fr31v">
                            <node concept="2WthIp" id="4nmoJNZH33" role="2Oq$k0">
                              <ref role="32nkFo" node="7BBQIYkR45T" resolve="RenameNode" />
                            </node>
                            <node concept="2XshWL" id="4nmoJNZH34" role="2OqNvi">
                              <ref role="2WH_rO" node="4nmoJNYHiY" resolve="validateValue" />
                              <node concept="1rXfSq" id="4nmoJNZH35" role="2XxRq1">
                                <ref role="37wK5l" to="u42p:WWy1UWgXzO" resolve="getCurrentValue" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="4nmoJNZH38" role="3clFbx">
                          <node concept="3cpWs6" id="4nmoJNZIc2" role="3cqZAp">
                            <node concept="Xl_RD" id="4nmoJNZPKV" role="3cqZAk">
                              <property role="Xl_RC" value="Not a valid name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="4nmoJNZFrr" role="3cqZAp">
                        <node concept="3nyPlj" id="4nmoJNZGxZ" role="3cqZAk">
                          <ref role="37wK5l" to="u42p:6RbC5nR66Tb" resolve="checkValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4nmoJNZzTk" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4nmoJNZuui" role="3cqZAp">
          <node concept="2OqwBi" id="4nmoJNZuuj" role="3clFbG">
            <node concept="37vLTw" id="4nmoJNZuuk" role="2Oq$k0">
              <ref role="3cqZAo" node="4nmoJNZuub" resolve="dialog" />
            </node>
            <node concept="liA8E" id="4nmoJNZuul" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4nmoJNZuuz" role="3cqZAp">
          <node concept="3cpWsn" id="4nmoJNZuu$" role="3cpWs9">
            <property role="TrG5h" value="newName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="4nmoJNZuu_" role="1tU5fm" />
            <node concept="2OqwBi" id="4nmoJNZuuA" role="33vP2m">
              <node concept="37vLTw" id="4nmoJNZuuB" role="2Oq$k0">
                <ref role="3cqZAo" node="4nmoJNZuub" resolve="dialog" />
              </node>
              <node concept="liA8E" id="4nmoJNZuuC" role="2OqNvi">
                <ref role="37wK5l" to="u42p:6RbC5nR7fVD" resolve="getResultValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4nmoJNZz2o" role="3cqZAp" />
        <node concept="3clFbJ" id="7BBQIYkR46F" role="3cqZAp">
          <node concept="3clFbS" id="7BBQIYkR46G" role="3clFbx">
            <node concept="3cpWs6" id="7BBQIYkR46H" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7BBQIYkR46I" role="3clFbw">
            <node concept="10Nm6u" id="7BBQIYkR46J" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTvRb" role="3uHU7B">
              <ref role="3cqZAo" node="4nmoJNZuu$" resolve="newName" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ly2gVlmz4f" role="3cqZAp">
          <node concept="3cpWsn" id="3ly2gVlmz4g" role="3cpWs9">
            <property role="TrG5h" value="refactoringBody" />
            <node concept="2ShNRf" id="1knX_y6nHic" role="33vP2m">
              <node concept="1pGfFk" id="1knX_y6nHGY" role="2ShVmc">
                <ref role="37wK5l" to="lfzw:1knX_y6ntsC" resolve="RenameRefactoringBody" />
                <node concept="Xl_RD" id="1knX_y6nm73" role="37wK5m">
                  <property role="Xl_RC" value="Rename node" />
                </node>
                <node concept="2OqwBi" id="1knX_y6vpqq" role="37wK5m">
                  <node concept="2WthIp" id="1knX_y6vpqt" role="2Oq$k0" />
                  <node concept="3gHZIF" id="1knX_y6vpqv" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                  </node>
                </node>
                <node concept="37vLTw" id="1knX_y6xS0B" role="37wK5m">
                  <ref role="3cqZAo" node="4nmoJNZuu$" resolve="newName" />
                </node>
                <node concept="2OqwBi" id="1knX_y6xSgU" role="37wK5m">
                  <node concept="2WthIp" id="1knX_y6xSgX" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1knX_y6xSgZ" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3ly2gVlmz4h" role="1tU5fm">
              <ref role="3uigEE" to="5nvm:2EZTs$tsIo8" resolve="RefactoringProcessor.RefactoringBody" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76O06llZ4BR" role="3cqZAp">
          <node concept="2YIFZM" id="4AevHfIt_Gk" role="3clFbG">
            <ref role="37wK5l" to="5nvm:4fSm5R8N4ge" resolve="performRefactoringInProject" />
            <ref role="1Pybhc" to="5nvm:5dWUYKKJ14W" resolve="RefactoringProcessor" />
            <node concept="2OqwBi" id="3ly2gVlo6y6" role="37wK5m">
              <node concept="2WthIp" id="3ly2gVlo6y7" role="2Oq$k0" />
              <node concept="1DTwFV" id="3ly2gVlo6y8" role="2OqNvi">
                <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
              </node>
            </node>
            <node concept="2ShNRf" id="2q4uhJk587C" role="37wK5m">
              <node concept="1pGfFk" id="2q4uhJk58MM" role="2ShVmc">
                <ref role="37wK5l" to="lfzw:7i7ttYT1Jur" resolve="DefaultRefactoringUI" />
                <node concept="2OqwBi" id="2q4uhJk58Sk" role="37wK5m">
                  <node concept="2WthIp" id="2q4uhJk58Sn" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2q4uhJk58Sp" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7i7ttYT4vg0" role="37wK5m">
                  <property role="Xl_RC" value="Rename Node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3ly2gVlo6y9" role="37wK5m">
              <ref role="3cqZAo" node="3ly2gVlmz4g" resolve="refactoringBody" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7BBQIYkR46T" role="tmbBb">
      <node concept="3clFbS" id="7BBQIYkR46U" role="2VODD2">
        <node concept="3clFbF" id="7BBQIYkR46V" role="3cqZAp">
          <node concept="1Wc70l" id="lHnL1pBfCX" role="3clFbG">
            <node concept="3trCAK" id="7BBQIYkR46W" role="3uHU7B">
              <ref role="3trCAN" to="2yc6:1aNzB2zVRgC" resolve="Rename" />
              <node concept="2OqwBi" id="7BBQIYkR46X" role="3trCLF">
                <node concept="2WthIp" id="7BBQIYkR46Y" role="2Oq$k0" />
                <node concept="3gHZIF" id="7BBQIYkR46Z" role="2OqNvi">
                  <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Ir98aEeXeb" role="3a2dA9">
                <node concept="2WthIp" id="7Ir98aEeXee" role="2Oq$k0" />
                <node concept="1DTwFV" id="7Ir98aEeXeg" role="2OqNvi">
                  <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="lHnL1pBuQn" role="3uHU7w">
              <node concept="2OqwBi" id="lHnL1pBuQp" role="3fr31v">
                <node concept="2JrnkZ" id="lHnL1pBuQq" role="2Oq$k0">
                  <node concept="2OqwBi" id="lHnL1pBuQr" role="2JrQYb">
                    <node concept="2OqwBi" id="lHnL1pBuQs" role="2Oq$k0">
                      <node concept="2WthIp" id="lHnL1pBuQt" role="2Oq$k0" />
                      <node concept="3gHZIF" id="lHnL1pBuQu" role="2OqNvi">
                        <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                      </node>
                    </node>
                    <node concept="I4A8Y" id="lHnL1pBuQv" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="lHnL1pBuQw" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7BBQIYkR45R">
    <property role="TrG5h" value="CoreNodeRefactorings" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node" />
    <node concept="ftmFs" id="7BBQIYkR474" role="ftER_">
      <node concept="tCFHf" id="7BBQIYkR475" role="ftvYc">
        <ref role="tCJdB" node="7BBQIYkR45T" resolve="RenameNode" />
      </node>
      <node concept="tCFHf" id="4AevHfIeQoQ" role="ftvYc">
        <ref role="tCJdB" node="I5wdVHTn$t" resolve="MoveNodes" />
      </node>
    </node>
    <node concept="tT9cl" id="7BBQIYkR4ln" role="2f5YQi">
      <ref role="tU$_T" to="9oh:5OJQJ_HXTB6" resolve="NodeRefactoring" />
    </node>
  </node>
  <node concept="tC5Ba" id="2LI6gbES2zF">
    <property role="3GE5qa" value="TouchBar" />
    <property role="TrG5h" value="TouchBarDefault_shift_move" />
    <node concept="ftmFs" id="2LI6gbES2zH" role="ftER_">
      <node concept="tCFHf" id="2LI6gbES2zM" role="ftvYc">
        <ref role="tCJdB" node="I5wdVHTn$t" resolve="MoveNodes" />
      </node>
      <node concept="tCFHf" id="2LI6gbES2zR" role="ftvYc">
        <ref role="tCJdB" node="6YK8y67o2Yu" resolve="MoveModel" />
      </node>
    </node>
    <node concept="tT9cl" id="2LI6gbES2zK" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2LI6gbERWMf" resolve="TouchBarDefault_shift" />
      <ref role="2f8Tey" to="tprs:2LI6gbES2z7" resolve="move" />
    </node>
  </node>
  <node concept="tC5Ba" id="2LI6gbERWA2">
    <property role="TrG5h" value="TouchBarDefault_shift_rename" />
    <property role="3GE5qa" value="TouchBar" />
    <node concept="ftmFs" id="2LI6gbERWA4" role="ftER_">
      <node concept="tCFHf" id="kmdkKUw9dF" role="ftvYc">
        <ref role="tCJdB" node="5VIEYrBjMRo" resolve="RenameModel" />
      </node>
      <node concept="tCFHf" id="kmdkKUw9dN" role="ftvYc">
        <ref role="tCJdB" node="3fhZBTge84q" resolve="RenameModule" />
      </node>
      <node concept="tCFHf" id="2LI6gbERWA7" role="ftvYc">
        <ref role="tCJdB" node="7BBQIYkR45T" resolve="RenameNode" />
      </node>
    </node>
    <node concept="tT9cl" id="2LI6gbERWN2" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2LI6gbERWMf" resolve="TouchBarDefault_shift" />
      <ref role="2f8Tey" to="tprs:2LI6gbES1Dy" resolve="rename" />
    </node>
  </node>
  <node concept="312cEu" id="2NGkazlhrib">
    <property role="3GE5qa" value="Menu.ProjectPane.Model.Actions" />
    <property role="TrG5h" value="MoveModelDialog" />
    <node concept="3clFbW" id="5r7NrS5qB0T" role="jymVt">
      <node concept="3cqZAl" id="5r7NrS5qB0U" role="3clF45" />
      <node concept="3Tm1VV" id="5r7NrS5qB0V" role="1B3o_S" />
      <node concept="3clFbS" id="5r7NrS5qB0X" role="3clF47">
        <node concept="XkiVB" id="4_ns_JEUzNW" role="3cqZAp">
          <ref role="37wK5l" to="u42p:4_ns_JET_D8" resolve="ChooserRefactoringDialog" />
          <node concept="37vLTw" id="4_ns_JEU$23" role="37wK5m">
            <ref role="3cqZAo" node="5r7NrS5qB10" resolve="mpsProject" />
          </node>
          <node concept="37vLTw" id="4_ns_JEU$3w" role="37wK5m">
            <ref role="3cqZAo" node="6buumz56A$s" resolve="title" />
          </node>
          <node concept="37vLTw" id="4_ns_JEU$5w" role="37wK5m">
            <ref role="3cqZAo" node="MvlQMYRCsH" resolve="modules" />
          </node>
          <node concept="3VsKOn" id="4_ns_JEU$o6" role="37wK5m">
            <ref role="3VsUkX" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5r7NrS5qB10" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="5r7NrS5qYuC" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="5r7NrS5qB13" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6buumz56A$s" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="6buumz56ASe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="MvlQMYRCsH" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="MvlQMYRCLk" role="1tU5fm">
          <node concept="3uibUv" id="2NGkazlhvSu" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4_ns_JEU5Mn" role="jymVt">
      <property role="TrG5h" value="createChooseData" />
      <node concept="3Tmbuc" id="4_ns_JEU9EA" role="1B3o_S" />
      <node concept="3clFbS" id="4_ns_JEU5Mr" role="3clF47">
        <node concept="3cpWs8" id="4_ns_JEUd5F" role="3cqZAp">
          <node concept="3cpWsn" id="4_ns_JEUd5G" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4_ns_JEUcFq" role="1tU5fm">
              <ref role="3uigEE" to="yha4:~ChooseByNameData" resolve="ChooseByNameData" />
              <node concept="3uibUv" id="2NGkazlhBf8" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_ns_JEUd5H" role="33vP2m">
              <node concept="1pGfFk" id="4_ns_JEUd5I" role="2ShVmc">
                <ref role="37wK5l" to="yha4:~ChooseByNameData.&lt;init&gt;(jetbrains.mps.workbench.choose.ElementPresentation)" resolve="ChooseByNameData" />
                <node concept="3uibUv" id="2NGkazlhBR0" role="1pMfVU">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="2ShNRf" id="4_ns_JEUd5K" role="37wK5m">
                  <node concept="1pGfFk" id="4_ns_JEUd5L" role="2ShVmc">
                    <ref role="37wK5l" to="yha4:~ModulesPresentation.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModulesPresentation" />
                    <node concept="2OqwBi" id="4_ns_JEUd5M" role="37wK5m">
                      <node concept="37vLTw" id="4_ns_JEUd5N" role="2Oq$k0">
                        <ref role="3cqZAo" to="u42p:4_ns_JET_CT" resolve="myMpsProject" />
                      </node>
                      <node concept="liA8E" id="4_ns_JEUd5O" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_ns_JET_EV" role="3cqZAp">
          <node concept="2OqwBi" id="4_ns_JET_EW" role="3clFbG">
            <node concept="2OqwBi" id="4_ns_JET_EX" role="2Oq$k0">
              <node concept="37vLTw" id="4_ns_JEUey1" role="2Oq$k0">
                <ref role="3cqZAo" node="4_ns_JEUd5G" resolve="result" />
              </node>
              <node concept="liA8E" id="4_ns_JET_EZ" role="2OqNvi">
                <ref role="37wK5l" to="yha4:~ChooseByNameData.derivePrompts(java.lang.String)" resolve="derivePrompts" />
                <node concept="Xl_RD" id="4_ns_JET_F0" role="37wK5m">
                  <property role="Xl_RC" value="module" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4_ns_JET_F1" role="2OqNvi">
              <ref role="37wK5l" to="yha4:~ChooseByNameData.setScope(java.lang.Iterable,java.lang.Iterable)" resolve="setScope" />
              <node concept="37vLTw" id="4_ns_JET_F2" role="37wK5m">
                <ref role="3cqZAo" to="u42p:4_ns_JET_CW" resolve="myVariants" />
              </node>
              <node concept="37vLTw" id="4_ns_JET_F3" role="37wK5m">
                <ref role="3cqZAo" to="u42p:4_ns_JET_CW" resolve="myVariants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_ns_JET_F4" role="3cqZAp">
          <node concept="2OqwBi" id="4_ns_JET_F5" role="3clFbG">
            <node concept="37vLTw" id="4_ns_JEUeJm" role="2Oq$k0">
              <ref role="3cqZAo" node="4_ns_JEUd5G" resolve="result" />
            </node>
            <node concept="liA8E" id="4_ns_JET_F7" role="2OqNvi">
              <ref role="37wK5l" to="yha4:~ChooseByNameData.setPrompts(java.lang.String,java.lang.String,java.lang.String)" resolve="setPrompts" />
              <node concept="Xl_RD" id="4_ns_JET_F8" role="37wK5m">
                <property role="Xl_RC" value="Move to module:" />
              </node>
              <node concept="2OqwBi" id="4_ns_JET_F9" role="37wK5m">
                <node concept="37vLTw" id="4_ns_JEUeRM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_ns_JEUd5G" resolve="result" />
                </node>
                <node concept="liA8E" id="4_ns_JET_Fb" role="2OqNvi">
                  <ref role="37wK5l" to="yha4:~ChooseByNameData.getNotFoundMessage()" resolve="getNotFoundMessage" />
                </node>
              </node>
              <node concept="2OqwBi" id="4_ns_JET_Fc" role="37wK5m">
                <node concept="37vLTw" id="4_ns_JEUf5n" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_ns_JEUd5G" resolve="result" />
                </node>
                <node concept="liA8E" id="4_ns_JET_Fe" role="2OqNvi">
                  <ref role="37wK5l" to="yha4:~ChooseByNameData.getNotInMessage()" resolve="getNotInMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4_ns_JEUfy2" role="3cqZAp">
          <node concept="37vLTw" id="4_ns_JEUfJS" role="3cqZAk">
            <ref role="3cqZAo" node="4_ns_JEUd5G" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4_ns_JEU8Cl" role="3clF45">
        <ref role="3uigEE" to="yha4:~ChooseByNameData" resolve="ChooseByNameData" />
        <node concept="3uibUv" id="2NGkazlhynR" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3UdhnxHuqUP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDimensionServiceKey" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="3UdhnxHuqUQ" role="1B3o_S" />
      <node concept="17QB3L" id="3UdhnxHuqUR" role="3clF45" />
      <node concept="2AHcQZ" id="3UdhnxHuqUT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="3clFbS" id="3UdhnxHuqUU" role="3clF47">
        <node concept="3cpWs6" id="3UdhnxHuqUV" role="3cqZAp">
          <node concept="2OqwBi" id="3UdhnxHuqUW" role="3cqZAk">
            <node concept="1rXfSq" id="4hiugqyzbXa" role="2Oq$k0">
              <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
            </node>
            <node concept="liA8E" id="3UdhnxHuqUY" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3UdhnxHuqUZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6buumz55t1Z" role="jymVt">
      <property role="TrG5h" value="getHelpId" />
      <node concept="3Tmbuc" id="6buumz55t20" role="1B3o_S" />
      <node concept="3uibUv" id="6buumz55t23" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6buumz55t25" role="3clF47">
        <node concept="3cpWs6" id="6buumz55u$i" role="3cqZAp">
          <node concept="Xl_RD" id="6buumz55vj$" role="3cqZAk">
            <property role="Xl_RC" value="dialog.refactoring.moveModel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6buumz55t26" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2NGkazlhric" role="1B3o_S" />
    <node concept="3uibUv" id="2NGkazlhswt" role="1zkMxy">
      <ref role="3uigEE" to="u42p:4_ns_JET_CS" resolve="ChooserRefactoringDialog" />
      <node concept="3uibUv" id="2NGkazlhvgx" role="11_B2D">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7dWkQhiRH1J">
    <property role="TrG5h" value="DeleteNodesHelper" />
    <node concept="312cEg" id="7YtRADZ3GM6" role="jymVt">
      <property role="TrG5h" value="myNodesToDelete" />
      <node concept="_YKpA" id="7YtRADZ3GMG" role="1tU5fm">
        <node concept="3Tqbb2" id="789aMsYFVKo" role="_ZDj9" />
      </node>
      <node concept="3Tm6S6" id="7YtRADZ3GM9" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7dWkQhiRH1P" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <node concept="3uibUv" id="OqYxEjfME0" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
      <node concept="3Tm6S6" id="7dWkQhiRH1R" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="OqYxEj3tZ5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="OqYxEjfT3W" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="OqYxEj3o63" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7dWkQhiRH1V" role="jymVt">
      <node concept="3cqZAl" id="7dWkQhiRH1X" role="3clF45" />
      <node concept="3Tm1VV" id="7dWkQhiRH1W" role="1B3o_S" />
      <node concept="37vLTG" id="7dWkQhiRH1Y" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="_YKpA" id="7YtRADZ3GMD" role="1tU5fm">
          <node concept="3uibUv" id="7YtRADZ3GME" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7dWkQhiRH25" role="3clF47">
        <node concept="3clFbF" id="OqYxEj3Fdr" role="3cqZAp">
          <node concept="37vLTI" id="OqYxEj3FhA" role="3clFbG">
            <node concept="37vLTw" id="OqYxEj3I42" role="37vLTx">
              <ref role="3cqZAo" node="7dWkQhiRH21" resolve="project" />
            </node>
            <node concept="37vLTw" id="OqYxEj3Fdq" role="37vLTJ">
              <ref role="3cqZAo" node="OqYxEj3tZ5" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7dWkQhiRH2a" role="3cqZAp">
          <node concept="37vLTI" id="7dWkQhiRH2b" role="3clFbG">
            <node concept="2OqwBi" id="OqYxEj2bUn" role="37vLTx">
              <node concept="37vLTw" id="OqYxEj3J4o" role="2Oq$k0">
                <ref role="3cqZAo" node="OqYxEj3tZ5" resolve="myProject" />
              </node>
              <node concept="liA8E" id="OqYxEj2eAg" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuROV" role="37vLTJ">
              <ref role="3cqZAo" node="7dWkQhiRH1P" resolve="myRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qxx5IQzSKi" role="3cqZAp">
          <node concept="37vLTI" id="5qxx5IQzSKC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumWl" role="37vLTJ">
              <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
            </node>
            <node concept="2ShNRf" id="5qxx5IQzSKF" role="37vLTx">
              <node concept="Tc6Ow" id="5qxx5IQzSKG" role="2ShVmc">
                <node concept="37vLTw" id="2BHiRxglIQD" role="I$8f6">
                  <ref role="3cqZAo" node="7dWkQhiRH1Y" resolve="nodes" />
                </node>
                <node concept="3uibUv" id="5qxx5IQzSKH" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7EyiHwXvS3v" role="3cqZAp">
          <node concept="2OqwBi" id="7EyiHwXvU1N" role="1gVkn0">
            <node concept="37vLTw" id="7EyiHwXvSoe" role="2Oq$k0">
              <ref role="3cqZAo" node="7dWkQhiRH1Y" resolve="nodes" />
            </node>
            <node concept="2HxqBE" id="7EyiHwXvVup" role="2OqNvi">
              <node concept="1bVj0M" id="7EyiHwXvVur" role="23t8la">
                <node concept="3clFbS" id="7EyiHwXvVus" role="1bW5cS">
                  <node concept="3clFbF" id="7EyiHwXvVXJ" role="3cqZAp">
                    <node concept="3y3z36" id="7EyiHwXvX$R" role="3clFbG">
                      <node concept="10Nm6u" id="7EyiHwXvY1A" role="3uHU7w" />
                      <node concept="2OqwBi" id="7EyiHwXvWiP" role="3uHU7B">
                        <node concept="37vLTw" id="7EyiHwXvVXI" role="2Oq$k0">
                          <ref role="3cqZAo" node="7EyiHwXvVut" resolve="it" />
                        </node>
                        <node concept="liA8E" id="7EyiHwXvWBV" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="7EyiHwXvVut" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7EyiHwXvVuu" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7dWkQhiRH21" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="OqYxEjg4dd" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="OqYxEj2f7G" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5qxx5IQzSL2" role="jymVt">
      <property role="TrG5h" value="hasAspectOption" />
      <node concept="3Tm1VV" id="5qxx5IQzSL4" role="1B3o_S" />
      <node concept="3clFbS" id="5qxx5IQzSL5" role="3clF47">
        <node concept="3clFbF" id="5qxx5IQzSM5" role="3cqZAp">
          <node concept="2OqwBi" id="5qxx5IQzSLp" role="3clFbG">
            <node concept="3GX2aA" id="5qxx5IQzSQy" role="2OqNvi" />
            <node concept="2OqwBi" id="5qxx5IQzSLq" role="2Oq$k0">
              <node concept="3goQfb" id="5qxx5IQzSQI" role="2OqNvi">
                <node concept="1bVj0M" id="5qxx5IQzSQJ" role="23t8la">
                  <node concept="3clFbS" id="5qxx5IQzSQK" role="1bW5cS">
                    <node concept="3cpWs8" id="5qxx5IQzSQL" role="3cqZAp">
                      <node concept="3cpWsn" id="5qxx5IQzSQM" role="3cpWs9">
                        <property role="TrG5h" value="tabs" />
                        <node concept="2YIFZM" id="5qxx5IQzSQP" role="33vP2m">
                          <ref role="1Pybhc" to="xj2j:~ProjectPluginManager" resolve="ProjectPluginManager" />
                          <ref role="37wK5l" to="xj2j:~ProjectPluginManager.getApplicableTabs(com.intellij.openapi.project.Project,org.jetbrains.mps.openapi.model.SNode)" resolve="getApplicableTabs" />
                          <node concept="2YIFZM" id="5qxx5IQzSQQ" role="37wK5m">
                            <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                            <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                            <node concept="37vLTw" id="OqYxEj3RvN" role="37wK5m">
                              <ref role="3cqZAo" node="OqYxEj3tZ5" resolve="myProject" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2BHiRxgm6BQ" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0XpK" resolve="node" />
                          </node>
                        </node>
                        <node concept="_YKpA" id="5qxx5IQzSQN" role="1tU5fm">
                          <node concept="3uibUv" id="5qxx5IQzSQO" role="_ZDj9">
                            <ref role="3uigEE" to="b3f7:~RelationDescriptor" resolve="RelationDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5qxx5IQzSQV" role="3cqZAp">
                      <node concept="2OqwBi" id="5qxx5IQzSQX" role="3cqZAk">
                        <node concept="37vLTw" id="3GM_nagTATY" role="2Oq$k0">
                          <ref role="3cqZAo" node="5qxx5IQzSQM" resolve="tabs" />
                        </node>
                        <node concept="3zZkjj" id="5qxx5IQzSQZ" role="2OqNvi">
                          <node concept="1bVj0M" id="5qxx5IQzSR0" role="23t8la">
                            <node concept="3clFbS" id="5qxx5IQzSR1" role="1bW5cS">
                              <node concept="3clFbF" id="5qxx5IQzSR2" role="3cqZAp">
                                <node concept="1Wc70l" id="5qxx5IQzSR3" role="3clFbG">
                                  <node concept="2OqwBi" id="5qxx5IQzSR8" role="3uHU7B">
                                    <node concept="liA8E" id="5qxx5IQzSRa" role="2OqNvi">
                                      <ref role="37wK5l" to="b3f7:~RelationDescriptor.isApplicable(org.jetbrains.mps.openapi.model.SNode)" resolve="isApplicable" />
                                      <node concept="37vLTw" id="2BHiRxgmaEw" role="37wK5m">
                                        <ref role="3cqZAo" node="5W7E4fV0XpK" resolve="node" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="2BHiRxgm6An" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0XpI" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3fqX7Q" id="5qxx5IQzSRc" role="3uHU7w">
                                    <node concept="2OqwBi" id="5qxx5IQzSRd" role="3fr31v">
                                      <node concept="liA8E" id="5qxx5IQzSRi" role="2OqNvi">
                                        <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                                      </node>
                                      <node concept="2OqwBi" id="5qxx5IQzSRe" role="2Oq$k0">
                                        <node concept="liA8E" id="5qxx5IQzSRg" role="2OqNvi">
                                          <ref role="37wK5l" to="b3f7:~RelationDescriptor.getNodes(org.jetbrains.mps.openapi.model.SNode)" resolve="getNodes" />
                                          <node concept="37vLTw" id="2BHiRxglErT" role="37wK5m">
                                            <ref role="3cqZAo" node="5W7E4fV0XpK" resolve="node" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="2BHiRxglXLD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0XpI" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XpI" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0XpJ" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XpK" role="1bW2Oz">
                    <property role="TrG5h" value="node" />
                    <node concept="2jxLKc" id="5W7E4fV0XpL" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxeun46" role="2Oq$k0">
                <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5qxx5IQzSLl" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7dWkQhiRH2i" role="jymVt">
      <property role="TrG5h" value="deleteNodes" />
      <node concept="37vLTG" id="7dWkQhiRH23" role="3clF46">
        <property role="TrG5h" value="safe" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="7dWkQhiRH24" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7dWkQhiRH2j" role="1B3o_S" />
      <node concept="3clFbS" id="7dWkQhiRH2n" role="3clF47">
        <node concept="3clFbF" id="6eCw5sUT6dB" role="3cqZAp">
          <node concept="1rXfSq" id="6eCw5sUT6dA" role="3clFbG">
            <ref role="37wK5l" node="6eCw5sUSRbk" resolve="deleteNodes" />
            <node concept="37vLTw" id="6eCw5sUT9$O" role="37wK5m">
              <ref role="3cqZAo" node="7dWkQhiRH23" resolve="safe" />
            </node>
            <node concept="37vLTw" id="6eCw5sUTbuZ" role="37wK5m">
              <ref role="3cqZAo" node="7OWEUve6oRk" resolve="aspects" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7dWkQhiRH2k" role="3clF45" />
      <node concept="37vLTG" id="7OWEUve6oRk" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="7OWEUve6oRm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7dWkQhiRH2l" role="3clF46">
        <property role="TrG5h" value="fromProjectPane" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="7dWkQhiRH2m" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="6eCw5sUSgZB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="P$JXv" id="6eCw5sUSgZ$" role="lGtFl">
        <node concept="TZ5HI" id="6eCw5sUSgZ_" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsCzM" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCzN" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzO" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzP" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzQ" role="1PaTwD">
              <property role="3oM_SC" value="specify" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzR" role="1PaTwD">
              <property role="3oM_SC" value="fromProjectPane," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzS" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzU" role="1PaTwD">
              <property role="3oM_SC" value="overloaded" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzV" role="1PaTwD">
              <property role="3oM_SC" value="version" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzW" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzX" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCzY" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7dWkQhiRH1K" role="1B3o_S" />
    <node concept="3clFb_" id="6eCw5sUSRbk" role="jymVt">
      <property role="TrG5h" value="deleteNodes" />
      <node concept="37vLTG" id="6eCw5sUSRbl" role="3clF46">
        <property role="TrG5h" value="safe" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="6eCw5sUSRbm" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="6eCw5sUSRbn" role="1B3o_S" />
      <node concept="3clFbS" id="6eCw5sUSRbo" role="3clF47">
        <node concept="1gVbGN" id="6eCw5sUSRbp" role="3cqZAp">
          <node concept="3fqX7Q" id="6eCw5sUSRbq" role="1gVkn0">
            <node concept="2OqwBi" id="6eCw5sUSRbr" role="3fr31v">
              <node concept="liA8E" id="6eCw5sUSRbs" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.canRead()" resolve="canRead" />
              </node>
              <node concept="2OqwBi" id="6eCw5sUSRbt" role="2Oq$k0">
                <node concept="liA8E" id="6eCw5sUSRbu" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
                <node concept="37vLTw" id="6eCw5sUSRbv" role="2Oq$k0">
                  <ref role="3cqZAo" node="7dWkQhiRH1P" resolve="myRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="6eCw5sUSRbw" role="1gVpfI">
            <property role="Xl_RC" value="can lead to deadlock" />
          </node>
        </node>
        <node concept="3clFbH" id="6eCw5sUSRbx" role="3cqZAp" />
        <node concept="3cpWs8" id="6eCw5sUSRby" role="3cqZAp">
          <node concept="3cpWsn" id="6eCw5sUSRbz" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6eCw5sUSRb$" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="6eCw5sUSRb_" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <node concept="37vLTw" id="6eCw5sUSRbA" role="37wK5m">
                <ref role="3cqZAo" node="OqYxEj3tZ5" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6eCw5sUSRbB" role="3cqZAp">
          <node concept="3cpWsn" id="6eCw5sUSRbC" role="3cpWs9">
            <property role="TrG5h" value="modelCommand" />
            <property role="3TUv4t" value="true" />
            <node concept="2ShNRf" id="6eCw5sUSRbD" role="33vP2m">
              <node concept="YeOm9" id="6eCw5sUSRbE" role="2ShVmc">
                <node concept="1Y3b0j" id="6eCw5sUSRbF" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="w1kc:~UndoRunnable$Base.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="UndoRunnable.Base" />
                  <ref role="1Y3XeK" to="w1kc:~UndoRunnable$Base" resolve="UndoRunnable.Base" />
                  <node concept="2tJIrI" id="6eCw5sUSRbG" role="jymVt" />
                  <node concept="3Tm1VV" id="6eCw5sUSRbH" role="1B3o_S" />
                  <node concept="Xl_RD" id="6eCw5sUSRbI" role="37wK5m">
                    <property role="Xl_RC" value="Delete Nodes" />
                  </node>
                  <node concept="10Nm6u" id="6eCw5sUSRbJ" role="37wK5m" />
                  <node concept="3clFb_" id="6eCw5sUSRbK" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="6eCw5sUSRbL" role="1B3o_S" />
                    <node concept="3cqZAl" id="6eCw5sUSRbM" role="3clF45" />
                    <node concept="3clFbS" id="6eCw5sUSRbN" role="3clF47">
                      <node concept="1Dw8fO" id="6eCw5sUSRbO" role="3cqZAp">
                        <node concept="2OqwBi" id="6eCw5sUSRbP" role="1Dwp0S">
                          <node concept="37vLTw" id="6eCw5sUSRbQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="6eCw5sUSRcb" resolve="iterator" />
                          </node>
                          <node concept="liA8E" id="6eCw5sUSRbR" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6eCw5sUSRbS" role="2LFqv$">
                          <node concept="3cpWs8" id="6eCw5sUSRbT" role="3cqZAp">
                            <node concept="3cpWsn" id="6eCw5sUSRbU" role="3cpWs9">
                              <property role="TrG5h" value="sNode" />
                              <node concept="3uibUv" id="6eCw5sUSRbV" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="2OqwBi" id="6eCw5sUSRbW" role="33vP2m">
                                <node concept="37vLTw" id="6eCw5sUSRbX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6eCw5sUSRcb" resolve="iterator" />
                                </node>
                                <node concept="liA8E" id="6eCw5sUSRbY" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6eCw5sUSRbZ" role="3cqZAp">
                            <node concept="3clFbS" id="6eCw5sUSRc0" role="3clFbx">
                              <node concept="3N13vt" id="6eCw5sUSRc1" role="3cqZAp" />
                            </node>
                            <node concept="3clFbC" id="6eCw5sUSRc2" role="3clFbw">
                              <node concept="2OqwBi" id="6eCw5sUSRc3" role="3uHU7B">
                                <node concept="liA8E" id="6eCw5sUSRc4" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                </node>
                                <node concept="37vLTw" id="6eCw5sUSRc5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6eCw5sUSRbU" resolve="sNode" />
                                </node>
                              </node>
                              <node concept="10Nm6u" id="6eCw5sUSRc6" role="3uHU7w" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="6eCw5sUSRc7" role="3cqZAp">
                            <node concept="2OqwBi" id="6eCw5sUSRc8" role="3clFbG">
                              <node concept="37vLTw" id="6eCw5sUSRc9" role="2Oq$k0">
                                <ref role="3cqZAo" node="6eCw5sUSRbU" resolve="sNode" />
                              </node>
                              <node concept="liA8E" id="6eCw5sUSRca" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.delete()" resolve="delete" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="6eCw5sUSRcb" role="1Duv9x">
                          <property role="TrG5h" value="iterator" />
                          <node concept="2OqwBi" id="6eCw5sUSRcc" role="33vP2m">
                            <node concept="liA8E" id="6eCw5sUSRcd" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.iterator()" resolve="iterator" />
                            </node>
                            <node concept="37vLTw" id="6eCw5sUSRce" role="2Oq$k0">
                              <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="6eCw5sUSRcf" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                            <node concept="3uibUv" id="6eCw5sUSRcg" role="11_B2D">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6eCw5sUSRch" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="6eCw5sUSRci" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6eCw5sUSRcj" role="3cqZAp">
          <node concept="2OqwBi" id="6eCw5sUSRck" role="3clFbG">
            <node concept="liA8E" id="6eCw5sUSRcl" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="6eCw5sUSRcm" role="37wK5m">
                <node concept="3clFbS" id="6eCw5sUSRcn" role="1bW5cS">
                  <node concept="3clFbJ" id="6eCw5sUSRco" role="3cqZAp">
                    <node concept="3clFbS" id="6eCw5sUSRcp" role="3clFbx">
                      <node concept="3cpWs8" id="6eCw5sUSRcq" role="3cqZAp">
                        <node concept="3cpWsn" id="6eCw5sUSRcr" role="3cpWs9">
                          <property role="TrG5h" value="addNodes" />
                          <node concept="_YKpA" id="6eCw5sUSRcs" role="1tU5fm">
                            <node concept="3uibUv" id="6eCw5sUSRct" role="_ZDj9">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6eCw5sUSRcu" role="33vP2m">
                            <node concept="ANE8D" id="6eCw5sUSRcv" role="2OqNvi" />
                            <node concept="2OqwBi" id="6eCw5sUSRcw" role="2Oq$k0">
                              <node concept="3goQfb" id="6eCw5sUSRcx" role="2OqNvi">
                                <node concept="1bVj0M" id="6eCw5sUSRcy" role="23t8la">
                                  <node concept="3clFbS" id="6eCw5sUSRcz" role="1bW5cS">
                                    <node concept="3cpWs8" id="6eCw5sUSRc$" role="3cqZAp">
                                      <node concept="3cpWsn" id="6eCw5sUSRc_" role="3cpWs9">
                                        <property role="TrG5h" value="tabs" />
                                        <node concept="_YKpA" id="6eCw5sUSRcA" role="1tU5fm">
                                          <node concept="3uibUv" id="6eCw5sUSRcB" role="_ZDj9">
                                            <ref role="3uigEE" to="b3f7:~RelationDescriptor" resolve="RelationDescriptor" />
                                          </node>
                                        </node>
                                        <node concept="2YIFZM" id="6eCw5sUSRcC" role="33vP2m">
                                          <ref role="1Pybhc" to="xj2j:~ProjectPluginManager" resolve="ProjectPluginManager" />
                                          <ref role="37wK5l" to="xj2j:~ProjectPluginManager.getApplicableTabs(com.intellij.openapi.project.Project,org.jetbrains.mps.openapi.model.SNode)" resolve="getApplicableTabs" />
                                          <node concept="37vLTw" id="6eCw5sUSRcD" role="37wK5m">
                                            <ref role="3cqZAo" node="6eCw5sUSRbz" resolve="ideaProject" />
                                          </node>
                                          <node concept="37vLTw" id="6eCw5sUSRcE" role="37wK5m">
                                            <ref role="3cqZAo" node="6eCw5sUSRd_" resolve="node" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3J1_TO" id="6eCw5sUSRcF" role="3cqZAp">
                                      <node concept="3uVAMA" id="6eCw5sUSRcG" role="1zxBo5">
                                        <node concept="XOnhg" id="6eCw5sUSRcH" role="1zc67B">
                                          <property role="3TUv4t" value="false" />
                                          <property role="TrG5h" value="t" />
                                          <node concept="nSUau" id="6eCw5sUSRcI" role="1tU5fm">
                                            <node concept="3uibUv" id="6eCw5sUSRcJ" role="nSUat">
                                              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="6eCw5sUSRcK" role="1zc67A">
                                          <node concept="RRSsy" id="6eCw5sUSRcL" role="3cqZAp">
                                            <property role="RRSoG" value="gZ5fh_4/error" />
                                            <node concept="Xl_RD" id="6eCw5sUSRcM" role="RRSoy">
                                              <property role="Xl_RC" value="Exception in extension: " />
                                            </node>
                                            <node concept="37vLTw" id="6eCw5sUSRcN" role="RRSow">
                                              <ref role="3cqZAo" node="6eCw5sUSRcH" resolve="t" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="6eCw5sUSRcO" role="1zxBo7">
                                        <node concept="3cpWs6" id="6eCw5sUSRcP" role="3cqZAp">
                                          <node concept="2OqwBi" id="6eCw5sUSRcQ" role="3cqZAk">
                                            <node concept="2OqwBi" id="6eCw5sUSRcR" role="2Oq$k0">
                                              <node concept="3goQfb" id="6eCw5sUSRcS" role="2OqNvi">
                                                <node concept="1bVj0M" id="6eCw5sUSRcT" role="23t8la">
                                                  <node concept="3clFbS" id="6eCw5sUSRcU" role="1bW5cS">
                                                    <node concept="3cpWs8" id="6eCw5sUSRcV" role="3cqZAp">
                                                      <node concept="3cpWsn" id="6eCw5sUSRcW" role="3cpWs9">
                                                        <property role="TrG5h" value="nodes" />
                                                        <node concept="_YKpA" id="6eCw5sUSRcX" role="1tU5fm">
                                                          <node concept="3Tqbb2" id="6eCw5sUSRcY" role="_ZDj9" />
                                                        </node>
                                                        <node concept="2OqwBi" id="6eCw5sUSRcZ" role="33vP2m">
                                                          <node concept="liA8E" id="6eCw5sUSRd0" role="2OqNvi">
                                                            <ref role="37wK5l" to="b3f7:~RelationDescriptor.getNodes(org.jetbrains.mps.openapi.model.SNode)" resolve="getNodes" />
                                                            <node concept="37vLTw" id="6eCw5sUSRd1" role="37wK5m">
                                                              <ref role="3cqZAo" node="6eCw5sUSRd_" resolve="node" />
                                                            </node>
                                                          </node>
                                                          <node concept="37vLTw" id="6eCw5sUSRd2" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="6eCw5sUSRdi" resolve="tab" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="6eCw5sUSRd3" role="3cqZAp">
                                                      <node concept="2OqwBi" id="6eCw5sUSRd4" role="3clFbG">
                                                        <node concept="37vLTw" id="6eCw5sUSRd5" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="6eCw5sUSRcW" resolve="nodes" />
                                                        </node>
                                                        <node concept="3zZkjj" id="6eCw5sUSRd6" role="2OqNvi">
                                                          <node concept="1bVj0M" id="6eCw5sUSRd7" role="23t8la">
                                                            <node concept="3clFbS" id="6eCw5sUSRd8" role="1bW5cS">
                                                              <node concept="3clFbF" id="6eCw5sUSRd9" role="3cqZAp">
                                                                <node concept="3clFbC" id="6eCw5sUSRda" role="3clFbG">
                                                                  <node concept="37vLTw" id="6eCw5sUSRdb" role="3uHU7w">
                                                                    <ref role="3cqZAo" node="6eCw5sUSRd_" resolve="node" />
                                                                  </node>
                                                                  <node concept="2OqwBi" id="6eCw5sUSRdc" role="3uHU7B">
                                                                    <node concept="37vLTw" id="6eCw5sUSRdd" role="2Oq$k0">
                                                                      <ref role="3cqZAo" node="6eCw5sUSRdi" resolve="tab" />
                                                                    </node>
                                                                    <node concept="liA8E" id="6eCw5sUSRde" role="2OqNvi">
                                                                      <ref role="37wK5l" to="b3f7:~RelationDescriptor.getBaseNode(org.jetbrains.mps.openapi.model.SNode)" resolve="getBaseNode" />
                                                                      <node concept="37vLTw" id="6eCw5sUSRdf" role="37wK5m">
                                                                        <ref role="3cqZAo" node="6eCw5sUSRdg" resolve="it" />
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="gl6BB" id="6eCw5sUSRdg" role="1bW2Oz">
                                                              <property role="TrG5h" value="it" />
                                                              <node concept="2jxLKc" id="6eCw5sUSRdh" role="1tU5fm" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="gl6BB" id="6eCw5sUSRdi" role="1bW2Oz">
                                                    <property role="TrG5h" value="tab" />
                                                    <node concept="2jxLKc" id="6eCw5sUSRdj" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="6eCw5sUSRdk" role="2Oq$k0">
                                                <node concept="37vLTw" id="6eCw5sUSRdl" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6eCw5sUSRc_" resolve="tabs" />
                                                </node>
                                                <node concept="3zZkjj" id="6eCw5sUSRdm" role="2OqNvi">
                                                  <node concept="1bVj0M" id="6eCw5sUSRdn" role="23t8la">
                                                    <node concept="3clFbS" id="6eCw5sUSRdo" role="1bW5cS">
                                                      <node concept="3clFbF" id="6eCw5sUSRdp" role="3cqZAp">
                                                        <node concept="2OqwBi" id="6eCw5sUSRdq" role="3clFbG">
                                                          <node concept="liA8E" id="6eCw5sUSRdr" role="2OqNvi">
                                                            <ref role="37wK5l" to="b3f7:~RelationDescriptor.isApplicable(org.jetbrains.mps.openapi.model.SNode)" resolve="isApplicable" />
                                                            <node concept="37vLTw" id="6eCw5sUSRds" role="37wK5m">
                                                              <ref role="3cqZAo" node="6eCw5sUSRd_" resolve="node" />
                                                            </node>
                                                          </node>
                                                          <node concept="37vLTw" id="6eCw5sUSRdt" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="6eCw5sUSRdu" resolve="it" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="gl6BB" id="6eCw5sUSRdu" role="1bW2Oz">
                                                      <property role="TrG5h" value="it" />
                                                      <node concept="2jxLKc" id="6eCw5sUSRdv" role="1tU5fm" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="ANE8D" id="6eCw5sUSRdw" role="2OqNvi" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="6eCw5sUSRdx" role="3cqZAp">
                                      <node concept="2ShNRf" id="6eCw5sUSRdy" role="3cqZAk">
                                        <node concept="Tc6Ow" id="6eCw5sUSRdz" role="2ShVmc">
                                          <node concept="3Tqbb2" id="6eCw5sUSRd$" role="HW$YZ" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="6eCw5sUSRd_" role="1bW2Oz">
                                    <property role="TrG5h" value="node" />
                                    <node concept="2jxLKc" id="6eCw5sUSRdA" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="6eCw5sUSRdB" role="2Oq$k0">
                                <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6eCw5sUSRdC" role="3cqZAp">
                        <node concept="2OqwBi" id="6eCw5sUSRdD" role="3clFbG">
                          <node concept="37vLTw" id="6eCw5sUSRdE" role="2Oq$k0">
                            <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
                          </node>
                          <node concept="X8dFx" id="6eCw5sUSRdF" role="2OqNvi">
                            <node concept="37vLTw" id="6eCw5sUSRdG" role="25WWJ7">
                              <ref role="3cqZAo" node="6eCw5sUSRcr" resolve="addNodes" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6eCw5sUSRdH" role="3clFbw">
                      <ref role="3cqZAo" node="6eCw5sUSRic" resolve="aspects" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6eCw5sUSRdI" role="2Oq$k0">
              <node concept="liA8E" id="6eCw5sUSRdJ" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="6eCw5sUSRdK" role="2Oq$k0">
                <ref role="3cqZAo" node="7dWkQhiRH1P" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6eCw5sUSRdL" role="3cqZAp" />
        <node concept="3clFbJ" id="6eCw5sUSRdM" role="3cqZAp">
          <node concept="3clFbS" id="6eCw5sUSRdN" role="3clFbx">
            <node concept="3clFbF" id="6eCw5sUSRdO" role="3cqZAp">
              <node concept="2OqwBi" id="6eCw5sUSRdP" role="3clFbG">
                <node concept="liA8E" id="6eCw5sUSRdQ" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                  <node concept="37vLTw" id="6eCw5sUSRdR" role="37wK5m">
                    <ref role="3cqZAo" node="6eCw5sUSRbC" resolve="modelCommand" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6eCw5sUSRdS" role="2Oq$k0">
                  <node concept="liA8E" id="6eCw5sUSRdT" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                  <node concept="37vLTw" id="6eCw5sUSRdU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7dWkQhiRH1P" resolve="myRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6eCw5sUSRdV" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="6eCw5sUSRdW" role="3clFbw">
            <node concept="37vLTw" id="6eCw5sUSRdX" role="3fr31v">
              <ref role="3cqZAo" node="6eCw5sUSRbl" resolve="safe" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6eCw5sUSRdY" role="3cqZAp" />
        <node concept="3cpWs8" id="6eCw5sUSRdZ" role="3cqZAp">
          <node concept="3cpWsn" id="6eCw5sUSRe0" role="3cpWs9">
            <property role="TrG5h" value="searchTask" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6eCw5sUSRe1" role="1tU5fm">
              <ref role="3uigEE" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
            </node>
            <node concept="2ShNRf" id="6eCw5sUSRe2" role="33vP2m">
              <node concept="YeOm9" id="6eCw5sUSRe3" role="2ShVmc">
                <node concept="1Y3b0j" id="6eCw5sUSRe4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
                  <node concept="3Tm1VV" id="6eCw5sUSRe5" role="1B3o_S" />
                  <node concept="3clFb_" id="6eCw5sUSRe6" role="jymVt">
                    <property role="TrG5h" value="canExecute" />
                    <node concept="3Tm1VV" id="6eCw5sUSRe7" role="1B3o_S" />
                    <node concept="10P_77" id="6eCw5sUSRe8" role="3clF45" />
                    <node concept="3clFbS" id="6eCw5sUSRe9" role="3clF47">
                      <node concept="3clFbF" id="6eCw5sUSRea" role="3cqZAp">
                        <node concept="3clFbT" id="6eCw5sUSReb" role="3clFbG">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6eCw5sUSRec" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="6eCw5sUSRed" role="jymVt">
                    <property role="TrG5h" value="execute" />
                    <node concept="3Tm1VV" id="6eCw5sUSRee" role="1B3o_S" />
                    <node concept="3uibUv" id="6eCw5sUSRef" role="3clF45">
                      <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
                    </node>
                    <node concept="37vLTG" id="6eCw5sUSReg" role="3clF46">
                      <property role="TrG5h" value="pm" />
                      <node concept="3uibUv" id="6eCw5sUSReh" role="1tU5fm">
                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6eCw5sUSRei" role="3clF47">
                      <node concept="3cpWs8" id="6eCw5sUSRej" role="3cqZAp">
                        <node concept="3cpWsn" id="6eCw5sUSRek" role="3cpWs9">
                          <property role="TrG5h" value="results" />
                          <node concept="2ShNRf" id="6eCw5sUSRel" role="33vP2m">
                            <node concept="2i4dXS" id="6eCw5sUSRem" role="2ShVmc">
                              <node concept="3uibUv" id="6eCw5sUSRen" role="HW$YZ">
                                <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                                <node concept="3Tqbb2" id="6eCw5sUSReo" role="11_B2D" />
                              </node>
                            </node>
                          </node>
                          <node concept="2hMVRd" id="6eCw5sUSRep" role="1tU5fm">
                            <node concept="3uibUv" id="6eCw5sUSReq" role="2hN53Y">
                              <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                              <node concept="3Tqbb2" id="6eCw5sUSRer" role="11_B2D" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6eCw5sUSRes" role="3cqZAp">
                        <node concept="2OqwBi" id="6eCw5sUSRet" role="3clFbG">
                          <node concept="liA8E" id="6eCw5sUSReu" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="6eCw5sUSRev" role="37wK5m">
                              <node concept="3clFbS" id="6eCw5sUSRew" role="1bW5cS">
                                <node concept="3SKdUt" id="6eCw5sUSRex" role="3cqZAp">
                                  <node concept="1PaTwC" id="6eCw5sUSRey" role="1aUNEU">
                                    <node concept="3oM_SD" id="6eCw5sUSRez" role="1PaTwD">
                                      <property role="3oM_SC" value="XXX" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSRe$" role="1PaTwD">
                                      <property role="3oM_SC" value="in" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSRe_" role="1PaTwD">
                                      <property role="3oM_SC" value="fact," />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReA" role="1PaTwD">
                                      <property role="3oM_SC" value="do" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReB" role="1PaTwD">
                                      <property role="3oM_SC" value="we" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReC" role="1PaTwD">
                                      <property role="3oM_SC" value="care" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReD" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReE" role="1PaTwD">
                                      <property role="3oM_SC" value="update" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReF" role="1PaTwD">
                                      <property role="3oM_SC" value="uses" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReG" role="1PaTwD">
                                      <property role="3oM_SC" value="in" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReH" role="1PaTwD">
                                      <property role="3oM_SC" value="non-project" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReI" role="1PaTwD">
                                      <property role="3oM_SC" value="modules?" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReJ" role="1PaTwD">
                                      <property role="3oM_SC" value="Perhaps," />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReK" role="1PaTwD">
                                      <property role="3oM_SC" value="ProjectScope" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReL" role="1PaTwD">
                                      <property role="3oM_SC" value="is" />
                                    </node>
                                    <node concept="3oM_SD" id="6eCw5sUSReM" role="1PaTwD">
                                      <property role="3oM_SC" value="sufficient?" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="6eCw5sUSReN" role="3cqZAp">
                                  <node concept="3cpWsn" id="6eCw5sUSReO" role="3cpWs9">
                                    <property role="TrG5h" value="scope" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="6eCw5sUSReP" role="1tU5fm">
                                      <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
                                    </node>
                                    <node concept="2ShNRf" id="6eCw5sUSReQ" role="33vP2m">
                                      <node concept="1pGfFk" id="6eCw5sUSReR" role="2ShVmc">
                                        <ref role="37wK5l" to="mte5:~GlobalScope.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="GlobalScope" />
                                        <node concept="2OqwBi" id="6eCw5sUSReS" role="37wK5m">
                                          <node concept="Xjq3P" id="6eCw5sUSReT" role="2Oq$k0">
                                            <ref role="1HBi2w" node="7dWkQhiRH1J" resolve="DeleteNodesHelper" />
                                          </node>
                                          <node concept="2OwXpG" id="6eCw5sUSReU" role="2OqNvi">
                                            <ref role="2Oxat5" node="OqYxEj3tZ5" resolve="myProject" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6eCw5sUSReV" role="3cqZAp">
                                  <node concept="2OqwBi" id="6eCw5sUSReW" role="3clFbG">
                                    <node concept="37vLTw" id="6eCw5sUSReX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
                                    </node>
                                    <node concept="2es0OD" id="6eCw5sUSReY" role="2OqNvi">
                                      <node concept="1bVj0M" id="6eCw5sUSReZ" role="23t8la">
                                        <node concept="3clFbS" id="6eCw5sUSRf0" role="1bW5cS">
                                          <node concept="3cpWs8" id="6eCw5sUSRf1" role="3cqZAp">
                                            <node concept="3cpWsn" id="6eCw5sUSRf2" role="3cpWs9">
                                              <property role="TrG5h" value="usages" />
                                              <node concept="3uibUv" id="6eCw5sUSRf3" role="1tU5fm">
                                                <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                                                <node concept="3Tqbb2" id="6eCw5sUSRf4" role="11_B2D" />
                                              </node>
                                              <node concept="zAVLd" id="6eCw5sUSRf5" role="33vP2m">
                                                <node concept="37vLTw" id="6eCw5sUSRf6" role="2GiN3p">
                                                  <ref role="3cqZAo" node="6eCw5sUSRfO" resolve="it" />
                                                </node>
                                                <node concept="zAVLb" id="6eCw5sUSRf7" role="1C5ry4">
                                                  <ref role="2$JaeB" to="lgib:hs82Tlp" resolve="NodeAndDescendantsUsages" />
                                                </node>
                                                <node concept="37vLTw" id="6eCw5sUSRf8" role="2GiN3o">
                                                  <ref role="3cqZAo" node="6eCw5sUSReO" resolve="scope" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="6eCw5sUSRf9" role="3cqZAp">
                                            <node concept="2OqwBi" id="6eCw5sUSRfa" role="3clFbG">
                                              <node concept="37vLTw" id="6eCw5sUSRfb" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6eCw5sUSRek" resolve="results" />
                                              </node>
                                              <node concept="X8dFx" id="6eCw5sUSRfc" role="2OqNvi">
                                                <node concept="2OqwBi" id="6eCw5sUSRfd" role="25WWJ7">
                                                  <node concept="37vLTw" id="6eCw5sUSRfe" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="6eCw5sUSRf2" resolve="usages" />
                                                  </node>
                                                  <node concept="liA8E" id="6eCw5sUSRff" role="2OqNvi">
                                                    <ref role="37wK5l" to="g4jo:4mN_90IMjqo" resolve="getSearchResults2" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbH" id="6eCw5sUSRfg" role="3cqZAp" />
                                          <node concept="3clFbJ" id="6eCw5sUSRfh" role="3cqZAp">
                                            <node concept="3clFbS" id="6eCw5sUSRfi" role="3clFbx">
                                              <node concept="3cpWs6" id="6eCw5sUSRfj" role="3cqZAp" />
                                            </node>
                                            <node concept="2OqwBi" id="6eCw5sUSRfk" role="3clFbw">
                                              <node concept="37vLTw" id="6eCw5sUSRfl" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6eCw5sUSReg" resolve="pm" />
                                              </node>
                                              <node concept="liA8E" id="6eCw5sUSRfm" role="2OqNvi">
                                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbH" id="6eCw5sUSRfn" role="3cqZAp" />
                                          <node concept="3clFbJ" id="6eCw5sUSRfo" role="3cqZAp">
                                            <node concept="3clFbS" id="6eCw5sUSRfp" role="3clFbx">
                                              <node concept="3cpWs8" id="6eCw5sUSRfq" role="3cqZAp">
                                                <node concept="3cpWsn" id="6eCw5sUSRfr" role="3cpWs9">
                                                  <property role="TrG5h" value="instances" />
                                                  <node concept="3uibUv" id="6eCw5sUSRfs" role="1tU5fm">
                                                    <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                                                    <node concept="3Tqbb2" id="6eCw5sUSRft" role="11_B2D" />
                                                  </node>
                                                  <node concept="zAVLd" id="6eCw5sUSRfu" role="33vP2m">
                                                    <node concept="zAVLb" id="6eCw5sUSRfv" role="1C5ry4">
                                                      <ref role="2$JaeB" to="tpci:hroutJm" resolve="ConceptInstances" />
                                                    </node>
                                                    <node concept="37vLTw" id="6eCw5sUSRfw" role="2GiN3p">
                                                      <ref role="3cqZAo" node="6eCw5sUSRfO" resolve="it" />
                                                    </node>
                                                    <node concept="37vLTw" id="6eCw5sUSRfx" role="2GiN3o">
                                                      <ref role="3cqZAo" node="6eCw5sUSReO" resolve="scope" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="6eCw5sUSRfy" role="3cqZAp">
                                                <node concept="2OqwBi" id="6eCw5sUSRfz" role="3clFbG">
                                                  <node concept="37vLTw" id="6eCw5sUSRf$" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="6eCw5sUSRek" resolve="results" />
                                                  </node>
                                                  <node concept="X8dFx" id="6eCw5sUSRf_" role="2OqNvi">
                                                    <node concept="2OqwBi" id="6eCw5sUSRfA" role="25WWJ7">
                                                      <node concept="37vLTw" id="6eCw5sUSRfB" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="6eCw5sUSRfr" resolve="instances" />
                                                      </node>
                                                      <node concept="liA8E" id="6eCw5sUSRfC" role="2OqNvi">
                                                        <ref role="37wK5l" to="g4jo:4mN_90IMjqo" resolve="getSearchResults2" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="6eCw5sUSRfD" role="3clFbw">
                                              <node concept="37vLTw" id="6eCw5sUSRfE" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6eCw5sUSRfO" resolve="it" />
                                              </node>
                                              <node concept="1mIQ4w" id="6eCw5sUSRfF" role="2OqNvi">
                                                <node concept="chp4Y" id="6eCw5sUSRfG" role="cj9EA">
                                                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbH" id="6eCw5sUSRfH" role="3cqZAp" />
                                          <node concept="3clFbJ" id="6eCw5sUSRfI" role="3cqZAp">
                                            <node concept="2OqwBi" id="6eCw5sUSRfJ" role="3clFbw">
                                              <node concept="liA8E" id="6eCw5sUSRfK" role="2OqNvi">
                                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                                              </node>
                                              <node concept="37vLTw" id="6eCw5sUSRfL" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6eCw5sUSReg" resolve="pm" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="6eCw5sUSRfM" role="3clFbx">
                                              <node concept="3cpWs6" id="6eCw5sUSRfN" role="3cqZAp" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="gl6BB" id="6eCw5sUSRfO" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="6eCw5sUSRfP" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="6eCw5sUSRfQ" role="3cqZAp" />
                                <node concept="3clFbJ" id="6eCw5sUSRfR" role="3cqZAp">
                                  <node concept="2OqwBi" id="6eCw5sUSRfS" role="3clFbw">
                                    <node concept="37vLTw" id="6eCw5sUSRfT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6eCw5sUSReg" resolve="pm" />
                                    </node>
                                    <node concept="liA8E" id="6eCw5sUSRfU" role="2OqNvi">
                                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="6eCw5sUSRfV" role="3clFbx">
                                    <node concept="3cpWs6" id="6eCw5sUSRfW" role="3cqZAp" />
                                  </node>
                                </node>
                                <node concept="3clFbH" id="6eCw5sUSRfX" role="3cqZAp" />
                                <node concept="3cpWs8" id="6eCw5sUSRfY" role="3cqZAp">
                                  <node concept="3cpWsn" id="6eCw5sUSRfZ" role="3cpWs9">
                                    <property role="TrG5h" value="nodes" />
                                    <node concept="2hMVRd" id="6eCw5sUSRg0" role="1tU5fm">
                                      <node concept="3Tqbb2" id="6eCw5sUSRg1" role="2hN53Y" />
                                    </node>
                                    <node concept="2ShNRf" id="6eCw5sUSRg2" role="33vP2m">
                                      <node concept="2i4dXS" id="6eCw5sUSRg3" role="2ShVmc">
                                        <node concept="2OqwBi" id="6eCw5sUSRg4" role="I$8f6">
                                          <node concept="37vLTw" id="6eCw5sUSRg5" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6eCw5sUSRek" resolve="results" />
                                          </node>
                                          <node concept="3$u5V9" id="6eCw5sUSRg6" role="2OqNvi">
                                            <node concept="1bVj0M" id="6eCw5sUSRg7" role="23t8la">
                                              <node concept="3clFbS" id="6eCw5sUSRg8" role="1bW5cS">
                                                <node concept="3clFbF" id="6eCw5sUSRg9" role="3cqZAp">
                                                  <node concept="2OqwBi" id="6eCw5sUSRga" role="3clFbG">
                                                    <node concept="liA8E" id="6eCw5sUSRgb" role="2OqNvi">
                                                      <ref role="37wK5l" to="g4jo:J2bOg02GJN" resolve="getObject" />
                                                    </node>
                                                    <node concept="37vLTw" id="6eCw5sUSRgc" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="6eCw5sUSRgd" resolve="it" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="gl6BB" id="6eCw5sUSRgd" role="1bW2Oz">
                                                <property role="TrG5h" value="it" />
                                                <node concept="2jxLKc" id="6eCw5sUSRge" role="1tU5fm" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3Tqbb2" id="6eCw5sUSRgf" role="HW$YZ" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1DcWWT" id="6eCw5sUSRgg" role="3cqZAp">
                                  <node concept="3cpWsn" id="6eCw5sUSRgh" role="1Duv9x">
                                    <property role="TrG5h" value="searchResult" />
                                    <node concept="3uibUv" id="6eCw5sUSRgi" role="1tU5fm">
                                      <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                                      <node concept="3Tqbb2" id="6eCw5sUSRgj" role="11_B2D" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="6eCw5sUSRgk" role="2LFqv$">
                                    <node concept="3cpWs8" id="6eCw5sUSRgl" role="3cqZAp">
                                      <node concept="3cpWsn" id="6eCw5sUSRgm" role="3cpWs9">
                                        <property role="TrG5h" value="resultNode" />
                                        <node concept="2OqwBi" id="6eCw5sUSRgn" role="33vP2m">
                                          <node concept="liA8E" id="6eCw5sUSRgo" role="2OqNvi">
                                            <ref role="37wK5l" to="g4jo:J2bOg02GJN" resolve="getObject" />
                                          </node>
                                          <node concept="37vLTw" id="6eCw5sUSRgp" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6eCw5sUSRgh" resolve="searchResult" />
                                          </node>
                                        </node>
                                        <node concept="3Tqbb2" id="6eCw5sUSRgq" role="1tU5fm" />
                                      </node>
                                    </node>
                                    <node concept="3clFbH" id="6eCw5sUSRgr" role="3cqZAp" />
                                    <node concept="2Gpval" id="6eCw5sUSRgs" role="3cqZAp">
                                      <node concept="2GrKxI" id="6eCw5sUSRgt" role="2Gsz3X">
                                        <property role="TrG5h" value="anc" />
                                      </node>
                                      <node concept="2OqwBi" id="6eCw5sUSRgu" role="2GsD0m">
                                        <node concept="z$bX8" id="6eCw5sUSRgv" role="2OqNvi" />
                                        <node concept="37vLTw" id="6eCw5sUSRgw" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6eCw5sUSRgm" resolve="resultNode" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="6eCw5sUSRgx" role="2LFqv$">
                                        <node concept="3clFbJ" id="6eCw5sUSRgy" role="3cqZAp">
                                          <node concept="2OqwBi" id="6eCw5sUSRgz" role="3clFbw">
                                            <node concept="3JPx81" id="6eCw5sUSRg$" role="2OqNvi">
                                              <node concept="2GrUjf" id="6eCw5sUSRg_" role="25WWJ7">
                                                <ref role="2Gs0qQ" node="6eCw5sUSRgt" resolve="anc" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="6eCw5sUSRgA" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6eCw5sUSRfZ" resolve="nodes" />
                                            </node>
                                          </node>
                                          <node concept="3clFbS" id="6eCw5sUSRgB" role="3clFbx">
                                            <node concept="3clFbF" id="6eCw5sUSRgC" role="3cqZAp">
                                              <node concept="2OqwBi" id="6eCw5sUSRgD" role="3clFbG">
                                                <node concept="37vLTw" id="6eCw5sUSRgE" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6eCw5sUSRek" resolve="results" />
                                                </node>
                                                <node concept="3dhRuq" id="6eCw5sUSRgF" role="2OqNvi">
                                                  <node concept="37vLTw" id="6eCw5sUSRgG" role="25WWJ7">
                                                    <ref role="3cqZAo" node="6eCw5sUSRgh" resolve="searchResult" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3zACq4" id="6eCw5sUSRgH" role="3cqZAp" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2ShNRf" id="6eCw5sUSRgI" role="1DdaDG">
                                    <node concept="Tc6Ow" id="6eCw5sUSRgJ" role="2ShVmc">
                                      <node concept="37vLTw" id="6eCw5sUSRgK" role="I$8f6">
                                        <ref role="3cqZAo" node="6eCw5sUSRek" resolve="results" />
                                      </node>
                                      <node concept="3uibUv" id="6eCw5sUSRgL" role="HW$YZ">
                                        <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                                        <node concept="3Tqbb2" id="6eCw5sUSRgM" role="11_B2D" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6eCw5sUSRgN" role="2Oq$k0">
                            <node concept="liA8E" id="6eCw5sUSRgO" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                            </node>
                            <node concept="37vLTw" id="6eCw5sUSRgP" role="2Oq$k0">
                              <ref role="3cqZAo" node="7dWkQhiRH1P" resolve="myRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="6eCw5sUSRgQ" role="3cqZAp">
                        <node concept="2ShNRf" id="6eCw5sUSRgR" role="3cqZAk">
                          <node concept="1pGfFk" id="6eCw5sUSRgS" role="2ShVmc">
                            <ref role="37wK5l" to="g4jo:6hZLf2Yo3pm" resolve="SearchResults" />
                            <node concept="2ShNRf" id="6eCw5sUSRgT" role="37wK5m">
                              <node concept="2i4dXS" id="6eCw5sUSRgU" role="2ShVmc">
                                <node concept="37vLTw" id="6eCw5sUSRgV" role="I$8f6">
                                  <ref role="3cqZAo" node="7YtRADZ3GM6" resolve="myNodesToDelete" />
                                </node>
                                <node concept="3Tqbb2" id="6eCw5sUSRgW" role="HW$YZ" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6eCw5sUSRgX" role="37wK5m">
                              <node concept="37vLTw" id="6eCw5sUSRgY" role="2Oq$k0">
                                <ref role="3cqZAo" node="6eCw5sUSRek" resolve="results" />
                              </node>
                              <node concept="ANE8D" id="6eCw5sUSRgZ" role="2OqNvi" />
                            </node>
                            <node concept="3Tqbb2" id="6eCw5sUSRh0" role="1pMfVU" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6eCw5sUSRh1" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6eCw5sUSRh2" role="3cqZAp" />
        <node concept="3clFbF" id="6eCw5sUSRh3" role="3cqZAp">
          <node concept="2OqwBi" id="6eCw5sUSRh4" role="3clFbG">
            <node concept="liA8E" id="6eCw5sUSRh5" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="6eCw5sUSRh6" role="37wK5m">
                <node concept="YeOm9" id="6eCw5sUSRh7" role="2ShVmc">
                  <node concept="1Y3b0j" id="6eCw5sUSRh8" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                    <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                    <node concept="37vLTw" id="6eCw5sUSRh9" role="37wK5m">
                      <ref role="3cqZAo" node="6eCw5sUSRbz" resolve="ideaProject" />
                    </node>
                    <node concept="Xl_RD" id="6eCw5sUSRha" role="37wK5m">
                      <property role="Xl_RC" value="Finding Usages" />
                    </node>
                    <node concept="3clFbT" id="6eCw5sUSRhb" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="3clFb_" id="6eCw5sUSRhc" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3clFbS" id="6eCw5sUSRhd" role="3clF47">
                        <node concept="3cpWs8" id="6eCw5sUSRhe" role="3cqZAp">
                          <node concept="3cpWsn" id="6eCw5sUSRhf" role="3cpWs9">
                            <property role="TrG5h" value="sr" />
                            <node concept="3uibUv" id="6eCw5sUSRhg" role="1tU5fm">
                              <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                            </node>
                            <node concept="2OqwBi" id="6eCw5sUSRhh" role="33vP2m">
                              <node concept="37vLTw" id="6eCw5sUSRhi" role="2Oq$k0">
                                <ref role="3cqZAo" node="6eCw5sUSRe0" resolve="searchTask" />
                              </node>
                              <node concept="liA8E" id="6eCw5sUSRhj" role="2OqNvi">
                                <ref role="37wK5l" to="g4jo:7DGCeT2Ukpg" resolve="execute" />
                                <node concept="2ShNRf" id="6eCw5sUSRhk" role="37wK5m">
                                  <node concept="1pGfFk" id="6eCw5sUSRhl" role="2ShVmc">
                                    <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                    <node concept="37vLTw" id="6eCw5sUSRhm" role="37wK5m">
                                      <ref role="3cqZAo" node="6eCw5sUSRi4" resolve="pi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6eCw5sUSRhn" role="3cqZAp">
                          <node concept="2OqwBi" id="6eCw5sUSRho" role="3clFbw">
                            <node concept="liA8E" id="6eCw5sUSRhp" role="2OqNvi">
                              <ref role="37wK5l" to="xygl:~ProgressIndicator.isCanceled()" resolve="isCanceled" />
                            </node>
                            <node concept="37vLTw" id="6eCw5sUSRhq" role="2Oq$k0">
                              <ref role="3cqZAo" node="6eCw5sUSRi4" resolve="pi" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6eCw5sUSRhr" role="3clFbx">
                            <node concept="3cpWs6" id="6eCw5sUSRhs" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="6eCw5sUSRht" role="3cqZAp" />
                        <node concept="3clFbF" id="6eCw5sUSRhu" role="3cqZAp">
                          <node concept="2OqwBi" id="6eCw5sUSRhv" role="3clFbG">
                            <node concept="2YIFZM" id="6eCw5sUSRhw" role="2Oq$k0">
                              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                            </node>
                            <node concept="liA8E" id="6eCw5sUSRhx" role="2OqNvi">
                              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                              <node concept="1bVj0M" id="6eCw5sUSRhy" role="37wK5m">
                                <node concept="3clFbS" id="6eCw5sUSRhz" role="1bW5cS">
                                  <node concept="3clFbF" id="6eCw5sUSRh$" role="3cqZAp">
                                    <node concept="2OqwBi" id="6eCw5sUSRh_" role="3clFbG">
                                      <node concept="liA8E" id="6eCw5sUSRhA" role="2OqNvi">
                                        <ref role="37wK5l" to="u42p:7DGCeT2L$54" resolve="showRefactoringView" />
                                        <node concept="37vLTw" id="6eCw5sUSRhB" role="37wK5m">
                                          <ref role="3cqZAo" node="6eCw5sUSRbz" resolve="ideaProject" />
                                        </node>
                                        <node concept="2ShNRf" id="6eCw5sUSRhC" role="37wK5m">
                                          <node concept="YeOm9" id="6eCw5sUSRhD" role="2ShVmc">
                                            <node concept="1Y3b0j" id="6eCw5sUSRhE" role="YeSDq">
                                              <property role="2bfB8j" value="true" />
                                              <ref role="1Y3XeK" to="u42p:3g3N8kb3Dex" resolve="RefactoringViewAction" />
                                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                              <node concept="3Tm1VV" id="6eCw5sUSRhF" role="1B3o_S" />
                                              <node concept="3clFb_" id="6eCw5sUSRhG" role="jymVt">
                                                <property role="1EzhhJ" value="false" />
                                                <property role="TrG5h" value="performAction" />
                                                <property role="DiZV1" value="false" />
                                                <node concept="3clFbS" id="6eCw5sUSRhH" role="3clF47">
                                                  <node concept="3clFbF" id="6eCw5sUSRhI" role="3cqZAp">
                                                    <node concept="2OqwBi" id="6eCw5sUSRhJ" role="3clFbG">
                                                      <node concept="liA8E" id="6eCw5sUSRhK" role="2OqNvi">
                                                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                                                        <node concept="37vLTw" id="6eCw5sUSRhL" role="37wK5m">
                                                          <ref role="3cqZAo" node="6eCw5sUSRbC" resolve="modelCommand" />
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="6eCw5sUSRhM" role="2Oq$k0">
                                                        <node concept="liA8E" id="6eCw5sUSRhN" role="2OqNvi">
                                                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                                                        </node>
                                                        <node concept="37vLTw" id="6eCw5sUSRhO" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7dWkQhiRH1P" resolve="myRepository" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbF" id="6eCw5sUSRhP" role="3cqZAp">
                                                    <node concept="2OqwBi" id="6eCw5sUSRhQ" role="3clFbG">
                                                      <node concept="37vLTw" id="6eCw5sUSRhR" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="6eCw5sUSRhT" resolve="refactoringViewItem" />
                                                      </node>
                                                      <node concept="liA8E" id="6eCw5sUSRhS" role="2OqNvi">
                                                        <ref role="37wK5l" to="u42p:3g3N8kb3DkX" resolve="close" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="37vLTG" id="6eCw5sUSRhT" role="3clF46">
                                                  <property role="TrG5h" value="refactoringViewItem" />
                                                  <property role="3TUv4t" value="false" />
                                                  <node concept="3uibUv" id="6eCw5sUSRhU" role="1tU5fm">
                                                    <ref role="3uigEE" to="u42p:3g3N8kb3DkV" resolve="RefactoringViewItem" />
                                                  </node>
                                                </node>
                                                <node concept="3Tm1VV" id="6eCw5sUSRhV" role="1B3o_S" />
                                                <node concept="3cqZAl" id="6eCw5sUSRhW" role="3clF45" />
                                                <node concept="2AHcQZ" id="6eCw5sUSRhX" role="2AJF6D">
                                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="10Nm6u" id="6eCw5sUSRhY" role="37wK5m" />
                                        <node concept="37vLTw" id="6eCw5sUSRhZ" role="37wK5m">
                                          <ref role="3cqZAo" node="6eCw5sUSRhf" resolve="sr" />
                                        </node>
                                        <node concept="37vLTw" id="6eCw5sUSRi0" role="37wK5m">
                                          <ref role="3cqZAo" node="6eCw5sUSRe0" resolve="searchTask" />
                                        </node>
                                        <node concept="Xl_RD" id="6eCw5sUSRi1" role="37wK5m">
                                          <property role="Xl_RC" value="Safe Delete" />
                                        </node>
                                      </node>
                                      <node concept="2YIFZM" id="6eCw5sUSRi2" role="2Oq$k0">
                                        <ref role="37wK5l" to="u42p:1dH5fOG2bPt" resolve="getInstance" />
                                        <ref role="1Pybhc" to="u42p:1dH5fOG2bOi" resolve="RefactoringAccessEx" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="6eCw5sUSRi3" role="1B3o_S" />
                      <node concept="37vLTG" id="6eCw5sUSRi4" role="3clF46">
                        <property role="TrG5h" value="pi" />
                        <node concept="2AHcQZ" id="6eCw5sUSRi5" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="3uibUv" id="6eCw5sUSRi6" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="6eCw5sUSRi7" role="3clF45" />
                      <node concept="2AHcQZ" id="6eCw5sUSRi8" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="6eCw5sUSRi9" role="1B3o_S" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="6eCw5sUSRia" role="2Oq$k0">
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6eCw5sUSRib" role="3clF45" />
      <node concept="37vLTG" id="6eCw5sUSRic" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="6eCw5sUSRid" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="hSPYZl3">
    <property role="TrG5h" value="DeleteNode" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Delete" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node.Actions" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="1eMX9nD40fU" role="32lrUH">
      <property role="TrG5h" value="getAffectedNodes" />
      <node concept="A3Dl8" id="1eMX9nD59BX" role="3clF45">
        <node concept="3Tqbb2" id="1eMX9nD59BZ" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="1eMX9nD40fW" role="3clF47">
        <node concept="3cpWs8" id="23cvsT7NbD7" role="3cqZAp">
          <node concept="3cpWsn" id="23cvsT7NbD8" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="A3Dl8" id="23cvsT7Nci8" role="1tU5fm">
              <node concept="3uibUv" id="23cvsT7Nsfl" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="23cvsT7NbD9" role="33vP2m">
              <node concept="2WthIp" id="23cvsT7NbDa" role="2Oq$k0" />
              <node concept="1DTwFV" id="23cvsT7NbDb" role="2OqNvi">
                <ref role="2WH_rO" node="hSPZe_t" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="23cvsT7Nv8e" role="3cqZAp">
          <node concept="3cpWsn" id="23cvsT7Nv8f" role="3cpWs9">
            <property role="TrG5h" value="modifiableNodes" />
            <node concept="A3Dl8" id="23cvsT7NukN" role="1tU5fm">
              <node concept="3uibUv" id="23cvsT7NukQ" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="23cvsT7Nv8g" role="33vP2m">
              <node concept="37vLTw" id="23cvsT7Nv8h" role="2Oq$k0">
                <ref role="3cqZAo" node="23cvsT7NbD8" resolve="list" />
              </node>
              <node concept="3zZkjj" id="23cvsT7Nv8i" role="2OqNvi">
                <node concept="1bVj0M" id="23cvsT7Nv8j" role="23t8la">
                  <node concept="3clFbS" id="23cvsT7Nv8k" role="1bW5cS">
                    <node concept="3clFbF" id="23cvsT7Nv8l" role="3cqZAp">
                      <node concept="3fqX7Q" id="23cvsT7Nv8m" role="3clFbG">
                        <node concept="2EnYce" id="23cvsT7Nv8n" role="3fr31v">
                          <node concept="2OqwBi" id="23cvsT7Nv8o" role="2Oq$k0">
                            <node concept="37vLTw" id="23cvsT7Nv8p" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XpY" resolve="it" />
                            </node>
                            <node concept="liA8E" id="23cvsT7Nv8q" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                            </node>
                          </node>
                          <node concept="liA8E" id="23cvsT7Nv8r" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XpY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XpZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23cvsT7MN8$" role="3cqZAp">
          <node concept="3clFbS" id="23cvsT7MN8A" role="3clFbx">
            <node concept="3cpWs6" id="23cvsT7N1Hw" role="3cqZAp">
              <node concept="37vLTw" id="23cvsT7Nv8u" role="3cqZAk">
                <ref role="3cqZAo" node="23cvsT7Nv8f" resolve="modifiableNodes" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="23cvsT7MWXB" role="3clFbw">
            <node concept="2OqwBi" id="23cvsT7MYLh" role="3uHU7w">
              <node concept="2OqwBi" id="23cvsT7MXS6" role="2Oq$k0">
                <node concept="2WthIp" id="23cvsT7MXS9" role="2Oq$k0" />
                <node concept="1DTwFV" id="23cvsT7MXSb" role="2OqNvi">
                  <ref role="2WH_rO" node="5v9eAnb$FDP" resolve="packs" />
                </node>
              </node>
              <node concept="liA8E" id="23cvsT7N1wi" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
            <node concept="3clFbC" id="23cvsT7MVh6" role="3uHU7B">
              <node concept="2OqwBi" id="23cvsT7MOJs" role="3uHU7B">
                <node concept="2WthIp" id="23cvsT7MOJv" role="2Oq$k0" />
                <node concept="1DTwFV" id="23cvsT7MOJx" role="2OqNvi">
                  <ref role="2WH_rO" node="5v9eAnb$FDP" resolve="packs" />
                </node>
              </node>
              <node concept="10Nm6u" id="23cvsT7MWb5" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23cvsT7NFxr" role="3cqZAp" />
        <node concept="3cpWs8" id="1eMX9nD4bcE" role="3cqZAp">
          <node concept="3cpWsn" id="1eMX9nD4bcF" role="3cpWs9">
            <property role="TrG5h" value="packs" />
            <node concept="2hMVRd" id="1eMX9nD4O7s" role="1tU5fm">
              <node concept="3uibUv" id="1eMX9nD4O7u" role="2hN53Y">
                <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                <node concept="3uibUv" id="1eMX9nD4O7v" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="3uibUv" id="1eMX9nD4O7w" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1eMX9nD4PtS" role="33vP2m">
              <node concept="2i4dXS" id="1eMX9nD4PtJ" role="2ShVmc">
                <node concept="3uibUv" id="1eMX9nD4PtK" role="HW$YZ">
                  <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                  <node concept="3uibUv" id="1eMX9nD4PtL" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="3uibUv" id="1eMX9nD4PtM" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1eMX9nD4bcG" role="I$8f6">
                  <node concept="2WthIp" id="1eMX9nD4bcH" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1eMX9nD4bcI" role="2OqNvi">
                    <ref role="2WH_rO" node="5v9eAnb$FDP" resolve="packs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1eMX9nD4UgU" role="3cqZAp">
          <node concept="3cpWsn" id="1eMX9nD4UgV" role="3cpWs9">
            <property role="TrG5h" value="nodeFromPacks" />
            <node concept="A3Dl8" id="1eMX9nD4Ugc" role="1tU5fm">
              <node concept="3Tqbb2" id="1eMX9nD4Ugf" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="1eMX9nD4UgW" role="33vP2m">
              <node concept="3goQfb" id="1eMX9nD4UgY" role="2OqNvi">
                <node concept="1bVj0M" id="1eMX9nD4UgZ" role="23t8la">
                  <node concept="3clFbS" id="1eMX9nD4Uh0" role="1bW5cS">
                    <node concept="3clFbF" id="1eMX9nD4Uh1" role="3cqZAp">
                      <node concept="2OqwBi" id="1eMX9nD4Uh2" role="3clFbG">
                        <node concept="2OqwBi" id="1eMX9nD4Uh3" role="2Oq$k0">
                          <node concept="1eOMI4" id="1eMX9nD4Uh4" role="2Oq$k0">
                            <node concept="10QFUN" id="1eMX9nD4Uh5" role="1eOMHV">
                              <node concept="2OqwBi" id="1eMX9nD4Uh6" role="10QFUP">
                                <node concept="37vLTw" id="1eMX9nD4Uh7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xq2" resolve="pack" />
                                </node>
                                <node concept="2OwXpG" id="1eMX9nD4Uh8" role="2OqNvi">
                                  <ref role="2Oxat5" to="18ew:~Pair.o1" resolve="o1" />
                                </node>
                              </node>
                              <node concept="H_c77" id="1eMX9nD4Uh9" role="10QFUM" />
                            </node>
                          </node>
                          <node concept="2RRcyG" id="1eMX9nD4Uha" role="2OqNvi" />
                        </node>
                        <node concept="3zZkjj" id="1eMX9nD4Uhb" role="2OqNvi">
                          <node concept="1bVj0M" id="1eMX9nD4Uhc" role="23t8la">
                            <node concept="3clFbS" id="1eMX9nD4Uhd" role="1bW5cS">
                              <node concept="3clFbF" id="1eMX9nD4Uhe" role="3cqZAp">
                                <node concept="1Wc70l" id="3Or3cKNXURo" role="3clFbG">
                                  <node concept="3y3z36" id="3Or3cKNY1It" role="3uHU7B">
                                    <node concept="10Nm6u" id="3Or3cKNY2kG" role="3uHU7w" />
                                    <node concept="2OqwBi" id="3Or3cKNXZCA" role="3uHU7B">
                                      <node concept="37vLTw" id="3Or3cKNXZli" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Xq0" resolve="node" />
                                      </node>
                                      <node concept="3TrcHB" id="3Or3cKNY0A5" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="1eMX9nD4Uhf" role="3uHU7w">
                                    <node concept="2OqwBi" id="1eMX9nD4Uhg" role="2Oq$k0">
                                      <node concept="37vLTw" id="1eMX9nD4Uhh" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Xq0" resolve="node" />
                                      </node>
                                      <node concept="3TrcHB" id="1eMX9nD4Uhi" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1eMX9nD4Uhj" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                      <node concept="2OqwBi" id="1eMX9nD4Uhk" role="37wK5m">
                                        <node concept="37vLTw" id="1eMX9nD4Uhl" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0Xq2" resolve="pack" />
                                        </node>
                                        <node concept="2OwXpG" id="1eMX9nD4Uhm" role="2OqNvi">
                                          <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0Xq0" role="1bW2Oz">
                              <property role="TrG5h" value="node" />
                              <node concept="2jxLKc" id="5W7E4fV0Xq1" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xq2" role="1bW2Oz">
                    <property role="TrG5h" value="pack" />
                    <node concept="2jxLKc" id="5W7E4fV0Xq3" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="23cvsT7NSt0" role="2Oq$k0">
                <node concept="37vLTw" id="23cvsT7NSt1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1eMX9nD4bcF" resolve="packs" />
                </node>
                <node concept="3zZkjj" id="23cvsT7NSt2" role="2OqNvi">
                  <node concept="1bVj0M" id="23cvsT7NSt3" role="23t8la">
                    <node concept="3clFbS" id="23cvsT7NSt4" role="1bW5cS">
                      <node concept="3clFbF" id="23cvsT7NSt5" role="3cqZAp">
                        <node concept="3fqX7Q" id="23cvsT7NSt6" role="3clFbG">
                          <node concept="2OqwBi" id="23cvsT7NSt7" role="3fr31v">
                            <node concept="2OqwBi" id="23cvsT7NSt8" role="2Oq$k0">
                              <node concept="37vLTw" id="23cvsT7NSt9" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Xq4" resolve="it" />
                              </node>
                              <node concept="2OwXpG" id="23cvsT7NSta" role="2OqNvi">
                                <ref role="2Oxat5" to="18ew:~Pair.o1" resolve="o1" />
                              </node>
                            </node>
                            <node concept="liA8E" id="23cvsT7NStb" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xq4" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xq5" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="214edT5lkOV" role="3cqZAp">
          <node concept="2OqwBi" id="214edT5lkOX" role="3cqZAk">
            <node concept="37vLTw" id="214edT5lkOY" role="2Oq$k0">
              <ref role="3cqZAo" node="1eMX9nD4UgV" resolve="nodeFromPacks" />
            </node>
            <node concept="4Tj9Z" id="214edT5lkOZ" role="2OqNvi">
              <node concept="37vLTw" id="23cvsT7NHRt" role="576Qk">
                <ref role="3cqZAo" node="23cvsT7Nv8f" resolve="modifiableNodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1eMX9nD43F_" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="OqYxEj4MBb" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="OqYxEj4MBc" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="hSPZe_t" role="1NuT2Z">
      <property role="TrG5h" value="nodes" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODES" resolve="NODES" />
      <node concept="1oajcY" id="7HZe2EwZDpx" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5v9eAnb$FDP" role="1NuT2Z">
      <property role="TrG5h" value="packs" />
      <ref role="1DUlNI" to="3s15:~MPSDataKeys.VIRTUAL_PACKAGES" resolve="VIRTUAL_PACKAGES" />
    </node>
    <node concept="tnohg" id="hSPYZl4" role="tncku">
      <node concept="3clFbS" id="hSPYZl5" role="2VODD2">
        <node concept="3cpWs8" id="214edT5ln$u" role="3cqZAp">
          <node concept="3cpWsn" id="214edT5ln$v" role="3cpWs9">
            <property role="TrG5h" value="affNodes" />
            <node concept="_YKpA" id="214edT5ln$l" role="1tU5fm">
              <node concept="3Tqbb2" id="214edT5ln$o" role="_ZDj9" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="214edT5lpiL" role="3cqZAp">
          <node concept="1QHqEC" id="214edT5lpiN" role="1QHqEI">
            <node concept="3clFbS" id="214edT5lpiP" role="1bW5cS">
              <node concept="3clFbF" id="214edT5lozE" role="3cqZAp">
                <node concept="37vLTI" id="214edT5lozG" role="3clFbG">
                  <node concept="2OqwBi" id="214edT5ln$w" role="37vLTx">
                    <node concept="2OqwBi" id="214edT5ln$x" role="2Oq$k0">
                      <node concept="2WthIp" id="214edT5ln$y" role="2Oq$k0" />
                      <node concept="2XshWL" id="214edT5ln$z" role="2OqNvi">
                        <ref role="2WH_rO" node="1eMX9nD40fU" resolve="getAffectedNodes" />
                      </node>
                    </node>
                    <node concept="ANE8D" id="214edT5ln$$" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="214edT5lozK" role="37vLTJ">
                    <ref role="3cqZAo" node="214edT5ln$v" resolve="affNodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1eZSuKdYcg9" role="ukAjM">
            <node concept="2OqwBi" id="1eZSuKdYbPJ" role="2Oq$k0">
              <node concept="2WthIp" id="1eZSuKdYbPM" role="2Oq$k0" />
              <node concept="1DTwFV" id="1eZSuKdYbPO" role="2OqNvi">
                <ref role="2WH_rO" node="OqYxEj4MBb" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="1eZSuKdYcRD" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5qxx5IQ$a3Y" role="3cqZAp">
          <node concept="3cpWsn" id="5qxx5IQ$a3Z" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="5qxx5IQ$a40" role="1tU5fm">
              <ref role="3uigEE" node="7dWkQhiRH1J" resolve="DeleteNodesHelper" />
            </node>
            <node concept="2ShNRf" id="5qxx5IQ$a41" role="33vP2m">
              <node concept="1pGfFk" id="5qxx5IQ$a42" role="2ShVmc">
                <ref role="37wK5l" node="7dWkQhiRH1V" resolve="DeleteNodesHelper" />
                <node concept="37vLTw" id="214edT5ln$_" role="37wK5m">
                  <ref role="3cqZAo" node="214edT5ln$v" resolve="affNodes" />
                </node>
                <node concept="2OqwBi" id="5qxx5IQ$a46" role="37wK5m">
                  <node concept="1DTwFV" id="OqYxEj4PHv" role="2OqNvi">
                    <ref role="2WH_rO" node="OqYxEj4MBb" resolve="project" />
                  </node>
                  <node concept="2WthIp" id="5qxx5IQ$a47" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qxx5IQ$a4a" role="3cqZAp" />
        <node concept="3cpWs8" id="hSPZu5K" role="3cqZAp">
          <node concept="3cpWsn" id="hSPZu5L" role="3cpWs9">
            <property role="TrG5h" value="hasAspects" />
            <node concept="10P_77" id="hSPZu5M" role="1tU5fm" />
            <node concept="3clFbT" id="hSQ23jY" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="1eMX9nD5qEj" role="3cqZAp">
          <node concept="1QHqEC" id="1eMX9nD5qEl" role="1QHqEI">
            <node concept="3clFbS" id="1eMX9nD5qEn" role="1bW5cS">
              <node concept="3clFbF" id="5qxx5IQ$8qF" role="3cqZAp">
                <node concept="37vLTI" id="5qxx5IQ$8r1" role="3clFbG">
                  <node concept="2OqwBi" id="5qxx5IQ$a4B" role="37vLTx">
                    <node concept="37vLTw" id="3GM_nagTAyN" role="2Oq$k0">
                      <ref role="3cqZAo" node="5qxx5IQ$a3Z" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="5qxx5IQ$a4H" role="2OqNvi">
                      <ref role="37wK5l" node="5qxx5IQzSL2" resolve="hasAspectOption" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTsLP" role="37vLTJ">
                    <ref role="3cqZAo" node="hSPZu5L" resolve="hasAspects" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1eZSuKdYd5H" role="ukAjM">
            <node concept="2OqwBi" id="1eZSuKdYd5I" role="2Oq$k0">
              <node concept="2WthIp" id="1eZSuKdYd5J" role="2Oq$k0" />
              <node concept="1DTwFV" id="1eZSuKdYd5K" role="2OqNvi">
                <ref role="2WH_rO" node="OqYxEj4MBb" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="1eZSuKdYd5L" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qxx5IQ$a4h" role="3cqZAp" />
        <node concept="3cpWs8" id="7OWEUve5Yu9" role="3cqZAp">
          <node concept="3cpWsn" id="7OWEUve5Yua" role="3cpWs9">
            <property role="TrG5h" value="safeOption" />
            <node concept="3uibUv" id="7OWEUve5Yub" role="1tU5fm">
              <ref role="3uigEE" to="52hy:~DeleteDialog$DeleteOption" resolve="DeleteDialog.DeleteOption" />
            </node>
            <node concept="2ShNRf" id="7OWEUve5Yuc" role="33vP2m">
              <node concept="1pGfFk" id="7OWEUve5Yud" role="2ShVmc">
                <ref role="37wK5l" to="52hy:~DeleteDialog$DeleteOption.&lt;init&gt;(java.lang.String,boolean,boolean)" resolve="DeleteDialog.DeleteOption" />
                <node concept="2YIFZM" id="4TYmXmb_dLj" role="37wK5m">
                  <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
                  <ref role="37wK5l" to="g1qu:~UIUtil.replaceMnemonicAmpersand(java.lang.String)" resolve="replaceMnemonicAmpersand" />
                  <node concept="2YIFZM" id="4TYmXmb$rdz" role="37wK5m">
                    <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                    <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                    <node concept="Xl_RD" id="4TYmXmb$rd$" role="37wK5m">
                      <property role="Xl_RC" value="dialog.node.delete.option.safe" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="7OWEUve5Yuf" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="3clFbT" id="7OWEUve5Yug" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OWEUve6oBc" role="3cqZAp">
          <node concept="3cpWsn" id="7OWEUve6oBd" role="3cpWs9">
            <property role="TrG5h" value="aspectsOption" />
            <node concept="3uibUv" id="7OWEUve6oBe" role="1tU5fm">
              <ref role="3uigEE" to="52hy:~DeleteDialog$DeleteOption" resolve="DeleteDialog.DeleteOption" />
            </node>
            <node concept="2ShNRf" id="7OWEUve6oBf" role="33vP2m">
              <node concept="1pGfFk" id="7OWEUve6oBg" role="2ShVmc">
                <ref role="37wK5l" to="52hy:~DeleteDialog$DeleteOption.&lt;init&gt;(java.lang.String,boolean,boolean)" resolve="DeleteDialog.DeleteOption" />
                <node concept="2YIFZM" id="4TYmXmb_ed5" role="37wK5m">
                  <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
                  <ref role="37wK5l" to="g1qu:~UIUtil.replaceMnemonicAmpersand(java.lang.String)" resolve="replaceMnemonicAmpersand" />
                  <node concept="2YIFZM" id="4TYmXmb_ed6" role="37wK5m">
                    <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                    <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                    <node concept="Xl_RD" id="4TYmXmb_ed7" role="37wK5m">
                      <property role="Xl_RC" value="dialog.node.delete.option.aspects" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="7OWEUve6oBi" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="7OWEUve6oBj" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="hSQ0UU1" role="3cqZAp">
          <node concept="3cpWsn" id="hSQ0UU2" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <node concept="3uibUv" id="hSQ0UU3" role="1tU5fm">
              <ref role="3uigEE" to="52hy:~DeleteDialog" resolve="DeleteDialog" />
            </node>
            <node concept="2ShNRf" id="hSQ0WNU" role="33vP2m">
              <node concept="1pGfFk" id="hSQ0XDa" role="2ShVmc">
                <ref role="37wK5l" to="52hy:~DeleteDialog.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,jetbrains.mps.workbench.dialogs.DeleteDialog$DeleteOption...)" resolve="DeleteDialog" />
                <node concept="2OqwBi" id="72ozW497M8g" role="37wK5m">
                  <node concept="2OqwBi" id="OqYxEjfrWl" role="2Oq$k0">
                    <node concept="2WthIp" id="OqYxEjfrWo" role="2Oq$k0" />
                    <node concept="1DTwFV" id="OqYxEjfrWq" role="2OqNvi">
                      <ref role="2WH_rO" node="OqYxEj4MBb" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="72ozW497NM0" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="2YIFZM" id="4TYmXmb_eH5" role="37wK5m">
                  <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                  <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                  <node concept="Xl_RD" id="4TYmXmb_eH6" role="37wK5m">
                    <property role="Xl_RC" value="dialog.node.delete.title" />
                  </node>
                </node>
                <node concept="2YIFZM" id="4TYmXmb_fsJ" role="37wK5m">
                  <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                  <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                  <node concept="Xl_RD" id="4TYmXmb_fsK" role="37wK5m">
                    <property role="Xl_RC" value="dialog.node.delete.text" />
                  </node>
                </node>
                <node concept="3K4zz7" id="4ZiYHj9wr$A" role="37wK5m">
                  <node concept="37vLTw" id="4ZiYHj9wr9b" role="3K4Cdx">
                    <ref role="3cqZAo" node="hSPZu5L" resolve="hasAspects" />
                  </node>
                  <node concept="2ShNRf" id="4ZiYHj9vLcN" role="3K4E3e">
                    <node concept="3g6Rrh" id="4ZiYHj9wqNP" role="2ShVmc">
                      <node concept="3uibUv" id="4ZiYHj9vLqn" role="3g7fb8">
                        <ref role="3uigEE" to="52hy:~DeleteDialog$DeleteOption" resolve="DeleteDialog.DeleteOption" />
                      </node>
                      <node concept="37vLTw" id="4ZiYHj9wqQu" role="3g7hyw">
                        <ref role="3cqZAo" node="7OWEUve5Yua" resolve="safeOption" />
                      </node>
                      <node concept="37vLTw" id="4ZiYHj9wqYR" role="3g7hyw">
                        <ref role="3cqZAo" node="7OWEUve6oBd" resolve="aspectsOption" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="4ZiYHj9wrHT" role="3K4GZi">
                    <node concept="3g6Rrh" id="4ZiYHj9wrHU" role="2ShVmc">
                      <node concept="3uibUv" id="4ZiYHj9wrHV" role="3g7fb8">
                        <ref role="3uigEE" to="52hy:~DeleteDialog$DeleteOption" resolve="DeleteDialog.DeleteOption" />
                      </node>
                      <node concept="37vLTw" id="4ZiYHj9wrHW" role="3g7hyw">
                        <ref role="3cqZAo" node="7OWEUve5Yua" resolve="safeOption" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hSQ1acB" role="3cqZAp">
          <node concept="2OqwBi" id="hSQ1akt" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBD1" role="2Oq$k0">
              <ref role="3cqZAo" node="hSQ0UU2" resolve="dialog" />
            </node>
            <node concept="liA8E" id="hSQ1aMy" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hSQ1b_7" role="3cqZAp">
          <node concept="3clFbS" id="hSQ1b_8" role="3clFbx">
            <node concept="3cpWs6" id="hSQ1f8_" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="hSQ1cKB" role="3clFbw">
            <node concept="2OqwBi" id="hSQ1dpc" role="3fr31v">
              <node concept="37vLTw" id="3GM_nagTxwF" role="2Oq$k0">
                <ref role="3cqZAo" node="hSQ0UU2" resolve="dialog" />
              </node>
              <node concept="liA8E" id="hSQ1dTt" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~DialogWrapper.isOK()" resolve="isOK" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hSQpxzQ" role="3cqZAp">
          <node concept="2OqwBi" id="hSQpxzR" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTveL" role="2Oq$k0">
              <ref role="3cqZAo" node="5qxx5IQ$a3Z" resolve="helper" />
            </node>
            <node concept="liA8E" id="hSQpx$1" role="2OqNvi">
              <ref role="37wK5l" node="6eCw5sUSRbk" resolve="deleteNodes" />
              <node concept="2OqwBi" id="7OWEUve5Yv6" role="37wK5m">
                <node concept="liA8E" id="72ozW498$AD" role="2OqNvi">
                  <ref role="37wK5l" to="52hy:~DeleteDialog$DeleteOption.isSelected()" resolve="isSelected" />
                </node>
                <node concept="37vLTw" id="3GM_nagTv3g" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OWEUve5Yua" resolve="safeOption" />
                </node>
              </node>
              <node concept="2OqwBi" id="7OWEUve6oBG" role="37wK5m">
                <node concept="liA8E" id="72ozW498$DG" role="2OqNvi">
                  <ref role="37wK5l" to="52hy:~DeleteDialog$DeleteOption.isSelected()" resolve="isSelected" />
                </node>
                <node concept="37vLTw" id="3GM_nagTrNV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OWEUve6oBd" resolve="aspectsOption" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="hSPZmn3" role="tmbBb">
      <node concept="3clFbS" id="hSPZmn4" role="2VODD2">
        <node concept="3cpWs8" id="214edT5ll_j" role="3cqZAp">
          <node concept="3cpWsn" id="214edT5ll_k" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="10P_77" id="214edT5ll_f" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="214edT5lmhO" role="3cqZAp">
          <node concept="1QHqEC" id="214edT5lmhQ" role="1QHqEI">
            <node concept="3clFbS" id="214edT5lmhS" role="1bW5cS">
              <node concept="3clFbF" id="214edT5lmvj" role="3cqZAp">
                <node concept="37vLTI" id="214edT5lmvl" role="3clFbG">
                  <node concept="3y3z36" id="214edT5ll_l" role="37vLTx">
                    <node concept="3cmrfG" id="214edT5ll_m" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="214edT5ll_n" role="3uHU7B">
                      <node concept="2OqwBi" id="214edT5ll_o" role="2Oq$k0">
                        <node concept="2WthIp" id="214edT5ll_p" role="2Oq$k0" />
                        <node concept="2XshWL" id="214edT5ll_q" role="2OqNvi">
                          <ref role="2WH_rO" node="1eMX9nD40fU" resolve="getAffectedNodes" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="214edT5ll_r" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="214edT5lmvp" role="37vLTJ">
                    <ref role="3cqZAo" node="214edT5ll_k" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1eZSuKdYaY2" role="ukAjM">
            <node concept="2OqwBi" id="1eZSuKdYayA" role="2Oq$k0">
              <node concept="2WthIp" id="1eZSuKdYayD" role="2Oq$k0" />
              <node concept="1DTwFV" id="1eZSuKdYayF" role="2OqNvi">
                <ref role="2WH_rO" node="OqYxEj4MBb" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="1eZSuKdYbBW" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="214edT5lnmm" role="3cqZAp">
          <node concept="37vLTw" id="214edT5lnmn" role="3cqZAk">
            <ref role="3cqZAo" node="214edT5ll_k" resolve="res" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7BBQIYkR4kU">
    <property role="TrG5h" value="SafeDelete" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Safe Delete" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node.Actions" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="OqYxEj5h67" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="OqYxEj5h68" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="553obervXdK" role="1NuT2Z">
      <property role="TrG5h" value="nodes" />
      <node concept="3Tm6S6" id="553obervXdL" role="1B3o_S" />
      <node concept="1oajcY" id="553obervXdM" role="1oa70y" />
      <node concept="2I9FWS" id="553obervXdN" role="1tU5fm" />
    </node>
    <node concept="tnohg" id="7BBQIYkR4l1" role="tncku">
      <node concept="3clFbS" id="7BBQIYkR4l2" role="2VODD2">
        <node concept="3clFbF" id="4nCd7enwuZI" role="3cqZAp">
          <node concept="2OqwBi" id="4nCd7enwv0n" role="3clFbG">
            <node concept="2ShNRf" id="4nCd7enwuZJ" role="2Oq$k0">
              <node concept="1pGfFk" id="4nCd7enwuZL" role="2ShVmc">
                <ref role="37wK5l" node="7dWkQhiRH1V" resolve="DeleteNodesHelper" />
                <node concept="2OqwBi" id="553obervXdP" role="37wK5m">
                  <node concept="2WthIp" id="553obervXdQ" role="2Oq$k0" />
                  <node concept="3gHZIF" id="553obervXdR" role="2OqNvi">
                    <ref role="2WH_rO" node="553obervXdK" resolve="nodes" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4nCd7enwv04" role="37wK5m">
                  <node concept="1DTwFV" id="OqYxEj5j9s" role="2OqNvi">
                    <ref role="2WH_rO" node="OqYxEj5h67" resolve="project" />
                  </node>
                  <node concept="2WthIp" id="4nCd7enwv05" role="2Oq$k0" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4nCd7enwv0t" role="2OqNvi">
              <ref role="37wK5l" node="6eCw5sUSRbk" resolve="deleteNodes" />
              <node concept="3clFbT" id="4nCd7enwv0v" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="4nCd7enwv0x" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1wUHuXccgP3" role="tmbBb">
      <node concept="3clFbS" id="1wUHuXccgP4" role="2VODD2">
        <node concept="3clFbF" id="1wUHuXcchY8" role="3cqZAp">
          <node concept="2OqwBi" id="1wUHuXcck1l" role="3clFbG">
            <node concept="2OqwBi" id="1wUHuXcchY2" role="2Oq$k0">
              <node concept="2WthIp" id="1wUHuXcchY5" role="2Oq$k0" />
              <node concept="3gHZIF" id="1wUHuXcchY7" role="2OqNvi">
                <ref role="2WH_rO" node="553obervXdK" resolve="nodes" />
              </node>
            </node>
            <node concept="2HxqBE" id="1wUHuXccrLv" role="2OqNvi">
              <node concept="1bVj0M" id="1wUHuXccrLx" role="23t8la">
                <node concept="3clFbS" id="1wUHuXccrLy" role="1bW5cS">
                  <node concept="3clFbF" id="1wUHuXccrLz" role="3cqZAp">
                    <node concept="3fqX7Q" id="1wUHuXccrPH" role="3clFbG">
                      <node concept="2OqwBi" id="1wUHuXccrPJ" role="3fr31v">
                        <node concept="2JrnkZ" id="1wUHuXccrPK" role="2Oq$k0">
                          <node concept="2OqwBi" id="1wUHuXccrPL" role="2JrQYb">
                            <node concept="37vLTw" id="1wUHuXccrPM" role="2Oq$k0">
                              <ref role="3cqZAo" node="1wUHuXccrLE" resolve="it" />
                            </node>
                            <node concept="I4A8Y" id="1wUHuXccrPN" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1wUHuXccrPO" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="1wUHuXccrLE" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1wUHuXccrLF" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="PWAE4RoRLR">
    <property role="TrG5h" value="EditorActionsAddition" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node" />
    <node concept="ftmFs" id="PWAE4RoRQX" role="ftER_">
      <node concept="tCFHf" id="PWAE4RoRQY" role="ftvYc">
        <ref role="tCJdB" node="7BBQIYkR4kU" resolve="SafeDelete" />
      </node>
    </node>
    <node concept="tT9cl" id="PWAE4RoRQZ" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:6KwcZ1G3PiL" resolve="EditorActions" />
    </node>
  </node>
  <node concept="Zd50a" id="5G5kXQMOHMf">
    <property role="TrG5h" value="Refactoring_Mac" />
    <property role="Zd52Q" value="1mJS7WEAV1T/Mac_OS_X" />
    <node concept="Zd509" id="262clIzq$xr" role="Zd508">
      <ref role="1bYAoF" node="7BBQIYkR4kU" resolve="SafeDelete" />
      <node concept="pLAjd" id="262clIzq$xs" role="Zd501">
        <property role="pLAjf" value="VK_DELETE" />
        <property role="pLAjc" value="meta" />
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="5G5kXQMOI4A">
    <property role="TrG5h" value="Refactoring_Mac_10_5" />
    <property role="Zd52Q" value="2HiVo5PakU7/Mac_OS_X_Plus" />
    <node concept="Zd509" id="2HiVo5Pctgh" role="Zd508">
      <ref role="1bYAoF" node="7BBQIYkR4kU" resolve="SafeDelete" />
      <node concept="pLAjd" id="2HiVo5Pctgi" role="Zd501">
        <property role="pLAjf" value="VK_DELETE" />
        <property role="pLAjc" value="meta" />
        <property role="3hacHL" value="5SFo3Mf0QpD/replace all" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="5G5kXQMOIdm">
    <property role="TrG5h" value="Contribite2NodeActions" />
    <property role="3GE5qa" value="Menu.ProjectPane.Node" />
    <node concept="ftmFs" id="5G5kXQMOIe1" role="ftER_">
      <node concept="tCFHf" id="hSQ1Oiz" role="ftvYc">
        <ref role="tCJdB" node="hSPYZl3" resolve="DeleteNode" />
      </node>
      <node concept="tCFHf" id="5YCKioiEqBr" role="ftvYc">
        <ref role="tCJdB" node="7BBQIYkR4kU" resolve="SafeDelete" />
      </node>
    </node>
    <node concept="tT9cl" id="5G5kXQMOIdo" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:5G5kXQMOIcJ" resolve="deletion" />
    </node>
  </node>
  <node concept="tC5Ba" id="5G5kXQMOIe6">
    <property role="3GE5qa" value="Menu.ProjectPane.Node" />
    <property role="TrG5h" value="Contribute2PackageActions" />
    <node concept="ftmFs" id="5G5kXQMOIe8" role="ftER_">
      <node concept="tCFHf" id="3Or3cKO2O9a" role="ftvYc">
        <ref role="tCJdB" node="hSPYZl3" resolve="DeleteNode" />
      </node>
    </node>
    <node concept="tT9cl" id="5G5kXQMOIew" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hQgQFu$" resolve="PackageActions" />
      <ref role="2f8Tey" to="tprs:5G5kXQMOIeo" resolve="deletion" />
    </node>
  </node>
  <node concept="2uRRBC" id="2sJZShLKzj5">
    <property role="TrG5h" value="AccessImpl" />
    <node concept="2BZ0e9" id="2sJZShLL0e6" role="2uRRBG">
      <property role="TrG5h" value="myAccessImpl" />
      <node concept="3Tm6S6" id="2sJZShLL0e7" role="1B3o_S" />
      <node concept="3uibUv" id="2sJZShLL0j0" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~DynamicComponentWarden$Token" resolve="DynamicComponentWarden.Token" />
      </node>
    </node>
    <node concept="2uRRBj" id="2sJZShLKBhF" role="2uRRBE">
      <node concept="3clFbS" id="2sJZShLKBhG" role="2VODD2">
        <node concept="3cpWs8" id="36u$e0Phva$" role="3cqZAp">
          <node concept="3cpWsn" id="36u$e0Phva_" role="3cpWs9">
            <property role="TrG5h" value="dcw" />
            <node concept="3uibUv" id="36u$e0Phv0V" role="1tU5fm">
              <ref role="3uigEE" to="4o98:~DynamicComponentWarden" resolve="DynamicComponentWarden" />
            </node>
            <node concept="2OqwBi" id="36u$e0PhvaA" role="33vP2m">
              <node concept="XUXob" id="36u$e0PhvaB" role="2Oq$k0" />
              <node concept="liA8E" id="36u$e0PhvaC" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="36u$e0PhvaD" role="37wK5m">
                  <ref role="3VsUkX" to="4o98:~DynamicComponentWarden" resolve="DynamicComponentWarden" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="36u$e0PiGQ6" role="3cqZAp">
          <node concept="3cpWsn" id="36u$e0PiGQ7" role="3cpWs9">
            <property role="TrG5h" value="instantiateOnDemand" />
            <node concept="3uibUv" id="36u$e0PiIfe" role="1tU5fm">
              <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
              <node concept="3uibUv" id="36u$e0PiJtW" role="11_B2D">
                <ref role="3uigEE" to="6tbz:52KjdOfMVHq" resolve="RefactoringAccessImpl" />
              </node>
            </node>
            <node concept="1bVj0M" id="36u$e0PiGQ8" role="33vP2m">
              <node concept="3clFbS" id="36u$e0PiGQ9" role="1bW5cS">
                <node concept="3clFbF" id="36u$e0PiGQa" role="3cqZAp">
                  <node concept="2ShNRf" id="36u$e0PiGQb" role="3clFbG">
                    <node concept="1pGfFk" id="36u$e0PiGQc" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="6tbz:52KjdOfMVHs" resolve="RefactoringAccessImpl" />
                      <node concept="XUXob" id="36u$e0PiGQd" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sJZShLL8GF" role="3cqZAp">
          <node concept="37vLTI" id="36u$e0PhzaU" role="3clFbG">
            <node concept="2OqwBi" id="2sJZShLL8G_" role="37vLTJ">
              <node concept="2WthIp" id="2sJZShLL8GC" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2sJZShLL8GE" role="2OqNvi">
                <ref role="2WH_rO" node="2sJZShLL0e6" resolve="myAccessImpl" />
              </node>
            </node>
            <node concept="2OqwBi" id="36u$e0Phvu7" role="37vLTx">
              <node concept="37vLTw" id="36u$e0PhvaE" role="2Oq$k0">
                <ref role="3cqZAo" node="36u$e0Phva_" resolve="dcw" />
              </node>
              <node concept="liA8E" id="36u$e0PhvNt" role="2OqNvi">
                <ref role="37wK5l" to="4o98:~DynamicComponentWarden.publish(java.lang.Class,java.util.function.Supplier)" resolve="publish" />
                <node concept="3VsKOn" id="36u$e0Phwoc" role="37wK5m">
                  <ref role="3VsUkX" to="y38:3dEPKBAxz0O" resolve="RefactoringAccess" />
                </node>
                <node concept="37vLTw" id="36u$e0PiGQe" role="37wK5m">
                  <ref role="3cqZAo" node="36u$e0PiGQ7" resolve="instantiateOnDemand" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="2sJZShLL5X3" role="2uRRBF">
      <node concept="3clFbS" id="2sJZShLL5X4" role="2VODD2">
        <node concept="3clFbJ" id="2sJZShLL6b$" role="3cqZAp">
          <node concept="3y3z36" id="2sJZShLL6B4" role="3clFbw">
            <node concept="10Nm6u" id="2sJZShLL6Ke" role="3uHU7w" />
            <node concept="2OqwBi" id="2sJZShLL6c5" role="3uHU7B">
              <node concept="2WthIp" id="2sJZShLL6c8" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2sJZShLL6ca" role="2OqNvi">
                <ref role="2WH_rO" node="2sJZShLL0e6" resolve="myAccessImpl" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2sJZShLL6bA" role="3clFbx">
            <node concept="3clFbF" id="2sJZShLL779" role="3cqZAp">
              <node concept="2OqwBi" id="2sJZShLL7cO" role="3clFbG">
                <node concept="2OqwBi" id="2sJZShLL773" role="2Oq$k0">
                  <node concept="2WthIp" id="2sJZShLL776" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2sJZShLL778" role="2OqNvi">
                    <ref role="2WH_rO" node="2sJZShLL0e6" resolve="myAccessImpl" />
                  </node>
                </node>
                <node concept="liA8E" id="2sJZShLL7Gn" role="2OqNvi">
                  <ref role="37wK5l" to="4o98:~DynamicComponentWarden$Token.discard()" resolve="discard" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2sJZShLL898" role="3cqZAp">
              <node concept="37vLTI" id="2sJZShLL8bp" role="3clFbG">
                <node concept="10Nm6u" id="2sJZShLL8cc" role="37vLTx" />
                <node concept="2OqwBi" id="2sJZShLL892" role="37vLTJ">
                  <node concept="2WthIp" id="2sJZShLL895" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2sJZShLL897" role="2OqNvi">
                    <ref role="2WH_rO" node="2sJZShLL0e6" resolve="myAccessImpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="kmdkKUw9JM">
    <property role="3GE5qa" value="Menu.ProjectPane.Module" />
    <property role="TrG5h" value="Contribute2ModuleActions" />
    <node concept="tT9cl" id="kmdkKUw9JO" role="2f5YQi">
      <ref role="tU$_T" to="tprs:miYJQAr2Uj" resolve="CommonModuleActions" />
      <ref role="2f8Tey" to="tprs:miYJQAr2UA" resolve="refactoring" />
    </node>
    <node concept="tT9cl" id="kmdkKUw9VX" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4J_e" resolve="DevkitActions" />
      <ref role="2f8Tey" to="tprs:1Yktpp4ptFW" resolve="refactoring" />
    </node>
    <node concept="ftmFs" id="kmdkKUw9JV" role="ftER_">
      <node concept="tCFHf" id="kmdkKUw9JY" role="ftvYc">
        <ref role="tCJdB" node="3fhZBTge84q" resolve="RenameModule" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3fhZBTge84q">
    <property role="TrG5h" value="RenameModule" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rename Module" />
    <property role="3GE5qa" value="Menu.ProjectPane.Module" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="tkhdA" id="1Nr$iwO7VMr" role="tmbBb">
      <node concept="3clFbS" id="1Nr$iwO7VMs" role="2VODD2">
        <node concept="3cpWs8" id="6LmVZnH59D7" role="3cqZAp">
          <node concept="3cpWsn" id="6LmVZnH59D8" role="3cpWs9">
            <property role="TrG5h" value="isApplicable" />
            <node concept="10P_77" id="6LmVZnH59D2" role="1tU5fm" />
            <node concept="1Wc70l" id="6LmVZnH59D9" role="33vP2m">
              <node concept="3fqX7Q" id="6LmVZnH59Da" role="3uHU7w">
                <node concept="2OqwBi" id="6LmVZnH59Db" role="3fr31v">
                  <node concept="2OqwBi" id="6LmVZnH59Dc" role="2Oq$k0">
                    <node concept="2WthIp" id="6LmVZnH59Dd" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6LmVZnH59De" role="2OqNvi">
                      <ref role="2WH_rO" node="3fhZBTge84u" resolve="module" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6LmVZnH59Df" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="6LmVZnH59Dh" role="3uHU7B">
                <node concept="3uibUv" id="6LmVZnH59Di" role="2ZW6by">
                  <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                </node>
                <node concept="2OqwBi" id="6LmVZnH59Dj" role="2ZW6bz">
                  <node concept="2WthIp" id="6LmVZnH59Dk" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6LmVZnH59Dl" role="2OqNvi">
                    <ref role="2WH_rO" node="3fhZBTge84u" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LmVZnH69e4" role="3cqZAp">
          <node concept="2OqwBi" id="6LmVZnH6alE" role="3clFbG">
            <node concept="2OqwBi" id="6LmVZnH69_h" role="2Oq$k0">
              <node concept="tl45R" id="6LmVZnH69e2" role="2Oq$k0" />
              <node concept="liA8E" id="6LmVZnH6a1H" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="6LmVZnH6aHt" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="6aHs3s7Qwww" role="37wK5m">
                <node concept="2WthIp" id="6aHs3s7Qwwz" role="2Oq$k0" />
                <node concept="2XshWL" id="6aHs3s7Qww_" role="2OqNvi">
                  <ref role="2WH_rO" node="6aHs3s7QwfH" resolve="getActionText" />
                  <node concept="2OqwBi" id="6aHs3s7Qw_Q" role="2XxRq1">
                    <node concept="2WthIp" id="6aHs3s7Qw_T" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6aHs3s7Qw_V" role="2OqNvi">
                      <ref role="2WH_rO" node="3fhZBTge84u" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Nr$iwO8M7b" role="3cqZAp">
          <node concept="2OqwBi" id="1Nr$iwO8MVr" role="3clFbG">
            <node concept="2OqwBi" id="1Nr$iwO8MpM" role="2Oq$k0">
              <node concept="tl45R" id="1Nr$iwO8M79" role="2Oq$k0" />
              <node concept="liA8E" id="1Nr$iwO8MN5" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1Nr$iwO8Ngb" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="1Nr$iwO8NhK" role="37wK5m">
                <ref role="3cqZAo" node="6LmVZnH59D8" resolve="isApplicable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="3fhZBTge84r" role="tncku">
      <node concept="3clFbS" id="3fhZBTge84s" role="2VODD2">
        <node concept="3clFbF" id="3fhZBTgeaEH" role="3cqZAp">
          <node concept="2OqwBi" id="3fhZBTgeaEY" role="3clFbG">
            <node concept="2ShNRf" id="3fhZBTgeaEI" role="2Oq$k0">
              <node concept="1pGfFk" id="3fhZBTgeaEK" role="2ShVmc">
                <ref role="37wK5l" to="6tbz:29N7xYwTGoY" resolve="RenameModuleDialog" />
                <node concept="2OqwBi" id="50dRo6PLHdb" role="37wK5m">
                  <node concept="2WthIp" id="50dRo6PLHcQ" role="2Oq$k0" />
                  <node concept="1DTwFV" id="50dRo6PLHe1" role="2OqNvi">
                    <ref role="2WH_rO" node="cvGLnZnRlO" resolve="project" />
                  </node>
                </node>
                <node concept="1eOMI4" id="3fhZBTgeaES" role="37wK5m">
                  <node concept="10QFUN" id="3fhZBTgeaET" role="1eOMHV">
                    <node concept="3uibUv" id="7msLDqMFFbR" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="2OqwBi" id="3fhZBTgeaEU" role="10QFUP">
                      <node concept="2WthIp" id="3fhZBTgeaEV" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3fhZBTgeaEW" role="2OqNvi">
                        <ref role="2WH_rO" node="3fhZBTge84u" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3fhZBTgeb9t" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3fhZBTge84u" role="1NuT2Z">
      <property role="TrG5h" value="module" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULE" resolve="MODULE" />
      <node concept="1oajcY" id="7HZe2EwZDgU" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="cvGLnZnRlO" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="cvGLnZnRlP" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="6aHs3s7QwfH" role="32lrUH">
      <property role="TrG5h" value="getActionText" />
      <node concept="37vLTG" id="6aHs3s7Qwfa" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6aHs3s7Qwfb" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6aHs3s7QwfF" role="1B3o_S" />
      <node concept="3uibUv" id="6aHs3s7QwfG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6aHs3s7QwfI" role="3clF47">
        <node concept="3clFbJ" id="6aHs3s7Qwfc" role="3cqZAp">
          <node concept="3clFbS" id="6aHs3s7Qwfd" role="3clFbx">
            <node concept="3cpWs6" id="6aHs3s7Qwfe" role="3cqZAp">
              <node concept="2YIFZM" id="6aHs3s7QwLI" role="3cqZAk">
                <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                <node concept="Xl_RD" id="6aHs3s7QwOv" role="37wK5m">
                  <property role="Xl_RC" value="actions.module.rename.text.solution" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6aHs3s7Qwfg" role="3clFbw">
            <node concept="3uibUv" id="6aHs3s7Qwfh" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
            </node>
            <node concept="37vLTw" id="6aHs3s7Qwfi" role="2ZW6bz">
              <ref role="3cqZAo" node="6aHs3s7Qwfa" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aHs3s7Qwfj" role="3cqZAp">
          <node concept="3clFbS" id="6aHs3s7Qwfk" role="3clFbx">
            <node concept="3cpWs6" id="6aHs3s7Qwfl" role="3cqZAp">
              <node concept="2YIFZM" id="6aHs3s7QwTU" role="3cqZAk">
                <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <node concept="Xl_RD" id="6aHs3s7QwTV" role="37wK5m">
                  <property role="Xl_RC" value="actions.module.rename.text.language" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6aHs3s7Qwfn" role="3clFbw">
            <node concept="3uibUv" id="6aHs3s7Qwfo" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="37vLTw" id="6aHs3s7Qwfp" role="2ZW6bz">
              <ref role="3cqZAo" node="6aHs3s7Qwfa" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aHs3s7Qwfq" role="3cqZAp">
          <node concept="3clFbS" id="6aHs3s7Qwfr" role="3clFbx">
            <node concept="3cpWs6" id="6aHs3s7Qwfs" role="3cqZAp">
              <node concept="2YIFZM" id="6aHs3s7QwZC" role="3cqZAk">
                <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                <node concept="Xl_RD" id="6aHs3s7QwZD" role="37wK5m">
                  <property role="Xl_RC" value="actions.module.rename.text.devkit" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6aHs3s7Qwfu" role="3clFbw">
            <node concept="3uibUv" id="6aHs3s7Qwfv" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~DevKit" resolve="DevKit" />
            </node>
            <node concept="37vLTw" id="6aHs3s7Qwfw" role="2ZW6bz">
              <ref role="3cqZAo" node="6aHs3s7Qwfa" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aHs3s7Qwfx" role="3cqZAp">
          <node concept="3clFbS" id="6aHs3s7Qwfy" role="3clFbx">
            <node concept="3cpWs6" id="6aHs3s7Qwfz" role="3cqZAp">
              <node concept="2YIFZM" id="6aHs3s7Qx7n" role="3cqZAk">
                <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <node concept="Xl_RD" id="6aHs3s7Qx7o" role="37wK5m">
                  <property role="Xl_RC" value="actions.module.rename.text.generator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6aHs3s7Qwf_" role="3clFbw">
            <node concept="3uibUv" id="6aHs3s7QwfA" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
            </node>
            <node concept="37vLTw" id="6aHs3s7QwfB" role="2ZW6bz">
              <ref role="3cqZAo" node="6aHs3s7Qwfa" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6aHs3s7QwfC" role="3cqZAp" />
        <node concept="3cpWs6" id="6aHs3s7QwfD" role="3cqZAp">
          <node concept="2YIFZM" id="6aHs3s7QxgR" role="3cqZAk">
            <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
            <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
            <node concept="Xl_RD" id="6aHs3s7QxgS" role="37wK5m">
              <property role="Xl_RC" value="actions.module.rename.text.module" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5VIEYrBjMRo">
    <property role="fJN8o" value="false" />
    <property role="TrG5h" value="RenameModel" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rename Model" />
    <property role="3GE5qa" value="Menu.ProjectPane.Model" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="5VIEYrBjMRp" role="tncku">
      <node concept="3clFbS" id="5VIEYrBjMRq" role="2VODD2">
        <node concept="3clFbF" id="5VIEYrBjMRr" role="3cqZAp">
          <node concept="2OqwBi" id="5VIEYrBjNnv" role="3clFbG">
            <node concept="2ShNRf" id="5VIEYrBjMRs" role="2Oq$k0">
              <node concept="1pGfFk" id="5VIEYrBjMRt" role="2ShVmc">
                <ref role="37wK5l" to="6tbz:29N7xYwTG4A" resolve="RenameModelDialog" />
                <node concept="2OqwBi" id="5VIEYrBjMRx" role="37wK5m">
                  <node concept="1DTwFV" id="2sTGsLqfqIC" role="2OqNvi">
                    <ref role="2WH_rO" node="3_F3cCEPQc" resolve="mpsProject" />
                  </node>
                  <node concept="2WthIp" id="5VIEYrBjMRy" role="2Oq$k0" />
                </node>
                <node concept="10QFUN" id="2wNMEwGdFtA" role="37wK5m">
                  <node concept="3uibUv" id="1HT8bsPZfF5" role="10QFUM">
                    <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                  </node>
                  <node concept="2OqwBi" id="2wNMEwGdFtB" role="10QFUP">
                    <node concept="2WthIp" id="2wNMEwGdFtC" role="2Oq$k0" />
                    <node concept="1DTwFV" id="2wNMEwGdFtD" role="2OqNvi">
                      <ref role="2WH_rO" node="5VIEYrBjMRR" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5VIEYrBjNnz" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3_F3cCEPQc" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3_F3cCEPQd" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5VIEYrBjMRR" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODEL" resolve="MODEL" />
      <node concept="1oajcY" id="7HZe2EwZDj9" role="1oa70y" />
      <node concept="3dZWAM" id="6I7igKOq5ii" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="6aHs3s7QIZU" role="tmbBb">
      <node concept="3clFbS" id="6aHs3s7QIZV" role="2VODD2">
        <node concept="3cpWs8" id="6aHs3s7QJns" role="3cqZAp">
          <node concept="3cpWsn" id="6aHs3s7QJnt" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="6aHs3s7QJn3" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="6aHs3s7QJnu" role="33vP2m">
              <node concept="tl45R" id="6aHs3s7QJnv" role="2Oq$k0" />
              <node concept="liA8E" id="6aHs3s7QJnw" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6aHs3s7QJbE" role="3cqZAp">
          <node concept="2OqwBi" id="6aHs3s7QJuZ" role="3clFbG">
            <node concept="37vLTw" id="6aHs3s7QJnx" role="2Oq$k0">
              <ref role="3cqZAo" node="6aHs3s7QJnt" resolve="presentation" />
            </node>
            <node concept="liA8E" id="6aHs3s7QJNU" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="6aHs3s7QJR8" role="37wK5m">
                <ref role="37wK5l" to="3a50:~IdeBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <ref role="1Pybhc" to="3a50:~IdeBundle" resolve="IdeBundle" />
                <node concept="Xl_RD" id="6aHs3s7QJS8" role="37wK5m">
                  <property role="Xl_RC" value="actions.model.rename.title" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6aHs3s7QJYx" role="3cqZAp" />
        <node concept="3clFbF" id="6aHs3s7QKb_" role="3cqZAp">
          <node concept="2OqwBi" id="6aHs3s7QKk3" role="3clFbG">
            <node concept="37vLTw" id="6aHs3s7QKbz" role="2Oq$k0">
              <ref role="3cqZAo" node="6aHs3s7QJnt" resolve="presentation" />
            </node>
            <node concept="liA8E" id="6aHs3s7QKv_" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="3fqX7Q" id="4uisA6rUOLA" role="37wK5m">
                <node concept="2YIFZM" id="4uisA6rUOLC" role="3fr31v">
                  <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
                  <ref role="37wK5l" to="vndm:~LanguageAspectSupport.isAspectModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isAspectModel" />
                  <node concept="2OqwBi" id="4uisA6rUOLD" role="37wK5m">
                    <node concept="2WthIp" id="4uisA6rUOLE" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4uisA6rUOLF" role="2OqNvi">
                      <ref role="2WH_rO" node="5VIEYrBjMRR" resolve="model" />
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
  <node concept="2wDNrl" id="29M5tb0L$O0">
    <property role="TrG5h" value="RefactoringView" />
    <node concept="2XrIbr" id="29M5tb0LCMX" role="2XNbBy">
      <property role="TrG5h" value="showRefactoringView" />
      <node concept="37vLTG" id="29N7xYwTFNe" role="3clF46">
        <property role="TrG5h" value="refactoringContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="29N7xYwTFNf" role="1tU5fm">
          <ref role="3uigEE" to="ge2m:4a0HOMfn8yn" resolve="RefactoringContext" />
        </node>
      </node>
      <node concept="37vLTG" id="29N7xYwTFNg" role="3clF46">
        <property role="TrG5h" value="refactoringViewAction" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6q$OdKd9cb0" role="1tU5fm">
          <ref role="3uigEE" to="u42p:3g3N8kb3Dex" resolve="RefactoringViewAction" />
        </node>
        <node concept="2AHcQZ" id="29N7xYwTFNi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1u1ej4GoWfG" role="3clF46">
        <property role="TrG5h" value="disposeAction" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1u1ej4GoWQJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="3872w8aSs0Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="29N7xYwTFNj" role="3clF46">
        <property role="TrG5h" value="searchResults" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="29N7xYwTFNk" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        </node>
      </node>
      <node concept="37vLTG" id="7DGCeT2Lutr" role="3clF46">
        <property role="TrG5h" value="searchTask" />
        <node concept="3uibUv" id="7DGCeT2WDjh" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchTask" resolve="SearchTask" />
        </node>
      </node>
      <node concept="3cqZAl" id="29M5tb0LFDP" role="3clF45" />
      <node concept="3clFbS" id="29M5tb0LCMZ" role="3clF47">
        <node concept="3cpWs8" id="29N7xYwTFNo" role="3cqZAp">
          <node concept="3cpWsn" id="29N7xYwTFNp" role="3cpWs9">
            <property role="TrG5h" value="item" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="29N7xYwTFNq" role="1tU5fm">
              <ref role="3uigEE" to="6tbz:29N7xYwTFW8" resolve="RefactoringViewItemImpl" />
            </node>
            <node concept="2ShNRf" id="29N7xYwTFNr" role="33vP2m">
              <node concept="YeOm9" id="29M5tb0Mvt7" role="2ShVmc">
                <node concept="1Y3b0j" id="29M5tb0Mvta" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="6tbz:29N7xYwTFXi" resolve="RefactoringViewItemImpl" />
                  <ref role="1Y3XeK" to="6tbz:29N7xYwTFW8" resolve="RefactoringViewItemImpl" />
                  <node concept="3Tm1VV" id="29M5tb0Mvtb" role="1B3o_S" />
                  <node concept="37vLTw" id="2BHiRxgmub3" role="37wK5m">
                    <ref role="3cqZAo" node="29N7xYwTFNe" resolve="refactoringContext" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglRG3" role="37wK5m">
                    <ref role="3cqZAo" node="29N7xYwTFNg" resolve="refactoringViewAction" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglB7m" role="37wK5m">
                    <ref role="3cqZAo" node="29N7xYwTFNj" resolve="searchResults" />
                  </node>
                  <node concept="37vLTw" id="7DGCeT2LuYp" role="37wK5m">
                    <ref role="3cqZAo" node="7DGCeT2Lutr" resolve="searchTask" />
                  </node>
                  <node concept="3clFb_" id="29M5tb0MvNr" role="jymVt">
                    <property role="TrG5h" value="close" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="29M5tb0MvNs" role="1B3o_S" />
                    <node concept="3cqZAl" id="29M5tb0MvNt" role="3clF45" />
                    <node concept="2AHcQZ" id="29M5tb0MvNA" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="29M5tb0MvNC" role="3clF47">
                      <node concept="3clFbF" id="29M5tb0Mws$" role="3cqZAp">
                        <node concept="2OqwBi" id="29M5tb0Mws_" role="3clFbG">
                          <node concept="2WthIp" id="29M5tb0MwsA" role="2Oq$k0" />
                          <node concept="3ryLUP" id="29M5tb0MwsB" role="2OqNvi">
                            <node concept="1rXfSq" id="29M5tb0OLx8" role="3ryLir">
                              <ref role="37wK5l" to="6tbz:29N7xYwTG1g" resolve="getComponent" />
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
        <node concept="3clFbF" id="29M5tb0M3TO" role="3cqZAp">
          <node concept="15s5l7" id="29M5tb0NnNH" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: incompatible types: {p1=&gt;t1} and {d1=&gt;void}&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/1229718163909]&quot;;" />
            <property role="huDt6" value="Error: incompatible types: {p1=&gt;t1} and {d1=&gt;void}" />
          </node>
          <node concept="2OqwBi" id="29M5tb0M4fK" role="3clFbG">
            <node concept="2WthIp" id="29M5tb0M3TM" role="2Oq$k0" />
            <node concept="2wDMaC" id="29M5tb0M4s_" role="2OqNvi">
              <node concept="2BLXyY" id="29M5tb0M4sB" role="11Dce$">
                <node concept="1bVj0M" id="29M5tb0M4sD" role="2BLOvz">
                  <node concept="37vLTG" id="29M5tb0M6jX" role="1bW2Oz">
                    <property role="TrG5h" value="rvi" />
                    <node concept="3uibUv" id="29M5tb0M7oG" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="29M5tb0M4sE" role="1bW5cS">
                    <node concept="3clFbJ" id="3kgyr$qDiXR" role="3cqZAp">
                      <node concept="3clFbS" id="3kgyr$qDiXS" role="3clFbx">
                        <node concept="3clFbF" id="3kgyr$qDiXT" role="3cqZAp">
                          <node concept="2OqwBi" id="3kgyr$qDiXU" role="3clFbG">
                            <node concept="37vLTw" id="3kgyr$qDiXV" role="2Oq$k0">
                              <ref role="3cqZAo" node="1u1ej4GoWfG" resolve="disposeAction" />
                            </node>
                            <node concept="liA8E" id="3kgyr$qDiXW" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="3kgyr$qDiXX" role="3clFbw">
                        <node concept="10Nm6u" id="3kgyr$qDiXY" role="3uHU7w" />
                        <node concept="37vLTw" id="3kgyr$qDiXZ" role="3uHU7B">
                          <ref role="3cqZAo" node="1u1ej4GoWfG" resolve="disposeAction" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3kgyr$qDiY0" role="3cqZAp">
                      <node concept="2OqwBi" id="3kgyr$qDiY1" role="3clFbG">
                        <node concept="37vLTw" id="3kgyr$qDiY2" role="2Oq$k0">
                          <ref role="3cqZAo" node="29N7xYwTFNp" resolve="item" />
                        </node>
                        <node concept="liA8E" id="3kgyr$qDiY3" role="2OqNvi">
                          <ref role="37wK5l" to="6tbz:29N7xYwTG2y" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="29N7xYwTFNC" role="2BLOvw">
                  <node concept="37vLTw" id="3GM_nagTtk$" role="2Oq$k0">
                    <ref role="3cqZAo" node="29N7xYwTFNp" resolve="item" />
                  </node>
                  <node concept="liA8E" id="29N7xYwTFNE" role="2OqNvi">
                    <ref role="37wK5l" to="6tbz:29N7xYwTG1g" resolve="getComponent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="29N7xYwTFNF" role="2BLOvx">
                  <node concept="2OqwBi" id="29N7xYwTFNG" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxglnmf" role="2Oq$k0">
                      <ref role="3cqZAo" node="29N7xYwTFNe" resolve="refactoringContext" />
                    </node>
                    <node concept="liA8E" id="29N7xYwTFNI" role="2OqNvi">
                      <ref role="37wK5l" to="ge2m:4a0HOMfn9t2" resolve="getRefactoring" />
                    </node>
                  </node>
                  <node concept="liA8E" id="29N7xYwTFNJ" role="2OqNvi">
                    <ref role="37wK5l" to="ge2m:4a0HOMfn9$K" resolve="getUserFriendlyName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="29M5tb0LCNj" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="29M5tb0LGmY" role="2XNbBy">
      <property role="TrG5h" value="showRefactoringView" />
      <node concept="37vLTG" id="29N7xYwTFNW" role="3clF46">
        <property role="TrG5h" value="p" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6q$OdKd9cbN" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="29N7xYwTFNY" role="3clF46">
        <property role="TrG5h" value="refactorAction" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6q$OdKd9cc8" role="1tU5fm">
          <ref role="3uigEE" to="u42p:3g3N8kb3Dex" resolve="RefactoringViewAction" />
        </node>
        <node concept="2AHcQZ" id="29N7xYwTFO0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1u1ej4Gooso" role="3clF46">
        <property role="TrG5h" value="disposeAction" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1u1ej4GoIPU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="3872w8aSrJX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="29N7xYwTFO1" role="3clF46">
        <property role="TrG5h" value="searchResults" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="29N7xYwTFO2" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        </node>
      </node>
      <node concept="37vLTG" id="7DGCeT2Lv6P" role="3clF46">
        <property role="TrG5h" value="searchTask" />
        <node concept="3uibUv" id="7DGCeT2UtU2" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchTask" resolve="SearchTask" />
        </node>
      </node>
      <node concept="37vLTG" id="3g3N8kb3MlE" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3g3N8kb3MlH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="29M5tb0LGnb" role="3clF45" />
      <node concept="3clFbS" id="29M5tb0LGnc" role="3clF47">
        <node concept="3cpWs8" id="29N7xYwTFO6" role="3cqZAp">
          <node concept="3cpWsn" id="29N7xYwTFO7" role="3cpWs9">
            <property role="TrG5h" value="item" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="29N7xYwTFO8" role="1tU5fm">
              <ref role="3uigEE" to="6tbz:29N7xYwTFW8" resolve="RefactoringViewItemImpl" />
            </node>
            <node concept="2ShNRf" id="29N7xYwTFO9" role="33vP2m">
              <node concept="YeOm9" id="29M5tb0MjYi" role="2ShVmc">
                <node concept="1Y3b0j" id="29M5tb0MjYl" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="6tbz:29N7xYwTFXH" resolve="RefactoringViewItemImpl" />
                  <ref role="1Y3XeK" to="6tbz:29N7xYwTFW8" resolve="RefactoringViewItemImpl" />
                  <node concept="3Tm1VV" id="29M5tb0MjYm" role="1B3o_S" />
                  <node concept="2YIFZM" id="29M5tb0LIkS" role="37wK5m">
                    <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="37vLTw" id="29M5tb0LIkT" role="37wK5m">
                      <ref role="3cqZAo" node="29N7xYwTFNW" resolve="p" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxgl1$d" role="37wK5m">
                    <ref role="3cqZAo" node="29N7xYwTFNY" resolve="refactorAction" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxghczx" role="37wK5m">
                    <ref role="3cqZAo" node="29N7xYwTFO1" resolve="searchResults" />
                  </node>
                  <node concept="37vLTw" id="7DGCeT2Lv$u" role="37wK5m">
                    <ref role="3cqZAo" node="7DGCeT2Lv6P" resolve="searchTask" />
                  </node>
                  <node concept="3clFb_" id="29M5tb0Mk3r" role="jymVt">
                    <property role="TrG5h" value="close" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="29M5tb0Mk3s" role="1B3o_S" />
                    <node concept="3cqZAl" id="29M5tb0Mk3t" role="3clF45" />
                    <node concept="2AHcQZ" id="29M5tb0Mk3A" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="29M5tb0Mk3C" role="3clF47">
                      <node concept="3clFbF" id="29M5tb0MpVO" role="3cqZAp">
                        <node concept="2OqwBi" id="29M5tb0Mt1L" role="3clFbG">
                          <node concept="2WthIp" id="29M5tb0MsDa" role="2Oq$k0" />
                          <node concept="3ryLUP" id="29M5tb0MtjJ" role="2OqNvi">
                            <node concept="1rXfSq" id="29M5tb0OJTv" role="3ryLir">
                              <ref role="37wK5l" to="6tbz:29N7xYwTG1g" resolve="getComponent" />
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
        <node concept="3clFbF" id="29M5tb0M8hX" role="3cqZAp">
          <node concept="15s5l7" id="29M5tb0NnVY" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: incompatible types: {h2=&gt;l2} and {i1=&gt;void}&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/1229718163909]&quot;;" />
            <property role="huDt6" value="Error: incompatible types: {h2=&gt;l2} and {i1=&gt;void}" />
          </node>
          <node concept="2OqwBi" id="29M5tb0M8uC" role="3clFbG">
            <node concept="2WthIp" id="29M5tb0M8hV" role="2Oq$k0" />
            <node concept="2wDMaC" id="29M5tb0M8JL" role="2OqNvi">
              <node concept="2BLXyY" id="29M5tb0M8JN" role="11Dce$">
                <node concept="2OqwBi" id="29N7xYwTFOm" role="2BLOvw">
                  <node concept="37vLTw" id="3GM_nagTwMd" role="2Oq$k0">
                    <ref role="3cqZAo" node="29N7xYwTFO7" resolve="item" />
                  </node>
                  <node concept="liA8E" id="29N7xYwTFOo" role="2OqNvi">
                    <ref role="37wK5l" to="6tbz:29N7xYwTG1g" resolve="getComponent" />
                  </node>
                </node>
                <node concept="37vLTw" id="29M5tb0M965" role="2BLOvx">
                  <ref role="3cqZAo" node="3g3N8kb3MlE" resolve="name" />
                </node>
                <node concept="1bVj0M" id="29M5tb0Maas" role="2BLOvz">
                  <node concept="3clFbS" id="29M5tb0Maau" role="1bW5cS">
                    <node concept="3clFbJ" id="3kgyr$qDaJ8" role="3cqZAp">
                      <node concept="3clFbS" id="3kgyr$qDaJa" role="3clFbx">
                        <node concept="3clFbF" id="3kgyr$qDgNj" role="3cqZAp">
                          <node concept="2OqwBi" id="3kgyr$qDhnP" role="3clFbG">
                            <node concept="37vLTw" id="3kgyr$qDgNh" role="2Oq$k0">
                              <ref role="3cqZAo" node="1u1ej4Gooso" resolve="disposeAction" />
                            </node>
                            <node concept="liA8E" id="3kgyr$qDhYf" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="3kgyr$qDd$U" role="3clFbw">
                        <node concept="10Nm6u" id="3kgyr$qDf6n" role="3uHU7w" />
                        <node concept="37vLTw" id="3kgyr$qDcI0" role="3uHU7B">
                          <ref role="3cqZAo" node="1u1ej4Gooso" resolve="disposeAction" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3kgyr$qD6v3" role="3cqZAp">
                      <node concept="2OqwBi" id="3kgyr$qD7rR" role="3clFbG">
                        <node concept="37vLTw" id="3kgyr$qD6v2" role="2Oq$k0">
                          <ref role="3cqZAo" node="29N7xYwTFO7" resolve="item" />
                        </node>
                        <node concept="liA8E" id="3kgyr$qD8zx" role="2OqNvi">
                          <ref role="37wK5l" to="6tbz:29N7xYwTG2y" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="29M5tb0Mb1K" role="1bW2Oz">
                    <property role="TrG5h" value="rvi" />
                    <node concept="3uibUv" id="29M5tb0Mb1J" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="29M5tb0LGnd" role="1B3o_S" />
    </node>
    <node concept="1GtWCo" id="1HPBHAzSauL" role="1nVCmq">
      <node concept="10M0yZ" id="5dxWOHy$yX4" role="1GtWoa">
        <ref role="3cqZAo" to="l7us:~MPSIcons$ToolWindows.Default" resolve="Default" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$ToolWindows" resolve="MPSIcons.ToolWindows" />
      </node>
    </node>
  </node>
  <node concept="2JRCWQ" id="2CCG0gwalEN">
    <property role="TrG5h" value="IndexSensitive" />
    <node concept="2JRCWP" id="2CCG0gwalEO" role="2JRCWR">
      <ref role="2JRCWa" node="hSPYZl3" resolve="DeleteNode" />
    </node>
    <node concept="2JRCWP" id="2CCG0gwalEP" role="2JRCWR">
      <ref role="2JRCWa" node="6YK8y67o2Yu" resolve="MoveModel" />
    </node>
    <node concept="2JRCWP" id="2CCG0gwalEQ" role="2JRCWR">
      <ref role="2JRCWa" node="I5wdVHTn$t" resolve="MoveNodes" />
    </node>
    <node concept="2JRCWP" id="2CCG0gwalER" role="2JRCWR">
      <ref role="2JRCWa" node="5VIEYrBjMRo" resolve="RenameModel" />
    </node>
    <node concept="2JRCWP" id="2CCG0gwalES" role="2JRCWR">
      <ref role="2JRCWa" node="3fhZBTge84q" resolve="RenameModule" />
    </node>
    <node concept="2JRCWP" id="2CCG0gwalET" role="2JRCWR">
      <ref role="2JRCWa" node="7BBQIYkR45T" resolve="RenameNode" />
    </node>
    <node concept="2JRCWP" id="2CCG0gwalEU" role="2JRCWR">
      <ref role="2JRCWa" node="7BBQIYkR4kU" resolve="SafeDelete" />
    </node>
  </node>
</model>

