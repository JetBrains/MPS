<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cfccec82-df72-4483-9807-88776b4673ab(jetbrains.mps.ide.make.actions)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="3" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="bcn8" ref="r:0e3b77a4-c2c4-4ca6-a3b1-df5ad0152a9c(jetbrains.mps.ide.make)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="o0ih" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.notification.impl(MPS.IDEA/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="57ty" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.messages(MPS.Platform/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="vqh0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.make(MPS.Core/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="vmdq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.awt(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="o6ex" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.generator(MPS.Workbench/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="gspm" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui.popup(MPS.IDEA/)" />
    <import index="fnpx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.notification(MPS.IDEA/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="l46t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.compiler(MPS.Core/)" />
    <import index="drpk" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.make(MPS.Platform/)" />
    <import index="j936" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.ui(MPS.IDEA/)" />
    <import index="mnlj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.beans(JDK/)" />
    <import index="hlw7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.save(MPS.Platform/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="tprt" ref="r:00000000-0000-4000-0000-011c895904a5(jetbrains.mps.ide.common)" />
    <import index="fy8e" ref="r:89c0fb70-0977-7777-a076-5906f9d8630f(jetbrains.mps.make.facets)" />
    <import index="i9so" ref="r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)" />
    <import index="tpcq" ref="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="rvbb" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.projectPane(MPS.Workbench/)" />
    <import index="iwsx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileEditor(MPS.IDEA/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="ud0o" ref="r:71895ceb-c89d-4545-aa38-89d1cd891f17(jetbrains.mps.make.facet)" />
    <import index="4b2m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.messages(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="v27p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.startup(MPS.IDEA/)" />
    <import index="tft2" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator.impl.plan(MPS.Generator/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="gp7a" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.dependency(MPS.Core/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="89zq" ref="r:7ccf8172-295d-4cea-940d-c894cc22089a(jetbrains.mps.lang.core.doc.plugin)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="gk56" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.options.advanced(MPS.IDEA/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
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
        <property id="8842945788826116904" name="loadModules" index="2PJ1tZ" />
        <property id="1573568368168371217" name="handleErrors" index="3FCvg6" />
        <child id="5864553086652219115" name="dependency" index="2Tc6Ou" />
      </concept>
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207145360364" name="jetbrains.mps.lang.plugin.structure.BuildGroupBlock" flags="in" index="fu6FP" />
      <concept id="1207145475354" name="jetbrains.mps.lang.plugin.structure.AddElementStatement" flags="nn" index="fuyK3">
        <child id="1207145494930" name="expression" index="fuByb" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
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
        <property id="6461604478897396236" name="updateInBackground" index="22ra45" />
        <property id="1204991940915" name="caption" index="2f7twF" />
        <property id="1217005992861" name="isInvisibleWhenDisabled" index="1rdrE6" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
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
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1">
        <child id="1227019158144" name="toStringFunction" index="2K2Cet" />
      </concept>
      <concept id="1227013049127" name="jetbrains.mps.lang.plugin.structure.AddStatement" flags="nn" index="2JFkCU">
        <child id="1227013166210" name="item" index="2JFLmv" />
      </concept>
      <concept id="1227019068586" name="jetbrains.mps.lang.plugin.structure.ToStringConceptFunction" flags="in" index="2K2imR" />
      <concept id="1227019310584" name="jetbrains.mps.lang.plugin.structure.ToStringParameter" flags="nn" index="2K3dj_" />
      <concept id="1239975356883" name="jetbrains.mps.lang.plugin.structure.UpdateGroupBlock" flags="ng" index="2OiAzN">
        <child id="1239975488603" name="updateFunction" index="2Oj6PV" />
      </concept>
      <concept id="1239975436002" name="jetbrains.mps.lang.plugin.structure.UpdateGroupFunction" flags="in" index="2OiTZ2" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="5864553086652219116" name="jetbrains.mps.lang.plugin.structure.IdeaPluginDependency" flags="lg" index="2Tc6Op">
        <property id="5864553086652219119" name="pluginId" index="2Tc6Oq" />
      </concept>
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="1203680534665" name="jetbrains.mps.lang.plugin.structure.GroupAnchor" flags="ng" index="10WQ6h" />
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ngI" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
        <child id="481983775135178838" name="fieldDeclaration" index="2uRRBA" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="5763944538902644732" name="jetbrains.mps.baseLanguage.structure.StaticMethodCallOperation" flags="ng" index="2PDubS" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="6612597108003615641" name="jetbrains.mps.baseLanguage.javadoc.structure.HTMLElement" flags="ng" index="2U$1Ah">
        <property id="6612597108003615642" name="name" index="2U$1Ai" />
        <child id="6612597108003615643" name="line" index="2U$1Aj" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet">
      <concept id="8703512757937156087" name="jetbrains.mps.make.facet.structure.TargetReferenceExpression" flags="nn" index="29r_a">
        <reference id="8703512757937161148" name="target" index="29tk1" />
        <child id="8703512757937161134" name="facetRef" index="29tkj" />
      </concept>
      <concept id="1919086248986845077" name="jetbrains.mps.make.facet.structure.NamedFacetReference" flags="ng" index="2e$Q_j" />
      <concept id="7178445679340358576" name="jetbrains.mps.make.facet.structure.FacetReferenceExpression" flags="nn" index="2n6ZRZ">
        <child id="7178445679340358578" name="reference" index="2n6ZRX" />
      </concept>
      <concept id="6447445394688422642" name="jetbrains.mps.make.facet.structure.FacetReference" flags="ng" index="1Mm5Yv">
        <reference id="6447445394688422643" name="facet" index="1Mm5Yu" />
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
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
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
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
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
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="9BnSX" id="56$$T0PTxjs">
    <property role="9BnSZ" value="jetbrains.mps.ide.make" />
    <property role="3FCvg6" value="true" />
    <property role="9BnSP" value="http://www.jetbrains.com/mps/" />
    <property role="9BnSL" value="Make IDE Integration" />
    <property role="9BnSM" value="JetBrains" />
    <property role="TrG5h" value="Make" />
    <property role="9BnSO" value="251.1" />
    <property role="9BnSK" value="2025.1.4" />
    <property role="2PJ1tZ" value="true" />
    <node concept="2Tc6Op" id="7_yYGx27If5" role="2Tc6Ou">
      <property role="2Tc6Oq" value="com.intellij.modules.mps" />
    </node>
  </node>
  <node concept="tC5Ba" id="4BZFyk0pEUT">
    <property role="TrG5h" value="GenerateOptions" />
    <property role="3GE5qa" value="Build.Options" />
    <node concept="ftmFs" id="4BZFyk0pEUU" role="ftER_">
      <node concept="tCFHf" id="2UTM4$6j0Gy" role="ftvYc">
        <ref role="tCJdB" node="2UTM4$6j0Gz" resolve="Options" />
      </node>
      <node concept="10WQ6h" id="4BZFyk0pEUV" role="ftvYc">
        <property role="TrG5h" value="saveTransientModels" />
      </node>
    </node>
    <node concept="tT9cl" id="4BZFyk0pEUX" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hF$rJGH" resolve="Build" />
      <ref role="2f8Tey" to="tprs:4XkeBbjB6JH" resolve="options" />
    </node>
  </node>
  <node concept="tC5Ba" id="4BZFyk0pEUY">
    <property role="TrG5h" value="SaveTransientAndCheckModelsToggleActions" />
    <property role="3GE5qa" value="Build.Options" />
    <node concept="tT9cl" id="4BZFyk0pEUZ" role="2f5YQi">
      <ref role="2f8Tey" node="4BZFyk0pEUV" resolve="saveTransientModels" />
      <ref role="tU$_T" node="4BZFyk0pEUT" resolve="GenerateOptions" />
    </node>
    <node concept="fu6FP" id="4BZFyk0pEV0" role="ftER_">
      <node concept="3clFbS" id="4BZFyk0pEV1" role="2VODD2">
        <node concept="fuyK3" id="4BZFyk0pEV2" role="3cqZAp">
          <node concept="2ShNRf" id="4BZFyk0pEV3" role="fuByb">
            <node concept="1pGfFk" id="4BZFyk0pEV4" role="2ShVmc">
              <ref role="37wK5l" node="4_qBpm$bmFm" resolve="SaveTransientModelsAction" />
            </node>
          </node>
        </node>
        <node concept="fuyK3" id="6OO_ubqddQz" role="3cqZAp">
          <node concept="2ShNRf" id="6OO_ubqddQ$" role="fuByb">
            <node concept="1pGfFk" id="6OO_ubqddQ_" role="2ShVmc">
              <ref role="37wK5l" node="6OO_ubq7G1w" resolve="CheckModelsBeforeGenerationAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="1K00pPgqzi9">
    <property role="TrG5h" value="ProjectCompileActions" />
    <property role="3GE5qa" value="Java.Project" />
    <node concept="ftmFs" id="1K00pPgqzia" role="ftER_">
      <node concept="tCFHf" id="1K00pPgqzib" role="ftvYc">
        <ref role="tCJdB" node="1K00pPgqzjp" resolve="CompileProject" />
      </node>
      <node concept="tCFHf" id="1K00pPgqzic" role="ftvYc">
        <ref role="tCJdB" node="1K00pPgqzkc" resolve="RecompileProject" />
      </node>
      <node concept="tCFHf" id="1K00pPgqzid" role="ftvYc">
        <ref role="tCJdB" node="1K00pPgqzif" resolve="CleanProject" />
      </node>
    </node>
    <node concept="tT9cl" id="1K00pPgqzie" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4HGL" resolve="ProjectActions" />
      <ref role="2f8Tey" to="tprs:1K00pPgqzi5" resolve="compileJava" />
    </node>
  </node>
  <node concept="sE7Ow" id="1K00pPgqzif">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="CleanProject" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Java.Project" />
    <property role="2uzpH1" value="Clean Compiled Java Files" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="1K00pPgqzig" role="tncku">
      <node concept="3clFbS" id="1K00pPgqzih" role="2VODD2">
        <node concept="3cpWs8" id="1K00pPgqzii" role="3cqZAp">
          <node concept="3cpWsn" id="1K00pPgqzij" role="3cpWs9">
            <property role="TrG5h" value="modulesToBuild" />
            <property role="3TUv4t" value="true" />
            <node concept="2hMVRd" id="1K00pPgqzik" role="1tU5fm">
              <node concept="3uibUv" id="1K00pPgqzil" role="2hN53Y">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="1K00pPgqzim" role="33vP2m">
              <node concept="32HrFt" id="1K00pPgqzin" role="2ShVmc">
                <node concept="3uibUv" id="1K00pPgqzio" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K00pPgqzip" role="3cqZAp">
          <node concept="2OqwBi" id="1K00pPgqziq" role="3clFbG">
            <node concept="X8dFx" id="HQjE4XgE3S" role="2OqNvi">
              <node concept="2OqwBi" id="HQjE4XgE3M" role="25WWJ7">
                <node concept="2OqwBi" id="HQjE4XgE3N" role="2Oq$k0">
                  <node concept="2WthIp" id="HQjE4XgE3O" role="2Oq$k0" />
                  <node concept="1DTwFV" id="HQjE4XgE3P" role="2OqNvi">
                    <ref role="2WH_rO" node="1K00pPgqzjo" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="HQjE4XgE3Q" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getProjectModules(java.lang.Class)" resolve="getProjectModules" />
                  <node concept="3VsKOn" id="HQjE4XgE3R" role="37wK5m">
                    <ref role="3VsUkX" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTxdw" role="2Oq$k0">
              <ref role="3cqZAo" node="1K00pPgqzij" resolve="modulesToBuild" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K00pPgqziO" role="3cqZAp">
          <node concept="2OqwBi" id="1K00pPgqziP" role="3clFbG">
            <node concept="2YIFZM" id="1K00pPgqziQ" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="1K00pPgqziR" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="1K00pPgqziS" role="37wK5m">
                <node concept="YeOm9" id="1K00pPgqziT" role="2ShVmc">
                  <node concept="1Y3b0j" id="1K00pPgqziU" role="YeSDq">
                    <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                    <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                    <node concept="3clFb_" id="1K00pPgqziW" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="1K00pPgqziX" role="1B3o_S" />
                      <node concept="37vLTG" id="1K00pPgqziZ" role="3clF46">
                        <property role="TrG5h" value="indicator" />
                        <node concept="3uibUv" id="1K00pPgqzj0" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                        <node concept="2AHcQZ" id="1K00pPgqzj1" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="1K00pPgqziY" role="3clF45" />
                      <node concept="3clFbS" id="1K00pPgqzj2" role="3clF47">
                        <node concept="3clFbF" id="1KUoCipvyy5" role="3cqZAp">
                          <node concept="2OqwBi" id="1KUoCipvyy6" role="3clFbG">
                            <node concept="2OqwBi" id="13$TqNLLtUr" role="2Oq$k0">
                              <node concept="2OqwBi" id="13$TqNLLtjs" role="2Oq$k0">
                                <node concept="2WthIp" id="13$TqNLLtjv" role="2Oq$k0">
                                  <ref role="32nkFo" node="1K00pPgqzif" resolve="CleanProject" />
                                </node>
                                <node concept="1DTwFV" id="13$TqNLLtjx" role="2OqNvi">
                                  <ref role="2WH_rO" node="1K00pPgqzjo" resolve="project" />
                                </node>
                              </node>
                              <node concept="liA8E" id="13$TqNLLueP" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1KUoCipvyy8" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="1KUoCipvyy9" role="37wK5m">
                                <node concept="3clFbS" id="1KUoCipvyya" role="1bW5cS">
                                  <node concept="3cpWs8" id="1KUoCipvyyb" role="3cqZAp">
                                    <node concept="3cpWsn" id="1KUoCipvyyc" role="3cpWs9">
                                      <property role="TrG5h" value="maker" />
                                      <node concept="3uibUv" id="1KUoCipvyyd" role="1tU5fm">
                                        <ref role="3uigEE" to="vqh0:~ModuleMaker" resolve="ModuleMaker" />
                                      </node>
                                      <node concept="2ShNRf" id="1KUoCipvyye" role="33vP2m">
                                        <node concept="1pGfFk" id="1KUoCipvyyf" role="2ShVmc">
                                          <ref role="37wK5l" to="vqh0:~ModuleMaker.&lt;init&gt;()" resolve="ModuleMaker" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1KUoCipvyyg" role="3cqZAp">
                                    <node concept="2OqwBi" id="1KUoCipvyyh" role="3clFbG">
                                      <node concept="liA8E" id="1KUoCipvyyi" role="2OqNvi">
                                        <ref role="37wK5l" to="vqh0:~ModuleMaker.clean(java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="clean" />
                                        <node concept="37vLTw" id="3GM_nagTtUs" role="37wK5m">
                                          <ref role="3cqZAo" node="1K00pPgqzij" resolve="modulesToBuild" />
                                        </node>
                                        <node concept="2ShNRf" id="1KUoCipvyyk" role="37wK5m">
                                          <node concept="1pGfFk" id="1KUoCipvyyl" role="2ShVmc">
                                            <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                            <node concept="37vLTw" id="2BHiRxgm6h5" role="37wK5m">
                                              <ref role="3cqZAo" node="1K00pPgqziZ" resolve="indicator" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="3GM_nagT$j8" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KUoCipvyyc" resolve="maker" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_Sd7U" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="1K00pPgqziV" role="1B3o_S" />
                    <node concept="2OqwBi" id="1K00pPgqzjh" role="37wK5m">
                      <node concept="2WthIp" id="1K00pPgqzji" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1K00pPgqzjj" role="2OqNvi">
                        <ref role="2WH_rO" node="1K00pPgqzjn" resolve="ideaProject" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="1K00pPgqzjk" role="37wK5m">
                      <property role="Xl_RC" value="Cleaning" />
                    </node>
                    <node concept="3clFbT" id="1K00pPgqzjl" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="1K00pPgqzjn" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDoM" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1K00pPgqzjo" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDot" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="1K00pPgqzjp">
    <property role="TrG5h" value="CompileProject" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Java.Project" />
    <property role="2uzpH1" value="Compile Java Files" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="1K00pPgqzjq" role="tncku">
      <node concept="3clFbS" id="1K00pPgqzjr" role="2VODD2">
        <node concept="3cpWs8" id="1K00pPgqzjs" role="3cqZAp">
          <node concept="3cpWsn" id="1K00pPgqzjt" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="2hMVRd" id="1K00pPgqzju" role="1tU5fm">
              <node concept="3uibUv" id="4r0sY_pRxR8" role="2hN53Y">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="1K00pPgqzjw" role="33vP2m">
              <node concept="32HrFt" id="1K00pPgqzjx" role="2ShVmc">
                <node concept="3uibUv" id="4r0sY_pRAsb" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K00pPgqzjz" role="3cqZAp">
          <node concept="2OqwBi" id="1K00pPgqzj$" role="3clFbG">
            <node concept="X8dFx" id="HQjE4XgE3L" role="2OqNvi">
              <node concept="2OqwBi" id="HQjE4XgE3F" role="25WWJ7">
                <node concept="2OqwBi" id="HQjE4XgE3G" role="2Oq$k0">
                  <node concept="2WthIp" id="HQjE4XgE3H" role="2Oq$k0" />
                  <node concept="1DTwFV" id="HQjE4XgE3I" role="2OqNvi">
                    <ref role="2WH_rO" node="1K00pPgqzkb" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="HQjE4XgE3J" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getProjectModules(java.lang.Class)" resolve="getProjectModules" />
                  <node concept="3VsKOn" id="HQjE4XgE3K" role="37wK5m">
                    <ref role="3VsUkX" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTuv6" role="2Oq$k0">
              <ref role="3cqZAo" node="1K00pPgqzjt" resolve="modules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K00pPgqzjY" role="3cqZAp">
          <node concept="2OqwBi" id="1K00pPgqzjZ" role="3clFbG">
            <node concept="2YIFZM" id="1K00pPgqzk0" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="1K00pPgqzk1" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="1K00pPgqzk2" role="37wK5m">
                <node concept="1pGfFk" id="1K00pPgqzk3" role="2ShVmc">
                  <ref role="37wK5l" node="70GEktGV9cc" resolve="DefaultMakeTask" />
                  <node concept="2OqwBi" id="70GEktGVqbI" role="37wK5m">
                    <node concept="2WthIp" id="70GEktGVqbL" role="2Oq$k0" />
                    <node concept="1DTwFV" id="70GEktGVqbN" role="2OqNvi">
                      <ref role="2WH_rO" node="1K00pPgqzkb" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1K00pPgqzk7" role="37wK5m">
                    <property role="Xl_RC" value="Compiling" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrFV" role="37wK5m">
                    <ref role="3cqZAo" node="1K00pPgqzjt" resolve="modules" />
                  </node>
                  <node concept="3clFbT" id="1K00pPgqzk9" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="1K00pPgqzkb" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDj1" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="1K00pPgqzkc">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="RecompileProject" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Java.Project" />
    <property role="2uzpH1" value="Recompile Java Files" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="1K00pPgqzkd" role="tncku">
      <node concept="3clFbS" id="1K00pPgqzke" role="2VODD2">
        <node concept="3cpWs8" id="1K00pPgqzkf" role="3cqZAp">
          <node concept="3cpWsn" id="1K00pPgqzkg" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <property role="3TUv4t" value="true" />
            <node concept="2hMVRd" id="1K00pPgqzkh" role="1tU5fm">
              <node concept="3uibUv" id="4r0sY_pRERF" role="2hN53Y">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="1K00pPgqzkj" role="33vP2m">
              <node concept="32HrFt" id="1K00pPgqzkk" role="2ShVmc">
                <node concept="3uibUv" id="4r0sY_pRFdQ" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K00pPgqzkm" role="3cqZAp">
          <node concept="2OqwBi" id="1K00pPgqzkn" role="3clFbG">
            <node concept="X8dFx" id="HQjE4XgE3Z" role="2OqNvi">
              <node concept="2OqwBi" id="HQjE4XgE3T" role="25WWJ7">
                <node concept="2OqwBi" id="HQjE4XgE3U" role="2Oq$k0">
                  <node concept="2WthIp" id="HQjE4XgE3V" role="2Oq$k0" />
                  <node concept="1DTwFV" id="HQjE4XgE3W" role="2OqNvi">
                    <ref role="2WH_rO" node="1K00pPgqzkY" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="HQjE4XgE3X" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getProjectModules(java.lang.Class)" resolve="getProjectModules" />
                  <node concept="3VsKOn" id="HQjE4XgE3Y" role="37wK5m">
                    <ref role="3VsUkX" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagT$$W" role="2Oq$k0">
              <ref role="3cqZAo" node="1K00pPgqzkg" resolve="modules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K00pPgqzkL" role="3cqZAp">
          <node concept="2OqwBi" id="1K00pPgqzkM" role="3clFbG">
            <node concept="2YIFZM" id="1K00pPgqzkN" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="1K00pPgqzkO" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="1K00pPgqzkP" role="37wK5m">
                <node concept="1pGfFk" id="1K00pPgqzkQ" role="2ShVmc">
                  <ref role="37wK5l" node="70GEktGV9cc" resolve="DefaultMakeTask" />
                  <node concept="2OqwBi" id="70GEktGVrBd" role="37wK5m">
                    <node concept="2WthIp" id="70GEktGVrBg" role="2Oq$k0" />
                    <node concept="1DTwFV" id="70GEktGVrBi" role="2OqNvi">
                      <ref role="2WH_rO" node="1K00pPgqzkY" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1K00pPgqzkU" role="37wK5m">
                    <property role="Xl_RC" value="Compiling" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTsO1" role="37wK5m">
                    <ref role="3cqZAo" node="1K00pPgqzkg" resolve="modules" />
                  </node>
                  <node concept="3clFbT" id="1K00pPgqzkW" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="1K00pPgqzkY" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDn7" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="47QEcUfsm2S">
    <property role="TrG5h" value="JavaModuleActions" />
    <property role="3GE5qa" value="Java.Module" />
    <property role="1XlLyE" value="true" />
    <property role="2f7twF" value="Compile" />
    <property role="1rdrE6" value="true" />
    <node concept="ftmFs" id="47QEcUfsm2T" role="ftER_">
      <node concept="tCFHf" id="47QEcUfsm2U" role="ftvYc">
        <ref role="tCJdB" node="47QEcUfsm4y" resolve="MakeModule" />
      </node>
      <node concept="tCFHf" id="47QEcUfsm2V" role="ftvYc">
        <ref role="tCJdB" node="47QEcUfsm41" resolve="RebuildModule" />
      </node>
      <node concept="tCFHf" id="47QEcUfsm2W" role="ftvYc">
        <ref role="tCJdB" node="47QEcUfsm2Z" resolve="CleanModule" />
      </node>
    </node>
    <node concept="tT9cl" id="47QEcUfsm2X" role="2f5YQi">
      <ref role="tU$_T" to="tprs:miYJQAr2Uj" resolve="CommonModuleActions" />
      <ref role="2f8Tey" to="tprs:miYJQArh7l" resolve="compileJava" />
    </node>
  </node>
  <node concept="sE7Ow" id="47QEcUfsm2Z">
    <property role="TrG5h" value="CleanModule" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Java.Module" />
    <property role="2uzpH1" value="Clean Compiled Java Files" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="47QEcUfsm30" role="tncku">
      <node concept="3clFbS" id="47QEcUfsm31" role="2VODD2">
        <node concept="3cpWs8" id="70GEktGUo$K" role="3cqZAp">
          <node concept="3cpWsn" id="70GEktGUo$I" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="70GEktGUqQ5" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="70GEktGUr6K" role="33vP2m">
              <node concept="2WthIp" id="70GEktGUr6N" role="2Oq$k0" />
              <node concept="1DTwFV" id="70GEktGUr6P" role="2OqNvi">
                <ref role="2WH_rO" node="70GEktGUhSQ" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bnM4mNCCYV" role="3cqZAp">
          <node concept="3cpWsn" id="7bnM4mNCCYW" role="3cpWs9">
            <property role="TrG5h" value="moduleSet" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7bnM4mNCCYO" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7bnM4mNCCYR" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="$l051RVfTh" role="33vP2m">
              <node concept="2OqwBi" id="$l051RVe25" role="2Oq$k0">
                <node concept="2OqwBi" id="$l051RVbNn" role="2Oq$k0">
                  <node concept="2OqwBi" id="$l051RV9Mk" role="2Oq$k0">
                    <node concept="2WthIp" id="$l051RV8H9" role="2Oq$k0" />
                    <node concept="1DTwFV" id="$l051RVaIq" role="2OqNvi">
                      <ref role="2WH_rO" node="$l051RTS5b" resolve="modules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="$l051RVdiB" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="$l051RVfoQ" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                  <node concept="1bVj0M" id="$l051RVkrq" role="37wK5m">
                    <node concept="37vLTG" id="$l051RVkrr" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="3uibUv" id="$l051RVkrs" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="$l051RVkrt" role="1bW5cS">
                      <node concept="3clFbF" id="$l051RVkru" role="3cqZAp">
                        <node concept="1Wc70l" id="$l051RVkrv" role="3clFbG">
                          <node concept="2YIFZM" id="$l051RVkrw" role="3uHU7B">
                            <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
                            <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                            <node concept="37vLTw" id="$l051RVkrx" role="37wK5m">
                              <ref role="3cqZAo" node="$l051RVkrr" resolve="m" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="$l051RVkry" role="3uHU7w">
                            <node concept="2OqwBi" id="$l051RVkrz" role="3fr31v">
                              <node concept="37vLTw" id="$l051RVkr$" role="2Oq$k0">
                                <ref role="3cqZAo" node="$l051RVkrr" resolve="m" />
                              </node>
                              <node concept="liA8E" id="$l051RVkr_" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="$l051RVhCx" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                <node concept="2YIFZM" id="$l051RVjKZ" role="37wK5m">
                  <ref role="37wK5l" to="1ctc:~Collectors.toSet()" resolve="toSet" />
                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                  <node concept="3uibUv" id="$l051RVws4" role="3PaCim">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="15s5l7" id="$l051RVpRE" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
            <property role="huDt6" value="all typesystem messages" />
          </node>
        </node>
        <node concept="3clFbF" id="47QEcUfsm3a" role="3cqZAp">
          <node concept="2OqwBi" id="47QEcUfsm3b" role="3clFbG">
            <node concept="2YIFZM" id="47QEcUfsm3c" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="47QEcUfsm3d" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="47QEcUfsm3e" role="37wK5m">
                <node concept="YeOm9" id="47QEcUfsm3f" role="2ShVmc">
                  <node concept="1Y3b0j" id="47QEcUfsm3g" role="YeSDq">
                    <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                    <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                    <node concept="3clFb_" id="47QEcUfsm3i" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3cqZAl" id="47QEcUfsm3k" role="3clF45" />
                      <node concept="37vLTG" id="47QEcUfsm3l" role="3clF46">
                        <property role="TrG5h" value="indicator" />
                        <node concept="3uibUv" id="47QEcUfsm3m" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                        <node concept="2AHcQZ" id="47QEcUfsm3n" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="47QEcUfsm3j" role="1B3o_S" />
                      <node concept="3clFbS" id="47QEcUfsm3o" role="3clF47">
                        <node concept="3clFbF" id="1KUoCipvxp7" role="3cqZAp">
                          <node concept="2OqwBi" id="1KUoCipvxp8" role="3clFbG">
                            <node concept="2OqwBi" id="7bnM4mNCGnv" role="2Oq$k0">
                              <node concept="37vLTw" id="7bnM4mNCFul" role="2Oq$k0">
                                <ref role="3cqZAo" node="70GEktGUo$I" resolve="mpsProject" />
                              </node>
                              <node concept="liA8E" id="7bnM4mNCHFW" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1KUoCipvxpa" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="1KUoCipvxpb" role="37wK5m">
                                <node concept="3clFbS" id="1KUoCipvxpc" role="1bW5cS">
                                  <node concept="3cpWs8" id="1KUoCipvxpd" role="3cqZAp">
                                    <node concept="3cpWsn" id="1KUoCipvxpe" role="3cpWs9">
                                      <property role="TrG5h" value="maker" />
                                      <node concept="3uibUv" id="1KUoCipvxpf" role="1tU5fm">
                                        <ref role="3uigEE" to="vqh0:~ModuleMaker" resolve="ModuleMaker" />
                                      </node>
                                      <node concept="2ShNRf" id="1KUoCipvxpg" role="33vP2m">
                                        <node concept="1pGfFk" id="1KUoCipvxph" role="2ShVmc">
                                          <ref role="37wK5l" to="vqh0:~ModuleMaker.&lt;init&gt;()" resolve="ModuleMaker" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1KUoCipvxpi" role="3cqZAp">
                                    <node concept="2OqwBi" id="1KUoCipvxpj" role="3clFbG">
                                      <node concept="liA8E" id="1KUoCipvxpk" role="2OqNvi">
                                        <ref role="37wK5l" to="vqh0:~ModuleMaker.clean(java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="clean" />
                                        <node concept="37vLTw" id="7bnM4mNCCZ1" role="37wK5m">
                                          <ref role="3cqZAo" node="7bnM4mNCCYW" resolve="moduleSet" />
                                        </node>
                                        <node concept="2ShNRf" id="1KUoCipvxpp" role="37wK5m">
                                          <node concept="1pGfFk" id="1KUoCipvxpq" role="2ShVmc">
                                            <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                            <node concept="37vLTw" id="2BHiRxgm83Z" role="37wK5m">
                                              <ref role="3cqZAo" node="47QEcUfsm3l" resolve="indicator" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="3GM_nagTrYd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KUoCipvxpe" resolve="maker" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_S7HO" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="47QEcUfsm3h" role="1B3o_S" />
                    <node concept="2OqwBi" id="70GEktGUkAM" role="37wK5m">
                      <node concept="37vLTw" id="70GEktGUsVi" role="2Oq$k0">
                        <ref role="3cqZAo" node="70GEktGUo$I" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="70GEktGUlAn" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="47QEcUfsm3F" role="37wK5m">
                      <property role="Xl_RC" value="Cleaning" />
                    </node>
                    <node concept="3clFbT" id="47QEcUfsm3G" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="47QEcUfsm3H" role="tmbBb">
      <node concept="3clFbS" id="47QEcUfsm3I" role="2VODD2">
        <node concept="3clFbF" id="$l051RUCQu" role="3cqZAp">
          <node concept="2OqwBi" id="$l051RULjR" role="3clFbG">
            <node concept="2OqwBi" id="$l051RUGKR" role="2Oq$k0">
              <node concept="2OqwBi" id="$l051RUCQo" role="2Oq$k0">
                <node concept="2WthIp" id="$l051RUCQr" role="2Oq$k0" />
                <node concept="1DTwFV" id="$l051RUCQt" role="2OqNvi">
                  <ref role="2WH_rO" node="$l051RTS5b" resolve="modules" />
                </node>
              </node>
              <node concept="liA8E" id="$l051RUK_b" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              </node>
            </node>
            <node concept="liA8E" id="$l051RUNDO" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
              <node concept="1bVj0M" id="$l051RUOWs" role="37wK5m">
                <node concept="37vLTG" id="$l051RV4di" role="1bW2Oz">
                  <property role="TrG5h" value="m" />
                  <node concept="3uibUv" id="$l051RV4df" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
                <node concept="3clFbS" id="$l051RUOWK" role="1bW5cS">
                  <node concept="3clFbF" id="$l051RUS37" role="3cqZAp">
                    <node concept="1Wc70l" id="70GEktGTHHR" role="3clFbG">
                      <node concept="2YIFZM" id="1WCLzfq7jLl" role="3uHU7B">
                        <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
                        <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                        <node concept="37vLTw" id="$l051RUT4m" role="37wK5m">
                          <ref role="3cqZAo" node="$l051RV4di" resolve="m" />
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="$l051RV6Pu" role="3uHU7w">
                        <node concept="2OqwBi" id="$l051RV6Pw" role="3fr31v">
                          <node concept="37vLTw" id="$l051RV6Px" role="2Oq$k0">
                            <ref role="3cqZAo" node="$l051RV4di" resolve="m" />
                          </node>
                          <node concept="liA8E" id="$l051RV6Py" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
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
    <node concept="1DS2jV" id="70GEktGUhSQ" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="70GEktGUhSR" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="$l051RTS5b" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
      <node concept="1oajcY" id="4SRwIWTeLCe" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="47QEcUfsm41">
    <property role="TrG5h" value="RebuildModule" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Java.Module" />
    <property role="2uzpH1" value="Recompile Java Files" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="47QEcUfsm42" role="tncku">
      <node concept="3clFbS" id="47QEcUfsm43" role="2VODD2">
        <node concept="3cpWs8" id="47QEcUfsm44" role="3cqZAp">
          <node concept="3cpWsn" id="47QEcUfsm45" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="3uibUv" id="47QEcUfsm46" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="4r0sY_pRDyR" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="$l051RVDLv" role="33vP2m">
              <node concept="2OqwBi" id="$l051RVDLw" role="2Oq$k0">
                <node concept="2OqwBi" id="$l051RVDLx" role="2Oq$k0">
                  <node concept="2OqwBi" id="$l051RVDLy" role="2Oq$k0">
                    <node concept="2WthIp" id="$l051RVDLz" role="2Oq$k0" />
                    <node concept="1DTwFV" id="$l051RVDL$" role="2OqNvi">
                      <ref role="2WH_rO" node="$l051RVywM" resolve="modules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="$l051RVDL_" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="$l051RVDLA" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                  <node concept="1bVj0M" id="$l051RVDLB" role="37wK5m">
                    <node concept="37vLTG" id="$l051RVDLC" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="3uibUv" id="$l051RVDLD" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="$l051RVDLE" role="1bW5cS">
                      <node concept="3clFbF" id="$l051RVDLF" role="3cqZAp">
                        <node concept="1Wc70l" id="$l051RVDLG" role="3clFbG">
                          <node concept="2YIFZM" id="$l051RVDLH" role="3uHU7B">
                            <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
                            <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                            <node concept="37vLTw" id="$l051RVDLI" role="37wK5m">
                              <ref role="3cqZAo" node="$l051RVDLC" resolve="m" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="$l051RVDLJ" role="3uHU7w">
                            <node concept="2OqwBi" id="$l051RVDLK" role="3fr31v">
                              <node concept="37vLTw" id="$l051RVDLL" role="2Oq$k0">
                                <ref role="3cqZAo" node="$l051RVDLC" resolve="m" />
                              </node>
                              <node concept="liA8E" id="$l051RVDLM" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="$l051RVDLN" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                <node concept="2YIFZM" id="$l051RVDLO" role="37wK5m">
                  <ref role="37wK5l" to="1ctc:~Collectors.toSet()" resolve="toSet" />
                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                  <node concept="3uibUv" id="$l051RVDLP" role="3PaCim">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47QEcUfsm4c" role="3cqZAp">
          <node concept="2OqwBi" id="47QEcUfsm4d" role="3clFbG">
            <node concept="2YIFZM" id="47QEcUfsm4e" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="47QEcUfsm4f" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="47QEcUfsm4g" role="37wK5m">
                <node concept="1pGfFk" id="47QEcUfsm4h" role="2ShVmc">
                  <ref role="37wK5l" node="70GEktGV9cc" resolve="DefaultMakeTask" />
                  <node concept="2OqwBi" id="47QEcUfsm4i" role="37wK5m">
                    <node concept="2WthIp" id="47QEcUfsm4j" role="2Oq$k0" />
                    <node concept="1DTwFV" id="47QEcUfsm4k" role="2OqNvi">
                      <ref role="2WH_rO" node="70GEktGVx5z" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="47QEcUfsm4l" role="37wK5m">
                    <property role="Xl_RC" value="Compiling" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTx7X" role="37wK5m">
                    <ref role="3cqZAo" node="47QEcUfsm45" resolve="modules" />
                  </node>
                  <node concept="3clFbT" id="47QEcUfsm4n" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="47QEcUfsm4o" role="tmbBb">
      <node concept="3clFbS" id="47QEcUfsm4p" role="2VODD2">
        <node concept="3clFbF" id="$l051RV_fp" role="3cqZAp">
          <node concept="2OqwBi" id="$l051RV_fq" role="3clFbG">
            <node concept="2OqwBi" id="$l051RV_fr" role="2Oq$k0">
              <node concept="2OqwBi" id="$l051RV_fs" role="2Oq$k0">
                <node concept="2WthIp" id="$l051RV_ft" role="2Oq$k0" />
                <node concept="1DTwFV" id="$l051RV_fu" role="2OqNvi">
                  <ref role="2WH_rO" node="$l051RVywM" resolve="modules" />
                </node>
              </node>
              <node concept="liA8E" id="$l051RV_fv" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              </node>
            </node>
            <node concept="liA8E" id="$l051RV_fw" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
              <node concept="1bVj0M" id="$l051RV_fx" role="37wK5m">
                <node concept="37vLTG" id="$l051RV_fy" role="1bW2Oz">
                  <property role="TrG5h" value="m" />
                  <node concept="3uibUv" id="$l051RV_fz" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
                <node concept="3clFbS" id="$l051RV_f$" role="1bW5cS">
                  <node concept="3clFbF" id="$l051RV_f_" role="3cqZAp">
                    <node concept="1Wc70l" id="$l051RV_fA" role="3clFbG">
                      <node concept="2YIFZM" id="$l051RV_fB" role="3uHU7B">
                        <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
                        <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                        <node concept="37vLTw" id="$l051RV_fC" role="37wK5m">
                          <ref role="3cqZAo" node="$l051RV_fy" resolve="m" />
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="$l051RV_fD" role="3uHU7w">
                        <node concept="2OqwBi" id="$l051RV_fE" role="3fr31v">
                          <node concept="37vLTw" id="$l051RV_fF" role="2Oq$k0">
                            <ref role="3cqZAo" node="$l051RV_fy" resolve="m" />
                          </node>
                          <node concept="liA8E" id="$l051RV_fG" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
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
    <node concept="1DS2jV" id="70GEktGVx5z" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="70GEktGVx5$" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="$l051RVywM" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
      <node concept="1oajcY" id="1Wep6J9sFcr" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="47QEcUfsm4y">
    <property role="TrG5h" value="MakeModule" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Java.Module" />
    <property role="2uzpH1" value="Compile Java Files" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="47QEcUfsm4z" role="tncku">
      <node concept="3clFbS" id="47QEcUfsm4$" role="2VODD2">
        <node concept="3cpWs8" id="47QEcUfsm4_" role="3cqZAp">
          <node concept="3cpWsn" id="47QEcUfsm4A" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="2hMVRd" id="47QEcUfsm4B" role="1tU5fm">
              <node concept="3uibUv" id="4r0sY_pRBXX" role="2hN53Y">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="$l051RVBG6" role="33vP2m">
              <node concept="2OqwBi" id="$l051RVBG7" role="2Oq$k0">
                <node concept="2OqwBi" id="$l051RVBG8" role="2Oq$k0">
                  <node concept="2OqwBi" id="$l051RVBG9" role="2Oq$k0">
                    <node concept="2WthIp" id="$l051RVBGa" role="2Oq$k0" />
                    <node concept="1DTwFV" id="$l051RVBGb" role="2OqNvi">
                      <ref role="2WH_rO" node="$l051RVxEY" resolve="modules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="$l051RVBGc" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="$l051RVBGd" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                  <node concept="1bVj0M" id="$l051RVBGe" role="37wK5m">
                    <node concept="37vLTG" id="$l051RVBGf" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="3uibUv" id="$l051RVBGg" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="$l051RVBGh" role="1bW5cS">
                      <node concept="3clFbF" id="$l051RVBGi" role="3cqZAp">
                        <node concept="1Wc70l" id="$l051RVBGj" role="3clFbG">
                          <node concept="2YIFZM" id="$l051RVBGk" role="3uHU7B">
                            <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
                            <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                            <node concept="37vLTw" id="$l051RVBGl" role="37wK5m">
                              <ref role="3cqZAo" node="$l051RVBGf" resolve="m" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="$l051RVBGm" role="3uHU7w">
                            <node concept="2OqwBi" id="$l051RVBGn" role="3fr31v">
                              <node concept="37vLTw" id="$l051RVBGo" role="2Oq$k0">
                                <ref role="3cqZAo" node="$l051RVBGf" resolve="m" />
                              </node>
                              <node concept="liA8E" id="$l051RVBGp" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="$l051RVBGq" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                <node concept="2YIFZM" id="$l051RVBGr" role="37wK5m">
                  <ref role="37wK5l" to="1ctc:~Collectors.toSet()" resolve="toSet" />
                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                  <node concept="3uibUv" id="$l051RVBGs" role="3PaCim">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47QEcUfsm4H" role="3cqZAp">
          <node concept="2OqwBi" id="47QEcUfsm4I" role="3clFbG">
            <node concept="2YIFZM" id="47QEcUfsm4J" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="47QEcUfsm4K" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="47QEcUfsm4L" role="37wK5m">
                <node concept="1pGfFk" id="47QEcUfsm4M" role="2ShVmc">
                  <ref role="37wK5l" node="70GEktGV9cc" resolve="DefaultMakeTask" />
                  <node concept="2OqwBi" id="47QEcUfsm4N" role="37wK5m">
                    <node concept="2WthIp" id="47QEcUfsm4O" role="2Oq$k0" />
                    <node concept="1DTwFV" id="47QEcUfsm4P" role="2OqNvi">
                      <ref role="2WH_rO" node="70GEktGVurI" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="47QEcUfsm4Q" role="37wK5m">
                    <property role="Xl_RC" value="Compiling" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTsj6" role="37wK5m">
                    <ref role="3cqZAo" node="47QEcUfsm4A" resolve="modules" />
                  </node>
                  <node concept="3clFbT" id="47QEcUfsm4S" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="47QEcUfsm4T" role="tmbBb">
      <node concept="3clFbS" id="47QEcUfsm4U" role="2VODD2">
        <node concept="3clFbF" id="$l051RVzU6" role="3cqZAp">
          <node concept="2OqwBi" id="$l051RVzU7" role="3clFbG">
            <node concept="2OqwBi" id="$l051RVzU8" role="2Oq$k0">
              <node concept="2OqwBi" id="$l051RVzU9" role="2Oq$k0">
                <node concept="2WthIp" id="$l051RVzUa" role="2Oq$k0" />
                <node concept="1DTwFV" id="$l051RVzUb" role="2OqNvi">
                  <ref role="2WH_rO" node="$l051RVxEY" resolve="modules" />
                </node>
              </node>
              <node concept="liA8E" id="$l051RVzUc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              </node>
            </node>
            <node concept="liA8E" id="$l051RVzUd" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
              <node concept="1bVj0M" id="$l051RVzUe" role="37wK5m">
                <node concept="37vLTG" id="$l051RVzUf" role="1bW2Oz">
                  <property role="TrG5h" value="m" />
                  <node concept="3uibUv" id="$l051RVzUg" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
                <node concept="3clFbS" id="$l051RVzUh" role="1bW5cS">
                  <node concept="3clFbF" id="$l051RVzUi" role="3cqZAp">
                    <node concept="1Wc70l" id="$l051RVzUj" role="3clFbG">
                      <node concept="2YIFZM" id="$l051RVzUk" role="3uHU7B">
                        <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
                        <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                        <node concept="37vLTw" id="$l051RVzUl" role="37wK5m">
                          <ref role="3cqZAo" node="$l051RVzUf" resolve="m" />
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="$l051RVzUm" role="3uHU7w">
                        <node concept="2OqwBi" id="$l051RVzUn" role="3fr31v">
                          <node concept="37vLTw" id="$l051RVzUo" role="2Oq$k0">
                            <ref role="3cqZAo" node="$l051RVzUf" resolve="m" />
                          </node>
                          <node concept="liA8E" id="$l051RVzUp" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
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
    <node concept="1DS2jV" id="70GEktGVurI" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="70GEktGVurJ" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="$l051RVxEY" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
      <node concept="1oajcY" id="1fBr0A5Y_3g" role="1oa70y" />
    </node>
  </node>
  <node concept="312cEu" id="47QEcUfsm53">
    <property role="TrG5h" value="DefaultMakeTask" />
    <node concept="312cEg" id="769DNvT2a3H" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="769DNvT28xc" role="1B3o_S" />
      <node concept="3uibUv" id="769DNvT2a29" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="47QEcUfsm54" role="jymVt">
      <property role="TrG5h" value="needClean" />
      <node concept="10P_77" id="47QEcUfsm56" role="1tU5fm" />
      <node concept="3Tm6S6" id="47QEcUfsm55" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="47QEcUfsm57" role="jymVt">
      <property role="TrG5h" value="modules" />
      <node concept="2ShNRf" id="47QEcUfsm5b" role="33vP2m">
        <node concept="32HrFt" id="47QEcUfsm5c" role="2ShVmc">
          <node concept="3uibUv" id="4r0sY_pPkFD" role="HW$YZ">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="47QEcUfsm58" role="1B3o_S" />
      <node concept="2hMVRd" id="47QEcUfsm59" role="1tU5fm">
        <node concept="3uibUv" id="4r0sY_pPjOn" role="2hN53Y">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="70GEktGV7fw" role="jymVt" />
    <node concept="3clFbW" id="70GEktGV9cc" role="jymVt">
      <node concept="37vLTG" id="70GEktGVa7o" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="70GEktGVa7p" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="70GEktGVa7q" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="70GEktGVa7r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="70GEktGVa7s" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="2hMVRd" id="70GEktGVa7t" role="1tU5fm">
          <node concept="3uibUv" id="70GEktGVa7u" role="2hN53Y">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="70GEktGVa7v" role="3clF46">
        <property role="TrG5h" value="needClean" />
        <node concept="10P_77" id="70GEktGVa7w" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="70GEktGV9ce" role="3clF45" />
      <node concept="3Tm1VV" id="70GEktGV9cf" role="1B3o_S" />
      <node concept="3clFbS" id="70GEktGV9cg" role="3clF47">
        <node concept="XkiVB" id="47QEcUfsm5j" role="3cqZAp">
          <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
          <node concept="2OqwBi" id="70GEktGUSTD" role="37wK5m">
            <node concept="37vLTw" id="2BHiRxgm6t3" role="2Oq$k0">
              <ref role="3cqZAo" node="70GEktGVa7o" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="70GEktGUUrF" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxgmeVV" role="37wK5m">
            <ref role="3cqZAo" node="70GEktGVa7q" resolve="title" />
          </node>
          <node concept="3clFbT" id="47QEcUfsm5m" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbF" id="47QEcUfsm5n" role="3cqZAp">
          <node concept="37vLTI" id="47QEcUfsm5o" role="3clFbG">
            <node concept="2OqwBi" id="47QEcUfsm5q" role="37vLTJ">
              <node concept="Xjq3P" id="47QEcUfsm5s" role="2Oq$k0" />
              <node concept="2OwXpG" id="47QEcUfsm5r" role="2OqNvi">
                <ref role="2Oxat5" node="47QEcUfsm54" resolve="needClean" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgl3lN" role="37vLTx">
              <ref role="3cqZAo" node="70GEktGVa7v" resolve="needClean" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47QEcUfsm5t" role="3cqZAp">
          <node concept="2OqwBi" id="47QEcUfsm5u" role="3clFbG">
            <node concept="X8dFx" id="3IZXeSRzSlC" role="2OqNvi">
              <node concept="37vLTw" id="3IZXeSRzT67" role="25WWJ7">
                <ref role="3cqZAo" node="70GEktGVa7s" resolve="modules" />
              </node>
            </node>
            <node concept="2OqwBi" id="47QEcUfsm5v" role="2Oq$k0">
              <node concept="2OwXpG" id="47QEcUfsm5w" role="2OqNvi">
                <ref role="2Oxat5" node="47QEcUfsm57" resolve="modules" />
              </node>
              <node concept="Xjq3P" id="47QEcUfsm5x" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="769DNvT2cWZ" role="3cqZAp">
          <node concept="37vLTI" id="769DNvT2eeB" role="3clFbG">
            <node concept="37vLTw" id="70GEktGV20d" role="37vLTx">
              <ref role="3cqZAo" node="70GEktGVa7o" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="769DNvT2cWX" role="37vLTJ">
              <ref role="3cqZAo" node="769DNvT2a3H" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IZXeSRzUx0" role="jymVt" />
    <node concept="3clFb_" id="47QEcUfsm5I" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="3Tm1VV" id="47QEcUfsm5J" role="1B3o_S" />
      <node concept="3clFbS" id="47QEcUfsm5O" role="3clF47">
        <node concept="3cpWs8" id="1qSnb0zjzaU" role="3cqZAp">
          <node concept="3cpWsn" id="1qSnb0zjzaV" role="3cpWs9">
            <property role="TrG5h" value="monitor" />
            <property role="3TUv4t" value="true" />
            <node concept="2ShNRf" id="1qSnb0zjzaY" role="33vP2m">
              <node concept="1pGfFk" id="1qSnb0zjzaZ" role="2ShVmc">
                <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                <node concept="37vLTw" id="2BHiRxgheTp" role="37wK5m">
                  <ref role="3cqZAo" node="47QEcUfsm5L" resolve="indicator" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1qSnb0zjzb1" role="1tU5fm">
              <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qSnb0zjzbf" role="3cqZAp">
          <node concept="2OqwBi" id="1qSnb0zjzbh" role="3clFbG">
            <node concept="liA8E" id="1qSnb0zjzbl" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="1qSnb0zjzbm" role="37wK5m" />
              <node concept="3K4zz7" id="1qSnb0zjzbp" role="37wK5m">
                <node concept="3cmrfG" id="1qSnb0zjzbu" role="3K4GZi">
                  <property role="3cmrfH" value="9" />
                </node>
                <node concept="3cmrfG" id="1qSnb0zjzbt" role="3K4E3e">
                  <property role="3cmrfH" value="10" />
                </node>
                <node concept="37vLTw" id="2BHiRxeulxx" role="3K4Cdx">
                  <ref role="3cqZAo" node="47QEcUfsm54" resolve="needClean" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagT_EL" role="2Oq$k0">
              <ref role="3cqZAo" node="1qSnb0zjzaV" resolve="monitor" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1qSnb0zjzb3" role="3cqZAp">
          <node concept="1wplmZ" id="xvs04dHV12" role="1zxBo6">
            <node concept="3clFbS" id="1qSnb0zjzb6" role="1wplMD">
              <node concept="3clFbF" id="1qSnb0zjzb7" role="3cqZAp">
                <node concept="2OqwBi" id="1qSnb0zjzb9" role="3clFbG">
                  <node concept="liA8E" id="1qSnb0zjzbd" role="2OqNvi">
                    <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTv16" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qSnb0zjzaV" resolve="monitor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1qSnb0zjzb4" role="1zxBo7">
            <node concept="3cpWs8" id="7YYozjU3aey" role="3cqZAp">
              <node concept="3cpWsn" id="7YYozjU3aez" role="3cpWs9">
                <property role="TrG5h" value="mh" />
                <node concept="3uibUv" id="7YYozjU39GC" role="1tU5fm">
                  <ref role="3uigEE" to="57ty:~DefaultMessageHandler" resolve="DefaultMessageHandler" />
                </node>
                <node concept="2ShNRf" id="7YYozjU3ae$" role="33vP2m">
                  <node concept="1pGfFk" id="7YYozjU3ae_" role="2ShVmc">
                    <ref role="37wK5l" to="57ty:~DefaultMessageHandler.&lt;init&gt;(com.intellij.openapi.project.Project)" resolve="DefaultMessageHandler" />
                    <node concept="1rXfSq" id="7YYozjU3aeA" role="37wK5m">
                      <ref role="37wK5l" to="xygl:~Task.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1KUoCipvBer" role="3cqZAp">
              <node concept="3cpWsn" id="1KUoCipvBes" role="3cpWs9">
                <property role="TrG5h" value="maker" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1KUoCipvBet" role="1tU5fm">
                  <ref role="3uigEE" to="vqh0:~ModuleMaker" resolve="ModuleMaker" />
                </node>
                <node concept="2ShNRf" id="1KUoCipvBeu" role="33vP2m">
                  <node concept="1pGfFk" id="1KUoCipvBev" role="2ShVmc">
                    <ref role="37wK5l" to="vqh0:~ModuleMaker.&lt;init&gt;(jetbrains.mps.messages.IMessageHandler)" resolve="ModuleMaker" />
                    <node concept="2OqwBi" id="3D3uKT_RkBG" role="37wK5m">
                      <node concept="liA8E" id="3D3uKT_RmAO" role="2OqNvi">
                        <ref role="37wK5l" to="et5u:~IMessageHandler.restrict(jetbrains.mps.messages.MessageKind)" resolve="restrict" />
                        <node concept="Rm8GO" id="3D3uKT_RoBF" role="37wK5m">
                          <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                          <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7YYozjU3aeB" role="2Oq$k0">
                        <ref role="3cqZAo" node="7YYozjU3aez" resolve="mh" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2_MQfvmr$aR" role="3cqZAp">
              <node concept="2OqwBi" id="3D3uKT_Rwqx" role="3clFbG">
                <node concept="liA8E" id="3D3uKT_Rx4z" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="3D3uKT_RxUf" role="37wK5m">
                    <node concept="3clFbS" id="3D3uKT_RxUg" role="1bW5cS">
                      <node concept="3clFbJ" id="1KUoCipvBez" role="3cqZAp">
                        <node concept="3clFbS" id="1KUoCipvBe$" role="3clFbx">
                          <node concept="3clFbF" id="1KUoCipvBe_" role="3cqZAp">
                            <node concept="2OqwBi" id="1KUoCipvBeA" role="3clFbG">
                              <node concept="liA8E" id="1KUoCipvBeB" role="2OqNvi">
                                <ref role="37wK5l" to="vqh0:~ModuleMaker.clean(java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="clean" />
                                <node concept="37vLTw" id="2BHiRxeuoBm" role="37wK5m">
                                  <ref role="3cqZAo" node="47QEcUfsm57" resolve="modules" />
                                </node>
                                <node concept="2OqwBi" id="1KUoCipvBeD" role="37wK5m">
                                  <node concept="liA8E" id="1KUoCipvBeE" role="2OqNvi">
                                    <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                                    <node concept="3cmrfG" id="1KUoCipvBeF" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagTyby" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1qSnb0zjzaV" resolve="monitor" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="3GM_nagT$Fg" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KUoCipvBes" resolve="maker" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxeuO2K" role="3clFbw">
                          <ref role="3cqZAo" node="47QEcUfsm54" resolve="needClean" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="2_MQfvmr3xk" role="3cqZAp">
                        <node concept="2OqwBi" id="2_MQfvmr5zH" role="3clFbG">
                          <node concept="37vLTw" id="2_MQfvmr3xi" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipvBes" resolve="maker" />
                          </node>
                          <node concept="liA8E" id="2_MQfvmr7tV" role="2OqNvi">
                            <ref role="37wK5l" to="vqh0:~ModuleMaker.options(jetbrains.mps.compiler.JavaCompilerOptions)" resolve="options" />
                            <node concept="2OqwBi" id="6gfLObLWs5k" role="37wK5m">
                              <node concept="liA8E" id="6gfLObLWtia" role="2OqNvi">
                                <ref role="37wK5l" to="l46t:~JavaCompilerOptionsComponent.getJavaCompilerOptions(jetbrains.mps.project.Project)" resolve="getJavaCompilerOptions" />
                                <node concept="37vLTw" id="4DT6wdtUs8R" role="37wK5m">
                                  <ref role="3cqZAo" node="769DNvT2a3H" resolve="myProject" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2qoqtMKRc50" role="2Oq$k0">
                                <node concept="37vLTw" id="2qoqtMKR9El" role="2Oq$k0">
                                  <ref role="3cqZAo" node="769DNvT2a3H" resolve="myProject" />
                                </node>
                                <node concept="liA8E" id="2qoqtMKReNi" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                                  <node concept="3VsKOn" id="2qoqtMKQl5c" role="37wK5m">
                                    <ref role="3VsUkX" to="l46t:~JavaCompilerOptionsComponent" resolve="JavaCompilerOptionsComponent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2_MQfvmqTK6" role="3cqZAp">
                        <node concept="2OqwBi" id="2_MQfvmqVxJ" role="3clFbG">
                          <node concept="37vLTw" id="2_MQfvmqTK4" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipvBes" resolve="maker" />
                          </node>
                          <node concept="liA8E" id="2_MQfvmqW$m" role="2OqNvi">
                            <ref role="37wK5l" to="vqh0:~ModuleMaker.prepare(java.util.Collection,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="prepare" />
                            <node concept="37vLTw" id="4DT6wdtTMWd" role="37wK5m">
                              <ref role="3cqZAo" node="47QEcUfsm57" resolve="modules" />
                            </node>
                            <node concept="37vLTw" id="2_MQfvmrEpX" role="37wK5m">
                              <ref role="3cqZAo" node="47QEcUfsm54" resolve="needClean" />
                            </node>
                            <node concept="2OqwBi" id="4DT6wdtTMWe" role="37wK5m">
                              <node concept="37vLTw" id="4DT6wdtTMWf" role="2Oq$k0">
                                <ref role="3cqZAo" node="1qSnb0zjzaV" resolve="monitor" />
                              </node>
                              <node concept="liA8E" id="4DT6wdtTMWg" role="2OqNvi">
                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                                <node concept="3cmrfG" id="2_MQfvmrHWn" role="37wK5m">
                                  <property role="3cmrfH" value="3" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="769DNvT2lu8" role="2Oq$k0">
                  <node concept="37vLTw" id="769DNvT2kKh" role="2Oq$k0">
                    <ref role="3cqZAo" node="769DNvT2a3H" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="769DNvT2mXo" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2_MQfvmrzvd" role="3cqZAp" />
            <node concept="3cpWs8" id="3IZXeSRzOHd" role="3cqZAp">
              <node concept="3cpWsn" id="3IZXeSRzOHe" role="3cpWs9">
                <property role="TrG5h" value="mpsCompilationResult" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="3IZXeSRzOHf" role="1tU5fm">
                  <ref role="3uigEE" to="vqh0:~MPSCompilationResult" resolve="MPSCompilationResult" />
                </node>
                <node concept="2OqwBi" id="2_MQfvmrO3e" role="33vP2m">
                  <node concept="37vLTw" id="2_MQfvmrMHk" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KUoCipvBes" resolve="maker" />
                  </node>
                  <node concept="liA8E" id="2_MQfvmrPHB" role="2OqNvi">
                    <ref role="37wK5l" to="vqh0:~ModuleMaker.make(org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="make" />
                    <node concept="2OqwBi" id="2_MQfvmrRk8" role="37wK5m">
                      <node concept="37vLTw" id="2_MQfvmrRk9" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qSnb0zjzaV" resolve="monitor" />
                      </node>
                      <node concept="liA8E" id="2_MQfvmrRka" role="2OqNvi">
                        <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                        <node concept="3cmrfG" id="2_MQfvmrV2X" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7YYozjU4uMd" role="3cqZAp" />
            <node concept="3clFbJ" id="7YYozjU4zbt" role="3cqZAp">
              <node concept="3clFbS" id="7YYozjU4zbv" role="3clFbx">
                <node concept="3clFbF" id="7YYozjU4zTL" role="3cqZAp">
                  <node concept="2OqwBi" id="7YYozjU4zTM" role="3clFbG">
                    <node concept="37vLTw" id="7YYozjU4zTN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7YYozjU3aez" resolve="mh" />
                    </node>
                    <node concept="liA8E" id="7YYozjU4zTO" role="2OqNvi">
                      <ref role="37wK5l" to="57ty:~DefaultMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                      <node concept="2YIFZM" id="7YYozjU4zTP" role="37wK5m">
                        <ref role="37wK5l" to="et5u:~Message.info(java.lang.Class,java.lang.String,java.lang.Object,java.lang.Throwable)" resolve="info" />
                        <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                        <node concept="1rXfSq" id="7YYozjU4zTQ" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                        <node concept="2OqwBi" id="7YYozjU4zTR" role="37wK5m">
                          <node concept="Xl_RD" id="7YYozjU4zTS" role="2Oq$k0">
                            <property role="Xl_RC" value="Compilation of %d modules completed successfully" />
                          </node>
                          <node concept="2cAKMz" id="7YYozjU4zTT" role="2OqNvi">
                            <node concept="2OqwBi" id="7YYozjU4zTU" role="2cAKU6">
                              <node concept="37vLTw" id="7YYozjU4HDy" role="2Oq$k0">
                                <ref role="3cqZAo" node="47QEcUfsm57" resolve="modules" />
                              </node>
                              <node concept="34oBXx" id="7YYozjU4N53" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="10Nm6u" id="7YYozjU4zTZ" role="37wK5m" />
                        <node concept="10Nm6u" id="7YYozjU4zU0" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7YYozjU4wU1" role="3clFbw">
                <node concept="37vLTw" id="7YYozjU4vZR" role="2Oq$k0">
                  <ref role="3cqZAo" node="3IZXeSRzOHe" resolve="mpsCompilationResult" />
                </node>
                <node concept="liA8E" id="7YYozjU4ysj" role="2OqNvi">
                  <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isOk()" resolve="isOk" />
                </node>
              </node>
              <node concept="3eNFk2" id="7YYozjU4NHo" role="3eNLev">
                <node concept="2OqwBi" id="7YYozjU4Pte" role="3eO9$A">
                  <node concept="37vLTw" id="7YYozjU4Owj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IZXeSRzOHe" resolve="mpsCompilationResult" />
                  </node>
                  <node concept="liA8E" id="7YYozjU4QT0" role="2OqNvi">
                    <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isAborted()" resolve="isAborted" />
                  </node>
                </node>
                <node concept="3clFbS" id="7YYozjU4NHq" role="3eOfB_">
                  <node concept="3clFbF" id="7YYozjU4RF2" role="3cqZAp">
                    <node concept="2OqwBi" id="7YYozjU4RF3" role="3clFbG">
                      <node concept="37vLTw" id="7YYozjU4RF4" role="2Oq$k0">
                        <ref role="3cqZAo" node="7YYozjU3aez" resolve="mh" />
                      </node>
                      <node concept="liA8E" id="7YYozjU4RF5" role="2OqNvi">
                        <ref role="37wK5l" to="57ty:~DefaultMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                        <node concept="2YIFZM" id="7YYozjU4RF6" role="37wK5m">
                          <ref role="37wK5l" to="et5u:~Message.info(java.lang.Class,java.lang.String,java.lang.Object,java.lang.Throwable)" resolve="info" />
                          <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                          <node concept="1rXfSq" id="7YYozjU4RF7" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                          <node concept="Xl_RD" id="7YYozjU4RF9" role="37wK5m">
                            <property role="Xl_RC" value="Compilation aborted" />
                          </node>
                          <node concept="10Nm6u" id="7YYozjU4RFe" role="37wK5m" />
                          <node concept="10Nm6u" id="7YYozjU4RFf" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="769DNvT2x2R" role="3cqZAp" />
            <node concept="3clFbJ" id="47QEcUfsm6e" role="3cqZAp">
              <node concept="2OqwBi" id="3IZXeSRzQXw" role="3clFbw">
                <node concept="37vLTw" id="3IZXeSRzQDk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3IZXeSRzOHe" resolve="mpsCompilationResult" />
                </node>
                <node concept="liA8E" id="3IZXeSRzRq4" role="2OqNvi">
                  <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isReloadingNeeded()" resolve="isReloadingNeeded" />
                </node>
              </node>
              <node concept="3clFbS" id="47QEcUfsm6f" role="3clFbx">
                <node concept="3clFbF" id="7YYozjU3VUs" role="3cqZAp">
                  <node concept="2OqwBi" id="7YYozjU3Y6C" role="3clFbG">
                    <node concept="37vLTw" id="7YYozjU3VUq" role="2Oq$k0">
                      <ref role="3cqZAo" node="7YYozjU3aez" resolve="mh" />
                    </node>
                    <node concept="liA8E" id="7YYozjU3ZOG" role="2OqNvi">
                      <ref role="37wK5l" to="57ty:~DefaultMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                      <node concept="2YIFZM" id="7YYozjU42OR" role="37wK5m">
                        <ref role="37wK5l" to="et5u:~Message.info(java.lang.Class,java.lang.String,java.lang.Object,java.lang.Throwable)" resolve="info" />
                        <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                        <node concept="1rXfSq" id="7YYozjU458L" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                        <node concept="2OqwBi" id="7YYozjU48iS" role="37wK5m">
                          <node concept="Xl_RD" id="7YYozjU46JY" role="2Oq$k0">
                            <property role="Xl_RC" value="%d affected modules require re-load" />
                          </node>
                          <node concept="2cAKMz" id="7YYozjU4ae9" role="2OqNvi">
                            <node concept="2OqwBi" id="7YYozjU4c$U" role="2cAKU6">
                              <node concept="2OqwBi" id="7YYozjU4aIc" role="2Oq$k0">
                                <node concept="37vLTw" id="7YYozjU4aId" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3IZXeSRzOHe" resolve="mpsCompilationResult" />
                                </node>
                                <node concept="liA8E" id="7YYozjU4aIe" role="2OqNvi">
                                  <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getAffectedModules()" resolve="getAffectedModules" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7YYozjU4eI2" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="10Nm6u" id="7YYozjU4s62" role="37wK5m" />
                        <node concept="10Nm6u" id="7YYozjU4tDd" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="ZGgUpLTjBl" role="3cqZAp">
                  <node concept="2OqwBi" id="ZGgUpLTqTZ" role="3clFbG">
                    <node concept="2OqwBi" id="ZGgUpLTlL0" role="2Oq$k0">
                      <node concept="37vLTw" id="ZGgUpLTjBj" role="2Oq$k0">
                        <ref role="3cqZAo" node="769DNvT2a3H" resolve="myProject" />
                      </node>
                      <node concept="liA8E" id="ZGgUpLTn55" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                        <node concept="3VsKOn" id="ZGgUpLTpM6" role="37wK5m">
                          <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="ZGgUpLTrXr" role="2OqNvi">
                      <ref role="37wK5l" to="3qmy:~ClassLoaderManager.reload(java.lang.Iterable,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="reload" />
                      <node concept="2OqwBi" id="ZGgUpLTvbz" role="37wK5m">
                        <node concept="37vLTw" id="ZGgUpLTu8H" role="2Oq$k0">
                          <ref role="3cqZAo" node="3IZXeSRzOHe" resolve="mpsCompilationResult" />
                        </node>
                        <node concept="liA8E" id="ZGgUpLTwHh" role="2OqNvi">
                          <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getAffectedModules()" resolve="getAffectedModules" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KUoCiqb5Zz" role="37wK5m">
                        <node concept="liA8E" id="1KUoCiqb5Z$" role="2OqNvi">
                          <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                          <node concept="3cmrfG" id="1KUoCiqb5Z_" role="37wK5m">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTAP1" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qSnb0zjzaV" resolve="monitor" />
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
      <node concept="37vLTG" id="47QEcUfsm5L" role="3clF46">
        <property role="TrG5h" value="indicator" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="47QEcUfsm5N" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="47QEcUfsm5M" role="1tU5fm">
          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
        </node>
      </node>
      <node concept="3cqZAl" id="47QEcUfsm5K" role="3clF45" />
      <node concept="2AHcQZ" id="3tYsUK_SfjR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="47QEcUfsm5e" role="1B3o_S" />
    <node concept="3uibUv" id="47QEcUfsm5H" role="1zkMxy">
      <ref role="3uigEE" to="xygl:~Task$Modal" resolve="Task.Modal" />
    </node>
  </node>
  <node concept="sE7Ow" id="2UTM4$6j0Gz">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="Options" />
    <property role="2uzpH1" value="Options" />
    <property role="3GE5qa" value="Build.Options" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="2UTM4$6j0G$" role="tncku">
      <node concept="3clFbS" id="2UTM4$6j0G_" role="2VODD2" />
    </node>
    <node concept="2ScWuX" id="2UTM4$6j0GA" role="tmbBb">
      <node concept="3clFbS" id="2UTM4$6j0GB" role="2VODD2">
        <node concept="3clFbF" id="2UTM4$6j0GC" role="3cqZAp">
          <node concept="3clFbT" id="2UTM4$6j0GD" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJEWU">
    <property role="TrG5h" value="MakeSelectedModels" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Make Model" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7iCFfvQAkd8" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQAkd9" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJEWW" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJEWX" role="1NuT2Z">
      <property role="TrG5h" value="cmodel" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
    </node>
    <node concept="tnohg" id="7tZeFupJEWY" role="tncku">
      <node concept="3clFbS" id="7tZeFupJEWZ" role="2VODD2">
        <node concept="3clFbF" id="7tZeFupJEX0" role="3cqZAp">
          <node concept="2OqwBi" id="7tZeFupJEX1" role="3clFbG">
            <node concept="2ShNRf" id="7tZeFupJEX2" role="2Oq$k0">
              <node concept="1pGfFk" id="7tZeFupJEX3" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQAxhh" role="37wK5m">
                  <node concept="2ShNRf" id="7iCFfvQAxhi" role="2Oq$k0">
                    <node concept="1pGfFk" id="7iCFfvQAxhj" role="2ShVmc">
                      <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                      <node concept="2OqwBi" id="7iCFfvQAxhk" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQAxhl" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7iCFfvQAxhm" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQAkd8" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQAxhn" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                    <node concept="2OqwBi" id="7iCFfvQANSm" role="37wK5m">
                      <node concept="2WthIp" id="7iCFfvQANSp" role="2Oq$k0" />
                      <node concept="2XshWL" id="7iCFfvQANSr" role="2OqNvi">
                        <ref role="2WH_rO" node="7iCFfvQOTh6" resolve="getModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7tZeFupJEXl" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7tZeFupJEXm" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJEXn" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3slop_X" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slop_Y" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slop_Z" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slopA0" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7Ob_3slopA1" role="3clFbw">
            <node concept="liA8E" id="7Ob_3slopA3" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMBpp" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMBpq" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMBpr" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMBps" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQAkd8" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMBpt" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMBpu" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4O9Oe_fta$P" role="3cqZAp">
          <node concept="3cpWsn" id="4O9Oe_fta$Q" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="4O9Oe_fta$R" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_fta$S" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="7iCFfvQAiOS" role="33vP2m">
              <node concept="2WthIp" id="7iCFfvQAiOT" role="2Oq$k0" />
              <node concept="2XshWL" id="7iCFfvQAiOR" role="2OqNvi">
                <ref role="2WH_rO" node="7iCFfvQOTh6" resolve="getModels" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iCFfvQAlxF" role="3cqZAp">
          <node concept="3clFbS" id="7iCFfvQAlxI" role="3clFbx">
            <node concept="3cpWs6" id="7iCFfvQAqBH" role="3cqZAp">
              <node concept="3clFbT" id="7iCFfvQAr9B" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7iCFfvQAmAv" role="3clFbw">
            <node concept="37vLTw" id="7iCFfvQAlX$" role="2Oq$k0">
              <ref role="3cqZAo" node="4O9Oe_fta$Q" resolve="list" />
            </node>
            <node concept="1v1jN8" id="7iCFfvQAq8R" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="7tZeFupJEXo" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJEXp" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7tZeFupJEXq" role="1tU5fm" />
            <node concept="2OqwBi" id="7tZeFupJEXr" role="33vP2m">
              <node concept="2OqwBi" id="7iCFfvQAt$U" role="2Oq$k0">
                <node concept="2ShNRf" id="7tZeFupJEXs" role="2Oq$k0">
                  <node concept="1pGfFk" id="7tZeFupJEXt" role="2ShVmc">
                    <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                    <node concept="2OqwBi" id="7iCFfvQAsQ1" role="37wK5m">
                      <node concept="2WthIp" id="7iCFfvQAsQ4" role="2Oq$k0" />
                      <node concept="1DTwFV" id="7iCFfvQAsQ6" role="2OqNvi">
                        <ref role="2WH_rO" node="7iCFfvQAkd8" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCFfvQAue2" role="2OqNvi">
                  <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                  <node concept="37vLTw" id="7iCFfvQAu_u" role="37wK5m">
                    <ref role="3cqZAo" node="4O9Oe_fta$Q" resolve="list" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7tZeFupJEXD" role="2OqNvi">
                <ref role="37wK5l" node="7tZeFupJEXW" resolve="actionText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJEXF" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJEXG" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJEXH" role="3cqZAp">
              <node concept="2OqwBi" id="7tZeFupJEXI" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJEXJ" role="2Oq$k0">
                  <node concept="tl45R" id="7tZeFupJEXK" role="2Oq$k0" />
                  <node concept="liA8E" id="7tZeFupJEXL" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7tZeFupJEXM" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="37vLTw" id="3GM_nagTuAv" role="37wK5m">
                    <ref role="3cqZAo" node="7tZeFupJEXp" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tZeFupJEXO" role="3cqZAp">
              <node concept="3clFbT" id="7tZeFupJEXP" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tZeFupJEXQ" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJEXR" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTARA" role="3uHU7B">
              <ref role="3cqZAo" node="7tZeFupJEXp" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJEXT" role="3cqZAp">
          <node concept="3clFbT" id="7tZeFupJEXU" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="7iCFfvQOTh6" role="32lrUH">
      <property role="TrG5h" value="getModels" />
      <node concept="3Tm6S6" id="7iCFfvQOTh7" role="1B3o_S" />
      <node concept="_YKpA" id="7iCFfvQOTh8" role="3clF45">
        <node concept="3uibUv" id="7iCFfvQOTh9" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7iCFfvQOTha" role="3clF47">
        <node concept="3cpWs8" id="7iCFfvQOThb" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQOThc" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="_YKpA" id="7iCFfvQOThd" role="1tU5fm">
              <node concept="3uibUv" id="7iCFfvQOThe" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="7iCFfvQOThf" role="33vP2m">
              <node concept="Tc6Ow" id="7iCFfvQOThg" role="2ShVmc">
                <node concept="3uibUv" id="7iCFfvQOThh" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6T8FbTKrfmr" role="3cqZAp">
          <node concept="3clFbS" id="6T8FbTKrfms" role="3clFbx">
            <node concept="3clFbF" id="6T8FbTKrfmt" role="3cqZAp">
              <node concept="2OqwBi" id="6T8FbTKrfmu" role="3clFbG">
                <node concept="37vLTw" id="6T8FbTKrfmv" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQOThc" resolve="rv" />
                </node>
                <node concept="X8dFx" id="6T8FbTKrfmw" role="2OqNvi">
                  <node concept="2OqwBi" id="6T8FbTKrfmx" role="25WWJ7">
                    <node concept="2WthIp" id="6T8FbTKrfmy" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6T8FbTKrfmz" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJEWW" resolve="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6T8FbTKrfm$" role="3clFbw">
            <node concept="10Nm6u" id="6T8FbTKrfm_" role="3uHU7w" />
            <node concept="2OqwBi" id="6T8FbTKrfmA" role="3uHU7B">
              <node concept="2WthIp" id="6T8FbTKrfmB" role="2Oq$k0" />
              <node concept="1DTwFV" id="6T8FbTKrfmC" role="2OqNvi">
                <ref role="2WH_rO" node="7tZeFupJEWW" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6T8FbTKrfmD" role="3cqZAp">
          <node concept="3clFbS" id="6T8FbTKrfmE" role="3clFbx">
            <node concept="3clFbF" id="6T8FbTKrfmF" role="3cqZAp">
              <node concept="2OqwBi" id="6T8FbTKrfmG" role="3clFbG">
                <node concept="37vLTw" id="6T8FbTKrfmH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQOThc" resolve="rv" />
                </node>
                <node concept="TSZUe" id="6T8FbTKrfmI" role="2OqNvi">
                  <node concept="2OqwBi" id="6T8FbTKrfmJ" role="25WWJ7">
                    <node concept="2WthIp" id="6T8FbTKrfmK" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6T8FbTKrfmL" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJEWX" resolve="cmodel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6T8FbTKrfmM" role="3clFbw">
            <node concept="3fqX7Q" id="6T8FbTKrfmN" role="3uHU7w">
              <node concept="2OqwBi" id="6T8FbTKrfmO" role="3fr31v">
                <node concept="37vLTw" id="6T8FbTKrfmP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQOThc" resolve="rv" />
                </node>
                <node concept="3JPx81" id="6T8FbTKrfmQ" role="2OqNvi">
                  <node concept="2OqwBi" id="6T8FbTKrfmR" role="25WWJ7">
                    <node concept="2WthIp" id="6T8FbTKrfmS" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6T8FbTKrfmT" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJEWX" resolve="cmodel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6T8FbTKrfmU" role="3uHU7B">
              <node concept="2OqwBi" id="6T8FbTKrfmV" role="3uHU7B">
                <node concept="2WthIp" id="6T8FbTKrfmW" role="2Oq$k0" />
                <node concept="1DTwFV" id="6T8FbTKrfmX" role="2OqNvi">
                  <ref role="2WH_rO" node="7tZeFupJEWX" resolve="cmodel" />
                </node>
              </node>
              <node concept="10Nm6u" id="6T8FbTKrfmY" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6T8FbTKrfmZ" role="3cqZAp">
          <node concept="37vLTw" id="6T8FbTKrfn0" role="3cqZAk">
            <ref role="3cqZAo" node="7iCFfvQOThc" resolve="rv" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7tZeFupJEXV">
    <property role="TrG5h" value="MakeActionParameters" />
    <property role="3GE5qa" value="Make" />
    <node concept="312cEg" id="7iCFfvQueLy" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7iCFfvQueLz" role="1B3o_S" />
      <node concept="3uibUv" id="7iCFfvQupR6" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="7tZeFupJF5x" role="jymVt">
      <property role="TrG5h" value="myModels" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="5CORZJXcpZN" role="1tU5fm">
        <node concept="3uibUv" id="9enslR2dnF" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7tZeFupJF5y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7tZeFupJF5C" role="jymVt">
      <property role="TrG5h" value="myModules" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="5CORZJXcpZQ" role="1tU5fm">
        <node concept="3uibUv" id="9enslR2dnC" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7tZeFupJF5D" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7iCFfvQwao8" role="jymVt">
      <property role="TrG5h" value="myCleanBuild" />
      <node concept="3Tm6S6" id="7iCFfvQwao9" role="1B3o_S" />
      <node concept="10P_77" id="7iCFfvQwaob" role="1tU5fm" />
      <node concept="3clFbT" id="7iCFfvQ_L3v" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="6UgUnh3veGc" role="jymVt">
      <property role="TrG5h" value="myAdditionalFacets" />
      <node concept="3Tm6S6" id="6UgUnh3v9yD" role="1B3o_S" />
      <node concept="_YKpA" id="6UgUnh3vd_K" role="1tU5fm">
        <node concept="3uibUv" id="6UgUnh3veBV" role="_ZDj9">
          <ref role="3uigEE" to="ud0o:5mqBoD3U3U9" resolve="IFacet.Name" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gJxm_K_gAe" role="jymVt" />
    <node concept="3clFbW" id="7iCFfvQto4Y" role="jymVt">
      <node concept="3cqZAl" id="7iCFfvQto4Z" role="3clF45" />
      <node concept="3clFbS" id="7iCFfvQto50" role="3clF47">
        <node concept="3clFbF" id="7iCFfvQto51" role="3cqZAp">
          <node concept="37vLTI" id="7iCFfvQto52" role="3clFbG">
            <node concept="37vLTw" id="7iCFfvQto53" role="37vLTx">
              <ref role="3cqZAo" node="7iCFfvQto5K" resolve="project" />
            </node>
            <node concept="37vLTw" id="7iCFfvQuMjn" role="37vLTJ">
              <ref role="3cqZAo" node="7iCFfvQueLy" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCFfvQto5J" role="1B3o_S" />
      <node concept="37vLTG" id="7iCFfvQto5K" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7iCFfvQu5Bn" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="7iCFfvQvxnX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7iCFfvQv3eI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="models" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7iCFfvQv784" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="A3Dl8" id="7iCFfvQv785" role="1tU5fm">
          <node concept="3uibUv" id="7iCFfvQv786" role="A3Ik2">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7iCFfvQv3eL" role="3clF47">
        <node concept="3clFbF" id="7iCFfvQto57" role="3cqZAp">
          <node concept="37vLTI" id="7iCFfvQto58" role="3clFbG">
            <node concept="3K4zz7" id="7iCFfvQto59" role="37vLTx">
              <node concept="10Nm6u" id="7iCFfvQto5a" role="3K4GZi" />
              <node concept="3y3z36" id="7iCFfvQto5b" role="3K4Cdx">
                <node concept="37vLTw" id="7iCFfvQto5c" role="3uHU7B">
                  <ref role="3cqZAo" node="7iCFfvQv784" resolve="models" />
                </node>
                <node concept="10Nm6u" id="7iCFfvQto5d" role="3uHU7w" />
              </node>
              <node concept="2ShNRf" id="7iCFfvQto5e" role="3K4E3e">
                <node concept="Tc6Ow" id="7iCFfvQto5f" role="2ShVmc">
                  <node concept="37vLTw" id="7iCFfvQto5g" role="I$8f6">
                    <ref role="3cqZAo" node="7iCFfvQv784" resolve="models" />
                  </node>
                  <node concept="3uibUv" id="7iCFfvQto5h" role="HW$YZ">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7iCFfvQuMv4" role="37vLTJ">
              <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iCFfvQvAN0" role="3cqZAp">
          <node concept="Xjq3P" id="7iCFfvQvAND" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCFfvQuXSk" role="1B3o_S" />
      <node concept="3uibUv" id="7iCFfvQv3dE" role="3clF45">
        <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
      </node>
    </node>
    <node concept="3clFb_" id="7iCFfvQvBeE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="modules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7iCFfvQto5R" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="7iCFfvQto5S" role="1tU5fm">
          <node concept="3uibUv" id="7iCFfvQto5T" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7iCFfvQvBeI" role="3clF47">
        <node concept="3clFbF" id="7iCFfvQvBeJ" role="3cqZAp">
          <node concept="37vLTI" id="7iCFfvQto5s" role="3clFbG">
            <node concept="3K4zz7" id="7iCFfvQto5t" role="37vLTx">
              <node concept="10Nm6u" id="7iCFfvQto5u" role="3K4GZi" />
              <node concept="3y3z36" id="7iCFfvQto5v" role="3K4Cdx">
                <node concept="37vLTw" id="7iCFfvQto5w" role="3uHU7B">
                  <ref role="3cqZAo" node="7iCFfvQto5R" resolve="modules" />
                </node>
                <node concept="10Nm6u" id="7iCFfvQto5x" role="3uHU7w" />
              </node>
              <node concept="2ShNRf" id="7iCFfvQto5y" role="3K4E3e">
                <node concept="Tc6Ow" id="7iCFfvQto5z" role="2ShVmc">
                  <node concept="37vLTw" id="7iCFfvQto5$" role="I$8f6">
                    <ref role="3cqZAo" node="7iCFfvQto5R" resolve="modules" />
                  </node>
                  <node concept="3uibUv" id="7iCFfvQto5_" role="HW$YZ">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7iCFfvQuMXr" role="37vLTJ">
              <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iCFfvQvBeV" role="3cqZAp">
          <node concept="Xjq3P" id="7iCFfvQvBeW" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCFfvQvBeX" role="1B3o_S" />
      <node concept="3uibUv" id="7iCFfvQvBeY" role="3clF45">
        <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
      </node>
    </node>
    <node concept="3clFb_" id="6UgUnh3vnNO" role="jymVt">
      <property role="TrG5h" value="additionalFacet" />
      <node concept="3uibUv" id="6UgUnh3vqD6" role="3clF45">
        <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
      </node>
      <node concept="3Tm1VV" id="6UgUnh3vnNR" role="1B3o_S" />
      <node concept="3clFbS" id="6UgUnh3vnNS" role="3clF47">
        <node concept="3clFbJ" id="6UgUnh3xC9_" role="3cqZAp">
          <node concept="3clFbC" id="6UgUnh3w4pO" role="3clFbw">
            <node concept="10Nm6u" id="6UgUnh3w7oC" role="3uHU7w" />
            <node concept="37vLTw" id="6UgUnh3w1U8" role="3uHU7B">
              <ref role="3cqZAo" node="6UgUnh3veGc" resolve="myAdditionalFacets" />
            </node>
          </node>
          <node concept="3clFbS" id="6UgUnh3xC9C" role="3clFbx">
            <node concept="3clFbF" id="6UgUnh3xC9m" role="3cqZAp">
              <node concept="37vLTI" id="6UgUnh3xC9n" role="3clFbG">
                <node concept="2YIFZM" id="6UgUnh3xC9o" role="37vLTx">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="37vLTw" id="6UgUnh3xC9p" role="37wK5m">
                    <ref role="3cqZAo" node="6UgUnh3vH61" resolve="makeFacet" />
                  </node>
                </node>
                <node concept="37vLTw" id="6UgUnh3xC9q" role="37vLTJ">
                  <ref role="3cqZAo" node="6UgUnh3veGc" resolve="myAdditionalFacets" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6UgUnh3xC9r" role="9aQIa">
            <node concept="3clFbS" id="6UgUnh3xC9t" role="9aQI4">
              <node concept="3clFbF" id="6UgUnh3xC9v" role="3cqZAp">
                <node concept="37vLTI" id="6UgUnh3xC9w" role="3clFbG">
                  <node concept="2ShNRf" id="6UgUnh3xC9x" role="37vLTx">
                    <node concept="Tc6Ow" id="6UgUnh3xC9y" role="2ShVmc">
                      <node concept="37vLTw" id="6UgUnh3xC9z" role="I$8f6">
                        <ref role="3cqZAo" node="6UgUnh3veGc" resolve="myAdditionalFacets" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6UgUnh3xC9$" role="37vLTJ">
                    <ref role="3cqZAo" node="6UgUnh3veGc" resolve="myAdditionalFacets" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6UgUnh3xHN4" role="3cqZAp">
                <node concept="2OqwBi" id="6UgUnh3xL$J" role="3clFbG">
                  <node concept="37vLTw" id="6UgUnh3xHN2" role="2Oq$k0">
                    <ref role="3cqZAo" node="6UgUnh3veGc" resolve="myAdditionalFacets" />
                  </node>
                  <node concept="TSZUe" id="6UgUnh3xOE5" role="2OqNvi">
                    <node concept="37vLTw" id="6UgUnh3xSJD" role="25WWJ7">
                      <ref role="3cqZAo" node="6UgUnh3vH61" resolve="makeFacet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6UgUnh3vwQl" role="3cqZAp">
          <node concept="Xjq3P" id="6UgUnh3vzSh" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="6UgUnh3vH61" role="3clF46">
        <property role="TrG5h" value="makeFacet" />
        <node concept="3uibUv" id="6UgUnh3vH60" role="1tU5fm">
          <ref role="3uigEE" to="ud0o:5mqBoD3U3U9" resolve="IFacet.Name" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6UgUnh3yaVY" role="jymVt">
      <property role="TrG5h" value="additionalFacets" />
      <node concept="_YKpA" id="6UgUnh3yj3G" role="3clF45">
        <node concept="3uibUv" id="6UgUnh3yj3H" role="_ZDj9">
          <ref role="3uigEE" to="ud0o:5mqBoD3U3U9" resolve="IFacet.Name" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6UgUnh3yaW0" role="1B3o_S" />
      <node concept="3clFbS" id="6UgUnh3yaW1" role="3clF47">
        <node concept="3clFbF" id="6UgUnh3yrjd" role="3cqZAp">
          <node concept="37vLTw" id="6UgUnh3yrjb" role="3clFbG">
            <ref role="3cqZAo" node="6UgUnh3veGc" resolve="myAdditionalFacets" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3K9bLbY2kuK" role="jymVt" />
    <node concept="3clFb_" id="3K9bLbY2hGq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="modules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="3K9bLbY2na1" role="3clF46">
        <property role="TrG5h" value="contextModule" />
        <node concept="3uibUv" id="3K9bLbY2KWV" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="3K9bLbY2L5l" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="3K9bLbY2hGr" role="3clF46">
        <property role="TrG5h" value="otherModules" />
        <node concept="A3Dl8" id="3K9bLbY2hGs" role="1tU5fm">
          <node concept="3uibUv" id="3K9bLbY2hGt" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3K9bLbY2M2K" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="3K9bLbY2hGu" role="3clF47">
        <node concept="3clFbJ" id="3K9bLbY2PPx" role="3cqZAp">
          <node concept="3clFbS" id="3K9bLbY2PPz" role="3clFbx">
            <node concept="3clFbF" id="3K9bLbY3y8a" role="3cqZAp">
              <node concept="37vLTI" id="3K9bLbY3$AL" role="3clFbG">
                <node concept="10Nm6u" id="3K9bLbY3$NO" role="37vLTx" />
                <node concept="37vLTw" id="3K9bLbY3y88" role="37vLTJ">
                  <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3K9bLbY2U3u" role="3cqZAp">
              <node concept="Xjq3P" id="3K9bLbY38KO" role="3cqZAk" />
            </node>
          </node>
          <node concept="1Wc70l" id="3K9bLbY2SwR" role="3clFbw">
            <node concept="3clFbC" id="3K9bLbY2Tbo" role="3uHU7w">
              <node concept="10Nm6u" id="3K9bLbY2Trb" role="3uHU7w" />
              <node concept="37vLTw" id="3K9bLbY2SMT" role="3uHU7B">
                <ref role="3cqZAo" node="3K9bLbY2hGr" resolve="otherModules" />
              </node>
            </node>
            <node concept="3clFbC" id="3K9bLbY2S4G" role="3uHU7B">
              <node concept="37vLTw" id="3K9bLbY2RN6" role="3uHU7B">
                <ref role="3cqZAo" node="3K9bLbY2na1" resolve="contextModule" />
              </node>
              <node concept="10Nm6u" id="3K9bLbY2SnU" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3K9bLbY3fPg" role="3cqZAp">
          <node concept="3cpWsn" id="3K9bLbY3fPh" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="3K9bLbY3fPc" role="1tU5fm">
              <node concept="3uibUv" id="3K9bLbY3fPf" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="3K9bLbY3fPi" role="33vP2m">
              <node concept="Tc6Ow" id="3K9bLbY3fPj" role="2ShVmc">
                <node concept="3uibUv" id="3K9bLbY3fPl" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7MHLsIR2p9a" role="3cqZAp">
          <node concept="3clFbS" id="7MHLsIR2p9c" role="3clFbx">
            <node concept="3SKdUt" id="7MHLsIR3Okh" role="3cqZAp">
              <node concept="1PaTwC" id="7MHLsIR3Oki" role="1aUNEU">
                <node concept="3oM_SD" id="7MHLsIR3QfZ" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdNSj" role="1PaTwD">
                  <property role="3oM_SC" value="case" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdNSz" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdNSO" role="1PaTwD">
                  <property role="3oM_SC" value="generator" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdNTe" role="1PaTwD">
                  <property role="3oM_SC" value="context" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdNTD" role="1PaTwD">
                  <property role="3oM_SC" value="module," />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdNTX" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qg1" role="1PaTwD">
                  <property role="3oM_SC" value="used" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qg4" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qg8" role="1PaTwD">
                  <property role="3oM_SC" value="include" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qgd" role="1PaTwD">
                  <property role="3oM_SC" value="generator's" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qgj" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qgq" role="1PaTwD">
                  <property role="3oM_SC" value="only," />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qgy" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6kfPvTGdNUL" role="3cqZAp">
              <node concept="1PaTwC" id="6kfPvTGdNUr" role="1aUNEU">
                <node concept="3oM_SD" id="6kfPvTGdNUq" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3QgF" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3QgP" role="1PaTwD">
                  <property role="3oM_SC" value="work" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qh0" role="1PaTwD">
                  <property role="3oM_SC" value="well" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qhc" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Qhp" role="1PaTwD">
                  <property role="3oM_SC" value="standalone" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGdPBJ" role="1PaTwD">
                  <property role="3oM_SC" value="generators;" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg1B" role="1PaTwD">
                  <property role="3oM_SC" value="include" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg1S" role="1PaTwD">
                  <property role="3oM_SC" value="context" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg2i" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg2_" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg2T" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg36" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="6kfPvTGeg3s" role="1PaTwD">
                  <property role="3oM_SC" value="one." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7MHLsIR29Qr" role="3cqZAp">
              <node concept="2OqwBi" id="7MHLsIR2ibI" role="3clFbG">
                <node concept="37vLTw" id="7MHLsIR29Qp" role="2Oq$k0">
                  <ref role="3cqZAo" node="3K9bLbY3fPh" resolve="list" />
                </node>
                <node concept="TSZUe" id="7MHLsIR2kfy" role="2OqNvi">
                  <node concept="37vLTw" id="7MHLsIR2lDv" role="25WWJ7">
                    <ref role="3cqZAo" node="3K9bLbY2na1" resolve="contextModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6kfPvTGdDFm" role="3clFbw">
            <node concept="3y3z36" id="6kfPvTGdHii" role="3uHU7B">
              <node concept="10Nm6u" id="6kfPvTGdILO" role="3uHU7w" />
              <node concept="37vLTw" id="6kfPvTGdFEL" role="3uHU7B">
                <ref role="3cqZAo" node="3K9bLbY2na1" resolve="contextModule" />
              </node>
            </node>
            <node concept="1eOMI4" id="6kfPvTGdRNe" role="3uHU7w">
              <node concept="22lmx$" id="6kfPvTGdZ8v" role="1eOMHV">
                <node concept="3fqX7Q" id="6kfPvTGe0n6" role="3uHU7w">
                  <node concept="2OqwBi" id="6kfPvTGe4vD" role="3fr31v">
                    <node concept="37vLTw" id="6kfPvTGe2K5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3K9bLbY2hGr" resolve="otherModules" />
                    </node>
                    <node concept="3JPx81" id="6kfPvTGecpd" role="2OqNvi">
                      <node concept="37vLTw" id="6kfPvTGee9L" role="25WWJ7">
                        <ref role="3cqZAo" node="3K9bLbY2na1" resolve="contextModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6kfPvTGdVBS" role="3uHU7B">
                  <node concept="37vLTw" id="6kfPvTGdTsz" role="3uHU7B">
                    <ref role="3cqZAo" node="3K9bLbY2hGr" resolve="otherModules" />
                  </node>
                  <node concept="10Nm6u" id="6kfPvTGdXa$" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3K9bLbY3ndv" role="3cqZAp">
          <node concept="3clFbS" id="3K9bLbY3ndx" role="3clFbx">
            <node concept="3clFbF" id="3K9bLbY3rco" role="3cqZAp">
              <node concept="2OqwBi" id="3K9bLbY3rVn" role="3clFbG">
                <node concept="37vLTw" id="3K9bLbY3rcm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3K9bLbY3fPh" resolve="list" />
                </node>
                <node concept="X8dFx" id="3K9bLbY3uZa" role="2OqNvi">
                  <node concept="37vLTw" id="3K9bLbY3vy2" role="25WWJ7">
                    <ref role="3cqZAo" node="3K9bLbY2hGr" resolve="otherModules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3K9bLbY3qDu" role="3clFbw">
            <node concept="10Nm6u" id="3K9bLbY3qOQ" role="3uHU7w" />
            <node concept="37vLTw" id="3K9bLbY3pNO" role="3uHU7B">
              <ref role="3cqZAo" node="3K9bLbY2hGr" resolve="otherModules" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3K9bLbY3JbL" role="3cqZAp">
          <node concept="3clFbS" id="3K9bLbY3JbN" role="3clFbx">
            <node concept="3SKdUt" id="7MHLsIR3Cri" role="3cqZAp">
              <node concept="1PaTwC" id="7MHLsIR3Crj" role="1aUNEU">
                <node concept="3oM_SD" id="7MHLsIR3EcJ" role="1PaTwD">
                  <property role="3oM_SC" value="what" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EcL" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EcO" role="1PaTwD">
                  <property role="3oM_SC" value="want" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EcS" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EcX" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ed3" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Eda" role="1PaTwD">
                  <property role="3oM_SC" value="include" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Edi" role="1PaTwD">
                  <property role="3oM_SC" value="generator's" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Edr" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ed_" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EdK" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Een" role="1PaTwD">
                  <property role="3oM_SC" value="part" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ee$" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EeM" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ef1" role="1PaTwD">
                  <property role="3oM_SC" value="project." />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Efh" role="1PaTwD">
                  <property role="3oM_SC" value="I.e." />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Efy" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3EfO" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7MHLsIR3GB0" role="3cqZAp">
              <node concept="1PaTwC" id="7MHLsIR3GB1" role="1aUNEU">
                <node concept="3oM_SD" id="7MHLsIR3HBW" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HE_" role="1PaTwD">
                  <property role="3oM_SC" value="care" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HFV" role="1PaTwD">
                  <property role="3oM_SC" value="about" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HGf" role="1PaTwD">
                  <property role="3oM_SC" value="deployed" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HG$" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HH2" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HHh" role="1PaTwD">
                  <property role="3oM_SC" value="case" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HHp" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HHy" role="1PaTwD">
                  <property role="3oM_SC" value="standalone" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HHG" role="1PaTwD">
                  <property role="3oM_SC" value="generator." />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HI7" role="1PaTwD">
                  <property role="3oM_SC" value="Hope" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HIr" role="1PaTwD">
                  <property role="3oM_SC" value="ProjectScope" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HMo" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HMQ" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HN5" role="1PaTwD">
                  <property role="3oM_SC" value="proper" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HN_" role="1PaTwD">
                  <property role="3oM_SC" value="helper" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HO6" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7MHLsIR3HPo" role="3cqZAp">
              <node concept="1PaTwC" id="7MHLsIR3HP4" role="1aUNEU">
                <node concept="3oM_SD" id="7MHLsIR3HP3" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3HOC" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3JQL" role="1PaTwD">
                  <property role="3oM_SC" value="scenario" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7MHLsIR38RS" role="3cqZAp">
              <node concept="3cpWsn" id="7MHLsIR38RT" role="3cpWs9">
                <property role="TrG5h" value="langSrcModuleRef" />
                <node concept="3uibUv" id="7MHLsIR38AQ" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="2OqwBi" id="7MHLsIR38RU" role="33vP2m">
                  <node concept="2OqwBi" id="7MHLsIR38RV" role="2Oq$k0">
                    <node concept="1eOMI4" id="7MHLsIR38RW" role="2Oq$k0">
                      <node concept="10QFUN" id="7MHLsIR38RX" role="1eOMHV">
                        <node concept="3uibUv" id="7MHLsIR38RY" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                        </node>
                        <node concept="37vLTw" id="7MHLsIR38RZ" role="10QFUP">
                          <ref role="3cqZAo" node="3K9bLbY2na1" resolve="contextModule" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7MHLsIR38S0" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~Generator.sourceLanguage()" resolve="sourceLanguage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7MHLsIR38S1" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7MHLsIR3mEq" role="3cqZAp">
              <node concept="3cpWsn" id="7MHLsIR3mEr" role="3cpWs9">
                <property role="TrG5h" value="langSrcModule" />
                <node concept="3uibUv" id="7MHLsIR3mbK" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="7MHLsIR3mEs" role="33vP2m">
                  <node concept="2OqwBi" id="7MHLsIR3mEt" role="2Oq$k0">
                    <node concept="37vLTw" id="7MHLsIR3mEu" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCFfvQueLy" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="7MHLsIR3mEv" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7MHLsIR3mEw" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~BaseScope.resolve(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="resolve" />
                    <node concept="37vLTw" id="7MHLsIR3mEx" role="37wK5m">
                      <ref role="3cqZAo" node="7MHLsIR38RT" resolve="langSrcModuleRef" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3K9bLbY3VjG" role="3cqZAp">
              <node concept="3clFbS" id="3K9bLbY3VjI" role="3clFbx">
                <node concept="3clFbF" id="3K9bLbY43Jf" role="3cqZAp">
                  <node concept="2OqwBi" id="3K9bLbY44ue" role="3clFbG">
                    <node concept="37vLTw" id="3K9bLbY43Jd" role="2Oq$k0">
                      <ref role="3cqZAo" node="3K9bLbY3fPh" resolve="list" />
                    </node>
                    <node concept="TSZUe" id="3K9bLbY47vd" role="2OqNvi">
                      <node concept="37vLTw" id="3K9bLbY47Jw" role="25WWJ7">
                        <ref role="3cqZAo" node="7MHLsIR3mEr" resolve="langSrcModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3K9bLbY3YLA" role="3clFbw">
                <node concept="3fqX7Q" id="3K9bLbY43hQ" role="3uHU7w">
                  <node concept="2OqwBi" id="3K9bLbY43hS" role="3fr31v">
                    <node concept="37vLTw" id="3K9bLbY43hT" role="2Oq$k0">
                      <ref role="3cqZAo" node="3K9bLbY3fPh" resolve="list" />
                    </node>
                    <node concept="3JPx81" id="3K9bLbY43hU" role="2OqNvi">
                      <node concept="37vLTw" id="3K9bLbY43hV" role="25WWJ7">
                        <ref role="3cqZAo" node="7MHLsIR3mEr" resolve="langSrcModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="3K9bLbY3Yvc" role="3uHU7B">
                  <node concept="37vLTw" id="3K9bLbY3Ydk" role="3uHU7B">
                    <ref role="3cqZAo" node="7MHLsIR3mEr" resolve="langSrcModule" />
                  </node>
                  <node concept="10Nm6u" id="3K9bLbY3YEx" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3K9bLbY3LQ8" role="3clFbw">
            <node concept="3uibUv" id="3K9bLbY3Mb2" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
            </node>
            <node concept="37vLTw" id="3K9bLbY3LeM" role="2ZW6bz">
              <ref role="3cqZAo" node="3K9bLbY2na1" resolve="contextModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3K9bLbY2hGv" role="3cqZAp">
          <node concept="37vLTI" id="3K9bLbY2hGw" role="3clFbG">
            <node concept="3K4zz7" id="3K9bLbY2hGx" role="37vLTx">
              <node concept="37vLTw" id="3K9bLbY3GCx" role="3K4GZi">
                <ref role="3cqZAo" node="3K9bLbY3fPh" resolve="list" />
              </node>
              <node concept="2OqwBi" id="3K9bLbY3_P2" role="3K4Cdx">
                <node concept="37vLTw" id="3K9bLbY3_5K" role="2Oq$k0">
                  <ref role="3cqZAo" node="3K9bLbY3fPh" resolve="list" />
                </node>
                <node concept="1v1jN8" id="3K9bLbY3D1q" role="2OqNvi" />
              </node>
              <node concept="10Nm6u" id="3K9bLbY3GqG" role="3K4E3e" />
            </node>
            <node concept="37vLTw" id="3K9bLbY2hGE" role="37vLTJ">
              <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3K9bLbY2hGF" role="3cqZAp">
          <node concept="Xjq3P" id="3K9bLbY2hGG" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3K9bLbY2hGH" role="1B3o_S" />
      <node concept="3uibUv" id="3K9bLbY2hGI" role="3clF45">
        <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
      </node>
    </node>
    <node concept="2tJIrI" id="3K9bLbY2fBb" role="jymVt" />
    <node concept="3clFb_" id="7iCFfvQvWvd" role="jymVt">
      <property role="TrG5h" value="cleanMake" />
      <node concept="3uibUv" id="7iCFfvQw6SJ" role="3clF45">
        <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
      </node>
      <node concept="3Tm1VV" id="7iCFfvQvWvg" role="1B3o_S" />
      <node concept="3clFbS" id="7iCFfvQvWvh" role="3clF47">
        <node concept="3clFbF" id="7iCFfvQwaoc" role="3cqZAp">
          <node concept="37vLTI" id="7iCFfvQwaoe" role="3clFbG">
            <node concept="37vLTw" id="7iCFfvQwySO" role="37vLTJ">
              <ref role="3cqZAo" node="7iCFfvQwao8" resolve="myCleanBuild" />
            </node>
            <node concept="37vLTw" id="7iCFfvQwaom" role="37vLTx">
              <ref role="3cqZAo" node="7iCFfvQw3CS" resolve="clean" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iCFfvQwanb" role="3cqZAp">
          <node concept="Xjq3P" id="7iCFfvQwanN" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="7iCFfvQw3CS" role="3clF46">
        <property role="TrG5h" value="clean" />
        <node concept="10P_77" id="7iCFfvQw3CR" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="7iCFfvQ_RNU" role="lGtFl">
        <node concept="TZ5HA" id="7iCFfvQ_RNV" role="TZ5H$">
          <node concept="1dT_AC" id="7iCFfvQ_RNW" role="1dT_Ay">
            <property role="1dT_AB" value="By default, parameters are set for make, not clean build (i.e. " />
          </node>
          <node concept="2U$1Ah" id="7iCFfvQ_VlK" role="1dT_Ay">
            <property role="2U$1Ai" value="code" />
            <node concept="TZ5HA" id="7iCFfvQ_VlL" role="2U$1Aj">
              <node concept="1dT_AC" id="7iCFfvQ_VlQ" role="1dT_Ay">
                <property role="1dT_AB" value="cleanMake(false)" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="7iCFfvQ_VlJ" role="1dT_Ay">
            <property role="1dT_AB" value="." />
          </node>
        </node>
        <node concept="TUZQ0" id="7iCFfvQ_RNX" role="3nqlJM">
          <property role="TUZQ4" value="indicates whether to perform clean build" />
          <node concept="zr_55" id="7iCFfvQ_RNZ" role="zr_5Q">
            <ref role="zr_51" node="7iCFfvQw3CS" resolve="clean" />
          </node>
        </node>
        <node concept="x79VA" id="7iCFfvQ_RO0" role="3nqlJM">
          <property role="x79VB" value="this for convenience" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7iCFfvQxr$v" role="jymVt">
      <property role="TrG5h" value="isCleanMake" />
      <node concept="10P_77" id="7iCFfvQxwwG" role="3clF45" />
      <node concept="3clFbS" id="7iCFfvQxr$x" role="3clF47">
        <node concept="3cpWs6" id="7iCFfvQx$5d" role="3cqZAp">
          <node concept="37vLTw" id="7iCFfvQxBpJ" role="3cqZAk">
            <ref role="3cqZAo" node="7iCFfvQwao8" resolve="myCleanBuild" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCFfvQxr$y" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7iCFfvQwTaK" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="7iCFfvQxgr1" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="7iCFfvQwTaN" role="1B3o_S" />
      <node concept="3clFbS" id="7iCFfvQwTaO" role="3clF47">
        <node concept="3cpWs6" id="7iCFfvQx6ZB" role="3cqZAp">
          <node concept="37vLTw" id="7iCFfvQx9QF" role="3cqZAk">
            <ref role="3cqZAo" node="7iCFfvQueLy" resolve="myProject" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7iCFfvQx3gT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="7tZeFupJEXW" role="jymVt">
      <property role="TrG5h" value="actionText" />
      <node concept="3Tm1VV" id="7tZeFupJEXZ" role="1B3o_S" />
      <node concept="3clFbS" id="7tZeFupJEY0" role="3clF47">
        <node concept="3cpWs8" id="7iCFfvQH6rU" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQH6rV" role="3cpWs9">
            <property role="TrG5h" value="fmt" />
            <node concept="3uibUv" id="7iCFfvQH6rW" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3K4zz7" id="7iCFfvQHaMV" role="33vP2m">
              <node concept="Xl_RD" id="7iCFfvQHaMW" role="3K4GZi">
                <property role="Xl_RC" value="Make %s" />
              </node>
              <node concept="37vLTw" id="7iCFfvQHaMX" role="3K4Cdx">
                <ref role="3cqZAo" node="7iCFfvQwao8" resolve="myCleanBuild" />
              </node>
              <node concept="Xl_RD" id="7iCFfvQHaMY" role="3K4E3e">
                <property role="Xl_RC" value="Rebuild %s" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iCFfvQGPEb" role="3cqZAp">
          <node concept="3clFbS" id="7iCFfvQGPEe" role="3clFbx">
            <node concept="3clFbJ" id="7iCFfvQHE7y" role="3cqZAp">
              <node concept="3fqX7Q" id="7iCFfvQHE7z" role="3clFbw">
                <node concept="2OqwBi" id="7iCFfvQHE7$" role="3fr31v">
                  <node concept="2HwmR7" id="7iCFfvQHE7_" role="2OqNvi">
                    <node concept="1bVj0M" id="7iCFfvQHE7A" role="23t8la">
                      <node concept="3clFbS" id="7iCFfvQHE7B" role="1bW5cS">
                        <node concept="3clFbF" id="7iCFfvQHE7C" role="3cqZAp">
                          <node concept="2YIFZM" id="713BH0SCAMQ" role="3clFbG">
                            <ref role="37wK5l" to="ap4t:~GenerationFacade.canGenerate(org.jetbrains.mps.openapi.model.SModel)" resolve="canGenerate" />
                            <ref role="1Pybhc" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
                            <node concept="37vLTw" id="713BH0SCAMR" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0Xuu" resolve="md" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xuu" role="1bW2Oz">
                        <property role="TrG5h" value="md" />
                        <node concept="2jxLKc" id="5W7E4fV0Xuv" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7iCFfvQHEs3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7iCFfvQHE7I" role="3clFbx">
                <node concept="3cpWs6" id="7iCFfvQHE7J" role="3cqZAp">
                  <node concept="10Nm6u" id="7iCFfvQHE7K" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7iCFfvQHIA7" role="3cqZAp">
              <node concept="3clFbS" id="7iCFfvQHIAa" role="3clFbx">
                <node concept="3cpWs6" id="7iCFfvQHRr8" role="3cqZAp">
                  <node concept="2YIFZM" id="7iCFfvQHYbr" role="3cqZAk">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="37vLTw" id="7iCFfvQI1mQ" role="37wK5m">
                      <ref role="3cqZAo" node="7iCFfvQH6rV" resolve="fmt" />
                    </node>
                    <node concept="Xl_RD" id="7iCFfvQI830" role="37wK5m">
                      <property role="Xl_RC" value="Selected Models" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="7iCFfvQHQVI" role="3clFbw">
                <node concept="3cmrfG" id="7iCFfvQHR8h" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7iCFfvQHMHT" role="3uHU7B">
                  <node concept="37vLTw" id="7iCFfvQHMkG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
                  </node>
                  <node concept="34oBXx" id="7iCFfvQHOAV" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7iCFfvQIFsw" role="3cqZAp">
              <node concept="3cpWsn" id="7iCFfvQIFsx" role="3cpWs9">
                <property role="TrG5h" value="modelName" />
                <node concept="3uibUv" id="7iCFfvQIFsy" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="7iCFfvQIJxv" role="33vP2m">
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String)" resolve="compactNamespace" />
                  <node concept="2OqwBi" id="7iCFfvQIJxw" role="37wK5m">
                    <node concept="liA8E" id="7iCFfvQIJxx" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                    </node>
                    <node concept="2OqwBi" id="7iCFfvQIKmC" role="2Oq$k0">
                      <node concept="37vLTw" id="7iCFfvQIJ_Q" role="2Oq$k0">
                        <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
                      </node>
                      <node concept="1uHKPH" id="7iCFfvQINP$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7iCFfvQGZj8" role="3cqZAp">
              <node concept="2YIFZM" id="7iCFfvQIvuh" role="3cqZAk">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="37vLTw" id="7iCFfvQIVac" role="37wK5m">
                  <ref role="3cqZAo" node="7iCFfvQH6rV" resolve="fmt" />
                </node>
                <node concept="2YIFZM" id="7iCFfvQJ8v6" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <node concept="Xl_RD" id="7iCFfvQJbV7" role="37wK5m">
                    <property role="Xl_RC" value="Model '%s'" />
                  </node>
                  <node concept="37vLTw" id="7iCFfvQJDf9" role="37wK5m">
                    <ref role="3cqZAo" node="7iCFfvQIFsx" resolve="modelName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7iCFfvQGUAk" role="3clFbw">
            <node concept="2OqwBi" id="7iCFfvQGVAR" role="3uHU7w">
              <node concept="37vLTw" id="7iCFfvQGUZE" role="2Oq$k0">
                <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
              </node>
              <node concept="3GX2aA" id="7iCFfvQGYZe" role="2OqNvi" />
            </node>
            <node concept="3y3z36" id="7iCFfvQGU1B" role="3uHU7B">
              <node concept="37vLTw" id="7iCFfvQGTe2" role="3uHU7B">
                <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
              </node>
              <node concept="10Nm6u" id="7iCFfvQGUqk" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iCFfvQHeV4" role="3cqZAp">
          <node concept="3clFbS" id="7iCFfvQHeV7" role="3clFbx">
            <node concept="3clFbJ" id="7iCFfvQJTIn" role="3cqZAp">
              <node concept="22lmx$" id="7iCFfvQJTIo" role="3clFbw">
                <node concept="2OqwBi" id="7iCFfvQJTIp" role="3uHU7B">
                  <node concept="2HwmR7" id="7iCFfvQJTIq" role="2OqNvi">
                    <node concept="1bVj0M" id="7iCFfvQJTIr" role="23t8la">
                      <node concept="3clFbS" id="7iCFfvQJTIs" role="1bW5cS">
                        <node concept="3clFbF" id="7iCFfvQJTIt" role="3cqZAp">
                          <node concept="3clFbC" id="7iCFfvQJTIu" role="3clFbG">
                            <node concept="10Nm6u" id="7iCFfvQJTIv" role="3uHU7w" />
                            <node concept="37vLTw" id="7iCFfvQJTIw" role="3uHU7B">
                              <ref role="3cqZAo" node="5W7E4fV0Xuw" resolve="m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xuw" role="1bW2Oz">
                        <property role="TrG5h" value="m" />
                        <node concept="2jxLKc" id="5W7E4fV0Xux" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7iCFfvQJYy7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7iCFfvQJTI$" role="3uHU7w">
                  <node concept="37vLTw" id="7iCFfvQJYQs" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                  </node>
                  <node concept="2HxqBE" id="7iCFfvQJTIA" role="2OqNvi">
                    <node concept="1bVj0M" id="7iCFfvQJTIB" role="23t8la">
                      <node concept="3clFbS" id="7iCFfvQJTIC" role="1bW5cS">
                        <node concept="3clFbF" id="7iCFfvQJTID" role="3cqZAp">
                          <node concept="2OqwBi" id="7iCFfvQJTIE" role="3clFbG">
                            <node concept="37vLTw" id="7iCFfvQJTIF" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0Xuy" resolve="m" />
                            </node>
                            <node concept="liA8E" id="7iCFfvQJTIG" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xuy" role="1bW2Oz">
                        <property role="TrG5h" value="m" />
                        <node concept="2jxLKc" id="5W7E4fV0Xuz" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7iCFfvQJTIJ" role="3clFbx">
                <node concept="3cpWs6" id="7iCFfvQJTIK" role="3cqZAp">
                  <node concept="10Nm6u" id="7iCFfvQJTIL" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7iCFfvQK3Cn" role="3cqZAp">
              <node concept="3clFbS" id="7iCFfvQK3Cq" role="3clFbx">
                <node concept="3cpWs6" id="7iCFfvQKcRQ" role="3cqZAp">
                  <node concept="2YIFZM" id="7iCFfvQKlwS" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="37vLTw" id="7iCFfvQKpSX" role="37wK5m">
                      <ref role="3cqZAo" node="7iCFfvQH6rV" resolve="fmt" />
                    </node>
                    <node concept="Xl_RD" id="7iCFfvQKwbz" role="37wK5m">
                      <property role="Xl_RC" value="Selected Modules" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="7iCFfvQKczQ" role="3clFbw">
                <node concept="3cmrfG" id="7iCFfvQKc$r" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7iCFfvQK8vf" role="3uHU7B">
                  <node concept="37vLTw" id="7iCFfvQK7VE" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                  </node>
                  <node concept="34oBXx" id="7iCFfvQKaeT" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7iCFfvQLa59" role="3cqZAp">
              <node concept="3cpWsn" id="7iCFfvQLa5a" role="3cpWs9">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="7iCFfvQLa5b" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="7iCFfvQLftx" role="33vP2m">
                  <node concept="37vLTw" id="7iCFfvQLeBa" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                  </node>
                  <node concept="1uHKPH" id="7iCFfvQLhdc" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7iCFfvQKXut" role="3cqZAp">
              <node concept="3cpWsn" id="7iCFfvQKXuu" role="3cpWs9">
                <property role="TrG5h" value="kindName" />
                <node concept="3uibUv" id="7iCFfvQKXuv" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="7iCFfvQKXuw" role="33vP2m">
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <ref role="37wK5l" to="18ew:~NameUtil.shortNameFromLongName(java.lang.String)" resolve="shortNameFromLongName" />
                  <node concept="2OqwBi" id="7iCFfvQKXux" role="37wK5m">
                    <node concept="2OqwBi" id="7iCFfvQKXuy" role="2Oq$k0">
                      <node concept="2OqwBi" id="7iCFfvQKXuz" role="2Oq$k0">
                        <node concept="37vLTw" id="7iCFfvQLhqH" role="2Oq$k0">
                          <ref role="3cqZAo" node="7iCFfvQLa5a" resolve="module" />
                        </node>
                        <node concept="liA8E" id="7iCFfvQKXu_" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7iCFfvQKXuA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQKXuB" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                      <node concept="Xl_RD" id="7iCFfvQKXuC" role="37wK5m">
                        <property role="Xl_RC" value="\\$.*" />
                      </node>
                      <node concept="Xl_RD" id="7iCFfvQKXuD" role="37wK5m">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7iCFfvQKXuE" role="3cqZAp">
              <node concept="3cpWsn" id="7iCFfvQKXuF" role="3cpWs9">
                <property role="TrG5h" value="moduleName" />
                <node concept="3uibUv" id="7iCFfvQKXuG" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="7iCFfvQKXuH" role="33vP2m">
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String)" resolve="compactNamespace" />
                  <node concept="2OqwBi" id="7iCFfvQKXuI" role="37wK5m">
                    <node concept="37vLTw" id="7iCFfvQLhwj" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCFfvQLa5a" resolve="module" />
                    </node>
                    <node concept="liA8E" id="7iCFfvQKXuK" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7iCFfvQKCXV" role="3cqZAp" />
            <node concept="3cpWs6" id="7iCFfvQHoDR" role="3cqZAp">
              <node concept="2YIFZM" id="7iCFfvQHvkJ" role="3cqZAk">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="37vLTw" id="7iCFfvQHyZv" role="37wK5m">
                  <ref role="3cqZAo" node="7iCFfvQH6rV" resolve="fmt" />
                </node>
                <node concept="2YIFZM" id="7iCFfvQLlOH" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <node concept="Xl_RD" id="7iCFfvQLpIN" role="37wK5m">
                    <property role="Xl_RC" value="%s '%s'" />
                  </node>
                  <node concept="37vLTw" id="7iCFfvQMcY9" role="37wK5m">
                    <ref role="3cqZAo" node="7iCFfvQKXuu" resolve="kindName" />
                  </node>
                  <node concept="37vLTw" id="7iCFfvQMhOB" role="37wK5m">
                    <ref role="3cqZAo" node="7iCFfvQKXuF" resolve="moduleName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7iCFfvQHjXg" role="3clFbw">
            <node concept="2OqwBi" id="7iCFfvQHkXN" role="3uHU7w">
              <node concept="37vLTw" id="7iCFfvQHkmA" role="2Oq$k0">
                <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
              </node>
              <node concept="3GX2aA" id="7iCFfvQHolL" role="2OqNvi" />
            </node>
            <node concept="3y3z36" id="7iCFfvQHjoJ" role="3uHU7B">
              <node concept="37vLTw" id="7iCFfvQHiji" role="3uHU7B">
                <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
              </node>
              <node concept="10Nm6u" id="7iCFfvQHjLs" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iCFfvQMu4E" role="3cqZAp">
          <node concept="10Nm6u" id="7iCFfvQMxcI" role="3cqZAk" />
        </node>
      </node>
      <node concept="17QB3L" id="7tZeFupJF13" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7tZeFupJF14" role="jymVt">
      <property role="TrG5h" value="collectInput" />
      <node concept="A3Dl8" id="7tZeFupJF36" role="3clF45">
        <node concept="3uibUv" id="7tZeFupJF37" role="A3Ik2">
          <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
        </node>
      </node>
      <node concept="3clFbS" id="7tZeFupJF18" role="3clF47">
        <node concept="3cpWs8" id="7iCFfvQMSPT" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQMSPW" role="3cpWs9">
            <property role="TrG5h" value="selectedModels" />
            <node concept="A3Dl8" id="7iCFfvQMSPQ" role="1tU5fm">
              <node concept="3uibUv" id="7iCFfvQMUoB" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iCFfvQMM3L" role="3cqZAp">
          <node concept="3clFbS" id="7iCFfvQMM3O" role="3clFbx">
            <node concept="3clFbF" id="7iCFfvQMUyh" role="3cqZAp">
              <node concept="37vLTI" id="7iCFfvQMUEM" role="3clFbG">
                <node concept="37vLTw" id="7iCFfvQMULg" role="37vLTx">
                  <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
                </node>
                <node concept="37vLTw" id="7iCFfvQMUyg" role="37vLTJ">
                  <ref role="3cqZAo" node="7iCFfvQMSPW" resolve="selectedModels" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7iCFfvQMNn7" role="3clFbw">
            <node concept="2OqwBi" id="7iCFfvQMNn9" role="3uHU7w">
              <node concept="3GX2aA" id="7iCFfvQMPh2" role="2OqNvi" />
              <node concept="37vLTw" id="7iCFfvQMNnb" role="2Oq$k0">
                <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
              </node>
            </node>
            <node concept="3y3z36" id="7iCFfvQMNnd" role="3uHU7B">
              <node concept="10Nm6u" id="7iCFfvQMNne" role="3uHU7w" />
              <node concept="37vLTw" id="7iCFfvQMNnf" role="3uHU7B">
                <ref role="3cqZAo" node="7tZeFupJF5x" resolve="myModels" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7iCFfvQMY7y" role="3eNLev">
            <node concept="3clFbS" id="7iCFfvQMY7$" role="3eOfB_">
              <node concept="3clFbF" id="7iCFfvQN2Lc" role="3cqZAp">
                <node concept="37vLTI" id="7iCFfvQN33D" role="3clFbG">
                  <node concept="2OqwBi" id="7iCFfvQN3M5" role="37vLTx">
                    <node concept="37vLTw" id="7iCFfvQN3aJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                    </node>
                    <node concept="3goQfb" id="7iCFfvQN79v" role="2OqNvi">
                      <node concept="1bVj0M" id="7iCFfvQN79x" role="23t8la">
                        <node concept="3clFbS" id="7iCFfvQN79y" role="1bW5cS">
                          <node concept="3clFbF" id="7iCFfvQN7Ar" role="3cqZAp">
                            <node concept="1rXfSq" id="7iCFfvQN7Aq" role="3clFbG">
                              <ref role="37wK5l" node="3Icf_clbbfq" resolve="allModelsOf" />
                              <node concept="37vLTw" id="7iCFfvQN7Vo" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0Xu$" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xu$" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xu_" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7iCFfvQN2Lb" role="37vLTJ">
                    <ref role="3cqZAo" node="7iCFfvQMSPW" resolve="selectedModels" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7iCFfvQN2qL" role="3eO9$A">
              <node concept="3y3z36" id="7iCFfvQN2qM" role="3uHU7B">
                <node concept="37vLTw" id="7iCFfvQN2qN" role="3uHU7B">
                  <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                </node>
                <node concept="10Nm6u" id="7iCFfvQN2qO" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="7iCFfvQN2qQ" role="3uHU7w">
                <node concept="3GX2aA" id="5$lH4ojh5PR" role="2OqNvi" />
                <node concept="37vLTw" id="7iCFfvQN2qS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tZeFupJF5C" resolve="myModules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7iCFfvQN8WK" role="9aQIa">
            <node concept="3clFbS" id="7iCFfvQN8WL" role="9aQI4">
              <node concept="3clFbF" id="7iCFfvQN9Lq" role="3cqZAp">
                <node concept="37vLTI" id="7iCFfvQN9YF" role="3clFbG">
                  <node concept="2ShNRf" id="7iCFfvQNa5L" role="37vLTx">
                    <node concept="kMnCb" id="7iCFfvQNa5F" role="2ShVmc">
                      <node concept="3uibUv" id="7iCFfvQNa5G" role="kMuH3">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7iCFfvQN9Lp" role="37vLTJ">
                    <ref role="3cqZAo" node="7iCFfvQMSPW" resolve="selectedModels" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3kXJ3GPGFjS" role="3cqZAp">
          <node concept="1PaTwC" id="3kXJ3GPGFjT" role="1aUNEU">
            <node concept="3oM_SD" id="3kXJ3GPGHFK" role="1PaTwD">
              <property role="3oM_SC" value="dirty" />
            </node>
            <node concept="3oM_SD" id="5xNRGk4$naQ" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="5xNRGk4$nbW" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5xNRGk4$ndI" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="3kXJ3GPGHGK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3kXJ3GPGHIS" role="1PaTwD">
              <property role="3oM_SC" value="models/modules" />
            </node>
            <node concept="3oM_SD" id="3kXJ3GPGHMZ" role="1PaTwD">
              <property role="3oM_SC" value="selected" />
            </node>
            <node concept="3oM_SD" id="3kXJ3GPGHN4" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="3kXJ3GPGHNa" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5xNRGk4zz83" role="3cqZAp">
          <node concept="3cpWsn" id="5xNRGk4zz84" role="3cpWs9">
            <property role="TrG5h" value="statusManager" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5xNRGk4zz85" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
            </node>
            <node concept="2OqwBi" id="5xNRGk4zz86" role="33vP2m">
              <node concept="37vLTw" id="5xNRGk4zz87" role="2Oq$k0">
                <ref role="3cqZAo" node="7iCFfvQueLy" resolve="myProject" />
              </node>
              <node concept="liA8E" id="5xNRGk4zz88" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="5xNRGk4zz89" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3sLlKPDUq3m" role="3cqZAp">
          <node concept="1PaTwC" id="3sLlKPDUq3n" role="1aUNEU">
            <node concept="3oM_SD" id="3sLlKPDUq60" role="1PaTwD">
              <property role="3oM_SC" value="FIXME:" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUslo" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsmD" role="1PaTwD">
              <property role="3oM_SC" value="effectively" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUspD" role="1PaTwD">
              <property role="3oM_SC" value="aborts" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsqW" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsAy" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsC7" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsEb" role="1PaTwD">
              <property role="3oM_SC" value="were" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsFM" role="1PaTwD">
              <property role="3oM_SC" value="made" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsJH" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsL6" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUsMw" role="1PaTwD">
              <property role="3oM_SC" value="upstream" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUUHT" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5xNRGk4zYEm" role="3cqZAp">
          <node concept="3cpWsn" id="5xNRGk4zYEn" role="3cpWs9">
            <property role="TrG5h" value="dirtySelectedModels" />
            <node concept="_YKpA" id="5xNRGk4zYnp" role="1tU5fm">
              <node concept="3uibUv" id="5xNRGk4zYns" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5xNRGk4zYEo" role="33vP2m">
              <node concept="2OqwBi" id="5xNRGk4zYEp" role="2Oq$k0">
                <node concept="2OqwBi" id="5xNRGk4zYEq" role="2Oq$k0">
                  <node concept="37vLTw" id="5xNRGk4zYEr" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iCFfvQMSPW" resolve="selectedModels" />
                  </node>
                  <node concept="3zZkjj" id="5xNRGk4zYEs" role="2OqNvi">
                    <node concept="37Ijox" id="5xNRGk4zYEt" role="23t8la">
                      <ref role="37Ijqf" to="ap4t:~ModelGenerationStatusManager.generationRequired(org.jetbrains.mps.openapi.model.SModel)" resolve="generationRequired" />
                      <node concept="37vLTw" id="5xNRGk4zYEu" role="wWaWy">
                        <ref role="3cqZAo" node="5xNRGk4zz84" resolve="statusManager" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="5xNRGk4zYEv" role="2OqNvi" />
              </node>
              <node concept="26Dbio" id="5xNRGk4zYEw" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2DPasa138be" role="3cqZAp">
          <node concept="1PaTwC" id="2DPasa138bf" role="1aUNEU">
            <node concept="3oM_SD" id="2DPasa13awf" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="2DPasa13awh" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2DPasa13axi" role="1PaTwD">
              <property role="3oM_SC" value="selected" />
            </node>
            <node concept="3oM_SD" id="2DPasa13ayk" role="1PaTwD">
              <property role="3oM_SC" value="elements" />
            </node>
            <node concept="3oM_SD" id="2DPasa13azn" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="2DPasa13a$r" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2DPasa13a_w" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2DPasa13a_C" role="1PaTwD">
              <property role="3oM_SC" value="rebuilt" />
            </node>
            <node concept="3oM_SD" id="2N05d9iDyuA" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="2N05d9iDy$v" role="1PaTwD">
              <property role="3oM_SC" value="myCleanBuild" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3kXJ3GPF_vV" role="3cqZAp">
          <node concept="3cpWsn" id="3kXJ3GPF_vW" role="3cpWs9">
            <property role="TrG5h" value="selectedResources" />
            <node concept="A3Dl8" id="3kXJ3GPF_vX" role="1tU5fm">
              <node concept="3uibUv" id="3kXJ3GPF_vY" role="A3Ik2">
                <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
              </node>
            </node>
            <node concept="2OqwBi" id="3kXJ3GPF_vZ" role="33vP2m">
              <node concept="2ShNRf" id="3kXJ3GPF_w0" role="2Oq$k0">
                <node concept="1pGfFk" id="3kXJ3GPF_w1" role="2ShVmc">
                  <ref role="37wK5l" to="fn29:2O5mK2f2Efu" resolve="ModelsToResources" />
                  <node concept="3K4zz7" id="5xNRGk4$gNW" role="37wK5m">
                    <node concept="37vLTw" id="5xNRGk4$iTu" role="3K4E3e">
                      <ref role="3cqZAo" node="7iCFfvQMSPW" resolve="selectedModels" />
                    </node>
                    <node concept="37vLTw" id="5xNRGk4$l__" role="3K4GZi">
                      <ref role="3cqZAo" node="5xNRGk4zYEn" resolve="dirtySelectedModels" />
                    </node>
                    <node concept="37vLTw" id="3kXJ3GPF_w2" role="3K4Cdx">
                      <ref role="3cqZAo" node="7iCFfvQwao8" resolve="myCleanBuild" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4yMTmII4dol" role="37wK5m">
                    <ref role="3cqZAo" node="7iCFfvQwao8" resolve="myCleanBuild" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3kXJ3GPF_w3" role="2OqNvi">
                <ref role="37wK5l" to="fn29:713BH0S$TAn" resolve="resources" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3$_144VeNsE" role="3cqZAp">
          <node concept="3cpWsn" id="3$_144VeNsF" role="3cpWs9">
            <property role="TrG5h" value="selectedModules" />
            <node concept="2hMVRd" id="3$_144Ve6Ov" role="1tU5fm">
              <node concept="3uibUv" id="3$_144Ve6Oy" role="2hN53Y">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="3$_144VeNsG" role="33vP2m">
              <node concept="2ShNRf" id="3$_144VeNsH" role="2Oq$k0">
                <node concept="2i4dXS" id="3$_144VeNsI" role="2ShVmc">
                  <node concept="3uibUv" id="3$_144VeNsJ" role="HW$YZ">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                  <node concept="2OqwBi" id="3$_144VeNsK" role="I$8f6">
                    <node concept="2OqwBi" id="3$_144VeNsL" role="2Oq$k0">
                      <node concept="37vLTw" id="3$_144VeNsM" role="2Oq$k0">
                        <ref role="3cqZAo" node="3kXJ3GPF_vW" resolve="selectedResources" />
                      </node>
                      <node concept="UnYns" id="3$_144VeNsN" role="2OqNvi">
                        <node concept="2pR195" id="3$_144VeNsO" role="UnYnz">
                          <ref role="3uigEE" to="fn29:1Xl3kQ1uadK" resolve="MResource" />
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="3$_144VeNsP" role="2OqNvi">
                      <node concept="1bVj0M" id="3$_144VeNsQ" role="23t8la">
                        <node concept="3clFbS" id="3$_144VeNsR" role="1bW5cS">
                          <node concept="3clFbF" id="3$_144VeNsS" role="3cqZAp">
                            <node concept="2OqwBi" id="3$_144VeNsT" role="3clFbG">
                              <node concept="37vLTw" id="3$_144VeNsU" role="2Oq$k0">
                                <ref role="3cqZAo" node="7XBu3oV1ufJ" resolve="mr" />
                              </node>
                              <node concept="liA8E" id="3$_144VeNsV" role="2OqNvi">
                                <ref role="37wK5l" to="fn29:53cwQkIeuLV" resolve="module" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="7XBu3oV1ufJ" role="1bW2Oz">
                          <property role="TrG5h" value="mr" />
                          <node concept="2jxLKc" id="7XBu3oV1ufK" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="26Dbio" id="3$_144VeNsY" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1b3ykoT_oZD" role="3cqZAp" />
        <node concept="3cpWs8" id="7zIbG2FSOOI" role="3cqZAp">
          <node concept="3cpWsn" id="7zIbG2FSOOJ" role="3cpWs9">
            <property role="TrG5h" value="requiredResources" />
            <node concept="A3Dl8" id="7zIbG2FSOtP" role="1tU5fm">
              <node concept="3uibUv" id="7zIbG2FSOtS" role="A3Ik2">
                <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
              </node>
            </node>
            <node concept="10Nm6u" id="1b3ykoT$Voo" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="1b3ykoT$JpF" role="3cqZAp">
          <node concept="3cpWsn" id="1b3ykoT$JpG" role="3cpWs9">
            <property role="TrG5h" value="includeDependencies" />
            <node concept="10P_77" id="1b3ykoT$IY9" role="1tU5fm" />
            <node concept="2OqwBi" id="1b3ykoT$JpH" role="33vP2m">
              <node concept="2YIFZM" id="1b3ykoT$JpI" role="2Oq$k0">
                <ref role="37wK5l" to="gk56:~AdvancedSettings.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="gk56:~AdvancedSettings" resolve="AdvancedSettings" />
              </node>
              <node concept="2PDubS" id="1b3ykoT$JpJ" role="2OqNvi">
                <ref role="37wK5l" to="gk56:~AdvancedSettings.getBoolean(java.lang.String)" resolve="getBoolean" />
                <node concept="Xl_RD" id="1b3ykoT$JpK" role="37wK5m">
                  <property role="Xl_RC" value="mps.make.include.dependencies" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1b3ykoT_b0Z" role="3cqZAp">
          <node concept="3clFbS" id="1b3ykoT_b11" role="3clFbx">
            <node concept="3SKdUt" id="7zIbG2FTrL8" role="3cqZAp">
              <node concept="1PaTwC" id="7zIbG2FTrL9" role="1aUNEU">
                <node concept="3oM_SD" id="7zIbG2FTtD0" role="1PaTwD">
                  <property role="3oM_SC" value="add" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtE0" role="1PaTwD">
                  <property role="3oM_SC" value="all" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtF1" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;dirty&quot;" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtH1" role="1PaTwD">
                  <property role="3oM_SC" value="models" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtJ2" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtJ8" role="1PaTwD">
                  <property role="3oM_SC" value="modules" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtN7" role="1PaTwD">
                  <property role="3oM_SC" value="required" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtOd" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtPk" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="7zIbG2FTtQs" role="1PaTwD">
                  <property role="3oM_SC" value="build" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7zIbG2FTfqO" role="3cqZAp">
              <node concept="3cpWsn" id="7zIbG2FTfqP" role="3cpWs9">
                <property role="TrG5h" value="buildDeps" />
                <node concept="3uibUv" id="7zIbG2FTeFy" role="1tU5fm">
                  <ref role="3uigEE" node="786n80irH7e" resolve="BuildDependencies" />
                </node>
                <node concept="2ShNRf" id="7zIbG2FTfqQ" role="33vP2m">
                  <node concept="1pGfFk" id="7zIbG2FTfqR" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="786n80irHjk" resolve="BuildDependencies" />
                    <node concept="37vLTw" id="7zIbG2FTfqS" role="37wK5m">
                      <ref role="3cqZAo" node="7iCFfvQueLy" resolve="myProject" />
                    </node>
                    <node concept="37vLTw" id="3$_144Vf228" role="37wK5m">
                      <ref role="3cqZAo" node="3$_144VeNsF" resolve="selectedModules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1b3ykoT$R8y" role="3cqZAp">
              <node concept="37vLTI" id="1b3ykoT$R8$" role="3clFbG">
                <node concept="2OqwBi" id="7zIbG2FSOOK" role="37vLTx">
                  <node concept="2ShNRf" id="7zIbG2FSOOL" role="2Oq$k0">
                    <node concept="1pGfFk" id="7zIbG2FSOOM" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="fn29:2O5mK2f2Efu" resolve="ModelsToResources" />
                      <node concept="2OqwBi" id="7zIbG2FTmKL" role="37wK5m">
                        <node concept="37vLTw" id="7zIbG2FTmKM" role="2Oq$k0">
                          <ref role="3cqZAo" node="7zIbG2FTfqP" resolve="buildDeps" />
                        </node>
                        <node concept="liA8E" id="7zIbG2FTmKN" role="2OqNvi">
                          <ref role="37wK5l" node="7zIbG2FLL51" resolve="dirtyModelsFromRequiredModules" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="4yMTmII4iEP" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7zIbG2FSOOO" role="2OqNvi">
                    <ref role="37wK5l" to="fn29:713BH0S$TAn" resolve="resources" />
                  </node>
                </node>
                <node concept="37vLTw" id="1b3ykoT$R8C" role="37vLTJ">
                  <ref role="3cqZAo" node="7zIbG2FSOOJ" resolve="requiredResources" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1b3ykoT_dQS" role="3clFbw">
            <ref role="3cqZAo" node="1b3ykoT$JpG" resolve="includeDependencies" />
          </node>
        </node>
        <node concept="3clFbH" id="3$_144Vf4cs" role="3cqZAp" />
        <node concept="3cpWs6" id="4yMTmII4o8g" role="3cqZAp">
          <node concept="2OqwBi" id="4yMTmII4wIk" role="3cqZAk">
            <node concept="37vLTw" id="4yMTmII4tXC" role="2Oq$k0">
              <ref role="3cqZAo" node="3kXJ3GPF_vW" resolve="selectedResources" />
            </node>
            <node concept="3QWeyG" id="4yMTmII4yJw" role="2OqNvi">
              <node concept="37vLTw" id="4yMTmII4$ZD" role="576Qk">
                <ref role="3cqZAo" node="7zIbG2FSOOJ" resolve="requiredResources" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7tZeFupJF17" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4sD81wAAjpk" role="jymVt" />
    <node concept="2YIFZL" id="4sD81wABqSF" role="jymVt">
      <property role="TrG5h" value="withImports" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4sD81wAAqX5" role="3clF47">
        <node concept="3cpWs8" id="4sD81wAB4se" role="3cqZAp">
          <node concept="3cpWsn" id="4sD81wAB4sf" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4sD81wAB4sg" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="4sD81wAB6$Q" role="33vP2m">
              <node concept="37vLTw" id="4sD81wAB6v1" role="2Oq$k0">
                <ref role="3cqZAo" node="4sD81wAAsRa" resolve="m" />
              </node>
              <node concept="liA8E" id="4sD81wAB6PO" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4sD81wAAx$O" role="3cqZAp">
          <node concept="3clFbC" id="4sD81wAAy3s" role="3clFbw">
            <node concept="10Nm6u" id="4sD81wAAycx" role="3uHU7w" />
            <node concept="37vLTw" id="4sD81wABa_R" role="3uHU7B">
              <ref role="3cqZAo" node="4sD81wAB4sf" resolve="repo" />
            </node>
          </node>
          <node concept="3clFbS" id="4sD81wAAx$Q" role="3clFbx">
            <node concept="3cpWs6" id="4sD81wAAyq2" role="3cqZAp">
              <node concept="2ShNRf" id="4sD81wAA_oY" role="3cqZAk">
                <node concept="2HTt$P" id="4sD81wAAJWT" role="2ShVmc">
                  <node concept="3uibUv" id="4sD81wAALP9" role="2HTBi0">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="37vLTw" id="4sD81wAANB6" role="2HTEbv">
                    <ref role="3cqZAo" node="4sD81wAAsRa" resolve="m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4sD81wAAWtD" role="3cqZAp">
          <node concept="3cpWsn" id="4sD81wAAWtE" role="3cpWs9">
            <property role="TrG5h" value="importedModels" />
            <node concept="A3Dl8" id="4sD81wAAYqv" role="1tU5fm">
              <node concept="3uibUv" id="4sD81wAAYPd" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
            <node concept="2OqwBi" id="4sD81wAAWtF" role="33vP2m">
              <node concept="2ShNRf" id="4sD81wAAWtG" role="2Oq$k0">
                <node concept="1pGfFk" id="4sD81wAAWtH" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                  <node concept="37vLTw" id="4sD81wAAWtI" role="37wK5m">
                    <ref role="3cqZAo" node="4sD81wAAsRa" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4sD81wAAWtJ" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelImports.getImportedModels()" resolve="getImportedModels" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Nk$bNLSGwn" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoj78" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoj79" role="1PaTwD">
              <property role="3oM_SC" value="imported" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7a" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7b" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7c" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7d" role="1PaTwD">
              <property role="3oM_SC" value="necessarily" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7e" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7f" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7g" role="1PaTwD">
              <property role="3oM_SC" value="project," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7h" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7i" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7j" role="1PaTwD">
              <property role="3oM_SC" value="belong" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7k" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7l" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7m" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7n" role="1PaTwD">
              <property role="3oM_SC" value="repository" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7o" role="1PaTwD">
              <property role="3oM_SC" value="(and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7p" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7q" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7r" role="1PaTwD">
              <property role="3oM_SC" value="visible" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7s" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7t" role="1PaTwD">
              <property role="3oM_SC" value="project's)," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Nk$bNLSHdB" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoj7u" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoj7v" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7w" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7x" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7y" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7z" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7$" role="1PaTwD">
              <property role="3oM_SC" value="(MGSM" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7_" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7A" role="1PaTwD">
              <property role="3oM_SC" value="track" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7B" role="1PaTwD">
              <property role="3oM_SC" value="'generation'" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7C" role="1PaTwD">
              <property role="3oM_SC" value="status" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7D" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7E" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7F" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7G" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7H" role="1PaTwD">
              <property role="3oM_SC" value="report" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7I" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7J" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7K" role="1PaTwD">
              <property role="3oM_SC" value="dirty)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4sD81wABle9" role="3cqZAp">
          <node concept="2OqwBi" id="4SuBGeChG9V" role="3cqZAk">
            <node concept="2OqwBi" id="Nk$bNLSkn3" role="2Oq$k0">
              <node concept="2OqwBi" id="Nk$bNLSiw7" role="2Oq$k0">
                <node concept="2OqwBi" id="4sD81wABlec" role="2Oq$k0">
                  <node concept="37vLTw" id="4sD81wABled" role="2Oq$k0">
                    <ref role="3cqZAo" node="4sD81wAAWtE" resolve="importedModels" />
                  </node>
                  <node concept="3$u5V9" id="4sD81wABlee" role="2OqNvi">
                    <node concept="1bVj0M" id="4sD81wABlef" role="23t8la">
                      <node concept="3clFbS" id="4sD81wABleg" role="1bW5cS">
                        <node concept="3clFbF" id="4sD81wABleh" role="3cqZAp">
                          <node concept="2OqwBi" id="4sD81wABlei" role="3clFbG">
                            <node concept="37vLTw" id="4sD81wABlej" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XuC" resolve="it" />
                            </node>
                            <node concept="liA8E" id="4sD81wABlek" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="4sD81wABlel" role="37wK5m">
                                <ref role="3cqZAo" node="4sD81wAB4sf" resolve="repo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XuC" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0XuD" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1KnU$U" id="Nk$bNLSjEs" role="2OqNvi" />
              </node>
              <node concept="3zZkjj" id="Nk$bNLSn0j" role="2OqNvi">
                <node concept="1bVj0M" id="Nk$bNLSn0l" role="23t8la">
                  <node concept="3clFbS" id="Nk$bNLSn0m" role="1bW5cS">
                    <node concept="3clFbF" id="Nk$bNLS$r$" role="3cqZAp">
                      <node concept="3fqX7Q" id="Nk$bNLSFuT" role="3clFbG">
                        <node concept="2OqwBi" id="Nk$bNLSFuV" role="3fr31v">
                          <node concept="37vLTw" id="Nk$bNLSFuW" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XuE" resolve="it" />
                          </node>
                          <node concept="liA8E" id="Nk$bNLSFuX" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XuE" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XuF" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="4Tj9Z" id="4SuBGeCilju" role="2OqNvi">
              <node concept="2ShNRf" id="4SuBGeCimdH" role="576Qk">
                <node concept="2HTt$P" id="4SuBGeCiJEI" role="2ShVmc">
                  <node concept="3uibUv" id="4SuBGeCiKu_" role="2HTBi0">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="37vLTw" id="4SuBGeCiKSw" role="2HTEbv">
                    <ref role="3cqZAo" node="4sD81wAAsRa" resolve="m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4sD81wAAsRa" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="3uibUv" id="4sD81wAAsR9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="A3Dl8" id="4sD81wAAqpd" role="3clF45">
        <node concept="3uibUv" id="4sD81wAAqW_" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4sD81wAAmRi" role="1B3o_S" />
      <node concept="P$JXv" id="4sD81wABwDn" role="lGtFl">
        <node concept="TUZQ0" id="4sD81wABwDq" role="3nqlJM">
          <property role="TUZQ4" value="model" />
          <node concept="zr_55" id="4sD81wABwDs" role="zr_5Q">
            <ref role="zr_51" node="4sD81wAAsRa" resolve="m" />
          </node>
        </node>
        <node concept="x79VA" id="4sD81wABwDt" role="3nqlJM">
          <property role="x79VB" value="model and its imports, if could be resolved" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sD81wAAjvn" role="jymVt" />
    <node concept="3clFb_" id="3Icf_clbbfq" role="jymVt">
      <property role="TrG5h" value="allModelsOf" />
      <node concept="3Tm6S6" id="7iCFfvQNnxI" role="1B3o_S" />
      <node concept="3clFbS" id="3Icf_clbbft" role="3clF47">
        <node concept="3cpWs8" id="3Icf_clborf" role="3cqZAp">
          <node concept="3cpWsn" id="3Icf_clborg" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="1eOMI4" id="3Icf_clboE1" role="33vP2m">
              <node concept="10QFUN" id="3Icf_clboEl" role="1eOMHV">
                <node concept="A3Dl8" id="3Icf_clboEm" role="10QFUM">
                  <node concept="3uibUv" id="9enslR2drG" role="A3Ik2">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Icf_clboEo" role="10QFUP">
                  <node concept="liA8E" id="3Icf_clboEq" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglf6D" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Icf_clbord" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="A3Dl8" id="3Icf_clborh" role="1tU5fm">
              <node concept="3uibUv" id="9enslR2drF" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3Icf_clboEH" role="3cqZAp">
          <node concept="3clFbS" id="3Icf_clboEI" role="3clFbx">
            <node concept="3SKdUt" id="7MHLsIR3Smg" role="3cqZAp">
              <node concept="1PaTwC" id="7MHLsIR3Smh" role="1aUNEU">
                <node concept="3oM_SD" id="7MHLsIR3Uj2" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Uj4" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ujg" role="1PaTwD">
                  <property role="3oM_SC" value="care" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ujk" role="1PaTwD">
                  <property role="3oM_SC" value="about" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ujp" role="1PaTwD">
                  <property role="3oM_SC" value="all" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ujv" role="1PaTwD">
                  <property role="3oM_SC" value="known" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3UjA" role="1PaTwD">
                  <property role="3oM_SC" value="generators" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3UjI" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3UjR" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Uk1" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ukc" role="1PaTwD">
                  <property role="3oM_SC" value="-" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Uko" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Uk_" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3UkN" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ul2" role="1PaTwD">
                  <property role="3oM_SC" value="standalone" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Uli" role="1PaTwD">
                  <property role="3oM_SC" value="generator" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ulz" role="1PaTwD">
                  <property role="3oM_SC" value="module," />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7MHLsIR3Wnq" role="3cqZAp">
              <node concept="1PaTwC" id="7MHLsIR3Wnr" role="1aUNEU">
                <node concept="3oM_SD" id="7MHLsIR3YjC" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3YjM" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3YjP" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3YjT" role="1PaTwD">
                  <property role="3oM_SC" value="processed" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ym7" role="1PaTwD">
                  <property role="3oM_SC" value="directly" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Yme" role="1PaTwD">
                  <property role="3oM_SC" value="(as" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ymu" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3YmB" role="1PaTwD">
                  <property role="3oM_SC" value="context" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Ylx" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3YmT" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3Yn4" role="1PaTwD">
                  <property role="3oM_SC" value="#modules()," />
                </node>
                <node concept="3oM_SD" id="7MHLsIR3YnC" role="1PaTwD">
                  <property role="3oM_SC" value="above)" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7iCFfvQNv_o" role="3cqZAp">
              <node concept="3cpWsn" id="7iCFfvQNv_p" role="3cpWs9">
                <property role="TrG5h" value="generators" />
                <node concept="A3Dl8" id="7iCFfvQNwhh" role="1tU5fm">
                  <node concept="3uibUv" id="7iCFfvQNwhj" role="A3Ik2">
                    <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7iCFfvQNv_q" role="33vP2m">
                  <node concept="liA8E" id="7iCFfvQNv_r" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~Language.getOwnedGenerators()" resolve="getOwnedGenerators" />
                  </node>
                  <node concept="1eOMI4" id="7iCFfvQNv_s" role="2Oq$k0">
                    <node concept="10QFUN" id="7iCFfvQNv_t" role="1eOMHV">
                      <node concept="3uibUv" id="7iCFfvQNv_u" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                      </node>
                      <node concept="37vLTw" id="7iCFfvQNv_v" role="10QFUP">
                        <ref role="3cqZAo" node="3Icf_clbord" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7iCFfvQN$_e" role="3cqZAp">
              <node concept="2OqwBi" id="7iCFfvQNrCV" role="3cqZAk">
                <node concept="37vLTw" id="7iCFfvQNrkZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Icf_clborg" resolve="models" />
                </node>
                <node concept="3QWeyG" id="7iCFfvQNts8" role="2OqNvi">
                  <node concept="2OqwBi" id="7iCFfvQNwBz" role="576Qk">
                    <node concept="37vLTw" id="7iCFfvQNv_w" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCFfvQNv_p" resolve="generators" />
                    </node>
                    <node concept="3goQfb" id="7iCFfvQNymg" role="2OqNvi">
                      <node concept="1bVj0M" id="7iCFfvQNymi" role="23t8la">
                        <node concept="3clFbS" id="7iCFfvQNymj" role="1bW5cS">
                          <node concept="3clFbF" id="7iCFfvQNyBP" role="3cqZAp">
                            <node concept="1rXfSq" id="7iCFfvQNyBR" role="3clFbG">
                              <ref role="37wK5l" node="3Icf_clbbfq" resolve="allModelsOf" />
                              <node concept="37vLTw" id="7iCFfvQNyTr" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XuG" resolve="gen" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XuG" role="1bW2Oz">
                          <property role="TrG5h" value="gen" />
                          <node concept="2jxLKc" id="5W7E4fV0XuH" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3Icf_clboEM" role="3clFbw">
            <node concept="3uibUv" id="3Icf_clboEQ" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm7IL" role="2ZW6bz">
              <ref role="3cqZAo" node="3Icf_clbord" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iCFfvQO3jL" role="3cqZAp">
          <node concept="37vLTw" id="7iCFfvQOaeC" role="3cqZAk">
            <ref role="3cqZAo" node="3Icf_clborg" resolve="models" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3Icf_clbdnk" role="3clF45">
        <node concept="3uibUv" id="9enslR2drE" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="3Icf_clbord" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="4O9Oe_frzj0" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7tZeFupJF4J" role="1B3o_S" />
  </node>
  <node concept="tC5Ba" id="7tZeFupJF5J">
    <property role="TrG5h" value="Make" />
    <property role="3GE5qa" value="Make.groups" />
    <node concept="ftmFs" id="7tZeFupJF5K" role="ftER_">
      <node concept="tCFHf" id="7tZeFupJF5L" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF8H" resolve="MakeSelection" />
        <node concept="3clFbT" id="7tZeFupJF5M" role="2J__8u">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="tCFHf" id="7tZeFupJF5N" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF8H" resolve="MakeSelection" />
        <node concept="3clFbT" id="7tZeFupJF5O" role="2J__8u">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="10WQ6h" id="7tZeFupJF5P" role="ftvYc">
        <property role="TrG5h" value="preview" />
      </node>
    </node>
    <node concept="tT9cl" id="7tZeFupJF5Q" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:nyHhwyCI_x" resolve="make" />
    </node>
    <node concept="tT9cl" id="miYJQAr4kI" role="2f5YQi">
      <ref role="tU$_T" to="tprs:miYJQAr2Uj" resolve="CommonModuleActions" />
      <ref role="2f8Tey" to="tprs:miYJQAr2Um" resolve="make" />
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJF5V">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="MakeProject" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Make _Project" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7tZeFupJF5X" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDj4" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7tZeFupJF5Y" role="tncku">
      <node concept="3clFbS" id="7tZeFupJF5Z" role="2VODD2">
        <node concept="3cpWs8" id="4O9Oe_ft4oO" role="3cqZAp">
          <node concept="3cpWsn" id="4O9Oe_ft4oP" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="_YKpA" id="4O9Oe_ft7$X" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_ft7$Y" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="4O9Oe_ft7_0" role="33vP2m">
              <node concept="Tc6Ow" id="4O9Oe_ft7_2" role="2ShVmc">
                <node concept="3uibUv" id="4O9Oe_ft7_4" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="10QFUN" id="4O9Oe_ft4p3" role="I$8f6">
                  <node concept="A3Dl8" id="4O9Oe_ft4p6" role="10QFUM">
                    <node concept="3uibUv" id="4O9Oe_ft4p9" role="A3Ik2">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4O9Oe_ft4oS" role="10QFUP">
                    <node concept="liA8E" id="4O9Oe_ft4oT" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModules()" resolve="getModules" />
                    </node>
                    <node concept="2OqwBi" id="4O9Oe_ft4oU" role="2Oq$k0">
                      <node concept="2WthIp" id="4O9Oe_ft4oV" role="2Oq$k0" />
                      <node concept="1DTwFV" id="4O9Oe_ft4oW" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJF5X" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJF60" role="3cqZAp">
          <node concept="2OqwBi" id="7tZeFupJF61" role="3clFbG">
            <node concept="2ShNRf" id="7tZeFupJF62" role="2Oq$k0">
              <node concept="1pGfFk" id="7tZeFupJF63" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQDmTD" role="37wK5m">
                  <node concept="2ShNRf" id="7tZeFupJF67" role="2Oq$k0">
                    <node concept="1pGfFk" id="7tZeFupJF68" role="2ShVmc">
                      <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                      <node concept="2OqwBi" id="7tZeFupJF69" role="37wK5m">
                        <node concept="2WthIp" id="7tZeFupJF6a" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7iCFfvQDoyQ" role="2OqNvi">
                          <ref role="2WH_rO" node="7tZeFupJF5X" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQDpnY" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvBeE" resolve="modules" />
                    <node concept="37vLTw" id="7iCFfvQDp$r" role="37wK5m">
                      <ref role="3cqZAo" node="4O9Oe_ft4oP" resolve="modules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7tZeFupJF6l" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7Ob_3slocDX" role="tmbBb">
      <node concept="3clFbS" id="7Ob_3slocDY" role="2VODD2">
        <node concept="3clFbF" id="7Ob_3slocE7" role="3cqZAp">
          <node concept="3fqX7Q" id="7Ob_3slop_S" role="3clFbG">
            <node concept="2OqwBi" id="IIVxgkMR_Y" role="3fr31v">
              <node concept="liA8E" id="IIVxgkMR_Z" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
              </node>
              <node concept="2OqwBi" id="IIVxgkMRA0" role="2Oq$k0">
                <node concept="2OqwBi" id="IIVxgkMRA1" role="2Oq$k0">
                  <node concept="2WthIp" id="IIVxgkMRA2" role="2Oq$k0" />
                  <node concept="1DTwFV" id="IIVxgkMRA3" role="2OqNvi">
                    <ref role="2WH_rO" node="7tZeFupJF5X" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="IIVxgkMRA4" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="IIVxgkMRA5" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGB3" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphP42Z" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Compile" resolve="Compile" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7tZeFupJF6m">
    <property role="TrG5h" value="ProjectMake" />
    <property role="3GE5qa" value="Make.groups" />
    <node concept="tT9cl" id="7tZeFupJF6n" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4HGL" resolve="ProjectActions" />
      <ref role="2f8Tey" to="tprs:44Q0udIi4Db" resolve="make" />
    </node>
    <node concept="ftmFs" id="7tZeFupJF6o" role="ftER_">
      <node concept="tCFHf" id="7tZeFupJF6p" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF5V" resolve="MakeProject" />
      </node>
      <node concept="tCFHf" id="7tZeFupJF6q" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJFiu" resolve="RebuildProject" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7tZeFupJF6r">
    <property role="TrG5h" value="GlobalMake" />
    <property role="3GE5qa" value="Make.groups" />
    <node concept="tT9cl" id="7tZeFupJF6s" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hF$rJGH" resolve="Build" />
      <ref role="2f8Tey" to="tprs:4XkeBbjB6J_" resolve="make" />
    </node>
    <node concept="ftmFs" id="7tZeFupJF6t" role="ftER_">
      <node concept="2a7GMi" id="7qrMIxDPlKb" role="ftvYc" />
      <node concept="tCFHf" id="7tZeFupJF6u" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF5V" resolve="MakeProject" />
      </node>
      <node concept="tCFHf" id="7tZeFupJF6$" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJFiu" resolve="RebuildProject" />
      </node>
      <node concept="2a7GMi" id="7qrMIxDPlK7" role="ftvYc" />
      <node concept="tCFHf" id="7tZeFupJF6v" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJFcP" resolve="MakeSelectedModules" />
      </node>
      <node concept="tCFHf" id="7tZeFupJF6w" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJFbO" resolve="RebuildSelectedModules" />
      </node>
      <node concept="2a7GMi" id="7qrMIxDPlK9" role="ftvYc" />
      <node concept="tCFHf" id="64rTXX8JXhG" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJEWU" resolve="MakeSelectedModels" />
      </node>
      <node concept="tCFHf" id="7tZeFupJF6y" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJFdR" resolve="RebuildSelectedModels" />
      </node>
      <node concept="2a7GMi" id="7tZeFupJF6z" role="ftvYc" />
    </node>
  </node>
  <node concept="312cEu" id="7tZeFupJF6_">
    <property role="TrG5h" value="MakeActionImpl" />
    <property role="3GE5qa" value="Make" />
    <node concept="312cEg" id="7tZeFupJF8s" role="jymVt">
      <property role="TrG5h" value="myParams" />
      <node concept="3Tm6S6" id="7tZeFupJF8t" role="1B3o_S" />
      <node concept="3uibUv" id="7tZeFupJF8u" role="1tU5fm">
        <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xMoDGgBeFU" role="jymVt" />
    <node concept="3clFbW" id="7iCFfvQxkFD" role="jymVt">
      <node concept="3clFbS" id="7iCFfvQxkFE" role="3clF47">
        <node concept="3clFbF" id="7iCFfvQxkFL" role="3cqZAp">
          <node concept="37vLTI" id="7iCFfvQxkFM" role="3clFbG">
            <node concept="37vLTw" id="7iCFfvQxkFN" role="37vLTx">
              <ref role="3cqZAo" node="7iCFfvQxkFZ" resolve="params" />
            </node>
            <node concept="2OqwBi" id="7iCFfvQxkFO" role="37vLTJ">
              <node concept="Xjq3P" id="7iCFfvQxkFP" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCFfvQxkFQ" role="2OqNvi">
                <ref role="2Oxat5" node="7tZeFupJF8s" resolve="myParams" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7iCFfvQxkFZ" role="3clF46">
        <property role="TrG5h" value="params" />
        <node concept="3uibUv" id="7iCFfvQxkG0" role="1tU5fm">
          <ref role="3uigEE" node="7tZeFupJEXV" resolve="MakeActionParameters" />
        </node>
        <node concept="2AHcQZ" id="7iCFfvQxq9m" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="7iCFfvQxkG1" role="3clF45" />
      <node concept="3Tm1VV" id="7iCFfvQxkG2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6xMoDGgBeXV" role="jymVt" />
    <node concept="3clFb_" id="7tZeFupJF6A" role="jymVt">
      <property role="TrG5h" value="executeAction" />
      <node concept="3cqZAl" id="7tZeFupJF6B" role="3clF45" />
      <node concept="3clFbS" id="7tZeFupJF6D" role="3clF47">
        <node concept="3cpWs8" id="5wEedBsf0hQ" role="3cqZAp">
          <node concept="3cpWsn" id="5wEedBsf0hR" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="true" />
            <node concept="2OqwBi" id="5wEedBsf1ug" role="33vP2m">
              <node concept="liA8E" id="5wEedBsf20D" role="2OqNvi">
                <ref role="37wK5l" node="7iCFfvQwTaK" resolve="getProject" />
              </node>
              <node concept="37vLTw" id="7iCFfvQxnn7" role="2Oq$k0">
                <ref role="3cqZAo" node="7tZeFupJF8s" resolve="myParams" />
              </node>
            </node>
            <node concept="3uibUv" id="5wEedBsf0hS" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Y18t$8Yi_s" role="3cqZAp">
          <node concept="3clFbS" id="1Y18t$8Yi_v" role="3clFbx">
            <node concept="YS8fn" id="1Y18t$8YBiV" role="3cqZAp">
              <node concept="2ShNRf" id="1Y18t$8YBkF" role="YScLw">
                <node concept="1pGfFk" id="1Y18t$8YCHx" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="6xMoDGgAx6X" role="37wK5m">
                    <property role="Xl_RC" value="should be called outside of command" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Y18t$8YAKy" role="3clFbw">
            <node concept="2OqwBi" id="6xMoDGgAwNb" role="2Oq$k0">
              <node concept="37vLTw" id="6xMoDGgAwFi" role="2Oq$k0">
                <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
              </node>
              <node concept="liA8E" id="6xMoDGgAx1S" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1Y18t$8YBcr" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.isCommandAction()" resolve="isCommandAction" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="11SQcnY$viq" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoj7L" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoj7M" role="1PaTwD">
              <property role="3oM_SC" value="save" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7N" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7O" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7P" role="1PaTwD">
              <property role="3oM_SC" value="launching" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj7Q" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="236SrjKnNdH" role="3cqZAp">
          <node concept="2OqwBi" id="236SrjKoyEL" role="3clFbG">
            <node concept="2ShNRf" id="236SrjKnNdD" role="2Oq$k0">
              <node concept="1pGfFk" id="236SrjKoxbK" role="2ShVmc">
                <ref role="37wK5l" to="hlw7:~SaveRepositoryCommand.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="SaveRepositoryCommand" />
                <node concept="2OqwBi" id="236SrjKoxDd" role="37wK5m">
                  <node concept="37vLTw" id="236SrjKoxcu" role="2Oq$k0">
                    <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                  </node>
                  <node concept="liA8E" id="236SrjKoyCt" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5g8XZ9otPU6" role="2OqNvi">
              <ref role="37wK5l" to="hlw7:~SaveRepositoryCommand.executeAndWait()" resolve="executeAndWait" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="236SrjKnykS" role="3cqZAp" />
        <node concept="3clFbH" id="1AfPmE4tJSb" role="3cqZAp" />
        <node concept="3cpWs8" id="1AfPmE4ty$2" role="3cqZAp">
          <node concept="3cpWsn" id="1AfPmE4ty$3" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="1AfPmE4ty$4" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6UgUnh3y1LT" role="3cqZAp">
          <node concept="3clFbS" id="6UgUnh3y1LV" role="3clFbx">
            <node concept="3clFbF" id="6UgUnh3xZOK" role="3cqZAp">
              <node concept="37vLTI" id="6UgUnh3xZOM" role="3clFbG">
                <node concept="2ShNRf" id="1AfPmE4ty$5" role="37vLTx">
                  <node concept="1pGfFk" id="6xMoDGgBDHp" role="2ShVmc">
                    <ref role="37wK5l" to="vqh0:~MakeSession.&lt;init&gt;(jetbrains.mps.project.Project,jetbrains.mps.messages.IMessageHandler,boolean)" resolve="MakeSession" />
                    <node concept="37vLTw" id="2BjwmTy783Z" role="37wK5m">
                      <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                    </node>
                    <node concept="2ShNRf" id="7JDtVAB8VTA" role="37wK5m">
                      <node concept="1pGfFk" id="7JDtVAB91xk" role="2ShVmc">
                        <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                        <node concept="37vLTw" id="7JDtVAB91Ew" role="37wK5m">
                          <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7iCFfvQy3sT" role="37wK5m">
                      <node concept="37vLTw" id="7iCFfvQy3jK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7tZeFupJF8s" resolve="myParams" />
                      </node>
                      <node concept="liA8E" id="7iCFfvQy3SZ" role="2OqNvi">
                        <ref role="37wK5l" node="7iCFfvQxr$v" resolve="isCleanMake" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6UgUnh3xZOQ" role="37vLTJ">
                  <ref role="3cqZAo" node="1AfPmE4ty$3" resolve="session" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6UgUnh3y$0p" role="3clFbw">
            <node concept="2OqwBi" id="6UgUnh3y4Il" role="2Oq$k0">
              <node concept="37vLTw" id="6UgUnh3y44r" role="2Oq$k0">
                <ref role="3cqZAo" node="7tZeFupJF8s" resolve="myParams" />
              </node>
              <node concept="liA8E" id="6UgUnh3y5Gc" role="2OqNvi">
                <ref role="37wK5l" node="6UgUnh3yaVY" resolve="additionalFacets" />
              </node>
            </node>
            <node concept="1v1jN8" id="6UgUnh3yCBC" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="6UgUnh3yFui" role="9aQIa">
            <node concept="3clFbS" id="6UgUnh3yFuj" role="9aQI4">
              <node concept="3clFbF" id="6UgUnh3yN9R" role="3cqZAp">
                <node concept="37vLTI" id="6UgUnh3yO5h" role="3clFbG">
                  <node concept="37vLTw" id="6UgUnh3yN9Q" role="37vLTJ">
                    <ref role="3cqZAo" node="1AfPmE4ty$3" resolve="session" />
                  </node>
                  <node concept="2ShNRf" id="6UgUnh3ySk6" role="37vLTx">
                    <node concept="YeOm9" id="6UgUnh3yT6I" role="2ShVmc">
                      <node concept="1Y3b0j" id="6UgUnh3yT6L" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="vqh0:~MakeSession.&lt;init&gt;(jetbrains.mps.project.Project,jetbrains.mps.messages.IMessageHandler,boolean)" resolve="MakeSession" />
                        <ref role="1Y3XeK" to="vqh0:~MakeSession" resolve="MakeSession" />
                        <node concept="3Tm1VV" id="6UgUnh3yT6M" role="1B3o_S" />
                        <node concept="37vLTw" id="6UgUnh3ySk8" role="37wK5m">
                          <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                        </node>
                        <node concept="2ShNRf" id="6UgUnh3ySk9" role="37wK5m">
                          <node concept="1pGfFk" id="6UgUnh3ySka" role="2ShVmc">
                            <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                            <node concept="37vLTw" id="6UgUnh3ySkb" role="37wK5m">
                              <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6UgUnh3ySkc" role="37wK5m">
                          <node concept="37vLTw" id="6UgUnh3ySkd" role="2Oq$k0">
                            <ref role="3cqZAo" node="7tZeFupJF8s" resolve="myParams" />
                          </node>
                          <node concept="liA8E" id="6UgUnh3ySke" role="2OqNvi">
                            <ref role="37wK5l" node="7iCFfvQxr$v" resolve="isCleanMake" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="6UgUnh3yTL1" role="jymVt">
                          <property role="TrG5h" value="toScript" />
                          <node concept="3Tm1VV" id="6UgUnh3yTL2" role="1B3o_S" />
                          <node concept="3uibUv" id="6UgUnh3yTL4" role="3clF45">
                            <ref role="3uigEE" to="i9so:5mqBoD3U3Wb" resolve="IScript" />
                          </node>
                          <node concept="37vLTG" id="6UgUnh3yTL5" role="3clF46">
                            <property role="TrG5h" value="scriptBuilder" />
                            <node concept="3uibUv" id="6UgUnh3yTL6" role="1tU5fm">
                              <ref role="3uigEE" to="i9so:1i9nLvh04oW" resolve="ScriptBuilder" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6UgUnh3yTL8" role="3clF47">
                            <node concept="3clFbF" id="6UgUnh3yYPj" role="3cqZAp">
                              <node concept="2OqwBi" id="6UgUnh3yZHr" role="3clFbG">
                                <node concept="37vLTw" id="6UgUnh3yYPh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6UgUnh3yTL5" resolve="scriptBuilder" />
                                </node>
                                <node concept="liA8E" id="6UgUnh3z0IJ" role="2OqNvi">
                                  <ref role="37wK5l" to="i9so:1i9nLvh04qj" resolve="withFacetNames" />
                                  <node concept="2OqwBi" id="6UgUnh3z4bb" role="37wK5m">
                                    <node concept="37vLTw" id="6UgUnh3z3rR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7tZeFupJF8s" resolve="myParams" />
                                    </node>
                                    <node concept="liA8E" id="6UgUnh3z51O" role="2OqNvi">
                                      <ref role="37wK5l" node="6UgUnh3yaVY" resolve="additionalFacets" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="6UgUnh3zfkU" role="3cqZAp">
                              <node concept="3nyPlj" id="6UgUnh3zfkW" role="3cqZAk">
                                <ref role="37wK5l" to="vqh0:~MakeSession.toScript(jetbrains.mps.make.script.ScriptBuilder)" resolve="toScript" />
                                <node concept="37vLTw" id="6UgUnh3zfkX" role="37wK5m">
                                  <ref role="3cqZAo" node="6UgUnh3yTL5" resolve="scriptBuilder" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6UgUnh3yTL9" role="2AJF6D">
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
        </node>
        <node concept="3cpWs8" id="JxgaYvAgxE" role="3cqZAp">
          <node concept="3cpWsn" id="JxgaYvAgxF" role="3cpWs9">
            <property role="TrG5h" value="makeService" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="JxgaYvAgxC" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
            </node>
            <node concept="2OqwBi" id="JxgaYvAZ_I" role="33vP2m">
              <node concept="2OqwBi" id="JxgaYvAW_A" role="2Oq$k0">
                <node concept="37vLTw" id="JxgaYvAW7v" role="2Oq$k0">
                  <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                </node>
                <node concept="liA8E" id="JxgaYvAXg$" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="JxgaYvAYWd" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="JxgaYvB03W" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1AfPmE4tJRS" role="3cqZAp">
          <node concept="2OqwBi" id="1AfPmE4tJRT" role="3clFbw">
            <node concept="37vLTw" id="JxgaYvAgxH" role="2Oq$k0">
              <ref role="3cqZAo" node="JxgaYvAgxF" resolve="makeService" />
            </node>
            <node concept="liA8E" id="1AfPmE4tJRV" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N63W" resolve="openNewSession" />
              <node concept="37vLTw" id="3GM_nagTyAS" role="37wK5m">
                <ref role="3cqZAo" node="1AfPmE4ty$3" resolve="session" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1AfPmE4tJRX" role="3clFbx">
            <node concept="3SKdUt" id="ZqkXIVTEHe" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoj7R" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoj7S" role="1PaTwD">
                  <property role="3oM_SC" value="empty" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7T" role="1PaTwD">
                  <property role="3oM_SC" value="collection" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7U" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7V" role="1PaTwD">
                  <property role="3oM_SC" value="fine," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7W" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7X" role="1PaTwD">
                  <property role="3oM_SC" value="up" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7Y" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj7Z" role="1PaTwD">
                  <property role="3oM_SC" value="make" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj80" role="1PaTwD">
                  <property role="3oM_SC" value="service" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj81" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj82" role="1PaTwD">
                  <property role="3oM_SC" value="report" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj83" role="1PaTwD">
                  <property role="3oM_SC" value="there's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj84" role="1PaTwD">
                  <property role="3oM_SC" value="nothing" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj85" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj86" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj87" role="1PaTwD">
                  <property role="3oM_SC" value="(odd," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj88" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj89" role="1PaTwD">
                  <property role="3oM_SC" value="fine" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8a" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8b" role="1PaTwD">
                  <property role="3oM_SC" value="now." />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8c" role="1PaTwD">
                  <property role="3oM_SC" value="Action" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8d" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8e" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8f" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8g" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8h" role="1PaTwD">
                  <property role="3oM_SC" value="instead)" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4LG44qKQWIC" role="3cqZAp" />
            <node concept="3SKdUt" id="1n$sR5eZrVY" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoj8i" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoj8j" role="1PaTwD">
                  <property role="3oM_SC" value="ModelValidatorAdapter" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8k" role="1PaTwD">
                  <property role="3oM_SC" value="needs" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8l" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8m" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8n" role="1PaTwD">
                  <property role="3oM_SC" value="refactored" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8o" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8p" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8q" role="1PaTwD">
                  <property role="3oM_SC" value="mix" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8r" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8s" role="1PaTwD">
                  <property role="3oM_SC" value="checking" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8t" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8u" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8v" role="1PaTwD">
                  <property role="3oM_SC" value="UI," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8w" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8x" role="1PaTwD">
                  <property role="3oM_SC" value="might" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8y" role="1PaTwD">
                  <property role="3oM_SC" value="request" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1n$sR5eZtbQ" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoj8z" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoj8$" role="1PaTwD">
                  <property role="3oM_SC" value="write" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8_" role="1PaTwD">
                  <property role="3oM_SC" value="access" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8A" role="1PaTwD">
                  <property role="3oM_SC" value="e.g." />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8B" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8C" role="1PaTwD">
                  <property role="3oM_SC" value="focus" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8D" role="1PaTwD">
                  <property role="3oM_SC" value="lost" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8E" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8F" role="1PaTwD">
                  <property role="3oM_SC" value="eventually" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8G" role="1PaTwD">
                  <property role="3oM_SC" value="lead" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8H" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8I" role="1PaTwD">
                  <property role="3oM_SC" value="'write" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8J" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8K" role="1PaTwD">
                  <property role="3oM_SC" value="read'" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8L" role="1PaTwD">
                  <property role="3oM_SC" value="issue" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8M" role="1PaTwD">
                  <property role="3oM_SC" value="like" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4LG44qKQZeE" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoj8N" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoj8O" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8P" role="1PaTwD">
                  <property role="3oM_SC" value="https://youtrack.jetbrains.com/issue/MPS-24020." />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8Q" role="1PaTwD">
                  <property role="3oM_SC" value="Proper" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8R" role="1PaTwD">
                  <property role="3oM_SC" value="fix" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8S" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8T" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8U" role="1PaTwD">
                  <property role="3oM_SC" value="split" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8V" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8W" role="1PaTwD">
                  <property role="3oM_SC" value="check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8X" role="1PaTwD">
                  <property role="3oM_SC" value="into" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8Y" role="1PaTwD">
                  <property role="3oM_SC" value="read," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj8Z" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj90" role="1PaTwD">
                  <property role="3oM_SC" value="results" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj91" role="1PaTwD">
                  <property role="3oM_SC" value="reporting" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj92" role="1PaTwD">
                  <property role="3oM_SC" value="into" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj93" role="1PaTwD">
                  <property role="3oM_SC" value="EDT." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1n$sR5eZwyl" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoj94" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoj95" role="1PaTwD">
                  <property role="3oM_SC" value="For" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj96" role="1PaTwD">
                  <property role="3oM_SC" value="3.4" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj97" role="1PaTwD">
                  <property role="3oM_SC" value="RC," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj98" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj99" role="1PaTwD">
                  <property role="3oM_SC" value="decided" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9a" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9b" role="1PaTwD">
                  <property role="3oM_SC" value="go" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9c" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9d" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9e" role="1PaTwD">
                  <property role="3oM_SC" value="hack" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9f" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9g" role="1PaTwD">
                  <property role="3oM_SC" value="let" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9h" role="1PaTwD">
                  <property role="3oM_SC" value="SModel" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9i" role="1PaTwD">
                  <property role="3oM_SC" value="instances" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9j" role="1PaTwD">
                  <property role="3oM_SC" value="cross" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9k" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9l" role="1PaTwD">
                  <property role="3oM_SC" value="read" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoj9m" role="1PaTwD">
                  <property role="3oM_SC" value="boundary" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7tZeFupJF6E" role="3cqZAp">
              <node concept="3cpWsn" id="7tZeFupJF6F" role="3cpWs9">
                <property role="TrG5h" value="inputRes" />
                <property role="3TUv4t" value="false" />
                <node concept="_YKpA" id="6xMoDGgBhxl" role="1tU5fm">
                  <node concept="3uibUv" id="6xMoDGgBhxn" role="_ZDj9">
                    <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
                  </node>
                </node>
                <node concept="10Nm6u" id="4LT2PFqwOJu" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="1n$sR5eXxye" role="3cqZAp">
              <node concept="3cpWsn" id="1n$sR5eXxyf" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="models" />
                <node concept="3uibUv" id="1n$sR5eXxyc" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                  <node concept="3uibUv" id="1n$sR5eXy6P" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1n$sR5eXyf_" role="33vP2m">
                  <node concept="1pGfFk" id="1n$sR5eXXhz" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="1n$sR5eXYse" role="1pMfVU">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="4LT2PFqwSKR" role="3cqZAp">
              <node concept="3uVAMA" id="4LT2PFqwPXm" role="1zxBo5">
                <node concept="XOnhg" id="4LT2PFqwPXn" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dHTY3" role="1tU5fm">
                    <node concept="3uibUv" id="4LT2PFqwSHG" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4LT2PFqwPXp" role="1zc67A">
                  <node concept="3clFbF" id="4LT2PFqwS5e" role="3cqZAp">
                    <node concept="2OqwBi" id="4LT2PFqwS5f" role="3clFbG">
                      <node concept="37vLTw" id="JxgaYvAgxI" role="2Oq$k0">
                        <ref role="3cqZAo" node="JxgaYvAgxF" resolve="makeService" />
                      </node>
                      <node concept="liA8E" id="4LT2PFqwS5h" role="2OqNvi">
                        <ref role="37wK5l" to="hfuk:2KylPa8jLiz" resolve="closeSession" />
                        <node concept="37vLTw" id="4LT2PFqwS5i" role="37wK5m">
                          <ref role="3cqZAo" node="1AfPmE4ty$3" resolve="session" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="YS8fn" id="4LT2PFqwSlL" role="3cqZAp">
                    <node concept="37vLTw" id="4LT2PFqwSty" role="YScLw">
                      <ref role="3cqZAo" node="4LT2PFqwPXn" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4LT2PFqwKJx" role="1zxBo7">
                <node concept="3clFbF" id="4LT2PFqwNxZ" role="3cqZAp">
                  <node concept="37vLTI" id="4LT2PFqwNy1" role="3clFbG">
                    <node concept="2OqwBi" id="236SrjKoCVZ" role="37vLTx">
                      <node concept="2ShNRf" id="236SrjKo_z5" role="2Oq$k0">
                        <node concept="1pGfFk" id="236SrjKoAZN" role="2ShVmc">
                          <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                          <node concept="2OqwBi" id="236SrjKoBsx" role="37wK5m">
                            <node concept="37vLTw" id="236SrjKoBg3" role="2Oq$k0">
                              <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                            </node>
                            <node concept="liA8E" id="236SrjKoCF5" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="236SrjKoDmB" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                        <node concept="1bVj0M" id="236SrjKoEqf" role="37wK5m">
                          <node concept="3clFbS" id="236SrjKoEqg" role="1bW5cS">
                            <node concept="3cpWs8" id="6xMoDGgBgvM" role="3cqZAp">
                              <node concept="3cpWsn" id="6xMoDGgBgvN" role="3cpWs9">
                                <property role="TrG5h" value="rv" />
                                <node concept="_YKpA" id="6xMoDGgBgvH" role="1tU5fm">
                                  <node concept="3uibUv" id="6xMoDGgBgvK" role="_ZDj9">
                                    <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6xMoDGgBgvO" role="33vP2m">
                                  <node concept="2OqwBi" id="6xMoDGgBgvP" role="2Oq$k0">
                                    <node concept="liA8E" id="6xMoDGgBgvQ" role="2OqNvi">
                                      <ref role="37wK5l" node="7tZeFupJF14" resolve="collectInput" />
                                    </node>
                                    <node concept="37vLTw" id="6xMoDGgBgvR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7tZeFupJF8s" resolve="myParams" />
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="6xMoDGgBgvS" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1n$sR5eXYSr" role="3cqZAp">
                              <node concept="2OqwBi" id="1n$sR5eXZUu" role="3clFbG">
                                <node concept="37vLTw" id="1n$sR5eXYSp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1n$sR5eXxyf" resolve="models" />
                                </node>
                                <node concept="liA8E" id="1n$sR5eY2Ta" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                                  <node concept="2OqwBi" id="6xMoDGgBF6g" role="37wK5m">
                                    <node concept="2OqwBi" id="6xMoDGgBF6h" role="2Oq$k0">
                                      <node concept="3goQfb" id="6xMoDGgBF6i" role="2OqNvi">
                                        <node concept="1bVj0M" id="6xMoDGgBF6j" role="23t8la">
                                          <node concept="3clFbS" id="6xMoDGgBF6k" role="1bW5cS">
                                            <node concept="3clFbF" id="6xMoDGgBF6l" role="3cqZAp">
                                              <node concept="2OqwBi" id="6xMoDGgBF6m" role="3clFbG">
                                                <node concept="1eOMI4" id="6xMoDGgBF6n" role="2Oq$k0">
                                                  <node concept="10QFUN" id="6xMoDGgBF6o" role="1eOMHV">
                                                    <node concept="37vLTw" id="6xMoDGgBF6p" role="10QFUP">
                                                      <ref role="3cqZAo" node="5W7E4fV0XuI" resolve="it" />
                                                    </node>
                                                    <node concept="2pR195" id="6xMoDGgBF6q" role="10QFUM">
                                                      <ref role="3uigEE" to="fn29:1Xl3kQ1uadK" resolve="MResource" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="2sxana" id="6xMoDGgBF6r" role="2OqNvi">
                                                  <ref role="2sxfKC" to="fn29:1Xl3kQ1uadN" resolve="models" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="5W7E4fV0XuI" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="5W7E4fV0XuJ" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="6xMoDGgBF6u" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6xMoDGgBgvN" resolve="rv" />
                                      </node>
                                    </node>
                                    <node concept="ANE8D" id="6xMoDGgBF6v" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1n$sR5eY5oe" role="3cqZAp">
                              <node concept="37vLTw" id="1n$sR5eY5Jw" role="3cqZAk">
                                <ref role="3cqZAo" node="6xMoDGgBgvN" resolve="rv" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4LT2PFqwNy5" role="37vLTJ">
                      <ref role="3cqZAo" node="7tZeFupJF6F" resolve="inputRes" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6xMoDGgBl02" role="3cqZAp">
                  <node concept="3clFbS" id="6xMoDGgBl04" role="3clFbx">
                    <node concept="3clFbF" id="4V5M1ffoax4" role="3cqZAp">
                      <node concept="37vLTI" id="4V5M1ffobJN" role="3clFbG">
                        <node concept="10Nm6u" id="4V5M1ffobSg" role="37vLTx" />
                        <node concept="37vLTw" id="4V5M1ffoax2" role="37vLTJ">
                          <ref role="3cqZAo" node="7tZeFupJF6F" resolve="inputRes" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4V5M1ffocCy" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXoj9n" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXoj9o" role="1PaTwD">
                          <property role="3oM_SC" value="fall-through" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoj9p" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoj9q" role="1PaTwD">
                          <property role="3oM_SC" value="close" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoj9r" role="1PaTwD">
                          <property role="3oM_SC" value="make" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoj9s" role="1PaTwD">
                          <property role="3oM_SC" value="session" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1n$sR5eY6KN" role="3clFbw">
                    <node concept="2OqwBi" id="1n$sR5eY6KP" role="3fr31v">
                      <node concept="2ShNRf" id="1n$sR5eY6KQ" role="2Oq$k0">
                        <node concept="1pGfFk" id="1n$sR5eY6KR" role="2ShVmc">
                          <ref role="37wK5l" to="o6ex:~GenerationCheckHelper.&lt;init&gt;()" resolve="GenerationCheckHelper" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1n$sR5eY6KS" role="2OqNvi">
                        <ref role="37wK5l" to="o6ex:~GenerationCheckHelper.checkModelsBeforeGenerationIfNeeded(jetbrains.mps.project.Project,java.util.List)" resolve="checkModelsBeforeGenerationIfNeeded" />
                        <node concept="37vLTw" id="1n$sR5eY6KT" role="37wK5m">
                          <ref role="3cqZAo" node="5wEedBsf0hR" resolve="project" />
                        </node>
                        <node concept="37vLTw" id="1n$sR5eY6KU" role="37wK5m">
                          <ref role="3cqZAo" node="1n$sR5eXxyf" resolve="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4LT2PFqwUeN" role="3cqZAp" />
            <node concept="3clFbJ" id="6xMoDGgBAAK" role="3cqZAp">
              <node concept="3clFbS" id="6xMoDGgBAAM" role="3clFbx">
                <node concept="3clFbF" id="3OMSw1rTrQh" role="3cqZAp">
                  <node concept="2OqwBi" id="122Yq9x2xTi" role="3clFbG">
                    <node concept="37vLTw" id="122Yq9x2wxo" role="2Oq$k0">
                      <ref role="3cqZAo" node="JxgaYvAgxF" resolve="makeService" />
                    </node>
                    <node concept="liA8E" id="122Yq9x2xTj" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:7yGn3z4N64K" resolve="make" />
                      <node concept="37vLTw" id="122Yq9x2xTk" role="37wK5m">
                        <ref role="3cqZAo" node="1AfPmE4ty$3" resolve="session" />
                      </node>
                      <node concept="37vLTw" id="122Yq9x2xTl" role="37wK5m">
                        <ref role="3cqZAo" node="7tZeFupJF6F" resolve="inputRes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4LG44qKQzPX" role="3clFbw">
                <node concept="37vLTw" id="6xMoDGgBB2k" role="3uHU7B">
                  <ref role="3cqZAo" node="7tZeFupJF6F" resolve="inputRes" />
                </node>
                <node concept="10Nm6u" id="ZqkXIVTEhp" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="4LT2PFqvP7h" role="9aQIa">
                <node concept="3clFbS" id="4LT2PFqvP7i" role="9aQI4">
                  <node concept="3clFbF" id="4LT2PFqvPgu" role="3cqZAp">
                    <node concept="2OqwBi" id="4LT2PFqvPgv" role="3clFbG">
                      <node concept="37vLTw" id="JxgaYvAgxK" role="2Oq$k0">
                        <ref role="3cqZAo" node="JxgaYvAgxF" resolve="makeService" />
                      </node>
                      <node concept="liA8E" id="4LT2PFqvPgx" role="2OqNvi">
                        <ref role="37wK5l" to="hfuk:2KylPa8jLiz" resolve="closeSession" />
                        <node concept="37vLTw" id="4LT2PFqvPgy" role="37wK5m">
                          <ref role="3cqZAo" node="1AfPmE4ty$3" resolve="session" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="11SQcnY$viz" role="3cqZAp" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7tZeFupJF6C" role="1B3o_S" />
      <node concept="P$JXv" id="1Y18t$8Yax9" role="lGtFl">
        <node concept="TZ5HA" id="1Y18t$8YhW_" role="TZ5H$">
          <node concept="1dT_AC" id="1Y18t$8YhWA" role="1dT_Ay">
            <property role="1dT_AB" value="should be called outside of command" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7tZeFupJF7W" role="1B3o_S" />
  </node>
  <node concept="tC5Ba" id="7tZeFupJF8y">
    <property role="TrG5h" value="TextPreviewGroup" />
    <property role="3GE5qa" value="Make.groups" />
    <node concept="ftmFs" id="7tZeFupJF8z" role="ftER_">
      <node concept="tCFHf" id="7tZeFupJF8$" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJFeT" resolve="TextPreviewModel" />
      </node>
      <node concept="tCFHf" id="40ot3U3fOeo" role="ftvYc">
        <ref role="tCJdB" node="40ot3U3ePVM" resolve="DocPreviewModel" />
      </node>
      <node concept="10WQ6h" id="3wzd7na1Uyz" role="ftvYc">
        <property role="TrG5h" value="other" />
      </node>
    </node>
    <node concept="tT9cl" id="7tZeFupJF8_" role="2f5YQi">
      <ref role="tU$_T" node="7tZeFupJF5J" resolve="Make" />
      <ref role="2f8Tey" node="7tZeFupJF5P" resolve="preview" />
    </node>
    <node concept="tT9cl" id="4fV06lQ2vaX" role="2f5YQi">
      <ref role="2f8Tey" to="ekwn:1xsN4xJX8VX" resolve="preview" />
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
    </node>
    <node concept="tT9cl" id="28s6IYZCruM" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:28s6IYZxj4I" resolve="showGeneratedText" />
    </node>
  </node>
  <node concept="tC5Ba" id="7tZeFupJF8A">
    <property role="TrG5h" value="NamespaceMake" />
    <property role="3GE5qa" value="Make.groups" />
    <node concept="ftmFs" id="7tZeFupJF8B" role="ftER_">
      <node concept="tCFHf" id="7tZeFupJF8C" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF9Z" resolve="MakeNamespace" />
        <node concept="3clFbT" id="7tZeFupJF8D" role="2J__8u">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="tCFHf" id="7tZeFupJF8E" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF9Z" resolve="MakeNamespace" />
        <node concept="3clFbT" id="7tZeFupJF8F" role="2J__8u">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="7tZeFupJF8G" role="2f5YQi">
      <ref role="tU$_T" to="tprs:5LMwfTe3ae5" resolve="NamespaceMakeActions" />
      <ref role="2f8Tey" to="tprs:5LMwfTe3ae8" resolve="make" />
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJF8H">
    <property role="TrG5h" value="MakeSelection" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Make" />
    <property role="2uzpH1" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="7iCFfvQP7XL" role="32lrUH">
      <property role="TrG5h" value="getModels" />
      <node concept="3Tm6S6" id="7iCFfvQP7XM" role="1B3o_S" />
      <node concept="_YKpA" id="7iCFfvQP7XN" role="3clF45">
        <node concept="3uibUv" id="7iCFfvQP7XO" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7iCFfvQP7XP" role="3clF47">
        <node concept="3cpWs8" id="7iCFfvQP7XQ" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQP7XR" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="_YKpA" id="7iCFfvQP7XS" role="1tU5fm">
              <node concept="3uibUv" id="7iCFfvQP7XT" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="7iCFfvQP7XU" role="33vP2m">
              <node concept="Tc6Ow" id="7iCFfvQP7XV" role="2ShVmc">
                <node concept="3uibUv" id="7iCFfvQP7XW" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Q3WVCJfxVE" role="3cqZAp">
          <node concept="3clFbS" id="7Q3WVCJfxVG" role="3clFbx">
            <node concept="3clFbF" id="7iCFfvQP7Yf" role="3cqZAp">
              <node concept="2OqwBi" id="7iCFfvQP7Yg" role="3clFbG">
                <node concept="37vLTw" id="7iCFfvQP7Yh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQP7XR" resolve="rv" />
                </node>
                <node concept="X8dFx" id="7iCFfvQP7Yi" role="2OqNvi">
                  <node concept="2OqwBi" id="7iCFfvQP7Yj" role="25WWJ7">
                    <node concept="2WthIp" id="7iCFfvQP7Yk" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7iCFfvQP7Yl" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJF8J" resolve="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7Q3WVCJf_IL" role="3clFbw">
            <node concept="10Nm6u" id="7Q3WVCJf_Ro" role="3uHU7w" />
            <node concept="2OqwBi" id="7Q3WVCJfyJO" role="3uHU7B">
              <node concept="2WthIp" id="7Q3WVCJfyss" role="2Oq$k0" />
              <node concept="1DTwFV" id="7Q3WVCJfzvk" role="2OqNvi">
                <ref role="2WH_rO" node="7tZeFupJF8J" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iCFfvQP7XX" role="3cqZAp">
          <node concept="3clFbS" id="7iCFfvQP7XY" role="3clFbx">
            <node concept="3clFbF" id="7iCFfvQP7XZ" role="3cqZAp">
              <node concept="2OqwBi" id="7iCFfvQP7Y0" role="3clFbG">
                <node concept="37vLTw" id="7iCFfvQP7Y1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQP7XR" resolve="rv" />
                </node>
                <node concept="TSZUe" id="6kXk8VBFSXJ" role="2OqNvi">
                  <node concept="2OqwBi" id="6kXk8VBFSXL" role="25WWJ7">
                    <node concept="2WthIp" id="6kXk8VBFSXM" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6kXk8VBFSXN" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJF8K" resolve="cmodel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6kXk8VBFNLi" role="3clFbw">
            <node concept="3fqX7Q" id="6kXk8VBFO8H" role="3uHU7w">
              <node concept="2OqwBi" id="6kXk8VBFP1$" role="3fr31v">
                <node concept="37vLTw" id="6kXk8VBFOBP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQP7XR" resolve="rv" />
                </node>
                <node concept="3JPx81" id="6kXk8VBFQBm" role="2OqNvi">
                  <node concept="2OqwBi" id="6kXk8VBFR2$" role="25WWJ7">
                    <node concept="2WthIp" id="6kXk8VBFQF2" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6kXk8VBFSzr" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJF8K" resolve="cmodel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7iCFfvQP7Y8" role="3uHU7B">
              <node concept="2OqwBi" id="7iCFfvQP7Ya" role="3uHU7B">
                <node concept="2WthIp" id="7iCFfvQP7Yb" role="2Oq$k0" />
                <node concept="1DTwFV" id="7iCFfvQP7Yc" role="2OqNvi">
                  <ref role="2WH_rO" node="7tZeFupJF8K" resolve="cmodel" />
                </node>
              </node>
              <node concept="10Nm6u" id="7iCFfvQP7Y9" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iCFfvQP7Yr" role="3cqZAp">
          <node concept="37vLTw" id="7iCFfvQP7Ys" role="3cqZAk">
            <ref role="3cqZAo" node="7iCFfvQP7XR" resolve="rv" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7iCFfvQBVbg" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQBVbh" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJF8J" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJF8K" role="1NuT2Z">
      <property role="TrG5h" value="cmodel" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJF8L" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJF8M" role="1NuT2Z">
      <property role="TrG5h" value="cmodule" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODULE" resolve="CONTEXT_MODULE" />
    </node>
    <node concept="tnohg" id="7tZeFupJF8N" role="tncku">
      <node concept="3clFbS" id="7tZeFupJF8O" role="2VODD2">
        <node concept="3clFbF" id="7tZeFupJF8P" role="3cqZAp">
          <node concept="2OqwBi" id="7tZeFupJF8Q" role="3clFbG">
            <node concept="2ShNRf" id="7tZeFupJF8R" role="2Oq$k0">
              <node concept="1pGfFk" id="7tZeFupJF8S" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQCe7E" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQCe7F" role="2Oq$k0">
                    <node concept="2OqwBi" id="7iCFfvQCe7G" role="2Oq$k0">
                      <node concept="2ShNRf" id="7iCFfvQCe7H" role="2Oq$k0">
                        <node concept="1pGfFk" id="7iCFfvQCe7I" role="2ShVmc">
                          <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                          <node concept="2OqwBi" id="7iCFfvQCe7J" role="37wK5m">
                            <node concept="2WthIp" id="7iCFfvQCe7K" role="2Oq$k0" />
                            <node concept="1DTwFV" id="7iCFfvQCe7L" role="2OqNvi">
                              <ref role="2WH_rO" node="7iCFfvQBVbg" resolve="mpsProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7iCFfvQCe7M" role="2OqNvi">
                        <ref role="37wK5l" node="3K9bLbY2hGq" resolve="modules" />
                        <node concept="2OqwBi" id="3K9bLbY4sI5" role="37wK5m">
                          <node concept="2WthIp" id="3K9bLbY4sI8" role="2Oq$k0" />
                          <node concept="1DTwFV" id="3K9bLbY4sIa" role="2OqNvi">
                            <ref role="2WH_rO" node="7tZeFupJF8M" resolve="cmodule" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3K9bLbY4tfK" role="37wK5m">
                          <node concept="2WthIp" id="3K9bLbY4tfN" role="2Oq$k0" />
                          <node concept="1DTwFV" id="3K9bLbY4tfP" role="2OqNvi">
                            <ref role="2WH_rO" node="7tZeFupJF8L" resolve="modules" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQCe7Q" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                      <node concept="2OqwBi" id="7iCFfvQCe7R" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQCe7S" role="2Oq$k0" />
                        <node concept="2XshWL" id="7iCFfvQCe7T" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQP7XL" resolve="getModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQCe7U" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="2OqwBi" id="7iCFfvQCe7V" role="37wK5m">
                      <node concept="2WthIp" id="7iCFfvQCe7W" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="7iCFfvQCe7X" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJF9W" resolve="cleanMake" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7tZeFupJF9g" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7tZeFupJF9h" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJF9i" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3slopAb" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slopAc" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slopAd" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slopAe" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IIVxgkMKGC" role="3clFbw">
            <node concept="liA8E" id="IIVxgkMKGD" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMKGE" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMKGF" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMKGG" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMKGH" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQBVbg" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMKGI" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMKGJ" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tZeFupJF9j" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJF9k" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7tZeFupJF9l" role="1tU5fm" />
            <node concept="2OqwBi" id="7tZeFupJF9m" role="33vP2m">
              <node concept="2OqwBi" id="7iCFfvQCagy" role="2Oq$k0">
                <node concept="2OqwBi" id="7iCFfvQC9EQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="7iCFfvQC8kV" role="2Oq$k0">
                    <node concept="2ShNRf" id="7tZeFupJF9n" role="2Oq$k0">
                      <node concept="1pGfFk" id="7tZeFupJF9o" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7tZeFupJF9p" role="37wK5m">
                          <node concept="2WthIp" id="7tZeFupJF9q" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQC7U4" role="2OqNvi">
                            <ref role="2WH_rO" node="7iCFfvQBVbg" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQC8QD" role="2OqNvi">
                      <ref role="37wK5l" node="3K9bLbY2hGq" resolve="modules" />
                      <node concept="2OqwBi" id="3K9bLbY4r4E" role="37wK5m">
                        <node concept="2WthIp" id="3K9bLbY4r4H" role="2Oq$k0" />
                        <node concept="1DTwFV" id="3K9bLbY4r4J" role="2OqNvi">
                          <ref role="2WH_rO" node="7tZeFupJF8M" resolve="cmodule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3K9bLbY4rZU" role="37wK5m">
                        <node concept="2WthIp" id="3K9bLbY4rZX" role="2Oq$k0" />
                        <node concept="1DTwFV" id="3K9bLbY4rZZ" role="2OqNvi">
                          <ref role="2WH_rO" node="7tZeFupJF8L" resolve="modules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQCaao" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                    <node concept="2OqwBi" id="7iCFfvQCb4h" role="37wK5m">
                      <node concept="2WthIp" id="7iCFfvQCb4k" role="2Oq$k0" />
                      <node concept="2XshWL" id="7iCFfvQCb4m" role="2OqNvi">
                        <ref role="2WH_rO" node="7iCFfvQP7XL" resolve="getModels" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCFfvQCbVG" role="2OqNvi">
                  <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                  <node concept="2OqwBi" id="7iCFfvQCcqW" role="37wK5m">
                    <node concept="2WthIp" id="7iCFfvQCcqZ" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="7iCFfvQCcr1" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJF9W" resolve="cleanMake" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7tZeFupJF9C" role="2OqNvi">
                <ref role="37wK5l" node="7tZeFupJEXW" resolve="actionText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJF9G" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJF9H" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJF9I" role="3cqZAp">
              <node concept="2OqwBi" id="7tZeFupJF9J" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJF9K" role="2Oq$k0">
                  <node concept="tl45R" id="7tZeFupJF9L" role="2Oq$k0" />
                  <node concept="liA8E" id="7tZeFupJF9M" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7tZeFupJF9N" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="37vLTw" id="3GM_nagTuNS" role="37wK5m">
                    <ref role="3cqZAo" node="7tZeFupJF9k" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tZeFupJF9P" role="3cqZAp">
              <node concept="3clFbT" id="7tZeFupJF9Q" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tZeFupJF9R" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJF9S" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTxs4" role="3uHU7B">
              <ref role="3cqZAo" node="7tZeFupJF9k" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJF9U" role="3cqZAp">
          <node concept="3clFbT" id="7tZeFupJF9V" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="7tZeFupJF9W" role="2JrayB">
      <property role="TrG5h" value="cleanMake" />
      <node concept="3Tm6S6" id="7tZeFupJF9X" role="1B3o_S" />
      <node concept="10P_77" id="7tZeFupJF9Y" role="1tU5fm" />
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJF9Z">
    <property role="TrG5h" value="MakeNamespace" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Make" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <node concept="2JriF1" id="7tZeFupJFa0" role="2JrayB">
      <property role="TrG5h" value="cleanMake" />
      <node concept="3Tm6S6" id="7tZeFupJFa1" role="1B3o_S" />
      <node concept="10P_77" id="7tZeFupJFa2" role="1tU5fm" />
    </node>
    <node concept="2XrIbr" id="7tZeFupJFa3" role="32lrUH">
      <property role="TrG5h" value="selectedModules" />
      <node concept="3clFbS" id="7tZeFupJFa4" role="3clF47">
        <node concept="3cpWs8" id="7tZeFupJFa5" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJFa6" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="3uibUv" id="7tZeFupJFa7" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4O9Oe_frCZX" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="7tZeFupJFa9" role="33vP2m">
              <node concept="1pGfFk" id="7tZeFupJFaa" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="4O9Oe_frCZY" role="1pMfVU">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7tZeFupJFac" role="3cqZAp">
          <node concept="2GrKxI" id="7tZeFupJFad" role="2Gsz3X">
            <property role="TrG5h" value="selectedObject" />
          </node>
          <node concept="2OqwBi" id="7tZeFupJFae" role="2GsD0m">
            <node concept="2WthIp" id="7tZeFupJFaf" role="2Oq$k0" />
            <node concept="1DTwFV" id="7tZeFupJFag" role="2OqNvi">
              <ref role="2WH_rO" node="7WkI$u_VbGs" resolve="selectedObjects" />
            </node>
          </node>
          <node concept="3clFbS" id="7tZeFupJFah" role="2LFqv$">
            <node concept="3clFbJ" id="7WkI$u_VADl" role="3cqZAp">
              <node concept="3clFbS" id="7WkI$u_VADn" role="3clFbx">
                <node concept="3cpWs8" id="4lE8w9Lo3Ti" role="3cqZAp">
                  <node concept="3cpWsn" id="4lE8w9Lo3Tj" role="3cpWs9">
                    <property role="TrG5h" value="provider" />
                    <node concept="3uibUv" id="4lE8w9Lo34d" role="1tU5fm">
                      <ref role="3uigEE" to="7e8u:~DiscoveryValueProvider" resolve="DiscoveryValueProvider" />
                    </node>
                    <node concept="1eOMI4" id="4lE8w9Lo3Tk" role="33vP2m">
                      <node concept="10QFUN" id="4lE8w9Lo3Tl" role="1eOMHV">
                        <node concept="3uibUv" id="4lE8w9Lo3Tm" role="10QFUM">
                          <ref role="3uigEE" to="7e8u:~DiscoveryValueProvider" resolve="DiscoveryValueProvider" />
                        </node>
                        <node concept="2GrUjf" id="4lE8w9Lo3Tn" role="10QFUP">
                          <ref role="2Gs0qQ" node="7tZeFupJFad" resolve="selectedObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="7tZeFupJFai" role="3cqZAp">
                  <node concept="2GrKxI" id="7tZeFupJFaj" role="2Gsz3X">
                    <property role="TrG5h" value="module" />
                  </node>
                  <node concept="3clFbS" id="7tZeFupJFaq" role="2LFqv$">
                    <node concept="3clFbF" id="7tZeFupJFar" role="3cqZAp">
                      <node concept="2OqwBi" id="7tZeFupJFas" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTrMy" role="2Oq$k0">
                          <ref role="3cqZAo" node="7tZeFupJFa6" resolve="modules" />
                        </node>
                        <node concept="liA8E" id="7tZeFupJFau" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="2GrUjf" id="7tZeFupJFav" role="37wK5m">
                            <ref role="2Gs0qQ" node="7tZeFupJFaj" resolve="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4lE8w9LobIP" role="2GsD0m">
                    <node concept="2OqwBi" id="7WkI$u_W0L0" role="2Oq$k0">
                      <node concept="37vLTw" id="4lE8w9Lo3To" role="2Oq$k0">
                        <ref role="3cqZAo" node="4lE8w9Lo3Tj" resolve="provider" />
                      </node>
                      <node concept="liA8E" id="7WkI$u_W0L5" role="2OqNvi">
                        <ref role="37wK5l" to="7e8u:~DiscoveryValueProvider.discoverValuesOfType(java.lang.Class)" resolve="discoverValuesOfType" />
                        <node concept="3VsKOn" id="7WkI$u_W0L6" role="37wK5m">
                          <ref role="3VsUkX" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                    </node>
                    <node concept="39bAoz" id="4lE8w9LodV3" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="7WkI$u_VJSd" role="3clFbw">
                <node concept="3uibUv" id="7WkI$u_VM5w" role="2ZW6by">
                  <ref role="3uigEE" to="7e8u:~DiscoveryValueProvider" resolve="DiscoveryValueProvider" />
                </node>
                <node concept="2GrUjf" id="7WkI$u_VCoA" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="7tZeFupJFad" resolve="selectedObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7tZeFupJFaw" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTukn" role="3cqZAk">
            <ref role="3cqZAo" node="7tZeFupJFa6" resolve="modules" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7tZeFupJFay" role="1B3o_S" />
      <node concept="_YKpA" id="7tZeFupJFaz" role="3clF45">
        <node concept="3uibUv" id="4O9Oe_frCZZ" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7iCFfvQA$Jh" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQA$Ji" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7tZeFupJFaC" role="tncku">
      <node concept="3clFbS" id="7tZeFupJFaD" role="2VODD2">
        <node concept="3clFbF" id="7tZeFupJFaE" role="3cqZAp">
          <node concept="2OqwBi" id="7tZeFupJFaF" role="3clFbG">
            <node concept="2ShNRf" id="7tZeFupJFaG" role="2Oq$k0">
              <node concept="1pGfFk" id="7tZeFupJFaH" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQAF2D" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQAF2E" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQAF2F" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQAF2G" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQAF2H" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQAF2I" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQAF2J" role="2OqNvi">
                            <ref role="2WH_rO" node="7iCFfvQA$Jh" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQAF2K" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQvBeE" resolve="modules" />
                      <node concept="2OqwBi" id="7iCFfvQAF2L" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQAF2M" role="2Oq$k0" />
                        <node concept="2XshWL" id="7iCFfvQAF2N" role="2OqNvi">
                          <ref role="2WH_rO" node="7tZeFupJFa3" resolve="selectedModules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQAF2O" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="2OqwBi" id="7iCFfvQAF2P" role="37wK5m">
                      <node concept="2WthIp" id="7iCFfvQAF2Q" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="7iCFfvQAF2R" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFa0" resolve="cleanMake" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7tZeFupJFaZ" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YEtPIE_9FU" role="3cqZAp" />
      </node>
    </node>
    <node concept="2ScWuX" id="7tZeFupJFb0" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJFb1" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3slocCQ" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slocCR" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slocD1" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slocD3" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IIVxgkMSSa" role="3clFbw">
            <node concept="liA8E" id="IIVxgkMSSb" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMSSc" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMSSd" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMSSe" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMSSf" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQA$Jh" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMSSg" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMSSh" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7tZeFupJFb2" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJFb3" role="2LFqv$">
            <node concept="3clFbJ" id="7tZeFupJFb4" role="3cqZAp">
              <node concept="3clFbS" id="7tZeFupJFb5" role="3clFbx">
                <node concept="3cpWs6" id="7tZeFupJFb6" role="3cqZAp">
                  <node concept="3clFbT" id="7tZeFupJFb7" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7tZeFupJFb8" role="3clFbw">
                <node concept="2ZW3vV" id="7tZeFupJFb9" role="3fr31v">
                  <node concept="3uibUv" id="3PdnAUCuVgC" role="2ZW6by">
                    <ref role="3uigEE" to="7e8u:~VirtualFolder$Modules" resolve="VirtualFolder.Modules" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrHL" role="2ZW6bz">
                    <ref role="3cqZAo" node="7tZeFupJFbf" resolve="selectedValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7tZeFupJFbc" role="1DdaDG">
            <node concept="2WthIp" id="7tZeFupJFbd" role="2Oq$k0" />
            <node concept="1DTwFV" id="7WkI$u_VgPI" role="2OqNvi">
              <ref role="2WH_rO" node="7WkI$u_V5XE" resolve="selectedValues" />
            </node>
          </node>
          <node concept="3cpWsn" id="7tZeFupJFbf" role="1Duv9x">
            <property role="TrG5h" value="selectedValue" />
            <node concept="3uibUv" id="7tZeFupJFbg" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tZeFupJFbh" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJFbi" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7tZeFupJFbj" role="1tU5fm" />
            <node concept="2OqwBi" id="7tZeFupJFbk" role="33vP2m">
              <node concept="2OqwBi" id="7iCFfvQABCd" role="2Oq$k0">
                <node concept="2OqwBi" id="7iCFfvQAAvy" role="2Oq$k0">
                  <node concept="2ShNRf" id="7tZeFupJFbl" role="2Oq$k0">
                    <node concept="1pGfFk" id="7tZeFupJFbm" role="2ShVmc">
                      <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                      <node concept="2OqwBi" id="7iCFfvQA_wj" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQA_wm" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7iCFfvQA_wo" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQA$Jh" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQAAWQ" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvBeE" resolve="modules" />
                    <node concept="2OqwBi" id="7iCFfvQABhz" role="37wK5m">
                      <node concept="2WthIp" id="7iCFfvQABhA" role="2Oq$k0" />
                      <node concept="2XshWL" id="7iCFfvQABhC" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFa3" resolve="selectedModules" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCFfvQAC$M" role="2OqNvi">
                  <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                  <node concept="2OqwBi" id="7iCFfvQACWv" role="37wK5m">
                    <node concept="2WthIp" id="7iCFfvQACWy" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="7iCFfvQACW$" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFa0" resolve="cleanMake" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7tZeFupJFbw" role="2OqNvi">
                <ref role="37wK5l" node="7tZeFupJEXW" resolve="actionText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJFb$" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJFb_" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJFbA" role="3cqZAp">
              <node concept="2OqwBi" id="7tZeFupJFbB" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJFbC" role="2Oq$k0">
                  <node concept="tl45R" id="7tZeFupJFbD" role="2Oq$k0" />
                  <node concept="liA8E" id="7tZeFupJFbE" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7tZeFupJFbF" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="37vLTw" id="3GM_nagT$r7" role="37wK5m">
                    <ref role="3cqZAo" node="7tZeFupJFbi" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tZeFupJFbH" role="3cqZAp">
              <node concept="3clFbT" id="7tZeFupJFbI" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tZeFupJFbJ" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJFbK" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTweO" role="3uHU7B">
              <ref role="3cqZAo" node="7tZeFupJFbi" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJFbM" role="3cqZAp">
          <node concept="3clFbT" id="7tZeFupJFbN" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7WkI$u_V5XE" role="1NuT2Z">
      <property role="TrG5h" value="selectedValues" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.VALUES" resolve="VALUES" />
      <node concept="1oajcY" id="7WkI$u_V5XF" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WkI$u_VbGs" role="1NuT2Z">
      <property role="TrG5h" value="selectedObjects" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.USER_OBJECTS" resolve="USER_OBJECTS" />
      <node concept="1oajcY" id="7WkI$u_VbGt" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJFbO">
    <property role="TrG5h" value="RebuildSelectedModules" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rebuild Module" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7iCFfvQB3qb" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQB3qc" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFbQ" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFbR" role="1NuT2Z">
      <property role="TrG5h" value="cmodule" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODULE" resolve="CONTEXT_MODULE" />
    </node>
    <node concept="tnohg" id="7tZeFupJFbS" role="tncku">
      <node concept="3clFbS" id="7tZeFupJFbT" role="2VODD2">
        <node concept="3clFbF" id="7iCFfvQB21p" role="3cqZAp">
          <node concept="2OqwBi" id="7iCFfvQB21q" role="3clFbG">
            <node concept="2ShNRf" id="7iCFfvQB21r" role="2Oq$k0">
              <node concept="1pGfFk" id="7iCFfvQB21s" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQB7I$" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQB21t" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQB21u" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQB21v" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQB21w" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQB21x" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQB21y" role="2OqNvi">
                            <ref role="2WH_rO" node="7iCFfvQB3qb" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQB21z" role="2OqNvi">
                      <ref role="37wK5l" node="3K9bLbY2hGq" resolve="modules" />
                      <node concept="2OqwBi" id="3K9bLbY4mHS" role="37wK5m">
                        <node concept="2WthIp" id="3K9bLbY4mHV" role="2Oq$k0" />
                        <node concept="1DTwFV" id="3K9bLbY4mHX" role="2OqNvi">
                          <ref role="2WH_rO" node="7tZeFupJFbR" resolve="cmodule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3K9bLbY4mUn" role="37wK5m">
                        <node concept="2WthIp" id="3K9bLbY4mUq" role="2Oq$k0" />
                        <node concept="1DTwFV" id="3K9bLbY4mUs" role="2OqNvi">
                          <ref role="2WH_rO" node="7tZeFupJFbQ" resolve="modules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQB8ro" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQB8vC" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7iCFfvQB21B" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7tZeFupJFcg" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJFch" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3slopAF" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slopAG" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slopAH" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slopAI" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IIVxgkMMZ7" role="3clFbw">
            <node concept="liA8E" id="IIVxgkMMZ8" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMMZ9" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMMZa" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMMZb" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMMZc" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQB3qb" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMMZd" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMMZe" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7iCFfvQB5q2" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQB5q3" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7iCFfvQB5q4" role="1tU5fm" />
            <node concept="2OqwBi" id="7iCFfvQB5q5" role="33vP2m">
              <node concept="2OqwBi" id="7iCFfvQB6dQ" role="2Oq$k0">
                <node concept="2OqwBi" id="7iCFfvQB5q6" role="2Oq$k0">
                  <node concept="2ShNRf" id="7iCFfvQB5q7" role="2Oq$k0">
                    <node concept="1pGfFk" id="7iCFfvQB5q8" role="2ShVmc">
                      <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                      <node concept="2OqwBi" id="7iCFfvQB5q9" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQB5qa" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7iCFfvQB5qb" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQB3qb" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQB5qc" role="2OqNvi">
                    <ref role="37wK5l" node="3K9bLbY2hGq" resolve="modules" />
                    <node concept="2OqwBi" id="3K9bLbY4kHm" role="37wK5m">
                      <node concept="2WthIp" id="3K9bLbY4kHp" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3K9bLbY4kHr" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFbR" resolve="cmodule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3K9bLbY4l44" role="37wK5m">
                      <node concept="2WthIp" id="3K9bLbY4l47" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3K9bLbY4l49" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFbQ" resolve="modules" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCFfvQB7dl" role="2OqNvi">
                  <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                  <node concept="3clFbT" id="7iCFfvQB7qw" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7iCFfvQB5qe" role="2OqNvi">
                <ref role="37wK5l" node="7tZeFupJEXW" resolve="actionText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJFc_" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJFcA" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJFcB" role="3cqZAp">
              <node concept="2OqwBi" id="7tZeFupJFcC" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJFcD" role="2Oq$k0">
                  <node concept="tl45R" id="7tZeFupJFcE" role="2Oq$k0" />
                  <node concept="liA8E" id="7tZeFupJFcF" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7tZeFupJFcG" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="37vLTw" id="3GM_nagTwyu" role="37wK5m">
                    <ref role="3cqZAo" node="7iCFfvQB5q3" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tZeFupJFcI" role="3cqZAp">
              <node concept="3clFbT" id="7tZeFupJFcJ" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tZeFupJFcK" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJFcL" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT$Bm" role="3uHU7B">
              <ref role="3cqZAo" node="7iCFfvQB5q3" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJFcN" role="3cqZAp">
          <node concept="3clFbT" id="7tZeFupJFcO" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJFcP">
    <property role="TrG5h" value="MakeSelectedModules" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Make Module" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7iCFfvQ_xtC" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQ_xtD" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFcR" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFcS" role="1NuT2Z">
      <property role="TrG5h" value="cmodule" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODULE" resolve="CONTEXT_MODULE" />
    </node>
    <node concept="tnohg" id="7tZeFupJFcT" role="tncku">
      <node concept="3clFbS" id="7tZeFupJFcU" role="2VODD2">
        <node concept="3clFbF" id="7tZeFupJFcV" role="3cqZAp">
          <node concept="2OqwBi" id="7tZeFupJFcW" role="3clFbG">
            <node concept="2ShNRf" id="7tZeFupJFcX" role="2Oq$k0">
              <node concept="1pGfFk" id="7tZeFupJFcY" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQ_ZsS" role="37wK5m">
                  <node concept="2ShNRf" id="7tZeFupJFd2" role="2Oq$k0">
                    <node concept="1pGfFk" id="7tZeFupJFd3" role="2ShVmc">
                      <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                      <node concept="2OqwBi" id="7iCFfvQ_Y3q" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQ_Y3t" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7iCFfvQ_Y3v" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQ_xtC" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3K9bLbY4nen" role="2OqNvi">
                    <ref role="37wK5l" node="3K9bLbY2hGq" resolve="modules" />
                    <node concept="2OqwBi" id="3K9bLbY4neo" role="37wK5m">
                      <node concept="2WthIp" id="3K9bLbY4nep" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3K9bLbY4neq" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFcS" resolve="cmodule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3K9bLbY4ner" role="37wK5m">
                      <node concept="2WthIp" id="3K9bLbY4nes" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3K9bLbY4net" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFcR" resolve="modules" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7tZeFupJFdg" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7tZeFupJFdh" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJFdi" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3slopA4" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slopA5" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slopA6" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slopA7" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IIVxgkMJnw" role="3clFbw">
            <node concept="liA8E" id="IIVxgkMJnx" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMJny" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMJnz" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMJn$" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMJn_" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQ_xtC" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMJnA" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMJnB" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tZeFupJFdj" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJFdk" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7tZeFupJFdl" role="1tU5fm" />
            <node concept="2OqwBi" id="7tZeFupJFdm" role="33vP2m">
              <node concept="2OqwBi" id="7iCFfvQ__Lq" role="2Oq$k0">
                <node concept="2ShNRf" id="7tZeFupJFdn" role="2Oq$k0">
                  <node concept="1pGfFk" id="7tZeFupJFdo" role="2ShVmc">
                    <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                    <node concept="2OqwBi" id="7tZeFupJFdp" role="37wK5m">
                      <node concept="2WthIp" id="7tZeFupJFdq" role="2Oq$k0" />
                      <node concept="1DTwFV" id="7iCFfvQ__kI" role="2OqNvi">
                        <ref role="2WH_rO" node="7iCFfvQ_xtC" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3K9bLbY4nqq" role="2OqNvi">
                  <ref role="37wK5l" node="3K9bLbY2hGq" resolve="modules" />
                  <node concept="2OqwBi" id="3K9bLbY4nqr" role="37wK5m">
                    <node concept="2WthIp" id="3K9bLbY4nqs" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3K9bLbY4nqt" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFcS" resolve="cmodule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3K9bLbY4nqu" role="37wK5m">
                    <node concept="2WthIp" id="3K9bLbY4nqv" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3K9bLbY4nqw" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFcR" resolve="modules" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7tZeFupJFd$" role="2OqNvi">
                <ref role="37wK5l" node="7tZeFupJEXW" resolve="actionText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJFdA" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJFdB" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJFdC" role="3cqZAp">
              <node concept="2OqwBi" id="7tZeFupJFdD" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJFdE" role="2Oq$k0">
                  <node concept="tl45R" id="7tZeFupJFdF" role="2Oq$k0" />
                  <node concept="liA8E" id="7tZeFupJFdG" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7tZeFupJFdH" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="37vLTw" id="3GM_nagTrfl" role="37wK5m">
                    <ref role="3cqZAo" node="7tZeFupJFdk" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tZeFupJFdJ" role="3cqZAp">
              <node concept="3clFbT" id="7tZeFupJFdK" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tZeFupJFdL" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJFdM" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTtwU" role="3uHU7B">
              <ref role="3cqZAo" node="7tZeFupJFdk" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJFdO" role="3cqZAp">
          <node concept="3clFbT" id="7tZeFupJFdP" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJFdR">
    <property role="TrG5h" value="RebuildSelectedModels" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rebuild Model" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="7iCFfvQAMHx" role="32lrUH">
      <property role="TrG5h" value="getModels" />
      <node concept="3Tm6S6" id="7iCFfvQAMHy" role="1B3o_S" />
      <node concept="_YKpA" id="7iCFfvQAMHz" role="3clF45">
        <node concept="3uibUv" id="7iCFfvQAMH$" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7iCFfvQAMH_" role="3clF47">
        <node concept="3cpWs8" id="7iCFfvQAMHA" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQAMHB" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="_YKpA" id="7iCFfvQAMHC" role="1tU5fm">
              <node concept="3uibUv" id="7iCFfvQAMHD" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="7iCFfvQAMHE" role="33vP2m">
              <node concept="Tc6Ow" id="7iCFfvQAMHF" role="2ShVmc">
                <node concept="3uibUv" id="7iCFfvQAMHG" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6T8FbTKsd2e" role="3cqZAp">
          <node concept="3clFbS" id="6T8FbTKsd2f" role="3clFbx">
            <node concept="3clFbF" id="6T8FbTKsd2g" role="3cqZAp">
              <node concept="2OqwBi" id="6T8FbTKsd2h" role="3clFbG">
                <node concept="37vLTw" id="6T8FbTKsd2i" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQAMHB" resolve="rv" />
                </node>
                <node concept="X8dFx" id="6T8FbTKsd2j" role="2OqNvi">
                  <node concept="2OqwBi" id="6T8FbTKsd2k" role="25WWJ7">
                    <node concept="2WthIp" id="6T8FbTKsd2l" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6T8FbTKsd2m" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFdT" resolve="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6T8FbTKsd2n" role="3clFbw">
            <node concept="10Nm6u" id="6T8FbTKsd2o" role="3uHU7w" />
            <node concept="2OqwBi" id="6T8FbTKsd2p" role="3uHU7B">
              <node concept="2WthIp" id="6T8FbTKsd2q" role="2Oq$k0" />
              <node concept="1DTwFV" id="6T8FbTKsd2r" role="2OqNvi">
                <ref role="2WH_rO" node="7tZeFupJFdT" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6T8FbTKsd2s" role="3cqZAp">
          <node concept="3clFbS" id="6T8FbTKsd2t" role="3clFbx">
            <node concept="3clFbF" id="6T8FbTKsd2u" role="3cqZAp">
              <node concept="2OqwBi" id="6T8FbTKsd2v" role="3clFbG">
                <node concept="37vLTw" id="6T8FbTKsd2w" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQAMHB" resolve="rv" />
                </node>
                <node concept="TSZUe" id="6T8FbTKsd2x" role="2OqNvi">
                  <node concept="2OqwBi" id="6T8FbTKsd2y" role="25WWJ7">
                    <node concept="2WthIp" id="6T8FbTKsd2z" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6T8FbTKsd2$" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFdU" resolve="cmodel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6T8FbTKsd2_" role="3clFbw">
            <node concept="3fqX7Q" id="6T8FbTKsd2A" role="3uHU7w">
              <node concept="2OqwBi" id="6T8FbTKsd2B" role="3fr31v">
                <node concept="37vLTw" id="6T8FbTKsd2C" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCFfvQAMHB" resolve="rv" />
                </node>
                <node concept="3JPx81" id="6T8FbTKsd2D" role="2OqNvi">
                  <node concept="2OqwBi" id="6T8FbTKsd2E" role="25WWJ7">
                    <node concept="2WthIp" id="6T8FbTKsd2F" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6T8FbTKsd2G" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFdU" resolve="cmodel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6T8FbTKsd2H" role="3uHU7B">
              <node concept="2OqwBi" id="6T8FbTKsd2I" role="3uHU7B">
                <node concept="2WthIp" id="6T8FbTKsd2J" role="2Oq$k0" />
                <node concept="1DTwFV" id="6T8FbTKsd2K" role="2OqNvi">
                  <ref role="2WH_rO" node="7tZeFupJFdU" resolve="cmodel" />
                </node>
              </node>
              <node concept="10Nm6u" id="6T8FbTKsd2L" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6T8FbTKsd2M" role="3cqZAp">
          <node concept="37vLTw" id="6T8FbTKsd2N" role="3cqZAk">
            <ref role="3cqZAo" node="7iCFfvQAMHB" resolve="rv" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7iCFfvQARiu" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQARiv" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFdT" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFdU" role="1NuT2Z">
      <property role="TrG5h" value="cmodel" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
    </node>
    <node concept="tnohg" id="7tZeFupJFdV" role="tncku">
      <node concept="3clFbS" id="7tZeFupJFdW" role="2VODD2">
        <node concept="3clFbF" id="7iCFfvQAQsP" role="3cqZAp">
          <node concept="2OqwBi" id="7iCFfvQAQsQ" role="3clFbG">
            <node concept="2ShNRf" id="7iCFfvQAQsR" role="2Oq$k0">
              <node concept="1pGfFk" id="7iCFfvQAQsS" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQAWqh" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQAQsT" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQAQsU" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQAQsV" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQAQsW" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQAQsX" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQAQsY" role="2OqNvi">
                            <ref role="2WH_rO" node="7iCFfvQARiu" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQAQsZ" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                      <node concept="2OqwBi" id="7iCFfvQAQt0" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQAQt1" role="2Oq$k0" />
                        <node concept="2XshWL" id="7iCFfvQAQt2" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQAMHx" resolve="getModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQAX71" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQAXd2" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7iCFfvQAQt3" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7tZeFupJFej" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJFek" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3slopA$" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3slopA_" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3slopAA" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3slopAB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IIVxgkMMfK" role="3clFbw">
            <node concept="liA8E" id="IIVxgkMMfL" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMMfM" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMMfN" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMMfO" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMMfP" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQARiu" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMMfQ" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMMfR" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7iCFfvQATKu" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQATKv" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="7iCFfvQATKw" role="1tU5fm">
              <node concept="3uibUv" id="7iCFfvQATKx" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="7iCFfvQATKy" role="33vP2m">
              <node concept="2WthIp" id="7iCFfvQATKz" role="2Oq$k0" />
              <node concept="2XshWL" id="7iCFfvQATK$" role="2OqNvi">
                <ref role="2WH_rO" node="7iCFfvQAMHx" resolve="getModels" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iCFfvQATK_" role="3cqZAp">
          <node concept="3clFbS" id="7iCFfvQATKA" role="3clFbx">
            <node concept="3cpWs6" id="7iCFfvQATKB" role="3cqZAp">
              <node concept="3clFbT" id="7iCFfvQATKC" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7iCFfvQATKD" role="3clFbw">
            <node concept="37vLTw" id="7iCFfvQATKE" role="2Oq$k0">
              <ref role="3cqZAo" node="7iCFfvQATKv" resolve="list" />
            </node>
            <node concept="1v1jN8" id="7iCFfvQATKF" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="7iCFfvQATKG" role="3cqZAp">
          <node concept="3cpWsn" id="7iCFfvQATKH" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7iCFfvQATKI" role="1tU5fm" />
            <node concept="2OqwBi" id="7iCFfvQATKJ" role="33vP2m">
              <node concept="2OqwBi" id="7iCFfvQAUKJ" role="2Oq$k0">
                <node concept="2OqwBi" id="7iCFfvQATKK" role="2Oq$k0">
                  <node concept="2ShNRf" id="7iCFfvQATKL" role="2Oq$k0">
                    <node concept="1pGfFk" id="7iCFfvQATKM" role="2ShVmc">
                      <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                      <node concept="2OqwBi" id="7iCFfvQATKN" role="37wK5m">
                        <node concept="2WthIp" id="7iCFfvQATKO" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7iCFfvQATKP" role="2OqNvi">
                          <ref role="2WH_rO" node="7iCFfvQARiu" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQATKQ" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                    <node concept="37vLTw" id="7iCFfvQATKR" role="37wK5m">
                      <ref role="3cqZAo" node="7iCFfvQATKv" resolve="list" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCFfvQAVKE" role="2OqNvi">
                  <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                  <node concept="3clFbT" id="7iCFfvQAW5L" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7iCFfvQATKS" role="2OqNvi">
                <ref role="37wK5l" node="7tZeFupJEXW" resolve="actionText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJFeC" role="3cqZAp">
          <node concept="3clFbS" id="7tZeFupJFeD" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJFeE" role="3cqZAp">
              <node concept="2OqwBi" id="7tZeFupJFeF" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJFeG" role="2Oq$k0">
                  <node concept="tl45R" id="7tZeFupJFeH" role="2Oq$k0" />
                  <node concept="liA8E" id="7tZeFupJFeI" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="7tZeFupJFeJ" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="37vLTw" id="3GM_nagTwMy" role="37wK5m">
                    <ref role="3cqZAo" node="7iCFfvQATKH" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tZeFupJFeL" role="3cqZAp">
              <node concept="3clFbT" id="7tZeFupJFeM" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tZeFupJFeN" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJFeO" role="3uHU7w" />
            <node concept="37vLTw" id="7iCFfvQAUtD" role="3uHU7B">
              <ref role="3cqZAo" node="7iCFfvQATKH" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJFeQ" role="3cqZAp">
          <node concept="3clFbT" id="7tZeFupJFeR" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJFeT">
    <property role="TrG5h" value="TextPreviewModel" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Make" />
    <property role="2uzpH1" value="Preview Generated Text" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="2BjwmTy5x3F" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="2BjwmTy5x3G" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="7tZeFupJFeU" role="32lrUH">
      <property role="TrG5h" value="modelToGenerate" />
      <node concept="3uibUv" id="4O9Oe_ftaBq" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3clFbS" id="7tZeFupJFeW" role="3clF47">
        <node concept="3cpWs8" id="7tZeFupJFeX" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJFeY" role="3cpWs9">
            <property role="TrG5h" value="md" />
            <node concept="3uibUv" id="7tZeFupJFeZ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="10Nm6u" id="7tZeFupJFf0" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="7tZeFupJFf1" role="3cqZAp">
          <node concept="3y3z36" id="7tZeFupJFf2" role="3clFbw">
            <node concept="10Nm6u" id="7tZeFupJFf3" role="3uHU7w" />
            <node concept="2OqwBi" id="7tZeFupJFf4" role="3uHU7B">
              <node concept="2WthIp" id="7tZeFupJFf5" role="2Oq$k0" />
              <node concept="1DTwFV" id="7tZeFupJFf6" role="2OqNvi">
                <ref role="2WH_rO" node="7tZeFupJFi7" resolve="cmodel" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7tZeFupJFf7" role="3clFbx">
            <node concept="3clFbF" id="7tZeFupJFf8" role="3cqZAp">
              <node concept="37vLTI" id="7tZeFupJFf9" role="3clFbG">
                <node concept="2OqwBi" id="7tZeFupJFfa" role="37vLTx">
                  <node concept="2WthIp" id="7tZeFupJFfb" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7tZeFupJFfc" role="2OqNvi">
                    <ref role="2WH_rO" node="7tZeFupJFi7" resolve="cmodel" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagT$KG" role="37vLTJ">
                  <ref role="3cqZAo" node="7tZeFupJFeY" resolve="md" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7tZeFupJFfe" role="3eNLev">
            <node concept="1Wc70l" id="5pMx$uHbYli" role="3eO9$A">
              <node concept="3y3z36" id="5pMx$uHbYlo" role="3uHU7B">
                <node concept="10Nm6u" id="5pMx$uHbYlr" role="3uHU7w" />
                <node concept="2OqwBi" id="5pMx$uHbYll" role="3uHU7B">
                  <node concept="2WthIp" id="5pMx$uHbYlm" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5pMx$uHbYln" role="2OqNvi">
                    <ref role="2WH_rO" node="7tZeFupJFi8" resolve="models" />
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="7tZeFupJFff" role="3uHU7w">
                <node concept="3cmrfG" id="7tZeFupJFfg" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7tZeFupJFfh" role="3uHU7B">
                  <node concept="2OqwBi" id="7tZeFupJFfi" role="2Oq$k0">
                    <node concept="2WthIp" id="7tZeFupJFfj" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7tZeFupJFfk" role="2OqNvi">
                      <ref role="2WH_rO" node="7tZeFupJFi8" resolve="models" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7tZeFupJFfl" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7tZeFupJFfm" role="3eOfB_">
              <node concept="3clFbF" id="7tZeFupJFfn" role="3cqZAp">
                <node concept="37vLTI" id="7tZeFupJFfo" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTwXc" role="37vLTJ">
                    <ref role="3cqZAo" node="7tZeFupJFeY" resolve="md" />
                  </node>
                  <node concept="2OqwBi" id="7tZeFupJFfq" role="37vLTx">
                    <node concept="2OqwBi" id="7tZeFupJFfr" role="2Oq$k0">
                      <node concept="2WthIp" id="7tZeFupJFfs" role="2Oq$k0" />
                      <node concept="1DTwFV" id="7tZeFupJFft" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFi8" resolve="models" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7tZeFupJFfu" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="7tZeFupJFfv" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJFfw" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTtAI" role="3clFbG">
            <ref role="3cqZAo" node="7tZeFupJFeY" resolve="md" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7tZeFupJFfy" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="7tZeFupJFfW" role="tncku">
      <node concept="3clFbS" id="7tZeFupJFfX" role="2VODD2">
        <node concept="3cpWs8" id="4OAoGY4h0CL" role="3cqZAp">
          <node concept="3cpWsn" id="4OAoGY4h0CM" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4OAoGY4h0CJ" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="4OAoGY4h0CN" role="33vP2m">
              <node concept="2WthIp" id="4OAoGY4h0CO" role="2Oq$k0">
                <ref role="32nkFo" node="7tZeFupJFeT" resolve="TextPreviewModel" />
              </node>
              <node concept="1DTwFV" id="4OAoGY4h0CP" role="2OqNvi">
                <ref role="2WH_rO" node="2BjwmTy5x3F" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4OAoGY4h8o8" role="3cqZAp">
          <node concept="3cpWsn" id="4OAoGY4h8o9" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4OAoGY4h8o7" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="4OAoGY4h8oa" role="33vP2m">
              <node concept="2WthIp" id="4OAoGY4h8ob" role="2Oq$k0">
                <ref role="32nkFo" node="7tZeFupJFeT" resolve="TextPreviewModel" />
              </node>
              <node concept="1DTwFV" id="4OAoGY4h8oc" role="2OqNvi">
                <ref role="2WH_rO" node="7G8hLbKxftz" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7G8hLbKytAp" role="3cqZAp">
          <node concept="3cpWsn" id="7G8hLbKytAq" role="3cpWs9">
            <property role="TrG5h" value="msgHandler" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7G8hLbKytAo" role="1tU5fm">
              <ref role="3uigEE" to="drpk:~DefaultMakeMessageHandler" resolve="DefaultMakeMessageHandler" />
            </node>
            <node concept="2ShNRf" id="7G8hLbKytAr" role="33vP2m">
              <node concept="1pGfFk" id="7G8hLbKytAs" role="2ShVmc">
                <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                <node concept="37vLTw" id="4OAoGY4hdGk" role="37wK5m">
                  <ref role="3cqZAo" node="4OAoGY4h0CM" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OOLb0mE4bs" role="3cqZAp">
          <node concept="3cpWsn" id="2OOLb0mE4bt" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="2OOLb0mE4bu" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2ShNRf" id="2OOLb0mE4bv" role="33vP2m">
              <node concept="1pGfFk" id="2OOLb0mE4bw" role="2ShVmc">
                <ref role="37wK5l" to="hfuk:2BjwmTxT7Q7" resolve="MakeSession" />
                <node concept="37vLTw" id="4OAoGY4h7PL" role="37wK5m">
                  <ref role="3cqZAo" node="4OAoGY4h0CM" resolve="mpsProject" />
                </node>
                <node concept="37vLTw" id="7G8hLbKytAw" role="37wK5m">
                  <ref role="3cqZAo" node="7G8hLbKytAq" resolve="msgHandler" />
                </node>
                <node concept="3clFbT" id="2OOLb0mE4b_" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7G8hLbKveNh" role="3cqZAp">
          <node concept="3cpWsn" id="7G8hLbKveNf" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="contextNode" />
            <node concept="3uibUv" id="7G8hLbKvfaV" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3K4zz7" id="7G8hLbKvgye" role="33vP2m">
              <node concept="2OqwBi" id="7G8hLbKvgJu" role="3K4GZi">
                <node concept="2OqwBi" id="7G8hLbKvgDf" role="2Oq$k0">
                  <node concept="2WthIp" id="7G8hLbKvgDi" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7G8hLbKvgDk" role="2OqNvi">
                    <ref role="2WH_rO" node="7rKYJcjJkbF" resolve="cnode" />
                  </node>
                </node>
                <node concept="liA8E" id="7G8hLbKvgSJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="10Nm6u" id="7G8hLbKvgC2" role="3K4E3e" />
              <node concept="3clFbC" id="7G8hLbKvgvd" role="3K4Cdx">
                <node concept="10Nm6u" id="7G8hLbKvgx5" role="3uHU7w" />
                <node concept="2OqwBi" id="7G8hLbKvglw" role="3uHU7B">
                  <node concept="2WthIp" id="7G8hLbKvglz" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7G8hLbKvgl_" role="2OqNvi">
                    <ref role="2WH_rO" node="7rKYJcjJkbF" resolve="cnode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IIVxgkMs1A" role="3cqZAp">
          <node concept="3cpWsn" id="IIVxgkMs1B" role="3cpWs9">
            <property role="TrG5h" value="makeService" />
            <node concept="3uibUv" id="IIVxgkMs1_" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMvH_" role="33vP2m">
              <node concept="2OqwBi" id="IIVxgkMvHA" role="2Oq$k0">
                <node concept="2OqwBi" id="IIVxgkMvHB" role="2Oq$k0">
                  <node concept="2WthIp" id="IIVxgkMvHC" role="2Oq$k0" />
                  <node concept="1DTwFV" id="IIVxgkMvHD" role="2OqNvi">
                    <ref role="2WH_rO" node="2BjwmTy5x3F" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="IIVxgkMvHE" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="IIVxgkMvHF" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMvHG" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="55mQcz8boV" role="3cqZAp">
          <node concept="3clFbS" id="55mQcz8boW" role="3clFbx">
            <node concept="3cpWs8" id="9D0Ba05uSG" role="3cqZAp">
              <node concept="3cpWsn" id="9D0Ba05uSH" role="3cpWs9">
                <property role="TrG5h" value="scr" />
                <node concept="3uibUv" id="9D0Ba05uSI" role="1tU5fm">
                  <ref role="3uigEE" to="i9so:5mqBoD3U3Wb" resolve="IScript" />
                </node>
                <node concept="2OqwBi" id="9D0Ba05uSJ" role="33vP2m">
                  <node concept="2OqwBi" id="9D0Ba05uSK" role="2Oq$k0">
                    <node concept="2OqwBi" id="9D0Ba05uSL" role="2Oq$k0">
                      <node concept="2ShNRf" id="9D0Ba05uSM" role="2Oq$k0">
                        <node concept="1pGfFk" id="9D0Ba05uSN" role="2ShVmc">
                          <ref role="37wK5l" to="i9so:5OO$M3_rzyt" resolve="ScriptBuilder" />
                          <node concept="2OqwBi" id="5OO$M3_vjUO" role="37wK5m">
                            <node concept="37vLTw" id="5OO$M3_vixr" role="2Oq$k0">
                              <ref role="3cqZAo" node="4OAoGY4h0CM" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="5OO$M3_vlua" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                              <node concept="3VsKOn" id="5OO$M3_vo1l" role="37wK5m">
                                <ref role="3VsUkX" to="ud0o:5mqBoD3U4oX" resolve="FacetRegistry" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="9D0Ba05uSO" role="2OqNvi">
                        <ref role="37wK5l" to="i9so:1i9nLvh04q7" resolve="withFacetNames" />
                        <node concept="2n6ZRZ" id="9D0Ba05uSP" role="37wK5m">
                          <node concept="2e$Q_j" id="9D0Ba05uSQ" role="2n6ZRX">
                            <ref role="1Mm5Yu" to="tpcq:5L5h3brvz7i" resolve="Generate" />
                          </node>
                        </node>
                        <node concept="2n6ZRZ" id="9D0Ba05uSR" role="37wK5m">
                          <node concept="2e$Q_j" id="9D0Ba05uSS" role="2n6ZRX">
                            <ref role="1Mm5Yu" to="tpcq:5L5h3brvDH_" resolve="TextGen" />
                          </node>
                        </node>
                        <node concept="2n6ZRZ" id="9D0Ba05uST" role="37wK5m">
                          <node concept="2e$Q_j" id="9D0Ba05uSU" role="2n6ZRX">
                            <ref role="1Mm5Yu" to="fy8e:taepSZ9r$V" resolve="Make" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="9D0Ba05uSV" role="2OqNvi">
                      <ref role="37wK5l" to="i9so:1i9nLvh04rg" resolve="withFinalTarget" />
                      <node concept="29r_a" id="9D0Ba05uSW" role="37wK5m">
                        <ref role="29tk1" to="tpcq:5L5h3brvDMU" resolve="textGenToMemory" />
                        <node concept="2n6ZRZ" id="9D0Ba05uSX" role="29tkj">
                          <node concept="2e$Q_j" id="9D0Ba05uSY" role="2n6ZRX">
                            <ref role="1Mm5Yu" to="tpcq:5L5h3brvDH_" resolve="TextGen" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="9D0Ba05uSZ" role="2OqNvi">
                    <ref role="37wK5l" to="i9so:1i9nLvh04s1" resolve="toScript" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7G8hLbKx1aG" role="3cqZAp">
              <node concept="3cpWsn" id="7G8hLbKx1aH" role="3cpWs9">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="7G8hLbKx1aE" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="7G8hLbKx1aI" role="33vP2m">
                  <node concept="2WthIp" id="7G8hLbKx1aJ" role="2Oq$k0" />
                  <node concept="2XshWL" id="7G8hLbKx1aK" role="2OqNvi">
                    <ref role="2WH_rO" node="7tZeFupJFeU" resolve="modelToGenerate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7G8hLbKx2bi" role="3cqZAp">
              <node concept="3cpWsn" id="7G8hLbKx2bg" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="model2generateRef" />
                <node concept="3uibUv" id="7G8hLbKx2Qq" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
                <node concept="2OqwBi" id="7G8hLbKx2ZN" role="33vP2m">
                  <node concept="37vLTw" id="7G8hLbKx2YO" role="2Oq$k0">
                    <ref role="3cqZAo" node="7G8hLbKx1aH" resolve="model" />
                  </node>
                  <node concept="liA8E" id="7G8hLbKx33Z" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7G8hLbKuJhw" role="3cqZAp">
              <node concept="3cpWsn" id="9D0Ba05uTr" role="3cpWs9">
                <property role="TrG5h" value="future" />
                <property role="3TUv4t" value="true" />
                <node concept="2OqwBi" id="9D0Ba05uTs" role="33vP2m">
                  <node concept="liA8E" id="9D0Ba05uTt" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:7yGn3z4N64T" resolve="make" />
                    <node concept="37vLTw" id="2BHiRxghgky" role="37wK5m">
                      <ref role="3cqZAo" node="2OOLb0mE4bt" resolve="session" />
                    </node>
                    <node concept="2OqwBi" id="9D0Ba05uTv" role="37wK5m">
                      <node concept="2ShNRf" id="9D0Ba05uTw" role="2Oq$k0">
                        <node concept="1pGfFk" id="9D0Ba05uTx" role="2ShVmc">
                          <ref role="37wK5l" to="fn29:6zsZmIC0WqK" resolve="ModelsToResources" />
                          <node concept="2ShNRf" id="9D0Ba05uTz" role="37wK5m">
                            <node concept="2HTt$P" id="9D0Ba05uT$" role="2ShVmc">
                              <node concept="3uibUv" id="2eVlusX0ZG4" role="2HTBi0">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                              <node concept="37vLTw" id="7G8hLbKx1aL" role="2HTEbv">
                                <ref role="3cqZAo" node="7G8hLbKx1aH" resolve="model" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="9D0Ba05uTB" role="2OqNvi">
                        <ref role="37wK5l" to="fn29:713BH0S$TAn" resolve="resources" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTzyl" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05uSH" resolve="scr" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IIVxgkMs1E" role="2Oq$k0">
                    <ref role="3cqZAo" node="IIVxgkMs1B" resolve="makeService" />
                  </node>
                </node>
                <node concept="3uibUv" id="9D0Ba05uTG" role="1tU5fm">
                  <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
                  <node concept="3uibUv" id="9D0Ba05uTH" role="11_B2D">
                    <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7G8hLbKuQah" role="3cqZAp">
              <node concept="2OqwBi" id="7G8hLbKuSdg" role="3clFbG">
                <node concept="2YIFZM" id="7G8hLbKuSc3" role="2Oq$k0">
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                </node>
                <node concept="liA8E" id="7G8hLbKuSgt" role="2OqNvi">
                  <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
                  <node concept="2ShNRf" id="7G8hLbKuU6i" role="37wK5m">
                    <node concept="YeOm9" id="7G8hLbKuVT_" role="2ShVmc">
                      <node concept="1Y3b0j" id="7G8hLbKuVTC" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="7G8hLbKuVTD" role="1B3o_S" />
                        <node concept="3clFb_" id="7G8hLbKuVTE" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="run" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="7G8hLbKuVTF" role="1B3o_S" />
                          <node concept="3cqZAl" id="7G8hLbKuVTH" role="3clF45" />
                          <node concept="3clFbS" id="7G8hLbKuVTI" role="3clF47">
                            <node concept="3J1_TO" id="7G8hLbKuXNs" role="3cqZAp">
                              <node concept="3uVAMA" id="7G8hLbKuXNk" role="1zxBo5">
                                <node concept="XOnhg" id="7G8hLbKuXNm" role="1zc67B">
                                  <property role="3TUv4t" value="false" />
                                  <property role="TrG5h" value="e" />
                                  <node concept="nSUau" id="xvs04dHTY1" role="1tU5fm">
                                    <node concept="3uibUv" id="7G8hLbKyEt1" role="nSUat">
                                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="7G8hLbKuXNl" role="1zc67A">
                                  <node concept="3clFbF" id="7G8hLbKyy0r" role="3cqZAp">
                                    <node concept="2OqwBi" id="7G8hLbKyyc7" role="3clFbG">
                                      <node concept="37vLTw" id="7G8hLbKyy0q" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7G8hLbKytAq" resolve="msgHandler" />
                                      </node>
                                      <node concept="liA8E" id="7G8hLbKyyhp" role="2OqNvi">
                                        <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                                        <node concept="2OqwBi" id="7G8hLbKyDba" role="37wK5m">
                                          <node concept="2ShNRf" id="7G8hLbKyyrW" role="2Oq$k0">
                                            <node concept="1pGfFk" id="7G8hLbKy$dh" role="2ShVmc">
                                              <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="Message" />
                                              <node concept="Rm8GO" id="7G8hLbKyBjC" role="37wK5m">
                                                <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                                                <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                              </node>
                                              <node concept="Xl_RD" id="7G8hLbKyCr5" role="37wK5m">
                                                <property role="Xl_RC" value="TextPreviewModel" />
                                              </node>
                                              <node concept="2OqwBi" id="7G8hLbKyCYT" role="37wK5m">
                                                <node concept="37vLTw" id="7G8hLbKyCXh" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7G8hLbKuXNm" resolve="e" />
                                                </node>
                                                <node concept="liA8E" id="7G8hLbKyD6M" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~Throwable.toString()" resolve="toString" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7G8hLbKyDiY" role="2OqNvi">
                                            <ref role="37wK5l" to="et5u:~Message.setException(java.lang.Throwable)" resolve="setException" />
                                            <node concept="37vLTw" id="7G8hLbKyDAa" role="37wK5m">
                                              <ref role="3cqZAo" node="7G8hLbKuXNm" resolve="e" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7G8hLbKuXNt" role="1zxBo7">
                                <node concept="3cpWs8" id="9D0Ba05uTX" role="3cqZAp">
                                  <node concept="3cpWsn" id="9D0Ba05uTY" role="3cpWs9">
                                    <property role="TrG5h" value="result" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="9D0Ba05uTZ" role="1tU5fm">
                                      <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                                    </node>
                                    <node concept="2OqwBi" id="9D0Ba05uU0" role="33vP2m">
                                      <node concept="37vLTw" id="3GM_nagTAeY" role="2Oq$k0">
                                        <ref role="3cqZAo" node="9D0Ba05uTr" resolve="future" />
                                      </node>
                                      <node concept="liA8E" id="9D0Ba05uU2" role="2OqNvi">
                                        <ref role="37wK5l" to="5zyv:~Future.get()" resolve="get" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="7G8hLbKwKBl" role="3cqZAp">
                                  <node concept="3cpWsn" id="7G8hLbKwKBm" role="3cpWs9">
                                    <property role="TrG5h" value="previewFiles" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="7G8hLbKwK__" role="1tU5fm">
                                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                      <node concept="3uibUv" id="7G8hLbKwK_C" role="11_B2D">
                                        <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7G8hLbKwKBn" role="33vP2m">
                                      <node concept="2ShNRf" id="7G8hLbKwKBo" role="2Oq$k0">
                                        <node concept="1pGfFk" id="7G8hLbKwKBp" role="2ShVmc">
                                          <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                                          <node concept="2OqwBi" id="7G8hLbKwKBq" role="37wK5m">
                                            <node concept="37vLTw" id="4OAoGY4h0CQ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4OAoGY4h0CM" resolve="mpsProject" />
                                            </node>
                                            <node concept="liA8E" id="7G8hLbKwKBu" role="2OqNvi">
                                              <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7G8hLbKwKBv" role="2OqNvi">
                                        <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                                        <node concept="2ShNRf" id="7G8hLbKwKBw" role="37wK5m">
                                          <node concept="YeOm9" id="7G8hLbKwKBx" role="2ShVmc">
                                            <node concept="1Y3b0j" id="7G8hLbKwKBy" role="YeSDq">
                                              <property role="2bfB8j" value="true" />
                                              <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                              <node concept="3Tm1VV" id="7G8hLbKwKBz" role="1B3o_S" />
                                              <node concept="3clFb_" id="7G8hLbKwKB$" role="jymVt">
                                                <property role="1EzhhJ" value="false" />
                                                <property role="TrG5h" value="compute" />
                                                <property role="DiZV1" value="false" />
                                                <property role="od$2w" value="false" />
                                                <node concept="3Tm1VV" id="7G8hLbKwKB_" role="1B3o_S" />
                                                <node concept="3uibUv" id="7G8hLbKwKBA" role="3clF45">
                                                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                                  <node concept="3uibUv" id="7G8hLbKwKBB" role="11_B2D">
                                                    <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                  </node>
                                                </node>
                                                <node concept="3clFbS" id="7G8hLbKwKBC" role="3clF47">
                                                  <node concept="3cpWs8" id="7G8hLbKwKBD" role="3cqZAp">
                                                    <node concept="3cpWsn" id="7G8hLbKwKBE" role="3cpWs9">
                                                      <property role="TrG5h" value="rv" />
                                                      <node concept="3uibUv" id="7G8hLbKwKBF" role="1tU5fm">
                                                        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                                                        <node concept="3uibUv" id="7G8hLbKwKBG" role="11_B2D">
                                                          <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                        </node>
                                                      </node>
                                                      <node concept="2ShNRf" id="7G8hLbKwKBH" role="33vP2m">
                                                        <node concept="1pGfFk" id="7G8hLbKwKBI" role="2ShVmc">
                                                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                                                          <node concept="3uibUv" id="7G8hLbKwKBJ" role="1pMfVU">
                                                            <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="2Gpval" id="7G8hLbKwKBK" role="3cqZAp">
                                                    <node concept="2GrKxI" id="7G8hLbKwKBL" role="2Gsz3X">
                                                      <property role="TrG5h" value="tgr" />
                                                    </node>
                                                    <node concept="3clFbS" id="7G8hLbKwKBM" role="2LFqv$">
                                                      <node concept="3SKdUt" id="7G8hLbKwKBN" role="3cqZAp">
                                                        <node concept="1PaTwC" id="ATZLwXoj9t" role="1aUNEU">
                                                          <node concept="3oM_SD" id="ATZLwXoj9u" role="1PaTwD">
                                                            <property role="3oM_SC" value="XXX" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9v" role="1PaTwD">
                                                            <property role="3oM_SC" value="don't" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9w" role="1PaTwD">
                                                            <property role="3oM_SC" value="see" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9x" role="1PaTwD">
                                                            <property role="3oM_SC" value="too" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9y" role="1PaTwD">
                                                            <property role="3oM_SC" value="much" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9z" role="1PaTwD">
                                                            <property role="3oM_SC" value="value" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9$" role="1PaTwD">
                                                            <property role="3oM_SC" value="in" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9_" role="1PaTwD">
                                                            <property role="3oM_SC" value="modelName," />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9A" role="1PaTwD">
                                                            <property role="3oM_SC" value="shall" />
                                                          </node>
                                                          <node concept="3oM_SD" id="ATZLwXoj9B" role="1PaTwD">
                                                            <property role="3oM_SC" value="drop?" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="7G8hLbKwKBP" role="3cqZAp">
                                                        <node concept="3cpWsn" id="7G8hLbKwKBQ" role="3cpWs9">
                                                          <property role="TrG5h" value="modelName" />
                                                          <node concept="17QB3L" id="7G8hLbKwKBR" role="1tU5fm" />
                                                          <node concept="2YIFZM" id="7G8hLbKwKBS" role="33vP2m">
                                                            <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String)" resolve="compactNamespace" />
                                                            <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                                            <node concept="2OqwBi" id="7G8hLbKwKBT" role="37wK5m">
                                                              <node concept="2OqwBi" id="7G8hLbKwKBU" role="2Oq$k0">
                                                                <node concept="2GrUjf" id="7G8hLbKwKBV" role="2Oq$k0">
                                                                  <ref role="2Gs0qQ" node="7G8hLbKwKBL" resolve="tgr" />
                                                                </node>
                                                                <node concept="liA8E" id="7G8hLbKwKBW" role="2OqNvi">
                                                                  <ref role="37wK5l" to="tpcq:2Op6w9TzkM3" resolve="getModel" />
                                                                </node>
                                                              </node>
                                                              <node concept="liA8E" id="7G8hLbKwKBX" role="2OqNvi">
                                                                <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="7G8hLbK$DqR" role="3cqZAp">
                                                        <node concept="3cpWsn" id="7G8hLbK$DqS" role="3cpWs9">
                                                          <property role="TrG5h" value="repo" />
                                                          <property role="3TUv4t" value="true" />
                                                          <node concept="3uibUv" id="7G8hLbK$DqN" role="1tU5fm">
                                                            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                                                          </node>
                                                          <node concept="2OqwBi" id="7G8hLbK$DqT" role="33vP2m">
                                                            <node concept="37vLTw" id="4OAoGY4h0CR" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="4OAoGY4h0CM" resolve="mpsProject" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbK$DqX" role="2OqNvi">
                                                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="7G8hLbKxZ$f" role="3cqZAp">
                                                        <node concept="3cpWsn" id="7G8hLbKxZ$g" role="3cpWs9">
                                                          <property role="TrG5h" value="cn" />
                                                          <node concept="3Tqbb2" id="7G8hLbKy7af" role="1tU5fm" />
                                                          <node concept="3K4zz7" id="7G8hLbKy1Fp" role="33vP2m">
                                                            <node concept="2OqwBi" id="7G8hLbKy3eV" role="3K4GZi">
                                                              <node concept="37vLTw" id="7G8hLbKy2Q4" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="7G8hLbKveNf" resolve="contextNode" />
                                                              </node>
                                                              <node concept="liA8E" id="7G8hLbKy3k9" role="2OqNvi">
                                                                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                                <node concept="37vLTw" id="7G8hLbK$DqY" role="37wK5m">
                                                                  <ref role="3cqZAo" node="7G8hLbK$DqS" resolve="repo" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="10Nm6u" id="7G8hLbKy23Q" role="3K4E3e" />
                                                            <node concept="3clFbC" id="7G8hLbKy0QG" role="3K4Cdx">
                                                              <node concept="10Nm6u" id="7G8hLbKy1fi" role="3uHU7w" />
                                                              <node concept="37vLTw" id="7G8hLbKy0ud" role="3uHU7B">
                                                                <ref role="3cqZAo" node="7G8hLbKveNf" resolve="contextNode" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="7G8hLbKyji$" role="3cqZAp">
                                                        <node concept="3cpWsn" id="7G8hLbKyji_" role="3cpWs9">
                                                          <property role="TrG5h" value="ancestors" />
                                                          <node concept="2I9FWS" id="7G8hLbKyjig" role="1tU5fm" />
                                                          <node concept="3K4zz7" id="7G8hLbKyltg" role="33vP2m">
                                                            <node concept="2ShNRf" id="7G8hLbKylSz" role="3K4E3e">
                                                              <node concept="2T8Vx0" id="7G8hLbKyo$S" role="2ShVmc">
                                                                <node concept="2I9FWS" id="7G8hLbKyo$U" role="2T96Bj" />
                                                              </node>
                                                            </node>
                                                            <node concept="3clFbC" id="7G8hLbKykGf" role="3K4Cdx">
                                                              <node concept="10Nm6u" id="7G8hLbKyl4H" role="3uHU7w" />
                                                              <node concept="37vLTw" id="7G8hLbKykDL" role="3uHU7B">
                                                                <ref role="3cqZAo" node="7G8hLbKxZ$g" resolve="cn" />
                                                              </node>
                                                            </node>
                                                            <node concept="2OqwBi" id="7G8hLbKyjiA" role="3K4GZi">
                                                              <node concept="37vLTw" id="7G8hLbKyjiB" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="7G8hLbKxZ$g" resolve="cn" />
                                                              </node>
                                                              <node concept="z$bX8" id="7G8hLbKyjiC" role="2OqNvi">
                                                                <node concept="1xIGOp" id="7G8hLbKyjiD" role="1xVPHs" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="1DcWWT" id="7G8hLbKwKBY" role="3cqZAp">
                                                        <node concept="3clFbS" id="7G8hLbKwKBZ" role="2LFqv$">
                                                          <node concept="3clFbJ" id="7G8hLbK$yAD" role="3cqZAp">
                                                            <node concept="3clFbS" id="7G8hLbK$yAF" role="3clFbx">
                                                              <node concept="3cpWs8" id="7G8hLbK$ITN" role="3cqZAp">
                                                                <node concept="3cpWsn" id="7G8hLbK$ITO" role="3cpWs9">
                                                                  <property role="TrG5h" value="originalStart" />
                                                                  <node concept="3uibUv" id="7G8hLbK$ITD" role="1tU5fm">
                                                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                                  </node>
                                                                  <node concept="2YIFZM" id="7G8hLbK$ITP" role="33vP2m">
                                                                    <ref role="37wK5l" to="fwk:~TracingUtil.getInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="getInputNode" />
                                                                    <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
                                                                    <node concept="2OqwBi" id="7G8hLbK$ITQ" role="37wK5m">
                                                                      <node concept="37vLTw" id="7G8hLbK$ITR" role="2Oq$k0">
                                                                        <ref role="3cqZAo" node="7G8hLbKwKC8" resolve="tu" />
                                                                      </node>
                                                                      <node concept="liA8E" id="7G8hLbK$ITS" role="2OqNvi">
                                                                        <ref role="37wK5l" to="ao3:~TextUnit.getStartNode()" resolve="getStartNode" />
                                                                      </node>
                                                                    </node>
                                                                    <node concept="37vLTw" id="7G8hLbK$ITT" role="37wK5m">
                                                                      <ref role="3cqZAo" node="7G8hLbK$DqS" resolve="repo" />
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                              <node concept="3clFbJ" id="7G8hLbK$K3Z" role="3cqZAp">
                                                                <node concept="3clFbS" id="7G8hLbK$K41" role="3clFbx">
                                                                  <node concept="3N13vt" id="7G8hLbK$R9g" role="3cqZAp" />
                                                                </node>
                                                                <node concept="1Wc70l" id="7G8hLbK$LNV" role="3clFbw">
                                                                  <node concept="3fqX7Q" id="7G8hLbK$P$f" role="3uHU7w">
                                                                    <node concept="2OqwBi" id="7G8hLbK$P$h" role="3fr31v">
                                                                      <node concept="37vLTw" id="7G8hLbK$P$i" role="2Oq$k0">
                                                                        <ref role="3cqZAo" node="7G8hLbKyji_" resolve="ancestors" />
                                                                      </node>
                                                                      <node concept="3JPx81" id="7G8hLbK$P$j" role="2OqNvi">
                                                                        <node concept="37vLTw" id="7G8hLbK$P$k" role="25WWJ7">
                                                                          <ref role="3cqZAo" node="7G8hLbK$ITO" resolve="originalStart" />
                                                                        </node>
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                  <node concept="3y3z36" id="7G8hLbK$L3J" role="3uHU7B">
                                                                    <node concept="37vLTw" id="7G8hLbK$KOn" role="3uHU7B">
                                                                      <ref role="3cqZAo" node="7G8hLbK$ITO" resolve="originalStart" />
                                                                    </node>
                                                                    <node concept="10Nm6u" id="7G8hLbK$LrM" role="3uHU7w" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="3y3z36" id="7G8hLbK$zsp" role="3clFbw">
                                                              <node concept="10Nm6u" id="7G8hLbK$zOs" role="3uHU7w" />
                                                              <node concept="37vLTw" id="7G8hLbK$z3u" role="3uHU7B">
                                                                <ref role="3cqZAo" node="7G8hLbKxZ$g" resolve="cn" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3clFbF" id="7G8hLbKwKC0" role="3cqZAp">
                                                            <node concept="2OqwBi" id="7G8hLbKwKC1" role="3clFbG">
                                                              <node concept="37vLTw" id="7G8hLbKwKC2" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="7G8hLbKwKBE" resolve="rv" />
                                                              </node>
                                                              <node concept="liA8E" id="7G8hLbKwKC3" role="2OqNvi">
                                                                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                                                <node concept="2ShNRf" id="7G8hLbKwKC4" role="37wK5m">
                                                                  <node concept="1pGfFk" id="7G8hLbKwKC5" role="2ShVmc">
                                                                    <ref role="37wK5l" to="bcn8:7G8hLbKvGDI" resolve="TextPreviewFile" />
                                                                    <node concept="37vLTw" id="7G8hLbKwKC6" role="37wK5m">
                                                                      <ref role="3cqZAo" node="7G8hLbKwKC8" resolve="tu" />
                                                                    </node>
                                                                    <node concept="37vLTw" id="7G8hLbKwKC7" role="37wK5m">
                                                                      <ref role="3cqZAo" node="7G8hLbKwKBQ" resolve="modelName" />
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3cpWsn" id="7G8hLbKwKC8" role="1Duv9x">
                                                          <property role="TrG5h" value="tu" />
                                                          <node concept="3uibUv" id="7G8hLbKwKC9" role="1tU5fm">
                                                            <ref role="3uigEE" to="ao3:~TextUnit" resolve="TextUnit" />
                                                          </node>
                                                        </node>
                                                        <node concept="2OqwBi" id="7G8hLbKwKCa" role="1DdaDG">
                                                          <node concept="2OqwBi" id="7G8hLbKwKCb" role="2Oq$k0">
                                                            <node concept="2GrUjf" id="7G8hLbKwKCc" role="2Oq$k0">
                                                              <ref role="2Gs0qQ" node="7G8hLbKwKBL" resolve="tgr" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbKwKCd" role="2OqNvi">
                                                              <ref role="37wK5l" to="tpcq:2Op6w9TzkMb" resolve="getTextGenResult" />
                                                            </node>
                                                          </node>
                                                          <node concept="liA8E" id="7G8hLbKwKCe" role="2OqNvi">
                                                            <ref role="37wK5l" to="ao3:~TextGenResult.getUnits()" resolve="getUnits" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2OqwBi" id="7G8hLbKwKCf" role="2GsD0m">
                                                      <node concept="2OqwBi" id="7G8hLbKwKCg" role="2Oq$k0">
                                                        <node concept="37vLTw" id="7G8hLbKwKCh" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="9D0Ba05uTY" resolve="result" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKwKCi" role="2OqNvi">
                                                          <ref role="37wK5l" to="i9so:17I1R__cQ6W" resolve="output" />
                                                        </node>
                                                      </node>
                                                      <node concept="UnYns" id="7G8hLbKwKCj" role="2OqNvi">
                                                        <node concept="3uibUv" id="7G8hLbKwKCk" role="UnYnz">
                                                          <ref role="3uigEE" to="tpcq:2Op6w9TzkLg" resolve="TextGenOutcomeResource" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3cpWs6" id="7G8hLbKwKCl" role="3cqZAp">
                                                    <node concept="37vLTw" id="7G8hLbKwKCm" role="3cqZAk">
                                                      <ref role="3cqZAo" node="7G8hLbKwKBE" resolve="rv" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3uibUv" id="7G8hLbKwKCn" role="2Ghqu4">
                                                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                                <node concept="3uibUv" id="7G8hLbKwKCo" role="11_B2D">
                                                  <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="7G8hLbKwUoM" role="3cqZAp" />
                                <node concept="3clFbF" id="7G8hLbKwVKe" role="3cqZAp">
                                  <node concept="2OqwBi" id="7G8hLbKwWpa" role="3clFbG">
                                    <node concept="2YIFZM" id="7G8hLbKwWlj" role="2Oq$k0">
                                      <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                      <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                    </node>
                                    <node concept="liA8E" id="7G8hLbKwWvc" role="2OqNvi">
                                      <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="2ShNRf" id="7G8hLbKwWBp" role="37wK5m">
                                        <node concept="YeOm9" id="7G8hLbKwYog" role="2ShVmc">
                                          <node concept="1Y3b0j" id="7G8hLbKwYoj" role="YeSDq">
                                            <property role="2bfB8j" value="true" />
                                            <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                            <node concept="3Tm1VV" id="7G8hLbKwYok" role="1B3o_S" />
                                            <node concept="3clFb_" id="7G8hLbKwYol" role="jymVt">
                                              <property role="1EzhhJ" value="false" />
                                              <property role="TrG5h" value="run" />
                                              <property role="DiZV1" value="false" />
                                              <property role="od$2w" value="false" />
                                              <node concept="3Tm1VV" id="7G8hLbKwYom" role="1B3o_S" />
                                              <node concept="3cqZAl" id="7G8hLbKwYoo" role="3clF45" />
                                              <node concept="3clFbS" id="7G8hLbKwYop" role="3clF47">
                                                <node concept="3clFbJ" id="7G8hLbKwHwU" role="3cqZAp">
                                                  <node concept="3clFbS" id="7G8hLbKwHwW" role="3clFbx">
                                                    <node concept="3cpWs8" id="7G8hLbKx3QN" role="3cqZAp">
                                                      <node concept="3cpWsn" id="7G8hLbKx3QO" role="3cpWs9">
                                                        <property role="TrG5h" value="message" />
                                                        <node concept="3uibUv" id="7G8hLbKx_mk" role="1tU5fm">
                                                          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                                                        </node>
                                                        <node concept="2ShNRf" id="7G8hLbKx_DI" role="33vP2m">
                                                          <node concept="1pGfFk" id="7G8hLbKxD6n" role="2ShVmc">
                                                            <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="7G8hLbKxKcq" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7G8hLbKxKza" role="3clFbG">
                                                        <node concept="37vLTw" id="7G8hLbKxKco" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKxKHS" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                          <node concept="Xl_RD" id="7G8hLbKxKZE" role="37wK5m">
                                                            <property role="Xl_RC" value="Model processed:" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="7G8hLbKxLMC" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7G8hLbKxM7m" role="3clFbG">
                                                        <node concept="37vLTw" id="7G8hLbKxLMA" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKxMi5" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                                                          <node concept="37vLTw" id="7G8hLbKxMMY" role="37wK5m">
                                                            <ref role="3cqZAo" node="7G8hLbKx2bg" resolve="model2generateRef" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="7G8hLbKxNPZ" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7G8hLbKxOb5" role="3clFbG">
                                                        <node concept="37vLTw" id="7G8hLbKxNPX" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKxOfq" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                          <node concept="Xl_RD" id="7G8hLbKxOxk" role="37wK5m">
                                                            <property role="Xl_RC" value="\n" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbJ" id="7G8hLbKxPrA" role="3cqZAp">
                                                      <node concept="3clFbS" id="7G8hLbKxPrC" role="3clFbx">
                                                        <node concept="3clFbF" id="7G8hLbKxQBr" role="3cqZAp">
                                                          <node concept="2OqwBi" id="7G8hLbKxQBs" role="3clFbG">
                                                            <node concept="37vLTw" id="7G8hLbKxQBt" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbKxQBu" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="7G8hLbKxQBv" role="37wK5m">
                                                                <property role="Xl_RC" value="Context node:" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbF" id="7G8hLbKxQBw" role="3cqZAp">
                                                          <node concept="2OqwBi" id="7G8hLbKxQBx" role="3clFbG">
                                                            <node concept="37vLTw" id="7G8hLbKxQBy" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbKxQBz" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                                                              <node concept="37vLTw" id="7G8hLbKxRiA" role="37wK5m">
                                                                <ref role="3cqZAo" node="7G8hLbKveNf" resolve="contextNode" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbF" id="7G8hLbKxQB_" role="3cqZAp">
                                                          <node concept="2OqwBi" id="7G8hLbKxQBA" role="3clFbG">
                                                            <node concept="37vLTw" id="7G8hLbKxQBB" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbKxQBC" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="7G8hLbKxQBD" role="37wK5m">
                                                                <property role="Xl_RC" value="\n" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3y3z36" id="7G8hLbKxQkx" role="3clFbw">
                                                        <node concept="10Nm6u" id="7G8hLbKxQzM" role="3uHU7w" />
                                                        <node concept="37vLTw" id="7G8hLbKxQ1o" role="3uHU7B">
                                                          <ref role="3cqZAo" node="7G8hLbKveNf" resolve="contextNode" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbJ" id="7G8hLbKv0k3" role="3cqZAp">
                                                      <node concept="3clFbS" id="7G8hLbKv0k5" role="3clFbx">
                                                        <node concept="3clFbF" id="7G8hLbKxEd7" role="3cqZAp">
                                                          <node concept="2OqwBi" id="7G8hLbKxEt_" role="3clFbG">
                                                            <node concept="37vLTw" id="7G8hLbKxEd5" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbKxEC7" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="7G8hLbKxETH" role="37wK5m">
                                                                <property role="Xl_RC" value="Text generation completed successfully\n" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="7G8hLbKv0A6" role="3clFbw">
                                                        <node concept="37vLTw" id="7G8hLbKv0tJ" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="9D0Ba05uTY" resolve="result" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKv0CT" role="2OqNvi">
                                                          <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                                                        </node>
                                                      </node>
                                                      <node concept="9aQIb" id="7G8hLbKx$Wk" role="9aQIa">
                                                        <node concept="3clFbS" id="7G8hLbKx$Wl" role="9aQI4">
                                                          <node concept="3clFbF" id="7G8hLbKxRre" role="3cqZAp">
                                                            <node concept="2OqwBi" id="7G8hLbKxRrf" role="3clFbG">
                                                              <node concept="37vLTw" id="7G8hLbKxRrg" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                              </node>
                                                              <node concept="liA8E" id="7G8hLbKxRrh" role="2OqNvi">
                                                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                                <node concept="Xl_RD" id="7G8hLbKxRri" role="37wK5m">
                                                                  <property role="Xl_RC" value="Text generation completed with errors\n" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbJ" id="7G8hLbKxFU2" role="3cqZAp">
                                                      <node concept="3clFbS" id="7G8hLbKxFU4" role="3clFbx">
                                                        <node concept="3clFbF" id="7G8hLbKxSd4" role="3cqZAp">
                                                          <node concept="2OqwBi" id="7G8hLbKxSty" role="3clFbG">
                                                            <node concept="37vLTw" id="7G8hLbKxSd3" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="7G8hLbKxSxR" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="7G8hLbKxSNK" role="37wK5m">
                                                                <property role="Xl_RC" value="None of generated text units reference context node" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3y3z36" id="7G8hLbKxTdN" role="3clFbw">
                                                        <node concept="37vLTw" id="7G8hLbKxGQd" role="3uHU7B">
                                                          <ref role="3cqZAo" node="7G8hLbKveNf" resolve="contextNode" />
                                                        </node>
                                                        <node concept="10Nm6u" id="7G8hLbKxHG8" role="3uHU7w" />
                                                      </node>
                                                      <node concept="9aQIb" id="7G8hLbKxRBU" role="9aQIa">
                                                        <node concept="3clFbS" id="7G8hLbKxRBV" role="9aQI4">
                                                          <node concept="3clFbF" id="7G8hLbKxIhO" role="3cqZAp">
                                                            <node concept="2OqwBi" id="7G8hLbKxISL" role="3clFbG">
                                                              <node concept="37vLTw" id="7G8hLbKxI_G" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                              </node>
                                                              <node concept="liA8E" id="7G8hLbKxJ18" role="2OqNvi">
                                                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                                <node concept="Xl_RD" id="7G8hLbKxJj0" role="37wK5m">
                                                                  <property role="Xl_RC" value="There were no text units generated." />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="7G8hLbKxvn_" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7G8hLbKxvKl" role="3clFbG">
                                                        <node concept="37vLTw" id="7G8hLbKxvnz" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7G8hLbKwKBm" resolve="previewFiles" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKxwkD" role="2OqNvi">
                                                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                                          <node concept="2ShNRf" id="7G8hLbKxw_d" role="37wK5m">
                                                            <node concept="1pGfFk" id="7G8hLbKxyOk" role="2ShVmc">
                                                              <ref role="37wK5l" to="bcn8:9D0Ba05uR_" resolve="TextPreviewFile" />
                                                              <node concept="Xl_RD" id="7G8hLbKxzrw" role="37wK5m">
                                                                <property role="Xl_RC" value="TextGen" />
                                                              </node>
                                                              <node concept="2OqwBi" id="7G8hLbKxDr5" role="37wK5m">
                                                                <node concept="37vLTw" id="7G8hLbKxzTK" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="7G8hLbKx3QO" resolve="message" />
                                                                </node>
                                                                <node concept="liA8E" id="7G8hLbKxDAZ" role="2OqNvi">
                                                                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                                                                </node>
                                                              </node>
                                                              <node concept="2OqwBi" id="7G8hLbKx$M8" role="37wK5m">
                                                                <node concept="37vLTw" id="7G8hLbKx$uI" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="7G8hLbKx2bg" resolve="model2generateRef" />
                                                                </node>
                                                                <node concept="liA8E" id="7G8hLbKx$RX" role="2OqNvi">
                                                                  <ref role="37wK5l" to="mhbf:~SModelReference.getModelName()" resolve="getModelName" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="7G8hLbKwOyf" role="3clFbw">
                                                    <node concept="37vLTw" id="7G8hLbKwOfj" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="7G8hLbKwKBm" resolve="previewFiles" />
                                                    </node>
                                                    <node concept="liA8E" id="7G8hLbKwP6r" role="2OqNvi">
                                                      <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="7G8hLbKx9L4" role="3cqZAp">
                                                  <node concept="3cpWsn" id="7G8hLbKx9L5" role="3cpWs9">
                                                    <property role="TrG5h" value="fem" />
                                                    <node concept="3uibUv" id="7G8hLbKx9L6" role="1tU5fm">
                                                      <ref role="3uigEE" to="iwsx:~FileEditorManager" resolve="FileEditorManager" />
                                                    </node>
                                                    <node concept="2YIFZM" id="7G8hLbKxaop" role="33vP2m">
                                                      <ref role="37wK5l" to="iwsx:~FileEditorManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                                      <ref role="1Pybhc" to="iwsx:~FileEditorManager" resolve="FileEditorManager" />
                                                      <node concept="37vLTw" id="4OAoGY4haIz" role="37wK5m">
                                                        <ref role="3cqZAo" node="4OAoGY4h8o9" resolve="ideaProject" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="2Gpval" id="7G8hLbKxlhL" role="3cqZAp">
                                                  <node concept="2GrKxI" id="7G8hLbKxlhN" role="2Gsz3X">
                                                    <property role="TrG5h" value="f" />
                                                  </node>
                                                  <node concept="3clFbS" id="7G8hLbKxlhP" role="2LFqv$">
                                                    <node concept="3clFbF" id="7G8hLbKxmu1" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7G8hLbKxmHF" role="3clFbG">
                                                        <node concept="37vLTw" id="7G8hLbKxmu0" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7G8hLbKx9L5" resolve="fem" />
                                                        </node>
                                                        <node concept="liA8E" id="7G8hLbKxmLz" role="2OqNvi">
                                                          <ref role="37wK5l" to="iwsx:~FileEditorManager.openTextEditor(com.intellij.openapi.fileEditor.OpenFileDescriptor,boolean)" resolve="openTextEditor" />
                                                          <node concept="2ShNRf" id="7G8hLbKxn5L" role="37wK5m">
                                                            <node concept="1pGfFk" id="7G8hLbKxpjs" role="2ShVmc">
                                                              <ref role="37wK5l" to="iwsx:~OpenFileDescriptor.&lt;init&gt;(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="OpenFileDescriptor" />
                                                              <node concept="37vLTw" id="4OAoGY4hb$8" role="37wK5m">
                                                                <ref role="3cqZAo" node="4OAoGY4h8o9" resolve="ideaProject" />
                                                              </node>
                                                              <node concept="2GrUjf" id="7G8hLbKxtgN" role="37wK5m">
                                                                <ref role="2Gs0qQ" node="7G8hLbKxlhN" resolve="f" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3clFbT" id="7G8hLbKxtwA" role="37wK5m">
                                                            <property role="3clFbU" value="true" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="37vLTw" id="7G8hLbKxlRg" role="2GsD0m">
                                                    <ref role="3cqZAo" node="7G8hLbKwKBm" resolve="previewFiles" />
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
                                <node concept="3SKdUt" id="7G8hLbKwSHm" role="3cqZAp">
                                  <node concept="1PaTwC" id="ATZLwXoj9C" role="1aUNEU">
                                    <node concept="3oM_SD" id="ATZLwXoj9D" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9E" role="1PaTwD">
                                      <property role="3oM_SC" value="update" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9F" role="1PaTwD">
                                      <property role="3oM_SC" value="tree" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9G" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9H" role="1PaTwD">
                                      <property role="3oM_SC" value="reveal" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9I" role="1PaTwD">
                                      <property role="3oM_SC" value="transient" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9J" role="1PaTwD">
                                      <property role="3oM_SC" value="models." />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9K" role="1PaTwD">
                                      <property role="3oM_SC" value="is" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9L" role="1PaTwD">
                                      <property role="3oM_SC" value="it" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9M" role="1PaTwD">
                                      <property role="3oM_SC" value="still" />
                                    </node>
                                    <node concept="3oM_SD" id="ATZLwXoj9N" role="1PaTwD">
                                      <property role="3oM_SC" value="necessary?" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="5O_sWVJ5DYC" role="3cqZAp">
                                  <node concept="3cpWsn" id="5O_sWVJ5DYD" role="3cpWs9">
                                    <property role="TrG5h" value="pane" />
                                    <node concept="3uibUv" id="5O_sWVJ5DYz" role="1tU5fm">
                                      <ref role="3uigEE" to="rvbb:~ProjectPane" resolve="ProjectPane" />
                                    </node>
                                    <node concept="2YIFZM" id="5O_sWVJ5DYE" role="33vP2m">
                                      <ref role="37wK5l" to="rvbb:~ProjectPane.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                                      <ref role="1Pybhc" to="rvbb:~ProjectPane" resolve="ProjectPane" />
                                      <node concept="37vLTw" id="5O_sWVJ5DYF" role="37wK5m">
                                        <ref role="3cqZAo" node="4OAoGY4h0CM" resolve="mpsProject" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="5O_sWVJ5HCy" role="3cqZAp">
                                  <node concept="3clFbS" id="5O_sWVJ5HC$" role="3clFbx">
                                    <node concept="3clFbF" id="9D0Ba05uV0" role="3cqZAp">
                                      <node concept="2OqwBi" id="9D0Ba05uV1" role="3clFbG">
                                        <node concept="37vLTw" id="5O_sWVJ5DYG" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5O_sWVJ5DYD" resolve="pane" />
                                        </node>
                                        <node concept="liA8E" id="9D0Ba05uV6" role="2OqNvi">
                                          <ref role="37wK5l" to="rvbb:~ProjectPane.rebuild()" resolve="rebuild" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="5O_sWVJ5JZ$" role="3clFbw">
                                    <node concept="10Nm6u" id="5O_sWVJ5Kce" role="3uHU7w" />
                                    <node concept="37vLTw" id="5O_sWVJ5Jnq" role="3uHU7B">
                                      <ref role="3cqZAo" node="5O_sWVJ5DYD" resolve="pane" />
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
          <node concept="2OqwBi" id="2OOLb0mE4bH" role="3clFbw">
            <node concept="37vLTw" id="IIVxgkMs1D" role="2Oq$k0">
              <ref role="3cqZAo" node="IIVxgkMs1B" resolve="makeService" />
            </node>
            <node concept="liA8E" id="2OOLb0mE4bL" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N63W" resolve="openNewSession" />
              <node concept="37vLTw" id="3GM_nagTtZU" role="37wK5m">
                <ref role="3cqZAo" node="2OOLb0mE4bt" resolve="session" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7G8hLbKxftz" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7G8hLbKxft$" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7rKYJcjJkbF" role="1NuT2Z">
      <property role="TrG5h" value="cnode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFi7" role="1NuT2Z">
      <property role="TrG5h" value="cmodel" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
      <node concept="1oajcY" id="7rKYJcjJo3G" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7tZeFupJFi8" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="2ScWuX" id="7tZeFupJFi9" role="tmbBb">
      <node concept="3clFbS" id="7tZeFupJFia" role="2VODD2">
        <node concept="3clFbJ" id="7Ob_3sloqac" role="3cqZAp">
          <node concept="3clFbS" id="7Ob_3sloqad" role="3clFbx">
            <node concept="3cpWs6" id="7Ob_3sloqae" role="3cqZAp">
              <node concept="3clFbT" id="7Ob_3sloqaf" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IIVxgkMPPp" role="3clFbw">
            <node concept="liA8E" id="IIVxgkMPPq" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="IIVxgkMPPr" role="2Oq$k0">
              <node concept="2OqwBi" id="IIVxgkMPPs" role="2Oq$k0">
                <node concept="2WthIp" id="IIVxgkMPPt" role="2Oq$k0" />
                <node concept="1DTwFV" id="IIVxgkMPPu" role="2OqNvi">
                  <ref role="2WH_rO" node="2BjwmTy5x3F" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkMPPv" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="IIVxgkMPPw" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tZeFupJFib" role="3cqZAp">
          <node concept="3cpWsn" id="7tZeFupJFic" role="3cpWs9">
            <property role="TrG5h" value="md" />
            <node concept="3uibUv" id="4O9Oe_ftaBr" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="7tZeFupJFie" role="33vP2m">
              <node concept="2WthIp" id="7tZeFupJFif" role="2Oq$k0" />
              <node concept="2XshWL" id="7tZeFupJFig" role="2OqNvi">
                <ref role="2WH_rO" node="7tZeFupJFeU" resolve="modelToGenerate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tZeFupJFih" role="3cqZAp">
          <node concept="1Wc70l" id="7tZeFupJFii" role="3clFbG">
            <node concept="2YIFZM" id="7G8hLbKwZZB" role="3uHU7w">
              <ref role="37wK5l" to="ap4t:~GenerationFacade.canGenerate(org.jetbrains.mps.openapi.model.SModel)" resolve="canGenerate" />
              <ref role="1Pybhc" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
              <node concept="37vLTw" id="7G8hLbKwZZC" role="37wK5m">
                <ref role="3cqZAo" node="7tZeFupJFic" resolve="md" />
              </node>
            </node>
            <node concept="3y3z36" id="7tZeFupJFin" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTt9_" role="3uHU7B">
                <ref role="3cqZAo" node="7tZeFupJFic" resolve="md" />
              </node>
              <node concept="10Nm6u" id="7tZeFupJFip" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7tZeFupJFiq">
    <property role="TrG5h" value="ToolbarMake" />
    <property role="3GE5qa" value="Make.groups" />
    <property role="22ra45" value="true" />
    <node concept="tT9cl" id="7tZeFupJFir" role="2f5YQi">
      <ref role="tU$_T" to="tprs:WmrxDqdZv8" resolve="MPSToolBarRun" />
    </node>
    <node concept="ftmFs" id="7tZeFupJFis" role="ftER_">
      <node concept="tCFHf" id="7tZeFupJFit" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF5V" resolve="MakeProject" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7tZeFupJFiu">
    <property role="TrG5h" value="RebuildProject" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="_Rebuild Project" />
    <property role="3GE5qa" value="Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7tZeFupJFiw" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDik" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7tZeFupJFix" role="tncku">
      <node concept="3clFbS" id="7tZeFupJFiy" role="2VODD2">
        <node concept="3cpWs8" id="4O9Oe_ftaA5" role="3cqZAp">
          <node concept="3cpWsn" id="4O9Oe_ftaA6" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="_YKpA" id="4O9Oe_ftaA7" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_ftaA8" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="4O9Oe_ftaA9" role="33vP2m">
              <node concept="Tc6Ow" id="4O9Oe_ftaAa" role="2ShVmc">
                <node concept="3uibUv" id="4O9Oe_ftaAb" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="10QFUN" id="4O9Oe_ftaAc" role="I$8f6">
                  <node concept="A3Dl8" id="4O9Oe_ftaAd" role="10QFUM">
                    <node concept="3uibUv" id="4O9Oe_ftaAe" role="A3Ik2">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4O9Oe_ftaAf" role="10QFUP">
                    <node concept="liA8E" id="4O9Oe_ftaAg" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                    </node>
                    <node concept="2OqwBi" id="4O9Oe_ftaAh" role="2Oq$k0">
                      <node concept="2WthIp" id="4O9Oe_ftaAi" role="2Oq$k0" />
                      <node concept="1DTwFV" id="4O9Oe_ftaAj" role="2OqNvi">
                        <ref role="2WH_rO" node="7tZeFupJFiw" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCFfvQDqIh" role="3cqZAp">
          <node concept="2OqwBi" id="7iCFfvQDqIi" role="3clFbG">
            <node concept="2ShNRf" id="7iCFfvQDqIj" role="2Oq$k0">
              <node concept="1pGfFk" id="7iCFfvQDqIk" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQDqXr" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQDqIl" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQDqIm" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQDqIn" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQDqIo" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQDqIp" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQDqIq" role="2OqNvi">
                            <ref role="2WH_rO" node="7tZeFupJFiw" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQDqIr" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQvBeE" resolve="modules" />
                      <node concept="37vLTw" id="7iCFfvQDqIs" role="37wK5m">
                        <ref role="3cqZAo" node="4O9Oe_ftaA6" resolve="modules" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQDs3L" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQDs8_" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7iCFfvQDqIt" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7Ob_3slopAi" role="tmbBb">
      <node concept="3clFbS" id="7Ob_3slopAj" role="2VODD2">
        <node concept="3clFbF" id="7Ob_3slopAs" role="3cqZAp">
          <node concept="3fqX7Q" id="7Ob_3slopAw" role="3clFbG">
            <node concept="2OqwBi" id="IIVxgkMLuS" role="3fr31v">
              <node concept="liA8E" id="IIVxgkMLuT" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
              </node>
              <node concept="2OqwBi" id="IIVxgkMLuU" role="2Oq$k0">
                <node concept="2OqwBi" id="IIVxgkMLuV" role="2Oq$k0">
                  <node concept="2WthIp" id="IIVxgkMLuW" role="2Oq$k0" />
                  <node concept="1DTwFV" id="IIVxgkMLuX" role="2OqNvi">
                    <ref role="2WH_rO" node="7tZeFupJFiw" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="IIVxgkMLuY" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="IIVxgkMLuZ" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="7tZeFupJGD4">
    <property role="TrG5h" value="Default" />
    <node concept="Zd509" id="7tZeFupJGD5" role="Zd508">
      <ref role="1bYAoF" node="7tZeFupJFdR" resolve="RebuildSelectedModels" />
      <node concept="pLAjd" id="7tZeFupJGD6" role="Zd501">
        <property role="pLAjf" value="VK_F9" />
        <property role="pLAjc" value="ctrl+shift" />
      </node>
    </node>
    <node concept="Zd509" id="7tZeFupJGD7" role="Zd508">
      <ref role="1bYAoF" node="7tZeFupJFcP" resolve="MakeSelectedModules" />
      <node concept="pLAjd" id="7tZeFupJGD8" role="Zd501">
        <property role="pLAjf" value="VK_F9" />
        <property role="pLAjc" value="ctrl" />
      </node>
    </node>
    <node concept="Zd509" id="7tZeFupJGD9" role="Zd508">
      <ref role="1bYAoF" node="7tZeFupJFeT" resolve="TextPreviewModel" />
      <node concept="pLAjd" id="7tZeFupJGDa" role="Zd501">
        <property role="pLAjf" value="VK_F9" />
        <property role="pLAjc" value="ctrl+alt+shift" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="HC2C4PyBcL">
    <property role="TrG5h" value="WidgetSettingsPanel" />
    <property role="3GE5qa" value="SaveTransientModels.Widget" />
    <node concept="312cEg" id="HC2C4Pzeod" role="jymVt">
      <property role="TrG5h" value="myShowPopupBox" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="HC2C4Pzeoe" role="1B3o_S" />
      <node concept="3uibUv" id="HC2C4Pzeog" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="3clFbW" id="HC2C4PyBcN" role="jymVt">
      <node concept="3cqZAl" id="HC2C4PyBcO" role="3clF45" />
      <node concept="3Tm1VV" id="HC2C4PyBcP" role="1B3o_S" />
      <node concept="3clFbS" id="HC2C4PyBcQ" role="3clF47">
        <node concept="XkiVB" id="2U9T7gdkTjW" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="2U9T7gdkTjX" role="37wK5m">
            <node concept="1pGfFk" id="2U9T7gdkTjZ" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HC2C4Pzeoh" role="3cqZAp">
          <node concept="37vLTI" id="HC2C4Pzeoi" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMvh" role="37vLTJ">
              <ref role="3cqZAo" node="HC2C4Pzeod" resolve="myShowPopupBox" />
            </node>
            <node concept="2ShNRf" id="HC2C4PyT18" role="37vLTx">
              <node concept="1pGfFk" id="HC2C4PyTfl" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String,boolean)" resolve="JCheckBox" />
                <node concept="Xl_RD" id="HC2C4PyTfm" role="37wK5m">
                  <property role="Xl_RC" value="Display balloon on generation" />
                </node>
                <node concept="2YIFZM" id="7XY3GP2vBLn" role="37wK5m">
                  <ref role="37wK5l" node="7XY3GP2vBC9" resolve="isPopupShown" />
                  <ref role="1Pybhc" node="C3dcc38Te3" resolve="TransientModelBalloonDisplayer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2UcciKIcn8c" role="3cqZAp">
          <node concept="2OqwBi" id="2UcciKIcn8e" role="3clFbG">
            <node concept="liA8E" id="2UcciKIco36" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2ShNRf" id="2UcciKIco37" role="37wK5m">
                <node concept="1pGfFk" id="2UcciKIco39" role="2ShVmc">
                  <ref role="37wK5l" to="9z78:~EmptyBorder.&lt;init&gt;(int,int,int,int)" resolve="EmptyBorder" />
                  <node concept="3cmrfG" id="2curTVaz6P_" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3cmrfG" id="2UcciKIco3c" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="3cmrfG" id="2UcciKIcovV" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="2EHIjpw_aU7" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuQwl" role="2Oq$k0">
              <ref role="3cqZAo" node="HC2C4Pzeod" resolve="myShowPopupBox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CCpxWskfEe" role="3cqZAp">
          <node concept="2OqwBi" id="1CCpxWskfEg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuxIJ" role="2Oq$k0">
              <ref role="3cqZAo" node="HC2C4Pzeod" resolve="myShowPopupBox" />
            </node>
            <node concept="liA8E" id="1CCpxWskg3$" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="1CCpxWskg3_" role="37wK5m">
                <node concept="2OwXpG" id="1CCpxWskg3B" role="2OqNvi">
                  <ref role="2Oxat5" to="o0ih:~NotificationsConfigurationImpl.SHOW_BALLOONS" resolve="SHOW_BALLOONS" />
                </node>
                <node concept="2YIFZM" id="4Sa0NTIpd_z" role="2Oq$k0">
                  <ref role="37wK5l" to="o0ih:~NotificationsConfigurationImpl.getInstanceImpl()" resolve="getInstanceImpl" />
                  <ref role="1Pybhc" to="o0ih:~NotificationsConfigurationImpl" resolve="NotificationsConfigurationImpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2UcciKIc41I" role="3cqZAp" />
        <node concept="3clFbF" id="HC2C4Pzbb3" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzcvD" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2BHiRxeuyVT" role="37wK5m">
              <ref role="3cqZAo" node="HC2C4Pzeod" resolve="myShowPopupBox" />
            </node>
            <node concept="2YIFZM" id="4Wx5HgQkDU1" role="37wK5m">
              <ref role="37wK5l" to="tprt:7tKonudf8V6" resolve="createFieldConstraints" />
              <ref role="1Pybhc" to="tprt:7tKonudf8V5" resolve="LayoutUtil" />
              <node concept="3cmrfG" id="4Wx5HgQkEHZ" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="HC2C4PzcQD" role="jymVt">
      <property role="TrG5h" value="showComponent" />
      <node concept="3Tm1VV" id="HC2C4PzcQF" role="1B3o_S" />
      <node concept="3cqZAl" id="HC2C4PzcQE" role="3clF45" />
      <node concept="37vLTG" id="HC2C4PzcQH" role="3clF46">
        <property role="TrG5h" value="point" />
        <node concept="3uibUv" id="HC2C4PzcQI" role="1tU5fm">
          <ref role="3uigEE" to="vmdq:~RelativePoint" resolve="RelativePoint" />
        </node>
      </node>
      <node concept="3clFbS" id="HC2C4PzcQG" role="3clF47">
        <node concept="3cpWs8" id="HC2C4PzcQJ" role="3cqZAp">
          <node concept="3cpWsn" id="HC2C4PzcQK" role="3cpWs9">
            <property role="TrG5h" value="popup" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="HC2C4PzcQL" role="1tU5fm">
              <ref role="3uigEE" to="gspm:~JBPopup" resolve="JBPopup" />
            </node>
            <node concept="2OqwBi" id="HC2C4PzcQM" role="33vP2m">
              <node concept="2OqwBi" id="HC2C4PzcQN" role="2Oq$k0">
                <node concept="2OqwBi" id="HC2C4PzcQO" role="2Oq$k0">
                  <node concept="2OqwBi" id="HC2C4PzcQP" role="2Oq$k0">
                    <node concept="2OqwBi" id="HC2C4PzcQQ" role="2Oq$k0">
                      <node concept="2YIFZM" id="HC2C4PzcQR" role="2Oq$k0">
                        <ref role="37wK5l" to="gspm:~JBPopupFactory.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="gspm:~JBPopupFactory" resolve="JBPopupFactory" />
                      </node>
                      <node concept="liA8E" id="HC2C4PzcQS" role="2OqNvi">
                        <ref role="37wK5l" to="gspm:~JBPopupFactory.createComponentPopupBuilder(javax.swing.JComponent,javax.swing.JComponent)" resolve="createComponentPopupBuilder" />
                        <node concept="Xjq3P" id="HC2C4PzcQT" role="37wK5m" />
                        <node concept="Xjq3P" id="HC2C4PzcQU" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="liA8E" id="HC2C4PzcQV" role="2OqNvi">
                      <ref role="37wK5l" to="gspm:~ComponentPopupBuilder.setRequestFocus(boolean)" resolve="setRequestFocus" />
                      <node concept="3clFbT" id="HC2C4PzcQW" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="HC2C4PzcQX" role="2OqNvi">
                    <ref role="37wK5l" to="gspm:~ComponentPopupBuilder.setMovable(boolean)" resolve="setMovable" />
                    <node concept="3clFbT" id="HC2C4PzcQY" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="HC2C4PzcQZ" role="2OqNvi">
                  <ref role="37wK5l" to="gspm:~ComponentPopupBuilder.setCancelCallback(com.intellij.openapi.util.Computable)" resolve="setCancelCallback" />
                  <node concept="2ShNRf" id="HC2C4PzcR0" role="37wK5m">
                    <node concept="YeOm9" id="HC2C4PzenM" role="2ShVmc">
                      <node concept="1Y3b0j" id="HC2C4PzenN" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="zn9m:~Computable" resolve="Computable" />
                        <node concept="3Tm1VV" id="HC2C4PzenO" role="1B3o_S" />
                        <node concept="3clFb_" id="HC2C4PzenP" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="compute" />
                          <property role="DiZV1" value="false" />
                          <node concept="3Tm1VV" id="HC2C4PzenQ" role="1B3o_S" />
                          <node concept="3uibUv" id="HC2C4PzenV" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                          </node>
                          <node concept="3clFbS" id="HC2C4PzenS" role="3clF47">
                            <node concept="3clFbF" id="HC2C4Pzeo9" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyyOls" role="3clFbG">
                                <ref role="37wK5l" node="HC2C4Pzeom" resolve="onClose" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="HC2C4Pzeob" role="3cqZAp">
                              <node concept="10M0yZ" id="HC2C4Pzeoc" role="3cqZAk">
                                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="3tYsUK_Se1L" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="HC2C4PzenU" role="2Ghqu4">
                          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="HC2C4PzcR2" role="2OqNvi">
                <ref role="37wK5l" to="gspm:~ComponentPopupBuilder.createPopup()" resolve="createPopup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HC2C4PzeoD" role="3cqZAp">
          <node concept="2OqwBi" id="HC2C4PzeoF" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTB8E" role="2Oq$k0">
              <ref role="3cqZAo" node="HC2C4PzcQK" resolve="popup" />
            </node>
            <node concept="liA8E" id="HC2C4Pzf$H" role="2OqNvi">
              <ref role="37wK5l" to="gspm:~JBPopup.show(com.intellij.ui.awt.RelativePoint)" resolve="show" />
              <node concept="37vLTw" id="2BHiRxgm8KM" role="37wK5m">
                <ref role="3cqZAo" node="HC2C4PzcQH" resolve="point" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="HC2C4Pzeom" role="jymVt">
      <property role="TrG5h" value="onClose" />
      <node concept="3Tm6S6" id="HC2C4Pzeoq" role="1B3o_S" />
      <node concept="3clFbS" id="HC2C4Pzeop" role="3clF47">
        <node concept="3clFbF" id="7XY3GP2vEWx" role="3cqZAp">
          <node concept="2YIFZM" id="7XY3GP2vEWz" role="3clFbG">
            <ref role="37wK5l" node="7XY3GP2vBLo" resolve="setShowPopup" />
            <ref role="1Pybhc" node="C3dcc38Te3" resolve="TransientModelBalloonDisplayer" />
            <node concept="2OqwBi" id="7XY3GP2vEW_" role="37wK5m">
              <node concept="liA8E" id="7XY3GP2vFD2" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
              </node>
              <node concept="37vLTw" id="2BHiRxeumwF" role="2Oq$k0">
                <ref role="3cqZAo" node="HC2C4Pzeod" resolve="myShowPopupBox" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="HC2C4Pzeon" role="3clF45" />
    </node>
    <node concept="3uibUv" id="HC2C4PyMlT" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="hP8D6fqe6p">
    <property role="TrG5h" value="TransientModelsWidget" />
    <property role="3GE5qa" value="SaveTransientModels.Widget" />
    <node concept="Wx3nA" id="hP8D6fqe8s" role="jymVt">
      <property role="TrG5h" value="WIDGET_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="hP8D6fqe8u" role="1tU5fm" />
      <node concept="Xl_RD" id="hP8D6fqe8v" role="33vP2m">
        <property role="Xl_RC" value="TransientModelsWidget" />
      </node>
      <node concept="3Tm1VV" id="hP8D6fqe8t" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="hP8D6fqe6q" role="jymVt">
      <property role="TrG5h" value="myStatusBar" />
      <node concept="3Tm6S6" id="hP8D6fqe6r" role="1B3o_S" />
      <node concept="3uibUv" id="hP8D6fqe6s" role="1tU5fm">
        <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
      </node>
    </node>
    <node concept="312cEg" id="hP8D6fqe8n" role="jymVt">
      <property role="TrG5h" value="myIcon" />
      <property role="3TUv4t" value="true" />
      <node concept="10M0yZ" id="$0lM0JKK6$" role="33vP2m">
        <ref role="3cqZAo" to="l7us:~MPSIcons$Nodes.TransientModule" resolve="TransientModule" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$Nodes" resolve="MPSIcons.Nodes" />
      </node>
      <node concept="3Tm6S6" id="hP8D6fqe8o" role="1B3o_S" />
      <node concept="3uibUv" id="hP8D6fqe8p" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="312cEg" id="7hIrQB9J1nT" role="jymVt">
      <property role="TrG5h" value="myIconDisable" />
      <property role="3TUv4t" value="true" />
      <node concept="10M0yZ" id="$0lM0JKLqr" role="33vP2m">
        <ref role="3cqZAo" to="l7us:~MPSIcons$Nodes.TransientModuleDisabled" resolve="TransientModuleDisabled" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$Nodes" resolve="MPSIcons.Nodes" />
      </node>
      <node concept="3Tm6S6" id="7hIrQB9J1nX" role="1B3o_S" />
      <node concept="3uibUv" id="7hIrQB9J1nY" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="312cEg" id="3LTvNgPOGvW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myGenerationSettings" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3LTvNgPOE8p" role="1B3o_S" />
      <node concept="3uibUv" id="3LTvNgPOGpp" role="1tU5fm">
        <ref role="3uigEE" to="ap4t:~IModifiableGenerationSettings" resolve="IModifiableGenerationSettings" />
      </node>
    </node>
    <node concept="312cEg" id="1$ZRmkX9e_b" role="jymVt">
      <property role="TrG5h" value="myComponent" />
      <node concept="3Tm6S6" id="1$ZRmkX9e_c" role="1B3o_S" />
      <node concept="3uibUv" id="1$ZRmkX9e_d" role="1tU5fm">
        <ref role="3uigEE" node="5J8_5nlyCOs" resolve="TransientModelsPanel" />
      </node>
    </node>
    <node concept="312cEg" id="7Ir7d9FUv78" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myFocusManager" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7Ir7d9FUt5S" role="1B3o_S" />
      <node concept="3uibUv" id="7Ir7d9FUv0z" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~KeyboardFocusManager" resolve="KeyboardFocusManager" />
      </node>
    </node>
    <node concept="312cEg" id="180CX8WNWJt" role="jymVt">
      <property role="TrG5h" value="myIsDisposed" />
      <node concept="3Tm6S6" id="180CX8WNR9t" role="1B3o_S" />
      <node concept="10P_77" id="180CX8WNWq8" role="1tU5fm" />
      <node concept="3clFbT" id="180CX8WQe7i" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="3LTvNgPOwH9" role="jymVt" />
    <node concept="3clFbW" id="hP8D6fqe6y" role="jymVt">
      <node concept="37vLTG" id="3l7XKooFmoR" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="3l7XKooFn9R" role="1tU5fm">
          <ref role="3uigEE" to="ap4t:~IModifiableGenerationSettings" resolve="IModifiableGenerationSettings" />
        </node>
      </node>
      <node concept="3cqZAl" id="hP8D6fqe6z" role="3clF45" />
      <node concept="3Tm1VV" id="hP8D6fqe6$" role="1B3o_S" />
      <node concept="3clFbS" id="hP8D6fqe6_" role="3clF47">
        <node concept="3clFbF" id="3LTvNgPOI2P" role="3cqZAp">
          <node concept="37vLTI" id="3LTvNgPOIgM" role="3clFbG">
            <node concept="37vLTw" id="3l7XKooFo0A" role="37vLTx">
              <ref role="3cqZAo" node="3l7XKooFmoR" resolve="settings" />
            </node>
            <node concept="37vLTw" id="3LTvNgPOI2N" role="37vLTJ">
              <ref role="3cqZAo" node="3LTvNgPOGvW" resolve="myGenerationSettings" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTxM4" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe6O" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="install" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="hP8D6fqe6R" role="3clF46">
        <property role="TrG5h" value="bar" />
        <node concept="2AHcQZ" id="hP8D6fqe6T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="hP8D6fqe6S" role="1tU5fm">
          <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
        </node>
      </node>
      <node concept="3cqZAl" id="hP8D6fqe6Q" role="3clF45" />
      <node concept="3Tm1VV" id="hP8D6fqe6P" role="1B3o_S" />
      <node concept="3clFbS" id="hP8D6fqe6U" role="3clF47">
        <node concept="3clFbF" id="180CX8WR22h" role="3cqZAp">
          <node concept="37vLTI" id="180CX8WR3CN" role="3clFbG">
            <node concept="37vLTw" id="180CX8WR5Ze" role="37vLTx">
              <ref role="3cqZAo" node="hP8D6fqe6R" resolve="bar" />
            </node>
            <node concept="37vLTw" id="180CX8WR22f" role="37vLTJ">
              <ref role="3cqZAo" node="hP8D6fqe6q" resolve="myStatusBar" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1Q7UogT4zEa" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoj9O" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoj9P" role="1PaTwD">
              <property role="3oM_SC" value="Use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj9Q" role="1PaTwD">
              <property role="3oM_SC" value="approach" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj9R" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoj9S" role="1PaTwD">
              <property role="3oM_SC" value="com.intellij.openapi.wm.impl.status.ToolWindowsWidget" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooF7T2" role="3cqZAp">
          <node concept="2OqwBi" id="3l7XKooFa4g" role="3clFbG">
            <node concept="2OqwBi" id="3l7XKooF9xF" role="2Oq$k0">
              <node concept="2OqwBi" id="3l7XKooF8$h" role="2Oq$k0">
                <node concept="2YIFZM" id="3l7XKooF88N" role="2Oq$k0">
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                </node>
                <node concept="liA8E" id="3l7XKooF9kd" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getMessageBus()" resolve="getMessageBus" />
                </node>
              </node>
              <node concept="liA8E" id="3l7XKooF9VB" role="2OqNvi">
                <ref role="37wK5l" to="4b2m:~MessageBus.connect(com.intellij.openapi.Disposable)" resolve="connect" />
                <node concept="Xjq3P" id="3l7XKooFaJS" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="3l7XKooFbcb" role="2OqNvi">
              <ref role="37wK5l" to="4b2m:~SimpleMessageBusConnection.subscribe(com.intellij.util.messages.Topic,java.lang.Object)" resolve="subscribe" />
              <node concept="10M0yZ" id="3l7XKooFcOo" role="37wK5m">
                <ref role="3cqZAo" to="j936:~UISettingsListener.TOPIC" resolve="TOPIC" />
                <ref role="1PxDUh" to="j936:~UISettingsListener" resolve="UISettingsListener" />
              </node>
              <node concept="Xjq3P" id="3l7XKooFedG" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Ir7d9FUxsc" role="3cqZAp">
          <node concept="37vLTI" id="7Ir7d9FUxRl" role="3clFbG">
            <node concept="37vLTw" id="7Ir7d9FUxsa" role="37vLTJ">
              <ref role="3cqZAo" node="7Ir7d9FUv78" resolve="myFocusManager" />
            </node>
            <node concept="2YIFZM" id="7Ir7d9FUrMu" role="37vLTx">
              <ref role="37wK5l" to="z60i:~KeyboardFocusManager.getCurrentKeyboardFocusManager()" resolve="getCurrentKeyboardFocusManager" />
              <ref role="1Pybhc" to="z60i:~KeyboardFocusManager" resolve="KeyboardFocusManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Q7UogT4gz6" role="3cqZAp">
          <node concept="2OqwBi" id="1Q7UogT4gz7" role="3clFbG">
            <node concept="37vLTw" id="7Ir7d9FUyQz" role="2Oq$k0">
              <ref role="3cqZAo" node="7Ir7d9FUv78" resolve="myFocusManager" />
            </node>
            <node concept="liA8E" id="1Q7UogT4gz9" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~KeyboardFocusManager.addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
              <node concept="Xl_RD" id="1Q7UogT4gza" role="37wK5m">
                <property role="Xl_RC" value="focusOwner" />
              </node>
              <node concept="Xjq3P" id="1Q7UogT4gzb" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U_hf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTwX1" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe6V" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getTooltipText" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="hP8D6fqe6Z" role="3clF47">
        <node concept="3clFbJ" id="hP8D6fqe70" role="3cqZAp">
          <node concept="3clFbS" id="hP8D6fqe71" role="3clFbx">
            <node concept="3cpWs6" id="hP8D6fqe72" role="3cqZAp">
              <node concept="Xl_RD" id="hP8D6fqe73" role="3cqZAk">
                <property role="Xl_RC" value="Stop saving transient models" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4hiugqyyLZB" role="3clFbw">
            <ref role="37wK5l" node="7ipB4ZUdPew" resolve="isSaveTransientModels" />
          </node>
        </node>
        <node concept="3cpWs6" id="hP8D6fqe75" role="3cqZAp">
          <node concept="Xl_RD" id="hP8D6fqe76" role="3cqZAk">
            <property role="Xl_RC" value="Save transient models" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hP8D6fqe6Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="17QB3L" id="hP8D6fqe6X" role="3clF45" />
      <node concept="3Tm1VV" id="hP8D6fqe6W" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_U_hb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaT$Pt" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe77" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getClickConsumer" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="hP8D6fqe7c" role="3clF47">
        <node concept="3clFbF" id="hP8D6fqe7d" role="3cqZAp">
          <node concept="2ShNRf" id="hP8D6fqe7e" role="3clFbG">
            <node concept="YeOm9" id="hP8D6fqe7f" role="2ShVmc">
              <node concept="1Y3b0j" id="hP8D6fqe7g" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" to="9w4s:~Consumer" resolve="Consumer" />
                <node concept="3Tm1VV" id="hP8D6fqe7h" role="1B3o_S" />
                <node concept="3clFb_" id="hP8D6fqe7i" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="consume" />
                  <property role="DiZV1" value="false" />
                  <node concept="37vLTG" id="hP8D6fqe7l" role="3clF46">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="hP8D6fqe7m" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                    </node>
                  </node>
                  <node concept="3cqZAl" id="hP8D6fqe7k" role="3clF45" />
                  <node concept="3clFbS" id="hP8D6fqe7n" role="3clF47">
                    <node concept="3clFbJ" id="1$ZRmkX9ejz" role="3cqZAp">
                      <node concept="3clFbS" id="1$ZRmkX9ejM" role="3clFbx">
                        <node concept="3cpWs8" id="hP8D6fqe7o" role="3cqZAp">
                          <node concept="3cpWsn" id="hP8D6fqe7p" role="3cpWs9">
                            <property role="TrG5h" value="saveTransientModels" />
                            <node concept="2OqwBi" id="hP8D6fqe7r" role="33vP2m">
                              <node concept="liA8E" id="hP8D6fqe7t" role="2OqNvi">
                                <ref role="37wK5l" to="ap4t:~IGenerationSettings.isSaveTransientModels()" resolve="isSaveTransientModels" />
                              </node>
                              <node concept="37vLTw" id="3LTvNgPOJzU" role="2Oq$k0">
                                <ref role="3cqZAo" node="3LTvNgPOGvW" resolve="myGenerationSettings" />
                              </node>
                            </node>
                            <node concept="10P_77" id="hP8D6fqe7q" role="1tU5fm" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="hP8D6fqe7u" role="3cqZAp">
                          <node concept="2OqwBi" id="hP8D6fqe7v" role="3clFbG">
                            <node concept="liA8E" id="hP8D6fqe7x" role="2OqNvi">
                              <ref role="37wK5l" to="ap4t:~IModifiableGenerationSettings.setSaveTransientModels(boolean)" resolve="setSaveTransientModels" />
                              <node concept="3fqX7Q" id="hP8D6fqe7y" role="37wK5m">
                                <node concept="37vLTw" id="3GM_nagT$rP" role="3fr31v">
                                  <ref role="3cqZAo" node="hP8D6fqe7p" resolve="saveTransientModels" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="3LTvNgPOKEW" role="2Oq$k0">
                              <ref role="3cqZAo" node="3LTvNgPOGvW" resolve="myGenerationSettings" />
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="3l7XKooFp4J" role="3cqZAp">
                          <node concept="1PaTwC" id="ATZLwXoj9T" role="1aUNEU">
                            <node concept="3oM_SD" id="ATZLwXoj9U" role="1PaTwD">
                              <property role="3oM_SC" value="settings" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoj9V" role="1PaTwD">
                              <property role="3oM_SC" value="shall" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoj9W" role="1PaTwD">
                              <property role="3oM_SC" value="dispatch" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoj9X" role="1PaTwD">
                              <property role="3oM_SC" value="change" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoj9Y" role="1PaTwD">
                              <property role="3oM_SC" value="notification" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoj9Z" role="1PaTwD">
                              <property role="3oM_SC" value="for" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoja0" role="1PaTwD">
                              <property role="3oM_SC" value="appropriate" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoja1" role="1PaTwD">
                              <property role="3oM_SC" value="UI" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoja2" role="1PaTwD">
                              <property role="3oM_SC" value="element" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoja3" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoja4" role="1PaTwD">
                              <property role="3oM_SC" value="get" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXoja5" role="1PaTwD">
                              <property role="3oM_SC" value="updated" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="1$ZRmkX9ej$" role="3clFbw">
                        <node concept="3fqX7Q" id="1$ZRmkX9ejD" role="3uHU7B">
                          <node concept="2OqwBi" id="1$ZRmkX9ejE" role="3fr31v">
                            <node concept="37vLTw" id="2BHiRxgm7Hw" role="2Oq$k0">
                              <ref role="3cqZAo" node="hP8D6fqe7l" resolve="e" />
                            </node>
                            <node concept="liA8E" id="1$ZRmkX9ejG" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="1$ZRmkX9ejH" role="3uHU7w">
                          <node concept="2OqwBi" id="1$ZRmkX9ejJ" role="3uHU7w">
                            <node concept="37vLTw" id="2BHiRxglwzb" role="2Oq$k0">
                              <ref role="3cqZAo" node="hP8D6fqe7l" resolve="e" />
                            </node>
                            <node concept="liA8E" id="1$ZRmkX9ejL" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                            </node>
                          </node>
                          <node concept="10M0yZ" id="1$ZRmkX9ejI" role="3uHU7B">
                            <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="HC2C4Pzcz4" role="3eNLev">
                        <node concept="3clFbS" id="HC2C4Pzcz6" role="3eOfB_">
                          <node concept="3cpWs8" id="HC2C4Pzczf" role="3cqZAp">
                            <node concept="3cpWsn" id="HC2C4Pzczg" role="3cpWs9">
                              <property role="TrG5h" value="panel" />
                              <node concept="3uibUv" id="HC2C4Pzczh" role="1tU5fm">
                                <ref role="3uigEE" node="HC2C4PyBcL" resolve="WidgetSettingsPanel" />
                              </node>
                              <node concept="2ShNRf" id="HC2C4Pzczj" role="33vP2m">
                                <node concept="1pGfFk" id="HC2C4PzcQx" role="2ShVmc">
                                  <ref role="37wK5l" node="HC2C4PyBcN" resolve="WidgetSettingsPanel" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="HC2C4PznA1" role="3cqZAp">
                            <node concept="3cpWsn" id="HC2C4PznA2" role="3cpWs9">
                              <property role="TrG5h" value="dimension" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="HC2C4PznA3" role="1tU5fm">
                                <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                              </node>
                              <node concept="2OqwBi" id="HC2C4PznA4" role="33vP2m">
                                <node concept="37vLTw" id="3GM_nagTA27" role="2Oq$k0">
                                  <ref role="3cqZAo" node="HC2C4Pzczg" resolve="panel" />
                                </node>
                                <node concept="liA8E" id="HC2C4PznA6" role="2OqNvi">
                                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="HC2C4PznAo" role="3cqZAp">
                            <node concept="3cpWsn" id="HC2C4PznAp" role="3cpWs9">
                              <property role="TrG5h" value="point" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="HC2C4PznAq" role="1tU5fm">
                                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                              </node>
                              <node concept="2ShNRf" id="HC2C4PznAr" role="33vP2m">
                                <node concept="1pGfFk" id="HC2C4PznAs" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                                  <node concept="3cmrfG" id="HC2C4PznAt" role="37wK5m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="3cmrfG" id="HC2C4PznAu" role="37wK5m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="HC2C4PznA7" role="3cqZAp">
                            <node concept="37vLTI" id="HC2C4PznA8" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagT_2Q" role="37vLTJ">
                                <ref role="3cqZAo" node="HC2C4PznAp" resolve="point" />
                              </node>
                              <node concept="2ShNRf" id="HC2C4PznAa" role="37vLTx">
                                <node concept="1pGfFk" id="HC2C4PznAb" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                                  <node concept="3cpWsd" id="HC2C4PznAB" role="37wK5m">
                                    <node concept="2OqwBi" id="HC2C4PznAy" role="3uHU7B">
                                      <node concept="37vLTw" id="3GM_nagT_nk" role="2Oq$k0">
                                        <ref role="3cqZAo" node="HC2C4PznAp" resolve="point" />
                                      </node>
                                      <node concept="2OwXpG" id="HC2C4PznAA" role="2OqNvi">
                                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="HC2C4PznAF" role="3uHU7w">
                                      <node concept="37vLTw" id="3GM_nagT$MC" role="2Oq$k0">
                                        <ref role="3cqZAo" node="HC2C4PznA2" resolve="dimension" />
                                      </node>
                                      <node concept="2OwXpG" id="HC2C4PznAJ" role="2OqNvi">
                                        <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWsd" id="HC2C4PznAR" role="37wK5m">
                                    <node concept="2OqwBi" id="HC2C4PznAM" role="3uHU7B">
                                      <node concept="37vLTw" id="3GM_nagTw04" role="2Oq$k0">
                                        <ref role="3cqZAo" node="HC2C4PznAp" resolve="point" />
                                      </node>
                                      <node concept="2OwXpG" id="HC2C4PznAQ" role="2OqNvi">
                                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="HC2C4PznAV" role="3uHU7w">
                                      <node concept="37vLTw" id="3GM_nagTwsA" role="2Oq$k0">
                                        <ref role="3cqZAo" node="HC2C4PznA2" resolve="dimension" />
                                      </node>
                                      <node concept="2OwXpG" id="HC2C4PznAZ" role="2OqNvi">
                                        <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="HC2C4PzcQz" role="3cqZAp">
                            <node concept="2OqwBi" id="HC2C4PzcQ_" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTy2z" role="2Oq$k0">
                                <ref role="3cqZAo" node="HC2C4Pzczg" resolve="panel" />
                              </node>
                              <node concept="liA8E" id="HC2C4Pzns4" role="2OqNvi">
                                <ref role="37wK5l" node="HC2C4PzcQD" resolve="showComponent" />
                                <node concept="2ShNRf" id="HC2C4PzpXr" role="37wK5m">
                                  <node concept="1pGfFk" id="HC2C4PzpXt" role="2ShVmc">
                                    <ref role="37wK5l" to="vmdq:~RelativePoint.&lt;init&gt;(java.awt.Component,java.awt.Point)" resolve="RelativePoint" />
                                    <node concept="2OqwBi" id="1rhWfTbctoV" role="37wK5m">
                                      <node concept="liA8E" id="1rhWfTbctoZ" role="2OqNvi">
                                        <ref role="37wK5l" to="hyam:~ComponentEvent.getComponent()" resolve="getComponent" />
                                      </node>
                                      <node concept="37vLTw" id="2BHiRxgkWD3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="hP8D6fqe7l" resolve="e" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTx7U" role="37wK5m">
                                      <ref role="3cqZAo" node="HC2C4PznAp" resolve="point" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="22lmx$" id="5bgZTCyQp0_" role="3eO9$A">
                          <node concept="2OqwBi" id="HC2C4Pzcz8" role="3uHU7B">
                            <node concept="liA8E" id="HC2C4Pzczc" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxglRGk" role="2Oq$k0">
                              <ref role="3cqZAo" node="hP8D6fqe7l" resolve="e" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="5bgZTCyQp0D" role="3uHU7w">
                            <node concept="10M0yZ" id="5bgZTCyQp0C" role="3uHU7B">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON2" resolve="BUTTON2" />
                            </node>
                            <node concept="2OqwBi" id="5bgZTCyQp0H" role="3uHU7w">
                              <node concept="37vLTw" id="2BHiRxgmHxF" role="2Oq$k0">
                                <ref role="3cqZAo" node="hP8D6fqe7l" resolve="e" />
                              </node>
                              <node concept="liA8E" id="5bgZTCyQp0L" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="hP8D6fqe7j" role="1B3o_S" />
                  <node concept="2AHcQZ" id="3tYsUK_RXDh" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="hP8D6fqe7J" role="2Ghqu4">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hP8D6fqe78" role="1B3o_S" />
      <node concept="3uibUv" id="hP8D6fqe79" role="3clF45">
        <ref role="3uigEE" to="9w4s:~Consumer" resolve="Consumer" />
        <node concept="3uibUv" id="hP8D6fqe7a" role="11_B2D">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="hP8D6fqe7b" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U_h8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Z63QvVfU3M" role="jymVt" />
    <node concept="3clFb_" id="2hEKckkLhQa" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tm1VV" id="2hEKckkLipr" role="1B3o_S" />
      <node concept="3clFbS" id="2hEKckkLhQd" role="3clF47">
        <node concept="3clFbJ" id="180CX8WO1SZ" role="3cqZAp">
          <node concept="3clFbS" id="180CX8WO1T1" role="3clFbx">
            <node concept="3cpWs6" id="180CX8WObvN" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="180CX8WO5rq" role="3clFbw">
            <ref role="3cqZAo" node="180CX8WNWJt" resolve="myIsDisposed" />
          </node>
        </node>
        <node concept="3clFbJ" id="3LTvNgPP_xC" role="3cqZAp">
          <node concept="3clFbS" id="3LTvNgPP_xE" role="3clFbx">
            <node concept="3clFbF" id="2hEKckkLhQe" role="3cqZAp">
              <node concept="2OqwBi" id="2hEKckkLhQf" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuMzc" role="2Oq$k0">
                  <ref role="3cqZAo" node="1$ZRmkX9e_b" resolve="myComponent" />
                </node>
                <node concept="liA8E" id="2hEKckkLhQh" role="2OqNvi">
                  <ref role="37wK5l" node="5J8_5nlyCPf" resolve="update" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3LTvNgPPAx2" role="3clFbw">
            <node concept="10Nm6u" id="3LTvNgPPANy" role="3uHU7w" />
            <node concept="37vLTw" id="3LTvNgPPA4X" role="3uHU7B">
              <ref role="3cqZAo" node="1$ZRmkX9e_b" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="180CX8WRbf0" role="3cqZAp">
          <node concept="3clFbS" id="180CX8WRbf2" role="3clFbx">
            <node concept="3clFbF" id="2hEKckkLhQi" role="3cqZAp">
              <node concept="2OqwBi" id="2hEKckkLhQj" role="3clFbG">
                <node concept="37vLTw" id="180CX8WPAtJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="hP8D6fqe6q" resolve="myStatusBar" />
                </node>
                <node concept="liA8E" id="2hEKckkLhQl" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBar.updateWidget(java.lang.String)" resolve="updateWidget" />
                  <node concept="1rXfSq" id="4hiugqyzez$" role="37wK5m">
                    <ref role="37wK5l" node="hP8D6fqe8g" resolve="ID" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="180CX8WRhhH" role="3clFbw">
            <node concept="10Nm6u" id="180CX8WRk8b" role="3uHU7w" />
            <node concept="37vLTw" id="180CX8WRfKa" role="3uHU7B">
              <ref role="3cqZAo" node="hP8D6fqe6q" resolve="myStatusBar" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2hEKckkLhQc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4_rZUNaT_F6" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe7K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="hP8D6fqe7R" role="3clF47">
        <node concept="3cpWs6" id="hP8D6fqe7S" role="3cqZAp">
          <node concept="Xjq3P" id="hP8D6fqe7T" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="hP8D6fqe7Q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="hP8D6fqe7N" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="2AHcQZ" id="hP8D6fqe7P" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="hP8D6fqe7O" role="1tU5fm">
          <ref role="3uigEE" to="jkny:~StatusBarWidget$PlatformType" resolve="StatusBarWidget.PlatformType" />
        </node>
      </node>
      <node concept="3uibUv" id="hP8D6fqe7M" role="3clF45">
        <ref role="3uigEE" to="jkny:~StatusBarWidget$WidgetPresentation" resolve="StatusBarWidget.WidgetPresentation" />
      </node>
      <node concept="3Tm1VV" id="hP8D6fqe7L" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_U_ha" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Z63QvVfVWS" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe7U" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="hP8D6fqe7X" role="3clF47">
        <node concept="3clFbF" id="180CX8WOfvF" role="3cqZAp">
          <node concept="37vLTI" id="180CX8WOi0K" role="3clFbG">
            <node concept="3clFbT" id="180CX8WOjHo" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="180CX8WOfvD" role="37vLTJ">
              <ref role="3cqZAo" node="180CX8WNWJt" resolve="myIsDisposed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="180CX8WRCjT" role="3cqZAp">
          <node concept="37vLTI" id="180CX8WRF_e" role="3clFbG">
            <node concept="10Nm6u" id="180CX8WRJ_J" role="37vLTx" />
            <node concept="37vLTw" id="180CX8WRCjR" role="37vLTJ">
              <ref role="3cqZAo" node="hP8D6fqe6q" resolve="myStatusBar" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Z63QvVfT1y" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoja6" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoja7" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoja8" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoja9" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojaa" role="1PaTwD">
              <property role="3oM_SC" value="removeUISettingsListener" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojab" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojac" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojad" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojae" role="1PaTwD">
              <property role="3oM_SC" value="registered" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojaf" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojag" role="1PaTwD">
              <property role="3oM_SC" value="Disposable" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojah" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojai" role="1PaTwD">
              <property role="3oM_SC" value="UISettings" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojaj" role="1PaTwD">
              <property role="3oM_SC" value="removes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojak" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojal" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojam" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojan" role="1PaTwD">
              <property role="3oM_SC" value="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Ir7d9FUzzu" role="3cqZAp">
          <node concept="3clFbS" id="7Ir7d9FUzzw" role="3clFbx">
            <node concept="3clFbF" id="7Ir7d9FU_vh" role="3cqZAp">
              <node concept="2OqwBi" id="7Ir7d9FU_S6" role="3clFbG">
                <node concept="37vLTw" id="7Ir7d9FU_vf" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Ir7d9FUv78" resolve="myFocusManager" />
                </node>
                <node concept="liA8E" id="6Z63QvVfTtl" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~KeyboardFocusManager.removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)" resolve="removePropertyChangeListener" />
                  <node concept="Xl_RD" id="6Z63QvVfU2J" role="37wK5m">
                    <property role="Xl_RC" value="focusOwner" />
                  </node>
                  <node concept="Xjq3P" id="6Z63QvVfTIw" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Ir7d9FUBqn" role="3cqZAp">
              <node concept="37vLTI" id="7Ir7d9FUBO3" role="3clFbG">
                <node concept="10Nm6u" id="7Ir7d9FUC5e" role="37vLTx" />
                <node concept="37vLTw" id="7Ir7d9FUBql" role="37vLTJ">
                  <ref role="3cqZAo" node="7Ir7d9FUv78" resolve="myFocusManager" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7Ir7d9FU$yh" role="3clFbw">
            <node concept="10Nm6u" id="7Ir7d9FU$UN" role="3uHU7w" />
            <node concept="37vLTw" id="7Ir7d9FU$8k" role="3uHU7B">
              <ref role="3cqZAo" node="7Ir7d9FUv78" resolve="myFocusManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="hP8D6fqe7W" role="3clF45" />
      <node concept="3Tm1VV" id="hP8D6fqe7V" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_U_h9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Z63QvVfWje" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe7Y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIcon" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="hP8D6fqe82" role="3clF47">
        <node concept="3clFbJ" id="hP8D6fqe83" role="3cqZAp">
          <node concept="3clFbS" id="hP8D6fqe84" role="3clFbx">
            <node concept="3cpWs6" id="hP8D6fqe85" role="3cqZAp">
              <node concept="37vLTw" id="6uT0Sim0vzs" role="3cqZAk">
                <ref role="3cqZAo" node="hP8D6fqe8n" resolve="myIcon" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4hiugqyzkte" role="3clFbw">
            <ref role="37wK5l" node="7ipB4ZUdPew" resolve="isSaveTransientModels" />
          </node>
        </node>
        <node concept="3SKdUt" id="7hIrQB9J1Ax" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojao" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojap" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojaq" role="1PaTwD">
              <property role="3oM_SC" value="Use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojar" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojas" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojat" role="1PaTwD">
              <property role="3oM_SC" value="Icon." />
            </node>
            <node concept="3oM_SD" id="ATZLwXojau" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojav" role="1PaTwD">
              <property role="3oM_SC" value="hack" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojaw" role="1PaTwD">
              <property role="3oM_SC" value="helps" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojax" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojay" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojaz" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoja$" role="1PaTwD">
              <property role="3oM_SC" value="fails" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3$ZLRFpSWlq" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="hP8D6fqe88" role="8Wnug">
            <node concept="2OqwBi" id="hP8D6fqe89" role="3clFbG">
              <node concept="liA8E" id="hP8D6fqe8b" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~LookAndFeel.getDisabledIcon(javax.swing.JComponent,javax.swing.Icon)" resolve="getDisabledIcon" />
                <node concept="2OqwBi" id="hP8D6fqe8c" role="37wK5m">
                  <node concept="liA8E" id="hP8D6fqe8e" role="2OqNvi">
                    <ref role="37wK5l" to="jkny:~StatusBar.getComponent()" resolve="getComponent" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeukng" role="2Oq$k0">
                    <ref role="3cqZAo" node="hP8D6fqe6q" resolve="myStatusBar" />
                  </node>
                </node>
                <node concept="37vLTw" id="6uT0Sim0wE8" role="37wK5m">
                  <ref role="3cqZAo" node="hP8D6fqe8n" resolve="myIcon" />
                </node>
              </node>
              <node concept="2YIFZM" id="hP8D6fqe8a" role="2Oq$k0">
                <ref role="37wK5l" to="dxuu:~UIManager.getLookAndFeel()" resolve="getLookAndFeel" />
                <ref role="1Pybhc" to="dxuu:~UIManager" resolve="UIManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7hIrQB9J1g6" role="3cqZAp">
          <node concept="37vLTw" id="7hIrQB9J1wW" role="3cqZAk">
            <ref role="3cqZAo" node="7hIrQB9J1nT" resolve="myIconDisable" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hP8D6fqe81" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="hP8D6fqe80" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTB3q" role="jymVt" />
    <node concept="3clFb_" id="hP8D6fqe8g" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ID" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="hP8D6fqe8k" role="3clF47">
        <node concept="3clFbF" id="hP8D6fqe8l" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeorzT" role="3clFbG">
            <ref role="3cqZAo" node="hP8D6fqe8s" resolve="WIDGET_ID" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="hP8D6fqe8i" role="3clF45" />
      <node concept="2AHcQZ" id="hP8D6fqe8j" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tm1VV" id="hP8D6fqe8h" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_U_he" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTBSW" role="jymVt" />
    <node concept="3clFb_" id="7ipB4ZUdPew" role="jymVt">
      <property role="TrG5h" value="isSaveTransientModels" />
      <node concept="3clFbS" id="7ipB4ZUdPez" role="3clF47">
        <node concept="3clFbF" id="7ipB4ZUdPe_" role="3cqZAp">
          <node concept="2OqwBi" id="hP8D6fqe6D" role="3clFbG">
            <node concept="37vLTw" id="3LTvNgPOLk5" role="2Oq$k0">
              <ref role="3cqZAo" node="3LTvNgPOGvW" resolve="myGenerationSettings" />
            </node>
            <node concept="liA8E" id="hP8D6fqe6F" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~IGenerationSettings.isSaveTransientModels()" resolve="isSaveTransientModels" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7ipB4ZUdPey" role="1B3o_S" />
      <node concept="10P_77" id="7ipB4ZUdPe$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4_rZUNaTCIv" role="jymVt" />
    <node concept="3clFb_" id="1$ZRmkX9bOD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="1$ZRmkX9bOF" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm1VV" id="1$ZRmkX9bOE" role="1B3o_S" />
      <node concept="3clFbS" id="1$ZRmkX9bOG" role="3clF47">
        <node concept="3clFbJ" id="7yBW3gdGOB4" role="3cqZAp">
          <node concept="3clFbS" id="7yBW3gdGOB6" role="3clFbx">
            <node concept="3SKdUt" id="7yBW3gdGVUh" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoja_" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojaA" role="1PaTwD">
                  <property role="3oM_SC" value="getComponent()" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaB" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaC" role="1PaTwD">
                  <property role="3oM_SC" value="invoked" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaD" role="1PaTwD">
                  <property role="3oM_SC" value="EARLIER" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaE" role="1PaTwD">
                  <property role="3oM_SC" value="than" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaF" role="1PaTwD">
                  <property role="3oM_SC" value="install()," />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaG" role="1PaTwD">
                  <property role="3oM_SC" value="so" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaH" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaI" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaJ" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaK" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaL" role="1PaTwD">
                  <property role="3oM_SC" value="place" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaM" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaN" role="1PaTwD">
                  <property role="3oM_SC" value="instantiate" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaO" role="1PaTwD">
                  <property role="3oM_SC" value="panel" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7yBW3gdGWww" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojaP" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojaQ" role="1PaTwD">
                  <property role="3oM_SC" value="except" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaR" role="1PaTwD">
                  <property role="3oM_SC" value="cons" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaS" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaT" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaU" role="1PaTwD">
                  <property role="3oM_SC" value="class" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaV" role="1PaTwD">
                  <property role="3oM_SC" value="(which" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaW" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaX" role="1PaTwD">
                  <property role="3oM_SC" value="bad," />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaY" role="1PaTwD">
                  <property role="3oM_SC" value="because" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojaZ" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb0" role="1PaTwD">
                  <property role="3oM_SC" value="goes" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb1" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb2" role="1PaTwD">
                  <property role="3oM_SC" value="TMP," />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb3" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb4" role="1PaTwD">
                  <property role="3oM_SC" value="uses" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb5" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb6" role="1PaTwD">
                  <property role="3oM_SC" value="e.g." />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb7" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb8" role="1PaTwD">
                  <property role="3oM_SC" value="getText()" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojb9" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojba" role="1PaTwD">
                  <property role="3oM_SC" value="un-initialized" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojbb" role="1PaTwD">
                  <property role="3oM_SC" value="instance)" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7yBW3gdGR5I" role="3cqZAp">
              <node concept="37vLTI" id="7yBW3gdGRwh" role="3clFbG">
                <node concept="37vLTw" id="7yBW3gdGR5G" role="37vLTJ">
                  <ref role="3cqZAo" node="1$ZRmkX9e_b" resolve="myComponent" />
                </node>
                <node concept="2ShNRf" id="1$ZRmkX9e_j" role="37vLTx">
                  <node concept="1pGfFk" id="1$ZRmkX9e_k" role="2ShVmc">
                    <ref role="37wK5l" node="5J8_5nlyCOu" resolve="TransientModelsPanel" />
                    <node concept="Xjq3P" id="1$ZRmkX9e_l" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7yBW3gdGP$J" role="3clFbw">
            <node concept="10Nm6u" id="7yBW3gdGPQm" role="3uHU7w" />
            <node concept="37vLTw" id="7yBW3gdGP9y" role="3uHU7B">
              <ref role="3cqZAo" node="1$ZRmkX9e_b" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7yBW3gdGSKd" role="3cqZAp">
          <node concept="37vLTw" id="7yBW3gdGT$h" role="3cqZAk">
            <ref role="3cqZAo" node="1$ZRmkX9e_b" resolve="myComponent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U_hd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTD$3" role="jymVt" />
    <node concept="3clFb_" id="4hZPELmBD3a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getText" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4hZPELmBD3b" role="1B3o_S" />
      <node concept="17QB3L" id="4_rZUNaTJY3" role="3clF45" />
      <node concept="2AHcQZ" id="4hZPELmBD3e" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4hZPELmBD3i" role="3clF47">
        <node concept="3clFbJ" id="4hZPELmBGNv" role="3cqZAp">
          <node concept="3clFbS" id="4hZPELmBGNw" role="3clFbx">
            <node concept="3cpWs6" id="4hZPELmBGNx" role="3cqZAp">
              <node concept="Xl_RD" id="4hZPELmBH1t" role="3cqZAk">
                <property role="Xl_RC" value=":ON " />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4hZPELmBGNz" role="3clFbw">
            <ref role="37wK5l" node="7ipB4ZUdPew" resolve="isSaveTransientModels" />
          </node>
        </node>
        <node concept="3cpWs6" id="4hZPELmBJql" role="3cqZAp">
          <node concept="Xl_RD" id="4hZPELmBLnT" role="3cqZAk">
            <property role="Xl_RC" value=":OFF" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTEWr" role="jymVt" />
    <node concept="3clFb_" id="4hZPELmBD3l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMaxPossibleText" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4hZPELmBD3m" role="1B3o_S" />
      <node concept="17QB3L" id="4_rZUNaTJ2o" role="3clF45" />
      <node concept="2AHcQZ" id="4hZPELmBD3p" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4hZPELmBD3t" role="3clF47">
        <node concept="3clFbF" id="4hZPELmBD3v" role="3cqZAp">
          <node concept="Xl_RD" id="4hZPELmBEKr" role="3clFbG">
            <property role="Xl_RC" value=":OFF" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTFM1" role="jymVt" />
    <node concept="3clFb_" id="4hZPELmBD3w" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAlignment" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4hZPELmBD3x" role="1B3o_S" />
      <node concept="10OMs4" id="4hZPELmBD3z" role="3clF45" />
      <node concept="3clFbS" id="4hZPELmBD3B" role="3clF47">
        <node concept="3clFbF" id="4hZPELmBFEN" role="3cqZAp">
          <node concept="10M0yZ" id="7QIaYHuO5JB" role="3clFbG">
            <ref role="1PxDUh" to="dxuu:~JComponent" resolve="JComponent" />
            <ref role="3cqZAo" to="z60i:~Component.RIGHT_ALIGNMENT" resolve="RIGHT_ALIGNMENT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="hP8D6fqe6M" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget" resolve="StatusBarWidget" />
    </node>
    <node concept="3uibUv" id="1$ZRmkX9bOC" role="EKbjA">
      <ref role="3uigEE" to="jkny:~CustomStatusBarWidget" resolve="CustomStatusBarWidget" />
    </node>
    <node concept="3uibUv" id="4hZPELmBBTb" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget$TextPresentation" resolve="StatusBarWidget.TextPresentation" />
    </node>
    <node concept="3uibUv" id="1$ZRmkX9bYN" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget$WidgetPresentation" resolve="StatusBarWidget.WidgetPresentation" />
    </node>
    <node concept="3uibUv" id="2LX1rHNIXCu" role="EKbjA">
      <ref role="3uigEE" to="j936:~UISettingsListener" resolve="UISettingsListener" />
    </node>
    <node concept="3uibUv" id="1tWJVfj_YDg" role="EKbjA">
      <ref role="3uigEE" to="mnlj:~PropertyChangeListener" resolve="PropertyChangeListener" />
    </node>
    <node concept="2tJIrI" id="4_rZUNaTGBC" role="jymVt" />
    <node concept="3clFb_" id="2LX1rHNIXRt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="uiSettingsChanged" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2LX1rHNIXRu" role="1B3o_S" />
      <node concept="3cqZAl" id="2LX1rHNIXRw" role="3clF45" />
      <node concept="37vLTG" id="2LX1rHNIXRx" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="2LX1rHNIXRy" role="1tU5fm">
          <ref role="3uigEE" to="j936:~UISettings" resolve="UISettings" />
        </node>
      </node>
      <node concept="3clFbS" id="2LX1rHNIXRA" role="3clF47">
        <node concept="3clFbF" id="7yBW3gdGV7m" role="3cqZAp">
          <node concept="1rXfSq" id="7yBW3gdGV7k" role="3clFbG">
            <ref role="37wK5l" node="2hEKckkLhQa" resolve="update" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaTHtg" role="jymVt" />
    <node concept="3clFb_" id="1tWJVfj_YVe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="propertyChange" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1tWJVfj_YVf" role="1B3o_S" />
      <node concept="3cqZAl" id="1tWJVfj_YVh" role="3clF45" />
      <node concept="37vLTG" id="1tWJVfj_YVi" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="1tWJVfj_YVj" role="1tU5fm">
          <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="1tWJVfj_YVo" role="3clF47">
        <node concept="3clFbF" id="7yBW3gdGVec" role="3cqZAp">
          <node concept="1rXfSq" id="7yBW3gdGVed" role="3clFbG">
            <ref role="37wK5l" node="2hEKckkLhQa" resolve="update" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4_qBpm$bmFj">
    <property role="TrG5h" value="SaveTransientModelsAction" />
    <property role="3GE5qa" value="SaveTransientModels.Actions" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3clFbW" id="4_qBpm$bmFm" role="jymVt">
      <node concept="3Tm1VV" id="4_qBpm$bmFn" role="1B3o_S" />
      <node concept="3clFbS" id="4_qBpm$bmFp" role="3clF47">
        <node concept="XkiVB" id="4_qBpm$bmFq" role="3cqZAp">
          <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String)" resolve="ToggleAction" />
          <node concept="Xl_RD" id="4_qBpm$bmFr" role="37wK5m">
            <property role="Xl_RC" value="Save Transient Models" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4_qBpm$bmFo" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4_qBpm$bmFs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSelected" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4_qBpm$bmFx" role="3clF47">
        <node concept="3cpWs8" id="3l7XKooG4Z$" role="3cqZAp">
          <node concept="3cpWsn" id="3l7XKooG4Z_" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="3l7XKooG4Zq" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="3l7XKooG4ZA" role="33vP2m">
              <node concept="liA8E" id="3l7XKooG4ZC" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="3l7XKooG4ZB" role="37wK5m">
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                </node>
              </node>
              <node concept="37vLTw" id="3l7XKooG8Qp" role="2Oq$k0">
                <ref role="3cqZAo" node="4_qBpm$bmFv" resolve="e" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6c0Tqkz8V7z" role="3cqZAp">
          <node concept="1Wc70l" id="3FLm4EWsBCF" role="3cqZAk">
            <node concept="3y3z36" id="6c0Tqkz8XH9" role="3uHU7B">
              <node concept="37vLTw" id="6c0Tqkz8VLA" role="3uHU7B">
                <ref role="3cqZAo" node="3l7XKooG4Z_" resolve="mpsProject" />
              </node>
              <node concept="10Nm6u" id="6c0Tqkz8XeT" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="6c0Tqkz8YNA" role="3uHU7w">
              <node concept="2OqwBi" id="6c0Tqkz8Y8G" role="2Oq$k0">
                <node concept="2OqwBi" id="6c0Tqkz8XQ9" role="2Oq$k0">
                  <node concept="37vLTw" id="6c0Tqkz8XQa" role="2Oq$k0">
                    <ref role="3cqZAo" node="3l7XKooG4Z_" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="6c0Tqkz8XQb" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                    <node concept="3VsKOn" id="6c0Tqkz8XQc" role="37wK5m">
                      <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6c0Tqkz8YDn" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
                </node>
              </node>
              <node concept="liA8E" id="6c0Tqkz8YZo" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~IGenerationSettings.isSaveTransientModels()" resolve="isSaveTransientModels" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_qBpm$bmFt" role="1B3o_S" />
      <node concept="37vLTG" id="4_qBpm$bmFv" role="3clF46">
        <property role="TrG5h" value="e" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4_qBpm$bmFw" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="10P_77" id="4_qBpm$bmFu" role="3clF45" />
      <node concept="2AHcQZ" id="3tYsUK_RXgU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4_qBpm$bmFA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="update" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4_qBpm$bmFB" role="1B3o_S" />
      <node concept="3clFbS" id="4_qBpm$bmFF" role="3clF47">
        <node concept="3clFbF" id="4_qBpm$bmFG" role="3cqZAp">
          <node concept="3nyPlj" id="4_qBpm$bmFH" role="3clFbG">
            <ref role="37wK5l" to="qkt:~ToggleAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
            <node concept="37vLTw" id="2BHiRxgm82W" role="37wK5m">
              <ref role="3cqZAo" node="4_qBpm$bmFD" resolve="e" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3l7XKooGasc" role="3cqZAp">
          <node concept="3cpWsn" id="3l7XKooGasd" role="3cpWs9">
            <property role="TrG5h" value="inProject" />
            <node concept="10P_77" id="3l7XKooGas1" role="1tU5fm" />
            <node concept="3y3z36" id="3l7XKooGase" role="33vP2m">
              <node concept="2OqwBi" id="3l7XKooGasf" role="3uHU7B">
                <node concept="37vLTw" id="3l7XKooGasg" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_qBpm$bmFD" resolve="e" />
                </node>
                <node concept="liA8E" id="3l7XKooGash" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                  <node concept="10M0yZ" id="3l7XKooGasi" role="37wK5m">
                    <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                    <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="3l7XKooGasj" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooGaL9" role="3cqZAp">
          <node concept="2OqwBi" id="3l7XKooGaLa" role="3clFbG">
            <node concept="2OqwBi" id="3l7XKooGaLb" role="2Oq$k0">
              <node concept="liA8E" id="3l7XKooGaLc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
              <node concept="37vLTw" id="3l7XKooGaLd" role="2Oq$k0">
                <ref role="3cqZAo" node="4_qBpm$bmFD" resolve="e" />
              </node>
            </node>
            <node concept="liA8E" id="3l7XKooGaLe" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="3l7XKooGaLf" role="37wK5m">
                <ref role="3cqZAo" node="3l7XKooGasd" resolve="inProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_qBpm$bmFV" role="3cqZAp">
          <node concept="3clFbS" id="4_qBpm$bmGb" role="3clFbx">
            <node concept="3clFbF" id="4_qBpm$bmGc" role="3cqZAp">
              <node concept="2OqwBi" id="4_qBpm$bmGd" role="3clFbG">
                <node concept="2OqwBi" id="4_qBpm$bmGe" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxghipK" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_qBpm$bmFD" resolve="e" />
                  </node>
                  <node concept="liA8E" id="4_qBpm$bmGg" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="4_qBpm$bmGh" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setIcon(javax.swing.Icon)" resolve="setIcon" />
                  <node concept="10M0yZ" id="$0lM0JKNI4" role="37wK5m">
                    <ref role="3cqZAo" to="l7us:~MPSIcons$Nodes.TransientModule" resolve="TransientModule" />
                    <ref role="1PxDUh" to="l7us:~MPSIcons$Nodes" resolve="MPSIcons.Nodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4_qBpm$bmG2" role="9aQIa">
            <node concept="3clFbS" id="4_qBpm$bmG3" role="9aQI4">
              <node concept="3clFbF" id="4_qBpm$bmG4" role="3cqZAp">
                <node concept="2OqwBi" id="4_qBpm$bmG5" role="3clFbG">
                  <node concept="liA8E" id="4_qBpm$bmG9" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~Presentation.setIcon(javax.swing.Icon)" resolve="setIcon" />
                    <node concept="10Nm6u" id="4_qBpm$bmGa" role="37wK5m" />
                  </node>
                  <node concept="2OqwBi" id="4_qBpm$bmG6" role="2Oq$k0">
                    <node concept="liA8E" id="4_qBpm$bmG8" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm9C2" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_qBpm$bmFD" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4_qBpm$bmFW" role="3clFbw">
            <node concept="liA8E" id="4_qBpm$bmG0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
              <node concept="Xl_RD" id="4_qBpm$bmG1" role="37wK5m">
                <property role="Xl_RC" value="Toolbar" />
              </node>
            </node>
            <node concept="2OqwBi" id="4_qBpm$bmFX" role="2Oq$k0">
              <node concept="liA8E" id="4_qBpm$bmFZ" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPlace()" resolve="getPlace" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmayO" role="2Oq$k0">
                <ref role="3cqZAo" node="4_qBpm$bmFD" resolve="e" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4_qBpm$bmFC" role="3clF45" />
      <node concept="37vLTG" id="4_qBpm$bmFD" role="3clF46">
        <property role="TrG5h" value="e" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6ZtR3Skq0oP" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RXgW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6lFKwfyH6mh" role="jymVt">
      <property role="TrG5h" value="getActionUpdateThread" />
      <node concept="3Tm1VV" id="6lFKwfyH6mi" role="1B3o_S" />
      <node concept="2AHcQZ" id="6lFKwfyH6mj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6lFKwfyH6mk" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
      </node>
      <node concept="3clFbS" id="6lFKwfyH6ml" role="3clF47">
        <node concept="3clFbF" id="6lFKwfyH6mm" role="3cqZAp">
          <node concept="Rm8GO" id="6lFKwfyH6mn" role="3clFbG">
            <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
            <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6lFKwfyH6mo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4_qBpm$bmGj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSelected" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4_qBpm$bmGq" role="3clF47">
        <node concept="3cpWs8" id="3l7XKooG9b$" role="3cqZAp">
          <node concept="3cpWsn" id="3l7XKooG9b_" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="3l7XKooG9bA" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="3l7XKooG9bB" role="33vP2m">
              <node concept="liA8E" id="3l7XKooG9bC" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="3l7XKooG9bD" role="37wK5m">
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                </node>
              </node>
              <node concept="37vLTw" id="3l7XKooG9bE" role="2Oq$k0">
                <ref role="3cqZAo" node="4_qBpm$bmGm" resolve="e" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6c0Tqkz91L7" role="3cqZAp">
          <node concept="3y3z36" id="6c0Tqkz92YQ" role="1gVkn0">
            <node concept="10Nm6u" id="6c0Tqkz93c4" role="3uHU7w" />
            <node concept="37vLTw" id="6c0Tqkz92c_" role="3uHU7B">
              <ref role="3cqZAo" node="3l7XKooG9b_" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3l7XKooG9bG" role="3cqZAp">
          <node concept="3cpWsn" id="3l7XKooG9bH" role="3cpWs9">
            <property role="TrG5h" value="sp" />
            <node concept="3uibUv" id="3l7XKooG9bI" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
            </node>
            <node concept="2OqwBi" id="3l7XKooG9bJ" role="33vP2m">
              <node concept="37vLTw" id="3l7XKooG9bK" role="2Oq$k0">
                <ref role="3cqZAo" node="3l7XKooG9b_" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="3l7XKooG9bL" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="3l7XKooG9bM" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_qBpm$bmGr" role="3cqZAp">
          <node concept="2OqwBi" id="4_qBpm$bmGs" role="3clFbG">
            <node concept="2OqwBi" id="3l7XKooG9RG" role="2Oq$k0">
              <node concept="37vLTw" id="3l7XKooG9xh" role="2Oq$k0">
                <ref role="3cqZAo" node="3l7XKooG9bH" resolve="sp" />
              </node>
              <node concept="liA8E" id="3l7XKooGacr" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
              </node>
            </node>
            <node concept="liA8E" id="4_qBpm$bmGu" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~IModifiableGenerationSettings.setSaveTransientModels(boolean)" resolve="setSaveTransientModels" />
              <node concept="37vLTw" id="2BHiRxghfq_" role="37wK5m">
                <ref role="3cqZAo" node="4_qBpm$bmGo" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_qBpm$bmGm" role="3clF46">
        <property role="TrG5h" value="e" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4_qBpm$bmGn" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="4_qBpm$bmGo" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="4_qBpm$bmGp" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4_qBpm$bmGk" role="1B3o_S" />
      <node concept="3cqZAl" id="4_qBpm$bmGl" role="3clF45" />
      <node concept="2AHcQZ" id="3tYsUK_RXgV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4_qBpm$bmFk" role="1B3o_S" />
    <node concept="3uibUv" id="4_qBpm$bmFl" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
    </node>
  </node>
  <node concept="312cEu" id="C3dcc38Te3">
    <property role="TrG5h" value="TransientModelBalloonDisplayer" />
    <property role="3GE5qa" value="SaveTransientModels.Balloon" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="6za2oG6XsvV" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="Xl_RD" id="6za2oG6XsvY" role="33vP2m">
        <property role="Xl_RC" value="Saving Transient Models Is On" />
      </node>
      <node concept="17QB3L" id="6za2oG6XsvX" role="1tU5fm" />
      <node concept="3Tm6S6" id="6za2oG6XsvW" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1Kgs_4ZGAYH" role="jymVt">
      <property role="TrG5h" value="myStatusBar" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3l7XKooFiHi" role="1tU5fm">
        <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
      </node>
      <node concept="3Tm6S6" id="1Kgs_4ZGAYI" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5do60t9v47S" role="jymVt">
      <property role="TrG5h" value="myWidget" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5do60t9v47T" role="1B3o_S" />
      <node concept="3uibUv" id="5do60t9v482" role="1tU5fm">
        <ref role="3uigEE" node="hP8D6fqe6p" resolve="TransientModelsWidget" />
      </node>
    </node>
    <node concept="312cEg" id="180CX8WQ1de" role="jymVt">
      <property role="TrG5h" value="myIsDisposed" />
      <node concept="3Tm6S6" id="180CX8WPZxf" role="1B3o_S" />
      <node concept="10P_77" id="180CX8WQ18G" role="1tU5fm" />
      <node concept="3clFbT" id="180CX8WQ803" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="2ZAgslkc1a0" role="jymVt" />
    <node concept="3clFbW" id="C3dcc38Te5" role="jymVt">
      <node concept="37vLTG" id="1Kgs_4ZGAYF" role="3clF46">
        <property role="TrG5h" value="statusBar" />
        <node concept="3uibUv" id="3l7XKooFiin" role="1tU5fm">
          <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
        </node>
      </node>
      <node concept="37vLTG" id="5do60t9v48c" role="3clF46">
        <property role="TrG5h" value="widget" />
        <node concept="3uibUv" id="5do60t9v48e" role="1tU5fm">
          <ref role="3uigEE" node="hP8D6fqe6p" resolve="TransientModelsWidget" />
        </node>
      </node>
      <node concept="3cqZAl" id="C3dcc38Te6" role="3clF45" />
      <node concept="3Tm1VV" id="C3dcc38Te7" role="1B3o_S" />
      <node concept="3clFbS" id="C3dcc38Te8" role="3clF47">
        <node concept="3clFbF" id="1Kgs_4ZGBcc" role="3cqZAp">
          <node concept="37vLTI" id="1Kgs_4ZGBce" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmaUT" role="37vLTx">
              <ref role="3cqZAo" node="1Kgs_4ZGAYF" resolve="statusBar" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuniq" role="37vLTJ">
              <ref role="3cqZAo" node="1Kgs_4ZGAYH" resolve="myStatusBar" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5do60t9v48g" role="3cqZAp">
          <node concept="37vLTI" id="5do60t9v48k" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeut2H" role="37vLTJ">
              <ref role="3cqZAo" node="5do60t9v47S" resolve="myWidget" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm_zy" role="37vLTx">
              <ref role="3cqZAo" node="5do60t9v48c" resolve="widget" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ZAgslkc0wi" role="jymVt" />
    <node concept="3clFb_" id="C3dcc38V0L" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="C3dcc38V0O" role="3clF47">
        <node concept="3SKdUt" id="180CX8WMzyO" role="3cqZAp">
          <node concept="1PaTwC" id="180CX8WMzyP" role="1aUNEU">
            <node concept="3oM_SD" id="180CX8WM$Im" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$Jt" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$Kl" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$KA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$LH" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$Me" role="1PaTwD">
              <property role="3oM_SC" value="Disposable" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$N_" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$NA" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$Ot" role="1PaTwD">
              <property role="3oM_SC" value="serves" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$P$" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$P_" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$PA" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$Qt" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$QI" role="1PaTwD">
              <property role="3oM_SC" value="disposable" />
            </node>
            <node concept="3oM_SD" id="180CX8WM$RP" role="1PaTwD">
              <property role="3oM_SC" value="Balloon" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="180CX8WQ3a5" role="3cqZAp">
          <node concept="37vLTI" id="180CX8WQ4lq" role="3clFbG">
            <node concept="3clFbT" id="180CX8WQ5F5" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="180CX8WQ3a3" role="37vLTJ">
              <ref role="3cqZAo" node="180CX8WQ1de" resolve="myIsDisposed" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="C3dcc38V0M" role="3clF45" />
      <node concept="3Tm1VV" id="C3dcc38V0N" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_RXcx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ZAgslkc1Pz" role="jymVt" />
    <node concept="3clFb_" id="C3dcc38Te9" role="jymVt">
      <property role="TrG5h" value="showBalloon" />
      <node concept="3cqZAl" id="C3dcc38Tea" role="3clF45" />
      <node concept="3clFbS" id="C3dcc38Tec" role="3clF47">
        <node concept="3clFbJ" id="180CX8WQLAN" role="3cqZAp">
          <node concept="3clFbS" id="180CX8WQLAP" role="3clFbx">
            <node concept="3cpWs6" id="180CX8WQQzZ" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="180CX8WQOgi" role="3clFbw">
            <ref role="3cqZAo" node="180CX8WQ1de" resolve="myIsDisposed" />
          </node>
        </node>
        <node concept="3SKdUt" id="3l7XKooDV8i" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojbc" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojbd" role="1PaTwD">
              <property role="3oM_SC" value="Assumes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojbe" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="yuiNvycWpC" role="3cqZAp">
          <node concept="3cpWsn" id="yuiNvycWpD" role="3cpWs9">
            <property role="TrG5h" value="sticky" />
            <node concept="10P_77" id="yuiNvycWpE" role="1tU5fm" />
            <node concept="3clFbC" id="yuiNvycWpH" role="33vP2m">
              <node concept="Rm8GO" id="yuiNvycWpL" role="3uHU7w">
                <ref role="Rm8GQ" to="fnpx:~NotificationDisplayType.STICKY_BALLOON" resolve="STICKY_BALLOON" />
                <ref role="1Px2BO" to="fnpx:~NotificationDisplayType" resolve="NotificationDisplayType" />
              </node>
              <node concept="2OqwBi" id="yuiNvycWq1" role="3uHU7B">
                <node concept="2YIFZM" id="yuiNvycWq4" role="2Oq$k0">
                  <ref role="37wK5l" to="o0ih:~NotificationsConfigurationImpl.getSettings(java.lang.String)" resolve="getSettings" />
                  <ref role="1Pybhc" to="o0ih:~NotificationsConfigurationImpl" resolve="NotificationsConfigurationImpl" />
                  <node concept="37vLTw" id="2BHiRxeop2G" role="37wK5m">
                    <ref role="3cqZAo" node="6za2oG6XsvV" resolve="ID" />
                  </node>
                </node>
                <node concept="liA8E" id="yuiNvycWq3" role="2OqNvi">
                  <ref role="37wK5l" to="o0ih:~NotificationSettings.getDisplayType()" resolve="getDisplayType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3UKYyL8N77$" role="3cqZAp">
          <node concept="3cpWsn" id="3UKYyL8N77_" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="3UKYyL8N77A" role="1tU5fm">
              <ref role="3uigEE" to="gspm:~BalloonBuilder" resolve="BalloonBuilder" />
            </node>
            <node concept="2OqwBi" id="3UKYyL8N77B" role="33vP2m">
              <node concept="liA8E" id="3UKYyL8N77R" role="2OqNvi">
                <ref role="37wK5l" to="gspm:~BalloonBuilder.setHideOnKeyOutside(boolean)" resolve="setHideOnKeyOutside" />
                <node concept="3fqX7Q" id="3UKYyL8N77S" role="37wK5m">
                  <node concept="37vLTw" id="3GM_nagTuUl" role="3fr31v">
                    <ref role="3cqZAo" node="yuiNvycWpD" resolve="sticky" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3UKYyL8N77C" role="2Oq$k0">
                <node concept="liA8E" id="3UKYyL8N77O" role="2OqNvi">
                  <ref role="37wK5l" to="gspm:~BalloonBuilder.setHideOnClickOutside(boolean)" resolve="setHideOnClickOutside" />
                  <node concept="3fqX7Q" id="3UKYyL8N77P" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTwKE" role="3fr31v">
                      <ref role="3cqZAo" node="yuiNvycWpD" resolve="sticky" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3UKYyL8N77D" role="2Oq$k0">
                  <node concept="liA8E" id="3UKYyL8N77L" role="2OqNvi">
                    <ref role="37wK5l" to="gspm:~BalloonBuilder.setHideOnAction(boolean)" resolve="setHideOnAction" />
                    <node concept="3fqX7Q" id="3UKYyL8N77M" role="37wK5m">
                      <node concept="37vLTw" id="3GM_nagTrw0" role="3fr31v">
                        <ref role="3cqZAo" node="yuiNvycWpD" resolve="sticky" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3UKYyL8N77E" role="2Oq$k0">
                    <node concept="liA8E" id="3UKYyL8N77G" role="2OqNvi">
                      <ref role="37wK5l" to="gspm:~JBPopupFactory.createHtmlTextBalloonBuilder(java.lang.String,com.intellij.openapi.ui.MessageType,javax.swing.event.HyperlinkListener)" resolve="createHtmlTextBalloonBuilder" />
                      <node concept="Xl_RD" id="3UKYyL8N77H" role="37wK5m">
                        <property role="Xl_RC" value="Saving transient models is on. This may slow down generation." />
                      </node>
                      <node concept="10M0yZ" id="7mjDUUT_UAJ" role="37wK5m">
                        <ref role="3cqZAo" to="jkm4:~MessageType.WARNING" resolve="WARNING" />
                        <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                      </node>
                      <node concept="10Nm6u" id="3UKYyL8N77K" role="37wK5m" />
                    </node>
                    <node concept="2YIFZM" id="3UKYyL8N77F" role="2Oq$k0">
                      <ref role="37wK5l" to="gspm:~JBPopupFactory.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="gspm:~JBPopupFactory" resolve="JBPopupFactory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3UKYyL8N77W" role="3cqZAp">
          <node concept="3clFbS" id="3UKYyL8N77X" role="3clFbx">
            <node concept="3clFbF" id="3UKYyL8N783" role="3cqZAp">
              <node concept="2OqwBi" id="3UKYyL8N785" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTy70" role="2Oq$k0">
                  <ref role="3cqZAo" node="3UKYyL8N77_" resolve="builder" />
                </node>
                <node concept="liA8E" id="3UKYyL8N789" role="2OqNvi">
                  <ref role="37wK5l" to="gspm:~BalloonBuilder.setFadeoutTime(long)" resolve="setFadeoutTime" />
                  <node concept="3cmrfG" id="3UKYyL8N78a" role="37wK5m">
                    <property role="3cmrfH" value="3000" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3UKYyL8N780" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTuHY" role="3fr31v">
              <ref role="3cqZAo" node="yuiNvycWpD" resolve="sticky" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="66yJKVnNaY2" role="3cqZAp">
          <node concept="3cpWsn" id="C3dcc38Tee" role="3cpWs9">
            <property role="TrG5h" value="balloon" />
            <property role="3TUv4t" value="true" />
            <node concept="2OqwBi" id="5ortMJzsKro" role="33vP2m">
              <node concept="liA8E" id="5ortMJzsKrs" role="2OqNvi">
                <ref role="37wK5l" to="gspm:~BalloonBuilder.createBalloon()" resolve="createBalloon" />
              </node>
              <node concept="37vLTw" id="3GM_nagT_RU" role="2Oq$k0">
                <ref role="3cqZAo" node="3UKYyL8N77_" resolve="builder" />
              </node>
            </node>
            <node concept="3uibUv" id="C3dcc38Tef" role="1tU5fm">
              <ref role="3uigEE" to="gspm:~Balloon" resolve="Balloon" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3UKYyL8MY6p" role="3cqZAp" />
        <node concept="3clFbF" id="C3dcc38Tgl" role="3cqZAp">
          <node concept="2YIFZM" id="C3dcc38Tgm" role="3clFbG">
            <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
            <node concept="Xjq3P" id="C3dcc38Tgn" role="37wK5m" />
            <node concept="37vLTw" id="3GM_nagTshF" role="37wK5m">
              <ref role="3cqZAo" node="C3dcc38Tee" resolve="balloon" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="66yJKVnN5mw" role="3cqZAp" />
        <node concept="3cpWs8" id="C3dcc38TeO" role="3cqZAp">
          <node concept="3cpWsn" id="C3dcc38TeP" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <property role="3TUv4t" value="false" />
            <node concept="2OqwBi" id="3l7XKooEh5W" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeujUH" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9v47S" resolve="myWidget" />
              </node>
              <node concept="liA8E" id="3l7XKooEi$z" role="2OqNvi">
                <ref role="37wK5l" node="1$ZRmkX9bOD" resolve="getComponent" />
              </node>
            </node>
            <node concept="3uibUv" id="C3dcc38TeQ" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="C3dcc38TeS" role="3cqZAp">
          <node concept="3clFbS" id="C3dcc38TfO" role="3clFbx">
            <node concept="3clFbF" id="5ortMJzsFmH" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyYla" role="3clFbG">
                <ref role="37wK5l" node="5ortMJzsDjo" resolve="showForComponent" />
                <node concept="37vLTw" id="3GM_nagTwew" role="37wK5m">
                  <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
                </node>
                <node concept="37vLTw" id="3GM_nagTvsN" role="37wK5m">
                  <ref role="3cqZAo" node="C3dcc38Tee" resolve="balloon" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1Kgs_4ZGAI_" role="9aQIa">
            <node concept="3clFbS" id="1Kgs_4ZGAIA" role="9aQI4">
              <node concept="3clFbF" id="1Kgs_4ZGAJB" role="3cqZAp">
                <node concept="37vLTI" id="1Kgs_4ZGAJD" role="3clFbG">
                  <node concept="2OqwBi" id="3l7XKooFjQn" role="37vLTx">
                    <node concept="37vLTw" id="3l7XKooFjHH" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Kgs_4ZGAYH" resolve="myStatusBar" />
                    </node>
                    <node concept="liA8E" id="3l7XKooFkkN" role="2OqNvi">
                      <ref role="37wK5l" to="jkny:~StatusBar.getComponent()" resolve="getComponent" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTr5g" role="37vLTJ">
                    <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5ortMJzsFmN" role="3cqZAp">
                <node concept="9aQIb" id="5ortMJzsFna" role="9aQIa">
                  <node concept="3clFbS" id="5ortMJzsFnb" role="9aQI4">
                    <node concept="3cpWs8" id="1Kgs_4ZGAIB" role="3cqZAp">
                      <node concept="3cpWsn" id="1Kgs_4ZGAIC" role="3cpWs9">
                        <property role="TrG5h" value="rootPane" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="1Kgs_4ZGAID" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JRootPane" resolve="JRootPane" />
                        </node>
                        <node concept="2YIFZM" id="1Kgs_4ZGAIE" role="33vP2m">
                          <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                          <ref role="37wK5l" to="dxuu:~SwingUtilities.getRootPane(java.awt.Component)" resolve="getRootPane" />
                          <node concept="37vLTw" id="3GM_nagTxRE" role="37wK5m">
                            <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1Kgs_4ZGAIG" role="3cqZAp">
                      <node concept="1Wc70l" id="1Kgs_4ZGAIH" role="3clFbw">
                        <node concept="3y3z36" id="1Kgs_4ZGAII" role="3uHU7B">
                          <node concept="37vLTw" id="3GM_nagTzUw" role="3uHU7B">
                            <ref role="3cqZAo" node="1Kgs_4ZGAIC" resolve="rootPane" />
                          </node>
                          <node concept="10Nm6u" id="1Kgs_4ZGAIK" role="3uHU7w" />
                        </node>
                        <node concept="2OqwBi" id="1Kgs_4ZGAIL" role="3uHU7w">
                          <node concept="liA8E" id="1Kgs_4ZGAIN" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Component.isShowing()" resolve="isShowing" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTzL6" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Kgs_4ZGAIC" resolve="rootPane" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1Kgs_4ZGAIO" role="3clFbx">
                        <node concept="3cpWs8" id="1Kgs_4ZGAIP" role="3cqZAp">
                          <node concept="3cpWsn" id="1Kgs_4ZGAIQ" role="3cpWs9">
                            <property role="TrG5h" value="contentPane" />
                            <property role="3TUv4t" value="true" />
                            <node concept="2OqwBi" id="1Kgs_4ZGAIS" role="33vP2m">
                              <node concept="37vLTw" id="3GM_nagT_OU" role="2Oq$k0">
                                <ref role="3cqZAo" node="1Kgs_4ZGAIC" resolve="rootPane" />
                              </node>
                              <node concept="liA8E" id="1Kgs_4ZGAIU" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JRootPane.getContentPane()" resolve="getContentPane" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1Kgs_4ZGAIR" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1Kgs_4ZGAIV" role="3cqZAp">
                          <node concept="3cpWsn" id="1Kgs_4ZGAIW" role="3cpWs9">
                            <property role="TrG5h" value="bounds" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="1Kgs_4ZGAIX" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                            </node>
                            <node concept="2OqwBi" id="1Kgs_4ZGAIY" role="33vP2m">
                              <node concept="liA8E" id="1Kgs_4ZGAJ0" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Component.getBounds()" resolve="getBounds" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTBp0" role="2Oq$k0">
                                <ref role="3cqZAo" node="1Kgs_4ZGAIQ" resolve="contentPane" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1Kgs_4ZGAJ1" role="3cqZAp">
                          <node concept="3cpWsn" id="1Kgs_4ZGAJ2" role="3cpWs9">
                            <property role="TrG5h" value="target" />
                            <property role="3TUv4t" value="true" />
                            <node concept="2YIFZM" id="1Kgs_4ZGAJ4" role="33vP2m">
                              <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
                              <ref role="37wK5l" to="g1qu:~UIUtil.getCenterPoint(java.awt.Rectangle,java.awt.Dimension)" resolve="getCenterPoint" />
                              <node concept="37vLTw" id="3GM_nagTxlm" role="37wK5m">
                                <ref role="3cqZAo" node="1Kgs_4ZGAIW" resolve="bounds" />
                              </node>
                              <node concept="2ShNRf" id="1Kgs_4ZGAJ6" role="37wK5m">
                                <node concept="1pGfFk" id="1Kgs_4ZGAJ7" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                                  <node concept="3cmrfG" id="1Kgs_4ZGAJ8" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                  <node concept="3cmrfG" id="1Kgs_4ZGAJ9" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="1Kgs_4ZGAJ3" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1Kgs_4ZGAJa" role="3cqZAp">
                          <node concept="37vLTI" id="1Kgs_4ZGAJb" role="3clFbG">
                            <node concept="3cpWsd" id="1Kgs_4ZGAJf" role="37vLTx">
                              <node concept="3cmrfG" id="1Kgs_4ZGAJj" role="3uHU7w">
                                <property role="3cmrfH" value="3" />
                              </node>
                              <node concept="2OqwBi" id="1Kgs_4ZGAJg" role="3uHU7B">
                                <node concept="2OwXpG" id="1Kgs_4ZGAJi" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagT$5_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1Kgs_4ZGAIW" resolve="bounds" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1Kgs_4ZGAJc" role="37vLTJ">
                              <node concept="2OwXpG" id="1Kgs_4ZGAJe" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTxW6" role="2Oq$k0">
                                <ref role="3cqZAo" node="1Kgs_4ZGAJ2" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1Kgs_4ZGAJk" role="3cqZAp">
                          <node concept="2OqwBi" id="1Kgs_4ZGAJl" role="3clFbG">
                            <node concept="liA8E" id="1Kgs_4ZGAJn" role="2OqNvi">
                              <ref role="37wK5l" to="gspm:~Balloon.show(com.intellij.ui.awt.RelativePoint,com.intellij.openapi.ui.popup.Balloon$Position)" resolve="show" />
                              <node concept="2ShNRf" id="1Kgs_4ZGAJo" role="37wK5m">
                                <node concept="1pGfFk" id="1Kgs_4ZGAJp" role="2ShVmc">
                                  <ref role="37wK5l" to="vmdq:~RelativePoint.&lt;init&gt;(java.awt.Component,java.awt.Point)" resolve="RelativePoint" />
                                  <node concept="37vLTw" id="3GM_nagTz71" role="37wK5m">
                                    <ref role="3cqZAo" node="1Kgs_4ZGAIQ" resolve="contentPane" />
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagTwhh" role="37wK5m">
                                    <ref role="3cqZAo" node="1Kgs_4ZGAJ2" resolve="target" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Rm8GO" id="1Kgs_4ZGAJs" role="37wK5m">
                                <ref role="Rm8GQ" to="gspm:~Balloon$Position.above" resolve="above" />
                                <ref role="1Px2BO" to="gspm:~Balloon$Position" resolve="Balloon.Position" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3GM_nagTrg2" role="2Oq$k0">
                              <ref role="3cqZAo" node="C3dcc38Tee" resolve="balloon" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5ortMJzsFmO" role="3clFbx">
                  <node concept="3clFbF" id="5ortMJzsFn5" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyzbG8" role="3clFbG">
                      <ref role="37wK5l" node="5ortMJzsDjo" resolve="showForComponent" />
                      <node concept="37vLTw" id="3GM_nagTryk" role="37wK5m">
                        <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTuNl" role="37wK5m">
                        <ref role="3cqZAo" node="C3dcc38Tee" resolve="balloon" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="5ortMJzsFmW" role="3clFbw">
                  <node concept="2OqwBi" id="5ortMJzsFn0" role="3uHU7w">
                    <node concept="liA8E" id="5ortMJzsFn4" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.isShowing()" resolve="isShowing" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTBd4" role="2Oq$k0">
                      <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="5ortMJzsFmS" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTvuP" role="3uHU7B">
                      <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
                    </node>
                    <node concept="10Nm6u" id="5ortMJzsFmV" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="C3dcc38Tqw" role="3clFbw">
            <node concept="2OqwBi" id="C3dcc38TeT" role="3uHU7w">
              <node concept="liA8E" id="C3dcc38TeV" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.isShowing()" resolve="isShowing" />
              </node>
              <node concept="37vLTw" id="3GM_nagTsuw" role="2Oq$k0">
                <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
              </node>
            </node>
            <node concept="3y3z36" id="C3dcc38Tq$" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagT$zD" role="3uHU7B">
                <ref role="3cqZAo" node="C3dcc38TeP" resolve="component" />
              </node>
              <node concept="10Nm6u" id="C3dcc38TqB" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ZAgslkc2aC" role="jymVt" />
    <node concept="3clFb_" id="5ortMJzsDjo" role="jymVt">
      <property role="TrG5h" value="showForComponent" />
      <node concept="37vLTG" id="5ortMJzsDjn" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="5ortMJzsDjr" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="5ortMJzsDk3" role="3clF46">
        <property role="TrG5h" value="ballon" />
        <node concept="3uibUv" id="5ortMJzsFmE" role="1tU5fm">
          <ref role="3uigEE" to="gspm:~Balloon" resolve="Balloon" />
        </node>
      </node>
      <node concept="3cqZAl" id="5ortMJzsDjq" role="3clF45" />
      <node concept="3Tm6S6" id="5ortMJzsDjp" role="1B3o_S" />
      <node concept="3clFbS" id="5ortMJzsDjs" role="3clF47">
        <node concept="3cpWs8" id="5ortMJzsDjw" role="3cqZAp">
          <node concept="3cpWsn" id="5ortMJzsDjl" role="3cpWs9">
            <property role="TrG5h" value="offset" />
            <property role="3TUv4t" value="false" />
            <node concept="10Oyi0" id="5ortMJzsDjx" role="1tU5fm" />
            <node concept="FJ1c_" id="5ortMJzsDjy" role="33vP2m">
              <node concept="2OqwBi" id="5ortMJzsDjz" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxghgiA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ortMJzsDjn" resolve="component" />
                </node>
                <node concept="liA8E" id="5ortMJzsDj_" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                </node>
              </node>
              <node concept="3cmrfG" id="5ortMJzsDjA" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ortMJzsDjB" role="3cqZAp">
          <node concept="3cpWsn" id="5ortMJzsDjm" role="3cpWs9">
            <property role="TrG5h" value="point" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="5ortMJzsDjC" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="5ortMJzsDjD" role="33vP2m">
              <node concept="1pGfFk" id="5ortMJzsDjE" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                <node concept="3cpWsd" id="5ortMJzsDjF" role="37wK5m">
                  <node concept="2OqwBi" id="5ortMJzsDjG" role="3uHU7B">
                    <node concept="37vLTw" id="2BHiRxglEu5" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ortMJzsDjn" resolve="component" />
                    </node>
                    <node concept="liA8E" id="5ortMJzsDjI" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTBrs" role="3uHU7w">
                    <ref role="3cqZAo" node="5ortMJzsDjl" resolve="offset" />
                  </node>
                </node>
                <node concept="3cpWsd" id="5ortMJzsDjK" role="37wK5m">
                  <node concept="2OqwBi" id="5ortMJzsDjL" role="3uHU7B">
                    <node concept="liA8E" id="5ortMJzsDjN" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxglqRy" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ortMJzsDjn" resolve="component" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzkW" role="3uHU7w">
                    <ref role="3cqZAo" node="5ortMJzsDjl" resolve="offset" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ortMJzsDjP" role="3cqZAp">
          <node concept="2OqwBi" id="5ortMJzsDjQ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfts" role="2Oq$k0">
              <ref role="3cqZAo" node="5ortMJzsDk3" resolve="ballon" />
            </node>
            <node concept="liA8E" id="5ortMJzsDjS" role="2OqNvi">
              <ref role="37wK5l" to="gspm:~Balloon.show(com.intellij.ui.awt.RelativePoint,com.intellij.openapi.ui.popup.Balloon$Position)" resolve="show" />
              <node concept="2ShNRf" id="5ortMJzsDjT" role="37wK5m">
                <node concept="1pGfFk" id="5ortMJzsDjU" role="2ShVmc">
                  <ref role="37wK5l" to="vmdq:~RelativePoint.&lt;init&gt;(java.awt.Component,java.awt.Point)" resolve="RelativePoint" />
                  <node concept="37vLTw" id="2BHiRxgm725" role="37wK5m">
                    <ref role="3cqZAo" node="5ortMJzsDjn" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTAQT" role="37wK5m">
                    <ref role="3cqZAo" node="5ortMJzsDjm" resolve="point" />
                  </node>
                </node>
              </node>
              <node concept="Rm8GO" id="5ortMJzsDjX" role="37wK5m">
                <ref role="Rm8GQ" to="gspm:~Balloon$Position.above" resolve="above" />
                <ref role="1Px2BO" to="gspm:~Balloon$Position" resolve="Balloon.Position" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ZAgslkc2OP" role="jymVt" />
    <node concept="2YIFZL" id="7XY3GP2vBC9" role="jymVt">
      <property role="TrG5h" value="isPopupShown" />
      <property role="DiZV1" value="false" />
      <node concept="10P_77" id="yuiNvycWpa" role="3clF45" />
      <node concept="3Tm1VV" id="7XY3GP2vBCd" role="1B3o_S" />
      <node concept="3clFbS" id="yuiNvycSVu" role="3clF47">
        <node concept="3clFbJ" id="yuiNvycWp4" role="3cqZAp">
          <node concept="3fqX7Q" id="yuiNvycWp8" role="3clFbw">
            <node concept="2OqwBi" id="yuiNvycW6O" role="3fr31v">
              <node concept="2OwXpG" id="yuiNvycW6S" role="2OqNvi">
                <ref role="2Oxat5" to="o0ih:~NotificationsConfigurationImpl.SHOW_BALLOONS" resolve="SHOW_BALLOONS" />
              </node>
              <node concept="2YIFZM" id="4Sa0NTIpdkI" role="2Oq$k0">
                <ref role="37wK5l" to="o0ih:~NotificationsConfigurationImpl.getInstanceImpl()" resolve="getInstanceImpl" />
                <ref role="1Pybhc" to="o0ih:~NotificationsConfigurationImpl" resolve="NotificationsConfigurationImpl" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="yuiNvycWp5" role="3clFbx">
            <node concept="3cpWs6" id="yuiNvycWpb" role="3cqZAp">
              <node concept="3clFbT" id="yuiNvycWpd" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="yuiNvycWpl" role="3cqZAp">
          <node concept="3cpWsn" id="yuiNvycWpm" role="3cpWs9">
            <property role="TrG5h" value="displayType" />
            <node concept="2OqwBi" id="yuiNvycWpo" role="33vP2m">
              <node concept="2YIFZM" id="yuiNvycWp$" role="2Oq$k0">
                <ref role="37wK5l" to="o0ih:~NotificationsConfigurationImpl.getSettings(java.lang.String)" resolve="getSettings" />
                <ref role="1Pybhc" to="o0ih:~NotificationsConfigurationImpl" resolve="NotificationsConfigurationImpl" />
                <node concept="37vLTw" id="2BHiRxeoqaP" role="37wK5m">
                  <ref role="3cqZAo" node="6za2oG6XsvV" resolve="ID" />
                </node>
              </node>
              <node concept="liA8E" id="yuiNvycWpq" role="2OqNvi">
                <ref role="37wK5l" to="o0ih:~NotificationSettings.getDisplayType()" resolve="getDisplayType" />
              </node>
            </node>
            <node concept="3uibUv" id="yuiNvycWpn" role="1tU5fm">
              <ref role="3uigEE" to="fnpx:~NotificationDisplayType" resolve="NotificationDisplayType" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="yuiNvycWpr" role="3cqZAp">
          <node concept="22lmx$" id="yuiNvycWpt" role="3cqZAk">
            <node concept="3clFbC" id="yuiNvycWpx" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTw7o" role="3uHU7B">
                <ref role="3cqZAo" node="yuiNvycWpm" resolve="displayType" />
              </node>
              <node concept="Rm8GO" id="yuiNvycWpz" role="3uHU7w">
                <ref role="Rm8GQ" to="fnpx:~NotificationDisplayType.STICKY_BALLOON" resolve="STICKY_BALLOON" />
                <ref role="1Px2BO" to="fnpx:~NotificationDisplayType" resolve="NotificationDisplayType" />
              </node>
            </node>
            <node concept="3clFbC" id="yuiNvycWpu" role="3uHU7B">
              <node concept="Rm8GO" id="yuiNvycWpw" role="3uHU7w">
                <ref role="Rm8GQ" to="fnpx:~NotificationDisplayType.BALLOON" resolve="BALLOON" />
                <ref role="1Px2BO" to="fnpx:~NotificationDisplayType" resolve="NotificationDisplayType" />
              </node>
              <node concept="37vLTw" id="3GM_nagT$Rk" role="3uHU7B">
                <ref role="3cqZAo" node="yuiNvycWpm" resolve="displayType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ZAgslkc39X" role="jymVt" />
    <node concept="2YIFZL" id="7XY3GP2vBLo" role="jymVt">
      <property role="TrG5h" value="setShowPopup" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="7XY3GP2vBLN" role="3clF46">
        <property role="TrG5h" value="show" />
        <node concept="10P_77" id="7XY3GP2vEW7" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7XY3GP2vBLM" role="1B3o_S" />
      <node concept="3clFbS" id="7XY3GP2vBLq" role="3clF47">
        <node concept="3cpWs8" id="7XY3GP2vEW9" role="3cqZAp">
          <node concept="3cpWsn" id="7XY3GP2vEWa" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="2YIFZM" id="7XY3GP2vEWc" role="33vP2m">
              <ref role="37wK5l" to="o0ih:~NotificationsConfigurationImpl.getSettings(java.lang.String)" resolve="getSettings" />
              <ref role="1Pybhc" to="o0ih:~NotificationsConfigurationImpl" resolve="NotificationsConfigurationImpl" />
              <node concept="37vLTw" id="2BHiRxeooJR" role="37wK5m">
                <ref role="3cqZAo" node="6za2oG6XsvV" resolve="ID" />
              </node>
            </node>
            <node concept="3uibUv" id="7XY3GP2vEWb" role="1tU5fm">
              <ref role="3uigEE" to="o0ih:~NotificationSettings" resolve="NotificationSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XY3GP2vEWg" role="3cqZAp">
          <node concept="2OqwBi" id="7XY3GP2vEWi" role="3clFbG">
            <node concept="liA8E" id="7XY3GP2vEWm" role="2OqNvi">
              <ref role="37wK5l" to="o0ih:~NotificationSettings.withDisplayType(com.intellij.notification.NotificationDisplayType)" resolve="withDisplayType" />
              <node concept="3K4zz7" id="7XY3GP2vEWo" role="37wK5m">
                <node concept="Rm8GO" id="7XY3GP2vEWt" role="3K4E3e">
                  <ref role="Rm8GQ" to="fnpx:~NotificationDisplayType.BALLOON" resolve="BALLOON" />
                  <ref role="1Px2BO" to="fnpx:~NotificationDisplayType" resolve="NotificationDisplayType" />
                </node>
                <node concept="Rm8GO" id="7XY3GP2vEWv" role="3K4GZi">
                  <ref role="Rm8GQ" to="fnpx:~NotificationDisplayType.NONE" resolve="NONE" />
                  <ref role="1Px2BO" to="fnpx:~NotificationDisplayType" resolve="NotificationDisplayType" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm$9k" role="3K4Cdx">
                  <ref role="3cqZAo" node="7XY3GP2vBLN" resolve="show" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagT$nJ" role="2Oq$k0">
              <ref role="3cqZAo" node="7XY3GP2vEWa" resolve="settings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7XY3GP2vEW8" role="3clF45" />
    </node>
    <node concept="3uibUv" id="C3dcc38V0t" role="EKbjA">
      <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
    </node>
    <node concept="3Tm1VV" id="C3dcc38Te4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5J8_5nlyCOs">
    <property role="TrG5h" value="TransientModelsPanel" />
    <property role="3GE5qa" value="SaveTransientModels.Widget" />
    <property role="2bfB8j" value="false" />
    <node concept="3uibUv" id="5HzZDakH_6h" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="312cEg" id="5J8_5nlyCQN" role="jymVt">
      <property role="TrG5h" value="myWidget" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6uT0Sim0o6C" role="1tU5fm">
        <ref role="3uigEE" node="hP8D6fqe6p" resolve="TransientModelsWidget" />
      </node>
      <node concept="3Tm6S6" id="5J8_5nlyCQO" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5HzZDakJ4eh" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="label" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5HzZDakJ3qV" role="1B3o_S" />
      <node concept="3uibUv" id="5HzZDakJ4df" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
      </node>
    </node>
    <node concept="2tJIrI" id="5HzZDakHP66" role="jymVt" />
    <node concept="3clFbW" id="5J8_5nlyCOu" role="jymVt">
      <node concept="37vLTG" id="5HzZDakHEcG" role="3clF46">
        <property role="TrG5h" value="widget" />
        <node concept="3uibUv" id="6uT0Sim0lHe" role="1tU5fm">
          <ref role="3uigEE" node="hP8D6fqe6p" resolve="TransientModelsWidget" />
        </node>
      </node>
      <node concept="3cqZAl" id="5J8_5nlyCOv" role="3clF45" />
      <node concept="3clFbS" id="5J8_5nlyCOx" role="3clF47">
        <node concept="3clFbF" id="5J8_5nlyCOy" role="3cqZAp">
          <node concept="37vLTI" id="5J8_5nlyCOz" role="3clFbG">
            <node concept="37vLTw" id="6uT0Sim0ni5" role="37vLTx">
              <ref role="3cqZAo" node="5HzZDakHEcG" resolve="widget" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuhfJ" role="37vLTJ">
              <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HzZDakJ5Eb" role="3cqZAp">
          <node concept="37vLTI" id="5HzZDakJbxF" role="3clFbG">
            <node concept="2ShNRf" id="5HzZDakJctO" role="37vLTx">
              <node concept="1pGfFk" id="5HzZDakJctP" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String,javax.swing.Icon,int)" resolve="JLabel" />
                <node concept="2OqwBi" id="5HzZDakJctQ" role="37wK5m">
                  <node concept="37vLTw" id="5HzZDakJctR" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HzZDakHEcG" resolve="widget" />
                  </node>
                  <node concept="liA8E" id="5HzZDakJctS" role="2OqNvi">
                    <ref role="37wK5l" node="4hZPELmBD3l" resolve="getMaxPossibleText" />
                  </node>
                </node>
                <node concept="10M0yZ" id="$0lM0JKFLd" role="37wK5m">
                  <ref role="3cqZAo" to="l7us:~MPSIcons$Nodes.TransientModule" resolve="TransientModule" />
                  <ref role="1PxDUh" to="l7us:~MPSIcons$Nodes" resolve="MPSIcons.Nodes" />
                </node>
                <node concept="10M0yZ" id="1MQq_m2R_6k" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.LEFT" resolve="LEFT" />
                  <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5HzZDakJ64S" role="37vLTJ">
              <node concept="Xjq3P" id="5HzZDakJ5E9" role="2Oq$k0" />
              <node concept="2OwXpG" id="5HzZDakJ8L0" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35MBOJ5HISB" role="3cqZAp">
          <node concept="2OqwBi" id="35MBOJ5HQ0M" role="3clFbG">
            <node concept="2OqwBi" id="35MBOJ5HJMf" role="2Oq$k0">
              <node concept="Xjq3P" id="35MBOJ5HIS_" role="2Oq$k0" />
              <node concept="2OwXpG" id="35MBOJ5HMx7" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
            <node concept="liA8E" id="35MBOJ5HTtD" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JLabel.setIconTextGap(int)" resolve="setIconTextGap" />
              <node concept="3cmrfG" id="35MBOJ5HTZb" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$i23YcAWZ3" role="3cqZAp">
          <node concept="2OqwBi" id="3$i23YcB2WE" role="3clFbG">
            <node concept="2OqwBi" id="3$i23YcAXrW" role="2Oq$k0">
              <node concept="Xjq3P" id="3$i23YcAWZ1" role="2Oq$k0" />
              <node concept="2OwXpG" id="3$i23YcB0bZ" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
            <node concept="liA8E" id="3$i23YcB8Xx" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="2YIFZM" id="6K7Ru39vBe1" role="37wK5m">
                <ref role="37wK5l" to="g1qu:~UIUtil.getToolbarFont()" resolve="getToolbarFont" />
                <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6iqrHsKQQ_o" role="3cqZAp">
          <node concept="2OqwBi" id="6iqrHsKQXNq" role="3clFbG">
            <node concept="2OqwBi" id="6iqrHsKQR7Z" role="2Oq$k0">
              <node concept="Xjq3P" id="6iqrHsKQQ_m" role="2Oq$k0" />
              <node concept="2OwXpG" id="6iqrHsKQUBi" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
            <node concept="liA8E" id="6iqrHsKR1Ks" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2OqwBi" id="6iqrHsKR9IF" role="37wK5m">
                <node concept="2OqwBi" id="6iqrHsKR3ep" role="2Oq$k0">
                  <node concept="Xjq3P" id="6iqrHsKR2nj" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6iqrHsKR5NP" role="2OqNvi">
                    <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
                  </node>
                </node>
                <node concept="liA8E" id="6iqrHsKRgp5" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6iqrHsKRkAc" role="3cqZAp">
          <node concept="2OqwBi" id="6iqrHsKRsrd" role="3clFbG">
            <node concept="2OqwBi" id="6iqrHsKRlca" role="2Oq$k0">
              <node concept="Xjq3P" id="6iqrHsKRkAa" role="2Oq$k0" />
              <node concept="2OwXpG" id="6iqrHsKRp2J" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
            <node concept="liA8E" id="6iqrHsKRz0n" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="6iqrHsKR$0r" role="37wK5m">
                <node concept="37vLTw" id="6iqrHsKRzDI" role="2Oq$k0">
                  <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
                </node>
                <node concept="liA8E" id="6iqrHsKRAg7" role="2OqNvi">
                  <ref role="37wK5l" node="4hZPELmBD3a" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HzZDakHQ7L" role="3cqZAp">
          <node concept="2OqwBi" id="5HzZDakHQuR" role="3clFbG">
            <node concept="Xjq3P" id="5HzZDakHQ7J" role="2Oq$k0" />
            <node concept="liA8E" id="5HzZDakHVU0" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="2OqwBi" id="5HzZDakJfgL" role="37wK5m">
                <node concept="Xjq3P" id="5HzZDakJeo8" role="2Oq$k0" />
                <node concept="2OwXpG" id="5HzZDakJhYa" role="2OqNvi">
                  <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6uT0SilZHNN" role="3cqZAp" />
        <node concept="3clFbF" id="5J8_5nlyCOH" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYkY" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.putClientProperty(java.lang.Object,java.lang.Object)" resolve="putClientProperty" />
            <node concept="10M0yZ" id="5J8_5nlyCOJ" role="37wK5m">
              <ref role="3cqZAo" to="g1qu:~UIUtil.CENTER_TOOLTIP_DEFAULT" resolve="CENTER_TOOLTIP_DEFAULT" />
              <ref role="1PxDUh" to="g1qu:~UIUtil" resolve="UIUtil" />
            </node>
            <node concept="10M0yZ" id="5J8_5nlyCOK" role="37wK5m">
              <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
              <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5J8_5nlyCOL" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzbKp" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setToolTipText(java.lang.String)" resolve="setToolTipText" />
            <node concept="2OqwBi" id="5J8_5nlyCON" role="37wK5m">
              <node concept="liA8E" id="5J8_5nlyCOO" role="2OqNvi">
                <ref role="37wK5l" node="hP8D6fqe6V" resolve="getTooltipText" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuoZg" role="2Oq$k0">
                <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5J8_5nlyCOQ" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZ2b" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
            <node concept="2ShNRf" id="5J8_5nlyCOS" role="37wK5m">
              <node concept="YeOm9" id="5J8_5nlyCOT" role="2ShVmc">
                <node concept="1Y3b0j" id="5J8_5nlyCOU" role="YeSDq">
                  <property role="TrG5h" value="" />
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                  <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                  <node concept="3clFb_" id="5J8_5nlyCOV" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="mousePressed" />
                    <property role="DiZV1" value="false" />
                    <node concept="2AHcQZ" id="5J8_5nlyCP8" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="5J8_5nlyCP0" role="3clF47">
                      <node concept="3clFbF" id="5J8_5nlyCP1" role="3cqZAp">
                        <node concept="2OqwBi" id="5J8_5nlyCP2" role="3clFbG">
                          <node concept="liA8E" id="5J8_5nlyCP3" role="2OqNvi">
                            <ref role="37wK5l" to="9w4s:~Consumer.consume(java.lang.Object)" resolve="consume" />
                            <node concept="37vLTw" id="2BHiRxglIe5" role="37wK5m">
                              <ref role="3cqZAo" node="5J8_5nlyCOY" resolve="e" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5J8_5nlyCP5" role="2Oq$k0">
                            <node concept="liA8E" id="5J8_5nlyCP7" role="2OqNvi">
                              <ref role="37wK5l" node="hP8D6fqe77" resolve="getClickConsumer" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxeul5C" role="2Oq$k0">
                              <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="5J8_5nlyCOY" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="5J8_5nlyCOZ" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="5J8_5nlyCOW" role="1B3o_S" />
                    <node concept="3cqZAl" id="5J8_5nlyCOX" role="3clF45" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5J8_5nlyCP9" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyIea" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
            <node concept="3clFbT" id="5J8_5nlyCPb" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5J8_5nlyCOw" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="5J8_5nlyCPf" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="5J8_5nlyCPg" role="3clF45" />
      <node concept="3Tm1VV" id="5J8_5nlyCPh" role="1B3o_S" />
      <node concept="3clFbS" id="5J8_5nlyCPi" role="3clF47">
        <node concept="3clFbF" id="5HzZDakJiDD" role="3cqZAp">
          <node concept="2OqwBi" id="5HzZDakJoMZ" role="3clFbG">
            <node concept="2OqwBi" id="5HzZDakJjco" role="2Oq$k0">
              <node concept="Xjq3P" id="5HzZDakJiDB" role="2Oq$k0" />
              <node concept="2OwXpG" id="5HzZDakJlI2" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
            <node concept="liA8E" id="5HzZDakJu8_" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="5HzZDakJxMr" role="37wK5m">
                <node concept="37vLTw" id="6uT0Sim0AYG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
                </node>
                <node concept="liA8E" id="5HzZDakJyvj" role="2OqNvi">
                  <ref role="37wK5l" node="4hZPELmBD3a" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HzZDakJzc0" role="3cqZAp">
          <node concept="2OqwBi" id="5HzZDakJDMe" role="3clFbG">
            <node concept="2OqwBi" id="5HzZDakJzNn" role="2Oq$k0">
              <node concept="Xjq3P" id="5HzZDakJzbY" role="2Oq$k0" />
              <node concept="2OwXpG" id="5HzZDakJAyb" role="2OqNvi">
                <ref role="2Oxat5" node="5HzZDakJ4eh" resolve="label" />
              </node>
            </node>
            <node concept="liA8E" id="5HzZDakJJ4m" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="2OqwBi" id="5HzZDakJJPL" role="37wK5m">
                <node concept="37vLTw" id="5HzZDakJJ_g" role="2Oq$k0">
                  <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
                </node>
                <node concept="liA8E" id="5HzZDakJKyj" role="2OqNvi">
                  <ref role="37wK5l" node="hP8D6fqe7Y" resolve="getIcon" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6K7Ru39vC$j" role="jymVt">
      <property role="TrG5h" value="getInsets" />
      <node concept="3Tm1VV" id="6K7Ru39vC$k" role="1B3o_S" />
      <node concept="2AHcQZ" id="6K7Ru39vC$m" role="2AJF6D">
        <ref role="2AI5Lk" to="mnlj:~BeanProperty" resolve="BeanProperty" />
        <node concept="2B6LJw" id="6K7Ru39vC$n" role="2B76xF">
          <ref role="2B6OnR" to="mnlj:~BeanProperty.expert()" resolve="expert" />
          <node concept="3clFbT" id="6K7Ru39vC$o" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6K7Ru39vC$p" role="3clF45">
        <ref role="3uigEE" to="z60i:~Insets" resolve="Insets" />
      </node>
      <node concept="3clFbS" id="6K7Ru39vC$s" role="3clF47">
        <node concept="3clFbF" id="6K7Ru39vKYw" role="3cqZAp">
          <node concept="2YIFZM" id="6K7Ru39vM9K" role="3clFbG">
            <ref role="37wK5l" to="g1qu:~JBUI.emptyInsets()" resolve="emptyInsets" />
            <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6K7Ru39vC$t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5J8_5nlyCQB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getToolTipText" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="5J8_5nlyCQJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5J8_5nlyCQE" role="3clF47">
        <node concept="3clFbF" id="5J8_5nlyCQF" role="3cqZAp">
          <node concept="2OqwBi" id="5J8_5nlyCQG" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuXx$" role="2Oq$k0">
              <ref role="3cqZAo" node="5J8_5nlyCQN" resolve="myWidget" />
            </node>
            <node concept="liA8E" id="5J8_5nlyCQH" role="2OqNvi">
              <ref role="37wK5l" node="hP8D6fqe6V" resolve="getTooltipText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5J8_5nlyCQC" role="1B3o_S" />
      <node concept="17QB3L" id="5J8_5nlyCQD" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="5do60t9uy53">
    <property role="TrG5h" value="TransientModelsNotification" />
    <property role="3GE5qa" value="SaveTransientModels" />
    <node concept="312cEg" id="5do60t9uS2E" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3l7XKooC0Es" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3Tm6S6" id="5do60t9uS2F" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="180CX8WOsyn" role="jymVt">
      <property role="TrG5h" value="myRootDispose" />
      <node concept="3Tm6S6" id="180CX8WOqd7" role="1B3o_S" />
      <node concept="3uibUv" id="180CX8WOsuy" role="1tU5fm">
        <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
      </node>
    </node>
    <node concept="312cEg" id="5do60t9v3W5" role="jymVt">
      <property role="TrG5h" value="myWidget" />
      <node concept="3uibUv" id="5do60t9v3W7" role="1tU5fm">
        <ref role="3uigEE" node="hP8D6fqe6p" resolve="TransientModelsWidget" />
      </node>
      <node concept="3Tm6S6" id="5do60t9v3W6" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3l7XKooDoeu" role="jymVt">
      <property role="TrG5h" value="myDisplayer" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3l7XKooDoev" role="1B3o_S" />
      <node concept="3uibUv" id="3LTvNgPOPyR" role="1tU5fm">
        <ref role="3uigEE" node="C3dcc38Te3" resolve="TransientModelBalloonDisplayer" />
      </node>
    </node>
    <node concept="312cEg" id="3l7XKooC7wD" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySettingsListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3l7XKooC58I" role="1B3o_S" />
      <node concept="3uibUv" id="3l7XKooC7wz" role="1tU5fm">
        <ref role="3uigEE" to="ap4t:~IModifiableGenerationSettings$Listener" resolve="IModifiableGenerationSettings.Listener" />
      </node>
      <node concept="2ShNRf" id="3l7XKooCFCo" role="33vP2m">
        <node concept="YeOm9" id="3l7XKooCHmx" role="2ShVmc">
          <node concept="1Y3b0j" id="3l7XKooCHm$" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="ap4t:~IModifiableGenerationSettings$Listener" resolve="IModifiableGenerationSettings.Listener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="3l7XKooCHm_" role="1B3o_S" />
            <node concept="3clFb_" id="3l7XKooCHmA" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="settingsChanged" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="3l7XKooCHmB" role="1B3o_S" />
              <node concept="3cqZAl" id="3l7XKooCHmD" role="3clF45" />
              <node concept="3clFbS" id="3l7XKooCHmE" role="3clF47">
                <node concept="3SKdUt" id="3l7XKooCXzm" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXojbf" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXojbg" role="1PaTwD">
                      <property role="3oM_SC" value="notification" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojbh" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojbi" role="1PaTwD">
                      <property role="3oM_SC" value="necessarily" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojbj" role="1PaTwD">
                      <property role="3oM_SC" value="comes" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojbk" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojbl" role="1PaTwD">
                      <property role="3oM_SC" value="EDT" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3l7XKooCS0z" role="3cqZAp">
                  <node concept="1rXfSq" id="3l7XKooCS0x" role="3clFbG">
                    <ref role="37wK5l" node="3l7XKooCQsy" resolve="updateWidgetLater" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="16OFrd77GJR" role="jymVt">
      <property role="TrG5h" value="myMakeNotificationListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="16OFrd77GJT" role="1tU5fm">
        <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
      </node>
      <node concept="3Tm6S6" id="16OFrd77GJS" role="1B3o_S" />
      <node concept="2ShNRf" id="16OFrd77GK0" role="33vP2m">
        <node concept="HV5vD" id="3l7XKooDZ93" role="2ShVmc">
          <ref role="HV5vE" node="16OFrd77RJ$" resolve="TransientModelsNotification.MyMakeNotificationListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3l7XKooDWTF" role="jymVt" />
    <node concept="3clFbW" id="5do60t9uy55" role="jymVt">
      <node concept="37vLTG" id="5do60t9uS2B" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3l7XKooC0pp" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="5do60t9uy56" role="3clF45" />
      <node concept="3Tm1VV" id="5do60t9uy57" role="1B3o_S" />
      <node concept="3clFbS" id="5do60t9uy58" role="3clF47">
        <node concept="3clFbF" id="5do60t9uS2I" role="3cqZAp">
          <node concept="37vLTI" id="5do60t9uS2N" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm6fl" role="37vLTx">
              <ref role="3cqZAo" node="5do60t9uS2B" resolve="project" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuE0L" role="37vLTJ">
              <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="68001hXkttK" role="jymVt" />
    <node concept="3clFb_" id="5do60t9u_ls" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="projectOpened" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="5do60t9u_lu" role="3clF45" />
      <node concept="3clFbS" id="5do60t9u_lv" role="3clF47">
        <node concept="3clFbF" id="180CX8WOvwL" role="3cqZAp">
          <node concept="37vLTI" id="180CX8WOx1L" role="3clFbG">
            <node concept="2YIFZM" id="180CX8WO_eM" role="37vLTx">
              <ref role="37wK5l" to="zn9m:~Disposer.newDisposable(java.lang.String)" resolve="newDisposable" />
              <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
              <node concept="Xl_RD" id="180CX8WOAvh" role="37wK5m">
                <property role="Xl_RC" value="notify-transients" />
              </node>
            </node>
            <node concept="37vLTw" id="180CX8WOvwJ" role="37vLTJ">
              <ref role="3cqZAo" node="180CX8WOsyn" resolve="myRootDispose" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="180CX8WQy6q" role="3cqZAp">
          <node concept="3cpWsn" id="180CX8WQy6r" role="3cpWs9">
            <property role="TrG5h" value="statusBar" />
            <node concept="3uibUv" id="180CX8WQy6s" role="1tU5fm">
              <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
            </node>
            <node concept="2OqwBi" id="5do60t9v4ak" role="33vP2m">
              <node concept="liA8E" id="5do60t9v4am" role="2OqNvi">
                <ref role="37wK5l" to="jkny:~WindowManager.getStatusBar(com.intellij.openapi.project.Project)" resolve="getStatusBar" />
                <node concept="2OqwBi" id="3l7XKooC2tp" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuqSz" role="2Oq$k0">
                    <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="3l7XKooC3LK" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="5do60t9v4al" role="2Oq$k0">
                <ref role="37wK5l" to="jkny:~WindowManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="180CX8WPaG2" role="3cqZAp">
          <node concept="3cpWsn" id="180CX8WPaG3" role="3cpWs9">
            <property role="TrG5h" value="genSettings" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="180CX8WPa7a" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
            </node>
            <node concept="2OqwBi" id="180CX8WPaG4" role="33vP2m">
              <node concept="37vLTw" id="180CX8WPaG5" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
              </node>
              <node concept="liA8E" id="180CX8WPaG6" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="180CX8WPaG7" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5do60t9v48z" role="3cqZAp">
          <node concept="37vLTI" id="5do60t9v48$" role="3clFbG">
            <node concept="2ShNRf" id="5do60t9v48_" role="37vLTx">
              <node concept="1pGfFk" id="5do60t9v48A" role="2ShVmc">
                <ref role="37wK5l" node="hP8D6fqe6y" resolve="TransientModelsWidget" />
                <node concept="2OqwBi" id="3l7XKooF$Jl" role="37wK5m">
                  <node concept="liA8E" id="3l7XKooF_NM" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
                  </node>
                  <node concept="37vLTw" id="180CX8WPaG8" role="2Oq$k0">
                    <ref role="3cqZAo" node="180CX8WPaG3" resolve="genSettings" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuTve" role="37vLTJ">
              <ref role="3cqZAo" node="5do60t9v3W5" resolve="myWidget" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="180CX8WPNCJ" role="3cqZAp">
          <node concept="1PaTwC" id="180CX8WPNCK" role="1aUNEU">
            <node concept="3oM_SD" id="180CX8WPNCL" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="180CX8WPOMj" role="1PaTwD">
              <property role="3oM_SC" value="register()" />
            </node>
            <node concept="3oM_SD" id="180CX8WPOP1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="180CX8WPOPS" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="180CX8WPOPT" role="1PaTwD">
              <property role="3oM_SC" value="myWidget.dispose()" />
            </node>
            <node concept="3oM_SD" id="180CX8WPOSW" role="1PaTwD">
              <property role="3oM_SC" value="invoked" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="180CX8WPJSQ" role="3cqZAp">
          <node concept="2YIFZM" id="180CX8WPJSR" role="3clFbG">
            <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
            <node concept="37vLTw" id="180CX8WPJSS" role="37wK5m">
              <ref role="3cqZAo" node="180CX8WOsyn" resolve="myRootDispose" />
            </node>
            <node concept="37vLTw" id="180CX8WPJST" role="37wK5m">
              <ref role="3cqZAo" node="5do60t9v3W5" resolve="myWidget" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="180CX8WPQr_" role="3cqZAp">
          <node concept="1PaTwC" id="180CX8WPQrA" role="1aUNEU">
            <node concept="3oM_SD" id="180CX8WPQrB" role="1PaTwD">
              <property role="3oM_SC" value="registration" />
            </node>
            <node concept="3oM_SD" id="180CX8WPR5w" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="180CX8WPR6n" role="1PaTwD">
              <property role="3oM_SC" value="myRootDispose" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRcQ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRet" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="180CX8WPReu" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRev" role="1PaTwD">
              <property role="3oM_SC" value="widget" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRfQ" role="1PaTwD">
              <property role="3oM_SC" value="removed" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRgX" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRi4" role="1PaTwD">
              <property role="3oM_SC" value="StatusBar" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRkx" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="180CX8WPRky" role="1PaTwD">
              <property role="3oM_SC" value="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5do60t9v4aI" role="3cqZAp">
          <node concept="2OqwBi" id="5do60t9v4aM" role="3clFbG">
            <node concept="liA8E" id="5do60t9v4aS" role="2OqNvi">
              <ref role="37wK5l" to="jkny:~StatusBar.addWidget(com.intellij.openapi.wm.StatusBarWidget,com.intellij.openapi.Disposable)" resolve="addWidget" />
              <node concept="37vLTw" id="2BHiRxeuHs1" role="37wK5m">
                <ref role="3cqZAo" node="5do60t9v3W5" resolve="myWidget" />
              </node>
              <node concept="37vLTw" id="180CX8WOHw9" role="37wK5m">
                <ref role="3cqZAo" node="180CX8WOsyn" resolve="myRootDispose" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuFKC" role="2Oq$k0">
              <ref role="3cqZAo" node="180CX8WQy6r" resolve="statusBar" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5do60t9v48r" role="3cqZAp" />
        <node concept="3clFbF" id="3l7XKooDkFN" role="3cqZAp">
          <node concept="37vLTI" id="3l7XKooDkFP" role="3clFbG">
            <node concept="2ShNRf" id="3LTvNgPOPyU" role="37vLTx">
              <node concept="1pGfFk" id="3LTvNgPOPyV" role="2ShVmc">
                <ref role="37wK5l" node="C3dcc38Te5" resolve="TransientModelBalloonDisplayer" />
                <node concept="37vLTw" id="3l7XKooFhJg" role="37wK5m">
                  <ref role="3cqZAo" node="180CX8WQy6r" resolve="statusBar" />
                </node>
                <node concept="37vLTw" id="3LTvNgPOPyX" role="37wK5m">
                  <ref role="3cqZAo" node="5do60t9v3W5" resolve="myWidget" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3l7XKooDp3a" role="37vLTJ">
              <ref role="3cqZAo" node="3l7XKooDoeu" resolve="myDisplayer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3LTvNgPOOAz" role="3cqZAp">
          <node concept="2YIFZM" id="3LTvNgPOOKL" role="3clFbG">
            <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
            <node concept="37vLTw" id="3LTvNgPOP56" role="37wK5m">
              <ref role="3cqZAo" node="180CX8WOsyn" resolve="myRootDispose" />
            </node>
            <node concept="37vLTw" id="3l7XKooDpyS" role="37wK5m">
              <ref role="3cqZAo" node="3l7XKooDoeu" resolve="myDisplayer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooC$o3" role="3cqZAp">
          <node concept="2OqwBi" id="3l7XKooCCd0" role="3clFbG">
            <node concept="liA8E" id="3l7XKooCDiK" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.addSettingsListener(jetbrains.mps.generator.IModifiableGenerationSettings$Listener)" resolve="addSettingsListener" />
              <node concept="37vLTw" id="3l7XKooCDH1" role="37wK5m">
                <ref role="3cqZAo" node="3l7XKooC7wD" resolve="mySettingsListener" />
              </node>
            </node>
            <node concept="37vLTw" id="180CX8WPaG9" role="2Oq$k0">
              <ref role="3cqZAo" node="180CX8WPaG3" resolve="genSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooE1k1" role="3cqZAp">
          <node concept="2OqwBi" id="3l7XKooE7d$" role="3clFbG">
            <node concept="liA8E" id="3l7XKooE8AV" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:19cQIvY6mrX" resolve="addListener" />
              <node concept="37vLTw" id="3l7XKooE9EU" role="37wK5m">
                <ref role="3cqZAo" node="16OFrd77GJR" resolve="myMakeNotificationListener" />
              </node>
            </node>
            <node concept="2OqwBi" id="4bElavfi9M7" role="2Oq$k0">
              <node concept="37vLTw" id="4bElavfi9M8" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
              </node>
              <node concept="liA8E" id="4bElavfi9M9" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="4bElavfi9Ma" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="180CX8WOLnH" role="3cqZAp">
          <node concept="1rXfSq" id="180CX8WOLnF" role="3clFbG">
            <ref role="37wK5l" node="3l7XKooCQsy" resolve="updateWidgetLater" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5do60t9u_lt" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="68001hXktDh" role="jymVt" />
    <node concept="3clFb_" id="5do60t9u_lw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="projectClosed" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5do60t9u_lx" role="1B3o_S" />
      <node concept="3clFbS" id="5do60t9u_lz" role="3clF47">
        <node concept="3clFbF" id="3l7XKooEamp" role="3cqZAp">
          <node concept="2OqwBi" id="3l7XKooEamq" role="3clFbG">
            <node concept="liA8E" id="3l7XKooEamx" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:19cQIvY6ms2" resolve="removeListener" />
              <node concept="37vLTw" id="3l7XKooEamy" role="37wK5m">
                <ref role="3cqZAo" node="16OFrd77GJR" resolve="myMakeNotificationListener" />
              </node>
            </node>
            <node concept="2OqwBi" id="1EUvNSXjy00" role="2Oq$k0">
              <node concept="37vLTw" id="1EUvNSXjy01" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
              </node>
              <node concept="liA8E" id="1EUvNSXjy02" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="1EUvNSXjy03" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooCEfZ" role="3cqZAp">
          <node concept="2OqwBi" id="3l7XKooCEg0" role="3clFbG">
            <node concept="2OqwBi" id="3l7XKooCEg1" role="2Oq$k0">
              <node concept="37vLTw" id="3l7XKooCEg2" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
              </node>
              <node concept="liA8E" id="3l7XKooCEg3" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="3l7XKooCEg4" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3l7XKooCEg5" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.removeSettingsListener(jetbrains.mps.generator.IModifiableGenerationSettings$Listener)" resolve="removeSettingsListener" />
              <node concept="37vLTw" id="3l7XKooCEg6" role="37wK5m">
                <ref role="3cqZAo" node="3l7XKooC7wD" resolve="mySettingsListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="180CX8WP811" role="3cqZAp">
          <node concept="1PaTwC" id="180CX8WP812" role="1aUNEU">
            <node concept="3oM_SD" id="180CX8WP9eg" role="1PaTwD">
              <property role="3oM_SC" value="widget" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9h3" role="1PaTwD">
              <property role="3oM_SC" value="registered" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9jh" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9jy" role="1PaTwD">
              <property role="3oM_SC" value="Disposable" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9nb" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9nc" role="1PaTwD">
              <property role="3oM_SC" value="automatically" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9ub" role="1PaTwD">
              <property role="3oM_SC" value="removed" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9o3" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="180CX8WP9ro" role="1PaTwD">
              <property role="3oM_SC" value="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5do60t9uS4o" role="3cqZAp">
          <node concept="2YIFZM" id="5do60t9uS9K" role="3clFbG">
            <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
            <node concept="37vLTw" id="3LTvNgPOPwb" role="37wK5m">
              <ref role="3cqZAo" node="180CX8WOsyn" resolve="myRootDispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="180CX8WOSub" role="3cqZAp">
          <node concept="37vLTI" id="180CX8WOUKC" role="3clFbG">
            <node concept="10Nm6u" id="180CX8WOVJY" role="37vLTx" />
            <node concept="37vLTw" id="180CX8WOSu9" role="37vLTJ">
              <ref role="3cqZAo" node="180CX8WOsyn" resolve="myRootDispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooDugH" role="3cqZAp">
          <node concept="37vLTI" id="3l7XKooDvxR" role="3clFbG">
            <node concept="10Nm6u" id="3l7XKooDvWp" role="37vLTx" />
            <node concept="37vLTw" id="3l7XKooDugF" role="37vLTJ">
              <ref role="3cqZAo" node="3l7XKooDoeu" resolve="myDisplayer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooDwM6" role="3cqZAp">
          <node concept="37vLTI" id="3l7XKooD$I1" role="3clFbG">
            <node concept="10Nm6u" id="3l7XKooD_6H" role="37vLTx" />
            <node concept="37vLTw" id="3l7XKooDwM4" role="37vLTJ">
              <ref role="3cqZAo" node="5do60t9v3W5" resolve="myWidget" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5do60t9u_ly" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3l7XKooCP66" role="jymVt" />
    <node concept="3clFb_" id="3l7XKooCQsy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateWidgetLater" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3l7XKooCQs_" role="3clF47">
        <node concept="3clFbF" id="3l7XKooCOZn" role="3cqZAp">
          <node concept="2YIFZM" id="3l7XKooCSe9" role="3clFbG">
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
            <node concept="1bVj0M" id="3l7XKooCSTl" role="37wK5m">
              <node concept="3clFbS" id="3l7XKooCSTm" role="1bW5cS">
                <node concept="3cpWs8" id="180CX8WOMLW" role="3cqZAp">
                  <node concept="3cpWsn" id="180CX8WOMLX" role="3cpWs9">
                    <property role="TrG5h" value="widget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="180CX8WOM0c" role="1tU5fm">
                      <ref role="3uigEE" node="hP8D6fqe6p" resolve="TransientModelsWidget" />
                    </node>
                    <node concept="37vLTw" id="180CX8WOMLY" role="33vP2m">
                      <ref role="3cqZAo" node="5do60t9v3W5" resolve="myWidget" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3l7XKooDD4c" role="3cqZAp">
                  <node concept="3clFbS" id="3l7XKooDD4e" role="3clFbx">
                    <node concept="3clFbF" id="3l7XKooCTPR" role="3cqZAp">
                      <node concept="2OqwBi" id="3l7XKooCUEC" role="3clFbG">
                        <node concept="liA8E" id="3l7XKooCVP6" role="2OqNvi">
                          <ref role="37wK5l" node="2hEKckkLhQa" resolve="update" />
                        </node>
                        <node concept="37vLTw" id="180CX8WOMM0" role="2Oq$k0">
                          <ref role="3cqZAo" node="180CX8WOMLX" resolve="widget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="3l7XKooDG1P" role="3clFbw">
                    <node concept="37vLTw" id="180CX8WOMLZ" role="3uHU7B">
                      <ref role="3cqZAo" node="180CX8WOMLX" resolve="widget" />
                    </node>
                    <node concept="10Nm6u" id="3l7XKooDGfD" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3l7XKooCQst" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3l7XKooDenY" role="jymVt" />
    <node concept="3clFb_" id="7yo6vBMyssk" role="jymVt">
      <property role="TrG5h" value="showBalloonLater" />
      <node concept="3clFbS" id="7yo6vBMyssn" role="3clF47">
        <node concept="3cpWs8" id="3l7XKooEeh5" role="3cqZAp">
          <node concept="3cpWsn" id="3l7XKooEeh6" role="3cpWs9">
            <property role="TrG5h" value="sp" />
            <node concept="3uibUv" id="3l7XKooEeh3" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
            </node>
            <node concept="2OqwBi" id="3l7XKooEeh7" role="33vP2m">
              <node concept="37vLTw" id="3l7XKooEeh8" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
              </node>
              <node concept="liA8E" id="3l7XKooEeh9" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="3l7XKooEeha" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7yo6vBMysso" role="3cqZAp">
          <node concept="3clFbS" id="7yo6vBMyssp" role="3clFbx">
            <node concept="3cpWs6" id="7yo6vBMyssq" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="7yo6vBMysss" role="3clFbw">
            <node concept="3fqX7Q" id="7yo6vBMysst" role="3uHU7w">
              <node concept="2YIFZM" id="3l7XKooDfKE" role="3fr31v">
                <ref role="1Pybhc" node="C3dcc38Te3" resolve="TransientModelBalloonDisplayer" />
                <ref role="37wK5l" node="7XY3GP2vBC9" resolve="isPopupShown" />
              </node>
            </node>
            <node concept="3fqX7Q" id="7yo6vBMyssv" role="3uHU7B">
              <node concept="2OqwBi" id="7yo6vBMyssw" role="3fr31v">
                <node concept="liA8E" id="7yo6vBMyssy" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~IGenerationSettings.isSaveTransientModels()" resolve="isSaveTransientModels" />
                </node>
                <node concept="2OqwBi" id="3l7XKooEdDL" role="2Oq$k0">
                  <node concept="37vLTw" id="3l7XKooEehb" role="2Oq$k0">
                    <ref role="3cqZAo" node="3l7XKooEeh6" resolve="sp" />
                  </node>
                  <node concept="liA8E" id="3l7XKooEdDQ" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l7XKooDQG2" role="3cqZAp">
          <node concept="2YIFZM" id="3l7XKooDQNA" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="3l7XKooDR8t" role="37wK5m">
              <node concept="3clFbS" id="3l7XKooDR8u" role="1bW5cS">
                <node concept="3cpWs8" id="180CX8WPTQI" role="3cqZAp">
                  <node concept="3cpWsn" id="180CX8WPTQJ" role="3cpWs9">
                    <property role="TrG5h" value="displayer" />
                    <node concept="3uibUv" id="180CX8WPQJi" role="1tU5fm">
                      <ref role="3uigEE" node="C3dcc38Te3" resolve="TransientModelBalloonDisplayer" />
                    </node>
                    <node concept="37vLTw" id="180CX8WPTQK" role="33vP2m">
                      <ref role="3cqZAo" node="3l7XKooDoeu" resolve="myDisplayer" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3l7XKooDLnG" role="3cqZAp">
                  <node concept="3clFbS" id="3l7XKooDLnI" role="3clFbx">
                    <node concept="3clFbF" id="3l7XKooDPf7" role="3cqZAp">
                      <node concept="2OqwBi" id="3l7XKooDPFO" role="3clFbG">
                        <node concept="liA8E" id="3l7XKooDQ2D" role="2OqNvi">
                          <ref role="37wK5l" node="C3dcc38Te9" resolve="showBalloon" />
                        </node>
                        <node concept="37vLTw" id="180CX8WPTQM" role="2Oq$k0">
                          <ref role="3cqZAo" node="180CX8WPTQJ" resolve="displayer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="3l7XKooDMsw" role="3clFbw">
                    <node concept="37vLTw" id="180CX8WPTQL" role="3uHU7B">
                      <ref role="3cqZAo" node="180CX8WPTQJ" resolve="displayer" />
                    </node>
                    <node concept="10Nm6u" id="3l7XKooDMLp" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7yo6vBMyst_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6sV_U0LtV7S" role="jymVt" />
    <node concept="3clFb_" id="6sV_U0Luc_x" role="jymVt">
      <property role="TrG5h" value="selectTransientsFolderLater" />
      <node concept="3cqZAl" id="6sV_U0Luc_z" role="3clF45" />
      <node concept="3clFbS" id="6sV_U0Luc__" role="3clF47">
        <node concept="3cpWs8" id="6sV_U0Lui26" role="3cqZAp">
          <node concept="3cpWsn" id="6sV_U0Lui27" role="3cpWs9">
            <property role="TrG5h" value="sp" />
            <node concept="3uibUv" id="6sV_U0Lui28" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
            </node>
            <node concept="2OqwBi" id="6sV_U0Lui29" role="33vP2m">
              <node concept="37vLTw" id="6sV_U0Lui2a" role="2Oq$k0">
                <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
              </node>
              <node concept="liA8E" id="6sV_U0Lui2b" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="6sV_U0Lui2c" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6sV_U0Lui2d" role="3cqZAp">
          <node concept="3clFbS" id="6sV_U0Lui2e" role="3clFbx">
            <node concept="3cpWs6" id="6sV_U0Lui2f" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="6sV_U0Lui2g" role="3clFbw">
            <node concept="3fqX7Q" id="6sV_U0Lui2h" role="3uHU7w">
              <node concept="2YIFZM" id="6sV_U0Lui2i" role="3fr31v">
                <ref role="1Pybhc" node="C3dcc38Te3" resolve="TransientModelBalloonDisplayer" />
                <ref role="37wK5l" node="7XY3GP2vBC9" resolve="isPopupShown" />
              </node>
            </node>
            <node concept="3fqX7Q" id="6sV_U0Lui2j" role="3uHU7B">
              <node concept="2OqwBi" id="6sV_U0Lui2k" role="3fr31v">
                <node concept="liA8E" id="6sV_U0Lui2l" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~IGenerationSettings.isSaveTransientModels()" resolve="isSaveTransientModels" />
                </node>
                <node concept="2OqwBi" id="6sV_U0Lui2m" role="2Oq$k0">
                  <node concept="37vLTw" id="6sV_U0Lui2n" role="2Oq$k0">
                    <ref role="3cqZAo" node="6sV_U0Lui27" resolve="sp" />
                  </node>
                  <node concept="liA8E" id="6sV_U0Lui2o" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sV_U0Lulvm" role="3cqZAp">
          <node concept="2YIFZM" id="5IDZVs0mEe6" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="5IDZVs0mEe7" role="37wK5m">
              <node concept="3clFbS" id="5IDZVs0mEe8" role="1bW5cS">
                <node concept="3clFbF" id="5IDZVs0mEe9" role="3cqZAp">
                  <node concept="2OqwBi" id="5IDZVs0mEea" role="3clFbG">
                    <node concept="2YIFZM" id="5IDZVs0mEeb" role="2Oq$k0">
                      <ref role="37wK5l" to="rvbb:~ProjectPane.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="rvbb:~ProjectPane" resolve="ProjectPane" />
                      <node concept="37vLTw" id="5IDZVs0mEec" role="37wK5m">
                        <ref role="3cqZAo" node="5do60t9uS2E" resolve="myProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5IDZVs0mEed" role="2OqNvi">
                      <ref role="37wK5l" to="rvbb:~ProjectPane.expandTransientsFolder()" resolve="expandTransientsFolder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3l7XKooD7iz" role="jymVt" />
    <node concept="312cEu" id="16OFrd77RJ$" role="jymVt">
      <property role="TrG5h" value="MyMakeNotificationListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="16OFrd77RJA" role="1B3o_S" />
      <node concept="312cEg" id="1WP$eo4r$ph" role="jymVt">
        <property role="TrG5h" value="mySessionJustOpened" />
        <property role="34CwA1" value="true" />
        <node concept="10P_77" id="1WP$eo4r$pk" role="1tU5fm" />
        <node concept="3Tm6S6" id="1WP$eo4r$pi" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3l7XKooD8Kj" role="jymVt" />
      <node concept="3clFb_" id="16OFrd77GKG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="scriptAboutToStart" />
        <node concept="3Tm1VV" id="16OFrd77GKK" role="1B3o_S" />
        <node concept="3clFbS" id="16OFrd77GKL" role="3clF47">
          <node concept="3clFbJ" id="1WP$eo4r$pE" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeuW4H" role="3clFbw">
              <ref role="3cqZAo" node="1WP$eo4r$ph" resolve="mySessionJustOpened" />
            </node>
            <node concept="3clFbS" id="1WP$eo4r$pF" role="3clFbx">
              <node concept="3clFbF" id="7yo6vBMystA" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyz9xI" role="3clFbG">
                  <ref role="37wK5l" node="7yo6vBMyssk" resolve="showBalloonLater" />
                </node>
              </node>
              <node concept="3clFbF" id="1WP$eo4r$pK" role="3cqZAp">
                <node concept="37vLTI" id="1WP$eo4r$pM" role="3clFbG">
                  <node concept="3clFbT" id="1WP$eo4r$pP" role="37vLTx">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeumWv" role="37vLTJ">
                    <ref role="3cqZAo" node="1WP$eo4r$ph" resolve="mySessionJustOpened" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="16OFrd77GKH" role="3clF46">
          <property role="TrG5h" value="notification" />
          <node concept="3uibUv" id="16OFrd77GKI" role="1tU5fm">
            <ref role="3uigEE" to="hfuk:7lTD6YZtg3z" resolve="MakeNotification" />
          </node>
        </node>
        <node concept="3cqZAl" id="16OFrd77GKJ" role="3clF45" />
        <node concept="2AHcQZ" id="3tYsUK_UnPE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="16OFrd77GKS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="sessionOpened" />
        <node concept="3cqZAl" id="16OFrd77GKT" role="3clF45" />
        <node concept="3Tm1VV" id="16OFrd77GKU" role="1B3o_S" />
        <node concept="37vLTG" id="16OFrd77GKV" role="3clF46">
          <property role="TrG5h" value="notification" />
          <node concept="3uibUv" id="16OFrd77GKW" role="1tU5fm">
            <ref role="3uigEE" to="hfuk:7lTD6YZtg3z" resolve="MakeNotification" />
          </node>
        </node>
        <node concept="3clFbS" id="16OFrd77GKX" role="3clF47">
          <node concept="3clFbF" id="1WP$eo4r$pl" role="3cqZAp">
            <node concept="37vLTI" id="1WP$eo4r$pn" role="3clFbG">
              <node concept="3clFbT" id="1WP$eo4r$pq" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuyOG" role="37vLTJ">
                <ref role="3cqZAo" node="1WP$eo4r$ph" resolve="mySessionJustOpened" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UnPF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="16OFrd77GKY" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="sessionClosed" />
        <node concept="3clFbS" id="16OFrd77GL3" role="3clF47">
          <node concept="3clFbF" id="1WP$eo4r$q4" role="3cqZAp">
            <node concept="37vLTI" id="1WP$eo4r$q6" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuyJS" role="37vLTJ">
                <ref role="3cqZAo" node="1WP$eo4r$ph" resolve="mySessionJustOpened" />
              </node>
              <node concept="3clFbT" id="1WP$eo4r$q9" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5ajqZ$6gj59" role="3cqZAp">
            <node concept="1rXfSq" id="5ajqZ$6gj57" role="3clFbG">
              <ref role="37wK5l" node="6sV_U0Luc_x" resolve="selectTransientsFolderLater" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="16OFrd77GL1" role="3clF46">
          <property role="TrG5h" value="notification" />
          <node concept="3uibUv" id="16OFrd77GL2" role="1tU5fm">
            <ref role="3uigEE" to="hfuk:7lTD6YZtg3z" resolve="MakeNotification" />
          </node>
        </node>
        <node concept="3Tm1VV" id="16OFrd77GL0" role="1B3o_S" />
        <node concept="3cqZAl" id="16OFrd77GKZ" role="3clF45" />
        <node concept="2AHcQZ" id="3tYsUK_UnPD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="19cQIvY9wdZ" role="EKbjA">
        <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="3l7XKooD7l3" role="jymVt" />
    <node concept="3Tm1VV" id="5do60t9uy54" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="22IXdorOocw">
    <property role="TrG5h" value="BuildAllGenerators" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rebuild All Generators" />
    <property role="3GE5qa" value="Internal.Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="22IXdorOocz" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="22IXdorOoc$" role="1oa70y" />
    </node>
    <node concept="tnohg" id="22IXdorOoc_" role="tncku">
      <node concept="3clFbS" id="22IXdorOocA" role="2VODD2">
        <node concept="3cpWs8" id="22IXdorOocB" role="3cqZAp">
          <node concept="3cpWsn" id="22IXdorOocC" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="_YKpA" id="22IXdorOocD" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_fsTsk" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCipvydu" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvydv" role="3clFbG">
            <node concept="2OqwBi" id="1JjaplOpej_" role="2Oq$k0">
              <node concept="2OqwBi" id="1JjaplOpd6u" role="2Oq$k0">
                <node concept="2WthIp" id="1JjaplOpd6x" role="2Oq$k0" />
                <node concept="1DTwFV" id="1JjaplOpd6z" role="2OqNvi">
                  <ref role="2WH_rO" node="22IXdorOocz" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1JjaplOphsc" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCipvydx" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipvydy" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvydz" role="1bW5cS">
                  <node concept="3cpWs8" id="1JjaplOpbxR" role="3cqZAp">
                    <node concept="3cpWsn" id="1JjaplOpbxS" role="3cpWs9">
                      <property role="TrG5h" value="projectModules" />
                      <node concept="A3Dl8" id="1JjaplOpbxT" role="1tU5fm">
                        <node concept="3uibUv" id="6p3LDcnqVSe" role="A3Ik2">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1JjaplOpbxW" role="33vP2m">
                        <node concept="2OqwBi" id="1JjaplOpbxX" role="2Oq$k0">
                          <node concept="2WthIp" id="1JjaplOpbxY" role="2Oq$k0" />
                          <node concept="1DTwFV" id="1JjaplOpbxZ" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOocz" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1JjaplOpby0" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getProjectModulesWithGenerators()" resolve="getProjectModulesWithGenerators" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCipvyd$" role="3cqZAp">
                    <node concept="37vLTI" id="1KUoCipvyd_" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTBZo" role="37vLTJ">
                        <ref role="3cqZAo" node="22IXdorOocC" resolve="m" />
                      </node>
                      <node concept="2ShNRf" id="1KUoCipvydB" role="37vLTx">
                        <node concept="Tc6Ow" id="1KUoCipvydC" role="2ShVmc">
                          <node concept="2OqwBi" id="1JjaplOp7_o" role="I$8f6">
                            <node concept="37vLTw" id="1JjaplOpc8X" role="2Oq$k0">
                              <ref role="3cqZAo" node="1JjaplOpbxS" resolve="projectModules" />
                            </node>
                            <node concept="UnYns" id="1JjaplOp7_q" role="2OqNvi">
                              <node concept="3uibUv" id="6p3LDcnqWni" role="UnYnz">
                                <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="1KUoCipvydD" role="HW$YZ">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
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
        <node concept="3clFbF" id="7iCFfvQEEYI" role="3cqZAp">
          <node concept="2OqwBi" id="7iCFfvQEEYJ" role="3clFbG">
            <node concept="2ShNRf" id="7iCFfvQEEYK" role="2Oq$k0">
              <node concept="1pGfFk" id="7iCFfvQEEYL" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQEEYM" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQEEYN" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQEEYO" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQEEYP" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQEEYQ" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQEEYR" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQEEYS" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOocz" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQEEYT" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQvBeE" resolve="modules" />
                      <node concept="37vLTw" id="7iCFfvQEG1g" role="37wK5m">
                        <ref role="3cqZAo" node="22IXdorOocC" resolve="m" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQEEYV" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQEEYW" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7iCFfvQEEYX" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="22IXdorOoda">
    <property role="TrG5h" value="BuildAllLanguageDescriptors" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rebuild All Language Descriptors" />
    <property role="3GE5qa" value="Internal.Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="22IXdorOodd" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="22IXdorOode" role="1oa70y" />
    </node>
    <node concept="tnohg" id="22IXdorOodf" role="tncku">
      <node concept="3clFbS" id="22IXdorOodg" role="2VODD2">
        <node concept="3cpWs8" id="4O9Oe_fsTCz" role="3cqZAp">
          <node concept="3cpWsn" id="4O9Oe_fsTC$" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="_YKpA" id="4O9Oe_fsTC_" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_fsTCA" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCipvxGJ" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvxGK" role="3clFbG">
            <node concept="liA8E" id="1KUoCipvxGM" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipvxGN" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvxGO" role="1bW5cS">
                  <node concept="3cpWs8" id="1JjaplOpnDU" role="3cqZAp">
                    <node concept="3cpWsn" id="1JjaplOpnDV" role="3cpWs9">
                      <property role="TrG5h" value="projectModules" />
                      <node concept="A3Dl8" id="1JjaplOpnDW" role="1tU5fm">
                        <node concept="3qUE_q" id="1JjaplOpnDX" role="A3Ik2">
                          <node concept="3uibUv" id="1JjaplOpnDY" role="3qUE_r">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1JjaplOpnDZ" role="33vP2m">
                        <node concept="2OqwBi" id="1JjaplOpnE0" role="2Oq$k0">
                          <node concept="2WthIp" id="1JjaplOpnE1" role="2Oq$k0" />
                          <node concept="1DTwFV" id="1JjaplOpnE2" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOodd" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1JjaplOpnE3" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModules()" resolve="getModules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2lEZ2a4ZZrs" role="3cqZAp">
                    <node concept="37vLTI" id="2lEZ2a4ZZrt" role="3clFbG">
                      <node concept="2ShNRf" id="2lEZ2a4ZZru" role="37vLTx">
                        <node concept="Tc6Ow" id="2lEZ2a4ZZrv" role="2ShVmc">
                          <node concept="2OqwBi" id="2lEZ2a4ZZry" role="I$8f6">
                            <node concept="2OqwBi" id="2lEZ2a4ZZrz" role="2Oq$k0">
                              <node concept="3$u5V9" id="2lEZ2a4ZZrJ" role="2OqNvi">
                                <node concept="1bVj0M" id="2lEZ2a4ZZrK" role="23t8la">
                                  <node concept="3clFbS" id="2lEZ2a4ZZrL" role="1bW5cS">
                                    <node concept="3clFbF" id="2lEZ2a50hx6" role="3cqZAp">
                                      <node concept="2OqwBi" id="2lEZ2a50nNV" role="3clFbG">
                                        <node concept="1eOMI4" id="2lEZ2a50hx4" role="2Oq$k0">
                                          <node concept="10QFUN" id="2lEZ2a50hx1" role="1eOMHV">
                                            <node concept="A3Dl8" id="2lEZ2a50jzt" role="10QFUM">
                                              <node concept="3uibUv" id="2lEZ2a50miY" role="A3Ik2">
                                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="2lEZ2a508AA" role="10QFUP">
                                              <node concept="37vLTw" id="2lEZ2a507P9" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5W7E4fV0XuM" resolve="it" />
                                              </node>
                                              <node concept="liA8E" id="2lEZ2a50ayY" role="2OqNvi">
                                                <ref role="37wK5l" to="31cb:~SModuleBase.getModels()" resolve="getModels" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1z4cxt" id="2lEZ2a50CuN" role="2OqNvi">
                                          <node concept="1bVj0M" id="2lEZ2a50CuP" role="23t8la">
                                            <node concept="3clFbS" id="2lEZ2a50CuQ" role="1bW5cS">
                                              <node concept="3clFbF" id="2lEZ2a50EqZ" role="3cqZAp">
                                                <node concept="2OqwBi" id="1KUoCipvxHb" role="3clFbG">
                                                  <node concept="Xl_RD" id="1KUoCipvxHc" role="2Oq$k0">
                                                    <property role="Xl_RC" value="descriptor" />
                                                  </node>
                                                  <node concept="liA8E" id="1KUoCipvxHd" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                                    <node concept="2YIFZM" id="1KUoCipvxHe" role="37wK5m">
                                                      <ref role="37wK5l" to="w1kc:~SModelStereotype.getStereotype(org.jetbrains.mps.openapi.model.SModel)" resolve="getStereotype" />
                                                      <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                                                      <node concept="37vLTw" id="2BHiRxglopX" role="37wK5m">
                                                        <ref role="3cqZAo" node="5W7E4fV0XuK" resolve="it" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="5W7E4fV0XuK" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <node concept="2jxLKc" id="5W7E4fV0XuL" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0XuM" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="5W7E4fV0XuN" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1JjaplOpxrc" role="2Oq$k0">
                                <node concept="37vLTw" id="1JjaplOpxrd" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1JjaplOpnDV" resolve="projectModules" />
                                </node>
                                <node concept="UnYns" id="1JjaplOpxre" role="2OqNvi">
                                  <node concept="3uibUv" id="1JjaplOpxrf" role="UnYnz">
                                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3zZkjj" id="2lEZ2a4ZZrV" role="2OqNvi">
                              <node concept="1bVj0M" id="2lEZ2a4ZZrW" role="23t8la">
                                <node concept="3clFbS" id="2lEZ2a4ZZrX" role="1bW5cS">
                                  <node concept="3clFbF" id="2lEZ2a4ZZrY" role="3cqZAp">
                                    <node concept="1Wc70l" id="1JjaplOpTR4" role="3clFbG">
                                      <node concept="3y3z36" id="1JjaplOpTR5" role="3uHU7B">
                                        <node concept="37vLTw" id="1JjaplOpTR6" role="3uHU7B">
                                          <ref role="3cqZAo" node="5W7E4fV0XuO" resolve="it" />
                                        </node>
                                        <node concept="10Nm6u" id="1JjaplOpTR7" role="3uHU7w" />
                                      </node>
                                      <node concept="2YIFZM" id="1JjaplOpTR8" role="3uHU7w">
                                        <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                                        <ref role="37wK5l" to="unno:54ElNE$imKq" resolve="isGeneratable" />
                                        <node concept="37vLTw" id="1JjaplOpTR9" role="37wK5m">
                                          <ref role="3cqZAo" node="5W7E4fV0XuO" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XuO" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XuP" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="2lEZ2a4ZZrw" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2lEZ2a4ZZsc" role="37vLTJ">
                        <ref role="3cqZAo" node="4O9Oe_fsTC$" resolve="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7iCFfvQF9qJ" role="2Oq$k0">
              <node concept="2OqwBi" id="7iCFfvQF9qK" role="2Oq$k0">
                <node concept="2WthIp" id="7iCFfvQF9qL" role="2Oq$k0" />
                <node concept="1DTwFV" id="7iCFfvQF9qM" role="2OqNvi">
                  <ref role="2WH_rO" node="22IXdorOodd" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="7iCFfvQF9qN" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCFfvQEA6F" role="3cqZAp">
          <node concept="2OqwBi" id="7iCFfvQEA6G" role="3clFbG">
            <node concept="2ShNRf" id="7iCFfvQEA6H" role="2Oq$k0">
              <node concept="1pGfFk" id="7iCFfvQEA6I" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQEA6J" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQEA6K" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQEA6L" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQEA6M" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQEA6N" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQEA6O" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQEA6P" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOodd" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQEA6Q" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                      <node concept="37vLTw" id="7iCFfvQEA6R" role="37wK5m">
                        <ref role="3cqZAo" node="4O9Oe_fsTC$" resolve="models" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQEA6S" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQEA6T" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7iCFfvQEA6U" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="22IXdorOofh">
    <property role="TrG5h" value="RebuildRequiredModels" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rebuild Required Models" />
    <property role="3GE5qa" value="Internal.Make" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="22IXdorOofk" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="22IXdorOofl" role="1oa70y" />
    </node>
    <node concept="tnohg" id="22IXdorOofm" role="tncku">
      <node concept="3clFbS" id="22IXdorOofn" role="2VODD2">
        <node concept="3cpWs8" id="22IXdorOofo" role="3cqZAp">
          <node concept="3cpWsn" id="22IXdorOofp" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="_YKpA" id="22IXdorOofq" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_fsTEe" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCipvFoP" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvFoQ" role="3clFbG">
            <node concept="2OqwBi" id="7iCFfvQDwIu" role="2Oq$k0">
              <node concept="2OqwBi" id="7iCFfvQDv3y" role="2Oq$k0">
                <node concept="2WthIp" id="7iCFfvQDv3_" role="2Oq$k0" />
                <node concept="1DTwFV" id="7iCFfvQDv3B" role="2OqNvi">
                  <ref role="2WH_rO" node="22IXdorOofk" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="7iCFfvQDyFn" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCipvFoS" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipvFoT" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvFoU" role="1bW5cS">
                  <node concept="3cpWs8" id="2lEZ2a50Wxi" role="3cqZAp">
                    <node concept="3cpWsn" id="2lEZ2a50Wxj" role="3cpWs9">
                      <property role="TrG5h" value="projectModules" />
                      <node concept="A3Dl8" id="2lEZ2a50Wxk" role="1tU5fm">
                        <node concept="3qUE_q" id="6HJOBr8fa3V" role="A3Ik2">
                          <node concept="3uibUv" id="6HJOBr8faS_" role="3qUE_r">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2lEZ2a50Wxm" role="33vP2m">
                        <node concept="2OqwBi" id="2lEZ2a50Wxn" role="2Oq$k0">
                          <node concept="2WthIp" id="2lEZ2a50Wxo" role="2Oq$k0" />
                          <node concept="1DTwFV" id="2lEZ2a50Wxp" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOofk" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2lEZ2a50Wxq" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getProjectModulesWithGenerators()" resolve="getProjectModulesWithGenerators" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1KUoCipvFpg" role="3cqZAp">
                    <node concept="3cpWsn" id="1KUoCipvFph" role="3cpWs9">
                      <property role="TrG5h" value="mgsm" />
                      <node concept="3uibUv" id="1KUoCipvFpi" role="1tU5fm">
                        <ref role="3uigEE" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                      </node>
                      <node concept="2OqwBi" id="3lEpTK7HoD_" role="33vP2m">
                        <node concept="2OqwBi" id="3lEpTK7HnzL" role="2Oq$k0">
                          <node concept="2WthIp" id="3lEpTK7HnzO" role="2Oq$k0" />
                          <node concept="1DTwFV" id="3lEpTK7HnzQ" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOofk" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3lEpTK7HpFD" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                          <node concept="3VsKOn" id="3lEpTK7HqrA" role="37wK5m">
                            <ref role="3VsUkX" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCipvFpk" role="3cqZAp">
                    <node concept="37vLTI" id="1KUoCipvFpl" role="3clFbG">
                      <node concept="2ShNRf" id="1KUoCipvFpm" role="37vLTx">
                        <node concept="Tc6Ow" id="1KUoCipvFpn" role="2ShVmc">
                          <node concept="2OqwBi" id="2lEZ2a51XVj" role="I$8f6">
                            <node concept="2OqwBi" id="2lEZ2a510s0" role="2Oq$k0">
                              <node concept="37vLTw" id="2lEZ2a50Wx$" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lEZ2a50Wxj" resolve="projectModules" />
                              </node>
                              <node concept="3goQfb" id="2lEZ2a512Ko" role="2OqNvi">
                                <node concept="1bVj0M" id="2lEZ2a512Kq" role="23t8la">
                                  <node concept="3clFbS" id="2lEZ2a512Kr" role="1bW5cS">
                                    <node concept="3clFbF" id="2lEZ2a513$t" role="3cqZAp">
                                      <node concept="2OqwBi" id="2lEZ2a513Pe" role="3clFbG">
                                        <node concept="37vLTw" id="2lEZ2a513$s" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0XuQ" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="2lEZ2a5151b" role="2OqNvi">
                                          <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0XuQ" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="5W7E4fV0XuR" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3zZkjj" id="2lEZ2a52cv6" role="2OqNvi">
                              <node concept="1bVj0M" id="2lEZ2a52cv8" role="23t8la">
                                <node concept="3clFbS" id="2lEZ2a52cv9" role="1bW5cS">
                                  <node concept="3clFbF" id="2lEZ2a52dMd" role="3cqZAp">
                                    <node concept="2OqwBi" id="1KUoCipvFpv" role="3clFbG">
                                      <node concept="37vLTw" id="3GM_nagTudL" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KUoCipvFph" resolve="mgsm" />
                                      </node>
                                      <node concept="liA8E" id="1KUoCipvFpx" role="2OqNvi">
                                        <ref role="37wK5l" to="ap4t:~ModelGenerationStatusManager.generationRequired(org.jetbrains.mps.openapi.model.SModel)" resolve="generationRequired" />
                                        <node concept="37vLTw" id="2BHiRxghfnm" role="37wK5m">
                                          <ref role="3cqZAo" node="5W7E4fV0XuS" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XuS" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XuT" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="1KUoCipvFpo" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTAGE" role="37vLTJ">
                        <ref role="3cqZAo" node="22IXdorOofp" resolve="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22IXdorOog3" role="3cqZAp">
          <node concept="2OqwBi" id="22IXdorOog4" role="3clFbG">
            <node concept="2ShNRf" id="22IXdorOog5" role="2Oq$k0">
              <node concept="1pGfFk" id="22IXdorOog6" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQDCKs" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQD_kY" role="2Oq$k0">
                    <node concept="2ShNRf" id="22IXdorOoga" role="2Oq$k0">
                      <node concept="1pGfFk" id="22IXdorOogb" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQD$8v" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQD$8y" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQD$8$" role="2OqNvi">
                            <ref role="2WH_rO" node="22IXdorOofk" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQDAi6" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                      <node concept="37vLTw" id="7iCFfvQDAHF" role="37wK5m">
                        <ref role="3cqZAo" node="22IXdorOofp" resolve="models" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQDE1I" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQDEIT" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="22IXdorOogk" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6dAEaqvbL$Z">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="sE7Ow" id="56qcHJOgMTM">
    <property role="TrG5h" value="BuildAllGeneratableGenerators" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rebuild All 'Generatable' Generators" />
    <property role="3GE5qa" value="Internal.Make" />
    <property role="1WHSii" value="Rebuild generators that generate templates" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="56qcHJOgMTP" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="56qcHJOgMTQ" role="1oa70y" />
    </node>
    <node concept="tnohg" id="56qcHJOgMTR" role="tncku">
      <node concept="3clFbS" id="56qcHJOgMTS" role="2VODD2">
        <node concept="3cpWs8" id="56qcHJOgMTT" role="3cqZAp">
          <node concept="3cpWsn" id="56qcHJOgMTU" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="_YKpA" id="56qcHJOgMTV" role="1tU5fm">
              <node concept="3uibUv" id="56qcHJOgMTW" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56qcHJOgMTX" role="3cqZAp">
          <node concept="2OqwBi" id="56qcHJOgMTY" role="3clFbG">
            <node concept="2OqwBi" id="56qcHJOgMTZ" role="2Oq$k0">
              <node concept="2OqwBi" id="56qcHJOgMU0" role="2Oq$k0">
                <node concept="2WthIp" id="56qcHJOgMU1" role="2Oq$k0" />
                <node concept="1DTwFV" id="56qcHJOgMU2" role="2OqNvi">
                  <ref role="2WH_rO" node="56qcHJOgMTP" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="56qcHJOgMU3" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="56qcHJOgMU4" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="56qcHJOgMU5" role="37wK5m">
                <node concept="3clFbS" id="56qcHJOgMU6" role="1bW5cS">
                  <node concept="3cpWs8" id="56qcHJOgMU7" role="3cqZAp">
                    <node concept="3cpWsn" id="56qcHJOgMU8" role="3cpWs9">
                      <property role="TrG5h" value="projectModules" />
                      <node concept="A3Dl8" id="56qcHJOgMU9" role="1tU5fm">
                        <node concept="3uibUv" id="6p3LDcnqSen" role="A3Ik2">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="56qcHJOgMUc" role="33vP2m">
                        <node concept="2OqwBi" id="56qcHJOgMUd" role="2Oq$k0">
                          <node concept="2WthIp" id="56qcHJOgMUe" role="2Oq$k0" />
                          <node concept="1DTwFV" id="56qcHJOgMUf" role="2OqNvi">
                            <ref role="2WH_rO" node="56qcHJOgMTP" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="56qcHJOgMUg" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getProjectModulesWithGenerators()" resolve="getProjectModulesWithGenerators" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="56qcHJOgMUh" role="3cqZAp">
                    <node concept="37vLTI" id="56qcHJOgMUi" role="3clFbG">
                      <node concept="37vLTw" id="56qcHJOgMUj" role="37vLTJ">
                        <ref role="3cqZAo" node="56qcHJOgMTU" resolve="m" />
                      </node>
                      <node concept="2ShNRf" id="56qcHJOgMUk" role="37vLTx">
                        <node concept="Tc6Ow" id="56qcHJOgMUl" role="2ShVmc">
                          <node concept="2OqwBi" id="56qcHJOhatW" role="I$8f6">
                            <node concept="2OqwBi" id="56qcHJOgMUn" role="2Oq$k0">
                              <node concept="37vLTw" id="56qcHJOgMUo" role="2Oq$k0">
                                <ref role="3cqZAo" node="56qcHJOgMU8" resolve="projectModules" />
                              </node>
                              <node concept="UnYns" id="56qcHJOgMUp" role="2OqNvi">
                                <node concept="3uibUv" id="6p3LDcnqTva" role="UnYnz">
                                  <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                                </node>
                              </node>
                            </node>
                            <node concept="3zZkjj" id="56qcHJOhcFx" role="2OqNvi">
                              <node concept="1bVj0M" id="56qcHJOhcFz" role="23t8la">
                                <node concept="3clFbS" id="56qcHJOhcF$" role="1bW5cS">
                                  <node concept="3clFbF" id="56qcHJOhfAh" role="3cqZAp">
                                    <node concept="2OqwBi" id="56qcHJOhVSj" role="3clFbG">
                                      <node concept="37vLTw" id="56qcHJOhVBI" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0XuU" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="56qcHJOhXZt" role="2OqNvi">
                                        <ref role="37wK5l" to="w1kc:~Generator.generateTemplates()" resolve="generateTemplates" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XuU" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XuV" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="56qcHJOgMU$" role="HW$YZ">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
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
        <node concept="3clFbF" id="7iCFfvQEVlQ" role="3cqZAp">
          <node concept="2OqwBi" id="7iCFfvQEVlR" role="3clFbG">
            <node concept="2ShNRf" id="7iCFfvQEVlS" role="2Oq$k0">
              <node concept="1pGfFk" id="7iCFfvQEVlT" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7iCFfvQEVlU" role="37wK5m">
                  <node concept="2OqwBi" id="7iCFfvQEVlV" role="2Oq$k0">
                    <node concept="2ShNRf" id="7iCFfvQEVlW" role="2Oq$k0">
                      <node concept="1pGfFk" id="7iCFfvQEVlX" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7iCFfvQEVlY" role="37wK5m">
                          <node concept="2WthIp" id="7iCFfvQEVlZ" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7iCFfvQEVm0" role="2OqNvi">
                            <ref role="2WH_rO" node="56qcHJOgMTP" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7iCFfvQEVm1" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQvBeE" resolve="modules" />
                      <node concept="37vLTw" id="7iCFfvQEVm2" role="37wK5m">
                        <ref role="3cqZAo" node="56qcHJOgMTU" resolve="m" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCFfvQEVm3" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7iCFfvQEVm4" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7iCFfvQEVm5" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="22IXdorOof6">
    <property role="TrG5h" value="MakeAddition" />
    <property role="2f7twF" value="Make" />
    <property role="3GE5qa" value="Internal.Make" />
    <node concept="ftmFs" id="22IXdorOof7" role="ftER_">
      <node concept="2a7GMi" id="22IXdorOof8" role="ftvYc" />
      <node concept="tCFHf" id="22IXdorOof9" role="ftvYc">
        <ref role="tCJdB" node="22IXdorOofh" resolve="RebuildRequiredModels" />
      </node>
      <node concept="tCFHf" id="22IXdorOofa" role="ftvYc">
        <ref role="tCJdB" node="22IXdorOoda" resolve="BuildAllLanguageDescriptors" />
      </node>
      <node concept="tCFHf" id="22IXdorOofb" role="ftvYc">
        <ref role="tCJdB" node="22IXdorOocw" resolve="BuildAllGenerators" />
      </node>
      <node concept="tCFHf" id="56qcHJOigV3" role="ftvYc">
        <ref role="tCJdB" node="56qcHJOgMTM" resolve="BuildAllGeneratableGenerators" />
      </node>
      <node concept="10WQ6h" id="7wqdV6Ydy7W" role="ftvYc">
        <property role="TrG5h" value="aspects" />
      </node>
      <node concept="2a7GMi" id="22IXdorOoff" role="ftvYc" />
    </node>
    <node concept="tT9cl" id="22IXdorOofg" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2wXrNhB2RlP" resolve="ToolsInternal" />
    </node>
  </node>
  <node concept="2uRRBy" id="68001hXk3Mu">
    <property role="TrG5h" value="TransientModels" />
    <property role="3GE5qa" value="SaveTransientModels" />
    <node concept="2BZ0e9" id="68001hXkpYN" role="2uRRBA">
      <property role="TrG5h" value="myNotifier" />
      <node concept="3Tm6S6" id="68001hXkpYO" role="1B3o_S" />
      <node concept="3uibUv" id="68001hXkqGT" role="1tU5fm">
        <ref role="3uigEE" node="5do60t9uy53" resolve="TransientModelsNotification" />
      </node>
    </node>
    <node concept="2uRRBT" id="68001hXk3Qb" role="2uRRB$">
      <node concept="3clFbS" id="68001hXk3Qc" role="2VODD2">
        <node concept="3clFbJ" id="6daYMweR88F" role="3cqZAp">
          <node concept="3clFbS" id="6daYMweR88H" role="3clFbx">
            <node concept="3cpWs6" id="6daYMweRcUS" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6daYMweRa95" role="3clFbw">
            <node concept="2YIFZM" id="6daYMweRa96" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="6daYMweRa97" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.isHeadlessEnvironment()" resolve="isHeadlessEnvironment" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68001hXkqQq" role="3cqZAp">
          <node concept="37vLTI" id="68001hXkqUk" role="3clFbG">
            <node concept="2ShNRf" id="68001hXkqW0" role="37vLTx">
              <node concept="1pGfFk" id="68001hXkqVZ" role="2ShVmc">
                <ref role="37wK5l" node="5do60t9uy55" resolve="TransientModelsNotification" />
                <node concept="1KvdUw" id="68001hXkqWx" role="37wK5m" />
              </node>
            </node>
            <node concept="2OqwBi" id="68001hXkqQk" role="37vLTJ">
              <node concept="2WthIp" id="68001hXkqQn" role="2Oq$k0" />
              <node concept="2BZ7hE" id="68001hXkqQp" role="2OqNvi">
                <ref role="2WH_rO" node="68001hXkpYN" resolve="myNotifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="22Z5zjel2bh" role="3cqZAp">
          <node concept="1PaTwC" id="22Z5zjel2bi" role="1aUNEU">
            <node concept="3oM_SD" id="22Z5zjel2kq" role="1PaTwD">
              <property role="3oM_SC" value="DumbAwareRunnable," />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2kI" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2kP" role="1PaTwD">
              <property role="3oM_SC" value="Runnable" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2l2" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2la" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2lo" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2lB" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2lP" role="1PaTwD">
              <property role="3oM_SC" value="indexes" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2m6" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2mj" role="1PaTwD">
              <property role="3oM_SC" value="myNotifier.projectOpened()" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="22Z5zjel2DP" role="3cqZAp">
          <node concept="1PaTwC" id="22Z5zjel2DQ" role="1aUNEU">
            <node concept="3oM_SD" id="22Z5zjel2EG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2ER" role="1PaTwD">
              <property role="3oM_SC" value="either" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2F1" role="1PaTwD">
              <property role="3oM_SC" value="gives" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2Oj" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2R2" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2Ry" role="1PaTwD">
              <property role="3oM_SC" value="(at" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2Sp" role="1PaTwD">
              <property role="3oM_SC" value="least" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2SV" role="1PaTwD">
              <property role="3oM_SC" value="that's" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2Uv" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2UG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2WF" role="1PaTwD">
              <property role="3oM_SC" value="method's" />
            </node>
            <node concept="3oM_SD" id="22Z5zjel2Xk" role="1PaTwD">
              <property role="3oM_SC" value="javadoc)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="64U59X9QUb6" role="3cqZAp">
          <node concept="2OqwBi" id="64U59X9QWhJ" role="3clFbG">
            <node concept="2YIFZM" id="64U59X9QUkD" role="2Oq$k0">
              <ref role="37wK5l" to="v27p:~StartupManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="v27p:~StartupManager" resolve="StartupManager" />
              <node concept="2OqwBi" id="64U59X9QUSk" role="37wK5m">
                <node concept="1KvdUw" id="64U59X9QUo6" role="2Oq$k0" />
                <node concept="liA8E" id="64U59X9QW9E" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="64U59X9QWvs" role="2OqNvi">
              <ref role="37wK5l" to="v27p:~StartupManager.runWhenProjectIsInitialized(java.lang.Runnable)" resolve="runWhenProjectIsInitialized" />
              <node concept="2ShNRf" id="64U59X9QWx4" role="37wK5m">
                <node concept="YeOm9" id="64U59X9RF8_" role="2ShVmc">
                  <node concept="1Y3b0j" id="64U59X9RF8C" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="4nm9:~DumbAwareRunnable" resolve="DumbAwareRunnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="64U59X9RF8D" role="1B3o_S" />
                    <node concept="3clFb_" id="64U59X9RF8T" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="64U59X9RF8U" role="1B3o_S" />
                      <node concept="3cqZAl" id="64U59X9RF8W" role="3clF45" />
                      <node concept="3clFbS" id="64U59X9RF8X" role="3clF47">
                        <node concept="3clFbF" id="68001hXkrub" role="3cqZAp">
                          <node concept="2OqwBi" id="68001hXkr$X" role="3clFbG">
                            <node concept="2OqwBi" id="68001hXkru5" role="2Oq$k0">
                              <node concept="2WthIp" id="68001hXkru8" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="68001hXkrua" role="2OqNvi">
                                <ref role="2WH_rO" node="68001hXkpYN" resolve="myNotifier" />
                              </node>
                            </node>
                            <node concept="liA8E" id="68001hXkrIg" role="2OqNvi">
                              <ref role="37wK5l" node="5do60t9u_ls" resolve="projectOpened" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="64U59X9RF8Z" role="2AJF6D">
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
    </node>
    <node concept="2uRRBN" id="68001hXkrIK" role="2uRRB_">
      <node concept="3clFbS" id="68001hXkrIL" role="2VODD2">
        <node concept="3clFbJ" id="6daYMweRd04" role="3cqZAp">
          <node concept="3clFbS" id="6daYMweRd05" role="3clFbx">
            <node concept="3cpWs6" id="6daYMweRd06" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6daYMweRd07" role="3clFbw">
            <node concept="2YIFZM" id="6daYMweRd08" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="6daYMweRd09" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.isHeadlessEnvironment()" resolve="isHeadlessEnvironment" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68001hXks82" role="3cqZAp">
          <node concept="2OqwBi" id="68001hXksdh" role="3clFbG">
            <node concept="2OqwBi" id="68001hXks7W" role="2Oq$k0">
              <node concept="2WthIp" id="68001hXks7Z" role="2Oq$k0" />
              <node concept="2BZ7hE" id="68001hXks81" role="2OqNvi">
                <ref role="2WH_rO" node="68001hXkpYN" resolve="myNotifier" />
              </node>
            </node>
            <node concept="liA8E" id="68001hXksu5" role="2OqNvi">
              <ref role="37wK5l" node="5do60t9u_lw" resolve="projectClosed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68001hXksCj" role="3cqZAp">
          <node concept="37vLTI" id="68001hXksHU" role="3clFbG">
            <node concept="10Nm6u" id="68001hXksIC" role="37vLTx" />
            <node concept="2OqwBi" id="68001hXksCd" role="37vLTJ">
              <node concept="2WthIp" id="68001hXksCg" role="2Oq$k0" />
              <node concept="2BZ7hE" id="68001hXksCi" role="2OqNvi">
                <ref role="2WH_rO" node="68001hXkpYN" resolve="myNotifier" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7wqdV6Y83J1">
    <property role="3GE5qa" value="Internal.Make" />
    <property role="TrG5h" value="MakeAspects" />
    <property role="1XlLyE" value="true" />
    <property role="2f7twF" value="Rebuild Aspect Models" />
    <node concept="tT9cl" id="7wqdV6Y9Kvi" role="2f5YQi">
      <ref role="tU$_T" node="22IXdorOof6" resolve="MakeAddition" />
      <ref role="2f8Tey" node="7wqdV6Ydy7W" resolve="aspects" />
    </node>
    <node concept="2OiAzN" id="40H5Ahzk$$n" role="ftER_">
      <node concept="2OiTZ2" id="40H5Ahzk$$p" role="2Oj6PV">
        <node concept="3clFbS" id="40H5Ahzk$$r" role="2VODD2">
          <node concept="3SKdUt" id="40H5Ahzk$Nx" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXojbm" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXojbn" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbo" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbp" role="1PaTwD">
                <property role="3oM_SC" value="change" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbq" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbr" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbs" role="1PaTwD">
                <property role="3oM_SC" value="build()" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbt" role="1PaTwD">
                <property role="3oM_SC" value="because" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbu" role="1PaTwD">
                <property role="3oM_SC" value="aspect" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbv" role="1PaTwD">
                <property role="3oM_SC" value="set" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbw" role="1PaTwD">
                <property role="3oM_SC" value="can" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojbx" role="1PaTwD">
                <property role="3oM_SC" value="change" />
              </node>
              <node concept="3oM_SD" id="ATZLwXojby" role="1PaTwD">
                <property role="3oM_SC" value="dynamically" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="63fRW0WtWDh" role="3cqZAp">
            <node concept="3cpWsn" id="63fRW0WtWDi" role="3cpWs9">
              <property role="TrG5h" value="aspects" />
              <node concept="3uibUv" id="63fRW0WtWDd" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                <node concept="3uibUv" id="63fRW0WtWDg" role="11_B2D">
                  <ref role="3uigEE" to="vndm:~LanguageAspectDescriptor" resolve="LanguageAspectDescriptor" />
                </node>
              </node>
              <node concept="2YIFZM" id="63fRW0WtWDj" role="33vP2m">
                <ref role="37wK5l" to="vndm:~LanguageAspectSupport.collectAspects()" resolve="collectAspects" />
                <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="7wqdV6Y9LWI" role="3cqZAp">
            <node concept="2GrKxI" id="7wqdV6Y9LWK" role="2Gsz3X">
              <property role="TrG5h" value="aspect" />
            </node>
            <node concept="3clFbS" id="7wqdV6Y9LWO" role="2LFqv$">
              <node concept="2JFkCU" id="7wqdV6Y9KUT" role="3cqZAp">
                <node concept="tCFHf" id="7wqdV6Y9KVc" role="2JFLmv">
                  <ref role="tCJdB" node="7wqdV6Y85rW" resolve="BuildAspect" />
                  <node concept="2GrUjf" id="7wqdV6Y9UhT" role="2J__8u">
                    <ref role="2Gs0qQ" node="7wqdV6Y9LWK" resolve="aspect" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="63fRW0WtWO6" role="2GsD0m">
              <ref role="3cqZAo" node="63fRW0WtWDi" resolve="aspects" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7wqdV6Y85rW">
    <property role="TrG5h" value="BuildAspect" />
    <property role="2uzpH1" value="Rebuild All Aspect" />
    <property role="3GE5qa" value="Internal.Make" />
    <property role="72QZ$" value="true" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="2JriF1" id="7wqdV6Y9M6K" role="2JrayB">
      <property role="TrG5h" value="aspect" />
      <node concept="3Tm6S6" id="7wqdV6Y9M6L" role="1B3o_S" />
      <node concept="3uibUv" id="7wqdV6Y9MEu" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~LanguageAspectDescriptor" resolve="LanguageAspectDescriptor" />
      </node>
      <node concept="2K2imR" id="7wqdV6Y9N53" role="2K2Cet">
        <node concept="3clFbS" id="7wqdV6Y9N54" role="2VODD2">
          <node concept="3clFbF" id="7wqdV6Y9NiC" role="3cqZAp">
            <node concept="2OqwBi" id="7wqdV6Y9O5Q" role="3clFbG">
              <node concept="2K3dj_" id="7wqdV6Y9NQQ" role="2Oq$k0" />
              <node concept="liA8E" id="7wqdV6Y9Oqm" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.getPresentableAspectName()" resolve="getPresentableAspectName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7wqdV6Y85rX" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7wqdV6Y85rY" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7wqdV6Y85rZ" role="tncku">
      <node concept="3clFbS" id="7wqdV6Y85s0" role="2VODD2">
        <node concept="3cpWs8" id="7wqdV6Y85s1" role="3cqZAp">
          <node concept="3cpWsn" id="7wqdV6Y85s2" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="_YKpA" id="7wqdV6Y85s3" role="1tU5fm">
              <node concept="3uibUv" id="7wqdV6Y8OZ7" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wqdV6Y85s5" role="3cqZAp">
          <node concept="2OqwBi" id="7wqdV6Y85s6" role="3clFbG">
            <node concept="liA8E" id="7wqdV6Y85s7" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="7wqdV6Y85s8" role="37wK5m">
                <node concept="3clFbS" id="7wqdV6Y85s9" role="1bW5cS">
                  <node concept="3cpWs8" id="7wqdV6Y85sa" role="3cqZAp">
                    <node concept="3cpWsn" id="7wqdV6Y85sb" role="3cpWs9">
                      <property role="TrG5h" value="projectModules" />
                      <node concept="_YKpA" id="7wqdV6Y8AWb" role="1tU5fm">
                        <node concept="3uibUv" id="7wqdV6Y8FpD" role="_ZDj9">
                          <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7wqdV6Y8FNu" role="33vP2m">
                        <node concept="2OqwBi" id="7wqdV6Y8DDR" role="2Oq$k0">
                          <node concept="1eOMI4" id="7wqdV6Y8CW9" role="2Oq$k0">
                            <node concept="10QFUN" id="7wqdV6Y8CWa" role="1eOMHV">
                              <node concept="2OqwBi" id="7wqdV6Y8CW4" role="10QFUP">
                                <node concept="2OqwBi" id="7wqdV6Y8CW5" role="2Oq$k0">
                                  <node concept="2WthIp" id="7wqdV6Y8CW6" role="2Oq$k0" />
                                  <node concept="1DTwFV" id="7wqdV6Y8CW7" role="2OqNvi">
                                    <ref role="2WH_rO" node="7wqdV6Y85rX" resolve="mpsProject" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7wqdV6Y8CW8" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                </node>
                              </node>
                              <node concept="_YKpA" id="7wqdV6Y8CW2" role="10QFUM">
                                <node concept="3uibUv" id="7wqdV6Y8CW3" role="_ZDj9">
                                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="UnYns" id="7wqdV6Y8EDf" role="2OqNvi">
                            <node concept="3uibUv" id="7wqdV6Y8EZ7" role="UnYnz">
                              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7wqdV6Y8Gh2" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7wqdV6Y85sk" role="3cqZAp">
                    <node concept="37vLTI" id="7wqdV6Y85sl" role="3clFbG">
                      <node concept="37vLTw" id="7wqdV6Y85sN" role="37vLTJ">
                        <ref role="3cqZAo" node="7wqdV6Y85s2" resolve="models" />
                      </node>
                      <node concept="2OqwBi" id="7wqdV6Y8Jdw" role="37vLTx">
                        <node concept="2OqwBi" id="7wqdV6Y85so" role="2Oq$k0">
                          <node concept="2OqwBi" id="7wqdV6Y85sp" role="2Oq$k0">
                            <node concept="3goQfb" id="7wqdV6Y9Seh" role="2OqNvi">
                              <node concept="1bVj0M" id="7wqdV6Y9Sej" role="23t8la">
                                <node concept="3clFbS" id="7wqdV6Y9Sek" role="1bW5cS">
                                  <node concept="3clFbF" id="7wqdV6Y9Sel" role="3cqZAp">
                                    <node concept="2OqwBi" id="7wqdV6Y9Sem" role="3clFbG">
                                      <node concept="2OqwBi" id="7wqdV6Y9Sen" role="2Oq$k0">
                                        <node concept="2WthIp" id="7wqdV6Y9Seo" role="2Oq$k0" />
                                        <node concept="2BZ7hE" id="7wqdV6Y9Sep" role="2OqNvi">
                                          <ref role="2WH_rO" node="7wqdV6Y9M6K" resolve="aspect" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7wqdV6Y9Seq" role="2OqNvi">
                                        <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.getAspectModels(org.jetbrains.mps.openapi.module.SModule)" resolve="getAspectModels" />
                                        <node concept="37vLTw" id="7wqdV6Y9Ser" role="37wK5m">
                                          <ref role="3cqZAo" node="5W7E4fV0XuW" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XuW" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XuX" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="7wqdV6Y8I3x" role="2Oq$k0">
                              <ref role="3cqZAo" node="7wqdV6Y85sb" resolve="projectModules" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="7wqdV6Y85sA" role="2OqNvi">
                            <node concept="1bVj0M" id="7wqdV6Y85sB" role="23t8la">
                              <node concept="3clFbS" id="7wqdV6Y85sC" role="1bW5cS">
                                <node concept="3clFbF" id="7wqdV6Y85sD" role="3cqZAp">
                                  <node concept="2YIFZM" id="40H5AhzikZO" role="3clFbG">
                                    <ref role="37wK5l" to="ap4t:~GenerationFacade.canGenerate(org.jetbrains.mps.openapi.model.SModel)" resolve="canGenerate" />
                                    <ref role="1Pybhc" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
                                    <node concept="37vLTw" id="40H5AhzilmX" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0XuY" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XuY" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0XuZ" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="7wqdV6Y8JGt" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7wqdV6Y85sO" role="2Oq$k0">
              <node concept="2OqwBi" id="7wqdV6Y85sP" role="2Oq$k0">
                <node concept="2WthIp" id="7wqdV6Y85sQ" role="2Oq$k0" />
                <node concept="1DTwFV" id="7wqdV6Y85sR" role="2OqNvi">
                  <ref role="2WH_rO" node="7wqdV6Y85rX" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="7wqdV6Y85sS" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wqdV6Y85sT" role="3cqZAp">
          <node concept="2OqwBi" id="7wqdV6Y85sU" role="3clFbG">
            <node concept="2ShNRf" id="7wqdV6Y85sV" role="2Oq$k0">
              <node concept="1pGfFk" id="7wqdV6Y85sW" role="2ShVmc">
                <ref role="37wK5l" node="7iCFfvQxkFD" resolve="MakeActionImpl" />
                <node concept="2OqwBi" id="7wqdV6Y85sX" role="37wK5m">
                  <node concept="2OqwBi" id="7wqdV6Y85sY" role="2Oq$k0">
                    <node concept="2ShNRf" id="7wqdV6Y85sZ" role="2Oq$k0">
                      <node concept="1pGfFk" id="7wqdV6Y85t0" role="2ShVmc">
                        <ref role="37wK5l" node="7iCFfvQto4Y" resolve="MakeActionParameters" />
                        <node concept="2OqwBi" id="7wqdV6Y85t1" role="37wK5m">
                          <node concept="2WthIp" id="7wqdV6Y85t2" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7wqdV6Y85t3" role="2OqNvi">
                            <ref role="2WH_rO" node="7wqdV6Y85rX" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7wqdV6Y85t4" role="2OqNvi">
                      <ref role="37wK5l" node="7iCFfvQv3eI" resolve="models" />
                      <node concept="37vLTw" id="7wqdV6Y85t5" role="37wK5m">
                        <ref role="3cqZAo" node="7wqdV6Y85s2" resolve="models" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7wqdV6Y85t6" role="2OqNvi">
                    <ref role="37wK5l" node="7iCFfvQvWvd" resolve="cleanMake" />
                    <node concept="3clFbT" id="7wqdV6Y85t7" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7wqdV6Y85t8" role="2OqNvi">
              <ref role="37wK5l" node="7tZeFupJF6A" resolve="executeAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="7wqdV6Y90uJ" role="tmbBb">
      <node concept="3clFbS" id="7wqdV6Y90uK" role="2VODD2">
        <node concept="3clFbF" id="7wqdV6YblMT" role="3cqZAp">
          <node concept="2OqwBi" id="7wqdV6YbmlS" role="3clFbG">
            <node concept="2OqwBi" id="7wqdV6YblWX" role="2Oq$k0">
              <node concept="tl45R" id="7wqdV6YblMR" role="2Oq$k0" />
              <node concept="liA8E" id="7wqdV6Ybmf6" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7wqdV6Ybmzo" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="7wqdV6Y919K" role="37wK5m">
                <node concept="2OqwBi" id="7wqdV6Y90LO" role="2Oq$k0">
                  <node concept="2WthIp" id="7wqdV6Y90LR" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7wqdV6Y9PnA" role="2OqNvi">
                    <ref role="2WH_rO" node="7wqdV6Y9M6K" resolve="aspect" />
                  </node>
                </node>
                <node concept="liA8E" id="7wqdV6Y91iX" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.getPresentableAspectName()" resolve="getPresentableAspectName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6A_mxR_MEY3">
    <property role="3GE5qa" value="Make.groups" />
    <property role="TrG5h" value="TouchBarDefault" />
    <property role="22ra45" value="true" />
    <node concept="tT9cl" id="6A_mxR_Nm8G" role="2f5YQi">
      <ref role="tU$_T" to="tprs:6A_mxR_NmaE" resolve="IDEATouchBarDefault" />
    </node>
    <node concept="ftmFs" id="6A_mxR_Nm8I" role="ftER_">
      <node concept="tCFHf" id="6A_mxR_Nm8L" role="ftvYc">
        <ref role="tCJdB" node="7tZeFupJF5V" resolve="MakeProject" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="786n80irH7e">
    <property role="TrG5h" value="BuildDependencies" />
    <node concept="2tJIrI" id="786n80irHgI" role="jymVt" />
    <node concept="312cEg" id="29n000VLLHs" role="jymVt">
      <property role="TrG5h" value="myModulesToBuild" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="29n000VLLHt" role="1B3o_S" />
      <node concept="2hMVRd" id="29n000VMLdM" role="1tU5fm">
        <node concept="3uibUv" id="29n000VMLdO" role="2hN53Y">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="29n000VTq8u" role="jymVt">
      <property role="TrG5h" value="myMpsProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="29n000VTq8v" role="1B3o_S" />
      <node concept="3uibUv" id="29n000VTq8x" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="29n000VLLM7" role="jymVt" />
    <node concept="3clFbW" id="786n80irHjk" role="jymVt">
      <node concept="3cqZAl" id="786n80irHjm" role="3clF45" />
      <node concept="3Tm1VV" id="786n80irHjn" role="1B3o_S" />
      <node concept="3clFbS" id="786n80irHjo" role="3clF47">
        <node concept="3clFbF" id="29n000VTq8y" role="3cqZAp">
          <node concept="37vLTI" id="29n000VTq8$" role="3clFbG">
            <node concept="37vLTw" id="29n000VTq8B" role="37vLTJ">
              <ref role="3cqZAo" node="29n000VTq8u" resolve="myMpsProject" />
            </node>
            <node concept="37vLTw" id="29n000VTq8C" role="37vLTx">
              <ref role="3cqZAo" node="29n000VToBx" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29n000VLLHx" role="3cqZAp">
          <node concept="37vLTI" id="29n000VLLHz" role="3clFbG">
            <node concept="37vLTw" id="29n000VLLHA" role="37vLTJ">
              <ref role="3cqZAo" node="29n000VLLHs" resolve="myModulesToBuild" />
            </node>
            <node concept="2ShNRf" id="29n000VMMhs" role="37vLTx">
              <node concept="2i4dXS" id="29n000VMOca" role="2ShVmc">
                <node concept="3uibUv" id="29n000VMOWH" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29n000VMPpu" role="3cqZAp">
          <node concept="2OqwBi" id="29n000VMPZx" role="3clFbG">
            <node concept="37vLTw" id="29n000VMPps" role="2Oq$k0">
              <ref role="3cqZAo" node="29n000VLLHs" resolve="myModulesToBuild" />
            </node>
            <node concept="X8dFx" id="29n000VMQzT" role="2OqNvi">
              <node concept="37vLTw" id="29n000VMQYQ" role="25WWJ7">
                <ref role="3cqZAo" node="29n000VLLso" resolve="modulesToBuild" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="29n000VToBx" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="29n000VTq2z" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="29n000VLLso" role="3clF46">
        <property role="TrG5h" value="modulesToBuild" />
        <node concept="A3Dl8" id="29n000VLLsm" role="1tU5fm">
          <node concept="3uibUv" id="29n000VLLx3" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="786n80irHgN" role="jymVt" />
    <node concept="3clFb_" id="29n000VLLQJ" role="jymVt">
      <property role="TrG5h" value="requiredModules" />
      <node concept="A3Dl8" id="29n000VLLWH" role="3clF45">
        <node concept="3uibUv" id="29n000VLM57" role="A3Ik2">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="29n000VLLQM" role="1B3o_S" />
      <node concept="3clFbS" id="29n000VLLQN" role="3clF47">
        <node concept="3SKdUt" id="29n000VM4UQ" role="3cqZAp">
          <node concept="1PaTwC" id="29n000VM4UR" role="1aUNEU">
            <node concept="3oM_SD" id="29n000VM4ZV" role="1PaTwD">
              <property role="3oM_SC" value="Required" />
            </node>
            <node concept="3oM_SD" id="29n000VM51T" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="29n000VM52U" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="29n000VM53W" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="29n000VM541" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="29n000VM563" role="1PaTwD">
              <property role="3oM_SC" value="consist" />
            </node>
            <node concept="3oM_SD" id="29n000VM586" role="1PaTwD">
              <property role="3oM_SC" value="of:" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="29n000VM3Ag" role="3cqZAp">
          <node concept="1PaTwC" id="29n000VM3Ah" role="1aUNEU">
            <node concept="3oM_SD" id="29n000VM3Dz" role="1PaTwD">
              <property role="3oM_SC" value="1." />
            </node>
            <node concept="3oM_SD" id="29n000VM5c6" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="29n000VM3Ez" role="1PaTwD">
              <property role="3oM_SC" value="languages:" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="29n000VM3Lh" role="3cqZAp">
          <node concept="1PaTwC" id="29n000VM3Li" role="1aUNEU">
            <node concept="3oM_SD" id="29n000VM3MP" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="29n000VM3NS" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="29n000VM3R4" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="29n000VM3WW" role="1PaTwD">
              <property role="3oM_SC" value="gtor" />
            </node>
            <node concept="3oM_SD" id="29n000VM3YX" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="29n000VM448" role="1PaTwD">
              <property role="3oM_SC" value="extends" />
            </node>
            <node concept="3oM_SD" id="29n000VM48f" role="1PaTwD">
              <property role="3oM_SC" value="closure" />
            </node>
            <node concept="3oM_SD" id="29n000VM46b" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="29n000VM4ak" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="29n000VM4bs" role="1PaTwD">
              <property role="3oM_SC" value="langs" />
            </node>
            <node concept="3oM_SD" id="29n000VM4c_" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="29n000VM4cL" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="29n000VM4dW" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="29n000VM4zn" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="29n000VM4j8" role="3cqZAp">
          <node concept="1PaTwC" id="29n000VM4j9" role="1aUNEU">
            <node concept="3oM_SD" id="29n000VM4jx" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="29n000VM4me" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="29n000VM4nP" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="29n000VM4p7" role="1PaTwD">
              <property role="3oM_SC" value="non-gtor" />
            </node>
            <node concept="3oM_SD" id="29n000VM4t6" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="29n000VM4Hq" role="1PaTwD">
              <property role="3oM_SC" value="extends" />
            </node>
            <node concept="3oM_SD" id="29n000VM4Hr" role="1PaTwD">
              <property role="3oM_SC" value="closure" />
            </node>
            <node concept="3oM_SD" id="29n000VM4Hs" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="29n000VM4Ht" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="29n000VM4HR" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="29n000VM4Ml" role="1PaTwD">
              <property role="3oM_SC" value="langs" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="29n000VM5iY" role="3cqZAp">
          <node concept="1PaTwC" id="29n000VM5iZ" role="1aUNEU">
            <node concept="3oM_SD" id="29n000VM5lZ" role="1PaTwD">
              <property role="3oM_SC" value="2." />
            </node>
            <node concept="3oM_SD" id="29n000VM5mZ" role="1PaTwD">
              <property role="3oM_SC" value="gtor" />
            </node>
            <node concept="3oM_SD" id="29n000VM5o0" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="29n000VM5q0" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="29n000VM5q5" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="29n000VM5r9" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="29n000VM5se" role="1PaTwD">
              <property role="3oM_SC" value="lang" />
            </node>
            <node concept="3oM_SD" id="29n000VM5tk" role="1PaTwD">
              <property role="3oM_SC" value="(and" />
            </node>
            <node concept="3oM_SD" id="29n000VM5vp" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="29n000VM5wx" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="29n000VM5xE" role="1PaTwD">
              <property role="3oM_SC" value="langs)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="29n000VM5Dz" role="3cqZAp">
          <node concept="1PaTwC" id="29n000VM5D$" role="1aUNEU">
            <node concept="3oM_SD" id="29n000VM5FV" role="1PaTwD">
              <property role="3oM_SC" value="3." />
            </node>
            <node concept="3oM_SD" id="29n000VM5L3" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="29n000VM5N2" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="29n000VM5Sk" role="1PaTwD">
              <property role="3oM_SC" value="gtor" />
            </node>
            <node concept="3oM_SD" id="29n000VM67P" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="29n000VM6aj" role="1PaTwD">
              <property role="3oM_SC" value="source" />
            </node>
            <node concept="3oM_SD" id="29n000VM6_f" role="1PaTwD">
              <property role="3oM_SC" value="lang" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5xQS59rU_OA" role="3cqZAp">
          <node concept="1PaTwC" id="5xQS59rU_OB" role="1aUNEU">
            <node concept="3oM_SD" id="5xQS59rUCeG" role="1PaTwD">
              <property role="3oM_SC" value="4." />
            </node>
            <node concept="3oM_SD" id="5xQS59rUCeI" role="1PaTwD">
              <property role="3oM_SC" value="directly" />
            </node>
            <node concept="3oM_SD" id="5xQS59rUCgH" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="5xQS59rUChJ" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUS$e" role="1PaTwD">
              <property role="3oM_SC" value="(and" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUS_H" role="1PaTwD">
              <property role="3oM_SC" value="closure" />
            </node>
            <node concept="3oM_SD" id="3sLlKPDUSJP" role="1PaTwD">
              <property role="3oM_SC" value="thereof)" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xQS59rV7bV" role="3cqZAp" />
        <node concept="3cpWs8" id="5xQS59rUUXJ" role="3cqZAp">
          <node concept="3cpWsn" id="5xQS59rUUXK" role="3cpWs9">
            <property role="TrG5h" value="umc" />
            <node concept="3uibUv" id="5xQS59rUUIX" role="1tU5fm">
              <ref role="3uigEE" to="gp7a:~UsedModulesCollector" resolve="UsedModulesCollector" />
            </node>
            <node concept="2ShNRf" id="5xQS59rUUXL" role="33vP2m">
              <node concept="1pGfFk" id="5xQS59rUUXM" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="gp7a:~UsedModulesCollector.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="UsedModulesCollector" />
                <node concept="2OqwBi" id="5xQS59rUUXN" role="37wK5m">
                  <node concept="37vLTw" id="5xQS59rUUXO" role="2Oq$k0">
                    <ref role="3cqZAo" node="29n000VTq8u" resolve="myMpsProject" />
                  </node>
                  <node concept="liA8E" id="5xQS59rUUXP" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="29n000VMmYs" role="3cqZAp">
          <node concept="3cpWsn" id="29n000VMmYt" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="29n000VMmWs" role="1tU5fm">
              <node concept="3uibUv" id="29n000VMmWv" role="2hN53Y">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="29n000VMmYu" role="33vP2m">
              <node concept="2i4dXS" id="29n000VMmYv" role="2ShVmc">
                <node concept="3uibUv" id="29n000VMmYw" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="29n000VMp77" role="3cqZAp">
          <node concept="3cpWsn" id="29n000VMp7a" role="3cpWs9">
            <property role="TrG5h" value="required" />
            <node concept="_YKpA" id="29n000VMp73" role="1tU5fm">
              <node concept="3uibUv" id="29n000VMpxs" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="29n000VMs1C" role="33vP2m">
              <node concept="Tc6Ow" id="29n000VMs0o" role="2ShVmc">
                <node concept="3uibUv" id="29n000VMs0p" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="29n000VM7BH" role="3cqZAp">
          <node concept="3cpWsn" id="29n000VM7BK" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="3O6Q9H" id="29n000VM7BE" role="1tU5fm">
              <node concept="3uibUv" id="29n000VM7Hw" role="3O5elw">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="29n000VM816" role="33vP2m">
              <node concept="2Jqq0_" id="29n000VM80O" role="2ShVmc">
                <node concept="3uibUv" id="29n000VM80P" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29n000VM8lI" role="3cqZAp">
          <node concept="2OqwBi" id="29n000VM90Y" role="3clFbG">
            <node concept="37vLTw" id="29n000VM8lG" role="2Oq$k0">
              <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
            </node>
            <node concept="X8dFx" id="29n000VM9TL" role="2OqNvi">
              <node concept="37vLTw" id="29n000VMacq" role="25WWJ7">
                <ref role="3cqZAo" node="29n000VLLHs" resolve="myModulesToBuild" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="29n000VMue3" role="3cqZAp">
          <node concept="3clFbS" id="29n000VMue5" role="2LFqv$">
            <node concept="3cpWs8" id="29n000VM_tT" role="3cqZAp">
              <node concept="3cpWsn" id="29n000VM_tU" role="3cpWs9">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="29n000VM_qJ" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="29n000VM_tV" role="33vP2m">
                  <node concept="37vLTw" id="29n000VM_tW" role="2Oq$k0">
                    <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
                  </node>
                  <node concept="2Kt2Hk" id="29n000VM_tX" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="29n000VMB1g" role="3cqZAp">
              <node concept="3clFbS" id="29n000VMB1i" role="3clFbx">
                <node concept="3N13vt" id="29n000VMDXZ" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="29n000VN6f9" role="3clFbw">
                <node concept="3fqX7Q" id="29n000VNduw" role="3uHU7w">
                  <node concept="2OqwBi" id="2MC9CjRsdEq" role="3fr31v">
                    <node concept="37vLTw" id="2MC9CjRsbrc" role="2Oq$k0">
                      <ref role="3cqZAo" node="29n000VTq8u" resolve="myMpsProject" />
                    </node>
                    <node concept="liA8E" id="2MC9CjRsfNC" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.isProjectModule(org.jetbrains.mps.openapi.module.SModule)" resolve="isProjectModule" />
                      <node concept="37vLTw" id="2MC9CjRsjo8" role="37wK5m">
                        <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="29n000VQPIR" role="3uHU7B">
                  <node concept="3clFbC" id="29n000VQUwH" role="3uHU7B">
                    <node concept="10Nm6u" id="29n000VQWAG" role="3uHU7w" />
                    <node concept="37vLTw" id="29n000VQSIT" role="3uHU7B">
                      <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="29n000VMBYM" role="3uHU7w">
                    <node concept="37vLTw" id="29n000VMBlb" role="2Oq$k0">
                      <ref role="3cqZAo" node="29n000VMmYt" resolve="visited" />
                    </node>
                    <node concept="3JPx81" id="29n000VMDlV" role="2OqNvi">
                      <node concept="37vLTw" id="29n000VMDuy" role="25WWJ7">
                        <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="29n000VMEAZ" role="3cqZAp">
              <node concept="2OqwBi" id="29n000VMGGu" role="3clFbG">
                <node concept="37vLTw" id="29n000VMEAX" role="2Oq$k0">
                  <ref role="3cqZAo" node="29n000VMmYt" resolve="visited" />
                </node>
                <node concept="TSZUe" id="29n000VMI4E" role="2OqNvi">
                  <node concept="37vLTw" id="29n000VMJ7v" role="25WWJ7">
                    <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="29n000VMRlz" role="3cqZAp">
              <node concept="3clFbS" id="29n000VMRl_" role="3clFbx">
                <node concept="3clFbF" id="29n000VMZVz" role="3cqZAp">
                  <node concept="2OqwBi" id="29n000VN2A1" role="3clFbG">
                    <node concept="37vLTw" id="29n000VMZVx" role="2Oq$k0">
                      <ref role="3cqZAo" node="29n000VMp7a" resolve="required" />
                    </node>
                    <node concept="TSZUe" id="29n000VN4$V" role="2OqNvi">
                      <node concept="37vLTw" id="29n000VN55B" role="25WWJ7">
                        <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="29n000VMSKZ" role="3clFbw">
                <node concept="2OqwBi" id="29n000VMVIX" role="3fr31v">
                  <node concept="37vLTw" id="29n000VMUJH" role="2Oq$k0">
                    <ref role="3cqZAo" node="29n000VLLHs" resolve="myModulesToBuild" />
                  </node>
                  <node concept="3JPx81" id="29n000VMYzY" role="2OqNvi">
                    <node concept="37vLTw" id="29n000VMYZy" role="25WWJ7">
                      <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5xQS59rVACV" role="3cqZAp">
              <node concept="2OqwBi" id="5xQS59rVDPv" role="3clFbG">
                <node concept="37vLTw" id="5xQS59rVACT" role="2Oq$k0">
                  <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
                </node>
                <node concept="X8dFx" id="5xQS59rVHmv" role="2OqNvi">
                  <node concept="2OqwBi" id="5xQS59rVKx6" role="25WWJ7">
                    <node concept="37vLTw" id="5xQS59rVKx7" role="2Oq$k0">
                      <ref role="3cqZAo" node="5xQS59rUUXK" resolve="umc" />
                    </node>
                    <node concept="liA8E" id="5xQS59rVKx8" role="2OqNvi">
                      <ref role="37wK5l" to="gp7a:~UsedModulesCollector.directlyUsedModules(org.jetbrains.mps.openapi.module.SModule,boolean,boolean)" resolve="directlyUsedModules" />
                      <node concept="37vLTw" id="5xQS59rVKx9" role="37wK5m">
                        <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                      </node>
                      <node concept="3clFbT" id="5xQS59rVKxa" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="5xQS59rVKxb" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="29n000VNfph" role="3cqZAp">
              <node concept="3clFbS" id="29n000VNfpj" role="3clFbx">
                <node concept="3cpWs8" id="29n000VS4jC" role="3cqZAp">
                  <node concept="3cpWsn" id="29n000VS4jD" role="3cpWs9">
                    <property role="TrG5h" value="gtor" />
                    <node concept="3uibUv" id="29n000VS43u" role="1tU5fm">
                      <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                    </node>
                    <node concept="1eOMI4" id="29n000VS4jE" role="33vP2m">
                      <node concept="10QFUN" id="29n000VS4jF" role="1eOMHV">
                        <node concept="3uibUv" id="29n000VS4jG" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                        </node>
                        <node concept="37vLTw" id="29n000VS4jH" role="10QFUP">
                          <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="29n000VQzb$" role="3cqZAp">
                  <node concept="2OqwBi" id="29n000VQAxp" role="3clFbG">
                    <node concept="37vLTw" id="29n000VQzby" role="2Oq$k0">
                      <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
                    </node>
                    <node concept="2Ke9KJ" id="29n000VQHB0" role="2OqNvi">
                      <node concept="1rXfSq" id="29n000VUsqf" role="25WWJ7">
                        <ref role="37wK5l" node="29n000VTJBX" resolve="toModule" />
                        <node concept="2OqwBi" id="29n000VQL$G" role="37wK5m">
                          <node concept="37vLTw" id="29n000VS4jI" role="2Oq$k0">
                            <ref role="3cqZAo" node="29n000VS4jD" resolve="gtor" />
                          </node>
                          <node concept="liA8E" id="29n000VQL$L" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~Generator.sourceLanguage()" resolve="sourceLanguage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="29n000VT0hB" role="3cqZAp">
                  <node concept="2OqwBi" id="29n000VT4c5" role="3clFbG">
                    <node concept="37vLTw" id="29n000VT0h_" role="2Oq$k0">
                      <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
                    </node>
                    <node concept="X8dFx" id="29n000VT7O4" role="2OqNvi">
                      <node concept="2OqwBi" id="29n000VSexo" role="25WWJ7">
                        <property role="hSjvv" value="true" />
                        <node concept="2OqwBi" id="29n000VRAmI" role="2Oq$k0">
                          <property role="hSjvv" value="true" />
                          <node concept="1eOMI4" id="29n000VRxhV" role="2Oq$k0">
                            <node concept="10QFUN" id="29n000VRxhU" role="1eOMHV">
                              <node concept="2OqwBi" id="29n000VRxhO" role="10QFUP">
                                <node concept="37vLTw" id="29n000VS4jJ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="29n000VS4jD" resolve="gtor" />
                                </node>
                                <node concept="liA8E" id="29n000VRxhT" role="2OqNvi">
                                  <ref role="37wK5l" to="31cb:~SModuleBase.getModels()" resolve="getModels" />
                                </node>
                              </node>
                              <node concept="_YKpA" id="29n000VRJm$" role="10QFUM">
                                <node concept="3uibUv" id="29n000VRJmA" role="_ZDj9">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3goQfb" id="29n000VRDqC" role="2OqNvi">
                            <node concept="1bVj0M" id="29n000VRDqE" role="23t8la">
                              <node concept="3clFbS" id="29n000VRDqF" role="1bW5cS">
                                <node concept="3clFbF" id="29n000VRRmZ" role="3cqZAp">
                                  <node concept="2YIFZM" id="29n000VRT9h" role="3clFbG">
                                    <ref role="37wK5l" to="tft2:~ModelContentUtil.getUsedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="getUsedLanguages" />
                                    <ref role="1Pybhc" to="tft2:~ModelContentUtil" resolve="ModelContentUtil" />
                                    <node concept="37vLTw" id="29n000VRYAQ" role="37wK5m">
                                      <ref role="3cqZAo" node="7XBu3oV1ufL" resolve="gmodel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="7XBu3oV1ufL" role="1bW2Oz">
                                <property role="TrG5h" value="gmodel" />
                                <node concept="2jxLKc" id="7XBu3oV1ufM" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3$u5V9" id="29n000VSkje" role="2OqNvi">
                          <node concept="1bVj0M" id="29n000VSkjg" role="23t8la">
                            <node concept="3clFbS" id="29n000VSkjh" role="1bW5cS">
                              <node concept="3clFbF" id="29n000VSvJa" role="3cqZAp">
                                <node concept="1rXfSq" id="29n000VUbaF" role="3clFbG">
                                  <ref role="37wK5l" node="29n000VTJBX" resolve="toModule" />
                                  <node concept="37vLTw" id="29n000VUe_1" role="37wK5m">
                                    <ref role="3cqZAo" node="7XBu3oV1ufN" resolve="slang" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="7XBu3oV1ufN" role="1bW2Oz">
                              <property role="TrG5h" value="slang" />
                              <node concept="2jxLKc" id="7XBu3oV1ufO" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="29n000VNhvQ" role="3clFbw">
                <node concept="3uibUv" id="29n000VNjmj" role="2ZW6by">
                  <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                </node>
                <node concept="37vLTw" id="29n000VNhd_" role="2ZW6bz">
                  <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                </node>
              </node>
              <node concept="9aQIb" id="29n000VNl1F" role="9aQIa">
                <node concept="3clFbS" id="29n000VNl1G" role="9aQI4">
                  <node concept="3clFbF" id="29n000VNp0v" role="3cqZAp">
                    <node concept="2OqwBi" id="29n000VNqTJ" role="3clFbG">
                      <property role="hSjvv" value="true" />
                      <node concept="37vLTw" id="29n000VNp0t" role="2Oq$k0">
                        <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
                      </node>
                      <node concept="X8dFx" id="29n000VNs7R" role="2OqNvi">
                        <node concept="2OqwBi" id="29n000VPaF3" role="25WWJ7">
                          <node concept="2OqwBi" id="29n000VOUhJ" role="2Oq$k0">
                            <property role="hSjvv" value="true" />
                            <node concept="1eOMI4" id="29n000VOM$j" role="2Oq$k0">
                              <node concept="10QFUN" id="29n000VOM$i" role="1eOMHV">
                                <node concept="2OqwBi" id="29n000VOM$f" role="10QFUP">
                                  <node concept="37vLTw" id="29n000VOM$g" role="2Oq$k0">
                                    <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                                  </node>
                                  <node concept="liA8E" id="29n000VOM$h" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~SModule.getUsedLanguages()" resolve="getUsedLanguages" />
                                  </node>
                                </node>
                                <node concept="2hMVRd" id="29n000VOP9s" role="10QFUM">
                                  <node concept="3uibUv" id="29n000VOQLV" role="2hN53Y">
                                    <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3$u5V9" id="29n000VOXDf" role="2OqNvi">
                              <node concept="37Ijox" id="Asjoa3wfRW" role="23t8la">
                                <ref role="37Ijqf" node="29n000VTJBX" resolve="toModule" />
                                <node concept="Xjq3P" id="Asjoa3wcrO" role="wWaWy" />
                              </node>
                            </node>
                          </node>
                          <node concept="1KnU$U" id="29n000VPdLE" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="29n000VPuJD" role="3cqZAp">
                    <node concept="3clFbS" id="29n000VPuJF" role="3clFbx">
                      <node concept="3clFbF" id="29n000VPL9n" role="3cqZAp">
                        <node concept="2OqwBi" id="29n000VPMM9" role="3clFbG">
                          <node concept="37vLTw" id="29n000VPL9l" role="2Oq$k0">
                            <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
                          </node>
                          <node concept="X8dFx" id="29n000VPP8z" role="2OqNvi">
                            <node concept="2OqwBi" id="29n000VPR11" role="25WWJ7">
                              <node concept="1eOMI4" id="29n000VPR12" role="2Oq$k0">
                                <node concept="10QFUN" id="29n000VPR13" role="1eOMHV">
                                  <node concept="3uibUv" id="29n000VPR14" role="10QFUM">
                                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                                  </node>
                                  <node concept="37vLTw" id="29n000VPR15" role="10QFUP">
                                    <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="29n000VPR16" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~Language.getGenerators()" resolve="getGenerators" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="29n000VPyU5" role="3clFbw">
                      <node concept="3uibUv" id="29n000VP_fO" role="2ZW6by">
                        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                      </node>
                      <node concept="37vLTw" id="29n000VPwOk" role="2ZW6bz">
                        <ref role="3cqZAo" node="29n000VM_tU" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="29n000VMuIY" role="2$JKZa">
            <node concept="2OqwBi" id="29n000VMw7r" role="3fr31v">
              <node concept="37vLTw" id="29n000VMuKE" role="2Oq$k0">
                <ref role="3cqZAo" node="29n000VM7BK" resolve="queue" />
              </node>
              <node concept="1v1jN8" id="29n000VMwZB" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29n000VUBRd" role="3cqZAp">
          <node concept="2OqwBi" id="29n000VUEGr" role="3clFbG">
            <node concept="37vLTw" id="29n000VUBRb" role="2Oq$k0">
              <ref role="3cqZAo" node="29n000VMp7a" resolve="required" />
            </node>
            <node concept="26Dbio" id="29n000VUITG" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="PH$_5bfNcf" role="jymVt" />
    <node concept="3clFb_" id="PH$_5bfPmD" role="jymVt">
      <property role="TrG5h" value="requiredModulesWithDirtyModels" />
      <node concept="A3Dl8" id="PH$_5bfRSS" role="3clF45">
        <node concept="3uibUv" id="PH$_5bi64g" role="A3Ik2">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PH$_5bfPmG" role="1B3o_S" />
      <node concept="3clFbS" id="PH$_5bfPmH" role="3clF47">
        <node concept="3cpWs8" id="7zIbG2FQgdK" role="3cqZAp">
          <node concept="3cpWsn" id="7zIbG2FQgdL" role="3cpWs9">
            <property role="TrG5h" value="statusManager" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7zIbG2FQgdM" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
            </node>
            <node concept="2OqwBi" id="7zIbG2FQgdN" role="33vP2m">
              <node concept="37vLTw" id="7zIbG2FQgdO" role="2Oq$k0">
                <ref role="3cqZAo" node="29n000VTq8u" resolve="myMpsProject" />
              </node>
              <node concept="liA8E" id="7zIbG2FQgdP" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7zIbG2FQgdQ" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="PH$_5bghjC" role="3cqZAp">
          <node concept="2OqwBi" id="PH$_5bhKMZ" role="3clFbG">
            <node concept="2OqwBi" id="PH$_5bhA0j" role="2Oq$k0">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="PH$_5bgkJF" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="1rXfSq" id="PH$_5bghjB" role="2Oq$k0">
                  <ref role="37wK5l" node="29n000VLLQJ" resolve="requiredModules" />
                </node>
                <node concept="3zZkjj" id="PH$_5bgnci" role="2OqNvi">
                  <node concept="1bVj0M" id="PH$_5bgnck" role="23t8la">
                    <node concept="3clFbS" id="PH$_5bgncl" role="1bW5cS">
                      <node concept="3clFbF" id="PH$_5bgOcm" role="3cqZAp">
                        <node concept="2OqwBi" id="PH$_5bh36$" role="3clFbG">
                          <node concept="1eOMI4" id="PH$_5bgVO2" role="2Oq$k0">
                            <node concept="10QFUN" id="PH$_5bgVO1" role="1eOMHV">
                              <node concept="2OqwBi" id="PH$_5bgVNY" role="10QFUP">
                                <node concept="37vLTw" id="PH$_5bgVNZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7XBu3oV1ufP" resolve="module" />
                                </node>
                                <node concept="liA8E" id="PH$_5bgVO0" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                                </node>
                              </node>
                              <node concept="A3Dl8" id="PH$_5bgYku" role="10QFUM">
                                <node concept="3uibUv" id="PH$_5bh0qz" role="A3Ik2">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2HwmR7" id="PH$_5bh6eF" role="2OqNvi">
                            <node concept="37Ijox" id="7zIbG2FOD0y" role="23t8la">
                              <ref role="37Ijqf" to="ap4t:~ModelGenerationStatusManager.generationRequired(org.jetbrains.mps.openapi.model.SModel)" resolve="generationRequired" />
                              <node concept="37vLTw" id="7zIbG2FOD0z" role="wWaWy">
                                <ref role="3cqZAo" node="7zIbG2FQgdL" resolve="statusManager" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="7XBu3oV1ufP" role="1bW2Oz">
                      <property role="TrG5h" value="module" />
                      <node concept="2jxLKc" id="7XBu3oV1ufQ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="PH$_5bhFQr" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="PH$_5bi0BX" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7zIbG2FLPDV" role="jymVt" />
    <node concept="3clFb_" id="7zIbG2FLL51" role="jymVt">
      <property role="TrG5h" value="dirtyModelsFromRequiredModules" />
      <node concept="A3Dl8" id="7zIbG2FLL52" role="3clF45">
        <node concept="3uibUv" id="7zIbG2FLL53" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7zIbG2FLL54" role="1B3o_S" />
      <node concept="3clFbS" id="7zIbG2FLL55" role="3clF47">
        <node concept="3cpWs8" id="7zIbG2FLL56" role="3cqZAp">
          <node concept="3cpWsn" id="7zIbG2FLL57" role="3cpWs9">
            <property role="TrG5h" value="statusManager" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7zIbG2FLL58" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
            </node>
            <node concept="2OqwBi" id="7zIbG2FLL59" role="33vP2m">
              <node concept="37vLTw" id="7zIbG2FLL5a" role="2Oq$k0">
                <ref role="3cqZAo" node="29n000VTq8u" resolve="myMpsProject" />
              </node>
              <node concept="liA8E" id="7zIbG2FLL5b" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7zIbG2FLL5c" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~ModelGenerationStatusManager" resolve="ModelGenerationStatusManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7zIbG2FLL5d" role="3cqZAp">
          <node concept="2OqwBi" id="7zIbG2FLL5e" role="3clFbG">
            <node concept="2OqwBi" id="7zIbG2FLL5f" role="2Oq$k0">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="7zIbG2FMt0x" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="1rXfSq" id="7zIbG2FLL5h" role="2Oq$k0">
                  <ref role="37wK5l" node="29n000VLLQJ" resolve="requiredModules" />
                </node>
                <node concept="3goQfb" id="7zIbG2FMxv0" role="2OqNvi">
                  <node concept="1bVj0M" id="7zIbG2FMxv2" role="23t8la">
                    <node concept="3clFbS" id="7zIbG2FMxv3" role="1bW5cS">
                      <node concept="3clFbF" id="7zIbG2FMEc7" role="3cqZAp">
                        <node concept="2OqwBi" id="7zIbG2FNiCq" role="3clFbG">
                          <node concept="1eOMI4" id="7zIbG2FN3$L" role="2Oq$k0">
                            <node concept="10QFUN" id="7zIbG2FN3$K" role="1eOMHV">
                              <node concept="2OqwBi" id="7zIbG2FN3$H" role="10QFUP">
                                <node concept="37vLTw" id="7zIbG2FN3$I" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7XBu3oV1ufR" resolve="module" />
                                </node>
                                <node concept="liA8E" id="7zIbG2FN3$J" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                                </node>
                              </node>
                              <node concept="A3Dl8" id="7zIbG2FNbhZ" role="10QFUM">
                                <node concept="3uibUv" id="7zIbG2FNfdc" role="A3Ik2">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zZkjj" id="7zIbG2FNma9" role="2OqNvi">
                            <node concept="37Ijox" id="7zIbG2FOpJi" role="23t8la">
                              <ref role="37Ijqf" to="ap4t:~ModelGenerationStatusManager.generationRequired(org.jetbrains.mps.openapi.model.SModel)" resolve="generationRequired" />
                              <node concept="37vLTw" id="7zIbG2FOmgh" role="wWaWy">
                                <ref role="3cqZAo" node="7zIbG2FLL57" resolve="statusManager" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="7XBu3oV1ufR" role="1bW2Oz">
                      <property role="TrG5h" value="module" />
                      <node concept="2jxLKc" id="7XBu3oV1ufS" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7zIbG2FLL5E" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="7zIbG2FLL5F" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="29n000VTDRv" role="jymVt" />
    <node concept="3clFb_" id="29n000VTJBX" role="jymVt">
      <property role="TrG5h" value="toModule" />
      <node concept="37vLTG" id="29n000VU412" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="29n000VU6_p" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3uibUv" id="29n000VTOMp" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm6S6" id="29n000VTM5O" role="1B3o_S" />
      <node concept="3clFbS" id="29n000VTJC1" role="3clF47">
        <node concept="3clFbF" id="29n000VU6L7" role="3cqZAp">
          <node concept="2OqwBi" id="29n000VU6L9" role="3clFbG">
            <node concept="2OqwBi" id="29n000VU6La" role="2Oq$k0">
              <node concept="37vLTw" id="29n000VU6Lb" role="2Oq$k0">
                <ref role="3cqZAo" node="29n000VU412" resolve="slang" />
              </node>
              <node concept="liA8E" id="29n000VU6Lc" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
              </node>
            </node>
            <node concept="liA8E" id="29n000VU6Ld" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
              <node concept="2OqwBi" id="29n000VU6Le" role="37wK5m">
                <node concept="37vLTw" id="29n000VU6Lf" role="2Oq$k0">
                  <ref role="3cqZAo" node="29n000VTq8u" resolve="myMpsProject" />
                </node>
                <node concept="liA8E" id="29n000VU6Lg" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="786n80irHgW" role="jymVt" />
    <node concept="3Tm1VV" id="786n80irH7f" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6OO_ubq7G1v">
    <property role="TrG5h" value="CheckModelsBeforeGenerationAction" />
    <property role="3GE5qa" value="SaveTransientModels.Actions" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3clFbW" id="6OO_ubq7G1w" role="jymVt">
      <node concept="3Tm1VV" id="6OO_ubq7G1x" role="1B3o_S" />
      <node concept="3clFbS" id="6OO_ubq7G1y" role="3clF47">
        <node concept="XkiVB" id="6OO_ubq7G1z" role="3cqZAp">
          <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="ToggleAction" />
          <node concept="Xl_RD" id="6OO_ubq7G1$" role="37wK5m">
            <property role="Xl_RC" value="Check Models Before Generation" />
          </node>
          <node concept="Xl_RD" id="6OO_ubq84r_" role="37wK5m">
            <property role="Xl_RC" value="Check models for errors before generation" />
          </node>
          <node concept="10Nm6u" id="6OO_ubq88VM" role="37wK5m" />
        </node>
      </node>
      <node concept="3cqZAl" id="6OO_ubq7G1_" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6OO_ubq7G1A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSelected" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6OO_ubq7G1B" role="3clF47">
        <node concept="3cpWs8" id="6OO_ubq7G1C" role="3cqZAp">
          <node concept="3cpWsn" id="6OO_ubq7G1D" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="6OO_ubq7G1E" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="6OO_ubq7G1F" role="33vP2m">
              <node concept="liA8E" id="6OO_ubq7G1G" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="6OO_ubq7G1H" role="37wK5m">
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                </node>
              </node>
              <node concept="37vLTw" id="6OO_ubq7G1I" role="2Oq$k0">
                <ref role="3cqZAo" node="6OO_ubq7G1X" resolve="e" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6OO_ubq7G1J" role="3cqZAp">
          <node concept="1Wc70l" id="6OO_ubq7G1K" role="3cqZAk">
            <node concept="3y3z36" id="6OO_ubq7G1L" role="3uHU7B">
              <node concept="37vLTw" id="6OO_ubq7G1M" role="3uHU7B">
                <ref role="3cqZAo" node="6OO_ubq7G1D" resolve="mpsProject" />
              </node>
              <node concept="10Nm6u" id="6OO_ubq7G1N" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="6OO_ubq7G1O" role="3uHU7w">
              <node concept="2OqwBi" id="6OO_ubq7G1P" role="2Oq$k0">
                <node concept="2OqwBi" id="6OO_ubq7G1Q" role="2Oq$k0">
                  <node concept="37vLTw" id="6OO_ubq7G1R" role="2Oq$k0">
                    <ref role="3cqZAo" node="6OO_ubq7G1D" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="6OO_ubq7G1S" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                    <node concept="3VsKOn" id="6OO_ubq7G1T" role="37wK5m">
                      <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6OO_ubq7G1U" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
                </node>
              </node>
              <node concept="liA8E" id="6OO_ubq94bG" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~IModifiableGenerationSettings.isCheckModelsBeforeGeneration()" resolve="isCheckModelsBeforeGeneration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6OO_ubq7G1W" role="1B3o_S" />
      <node concept="37vLTG" id="6OO_ubq7G1X" role="3clF46">
        <property role="TrG5h" value="e" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6OO_ubq7G1Y" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="10P_77" id="6OO_ubq7G1Z" role="3clF45" />
      <node concept="2AHcQZ" id="6OO_ubq7G20" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6OO_ubq7G21" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="update" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6OO_ubq7G22" role="1B3o_S" />
      <node concept="3clFbS" id="6OO_ubq7G23" role="3clF47">
        <node concept="3clFbF" id="6OO_ubq7G24" role="3cqZAp">
          <node concept="3nyPlj" id="6OO_ubq7G25" role="3clFbG">
            <ref role="37wK5l" to="qkt:~ToggleAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
            <node concept="37vLTw" id="6OO_ubq7G26" role="37wK5m">
              <ref role="3cqZAo" node="6OO_ubq7G2K" resolve="e" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6OO_ubq7G2g" role="3cqZAp">
          <node concept="2OqwBi" id="6OO_ubq7G2h" role="3clFbG">
            <node concept="2OqwBi" id="6OO_ubq7G2i" role="2Oq$k0">
              <node concept="liA8E" id="6OO_ubq7G2j" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
              <node concept="37vLTw" id="6OO_ubq7G2k" role="2Oq$k0">
                <ref role="3cqZAo" node="6OO_ubq7G2K" resolve="e" />
              </node>
            </node>
            <node concept="liA8E" id="6OO_ubq7G2l" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="3y3z36" id="6OO_ubq90JA" role="37wK5m">
                <node concept="1eOMI4" id="2KO_4waxF9V" role="3uHU7B">
                  <node concept="2OqwBi" id="2KO_4waxF9R" role="1eOMHV">
                    <node concept="liA8E" id="2KO_4waxF9S" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                      <node concept="10M0yZ" id="2KO_4waxF9T" role="37wK5m">
                        <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                        <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2KO_4waxF9U" role="2Oq$k0">
                      <ref role="3cqZAo" node="6OO_ubq7G2K" resolve="e" />
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="6OO_ubq90JC" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6OO_ubq7G2J" role="3clF45" />
      <node concept="37vLTG" id="6OO_ubq7G2K" role="3clF46">
        <property role="TrG5h" value="e" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6OO_ubq7G2L" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6OO_ubq7G2M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7y1SJB2mz60" role="jymVt">
      <property role="TrG5h" value="getActionUpdateThread" />
      <node concept="3Tm1VV" id="7y1SJB2mz61" role="1B3o_S" />
      <node concept="2AHcQZ" id="7y1SJB2mz62" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7y1SJB2mz63" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
      </node>
      <node concept="3clFbS" id="7y1SJB2mz64" role="3clF47">
        <node concept="3clFbF" id="7y1SJB2mz65" role="3cqZAp">
          <node concept="Rm8GO" id="7y1SJB2mz66" role="3clFbG">
            <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
            <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7y1SJB2mz67" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6OO_ubq7G2N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSelected" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6OO_ubq7G2O" role="3clF47">
        <node concept="3cpWs8" id="6OO_ubq7G2P" role="3cqZAp">
          <node concept="3cpWsn" id="6OO_ubq7G2Q" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="6OO_ubq7G2R" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="6OO_ubq7G2S" role="33vP2m">
              <node concept="liA8E" id="6OO_ubq7G2T" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="6OO_ubq7G2U" role="37wK5m">
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                </node>
              </node>
              <node concept="37vLTw" id="6OO_ubq7G2V" role="2Oq$k0">
                <ref role="3cqZAo" node="6OO_ubq7G3e" resolve="e" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6OO_ubq7G2W" role="3cqZAp">
          <node concept="3y3z36" id="6OO_ubq7G2X" role="1gVkn0">
            <node concept="10Nm6u" id="6OO_ubq7G2Y" role="3uHU7w" />
            <node concept="37vLTw" id="6OO_ubq7G2Z" role="3uHU7B">
              <ref role="3cqZAo" node="6OO_ubq7G2Q" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6OO_ubq7G30" role="3cqZAp">
          <node concept="3cpWsn" id="6OO_ubq7G31" role="3cpWs9">
            <property role="TrG5h" value="sp" />
            <node concept="3uibUv" id="6OO_ubq7G32" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
            </node>
            <node concept="2OqwBi" id="6OO_ubq7G33" role="33vP2m">
              <node concept="37vLTw" id="6OO_ubq7G34" role="2Oq$k0">
                <ref role="3cqZAo" node="6OO_ubq7G2Q" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="6OO_ubq7G35" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="6OO_ubq7G36" role="37wK5m">
                  <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6OO_ubq7G37" role="3cqZAp">
          <node concept="2OqwBi" id="6OO_ubq7G38" role="3clFbG">
            <node concept="2OqwBi" id="6OO_ubq7G39" role="2Oq$k0">
              <node concept="37vLTw" id="6OO_ubq7G3a" role="2Oq$k0">
                <ref role="3cqZAo" node="6OO_ubq7G31" resolve="sp" />
              </node>
              <node concept="liA8E" id="6OO_ubq7G3b" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
              </node>
            </node>
            <node concept="liA8E" id="6OO_ubq7G3c" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~IModifiableGenerationSettings.setCheckModelsBeforeGeneration(boolean)" resolve="setCheckModelsBeforeGeneration" />
              <node concept="37vLTw" id="6OO_ubq7G3d" role="37wK5m">
                <ref role="3cqZAo" node="6OO_ubq7G3g" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6OO_ubq7G3e" role="3clF46">
        <property role="TrG5h" value="e" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6OO_ubq7G3f" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="6OO_ubq7G3g" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="6OO_ubq7G3h" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="6OO_ubq7G3i" role="1B3o_S" />
      <node concept="3cqZAl" id="6OO_ubq7G3j" role="3clF45" />
      <node concept="2AHcQZ" id="6OO_ubq7G3k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6OO_ubq7G3l" role="1B3o_S" />
    <node concept="3uibUv" id="6OO_ubq7G3m" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
    </node>
  </node>
  <node concept="sE7Ow" id="40ot3U3ePVM">
    <property role="TrG5h" value="DocPreviewModel" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Make" />
    <property role="2uzpH1" value="Preview Generated Documentation" />
    <property role="1teQrl" value="false" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="40ot3U3ePVN" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="40ot3U3ePVO" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="40ot3U3ePVP" role="32lrUH">
      <property role="TrG5h" value="modelToGenerate" />
      <node concept="3uibUv" id="40ot3U3ePVQ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3clFbS" id="40ot3U3ePVR" role="3clF47">
        <node concept="3cpWs8" id="40ot3U3ePVS" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePVT" role="3cpWs9">
            <property role="TrG5h" value="md" />
            <node concept="3uibUv" id="40ot3U3ePVU" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="10Nm6u" id="40ot3U3ePVV" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="40ot3U3ePVW" role="3cqZAp">
          <node concept="3y3z36" id="40ot3U3ePVX" role="3clFbw">
            <node concept="10Nm6u" id="40ot3U3ePVY" role="3uHU7w" />
            <node concept="2OqwBi" id="40ot3U3ePVZ" role="3uHU7B">
              <node concept="2WthIp" id="40ot3U3ePW0" role="2Oq$k0" />
              <node concept="1DTwFV" id="40ot3U3ePW1" role="2OqNvi">
                <ref role="2WH_rO" node="40ot3U3eQ3u" resolve="cmodel" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="40ot3U3ePW2" role="3clFbx">
            <node concept="3clFbF" id="40ot3U3ePW3" role="3cqZAp">
              <node concept="37vLTI" id="40ot3U3ePW4" role="3clFbG">
                <node concept="2OqwBi" id="40ot3U3ePW5" role="37vLTx">
                  <node concept="2WthIp" id="40ot3U3ePW6" role="2Oq$k0" />
                  <node concept="1DTwFV" id="40ot3U3ePW7" role="2OqNvi">
                    <ref role="2WH_rO" node="40ot3U3eQ3u" resolve="cmodel" />
                  </node>
                </node>
                <node concept="37vLTw" id="40ot3U3ePW8" role="37vLTJ">
                  <ref role="3cqZAo" node="40ot3U3ePVT" resolve="md" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="40ot3U3ePW9" role="3eNLev">
            <node concept="1Wc70l" id="40ot3U3ePWa" role="3eO9$A">
              <node concept="3y3z36" id="40ot3U3ePWb" role="3uHU7B">
                <node concept="10Nm6u" id="40ot3U3ePWc" role="3uHU7w" />
                <node concept="2OqwBi" id="40ot3U3ePWd" role="3uHU7B">
                  <node concept="2WthIp" id="40ot3U3ePWe" role="2Oq$k0" />
                  <node concept="1DTwFV" id="40ot3U3ePWf" role="2OqNvi">
                    <ref role="2WH_rO" node="40ot3U3eQ3w" resolve="models" />
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="40ot3U3ePWg" role="3uHU7w">
                <node concept="3cmrfG" id="40ot3U3ePWh" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="40ot3U3ePWi" role="3uHU7B">
                  <node concept="2OqwBi" id="40ot3U3ePWj" role="2Oq$k0">
                    <node concept="2WthIp" id="40ot3U3ePWk" role="2Oq$k0" />
                    <node concept="1DTwFV" id="40ot3U3ePWl" role="2OqNvi">
                      <ref role="2WH_rO" node="40ot3U3eQ3w" resolve="models" />
                    </node>
                  </node>
                  <node concept="liA8E" id="40ot3U3ePWm" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="40ot3U3ePWn" role="3eOfB_">
              <node concept="3clFbF" id="40ot3U3ePWo" role="3cqZAp">
                <node concept="37vLTI" id="40ot3U3ePWp" role="3clFbG">
                  <node concept="37vLTw" id="40ot3U3ePWq" role="37vLTJ">
                    <ref role="3cqZAo" node="40ot3U3ePVT" resolve="md" />
                  </node>
                  <node concept="2OqwBi" id="40ot3U3ePWr" role="37vLTx">
                    <node concept="2OqwBi" id="40ot3U3ePWs" role="2Oq$k0">
                      <node concept="2WthIp" id="40ot3U3ePWt" role="2Oq$k0" />
                      <node concept="1DTwFV" id="40ot3U3ePWu" role="2OqNvi">
                        <ref role="2WH_rO" node="40ot3U3eQ3w" resolve="models" />
                      </node>
                    </node>
                    <node concept="liA8E" id="40ot3U3ePWv" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="40ot3U3ePWw" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="40ot3U3ePWx" role="3cqZAp">
          <node concept="37vLTw" id="40ot3U3ePWy" role="3clFbG">
            <ref role="3cqZAo" node="40ot3U3ePVT" resolve="md" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="40ot3U3ePWz" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="40ot3U3ePW$" role="tncku">
      <node concept="3clFbS" id="40ot3U3ePW_" role="2VODD2">
        <node concept="3cpWs8" id="40ot3U3ePWC" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePWD" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="40ot3U3ePWE" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="40ot3U3ePWF" role="33vP2m">
              <node concept="2WthIp" id="40ot3U3ePWG" role="2Oq$k0">
                <ref role="32nkFo" node="40ot3U3ePVM" resolve="DocPreviewModel" />
              </node>
              <node concept="1DTwFV" id="40ot3U3ePWH" role="2OqNvi">
                <ref role="2WH_rO" node="40ot3U3ePVN" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40ot3U3ePWI" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePWJ" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="40ot3U3ePWK" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="40ot3U3ePWL" role="33vP2m">
              <node concept="2WthIp" id="40ot3U3ePWM" role="2Oq$k0">
                <ref role="32nkFo" node="40ot3U3ePVM" resolve="DocPreviewModel" />
              </node>
              <node concept="1DTwFV" id="40ot3U3ePWN" role="2OqNvi">
                <ref role="2WH_rO" node="40ot3U3eQ3r" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40ot3U3ePWO" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePWP" role="3cpWs9">
            <property role="TrG5h" value="msgHandler" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="40ot3U3ePWQ" role="1tU5fm">
              <ref role="3uigEE" to="drpk:~DefaultMakeMessageHandler" resolve="DefaultMakeMessageHandler" />
            </node>
            <node concept="2ShNRf" id="40ot3U3ePWR" role="33vP2m">
              <node concept="1pGfFk" id="40ot3U3ePWS" role="2ShVmc">
                <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                <node concept="37vLTw" id="40ot3U3ePWT" role="37wK5m">
                  <ref role="3cqZAo" node="40ot3U3ePWD" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40ot3U3ePWU" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePWV" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="40ot3U3ePWW" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2ShNRf" id="40ot3U3ePWX" role="33vP2m">
              <node concept="1pGfFk" id="40ot3U3ePWY" role="2ShVmc">
                <ref role="37wK5l" to="hfuk:2BjwmTxT7Q7" resolve="MakeSession" />
                <node concept="37vLTw" id="40ot3U3ePWZ" role="37wK5m">
                  <ref role="3cqZAo" node="40ot3U3ePWD" resolve="mpsProject" />
                </node>
                <node concept="37vLTw" id="40ot3U3ePX0" role="37wK5m">
                  <ref role="3cqZAo" node="40ot3U3ePWP" resolve="msgHandler" />
                </node>
                <node concept="3clFbT" id="40ot3U3ePX1" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40ot3U3ePX2" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePX3" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="contextNode" />
            <node concept="3uibUv" id="40ot3U3ePX4" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3K4zz7" id="40ot3U3ePX5" role="33vP2m">
              <node concept="2OqwBi" id="40ot3U3ePX6" role="3K4GZi">
                <node concept="2OqwBi" id="40ot3U3ePX7" role="2Oq$k0">
                  <node concept="2WthIp" id="40ot3U3ePX8" role="2Oq$k0" />
                  <node concept="1DTwFV" id="40ot3U3ePX9" role="2OqNvi">
                    <ref role="2WH_rO" node="40ot3U3eQ3t" resolve="cnode" />
                  </node>
                </node>
                <node concept="liA8E" id="40ot3U3ePXa" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="10Nm6u" id="40ot3U3ePXb" role="3K4E3e" />
              <node concept="3clFbC" id="40ot3U3ePXc" role="3K4Cdx">
                <node concept="10Nm6u" id="40ot3U3ePXd" role="3uHU7w" />
                <node concept="2OqwBi" id="40ot3U3ePXe" role="3uHU7B">
                  <node concept="2WthIp" id="40ot3U3ePXf" role="2Oq$k0" />
                  <node concept="1DTwFV" id="40ot3U3ePXg" role="2OqNvi">
                    <ref role="2WH_rO" node="40ot3U3eQ3t" resolve="cnode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40ot3U3ePXh" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3ePXi" role="3cpWs9">
            <property role="TrG5h" value="makeService" />
            <node concept="3uibUv" id="40ot3U3ePXj" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
            </node>
            <node concept="2OqwBi" id="40ot3U3ePXk" role="33vP2m">
              <node concept="2OqwBi" id="40ot3U3ePXl" role="2Oq$k0">
                <node concept="2OqwBi" id="40ot3U3ePXm" role="2Oq$k0">
                  <node concept="2WthIp" id="40ot3U3ePXn" role="2Oq$k0" />
                  <node concept="1DTwFV" id="40ot3U3ePXo" role="2OqNvi">
                    <ref role="2WH_rO" node="40ot3U3ePVN" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="40ot3U3ePXp" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="40ot3U3ePXq" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="40ot3U3ePXr" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="40ot3U3ePXs" role="3cqZAp">
          <node concept="3clFbS" id="40ot3U3ePXt" role="3clFbx">
            <node concept="3cpWs8" id="40ot3U3ePXu" role="3cqZAp">
              <node concept="3cpWsn" id="40ot3U3ePXv" role="3cpWs9">
                <property role="TrG5h" value="scr" />
                <node concept="3uibUv" id="40ot3U3ePXw" role="1tU5fm">
                  <ref role="3uigEE" to="i9so:5mqBoD3U3Wb" resolve="IScript" />
                </node>
                <node concept="2OqwBi" id="40ot3U3ePXx" role="33vP2m">
                  <node concept="2OqwBi" id="4h9kW$k08R8" role="2Oq$k0">
                    <node concept="2OqwBi" id="40ot3U3ePXy" role="2Oq$k0">
                      <node concept="2OqwBi" id="40ot3U3ePXz" role="2Oq$k0">
                        <node concept="2ShNRf" id="40ot3U3ePX$" role="2Oq$k0">
                          <node concept="1pGfFk" id="40ot3U3ePX_" role="2ShVmc">
                            <ref role="37wK5l" to="i9so:5OO$M3_rzyt" resolve="ScriptBuilder" />
                            <node concept="2OqwBi" id="40ot3U3ePXA" role="37wK5m">
                              <node concept="37vLTw" id="40ot3U3ePXB" role="2Oq$k0">
                                <ref role="3cqZAo" node="40ot3U3ePWD" resolve="mpsProject" />
                              </node>
                              <node concept="liA8E" id="40ot3U3ePXC" role="2OqNvi">
                                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                                <node concept="3VsKOn" id="40ot3U3ePXD" role="37wK5m">
                                  <ref role="3VsUkX" to="ud0o:5mqBoD3U4oX" resolve="FacetRegistry" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="40ot3U3ePXE" role="2OqNvi">
                          <ref role="37wK5l" to="i9so:1i9nLvh04q7" resolve="withFacetNames" />
                          <node concept="2n6ZRZ" id="76mYxgEPp_k" role="37wK5m">
                            <node concept="2e$Q_j" id="76mYxgEPp_l" role="2n6ZRX">
                              <ref role="1Mm5Yu" to="89zq:2iKjvgoq3RC" resolve="Documentation" />
                            </node>
                          </node>
                          <node concept="2n6ZRZ" id="40ot3U3ePXF" role="37wK5m">
                            <node concept="2e$Q_j" id="40ot3U3ePXG" role="2n6ZRX">
                              <ref role="1Mm5Yu" to="tpcq:5L5h3brvz7i" resolve="Generate" />
                            </node>
                          </node>
                          <node concept="2n6ZRZ" id="40ot3U3ePXH" role="37wK5m">
                            <node concept="2e$Q_j" id="40ot3U3ePXI" role="2n6ZRX">
                              <ref role="1Mm5Yu" to="tpcq:5L5h3brvDH_" resolve="TextGen" />
                            </node>
                          </node>
                          <node concept="2n6ZRZ" id="40ot3U3ePXJ" role="37wK5m">
                            <node concept="2e$Q_j" id="40ot3U3ePXK" role="2n6ZRX">
                              <ref role="1Mm5Yu" to="fy8e:taepSZ9r$V" resolve="Make" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="40ot3U3ePXL" role="2OqNvi">
                        <ref role="37wK5l" to="i9so:1i9nLvh04rg" resolve="withFinalTarget" />
                        <node concept="29r_a" id="40ot3U3ePXM" role="37wK5m">
                          <ref role="29tk1" to="tpcq:5L5h3brvDMU" resolve="textGenToMemory" />
                          <node concept="2n6ZRZ" id="40ot3U3ePXN" role="29tkj">
                            <node concept="2e$Q_j" id="40ot3U3ePXO" role="2n6ZRX">
                              <ref role="1Mm5Yu" to="tpcq:5L5h3brvDH_" resolve="TextGen" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4h9kW$k0ejK" role="2OqNvi">
                      <ref role="37wK5l" to="i9so:1i9nLvh04r3" resolve="withAuxTarget" />
                      <node concept="29r_a" id="4h9kW$k0xNM" role="37wK5m">
                        <ref role="29tk1" to="89zq:4h9kW$k0Fn1" resolve="generateDocumentation" />
                        <node concept="2n6ZRZ" id="4h9kW$k0tVP" role="29tkj">
                          <node concept="2e$Q_j" id="4h9kW$k0tVQ" role="2n6ZRX">
                            <ref role="1Mm5Yu" to="89zq:2iKjvgoq3RC" resolve="Documentation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="40ot3U3ePXP" role="2OqNvi">
                    <ref role="37wK5l" to="i9so:1i9nLvh04s1" resolve="toScript" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="76mYxgF05Ay" role="3cqZAp" />
            <node concept="3cpWs8" id="40ot3U3ePXQ" role="3cqZAp">
              <node concept="3cpWsn" id="40ot3U3ePXR" role="3cpWs9">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="40ot3U3ePXS" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="40ot3U3ePXT" role="33vP2m">
                  <node concept="2WthIp" id="40ot3U3ePXU" role="2Oq$k0" />
                  <node concept="2XshWL" id="40ot3U3ePXV" role="2OqNvi">
                    <ref role="2WH_rO" node="40ot3U3ePVP" resolve="modelToGenerate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="40ot3U3ePXW" role="3cqZAp">
              <node concept="3cpWsn" id="40ot3U3ePXX" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="model2generateRef" />
                <node concept="3uibUv" id="40ot3U3ePXY" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
                <node concept="2OqwBi" id="40ot3U3ePXZ" role="33vP2m">
                  <node concept="37vLTw" id="40ot3U3ePY0" role="2Oq$k0">
                    <ref role="3cqZAo" node="40ot3U3ePXR" resolve="model" />
                  </node>
                  <node concept="liA8E" id="40ot3U3ePY1" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="40ot3U3ePY2" role="3cqZAp">
              <node concept="3cpWsn" id="40ot3U3ePY3" role="3cpWs9">
                <property role="TrG5h" value="future" />
                <property role="3TUv4t" value="true" />
                <node concept="2OqwBi" id="40ot3U3ePY4" role="33vP2m">
                  <node concept="liA8E" id="40ot3U3ePY5" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:7yGn3z4N64T" resolve="make" />
                    <node concept="37vLTw" id="40ot3U3ePY6" role="37wK5m">
                      <ref role="3cqZAo" node="40ot3U3ePWV" resolve="session" />
                    </node>
                    <node concept="2OqwBi" id="40ot3U3ePY7" role="37wK5m">
                      <node concept="2ShNRf" id="40ot3U3ePY8" role="2Oq$k0">
                        <node concept="1pGfFk" id="40ot3U3ePY9" role="2ShVmc">
                          <ref role="37wK5l" to="fn29:6zsZmIC0WqK" resolve="ModelsToResources" />
                          <node concept="2ShNRf" id="40ot3U3ePYa" role="37wK5m">
                            <node concept="2HTt$P" id="40ot3U3ePYb" role="2ShVmc">
                              <node concept="3uibUv" id="40ot3U3ePYc" role="2HTBi0">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                              <node concept="37vLTw" id="40ot3U3ePYd" role="2HTEbv">
                                <ref role="3cqZAo" node="40ot3U3ePXR" resolve="model" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="40ot3U3ePYe" role="2OqNvi">
                        <ref role="37wK5l" to="fn29:713BH0S$TAn" resolve="resources" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="40ot3U3ePYf" role="37wK5m">
                      <ref role="3cqZAo" node="40ot3U3ePXv" resolve="scr" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="40ot3U3ePYg" role="2Oq$k0">
                    <ref role="3cqZAo" node="40ot3U3ePXi" resolve="makeService" />
                  </node>
                </node>
                <node concept="3uibUv" id="40ot3U3ePYh" role="1tU5fm">
                  <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
                  <node concept="3uibUv" id="40ot3U3ePYi" role="11_B2D">
                    <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="40ot3U3ePYj" role="3cqZAp">
              <node concept="2OqwBi" id="40ot3U3ePYk" role="3clFbG">
                <node concept="2YIFZM" id="40ot3U3ePYl" role="2Oq$k0">
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                </node>
                <node concept="liA8E" id="40ot3U3ePYm" role="2OqNvi">
                  <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
                  <node concept="2ShNRf" id="40ot3U3ePYn" role="37wK5m">
                    <node concept="YeOm9" id="40ot3U3ePYo" role="2ShVmc">
                      <node concept="1Y3b0j" id="40ot3U3ePYp" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="40ot3U3ePYq" role="1B3o_S" />
                        <node concept="3clFb_" id="40ot3U3ePYr" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="run" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="40ot3U3ePYs" role="1B3o_S" />
                          <node concept="3cqZAl" id="40ot3U3ePYt" role="3clF45" />
                          <node concept="3clFbS" id="40ot3U3ePYu" role="3clF47">
                            <node concept="3J1_TO" id="40ot3U3ePYv" role="3cqZAp">
                              <node concept="3uVAMA" id="40ot3U3ePYw" role="1zxBo5">
                                <node concept="XOnhg" id="40ot3U3ePYx" role="1zc67B">
                                  <property role="3TUv4t" value="false" />
                                  <property role="TrG5h" value="e" />
                                  <node concept="nSUau" id="40ot3U3ePYy" role="1tU5fm">
                                    <node concept="3uibUv" id="40ot3U3ePYz" role="nSUat">
                                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="40ot3U3ePY$" role="1zc67A">
                                  <node concept="3clFbF" id="40ot3U3ePY_" role="3cqZAp">
                                    <node concept="2OqwBi" id="40ot3U3ePYA" role="3clFbG">
                                      <node concept="37vLTw" id="40ot3U3ePYB" role="2Oq$k0">
                                        <ref role="3cqZAo" node="40ot3U3ePWP" resolve="msgHandler" />
                                      </node>
                                      <node concept="liA8E" id="40ot3U3ePYC" role="2OqNvi">
                                        <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                                        <node concept="2OqwBi" id="40ot3U3ePYD" role="37wK5m">
                                          <node concept="2ShNRf" id="40ot3U3ePYE" role="2Oq$k0">
                                            <node concept="1pGfFk" id="40ot3U3ePYF" role="2ShVmc">
                                              <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="Message" />
                                              <node concept="Rm8GO" id="40ot3U3ePYG" role="37wK5m">
                                                <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                                                <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                              </node>
                                              <node concept="Xl_RD" id="40ot3U3ePYH" role="37wK5m">
                                                <property role="Xl_RC" value="TextPreviewModel" />
                                              </node>
                                              <node concept="2OqwBi" id="40ot3U3ePYI" role="37wK5m">
                                                <node concept="37vLTw" id="40ot3U3ePYJ" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="40ot3U3ePYx" resolve="e" />
                                                </node>
                                                <node concept="liA8E" id="40ot3U3ePYK" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~Throwable.toString()" resolve="toString" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="40ot3U3ePYL" role="2OqNvi">
                                            <ref role="37wK5l" to="et5u:~Message.setException(java.lang.Throwable)" resolve="setException" />
                                            <node concept="37vLTw" id="40ot3U3ePYM" role="37wK5m">
                                              <ref role="3cqZAo" node="40ot3U3ePYx" resolve="e" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="40ot3U3ePYN" role="1zxBo7">
                                <node concept="3cpWs8" id="40ot3U3ePYO" role="3cqZAp">
                                  <node concept="3cpWsn" id="40ot3U3ePYP" role="3cpWs9">
                                    <property role="TrG5h" value="result" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="40ot3U3ePYQ" role="1tU5fm">
                                      <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                                    </node>
                                    <node concept="2OqwBi" id="40ot3U3ePYR" role="33vP2m">
                                      <node concept="37vLTw" id="40ot3U3ePYS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="40ot3U3ePY3" resolve="future" />
                                      </node>
                                      <node concept="liA8E" id="40ot3U3ePYT" role="2OqNvi">
                                        <ref role="37wK5l" to="5zyv:~Future.get()" resolve="get" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="40ot3U3ePYU" role="3cqZAp">
                                  <node concept="3cpWsn" id="40ot3U3ePYV" role="3cpWs9">
                                    <property role="TrG5h" value="previewFiles" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="40ot3U3ePYW" role="1tU5fm">
                                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                      <node concept="3uibUv" id="40ot3U3ePYX" role="11_B2D">
                                        <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="40ot3U3ePYY" role="33vP2m">
                                      <node concept="2ShNRf" id="40ot3U3ePYZ" role="2Oq$k0">
                                        <node concept="1pGfFk" id="40ot3U3ePZ0" role="2ShVmc">
                                          <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                                          <node concept="2OqwBi" id="40ot3U3ePZ1" role="37wK5m">
                                            <node concept="37vLTw" id="40ot3U3ePZ2" role="2Oq$k0">
                                              <ref role="3cqZAo" node="40ot3U3ePWD" resolve="mpsProject" />
                                            </node>
                                            <node concept="liA8E" id="40ot3U3ePZ3" role="2OqNvi">
                                              <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="40ot3U3ePZ4" role="2OqNvi">
                                        <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                                        <node concept="2ShNRf" id="40ot3U3ePZ5" role="37wK5m">
                                          <node concept="YeOm9" id="40ot3U3ePZ6" role="2ShVmc">
                                            <node concept="1Y3b0j" id="40ot3U3ePZ7" role="YeSDq">
                                              <property role="2bfB8j" value="true" />
                                              <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                              <node concept="3Tm1VV" id="40ot3U3ePZ8" role="1B3o_S" />
                                              <node concept="3clFb_" id="40ot3U3ePZ9" role="jymVt">
                                                <property role="1EzhhJ" value="false" />
                                                <property role="TrG5h" value="compute" />
                                                <property role="DiZV1" value="false" />
                                                <property role="od$2w" value="false" />
                                                <node concept="3Tm1VV" id="40ot3U3ePZa" role="1B3o_S" />
                                                <node concept="3uibUv" id="40ot3U3ePZb" role="3clF45">
                                                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                                  <node concept="3uibUv" id="40ot3U3ePZc" role="11_B2D">
                                                    <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                  </node>
                                                </node>
                                                <node concept="3clFbS" id="40ot3U3ePZd" role="3clF47">
                                                  <node concept="3cpWs8" id="40ot3U3ePZe" role="3cqZAp">
                                                    <node concept="3cpWsn" id="40ot3U3ePZf" role="3cpWs9">
                                                      <property role="TrG5h" value="rv" />
                                                      <node concept="3uibUv" id="40ot3U3ePZg" role="1tU5fm">
                                                        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                                                        <node concept="3uibUv" id="40ot3U3ePZh" role="11_B2D">
                                                          <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                        </node>
                                                      </node>
                                                      <node concept="2ShNRf" id="40ot3U3ePZi" role="33vP2m">
                                                        <node concept="1pGfFk" id="40ot3U3ePZj" role="2ShVmc">
                                                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                                                          <node concept="3uibUv" id="40ot3U3ePZk" role="1pMfVU">
                                                            <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="2Gpval" id="40ot3U3ePZl" role="3cqZAp">
                                                    <node concept="2GrKxI" id="40ot3U3ePZm" role="2Gsz3X">
                                                      <property role="TrG5h" value="tgr" />
                                                    </node>
                                                    <node concept="3clFbS" id="40ot3U3ePZn" role="2LFqv$">
                                                      <node concept="3SKdUt" id="40ot3U3ePZo" role="3cqZAp">
                                                        <node concept="1PaTwC" id="40ot3U3ePZp" role="1aUNEU">
                                                          <node concept="3oM_SD" id="40ot3U3ePZq" role="1PaTwD">
                                                            <property role="3oM_SC" value="XXX" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZr" role="1PaTwD">
                                                            <property role="3oM_SC" value="don't" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZs" role="1PaTwD">
                                                            <property role="3oM_SC" value="see" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZt" role="1PaTwD">
                                                            <property role="3oM_SC" value="too" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZu" role="1PaTwD">
                                                            <property role="3oM_SC" value="much" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZv" role="1PaTwD">
                                                            <property role="3oM_SC" value="value" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZw" role="1PaTwD">
                                                            <property role="3oM_SC" value="in" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZx" role="1PaTwD">
                                                            <property role="3oM_SC" value="modelName," />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZy" role="1PaTwD">
                                                            <property role="3oM_SC" value="shall" />
                                                          </node>
                                                          <node concept="3oM_SD" id="40ot3U3ePZz" role="1PaTwD">
                                                            <property role="3oM_SC" value="drop?" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="40ot3U3ePZ$" role="3cqZAp">
                                                        <node concept="3cpWsn" id="40ot3U3ePZ_" role="3cpWs9">
                                                          <property role="TrG5h" value="modelName" />
                                                          <node concept="17QB3L" id="40ot3U3ePZA" role="1tU5fm" />
                                                          <node concept="2YIFZM" id="40ot3U3ePZB" role="33vP2m">
                                                            <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String)" resolve="compactNamespace" />
                                                            <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                                            <node concept="2OqwBi" id="40ot3U3ePZC" role="37wK5m">
                                                              <node concept="2OqwBi" id="40ot3U3ePZD" role="2Oq$k0">
                                                                <node concept="2GrUjf" id="40ot3U3ePZE" role="2Oq$k0">
                                                                  <ref role="2Gs0qQ" node="40ot3U3ePZm" resolve="tgr" />
                                                                </node>
                                                                <node concept="liA8E" id="40ot3U3ePZF" role="2OqNvi">
                                                                  <ref role="37wK5l" to="tpcq:2Op6w9TzkM3" resolve="getModel" />
                                                                </node>
                                                              </node>
                                                              <node concept="liA8E" id="40ot3U3ePZG" role="2OqNvi">
                                                                <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="40ot3U3ePZH" role="3cqZAp">
                                                        <node concept="3cpWsn" id="40ot3U3ePZI" role="3cpWs9">
                                                          <property role="TrG5h" value="repo" />
                                                          <property role="3TUv4t" value="true" />
                                                          <node concept="3uibUv" id="40ot3U3ePZJ" role="1tU5fm">
                                                            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                                                          </node>
                                                          <node concept="2OqwBi" id="40ot3U3ePZK" role="33vP2m">
                                                            <node concept="37vLTw" id="40ot3U3ePZL" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="40ot3U3ePWD" resolve="mpsProject" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3ePZM" role="2OqNvi">
                                                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="40ot3U3ePZN" role="3cqZAp">
                                                        <node concept="3cpWsn" id="40ot3U3ePZO" role="3cpWs9">
                                                          <property role="TrG5h" value="cn" />
                                                          <node concept="3Tqbb2" id="40ot3U3ePZP" role="1tU5fm" />
                                                          <node concept="3K4zz7" id="40ot3U3ePZQ" role="33vP2m">
                                                            <node concept="2OqwBi" id="40ot3U3ePZR" role="3K4GZi">
                                                              <node concept="37vLTw" id="40ot3U3ePZS" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="40ot3U3ePX3" resolve="contextNode" />
                                                              </node>
                                                              <node concept="liA8E" id="40ot3U3ePZT" role="2OqNvi">
                                                                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                                <node concept="37vLTw" id="40ot3U3ePZU" role="37wK5m">
                                                                  <ref role="3cqZAo" node="40ot3U3ePZI" resolve="repo" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="10Nm6u" id="40ot3U3ePZV" role="3K4E3e" />
                                                            <node concept="3clFbC" id="40ot3U3ePZW" role="3K4Cdx">
                                                              <node concept="10Nm6u" id="40ot3U3ePZX" role="3uHU7w" />
                                                              <node concept="37vLTw" id="40ot3U3ePZY" role="3uHU7B">
                                                                <ref role="3cqZAo" node="40ot3U3ePX3" resolve="contextNode" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs8" id="40ot3U3ePZZ" role="3cqZAp">
                                                        <node concept="3cpWsn" id="40ot3U3eQ00" role="3cpWs9">
                                                          <property role="TrG5h" value="ancestors" />
                                                          <node concept="2I9FWS" id="40ot3U3eQ01" role="1tU5fm" />
                                                          <node concept="3K4zz7" id="40ot3U3eQ02" role="33vP2m">
                                                            <node concept="2ShNRf" id="40ot3U3eQ03" role="3K4E3e">
                                                              <node concept="2T8Vx0" id="40ot3U3eQ04" role="2ShVmc">
                                                                <node concept="2I9FWS" id="40ot3U3eQ05" role="2T96Bj" />
                                                              </node>
                                                            </node>
                                                            <node concept="3clFbC" id="40ot3U3eQ06" role="3K4Cdx">
                                                              <node concept="10Nm6u" id="40ot3U3eQ07" role="3uHU7w" />
                                                              <node concept="37vLTw" id="40ot3U3eQ08" role="3uHU7B">
                                                                <ref role="3cqZAo" node="40ot3U3ePZO" resolve="cn" />
                                                              </node>
                                                            </node>
                                                            <node concept="2OqwBi" id="40ot3U3eQ09" role="3K4GZi">
                                                              <node concept="37vLTw" id="40ot3U3eQ0a" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="40ot3U3ePZO" resolve="cn" />
                                                              </node>
                                                              <node concept="z$bX8" id="40ot3U3eQ0b" role="2OqNvi">
                                                                <node concept="1xIGOp" id="40ot3U3eQ0c" role="1xVPHs" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="1DcWWT" id="40ot3U3eQ0d" role="3cqZAp">
                                                        <node concept="3clFbS" id="40ot3U3eQ0e" role="2LFqv$">
                                                          <node concept="3clFbJ" id="40ot3U3eQ0f" role="3cqZAp">
                                                            <node concept="3clFbS" id="40ot3U3eQ0g" role="3clFbx">
                                                              <node concept="3cpWs8" id="40ot3U3eQ0h" role="3cqZAp">
                                                                <node concept="3cpWsn" id="40ot3U3eQ0i" role="3cpWs9">
                                                                  <property role="TrG5h" value="originalStart" />
                                                                  <node concept="3uibUv" id="40ot3U3eQ0j" role="1tU5fm">
                                                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                                  </node>
                                                                  <node concept="2YIFZM" id="40ot3U3eQ0k" role="33vP2m">
                                                                    <ref role="37wK5l" to="fwk:~TracingUtil.getInputNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="getInputNode" />
                                                                    <ref role="1Pybhc" to="fwk:~TracingUtil" resolve="TracingUtil" />
                                                                    <node concept="2OqwBi" id="40ot3U3eQ0l" role="37wK5m">
                                                                      <node concept="37vLTw" id="40ot3U3eQ0m" role="2Oq$k0">
                                                                        <ref role="3cqZAo" node="40ot3U3eQ0K" resolve="tu" />
                                                                      </node>
                                                                      <node concept="liA8E" id="40ot3U3eQ0n" role="2OqNvi">
                                                                        <ref role="37wK5l" to="ao3:~TextUnit.getStartNode()" resolve="getStartNode" />
                                                                      </node>
                                                                    </node>
                                                                    <node concept="37vLTw" id="40ot3U3eQ0o" role="37wK5m">
                                                                      <ref role="3cqZAo" node="40ot3U3ePZI" resolve="repo" />
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                              <node concept="3clFbJ" id="40ot3U3eQ0p" role="3cqZAp">
                                                                <node concept="3clFbS" id="40ot3U3eQ0q" role="3clFbx">
                                                                  <node concept="3N13vt" id="40ot3U3eQ0r" role="3cqZAp" />
                                                                </node>
                                                                <node concept="1Wc70l" id="40ot3U3eQ0s" role="3clFbw">
                                                                  <node concept="3fqX7Q" id="40ot3U3eQ0t" role="3uHU7w">
                                                                    <node concept="2OqwBi" id="40ot3U3eQ0u" role="3fr31v">
                                                                      <node concept="37vLTw" id="40ot3U3eQ0v" role="2Oq$k0">
                                                                        <ref role="3cqZAo" node="40ot3U3eQ00" resolve="ancestors" />
                                                                      </node>
                                                                      <node concept="3JPx81" id="40ot3U3eQ0w" role="2OqNvi">
                                                                        <node concept="37vLTw" id="40ot3U3eQ0x" role="25WWJ7">
                                                                          <ref role="3cqZAo" node="40ot3U3eQ0i" resolve="originalStart" />
                                                                        </node>
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                  <node concept="3y3z36" id="40ot3U3eQ0y" role="3uHU7B">
                                                                    <node concept="37vLTw" id="40ot3U3eQ0z" role="3uHU7B">
                                                                      <ref role="3cqZAo" node="40ot3U3eQ0i" resolve="originalStart" />
                                                                    </node>
                                                                    <node concept="10Nm6u" id="40ot3U3eQ0$" role="3uHU7w" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="3y3z36" id="40ot3U3eQ0_" role="3clFbw">
                                                              <node concept="10Nm6u" id="40ot3U3eQ0A" role="3uHU7w" />
                                                              <node concept="37vLTw" id="40ot3U3eQ0B" role="3uHU7B">
                                                                <ref role="3cqZAo" node="40ot3U3ePZO" resolve="cn" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3clFbF" id="40ot3U3eQ0C" role="3cqZAp">
                                                            <node concept="2OqwBi" id="40ot3U3eQ0D" role="3clFbG">
                                                              <node concept="37vLTw" id="40ot3U3eQ0E" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="40ot3U3ePZf" resolve="rv" />
                                                              </node>
                                                              <node concept="liA8E" id="40ot3U3eQ0F" role="2OqNvi">
                                                                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                                                <node concept="2ShNRf" id="40ot3U3eQ0G" role="37wK5m">
                                                                  <node concept="1pGfFk" id="40ot3U3eQ0H" role="2ShVmc">
                                                                    <ref role="37wK5l" to="bcn8:7G8hLbKvGDI" resolve="TextPreviewFile" />
                                                                    <node concept="37vLTw" id="40ot3U3eQ0I" role="37wK5m">
                                                                      <ref role="3cqZAo" node="40ot3U3eQ0K" resolve="tu" />
                                                                    </node>
                                                                    <node concept="37vLTw" id="40ot3U3eQ0J" role="37wK5m">
                                                                      <ref role="3cqZAo" node="40ot3U3ePZ_" resolve="modelName" />
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3cpWsn" id="40ot3U3eQ0K" role="1Duv9x">
                                                          <property role="TrG5h" value="tu" />
                                                          <node concept="3uibUv" id="40ot3U3eQ0L" role="1tU5fm">
                                                            <ref role="3uigEE" to="ao3:~TextUnit" resolve="TextUnit" />
                                                          </node>
                                                        </node>
                                                        <node concept="2OqwBi" id="40ot3U3eQ0M" role="1DdaDG">
                                                          <node concept="2OqwBi" id="40ot3U3eQ0N" role="2Oq$k0">
                                                            <node concept="2GrUjf" id="40ot3U3eQ0O" role="2Oq$k0">
                                                              <ref role="2Gs0qQ" node="40ot3U3ePZm" resolve="tgr" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3eQ0P" role="2OqNvi">
                                                              <ref role="37wK5l" to="tpcq:2Op6w9TzkMb" resolve="getTextGenResult" />
                                                            </node>
                                                          </node>
                                                          <node concept="liA8E" id="40ot3U3eQ0Q" role="2OqNvi">
                                                            <ref role="37wK5l" to="ao3:~TextGenResult.getUnits()" resolve="getUnits" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2OqwBi" id="40ot3U3eQ0R" role="2GsD0m">
                                                      <node concept="2OqwBi" id="40ot3U3eQ0S" role="2Oq$k0">
                                                        <node concept="37vLTw" id="40ot3U3eQ0T" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3ePYP" resolve="result" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ0U" role="2OqNvi">
                                                          <ref role="37wK5l" to="i9so:17I1R__cQ6W" resolve="output" />
                                                        </node>
                                                      </node>
                                                      <node concept="UnYns" id="40ot3U3eQ0V" role="2OqNvi">
                                                        <node concept="3uibUv" id="40ot3U3eQ0W" role="UnYnz">
                                                          <ref role="3uigEE" to="tpcq:2Op6w9TzkLg" resolve="TextGenOutcomeResource" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3cpWs6" id="40ot3U3eQ0X" role="3cqZAp">
                                                    <node concept="37vLTw" id="40ot3U3eQ0Y" role="3cqZAk">
                                                      <ref role="3cqZAo" node="40ot3U3ePZf" resolve="rv" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3uibUv" id="40ot3U3eQ0Z" role="2Ghqu4">
                                                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                                <node concept="3uibUv" id="40ot3U3eQ10" role="11_B2D">
                                                  <ref role="3uigEE" to="bcn8:9D0Ba05uJX" resolve="TextPreviewFile" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="40ot3U3eQ11" role="3cqZAp" />
                                <node concept="3clFbF" id="40ot3U3eQ12" role="3cqZAp">
                                  <node concept="2OqwBi" id="40ot3U3eQ13" role="3clFbG">
                                    <node concept="2YIFZM" id="40ot3U3eQ14" role="2Oq$k0">
                                      <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                      <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                    </node>
                                    <node concept="liA8E" id="40ot3U3eQ15" role="2OqNvi">
                                      <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="2ShNRf" id="40ot3U3eQ16" role="37wK5m">
                                        <node concept="YeOm9" id="40ot3U3eQ17" role="2ShVmc">
                                          <node concept="1Y3b0j" id="40ot3U3eQ18" role="YeSDq">
                                            <property role="2bfB8j" value="true" />
                                            <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                            <node concept="3Tm1VV" id="40ot3U3eQ19" role="1B3o_S" />
                                            <node concept="3clFb_" id="40ot3U3eQ1a" role="jymVt">
                                              <property role="1EzhhJ" value="false" />
                                              <property role="TrG5h" value="run" />
                                              <property role="DiZV1" value="false" />
                                              <property role="od$2w" value="false" />
                                              <node concept="3Tm1VV" id="40ot3U3eQ1b" role="1B3o_S" />
                                              <node concept="3cqZAl" id="40ot3U3eQ1c" role="3clF45" />
                                              <node concept="3clFbS" id="40ot3U3eQ1d" role="3clF47">
                                                <node concept="3clFbJ" id="40ot3U3eQ1e" role="3cqZAp">
                                                  <node concept="3clFbS" id="40ot3U3eQ1f" role="3clFbx">
                                                    <node concept="3cpWs8" id="40ot3U3eQ1g" role="3cqZAp">
                                                      <node concept="3cpWsn" id="40ot3U3eQ1h" role="3cpWs9">
                                                        <property role="TrG5h" value="message" />
                                                        <node concept="3uibUv" id="40ot3U3eQ1i" role="1tU5fm">
                                                          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                                                        </node>
                                                        <node concept="2ShNRf" id="40ot3U3eQ1j" role="33vP2m">
                                                          <node concept="1pGfFk" id="40ot3U3eQ1k" role="2ShVmc">
                                                            <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="40ot3U3eQ1l" role="3cqZAp">
                                                      <node concept="2OqwBi" id="40ot3U3eQ1m" role="3clFbG">
                                                        <node concept="37vLTw" id="40ot3U3eQ1n" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ1o" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                          <node concept="Xl_RD" id="40ot3U3eQ1p" role="37wK5m">
                                                            <property role="Xl_RC" value="Model processed:" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="40ot3U3eQ1q" role="3cqZAp">
                                                      <node concept="2OqwBi" id="40ot3U3eQ1r" role="3clFbG">
                                                        <node concept="37vLTw" id="40ot3U3eQ1s" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ1t" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                                                          <node concept="37vLTw" id="40ot3U3eQ1u" role="37wK5m">
                                                            <ref role="3cqZAo" node="40ot3U3ePXX" resolve="model2generateRef" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="40ot3U3eQ1v" role="3cqZAp">
                                                      <node concept="2OqwBi" id="40ot3U3eQ1w" role="3clFbG">
                                                        <node concept="37vLTw" id="40ot3U3eQ1x" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ1y" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                          <node concept="Xl_RD" id="40ot3U3eQ1z" role="37wK5m">
                                                            <property role="Xl_RC" value="\n" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbJ" id="40ot3U3eQ1$" role="3cqZAp">
                                                      <node concept="3clFbS" id="40ot3U3eQ1_" role="3clFbx">
                                                        <node concept="3clFbF" id="40ot3U3eQ1A" role="3cqZAp">
                                                          <node concept="2OqwBi" id="40ot3U3eQ1B" role="3clFbG">
                                                            <node concept="37vLTw" id="40ot3U3eQ1C" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3eQ1D" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="40ot3U3eQ1E" role="37wK5m">
                                                                <property role="Xl_RC" value="Context node:" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbF" id="40ot3U3eQ1F" role="3cqZAp">
                                                          <node concept="2OqwBi" id="40ot3U3eQ1G" role="3clFbG">
                                                            <node concept="37vLTw" id="40ot3U3eQ1H" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3eQ1I" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                                                              <node concept="37vLTw" id="40ot3U3eQ1J" role="37wK5m">
                                                                <ref role="3cqZAo" node="40ot3U3ePX3" resolve="contextNode" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbF" id="40ot3U3eQ1K" role="3cqZAp">
                                                          <node concept="2OqwBi" id="40ot3U3eQ1L" role="3clFbG">
                                                            <node concept="37vLTw" id="40ot3U3eQ1M" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3eQ1N" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="40ot3U3eQ1O" role="37wK5m">
                                                                <property role="Xl_RC" value="\n" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3y3z36" id="40ot3U3eQ1P" role="3clFbw">
                                                        <node concept="10Nm6u" id="40ot3U3eQ1Q" role="3uHU7w" />
                                                        <node concept="37vLTw" id="40ot3U3eQ1R" role="3uHU7B">
                                                          <ref role="3cqZAo" node="40ot3U3ePX3" resolve="contextNode" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbJ" id="40ot3U3eQ1S" role="3cqZAp">
                                                      <node concept="3clFbS" id="40ot3U3eQ1T" role="3clFbx">
                                                        <node concept="3clFbF" id="40ot3U3eQ1U" role="3cqZAp">
                                                          <node concept="2OqwBi" id="40ot3U3eQ1V" role="3clFbG">
                                                            <node concept="37vLTw" id="40ot3U3eQ1W" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3eQ1X" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="40ot3U3eQ1Y" role="37wK5m">
                                                                <property role="Xl_RC" value="Text generation completed successfully\n" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="40ot3U3eQ1Z" role="3clFbw">
                                                        <node concept="37vLTw" id="40ot3U3eQ20" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3ePYP" resolve="result" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ21" role="2OqNvi">
                                                          <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                                                        </node>
                                                      </node>
                                                      <node concept="9aQIb" id="40ot3U3eQ22" role="9aQIa">
                                                        <node concept="3clFbS" id="40ot3U3eQ23" role="9aQI4">
                                                          <node concept="3clFbF" id="40ot3U3eQ24" role="3cqZAp">
                                                            <node concept="2OqwBi" id="40ot3U3eQ25" role="3clFbG">
                                                              <node concept="37vLTw" id="40ot3U3eQ26" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                              </node>
                                                              <node concept="liA8E" id="40ot3U3eQ27" role="2OqNvi">
                                                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                                <node concept="Xl_RD" id="40ot3U3eQ28" role="37wK5m">
                                                                  <property role="Xl_RC" value="Text generation completed with errors\n" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbJ" id="40ot3U3eQ29" role="3cqZAp">
                                                      <node concept="3clFbS" id="40ot3U3eQ2a" role="3clFbx">
                                                        <node concept="3clFbF" id="40ot3U3eQ2b" role="3cqZAp">
                                                          <node concept="2OqwBi" id="40ot3U3eQ2c" role="3clFbG">
                                                            <node concept="37vLTw" id="40ot3U3eQ2d" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                            </node>
                                                            <node concept="liA8E" id="40ot3U3eQ2e" role="2OqNvi">
                                                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                              <node concept="Xl_RD" id="40ot3U3eQ2f" role="37wK5m">
                                                                <property role="Xl_RC" value="None of generated text units reference context node" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3y3z36" id="40ot3U3eQ2g" role="3clFbw">
                                                        <node concept="37vLTw" id="40ot3U3eQ2h" role="3uHU7B">
                                                          <ref role="3cqZAo" node="40ot3U3ePX3" resolve="contextNode" />
                                                        </node>
                                                        <node concept="10Nm6u" id="40ot3U3eQ2i" role="3uHU7w" />
                                                      </node>
                                                      <node concept="9aQIb" id="40ot3U3eQ2j" role="9aQIa">
                                                        <node concept="3clFbS" id="40ot3U3eQ2k" role="9aQI4">
                                                          <node concept="3clFbF" id="40ot3U3eQ2l" role="3cqZAp">
                                                            <node concept="2OqwBi" id="40ot3U3eQ2m" role="3clFbG">
                                                              <node concept="37vLTw" id="40ot3U3eQ2n" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                              </node>
                                                              <node concept="liA8E" id="40ot3U3eQ2o" role="2OqNvi">
                                                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                                <node concept="Xl_RD" id="40ot3U3eQ2p" role="37wK5m">
                                                                  <property role="Xl_RC" value="There were no text units generated." />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="40ot3U3eQ2q" role="3cqZAp">
                                                      <node concept="2OqwBi" id="40ot3U3eQ2r" role="3clFbG">
                                                        <node concept="37vLTw" id="40ot3U3eQ2s" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3ePYV" resolve="previewFiles" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ2t" role="2OqNvi">
                                                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                                          <node concept="2ShNRf" id="40ot3U3eQ2u" role="37wK5m">
                                                            <node concept="1pGfFk" id="40ot3U3eQ2v" role="2ShVmc">
                                                              <ref role="37wK5l" to="bcn8:9D0Ba05uR_" resolve="TextPreviewFile" />
                                                              <node concept="Xl_RD" id="40ot3U3eQ2w" role="37wK5m">
                                                                <property role="Xl_RC" value="TextGen" />
                                                              </node>
                                                              <node concept="2OqwBi" id="40ot3U3eQ2x" role="37wK5m">
                                                                <node concept="37vLTw" id="40ot3U3eQ2y" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="40ot3U3eQ1h" resolve="message" />
                                                                </node>
                                                                <node concept="liA8E" id="40ot3U3eQ2z" role="2OqNvi">
                                                                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                                                                </node>
                                                              </node>
                                                              <node concept="2OqwBi" id="40ot3U3eQ2$" role="37wK5m">
                                                                <node concept="37vLTw" id="40ot3U3eQ2_" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="40ot3U3ePXX" resolve="model2generateRef" />
                                                                </node>
                                                                <node concept="liA8E" id="40ot3U3eQ2A" role="2OqNvi">
                                                                  <ref role="37wK5l" to="mhbf:~SModelReference.getModelName()" resolve="getModelName" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="40ot3U3eQ2B" role="3clFbw">
                                                    <node concept="37vLTw" id="40ot3U3eQ2C" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="40ot3U3ePYV" resolve="previewFiles" />
                                                    </node>
                                                    <node concept="liA8E" id="40ot3U3eQ2D" role="2OqNvi">
                                                      <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="40ot3U3eQ2E" role="3cqZAp">
                                                  <node concept="3cpWsn" id="40ot3U3eQ2F" role="3cpWs9">
                                                    <property role="TrG5h" value="fem" />
                                                    <node concept="3uibUv" id="40ot3U3eQ2G" role="1tU5fm">
                                                      <ref role="3uigEE" to="iwsx:~FileEditorManager" resolve="FileEditorManager" />
                                                    </node>
                                                    <node concept="2YIFZM" id="40ot3U3eQ2H" role="33vP2m">
                                                      <ref role="37wK5l" to="iwsx:~FileEditorManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                                      <ref role="1Pybhc" to="iwsx:~FileEditorManager" resolve="FileEditorManager" />
                                                      <node concept="37vLTw" id="40ot3U3eQ2I" role="37wK5m">
                                                        <ref role="3cqZAo" node="40ot3U3ePWJ" resolve="ideaProject" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="2Gpval" id="40ot3U3eQ2J" role="3cqZAp">
                                                  <node concept="2GrKxI" id="40ot3U3eQ2K" role="2Gsz3X">
                                                    <property role="TrG5h" value="f" />
                                                  </node>
                                                  <node concept="3clFbS" id="40ot3U3eQ2L" role="2LFqv$">
                                                    <node concept="3clFbF" id="40ot3U3eQ2M" role="3cqZAp">
                                                      <node concept="2OqwBi" id="40ot3U3eQ2N" role="3clFbG">
                                                        <node concept="37vLTw" id="40ot3U3eQ2O" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="40ot3U3eQ2F" resolve="fem" />
                                                        </node>
                                                        <node concept="liA8E" id="40ot3U3eQ2P" role="2OqNvi">
                                                          <ref role="37wK5l" to="iwsx:~FileEditorManager.openTextEditor(com.intellij.openapi.fileEditor.OpenFileDescriptor,boolean)" resolve="openTextEditor" />
                                                          <node concept="2ShNRf" id="40ot3U3eQ2Q" role="37wK5m">
                                                            <node concept="1pGfFk" id="40ot3U3eQ2R" role="2ShVmc">
                                                              <ref role="37wK5l" to="iwsx:~OpenFileDescriptor.&lt;init&gt;(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile)" resolve="OpenFileDescriptor" />
                                                              <node concept="37vLTw" id="40ot3U3eQ2S" role="37wK5m">
                                                                <ref role="3cqZAo" node="40ot3U3ePWJ" resolve="ideaProject" />
                                                              </node>
                                                              <node concept="2GrUjf" id="40ot3U3eQ2T" role="37wK5m">
                                                                <ref role="2Gs0qQ" node="40ot3U3eQ2K" resolve="f" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3clFbT" id="40ot3U3eQ2U" role="37wK5m">
                                                            <property role="3clFbU" value="true" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="37vLTw" id="40ot3U3eQ2V" role="2GsD0m">
                                                    <ref role="3cqZAo" node="40ot3U3ePYV" resolve="previewFiles" />
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
                                <node concept="3SKdUt" id="40ot3U3eQ2W" role="3cqZAp">
                                  <node concept="1PaTwC" id="40ot3U3eQ2X" role="1aUNEU">
                                    <node concept="3oM_SD" id="40ot3U3eQ2Y" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ2Z" role="1PaTwD">
                                      <property role="3oM_SC" value="update" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ30" role="1PaTwD">
                                      <property role="3oM_SC" value="tree" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ31" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ32" role="1PaTwD">
                                      <property role="3oM_SC" value="reveal" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ33" role="1PaTwD">
                                      <property role="3oM_SC" value="transient" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ34" role="1PaTwD">
                                      <property role="3oM_SC" value="models." />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ35" role="1PaTwD">
                                      <property role="3oM_SC" value="is" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ36" role="1PaTwD">
                                      <property role="3oM_SC" value="it" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ37" role="1PaTwD">
                                      <property role="3oM_SC" value="still" />
                                    </node>
                                    <node concept="3oM_SD" id="40ot3U3eQ38" role="1PaTwD">
                                      <property role="3oM_SC" value="necessary?" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="40ot3U3eQ39" role="3cqZAp">
                                  <node concept="3cpWsn" id="40ot3U3eQ3a" role="3cpWs9">
                                    <property role="TrG5h" value="pane" />
                                    <node concept="3uibUv" id="40ot3U3eQ3b" role="1tU5fm">
                                      <ref role="3uigEE" to="rvbb:~ProjectPane" resolve="ProjectPane" />
                                    </node>
                                    <node concept="2YIFZM" id="40ot3U3eQ3c" role="33vP2m">
                                      <ref role="37wK5l" to="rvbb:~ProjectPane.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                                      <ref role="1Pybhc" to="rvbb:~ProjectPane" resolve="ProjectPane" />
                                      <node concept="37vLTw" id="40ot3U3eQ3d" role="37wK5m">
                                        <ref role="3cqZAo" node="40ot3U3ePWD" resolve="mpsProject" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="40ot3U3eQ3e" role="3cqZAp">
                                  <node concept="3clFbS" id="40ot3U3eQ3f" role="3clFbx">
                                    <node concept="3clFbF" id="40ot3U3eQ3g" role="3cqZAp">
                                      <node concept="2OqwBi" id="40ot3U3eQ3h" role="3clFbG">
                                        <node concept="37vLTw" id="40ot3U3eQ3i" role="2Oq$k0">
                                          <ref role="3cqZAo" node="40ot3U3eQ3a" resolve="pane" />
                                        </node>
                                        <node concept="liA8E" id="40ot3U3eQ3j" role="2OqNvi">
                                          <ref role="37wK5l" to="rvbb:~ProjectPane.rebuild()" resolve="rebuild" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="40ot3U3eQ3k" role="3clFbw">
                                    <node concept="10Nm6u" id="40ot3U3eQ3l" role="3uHU7w" />
                                    <node concept="37vLTw" id="40ot3U3eQ3m" role="3uHU7B">
                                      <ref role="3cqZAo" node="40ot3U3eQ3a" resolve="pane" />
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
          <node concept="2OqwBi" id="40ot3U3eQ3n" role="3clFbw">
            <node concept="37vLTw" id="40ot3U3eQ3o" role="2Oq$k0">
              <ref role="3cqZAo" node="40ot3U3ePXi" resolve="makeService" />
            </node>
            <node concept="liA8E" id="40ot3U3eQ3p" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N63W" resolve="openNewSession" />
              <node concept="37vLTw" id="40ot3U3eQ3q" role="37wK5m">
                <ref role="3cqZAo" node="40ot3U3ePWV" resolve="session" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="40ot3U3eQ3r" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="40ot3U3eQ3s" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="40ot3U3eQ3t" role="1NuT2Z">
      <property role="TrG5h" value="cnode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
    </node>
    <node concept="1DS2jV" id="40ot3U3eQ3u" role="1NuT2Z">
      <property role="TrG5h" value="cmodel" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
      <node concept="1oajcY" id="40ot3U3eQ3v" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="40ot3U3eQ3w" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="2ScWuX" id="40ot3U3eQ3x" role="tmbBb">
      <node concept="3clFbS" id="40ot3U3eQ3y" role="2VODD2">
        <node concept="3clFbJ" id="40ot3U3eQ3z" role="3cqZAp">
          <node concept="3clFbS" id="40ot3U3eQ3$" role="3clFbx">
            <node concept="3cpWs6" id="40ot3U3eQ3_" role="3cqZAp">
              <node concept="3clFbT" id="40ot3U3eQ3A" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="40ot3U3eQ3B" role="3clFbw">
            <node concept="liA8E" id="40ot3U3eQ3C" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
            </node>
            <node concept="2OqwBi" id="40ot3U3eQ3D" role="2Oq$k0">
              <node concept="2OqwBi" id="40ot3U3eQ3E" role="2Oq$k0">
                <node concept="2WthIp" id="40ot3U3eQ3F" role="2Oq$k0" />
                <node concept="1DTwFV" id="40ot3U3eQ3G" role="2OqNvi">
                  <ref role="2WH_rO" node="40ot3U3ePVN" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="40ot3U3eQ3H" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="40ot3U3eQ3I" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="40ot3U3eQ3J" role="3cqZAp">
          <node concept="3cpWsn" id="40ot3U3eQ3K" role="3cpWs9">
            <property role="TrG5h" value="md" />
            <node concept="3uibUv" id="40ot3U3eQ3L" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="40ot3U3eQ3M" role="33vP2m">
              <node concept="2WthIp" id="40ot3U3eQ3N" role="2Oq$k0" />
              <node concept="2XshWL" id="40ot3U3eQ3O" role="2OqNvi">
                <ref role="2WH_rO" node="40ot3U3ePVP" resolve="modelToGenerate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3eG4OcTyKZY" role="3cqZAp">
          <node concept="3cpWsn" id="3eG4OcTyKZZ" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="3eG4OcTyKhL" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="3eG4OcTyL00" role="33vP2m">
              <node concept="37vLTw" id="3eG4OcTyL01" role="2Oq$k0">
                <ref role="3cqZAo" node="40ot3U3eQ3K" resolve="md" />
              </node>
              <node concept="liA8E" id="3eG4OcTyL02" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Oy9wO569DN" role="3cqZAp">
          <node concept="3cpWsn" id="1Oy9wO569DO" role="3cpWs9">
            <property role="TrG5h" value="docFacet" />
            <node concept="3uibUv" id="1Oy9wO569DP" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
            </node>
            <node concept="2OqwBi" id="1Oy9wO569DQ" role="33vP2m">
              <node concept="37vLTw" id="1Oy9wO569DR" role="2Oq$k0">
                <ref role="3cqZAo" node="3eG4OcTyKZZ" resolve="module" />
              </node>
              <node concept="liA8E" id="1Oy9wO569DS" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getFacetOfType(java.lang.String)" resolve="getFacetOfType" />
                <node concept="Xl_RD" id="1Oy9wO569DT" role="37wK5m">
                  <property role="Xl_RC" value="documentation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Oy9wO569DU" role="3cqZAp">
          <node concept="3clFbS" id="1Oy9wO569DV" role="3clFbx">
            <node concept="3cpWs6" id="1Oy9wO569DW" role="3cqZAp">
              <node concept="3clFbT" id="1Oy9wO569DX" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1Oy9wO569DY" role="3clFbw">
            <node concept="10Nm6u" id="1Oy9wO569DZ" role="3uHU7w" />
            <node concept="37vLTw" id="1Oy9wO569E0" role="3uHU7B">
              <ref role="3cqZAo" node="1Oy9wO569DO" resolve="docFacet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Oy9wO57yPH" role="3cqZAp">
          <node concept="1Wc70l" id="1Oy9wO57yPJ" role="3clFbG">
            <node concept="2YIFZM" id="1Oy9wO57yPK" role="3uHU7w">
              <ref role="37wK5l" to="ap4t:~GenerationFacade.canGenerate(org.jetbrains.mps.openapi.model.SModel)" resolve="canGenerate" />
              <ref role="1Pybhc" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
              <node concept="37vLTw" id="1Oy9wO57yPL" role="37wK5m">
                <ref role="3cqZAo" node="40ot3U3eQ3K" resolve="md" />
              </node>
            </node>
            <node concept="3y3z36" id="1Oy9wO57yPM" role="3uHU7B">
              <node concept="37vLTw" id="1Oy9wO57yPN" role="3uHU7B">
                <ref role="3cqZAo" node="40ot3U3eQ3K" resolve="md" />
              </node>
              <node concept="10Nm6u" id="1Oy9wO57yPO" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

