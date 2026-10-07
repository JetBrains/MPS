<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cea6effe-afb5-4a30-8eb3-bbd8e6e10770(jetbrains.mps.editor.spellcheck)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="n70j" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.checking(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="kpve" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.message(MPS.Editor/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="j9ng" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.util(MPS.Platform/)" />
    <import index="ahgl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor.checkers(MPS.Editor/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="v6uv" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:com.intellij.spellchecker(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="vjqy" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:org.languagetool(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="8vcu" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:com.intellij.grazie.jlanguage(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="rqnh" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:com.intellij.grazie.utils(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="m81" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:com.intellij.grazie.detection(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="44q2" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:com.intellij.grazie(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="wsw7" ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)" />
    <import index="1ige" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:ai.grazie.detector(jetbrains.mps.spellchecker.idea.stubs/)" />
    <import index="neu9" ref="9979803b-18d3-440b-8a74-99cec41fc78e/java:ai.grazie.nlp.langs(jetbrains.mps.spellchecker.idea.stubs/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
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
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1">
        <child id="1227019158144" name="toStringFunction" index="2K2Cet" />
      </concept>
      <concept id="1227013049127" name="jetbrains.mps.lang.plugin.structure.AddStatement" flags="nn" index="2JFkCU">
        <child id="1227013166210" name="item" index="2JFLmv" />
      </concept>
      <concept id="1227019068586" name="jetbrains.mps.lang.plugin.structure.ToStringConceptFunction" flags="in" index="2K2imR" />
      <concept id="1239975356883" name="jetbrains.mps.lang.plugin.structure.UpdateGroupBlock" flags="ng" index="2OiAzN">
        <child id="1239975488603" name="updateFunction" index="2Oj6PV" />
      </concept>
      <concept id="1239975436002" name="jetbrains.mps.lang.plugin.structure.UpdateGroupFunction" flags="in" index="2OiTZ2" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1172058436953" name="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall" flags="nn" index="3$87h9" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
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
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA" />
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
      <concept id="5085607816306582224" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentTextElement" flags="ng" index="1Vtdud">
        <child id="5085607816306582225" name="tag" index="1Vtduc" />
      </concept>
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="mQZQCk9i7l">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBy" id="mQZQCk9j7A">
    <property role="TrG5h" value="SpellCheck" />
    <node concept="2BZ0e9" id="mQZQCk9jh0" role="2uRRBA">
      <property role="TrG5h" value="mySpellChecker" />
      <node concept="3Tm6S6" id="mQZQCk9jh1" role="1B3o_S" />
      <node concept="3uibUv" id="mQZQCk9jnn" role="1tU5fm">
        <ref role="3uigEE" to="n70j:~EditorChecker" resolve="EditorChecker" />
      </node>
    </node>
    <node concept="2uRRBT" id="mQZQCk9j7B" role="2uRRB$">
      <node concept="3clFbS" id="mQZQCk9j7C" role="2VODD2">
        <node concept="3clFbF" id="mQZQCk9jtR" role="3cqZAp">
          <node concept="37vLTI" id="mQZQCk9jGg" role="3clFbG">
            <node concept="2ShNRf" id="mQZQCkcq5G" role="37vLTx">
              <node concept="1pGfFk" id="mQZQCkcE7U" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="1OIlcCDabPs" resolve="CommentSpellChecker" />
                <node concept="1KvdUw" id="mQZQCkcEa$" role="37wK5m" />
              </node>
            </node>
            <node concept="2OqwBi" id="mQZQCk9jtL" role="37vLTJ">
              <node concept="2WthIp" id="mQZQCk9jtO" role="2Oq$k0" />
              <node concept="2BZ7hE" id="mQZQCk9jtQ" role="2OqNvi">
                <ref role="2WH_rO" node="mQZQCk9jh0" resolve="mySpellChecker" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mQZQCk9jVp" role="3cqZAp">
          <node concept="2OqwBi" id="mQZQCk9pnb" role="3clFbG">
            <node concept="liA8E" id="mQZQCk9q0y" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.addChecker(jetbrains.mps.nodeEditor.checking.EditorChecker)" resolve="addChecker" />
              <node concept="2OqwBi" id="mQZQCk9q1b" role="37wK5m">
                <node concept="2WthIp" id="mQZQCk9q1e" role="2Oq$k0" />
                <node concept="2BZ7hE" id="mQZQCk9q1g" role="2OqNvi">
                  <ref role="2WH_rO" node="mQZQCk9jh0" resolve="mySpellChecker" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="6Z07o0_VA60" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~Highlighter.getInstance(jetbrains.mps.project.MPSProject)" resolve="getInstance" />
              <ref role="1Pybhc" to="exr9:~Highlighter" resolve="Highlighter" />
              <node concept="1KvdUw" id="6Z07o0_VA61" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="mQZQCk9q4T" role="2uRRB_">
      <node concept="3clFbS" id="mQZQCk9q4U" role="2VODD2">
        <node concept="3clFbF" id="mQZQCk9qn2" role="3cqZAp">
          <node concept="2OqwBi" id="mQZQCk9qCO" role="3clFbG">
            <node concept="liA8E" id="mQZQCk9qFy" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.removeChecker(jetbrains.mps.nodeEditor.checking.EditorChecker)" resolve="removeChecker" />
              <node concept="2OqwBi" id="mQZQCk9qGb" role="37wK5m">
                <node concept="2WthIp" id="mQZQCk9qGe" role="2Oq$k0" />
                <node concept="2BZ7hE" id="mQZQCk9qGg" role="2OqNvi">
                  <ref role="2WH_rO" node="mQZQCk9jh0" resolve="mySpellChecker" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="6Z07o0_V_SX" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~Highlighter.getInstance(jetbrains.mps.project.MPSProject)" resolve="getInstance" />
              <ref role="1Pybhc" to="exr9:~Highlighter" resolve="Highlighter" />
              <node concept="1KvdUw" id="6Z07o0_V_UF" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mQZQCk9qPp" role="3cqZAp">
          <node concept="37vLTI" id="mQZQCk9r4O" role="3clFbG">
            <node concept="10Nm6u" id="mQZQCk9r5u" role="37vLTx" />
            <node concept="2OqwBi" id="mQZQCk9qPj" role="37vLTJ">
              <node concept="2WthIp" id="mQZQCk9qPm" role="2Oq$k0" />
              <node concept="2BZ7hE" id="mQZQCk9qPo" role="2OqNvi">
                <ref role="2WH_rO" node="mQZQCk9jh0" resolve="mySpellChecker" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="mQZQCk9tGh">
    <property role="TrG5h" value="WordsToDictionary" />
    <node concept="tT9cl" id="mQZQCk9tGj" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
      <ref role="2f8Tey" to="ekwn:1xsN4xJX8VK" resolve="new" />
    </node>
    <node concept="2OiAzN" id="mQZQCk9BCf" role="ftER_">
      <node concept="2OiTZ2" id="mQZQCk9BCi" role="2Oj6PV">
        <node concept="3clFbS" id="mQZQCk9BCl" role="2VODD2">
          <node concept="3cpWs8" id="mQZQCkbJ26" role="3cqZAp">
            <node concept="3cpWsn" id="mQZQCkbJ27" role="3cpWs9">
              <property role="TrG5h" value="cell" />
              <node concept="3uibUv" id="mQZQCkbJ0g" role="1tU5fm">
                <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
              </node>
              <node concept="2OqwBi" id="mQZQCkbJ28" role="33vP2m">
                <node concept="tl45R" id="mQZQCkbJ29" role="2Oq$k0" />
                <node concept="liA8E" id="mQZQCkbJ2a" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                  <node concept="10M0yZ" id="mQZQCkbJ2b" role="37wK5m">
                    <ref role="3cqZAo" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
                    <ref role="1PxDUh" to="k3nr:~MPSEditorDataKeys" resolve="MPSEditorDataKeys" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="mQZQCkbJeH" role="3cqZAp">
            <node concept="3clFbS" id="mQZQCkbJeJ" role="3clFbx">
              <node concept="3cpWs6" id="mQZQCkbJvu" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="mQZQCkbJnv" role="3clFbw">
              <node concept="10Nm6u" id="mQZQCkbJqG" role="3uHU7w" />
              <node concept="37vLTw" id="mQZQCkbJgf" role="3uHU7B">
                <ref role="3cqZAo" node="mQZQCkbJ27" resolve="cell" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="mQZQCkdp52" role="3cqZAp">
            <node concept="1PaTwC" id="mQZQCkdp53" role="1aUNEU">
              <node concept="3oM_SD" id="mQZQCkdp57" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdpzN" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdp$2" role="1PaTwD">
                <property role="3oM_SC" value="suggest" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdp$v" role="1PaTwD">
                <property role="3oM_SC" value="more" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdp$J" role="1PaTwD">
                <property role="3oM_SC" value="than" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdp_s" role="1PaTwD">
                <property role="3oM_SC" value="limit" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdp_Q" role="1PaTwD">
                <property role="3oM_SC" value="words" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdp_X" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdpAc" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdpAg" role="1PaTwD">
                <property role="3oM_SC" value="overflow" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdpAI" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="mQZQCkdpAN" role="1PaTwD">
                <property role="3oM_SC" value="menu" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="mQZQCkdiRc" role="3cqZAp">
            <node concept="3cpWsn" id="mQZQCkdiRf" role="3cpWs9">
              <property role="TrG5h" value="limit" />
              <node concept="10Oyi0" id="mQZQCkdiRa" role="1tU5fm" />
              <node concept="3cmrfG" id="mQZQCkdk00" role="33vP2m">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="mQZQCkbJJf" role="3cqZAp">
            <node concept="3clFbS" id="mQZQCkbJJh" role="2LFqv$">
              <node concept="3clFbJ" id="mQZQCkdbWj" role="3cqZAp">
                <node concept="3clFbS" id="mQZQCkdbWl" role="3clFbx">
                  <node concept="3N13vt" id="mQZQCkdcyM" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="mQZQCkdbWF" role="3clFbw">
                  <node concept="2YIFZM" id="mQZQCkdbYs" role="3fr31v">
                    <ref role="37wK5l" node="5PtqdhJ4fda" resolve="isSpellcheckerMessage" />
                    <ref role="1Pybhc" node="1OIlcCD3ppP" resolve="CommentSpellChecker" />
                    <node concept="37vLTw" id="mQZQCkdcqk" role="37wK5m">
                      <ref role="3cqZAo" node="mQZQCkbJJi" resolve="m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="mQZQCkdcUZ" role="3cqZAp">
                <node concept="3cpWsn" id="mQZQCkdcV0" role="3cpWs9">
                  <property role="TrG5h" value="incorrectWords" />
                  <node concept="10Q1$e" id="mQZQCkdcRq" role="1tU5fm">
                    <node concept="17QB3L" id="mQZQCkdd4d" role="10Q1$1" />
                  </node>
                  <node concept="2YIFZM" id="mQZQCkdcV1" role="33vP2m">
                    <ref role="37wK5l" node="33z3Yy7kKa1" resolve="incorrectWords" />
                    <ref role="1Pybhc" node="1OIlcCD3ppP" resolve="CommentSpellChecker" />
                    <node concept="37vLTw" id="mQZQCkdcV2" role="37wK5m">
                      <ref role="3cqZAo" node="mQZQCkbJJi" resolve="m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="mQZQCkddhq" role="3cqZAp">
                <node concept="3clFbS" id="mQZQCkddhs" role="3clFbx">
                  <node concept="3N13vt" id="mQZQCkdgTL" role="3cqZAp" />
                </node>
                <node concept="22lmx$" id="mQZQCkddBf" role="3clFbw">
                  <node concept="3clFbC" id="mQZQCkdfll" role="3uHU7w">
                    <node concept="3cmrfG" id="mQZQCkdfYF" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="mQZQCkddI6" role="3uHU7B">
                      <node concept="37vLTw" id="mQZQCkddBY" role="2Oq$k0">
                        <ref role="3cqZAo" node="mQZQCkdcV0" resolve="incorrectWords" />
                      </node>
                      <node concept="1Rwk04" id="mQZQCkde0Y" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="mQZQCkddoX" role="3uHU7B">
                    <node concept="37vLTw" id="mQZQCkddje" role="3uHU7B">
                      <ref role="3cqZAo" node="mQZQCkdcV0" resolve="incorrectWords" />
                    </node>
                    <node concept="10Nm6u" id="mQZQCkddA_" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="mQZQCkdhh1" role="3cqZAp">
                <node concept="2GrKxI" id="mQZQCkdhh3" role="2Gsz3X">
                  <property role="TrG5h" value="w" />
                </node>
                <node concept="37vLTw" id="mQZQCkdhWW" role="2GsD0m">
                  <ref role="3cqZAo" node="mQZQCkdcV0" resolve="incorrectWords" />
                </node>
                <node concept="3clFbS" id="mQZQCkdhh7" role="2LFqv$">
                  <node concept="3clFbJ" id="mQZQCkdk4W" role="3cqZAp">
                    <node concept="3clFbS" id="mQZQCkdk4Y" role="3clFbx">
                      <node concept="3zACq4" id="mQZQCkdmg1" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="mQZQCkdmh3" role="3clFbw">
                      <node concept="3uO5VW" id="mQZQCkdlmw" role="3uHU7B">
                        <node concept="37vLTw" id="mQZQCkdlmy" role="2$L3a6">
                          <ref role="3cqZAo" node="mQZQCkdiRf" resolve="limit" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="mQZQCkdls$" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="2JFkCU" id="mQZQCkb9$K" role="3cqZAp">
                    <node concept="tCFHf" id="mQZQCkbKih" role="2JFLmv">
                      <ref role="tCJdB" node="mQZQCkb9_2" resolve="AddWordToDictionary" />
                      <node concept="2GrUjf" id="mQZQCkdi3o" role="2J__8u">
                        <ref role="2Gs0qQ" node="mQZQCkdhh3" resolve="w" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="mQZQCkdmpB" role="3cqZAp">
                <node concept="3clFbS" id="mQZQCkdmpD" role="3clFbx">
                  <node concept="3zACq4" id="mQZQCkdnSj" role="3cqZAp" />
                </node>
                <node concept="2dkUwp" id="mQZQCkdnHF" role="3clFbw">
                  <node concept="3cmrfG" id="mQZQCkdnI5" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="mQZQCkdmsv" role="3uHU7B">
                    <ref role="3cqZAo" node="mQZQCkdiRf" resolve="limit" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="mQZQCkbJJi" role="1Duv9x">
              <property role="TrG5h" value="m" />
              <node concept="3uibUv" id="mQZQCkdaDp" role="1tU5fm">
                <ref role="3uigEE" to="kpve:~SimpleEditorMessage" resolve="SimpleEditorMessage" />
              </node>
            </node>
            <node concept="2OqwBi" id="mQZQCkdanX" role="1DdaDG">
              <node concept="37vLTw" id="mQZQCkdagC" role="2Oq$k0">
                <ref role="3cqZAo" node="mQZQCkbJ27" resolve="cell" />
              </node>
              <node concept="liA8E" id="mQZQCkdavB" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getMessages()" resolve="getMessages" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="mQZQCkb9_2">
    <property role="TrG5h" value="AddWordToDictionary" />
    <property role="2uzpH1" value="Add Word to Dictionary" />
    <property role="1rBW0U" value="true" />
    <node concept="2JriF1" id="mQZQCkbsBf" role="2JrayB">
      <property role="TrG5h" value="word" />
      <node concept="3Tm6S6" id="mQZQCkbsBg" role="1B3o_S" />
      <node concept="17QB3L" id="mQZQCkbsFD" role="1tU5fm" />
      <node concept="2K2imR" id="mQZQCkbFjA" role="2K2Cet">
        <node concept="3clFbS" id="mQZQCkbFjB" role="2VODD2">
          <node concept="3SKdUt" id="mQZQCkbFxp" role="3cqZAp">
            <node concept="1PaTwC" id="mQZQCkbFxq" role="1aUNEU">
              <node concept="3oM_SD" id="mQZQCkbFy8" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFy4" role="1PaTwD">
                <property role="3oM_SC" value="some" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFye" role="1PaTwD">
                <property role="3oM_SC" value="stupid" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFym" role="1PaTwD">
                <property role="3oM_SC" value="checking" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFy$" role="1PaTwD">
                <property role="3oM_SC" value="rule" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFyA" role="1PaTwD">
                <property role="3oM_SC" value="requires" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFyK" role="1PaTwD">
                <property role="3oM_SC" value="toString" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFyU" role="1PaTwD">
                <property role="3oM_SC" value="function" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFzp" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFzr" role="1PaTwD">
                <property role="3oM_SC" value="StringType." />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFzC" role="1PaTwD">
                <property role="3oM_SC" value="Why?!" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="mQZQCkbFCl" role="3cqZAp">
            <node concept="1PaTwC" id="mQZQCkbFCm" role="1aUNEU">
              <node concept="3oM_SD" id="mQZQCkbFHc" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFHh" role="1PaTwD">
                <property role="3oM_SC" value="implementation" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFHF" role="1PaTwD">
                <property role="3oM_SC" value="copied" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFHP" role="1PaTwD">
                <property role="3oM_SC" value="from" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFHV" role="1PaTwD">
                <property role="3oM_SC" value="EditGivenNode" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFIa" role="1PaTwD">
                <property role="3oM_SC" value="action," />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFIj" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFIn" role="1PaTwD">
                <property role="3oM_SC" value="idea" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFIt" role="1PaTwD">
                <property role="3oM_SC" value="what's" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFI_" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="mQZQCkbFIE" role="1PaTwD">
                <property role="3oM_SC" value="purpose." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mQZQCkbFo5" role="3cqZAp">
            <node concept="Xl_RD" id="mQZQCkbFo4" role="3clFbG">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="mQZQCkb9_3" role="tncku">
      <node concept="3clFbS" id="mQZQCkb9_4" role="2VODD2">
        <node concept="3clFbF" id="mQZQCkd2as" role="3cqZAp">
          <node concept="2YIFZM" id="mQZQCkd2bD" role="3clFbG">
            <ref role="37wK5l" node="33z3Yy7mH$5" resolve="addToDictionary" />
            <ref role="1Pybhc" node="1OIlcCD3ppP" resolve="CommentSpellChecker" />
            <node concept="2OqwBi" id="mQZQCkd2tp" role="37wK5m">
              <node concept="2WthIp" id="mQZQCkd2ts" role="2Oq$k0" />
              <node concept="1DTwFV" id="mQZQCkd2tu" role="2OqNvi">
                <ref role="2WH_rO" node="mQZQCkbumY" resolve="mpsProject" />
              </node>
            </node>
            <node concept="2OqwBi" id="mQZQCkd2vi" role="37wK5m">
              <node concept="2WthIp" id="mQZQCkd2vl" role="2Oq$k0" />
              <node concept="2BZ7hE" id="mQZQCkd2vn" role="2OqNvi">
                <ref role="2WH_rO" node="mQZQCkbsBf" resolve="word" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="mQZQCkbumY" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="mQZQCkbumZ" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="mQZQCkd89c" role="tmbBb">
      <node concept="3clFbS" id="mQZQCkd89d" role="2VODD2">
        <node concept="3clFbF" id="mQZQCkd8om" role="3cqZAp">
          <node concept="2OqwBi" id="mQZQCkcZje" role="3clFbG">
            <node concept="2OqwBi" id="mQZQCkcYSy" role="2Oq$k0">
              <node concept="tl45R" id="mQZQCkcYAh" role="2Oq$k0" />
              <node concept="liA8E" id="mQZQCkcZ7M" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="mQZQCkcZwE" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="mQZQCkd0dn" role="37wK5m">
                <node concept="Xl_RD" id="mQZQCkcZzv" role="2Oq$k0">
                  <property role="Xl_RC" value="Add '%s' to dictionary" />
                </node>
                <node concept="2cAKMz" id="mQZQCkd0D0" role="2OqNvi">
                  <node concept="2OqwBi" id="mQZQCkd0FY" role="2cAKU6">
                    <node concept="2WthIp" id="mQZQCkd0G1" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="mQZQCkd0G3" role="2OqNvi">
                      <ref role="2WH_rO" node="mQZQCkbsBf" resolve="word" />
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
  <node concept="312cEu" id="1OIlcCD3ppP">
    <property role="TrG5h" value="CommentSpellChecker" />
    <node concept="312cEg" id="1OIlcCD6Vsw" role="jymVt">
      <property role="TrG5h" value="myUpdateNeeded" />
      <node concept="3Tm6S6" id="1OIlcCD6Vfg" role="1B3o_S" />
      <node concept="10P_77" id="1OIlcCD6Vmi" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1OIlcCD8X7Z" role="jymVt">
      <property role="TrG5h" value="myEnabled" />
      <node concept="3Tm6S6" id="1OIlcCD8S9P" role="1B3o_S" />
      <node concept="3uibUv" id="1OIlcCD8VpK" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
      </node>
    </node>
    <node concept="312cEg" id="1OIlcCDascG" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1OIlcCDaoCU" role="1B3o_S" />
      <node concept="3uibUv" id="1OIlcCDavKE" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="5aO34D55aBY" role="jymVt" />
    <node concept="312cEg" id="1OIlcCDhRtZ" role="jymVt">
      <property role="TrG5h" value="myWordSplit" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1OIlcCDhW6P" role="1tU5fm">
        <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
      </node>
      <node concept="2YIFZM" id="1OIlcCDhYm3" role="33vP2m">
        <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
        <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
        <node concept="Xl_RD" id="1OIlcCDhYm4" role="37wK5m">
          <property role="Xl_RC" value="[\\s!#$%&amp;()*+,-\\./:;&lt;=&gt;?@\\^\\[\\]\\\\`_{|}~]" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1OIlcCDhRu4" role="1B3o_S" />
      <node concept="z59LJ" id="5aO34D55n58" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsCzZ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsC$0" role="1PaTwD">
            <property role="3oM_SC" value="\s" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$1" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$2" role="1PaTwD">
            <property role="3oM_SC" value="whitespace," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$3" role="1PaTwD">
            <property role="3oM_SC" value="rest" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$4" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$5" role="1PaTwD">
            <property role="3oM_SC" value="almost" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$6" role="1PaTwD">
            <property role="3oM_SC" value="identical" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$7" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$8" role="1PaTwD">
            <property role="3oM_SC" value="\{Punct}" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$9" role="1PaTwD">
            <property role="3oM_SC" value="class," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$a" role="1PaTwD">
            <property role="3oM_SC" value="except" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$b" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$c" role="1PaTwD">
            <property role="3oM_SC" value="single/double" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$d" role="1PaTwD">
            <property role="3oM_SC" value="quotation" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsC$e" role="1PaTwD">
            <property role="3oM_SC" value="marks" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCDhPbh" role="jymVt" />
    <node concept="2tJIrI" id="1OIlcCDa4RO" role="jymVt" />
    <node concept="3clFbW" id="1OIlcCDabPs" role="jymVt">
      <node concept="3cqZAl" id="1OIlcCDabPw" role="3clF45" />
      <node concept="3Tm1VV" id="1OIlcCDabPx" role="1B3o_S" />
      <node concept="3clFbS" id="1OIlcCDabPy" role="3clF47">
        <node concept="3clFbF" id="1OIlcCDaC8w" role="3cqZAp">
          <node concept="37vLTI" id="1OIlcCDaGkR" role="3clFbG">
            <node concept="2OqwBi" id="mQZQCkcL$p" role="37vLTx">
              <node concept="37vLTw" id="1OIlcCDaGoz" role="2Oq$k0">
                <ref role="3cqZAo" node="1OIlcCDaxy1" resolve="project" />
              </node>
              <node concept="liA8E" id="mQZQCkcMp6" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="37vLTw" id="1OIlcCDaC8v" role="37vLTJ">
              <ref role="3cqZAo" node="1OIlcCDascG" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1OIlcCDaxy1" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1OIlcCDaxy0" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCD9dD5" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCD9iBA" role="jymVt">
      <property role="TrG5h" value="isDisabled" />
      <node concept="3clFbS" id="1OIlcCD9iBD" role="3clF47">
        <node concept="3clFbF" id="1OIlcCD9Aka" role="3cqZAp">
          <node concept="3fqX7Q" id="1OIlcCD9Ak8" role="3clFbG">
            <node concept="1rXfSq" id="1OIlcCD9BTV" role="3fr31v">
              <ref role="37wK5l" node="1OIlcCD9rwE" resolve="isEnabled" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1OIlcCD9fre" role="1B3o_S" />
      <node concept="10P_77" id="1OIlcCD9gTg" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1OIlcCD9tiu" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCD9rwE" role="jymVt">
      <property role="TrG5h" value="isEnabled" />
      <node concept="3clFbS" id="1OIlcCD9rwF" role="3clF47">
        <node concept="3clFbJ" id="1OIlcCD9DE2" role="3cqZAp">
          <node concept="3clFbC" id="1OIlcCD9Htp" role="3clFbw">
            <node concept="10Nm6u" id="1OIlcCD9JhF" role="3uHU7w" />
            <node concept="37vLTw" id="1OIlcCD9FpI" role="3uHU7B">
              <ref role="3cqZAo" node="1OIlcCD8X7Z" resolve="myEnabled" />
            </node>
          </node>
          <node concept="3clFbS" id="1OIlcCD9DE4" role="3clFbx">
            <node concept="3J1_TO" id="Kyv3Wh4jNv" role="3cqZAp">
              <node concept="3uVAMA" id="Kyv3Wh56Ez" role="1zxBo5">
                <node concept="XOnhg" id="Kyv3Wh56E$" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="Kyv3Wh56E_" role="1tU5fm">
                    <node concept="3uibUv" id="Kyv3Wh5bR6" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="Kyv3Wh56EA" role="1zc67A">
                  <node concept="3clFbF" id="Kyv3Wh5j_f" role="3cqZAp">
                    <node concept="37vLTI" id="Kyv3Wh5o$S" role="3clFbG">
                      <node concept="3clFbT" id="Kyv3Wh5s7q" role="37vLTx" />
                      <node concept="37vLTw" id="Kyv3Wh5j_e" role="37vLTJ">
                        <ref role="3cqZAo" node="1OIlcCD8X7Z" resolve="myEnabled" />
                      </node>
                    </node>
                  </node>
                  <node concept="YS8fn" id="Kyv3Wh5$7t" role="3cqZAp">
                    <node concept="2ShNRf" id="13rX4VcBJgm" role="YScLw">
                      <node concept="1pGfFk" id="13rX4VcCvKV" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="37vLTw" id="13rX4VcCyZU" role="37wK5m">
                          <ref role="3cqZAo" node="Kyv3Wh56E$" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="Kyv3Wh4jNx" role="1zxBo7">
                <node concept="3clFbF" id="Kyv3Wh4py$" role="3cqZAp">
                  <node concept="37vLTI" id="Kyv3Wh4v$X" role="3clFbG">
                    <node concept="3y3z36" id="Kyv3Wh4XTR" role="37vLTx">
                      <node concept="10Nm6u" id="Kyv3Wh51oh" role="3uHU7w" />
                      <node concept="2YIFZM" id="Kyv3Wh4EZC" role="3uHU7B">
                        <ref role="37wK5l" to="v6uv:~SpellCheckerManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                        <ref role="1Pybhc" to="v6uv:~SpellCheckerManager" resolve="SpellCheckerManager" />
                        <node concept="37vLTw" id="Kyv3Wh4Sp_" role="37wK5m">
                          <ref role="3cqZAo" node="1OIlcCDascG" resolve="myProject" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="Kyv3Wh4pyy" role="37vLTJ">
                      <ref role="3cqZAo" node="1OIlcCD8X7Z" resolve="myEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1OIlcCD9MNF" role="3cqZAp">
          <node concept="2OqwBi" id="1OIlcCD9Twt" role="3cqZAk">
            <node concept="37vLTw" id="1OIlcCD9RxO" role="2Oq$k0">
              <ref role="3cqZAo" node="1OIlcCD8X7Z" resolve="myEnabled" />
            </node>
            <node concept="liA8E" id="1OIlcCD9Vx6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Boolean.booleanValue()" resolve="booleanValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1OIlcCD9rwG" role="1B3o_S" />
      <node concept="10P_77" id="1OIlcCD9rwH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1OIlcCD6V8h" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCD6UMO" role="jymVt">
      <property role="TrG5h" value="processEvents" />
      <node concept="3Tm1VV" id="1OIlcCD6UMP" role="1B3o_S" />
      <node concept="3cqZAl" id="1OIlcCD6UMR" role="3clF45" />
      <node concept="37vLTG" id="1OIlcCD6UMS" role="3clF46">
        <property role="TrG5h" value="events" />
        <node concept="3uibUv" id="1OIlcCD6UMT" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1OIlcCD6UMU" role="11_B2D">
            <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1OIlcCD6UMV" role="3clF47">
        <node concept="3clFbJ" id="1OIlcCD91BN" role="3cqZAp">
          <node concept="3clFbS" id="1OIlcCD91BP" role="3clFbx">
            <node concept="3cpWs6" id="1OIlcCD9m83" role="3cqZAp" />
          </node>
          <node concept="1rXfSq" id="1OIlcCD9kp5" role="3clFbw">
            <ref role="37wK5l" node="1OIlcCD9iBA" resolve="isDisabled" />
          </node>
        </node>
        <node concept="3clFbJ" id="1OIlcCD7KNk" role="3cqZAp">
          <node concept="3clFbS" id="1OIlcCD7KNm" role="3clFbx">
            <node concept="3cpWs6" id="1OIlcCD7M7c" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="1OIlcCD7Ltb" role="3clFbw">
            <ref role="3cqZAo" node="1OIlcCD6Vsw" resolve="myUpdateNeeded" />
          </node>
        </node>
        <node concept="1DcWWT" id="1OIlcCD6WPI" role="3cqZAp">
          <node concept="3clFbS" id="1OIlcCD6WPK" role="2LFqv$">
            <node concept="3clFbJ" id="1OIlcCD6YS2" role="3cqZAp">
              <node concept="3clFbS" id="1OIlcCD6YS4" role="3clFbx">
                <node concept="3SKdUt" id="4QHBb2hgJ2D" role="3cqZAp">
                  <node concept="1PaTwC" id="4QHBb2hgJ2E" role="1aUNEU">
                    <node concept="3oM_SD" id="4QHBb2hgL0Q" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL0V" role="1PaTwD">
                      <property role="3oM_SC" value="quite" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL0Y" role="1PaTwD">
                      <property role="3oM_SC" value="nice," />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL12" role="1PaTwD">
                      <property role="3oM_SC" value="no" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL17" role="1PaTwD">
                      <property role="3oM_SC" value="idea" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL1d" role="1PaTwD">
                      <property role="3oM_SC" value="though" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL1k" role="1PaTwD">
                      <property role="3oM_SC" value="what" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL1s" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL1_" role="1PaTwD">
                      <property role="3oM_SC" value="could" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL26" role="1PaTwD">
                      <property role="3oM_SC" value="possibly" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL2x" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL1U" role="1PaTwD">
                      <property role="3oM_SC" value="better" />
                    </node>
                    <node concept="3oM_SD" id="4QHBb2hgL2I" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1OIlcCD7Dzr" role="3cqZAp">
                  <node concept="37vLTI" id="1OIlcCD7FhA" role="3clFbG">
                    <node concept="3clFbT" id="1OIlcCD7FiL" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="1OIlcCD7Dzp" role="37vLTJ">
                      <ref role="3cqZAo" node="1OIlcCD6Vsw" resolve="myUpdateNeeded" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="1OIlcCD7GGn" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="1OIlcCD72HT" role="3clFbw">
                <node concept="3uibUv" id="1OIlcCD73hv" role="2ZW6by">
                  <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
                </node>
                <node concept="37vLTw" id="1OIlcCD6Zp0" role="2ZW6bz">
                  <ref role="3cqZAo" node="1OIlcCD6WPL" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1OIlcCD6WPL" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="1OIlcCD6WZ3" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
            </node>
          </node>
          <node concept="37vLTw" id="1OIlcCD6Xrh" role="1DdaDG">
            <ref role="3cqZAo" node="1OIlcCD6UMS" resolve="events" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1OIlcCD6UMW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCD3rzl" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCD3rzF" role="jymVt">
      <property role="TrG5h" value="needsUpdate" />
      <node concept="3Tm1VV" id="1OIlcCD3rzG" role="1B3o_S" />
      <node concept="10P_77" id="1OIlcCD3rzI" role="3clF45" />
      <node concept="37vLTG" id="1OIlcCD3rzJ" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1OIlcCD3rFK" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="1OIlcCD3rzO" role="3clF47">
        <node concept="3clFbF" id="1OIlcCD3rzR" role="3cqZAp">
          <node concept="1Wc70l" id="1OIlcCD9pLd" role="3clFbG">
            <node concept="1rXfSq" id="1OIlcCD9$$_" role="3uHU7B">
              <ref role="37wK5l" node="1OIlcCD9rwE" resolve="isEnabled" />
            </node>
            <node concept="37vLTw" id="1OIlcCD6VNY" role="3uHU7w">
              <ref role="3cqZAo" node="1OIlcCD6Vsw" resolve="myUpdateNeeded" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1OIlcCD3rzP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCD6UaQ" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCD6UeP" role="jymVt">
      <property role="TrG5h" value="doneUpdating" />
      <node concept="3Tm1VV" id="1OIlcCD6UeQ" role="1B3o_S" />
      <node concept="3cqZAl" id="1OIlcCD6UeS" role="3clF45" />
      <node concept="3clFbS" id="1OIlcCD6UeT" role="3clF47">
        <node concept="3clFbF" id="1OIlcCD6UeW" role="3cqZAp">
          <node concept="37vLTI" id="1OIlcCD6WwS" role="3clFbG">
            <node concept="3clFbT" id="1OIlcCD6Wy3" role="37vLTx" />
            <node concept="37vLTw" id="1OIlcCD6W2B" role="37vLTJ">
              <ref role="3cqZAo" node="1OIlcCD6Vsw" resolve="myUpdateNeeded" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1OIlcCD6UeU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCD6Uuj" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCD3rzS" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tm1VV" id="1OIlcCD3rzT" role="1B3o_S" />
      <node concept="2AHcQZ" id="1OIlcCD3rzV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1OIlcCD3rzW" role="3clF45">
        <ref role="3uigEE" to="n70j:~UpdateResult" resolve="UpdateResult" />
      </node>
      <node concept="37vLTG" id="1OIlcCD3rzX" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1OIlcCD3rzY" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="1OIlcCD3rzZ" role="3clF46">
        <property role="TrG5h" value="incremental" />
        <node concept="10P_77" id="1OIlcCD3r$0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1OIlcCD3r$1" role="3clF46">
        <property role="TrG5h" value="applyQuickFix" />
        <node concept="10P_77" id="1OIlcCD3r$2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1OIlcCD3r$3" role="3clF46">
        <property role="TrG5h" value="cancellable" />
        <node concept="3uibUv" id="1OIlcCD3r$4" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Cancellable" resolve="Cancellable" />
        </node>
      </node>
      <node concept="3clFbS" id="1OIlcCD3r$8" role="3clF47">
        <node concept="3clFbJ" id="4OK2AApyj_T" role="3cqZAp">
          <node concept="3clFbS" id="4OK2AApyj_V" role="3clFbx">
            <node concept="3cpWs6" id="4OK2AApyA5$" role="3cqZAp">
              <node concept="10M0yZ" id="4OK2AApyMA5" role="3cqZAk">
                <ref role="3cqZAo" to="n70j:~UpdateResult.CANCELLED" resolve="CANCELLED" />
                <ref role="1PxDUh" to="n70j:~UpdateResult" resolve="UpdateResult" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4OK2AApyrtR" role="3clFbw">
            <node concept="37vLTw" id="4OK2AApyoNv" role="2Oq$k0">
              <ref role="3cqZAo" node="1OIlcCD3rzX" resolve="component" />
            </node>
            <node concept="liA8E" id="4OK2AApywKD" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.isDisposed()" resolve="isDisposed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2xkx6pX0NaD" role="3cqZAp">
          <node concept="3cpWsn" id="2xkx6pX0NaE" role="3cpWs9">
            <property role="TrG5h" value="rc" />
            <node concept="3uibUv" id="2xkx6pX0LWd" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="2xkx6pX0NaF" role="33vP2m">
              <node concept="37vLTw" id="2xkx6pX0NaG" role="2Oq$k0">
                <ref role="3cqZAo" node="1OIlcCD3rzX" resolve="component" />
              </node>
              <node concept="liA8E" id="2xkx6pX0NaH" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4OK2AApyTYA" role="3cqZAp">
          <node concept="3clFbS" id="4OK2AApyTYB" role="3clFbx">
            <node concept="3cpWs6" id="4OK2AApyTYC" role="3cqZAp">
              <node concept="10M0yZ" id="4OK2AApyTYD" role="3cqZAk">
                <ref role="3cqZAo" to="n70j:~UpdateResult.CANCELLED" resolve="CANCELLED" />
                <ref role="1PxDUh" to="n70j:~UpdateResult" resolve="UpdateResult" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4OK2AApz7ik" role="3clFbw">
            <node concept="10Nm6u" id="4OK2AApzbG5" role="3uHU7w" />
            <node concept="37vLTw" id="4OK2AApz2_k" role="3uHU7B">
              <ref role="3cqZAo" node="2xkx6pX0NaE" resolve="rc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1OIlcCDfP1B" role="3cqZAp">
          <node concept="3cpWsn" id="1OIlcCDfP1H" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="3uibUv" id="1OIlcCDfP1J" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1OIlcCDfR8U" role="11_B2D">
                <ref role="3uigEE" to="exr9:~EditorMessage" resolve="EditorMessage" />
              </node>
            </node>
            <node concept="2ShNRf" id="1OIlcCDfVlQ" role="33vP2m">
              <node concept="1pGfFk" id="1OIlcCDfXJY" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1OIlcCDg2cc" role="1pMfVU">
                  <ref role="3uigEE" to="exr9:~EditorMessage" resolve="EditorMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2xkx6pX1ala" role="3cqZAp">
          <node concept="3clFbS" id="2xkx6pX1ald" role="2LFqv$">
            <node concept="3clFbJ" id="2xkx6pX1zXp" role="3cqZAp">
              <node concept="3clFbS" id="2xkx6pX1zXq" role="3clFbx">
                <node concept="3cpWs6" id="2xkx6pX1zXr" role="3cqZAp">
                  <node concept="10M0yZ" id="2xkx6pX1zXs" role="3cqZAk">
                    <ref role="1PxDUh" to="n70j:~UpdateResult" resolve="UpdateResult" />
                    <ref role="3cqZAo" to="n70j:~UpdateResult.CANCELLED" resolve="CANCELLED" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2xkx6pX1zXt" role="3clFbw">
                <node concept="37vLTw" id="2xkx6pX1zXu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OIlcCD3r$3" resolve="cancellable" />
                </node>
                <node concept="liA8E" id="2xkx6pX1zXv" role="2OqNvi">
                  <ref role="37wK5l" to="18ew:~Cancellable.isCancelled()" resolve="isCancelled" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2xkx6pX1siG" role="3cqZAp">
              <node concept="3clFbC" id="2xkx6pX3Vqs" role="3clFbw">
                <node concept="3clFbT" id="2xkx6pX409e" role="3uHU7B" />
                <node concept="2ZW3vV" id="2xkx6pX1J_g" role="3uHU7w">
                  <node concept="3uibUv" id="2xkx6pX26PU" role="2ZW6by">
                    <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                  <node concept="37vLTw" id="2xkx6pX22qe" role="2ZW6bz">
                    <ref role="3cqZAo" node="2xkx6pX1ale" resolve="ec" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2xkx6pX1siI" role="3clFbx">
                <node concept="3N13vt" id="2xkx6pX2dlY" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="2bPcrZb6OYj" role="3cqZAp">
              <node concept="3cpWsn" id="2bPcrZb6OYk" role="3cpWs9">
                <property role="TrG5h" value="val" />
                <node concept="3uibUv" id="2bPcrZb6LPD" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
                <node concept="2OqwBi" id="2bPcrZb6OYl" role="33vP2m">
                  <node concept="2OqwBi" id="2bPcrZb6OYm" role="2Oq$k0">
                    <node concept="37vLTw" id="2bPcrZb6OYn" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xkx6pX1ale" resolve="ec" />
                    </node>
                    <node concept="liA8E" id="2bPcrZb6OYo" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2bPcrZb6OYp" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="2bPcrZb6OYq" role="37wK5m">
                      <ref role="3cqZAo" to="5ueo:~StyleAttributes.SPELLCHECK" resolve="SPELLCHECK" />
                      <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2xkx6pX31G8" role="3cqZAp">
              <node concept="3clFbS" id="2xkx6pX31Ga" role="3clFbx">
                <node concept="3N13vt" id="2xkx6pX4ajG" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="2bPcrZb7eOt" role="3clFbw">
                <node concept="3fqX7Q" id="2bPcrZb7zsQ" role="3uHU7w">
                  <node concept="2OqwBi" id="2bPcrZb7Tho" role="3fr31v">
                    <node concept="37vLTw" id="2bPcrZb7QmK" role="2Oq$k0">
                      <ref role="3cqZAo" node="2bPcrZb6OYk" resolve="val" />
                    </node>
                    <node concept="liA8E" id="2bPcrZb7Zyo" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Boolean.booleanValue()" resolve="booleanValue" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2bPcrZb758N" role="3uHU7B">
                  <node concept="37vLTw" id="2bPcrZb71_f" role="3uHU7B">
                    <ref role="3cqZAo" node="2bPcrZb6OYk" resolve="val" />
                  </node>
                  <node concept="10Nm6u" id="2bPcrZb7b9W" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2xkx6pX5Pzd" role="3cqZAp">
              <node concept="3cpWsn" id="2xkx6pX5Pze" role="3cpWs9">
                <property role="TrG5h" value="n" />
                <node concept="3uibUv" id="2xkx6pX5MUe" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="2xkx6pX5Pzf" role="33vP2m">
                  <node concept="37vLTw" id="2xkx6pX5Pzg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xkx6pX1ale" resolve="ec" />
                  </node>
                  <node concept="liA8E" id="2xkx6pX5Pzh" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getSNode()" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2xkx6pX6cOs" role="3cqZAp">
              <node concept="3clFbS" id="2xkx6pX6cOu" role="3clFbx">
                <node concept="3N13vt" id="2xkx6pX6qTP" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="2xkx6pX6kIn" role="3clFbw">
                <node concept="10Nm6u" id="2xkx6pX6kQq" role="3uHU7w" />
                <node concept="37vLTw" id="2xkx6pX6hhN" role="3uHU7B">
                  <ref role="3cqZAo" node="2xkx6pX5Pze" resolve="n" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2xkx6pX4PqA" role="3cqZAp">
              <node concept="3cpWsn" id="2xkx6pX4PqB" role="3cpWs9">
                <property role="TrG5h" value="text" />
                <node concept="17QB3L" id="2xkx6pX7dUh" role="1tU5fm" />
                <node concept="2OqwBi" id="2xkx6pX4PqC" role="33vP2m">
                  <node concept="1eOMI4" id="2xkx6pX4PqD" role="2Oq$k0">
                    <node concept="10QFUN" id="2xkx6pX4PqE" role="1eOMHV">
                      <node concept="3uibUv" id="2xkx6pX4PqF" role="10QFUM">
                        <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                      </node>
                      <node concept="37vLTw" id="2xkx6pX4PqG" role="10QFUP">
                        <ref role="3cqZAo" node="2xkx6pX1ale" resolve="ec" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2xkx6pX4PqH" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell_Label.getText()" resolve="getText" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2xkx6pX5r4F" role="3cqZAp">
              <node concept="1rXfSq" id="2xkx6pX5r4D" role="3clFbG">
                <ref role="37wK5l" node="1OIlcCDejaO" resolve="spellCheck" />
                <node concept="37vLTw" id="2xkx6pX5xjk" role="37wK5m">
                  <ref role="3cqZAo" node="2xkx6pX4PqB" resolve="text" />
                </node>
                <node concept="37vLTw" id="2xkx6pX5Pzi" role="37wK5m">
                  <ref role="3cqZAo" node="2xkx6pX5Pze" resolve="n" />
                </node>
                <node concept="37vLTw" id="2xkx6pX79hS" role="37wK5m">
                  <ref role="3cqZAo" node="1OIlcCDfP1H" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2xkx6pX1ale" role="1Duv9x">
            <property role="TrG5h" value="ec" />
            <node concept="3uibUv" id="2xkx6pX1ali" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
          </node>
          <node concept="2YIFZM" id="2xkx6pX1alj" role="1DdaDG">
            <ref role="37wK5l" to="f4zo:~CellTraversalUtil.iterateTree(jetbrains.mps.openapi.editor.cells.EditorCell,jetbrains.mps.openapi.editor.cells.EditorCell,boolean)" resolve="iterateTree" />
            <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
            <node concept="37vLTw" id="2xkx6pX1alk" role="37wK5m">
              <ref role="3cqZAo" node="2xkx6pX0NaE" resolve="rc" />
            </node>
            <node concept="37vLTw" id="2xkx6pX1all" role="37wK5m">
              <ref role="3cqZAo" node="2xkx6pX0NaE" resolve="rc" />
            </node>
            <node concept="3clFbT" id="2xkx6pX1alm" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1OIlcCDhghO" role="3cqZAp">
          <node concept="2ShNRf" id="1OIlcCDgPVa" role="3cqZAk">
            <node concept="1pGfFk" id="1OIlcCDgPVb" role="2ShVmc">
              <ref role="37wK5l" to="n70j:~UpdateResult$Completed.&lt;init&gt;(boolean,java.util.Collection)" resolve="UpdateResult.Completed" />
              <node concept="3clFbT" id="1OIlcCDgPVc" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="1OIlcCDgUsS" role="37wK5m">
                <ref role="3cqZAo" node="1OIlcCDfP1H" resolve="messages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1OIlcCD3r$9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCDebhT" role="jymVt" />
    <node concept="3clFb_" id="1OIlcCDejaO" role="jymVt">
      <property role="TrG5h" value="spellCheck" />
      <node concept="3clFbS" id="1OIlcCDejaR" role="3clF47">
        <node concept="3clFbJ" id="1OIlcCDi2Py" role="3cqZAp">
          <node concept="3clFbS" id="1OIlcCDi2P$" role="3clFbx">
            <node concept="3cpWs6" id="1OIlcCDidMY" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1OIlcCDi8PM" role="3clFbw">
            <node concept="37vLTw" id="1OIlcCDi55c" role="2Oq$k0">
              <ref role="3cqZAo" node="1OIlcCDelhv" resolve="text" />
            </node>
            <node concept="17RlXB" id="1OIlcCDibxB" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="1OIlcCDiXQl" role="3cqZAp">
          <node concept="3cpWsn" id="1OIlcCDiXQm" role="3cpWs9">
            <property role="TrG5h" value="spcm" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1OIlcCDiXQg" role="1tU5fm">
              <ref role="3uigEE" to="v6uv:~SpellCheckerManager" resolve="SpellCheckerManager" />
            </node>
            <node concept="2YIFZM" id="2JPK5Vccn9t" role="33vP2m">
              <ref role="37wK5l" to="v6uv:~SpellCheckerManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="v6uv:~SpellCheckerManager" resolve="SpellCheckerManager" />
              <node concept="37vLTw" id="2JPK5Vccn9u" role="37wK5m">
                <ref role="3cqZAo" node="1OIlcCDascG" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1OIlcCDiUPu" role="3cqZAp" />
        <node concept="3cpWs8" id="1OIlcCDjnMa" role="3cqZAp">
          <node concept="3cpWsn" id="1OIlcCDjnMg" role="3cpWs9">
            <property role="TrG5h" value="mistakes" />
            <node concept="3uibUv" id="1OIlcCDjnMi" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1OIlcCDjw8j" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="10Nm6u" id="1OIlcCDkSua" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="1OIlcCDiIrm" role="3cqZAp">
          <node concept="3clFbS" id="1OIlcCDiIro" role="2LFqv$">
            <node concept="3clFbJ" id="1OIlcCDjU1M" role="3cqZAp">
              <node concept="3clFbS" id="1OIlcCDjU1O" role="3clFbx">
                <node concept="3N13vt" id="1OIlcCDk6Dp" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="4eP5sQ7E8jY" role="3clFbw">
                <node concept="3fqX7Q" id="1OIlcCDjW$N" role="3uHU7w">
                  <node concept="2OqwBi" id="1OIlcCDjcOG" role="3fr31v">
                    <node concept="37vLTw" id="1OIlcCDjae7" role="2Oq$k0">
                      <ref role="3cqZAo" node="1OIlcCDiXQm" resolve="spcm" />
                    </node>
                    <node concept="liA8E" id="1OIlcCDjfun" role="2OqNvi">
                      <ref role="37wK5l" to="v6uv:~SpellCheckerManager.hasProblem(java.lang.String)" resolve="hasProblem" />
                      <node concept="37vLTw" id="1OIlcCDji8L" role="37wK5m">
                        <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="5aO34D53XHR" role="3uHU7B">
                  <node concept="3cmrfG" id="5aO34D53XW7" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="4eP5sQ7DSew" role="3uHU7B">
                    <node concept="37vLTw" id="4eP5sQ7DRXJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                    </node>
                    <node concept="liA8E" id="5aO34D53ODt" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5aO34D56RW9" role="3cqZAp">
              <node concept="3cpWsn" id="5aO34D56RWc" role="3cpWs9">
                <property role="TrG5h" value="s" />
                <node concept="10Oyi0" id="5aO34D56RW7" role="1tU5fm" />
                <node concept="3cmrfG" id="5aO34D56Zmu" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5aO34D57cDz" role="3cqZAp">
              <node concept="3cpWsn" id="5aO34D57cDA" role="3cpWs9">
                <property role="TrG5h" value="e" />
                <node concept="10Oyi0" id="5aO34D57cDx" role="1tU5fm" />
                <node concept="3cpWsd" id="5aO34D57BaT" role="33vP2m">
                  <node concept="3cmrfG" id="5aO34D57BiG" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="5aO34D57oVc" role="3uHU7B">
                    <node concept="37vLTw" id="5aO34D57o_p" role="2Oq$k0">
                      <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                    </node>
                    <node concept="liA8E" id="5aO34D57tD$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="5aO34D57FXe" role="3cqZAp">
              <node concept="3clFbS" id="5aO34D57FXg" role="2LFqv$">
                <node concept="3SKdUt" id="5aO34D5c4uf" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXoiC3" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXoiC4" role="1PaTwD">
                      <property role="3oM_SC" value="main" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC5" role="1PaTwD">
                      <property role="3oM_SC" value="purpose" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC6" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC7" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC8" role="1PaTwD">
                      <property role="3oM_SC" value="strip" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC9" role="1PaTwD">
                      <property role="3oM_SC" value="off" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCa" role="1PaTwD">
                      <property role="3oM_SC" value="quotation" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCb" role="1PaTwD">
                      <property role="3oM_SC" value="marks" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCc" role="1PaTwD">
                      <property role="3oM_SC" value="around" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCd" role="1PaTwD">
                      <property role="3oM_SC" value="words," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCe" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCf" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCg" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCh" role="1PaTwD">
                      <property role="3oM_SC" value="touch" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCi" role="1PaTwD">
                      <property role="3oM_SC" value="apostrophes" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCj" role="1PaTwD">
                      <property role="3oM_SC" value="(e.g." />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCk" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;isn't&quot;)" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5aO34D58unQ" role="3cqZAp">
                  <node concept="3cpWsn" id="5aO34D58unR" role="3cpWs9">
                    <property role="TrG5h" value="c1" />
                    <property role="3TUv4t" value="true" />
                    <node concept="10Pfzv" id="5aO34D58unP" role="1tU5fm" />
                    <node concept="2OqwBi" id="5aO34D58unS" role="33vP2m">
                      <node concept="37vLTw" id="5aO34D58unT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                      </node>
                      <node concept="liA8E" id="5aO34D58unU" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                        <node concept="37vLTw" id="5aO34D58unV" role="37wK5m">
                          <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5aO34D59vLc" role="3cqZAp">
                  <node concept="3cpWsn" id="5aO34D59vLd" role="3cpWs9">
                    <property role="TrG5h" value="c2" />
                    <property role="3TUv4t" value="true" />
                    <node concept="10Pfzv" id="5aO34D59vLe" role="1tU5fm" />
                    <node concept="2OqwBi" id="5aO34D59vLf" role="33vP2m">
                      <node concept="37vLTw" id="5aO34D59vLg" role="2Oq$k0">
                        <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                      </node>
                      <node concept="liA8E" id="5aO34D59vLh" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                        <node concept="37vLTw" id="5aO34D59BBU" role="37wK5m">
                          <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5aO34D596Hz" role="3cqZAp">
                  <node concept="3cpWsn" id="5aO34D596H$" role="3cpWs9">
                    <property role="TrG5h" value="t1" />
                    <property role="3TUv4t" value="true" />
                    <node concept="10Oyi0" id="5aO34D596Hv" role="1tU5fm" />
                    <node concept="2YIFZM" id="5aO34D596H_" role="33vP2m">
                      <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                      <ref role="37wK5l" to="wyt6:~Character.getType(char)" resolve="getType" />
                      <node concept="37vLTw" id="5aO34D596HA" role="37wK5m">
                        <ref role="3cqZAo" node="5aO34D58unR" resolve="c1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5aO34D59XS$" role="3cqZAp">
                  <node concept="3cpWsn" id="5aO34D59XS_" role="3cpWs9">
                    <property role="TrG5h" value="t2" />
                    <property role="3TUv4t" value="true" />
                    <node concept="10Oyi0" id="5aO34D59XSA" role="1tU5fm" />
                    <node concept="2YIFZM" id="5aO34D59XSB" role="33vP2m">
                      <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                      <ref role="37wK5l" to="wyt6:~Character.getType(char)" resolve="getType" />
                      <node concept="37vLTw" id="5aO34D5avWu" role="37wK5m">
                        <ref role="3cqZAo" node="5aO34D59vLd" resolve="c2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5aO34D57ThS" role="3cqZAp">
                  <node concept="3clFbS" id="5aO34D57ThU" role="3clFbx">
                    <node concept="3clFbF" id="5aO34D5bGi6" role="3cqZAp">
                      <node concept="3uNrnE" id="5aO34D5bHmS" role="3clFbG">
                        <node concept="37vLTw" id="5aO34D5bHmU" role="2$L3a6">
                          <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5aO34D5bQmp" role="3cqZAp">
                      <node concept="3uO5VW" id="5aO34D5fTO1" role="3clFbG">
                        <node concept="37vLTw" id="5aO34D5fTO3" role="2$L3a6">
                          <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="5aO34D5bW7U" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="5aO34D5cJgn" role="3clFbw">
                    <node concept="3clFbC" id="5aO34D58S_t" role="3uHU7B">
                      <node concept="37vLTw" id="5aO34D59Tvh" role="3uHU7B">
                        <ref role="3cqZAo" node="5aO34D596H$" resolve="t1" />
                      </node>
                      <node concept="10M0yZ" id="5aO34D59qG5" role="3uHU7w">
                        <ref role="3cqZAo" to="wyt6:~Character.OTHER_PUNCTUATION" resolve="OTHER_PUNCTUATION" />
                        <ref role="1PxDUh" to="wyt6:~Character" resolve="Character" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="5aO34D5bpMG" role="3uHU7w">
                      <node concept="37vLTw" id="5aO34D5btT$" role="3uHU7w">
                        <ref role="3cqZAo" node="5aO34D59vLd" resolve="c2" />
                      </node>
                      <node concept="37vLTw" id="5aO34D5bkwd" role="3uHU7B">
                        <ref role="3cqZAo" node="5aO34D58unR" resolve="c1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5aO34D59l9G" role="3cqZAp">
                  <node concept="3clFbS" id="5aO34D59l9H" role="3clFbx">
                    <node concept="3SKdUt" id="5aO34D5gevi" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXoiCl" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXoiCm" role="1PaTwD">
                          <property role="3oM_SC" value="e.g." />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoiCn" role="1PaTwD">
                          <property role="3oM_SC" value="«" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoiCo" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoiCp" role="1PaTwD">
                          <property role="3oM_SC" value="»" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5aO34D5fo4S" role="3cqZAp">
                      <node concept="3uNrnE" id="5aO34D5fpmD" role="3clFbG">
                        <node concept="37vLTw" id="5aO34D5fpmF" role="2$L3a6">
                          <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5aO34D5fxvp" role="3cqZAp">
                      <node concept="3uO5VW" id="5aO34D5fJzt" role="3clFbG">
                        <node concept="37vLTw" id="5aO34D5fJzv" role="2$L3a6">
                          <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="5aO34D5g3k1" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="5aO34D5dmCC" role="3clFbw">
                    <node concept="3clFbC" id="5aO34D5fauT" role="3uHU7w">
                      <node concept="10M0yZ" id="5aO34D5fj$0" role="3uHU7w">
                        <ref role="3cqZAo" to="wyt6:~Character.FINAL_QUOTE_PUNCTUATION" resolve="FINAL_QUOTE_PUNCTUATION" />
                        <ref role="1PxDUh" to="wyt6:~Character" resolve="Character" />
                      </node>
                      <node concept="37vLTw" id="5aO34D5f4gj" role="3uHU7B">
                        <ref role="3cqZAo" node="5aO34D59XS_" resolve="t2" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="5aO34D59l9I" role="3uHU7B">
                      <node concept="37vLTw" id="5aO34D59l9K" role="3uHU7B">
                        <ref role="3cqZAo" node="5aO34D596H$" resolve="t1" />
                      </node>
                      <node concept="10M0yZ" id="5aO34D59l9J" role="3uHU7w">
                        <ref role="3cqZAo" to="wyt6:~Character.INITIAL_QUOTE_PUNCTUATION" resolve="INITIAL_QUOTE_PUNCTUATION" />
                        <ref role="1PxDUh" to="wyt6:~Character" resolve="Character" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5aO34D5iMvP" role="3cqZAp">
                  <node concept="3cpWsn" id="5aO34D5iMvS" role="3cpWs9">
                    <property role="TrG5h" value="found" />
                    <node concept="10P_77" id="5aO34D5iMvN" role="1tU5fm" />
                    <node concept="3clFbT" id="5aO34D5j5AV" role="33vP2m" />
                  </node>
                </node>
                <node concept="3clFbJ" id="5aO34D5i36M" role="3cqZAp">
                  <node concept="3clFbS" id="5aO34D5i36O" role="3clFbx">
                    <node concept="3clFbF" id="5aO34D5i_xB" role="3cqZAp">
                      <node concept="3uNrnE" id="5aO34D5iAAf" role="3clFbG">
                        <node concept="37vLTw" id="5aO34D5iAAh" role="2$L3a6">
                          <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5aO34D5jiso" role="3cqZAp">
                      <node concept="37vLTI" id="5aO34D5jnHd" role="3clFbG">
                        <node concept="3clFbT" id="5aO34D5jnPd" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="5aO34D5jism" role="37vLTJ">
                          <ref role="3cqZAo" node="5aO34D5iMvS" resolve="found" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="5aO34D5jwk7" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXoiCq" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXoiCr" role="1PaTwD">
                          <property role="3oM_SC" value="fallthrough" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="5aO34D5iot5" role="3clFbw">
                    <node concept="10M0yZ" id="5aO34D5iwNh" role="3uHU7w">
                      <ref role="3cqZAo" to="wyt6:~Character.START_PUNCTUATION" resolve="START_PUNCTUATION" />
                      <ref role="1PxDUh" to="wyt6:~Character" resolve="Character" />
                    </node>
                    <node concept="37vLTw" id="5aO34D5ielo" role="3uHU7B">
                      <ref role="3cqZAo" node="5aO34D596H$" resolve="t1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5aO34D5jNds" role="3cqZAp">
                  <node concept="3clFbS" id="5aO34D5jNdu" role="3clFbx">
                    <node concept="3clFbF" id="5aO34D5kdhg" role="3cqZAp">
                      <node concept="3uO5VW" id="5aO34D5kelS" role="3clFbG">
                        <node concept="37vLTw" id="5aO34D5kelU" role="2$L3a6">
                          <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5aO34D5koyr" role="3cqZAp">
                      <node concept="37vLTI" id="5aO34D5ktxl" role="3clFbG">
                        <node concept="3clFbT" id="5aO34D5ktDl" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="5aO34D5koyp" role="37vLTJ">
                          <ref role="3cqZAo" node="5aO34D5iMvS" resolve="found" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="5aO34D5kPkq" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXoiCs" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXoiCt" role="1PaTwD">
                          <property role="3oM_SC" value="fall" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXoiCu" role="1PaTwD">
                          <property role="3oM_SC" value="through" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="5aO34D5jYbY" role="3clFbw">
                    <node concept="10M0yZ" id="5aO34D5k7Lm" role="3uHU7w">
                      <ref role="3cqZAo" to="wyt6:~Character.END_PUNCTUATION" resolve="END_PUNCTUATION" />
                      <ref role="1PxDUh" to="wyt6:~Character" resolve="Character" />
                    </node>
                    <node concept="37vLTw" id="5aO34D5jRUN" role="3uHU7B">
                      <ref role="3cqZAo" node="5aO34D59XS_" resolve="t2" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5aO34D5kAQG" role="3cqZAp">
                  <node concept="3clFbS" id="5aO34D5kAQI" role="3clFbx">
                    <node concept="3zACq4" id="5aO34D5l3vO" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="5aO34D5kDX_" role="3clFbw">
                    <node concept="37vLTw" id="5aO34D5kGXL" role="3fr31v">
                      <ref role="3cqZAo" node="5aO34D5iMvS" resolve="found" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="5aO34D57ONF" role="2$JKZa">
                <node concept="37vLTw" id="5aO34D57OVu" role="3uHU7w">
                  <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                </node>
                <node concept="37vLTw" id="5aO34D57JoN" role="3uHU7B">
                  <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5aO34D5mBHN" role="3cqZAp">
              <node concept="3clFbS" id="5aO34D5mBHP" role="3clFbx">
                <node concept="3SKdUt" id="5aO34D5n7Jn" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXoiCv" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXoiCw" role="1PaTwD">
                      <property role="3oM_SC" value="s==e" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCx" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCy" role="1PaTwD">
                      <property role="3oM_SC" value="legitimate" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCz" role="1PaTwD">
                      <property role="3oM_SC" value="1-letter" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC$" role="1PaTwD">
                      <property role="3oM_SC" value="case," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiC_" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCA" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCB" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCC" role="1PaTwD">
                      <property role="3oM_SC" value="care" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCD" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCE" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCF" role="1PaTwD">
                      <property role="3oM_SC" value="it." />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="5aO34D5mRCy" role="3cqZAp" />
              </node>
              <node concept="2d3UOw" id="5aO34D5mXg$" role="3clFbw">
                <node concept="37vLTw" id="5aO34D5mGEZ" role="3uHU7B">
                  <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                </node>
                <node concept="37vLTw" id="5aO34D5mMQN" role="3uHU7w">
                  <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5aO34D5leOl" role="3cqZAp">
              <node concept="3clFbS" id="5aO34D5leOn" role="3clFbx">
                <node concept="3SKdUt" id="5aO34D5okkX" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXoiCG" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXoiCH" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCI" role="1PaTwD">
                      <property role="3oM_SC" value="stripped" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCJ" role="1PaTwD">
                      <property role="3oM_SC" value="off" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCK" role="1PaTwD">
                      <property role="3oM_SC" value="some" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCL" role="1PaTwD">
                      <property role="3oM_SC" value="heading/trailing" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCM" role="1PaTwD">
                      <property role="3oM_SC" value="chars" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5aO34D5lZAY" role="3cqZAp">
                  <node concept="37vLTI" id="5aO34D5m53G" role="3clFbG">
                    <node concept="2OqwBi" id="5aO34D5m9Ze" role="37vLTx">
                      <node concept="37vLTw" id="5aO34D5m9Ph" role="2Oq$k0">
                        <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                      </node>
                      <node concept="liA8E" id="5aO34D5mdBb" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="37vLTw" id="5aO34D5mil8" role="37wK5m">
                          <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                        </node>
                        <node concept="3cpWs3" id="5aO34D5o9Pw" role="37wK5m">
                          <node concept="3cmrfG" id="5aO34D5o9Xj" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="5aO34D5msRi" role="3uHU7B">
                            <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5aO34D5lZAW" role="37vLTJ">
                      <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4wTqoCxZ3ap" role="3cqZAp">
                  <node concept="3clFbS" id="4wTqoCxZ3ar" role="3clFbx">
                    <node concept="3N13vt" id="4wTqoCxZF0g" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="4wTqoCxZ_tL" role="3clFbw">
                    <node concept="2OqwBi" id="4wTqoCxZ_tN" role="3fr31v">
                      <node concept="37vLTw" id="4wTqoCxZ_tO" role="2Oq$k0">
                        <ref role="3cqZAo" node="1OIlcCDiXQm" resolve="spcm" />
                      </node>
                      <node concept="liA8E" id="4wTqoCxZ_tP" role="2OqNvi">
                        <ref role="37wK5l" to="v6uv:~SpellCheckerManager.hasProblem(java.lang.String)" resolve="hasProblem" />
                        <node concept="37vLTw" id="4wTqoCxZ_tQ" role="37wK5m">
                          <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4wTqoCxZQMI" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXoiCN" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXoiCO" role="1PaTwD">
                      <property role="3oM_SC" value="otherwise," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCP" role="1PaTwD">
                      <property role="3oM_SC" value="fall" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCQ" role="1PaTwD">
                      <property role="3oM_SC" value="through" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="5aO34D5l$gr" role="3clFbw">
                <node concept="3eOVzh" id="5aO34D5lD4U" role="3uHU7w">
                  <node concept="3cpWsd" id="5aO34D5lU7i" role="3uHU7w">
                    <node concept="3cmrfG" id="5aO34D5lUf5" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="5aO34D5lHtm" role="3uHU7B">
                      <node concept="37vLTw" id="5aO34D5lGSE" role="2Oq$k0">
                        <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                      </node>
                      <node concept="liA8E" id="5aO34D5lLom" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5aO34D5lBYA" role="3uHU7B">
                    <ref role="3cqZAo" node="5aO34D57cDA" resolve="e" />
                  </node>
                </node>
                <node concept="3eOSWO" id="5aO34D5lpMn" role="3uHU7B">
                  <node concept="37vLTw" id="5aO34D5ljyx" role="3uHU7B">
                    <ref role="3cqZAo" node="5aO34D56RWc" resolve="s" />
                  </node>
                  <node concept="3cmrfG" id="5aO34D5lpUa" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5iENRSfMl$F" role="3cqZAp">
              <node concept="3clFbS" id="5iENRSfMl$H" role="3clFbx">
                <node concept="3SKdUt" id="5iENRSfNHdo" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXoiCR" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXoiCS" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCT" role="1PaTwD">
                      <property role="3oM_SC" value="sure" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCU" role="1PaTwD">
                      <property role="3oM_SC" value="whether" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCV" role="1PaTwD">
                      <property role="3oM_SC" value="'word'" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCW" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCX" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCY" role="1PaTwD">
                      <property role="3oM_SC" value="faster" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiCZ" role="1PaTwD">
                      <property role="3oM_SC" value="than" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD0" role="1PaTwD">
                      <property role="3oM_SC" value="dictionary" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD1" role="1PaTwD">
                      <property role="3oM_SC" value="presence" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD2" role="1PaTwD">
                      <property role="3oM_SC" value="check," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD3" role="1PaTwD">
                      <property role="3oM_SC" value="assume" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD4" role="1PaTwD">
                      <property role="3oM_SC" value="latter" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD5" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD6" role="1PaTwD">
                      <property role="3oM_SC" value="faster," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD7" role="1PaTwD">
                      <property role="3oM_SC" value="hence" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD8" role="1PaTwD">
                      <property role="3oM_SC" value="comes" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoiD9" role="1PaTwD">
                      <property role="3oM_SC" value="first." />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="5iENRSfN__c" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="5iENRSfMO48" role="3clFbw">
                <node concept="1rXfSq" id="5iENRSfMSkr" role="3fr31v">
                  <ref role="37wK5l" node="5iENRSfMCaO" resolve="isRegularWord" />
                  <node concept="37vLTw" id="5iENRSfMWaS" role="37wK5m">
                    <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1OIlcCDkbMy" role="3cqZAp">
              <node concept="3clFbS" id="1OIlcCDkbM$" role="3clFbx">
                <node concept="3clFbF" id="1OIlcCDkmKU" role="3cqZAp">
                  <node concept="37vLTI" id="1OIlcCDkpCV" role="3clFbG">
                    <node concept="2ShNRf" id="1OIlcCDkpDz" role="37vLTx">
                      <node concept="1pGfFk" id="1OIlcCDksge" role="2ShVmc">
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                        <node concept="3uibUv" id="1OIlcCDkxjM" role="1pMfVU">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="3cmrfG" id="1OIlcCDkzT7" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1OIlcCDkmKS" role="37vLTJ">
                      <ref role="3cqZAo" node="1OIlcCDjnMg" resolve="mistakes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1OIlcCDki6F" role="3clFbw">
                <node concept="10Nm6u" id="1OIlcCDkkdG" role="3uHU7w" />
                <node concept="37vLTw" id="1OIlcCDkelJ" role="3uHU7B">
                  <ref role="3cqZAo" node="1OIlcCDjnMg" resolve="mistakes" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1OIlcCDkCVC" role="3cqZAp">
              <node concept="2OqwBi" id="1OIlcCDkFPx" role="3clFbG">
                <node concept="37vLTw" id="1OIlcCDkCVA" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OIlcCDjnMg" resolve="mistakes" />
                </node>
                <node concept="liA8E" id="1OIlcCDkKJN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1OIlcCDkNx$" role="37wK5m">
                    <ref role="3cqZAo" node="1OIlcCDiIrp" resolve="w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1OIlcCDiIrp" role="1Duv9x">
            <property role="TrG5h" value="w" />
            <node concept="3uibUv" id="1OIlcCDiKLm" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="2OqwBi" id="1OIlcCDiuey" role="1DdaDG">
            <node concept="37vLTw" id="1OIlcCDirQo" role="2Oq$k0">
              <ref role="3cqZAo" node="1OIlcCDhRtZ" resolve="myWordSplit" />
            </node>
            <node concept="liA8E" id="1OIlcCDiwBC" role="2OqNvi">
              <ref role="37wK5l" to="ni5j:~Pattern.split(java.lang.CharSequence,int)" resolve="split" />
              <node concept="37vLTw" id="1OIlcCDiz24" role="37wK5m">
                <ref role="3cqZAo" node="1OIlcCDelhv" resolve="text" />
              </node>
              <node concept="3cmrfG" id="1OIlcCDi_$G" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1OIlcCDl1gG" role="3cqZAp">
          <node concept="3clFbS" id="1OIlcCDl1gI" role="3clFbx">
            <node concept="3cpWs6" id="1OIlcCDllzd" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1OIlcCDlgfX" role="3clFbw">
            <node concept="10Nm6u" id="1OIlcCDliUu" role="3uHU7w" />
            <node concept="37vLTw" id="1OIlcCDlc0p" role="3uHU7B">
              <ref role="3cqZAo" node="1OIlcCDjnMg" resolve="mistakes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OIlcCDlufJ" role="3cqZAp">
          <node concept="2OqwBi" id="1OIlcCDlv07" role="3clFbG">
            <node concept="37vLTw" id="1OIlcCDlufH" role="2Oq$k0">
              <ref role="3cqZAo" node="1OIlcCDgap0" resolve="messages" />
            </node>
            <node concept="liA8E" id="1OIlcCDlyBr" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="1OIlcCDl_1D" role="37wK5m">
                <node concept="1pGfFk" id="1OIlcCDlLIZ" role="2ShVmc">
                  <ref role="37wK5l" node="1OIlcCDlF6C" resolve="CommentSpellChecker.M" />
                  <node concept="37vLTw" id="2lw8JLTvbMG" role="37wK5m">
                    <ref role="3cqZAo" node="1OIlcCDjnMg" resolve="mistakes" />
                  </node>
                  <node concept="37vLTw" id="1OIlcCDo8gw" role="37wK5m">
                    <ref role="3cqZAo" node="1OIlcCDnXrX" resolve="n" />
                  </node>
                  <node concept="Xjq3P" id="1OIlcCDoboj" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1OIlcCDedqM" role="1B3o_S" />
      <node concept="3cqZAl" id="1OIlcCDig3y" role="3clF45" />
      <node concept="37vLTG" id="1OIlcCDelhv" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="1OIlcCDelhu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1OIlcCDnXrX" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="1OIlcCDo0yV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1OIlcCDgap0" role="3clF46">
        <property role="TrG5h" value="messages" />
        <node concept="3uibUv" id="1OIlcCDgc_2" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1OIlcCDgeLu" role="11_B2D">
            <ref role="3uigEE" to="exr9:~EditorMessage" resolve="EditorMessage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5iENRSfMty9" role="jymVt" />
    <node concept="3clFb_" id="5iENRSfMCaO" role="jymVt">
      <property role="TrG5h" value="isRegularWord" />
      <node concept="3clFbS" id="5iENRSfMCaR" role="3clF47">
        <node concept="1Dw8fO" id="5iENRSfPecT" role="3cqZAp">
          <node concept="3cpWsn" id="5iENRSfPecU" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5iENRSfPi1y" role="1tU5fm" />
            <node concept="3cmrfG" id="5iENRSfSPMp" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="5iENRSfPecV" role="2LFqv$">
            <node concept="3cpWs8" id="5iENRSfQVPR" role="3cqZAp">
              <node concept="3cpWsn" id="5iENRSfQVPS" role="3cpWs9">
                <property role="TrG5h" value="ch" />
                <node concept="10Pfzv" id="5iENRSfQRC_" role="1tU5fm" />
                <node concept="2OqwBi" id="5iENRSfQVPT" role="33vP2m">
                  <node concept="37vLTw" id="5iENRSfQVPU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5iENRSfMG6y" resolve="w" />
                  </node>
                  <node concept="liA8E" id="5iENRSfQVPV" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                    <node concept="37vLTw" id="5iENRSfQVPW" role="37wK5m">
                      <ref role="3cqZAo" node="5iENRSfPecU" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5iENRSfTyHs" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoiDa" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoiDb" role="1PaTwD">
                  <property role="3oM_SC" value="any" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDc" role="1PaTwD">
                  <property role="3oM_SC" value="non-letter" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDd" role="1PaTwD">
                  <property role="3oM_SC" value="character" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDe" role="1PaTwD">
                  <property role="3oM_SC" value="immediately" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDf" role="1PaTwD">
                  <property role="3oM_SC" value="renders" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDg" role="1PaTwD">
                  <property role="3oM_SC" value="word" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDh" role="1PaTwD">
                  <property role="3oM_SC" value="irregular." />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDi" role="1PaTwD">
                  <property role="3oM_SC" value="perhaps," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDj" role="1PaTwD">
                  <property role="3oM_SC" value="shall" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDk" role="1PaTwD">
                  <property role="3oM_SC" value="treat" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDl" role="1PaTwD">
                  <property role="3oM_SC" value="quoted" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDm" role="1PaTwD">
                  <property role="3oM_SC" value="words" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDn" role="1PaTwD">
                  <property role="3oM_SC" value="separately" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDo" role="1PaTwD">
                  <property role="3oM_SC" value="(words" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDp" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDq" role="1PaTwD">
                  <property role="3oM_SC" value="start" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDr" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDs" role="1PaTwD">
                  <property role="3oM_SC" value="end" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDt" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDu" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDv" role="1PaTwD">
                  <property role="3oM_SC" value="same" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDw" role="1PaTwD">
                  <property role="3oM_SC" value="quotation" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoiDx" role="1PaTwD">
                  <property role="3oM_SC" value="mark)" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5iENRSfRdnj" role="3cqZAp">
              <node concept="3clFbS" id="5iENRSfRdnl" role="3clFbx">
                <node concept="3cpWs6" id="5iENRSfRyrX" role="3cqZAp">
                  <node concept="3clFbT" id="5iENRSfRB8G" role="3cqZAk" />
                </node>
              </node>
              <node concept="3fqX7Q" id="5iENRSfRqIX" role="3clFbw">
                <node concept="2YIFZM" id="5iENRSfRqIZ" role="3fr31v">
                  <ref role="37wK5l" to="wyt6:~Character.isLetter(char)" resolve="isLetter" />
                  <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                  <node concept="37vLTw" id="5iENRSfRqJ0" role="37wK5m">
                    <ref role="3cqZAo" node="5iENRSfQVPS" resolve="ch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5iENRSfROK$" role="3cqZAp">
              <node concept="3clFbS" id="5iENRSfROKA" role="3clFbx">
                <node concept="3cpWs6" id="5iENRSfSsAI" role="3cqZAp">
                  <node concept="3clFbT" id="5iENRSfSxJW" role="3cqZAk" />
                </node>
              </node>
              <node concept="1Wc70l" id="5iENRSfSaYx" role="3clFbw">
                <node concept="3eOSWO" id="5iENRSfSnWX" role="3uHU7w">
                  <node concept="3cmrfG" id="5iENRSfSo4K" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5iENRSfSfsv" role="3uHU7B">
                    <ref role="3cqZAo" node="5iENRSfPecU" resolve="i" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5iENRSfRXxU" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~Character.isUpperCase(char)" resolve="isUpperCase" />
                  <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                  <node concept="37vLTw" id="5iENRSfS0GP" role="37wK5m">
                    <ref role="3cqZAo" node="5iENRSfQVPS" resolve="ch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="5iENRSfPz6F" role="1Dwp0S">
            <node concept="2OqwBi" id="5iENRSfT0qa" role="3uHU7w">
              <node concept="37vLTw" id="5iENRSfPzeu" role="2Oq$k0">
                <ref role="3cqZAo" node="5iENRSfMG6y" resolve="w" />
              </node>
              <node concept="liA8E" id="5iENRSfT3mZ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="5iENRSfPu9n" role="3uHU7B">
              <ref role="3cqZAo" node="5iENRSfPecU" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5iENRSfT8Gt" role="1Dwrff">
            <node concept="37vLTw" id="5iENRSfT8Gv" role="2$L3a6">
              <ref role="3cqZAo" node="5iENRSfPecU" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5iENRSfTj8z" role="3cqZAp">
          <node concept="3clFbT" id="5iENRSfTqqZ" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5iENRSfMxzD" role="1B3o_S" />
      <node concept="10P_77" id="5iENRSfM_Ft" role="3clF45" />
      <node concept="37vLTG" id="5iENRSfMG6y" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="5iENRSfMG6x" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1OIlcCDhxwX" role="jymVt" />
    <node concept="2YIFZL" id="5PtqdhJ4fda" role="jymVt">
      <property role="TrG5h" value="isSpellcheckerMessage" />
      <node concept="10P_77" id="5PtqdhJ4gZ9" role="3clF45" />
      <node concept="3Tm1VV" id="5PtqdhJ4fdd" role="1B3o_S" />
      <node concept="3clFbS" id="5PtqdhJ4fde" role="3clF47">
        <node concept="3cpWs6" id="5PtqdhJ4iCM" role="3cqZAp">
          <node concept="2ZW3vV" id="5PtqdhJ4jbp" role="3cqZAk">
            <node concept="3uibUv" id="5PtqdhJ4jra" role="2ZW6by">
              <ref role="3uigEE" node="1OIlcCDh_Jr" resolve="CommentSpellChecker.M" />
            </node>
            <node concept="37vLTw" id="5PtqdhJ4iRr" role="2ZW6bz">
              <ref role="3cqZAo" node="5PtqdhJ4hNe" resolve="msg" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5PtqdhJ4hNe" role="3clF46">
        <property role="TrG5h" value="msg" />
        <node concept="3uibUv" id="5PtqdhJ4hNd" role="1tU5fm">
          <ref role="3uigEE" to="kpve:~SimpleEditorMessage" resolve="SimpleEditorMessage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="33z3Yy7kGnQ" role="jymVt" />
    <node concept="2YIFZL" id="33z3Yy7kKa1" role="jymVt">
      <property role="TrG5h" value="incorrectWords" />
      <node concept="10Q1$e" id="33z3Yy7kMl_" role="3clF45">
        <node concept="3uibUv" id="33z3Yy7kMly" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3Tm1VV" id="33z3Yy7kKa4" role="1B3o_S" />
      <node concept="3clFbS" id="33z3Yy7kKa5" role="3clF47">
        <node concept="3clFbJ" id="33z3Yy7kPI0" role="3cqZAp">
          <node concept="3clFbS" id="33z3Yy7kPI2" role="3clFbx">
            <node concept="3cpWs6" id="33z3Yy7kVQs" role="3cqZAp">
              <node concept="2OqwBi" id="33z3Yy7kVZS" role="3cqZAk">
                <node concept="2OwXpG" id="33z3Yy7kVZT" role="2OqNvi">
                  <ref role="2Oxat5" node="5aO34D5s6zk" resolve="myWords" />
                </node>
                <node concept="1eOMI4" id="33z3Yy7kVZU" role="2Oq$k0">
                  <node concept="10QFUN" id="33z3Yy7kVZV" role="1eOMHV">
                    <node concept="3uibUv" id="33z3Yy7kVZW" role="10QFUM">
                      <ref role="3uigEE" node="1OIlcCDh_Jr" resolve="CommentSpellChecker.M" />
                    </node>
                    <node concept="37vLTw" id="33z3Yy7kVZX" role="10QFUP">
                      <ref role="3cqZAo" node="33z3Yy7kNjp" resolve="msg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="33z3Yy7kOp9" role="3clFbw">
            <node concept="3uibUv" id="33z3Yy7kOCu" role="2ZW6by">
              <ref role="3uigEE" node="1OIlcCDh_Jr" resolve="CommentSpellChecker.M" />
            </node>
            <node concept="37vLTw" id="33z3Yy7kO98" role="2ZW6bz">
              <ref role="3cqZAo" node="33z3Yy7kNjp" resolve="msg" />
            </node>
          </node>
          <node concept="9aQIb" id="33z3Yy7kXqn" role="9aQIa">
            <node concept="3clFbS" id="33z3Yy7kXqo" role="9aQI4">
              <node concept="3cpWs6" id="33z3Yy7kXHT" role="3cqZAp">
                <node concept="2ShNRf" id="33z3Yy7kXXo" role="3cqZAk">
                  <node concept="3$_iS1" id="33z3Yy7lui$" role="2ShVmc">
                    <node concept="3$GHV9" id="33z3Yy7luiA" role="3$GQph">
                      <node concept="3cmrfG" id="33z3Yy7lvaN" role="3$I4v7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="33z3Yy7lu0$" role="3$_nBY">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="33z3Yy7kNjp" role="3clF46">
        <property role="TrG5h" value="msg" />
        <node concept="3uibUv" id="33z3Yy7kNjo" role="1tU5fm">
          <ref role="3uigEE" to="kpve:~SimpleEditorMessage" resolve="SimpleEditorMessage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="33z3Yy7mEW4" role="jymVt" />
    <node concept="2YIFZL" id="33z3Yy7mH$5" role="jymVt">
      <property role="TrG5h" value="addToDictionary" />
      <node concept="3cqZAl" id="33z3Yy7mH$7" role="3clF45" />
      <node concept="3Tm1VV" id="33z3Yy7mH$8" role="1B3o_S" />
      <node concept="3clFbS" id="33z3Yy7mH$9" role="3clF47">
        <node concept="3cpWs8" id="mQZQCkd6$h" role="3cqZAp">
          <node concept="3cpWsn" id="mQZQCkd6$i" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="mQZQCkd60S" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="mQZQCkd6$j" role="33vP2m">
              <node concept="37vLTw" id="mQZQCkd6$k" role="2Oq$k0">
                <ref role="3cqZAo" node="33z3Yy7mKg2" resolve="project" />
              </node>
              <node concept="liA8E" id="mQZQCkd6$l" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="33z3Yy7mMDQ" role="3cqZAp">
          <node concept="3cpWsn" id="33z3Yy7mMDR" role="3cpWs9">
            <property role="TrG5h" value="scm" />
            <node concept="3uibUv" id="33z3Yy7mMyV" role="1tU5fm">
              <ref role="3uigEE" to="v6uv:~SpellCheckerManager" resolve="SpellCheckerManager" />
            </node>
            <node concept="2YIFZM" id="2JPK5VccC$E" role="33vP2m">
              <ref role="37wK5l" to="v6uv:~SpellCheckerManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="v6uv:~SpellCheckerManager" resolve="SpellCheckerManager" />
              <node concept="37vLTw" id="2JPK5VccC$F" role="37wK5m">
                <ref role="3cqZAo" node="mQZQCkd6$i" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="33z3Yy7mMTZ" role="3cqZAp">
          <node concept="3clFbS" id="33z3Yy7mMU1" role="3clFbx">
            <node concept="3cpWs6" id="33z3Yy7mNWp" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="33z3Yy7mNA4" role="3clFbw">
            <node concept="10Nm6u" id="33z3Yy7mNKo" role="3uHU7w" />
            <node concept="37vLTw" id="33z3Yy7mNj5" role="3uHU7B">
              <ref role="3cqZAo" node="33z3Yy7mMDR" resolve="scm" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="33z3Yy7mOmE" role="3cqZAp">
          <node concept="2OqwBi" id="33z3Yy7mO_$" role="3clFbG">
            <node concept="37vLTw" id="33z3Yy7mOmC" role="2Oq$k0">
              <ref role="3cqZAo" node="33z3Yy7mMDR" resolve="scm" />
            </node>
            <node concept="liA8E" id="33z3Yy7mP4f" role="2OqNvi">
              <ref role="37wK5l" to="v6uv:~SpellCheckerManager.acceptWordAsCorrect(java.lang.String,com.intellij.openapi.project.Project)" resolve="acceptWordAsCorrect" />
              <node concept="37vLTw" id="33z3Yy7mQyy" role="37wK5m">
                <ref role="3cqZAo" node="33z3Yy7mKnA" resolve="word" />
              </node>
              <node concept="37vLTw" id="33z3Yy7mQQn" role="37wK5m">
                <ref role="3cqZAo" node="mQZQCkd6$i" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="33z3Yy7mKg2" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="33z3Yy7mKg1" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="33z3Yy7mLW_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="33z3Yy7mKnA" role="3clF46">
        <property role="TrG5h" value="word" />
        <node concept="17QB3L" id="mQZQCkd5ZD" role="1tU5fm" />
        <node concept="2AHcQZ" id="33z3Yy7mLiH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PtqdhJ4k4b" role="jymVt" />
    <node concept="312cEu" id="1OIlcCDh_Jr" role="jymVt">
      <property role="TrG5h" value="M" />
      <node concept="312cEg" id="5aO34D5s6zk" role="jymVt">
        <property role="TrG5h" value="myWords" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5aO34D5rVZA" role="1B3o_S" />
        <node concept="10Q1$e" id="5aO34D5s1sR" role="1tU5fm">
          <node concept="3uibUv" id="5aO34D5s1sP" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="1OIlcCDlF6C" role="jymVt">
        <node concept="3cqZAl" id="1OIlcCDlF6E" role="3clF45" />
        <node concept="3clFbS" id="1OIlcCDlF6F" role="3clF47">
          <node concept="XkiVB" id="1OIlcCDmf1V" role="3cqZAp">
            <ref role="37wK5l" to="exr9:~DefaultEditorMessage.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.awt.Color,java.lang.String,jetbrains.mps.openapi.editor.message.EditorMessageOwner)" resolve="DefaultEditorMessage" />
            <node concept="37vLTw" id="1OIlcCDmhXu" role="37wK5m">
              <ref role="3cqZAo" node="1OIlcCDm0o1" resolve="n" />
            </node>
            <node concept="10M0yZ" id="1JsJJ3D3Vem" role="37wK5m">
              <ref role="3cqZAo" to="lzb2:~JBColor.GRAY" resolve="GRAY" />
              <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
            </node>
            <node concept="1rXfSq" id="5aO34D5qE5P" role="37wK5m">
              <ref role="37wK5l" node="5aO34D5qc39" resolve="msg" />
              <node concept="37vLTw" id="5aO34D5qJiW" role="37wK5m">
                <ref role="3cqZAo" node="5aO34D5q$DF" resolve="mistakes" />
              </node>
            </node>
            <node concept="37vLTw" id="1OIlcCDmrd7" role="37wK5m">
              <ref role="3cqZAo" node="1OIlcCDm6f9" resolve="owner" />
            </node>
          </node>
          <node concept="3clFbF" id="5aO34D5shPo" role="3cqZAp">
            <node concept="37vLTI" id="5aO34D5sm$N" role="3clFbG">
              <node concept="2ShNRf" id="5aO34D5ssRz" role="37vLTx">
                <node concept="3$_iS1" id="5aO34D5sZ6d" role="2ShVmc">
                  <node concept="3$GHV9" id="5aO34D5sZ6f" role="3$GQph">
                    <node concept="2OqwBi" id="5aO34D5t9Fe" role="3$I4v7">
                      <node concept="37vLTw" id="5aO34D5t4KJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5aO34D5q$DF" resolve="mistakes" />
                      </node>
                      <node concept="liA8E" id="5aO34D5tgME" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="5aO34D5syMZ" role="3$_nBY">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="5aO34D5shPm" role="37vLTJ">
                <ref role="3cqZAo" node="5aO34D5s6zk" resolve="myWords" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5aO34D5tsDw" role="3cqZAp">
            <node concept="2OqwBi" id="5aO34D5tyzH" role="3clFbG">
              <node concept="37vLTw" id="5aO34D5tsDu" role="2Oq$k0">
                <ref role="3cqZAo" node="5aO34D5q$DF" resolve="mistakes" />
              </node>
              <node concept="liA8E" id="5aO34D5tCVv" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                <node concept="37vLTw" id="5aO34D5tHuk" role="37wK5m">
                  <ref role="3cqZAo" node="5aO34D5s6zk" resolve="myWords" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5aO34D5q$DF" role="3clF46">
          <property role="TrG5h" value="mistakes" />
          <node concept="3uibUv" id="5aO34D5q$DG" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="5aO34D5q$DH" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1OIlcCDm0o1" role="3clF46">
          <property role="TrG5h" value="n" />
          <node concept="3Tqbb2" id="1OIlcCDm3jA" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1OIlcCDm6f9" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="1OIlcCDm9aM" role="1tU5fm">
            <ref role="3uigEE" to="kpve:~EditorMessageOwner" resolve="EditorMessageOwner" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5aO34D5pSkB" role="jymVt" />
      <node concept="2YIFZL" id="5aO34D5qc39" role="jymVt">
        <property role="TrG5h" value="msg" />
        <node concept="3clFbS" id="5aO34D5qc3c" role="3clF47">
          <node concept="3clFbJ" id="5aO34D5qTkN" role="3cqZAp">
            <node concept="3clFbS" id="5aO34D5qTkO" role="3clFbx">
              <node concept="3cpWs6" id="5aO34D5rcE5" role="3cqZAp">
                <node concept="2YIFZM" id="5aO34D5qTkR" role="3cqZAk">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="Xl_RD" id="5aO34D5qTkS" role="37wK5m">
                    <property role="Xl_RC" value="Typo in word '%s'" />
                  </node>
                  <node concept="2OqwBi" id="5aO34D5qTkT" role="37wK5m">
                    <node concept="37vLTw" id="5aO34D5qTkU" role="2Oq$k0">
                      <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                    </node>
                    <node concept="liA8E" id="5aO34D5qTkV" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="5aO34D5qTkW" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5aO34D5qTkY" role="3clFbw">
              <node concept="3cmrfG" id="5aO34D5qTkZ" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5aO34D5qTl0" role="3uHU7B">
                <node concept="37vLTw" id="5aO34D5qTl1" role="2Oq$k0">
                  <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                </node>
                <node concept="liA8E" id="5aO34D5qTl2" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5aO34D5qTl3" role="3eNLev">
              <node concept="3clFbS" id="5aO34D5qTl4" role="3eOfB_">
                <node concept="3cpWs6" id="5aO34D5rsIC" role="3cqZAp">
                  <node concept="2YIFZM" id="5aO34D5qTl7" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="5aO34D5qTl8" role="37wK5m">
                      <property role="Xl_RC" value="Typo in words '%s' and '%s'" />
                    </node>
                    <node concept="2OqwBi" id="5aO34D5qTl9" role="37wK5m">
                      <node concept="37vLTw" id="5aO34D5qTla" role="2Oq$k0">
                        <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                      </node>
                      <node concept="liA8E" id="5aO34D5qTlb" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="5aO34D5qTlc" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5aO34D5qTld" role="37wK5m">
                      <node concept="37vLTw" id="5aO34D5qTle" role="2Oq$k0">
                        <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                      </node>
                      <node concept="liA8E" id="5aO34D5qTlf" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="5aO34D5qTlg" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5aO34D5qTli" role="3eO9$A">
                <node concept="3cmrfG" id="5aO34D5qTlj" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="5aO34D5qTlk" role="3uHU7B">
                  <node concept="37vLTw" id="5aO34D5qTll" role="2Oq$k0">
                    <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                  </node>
                  <node concept="liA8E" id="5aO34D5qTlm" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5aO34D5qTln" role="9aQIa">
              <node concept="3clFbS" id="5aO34D5qTlo" role="9aQI4">
                <node concept="3cpWs6" id="5aO34D5rG6M" role="3cqZAp">
                  <node concept="2YIFZM" id="5aO34D5qTlr" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="5aO34D5qTls" role="37wK5m">
                      <property role="Xl_RC" value="Typo in words '%s', '%s',..." />
                    </node>
                    <node concept="2OqwBi" id="5aO34D5qTlt" role="37wK5m">
                      <node concept="37vLTw" id="5aO34D5qTlu" role="2Oq$k0">
                        <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                      </node>
                      <node concept="liA8E" id="5aO34D5qTlv" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="5aO34D5qTlw" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5aO34D5qTlx" role="37wK5m">
                      <node concept="37vLTw" id="5aO34D5qTly" role="2Oq$k0">
                        <ref role="3cqZAo" node="5aO34D5qhcF" resolve="mistakes" />
                      </node>
                      <node concept="liA8E" id="5aO34D5qTlz" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="5aO34D5qTl$" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="5aO34D5pXk6" role="1B3o_S" />
        <node concept="3uibUv" id="5aO34D5q7e$" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="37vLTG" id="5aO34D5qhcF" role="3clF46">
          <property role="TrG5h" value="mistakes" />
          <node concept="3uibUv" id="5aO34D5qhcE" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="5aO34D5qqag" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lw8JLTxcvQ" role="jymVt" />
      <node concept="2tJIrI" id="2lw8JLTxgcC" role="jymVt" />
      <node concept="3clFb_" id="2lw8JLTxm5E" role="jymVt">
        <property role="TrG5h" value="acceptCell" />
        <node concept="3Tm1VV" id="2lw8JLTxm5F" role="1B3o_S" />
        <node concept="10P_77" id="2lw8JLTxm5H" role="3clF45" />
        <node concept="37vLTG" id="2lw8JLTxm5I" role="3clF46">
          <property role="TrG5h" value="cell" />
          <node concept="3uibUv" id="2lw8JLTxm5J" role="1tU5fm">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
        <node concept="37vLTG" id="2lw8JLTxm5K" role="3clF46">
          <property role="TrG5h" value="editor" />
          <node concept="3uibUv" id="2lw8JLTxm5L" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="3clFbS" id="2lw8JLTxm5M" role="3clF47">
          <node concept="3clFbF" id="2lw8JLTyH52" role="3cqZAp">
            <node concept="1Wc70l" id="2lw8JLTyqH1" role="3clFbG">
              <node concept="2ZW3vV" id="2lw8JLTy93v" role="3uHU7B">
                <node concept="3uibUv" id="2lw8JLTyeU0" role="2ZW6by">
                  <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                </node>
                <node concept="37vLTw" id="2lw8JLTy40o" role="2ZW6bz">
                  <ref role="3cqZAo" node="2lw8JLTxm5I" resolve="cell" />
                </node>
              </node>
              <node concept="2OqwBi" id="2lw8JLTxB2A" role="3uHU7w">
                <node concept="37vLTw" id="2lw8JLTxy8Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lw8JLTxm5K" resolve="editor" />
                </node>
                <node concept="liA8E" id="2lw8JLTxHho" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.isValid(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="isValid" />
                  <node concept="37vLTw" id="2lw8JLTxLPE" role="37wK5m">
                    <ref role="3cqZAo" node="2lw8JLTxm5I" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lw8JLTxm5N" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1OIlcCDhKDY" role="jymVt" />
      <node concept="3clFb_" id="1OIlcCDn1DG" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="3Tm1VV" id="1OIlcCDn1DH" role="1B3o_S" />
        <node concept="3cqZAl" id="1OIlcCDn1DJ" role="3clF45" />
        <node concept="37vLTG" id="1OIlcCDn1DK" role="3clF46">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="1OIlcCDn1DL" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="1OIlcCDn1DM" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="1OIlcCDn1DN" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="1OIlcCDn1DO" role="3clF46">
          <property role="TrG5h" value="cell" />
          <node concept="3uibUv" id="1OIlcCDn7E9" role="1tU5fm">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
        <node concept="3clFbS" id="1OIlcCDn1DQ" role="3clF47">
          <node concept="3clFbJ" id="5aO34D5oP8v" role="3cqZAp">
            <node concept="3clFbS" id="5aO34D5oP8x" role="3clFbx">
              <node concept="3cpWs8" id="5aO34D5tR6j" role="3cqZAp">
                <node concept="3cpWsn" id="5aO34D5tR6k" role="3cpWs9">
                  <property role="TrG5h" value="tl" />
                  <node concept="3uibUv" id="5aO34D5sinx" role="1tU5fm">
                    <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
                  </node>
                  <node concept="2OqwBi" id="5aO34D5tR6l" role="33vP2m">
                    <node concept="1eOMI4" id="5aO34D5tR6m" role="2Oq$k0">
                      <node concept="10QFUN" id="5aO34D5tR6n" role="1eOMHV">
                        <node concept="3uibUv" id="5aO34D5tR6o" role="10QFUM">
                          <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                        </node>
                        <node concept="37vLTw" id="5aO34D5tR6p" role="10QFUP">
                          <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5aO34D5tR6q" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Label.getRenderedTextLine()" resolve="getRenderedTextLine" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5aO34D5_mKe" role="3cqZAp">
                <node concept="3cpWsn" id="5aO34D5_mKf" role="3cpWs9">
                  <property role="TrG5h" value="y" />
                  <property role="3TUv4t" value="true" />
                  <node concept="10Oyi0" id="5aO34D5_mK7" role="1tU5fm" />
                  <node concept="3cpWsd" id="5aO34D5_mKg" role="33vP2m">
                    <node concept="3cpWs3" id="5aO34D5_mKh" role="3uHU7B">
                      <node concept="2OqwBi" id="5aO34D5_mKi" role="3uHU7B">
                        <node concept="37vLTw" id="5aO34D5_mKj" role="2Oq$k0">
                          <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="5aO34D5_mKk" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5aO34D5_mKl" role="3uHU7w">
                        <node concept="37vLTw" id="5aO34D5_mKm" role="2Oq$k0">
                          <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="5aO34D5_mKn" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                        </node>
                      </node>
                    </node>
                    <node concept="10M0yZ" id="5aO34D5_mKo" role="3uHU7w">
                      <ref role="1PxDUh" to="j9ng:~ColorAndGraphicsUtil" resolve="ColorAndGraphicsUtil" />
                      <ref role="3cqZAo" to="j9ng:~ColorAndGraphicsUtil.WAVE_HEIGHT" resolve="WAVE_HEIGHT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5aO34D5xT59" role="3cqZAp">
                <node concept="3cpWsn" id="5aO34D5xT5a" role="3cpWs9">
                  <property role="TrG5h" value="fm" />
                  <node concept="3uibUv" id="3E$e_gSzHSn" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~EditorFontMetrics" resolve="EditorFontMetrics" />
                  </node>
                  <node concept="2OqwBi" id="5aO34D5xT5b" role="33vP2m">
                    <node concept="37vLTw" id="5aO34D5xT5c" role="2Oq$k0">
                      <ref role="3cqZAo" node="5aO34D5tR6k" resolve="tl" />
                    </node>
                    <node concept="liA8E" id="3E$e_gSzHry" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.getEditorFontMetrics()" resolve="getEditorFontMetrics" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5aO34D5ubE$" role="3cqZAp">
                <node concept="3cpWsn" id="5aO34D5ubE_" role="3cpWs9">
                  <property role="TrG5h" value="renderedText" />
                  <property role="3TUv4t" value="true" />
                  <node concept="17QB3L" id="3E$e_gSzI6I" role="1tU5fm" />
                  <node concept="2OqwBi" id="5aO34D5ubEA" role="33vP2m">
                    <node concept="37vLTw" id="5aO34D5ubEB" role="2Oq$k0">
                      <ref role="3cqZAo" node="5aO34D5tR6k" resolve="tl" />
                    </node>
                    <node concept="liA8E" id="5aO34D5ubEC" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.getText()" resolve="getText" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5aO34D5yKUw" role="3cqZAp">
                <node concept="2OqwBi" id="5aO34D5yLn6" role="3clFbG">
                  <node concept="37vLTw" id="5aO34D5yKUu" role="2Oq$k0">
                    <ref role="3cqZAo" node="1OIlcCDn1DK" resolve="g" />
                  </node>
                  <node concept="liA8E" id="5aO34D5yQDE" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                    <node concept="1rXfSq" id="5aO34D5yWWa" role="37wK5m">
                      <ref role="37wK5l" to="exr9:~DefaultEditorMessage.getColor()" resolve="getColor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5aO34D5uHie" role="3cqZAp">
                <node concept="3cpWsn" id="5aO34D5uHih" role="3cpWs9">
                  <property role="TrG5h" value="s" />
                  <node concept="10Oyi0" id="5aO34D5uHib" role="1tU5fm" />
                  <node concept="3cmrfG" id="5aO34D5uUr_" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5aO34D5EUmi" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXoiDy" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXoiDz" role="1PaTwD">
                    <property role="3oM_SC" value="highlight" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiD$" role="1PaTwD">
                    <property role="3oM_SC" value="each" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiD_" role="1PaTwD">
                    <property role="3oM_SC" value="word" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDA" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDB" role="1PaTwD">
                    <property role="3oM_SC" value="once" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDC" role="1PaTwD">
                    <property role="3oM_SC" value="(just" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDD" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDE" role="1PaTwD">
                    <property role="3oM_SC" value="simplicity" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDF" role="1PaTwD">
                    <property role="3oM_SC" value="now," />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDG" role="1PaTwD">
                    <property role="3oM_SC" value="perhaps," />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDH" role="1PaTwD">
                    <property role="3oM_SC" value="shall" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDI" role="1PaTwD">
                    <property role="3oM_SC" value="highlight" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDJ" role="1PaTwD">
                    <property role="3oM_SC" value="all" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDK" role="1PaTwD">
                    <property role="3oM_SC" value="entries." />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDL" role="1PaTwD">
                    <property role="3oM_SC" value="just" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDM" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDN" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDO" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDP" role="1PaTwD">
                    <property role="3oM_SC" value="careful" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDQ" role="1PaTwD">
                    <property role="3oM_SC" value="about" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5aO34D5J7nt" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXoiDR" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXoiDS" role="1PaTwD">
                    <property role="3oM_SC" value="word" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDT" role="1PaTwD">
                    <property role="3oM_SC" value="boundaries" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDU" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDV" role="1PaTwD">
                    <property role="3oM_SC" value="avoid" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDW" role="1PaTwD">
                    <property role="3oM_SC" value="sub-matches)" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5aO34D5G624" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXoiDX" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXoiDY" role="1PaTwD">
                    <property role="3oM_SC" value="assume" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiDZ" role="1PaTwD">
                    <property role="3oM_SC" value="mistakes" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE0" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE1" role="1PaTwD">
                    <property role="3oM_SC" value="reported" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE2" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE3" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE4" role="1PaTwD">
                    <property role="3oM_SC" value="order" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE5" role="1PaTwD">
                    <property role="3oM_SC" value="they" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE6" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE7" role="1PaTwD">
                    <property role="3oM_SC" value="encountered" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE8" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiE9" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEa" role="1PaTwD">
                    <property role="3oM_SC" value="text" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEb" role="1PaTwD">
                    <property role="3oM_SC" value="(though" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEc" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEd" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEe" role="1PaTwD">
                    <property role="3oM_SC" value="big" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEf" role="1PaTwD">
                    <property role="3oM_SC" value="deal" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEg" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEh" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEi" role="1PaTwD">
                    <property role="3oM_SC" value="care" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEj" role="1PaTwD">
                    <property role="3oM_SC" value="about" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoiEk" role="1PaTwD">
                    <property role="3oM_SC" value="order)" />
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="5aO34D5v49B" role="3cqZAp">
                <node concept="3clFbS" id="5aO34D5v49D" role="2LFqv$">
                  <node concept="3cpWs8" id="5aO34D5w3$l" role="3cqZAp">
                    <node concept="3cpWsn" id="5aO34D5w3$m" role="3cpWs9">
                      <property role="TrG5h" value="i" />
                      <node concept="10Oyi0" id="5aO34D5w3$h" role="1tU5fm" />
                      <node concept="2OqwBi" id="5aO34D5w3$n" role="33vP2m">
                        <node concept="37vLTw" id="5aO34D5w3$o" role="2Oq$k0">
                          <ref role="3cqZAo" node="5aO34D5ubE_" resolve="renderedText" />
                        </node>
                        <node concept="liA8E" id="5aO34D5w3$p" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String,int)" resolve="indexOf" />
                          <node concept="37vLTw" id="5aO34D5w3$q" role="37wK5m">
                            <ref role="3cqZAo" node="5aO34D5v49E" resolve="w" />
                          </node>
                          <node concept="37vLTw" id="5aO34D5w3$r" role="37wK5m">
                            <ref role="3cqZAo" node="5aO34D5uHih" resolve="s" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5aO34D5wqGw" role="3cqZAp">
                    <node concept="3clFbS" id="5aO34D5wqGy" role="3clFbx">
                      <node concept="3cpWs8" id="5aO34D5AhBj" role="3cqZAp">
                        <node concept="3cpWsn" id="5aO34D5AhBk" role="3cpWs9">
                          <property role="TrG5h" value="x1" />
                          <node concept="10Oyi0" id="5aO34D5AhBi" role="1tU5fm" />
                          <node concept="2OqwBi" id="5aO34D5AhBl" role="33vP2m">
                            <node concept="37vLTw" id="5aO34D5AhBm" role="2Oq$k0">
                              <ref role="3cqZAo" node="5aO34D5xT5a" resolve="fm" />
                            </node>
                            <node concept="liA8E" id="5aO34D5AhBn" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorFontMetrics.getWidth(java.lang.String,int,int)" resolve="getWidth" />
                              <node concept="37vLTw" id="3E$e_gSzJNd" role="37wK5m">
                                <ref role="3cqZAo" node="5aO34D5ubE_" resolve="renderedText" />
                              </node>
                              <node concept="3cmrfG" id="5aO34D5AF0T" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="5aO34D5AKOC" role="37wK5m">
                                <ref role="3cqZAo" node="5aO34D5w3$m" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="5aO34D5AVQq" role="3cqZAp">
                        <node concept="3cpWsn" id="5aO34D5AVQr" role="3cpWs9">
                          <property role="TrG5h" value="x2" />
                          <node concept="10Oyi0" id="5aO34D5AVQs" role="1tU5fm" />
                          <node concept="2OqwBi" id="5aO34D5AVQt" role="33vP2m">
                            <node concept="37vLTw" id="5aO34D5AVQu" role="2Oq$k0">
                              <ref role="3cqZAo" node="5aO34D5xT5a" resolve="fm" />
                            </node>
                            <node concept="liA8E" id="5aO34D5AVQv" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorFontMetrics.getWidth(java.lang.String,int,int)" resolve="getWidth" />
                              <node concept="37vLTw" id="3E$e_gSzK39" role="37wK5m">
                                <ref role="3cqZAo" node="5aO34D5ubE_" resolve="renderedText" />
                              </node>
                              <node concept="3cmrfG" id="4ez_gUcif_n" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="3cpWs3" id="4ez_gUcivHX" role="37wK5m">
                                <node concept="37vLTw" id="4ez_gUci_4a" role="3uHU7B">
                                  <ref role="3cqZAo" node="5aO34D5w3$m" resolve="i" />
                                </node>
                                <node concept="2OqwBi" id="5aO34D5BI8k" role="3uHU7w">
                                  <node concept="37vLTw" id="5aO34D5BHjI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5aO34D5v49E" resolve="w" />
                                  </node>
                                  <node concept="liA8E" id="5aO34D5BMgX" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5aO34D5ygGu" role="3cqZAp">
                        <node concept="2YIFZM" id="5aO34D5yrSy" role="3clFbG">
                          <ref role="37wK5l" to="j9ng:~ColorAndGraphicsUtil.drawWave(java.awt.Graphics,int,int,int)" resolve="drawWave" />
                          <ref role="1Pybhc" to="j9ng:~ColorAndGraphicsUtil" resolve="ColorAndGraphicsUtil" />
                          <node concept="37vLTw" id="5aO34D5yxCR" role="37wK5m">
                            <ref role="3cqZAo" node="1OIlcCDn1DK" resolve="g" />
                          </node>
                          <node concept="3cpWs3" id="7nbiEN1lXXw" role="37wK5m">
                            <node concept="2OqwBi" id="7nbiEN1m2os" role="3uHU7B">
                              <node concept="37vLTw" id="7nbiEN1m1U3" role="2Oq$k0">
                                <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
                              </node>
                              <node concept="liA8E" id="7nbiEN1mbzp" role="2OqNvi">
                                <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5aO34D5EkDx" role="3uHU7w">
                              <ref role="3cqZAo" node="5aO34D5AhBk" resolve="x1" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="7nbiEN1mlUi" role="37wK5m">
                            <node concept="2OqwBi" id="7nbiEN1mrxR" role="3uHU7B">
                              <node concept="37vLTw" id="7nbiEN1mqWF" role="2Oq$k0">
                                <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
                              </node>
                              <node concept="liA8E" id="7nbiEN1mEeK" role="2OqNvi">
                                <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5aO34D5Eqr8" role="3uHU7w">
                              <ref role="3cqZAo" node="5aO34D5AVQr" resolve="x2" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5aO34D5_L7q" role="37wK5m">
                            <ref role="3cqZAo" node="5aO34D5_mKf" resolve="y" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5aO34D5EDZG" role="3cqZAp">
                        <node concept="37vLTI" id="5aO34D5EJg0" role="3clFbG">
                          <node concept="3cpWs3" id="5aO34D5JwB1" role="37vLTx">
                            <node concept="37vLTw" id="5aO34D5EJrQ" role="3uHU7B">
                              <ref role="3cqZAo" node="5aO34D5w3$m" resolve="i" />
                            </node>
                            <node concept="2OqwBi" id="5aO34D5JHyX" role="3uHU7w">
                              <node concept="37vLTw" id="5aO34D5JGYB" role="2Oq$k0">
                                <ref role="3cqZAo" node="5aO34D5v49E" resolve="w" />
                              </node>
                              <node concept="liA8E" id="5aO34D5JMPD" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5aO34D5EDZE" role="37vLTJ">
                            <ref role="3cqZAo" node="5aO34D5uHih" resolve="s" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2d3UOw" id="5aO34D5xrRX" role="3clFbw">
                      <node concept="37vLTw" id="5aO34D5xxz0" role="3uHU7w">
                        <ref role="3cqZAo" node="5aO34D5uHih" resolve="s" />
                      </node>
                      <node concept="37vLTw" id="5aO34D5x4HW" role="3uHU7B">
                        <ref role="3cqZAo" node="5aO34D5w3$m" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="5aO34D5v49E" role="1Duv9x">
                  <property role="TrG5h" value="w" />
                  <node concept="17QB3L" id="3E$e_gSzJ0g" role="1tU5fm" />
                </node>
                <node concept="37vLTw" id="5aO34D5vk$b" role="1DdaDG">
                  <ref role="3cqZAo" node="5aO34D5s6zk" resolve="myWords" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5aO34D5pelA" role="3clFbw">
              <node concept="3uibUv" id="5aO34D5pjMH" role="2ZW6by">
                <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
              <node concept="37vLTw" id="5aO34D5p47y" role="2ZW6bz">
                <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
              </node>
            </node>
            <node concept="9aQIb" id="5aO34D5KlSs" role="9aQIa">
              <node concept="3clFbS" id="5aO34D5KlSt" role="9aQI4">
                <node concept="3clFbF" id="1OIlcCDndKu" role="3cqZAp">
                  <node concept="2YIFZM" id="1OIlcCDnjNs" role="3clFbG">
                    <ref role="37wK5l" to="ahgl:~ModelProblemMessage.drawWaveUnderCell(java.awt.Graphics,java.awt.Color,jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="drawWaveUnderCell" />
                    <ref role="1Pybhc" to="ahgl:~ModelProblemMessage" resolve="ModelProblemMessage" />
                    <node concept="37vLTw" id="1OIlcCDnqrY" role="37wK5m">
                      <ref role="3cqZAo" node="1OIlcCDn1DK" resolve="g" />
                    </node>
                    <node concept="1rXfSq" id="1OIlcCDnwCG" role="37wK5m">
                      <ref role="37wK5l" to="exr9:~DefaultEditorMessage.getColor()" resolve="getColor" />
                    </node>
                    <node concept="37vLTw" id="1OIlcCDnLqA" role="37wK5m">
                      <ref role="3cqZAo" node="1OIlcCDn1DO" resolve="cell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1OIlcCDn1DR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="1OIlcCDhGb6" role="1zkMxy">
        <ref role="3uigEE" to="exr9:~DefaultEditorMessage" resolve="DefaultEditorMessage" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1OIlcCD3ppQ" role="1B3o_S" />
    <node concept="3uibUv" id="1OIlcCD3rz8" role="1zkMxy">
      <ref role="3uigEE" to="n70j:~BaseEditorChecker" resolve="BaseEditorChecker" />
    </node>
  </node>
  <node concept="312cEu" id="7pzI1FvZpLp">
    <property role="TrG5h" value="NativeLanguageAnalyzer" />
    <node concept="2tJIrI" id="2wVzGkOAFEl" role="jymVt" />
    <node concept="2YIFZL" id="5AhI6VMvAvM" role="jymVt">
      <property role="TrG5h" value="detectNativeLanguage" />
      <node concept="3clFbS" id="5AhI6VMvAvP" role="3clF47">
        <node concept="3SKdUt" id="2soeLt9iz2o" role="3cqZAp">
          <node concept="1PaTwC" id="2soeLt9iz2p" role="1aUNEU">
            <node concept="3oM_SD" id="2soeLt9iz2q" role="1PaTwD">
              <property role="3oM_SC" value="Application" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7j" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7l" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7m" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7n" role="1PaTwD">
              <property role="3oM_SC" value="AuditTypeSystem" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7o" role="1PaTwD">
              <property role="3oM_SC" value="tests," />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7p" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7q" role="1PaTwD">
              <property role="3oM_SC" value="renders" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7r" role="1PaTwD">
              <property role="3oM_SC" value="Grazie" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7s" role="1PaTwD">
              <property role="3oM_SC" value="nonfunctional," />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7t" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7u" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7v" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7w" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7x" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
            <node concept="3oM_SD" id="2soeLt9iz7y" role="1PaTwD">
              <property role="3oM_SC" value="Grazie" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5AhI6VMvBrz" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMvBr$" role="3clFbx">
            <node concept="3cpWs6" id="5AhI6VMvBr_" role="3cqZAp">
              <node concept="Xl_RD" id="5AhI6VMvBDk" role="3cqZAk">
                <property role="Xl_RC" value="Unknown" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2soeLt9hXJ9" role="3clFbw">
            <node concept="3clFbC" id="2soeLt9ixa2" role="3uHU7w">
              <node concept="10Nm6u" id="2soeLt9ixAC" role="3uHU7w" />
              <node concept="2YIFZM" id="2soeLt9iwF9" role="3uHU7B">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
            </node>
            <node concept="2OqwBi" id="5AhI6VMvBrB" role="3uHU7B">
              <node concept="37vLTw" id="5AhI6VMvBrC" role="2Oq$k0">
                <ref role="3cqZAo" node="5AhI6VMvBi3" resolve="text" />
              </node>
              <node concept="17RlXB" id="5AhI6VMvBrD" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5AhI6VMvBrE" role="3cqZAp">
          <node concept="3cpWsn" id="5AhI6VMvBrF" role="3cpWs9">
            <property role="TrG5h" value="nativeLanguage" />
            <node concept="3uibUv" id="5AhI6VMvBrG" role="1tU5fm">
              <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
            </node>
            <node concept="3$87h9" id="7dOUAS9et_x" role="33vP2m">
              <ref role="37wK5l" node="7dOUAS9ef4X" resolve="detectLang" />
              <node concept="37vLTw" id="7dOUAS9et_y" role="37wK5m">
                <ref role="3cqZAo" node="5AhI6VMvBi3" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5AhI6VMvCxX" role="3cqZAp">
          <node concept="3K4zz7" id="5AhI6VMvEfE" role="3cqZAk">
            <node concept="Xl_RD" id="5AhI6VMvEo4" role="3K4E3e">
              <property role="Xl_RC" value="English" />
            </node>
            <node concept="2OqwBi" id="5AhI6VMvFWt" role="3K4GZi">
              <node concept="37vLTw" id="5AhI6VMvEI4" role="2Oq$k0">
                <ref role="3cqZAo" node="5AhI6VMvBrF" resolve="nativeLanguage" />
              </node>
              <node concept="liA8E" id="5AhI6VMvHbH" role="2OqNvi">
                <ref role="37wK5l" to="8vcu:~Lang.getShortDisplayName()" resolve="getShortDisplayName" />
              </node>
            </node>
            <node concept="3clFbC" id="5AhI6VMvDAF" role="3K4Cdx">
              <node concept="10Nm6u" id="5AhI6VMvE7e" role="3uHU7w" />
              <node concept="37vLTw" id="5AhI6VMvCZk" role="3uHU7B">
                <ref role="3cqZAo" node="5AhI6VMvBrF" resolve="nativeLanguage" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5AhI6VMvysZ" role="1B3o_S" />
      <node concept="17QB3L" id="5AhI6VMvAs2" role="3clF45" />
      <node concept="37vLTG" id="5AhI6VMvBi3" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="5AhI6VMvBi2" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="2wVzGkOAG18" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOAG19" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOAG1a" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="x79VA" id="2wVzGkOAGbt" role="3nqlJM">
          <node concept="1PaTwC" id="2wVzGkOAGbu" role="1Vez_I">
            <node concept="3oM_SD" id="2wVzGkOAGbv" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAGlg" role="1PaTwD">
              <property role="3oM_SC" value="short" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAGly" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAGlN" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAGm4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAGm5" role="1PaTwD">
              <property role="3oM_SC" value="detected" />
            </node>
            <node concept="3oM_SD" id="7XQszvNfqU7" role="1PaTwD">
              <property role="3oM_SC" value="language," />
            </node>
            <node concept="3oM_SD" id="7XQszvNfqUo" role="1PaTwD">
              <property role="3oM_SC" value="defaults" />
            </node>
            <node concept="3oM_SD" id="7XQszvNfqUT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7XQszvNfqVa" role="1PaTwD">
              <property role="3oM_SC" value="English," />
            </node>
            <node concept="3oM_SD" id="7XQszvNfqVF" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="7XQszvNfqVW" role="1PaTwD">
              <property role="3oM_SC" value="unknown" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HqAUaLuDhF" role="jymVt" />
    <node concept="2YIFZL" id="7HqAUaLuBpo" role="jymVt">
      <property role="TrG5h" value="isAnyNativeLanguageInstalled" />
      <node concept="3clFbS" id="7HqAUaLuBpp" role="3clF47">
        <node concept="3clFbJ" id="7HqAUaLuBpq" role="3cqZAp">
          <node concept="3clFbS" id="7HqAUaLuBpr" role="3clFbx">
            <node concept="3cpWs6" id="7HqAUaLuBps" role="3cqZAp">
              <node concept="3clFbT" id="7HqAUaLuBpt" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7HqAUaLuBpy" role="3clFbw">
            <node concept="10Nm6u" id="7HqAUaLuBpz" role="3uHU7w" />
            <node concept="2YIFZM" id="7HqAUaLuBp$" role="3uHU7B">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7HqAUaLuBpE" role="3cqZAp">
          <node concept="3eOSWO" id="7HqAUaLuJgJ" role="3cqZAk">
            <node concept="3cmrfG" id="7HqAUaLuJjy" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7HqAUaLuBpJ" role="3uHU7B">
              <node concept="2OqwBi" id="7HqAUaLuBpK" role="2Oq$k0">
                <node concept="2OqwBi" id="7HqAUaLuBpL" role="2Oq$k0">
                  <node concept="10M0yZ" id="7HqAUaLuBpM" role="2Oq$k0">
                    <ref role="3cqZAo" to="44q2:~GrazieConfig.Companion" resolve="Companion" />
                    <ref role="1PxDUh" to="44q2:~GrazieConfig" resolve="GrazieConfig" />
                  </node>
                  <node concept="liA8E" id="7HqAUaLuBpN" role="2OqNvi">
                    <ref role="37wK5l" to="44q2:~GrazieConfig$Companion.get()" resolve="get" />
                  </node>
                </node>
                <node concept="liA8E" id="7HqAUaLuBpO" role="2OqNvi">
                  <ref role="37wK5l" to="44q2:~GrazieConfig$State.getEnabledLanguages()" resolve="getEnabledLanguages" />
                </node>
              </node>
              <node concept="liA8E" id="7HqAUaLuHAC" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7HqAUaLuBpR" role="3clF45" />
      <node concept="3Tm1VV" id="7HqAUaLuBpU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5AhI6VMvHjg" role="jymVt" />
    <node concept="2YIFZL" id="2wVzGkOBbph" role="jymVt">
      <property role="TrG5h" value="isNativeLanguageInstalled" />
      <node concept="3clFbS" id="2wVzGkOBbpn" role="3clF47">
        <node concept="3clFbJ" id="2wVzGkOBbMS" role="3cqZAp">
          <node concept="3clFbS" id="2wVzGkOBbMT" role="3clFbx">
            <node concept="3cpWs6" id="2wVzGkOBbMU" role="3cqZAp">
              <node concept="3clFbT" id="2wVzGkOBbMV" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2wVzGkOBbMW" role="3clFbw">
            <node concept="2OqwBi" id="2wVzGkOBbN1" role="3uHU7B">
              <node concept="37vLTw" id="2wVzGkOBbN2" role="2Oq$k0">
                <ref role="3cqZAo" node="2wVzGkOBbpl" resolve="languageName" />
              </node>
              <node concept="17RlXB" id="2wVzGkOBbN3" role="2OqNvi" />
            </node>
            <node concept="3clFbC" id="2wVzGkOBbN4" role="3uHU7w">
              <node concept="10Nm6u" id="2wVzGkOBbN5" role="3uHU7w" />
              <node concept="2YIFZM" id="2wVzGkOBbN6" role="3uHU7B">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2wVzGkOBbN9" role="3cqZAp">
          <node concept="3cpWsn" id="2wVzGkOBbNa" role="3cpWs9">
            <property role="TrG5h" value="nativeLanguage" />
            <node concept="3uibUv" id="2wVzGkOBbNb" role="1tU5fm">
              <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
            </node>
            <node concept="2YIFZM" id="2wVzGkOBbNc" role="33vP2m">
              <ref role="37wK5l" to="8vcu:~Lang.valueOf(java.lang.String)" resolve="valueOf" />
              <ref role="1Pybhc" to="8vcu:~Lang" resolve="Lang" />
              <node concept="37vLTw" id="2wVzGkOBbNd" role="37wK5m">
                <ref role="3cqZAo" node="2wVzGkOBbpl" resolve="languageName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6deib$laGYq" role="3cqZAp">
          <node concept="1Wc70l" id="6deib$laOk_" role="3cqZAk">
            <node concept="3y3z36" id="6deib$laRCa" role="3uHU7B">
              <node concept="10Nm6u" id="6deib$laT77" role="3uHU7w" />
              <node concept="37vLTw" id="6deib$laPJG" role="3uHU7B">
                <ref role="3cqZAo" node="2wVzGkOBbNa" resolve="nativeLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="6deib$laNbW" role="3uHU7w">
              <node concept="2OqwBi" id="6deib$laNbX" role="2Oq$k0">
                <node concept="2OqwBi" id="6deib$laNbY" role="2Oq$k0">
                  <node concept="10M0yZ" id="6deib$laNbZ" role="2Oq$k0">
                    <ref role="3cqZAo" to="44q2:~GrazieConfig.Companion" resolve="Companion" />
                    <ref role="1PxDUh" to="44q2:~GrazieConfig" resolve="GrazieConfig" />
                  </node>
                  <node concept="liA8E" id="6deib$laNc0" role="2OqNvi">
                    <ref role="37wK5l" to="44q2:~GrazieConfig$Companion.get()" resolve="get" />
                  </node>
                </node>
                <node concept="liA8E" id="6deib$laNc1" role="2OqNvi">
                  <ref role="37wK5l" to="44q2:~GrazieConfig$State.getEnabledLanguages()" resolve="getEnabledLanguages" />
                </node>
              </node>
              <node concept="liA8E" id="6deib$laNc2" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="6deib$laNc3" role="37wK5m">
                  <ref role="3cqZAo" node="2wVzGkOBbNa" resolve="nativeLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2wVzGkOBbpk" role="3clF45" />
      <node concept="37vLTG" id="2wVzGkOBbpl" role="3clF46">
        <property role="TrG5h" value="languageName" />
        <node concept="17QB3L" id="2wVzGkOBbpm" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2wVzGkOBbpj" role="1B3o_S" />
      <node concept="P$JXv" id="2wVzGkOBbpK" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOBbpL" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOBbpM" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="TUZQ0" id="2wVzGkOBbpN" role="3nqlJM">
          <node concept="1PaTwC" id="2wVzGkOBbpO" role="1Vez_I">
            <node concept="3oM_SD" id="2wVzGkOBbpP" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpQ" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpR" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpS" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpT" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpU" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpV" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpW" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpX" role="1PaTwD">
              <property role="3oM_SC" value="constant" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOBbpY" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="1Vtdud" id="2wVzGkOBbpZ" role="1PaTwD">
              <node concept="1VuXuv" id="2wVzGkOBbq0" role="1Vtduc">
                <node concept="1PaTwC" id="2wVzGkOBbq1" role="2JaDBN">
                  <node concept="3oM_SD" id="2wVzGkOBbq2" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
                <node concept="VXe08" id="2wVzGkOBbq3" role="1VuXuu">
                  <ref role="VXe09" to="8vcu:~Lang" resolve="Lang" />
                </node>
              </node>
            </node>
          </node>
          <node concept="zr_55" id="2wVzGkOBbq4" role="zr_5Q">
            <ref role="zr_51" node="2wVzGkOBbpl" resolve="languageName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2wVzGkOB9Kj" role="jymVt" />
    <node concept="2YIFZL" id="5AhI6VMq7ch" role="jymVt">
      <property role="TrG5h" value="isActionDescProperlyCapitalized" />
      <node concept="3clFbS" id="5AhI6VMq7ci" role="3clF47">
        <node concept="3SKdUt" id="2soeLt9izjl" role="3cqZAp">
          <node concept="1PaTwC" id="2soeLt9izjm" role="1aUNEU">
            <node concept="3oM_SD" id="2soeLt9izjn" role="1PaTwD">
              <property role="3oM_SC" value="Application" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjo" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjp" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjq" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjr" role="1PaTwD">
              <property role="3oM_SC" value="AuditTypeSystem" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjs" role="1PaTwD">
              <property role="3oM_SC" value="tests," />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjt" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izju" role="1PaTwD">
              <property role="3oM_SC" value="renders" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjv" role="1PaTwD">
              <property role="3oM_SC" value="Grazie" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjw" role="1PaTwD">
              <property role="3oM_SC" value="nonfunctional," />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjx" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjy" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjz" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izj$" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izj_" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
            <node concept="3oM_SD" id="2soeLt9izjA" role="1PaTwD">
              <property role="3oM_SC" value="Grazie" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5AhI6VMq7cj" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMq7ck" role="3clFbx">
            <node concept="3cpWs6" id="5AhI6VMq7cl" role="3cqZAp">
              <node concept="3clFbT" id="5AhI6VMq7cm" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2soeLt9iyn4" role="3clFbw">
            <node concept="2OqwBi" id="5AhI6VMq7cn" role="3uHU7B">
              <node concept="37vLTw" id="5AhI6VMq7co" role="2Oq$k0">
                <ref role="3cqZAo" node="5AhI6VMq7eD" resolve="text" />
              </node>
              <node concept="17RlXB" id="5AhI6VMq7cp" role="2OqNvi" />
            </node>
            <node concept="3clFbC" id="2soeLt9iywG" role="3uHU7w">
              <node concept="10Nm6u" id="2soeLt9iywH" role="3uHU7w" />
              <node concept="2YIFZM" id="2soeLt9iywI" role="3uHU7B">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5AhI6VMq7cr" role="3cqZAp">
          <node concept="3cpWsn" id="5AhI6VMq7cs" role="3cpWs9">
            <property role="TrG5h" value="nativeLanguage" />
            <node concept="3uibUv" id="5AhI6VMq7ct" role="1tU5fm">
              <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
            </node>
            <node concept="3$87h9" id="7dOUAS9et_H" role="33vP2m">
              <ref role="37wK5l" node="7dOUAS9ef4X" resolve="detectLang" />
              <node concept="37vLTw" id="7dOUAS9et_I" role="37wK5m">
                <ref role="3cqZAo" node="5AhI6VMq7eD" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5AhI6VMqslS" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMqslU" role="3clFbx">
            <node concept="3J1_TO" id="5AhI6VMuYz7" role="3cqZAp">
              <node concept="3clFbS" id="5AhI6VMuYz8" role="1zxBo7">
                <node concept="3clFbF" id="5AhI6VMqDfi" role="3cqZAp">
                  <node concept="37vLTI" id="5AhI6VMqFIV" role="3clFbG">
                    <node concept="37vLTw" id="5AhI6VMqDfg" role="37vLTJ">
                      <ref role="3cqZAo" node="5AhI6VMq7cs" resolve="nativeLanguage" />
                    </node>
                    <node concept="2YIFZM" id="5AhI6VMqHrC" role="37vLTx">
                      <ref role="37wK5l" to="8vcu:~Lang.valueOf(java.lang.String)" resolve="valueOf" />
                      <ref role="1Pybhc" to="8vcu:~Lang" resolve="Lang" />
                      <node concept="Xl_RD" id="5AhI6VMqHrD" role="37wK5m">
                        <property role="Xl_RC" value="AMERICAN_ENGLISH" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="5AhI6VMuYz9" role="1zxBo5">
                <node concept="XOnhg" id="5AhI6VMuYza" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="5AhI6VMuYzb" role="1tU5fm">
                    <node concept="3uibUv" id="5AhI6VMuZh7" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5AhI6VMuYzc" role="1zc67A">
                  <node concept="RRSsy" id="5AhI6VMtsZg" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="2OqwBi" id="5AhI6VMtsZh" role="RRSoy">
                      <node concept="Xl_RD" id="5AhI6VMtsZi" role="2Oq$k0">
                        <property role="Xl_RC" value="The used native language could not be detected in '%s' and the default AMERICAN_ENGLISH language support cannot be initialized. Capitalization check will be disabled." />
                      </node>
                      <node concept="2cAKMz" id="5AhI6VMtsZj" role="2OqNvi">
                        <node concept="37vLTw" id="5AhI6VMtsZk" role="2cAKU6">
                          <ref role="3cqZAo" node="5AhI6VMq7eD" resolve="text" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5AhI6VMuZTB" role="RRSow">
                      <ref role="3cqZAo" node="5AhI6VMuYza" resolve="e" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="5AhI6VMtsZl" role="3cqZAp">
                    <node concept="3clFbT" id="5AhI6VMtsZm" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5AhI6VMq$Lr" role="3clFbw">
            <node concept="10Nm6u" id="5AhI6VMqANU" role="3uHU7w" />
            <node concept="37vLTw" id="5AhI6VMquuA" role="3uHU7B">
              <ref role="3cqZAo" node="5AhI6VMq7cs" resolve="nativeLanguage" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5AhI6VMq7e_" role="3cqZAp">
          <node concept="1rXfSq" id="5AhI6VMqKru" role="3cqZAk">
            <ref role="37wK5l" node="5AhI6VMqQbM" resolve="isDescProperlyCapitalized" />
            <node concept="37vLTw" id="5AhI6VMqMnV" role="37wK5m">
              <ref role="3cqZAo" node="5AhI6VMq7eD" resolve="text" />
            </node>
            <node concept="37vLTw" id="5AhI6VMqOw7" role="37wK5m">
              <ref role="3cqZAo" node="5AhI6VMq7cs" resolve="nativeLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5AhI6VMq7eB" role="1B3o_S" />
      <node concept="10P_77" id="5AhI6VMq7eC" role="3clF45" />
      <node concept="37vLTG" id="5AhI6VMq7eD" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="5AhI6VMq7eE" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="2wVzGkOAED8" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOAED9" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOAETd" role="1PaTwD">
            <property role="3oM_SC" value="Uses" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETe" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETf" role="1PaTwD">
            <property role="3oM_SC" value="grammar" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETg" role="1PaTwD">
            <property role="3oM_SC" value="rules" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETh" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETi" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETk" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAF3Y" role="1PaTwD">
            <property role="3oM_SC" value="detected" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAF4V" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAF5g" role="1PaTwD">
            <property role="3oM_SC" value="'text'" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETl" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETm" role="1PaTwD">
            <property role="3oM_SC" value="assign" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETn" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETo" role="1PaTwD">
            <property role="3oM_SC" value="semantic" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETp" role="1PaTwD">
            <property role="3oM_SC" value="category" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETq" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETr" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETs" role="1PaTwD">
            <property role="3oM_SC" value="word." />
          </node>
        </node>
        <node concept="1PaTwC" id="2wVzGkOAETu" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOAETv" role="1PaTwD">
            <property role="3oM_SC" value="Demands" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETw" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETx" role="1PaTwD">
            <property role="3oM_SC" value="prepositions," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETy" role="1PaTwD">
            <property role="3oM_SC" value="particles," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETz" role="1PaTwD">
            <property role="3oM_SC" value="articles" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAET$" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAET_" role="1PaTwD">
            <property role="3oM_SC" value="conjunctions" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETA" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETB" role="1PaTwD">
            <property role="3oM_SC" value="lower" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETC" role="1PaTwD">
            <property role="3oM_SC" value="case," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETD" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETE" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETF" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETG" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETH" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2wVzGkOAETI" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOAETJ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETK" role="1PaTwD">
            <property role="3oM_SC" value="first" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETL" role="1PaTwD">
            <property role="3oM_SC" value="word," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETM" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETN" role="1PaTwD">
            <property role="3oM_SC" value="words" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETO" role="1PaTwD">
            <property role="3oM_SC" value="must" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETP" role="1PaTwD">
            <property role="3oM_SC" value="start" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETQ" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETR" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETS" role="1PaTwD">
            <property role="3oM_SC" value="capital" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAETT" role="1PaTwD">
            <property role="3oM_SC" value="letter." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AhI6VMq6YE" role="jymVt" />
    <node concept="2YIFZL" id="7pzI1FvZu3e" role="jymVt">
      <property role="TrG5h" value="isActionDescProperlyCapitalized" />
      <node concept="3clFbS" id="7pzI1FvZu3h" role="3clF47">
        <node concept="3clFbJ" id="5AhI6VMp4ZI" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMp4ZK" role="3clFbx">
            <node concept="3cpWs6" id="5AhI6VMpcam" role="3cqZAp">
              <node concept="3clFbT" id="5AhI6VMpefw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2wVzGkOpka0" role="3clFbw">
            <node concept="22lmx$" id="2wVzGkOp8KS" role="3uHU7B">
              <node concept="2OqwBi" id="5AhI6VMp7Bm" role="3uHU7B">
                <node concept="37vLTw" id="5AhI6VMp6gz" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pzI1FvZuwE" resolve="text" />
                </node>
                <node concept="17RlXB" id="5AhI6VMpaGD" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="2wVzGkOp9I$" role="3uHU7w">
                <node concept="37vLTw" id="2wVzGkOp97G" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xq1$bo4DxG" resolve="languageName" />
                </node>
                <node concept="17RlXB" id="2wVzGkOpa7m" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="2wVzGkOpkhD" role="3uHU7w">
              <node concept="10Nm6u" id="2wVzGkOpkhE" role="3uHU7w" />
              <node concept="2YIFZM" id="2wVzGkOpkhF" role="3uHU7B">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5AhI6VMuUVX" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMuUVY" role="1zxBo7">
            <node concept="3cpWs8" id="1xq1$bo4Tif" role="3cqZAp">
              <node concept="3cpWsn" id="1xq1$bo4Tig" role="3cpWs9">
                <property role="TrG5h" value="nativeLanguage" />
                <node concept="3uibUv" id="1xq1$bo4SQ6" role="1tU5fm">
                  <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
                </node>
                <node concept="2YIFZM" id="1xq1$bo4Tih" role="33vP2m">
                  <ref role="37wK5l" to="8vcu:~Lang.valueOf(java.lang.String)" resolve="valueOf" />
                  <ref role="1Pybhc" to="8vcu:~Lang" resolve="Lang" />
                  <node concept="37vLTw" id="1xq1$bo4Tii" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$bo4DxG" resolve="languageName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5AhI6VMt6Q2" role="3cqZAp">
              <node concept="1rXfSq" id="5AhI6VMtaSn" role="3cqZAk">
                <ref role="37wK5l" node="5AhI6VMqQbM" resolve="isDescProperlyCapitalized" />
                <node concept="37vLTw" id="5AhI6VMtgtX" role="37wK5m">
                  <ref role="3cqZAo" node="7pzI1FvZuwE" resolve="text" />
                </node>
                <node concept="37vLTw" id="5AhI6VMtkhL" role="37wK5m">
                  <ref role="3cqZAo" node="1xq1$bo4Tig" resolve="nativeLanguage" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5AhI6VMuUVZ" role="1zxBo5">
            <node concept="XOnhg" id="5AhI6VMuUW0" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="5AhI6VMuUW1" role="1tU5fm">
                <node concept="3uibUv" id="5AhI6VMuVER" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5AhI6VMuUW2" role="1zc67A">
              <node concept="RRSsy" id="5AhI6VMuW2T" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="2OqwBi" id="5AhI6VMuW2U" role="RRSoy">
                  <node concept="Xl_RD" id="5AhI6VMuW2V" role="2Oq$k0">
                    <property role="Xl_RC" value="The specified %s native language support cannot be initialized. Capitalization check will be disabled." />
                  </node>
                  <node concept="2cAKMz" id="5AhI6VMuW2W" role="2OqNvi">
                    <node concept="37vLTw" id="5AhI6VMuW2X" role="2cAKU6">
                      <ref role="3cqZAo" node="1xq1$bo4DxG" resolve="languageName" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5AhI6VMuWet" role="RRSow">
                  <ref role="3cqZAo" node="5AhI6VMuUW0" resolve="e" />
                </node>
              </node>
              <node concept="3cpWs6" id="5AhI6VMuXoV" role="3cqZAp">
                <node concept="3clFbT" id="5AhI6VMuXPp" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7pzI1FvZqfg" role="1B3o_S" />
      <node concept="10P_77" id="7pzI1FvZu34" role="3clF45" />
      <node concept="37vLTG" id="7pzI1FvZuwE" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7pzI1FvZuwD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1xq1$bo4DxG" role="3clF46">
        <property role="TrG5h" value="languageName" />
        <node concept="17QB3L" id="1xq1$bo4Frr" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="2wVzGkOAe6z" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOAe6$" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOAe6_" role="1PaTwD">
            <property role="3oM_SC" value="Uses" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAUe" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAUg" role="1PaTwD">
            <property role="3oM_SC" value="grammar" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAVL" role="1PaTwD">
            <property role="3oM_SC" value="rules" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAXv" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAY0" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAYx" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAYy" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAZ3" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAZ4" role="1PaTwD">
            <property role="3oM_SC" value="assign" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAAZ_" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB06" role="1PaTwD">
            <property role="3oM_SC" value="semantic" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB0B" role="1PaTwD">
            <property role="3oM_SC" value="category" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB18" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB1D" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB3a" role="1PaTwD">
            <property role="3oM_SC" value="word." />
          </node>
        </node>
        <node concept="1PaTwC" id="2wVzGkOAB4c" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOAB4b" role="1PaTwD">
            <property role="3oM_SC" value="Demands" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABbM" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABdk" role="1PaTwD">
            <property role="3oM_SC" value="prepositions," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABel" role="1PaTwD">
            <property role="3oM_SC" value="particles," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABfm" role="1PaTwD">
            <property role="3oM_SC" value="articles" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABfR" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABfS" role="1PaTwD">
            <property role="3oM_SC" value="conjunctions" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABhT" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABiq" role="1PaTwD">
            <property role="3oM_SC" value="lower" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABjV" role="1PaTwD">
            <property role="3oM_SC" value="case," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABks" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABkX" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABmZ" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABnw" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABlu" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2wVzGkOABo2" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOABo1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABwj" role="1PaTwD">
            <property role="3oM_SC" value="first" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABwl" role="1PaTwD">
            <property role="3oM_SC" value="word," />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABxm" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABxR" role="1PaTwD">
            <property role="3oM_SC" value="words" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABzo" role="1PaTwD">
            <property role="3oM_SC" value="must" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOACqP" role="1PaTwD">
            <property role="3oM_SC" value="start" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOABzT" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB$q" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOACrm" role="1PaTwD">
            <property role="3oM_SC" value="capital" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAB_r" role="1PaTwD">
            <property role="3oM_SC" value="letter." />
          </node>
        </node>
        <node concept="TUZQ0" id="2wVzGkOAeeA" role="3nqlJM">
          <node concept="1PaTwC" id="2wVzGkOAeeB" role="1Vez_I">
            <node concept="3oM_SD" id="2wVzGkOAerb" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAfkn" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAfkT" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAflq" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAgep" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAgfB" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAgg8" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAgh9" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAgha" role="1PaTwD">
              <property role="3oM_SC" value="constant" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOAghF" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="1Vtdud" id="2wVzGkOAhlp" role="1PaTwD">
              <node concept="1VuXuv" id="2wVzGkOAhlj" role="1Vtduc">
                <node concept="1PaTwC" id="2wVzGkOAhlk" role="2JaDBN">
                  <node concept="3oM_SD" id="2wVzGkOAhll" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
                <node concept="VXe08" id="2wVzGkOA_VC" role="1VuXuu">
                  <ref role="VXe09" to="8vcu:~Lang" resolve="Lang" />
                </node>
              </node>
            </node>
          </node>
          <node concept="zr_55" id="2wVzGkOAelG" role="zr_5Q">
            <ref role="zr_51" node="1xq1$bo4DxG" resolve="languageName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AhI6VMqPHo" role="jymVt" />
    <node concept="2YIFZL" id="5AhI6VMqQbM" role="jymVt">
      <property role="TrG5h" value="isDescProperlyCapitalized" />
      <node concept="3clFbS" id="5AhI6VMqQbN" role="3clF47">
        <node concept="3clFbJ" id="5AhI6VMqQbO" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMqQbP" role="3clFbx">
            <node concept="3cpWs6" id="5AhI6VMqQbQ" role="3cqZAp">
              <node concept="3clFbT" id="5AhI6VMqQbR" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5AhI6VMqQbS" role="3clFbw">
            <node concept="37vLTw" id="5AhI6VMqQbT" role="2Oq$k0">
              <ref role="3cqZAo" node="5AhI6VMqQea" resolve="text" />
            </node>
            <node concept="17RlXB" id="5AhI6VMqQbU" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5AhI6VMqQbV" role="3cqZAp" />
        <node concept="3cpWs8" id="5AhI6VMqQcg" role="3cqZAp">
          <node concept="3cpWsn" id="5AhI6VMqQch" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="3uibUv" id="5AhI6VMqQci" role="1tU5fm">
              <ref role="3uigEE" to="vjqy:~JLanguageTool" resolve="JLanguageTool" />
            </node>
            <node concept="2OqwBi" id="5AhI6VMqQcj" role="33vP2m">
              <node concept="10M0yZ" id="5AhI6VMqQck" role="2Oq$k0">
                <ref role="3cqZAo" to="8vcu:~LangTool.INSTANCE" resolve="INSTANCE" />
                <ref role="1PxDUh" to="8vcu:~LangTool" resolve="LangTool" />
              </node>
              <node concept="liA8E" id="5AhI6VMqQcl" role="2OqNvi">
                <ref role="37wK5l" to="8vcu:~LangTool.getTool(com.intellij.grazie.jlanguage.Lang,com.intellij.grazie.utils.TextStyleDomain)" resolve="getTool" />
                <node concept="37vLTw" id="5AhI6VMqQcm" role="37wK5m">
                  <ref role="3cqZAo" node="5AhI6VMqQec" resolve="nativeLanguage" />
                </node>
                <node concept="Rm8GO" id="5AhI6VMqQcn" role="37wK5m">
                  <ref role="Rm8GQ" to="rqnh:~TextStyleDomain.CodeDocumentation" resolve="CodeDocumentation" />
                  <ref role="1Px2BO" to="rqnh:~TextStyleDomain" resolve="TextStyleDomain" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5AhI6VMqQco" role="3cqZAp">
          <node concept="3clFbS" id="5AhI6VMqQcp" role="1zxBo7">
            <node concept="3cpWs8" id="5AhI6VMqQcq" role="3cqZAp">
              <node concept="3cpWsn" id="5AhI6VMqQcr" role="3cpWs9">
                <property role="TrG5h" value="analyzedText" />
                <node concept="3uibUv" id="5AhI6VMqQcs" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="5AhI6VMqQct" role="11_B2D">
                    <ref role="3uigEE" to="vjqy:~AnalyzedSentence" resolve="AnalyzedSentence" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5AhI6VMqQcu" role="33vP2m">
                  <node concept="37vLTw" id="5AhI6VMqQcv" role="2Oq$k0">
                    <ref role="3cqZAo" node="5AhI6VMqQch" resolve="tool" />
                  </node>
                  <node concept="liA8E" id="5AhI6VMqQcw" role="2OqNvi">
                    <ref role="37wK5l" to="vjqy:~JLanguageTool.analyzeText(java.lang.String)" resolve="analyzeText" />
                    <node concept="37vLTw" id="5AhI6VMqQcx" role="37wK5m">
                      <ref role="3cqZAo" node="5AhI6VMqQea" resolve="text" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="5AhI6VMqQcE" role="3cqZAp">
              <node concept="3clFbS" id="5AhI6VMqQcF" role="2LFqv$">
                <node concept="3SKdUt" id="5AhI6VMqQcG" role="3cqZAp">
                  <node concept="1PaTwC" id="5AhI6VMqQcH" role="1aUNEU">
                    <node concept="3oM_SD" id="5AhI6VMqQcI" role="1PaTwD">
                      <property role="3oM_SC" value="Ignore" />
                    </node>
                    <node concept="3oM_SD" id="5AhI6VMqQcJ" role="1PaTwD">
                      <property role="3oM_SC" value="non-word" />
                    </node>
                    <node concept="3oM_SD" id="5AhI6VMqQcK" role="1PaTwD">
                      <property role="3oM_SC" value="tokens" />
                    </node>
                    <node concept="3oM_SD" id="5AhI6VMqQcL" role="1PaTwD">
                      <property role="3oM_SC" value="(whitespace," />
                    </node>
                    <node concept="3oM_SD" id="5AhI6VMqQcM" role="1PaTwD">
                      <property role="3oM_SC" value="punctuation," />
                    </node>
                    <node concept="3oM_SD" id="5AhI6VMqQcN" role="1PaTwD">
                      <property role="3oM_SC" value="etc.)" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="5AhI6VMqQcO" role="3cqZAp">
                  <node concept="1PaTwC" id="5AhI6VMqQcP" role="1aUNEU">
                    <node concept="3oM_SD" id="5AhI6VMqQcQ" role="1PaTwD">
                      <property role="3oM_SC" value="Rule-based" />
                    </node>
                    <node concept="3oM_SD" id="5AhI6VMqQcR" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5AhI6VMqQcS" role="3cqZAp">
                  <node concept="3cpWsn" id="5AhI6VMqQcT" role="3cpWs9">
                    <property role="TrG5h" value="insideQuotes" />
                    <node concept="10P_77" id="5AhI6VMqQcU" role="1tU5fm" />
                    <node concept="3clFbT" id="5AhI6VMqQcV" role="33vP2m" />
                  </node>
                </node>
                <node concept="1DcWWT" id="5AhI6VMqQcW" role="3cqZAp">
                  <node concept="2OqwBi" id="5AhI6VMqQcX" role="1DdaDG">
                    <node concept="37vLTw" id="5AhI6VMqQcY" role="2Oq$k0">
                      <ref role="3cqZAo" node="5AhI6VMqQdV" resolve="sentence" />
                    </node>
                    <node concept="liA8E" id="5AhI6VMqQcZ" role="2OqNvi">
                      <ref role="37wK5l" to="vjqy:~AnalyzedSentence.getTokens()" resolve="getTokens" />
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5AhI6VMqQd0" role="1Duv9x">
                    <property role="TrG5h" value="token" />
                    <node concept="3uibUv" id="5AhI6VMqQd1" role="1tU5fm">
                      <ref role="3uigEE" to="vjqy:~AnalyzedTokenReadings" resolve="AnalyzedTokenReadings" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5AhI6VMqQd2" role="2LFqv$">
                    <node concept="3cpWs8" id="5AhI6VMqQd3" role="3cqZAp">
                      <node concept="3cpWsn" id="5AhI6VMqQd4" role="3cpWs9">
                        <property role="TrG5h" value="word" />
                        <node concept="17QB3L" id="5AhI6VMqQd5" role="1tU5fm" />
                        <node concept="2OqwBi" id="5AhI6VMqQd6" role="33vP2m">
                          <node concept="37vLTw" id="5AhI6VMqQd7" role="2Oq$k0">
                            <ref role="3cqZAo" node="5AhI6VMqQd0" resolve="token" />
                          </node>
                          <node concept="liA8E" id="5AhI6VMqQd8" role="2OqNvi">
                            <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.getToken()" resolve="getToken" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5AhI6VMqQd9" role="3cqZAp">
                      <node concept="3clFbS" id="5AhI6VMqQda" role="3clFbx">
                        <node concept="3N13vt" id="5AhI6VMqQdb" role="3cqZAp" />
                      </node>
                      <node concept="1rXfSq" id="5AhI6VMqQdc" role="3clFbw">
                        <ref role="37wK5l" node="7pzI1Fw0fEa" resolve="isIgnorable" />
                        <node concept="37vLTw" id="5AhI6VMqQdd" role="37wK5m">
                          <ref role="3cqZAo" node="5AhI6VMqQd0" resolve="token" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5AhI6VMqQde" role="3cqZAp">
                      <node concept="3clFbS" id="5AhI6VMqQdf" role="3clFbx">
                        <node concept="3clFbF" id="5AhI6VMqQdg" role="3cqZAp">
                          <node concept="37vLTI" id="5AhI6VMqQdh" role="3clFbG">
                            <node concept="3fqX7Q" id="5AhI6VMqQdi" role="37vLTx">
                              <node concept="37vLTw" id="5AhI6VMqQdj" role="3fr31v">
                                <ref role="3cqZAo" node="5AhI6VMqQcT" resolve="insideQuotes" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5AhI6VMqQdk" role="37vLTJ">
                              <ref role="3cqZAo" node="5AhI6VMqQcT" resolve="insideQuotes" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="5AhI6VMqQdl" role="3clFbw">
                        <ref role="37wK5l" node="7pzI1Fw0pi0" resolve="isQuoteSymbol" />
                        <node concept="37vLTw" id="5AhI6VMqQdm" role="37wK5m">
                          <ref role="3cqZAo" node="5AhI6VMqQd0" resolve="token" />
                        </node>
                        <node concept="37vLTw" id="5AhI6VMqQdn" role="37wK5m">
                          <ref role="3cqZAo" node="5AhI6VMqQec" resolve="nativeLanguage" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5AhI6VMqQdo" role="3cqZAp">
                      <node concept="3clFbS" id="5AhI6VMqQdp" role="3clFbx">
                        <node concept="3N13vt" id="5AhI6VMqQdq" role="3cqZAp" />
                      </node>
                      <node concept="37vLTw" id="5AhI6VMqQdr" role="3clFbw">
                        <ref role="3cqZAo" node="5AhI6VMqQcT" resolve="insideQuotes" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5AhI6VMqQds" role="3cqZAp" />
                    <node concept="3cpWs8" id="5AhI6VMqQdt" role="3cqZAp">
                      <node concept="3cpWsn" id="5AhI6VMqQdu" role="3cpWs9">
                        <property role="TrG5h" value="shouldBeLowerCase" />
                        <node concept="10P_77" id="5AhI6VMqQdv" role="1tU5fm" />
                        <node concept="1rXfSq" id="5AhI6VMqQdw" role="33vP2m">
                          <ref role="37wK5l" node="1xq1$boe9QA" resolve="isToBeLowerCase" />
                          <node concept="37vLTw" id="5AhI6VMqQdx" role="37wK5m">
                            <ref role="3cqZAo" node="5AhI6VMqQd0" resolve="token" />
                          </node>
                          <node concept="37vLTw" id="5AhI6VMqQdy" role="37wK5m">
                            <ref role="3cqZAo" node="5AhI6VMqQec" resolve="nativeLanguage" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5AhI6VMqQdz" role="3cqZAp">
                      <node concept="3cpWsn" id="5AhI6VMqQd$" role="3cpWs9">
                        <property role="TrG5h" value="firstChar" />
                        <node concept="10Pfzv" id="5AhI6VMqQd_" role="1tU5fm" />
                        <node concept="2OqwBi" id="5AhI6VMqQdA" role="33vP2m">
                          <node concept="37vLTw" id="5AhI6VMqQdB" role="2Oq$k0">
                            <ref role="3cqZAo" node="5AhI6VMqQd4" resolve="word" />
                          </node>
                          <node concept="liA8E" id="5AhI6VMqQdC" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                            <node concept="3cmrfG" id="5AhI6VMqQdD" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5AhI6VMqQdE" role="3cqZAp">
                      <node concept="37vLTw" id="5AhI6VMqQdF" role="3clFbw">
                        <ref role="3cqZAo" node="5AhI6VMqQdu" resolve="shouldBeLowerCase" />
                      </node>
                      <node concept="9aQIb" id="5AhI6VMqQdG" role="9aQIa">
                        <node concept="3clFbS" id="5AhI6VMqQdH" role="9aQI4">
                          <node concept="3clFbJ" id="5AhI6VMqQdI" role="3cqZAp">
                            <node concept="2YIFZM" id="5AhI6VMqQdJ" role="3clFbw">
                              <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                              <ref role="37wK5l" to="wyt6:~Character.isLowerCase(char)" resolve="isLowerCase" />
                              <node concept="37vLTw" id="5AhI6VMqQdK" role="37wK5m">
                                <ref role="3cqZAo" node="5AhI6VMqQd$" resolve="firstChar" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="5AhI6VMqQdL" role="3clFbx">
                              <node concept="3cpWs6" id="5AhI6VMqQdM" role="3cqZAp">
                                <node concept="3clFbT" id="5AhI6VMqQdN" role="3cqZAk" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5AhI6VMqQdO" role="3clFbx">
                        <node concept="3clFbJ" id="5AhI6VMqQdP" role="3cqZAp">
                          <node concept="2YIFZM" id="5AhI6VMqQdQ" role="3clFbw">
                            <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                            <ref role="37wK5l" to="wyt6:~Character.isUpperCase(char)" resolve="isUpperCase" />
                            <node concept="37vLTw" id="5AhI6VMqQdR" role="37wK5m">
                              <ref role="3cqZAo" node="5AhI6VMqQd$" resolve="firstChar" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5AhI6VMqQdS" role="3clFbx">
                            <node concept="3cpWs6" id="5AhI6VMqQdT" role="3cqZAp">
                              <node concept="3clFbT" id="5AhI6VMqQdU" role="3cqZAk" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5AhI6VMqQdV" role="1Duv9x">
                <property role="TrG5h" value="sentence" />
                <node concept="3uibUv" id="5AhI6VMqQdW" role="1tU5fm">
                  <ref role="3uigEE" to="vjqy:~AnalyzedSentence" resolve="AnalyzedSentence" />
                </node>
              </node>
              <node concept="37vLTw" id="5AhI6VMqQdX" role="1DdaDG">
                <ref role="3cqZAo" node="5AhI6VMqQcr" resolve="analyzedText" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5AhI6VMqQdY" role="1zxBo5">
            <node concept="3clFbS" id="5AhI6VMqQdZ" role="1zc67A">
              <node concept="RRSsy" id="5AhI6VMqQe0" role="3cqZAp">
                <property role="RRSoG" value="gZ5eI4k/fatal" />
                <node concept="3cpWs3" id="4D6iSPOckLf" role="RRSoy">
                  <node concept="37vLTw" id="4D6iSPOclaA" role="3uHU7w">
                    <ref role="3cqZAo" node="5AhI6VMqQea" resolve="text" />
                  </node>
                  <node concept="Xl_RD" id="5AhI6VMqQe1" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to analyze text. " />
                  </node>
                </node>
                <node concept="37vLTw" id="5AhI6VMqQe2" role="RRSow">
                  <ref role="3cqZAo" node="5AhI6VMqQe3" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="5AhI6VMqQe3" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="5AhI6VMqQe4" role="1tU5fm">
                <node concept="3uibUv" id="5AhI6VMqQe5" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5AhI6VMqQe6" role="3cqZAp">
          <node concept="3clFbT" id="5AhI6VMqQe7" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5AhI6VMtXwD" role="1B3o_S" />
      <node concept="10P_77" id="5AhI6VMqQe9" role="3clF45" />
      <node concept="37vLTG" id="5AhI6VMqQea" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="5AhI6VMqQeb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5AhI6VMqQec" role="3clF46">
        <property role="TrG5h" value="nativeLanguage" />
        <node concept="3uibUv" id="5AhI6VMqR_t" role="1tU5fm">
          <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5AhI6VMqPWB" role="jymVt" />
    <node concept="2tJIrI" id="7pzI1Fw08rf" role="jymVt" />
    <node concept="2YIFZL" id="7pzI1Fw0fEa" role="jymVt">
      <property role="TrG5h" value="isIgnorable" />
      <node concept="3clFbS" id="7pzI1Fw0fEd" role="3clF47">
        <node concept="3cpWs8" id="18Bu3Jr5HB" role="3cqZAp">
          <node concept="3cpWsn" id="18Bu3Jr5HA" role="3cpWs9">
            <property role="TrG5h" value="word" />
            <node concept="17QB3L" id="1xq1$bo1JEQ" role="1tU5fm" />
            <node concept="2OqwBi" id="18Bu3Jr5Mz" role="33vP2m">
              <node concept="37vLTw" id="18Bu3Jr5Ks" role="2Oq$k0">
                <ref role="3cqZAo" node="7pzI1Fw0gU$" resolve="token" />
              </node>
              <node concept="liA8E" id="18Bu3Jr5M$" role="2OqNvi">
                <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.getToken()" resolve="getToken" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="18Bu3Jr5HE" role="3cqZAp">
          <node concept="22lmx$" id="18Bu3Jr5HF" role="3cqZAk">
            <node concept="22lmx$" id="18Bu3Jr5HG" role="3uHU7B">
              <node concept="2OqwBi" id="18Bu3Jr5R9" role="3uHU7B">
                <node concept="2OqwBi" id="18Bu3Jr5OX" role="2Oq$k0">
                  <node concept="37vLTw" id="18Bu3Jr5Ko" role="2Oq$k0">
                    <ref role="3cqZAo" node="18Bu3Jr5HA" resolve="word" />
                  </node>
                  <node concept="liA8E" id="18Bu3Jr5OY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.trim()" resolve="trim" />
                  </node>
                </node>
                <node concept="liA8E" id="18Bu3Jr5Ra" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="2OqwBi" id="18Bu3Jr5ND" role="3uHU7w">
                <node concept="37vLTw" id="18Bu3Jr5Kq" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pzI1Fw0gU$" resolve="token" />
                </node>
                <node concept="liA8E" id="18Bu3Jr5NE" role="2OqNvi">
                  <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.isWhitespace()" resolve="isWhitespace" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="18Bu3Jr6ie" role="3uHU7w">
              <node concept="37vLTw" id="18Bu3Jr5ZI" role="2Oq$k0">
                <ref role="3cqZAo" node="7pzI1Fw0gU$" resolve="token" />
              </node>
              <node concept="liA8E" id="18Bu3Jr6R$" role="2OqNvi">
                <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.isFieldCode()" resolve="isFieldCode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7pzI1Fw0aup" role="1B3o_S" />
      <node concept="10P_77" id="7pzI1Fw0fDH" role="3clF45" />
      <node concept="37vLTG" id="7pzI1Fw0gU$" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="7pzI1Fw0gUz" role="1tU5fm">
          <ref role="3uigEE" to="vjqy:~AnalyzedTokenReadings" resolve="AnalyzedTokenReadings" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pzI1Fw0l9J" role="jymVt" />
    <node concept="2YIFZL" id="7pzI1Fw0pi0" role="jymVt">
      <property role="TrG5h" value="isQuoteSymbol" />
      <node concept="3clFbS" id="7pzI1Fw0pi3" role="3clF47">
        <node concept="3clFbJ" id="18Bu3Jra8y" role="3cqZAp">
          <node concept="22lmx$" id="1xq1$bo9PqK" role="3clFbw">
            <node concept="3clFbC" id="18Bu3Jra8z" role="3uHU7B">
              <node concept="37vLTw" id="18Bu3Jra8$" role="3uHU7B">
                <ref role="3cqZAo" node="7pzI1Fw0r2P" resolve="token" />
              </node>
              <node concept="10Nm6u" id="18Bu3Jra8_" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="1xq1$boanRy" role="3uHU7w">
              <node concept="3cmrfG" id="1xq1$boaqdj" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="1xq1$boakxg" role="3uHU7B">
                <node concept="37vLTw" id="1xq1$boakxh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pzI1Fw0r2P" resolve="token" />
                </node>
                <node concept="liA8E" id="1xq1$boakxi" role="2OqNvi">
                  <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.getStartPos()" resolve="getStartPos" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="18Bu3Jra8C" role="3clFbx">
            <node concept="3cpWs6" id="18Bu3Jra8A" role="3cqZAp">
              <node concept="3clFbT" id="18Bu3Jra8B" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xq1$bnZtUD" role="3cqZAp">
          <node concept="3cpWsn" id="1xq1$bnZtUE" role="3cpWs9">
            <property role="TrG5h" value="readings" />
            <node concept="3uibUv" id="1xq1$bnZtDv" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1xq1$bnZtDy" role="11_B2D">
                <ref role="3uigEE" to="vjqy:~AnalyzedToken" resolve="AnalyzedToken" />
              </node>
            </node>
            <node concept="2OqwBi" id="1xq1$bnZtUF" role="33vP2m">
              <node concept="37vLTw" id="1xq1$bnZtUG" role="2Oq$k0">
                <ref role="3cqZAo" node="7pzI1Fw0r2P" resolve="token" />
              </node>
              <node concept="liA8E" id="1xq1$bnZtUH" role="2OqNvi">
                <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.getReadings()" resolve="getReadings" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1xq1$bnXHa3" role="3cqZAp">
          <node concept="3clFbS" id="1xq1$bnXHa5" role="2LFqv$">
            <node concept="3cpWs8" id="1xq1$bnXSQ2" role="3cqZAp">
              <node concept="3cpWsn" id="1xq1$bnXSQ3" role="3cpWs9">
                <property role="TrG5h" value="tagDesc" />
                <node concept="17QB3L" id="1xq1$boeRZj" role="1tU5fm" />
                <node concept="2OqwBi" id="1xq1$bnXSQ4" role="33vP2m">
                  <node concept="37vLTw" id="1xq1$bnXSQ5" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xq1$bnXHa6" resolve="analyzedToken" />
                  </node>
                  <node concept="liA8E" id="1xq1$bnXSQ6" role="2OqNvi">
                    <ref role="37wK5l" to="vjqy:~AnalyzedToken.getPOSTag()" resolve="getPOSTag" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1xq1$boeirJ" role="3cqZAp">
              <node concept="3clFbS" id="1xq1$boeirL" role="3clFbx">
                <node concept="3cpWs6" id="1xq1$boeKx_" role="3cqZAp">
                  <node concept="3clFbT" id="1xq1$boeN0U" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="1xq1$bofDNW" role="3clFbw">
                <node concept="2OqwBi" id="1xq1$boeB5R" role="3uHU7B">
                  <node concept="Xl_RD" id="1xq1$boekCt" role="2Oq$k0">
                    <property role="Xl_RC" value="_QM_OPEN" />
                  </node>
                  <node concept="liA8E" id="1xq1$boeEmy" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="1xq1$boeGF3" role="37wK5m">
                      <ref role="3cqZAo" node="1xq1$bnXSQ3" resolve="tagDesc" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1xq1$bofGii" role="3uHU7w">
                  <node concept="Xl_RD" id="1xq1$bofGij" role="2Oq$k0">
                    <property role="Xl_RC" value="_QM_CLOSE" />
                  </node>
                  <node concept="liA8E" id="1xq1$bofGik" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="1xq1$bofGil" role="37wK5m">
                      <ref role="3cqZAo" node="1xq1$bnXSQ3" resolve="tagDesc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1xq1$bnXHa6" role="1Duv9x">
            <property role="TrG5h" value="analyzedToken" />
            <node concept="3uibUv" id="1xq1$bnXIMy" role="1tU5fm">
              <ref role="3uigEE" to="vjqy:~AnalyzedToken" resolve="AnalyzedToken" />
            </node>
          </node>
          <node concept="37vLTw" id="1xq1$bnXKJp" role="1DdaDG">
            <ref role="3cqZAo" node="1xq1$bnZtUE" resolve="readings" />
          </node>
        </node>
        <node concept="3cpWs6" id="18Bu3Jra8D" role="3cqZAp">
          <node concept="3clFbT" id="1xq1$bnYtuW" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7pzI1Fw0njY" role="1B3o_S" />
      <node concept="10P_77" id="7pzI1Fw0pht" role="3clF45" />
      <node concept="37vLTG" id="7pzI1Fw0r2P" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="1xq1$bnXxuc" role="1tU5fm">
          <ref role="3uigEE" to="vjqy:~AnalyzedTokenReadings" resolve="AnalyzedTokenReadings" />
        </node>
      </node>
      <node concept="37vLTG" id="1xq1$bo5P8b" role="3clF46">
        <property role="TrG5h" value="nativeLang" />
        <node concept="3uibUv" id="1xq1$bo5Ri_" role="1tU5fm">
          <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1xq1$boeRkv" role="jymVt" />
    <node concept="2YIFZL" id="1xq1$boe9QA" role="jymVt">
      <property role="TrG5h" value="isToBeLowerCase" />
      <node concept="3clFbS" id="1xq1$boe9QB" role="3clF47">
        <node concept="3clFbJ" id="1xq1$boe9QG" role="3cqZAp">
          <node concept="22lmx$" id="1xq1$boe9QH" role="3clFbw">
            <node concept="3clFbC" id="1xq1$boe9QI" role="3uHU7B">
              <node concept="37vLTw" id="1xq1$boe9QJ" role="3uHU7B">
                <ref role="3cqZAo" node="1xq1$boe9RC" resolve="token" />
              </node>
              <node concept="10Nm6u" id="1xq1$boe9QK" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="1xq1$boe9QL" role="3uHU7w">
              <node concept="3cmrfG" id="1xq1$boe9QM" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="1xq1$boe9QN" role="3uHU7B">
                <node concept="37vLTw" id="1xq1$boe9QO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xq1$boe9RC" resolve="token" />
                </node>
                <node concept="liA8E" id="1xq1$boe9QP" role="2OqNvi">
                  <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.getStartPos()" resolve="getStartPos" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$boe9QQ" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$boe9QR" role="3cqZAp">
              <node concept="3clFbT" id="1xq1$boe9QS" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xq1$boe9QT" role="3cqZAp">
          <node concept="3cpWsn" id="1xq1$boe9QU" role="3cpWs9">
            <property role="TrG5h" value="readings" />
            <node concept="3uibUv" id="1xq1$boe9QV" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1xq1$boe9QW" role="11_B2D">
                <ref role="3uigEE" to="vjqy:~AnalyzedToken" resolve="AnalyzedToken" />
              </node>
            </node>
            <node concept="2OqwBi" id="1xq1$boe9QX" role="33vP2m">
              <node concept="37vLTw" id="1xq1$boe9QY" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$boe9RC" resolve="token" />
              </node>
              <node concept="liA8E" id="1xq1$boe9QZ" role="2OqNvi">
                <ref role="37wK5l" to="vjqy:~AnalyzedTokenReadings.getReadings()" resolve="getReadings" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="51B5bJ$BB4z" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2xdQw9" id="1xq1$boe9R0" role="8Wnug">
            <property role="2xdLsb" value="gZ5fh_4/error" />
            <node concept="3cpWs3" id="1xq1$boe9R1" role="9lYJi">
              <node concept="37vLTw" id="1xq1$boe9R2" role="3uHU7w">
                <ref role="3cqZAo" node="1xq1$boe9QU" resolve="readings" />
              </node>
              <node concept="Xl_RD" id="1xq1$boe9R3" role="3uHU7B">
                <property role="Xl_RC" value="All tokens " />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1xq1$boe9R4" role="3cqZAp">
          <node concept="3clFbS" id="1xq1$boe9R5" role="2LFqv$">
            <node concept="3cpWs8" id="1xq1$boe9R6" role="3cqZAp">
              <node concept="3cpWsn" id="1xq1$boe9R7" role="3cpWs9">
                <property role="TrG5h" value="tagDesc" />
                <node concept="3uibUv" id="1xq1$boe9R8" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="1xq1$boe9R9" role="33vP2m">
                  <node concept="37vLTw" id="1xq1$boe9Ra" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xq1$boe9Rx" resolve="analyzedToken" />
                  </node>
                  <node concept="liA8E" id="1xq1$boe9Rb" role="2OqNvi">
                    <ref role="37wK5l" to="vjqy:~AnalyzedToken.getPOSTag()" resolve="getPOSTag" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xq1$boe9Rc" role="3cqZAp">
              <node concept="3cpWsn" id="1xq1$boe9Rd" role="3cpWs9">
                <property role="TrG5h" value="category" />
                <node concept="3uibUv" id="1xq1$boe9Re" role="1tU5fm">
                  <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                </node>
                <node concept="2YIFZM" id="1xq1$boe9Rf" role="33vP2m">
                  <ref role="37wK5l" node="1xq1$bo1KCl" resolve="getCategory" />
                  <ref role="1Pybhc" node="1xq1$bo1Kx5" resolve="NativeLanguageUtil" />
                  <node concept="37vLTw" id="1xq1$boe9Rg" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$boe9R7" resolve="tagDesc" />
                  </node>
                  <node concept="37vLTw" id="1xq1$boe9Rh" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$boe9RE" resolve="nativeLang" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="51B5bJ$BDKh" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="2xdQw9" id="1xq1$boe9Ri" role="8Wnug">
                <property role="2xdLsb" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="1xq1$boe9Rj" role="9lYJi">
                  <node concept="37vLTw" id="1xq1$boe9Rk" role="3uHU7w">
                    <ref role="3cqZAo" node="1xq1$boe9Rd" resolve="category" />
                  </node>
                  <node concept="3cpWs3" id="1xq1$boe9Rl" role="3uHU7B">
                    <node concept="3cpWs3" id="1xq1$boe9Rm" role="3uHU7B">
                      <node concept="Xl_RD" id="1xq1$boe9Rn" role="3uHU7B">
                        <property role="Xl_RC" value="Token " />
                      </node>
                      <node concept="37vLTw" id="1xq1$boe9Ro" role="3uHU7w">
                        <ref role="3cqZAo" node="1xq1$boe9R7" resolve="tagDesc" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="1xq1$boe9Rp" role="3uHU7w">
                      <property role="Xl_RC" value=":***" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1xq1$boe9Rq" role="3cqZAp">
              <node concept="3clFbS" id="1xq1$boe9Rr" role="3clFbx">
                <node concept="3cpWs6" id="1xq1$boe9Rs" role="3cqZAp">
                  <node concept="3clFbT" id="1xq1$boe9Rt" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1xq1$boe9Ru" role="3clFbw">
                <node concept="37vLTw" id="1xq1$boe9Rv" role="3uHU7B">
                  <ref role="3cqZAo" node="1xq1$boe9Rd" resolve="category" />
                </node>
                <node concept="Rm8GO" id="1xq1$boe9Rw" role="3uHU7w">
                  <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
                  <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1xq1$boe9Rx" role="1Duv9x">
            <property role="TrG5h" value="analyzedToken" />
            <node concept="3uibUv" id="1xq1$boe9Ry" role="1tU5fm">
              <ref role="3uigEE" to="vjqy:~AnalyzedToken" resolve="AnalyzedToken" />
            </node>
          </node>
          <node concept="37vLTw" id="1xq1$boe9Rz" role="1DdaDG">
            <ref role="3cqZAo" node="1xq1$boe9QU" resolve="readings" />
          </node>
        </node>
        <node concept="3cpWs6" id="1xq1$boe9R$" role="3cqZAp">
          <node concept="3clFbT" id="1xq1$boe9R_" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1xq1$boe9RA" role="1B3o_S" />
      <node concept="10P_77" id="1xq1$boe9RB" role="3clF45" />
      <node concept="37vLTG" id="1xq1$boe9RC" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="1xq1$boe9RD" role="1tU5fm">
          <ref role="3uigEE" to="vjqy:~AnalyzedTokenReadings" resolve="AnalyzedTokenReadings" />
        </node>
      </node>
      <node concept="37vLTG" id="1xq1$boe9RE" role="3clF46">
        <property role="TrG5h" value="nativeLang" />
        <node concept="3uibUv" id="1xq1$boe9RF" role="1tU5fm">
          <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7pzI1FvZpLq" role="1B3o_S" />
    <node concept="2YIFZL" id="7dOUAS9ef4X" role="jymVt">
      <property role="TrG5h" value="detectLang" />
      <node concept="37vLTG" id="7dOUAS9ef4Y" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7dOUAS9ef4Z" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7dOUAS9ef50" role="3clF47">
        <node concept="3SKdUt" id="7dOUAS9ef5K" role="3cqZAp">
          <node concept="1PaTwC" id="7dOUAS9ef5L" role="1aUNEU">
            <node concept="3oM_SD" id="7dOUAS9ef5N" role="1PaTwD">
              <property role="3oM_SC" value="Grazie" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5O" role="1PaTwD">
              <property role="3oM_SC" value="dropped" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5P" role="1PaTwD">
              <property role="3oM_SC" value="LangDetector.getLang(String);" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5Q" role="1PaTwD">
              <property role="3oM_SC" value="replicate" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5R" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5S" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5T" role="1PaTwD">
              <property role="3oM_SC" value="top" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5U" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5V" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5W" role="1PaTwD">
              <property role="3oM_SC" value="shared" />
            </node>
            <node concept="3oM_SD" id="7dOUAS9ef5X" role="1PaTwD">
              <property role="3oM_SC" value="detector" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7dOUAS9ef52" role="3cqZAp">
          <node concept="3cpWsn" id="7dOUAS9ef51" role="3cpWs9">
            <property role="TrG5h" value="sample" />
            <node concept="3uibUv" id="7dOUAS9ef53" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1eOMI4" id="7dOUAS9ef5c" role="33vP2m">
              <node concept="3K4zz7" id="7dOUAS9ef5b" role="1eOMHV">
                <node concept="3eOSWO" id="7dOUAS9ef54" role="3K4Cdx">
                  <node concept="2OqwBi" id="7dOUAS9egCX" role="3uHU7B">
                    <node concept="37vLTw" id="7dOUAS9eg1$" role="2Oq$k0">
                      <ref role="3cqZAo" node="7dOUAS9ef4Y" resolve="text" />
                    </node>
                    <node concept="liA8E" id="7dOUAS9egCY" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="7dOUAS9egB$" role="3uHU7w">
                    <ref role="1PxDUh" to="rqnh:~LanguageDetectorHolder" resolve="LanguageDetectorHolder" />
                    <ref role="3cqZAo" to="rqnh:~LanguageDetectorHolder.LIMIT" resolve="LIMIT" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7dOUAS9egDc" role="3K4E3e">
                  <node concept="37vLTw" id="7dOUAS9egBH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7dOUAS9ef4Y" resolve="text" />
                  </node>
                  <node concept="liA8E" id="7dOUAS9egDd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                    <node concept="3cmrfG" id="7dOUAS9egDe" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10M0yZ" id="7dOUAS9egE7" role="37wK5m">
                      <ref role="1PxDUh" to="rqnh:~LanguageDetectorHolder" resolve="LanguageDetectorHolder" />
                      <ref role="3cqZAo" to="rqnh:~LanguageDetectorHolder.LIMIT" resolve="LIMIT" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7dOUAS9ef5a" role="3K4GZi">
                  <ref role="3cqZAo" node="7dOUAS9ef4Y" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7dOUAS9ef5e" role="3cqZAp">
          <node concept="3cpWsn" id="7dOUAS9ef5d" role="3cpWs9">
            <property role="TrG5h" value="detected" />
            <node concept="3uibUv" id="7dOUAS9ef5f" role="1tU5fm">
              <ref role="3uigEE" to="neu9:~Language" resolve="ai.grazie.nlp.langs.Language" />
            </node>
            <node concept="2OqwBi" id="7dOUAS9egOk" role="33vP2m">
              <node concept="2OqwBi" id="7dOUAS9egFO" role="2Oq$k0">
                <node concept="2OqwBi" id="7dOUAS9egDE" role="2Oq$k0">
                  <node concept="10M0yZ" id="7dOUAS9egC9" role="2Oq$k0">
                    <ref role="1PxDUh" to="rqnh:~LanguageDetectorHolder" resolve="LanguageDetectorHolder" />
                    <ref role="3cqZAo" to="rqnh:~LanguageDetectorHolder.INSTANCE" resolve="INSTANCE" />
                  </node>
                  <node concept="liA8E" id="7dOUAS9egDF" role="2OqNvi">
                    <ref role="37wK5l" to="rqnh:~LanguageDetectorHolder.get()" resolve="get" />
                  </node>
                </node>
                <node concept="liA8E" id="7dOUAS9egFP" role="2OqNvi">
                  <ref role="37wK5l" to="1ige:~ChainLanguageDetector.detect(java.lang.Object,boolean)" resolve="detect" />
                  <node concept="37vLTw" id="7dOUAS9egFQ" role="37wK5m">
                    <ref role="3cqZAo" node="7dOUAS9ef51" resolve="sample" />
                  </node>
                  <node concept="3clFbT" id="7dOUAS9egFR" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="7dOUAS9egOl" role="2OqNvi">
                <ref role="37wK5l" to="1ige:~LanguageDetector$DetectionResult.getPreferred()" resolve="getPreferred" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7dOUAS9ef5l" role="3cqZAp">
          <node concept="3clFbC" id="7dOUAS9ef5m" role="3clFbw">
            <node concept="37vLTw" id="7dOUAS9ef5n" role="3uHU7B">
              <ref role="3cqZAo" node="7dOUAS9ef5d" resolve="detected" />
            </node>
            <node concept="Rm8GO" id="7dOUAS9egCj" role="3uHU7w">
              <ref role="1Px2BO" to="neu9:~Language" resolve="Language" />
              <ref role="Rm8GQ" to="neu9:~Language.UNKNOWN" resolve="UNKNOWN" />
            </node>
          </node>
          <node concept="3clFbS" id="7dOUAS9ef5q" role="3clFbx">
            <node concept="3cpWs6" id="7dOUAS9ef5r" role="3cqZAp">
              <node concept="10Nm6u" id="7dOUAS9ef5s" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7dOUAS9ef5t" role="3cqZAp">
          <node concept="2OqwBi" id="7dOUAS9ep3o" role="1DdaDG">
            <node concept="2OqwBi" id="7dOUAS9ep3r" role="2Oq$k0">
              <node concept="10M0yZ" id="7dOUAS9ep3u" role="2Oq$k0">
                <ref role="3cqZAo" to="44q2:~GrazieConfig.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="44q2:~GrazieConfig" resolve="GrazieConfig" />
              </node>
              <node concept="liA8E" id="7dOUAS9ep3v" role="2OqNvi">
                <ref role="37wK5l" to="44q2:~GrazieConfig$Companion.get()" resolve="get" />
              </node>
            </node>
            <node concept="liA8E" id="7dOUAS9ep3w" role="2OqNvi">
              <ref role="37wK5l" to="44q2:~GrazieConfig$State.getAvailableLanguages()" resolve="getAvailableLanguages" />
            </node>
          </node>
          <node concept="3cpWsn" id="7dOUAS9ef5B" role="1Duv9x">
            <property role="TrG5h" value="lang" />
            <node concept="3uibUv" id="7dOUAS9ef5D" role="1tU5fm">
              <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
            </node>
          </node>
          <node concept="3clFbS" id="7dOUAS9ef5v" role="2LFqv$">
            <node concept="3clFbJ" id="7dOUAS9ef5w" role="3cqZAp">
              <node concept="2OqwBi" id="7dOUAS9egDW" role="3clFbw">
                <node concept="37vLTw" id="7dOUAS9egCH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7dOUAS9ef5B" resolve="lang" />
                </node>
                <node concept="liA8E" id="7dOUAS9egDX" role="2OqNvi">
                  <ref role="37wK5l" to="8vcu:~Lang.equalsTo(ai.grazie.nlp.langs.Language)" resolve="equalsTo" />
                  <node concept="37vLTw" id="7dOUAS9egDY" role="37wK5m">
                    <ref role="3cqZAo" node="7dOUAS9ef5d" resolve="detected" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7dOUAS9ef5$" role="3clFbx">
                <node concept="3cpWs6" id="7dOUAS9ef5_" role="3cqZAp">
                  <node concept="37vLTw" id="7dOUAS9ef5A" role="3cqZAk">
                    <ref role="3cqZAo" node="7dOUAS9ef5B" resolve="lang" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7dOUAS9ef5G" role="3cqZAp">
          <node concept="10Nm6u" id="7dOUAS9ef5H" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7dOUAS9ef5I" role="1B3o_S" />
      <node concept="3uibUv" id="7dOUAS9ef5J" role="3clF45">
        <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1xq1$bo1Kx5">
    <property role="TrG5h" value="NativeLanguageUtil" />
    <node concept="Qs71p" id="1xq1$bo1KxL" role="jymVt">
      <property role="TrG5h" value="Category" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="1xq1$bo1KxM" role="1B3o_S" />
      <node concept="QsSxf" id="1xq1$bo1KxO" role="Qtgdg">
        <property role="TrG5h" value="ARTICLE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="1xq1$bo1KxQ" role="Qtgdg">
        <property role="TrG5h" value="PREPOSITION" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="1xq1$bo4pCS" role="Qtgdg">
        <property role="TrG5h" value="CONJUNCTION" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="1xq1$bo1KxS" role="Qtgdg">
        <property role="TrG5h" value="PARTICLE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="1xq1$bo1KxU" role="Qtgdg">
        <property role="TrG5h" value="OTHER" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xq1$bo1Kxy" role="jymVt" />
    <node concept="2YIFZL" id="1xq1$bo1KCl" role="jymVt">
      <property role="TrG5h" value="getCategory" />
      <node concept="37vLTG" id="1xq1$bo1KCm" role="3clF46">
        <property role="TrG5h" value="posTag" />
        <node concept="2AHcQZ" id="1xq1$bo1KCn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="17QB3L" id="1xq1$bobnsD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1xq1$bo1KCp" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="2AHcQZ" id="1xq1$bo1KCq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="1xq1$bo1KCr" role="1tU5fm">
          <ref role="3uigEE" to="8vcu:~Lang" resolve="Lang" />
        </node>
      </node>
      <node concept="3clFbS" id="1xq1$bo1KCs" role="3clF47">
        <node concept="3clFbJ" id="1xq1$bo1KCt" role="3cqZAp">
          <node concept="22lmx$" id="1xq1$bo1KCu" role="3clFbw">
            <node concept="3clFbC" id="1xq1$bo1KCv" role="3uHU7B">
              <node concept="37vLTw" id="1xq1$bo1KCw" role="3uHU7B">
                <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
              </node>
              <node concept="10Nm6u" id="1xq1$bo1KCx" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="1xq1$bo1Mvs" role="3uHU7w">
              <node concept="37vLTw" id="1xq1$bo1KUv" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
              </node>
              <node concept="liA8E" id="1xq1$bo1Mvt" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KC_" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KCz" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTl" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="1xq1$bo1WTB" role="3cqZAp">
          <node concept="3KbdKl" id="1xq1$bo1ZFa" role="3KbHQx">
            <node concept="Xl_RD" id="1xq1$bo20wp" role="3Kbmr1">
              <property role="Xl_RC" value="English" />
            </node>
            <node concept="3clFbS" id="1xq1$bo218$" role="3Kbo56">
              <node concept="3cpWs6" id="1xq1$bo2225" role="3cqZAp">
                <node concept="1rXfSq" id="1xq1$bo22Qj" role="3cqZAk">
                  <ref role="37wK5l" node="1xq1$bo1KCD" resolve="mapEnglish" />
                  <node concept="37vLTw" id="1xq1$bo23qk" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1xq1$bo23Km" role="3KbHQx">
            <node concept="Xl_RD" id="1xq1$bo23Kn" role="3Kbmr1">
              <property role="Xl_RC" value="Dutch" />
            </node>
            <node concept="3clFbS" id="1xq1$bo23Ko" role="3Kbo56">
              <node concept="3cpWs6" id="1xq1$bo23Kp" role="3cqZAp">
                <node concept="1rXfSq" id="1xq1$bo23Kq" role="3cqZAk">
                  <ref role="37wK5l" node="1xq1$bo1KD6" resolve="mapDutch" />
                  <node concept="37vLTw" id="1xq1$bo23Kr" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1xq1$bo244F" role="3KbHQx">
            <node concept="Xl_RD" id="1xq1$bo244G" role="3Kbmr1">
              <property role="Xl_RC" value="German" />
            </node>
            <node concept="3clFbS" id="1xq1$bo244H" role="3Kbo56">
              <node concept="3cpWs6" id="1xq1$bo244I" role="3cqZAp">
                <node concept="1rXfSq" id="1xq1$bo244J" role="3cqZAk">
                  <ref role="37wK5l" node="1xq1$bo1KDw" resolve="mapGerman" />
                  <node concept="37vLTw" id="1xq1$bo244K" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1xq1$bo24p_" role="3KbHQx">
            <node concept="Xl_RD" id="1xq1$bo24pA" role="3Kbmr1">
              <property role="Xl_RC" value="French" />
            </node>
            <node concept="3clFbS" id="1xq1$bo24pB" role="3Kbo56">
              <node concept="3cpWs6" id="1xq1$bo24pC" role="3cqZAp">
                <node concept="1rXfSq" id="1xq1$bo24pD" role="3cqZAk">
                  <ref role="37wK5l" node="1xq1$bo1KDU" resolve="mapFrench" />
                  <node concept="37vLTw" id="1xq1$bo24pE" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1xq1$bo24J4" role="3KbHQx">
            <node concept="Xl_RD" id="1xq1$bo24J5" role="3Kbmr1">
              <property role="Xl_RC" value="Spanish" />
            </node>
            <node concept="3clFbS" id="1xq1$bo24J6" role="3Kbo56">
              <node concept="3cpWs6" id="1xq1$bo24J7" role="3cqZAp">
                <node concept="1rXfSq" id="1xq1$bo24J8" role="3cqZAk">
                  <ref role="37wK5l" node="1xq1$bo1KEk" resolve="mapSpanish" />
                  <node concept="37vLTw" id="1xq1$bo24J9" role="37wK5m">
                    <ref role="3cqZAo" node="1xq1$bo1KCm" resolve="posTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1xq1$bo1Y0F" role="3KbGdf">
            <node concept="37vLTw" id="1xq1$bo1XqO" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KCp" resolve="lang" />
            </node>
            <node concept="liA8E" id="2wVzGkO25wb" role="2OqNvi">
              <ref role="37wK5l" to="8vcu:~Lang.getShortDisplayName()" resolve="getShortDisplayName" />
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo28VT" role="3Kb1Dw">
            <node concept="3cpWs6" id="1xq1$bo29VH" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo2bd1" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1xq1$bo1KCB" role="1B3o_S" />
      <node concept="3uibUv" id="1xq1$bo1KCC" role="3clF45">
        <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xq1$bo2byZ" role="jymVt" />
    <node concept="2YIFZL" id="1xq1$bo1KCD" role="jymVt">
      <property role="TrG5h" value="mapEnglish" />
      <node concept="37vLTG" id="1xq1$bo1KCE" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="1xq1$bobolw" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1xq1$bo1KCG" role="3clF47">
        <node concept="3clFbJ" id="1xq1$bo1KCH" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1LY0" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUH" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KCE" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1LY1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo1LY2" role="37wK5m">
                <property role="Xl_RC" value="DT" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KCM" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KCK" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTC" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KCN" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1LxD" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUi" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KCE" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1LxE" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo1LxF" role="37wK5m">
                <property role="Xl_RC" value="IN" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KCS" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KCQ" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTT" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxQ" resolve="PREPOSITION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo8baw" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo8bax" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo8bay" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KCE" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo8baz" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo8ba$" role="37wK5m">
                <property role="Xl_RC" value="CC" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo8ba_" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo8baA" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo8caM" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KCT" role="3cqZAp">
          <node concept="22lmx$" id="1xq1$bo1KCU" role="3clFbw">
            <node concept="2OqwBi" id="1xq1$bo1LJy" role="3uHU7B">
              <node concept="37vLTw" id="1xq1$bo1KUZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$bo1KCE" resolve="tag" />
              </node>
              <node concept="liA8E" id="1xq1$bo1LJz" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="Xl_RD" id="1xq1$bo1LJ$" role="37wK5m">
                  <property role="Xl_RC" value="RP" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1xq1$bo1Lml" role="3uHU7w">
              <node concept="37vLTw" id="1xq1$bo1KTI" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$bo1KCE" resolve="tag" />
              </node>
              <node concept="liA8E" id="1xq1$bo1Lmm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="Xl_RD" id="1xq1$bo1Lmn" role="37wK5m">
                  <property role="Xl_RC" value="PART" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KD1" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KCZ" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KUn" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxS" resolve="PARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xq1$bo1KD2" role="3cqZAp">
          <node concept="Rm8GO" id="1xq1$bo1KU4" role="3cqZAk">
            <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
            <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xq1$bo1KD4" role="1B3o_S" />
      <node concept="3uibUv" id="1xq1$bo1KD5" role="3clF45">
        <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
      </node>
    </node>
    <node concept="2YIFZL" id="1xq1$bo1KD6" role="jymVt">
      <property role="TrG5h" value="mapDutch" />
      <node concept="37vLTG" id="1xq1$bo1KD7" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="1xq1$boboXd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1xq1$bo1KD9" role="3clF47">
        <node concept="3clFbJ" id="1xq1$bo1KDa" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1M5K" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KTo" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1M5L" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1M5M" role="37wK5m">
                <property role="Xl_RC" value="LID" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KDf" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KDd" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTQ" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo4mU1" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo4mU2" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo4mU3" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo4mU4" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo4mU5" role="37wK5m">
                <property role="Xl_RC" value="VNW" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo4mU6" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo4mU7" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo4mU8" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo8yUH" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo8yUI" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo8yUJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo8yUK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo8yUL" role="37wK5m">
                <property role="Xl_RC" value="GET" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo8yUM" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo8yUN" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo8yUO" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KDg" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1LrJ" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KVv" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1LrK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1LrL" role="37wK5m">
                <property role="Xl_RC" value="VRZ" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KDl" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KDj" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTF" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxQ" resolve="PREPOSITION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4K9BVVxwRTO" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="1xq1$bo4qB6" role="8Wnug">
            <node concept="2OqwBi" id="1xq1$bo4qB7" role="3clFbw">
              <node concept="37vLTw" id="1xq1$bo4qB8" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
              </node>
              <node concept="liA8E" id="1xq1$bo4qB9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="Xl_RD" id="1xq1$bo4qBa" role="37wK5m">
                  <property role="Xl_RC" value="BYW" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1xq1$bo4qBb" role="3clFbx">
              <node concept="3cpWs6" id="1xq1$bo4qBc" role="3cqZAp">
                <node concept="Rm8GO" id="1xq1$bo4r5y" role="3cqZAk">
                  <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                  <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo4rRu" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo4rRv" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo4rRw" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo4rRx" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo4rRy" role="37wK5m">
                <property role="Xl_RC" value="VGW" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo4rRz" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo4rR$" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo4rR_" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KDm" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1LCa" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KTw" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KD7" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1LCb" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1LCc" role="37wK5m">
                <property role="Xl_RC" value="PART" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KDr" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KDp" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTW" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxS" resolve="PARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xq1$bo1KDs" role="3cqZAp">
          <node concept="Rm8GO" id="1xq1$bo1KVB" role="3cqZAk">
            <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
            <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xq1$bo1KDu" role="1B3o_S" />
      <node concept="3uibUv" id="1xq1$bo1KDv" role="3clF45">
        <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
      </node>
    </node>
    <node concept="2YIFZL" id="1xq1$bo1KDw" role="jymVt">
      <property role="TrG5h" value="mapGerman" />
      <node concept="37vLTG" id="1xq1$bo1KDx" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="1xq1$bobpuE" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1xq1$bo1KDz" role="3clF47">
        <node concept="3SKdUt" id="1xq1$bo1KER" role="3cqZAp">
          <node concept="1PaTwC" id="1xq1$bo1KES" role="1aUNEU">
            <node concept="3oM_SD" id="1xq1$bo1KEU" role="1PaTwD">
              <property role="3oM_SC" value="STTS" />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KEV" role="1PaTwD">
              <property role="3oM_SC" value="Tagset" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KD$" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1L7X" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUM" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDx" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1L7Y" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1L7Z" role="37wK5m">
                <property role="Xl_RC" value="ART" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KDD" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KDB" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KVn" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KDE" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1LhB" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KV7" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDx" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1LhC" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1LhD" role="37wK5m">
                <property role="Xl_RC" value="APP" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KDJ" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KDH" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTt" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxQ" resolve="PREPOSITION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1xq1$bo1KEW" role="3cqZAp">
          <node concept="1PaTwC" id="1xq1$bo1KEX" role="1aUNEU">
            <node concept="3oM_SD" id="1xq1$bo1KEZ" role="1PaTwD">
              <property role="3oM_SC" value="APPR," />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KF0" role="1PaTwD">
              <property role="3oM_SC" value="APPRART," />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KF1" role="1PaTwD">
              <property role="3oM_SC" value="APPO" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KDK" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1Mm$" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUU" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDx" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1Mm_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1MmA" role="37wK5m">
                <property role="Xl_RC" value="PTK" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KDP" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KDN" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KV$" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxS" resolve="PARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$boaPXx" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$boaPXy" role="3clFbw">
            <node concept="37vLTw" id="1xq1$boaPXz" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDx" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$boaPX$" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$boaPX_" role="37wK5m">
                <property role="Xl_RC" value="ZUS" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$boaPXA" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$boaPXB" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$boaQRu" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$boaTyh" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$boaTyi" role="3clFbw">
            <node concept="37vLTw" id="1xq1$boaTyj" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDx" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$boaTyk" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$boaTyl" role="37wK5m">
                <property role="Xl_RC" value="KON" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$boaTym" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$boaTyn" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$boaTyo" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1xq1$bo1KF2" role="3cqZAp">
          <node concept="1PaTwC" id="1xq1$bo1KF3" role="1aUNEU">
            <node concept="3oM_SD" id="1xq1$bo1KF5" role="1PaTwD">
              <property role="3oM_SC" value="PTKZU," />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KF6" role="1PaTwD">
              <property role="3oM_SC" value="PTKNEG," />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KF7" role="1PaTwD">
              <property role="3oM_SC" value="etc." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xq1$bo1KDQ" role="3cqZAp">
          <node concept="Rm8GO" id="1xq1$bo1KVf" role="3cqZAk">
            <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
            <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xq1$bo1KDS" role="1B3o_S" />
      <node concept="3uibUv" id="1xq1$bo1KDT" role="3clF45">
        <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
      </node>
    </node>
    <node concept="2YIFZL" id="1xq1$bo1KDU" role="jymVt">
      <property role="TrG5h" value="mapFrench" />
      <node concept="37vLTG" id="1xq1$bo1KDV" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="1xq1$bobpYc" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1xq1$bo1KDX" role="3clF47">
        <node concept="3clFbJ" id="1xq1$bo1KDY" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1MN1" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUq" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDV" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1MN2" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo1MN3" role="37wK5m">
                <property role="Xl_RC" value="DET" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KE3" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KE1" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KV4" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo7uQ5" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo7uQ6" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo7uQ7" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDV" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo7uQ8" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo7uQ9" role="37wK5m">
                <property role="Xl_RC" value="D f s" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo7uQa" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo7uQb" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo7uQc" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo7_Bq" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo7_Br" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo7_Bs" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDV" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo7_Bt" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo7_Bu" role="37wK5m">
                <property role="Xl_RC" value="D e p" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo7_Bv" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo7_Bw" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo7_Bx" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo7ENn" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo7ENo" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo7ENp" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDV" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo7ENq" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo7ENr" role="37wK5m">
                <property role="Xl_RC" value="C" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo7ENs" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo7ENt" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo7G9n" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KE4" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1MdO" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KU7" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDV" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1MdP" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo1MdQ" role="37wK5m">
                <property role="Xl_RC" value="P" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KE9" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KE7" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KUR" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxQ" resolve="PREPOSITION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KEa" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1LQo" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUC" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KDV" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1LQp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="1xq1$bo1LQq" role="37wK5m">
                <property role="Xl_RC" value="PART" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KEf" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KEd" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KVc" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxS" resolve="PARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xq1$bo1KEg" role="3cqZAp">
          <node concept="Rm8GO" id="1xq1$bo1KUf" role="3cqZAk">
            <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
            <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xq1$bo1KEi" role="1B3o_S" />
      <node concept="3uibUv" id="1xq1$bo1KEj" role="3clF45">
        <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
      </node>
    </node>
    <node concept="2YIFZL" id="1xq1$bo1KEk" role="jymVt">
      <property role="TrG5h" value="mapSpanish" />
      <node concept="37vLTG" id="1xq1$bo1KEl" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="1xq1$bobqwg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1xq1$bo1KEn" role="3clF47">
        <node concept="3SKdUt" id="1xq1$bo1KF8" role="3cqZAp">
          <node concept="1PaTwC" id="1xq1$bo1KF9" role="1aUNEU">
            <node concept="3oM_SD" id="1xq1$bo1KFb" role="1PaTwD">
              <property role="3oM_SC" value="EAGLES" />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KFc" role="1PaTwD">
              <property role="3oM_SC" value="Tagset" />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KFd" role="1PaTwD">
              <property role="3oM_SC" value="(DA=Article," />
            </node>
            <node concept="3oM_SD" id="1xq1$bo1KFe" role="1PaTwD">
              <property role="3oM_SC" value="SP=Preposition)" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KEo" role="3cqZAp">
          <node concept="22lmx$" id="1xq1$bo1KEp" role="3clFbw">
            <node concept="2OqwBi" id="1xq1$bo1MCS" role="3uHU7B">
              <node concept="37vLTw" id="1xq1$bo1KVi" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$bo1KEl" resolve="tag" />
              </node>
              <node concept="liA8E" id="1xq1$bo1MCT" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="Xl_RD" id="1xq1$bo1MCU" role="37wK5m">
                  <property role="Xl_RC" value="DA" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1xq1$bo1MXu" role="3uHU7w">
              <node concept="37vLTw" id="1xq1$bo1KTZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1xq1$bo1KEl" resolve="tag" />
              </node>
              <node concept="liA8E" id="1xq1$bo1MXv" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="Xl_RD" id="1xq1$bo1MXw" role="37wK5m">
                  <property role="Xl_RC" value="DI" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KEw" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KEu" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KTN" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxO" resolve="ARTICLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bo1KEx" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bo1Ld0" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bo1KUz" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KEl" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bo1Ld1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bo1Ld2" role="37wK5m">
                <property role="Xl_RC" value="SP" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bo1KEA" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bo1KE$" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bo1KT_" role="3cqZAk">
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
                <ref role="Rm8GQ" node="1xq1$bo1KxQ" resolve="PREPOSITION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1xq1$bobt8o" role="3cqZAp">
          <node concept="2OqwBi" id="1xq1$bobt8p" role="3clFbw">
            <node concept="37vLTw" id="1xq1$bobt8q" role="2Oq$k0">
              <ref role="3cqZAo" node="1xq1$bo1KEl" resolve="tag" />
            </node>
            <node concept="liA8E" id="1xq1$bobt8r" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1xq1$bobt8s" role="37wK5m">
                <property role="Xl_RC" value="CC" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xq1$bobt8t" role="3clFbx">
            <node concept="3cpWs6" id="1xq1$bobt8u" role="3cqZAp">
              <node concept="Rm8GO" id="1xq1$bobu4q" role="3cqZAk">
                <ref role="Rm8GQ" node="1xq1$bo4pCS" resolve="CONJUNCTION" />
                <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xq1$bo1KEB" role="3cqZAp">
          <node concept="Rm8GO" id="1xq1$bo1KUc" role="3cqZAk">
            <ref role="1Px2BO" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
            <ref role="Rm8GQ" node="1xq1$bo1KxU" resolve="OTHER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xq1$bo1KED" role="1B3o_S" />
      <node concept="3uibUv" id="1xq1$bo1KEE" role="3clF45">
        <ref role="3uigEE" node="1xq1$bo1KxL" resolve="NativeLanguageUtil.Category" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1xq1$bo1Kx6" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="51B5bJ$_oW4">
    <property role="TrG5h" value="GrazieNativeLangExtension" />
    <node concept="3Tm1VV" id="51B5bJ$_oW5" role="1B3o_S" />
    <node concept="3uibUv" id="3NnQenVaCz$" role="EKbjA">
      <ref role="3uigEE" to="wsw7:5J0WEnGJGQc" resolve="NativeLangNameChecker" />
    </node>
    <node concept="3clFb_" id="51B5bJ$_sb3" role="jymVt">
      <property role="TrG5h" value="detectNativeLanguage" />
      <node concept="3Tm1VV" id="51B5bJ$_sb5" role="1B3o_S" />
      <node concept="17QB3L" id="51B5bJ$_sb6" role="3clF45" />
      <node concept="37vLTG" id="51B5bJ$_sb7" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="51B5bJ$_sb8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="51B5bJ$_sb9" role="3clF47">
        <node concept="3clFbF" id="51B5bJ$_sy0" role="3cqZAp">
          <node concept="2YIFZM" id="5J0WEnGMXGF" role="3clFbG">
            <ref role="37wK5l" node="5AhI6VMvAvM" resolve="detectNativeLanguage" />
            <ref role="1Pybhc" node="7pzI1FvZpLp" resolve="NativeLanguageAnalyzer" />
            <node concept="37vLTw" id="5J0WEnGMXGG" role="37wK5m">
              <ref role="3cqZAo" node="51B5bJ$_sb7" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="51B5bJ$_sba" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2wVzGkOB8R5" role="jymVt" />
    <node concept="3clFb_" id="7HqAUaLuAlZ" role="jymVt">
      <property role="TrG5h" value="isAnyNativeLanguageInstalled" />
      <node concept="3Tm1VV" id="7HqAUaLuAm1" role="1B3o_S" />
      <node concept="10P_77" id="7HqAUaLuAm2" role="3clF45" />
      <node concept="3clFbS" id="7HqAUaLuAm3" role="3clF47">
        <node concept="3clFbF" id="7HqAUaLvdnn" role="3cqZAp">
          <node concept="2YIFZM" id="7HqAUaLvdwQ" role="3clFbG">
            <ref role="37wK5l" node="7HqAUaLuBpo" resolve="isAnyNativeLanguageInstalled" />
            <ref role="1Pybhc" node="7pzI1FvZpLp" resolve="NativeLanguageAnalyzer" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7HqAUaLuAm4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HqAUaLvdE2" role="jymVt" />
    <node concept="3clFb_" id="2wVzGkOB8yo" role="jymVt">
      <property role="TrG5h" value="isNativeLanguageInstalled" />
      <node concept="3Tm1VV" id="2wVzGkOB8yq" role="1B3o_S" />
      <node concept="10P_77" id="2wVzGkOB8yr" role="3clF45" />
      <node concept="37vLTG" id="2wVzGkOB8ys" role="3clF46">
        <property role="TrG5h" value="languageName" />
        <node concept="17QB3L" id="2wVzGkOB8yt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2wVzGkOB8yu" role="3clF47">
        <node concept="3clFbF" id="2wVzGkOB8yx" role="3cqZAp">
          <node concept="2YIFZM" id="6deib$l8RYY" role="3clFbG">
            <ref role="37wK5l" node="2wVzGkOBbph" resolve="isNativeLanguageInstalled" />
            <ref role="1Pybhc" node="7pzI1FvZpLp" resolve="NativeLanguageAnalyzer" />
            <node concept="37vLTw" id="6deib$l8SrU" role="37wK5m">
              <ref role="3cqZAo" node="2wVzGkOB8ys" resolve="languageName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2wVzGkOB8yv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="P$JXv" id="2wVzGkOB94v" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOB94w" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOB94x" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="TUZQ0" id="2wVzGkOB9qQ" role="3nqlJM">
          <node concept="1PaTwC" id="2wVzGkOB9qR" role="1Vez_I">
            <node concept="3oM_SD" id="2wVzGkOB9BK" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BL" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BM" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BN" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BO" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BP" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BQ" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BR" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BS" role="1PaTwD">
              <property role="3oM_SC" value="constant" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOB9BT" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="1Vtdud" id="2wVzGkOB9BU" role="1PaTwD">
              <node concept="1VuXuv" id="2wVzGkOB9BV" role="1Vtduc">
                <node concept="1PaTwC" id="2wVzGkOB9BW" role="2JaDBN">
                  <node concept="3oM_SD" id="2wVzGkOB9BX" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
                <node concept="VXe08" id="2wVzGkOB9BY" role="1VuXuu">
                  <ref role="VXe09" to="8vcu:~Lang" resolve="Lang" />
                </node>
              </node>
            </node>
          </node>
          <node concept="zr_55" id="2wVzGkOB9yk" role="zr_5Q">
            <ref role="zr_51" node="2wVzGkOB8ys" resolve="languageName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2wVzGkOADLa" role="jymVt" />
    <node concept="3clFb_" id="51B5bJ$_sbd" role="jymVt">
      <property role="TrG5h" value="isProperlyCapitalized" />
      <node concept="3Tm1VV" id="51B5bJ$_sbf" role="1B3o_S" />
      <node concept="10P_77" id="51B5bJ$_sbg" role="3clF45" />
      <node concept="37vLTG" id="51B5bJ$_sbh" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="51B5bJ$_sbi" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="51B5bJ$_sbj" role="3clF47">
        <node concept="3clFbF" id="5J0WEnGMXGP" role="3cqZAp">
          <node concept="2YIFZM" id="5J0WEnGMXGQ" role="3clFbG">
            <ref role="37wK5l" node="5AhI6VMq7ch" resolve="isActionDescProperlyCapitalized" />
            <ref role="1Pybhc" node="7pzI1FvZpLp" resolve="NativeLanguageAnalyzer" />
            <node concept="37vLTw" id="5J0WEnGMXGR" role="37wK5m">
              <ref role="3cqZAo" node="51B5bJ$_sbh" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="51B5bJ$_sbk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="P$JXv" id="2wVzGkOADWT" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOADWU" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOADWV" role="1PaTwD">
            <property role="3oM_SC" value="Auto-detect" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAE2M" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAE2O" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAE35" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAE3m" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="2wVzGkOAE3B" role="1PaTwD">
            <property role="3oM_SC" value="'text'" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2wVzGkOADeG" role="jymVt" />
    <node concept="3clFb_" id="2wVzGkOp6cl" role="jymVt">
      <property role="TrG5h" value="isProperlyCapitalizedInLanguage" />
      <node concept="3Tm1VV" id="2wVzGkOp6cn" role="1B3o_S" />
      <node concept="10P_77" id="2wVzGkOp6co" role="3clF45" />
      <node concept="37vLTG" id="2wVzGkOp6cp" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="2wVzGkOp6cq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2wVzGkOp6cr" role="3clF46">
        <property role="TrG5h" value="languageName" />
        <node concept="17QB3L" id="2wVzGkOp6cs" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2wVzGkOp6ct" role="3clF47">
        <node concept="3clFbF" id="2wVzGkOp6B8" role="3cqZAp">
          <node concept="2YIFZM" id="2wVzGkOp6B9" role="3clFbG">
            <ref role="37wK5l" node="7pzI1FvZu3e" resolve="isActionDescProperlyCapitalized" />
            <ref role="1Pybhc" node="7pzI1FvZpLp" resolve="NativeLanguageAnalyzer" />
            <node concept="37vLTw" id="2wVzGkOp6Ba" role="37wK5m">
              <ref role="3cqZAo" node="2wVzGkOp6cp" resolve="text" />
            </node>
            <node concept="37vLTw" id="2wVzGkOp772" role="37wK5m">
              <ref role="3cqZAo" node="2wVzGkOp6cr" resolve="languageName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2wVzGkOp6cu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="P$JXv" id="2wVzGkOADqr" role="lGtFl">
        <node concept="1PaTwC" id="2wVzGkOADqs" role="1Vez_I">
          <node concept="3oM_SD" id="2wVzGkOADqt" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="TUZQ0" id="2wVzGkOADwk" role="3nqlJM">
          <node concept="1PaTwC" id="2wVzGkOADwl" role="1Vez_I">
            <node concept="3oM_SD" id="2wVzGkOADEh" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEi" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEj" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEk" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEl" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEm" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEn" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEo" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEp" role="1PaTwD">
              <property role="3oM_SC" value="constant" />
            </node>
            <node concept="3oM_SD" id="2wVzGkOADEq" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="1Vtdud" id="2wVzGkOADEr" role="1PaTwD">
              <node concept="1VuXuv" id="2wVzGkOADEs" role="1Vtduc">
                <node concept="1PaTwC" id="2wVzGkOADEt" role="2JaDBN">
                  <node concept="3oM_SD" id="2wVzGkOADEu" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
                <node concept="VXe08" id="2wVzGkOADEv" role="1VuXuu">
                  <ref role="VXe09" to="8vcu:~Lang" resolve="Lang" />
                </node>
              </node>
            </node>
          </node>
          <node concept="zr_55" id="2wVzGkOADA7" role="zr_5Q">
            <ref role="zr_51" node="2wVzGkOp6cr" resolve="languageName" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="51B5bJ$_G6F">
    <property role="TrG5h" value="ModuleActivator" />
    <node concept="312cEg" id="51B5bJ$Bb2G" role="jymVt">
      <property role="TrG5h" value="componentHost" />
      <node concept="3uibUv" id="51B5bJ$BaoS" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
      <node concept="3Tm6S6" id="51B5bJ$BcvE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="51B5bJ$Bc3Z" role="jymVt" />
    <node concept="3Tm1VV" id="51B5bJ$_G6G" role="1B3o_S" />
    <node concept="3uibUv" id="51B5bJ$_Gr2" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
    <node concept="3clFbW" id="51B5bJ$Bcgu" role="jymVt">
      <node concept="3cqZAl" id="51B5bJ$Bcgv" role="3clF45" />
      <node concept="3Tm1VV" id="51B5bJ$Bcgw" role="1B3o_S" />
      <node concept="3clFbS" id="51B5bJ$Bcgy" role="3clF47">
        <node concept="3clFbF" id="51B5bJ$BcgA" role="3cqZAp">
          <node concept="37vLTI" id="51B5bJ$BcgC" role="3clFbG">
            <node concept="2OqwBi" id="51B5bJ$BcgG" role="37vLTJ">
              <node concept="Xjq3P" id="51B5bJ$BcgH" role="2Oq$k0" />
              <node concept="2OwXpG" id="51B5bJ$BcgI" role="2OqNvi">
                <ref role="2Oxat5" node="51B5bJ$Bb2G" resolve="componentHost" />
              </node>
            </node>
            <node concept="37vLTw" id="51B5bJ$BcgJ" role="37vLTx">
              <ref role="3cqZAo" node="51B5bJ$Bcg_" resolve="componentHost" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="51B5bJ$Bcg_" role="3clF46">
        <property role="TrG5h" value="componentHost" />
        <node concept="3uibUv" id="51B5bJ$Bcg$" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51B5bJ$BcoC" role="jymVt" />
    <node concept="3clFb_" id="51B5bJ$_HPv" role="jymVt">
      <property role="TrG5h" value="contribute" />
      <node concept="3Tm1VV" id="51B5bJ$_HPx" role="1B3o_S" />
      <node concept="3cqZAl" id="51B5bJ$_HPz" role="3clF45" />
      <node concept="37vLTG" id="51B5bJ$_HP$" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="51B5bJ$_HP_" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ModuleRuntime$ActivatorContext" resolve="ModuleRuntime.ActivatorContext" />
        </node>
        <node concept="2AHcQZ" id="51B5bJ$_HPA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="51B5bJ$_HPB" role="3clF47">
        <node concept="3clFbF" id="3Ssq9B$kDfp" role="3cqZAp">
          <node concept="2OqwBi" id="3Ssq9B$kDxo" role="3clFbG">
            <node concept="37vLTw" id="3Ssq9B$kDfo" role="2Oq$k0">
              <ref role="3cqZAo" node="51B5bJ$_HP$" resolve="ctx" />
            </node>
            <node concept="liA8E" id="3Ssq9B$kDDB" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
              <node concept="3VsKOn" id="3Ssq9B$kDQv" role="37wK5m">
                <ref role="3VsUkX" to="wsw7:5J0WEnGJGQc" resolve="NativeLangNameChecker" />
              </node>
              <node concept="2YIFZM" id="3Ssq9B$lt7m" role="37wK5m">
                <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.util.function.Supplier,java.lang.String...)" resolve="of" />
                <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                <node concept="1bVj0M" id="3Ssq9B$ltFo" role="37wK5m">
                  <node concept="3clFbS" id="3Ssq9B$ltFu" role="1bW5cS">
                    <node concept="3clFbF" id="3Ssq9B$lub8" role="3cqZAp">
                      <node concept="2ShNRf" id="3Ssq9B$lub6" role="3clFbG">
                        <node concept="HV5vD" id="3Ssq9B$luH1" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="HV5vE" node="51B5bJ$_oW4" resolve="GrazieNativeLangExtension" />
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
      <node concept="2AHcQZ" id="51B5bJ$_HPC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

