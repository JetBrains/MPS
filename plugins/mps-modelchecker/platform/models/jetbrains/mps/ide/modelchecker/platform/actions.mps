<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
  </languages>
  <imports>
    <import index="sn11" ref="r:836426ab-a6f4-4fa3-9a9c-34c02ed6ab5d(jetbrains.mps.ide.icons)" />
    <import index="wsw7" ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="hq8m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.options(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="57ty" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.messages(MPS.Platform/)" />
    <import index="bfoa" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.icons(MPS.Platform/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="ngmm" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view(MPS.Platform/)" />
    <import index="dsdj" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.treeview(MPS.Platform/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="gkle" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.tree(MPS.Platform/)" />
    <import index="ogzp" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages(MPS.Core/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="k2t0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.checkers(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="4hrd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.vfs(MPS.Platform/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="mk90" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="xzav" ref="r:37761ffb-9538-49ac-a331-c8121d2c14b2(jetbrains.mps.progress)" />
    <import index="u3gh" ref="r:38f1070b-d1ae-4036-84ce-ffb866741b84(jetbrains.mps.workbench.progress)" />
    <import index="ospv" ref="r:54a768d9-9f11-4443-98d8-70ab3a783c52(jetbrains.mps.findUsages)" />
    <import index="mmaq" ref="f647e48e-4568-4f4c-b48a-1546492c6a2e/java:org.jdom(org.jdom/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="f061" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application.ex(MPS.IDEA/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="ot7" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress.util(MPS.IDEA/)" />
    <import index="6ugx" ref="r:0d283619-f5e4-43a0-8e4e-02f10d404489(jetbrains.mps.ide.modelchecker)" />
    <import index="8rsk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem.ex(MPS.IDEA/)" />
    <import index="18nx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.checkin(MPS.IDEA/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="4zvo" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.ui(MPS.IDEA/)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5896642449625987000" name="jetbrains.mps.lang.plugin.structure.AddTabOperation" flags="nn" index="2wDMaC">
        <child id="7566788359602201160" name="tab" index="11Dce$" />
      </concept>
      <concept id="6938053545825350222" name="jetbrains.mps.lang.plugin.structure.ToolTab" flags="ng" index="2BLXyY">
        <child id="6938053545825381648" name="componentExpression" index="2BLOvw" />
        <child id="6938053545825381649" name="titleExpression" index="2BLOvx" />
        <child id="6938053545825381650" name="iconExpression" index="2BLOvy" />
        <child id="6938053545825381651" name="disposeTabClosure" index="2BLOvz" />
      </concept>
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
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
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
      <concept id="5085607816306582224" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentTextElement" flags="ng" index="1Vtdud">
        <child id="5085607816306582225" name="tag" index="1Vtduc" />
      </concept>
      <concept id="5085607816306633585" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTagTE" flags="ng" index="1VuTSG" />
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
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
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="312cEu" id="3etVqSRKzpg">
    <property role="TrG5h" value="ModelCheckerSettings" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="312cEg" id="3etVqSRKzph" role="jymVt">
      <property role="TrG5h" value="myState" />
      <node concept="2ShNRf" id="3etVqSRKzpi" role="33vP2m">
        <node concept="1pGfFk" id="3etVqSRKzpj" role="2ShVmc">
          <ref role="37wK5l" node="3etVqSRKzvI" resolve="ModelCheckerSettings.MyState" />
        </node>
      </node>
      <node concept="3uibUv" id="3etVqSRKzpk" role="1tU5fm">
        <ref role="3uigEE" node="3etVqSRKzvk" resolve="ModelCheckerSettings.MyState" />
      </node>
      <node concept="3Tm6S6" id="3etVqSRKzpl" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6UWbfHqgQvx" role="jymVt" />
    <node concept="3clFbW" id="3etVqSRKzpt" role="jymVt">
      <node concept="3cqZAl" id="3etVqSRKzpu" role="3clF45" />
      <node concept="3Tm1VV" id="3etVqSRKzpv" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRKzpw" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6UWbfHqgRWY" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRKzpO" role="jymVt">
      <property role="TrG5h" value="getState" />
      <node concept="3clFbS" id="3etVqSRKzpP" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzpQ" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuxRI" role="3cqZAk">
            <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzpS" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRKzpT" role="3clF45">
        <ref role="3uigEE" node="3etVqSRKzvk" resolve="ModelCheckerSettings.MyState" />
      </node>
      <node concept="2AHcQZ" id="3etVqSRKzpU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzpV" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="37vLTG" id="3etVqSRKzpW" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="3etVqSRKzpX" role="1tU5fm">
          <ref role="3uigEE" node="3etVqSRKzvk" resolve="ModelCheckerSettings.MyState" />
        </node>
      </node>
      <node concept="3cqZAl" id="3etVqSRKzpY" role="3clF45" />
      <node concept="3clFbS" id="3etVqSRKzpZ" role="3clF47">
        <node concept="3clFbF" id="3etVqSRKzq0" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzq1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmkI6" role="37vLTx">
              <ref role="3cqZAo" node="3etVqSRKzpW" resolve="state" />
            </node>
            <node concept="37vLTw" id="2BHiRxeudCH" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzq4" role="1B3o_S" />
      <node concept="2AHcQZ" id="3etVqSRKzq5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ao8oElpTJN" role="jymVt" />
    <node concept="2YIFZL" id="3etVqSRKzvb" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="3etVqSRKzvc" role="3clF45">
        <ref role="3uigEE" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
      </node>
      <node concept="3clFbS" id="3etVqSRKzvd" role="3clF47">
        <node concept="3SKdUt" id="6ao8oElpUO5" role="3cqZAp">
          <node concept="1PaTwC" id="6ao8oElpUO6" role="1aUNEU">
            <node concept="3oM_SD" id="6ao8oElpUO7" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUSc" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUSf" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUSj" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUTl" role="1PaTwD">
              <property role="3oM_SC" value="clients" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUT$" role="1PaTwD">
              <property role="3oM_SC" value="query" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUTX" role="1PaTwD">
              <property role="3oM_SC" value="specific" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUUd" role="1PaTwD">
              <property role="3oM_SC" value="checkers" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUUu" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUUC" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUUV" role="1PaTwD">
              <property role="3oM_SC" value="given" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUVf" role="1PaTwD">
              <property role="3oM_SC" value="project," />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUWa" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUWp" role="1PaTwD">
              <property role="3oM_SC" value="become" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUWL" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUX2" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUXs" role="1PaTwD">
              <property role="3oM_SC" value="service," />
            </node>
            <node concept="3oM_SD" id="6ao8oElpUV$" role="1PaTwD">
              <property role="3oM_SC" value="perhaps?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRKzve" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzvf" role="3cqZAk">
            <node concept="liA8E" id="3etVqSRKzvg" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
              <node concept="3VsKOn" id="3etVqSRKzvh" role="37wK5m">
                <ref role="3VsUkX" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
              </node>
            </node>
            <node concept="2YIFZM" id="3etVqSRKzvi" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzvj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ao8oElpU9S" role="jymVt" />
    <node concept="3clFb_" id="3GsVPVaO85s" role="jymVt">
      <property role="TrG5h" value="getSpecificCheckers" />
      <node concept="3clFbS" id="3GsVPVaO85t" role="3clF47">
        <node concept="3cpWs8" id="3GsVPVaO85u" role="3cqZAp">
          <node concept="3cpWsn" id="3GsVPVaO85v" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="3GsVPVaO85_" role="1tU5fm">
              <node concept="3uibUv" id="3GsVPVaO85A" role="_ZDj9">
                <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                <node concept="3qTvmN" id="3GsVPVaO85B" role="11_B2D" />
                <node concept="3qTvmN" id="3GsVPVaO85C" role="11_B2D" />
              </node>
            </node>
            <node concept="2ShNRf" id="3GsVPVaOZSb" role="33vP2m">
              <node concept="Tc6Ow" id="3GsVPVaOZGz" role="2ShVmc">
                <node concept="3uibUv" id="3GsVPVaOZG$" role="HW$YZ">
                  <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                  <node concept="3qTvmN" id="3GsVPVaOZG_" role="11_B2D" />
                  <node concept="3qTvmN" id="3GsVPVaOZGA" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6UWbfHqh1Gf" role="3cqZAp">
          <node concept="3cpWsn" id="6UWbfHqh1Gg" role="3cpWs9">
            <property role="TrG5h" value="checkerRegistry" />
            <node concept="3uibUv" id="6UWbfHqh1Gc" role="1tU5fm">
              <ref role="3uigEE" to="2gg1:~CheckerRegistry" resolve="CheckerRegistry" />
            </node>
            <node concept="2OqwBi" id="6UWbfHqh1Gh" role="33vP2m">
              <node concept="37vLTw" id="6UWbfHqh1Gi" role="2Oq$k0">
                <ref role="3cqZAo" node="3GsVPVaO875" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="6UWbfHqh1Gj" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="6UWbfHqh1Gk" role="37wK5m">
                  <ref role="3VsUkX" to="2gg1:~CheckerRegistry" resolve="CheckerRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6UWbfHqh61V" role="3cqZAp">
          <node concept="3clFbS" id="6UWbfHqh61X" role="3clFbx">
            <node concept="3cpWs6" id="6UWbfHqhbtN" role="3cqZAp">
              <node concept="37vLTw" id="6UWbfHqhdAI" role="3cqZAk">
                <ref role="3cqZAo" node="3GsVPVaO85v" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6UWbfHqh7UL" role="3clFbw">
            <node concept="10Nm6u" id="6UWbfHqh8mu" role="3uHU7w" />
            <node concept="37vLTw" id="6UWbfHqh7p5" role="3uHU7B">
              <ref role="3cqZAo" node="6UWbfHqh1Gg" resolve="checkerRegistry" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3GsVPVaOyVE" role="3cqZAp">
          <node concept="3cpWsn" id="3GsVPVaOyVF" role="3cpWs9">
            <property role="TrG5h" value="checkingLevel" />
            <node concept="3uibUv" id="3GsVPVaOyVD" role="1tU5fm">
              <ref role="3uigEE" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
            </node>
            <node concept="2OqwBi" id="3GsVPVaOyVG" role="33vP2m">
              <node concept="2OqwBi" id="3GsVPVaOyVH" role="2Oq$k0">
                <node concept="37vLTw" id="3GsVPVaOyVI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
                </node>
                <node concept="2OwXpG" id="3GsVPVaOyVJ" role="2OqNvi">
                  <ref role="2Oxat5" node="1VtEqfXHaMH" resolve="myCheckingLevel" />
                </node>
              </node>
              <node concept="liA8E" id="3GsVPVaOyVK" role="2OqNvi">
                <ref role="37wK5l" node="3GsVPVaN$vv" resolve="getKindLevel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3GsVPVaOHoC" role="3cqZAp">
          <node concept="2GrKxI" id="3GsVPVaOHoE" role="2Gsz3X">
            <property role="TrG5h" value="checker" />
          </node>
          <node concept="3clFbS" id="3GsVPVaOHoI" role="2LFqv$">
            <node concept="3cpWs8" id="3GsVPVaQ2kQ" role="3cqZAp">
              <node concept="3cpWsn" id="3GsVPVaQ2kR" role="3cpWs9">
                <property role="TrG5h" value="checkerLevel" />
                <node concept="3uibUv" id="3GsVPVaQ2kn" role="1tU5fm">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
                </node>
                <node concept="2OqwBi" id="3GsVPVaQ2kS" role="33vP2m">
                  <node concept="2OqwBi" id="3GsVPVaQ2kT" role="2Oq$k0">
                    <node concept="2GrUjf" id="3GsVPVaQ2kU" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3GsVPVaOHoE" resolve="checker" />
                    </node>
                    <node concept="liA8E" id="3GsVPVaQ2kV" role="2OqNvi">
                      <ref role="37wK5l" to="k2t0:~IChecker.getCategory()" resolve="getCategory" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3GsVPVaQ2kW" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.getKindLevel()" resolve="getKindLevel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3KaCP$" id="3GsVPVaOTKF" role="3cqZAp">
              <node concept="37vLTw" id="3GsVPVaQ2kX" role="3KbGdf">
                <ref role="3cqZAo" node="3GsVPVaQ2kR" resolve="checkerLevel" />
              </node>
              <node concept="3KbdKl" id="3GsVPVaOV6U" role="3KbHQx">
                <node concept="Rm8GO" id="3GsVPVaOW92" role="3Kbmr1">
                  <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.MANUAL" resolve="MANUAL" />
                  <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
                </node>
                <node concept="3clFbS" id="3GsVPVaOV6W" role="3Kbo56">
                  <node concept="3clFbJ" id="3GsVPVaO86P" role="3cqZAp">
                    <node concept="3clFbS" id="3GsVPVaO86Q" role="3clFbx">
                      <node concept="3clFbF" id="3GsVPVaO86R" role="3cqZAp">
                        <node concept="2OqwBi" id="3GsVPVaO86S" role="3clFbG">
                          <node concept="TSZUe" id="3GsVPVaO86T" role="2OqNvi">
                            <node concept="2GrUjf" id="3GsVPVaOXZn" role="25WWJ7">
                              <ref role="2Gs0qQ" node="3GsVPVaOHoE" resolve="checker" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GsVPVaO86W" role="2Oq$k0">
                            <ref role="3cqZAo" node="3GsVPVaO85v" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1rXfSq" id="3GsVPVaO86X" role="3clFbw">
                      <ref role="37wK5l" node="1VtEqfXH_WQ" resolve="isIncludeAdditionalChecks" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3GsVPVaQ1$E" role="3Kb1Dw">
                <node concept="3clFbJ" id="3GsVPVaQ1Xl" role="3cqZAp">
                  <node concept="3clFbS" id="3GsVPVaQ1Xn" role="3clFbx">
                    <node concept="3clFbF" id="3GsVPVaQ6wm" role="3cqZAp">
                      <node concept="2OqwBi" id="3GsVPVaQ6wn" role="3clFbG">
                        <node concept="TSZUe" id="3GsVPVaQ6wo" role="2OqNvi">
                          <node concept="2GrUjf" id="3GsVPVaQ6wp" role="25WWJ7">
                            <ref role="2Gs0qQ" node="3GsVPVaOHoE" resolve="checker" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GsVPVaQ6wq" role="2Oq$k0">
                          <ref role="3cqZAo" node="3GsVPVaO85v" resolve="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2dkUwp" id="3GsVPVaQoPa" role="3clFbw">
                    <node concept="2OqwBi" id="3GsVPVaQ3sZ" role="3uHU7B">
                      <node concept="37vLTw" id="3GsVPVaQ2V0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GsVPVaQ2kR" resolve="checkerLevel" />
                      </node>
                      <node concept="liA8E" id="3GsVPVaQ3Qr" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Enum.compareTo(java.lang.Enum)" resolve="compareTo" />
                        <node concept="37vLTw" id="3GsVPVaQ4w$" role="37wK5m">
                          <ref role="3cqZAo" node="3GsVPVaOyVF" resolve="checkingLevel" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="3GsVPVaQpsf" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3GsVPVaOk6H" role="2GsD0m">
            <node concept="liA8E" id="3GsVPVaOk6L" role="2OqNvi">
              <ref role="37wK5l" to="2gg1:~CheckerRegistry.getCheckers()" resolve="getCheckers" />
            </node>
            <node concept="37vLTw" id="6UWbfHqheYQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6UWbfHqh1Gg" resolve="checkerRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GsVPVaOqG0" role="3cqZAp" />
        <node concept="3cpWs6" id="3GsVPVaO86Y" role="3cqZAp">
          <node concept="37vLTw" id="3GsVPVaO86Z" role="3cqZAk">
            <ref role="3cqZAo" node="3GsVPVaO85v" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3GsVPVaO870" role="1B3o_S" />
      <node concept="_YKpA" id="3GsVPVaO871" role="3clF45">
        <node concept="3uibUv" id="3GsVPVaO872" role="_ZDj9">
          <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
          <node concept="3qTvmN" id="3GsVPVaO873" role="11_B2D" />
          <node concept="3qTvmN" id="3GsVPVaO874" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="3GsVPVaO875" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="3GsVPVaO876" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="3GsVPVaO877" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="3LCCkAq3hEc" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsCwF" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCwG" role="1PaTwD">
            <property role="3oM_SC" value="Retrieves" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwH" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwI" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwJ" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwK" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwL" role="1PaTwD">
            <property role="3oM_SC" value="&quot;specific&quot;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwM" role="1PaTwD">
            <property role="3oM_SC" value="(in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwN" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwO" role="1PaTwD">
            <property role="3oM_SC" value="sense" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwP" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwQ" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwR" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwS" role="1PaTwD">
            <property role="3oM_SC" value="doing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwT" role="1PaTwD">
            <property role="3oM_SC" value="some" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwU" role="1PaTwD">
            <property role="3oM_SC" value="job" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwV" role="1PaTwD">
            <property role="3oM_SC" value="themselves)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwW" role="1PaTwD">
            <property role="3oM_SC" value="checkers" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCwX" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCwY" role="1PaTwD">
            <property role="3oM_SC" value="currently" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCwZ" role="1PaTwD">
            <property role="3oM_SC" value="active" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCx0" role="1PaTwD">
            <property role="3oM_SC" value="according" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCx1" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCx2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCx3" role="1PaTwD">
            <property role="3oM_SC" value="settings." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCx4" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCx5" role="1PaTwD">
            <property role="3oM_SC" value="&lt;p&gt;" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCx6" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCx7" role="1PaTwD">
            <property role="3oM_SC" value="See" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHsCx8" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHsCx9" role="1Vtduc">
              <node concept="VXe08" id="3LCCkAq3KpJ" role="1VuXuu">
                <ref role="VXe09" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHsCxc" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHsCxd" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxe" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxf" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxg" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxh" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxi" role="1PaTwD">
            <property role="3oM_SC" value="checker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxj" role="1PaTwD">
            <property role="3oM_SC" value="levels." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCxk" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCxl" role="1PaTwD">
            <property role="3oM_SC" value="Checkers" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxm" role="1PaTwD">
            <property role="3oM_SC" value="registered" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxn" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxo" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxp" role="1PaTwD">
            <property role="3oM_SC" value="level" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHsCxq" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHsCxr" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHsCxu" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHsCxv" role="1PaTwD">
                  <property role="3oM_SC" value="KindLevel.MANUAL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxw" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxx" role="1PaTwD">
            <property role="3oM_SC" value="included" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxy" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxz" role="1PaTwD">
            <property role="3oM_SC" value="&quot;additional" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCx$" role="1PaTwD">
            <property role="3oM_SC" value="checks&quot;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCx_" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxA" role="1PaTwD">
            <property role="3oM_SC" value="selected." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCxB" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCxC" role="1PaTwD">
            <property role="3oM_SC" value="&lt;p&gt;" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1VtEqfXHDhD" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRKzuh" role="jymVt">
      <property role="TrG5h" value="getCheckingLevel" />
      <node concept="3clFbS" id="3etVqSRKzui" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzuj" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzuk" role="3cqZAk">
            <node concept="2OwXpG" id="1VtEqfXHD9G" role="2OqNvi">
              <ref role="2Oxat5" node="1VtEqfXHaMH" resolve="myCheckingLevel" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuni0" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzun" role="1B3o_S" />
      <node concept="3uibUv" id="1VtEqfXHBu9" role="3clF45">
        <ref role="3uigEE" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzup" role="jymVt">
      <property role="TrG5h" value="setCheckingLevel" />
      <node concept="37vLTG" id="3etVqSRKzuq" role="3clF46">
        <property role="TrG5h" value="checkingLevel" />
        <node concept="3uibUv" id="1VtEqfXHBCK" role="1tU5fm">
          <ref role="3uigEE" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
        </node>
      </node>
      <node concept="3clFbS" id="3etVqSRKzus" role="3clF47">
        <node concept="3clFbF" id="3etVqSRKzut" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzuu" role="3clFbG">
            <node concept="2OqwBi" id="3etVqSRKzuv" role="37vLTJ">
              <node concept="37vLTw" id="2BHiRxeucTU" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="1VtEqfXHD2V" role="2OqNvi">
                <ref role="2Oxat5" node="1VtEqfXHaMH" resolve="myCheckingLevel" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgm71X" role="37vLTx">
              <ref role="3cqZAo" node="3etVqSRKzuq" resolve="checkingLevel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3etVqSRKzuz" role="3clF45" />
      <node concept="3Tm1VV" id="3etVqSRKzu$" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1VtEqfXH_WQ" role="jymVt">
      <property role="TrG5h" value="isIncludeAdditionalChecks" />
      <node concept="3clFbS" id="1VtEqfXH_WR" role="3clF47">
        <node concept="3cpWs6" id="1VtEqfXH_WS" role="3cqZAp">
          <node concept="2OqwBi" id="1VtEqfXH_WT" role="3cqZAk">
            <node concept="2OwXpG" id="1VtEqfXHPlg" role="2OqNvi">
              <ref role="2Oxat5" node="1VtEqfXHN61" resolve="myIncludeAdditionalChecks" />
            </node>
            <node concept="37vLTw" id="1VtEqfXH_WV" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1VtEqfXH_WW" role="1B3o_S" />
      <node concept="10P_77" id="1VtEqfXH_WX" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1VtEqfXH_WE" role="jymVt">
      <property role="TrG5h" value="setIncludeAdditionalChecks" />
      <node concept="37vLTG" id="1VtEqfXH_WF" role="3clF46">
        <property role="TrG5h" value="checkSpecific" />
        <node concept="10P_77" id="1VtEqfXH_WG" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1VtEqfXH_WH" role="3clF47">
        <node concept="3clFbF" id="1VtEqfXH_WI" role="3cqZAp">
          <node concept="37vLTI" id="1VtEqfXH_WJ" role="3clFbG">
            <node concept="2OqwBi" id="1VtEqfXH_WK" role="37vLTJ">
              <node concept="37vLTw" id="1VtEqfXH_WL" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="1VtEqfXHPfe" role="2OqNvi">
                <ref role="2Oxat5" node="1VtEqfXHN61" resolve="myIncludeAdditionalChecks" />
              </node>
            </node>
            <node concept="37vLTw" id="1VtEqfXH_WN" role="37vLTx">
              <ref role="3cqZAo" node="1VtEqfXH_WF" resolve="checkSpecific" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1VtEqfXH_WO" role="3clF45" />
      <node concept="3Tm1VV" id="1VtEqfXH_WP" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1VtEqfXHNfQ" role="jymVt">
      <property role="TrG5h" value="isCheckStubs" />
      <node concept="3clFbS" id="1VtEqfXHNfR" role="3clF47">
        <node concept="3cpWs6" id="1VtEqfXHNfS" role="3cqZAp">
          <node concept="2OqwBi" id="1VtEqfXHNfT" role="3cqZAk">
            <node concept="2OwXpG" id="1VtEqfXHNfU" role="2OqNvi">
              <ref role="2Oxat5" node="3etVqSRKzvE" resolve="myCheckStubs" />
            </node>
            <node concept="37vLTw" id="1VtEqfXHNfV" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1VtEqfXHNfW" role="1B3o_S" />
      <node concept="10P_77" id="1VtEqfXHNfX" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1VtEqfXHNfE" role="jymVt">
      <property role="TrG5h" value="setCheckStubs" />
      <node concept="37vLTG" id="1VtEqfXHNfF" role="3clF46">
        <property role="TrG5h" value="checkStubs" />
        <node concept="10P_77" id="1VtEqfXHNfG" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1VtEqfXHNfH" role="3clF47">
        <node concept="3clFbF" id="1VtEqfXHNfI" role="3cqZAp">
          <node concept="37vLTI" id="1VtEqfXHNfJ" role="3clFbG">
            <node concept="2OqwBi" id="1VtEqfXHNfK" role="37vLTJ">
              <node concept="37vLTw" id="1VtEqfXHNfL" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="1VtEqfXHNfM" role="2OqNvi">
                <ref role="2Oxat5" node="3etVqSRKzvE" resolve="myCheckStubs" />
              </node>
            </node>
            <node concept="37vLTw" id="1VtEqfXHNfN" role="37vLTx">
              <ref role="3cqZAo" node="1VtEqfXHNfF" resolve="checkStubs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1VtEqfXHNfO" role="3clF45" />
      <node concept="3Tm1VV" id="1VtEqfXHNfP" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3etVqSRKzu_" role="jymVt">
      <property role="TrG5h" value="isCheckBeforeCommit" />
      <node concept="10P_77" id="3etVqSRKzuA" role="3clF45" />
      <node concept="3Tm1VV" id="3etVqSRKzuB" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRKzuC" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzuD" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzuE" role="3cqZAk">
            <node concept="2OwXpG" id="3etVqSRKzuF" role="2OqNvi">
              <ref role="2Oxat5" node="3etVqSRKzvA" resolve="myCheckBeforeCommit" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuRQo" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzuH" role="jymVt">
      <property role="TrG5h" value="setCheckBeforeCommit" />
      <node concept="3cqZAl" id="3etVqSRKzuI" role="3clF45" />
      <node concept="3Tm1VV" id="3etVqSRKzuJ" role="1B3o_S" />
      <node concept="37vLTG" id="3etVqSRKzuK" role="3clF46">
        <property role="TrG5h" value="checkBeforeCommit" />
        <node concept="10P_77" id="3etVqSRKzuL" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3etVqSRKzuM" role="3clF47">
        <node concept="3clFbF" id="3etVqSRKzuN" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzuO" role="3clFbG">
            <node concept="2OqwBi" id="3etVqSRKzuP" role="37vLTJ">
              <node concept="37vLTw" id="2BHiRxeuJBE" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="3etVqSRKzuR" role="2OqNvi">
                <ref role="2Oxat5" node="3etVqSRKzvA" resolve="myCheckBeforeCommit" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgmCG7" role="37vLTx">
              <ref role="3cqZAo" node="3etVqSRKzuK" resolve="checkBeforeCommit" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2H4SLalWHQB" role="jymVt">
      <property role="TrG5h" value="isRunInParallel" />
      <node concept="10P_77" id="2H4SLalWKav" role="3clF45" />
      <node concept="3Tm1VV" id="2H4SLalWHQE" role="1B3o_S" />
      <node concept="3clFbS" id="2H4SLalWHQF" role="3clF47">
        <node concept="3clFbF" id="2H4SLalWQFb" role="3cqZAp">
          <node concept="2OqwBi" id="2H4SLalWRF$" role="3clFbG">
            <node concept="37vLTw" id="2H4SLalWQFa" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
            </node>
            <node concept="2OwXpG" id="2H4SLalWT9w" role="2OqNvi">
              <ref role="2Oxat5" node="2H4SLalWEmA" resolve="myRunInParallel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2H4SLalWVdm" role="jymVt">
      <property role="TrG5h" value="setRunInParallel" />
      <node concept="37vLTG" id="2H4SLalX0lK" role="3clF46">
        <property role="TrG5h" value="runInParallel" />
        <node concept="10P_77" id="2H4SLalX1EZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2H4SLalWVdo" role="3clF45" />
      <node concept="3Tm1VV" id="2H4SLalWVdp" role="1B3o_S" />
      <node concept="3clFbS" id="2H4SLalWVdq" role="3clF47">
        <node concept="3clFbF" id="2H4SLalX3o6" role="3cqZAp">
          <node concept="37vLTI" id="2H4SLalX701" role="3clFbG">
            <node concept="37vLTw" id="2H4SLalX8Xt" role="37vLTx">
              <ref role="3cqZAo" node="2H4SLalX0lK" resolve="runInParallel" />
            </node>
            <node concept="2OqwBi" id="2H4SLalX56V" role="37vLTJ">
              <node concept="37vLTw" id="2H4SLalX3o5" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzph" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="2H4SLalX62p" role="2OqNvi">
                <ref role="2Oxat5" node="2H4SLalWEmA" resolve="myRunInParallel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1VtEqfXHDv3" role="jymVt" />
    <node concept="312cEu" id="3etVqSRKzvk" role="jymVt">
      <property role="TrG5h" value="MyState" />
      <node concept="3Tm1VV" id="3etVqSRKzvp" role="1B3o_S" />
      <node concept="312cEg" id="1VtEqfXHaMH" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myCheckingLevel" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm1VV" id="1VtEqfXHaE$" role="1B3o_S" />
        <node concept="3uibUv" id="1VtEqfXHbs7" role="1tU5fm">
          <ref role="3uigEE" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
        </node>
        <node concept="Rm8GO" id="1VtEqfXH_PS" role="33vP2m">
          <ref role="Rm8GQ" node="3J4tNviCblZ" resolve="TYPESYSTEM" />
          <ref role="1Px2BO" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
        </node>
      </node>
      <node concept="312cEg" id="1VtEqfXHN61" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myIncludeAdditionalChecks" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm1VV" id="1VtEqfXHMTk" role="1B3o_S" />
        <node concept="10P_77" id="1VtEqfXHN5Z" role="1tU5fm" />
        <node concept="3clFbT" id="1VtEqfXHNfx" role="33vP2m">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="312cEg" id="3etVqSRKzvA" role="jymVt">
        <property role="TrG5h" value="myCheckBeforeCommit" />
        <node concept="3clFbT" id="3etVqSRKzvB" role="33vP2m">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="10P_77" id="3etVqSRKzvC" role="1tU5fm" />
        <node concept="3Tm1VV" id="3etVqSRKzvD" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="3etVqSRKzvE" role="jymVt">
        <property role="TrG5h" value="myCheckStubs" />
        <node concept="3Tm1VV" id="3etVqSRKzvF" role="1B3o_S" />
        <node concept="3clFbT" id="3etVqSRKzvG" role="33vP2m">
          <property role="3clFbU" value="false" />
        </node>
        <node concept="10P_77" id="3etVqSRKzvH" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2H4SLalWEmA" role="jymVt">
        <property role="TrG5h" value="myRunInParallel" />
        <node concept="3Tm1VV" id="2H4SLalWEmB" role="1B3o_S" />
        <node concept="3clFbT" id="2H4SLalWEmC" role="33vP2m">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="10P_77" id="2H4SLalWEmD" role="1tU5fm" />
      </node>
      <node concept="3clFbW" id="3etVqSRKzvI" role="jymVt">
        <node concept="3clFbS" id="3etVqSRKzvJ" role="3clF47" />
        <node concept="3Tm1VV" id="3etVqSRKzvK" role="1B3o_S" />
        <node concept="3cqZAl" id="3etVqSRKzvL" role="3clF45" />
      </node>
    </node>
    <node concept="Qs71p" id="3J4tNviCaHD" role="jymVt">
      <property role="TrG5h" value="CheckingLevel" />
      <node concept="2tJIrI" id="3J4tNviCbty" role="jymVt" />
      <node concept="312cEg" id="3GsVPVaNzA0" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myKindLevel" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="3GsVPVaNxLl" role="1B3o_S" />
        <node concept="3uibUv" id="3GsVPVaNz$3" role="1tU5fm">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
        </node>
      </node>
      <node concept="QsSxf" id="3J4tNviCb0p" role="Qtgdg">
        <property role="TrG5h" value="BASIC" />
        <ref role="37wK5l" node="3J4tNviCbwz" resolve="ModelCheckerSettings.CheckingLevel" />
        <node concept="Rm8GO" id="3GsVPVaNLx1" role="37wK5m">
          <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.PROJECT" resolve="PROJECT" />
          <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
        </node>
        <node concept="Xl_RD" id="3J4tNviCb6X" role="37wK5m">
          <property role="Xl_RC" value="Basic" />
        </node>
        <node concept="Xl_RD" id="5bed3YcLtvp" role="37wK5m">
          <property role="Xl_RC" value="Project structure is correct" />
        </node>
      </node>
      <node concept="QsSxf" id="3J4tNviCb7w" role="Qtgdg">
        <property role="TrG5h" value="STRUCTURE" />
        <ref role="37wK5l" node="3J4tNviCbwz" resolve="ModelCheckerSettings.CheckingLevel" />
        <node concept="Rm8GO" id="3GsVPVaNLAh" role="37wK5m">
          <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.STRUCTURE" resolve="STRUCTURE" />
          <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
        </node>
        <node concept="Xl_RD" id="3J4tNviCbem" role="37wK5m">
          <property role="Xl_RC" value="Structure" />
        </node>
        <node concept="Xl_RD" id="5bed3YcLu2i" role="37wK5m">
          <property role="Xl_RC" value="Code conforms with languages' structure" />
        </node>
        <node concept="Xl_RD" id="5bed3YcLDGS" role="37wK5m">
          <property role="Xl_RC" value="Each reference has target" />
        </node>
      </node>
      <node concept="QsSxf" id="3J4tNviCbeH" role="Qtgdg">
        <property role="TrG5h" value="CONSTRAINTS" />
        <ref role="37wK5l" node="3J4tNviCbwz" resolve="ModelCheckerSettings.CheckingLevel" />
        <node concept="Rm8GO" id="3GsVPVaNLGb" role="37wK5m">
          <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.CONSTRAINTS" resolve="CONSTRAINTS" />
          <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
        </node>
        <node concept="Xl_RD" id="3J4tNviCbly" role="37wK5m">
          <property role="Xl_RC" value="Constraints" />
        </node>
        <node concept="Xl_RD" id="5bed3YcLDK7" role="37wK5m">
          <property role="Xl_RC" value="Code satisfies languages' constraints" />
        </node>
      </node>
      <node concept="QsSxf" id="3J4tNviCblZ" role="Qtgdg">
        <property role="TrG5h" value="TYPESYSTEM" />
        <ref role="37wK5l" node="3J4tNviCbwz" resolve="ModelCheckerSettings.CheckingLevel" />
        <node concept="Rm8GO" id="3GsVPVaNMDS" role="37wK5m">
          <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.TYPESYSTEM" resolve="TYPESYSTEM" />
          <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
        </node>
        <node concept="Xl_RD" id="3J4tNviCbsZ" role="37wK5m">
          <property role="Xl_RC" value="Typesystem" />
        </node>
        <node concept="Xl_RD" id="5bed3YcLvvu" role="37wK5m">
          <property role="Xl_RC" value="Code passes typesystem checks" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3J4tNviCawQ" role="1B3o_S" />
      <node concept="312cEg" id="3J4tNviCbEO" role="jymVt">
        <property role="TrG5h" value="myPresentation" />
        <node concept="3Tm6S6" id="3J4tNviCbEP" role="1B3o_S" />
        <node concept="3uibUv" id="3J4tNviCbER" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="312cEg" id="5bed3YcLpSn" role="jymVt">
        <property role="TrG5h" value="myChecks" />
        <node concept="3Tm6S6" id="5bed3YcLpSo" role="1B3o_S" />
        <node concept="10Q1$e" id="5bed3YcLA4P" role="1tU5fm">
          <node concept="3uibUv" id="5bed3YcLpSp" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="3J4tNviCbwz" role="jymVt">
        <node concept="37vLTG" id="3GsVPVaNCk5" role="3clF46">
          <property role="TrG5h" value="kindLevel" />
          <node concept="3uibUv" id="3GsVPVaNCJa" role="1tU5fm">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
          </node>
        </node>
        <node concept="3cqZAl" id="3J4tNviCbw$" role="3clF45" />
        <node concept="3clFbS" id="3J4tNviCbwB" role="3clF47">
          <node concept="3clFbF" id="3GsVPVaNDnY" role="3cqZAp">
            <node concept="37vLTI" id="3GsVPVaNEyF" role="3clFbG">
              <node concept="37vLTw" id="3GsVPVaNFbq" role="37vLTx">
                <ref role="3cqZAo" node="3GsVPVaNCk5" resolve="kindLevel" />
              </node>
              <node concept="37vLTw" id="3GsVPVaNDnW" role="37vLTJ">
                <ref role="3cqZAo" node="3GsVPVaNzA0" resolve="myKindLevel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3J4tNviCbES" role="3cqZAp">
            <node concept="37vLTI" id="3J4tNviCbEU" role="3clFbG">
              <node concept="37vLTw" id="3J4tNviCbWU" role="37vLTJ">
                <ref role="3cqZAo" node="3J4tNviCbEO" resolve="myPresentation" />
              </node>
              <node concept="37vLTw" id="3J4tNviCbF2" role="37vLTx">
                <ref role="3cqZAo" node="3J4tNviCbB4" resolve="presentation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5bed3YcLq8L" role="3cqZAp">
            <node concept="37vLTI" id="5bed3YcLqg4" role="3clFbG">
              <node concept="37vLTw" id="5bed3YcLtrw" role="37vLTx">
                <ref role="3cqZAo" node="5bed3YcLde9" resolve="checks" />
              </node>
              <node concept="37vLTw" id="5bed3YcLq8J" role="37vLTJ">
                <ref role="3cqZAo" node="5bed3YcLpSn" resolve="myChecks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3J4tNviCbB4" role="3clF46">
          <property role="TrG5h" value="presentation" />
          <node concept="3uibUv" id="3J4tNviCbB3" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="5bed3YcLde9" role="3clF46">
          <property role="TrG5h" value="checks" />
          <node concept="8X2XB" id="5bed3YcLDAp" role="1tU5fm">
            <node concept="3uibUv" id="5bed3YcLpMa" role="8Xvag">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3GsVPVaN$vv" role="jymVt">
        <property role="TrG5h" value="getKindLevel" />
        <node concept="3uibUv" id="3GsVPVaN$vw" role="3clF45">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
        </node>
        <node concept="3Tm1VV" id="3GsVPVaN$vx" role="1B3o_S" />
        <node concept="3clFbS" id="3GsVPVaN$vy" role="3clF47">
          <node concept="3clFbF" id="3GsVPVaN$vz" role="3cqZAp">
            <node concept="37vLTw" id="3GsVPVaN$vu" role="3clFbG">
              <ref role="3cqZAo" node="3GsVPVaNzA0" resolve="myKindLevel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3J4tNviCbXy" role="jymVt">
        <property role="TrG5h" value="getPresentation" />
        <node concept="3uibUv" id="3J4tNviCbXz" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm1VV" id="3J4tNviCbX$" role="1B3o_S" />
        <node concept="3clFbS" id="3J4tNviCbX_" role="3clF47">
          <node concept="3clFbF" id="3J4tNviCbXA" role="3cqZAp">
            <node concept="37vLTw" id="3J4tNviCbXx" role="3clFbG">
              <ref role="3cqZAo" node="3J4tNviCbEO" resolve="myPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5bed3YcLweG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getLongDescription" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="5bed3YcLweJ" role="3clF47">
          <node concept="3cpWs8" id="5bed3YcLwv_" role="3cqZAp">
            <node concept="3cpWsn" id="5bed3YcLwvA" role="3cpWs9">
              <property role="TrG5h" value="sb" />
              <node concept="3uibUv" id="5bed3YcLwvB" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
              <node concept="2ShNRf" id="5bed3YcLwxx" role="33vP2m">
                <node concept="1pGfFk" id="5bed3YcLwxw" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                  <node concept="Xl_RD" id="5bed3YcLxLk" role="37wK5m">
                    <property role="Xl_RC" value="Checks that:\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="5bed3YcLy$0" role="3cqZAp">
            <node concept="3clFbS" id="5bed3YcLy$2" role="2LFqv$">
              <node concept="2Gpval" id="5bed3YcLB4u" role="3cqZAp">
                <node concept="2GrKxI" id="5bed3YcLB4w" role="2Gsz3X">
                  <property role="TrG5h" value="s" />
                </node>
                <node concept="3clFbS" id="5bed3YcLB4y" role="2LFqv$">
                  <node concept="3clFbF" id="5bed3YcL$BZ" role="3cqZAp">
                    <node concept="2OqwBi" id="5bed3YcLCLL" role="3clFbG">
                      <node concept="2OqwBi" id="5bed3YcLCbT" role="2Oq$k0">
                        <node concept="2OqwBi" id="5bed3YcL$FG" role="2Oq$k0">
                          <node concept="37vLTw" id="5bed3YcL$BX" role="2Oq$k0">
                            <ref role="3cqZAo" node="5bed3YcLwvA" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="5bed3YcL_2p" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="Xl_RD" id="5bed3YcLC4s" role="37wK5m">
                              <property role="Xl_RC" value="-" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5bed3YcLCB1" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="2GrUjf" id="5bed3YcLCCz" role="37wK5m">
                            <ref role="2Gs0qQ" node="5bed3YcLB4w" resolve="s" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5bed3YcLDib" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="Xl_RD" id="5bed3YcLDjX" role="37wK5m">
                          <property role="Xl_RC" value="\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5bed3YcLBjn" role="2GsD0m">
                  <node concept="AH0OO" id="5bed3YcL_Se" role="2Oq$k0">
                    <node concept="37vLTw" id="5bed3YcLA2g" role="AHEQo">
                      <ref role="3cqZAo" node="5bed3YcLy$3" resolve="i" />
                    </node>
                    <node concept="uiWXb" id="5bed3YcL_a9" role="AHHXb">
                      <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="5bed3YcLBYq" role="2OqNvi">
                    <ref role="2Oxat5" node="5bed3YcLpSn" resolve="myChecks" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5bed3YcLy$3" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="5bed3YcLyMd" role="1tU5fm" />
              <node concept="3cmrfG" id="5bed3YcLyNI" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="2dkUwp" id="5bed3YcL$aY" role="1Dwp0S">
              <node concept="37vLTw" id="5bed3YcLyON" role="3uHU7B">
                <ref role="3cqZAo" node="5bed3YcLy$3" resolve="i" />
              </node>
              <node concept="2OqwBi" id="5bed3YcLzNp" role="3uHU7w">
                <node concept="Xjq3P" id="5bed3YcLzvj" role="2Oq$k0" />
                <node concept="liA8E" id="5bed3YcL$8V" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                </node>
              </node>
            </node>
            <node concept="3uNrnE" id="5bed3YcL$$F" role="1Dwrff">
              <node concept="37vLTw" id="5bed3YcL$$H" role="2$L3a6">
                <ref role="3cqZAo" node="5bed3YcLy$3" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5bed3YcLw$d" role="3cqZAp">
            <node concept="2OqwBi" id="5bed3YcLwYQ" role="3cqZAk">
              <node concept="37vLTw" id="5bed3YcLwLB" role="2Oq$k0">
                <ref role="3cqZAo" node="5bed3YcLwvA" resolve="sb" />
              </node>
              <node concept="liA8E" id="5bed3YcLxyJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5bed3YcLvX$" role="1B3o_S" />
        <node concept="3uibUv" id="5bed3YcLwb_" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRKzvM" role="1B3o_S" />
    <node concept="3uibUv" id="3etVqSRKzvN" role="EKbjA">
      <ref role="3uigEE" to="1m72:~PersistentStateComponent" resolve="PersistentStateComponent" />
      <node concept="3uibUv" id="3etVqSRKzvO" role="11_B2D">
        <ref role="3uigEE" node="3etVqSRKzvk" resolve="ModelCheckerSettings.MyState" />
      </node>
    </node>
    <node concept="2AHcQZ" id="3etVqSRKzvR" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~State" resolve="State" />
      <node concept="2B6LJw" id="3etVqSRKzvS" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.name()" resolve="name" />
        <node concept="Xl_RD" id="3etVqSRKzvT" role="2B70Vg">
          <property role="Xl_RC" value="ModelCheckerSettings" />
        </node>
      </node>
      <node concept="2B6LJw" id="3etVqSRKzvU" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.storages()" resolve="storages" />
        <node concept="2AHcQZ" id="ftM8OcP03Z" role="2B70Vg">
          <ref role="2AI5Lk" to="1m72:~Storage" resolve="Storage" />
          <node concept="2B6LJw" id="4PleL4OQ9Ck" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.value()" resolve="value" />
            <node concept="Xl_RD" id="3etVqSRKzw0" role="2B70Vg">
              <property role="Xl_RC" value="modelCheckerSettings.xml" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2B6LJw" id="5Kg_Wlnj4vX" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.reportStatistic()" resolve="reportStatistic" />
        <node concept="3clFbT" id="5Kg_WlnjfwP" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="3LCCkAqlR2w" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCug" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCuh" role="1PaTwD">
          <property role="3oM_SC" value="A" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCui" role="1PaTwD">
          <property role="3oM_SC" value="persistent" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuj" role="1PaTwD">
          <property role="3oM_SC" value="state" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuk" role="1PaTwD">
          <property role="3oM_SC" value="component" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCul" role="1PaTwD">
          <property role="3oM_SC" value="responsible" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCum" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCun" role="1PaTwD">
          <property role="3oM_SC" value="accessing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuo" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCup" role="1PaTwD">
          <property role="3oM_SC" value="editing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuq" role="1PaTwD">
          <property role="3oM_SC" value="&quot;Model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCur" role="1PaTwD">
          <property role="3oM_SC" value="Checker&quot;" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCus" role="1PaTwD">
          <property role="3oM_SC" value="settings." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCut" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCuu" role="1PaTwD">
          <property role="3oM_SC" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCuv" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCuw" role="1PaTwD">
          <property role="3oM_SC" value="See" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCux" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCuy" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqlVPN" role="1VuXuu">
              <ref role="VXe09" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCu_" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCuA" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuB" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCuC" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCuD" role="1PaTwD">
          <property role="3oM_SC" value="See" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCuE" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCuF" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqlXqU" role="1VuXuu">
              <ref role="VXe09" node="3etVqSRK$al" resolve="ModelCheckerTool" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCuI" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCuJ" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuK" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCuL" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCuM" role="1PaTwD">
          <property role="3oM_SC" value="See" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCuN" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCuO" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqlXtc" role="1VuXuu">
              <ref role="VXe09" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCuR" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCuS" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuT" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRKzw1">
    <property role="TrG5h" value="ModelCheckerIssueFinder" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="312cEg" id="2K4NeDxxyHr" role="jymVt">
      <property role="TrG5h" value="myExtraCheckers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2K4NeDxxyHs" role="1B3o_S" />
      <node concept="_YKpA" id="2K4NeDxxyHu" role="1tU5fm">
        <node concept="3uibUv" id="3xfDcbRkQuv" role="_ZDj9">
          <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
          <node concept="3qTvmN" id="4aUWmf9K1Xe" role="11_B2D" />
          <node concept="3qTvmN" id="4aUWmf9K3Du" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="kXqcYjTZrD" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="kXqcYjTZrE" role="1B3o_S" />
      <node concept="3uibUv" id="kXqcYjU25i" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="2$qlEUMAil9" role="jymVt">
      <property role="TrG5h" value="myMpsProject" />
      <node concept="3Tm6S6" id="2$qlEUMAila" role="1B3o_S" />
      <node concept="3uibUv" id="2$qlEUMAlNa" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="6MDTP4X42tl" role="jymVt">
      <property role="TrG5h" value="itemsToCheck" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6MDTP4X42tm" role="1B3o_S" />
      <node concept="3uibUv" id="6MDTP4X42to" role="1tU5fm">
        <ref role="3uigEE" to="wsw7:4QJbmJH1Aa8" resolve="ModelCheckerBuilder.ItemsToCheck" />
      </node>
      <node concept="2ShNRf" id="6MDTP4X42tp" role="33vP2m">
        <node concept="HV5vD" id="6MDTP4X42tq" role="2ShVmc">
          <ref role="HV5vE" to="wsw7:4QJbmJH1Aa8" resolve="ModelCheckerBuilder.ItemsToCheck" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2K4NeDxxzom" role="jymVt" />
    <node concept="3clFbW" id="2K4NeDxxfAo" role="jymVt">
      <node concept="3cqZAl" id="2K4NeDxxfAp" role="3clF45" />
      <node concept="3Tm1VV" id="2K4NeDxxfAq" role="1B3o_S" />
      <node concept="3clFbS" id="2K4NeDxxfAr" role="3clF47">
        <node concept="3clFbF" id="kXqcYjU70K" role="3cqZAp">
          <node concept="37vLTI" id="kXqcYjU7t4" role="3clFbG">
            <node concept="37vLTw" id="kXqcYjU7Hs" role="37vLTx">
              <ref role="3cqZAo" node="kXqcYjTxEu" resolve="repository" />
            </node>
            <node concept="37vLTw" id="kXqcYjU70I" role="37vLTJ">
              <ref role="3cqZAo" node="kXqcYjTZrD" resolve="myRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2K4NeDxxyHw" role="3cqZAp">
          <node concept="37vLTI" id="2K4NeDxxyHy" role="3clFbG">
            <node concept="37vLTw" id="2K4NeDxx_rH" role="37vLTJ">
              <ref role="3cqZAo" node="2K4NeDxxyHr" resolve="myExtraCheckers" />
            </node>
            <node concept="2ShNRf" id="4aUWmf9K_4H" role="37vLTx">
              <node concept="Tc6Ow" id="4aUWmf9K_0$" role="2ShVmc">
                <node concept="3uibUv" id="4aUWmf9K_0_" role="HW$YZ">
                  <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                  <node concept="3qTvmN" id="4aUWmf9K_0A" role="11_B2D" />
                  <node concept="3qTvmN" id="4aUWmf9K_0B" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4aUWmf9KFF6" role="3cqZAp">
          <node concept="2OqwBi" id="4aUWmf9KGye" role="3clFbG">
            <node concept="37vLTw" id="4aUWmf9KFF4" role="2Oq$k0">
              <ref role="3cqZAo" node="2K4NeDxxyHr" resolve="myExtraCheckers" />
            </node>
            <node concept="X8dFx" id="4aUWmf9KHlZ" role="2OqNvi">
              <node concept="37vLTw" id="4aUWmf9KHCa" role="25WWJ7">
                <ref role="3cqZAo" node="2K4NeDxxyDc" resolve="extraCheckers" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="kXqcYjTxEu" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="kXqcYjTycR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2K4NeDxxyDc" role="3clF46">
        <property role="TrG5h" value="extraCheckers" />
        <node concept="_YKpA" id="2K4NeDxxyDa" role="1tU5fm">
          <node concept="3qUE_q" id="4aUWmf9KyDo" role="_ZDj9">
            <node concept="3uibUv" id="3xfDcbRkPSH" role="3qUE_r">
              <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
              <node concept="3qTvmN" id="4aUWmf9JZpG" role="11_B2D" />
              <node concept="3qTvmN" id="4aUWmf9K16J" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="2$qlEUM_SoB" role="jymVt">
      <node concept="3cqZAl" id="2$qlEUM_SoD" role="3clF45" />
      <node concept="3Tm1VV" id="2$qlEUM_SoE" role="1B3o_S" />
      <node concept="3clFbS" id="2$qlEUM_SoF" role="3clF47">
        <node concept="1VxSAg" id="2$qlEUMAakj" role="3cqZAp">
          <ref role="37wK5l" node="2K4NeDxxfAo" resolve="ModelCheckerIssueFinder" />
          <node concept="2OqwBi" id="2$qlEUMAcAJ" role="37wK5m">
            <node concept="37vLTw" id="2$qlEUMAbVu" role="2Oq$k0">
              <ref role="3cqZAo" node="2$qlEUMA6CE" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="2$qlEUMAdkm" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="37vLTw" id="2$qlEUMAell" role="37wK5m">
            <ref role="3cqZAo" node="2$qlEUMA7ng" resolve="extraCheckers" />
          </node>
        </node>
        <node concept="3clFbF" id="2$qlEUMAn1I" role="3cqZAp">
          <node concept="37vLTI" id="2$qlEUMAnLr" role="3clFbG">
            <node concept="37vLTw" id="2$qlEUMAo_f" role="37vLTx">
              <ref role="3cqZAo" node="2$qlEUMA6CE" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="2$qlEUMAn1G" role="37vLTJ">
              <ref role="3cqZAo" node="2$qlEUMAil9" resolve="myMpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2$qlEUMA6CE" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="2$qlEUMA6CD" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="2$qlEUMA7ng" role="3clF46">
        <property role="TrG5h" value="extraCheckers" />
        <node concept="_YKpA" id="2$qlEUMA7nh" role="1tU5fm">
          <node concept="3qUE_q" id="2$qlEUMA7ni" role="_ZDj9">
            <node concept="3uibUv" id="2$qlEUMA7nj" role="3qUE_r">
              <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
              <node concept="3qTvmN" id="2$qlEUMA7nk" role="11_B2D" />
              <node concept="3qTvmN" id="2$qlEUMA7nl" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzw6" role="jymVt">
      <property role="TrG5h" value="getSpecificCheckers" />
      <property role="DiZV1" value="true" />
      <node concept="_YKpA" id="3etVqSRKzw7" role="3clF45">
        <node concept="3uibUv" id="3xfDcbRkShD" role="_ZDj9">
          <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
          <node concept="3qTvmN" id="4aUWmf9K5Mc" role="11_B2D" />
          <node concept="3qTvmN" id="4aUWmf9K7_Z" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tmbuc" id="3etVqSRKzw9" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRKzwa" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzwb" role="3cqZAp">
          <node concept="37vLTw" id="2K4NeDxxAPx" role="3cqZAk">
            <ref role="3cqZAo" node="2K4NeDxxyHr" resolve="myExtraCheckers" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6MDTP4X3QBK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addModelScope" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6MDTP4X3QBN" role="3clF47">
        <node concept="3clFbF" id="6MDTP4X45KP" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X46S1" role="3clFbG">
            <node concept="2OqwBi" id="6MDTP4X4607" role="2Oq$k0">
              <node concept="37vLTw" id="6MDTP4X45KO" role="2Oq$k0">
                <ref role="3cqZAo" node="6MDTP4X42tl" resolve="itemsToCheck" />
              </node>
              <node concept="2OwXpG" id="6MDTP4X46cf" role="2OqNvi">
                <ref role="2Oxat5" to="wsw7:4QJbmJH1D0v" resolve="models" />
              </node>
            </node>
            <node concept="X8dFx" id="6MDTP4X47Av" role="2OqNvi">
              <node concept="37vLTw" id="6MDTP4X48jO" role="25WWJ7">
                <ref role="3cqZAo" node="6MDTP4X3TyM" resolve="models" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6MDTP4X3OYr" role="1B3o_S" />
      <node concept="3cqZAl" id="6MDTP4X3QyA" role="3clF45" />
      <node concept="37vLTG" id="6MDTP4X3TyM" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="A3Dl8" id="6MDTP4X3TyK" role="1tU5fm">
          <node concept="3uibUv" id="6MDTP4X5bKo" role="A3Ik2">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6MDTP4X3VLG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addModuleScope" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6MDTP4X3VLH" role="3clF47">
        <node concept="3clFbF" id="6MDTP4X48MC" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X49U4" role="3clFbG">
            <node concept="2OqwBi" id="6MDTP4X4922" role="2Oq$k0">
              <node concept="37vLTw" id="6MDTP4X48MB" role="2Oq$k0">
                <ref role="3cqZAo" node="6MDTP4X42tl" resolve="itemsToCheck" />
              </node>
              <node concept="2OwXpG" id="6MDTP4X49ei" role="2OqNvi">
                <ref role="2Oxat5" to="wsw7:4QJbmJH1DeO" resolve="modules" />
              </node>
            </node>
            <node concept="X8dFx" id="6MDTP4X4b9Q" role="2OqNvi">
              <node concept="37vLTw" id="6MDTP4X4bqP" role="25WWJ7">
                <ref role="3cqZAo" node="6MDTP4X3VLK" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6MDTP4X3VLI" role="1B3o_S" />
      <node concept="3cqZAl" id="6MDTP4X3VLJ" role="3clF45" />
      <node concept="37vLTG" id="6MDTP4X3VLK" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="6MDTP4X3VLL" role="1tU5fm">
          <node concept="3uibUv" id="6MDTP4X41Cl" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MDTP4X4GfN" role="jymVt" />
    <node concept="3clFb_" id="6MDTP4X4HAq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canExecute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6MDTP4X4HAr" role="1B3o_S" />
      <node concept="10P_77" id="6MDTP4X4HAt" role="3clF45" />
      <node concept="3clFbS" id="6MDTP4X4HAu" role="3clF47">
        <node concept="3clFbF" id="6MDTP4X4JFV" role="3cqZAp">
          <node concept="1Wc70l" id="6MDTP4X5$45" role="3clFbG">
            <node concept="2OqwBi" id="6MDTP4X5_F_" role="3uHU7B">
              <node concept="37vLTw" id="6MDTP4X5$vL" role="2Oq$k0">
                <ref role="3cqZAo" node="2K4NeDxxyHr" resolve="myExtraCheckers" />
              </node>
              <node concept="3GX2aA" id="6MDTP4X5BlQ" role="2OqNvi" />
            </node>
            <node concept="1eOMI4" id="6MDTP4X5zps" role="3uHU7w">
              <node concept="22lmx$" id="6MDTP4X4MSr" role="1eOMHV">
                <node concept="2OqwBi" id="6MDTP4X4OPC" role="3uHU7w">
                  <node concept="2OqwBi" id="6MDTP4X4NDT" role="2Oq$k0">
                    <node concept="37vLTw" id="6MDTP4X4NiR" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MDTP4X42tl" resolve="itemsToCheck" />
                    </node>
                    <node concept="2OwXpG" id="6MDTP4X4NW5" role="2OqNvi">
                      <ref role="2Oxat5" to="wsw7:4QJbmJH1DeO" resolve="modules" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6MDTP4X4Qba" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="6MDTP4X4KQK" role="3uHU7B">
                  <node concept="2OqwBi" id="6MDTP4X4JUC" role="2Oq$k0">
                    <node concept="37vLTw" id="6MDTP4X4JFS" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MDTP4X42tl" resolve="itemsToCheck" />
                    </node>
                    <node concept="2OwXpG" id="6MDTP4X4K32" role="2OqNvi">
                      <ref role="2Oxat5" to="wsw7:4QJbmJH1D0v" resolve="models" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6MDTP4X4M2w" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MDTP4X4HAv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MDTP4X3NQZ" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRKzwd" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3clFbS" id="3etVqSRKzwe" role="3clF47">
        <node concept="3SKdUt" id="5FdF_yGZ7s8" role="3cqZAp">
          <node concept="1PaTwC" id="5FdF_yGZ7s9" role="1aUNEU">
            <node concept="3oM_SD" id="5FdF_yGZ7sa" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sb" role="1PaTwD">
              <property role="3oM_SC" value="issues" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sc" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sd" role="1PaTwD">
              <property role="3oM_SC" value="going" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7se" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sf" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sg" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sh" role="1PaTwD">
              <property role="3oM_SC" value="concurrently" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FdF_yGZ7si" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yGZ7sj" role="3cpWs9">
            <property role="TrG5h" value="errorCollector" />
            <node concept="3uibUv" id="5FdF_yGZ7sk" role="1tU5fm">
              <ref role="3uigEE" to="18ew:~CollectConsumer" resolve="CollectConsumer" />
              <node concept="3uibUv" id="5FdF_yGZ7sl" role="11_B2D">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="5FdF_yGZ7sm" role="33vP2m">
              <node concept="1pGfFk" id="5FdF_yGZ7sn" role="2ShVmc">
                <ref role="37wK5l" to="18ew:~CollectConsumer.&lt;init&gt;(java.util.Collection)" resolve="CollectConsumer" />
                <node concept="3uibUv" id="5FdF_yGZ7so" role="1pMfVU">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
                <node concept="2YIFZM" id="5FdF_yGZ7sp" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Collections.synchronizedList(java.util.List)" resolve="synchronizedList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="2ShNRf" id="5FdF_yGZ7sq" role="37wK5m">
                    <node concept="1pGfFk" id="5FdF_yGZ7sr" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FdF_yGZ7ss" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yGZ7st" role="3cpWs9">
            <property role="TrG5h" value="specificCheckers" />
            <node concept="_YKpA" id="5FdF_yGZ7su" role="1tU5fm">
              <node concept="3uibUv" id="5FdF_yGZ7sv" role="_ZDj9">
                <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                <node concept="3qTvmN" id="5FdF_yGZ7sw" role="11_B2D" />
                <node concept="3qUE_q" id="5FdF_yGZ7sx" role="11_B2D">
                  <node concept="3uibUv" id="5FdF_yGZ7sy" role="3qUE_r">
                    <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5FdF_yGZ7sz" role="33vP2m">
              <node concept="Tc6Ow" id="5FdF_yGZ7s$" role="2ShVmc">
                <node concept="3uibUv" id="5FdF_yGZ7s_" role="HW$YZ">
                  <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                  <node concept="3qTvmN" id="5FdF_yGZ7sA" role="11_B2D" />
                  <node concept="3qUE_q" id="5FdF_yGZ7sB" role="11_B2D">
                    <node concept="3uibUv" id="5FdF_yGZ7sC" role="3qUE_r">
                      <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FdF_yGZ7sD" role="3cqZAp">
          <node concept="2OqwBi" id="5FdF_yGZ7sE" role="3clFbG">
            <node concept="37vLTw" id="5FdF_yGZ7sF" role="2Oq$k0">
              <ref role="3cqZAo" node="5FdF_yGZ7st" resolve="specificCheckers" />
            </node>
            <node concept="X8dFx" id="5FdF_yGZ7sG" role="2OqNvi">
              <node concept="1rXfSq" id="5FdF_yGZ7sH" role="25WWJ7">
                <ref role="37wK5l" node="3etVqSRKzw6" resolve="getSpecificCheckers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FdF_yGZCij" role="3cqZAp" />
        <node concept="3SKdUt" id="5FdF_yGZ7sI" role="3cqZAp">
          <node concept="1PaTwC" id="5FdF_yGZ7sJ" role="1aUNEU">
            <node concept="3oM_SD" id="5FdF_yGZ7sK" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sL" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sM" role="1PaTwD">
              <property role="3oM_SC" value="odd" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sN" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sO" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sP" role="1PaTwD">
              <property role="3oM_SC" value="checker" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sQ" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sR" role="1PaTwD">
              <property role="3oM_SC" value="provided" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sS" role="1PaTwD">
              <property role="3oM_SC" value="outer" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sT" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sU" role="1PaTwD">
              <property role="3oM_SC" value="cares" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sV" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sW" role="1PaTwD">
              <property role="3oM_SC" value="ModelCheckerSettings" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sX" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sY" role="1PaTwD">
              <property role="3oM_SC" value="IssueKindReportItem" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7sZ" role="1PaTwD">
              <property role="3oM_SC" value="anyway." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5FdF_yGZ7t0" role="3cqZAp">
          <node concept="1PaTwC" id="5FdF_yGZ7t1" role="1aUNEU">
            <node concept="3oM_SD" id="5FdF_yGZ7t2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t3" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t6" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t8" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t9" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7ta" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tb" role="1PaTwD">
              <property role="3oM_SC" value="passed" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tc" role="1PaTwD">
              <property role="3oM_SC" value="IAbstractChecker" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7td" role="1PaTwD">
              <property role="3oM_SC" value="(created" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7te" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tf" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tg" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7th" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7ti" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tj" role="1PaTwD">
              <property role="3oM_SC" value="below)" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tk" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tl" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tm" role="1PaTwD">
              <property role="3oM_SC" value="cons," />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tn" role="1PaTwD">
              <property role="3oM_SC" value="however," />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7to" role="1PaTwD">
              <property role="3oM_SC" value="can't" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tp" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tq" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tr" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7ts" role="1PaTwD">
              <property role="3oM_SC" value="away" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5FdF_yGZ7tt" role="3cqZAp">
          <node concept="1PaTwC" id="5FdF_yGZ7tu" role="1aUNEU">
            <node concept="3oM_SD" id="5FdF_yGZ7tv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tw" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tx" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7ty" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tz" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7t_" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tA" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tB" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tC" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tE" role="1PaTwD">
              <property role="3oM_SC" value="expose" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tF" role="1PaTwD">
              <property role="3oM_SC" value="ModelCheckerBuilder.ItemsToCheck," />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tH" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tI" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tJ" role="1PaTwD">
              <property role="3oM_SC" value="refactor" />
            </node>
            <node concept="3oM_SD" id="5FdF_yGZ7tK" role="1PaTwD">
              <property role="3oM_SC" value="this." />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FdF_yGZ7tL" role="3cqZAp" />
        <node concept="3cpWs8" id="5FdF_yGZ7tM" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yGZ7tN" role="3cpWs9">
            <property role="TrG5h" value="runInParallel" />
            <node concept="10P_77" id="5FdF_yGZ7tO" role="1tU5fm" />
            <node concept="1Wc70l" id="5FdF_yGZ7tP" role="33vP2m">
              <node concept="1eOMI4" id="5FdF_yGZ7tQ" role="3uHU7B">
                <node concept="3y3z36" id="5FdF_yGZ7tR" role="1eOMHV">
                  <node concept="10Nm6u" id="5FdF_yGZ7tS" role="3uHU7w" />
                  <node concept="37vLTw" id="5FdF_yGZ7tT" role="3uHU7B">
                    <ref role="3cqZAo" node="2$qlEUMAil9" resolve="myMpsProject" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5FdF_yGZ7tU" role="3uHU7w">
                <node concept="2YIFZM" id="5FdF_yGZ7tV" role="2Oq$k0">
                  <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                  <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="5FdF_yGZ7tW" role="2OqNvi">
                  <ref role="37wK5l" node="2H4SLalWHQB" resolve="isRunInParallel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FdF_yH7SD1" role="3cqZAp" />
        <node concept="3SKdUt" id="5FdF_yH8Cl$" role="3cqZAp">
          <node concept="1PaTwC" id="5FdF_yH8Cl_" role="1aUNEU">
            <node concept="3oM_SD" id="5FdF_yH8Fsi" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8Fsk" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8Fu3" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FvN" role="1PaTwD">
              <property role="3oM_SC" value="going" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8Fx$" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FyV" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FzS" role="1PaTwD">
              <property role="3oM_SC" value="acquired" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FAy" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FBx" role="1PaTwD">
              <property role="3oM_SC" value="&quot;leaf&quot;" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FK7" role="1PaTwD">
              <property role="3oM_SC" value="items" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FMO" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FQo" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8FSh" role="1PaTwD">
              <property role="3oM_SC" value="ProcessTasks" />
            </node>
            <node concept="3oM_SD" id="5FdF_yH8G5$" role="1PaTwD">
              <property role="3oM_SC" value="hierarchy" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FdF_yH7VE4" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yH7VE5" role="3cpWs9">
            <property role="TrG5h" value="readExecutor" />
            <node concept="3uibUv" id="5FdF_yH7UtL" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~Executor" resolve="Executor" />
            </node>
            <node concept="3K4zz7" id="5FdF_yH85SZ" role="33vP2m">
              <node concept="37vLTw" id="5FdF_yH83cc" role="3K4Cdx">
                <ref role="3cqZAo" node="5FdF_yGZ7tN" resolve="runInParallel" />
              </node>
              <node concept="2ShNRf" id="5FdF_yH7VE6" role="3K4E3e">
                <node concept="1pGfFk" id="5FdF_yH7VE7" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="13pYwTQJ2vY" resolve="IdeaPlatformReadExecutor" />
                  <node concept="2OqwBi" id="5FdF_yH7VE8" role="37wK5m">
                    <node concept="2OqwBi" id="5FdF_yH7VE9" role="2Oq$k0">
                      <node concept="37vLTw" id="5FdF_yH7VEa" role="2Oq$k0">
                        <ref role="3cqZAo" node="2$qlEUMAil9" resolve="myMpsProject" />
                      </node>
                      <node concept="liA8E" id="5FdF_yH7VEb" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5FdF_yH7VEc" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="5FdF_yH28Zo" role="3K4GZi">
                <node concept="1pGfFk" id="5FdF_yH2v7s" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="5FdF_yH1enN" resolve="DefaultReadExecutor" />
                  <node concept="2OqwBi" id="5FdF_yH2ym3" role="37wK5m">
                    <node concept="2OqwBi" id="5FdF_yH2ym4" role="2Oq$k0">
                      <node concept="37vLTw" id="5FdF_yH2ym5" role="2Oq$k0">
                        <ref role="3cqZAo" node="2$qlEUMAil9" resolve="myMpsProject" />
                      </node>
                      <node concept="liA8E" id="5FdF_yH2ym6" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5FdF_yH2ym7" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FdF_yGZ7ua" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yGZ7ub" role="3cpWs9">
            <property role="TrG5h" value="scheduler" />
            <node concept="3uibUv" id="5FdF_yGZ7uc" role="1tU5fm">
              <ref role="3uigEE" to="xzav:3LCCkAqUBTY" resolve="TaskScheduler" />
            </node>
            <node concept="3K4zz7" id="5FdF_yGZ7ud" role="33vP2m">
              <node concept="2ShNRf" id="5FdF_yGZ7ue" role="3K4GZi">
                <node concept="1pGfFk" id="5FdF_yH1AI2" role="2ShVmc">
                  <ref role="37wK5l" to="xzav:5FdF_yH1H2$" resolve="DefaultTaskScheduler" />
                  <node concept="37vLTw" id="5FdF_yH8gDw" role="37wK5m">
                    <ref role="3cqZAo" node="5FdF_yH7VE5" resolve="readExecutor" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="5FdF_yGZ7ug" role="3K4Cdx">
                <ref role="3cqZAo" node="5FdF_yGZ7tN" resolve="runInParallel" />
              </node>
              <node concept="2ShNRf" id="5FdF_yGZ7uh" role="3K4E3e">
                <node concept="1pGfFk" id="5FdF_yGZ7ui" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="u3gh:1Yn_vPPAA5W" resolve="IdeaPlatformTaskScheduler" />
                  <node concept="37vLTw" id="5FdF_yGZ7uj" role="37wK5m">
                    <ref role="3cqZAo" node="2$qlEUMAil9" resolve="myMpsProject" />
                  </node>
                  <node concept="37vLTw" id="5FdF_yH7VEd" role="37wK5m">
                    <ref role="3cqZAo" node="5FdF_yH7VE5" resolve="readExecutor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FdF_yH2NBY" role="3cqZAp" />
        <node concept="3cpWs8" id="5FdF_yGZ7ul" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yGZ7um" role="3cpWs9">
            <property role="TrG5h" value="modelCheckerBuilder" />
            <node concept="3uibUv" id="5FdF_yGZ7un" role="1tU5fm">
              <ref role="3uigEE" to="wsw7:3etVqSRKzLq" resolve="ModelCheckerBuilder" />
            </node>
            <node concept="2OqwBi" id="5FdF_yGZ7uo" role="33vP2m">
              <property role="hSjvv" value="true" />
              <node concept="2ShNRf" id="5FdF_yGZ7up" role="2Oq$k0">
                <node concept="1pGfFk" id="5FdF_yGZ7uq" role="2ShVmc">
                  <ref role="37wK5l" to="wsw7:6nj_ILmBNrL" resolve="ModelCheckerBuilder" />
                  <node concept="2OqwBi" id="1p3K8b3c0KV" role="37wK5m">
                    <node concept="2ShNRf" id="1p3K8b3bw3C" role="2Oq$k0">
                      <node concept="1pGfFk" id="1p3K8b3bHpU" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="wsw7:6pnunaLnyyn" resolve="ModelCheckerBuilder.ModelsExtractorImpl" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1p3K8b3c3si" role="2OqNvi">
                      <ref role="37wK5l" to="wsw7:34euvBSCGJN" resolve="includeStubs" />
                      <node concept="2OqwBi" id="5FdF_yGZ7ur" role="37wK5m">
                        <node concept="2YIFZM" id="5FdF_yGZ7us" role="2Oq$k0">
                          <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                          <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
                        </node>
                        <node concept="liA8E" id="5FdF_yGZ7ut" role="2OqNvi">
                          <ref role="37wK5l" node="1VtEqfXHNfQ" resolve="isCheckStubs" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5FdF_yGZ7uu" role="2OqNvi">
                <ref role="37wK5l" to="wsw7:2$qlEUMfF6r" resolve="withTaskScheduler" />
                <node concept="37vLTw" id="5FdF_yGZ7uv" role="37wK5m">
                  <ref role="3cqZAo" node="5FdF_yGZ7ub" resolve="scheduler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FdF_yGZ7ux" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yGZ7uy" role="3cpWs9">
            <property role="TrG5h" value="abstractChecker" />
            <node concept="3uibUv" id="5FdF_yGZ7uz" role="1tU5fm">
              <ref role="3uigEE" to="wsw7:3xfDcbRbJai" resolve="IAbstractChecker" />
              <node concept="3uibUv" id="5FdF_yGZ7u$" role="11_B2D">
                <ref role="3uigEE" to="wsw7:4QJbmJH1Aa8" resolve="ModelCheckerBuilder.ItemsToCheck" />
              </node>
              <node concept="3uibUv" id="5FdF_yGZ7u_" role="11_B2D">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="5FdF_yGZ7uA" role="33vP2m">
              <node concept="37vLTw" id="5FdF_yGZ7uB" role="2Oq$k0">
                <ref role="3cqZAo" node="5FdF_yGZ7um" resolve="modelCheckerBuilder" />
              </node>
              <node concept="liA8E" id="5FdF_yGZ7uC" role="2OqNvi">
                <ref role="37wK5l" to="wsw7:6bXa3O$aFCh" resolve="createChecker" />
                <node concept="37vLTw" id="5FdF_yGZ7uD" role="37wK5m">
                  <ref role="3cqZAo" node="5FdF_yGZ7st" resolve="specificCheckers" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FdF_yGZ7uE" role="3cqZAp" />
        <node concept="3clFbF" id="5FdF_yGZ7uF" role="3cqZAp">
          <node concept="2OqwBi" id="5FdF_yGZ7uG" role="3clFbG">
            <node concept="37vLTw" id="5FdF_yGZ7uH" role="2Oq$k0">
              <ref role="3cqZAo" node="5FdF_yGZ7uy" resolve="abstractChecker" />
            </node>
            <node concept="liA8E" id="5FdF_yGZ7uI" role="2OqNvi">
              <ref role="37wK5l" to="wsw7:4SGXHKgYYAZ" resolve="check" />
              <node concept="37vLTw" id="5FdF_yGZ7uJ" role="37wK5m">
                <ref role="3cqZAo" node="6MDTP4X42tl" resolve="itemsToCheck" />
              </node>
              <node concept="37vLTw" id="5FdF_yGZ7uK" role="37wK5m">
                <ref role="3cqZAo" node="kXqcYjTZrD" resolve="myRepository" />
              </node>
              <node concept="37vLTw" id="5FdF_yGZ7uL" role="37wK5m">
                <ref role="3cqZAo" node="5FdF_yGZ7sj" resolve="errorCollector" />
              </node>
              <node concept="37vLTw" id="5FdF_yGZ7uM" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzzx" resolve="monitor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5FdF_yH300f" role="3cqZAp" />
        <node concept="3cpWs8" id="5FdF_yH4iAp" role="3cqZAp">
          <node concept="3cpWsn" id="5FdF_yH4iAq" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="3uibUv" id="5FdF_yH4hod" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5FdF_yH4Vqm" role="11_B2D">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3uibUv" id="5FdF_yH4Vqn" role="11_B2D">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Z7Z9OwPrzx" role="3cqZAp">
          <node concept="2OqwBi" id="3Z7Z9OwPDIE" role="3clFbG">
            <node concept="2OqwBi" id="3Z7Z9OwQq5X" role="2Oq$k0">
              <node concept="37vLTw" id="3Z7Z9OwQlKK" role="2Oq$k0">
                <ref role="3cqZAo" node="2$qlEUMAil9" resolve="myMpsProject" />
              </node>
              <node concept="liA8E" id="3Z7Z9OwQtyG" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3Z7Z9OwPGfd" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="3Z7Z9OwPIT3" role="37wK5m">
                <node concept="3clFbS" id="3Z7Z9OwPIT4" role="1bW5cS">
                  <node concept="3SKdUt" id="3Z7Z9OwRCxE" role="3cqZAp">
                    <node concept="1PaTwC" id="3Z7Z9OwRCxF" role="1aUNEU">
                      <node concept="3oM_SD" id="3Z7Z9OwRCy2" role="1PaTwD" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="3Z7Z9OwPLM$" role="3cqZAp">
                    <node concept="37vLTI" id="3Z7Z9OwPLMA" role="3clFbG">
                      <node concept="2OqwBi" id="5FdF_yH4iAr" role="37vLTx">
                        <node concept="2OqwBi" id="5FdF_yH4iAs" role="2Oq$k0">
                          <node concept="2OqwBi" id="5FdF_yH4iAt" role="2Oq$k0">
                            <node concept="2OqwBi" id="5FdF_yH4iAu" role="2Oq$k0">
                              <node concept="37vLTw" id="5FdF_yH4iAv" role="2Oq$k0">
                                <ref role="3cqZAo" node="5FdF_yGZ7sj" resolve="errorCollector" />
                              </node>
                              <node concept="liA8E" id="5FdF_yH4iAw" role="2OqNvi">
                                <ref role="37wK5l" to="18ew:~CollectConsumer.getResult()" resolve="getResult" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5FdF_yH4iAx" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5FdF_yH4iAy" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                            <node concept="37Ijox" id="5FdF_yH4iAz" role="37wK5m">
                              <ref role="37Ijqf" node="6MDTP4X65c0" resolve="getSearchResultForReportItem" />
                              <node concept="Xjq3P" id="5FdF_yH4iA$" role="wWaWy" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5FdF_yH4iA_" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="3Z7Z9OwRqX2" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="3Z7Z9OwRwD4" role="3PaCim">
                              <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                              <node concept="3uibUv" id="3Z7Z9OwRwD5" role="11_B2D">
                                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3Z7Z9OwPLME" role="37vLTJ">
                        <ref role="3cqZAo" node="5FdF_yH4iAq" resolve="results" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Z7Z9OwPjND" role="3cqZAp" />
        <node concept="3cpWs6" id="5FdF_yH6PIG" role="3cqZAp">
          <node concept="2ShNRf" id="5FdF_yH7446" role="3cqZAk">
            <node concept="1pGfFk" id="5FdF_yH7447" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="3uibUv" id="5FdF_yH7448" role="1pMfVU">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
              <node concept="2YIFZM" id="5FdF_yH7bLC" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
              <node concept="37vLTw" id="5FdF_yH744a" role="37wK5m">
                <ref role="3cqZAo" node="5FdF_yH4iAq" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3etVqSRKzzt" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        <node concept="3uibUv" id="13muGfOGEDA" role="11_B2D">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzzu" role="1B3o_S" />
      <node concept="37vLTG" id="3etVqSRKzzx" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="3etVqSRKzzy" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3etVqSRKzzz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRKzz$" role="1B3o_S" />
    <node concept="2YIFZL" id="3etVqSRRx8e" role="jymVt">
      <property role="TrG5h" value="getResultCategory" />
      <node concept="37vLTG" id="3etVqSRRx8f" role="3clF46">
        <property role="TrG5h" value="messageStatus" />
        <node concept="3uibUv" id="3etVqSRRx8g" role="1tU5fm">
          <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
        </node>
      </node>
      <node concept="17QB3L" id="3etVqSRRx8h" role="3clF45" />
      <node concept="3Tm1VV" id="3etVqSRRx8i" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRRx8j" role="3clF47">
        <node concept="3KaCP$" id="3etVqSRRx8k" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxglbR8" role="3KbGdf">
            <ref role="3cqZAo" node="3etVqSRRx8f" resolve="messageStatus" />
          </node>
          <node concept="3clFbS" id="3etVqSRRx8m" role="3Kb1Dw">
            <node concept="3cpWs6" id="3etVqSRRx8n" role="3cqZAp">
              <node concept="37vLTw" id="4SGXHKgWQDH" role="3cqZAk">
                <ref role="3cqZAo" node="3etVqSRKzLr" resolve="SEVERITY_ERROR" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3etVqSRRx8p" role="3KbHQx">
            <node concept="Rm8GO" id="3etVqSRRx8q" role="3Kbmr1">
              <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
              <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
            </node>
            <node concept="3clFbS" id="3etVqSRRx8r" role="3Kbo56">
              <node concept="3cpWs6" id="3etVqSRRx8s" role="3cqZAp">
                <node concept="37vLTw" id="4SGXHKgWQDE" role="3cqZAk">
                  <ref role="3cqZAo" node="3etVqSRKzLr" resolve="SEVERITY_ERROR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3etVqSRRx8u" role="3KbHQx">
            <node concept="3clFbS" id="3etVqSRRx8v" role="3Kbo56">
              <node concept="3cpWs6" id="3etVqSRRx8w" role="3cqZAp">
                <node concept="37vLTw" id="4SGXHKgWQDK" role="3cqZAk">
                  <ref role="3cqZAo" node="3etVqSRKzLv" resolve="SEVERITY_WARNING" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="3etVqSRRx8y" role="3Kbmr1">
              <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
              <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
            </node>
          </node>
          <node concept="3KbdKl" id="3etVqSRRx8z" role="3KbHQx">
            <node concept="3clFbS" id="3etVqSRRx8$" role="3Kbo56">
              <node concept="3cpWs6" id="3etVqSRRx8_" role="3cqZAp">
                <node concept="37vLTw" id="4SGXHKgWQDM" role="3cqZAk">
                  <ref role="3cqZAo" node="3etVqSRKzLz" resolve="SEVERITY_INFO" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="3etVqSRRx8B" role="3Kbmr1">
              <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
              <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3etVqSRKzT_" role="jymVt">
      <property role="TrG5h" value="CATEGORY_KIND_SEVERITY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3etVqSRKzTA" role="1B3o_S" />
      <node concept="2ShNRf" id="3etVqSRKzTB" role="33vP2m">
        <node concept="1pGfFk" id="3etVqSRKzTC" role="2ShVmc">
          <ref role="37wK5l" to="9erk:~CategoryKind.&lt;init&gt;(java.lang.String,javax.swing.Icon,java.lang.String)" resolve="CategoryKind" />
          <node concept="Xl_RD" id="3etVqSRKzTD" role="37wK5m">
            <property role="Xl_RC" value="Severity" />
          </node>
          <node concept="10M0yZ" id="3etVqSRKzTE" role="37wK5m">
            <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
            <ref role="3cqZAo" to="57ty:~Icons.ERROR_ICON" resolve="ERROR_ICON" />
          </node>
          <node concept="Xl_RD" id="3etVqSRKzTF" role="37wK5m">
            <property role="Xl_RC" value="Group by severity" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3etVqSRMw5y" role="1tU5fm">
        <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
      </node>
    </node>
    <node concept="Wx3nA" id="3etVqSRKzTH" role="jymVt">
      <property role="TrG5h" value="CATEGORY_KIND_ISSUE_TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3etVqSRKzTI" role="1B3o_S" />
      <node concept="2ShNRf" id="3etVqSRKzTJ" role="33vP2m">
        <node concept="1pGfFk" id="3etVqSRKzTK" role="2ShVmc">
          <ref role="37wK5l" to="9erk:~CategoryKind.&lt;init&gt;(java.lang.String,javax.swing.Icon,java.lang.String)" resolve="CategoryKind" />
          <node concept="Xl_RD" id="3etVqSRKzTL" role="37wK5m">
            <property role="Xl_RC" value="Issue type" />
          </node>
          <node concept="10M0yZ" id="3etVqSRKzTM" role="37wK5m">
            <ref role="1PxDUh" to="bfoa:~Icons" resolve="Icons" />
            <ref role="3cqZAo" to="bfoa:~Icons.CATEGORY_ICON" resolve="CATEGORY_ICON" />
          </node>
          <node concept="Xl_RD" id="3etVqSRKzTN" role="37wK5m">
            <property role="Xl_RC" value="Group by issue type" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3etVqSRMx7j" role="1tU5fm">
        <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
      </node>
    </node>
    <node concept="Wx3nA" id="3etVqSRKzLr" role="jymVt">
      <property role="TrG5h" value="SEVERITY_ERROR" />
      <property role="3TUv4t" value="true" />
      <node concept="Xl_RD" id="3etVqSRKzLs" role="33vP2m">
        <property role="Xl_RC" value="Errors" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzLt" role="1B3o_S" />
      <node concept="17QB3L" id="3etVqSRKzLu" role="1tU5fm" />
    </node>
    <node concept="Wx3nA" id="3etVqSRKzLv" role="jymVt">
      <property role="TrG5h" value="SEVERITY_WARNING" />
      <property role="3TUv4t" value="true" />
      <node concept="Xl_RD" id="3etVqSRKzLw" role="33vP2m">
        <property role="Xl_RC" value="Warnings" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzLx" role="1B3o_S" />
      <node concept="17QB3L" id="3etVqSRKzLy" role="1tU5fm" />
    </node>
    <node concept="Wx3nA" id="3etVqSRKzLz" role="jymVt">
      <property role="TrG5h" value="SEVERITY_INFO" />
      <property role="3TUv4t" value="true" />
      <node concept="Xl_RD" id="3etVqSRKzL$" role="33vP2m">
        <property role="Xl_RC" value="Infos" />
      </node>
      <node concept="17QB3L" id="3etVqSRKzL_" role="1tU5fm" />
      <node concept="3Tm1VV" id="3etVqSRKzLA" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="6MDTP4X65c0" role="jymVt">
      <property role="TrG5h" value="getSearchResultForReportItem" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6MDTP4X65c5" role="3clF47">
        <node concept="3cpWs8" id="6MDTP4X65c6" role="3cqZAp">
          <node concept="3cpWsn" id="6MDTP4X65c7" role="3cpWs9">
            <property role="TrG5h" value="issueKind" />
            <node concept="3uibUv" id="6MDTP4X65c8" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="dQllQpj5S7" role="33vP2m">
              <node concept="2OqwBi" id="6MDTP4X65c9" role="2Oq$k0">
                <node concept="10M0yZ" id="6MDTP4X65ca" role="2Oq$k0">
                  <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                  <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.FLAVOUR_ISSUE_KIND" resolve="FLAVOUR_ISSUE_KIND" />
                </node>
                <node concept="liA8E" id="6MDTP4X65cb" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.get(jetbrains.mps.errors.item.FlavouredItem)" resolve="get" />
                  <node concept="37vLTw" id="6MDTP4X65cc" role="37wK5m">
                    <ref role="3cqZAo" node="6MDTP4X65cC" resolve="item" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="dQllQpj9Uj" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~IssueKindReportItem$ItemKind.getSpecialization()" resolve="getSpecialization" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6MDTP4X65cd" role="3cqZAp">
          <node concept="2ShNRf" id="6MDTP4X65ce" role="3cqZAk">
            <node concept="1pGfFk" id="6MDTP4X65cf" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.Object,jetbrains.mps.util.Pair...)" resolve="SearchResult" />
              <node concept="37vLTw" id="6MDTP4X65cg" role="37wK5m">
                <ref role="3cqZAo" node="6MDTP4X65cC" resolve="item" />
              </node>
              <node concept="2OqwBi" id="6MDTP4X65ch" role="37wK5m">
                <node concept="2OqwBi" id="6MDTP4X65ci" role="2Oq$k0">
                  <node concept="10M0yZ" id="6MDTP4X65cj" role="2Oq$k0">
                    <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                    <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.PATH_OBJECT" resolve="PATH_OBJECT" />
                  </node>
                  <node concept="liA8E" id="6MDTP4X65ck" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.get(jetbrains.mps.errors.item.FlavouredItem)" resolve="get" />
                    <node concept="37vLTw" id="6MDTP4X65cl" role="37wK5m">
                      <ref role="3cqZAo" node="6MDTP4X65cC" resolve="item" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6MDTP4X65cm" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~IssueKindReportItem$PathObject.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                  <node concept="37vLTw" id="6MDTP4X6cbK" role="37wK5m">
                    <ref role="3cqZAo" node="kXqcYjTZrD" resolve="myRepository" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="6MDTP4X65co" role="1pMfVU">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
              <node concept="2ShNRf" id="6MDTP4X65cp" role="37wK5m">
                <node concept="1pGfFk" id="6MDTP4X65cq" role="2ShVmc">
                  <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                  <node concept="3uibUv" id="6MDTP4X65cr" role="1pMfVU">
                    <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
                  </node>
                  <node concept="17QB3L" id="6MDTP4X65cs" role="1pMfVU" />
                  <node concept="37vLTw" id="6MDTP4X65ct" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRKzT_" resolve="CATEGORY_KIND_SEVERITY" />
                  </node>
                  <node concept="1rXfSq" id="6MDTP4X65cu" role="37wK5m">
                    <ref role="37wK5l" node="3etVqSRRx8e" resolve="getResultCategory" />
                    <node concept="2OqwBi" id="6MDTP4X65cv" role="37wK5m">
                      <node concept="37vLTw" id="6MDTP4X65cw" role="2Oq$k0">
                        <ref role="3cqZAo" node="6MDTP4X65cC" resolve="item" />
                      </node>
                      <node concept="liA8E" id="6MDTP4X65cx" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="6MDTP4X65cy" role="37wK5m">
                <node concept="1pGfFk" id="6MDTP4X65cz" role="2ShVmc">
                  <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                  <node concept="3uibUv" id="6MDTP4X65c$" role="1pMfVU">
                    <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
                  </node>
                  <node concept="17QB3L" id="6MDTP4X65c_" role="1pMfVU" />
                  <node concept="37vLTw" id="6MDTP4X65cA" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRKzTH" resolve="CATEGORY_KIND_ISSUE_TYPE" />
                  </node>
                  <node concept="37vLTw" id="6MDTP4X65cB" role="37wK5m">
                    <ref role="3cqZAo" node="6MDTP4X65c7" resolve="issueKind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6MDTP4X65c2" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
        <node concept="3uibUv" id="6MDTP4X65c3" role="11_B2D">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="37vLTG" id="6MDTP4X65cC" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="6MDTP4X65cD" role="1tU5fm">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6MDTP4X67bz" role="1B3o_S" />
    </node>
    <node concept="3uibUv" id="6MDTP4X4Eip" role="EKbjA">
      <ref role="3uigEE" to="9erk:~SearchTask" resolve="SearchTask" />
    </node>
    <node concept="3UR2Jj" id="3LCCkAqoCtY" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCuU" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCuV" role="1PaTwD">
          <property role="3oM_SC" value="The" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuW" role="1PaTwD">
          <property role="3oM_SC" value="main" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuX" role="1PaTwD">
          <property role="3oM_SC" value="engine" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuY" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCuZ" role="1PaTwD">
          <property role="3oM_SC" value="launches" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCv0" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCv1" role="1PaTwD">
          <property role="3oM_SC" value="checkers" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCv2" role="1PaTwD">
          <property role="3oM_SC" value="specified" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCv3" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCv4" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCv5" role="1PaTwD">
          <property role="3oM_SC" value="constructor." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCv6" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCv7" role="1PaTwD">
          <property role="3oM_SC" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCv8" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCv9" role="1PaTwD">
          <property role="3oM_SC" value="The" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCva" role="1PaTwD">
          <property role="3oM_SC" value="&quot;scope&quot;" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvb" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvc" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvd" role="1PaTwD">
          <property role="3oM_SC" value="operation," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCve" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvf" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvg" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvh" role="1PaTwD">
          <property role="3oM_SC" value="object" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvi" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvj" role="1PaTwD">
          <property role="3oM_SC" value="run" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvk" role="1PaTwD">
          <property role="3oM_SC" value="checkers" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvl" role="1PaTwD">
          <property role="3oM_SC" value="on," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvm" role="1PaTwD">
          <property role="3oM_SC" value="can" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvn" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvo" role="1PaTwD">
          <property role="3oM_SC" value="specified" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvp" role="1PaTwD">
          <property role="3oM_SC" value="by" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvq" role="1PaTwD">
          <property role="3oM_SC" value="calling" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCvr" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCvs" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCvt" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCvu" role="1Vtduc">
            <node concept="VXe0Z" id="3LCCkAqpG9K" role="1VuXuu">
              <ref role="VXe0S" node="6MDTP4X3QBK" resolve="addModelScope" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCvx" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCvy" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvz" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCv$" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCv_" role="1Vtduc">
            <node concept="VXe0Z" id="3LCCkAqpGo8" role="1VuXuu">
              <ref role="VXe0S" node="6MDTP4X3VLG" resolve="addModuleScope" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCvC" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCvD" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvE" role="1PaTwD">
          <property role="3oM_SC" value="." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCvF" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCvG" role="1PaTwD">
          <property role="3oM_SC" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCvH" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCvI" role="1PaTwD">
          <property role="3oM_SC" value="Checkers" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvJ" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvK" role="1PaTwD">
          <property role="3oM_SC" value="executed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvL" role="1PaTwD">
          <property role="3oM_SC" value="using" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvM" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvN" role="1PaTwD">
          <property role="3oM_SC" value="helper" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvO" role="1PaTwD">
          <property role="3oM_SC" value="object:" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCvP" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCvQ" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqONpT" role="1VuXuu">
              <ref role="VXe09" to="wsw7:3etVqSRKzLq" resolve="ModelCheckerBuilder" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCvT" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCvU" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvV" role="1PaTwD">
          <property role="3oM_SC" value="." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvW" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRKzzT">
    <property role="TrG5h" value="ModelCheckerUtils" />
    <property role="3GE5qa" value="Model Checker" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="3etVqSRKzzU" role="jymVt">
      <node concept="3clFbS" id="3etVqSRKzzV" role="3clF47" />
      <node concept="3Tm6S6" id="3etVqSRKzzW" role="1B3o_S" />
      <node concept="3cqZAl" id="3etVqSRKzzX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3OkcvSSArzX" role="jymVt" />
    <node concept="2tJIrI" id="3OkcvSS_Nj9" role="jymVt" />
    <node concept="2YIFZL" id="3etVqSRKz_E" role="jymVt">
      <property role="TrG5h" value="getIssueCountForSeverity" />
      <node concept="10Oyi0" id="3etVqSRKz_F" role="3clF45" />
      <node concept="3clFbS" id="3etVqSRKz_G" role="3clF47">
        <node concept="3clFbJ" id="3etVqSRKz_H" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRKz_I" role="3clFbx">
            <node concept="3cpWs6" id="3etVqSRKz_J" role="3cqZAp">
              <node concept="3cmrfG" id="3etVqSRKz_K" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3etVqSRKz_L" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglK4F" role="3uHU7B">
              <ref role="3cqZAo" node="3etVqSRKzAk" resolve="severity" />
            </node>
            <node concept="10Nm6u" id="3etVqSRKz_N" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs8" id="3etVqSRKz_O" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRKz_P" role="3cpWs9">
            <property role="TrG5h" value="issueCount" />
            <node concept="3cmrfG" id="3etVqSRKz_Q" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="10Oyi0" id="3etVqSRKz_R" role="1tU5fm" />
          </node>
        </node>
        <node concept="2Gpval" id="3etVqSRKz_S" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRKz_T" role="2LFqv$">
            <node concept="3clFbJ" id="3etVqSRKz_U" role="3cqZAp">
              <node concept="3clFbS" id="3etVqSRKz_V" role="3clFbx">
                <node concept="3clFbF" id="3etVqSRKz_W" role="3cqZAp">
                  <node concept="3uNrnE" id="3etVqSRKz_X" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTy78" role="2$L3a6">
                      <ref role="3cqZAo" node="3etVqSRKz_P" resolve="issueCount" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3etVqSRKz_Z" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmwWf" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzAk" resolve="severity" />
                </node>
                <node concept="liA8E" id="3etVqSRKzA1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3etVqSRKzA2" role="37wK5m">
                    <node concept="2OwXpG" id="3etVqSRKzA3" role="2OqNvi">
                      <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                    </node>
                    <node concept="2OqwBi" id="3etVqSRKzA4" role="2Oq$k0">
                      <node concept="liA8E" id="3etVqSRKzA5" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="3etVqSRKzA6" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3etVqSRKzA7" role="2Oq$k0">
                        <node concept="liA8E" id="3etVqSRKzA8" role="2OqNvi">
                          <ref role="37wK5l" to="9erk:~SearchResult.getCategories()" resolve="getCategories" />
                        </node>
                        <node concept="2GrUjf" id="3etVqSRKzA9" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="3etVqSRKzAa" resolve="issue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2GrKxI" id="3etVqSRKzAa" role="2Gsz3X">
            <property role="TrG5h" value="issue" />
          </node>
          <node concept="2OqwBi" id="3etVqSRKzAb" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxgmtv3" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzAh" resolve="issues" />
            </node>
            <node concept="liA8E" id="3etVqSRKzAd" role="2OqNvi">
              <ref role="37wK5l" to="9erk:~SearchResults.getSearchResults()" resolve="getSearchResults" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRKzAe" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTvIQ" role="3cqZAk">
            <ref role="3cqZAo" node="3etVqSRKz_P" resolve="issueCount" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzAg" role="1B3o_S" />
      <node concept="37vLTG" id="3etVqSRKzAh" role="3clF46">
        <property role="TrG5h" value="issues" />
        <node concept="3uibUv" id="3etVqSRKzAi" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
          <node concept="3uibUv" id="13muGfOFLis" role="11_B2D">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2cahkxOpNG4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3etVqSRKzAk" role="3clF46">
        <property role="TrG5h" value="severity" />
        <node concept="17QB3L" id="3etVqSRKzAl" role="1tU5fm" />
        <node concept="2AHcQZ" id="2cahkxOpO5i" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRKzAL" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3etVqSRKzAM">
    <property role="TrG5h" value="ModelCheckerCheckinHandler" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="312cEg" id="3etVqSRKzAN" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3uibUv" id="3etVqSRKzAO" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="3etVqSRKzAP" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3etVqSRKzAQ" role="jymVt">
      <property role="TrG5h" value="myPanel" />
      <node concept="3uibUv" id="3etVqSRKzAR" role="1tU5fm">
        <ref role="3uigEE" to="jlcu:~CheckinProjectPanel" resolve="CheckinProjectPanel" />
      </node>
      <node concept="3Tm6S6" id="3etVqSRKzAS" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3etVqSRKzAT" role="jymVt">
      <node concept="37vLTG" id="3etVqSRKzAU" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3etVqSRKzAV" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3etVqSRKzAW" role="3clF47">
        <node concept="3clFbF" id="3etVqSRKzAX" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzAY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuHt7" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRKzAN" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmb_a" role="37vLTx">
              <ref role="3cqZAo" node="3etVqSRKzAU" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzB1" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzB2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuOqK" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRKzAQ" resolve="myPanel" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmzta" role="37vLTx">
              <ref role="3cqZAo" node="3etVqSRKzB7" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzB5" role="1B3o_S" />
      <node concept="3cqZAl" id="3etVqSRKzB6" role="3clF45" />
      <node concept="37vLTG" id="3etVqSRKzB7" role="3clF46">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="3etVqSRKzB8" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~CheckinProjectPanel" resolve="CheckinProjectPanel" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzB9" role="jymVt">
      <property role="TrG5h" value="getBeforeCheckinConfigurationPanel" />
      <node concept="3uibUv" id="3etVqSRKzBa" role="3clF45">
        <ref role="3uigEE" to="4zvo:~RefreshableOnComponent" resolve="RefreshableOnComponent" />
      </node>
      <node concept="2AHcQZ" id="3etVqSRKzBb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="3etVqSRKzBc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzBd" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRKzBe" role="3clF47">
        <node concept="3cpWs8" id="3etVqSRKzBf" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRKzBg" role="3cpWs9">
            <property role="TrG5h" value="checkModelCheckBox" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3etVqSRKzBh" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
            </node>
            <node concept="2ShNRf" id="3etVqSRKzBi" role="33vP2m">
              <node concept="1pGfFk" id="3etVqSRKzBj" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                <node concept="Xl_RD" id="3etVqSRKzBk" role="37wK5m">
                  <property role="Xl_RC" value="Perform check for affected models" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRKzBl" role="3cqZAp">
          <node concept="2ShNRf" id="3etVqSRKzBm" role="3cqZAk">
            <node concept="YeOm9" id="3etVqSRKzBn" role="2ShVmc">
              <node concept="1Y3b0j" id="3etVqSRKzBo" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" to="4zvo:~RefreshableOnComponent" resolve="RefreshableOnComponent" />
                <node concept="3Tm1VV" id="3etVqSRKzBp" role="1B3o_S" />
                <node concept="3clFb_" id="3etVqSRKzBq" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="getComponent" />
                  <node concept="3Tm1VV" id="3etVqSRKzBr" role="1B3o_S" />
                  <node concept="3clFbS" id="3etVqSRKzBs" role="3clF47">
                    <node concept="3cpWs6" id="3etVqSRKzBF" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTBSR" role="3cqZAk">
                        <ref role="3cqZAo" node="3etVqSRKzBg" resolve="checkModelCheckBox" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="3etVqSRKzBH" role="3clF45">
                    <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                  </node>
                  <node concept="2AHcQZ" id="3etVqSRKzBI" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3clFb_" id="3etVqSRKzBJ" role="jymVt">
                  <property role="TrG5h" value="restoreState" />
                  <node concept="3Tm1VV" id="3etVqSRKzBK" role="1B3o_S" />
                  <node concept="3cqZAl" id="3etVqSRKzBL" role="3clF45" />
                  <node concept="3clFbS" id="3etVqSRKzBM" role="3clF47">
                    <node concept="3clFbF" id="3etVqSRKzBN" role="3cqZAp">
                      <node concept="2OqwBi" id="3etVqSRKzBO" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTuY1" role="2Oq$k0">
                          <ref role="3cqZAo" node="3etVqSRKzBg" resolve="checkModelCheckBox" />
                        </node>
                        <node concept="liA8E" id="3etVqSRKzBQ" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                          <node concept="2OqwBi" id="3etVqSRKzBR" role="37wK5m">
                            <node concept="liA8E" id="3etVqSRKzBS" role="2OqNvi">
                              <ref role="37wK5l" node="3etVqSRKzu_" resolve="isCheckBeforeCommit" />
                            </node>
                            <node concept="2YIFZM" id="3etVqSRKzBT" role="2Oq$k0">
                              <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
                              <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="3etVqSRKzBU" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3clFb_" id="3etVqSRKzBV" role="jymVt">
                  <property role="TrG5h" value="saveState" />
                  <node concept="3clFbS" id="3etVqSRKzBW" role="3clF47">
                    <node concept="3clFbF" id="3etVqSRKzBX" role="3cqZAp">
                      <node concept="2OqwBi" id="3etVqSRKzBY" role="3clFbG">
                        <node concept="liA8E" id="3etVqSRKzBZ" role="2OqNvi">
                          <ref role="37wK5l" node="3etVqSRKzuH" resolve="setCheckBeforeCommit" />
                          <node concept="2OqwBi" id="3etVqSRKzC0" role="37wK5m">
                            <node concept="liA8E" id="3etVqSRKzC1" role="2OqNvi">
                              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTvlH" role="2Oq$k0">
                              <ref role="3cqZAo" node="3etVqSRKzBg" resolve="checkModelCheckBox" />
                            </node>
                          </node>
                        </node>
                        <node concept="2YIFZM" id="3etVqSRKzC3" role="2Oq$k0">
                          <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
                          <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="3etVqSRKzC4" role="1B3o_S" />
                  <node concept="3cqZAl" id="3etVqSRKzC5" role="3clF45" />
                  <node concept="2AHcQZ" id="3etVqSRKzC6" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzCc" role="jymVt">
      <property role="TrG5h" value="beforeCheckin" />
      <node concept="3clFbS" id="3etVqSRKzCd" role="3clF47">
        <node concept="3clFbJ" id="3etVqSRKzCe" role="3cqZAp">
          <node concept="3fqX7Q" id="3etVqSRKzCf" role="3clFbw">
            <node concept="2OqwBi" id="3etVqSRKzCg" role="3fr31v">
              <node concept="2YIFZM" id="3etVqSRKzCh" role="2Oq$k0">
                <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="3etVqSRKzCi" role="2OqNvi">
                <ref role="37wK5l" node="3etVqSRKzu_" resolve="isCheckBeforeCommit" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3etVqSRKzCj" role="3clFbx">
            <node concept="3cpWs6" id="3etVqSRKzCk" role="3cqZAp">
              <node concept="Rm8GO" id="2fqk0uNAeIT" role="3cqZAk">
                <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.COMMIT" resolve="COMMIT" />
                <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRKzCm" role="3cqZAp" />
        <node concept="3cpWs8" id="B5MI4_q5nE" role="3cqZAp">
          <node concept="3cpWsn" id="B5MI4_q5nH" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="B5MI4_q5nI" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2YIFZM" id="B5MI4_q5nJ" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="B5MI4_q5nK" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzAN" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="B5MI4_oEhQ" role="3cqZAp">
          <node concept="3cpWsn" id="B5MI4_oEhR" role="3cpWs9">
            <property role="TrG5h" value="modelsToCommit" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="B5MI4_oCMB" role="1tU5fm">
              <node concept="3uibUv" id="B5MI4_oCME" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="1rXfSq" id="B5MI4_oEhS" role="33vP2m">
              <ref role="37wK5l" node="B5MI4_rvrK" resolve="getModelsByFiles" />
              <node concept="37vLTw" id="B5MI4_ru_e" role="37wK5m">
                <ref role="3cqZAo" node="B5MI4_q5nH" resolve="mpsProject" />
              </node>
              <node concept="2OqwBi" id="B5MI4_oEhT" role="37wK5m">
                <node concept="37vLTw" id="B5MI4_oEhU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzAQ" resolve="myPanel" />
                </node>
                <node concept="liA8E" id="B5MI4_oEhV" role="2OqNvi">
                  <ref role="37wK5l" to="jlcu:~CheckinProjectPanel.getVirtualFiles()" resolve="getVirtualFiles" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="B5MI4_oWJU" role="3cqZAp">
          <node concept="3cpWsn" id="B5MI4_oWJX" role="3cpWs9">
            <property role="TrG5h" value="modelsToCheck" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="B5MI4_qJyU" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="B5MI4_qMJJ" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="B5MI4_oR_8" role="3cqZAp">
          <node concept="3clFbS" id="B5MI4_oR_a" role="3clFbx">
            <node concept="3clFbF" id="B5MI4_p9AK" role="3cqZAp">
              <node concept="37vLTI" id="B5MI4_paX7" role="3clFbG">
                <node concept="2ShNRf" id="B5MI4_pbSi" role="37vLTx">
                  <node concept="1pGfFk" id="B5MI4_pJKC" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="37vLTw" id="B5MI4_pLET" role="37wK5m">
                      <ref role="3cqZAo" node="B5MI4_oEhR" resolve="modelsToCommit" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="B5MI4_p9AI" role="37vLTJ">
                  <ref role="3cqZAo" node="B5MI4_oWJX" resolve="modelsToCheck" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="B5MI4_tyxy" role="3cqZAp">
              <node concept="3cpWsn" id="B5MI4_tyxz" role="3cpWs9">
                <property role="TrG5h" value="title" />
                <property role="3TUv4t" value="true" />
                <node concept="17QB3L" id="B5MI4_txZe" role="1tU5fm" />
                <node concept="Xl_RD" id="B5MI4_tyx$" role="33vP2m">
                  <property role="Xl_RC" value="Look up affected models" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="B5MI4_r$Qc" role="3cqZAp">
              <node concept="3cpWsn" id="B5MI4_r$Qd" role="3cpWs9">
                <property role="TrG5h" value="r" />
                <node concept="3uibUv" id="B5MI4_r$Qe" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~ModelReadRunnable" resolve="ModelReadRunnable" />
                </node>
                <node concept="2ShNRf" id="B5MI4_r_S1" role="33vP2m">
                  <node concept="1pGfFk" id="B5MI4_rIGH" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                    <node concept="2OqwBi" id="B5MI4_rMf5" role="37wK5m">
                      <node concept="37vLTw" id="B5MI4_rKtp" role="2Oq$k0">
                        <ref role="3cqZAo" node="B5MI4_q5nH" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="B5MI4_rOc2" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="B5MI4_qbNw" role="37wK5m">
                      <node concept="3clFbS" id="B5MI4_qbNx" role="1bW5cS">
                        <node concept="3cpWs8" id="B5MI4_qqwo" role="3cqZAp">
                          <node concept="3cpWsn" id="B5MI4_qqwp" role="3cpWs9">
                            <property role="TrG5h" value="mrl" />
                            <node concept="_YKpA" id="B5MI4_qq7X" role="1tU5fm">
                              <node concept="3uibUv" id="B5MI4_qq80" role="_ZDj9">
                                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="B5MI4_qqwq" role="33vP2m">
                              <node concept="2OqwBi" id="B5MI4_qqwr" role="2Oq$k0">
                                <node concept="37vLTw" id="B5MI4_qqws" role="2Oq$k0">
                                  <ref role="3cqZAo" node="B5MI4_oEhR" resolve="modelsToCommit" />
                                </node>
                                <node concept="3$u5V9" id="B5MI4_qqwt" role="2OqNvi">
                                  <node concept="37Ijox" id="B5MI4_q_bk" role="23t8la">
                                    <ref role="37Ijqf" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                    <node concept="2FaPjH" id="B5MI4_q_bm" role="wWaWy">
                                      <node concept="3uibUv" id="B5MI4_q_bn" role="2FaQuo">
                                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="ANE8D" id="B5MI4_qqwA" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="B5MI4_sSW$" role="3cqZAp">
                          <node concept="3cpWsn" id="B5MI4_sSW_" role="3cpWs9">
                            <property role="TrG5h" value="pi" />
                            <node concept="3uibUv" id="B5MI4_sS$D" role="1tU5fm">
                              <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                            </node>
                            <node concept="2OqwBi" id="B5MI4_sSWA" role="33vP2m">
                              <node concept="2YIFZM" id="B5MI4_sSWB" role="2Oq$k0">
                                <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                              </node>
                              <node concept="liA8E" id="B5MI4_sSWC" role="2OqNvi">
                                <ref role="37wK5l" to="xygl:~ProgressManager.getProgressIndicator()" resolve="getProgressIndicator" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="B5MI4_sKU$" role="3cqZAp">
                          <node concept="3cpWsn" id="B5MI4_sKU_" role="3cpWs9">
                            <property role="TrG5h" value="pm" />
                            <node concept="3uibUv" id="B5MI4_sKUA" role="1tU5fm">
                              <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                            </node>
                            <node concept="3K4zz7" id="B5MI4_t0ys" role="33vP2m">
                              <node concept="2ShNRf" id="B5MI4_t2mg" role="3K4E3e">
                                <node concept="1pGfFk" id="B5MI4_tf5r" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="mk90:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="B5MI4_tgTb" role="3K4GZi">
                                <node concept="1pGfFk" id="B5MI4_tpfR" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                  <node concept="37vLTw" id="B5MI4_tr93" role="37wK5m">
                                    <ref role="3cqZAo" node="B5MI4_sSW_" resolve="pi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="B5MI4_sY$W" role="3K4Cdx">
                                <node concept="10Nm6u" id="B5MI4_sZx9" role="3uHU7w" />
                                <node concept="37vLTw" id="B5MI4_sXzX" role="3uHU7B">
                                  <ref role="3cqZAo" node="B5MI4_sSW_" resolve="pi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="B5MI4_sI5s" role="3cqZAp" />
                        <node concept="3clFbF" id="B5MI4_ttFp" role="3cqZAp">
                          <node concept="2OqwBi" id="B5MI4_tuP6" role="3clFbG">
                            <node concept="37vLTw" id="B5MI4_ttFn" role="2Oq$k0">
                              <ref role="3cqZAo" node="B5MI4_sKU_" resolve="pm" />
                            </node>
                            <node concept="liA8E" id="B5MI4_twYU" role="2OqNvi">
                              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
                              <node concept="37vLTw" id="B5MI4_tEO2" role="37wK5m">
                                <ref role="3cqZAo" node="B5MI4_tyxz" resolve="title" />
                              </node>
                              <node concept="3cmrfG" id="B5MI4_tHPs" role="37wK5m">
                                <property role="3cmrfH" value="10" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="B5MI4_soj6" role="3cqZAp">
                          <node concept="1PaTwC" id="B5MI4_soj7" role="1aUNEU">
                            <node concept="3oM_SD" id="B5MI4_speW" role="1PaTwD">
                              <property role="3oM_SC" value="FIXME" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_speY" role="1PaTwD">
                              <property role="3oM_SC" value="would" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_spJs" role="1PaTwD">
                              <property role="3oM_SC" value="be" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_spJw" role="1PaTwD">
                              <property role="3oM_SC" value="nice" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_srCq" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sswi" role="1PaTwD">
                              <property role="3oM_SC" value="limit" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_stob" role="1PaTwD">
                              <property role="3oM_SC" value="model" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sug5" role="1PaTwD">
                              <property role="3oM_SC" value="lookup" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_suge" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sugo" role="1PaTwD">
                              <property role="3oM_SC" value="modules" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sv8l" role="1PaTwD">
                              <property role="3oM_SC" value="that" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sw4q" role="1PaTwD">
                              <property role="3oM_SC" value="depend" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sw4B" role="1PaTwD">
                              <property role="3oM_SC" value="from" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sx7m" role="1PaTwD">
                              <property role="3oM_SC" value="those" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sx7_" role="1PaTwD">
                              <property role="3oM_SC" value="modified" />
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="B5MI4_szDu" role="3cqZAp">
                          <node concept="1PaTwC" id="B5MI4_szDv" role="1aUNEU">
                            <node concept="3oM_SD" id="B5MI4_s$__" role="1PaTwD">
                              <property role="3oM_SC" value=" " />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_s_tp" role="1PaTwD">
                              <property role="3oM_SC" value="" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_s_ts" role="1PaTwD">
                              <property role="3oM_SC" value="" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_s_tw" role="1PaTwD">
                              <property role="3oM_SC" value="" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sAln" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sAPS" role="1PaTwD">
                              <property role="3oM_SC" value="avoid" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sAPZ" role="1PaTwD">
                              <property role="3oM_SC" value="forcing" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sCek" role="1PaTwD">
                              <property role="3oM_SC" value="model" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sD6f" role="1PaTwD">
                              <property role="3oM_SC" value="load" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sFq_" role="1PaTwD">
                              <property role="3oM_SC" value="from" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sFqK" role="1PaTwD">
                              <property role="3oM_SC" value="unrelated" />
                            </node>
                            <node concept="3oM_SD" id="B5MI4_sFVn" role="1PaTwD">
                              <property role="3oM_SC" value="modules" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="B5MI4_r7rP" role="3cqZAp">
                          <node concept="3cpWsn" id="B5MI4_r7rQ" role="3cpWs9">
                            <property role="TrG5h" value="projectModels" />
                            <node concept="3uibUv" id="B5MI4_r712" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                              <node concept="3uibUv" id="B5MI4_r715" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="B5MI4_r7rR" role="33vP2m">
                              <ref role="37wK5l" to="18ew:~IterableUtil.asCollection(java.lang.Iterable)" resolve="asCollection" />
                              <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                              <node concept="2OqwBi" id="B5MI4_r7rS" role="37wK5m">
                                <node concept="2OqwBi" id="B5MI4_r7rT" role="2Oq$k0">
                                  <node concept="37vLTw" id="B5MI4_r7rU" role="2Oq$k0">
                                    <ref role="3cqZAo" node="B5MI4_q5nH" resolve="mpsProject" />
                                  </node>
                                  <node concept="liA8E" id="B5MI4_r7rV" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="B5MI4_r7rW" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~BaseScope.getModels()" resolve="getModels" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="B5MI4_tLe_" role="3cqZAp">
                          <node concept="2OqwBi" id="B5MI4_tLTV" role="3clFbG">
                            <node concept="37vLTw" id="B5MI4_tLez" role="2Oq$k0">
                              <ref role="3cqZAo" node="B5MI4_sKU_" resolve="pm" />
                            </node>
                            <node concept="liA8E" id="B5MI4_tO3u" role="2OqNvi">
                              <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                              <node concept="3cmrfG" id="B5MI4_tPpK" role="37wK5m">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="B5MI4_pOo0" role="3cqZAp">
                          <node concept="2OqwBi" id="B5MI4_qO_3" role="3clFbG">
                            <node concept="2ShNRf" id="B5MI4_pOnW" role="2Oq$k0">
                              <node concept="1pGfFk" id="B5MI4_pUr5" role="2ShVmc">
                                <property role="373rjd" value="true" />
                                <ref role="37wK5l" to="ospv:2o_iqz0pKS9" resolve="ModelImportLookup" />
                                <node concept="37vLTw" id="B5MI4_qxc6" role="37wK5m">
                                  <ref role="3cqZAo" node="B5MI4_qqwp" resolve="mrl" />
                                </node>
                                <node concept="37Ijox" id="B5MI4_qEZd" role="37wK5m">
                                  <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                  <node concept="37vLTw" id="B5MI4_qDj0" role="wWaWy">
                                    <ref role="3cqZAo" node="B5MI4_oWJX" resolve="modelsToCheck" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="B5MI4_qP_I" role="2OqNvi">
                              <ref role="37wK5l" to="ospv:2o_iqz0pLMN" resolve="withImports" />
                              <node concept="37vLTw" id="B5MI4_reu8" role="37wK5m">
                                <ref role="3cqZAo" node="B5MI4_r7rQ" resolve="projectModels" />
                              </node>
                              <node concept="2OqwBi" id="B5MI4_tVHw" role="37wK5m">
                                <node concept="37vLTw" id="B5MI4_tV5L" role="2Oq$k0">
                                  <ref role="3cqZAo" node="B5MI4_sKU_" resolve="pm" />
                                </node>
                                <node concept="liA8E" id="B5MI4_tWIs" role="2OqNvi">
                                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                                  <node concept="3cmrfG" id="B5MI4_tZwa" role="37wK5m">
                                    <property role="3cmrfH" value="9" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="B5MI4_u5Bz" role="3cqZAp">
                          <node concept="2OqwBi" id="B5MI4_u6MB" role="3clFbG">
                            <node concept="37vLTw" id="B5MI4_u5Bx" role="2Oq$k0">
                              <ref role="3cqZAo" node="B5MI4_sKU_" resolve="pm" />
                            </node>
                            <node concept="liA8E" id="B5MI4_u7ud" role="2OqNvi">
                              <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="B5MI4_rSg0" role="3cqZAp">
              <node concept="2OqwBi" id="B5MI4_rWSv" role="3clFbG">
                <node concept="2YIFZM" id="B5MI4_rVaX" role="2Oq$k0">
                  <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                </node>
                <node concept="liA8E" id="B5MI4_rXRE" role="2OqNvi">
                  <ref role="37wK5l" to="xygl:~ProgressManager.runProcessWithProgressSynchronously(java.lang.Runnable,java.lang.String,boolean,com.intellij.openapi.project.Project,javax.swing.JComponent)" resolve="runProcessWithProgressSynchronously" />
                  <node concept="37vLTw" id="B5MI4_s2w$" role="37wK5m">
                    <ref role="3cqZAo" node="B5MI4_r$Qd" resolve="r" />
                  </node>
                  <node concept="37vLTw" id="B5MI4_tyx_" role="37wK5m">
                    <ref role="3cqZAo" node="B5MI4_tyxz" resolve="title" />
                  </node>
                  <node concept="3clFbT" id="B5MI4_s9Pf" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="B5MI4_sc9T" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRKzAN" resolve="myProject" />
                  </node>
                  <node concept="2OqwBi" id="B5MI4_sg09" role="37wK5m">
                    <node concept="37vLTw" id="B5MI4_seUm" role="2Oq$k0">
                      <ref role="3cqZAo" node="3etVqSRKzAQ" resolve="myPanel" />
                    </node>
                    <node concept="liA8E" id="B5MI4_shHI" role="2OqNvi">
                      <ref role="37wK5l" to="jlcu:~CheckinProjectPanel.getComponent()" resolve="getComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="B5MI4_oSMD" role="3clFbw">
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String,boolean)" resolve="is" />
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <node concept="Xl_RD" id="B5MI4_oTRN" role="37wK5m">
              <property role="Xl_RC" value="mps.vcs.commit.check.models.all" />
            </node>
            <node concept="3clFbT" id="B5MI4_oV2n" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="9aQIb" id="B5MI4_pXUV" role="9aQIa">
            <node concept="3clFbS" id="B5MI4_pXUW" role="9aQI4">
              <node concept="3clFbF" id="B5MI4_pYFQ" role="3cqZAp">
                <node concept="37vLTI" id="B5MI4_q0zz" role="3clFbG">
                  <node concept="37vLTw" id="B5MI4_q1HW" role="37vLTx">
                    <ref role="3cqZAo" node="B5MI4_oEhR" resolve="modelsToCommit" />
                  </node>
                  <node concept="37vLTw" id="B5MI4_pYFP" role="37vLTJ">
                    <ref role="3cqZAo" node="B5MI4_oWJX" resolve="modelsToCheck" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzCn" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzCo" role="3clFbG">
            <node concept="2YIFZM" id="3etVqSRKzCp" role="2Oq$k0">
              <ref role="1Pybhc" node="3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" node="3etVqSRK$jv" resolve="getInstance" />
              <node concept="37vLTw" id="3etVqSRKzCq" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzAN" resolve="myProject" />
              </node>
            </node>
            <node concept="liA8E" id="3etVqSRKzCr" role="2OqNvi">
              <ref role="37wK5l" node="3etVqSRK$gW" resolve="checkModelsBeforeCommit" />
              <node concept="37vLTw" id="B5MI4_oEhW" role="37wK5m">
                <ref role="3cqZAo" node="B5MI4_oWJX" resolve="modelsToCheck" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3etVqSRKzC$" role="3clF45">
        <ref role="3uigEE" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzC_" role="1B3o_S" />
      <node concept="2AHcQZ" id="3etVqSRKzCA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="B5MI4_rvrK" role="jymVt">
      <property role="TrG5h" value="getModelsByFiles" />
      <node concept="3clFbS" id="6y_kxB1TET0" role="3clF47">
        <node concept="3cpWs8" id="6uf$qpAylf$" role="3cqZAp">
          <node concept="3cpWsn" id="6uf$qpAylf_" role="3cpWs9">
            <property role="TrG5h" value="fs" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6uf$qpAylfv" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~IdeaFileSystem" resolve="IdeaFileSystem" />
            </node>
            <node concept="2OqwBi" id="6uf$qpAylfA" role="33vP2m">
              <node concept="37vLTw" id="6uf$qpAylfB" role="2Oq$k0">
                <ref role="3cqZAo" node="B5MI4_rgE1" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="6uf$qpAylfC" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6y_kxB1TET1" role="3cqZAp">
          <node concept="3cpWsn" id="6y_kxB1TET2" role="3cpWs9">
            <property role="TrG5h" value="ft" />
            <node concept="3uibUv" id="6y_kxB1TET3" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
            </node>
            <node concept="2YIFZM" id="6y_kxB1TET4" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
              <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
              <node concept="2OqwBi" id="6uf$qpAzumA" role="37wK5m">
                <node concept="37vLTw" id="6uf$qpAztoH" role="2Oq$k0">
                  <ref role="3cqZAo" node="B5MI4_rgE1" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="6uf$qpAzBF0" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6y_kxB1TET5" role="3cqZAp">
          <node concept="2OqwBi" id="6uf$qpAzl2F" role="3cqZAk">
            <node concept="2OqwBi" id="6uf$qpAytNd" role="2Oq$k0">
              <node concept="2OqwBi" id="6uf$qpAytNe" role="2Oq$k0">
                <node concept="2OqwBi" id="6PUZm6la3k5" role="2Oq$k0">
                  <node concept="37vLTw" id="6uf$qpAytNf" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1TET$" resolve="files" />
                  </node>
                  <node concept="3zZkjj" id="6PUZm6la45O" role="2OqNvi">
                    <node concept="37Ijox" id="B5MI4_rq55" role="23t8la">
                      <ref role="37Ijqf" to="4hrd:~IdeaFileSystem.canConvert(com.intellij.openapi.vfs.VirtualFile)" resolve="canConvert" />
                      <node concept="37vLTw" id="B5MI4_roK9" role="wWaWy">
                        <ref role="3cqZAo" node="6uf$qpAylf_" resolve="fs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="6uf$qpAytNg" role="2OqNvi">
                  <node concept="1bVj0M" id="6uf$qpAytNh" role="23t8la">
                    <node concept="3clFbS" id="6uf$qpAytNi" role="1bW5cS">
                      <node concept="3clFbF" id="6uf$qpAytNj" role="3cqZAp">
                        <node concept="2OqwBi" id="6uf$qpAytNk" role="3clFbG">
                          <node concept="liA8E" id="6uf$qpAytNl" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~SModelFileTracker.findModel(jetbrains.mps.vfs.IFile)" resolve="findModel" />
                            <node concept="2OqwBi" id="6uf$qpAyvel" role="37wK5m">
                              <node concept="37vLTw" id="6uf$qpAyuLK" role="2Oq$k0">
                                <ref role="3cqZAo" node="6uf$qpAylf_" resolve="fs" />
                              </node>
                              <node concept="liA8E" id="6uf$qpAyC7M" role="2OqNvi">
                                <ref role="37wK5l" to="4hrd:~IdeaFileSystem.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                                <node concept="37vLTw" id="6uf$qpAyCd9" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XyK" resolve="file" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="6uf$qpAytNs" role="2Oq$k0">
                            <ref role="3cqZAo" node="6y_kxB1TET2" resolve="ft" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XyK" role="1bW2Oz">
                      <property role="TrG5h" value="file" />
                      <node concept="2jxLKc" id="5W7E4fV0XyL" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1KnU$U" id="6uf$qpAyYQH" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="6uf$qpAzlZI" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="B5MI4_rgE1" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="B5MI4_rhUH" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="6y_kxB1TET$" role="3clF46">
        <property role="TrG5h" value="files" />
        <node concept="A3Dl8" id="6y_kxB1TET_" role="1tU5fm">
          <node concept="3uibUv" id="6uf$qpAyrQa" role="A3Ik2">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="6y_kxB1TETB" role="3clF45">
        <node concept="3uibUv" id="6y_kxB1TETC" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6y_kxB1TFbn" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6uf$qpAzs7n" role="jymVt" />
    <node concept="312cEu" id="3etVqSRKzDi" role="jymVt">
      <property role="TrG5h" value="ModelCheckerCheckinHandlerFactory" />
      <node concept="3clFbW" id="3etVqSRKzDj" role="jymVt">
        <node concept="3clFbS" id="3etVqSRKzDk" role="3clF47" />
        <node concept="3Tm1VV" id="3etVqSRKzDl" role="1B3o_S" />
        <node concept="3cqZAl" id="3etVqSRKzDm" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzDn" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRKzDo" role="1zkMxy">
        <ref role="3uigEE" to="18nx:~CheckinHandlerFactory" resolve="CheckinHandlerFactory" />
      </node>
      <node concept="3clFb_" id="3etVqSRKzDp" role="jymVt">
        <property role="TrG5h" value="createHandler" />
        <node concept="3clFbS" id="3etVqSRKzDq" role="3clF47">
          <node concept="3cpWs6" id="3etVqSRKzDr" role="3cqZAp">
            <node concept="2ShNRf" id="3etVqSRKzDs" role="3cqZAk">
              <node concept="1pGfFk" id="3etVqSRKzDt" role="2ShVmc">
                <ref role="37wK5l" node="3etVqSRKzAT" resolve="ModelCheckerCheckinHandler" />
                <node concept="2OqwBi" id="3etVqSRKzDu" role="37wK5m">
                  <node concept="liA8E" id="3etVqSRKzDv" role="2OqNvi">
                    <ref role="37wK5l" to="jlcu:~CheckinProjectPanel.getProject()" resolve="getProject" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmKH7" role="2Oq$k0">
                    <ref role="3cqZAo" node="3etVqSRKzDz" resolve="panel" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxglp2_" role="37wK5m">
                  <ref role="3cqZAo" node="3etVqSRKzDz" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3etVqSRKzDy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="37vLTG" id="3etVqSRKzDz" role="3clF46">
          <property role="TrG5h" value="panel" />
          <node concept="3uibUv" id="3etVqSRKzD$" role="1tU5fm">
            <ref role="3uigEE" to="jlcu:~CheckinProjectPanel" resolve="CheckinProjectPanel" />
          </node>
        </node>
        <node concept="3uibUv" id="3etVqSRKzD_" role="3clF45">
          <ref role="3uigEE" to="18nx:~CheckinHandler" resolve="CheckinHandler" />
        </node>
        <node concept="3Tm1VV" id="3etVqSRKzDA" role="1B3o_S" />
        <node concept="37vLTG" id="3etVqSRKzDB" role="3clF46">
          <property role="TrG5h" value="commitContext" />
          <node concept="3uibUv" id="3etVqSRKzDC" role="1tU5fm">
            <ref role="3uigEE" to="1037:~CommitContext" resolve="CommitContext" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3etVqSRKzDD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRKzDE" role="1B3o_S" />
    <node concept="3uibUv" id="2fqk0uNA8HI" role="1zkMxy">
      <ref role="3uigEE" to="18nx:~CheckinHandler" resolve="CheckinHandler" />
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRKzPq">
    <property role="TrG5h" value="ModelCheckerPreferencesPage" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="3uibUv" id="3KDENWMYYFr" role="EKbjA">
      <ref role="3uigEE" to="hq8m:~SearchableConfigurable" resolve="SearchableConfigurable" />
    </node>
    <node concept="312cEg" id="3etVqSRKzPr" role="jymVt">
      <property role="TrG5h" value="myPage" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3etVqSRKzPs" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRKzPt" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="312cEg" id="63oasX2fiCm" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCheckingLevelSlider" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="63oasX2fib7" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JSlider" resolve="JSlider" />
      </node>
      <node concept="2ShNRf" id="63oasX2fjah" role="33vP2m">
        <node concept="1pGfFk" id="63oasX2fjag" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JSlider.&lt;init&gt;(int,int,int,int)" resolve="JSlider" />
          <node concept="10M0yZ" id="63oasX2fjeE" role="37wK5m">
            <ref role="1PxDUh" to="dxuu:~JSlider" resolve="JSlider" />
            <ref role="3cqZAo" to="dxuu:~SwingConstants.VERTICAL" resolve="VERTICAL" />
          </node>
          <node concept="3cmrfG" id="63oasX2fjwp" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cpWsd" id="63oasX2fqKg" role="37wK5m">
            <node concept="3cmrfG" id="63oasX2fqKy" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="63oasX2foA1" role="3uHU7B">
              <node concept="uiWXb" id="63oasX2fokE" role="2Oq$k0">
                <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
              </node>
              <node concept="1Rwk04" id="63oasX2fpD$" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cmrfG" id="6CJXrMJ1mZ8" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="63oasX2fj5Y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3etVqSRKzPQ" role="jymVt">
      <property role="TrG5h" value="myCheckStubsCheckBox" />
      <property role="3TUv4t" value="true" />
      <node concept="2ShNRf" id="3etVqSRKzPR" role="33vP2m">
        <node concept="1pGfFk" id="3etVqSRKzPS" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
          <node concept="Xl_RD" id="3etVqSRKzPT" role="37wK5m">
            <property role="Xl_RC" value="Check stub models" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3etVqSRKzPU" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRKzPV" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="63oasX2fgy1" role="jymVt">
      <property role="TrG5h" value="myCheckSpecificCheckBox" />
      <property role="3TUv4t" value="true" />
      <node concept="2ShNRf" id="63oasX2fgy2" role="33vP2m">
        <node concept="1pGfFk" id="63oasX2fgy3" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
          <node concept="Xl_RD" id="63oasX2fgy4" role="37wK5m">
            <property role="Xl_RC" value="Perform additional checks" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="63oasX2fgy5" role="1B3o_S" />
      <node concept="3uibUv" id="63oasX2fgy6" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="2H4SLalXqDJ" role="jymVt">
      <property role="TrG5h" value="myRunInParallelCheckBox" />
      <property role="3TUv4t" value="true" />
      <node concept="2ShNRf" id="2H4SLalXqDK" role="33vP2m">
        <node concept="1pGfFk" id="2H4SLalXqDL" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
          <node concept="Xl_RD" id="2H4SLalXqDM" role="37wK5m">
            <property role="Xl_RC" value="Run in parallel" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2H4SLalXqDN" role="1B3o_S" />
      <node concept="3uibUv" id="2H4SLalXqDO" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="3etVqSRKzPW" role="jymVt">
      <property role="TrG5h" value="myModelCheckerSettings" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3etVqSRKzPX" role="1tU5fm">
        <ref role="3uigEE" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
      </node>
      <node concept="3Tm6S6" id="3etVqSRKzPY" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5bed3YcMt0c" role="jymVt">
      <property role="TrG5h" value="myDescriptionText" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5bed3YcMt0a" role="1B3o_S" />
      <node concept="3uibUv" id="3iLJjxdy3v1" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextArea" resolve="JTextArea" />
      </node>
      <node concept="2ShNRf" id="5bed3YcMt0p" role="33vP2m">
        <node concept="1pGfFk" id="5bed3YcMt0q" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JTextArea.&lt;init&gt;()" resolve="JTextArea" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="63oasX2fuK_" role="jymVt" />
    <node concept="3clFbW" id="3etVqSRKzPZ" role="jymVt">
      <node concept="3clFbS" id="3etVqSRKzQ2" role="3clF47">
        <node concept="3clFbF" id="3etVqSRKzQ3" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzQ4" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeujQE" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
            </node>
            <node concept="2YIFZM" id="6ao8oElpFsw" role="37vLTx">
              <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
              <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6x0p4ufFrZY" role="3cqZAp" />
        <node concept="3cpWs8" id="63oasX2fnbo" role="3cqZAp">
          <node concept="3cpWsn" id="63oasX2fnbp" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="63oasX2fnbq" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Hashtable" resolve="Hashtable" />
            </node>
            <node concept="2ShNRf" id="63oasX2fnkE" role="33vP2m">
              <node concept="1pGfFk" id="63oasX2fnkD" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~Hashtable.&lt;init&gt;()" resolve="Hashtable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="63oasX2fnuh" role="3cqZAp">
          <node concept="3clFbS" id="63oasX2fnuj" role="2LFqv$">
            <node concept="3clFbF" id="63oasX2frbx" role="3cqZAp">
              <node concept="2OqwBi" id="63oasX2frd4" role="3clFbG">
                <node concept="37vLTw" id="63oasX2frbv" role="2Oq$k0">
                  <ref role="3cqZAo" node="63oasX2fnbp" resolve="t" />
                </node>
                <node concept="liA8E" id="63oasX2froD" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Hashtable.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="63oasX2ftO0" role="37wK5m">
                    <node concept="37vLTw" id="63oasX2ftGR" role="2Oq$k0">
                      <ref role="3cqZAo" node="63oasX2fnuk" resolve="level" />
                    </node>
                    <node concept="liA8E" id="63oasX2fu9P" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="5QpgjQNbbF8" role="37wK5m">
                    <node concept="1pGfFk" id="5QpgjQNbur8" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                      <node concept="2OqwBi" id="63oasX2fumV" role="37wK5m">
                        <node concept="37vLTw" id="63oasX2fuex" role="2Oq$k0">
                          <ref role="3cqZAo" node="63oasX2fnuk" resolve="level" />
                        </node>
                        <node concept="liA8E" id="63oasX2fuI0" role="2OqNvi">
                          <ref role="37wK5l" node="3J4tNviCbXy" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="63oasX2fnuk" role="1Duv9x">
            <property role="TrG5h" value="level" />
            <node concept="3uibUv" id="63oasX2fnHa" role="1tU5fm">
              <ref role="3uigEE" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
            </node>
          </node>
          <node concept="uiWXb" id="63oasX2fr44" role="1DdaDG">
            <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
          </node>
        </node>
        <node concept="3clFbF" id="60ZMMrPTQFn" role="3cqZAp">
          <node concept="2OqwBi" id="60ZMMrPTSWJ" role="3clFbG">
            <node concept="37vLTw" id="60ZMMrPTQFl" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="60ZMMrPTVs2" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setInverted(boolean)" resolve="setInverted" />
              <node concept="3clFbT" id="60ZMMrPTVVH" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63oasX2fkTC" role="3cqZAp">
          <node concept="2OqwBi" id="63oasX2fll7" role="3clFbG">
            <node concept="37vLTw" id="63oasX2fkTA" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="63oasX2fmRs" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setLabelTable(java.util.Dictionary)" resolve="setLabelTable" />
              <node concept="37vLTw" id="63oasX2frpJ" role="37wK5m">
                <ref role="3cqZAo" node="63oasX2fnbp" resolve="t" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63oasX2fr_0" role="3cqZAp">
          <node concept="2OqwBi" id="63oasX2frWT" role="3clFbG">
            <node concept="37vLTw" id="63oasX2fr$Y" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="63oasX2ftwc" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setPaintLabels(boolean)" resolve="setPaintLabels" />
              <node concept="3clFbT" id="63oasX2ftxj" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1j$VxgilYv0" role="3cqZAp">
          <node concept="2OqwBi" id="1j$VxgilYv1" role="3clFbG">
            <node concept="37vLTw" id="1j$VxgilYv2" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="1j$VxgilYv3" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setPaintTicks(boolean)" resolve="setPaintTicks" />
              <node concept="3clFbT" id="1j$VxgilYv4" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6V6EOP_phvC" role="3cqZAp">
          <node concept="2OqwBi" id="6V6EOP_pinm" role="3clFbG">
            <node concept="37vLTw" id="6V6EOP_phvA" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="6V6EOP_pk1d" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setMajorTickSpacing(int)" resolve="setMajorTickSpacing" />
              <node concept="3cmrfG" id="6V6EOP_pk4c" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ayFbsDhRY$" role="3cqZAp">
          <node concept="2OqwBi" id="1ayFbsDhSu9" role="3clFbG">
            <node concept="37vLTw" id="1ayFbsDhRYy" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="1ayFbsDhU4N" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setSnapToTicks(boolean)" resolve="setSnapToTicks" />
              <node concept="3clFbT" id="1ayFbsDhU9I" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2uWRnxk9QxD" role="3cqZAp">
          <node concept="2OqwBi" id="2uWRnxk9RoO" role="3clFbG">
            <node concept="37vLTw" id="2uWRnxk9QxB" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="2uWRnxk9SF2" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2ShNRf" id="2uWRnxk9TUw" role="37wK5m">
                <node concept="1pGfFk" id="2uWRnxkaoAF" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="4l9XZw5BGmH" role="37wK5m">
                    <property role="3cmrfH" value="140" />
                  </node>
                  <node concept="3cmrfG" id="4l9XZw5BH2e" role="37wK5m">
                    <property role="3cmrfH" value="180" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5bed3YcMz2e" role="3cqZAp">
          <node concept="2OqwBi" id="5bed3YcMzDs" role="3clFbG">
            <node concept="37vLTw" id="5bed3YcMz2c" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="5bed3YcMBr9" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.addChangeListener(javax.swing.event.ChangeListener)" resolve="addChangeListener" />
              <node concept="2ShNRf" id="5bed3YcMBu8" role="37wK5m">
                <node concept="YeOm9" id="5bed3YcMOfa" role="2ShVmc">
                  <node concept="1Y3b0j" id="5bed3YcMOfd" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="gsia:~ChangeListener" resolve="ChangeListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="5bed3YcMOfe" role="1B3o_S" />
                    <node concept="3clFb_" id="5bed3YcMOff" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="stateChanged" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="5bed3YcMOfg" role="1B3o_S" />
                      <node concept="3cqZAl" id="5bed3YcMOfi" role="3clF45" />
                      <node concept="37vLTG" id="5bed3YcMOfj" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="5bed3YcMOfk" role="1tU5fm">
                          <ref role="3uigEE" to="gsia:~ChangeEvent" resolve="ChangeEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5bed3YcMOfl" role="3clF47">
                        <node concept="3clFbF" id="5bed3YcMP1L" role="3cqZAp">
                          <node concept="2OqwBi" id="5bed3YcMPi$" role="3clFbG">
                            <node concept="37vLTw" id="5bed3YcMP1J" role="2Oq$k0">
                              <ref role="3cqZAo" node="5bed3YcMt0c" resolve="myDescriptionText" />
                            </node>
                            <node concept="liA8E" id="5bed3YcMQBa" role="2OqNvi">
                              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                              <node concept="2OqwBi" id="5bed3YcMOyI" role="37wK5m">
                                <node concept="AH0OO" id="5bed3YcMOnf" role="2Oq$k0">
                                  <node concept="2OqwBi" id="5bed3YcMOng" role="AHEQo">
                                    <node concept="37vLTw" id="5bed3YcMOnh" role="2Oq$k0">
                                      <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
                                    </node>
                                    <node concept="liA8E" id="5bed3YcMOni" role="2OqNvi">
                                      <ref role="37wK5l" to="dxuu:~JSlider.getValue()" resolve="getValue" />
                                    </node>
                                  </node>
                                  <node concept="uiWXb" id="5bed3YcMOnj" role="AHHXb">
                                    <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5bed3YcMOXp" role="2OqNvi">
                                  <ref role="37wK5l" node="5bed3YcLweG" resolve="getLongDescription" />
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
        <node concept="3clFbH" id="2uWRnxk9DTW" role="3cqZAp" />
        <node concept="3clFbF" id="3iLJjxdy6fl" role="3cqZAp">
          <node concept="2OqwBi" id="3iLJjxdy79u" role="3clFbG">
            <node concept="37vLTw" id="3iLJjxdy6fj" role="2Oq$k0">
              <ref role="3cqZAo" node="5bed3YcMt0c" resolve="myDescriptionText" />
            </node>
            <node concept="liA8E" id="3iLJjxdy8Ni" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setEditable(boolean)" resolve="setEditable" />
              <node concept="3clFbT" id="3iLJjxdy8Os" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="36wkFlYHoKL" role="3cqZAp">
          <node concept="2OqwBi" id="36wkFlYHpEV" role="3clFbG">
            <node concept="37vLTw" id="36wkFlYHoKJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5bed3YcMt0c" resolve="myDescriptionText" />
            </node>
            <node concept="liA8E" id="36wkFlYHriz" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="36wkFlYHroe" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntkBEoXPgg" role="3cqZAp">
          <node concept="2OqwBi" id="6ntkBEoXQ9E" role="3clFbG">
            <node concept="37vLTw" id="6ntkBEoXPge" role="2Oq$k0">
              <ref role="3cqZAo" node="5bed3YcMt0c" resolve="myDescriptionText" />
            </node>
            <node concept="liA8E" id="6ntkBEoXRN3" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="6ntkBEoXRQv" role="37wK5m">
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder(int,int,int,int)" resolve="createEmptyBorder" />
                <node concept="3cmrfG" id="6ntkBEoXRT3" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="6ntkBEoXShK" role="37wK5m">
                  <property role="3cmrfH" value="20" />
                </node>
                <node concept="3cmrfG" id="6ntkBEoXSj5" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="6ntkBEoXSnc" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ntkBEoXOSG" role="3cqZAp" />
        <node concept="3cpWs8" id="3iLJjxdyDEf" role="3cqZAp">
          <node concept="3cpWsn" id="3iLJjxdyDEg" role="3cpWs9">
            <property role="TrG5h" value="levelSelectionPanel" />
            <node concept="3uibUv" id="3iLJjxdyDE8" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="3iLJjxdyDEh" role="33vP2m">
              <node concept="1pGfFk" id="3iLJjxdyDEi" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="3iLJjxdyEeF" role="37wK5m">
                  <node concept="1pGfFk" id="3iLJjxdyFmy" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3iLJjxdyNT8" role="3cqZAp">
          <node concept="2OqwBi" id="3iLJjxdyOqQ" role="3clFbG">
            <node concept="37vLTw" id="3iLJjxdyNT6" role="2Oq$k0">
              <ref role="3cqZAo" node="3iLJjxdyDEg" resolve="levelSelectionPanel" />
            </node>
            <node concept="liA8E" id="3iLJjxdyPTw" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="3iLJjxdyPV1" role="37wK5m">
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <ref role="37wK5l" to="dxuu:~BorderFactory.createTitledBorder(javax.swing.border.Border,java.lang.String)" resolve="createTitledBorder" />
                <node concept="2YIFZM" id="3iLJjxdyqvM" role="37wK5m">
                  <ref role="37wK5l" to="dxuu:~BorderFactory.createEtchedBorder(int)" resolve="createEtchedBorder" />
                  <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                  <node concept="10M0yZ" id="3iLJjxdyqw6" role="37wK5m">
                    <ref role="1PxDUh" to="9z78:~EtchedBorder" resolve="EtchedBorder" />
                    <ref role="3cqZAo" to="9z78:~EtchedBorder.LOWERED" resolve="LOWERED" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3iLJjxdyTlr" role="37wK5m">
                  <property role="Xl_RC" value="Model checking level" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3iLJjxdyFJR" role="3cqZAp">
          <node concept="2OqwBi" id="3iLJjxdyGgx" role="3clFbG">
            <node concept="37vLTw" id="3iLJjxdyFJP" role="2Oq$k0">
              <ref role="3cqZAo" node="3iLJjxdyDEg" resolve="levelSelectionPanel" />
            </node>
            <node concept="liA8E" id="3iLJjxdyHHk" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3iLJjxdyHI7" role="37wK5m">
                <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
              </node>
              <node concept="10M0yZ" id="3iLJjxdyHPK" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3iLJjxdyI5t" role="3cqZAp">
          <node concept="2OqwBi" id="3iLJjxdyI5u" role="3clFbG">
            <node concept="37vLTw" id="3iLJjxdyI5v" role="2Oq$k0">
              <ref role="3cqZAo" node="3iLJjxdyDEg" resolve="levelSelectionPanel" />
            </node>
            <node concept="liA8E" id="3iLJjxdyI5w" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3iLJjxdyKd9" role="37wK5m">
                <ref role="3cqZAo" node="5bed3YcMt0c" resolve="myDescriptionText" />
              </node>
              <node concept="10M0yZ" id="3iLJjxdyI5y" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3iLJjxdyL$_" role="3cqZAp" />
        <node concept="3clFbF" id="3etVqSRKzRe" role="3cqZAp">
          <node concept="37vLTI" id="3etVqSRKzRf" role="3clFbG">
            <node concept="2ShNRf" id="3etVqSRKzRg" role="37vLTx">
              <node concept="1pGfFk" id="3etVqSRKzRh" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="1j$Vxgimxaf" role="37wK5m">
                  <node concept="1pGfFk" id="2_P6NuFlvWd" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuF1_" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzRl" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzRm" role="3clFbG">
            <node concept="liA8E" id="3etVqSRKzRn" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2ShNRf" id="3etVqSRKzRo" role="37wK5m">
                <node concept="1pGfFk" id="3etVqSRKzRp" role="2ShVmc">
                  <ref role="37wK5l" to="9z78:~EmptyBorder.&lt;init&gt;(int,int,int,int)" resolve="EmptyBorder" />
                  <node concept="3cmrfG" id="3etVqSRKzRq" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                  </node>
                  <node concept="3cmrfG" id="3etVqSRKzRr" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                  </node>
                  <node concept="3cmrfG" id="3etVqSRKzRs" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                  </node>
                  <node concept="3cmrfG" id="3etVqSRKzRt" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuq8m" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2_P6NuFlISb" role="3cqZAp">
          <node concept="3cpWsn" id="2_P6NuFlISc" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="2_P6NuFlIS4" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
            <node concept="2ShNRf" id="2_P6NuFlISd" role="33vP2m">
              <node concept="1pGfFk" id="2_P6NuFlISe" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2_P6NuFlQIw" role="3cqZAp" />
        <node concept="3clFbF" id="2_P6NuFlJrM" role="3cqZAp">
          <node concept="37vLTI" id="2_P6NuFlKz5" role="3clFbG">
            <node concept="2OqwBi" id="2_P6NuFlJCZ" role="37vLTJ">
              <node concept="37vLTw" id="2_P6NuFlJrK" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2_P6NuFlK1q" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
            <node concept="3cmrfG" id="2_P6NuFlKTx" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_P6NuFlLaH" role="3cqZAp">
          <node concept="37vLTI" id="2_P6NuFlMi$" role="3clFbG">
            <node concept="2OqwBi" id="2_P6NuFlLnU" role="37vLTJ">
              <node concept="37vLTw" id="2_P6NuFlLaF" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2_P6NuFlLKT" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
            <node concept="3cmrfG" id="2_P6NuFlMCK" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_P6NuFlMU2" role="3cqZAp">
          <node concept="37vLTI" id="2_P6NuFlOlT" role="3clFbG">
            <node concept="2OqwBi" id="2_P6NuFlN7f" role="37vLTJ">
              <node concept="37vLTw" id="2_P6NuFlMU0" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2_P6NuFlNv$" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.anchor" resolve="anchor" />
              </node>
            </node>
            <node concept="10M0yZ" id="2_P6NuFlISl" role="37vLTx">
              <ref role="3cqZAo" to="z60i:~GridBagConstraints.NORTHWEST" resolve="NORTHWEST" />
              <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_P6NuFlOXS" role="3cqZAp">
          <node concept="37vLTI" id="2_P6NuFlQiN" role="3clFbG">
            <node concept="2OqwBi" id="2_P6NuFlPb5" role="37vLTJ">
              <node concept="37vLTw" id="2_P6NuFlOXQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2_P6NuFlPzm" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
              </node>
            </node>
            <node concept="10M0yZ" id="2_P6NuFlISm" role="37vLTx">
              <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
              <ref role="3cqZAo" to="z60i:~GridBagConstraints.HORIZONTAL" resolve="HORIZONTAL" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzR8" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzR9" role="3clFbG">
            <node concept="liA8E" id="3etVqSRKzRa" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3iLJjxdyDEj" role="37wK5m">
                <ref role="3cqZAo" node="3iLJjxdyDEg" resolve="levelSelectionPanel" />
              </node>
              <node concept="37vLTw" id="qo44LNzvNF" role="37wK5m">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
            </node>
            <node concept="37vLTw" id="1fU29vAmr1R" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="QEZsMvaymv" role="3cqZAp" />
        <node concept="3clFbF" id="6ntkBEoXDv9" role="3cqZAp">
          <node concept="37vLTI" id="6ntkBEoXDva" role="3clFbG">
            <node concept="2OqwBi" id="6ntkBEoXDvb" role="37vLTJ">
              <node concept="37vLTw" id="6ntkBEoXDvc" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="6ntkBEoXDvd" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
              </node>
            </node>
            <node concept="10M0yZ" id="6ntkBEoXDve" role="37vLTx">
              <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
              <ref role="3cqZAo" to="z60i:~GridBagConstraints.NONE" resolve="NONE" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ntkBEoXD8m" role="3cqZAp" />
        <node concept="3clFbF" id="3iLJjxdyS0_" role="3cqZAp">
          <node concept="3uNrnE" id="3iLJjxdyS0A" role="3clFbG">
            <node concept="2OqwBi" id="3iLJjxdyS0B" role="2$L3a6">
              <node concept="37vLTw" id="3iLJjxdyS0C" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3iLJjxdyS0D" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63oasX2fkoN" role="3cqZAp">
          <node concept="2OqwBi" id="63oasX2fkoO" role="3clFbG">
            <node concept="liA8E" id="63oasX2fkoP" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="63oasX2fkoQ" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzPQ" resolve="myCheckStubsCheckBox" />
              </node>
              <node concept="37vLTw" id="qo44LNzvYa" role="37wK5m">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
            </node>
            <node concept="37vLTw" id="1fU29vAmr7O" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2_P6NuFlUJ9" role="3cqZAp" />
        <node concept="3clFbF" id="3iLJjxdySqX" role="3cqZAp">
          <node concept="3uNrnE" id="3iLJjxdySqY" role="3clFbG">
            <node concept="2OqwBi" id="3iLJjxdySqZ" role="2$L3a6">
              <node concept="37vLTw" id="3iLJjxdySr0" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3iLJjxdySr1" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzR3" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzR4" role="3clFbG">
            <node concept="liA8E" id="3etVqSRKzR5" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="63oasX2fkaB" role="37wK5m">
                <ref role="3cqZAo" node="63oasX2fgy1" resolve="myCheckSpecificCheckBox" />
              </node>
              <node concept="37vLTw" id="qo44LNzw5L" role="37wK5m">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
            </node>
            <node concept="37vLTw" id="1fU29vAmre9" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRKzRd" role="3cqZAp" />
        <node concept="3clFbF" id="2H4SLalXntq" role="3cqZAp">
          <node concept="3uNrnE" id="2H4SLalXntr" role="3clFbG">
            <node concept="2OqwBi" id="2H4SLalXnts" role="2$L3a6">
              <node concept="37vLTw" id="2H4SLalXntt" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2H4SLalXntu" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2H4SLalXntk" role="3cqZAp">
          <node concept="2OqwBi" id="2H4SLalXntl" role="3clFbG">
            <node concept="liA8E" id="2H4SLalXntm" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2H4SLalXntn" role="37wK5m">
                <ref role="3cqZAo" node="2H4SLalXqDJ" resolve="myRunInParallelCheckBox" />
              </node>
              <node concept="37vLTw" id="2H4SLalXnto" role="37wK5m">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
            </node>
            <node concept="37vLTw" id="2H4SLalXntp" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2H4SLalXntj" role="3cqZAp" />
        <node concept="3clFbF" id="3iLJjxdySOz" role="3cqZAp">
          <node concept="3uNrnE" id="3iLJjxdySO$" role="3clFbG">
            <node concept="2OqwBi" id="3iLJjxdySO_" role="2$L3a6">
              <node concept="37vLTw" id="3iLJjxdySOA" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3iLJjxdySOB" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2dFr3KsCYBd" role="3cqZAp">
          <node concept="37vLTI" id="2dFr3KsCZQL" role="3clFbG">
            <node concept="3b6qkQ" id="2dFr3KsD04M" role="37vLTx">
              <property role="$nhwW" value="1.0" />
            </node>
            <node concept="2OqwBi" id="2dFr3KsCZ7S" role="37vLTJ">
              <node concept="37vLTw" id="2dFr3KsCYBb" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2dFr3KsCZwi" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2dFr3KsD0lr" role="3cqZAp">
          <node concept="37vLTI" id="2dFr3KsD1dM" role="3clFbG">
            <node concept="3b6qkQ" id="2dFr3KsD1rN" role="37vLTx">
              <property role="$nhwW" value="1.0" />
            </node>
            <node concept="2OqwBi" id="2dFr3KsD0ye" role="37vLTJ">
              <node concept="37vLTw" id="2dFr3KsD0lp" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2dFr3KsD0UI" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.weighty" resolve="weighty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2uxXfoRyH2e" role="3cqZAp">
          <node concept="37vLTI" id="2uxXfoRyH2f" role="3clFbG">
            <node concept="2OqwBi" id="2uxXfoRyH2g" role="37vLTJ">
              <node concept="37vLTw" id="2uxXfoRyH2h" role="2Oq$k0">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
              <node concept="2OwXpG" id="2uxXfoRyH2i" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
              </node>
            </node>
            <node concept="10M0yZ" id="2uxXfoRyH2j" role="37vLTx">
              <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
              <ref role="3cqZAo" to="z60i:~GridBagConstraints.BOTH" resolve="BOTH" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2uxXfoRyh8P" role="3cqZAp">
          <node concept="2OqwBi" id="2uxXfoRyh8Q" role="3clFbG">
            <node concept="liA8E" id="2uxXfoRyh8R" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2uxXfoRypOg" role="37wK5m">
                <node concept="1pGfFk" id="2uxXfoRyGDn" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                </node>
              </node>
              <node concept="37vLTw" id="2uxXfoRyh8T" role="37wK5m">
                <ref role="3cqZAo" node="2_P6NuFlISc" resolve="c" />
              </node>
            </node>
            <node concept="37vLTw" id="1fU29vAmrku" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzR_" role="1B3o_S" />
      <node concept="3cqZAl" id="3etVqSRKzRA" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="63oasX2fvip" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRKzRB" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3etVqSRKzRC" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRKzRD" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzRE" role="3cqZAp">
          <node concept="Xl_RD" id="3etVqSRKzRF" role="3cqZAk">
            <property role="Xl_RC" value="Model Checker" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3etVqSRKzRG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="63oasX2fvOk" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRKzRH" role="jymVt">
      <property role="TrG5h" value="getIcon" />
      <node concept="3uibUv" id="3etVqSRKzRI" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzRJ" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRKzRK" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzRL" role="3cqZAp">
          <node concept="10Nm6u" id="3etVqSRKzRM" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="63oasX2fwmg" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRKzRT" role="jymVt">
      <property role="TrG5h" value="validate" />
      <node concept="10P_77" id="3etVqSRKzRU" role="3clF45" />
      <node concept="3clFbS" id="3etVqSRKzRV" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRKzRW" role="3cqZAp">
          <node concept="3clFbT" id="3etVqSRKzRX" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzRY" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="63oasX2fwTc" role="jymVt" />
    <node concept="3clFb_" id="3KDENWMZ09n" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ09o" role="1B3o_S" />
      <node concept="3cqZAl" id="3KDENWMZ09q" role="3clF45" />
      <node concept="3uibUv" id="3KDENWMZ09r" role="Sfmx6">
        <ref role="3uigEE" to="hq8m:~ConfigurationException" resolve="ConfigurationException" />
      </node>
      <node concept="3clFbS" id="3KDENWMZ09u" role="3clF47">
        <node concept="3clFbF" id="3etVqSRKzS1" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzS2" role="3clFbG">
            <node concept="liA8E" id="3etVqSRKzS3" role="2OqNvi">
              <ref role="37wK5l" node="3etVqSRKzup" resolve="setCheckingLevel" />
              <node concept="AH0OO" id="63oasX2fz52" role="37wK5m">
                <node concept="2OqwBi" id="63oasX2fzsk" role="AHEQo">
                  <node concept="37vLTw" id="63oasX2fz78" role="2Oq$k0">
                    <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
                  </node>
                  <node concept="liA8E" id="63oasX2f$$x" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JSlider.getValue()" resolve="getValue" />
                  </node>
                </node>
                <node concept="uiWXb" id="63oasX2fyX3" role="AHHXb">
                  <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuKmn" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzSt" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzSu" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuGzi" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
            </node>
            <node concept="liA8E" id="3etVqSRKzSw" role="2OqNvi">
              <ref role="37wK5l" node="1VtEqfXHNfE" resolve="setCheckStubs" />
              <node concept="2OqwBi" id="3etVqSRKzSx" role="37wK5m">
                <node concept="liA8E" id="3etVqSRKzSy" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuskx" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzPQ" resolve="myCheckStubsCheckBox" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63oasX2fxV0" role="3cqZAp">
          <node concept="2OqwBi" id="63oasX2fxV1" role="3clFbG">
            <node concept="37vLTw" id="63oasX2fxV2" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
            </node>
            <node concept="liA8E" id="63oasX2fxV3" role="2OqNvi">
              <ref role="37wK5l" node="1VtEqfXH_WE" resolve="setIncludeAdditionalChecks" />
              <node concept="2OqwBi" id="63oasX2fxV4" role="37wK5m">
                <node concept="liA8E" id="63oasX2fxV5" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
                <node concept="37vLTw" id="63oasX2fy6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="63oasX2fgy1" resolve="myCheckSpecificCheckBox" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2H4SLalXDps" role="3cqZAp">
          <node concept="2OqwBi" id="2H4SLalXPV4" role="3clFbG">
            <node concept="37vLTw" id="2H4SLalXDpq" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
            </node>
            <node concept="liA8E" id="2H4SLalXUph" role="2OqNvi">
              <ref role="37wK5l" node="2H4SLalWVdm" resolve="setRunInParallel" />
              <node concept="2OqwBi" id="2H4SLalY3kK" role="37wK5m">
                <node concept="37vLTw" id="2H4SLalXYka" role="2Oq$k0">
                  <ref role="3cqZAo" node="2H4SLalXqDJ" resolve="myRunInParallelCheckBox" />
                </node>
                <node concept="liA8E" id="2H4SLalY8GF" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KDENWMZ09v" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reset" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ09w" role="1B3o_S" />
      <node concept="3cqZAl" id="3KDENWMZ09y" role="3clF45" />
      <node concept="3clFbS" id="3KDENWMZ09_" role="3clF47">
        <node concept="3clFbF" id="63oasX2f_qB" role="3cqZAp">
          <node concept="2OqwBi" id="63oasX2f_FT" role="3clFbG">
            <node concept="37vLTw" id="63oasX2f_q_" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
            </node>
            <node concept="liA8E" id="63oasX2fAuA" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JSlider.setValue(int)" resolve="setValue" />
              <node concept="2YIFZM" id="63oasX2fACX" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <ref role="37wK5l" to="33ny:~Arrays.binarySearch(java.lang.Object[],java.lang.Object)" resolve="binarySearch" />
                <node concept="uiWXb" id="63oasX2fAxk" role="37wK5m">
                  <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
                </node>
                <node concept="2OqwBi" id="63oasX2fBzy" role="37wK5m">
                  <node concept="37vLTw" id="63oasX2fB7f" role="2Oq$k0">
                    <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
                  </node>
                  <node concept="liA8E" id="63oasX2fC8o" role="2OqNvi">
                    <ref role="37wK5l" node="3etVqSRKzuh" resolve="getCheckingLevel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3etVqSRKzQz" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRKzQ$" role="3clFbG">
            <node concept="liA8E" id="3etVqSRKzQ_" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="2OqwBi" id="3etVqSRKzQA" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuNXE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
                </node>
                <node concept="liA8E" id="3etVqSRKzQC" role="2OqNvi">
                  <ref role="37wK5l" node="1VtEqfXHNfQ" resolve="isCheckStubs" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeudgW" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRKzPQ" resolve="myCheckStubsCheckBox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63oasX2f_0h" role="3cqZAp">
          <node concept="2OqwBi" id="63oasX2f_0i" role="3clFbG">
            <node concept="liA8E" id="63oasX2f_0j" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="2OqwBi" id="63oasX2f_0k" role="37wK5m">
                <node concept="37vLTw" id="63oasX2f_0l" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
                </node>
                <node concept="liA8E" id="63oasX2f_0m" role="2OqNvi">
                  <ref role="37wK5l" node="1VtEqfXH_WQ" resolve="isIncludeAdditionalChecks" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="63oasX2f_96" role="2Oq$k0">
              <ref role="3cqZAo" node="63oasX2fgy1" resolve="myCheckSpecificCheckBox" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2H4SLalYgHg" role="3cqZAp">
          <node concept="2OqwBi" id="2H4SLalYll0" role="3clFbG">
            <node concept="37vLTw" id="2H4SLalYgHe" role="2Oq$k0">
              <ref role="3cqZAo" node="2H4SLalXqDJ" resolve="myRunInParallelCheckBox" />
            </node>
            <node concept="liA8E" id="2H4SLalYrcO" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="2OqwBi" id="2H4SLalYzg2" role="37wK5m">
                <node concept="37vLTw" id="2H4SLalYuFa" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
                </node>
                <node concept="liA8E" id="2H4SLalYAkS" role="2OqNvi">
                  <ref role="37wK5l" node="2H4SLalWHQB" resolve="isRunInParallel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRKzSA" role="jymVt">
      <property role="TrG5h" value="isModified" />
      <node concept="2AHcQZ" id="6x0p4ufFdSq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3etVqSRKzSB" role="3clF47">
        <node concept="3clFbJ" id="63oasX2fDxe" role="3cqZAp">
          <node concept="3clFbS" id="63oasX2fDxg" role="3clFbx">
            <node concept="3cpWs6" id="63oasX2fEkF" role="3cqZAp">
              <node concept="3clFbT" id="63oasX2fECP" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="63oasX2fFIG" role="3clFbw">
            <node concept="2OqwBi" id="63oasX2fDT8" role="3uHU7B">
              <node concept="37vLTw" id="63oasX2fDT9" role="2Oq$k0">
                <ref role="3cqZAo" node="63oasX2fiCm" resolve="myCheckingLevelSlider" />
              </node>
              <node concept="liA8E" id="63oasX2fDTa" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JSlider.getValue()" resolve="getValue" />
              </node>
            </node>
            <node concept="2YIFZM" id="63oasX2fDTb" role="3uHU7w">
              <ref role="37wK5l" to="33ny:~Arrays.binarySearch(java.lang.Object[],java.lang.Object)" resolve="binarySearch" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="uiWXb" id="63oasX2fDTc" role="37wK5m">
                <ref role="uiZuM" node="3J4tNviCaHD" resolve="ModelCheckerSettings.CheckingLevel" />
              </node>
              <node concept="2OqwBi" id="63oasX2fDTd" role="37wK5m">
                <node concept="37vLTw" id="63oasX2fDTe" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
                </node>
                <node concept="liA8E" id="63oasX2fDTf" role="2OqNvi">
                  <ref role="37wK5l" node="3etVqSRKzuh" resolve="getCheckingLevel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3etVqSRKzTk" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRKzTl" role="3clFbx">
            <node concept="3cpWs6" id="3etVqSRKzTm" role="3cqZAp">
              <node concept="3clFbT" id="3etVqSRKzTn" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3etVqSRKzTo" role="3clFbw">
            <node concept="2OqwBi" id="3etVqSRKzTp" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuRZn" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzPQ" resolve="myCheckStubsCheckBox" />
              </node>
              <node concept="liA8E" id="3etVqSRKzTr" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
              </node>
            </node>
            <node concept="2OqwBi" id="3etVqSRKzTs" role="3uHU7B">
              <node concept="liA8E" id="3etVqSRKzTt" role="2OqNvi">
                <ref role="37wK5l" node="1VtEqfXHNfQ" resolve="isCheckStubs" />
              </node>
              <node concept="37vLTw" id="2BHiRxeus8g" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="63oasX2fCdr" role="3cqZAp">
          <node concept="3clFbS" id="63oasX2fCds" role="3clFbx">
            <node concept="3cpWs6" id="63oasX2fCdt" role="3cqZAp">
              <node concept="3clFbT" id="63oasX2fCdu" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="63oasX2fCdv" role="3clFbw">
            <node concept="2OqwBi" id="63oasX2fCdw" role="3uHU7w">
              <node concept="37vLTw" id="63oasX2fCEO" role="2Oq$k0">
                <ref role="3cqZAo" node="63oasX2fgy1" resolve="myCheckSpecificCheckBox" />
              </node>
              <node concept="liA8E" id="63oasX2fCdy" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
              </node>
            </node>
            <node concept="2OqwBi" id="63oasX2fCdz" role="3uHU7B">
              <node concept="liA8E" id="63oasX2fCd$" role="2OqNvi">
                <ref role="37wK5l" node="1VtEqfXH_WQ" resolve="isIncludeAdditionalChecks" />
              </node>
              <node concept="37vLTw" id="63oasX2fCd_" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2H4SLalYJ4M" role="3cqZAp">
          <node concept="3clFbS" id="2H4SLalYJ4O" role="3clFbx">
            <node concept="3cpWs6" id="2H4SLalZofa" role="3cqZAp">
              <node concept="3clFbT" id="2H4SLalZoPf" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2H4SLalYV4R" role="3clFbw">
            <node concept="2OqwBi" id="2H4SLalZfy_" role="3uHU7w">
              <node concept="37vLTw" id="2H4SLalZasi" role="2Oq$k0">
                <ref role="3cqZAo" node="2H4SLalXqDJ" resolve="myRunInParallelCheckBox" />
              </node>
              <node concept="liA8E" id="2H4SLalZiUM" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
              </node>
            </node>
            <node concept="2OqwBi" id="2H4SLalYRc3" role="3uHU7B">
              <node concept="37vLTw" id="2H4SLalYMVb" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRKzPW" resolve="myModelCheckerSettings" />
              </node>
              <node concept="liA8E" id="2H4SLalYT8c" role="2OqNvi">
                <ref role="37wK5l" node="2H4SLalWHQB" resolve="isRunInParallel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRKzTv" role="3cqZAp">
          <node concept="3clFbT" id="3etVqSRKzTw" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRKzTx" role="1B3o_S" />
      <node concept="10P_77" id="3etVqSRKzTy" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3KDENWMZ08B" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ08C" role="1B3o_S" />
      <node concept="17QB3L" id="6x0p4ufF$3i" role="3clF45" />
      <node concept="2AHcQZ" id="3KDENWMZ08F" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="3KDENWMZ08G" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="3clFbS" id="3KDENWMZ08H" role="3clF47">
        <node concept="3SKdUt" id="2qP59qVYcFE" role="3cqZAp">
          <node concept="1PaTwC" id="2qP59qVYcFF" role="1aUNEU">
            <node concept="3oM_SD" id="2qP59qVYeFF" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeFG" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeFH" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeFI" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeFJ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeFK" role="1PaTwD">
              <property role="3oM_SC" value="plugin.xml" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KDENWMZ08J" role="3cqZAp">
          <node concept="Xl_RD" id="3KDENWMZ7Gk" role="3clFbG">
            <property role="Xl_RC" value="preferences.modelCheckerSettings" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KDENWMZ08K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="enableSearch" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ08L" role="1B3o_S" />
      <node concept="3uibUv" id="3KDENWMZ08N" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
      </node>
      <node concept="37vLTG" id="3KDENWMZ08O" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="3KDENWMZ08P" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3KDENWMZ08Q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3KDENWMZ08R" role="3clF47">
        <node concept="3clFbF" id="3KDENWMZ08T" role="3cqZAp">
          <node concept="10Nm6u" id="3KDENWMZ08S" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KDENWMZ08U" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDisplayName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ08V" role="1B3o_S" />
      <node concept="17QB3L" id="6x0p4ufFys2" role="3clF45" />
      <node concept="2AHcQZ" id="3KDENWMZ08Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nls" resolve="Nls" />
      </node>
      <node concept="3clFbS" id="3KDENWMZ090" role="3clF47">
        <node concept="3SKdUt" id="2qP59qVYeKn" role="3cqZAp">
          <node concept="1PaTwC" id="2qP59qVYeKo" role="1aUNEU">
            <node concept="3oM_SD" id="2qP59qVYeKp" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeKq" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeKr" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeKs" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeKt" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2qP59qVYeKu" role="1PaTwD">
              <property role="3oM_SC" value="plugin.xml" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KDENWMZ092" role="3cqZAp">
          <node concept="Xl_RD" id="3KDENWMZcBt" role="3clFbG">
            <property role="Xl_RC" value="Model Checker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KDENWMZ093" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getHelpTopic" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ094" role="1B3o_S" />
      <node concept="17QB3L" id="6x0p4ufFwOK" role="3clF45" />
      <node concept="2AHcQZ" id="3KDENWMZ097" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="3KDENWMZ098" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="3clFbS" id="3KDENWMZ09a" role="3clF47">
        <node concept="3clFbF" id="3KDENWMZ09c" role="3cqZAp">
          <node concept="Xl_RD" id="6x0p4ufEuVL" role="3clFbG">
            <property role="Xl_RC" value="Model_Checker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KDENWMZ09d" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ09e" role="1B3o_S" />
      <node concept="3uibUv" id="3KDENWMZ09g" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="3KDENWMZ09h" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3KDENWMZ09k" role="3clF47">
        <node concept="3clFbF" id="3KDENWMZ09m" role="3cqZAp">
          <node concept="37vLTw" id="6x0p4ufEWoA" role="3clFbG">
            <ref role="3cqZAo" node="3etVqSRKzPr" resolve="myPage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KDENWMZ09A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="disposeUIResources" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KDENWMZ09B" role="1B3o_S" />
      <node concept="3cqZAl" id="3KDENWMZ09D" role="3clF45" />
      <node concept="3clFbS" id="3KDENWMZ09G" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="3etVqSRKzTz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3etVqSRK$al">
    <property role="3GE5qa" value="Tools" />
    <property role="TrG5h" value="ModelCheckerTool" />
    <node concept="312cEg" id="4UunP0YgBG8" role="jymVt">
      <property role="TrG5h" value="myTool" />
      <node concept="3Tm6S6" id="4UunP0YgBG9" role="1B3o_S" />
      <node concept="1xUVSX" id="4UunP0YgEdo" role="1tU5fm">
        <ref role="1xYkEM" to="6ugx:3iJf4n4WmE4" resolve="ModelChecker" />
      </node>
    </node>
    <node concept="312cEg" id="4UunP0YhVMV" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4UunP0YhVMW" role="1B3o_S" />
      <node concept="3uibUv" id="4UunP0YhVMY" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="3etVqSRK$at" role="jymVt" />
    <node concept="3Tm1VV" id="3etVqSRK$au" role="1B3o_S" />
    <node concept="3clFbW" id="3etVqSRK$aw" role="jymVt">
      <node concept="3cqZAl" id="3etVqSRK$ax" role="3clF45" />
      <node concept="3Tm6S6" id="4UunP0Ygo1O" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRK$az" role="3clF47">
        <node concept="3clFbF" id="4UunP0YgGQ6" role="3cqZAp">
          <node concept="37vLTI" id="4UunP0YgHbI" role="3clFbG">
            <node concept="37vLTw" id="4UunP0YgIuY" role="37vLTx">
              <ref role="3cqZAo" node="4UunP0Ygz1Z" resolve="tool" />
            </node>
            <node concept="37vLTw" id="4UunP0YgGQ5" role="37vLTJ">
              <ref role="3cqZAo" node="4UunP0YgBG8" resolve="myTool" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4UunP0YhVMZ" role="3cqZAp">
          <node concept="37vLTI" id="4UunP0YhVN1" role="3clFbG">
            <node concept="37vLTw" id="4UunP0YhVN4" role="37vLTJ">
              <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="4UunP0YhVN5" role="37vLTx">
              <ref role="3cqZAo" node="4UunP0YhSTk" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4UunP0YhSTk" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4UunP0YhSTl" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="4UunP0Ygz1Z" role="3clF46">
        <property role="TrG5h" value="tool" />
        <node concept="1xUVSX" id="4UunP0Ygz$5" role="1tU5fm">
          <ref role="1xYkEM" to="6ugx:3iJf4n4WmE4" resolve="ModelChecker" />
        </node>
        <node concept="2AHcQZ" id="4UunP0YgJ4X" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UunP0YgKeB" role="jymVt" />
    <node concept="3clFb_" id="3pNk_u$fiwJ" role="jymVt">
      <property role="TrG5h" value="checkModels" />
      <node concept="3uibUv" id="3pNk_u$fjTG" role="3clF45">
        <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
      </node>
      <node concept="3Tm1VV" id="3pNk_u$fiwM" role="1B3o_S" />
      <node concept="3clFbS" id="3pNk_u$fiwN" role="3clF47">
        <node concept="3cpWs8" id="3pNk_u$fqGt" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$fqGu" role="3cpWs9">
            <property role="TrG5h" value="newViewer" />
            <node concept="3uibUv" id="3pNk_u$fqGv" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="1rXfSq" id="3pNk_u$fqGw" role="33vP2m">
              <ref role="37wK5l" node="3etVqSRK$iG" resolve="createViewerForTab" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$ftv9" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$fuXO" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$ftv7" role="2Oq$k0">
              <ref role="3cqZAo" node="3pNk_u$fqGu" resolve="newViewer" />
            </node>
            <node concept="liA8E" id="3pNk_u$fw4g" role="2OqNvi">
              <ref role="37wK5l" node="3pNk_u$1dtP" resolve="checkModels" />
              <node concept="37vLTw" id="3pNk_u$fw9i" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$fpp5" resolve="models" />
              </node>
              <node concept="Xl_RD" id="3pNk_u$fwU_" role="37wK5m">
                <property role="Xl_RC" value="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3pNk_u$fqMZ" role="3cqZAp">
          <node concept="37vLTw" id="3pNk_u$fqS$" role="3cqZAk">
            <ref role="3cqZAo" node="3pNk_u$fqGu" resolve="newViewer" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$fpp5" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="_YKpA" id="3pNk_u$fpp3" role="1tU5fm">
          <node concept="3uibUv" id="3pNk_u$fqCY" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UunP0YhHt5" role="jymVt" />
    <node concept="3clFb_" id="3pNk_u$9zR0" role="jymVt">
      <property role="TrG5h" value="checkModelsAndShowResult" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3pNk_u$9zR1" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="_YKpA" id="3pNk_u$9zR2" role="1tU5fm">
          <node concept="3uibUv" id="3pNk_u$9zR3" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$9zR4" role="3clF46">
        <property role="TrG5h" value="checkers" />
        <node concept="8X2XB" id="3pNk_u$9A2N" role="1tU5fm">
          <node concept="3uibUv" id="3xfDcbRkFA3" role="8Xvag">
            <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
            <node concept="3qTvmN" id="4aUWmf9KL$i" role="11_B2D" />
            <node concept="3qTvmN" id="4aUWmf9KMBm" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3pNk_u$9zR6" role="3clF45" />
      <node concept="3clFbS" id="3pNk_u$9zR7" role="3clF47">
        <node concept="3cpWs8" id="3pNk_u$9zR8" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$9zR9" role="3cpWs9">
            <property role="TrG5h" value="newViewer" />
            <node concept="3uibUv" id="3pNk_u$9zRa" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="1rXfSq" id="3pNk_u$9zRb" role="33vP2m">
              <ref role="37wK5l" node="3etVqSRK$iG" resolve="createViewerForTab" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pNk_u$airY" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$airZ" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="3pNk_u$ais0" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pNk_u$9ADf" role="3cqZAp">
          <node concept="3clFbS" id="3pNk_u$9ADi" role="3clFbx">
            <node concept="3clFbF" id="3pNk_u$aj0e" role="3cqZAp">
              <node concept="37vLTI" id="3pNk_u$aj47" role="3clFbG">
                <node concept="2ShNRf" id="3pNk_u$ajbi" role="37vLTx">
                  <node concept="1pGfFk" id="3pNk_u$akgZ" role="2ShVmc">
                    <ref role="37wK5l" node="2$qlEUM_SoB" resolve="ModelCheckerIssueFinder" />
                    <node concept="37vLTw" id="kXqcYjTBC_" role="37wK5m">
                      <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                    </node>
                    <node concept="2OqwBi" id="3pNk_u$aoX9" role="37wK5m">
                      <node concept="liA8E" id="3pNk_u$aoXa" role="2OqNvi">
                        <ref role="37wK5l" node="3GsVPVaO85s" resolve="getSpecificCheckers" />
                        <node concept="37vLTw" id="3pNk_u$axKp" role="37wK5m">
                          <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="3pNk_u$aoXc" role="2Oq$k0">
                        <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
                        <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3pNk_u$aj0d" role="37vLTJ">
                  <ref role="3cqZAo" node="3pNk_u$airZ" resolve="finder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3pNk_u$9Cjb" role="3clFbw">
            <node concept="3clFbC" id="3pNk_u$9FJN" role="3uHU7w">
              <node concept="3cmrfG" id="3pNk_u$9FRX" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3pNk_u$9D3M" role="3uHU7B">
                <node concept="37vLTw" id="3pNk_u$9CNY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3pNk_u$9zR4" resolve="checkers" />
                </node>
                <node concept="1Rwk04" id="3pNk_u$9Eur" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="3pNk_u$9BMb" role="3uHU7B">
              <node concept="37vLTw" id="3pNk_u$9Bba" role="3uHU7B">
                <ref role="3cqZAo" node="3pNk_u$9zR4" resolve="checkers" />
              </node>
              <node concept="10Nm6u" id="3pNk_u$9CfG" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="3pNk_u$ayMX" role="9aQIa">
            <node concept="3clFbS" id="3pNk_u$ayMY" role="9aQI4">
              <node concept="3clFbF" id="3pNk_u$azm6" role="3cqZAp">
                <node concept="37vLTI" id="3pNk_u$azrk" role="3clFbG">
                  <node concept="2ShNRf" id="3pNk_u$azvx" role="37vLTx">
                    <node concept="1pGfFk" id="3pNk_u$a_Eb" role="2ShVmc">
                      <ref role="37wK5l" node="2$qlEUM_SoB" resolve="ModelCheckerIssueFinder" />
                      <node concept="37vLTw" id="kXqcYjTA2x" role="37wK5m">
                        <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                      </node>
                      <node concept="2OqwBi" id="4aUWmf9KL1z" role="37wK5m">
                        <node concept="2OqwBi" id="4aUWmf9KII5" role="2Oq$k0">
                          <node concept="37vLTw" id="3pNk_u$a_Iw" role="2Oq$k0">
                            <ref role="3cqZAo" node="3pNk_u$9zR4" resolve="checkers" />
                          </node>
                          <node concept="39bAoz" id="4aUWmf9KJCq" role="2OqNvi" />
                        </node>
                        <node concept="ANE8D" id="4aUWmf9KLq3" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3pNk_u$azm5" role="37vLTJ">
                    <ref role="3cqZAo" node="3pNk_u$airZ" resolve="finder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pNk_u$9zRc" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$9zRd" role="3cpWs9">
            <property role="TrG5h" value="title" />
            <node concept="17QB3L" id="3pNk_u$9zRe" role="1tU5fm" />
            <node concept="3K4zz7" id="3pNk_u$9zRf" role="33vP2m">
              <node concept="2OqwBi" id="2cahkxOr6VO" role="3K4E3e">
                <node concept="2OqwBi" id="3pNk_u$9zRg" role="2Oq$k0">
                  <node concept="2OqwBi" id="3pNk_u$9zRh" role="2Oq$k0">
                    <node concept="37vLTw" id="3pNk_u$9zRi" role="2Oq$k0">
                      <ref role="3cqZAo" node="3pNk_u$9zR1" resolve="models" />
                    </node>
                    <node concept="1uHKPH" id="3pNk_u$9zRj" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="3pNk_u$9zRk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="2cahkxOr7uO" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                </node>
              </node>
              <node concept="3clFbC" id="3pNk_u$9zRl" role="3K4Cdx">
                <node concept="3cmrfG" id="3pNk_u$9zRm" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="3pNk_u$9zRn" role="3uHU7B">
                  <node concept="37vLTw" id="3pNk_u$9zRo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3pNk_u$9zR1" resolve="models" />
                  </node>
                  <node concept="34oBXx" id="3pNk_u$9zRp" role="2OqNvi" />
                </node>
              </node>
              <node concept="2YIFZM" id="3pNk_u$9zRq" role="3K4GZi">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="3pNk_u$9zRr" role="37wK5m">
                  <property role="Xl_RC" value="%d models" />
                </node>
                <node concept="2OqwBi" id="3pNk_u$9zRs" role="37wK5m">
                  <node concept="37vLTw" id="3pNk_u$9zRt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3pNk_u$9zR1" resolve="models" />
                  </node>
                  <node concept="34oBXx" id="3pNk_u$9zRu" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MDTP4X55yF" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X56w$" role="3clFbG">
            <node concept="37vLTw" id="6MDTP4X55yD" role="2Oq$k0">
              <ref role="3cqZAo" node="3pNk_u$airZ" resolve="finder" />
            </node>
            <node concept="liA8E" id="6MDTP4X57jj" role="2OqNvi">
              <ref role="37wK5l" node="6MDTP4X3QBK" resolve="addModelScope" />
              <node concept="37vLTw" id="6MDTP4X57qz" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$9zR1" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$aAN9" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$aB$B" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$aAN7" role="2Oq$k0">
              <ref role="3cqZAo" node="3pNk_u$9zR9" resolve="newViewer" />
            </node>
            <node concept="liA8E" id="3pNk_u$aEg_" role="2OqNvi">
              <ref role="37wK5l" node="6MDTP4X3tlE" resolve="runCheck" />
              <node concept="37vLTw" id="6MDTP4X5dRg" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$airZ" resolve="finder" />
              </node>
              <node concept="37vLTw" id="3pNk_u$boq8" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$9zRd" resolve="title" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$9zR_" role="3cqZAp">
          <node concept="1rXfSq" id="3pNk_u$9zRA" role="3clFbG">
            <ref role="37wK5l" node="3pNk_u$5i_N" resolve="revealResults" />
            <node concept="37vLTw" id="3pNk_u$9zRB" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$9zR9" resolve="newViewer" />
            </node>
            <node concept="37vLTw" id="3pNk_u$9zRC" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$9zRd" resolve="title" />
            </node>
            <node concept="10M0yZ" id="3pNk_u$9zRD" role="37wK5m">
              <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3pNk_u$9zRE" role="1B3o_S" />
      <node concept="P$JXv" id="3LCCkAqp124" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsCxD" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCxE" role="1PaTwD">
            <property role="3oM_SC" value="Does" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxF" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxG" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxH" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxI" role="1PaTwD">
            <property role="3oM_SC" value="says." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxJ" role="1PaTwD">
            <property role="3oM_SC" value="For" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxK" role="1PaTwD">
            <property role="3oM_SC" value="convenience," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxL" role="1PaTwD">
            <property role="3oM_SC" value="checkers" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxM" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxN" role="1PaTwD">
            <property role="3oM_SC" value="explicitly," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxO" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxP" role="1PaTwD">
            <property role="3oM_SC" value="any," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxQ" role="1PaTwD">
            <property role="3oM_SC" value="override" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxR" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxS" role="1PaTwD">
            <property role="3oM_SC" value="default" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxT" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxU" role="1PaTwD">
            <property role="3oM_SC" value="&quot;specific&quot;" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCxV" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCxW" role="1PaTwD">
            <property role="3oM_SC" value="checkers" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxX" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxY" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCxZ" role="1PaTwD">
            <property role="3oM_SC" value="returned" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCy0" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHsCy1" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHsCy2" role="1Vtduc">
              <node concept="VXe0Z" id="3LCCkAqpxMv" role="1VuXuu">
                <ref role="VXe0S" node="3GsVPVaO85s" resolve="getSpecificCheckers" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHsCy5" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHsCy6" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHsCy7" role="1PaTwD">
            <property role="3oM_SC" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UunP0YjzCI" role="jymVt" />
    <node concept="3clFb_" id="4aNWY1v2hQb" role="jymVt">
      <property role="TrG5h" value="checkModulesAndShowResult" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4aNWY1v2hQc" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="_YKpA" id="4aNWY1v2hQd" role="1tU5fm">
          <node concept="3uibUv" id="4aNWY1v2hQe" role="_ZDj9">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3pNk_u$3Jaz" role="3clF45" />
      <node concept="3clFbS" id="4aNWY1v2hQk" role="3clF47">
        <node concept="3cpWs8" id="4aNWY1v2naN" role="3cqZAp">
          <node concept="3cpWsn" id="4aNWY1v2naQ" role="3cpWs9">
            <property role="TrG5h" value="newViewer" />
            <node concept="3uibUv" id="4aNWY1v2naR" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="1rXfSq" id="4aNWY1v2p5T" role="33vP2m">
              <ref role="37wK5l" node="3etVqSRK$iG" resolve="createViewerForTab" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pNk_u$1KXc" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$1KXf" role="3cpWs9">
            <property role="TrG5h" value="title" />
            <node concept="17QB3L" id="3pNk_u$1KXa" role="1tU5fm" />
            <node concept="3K4zz7" id="3pNk_u$1Qiv" role="33vP2m">
              <node concept="Xl_RD" id="3pNk_u$1TqM" role="3K4GZi">
                <property role="Xl_RC" value="modules" />
              </node>
              <node concept="2OqwBi" id="3pNk_u$1Sjh" role="3K4E3e">
                <node concept="2OqwBi" id="3pNk_u$1QIn" role="2Oq$k0">
                  <node concept="37vLTw" id="3pNk_u$1QqB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4aNWY1v2hQc" resolve="modules" />
                  </node>
                  <node concept="1uHKPH" id="3pNk_u$1Rxs" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="3pNk_u$1Tl5" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                </node>
              </node>
              <node concept="3clFbC" id="3pNk_u$1P$m" role="3K4Cdx">
                <node concept="3cmrfG" id="3pNk_u$1PJA" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="3pNk_u$1NpH" role="3uHU7B">
                  <node concept="37vLTw" id="3pNk_u$1MXg" role="2Oq$k0">
                    <ref role="3cqZAo" node="4aNWY1v2hQc" resolve="modules" />
                  </node>
                  <node concept="34oBXx" id="3pNk_u$1Ob8" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$1Xl2" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$1Y$y" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$1Xl0" role="2Oq$k0">
              <ref role="3cqZAo" node="4aNWY1v2naQ" resolve="newViewer" />
            </node>
            <node concept="liA8E" id="3pNk_u$2P3N" role="2OqNvi">
              <ref role="37wK5l" node="3pNk_uzZRhM" resolve="checkModules" />
              <node concept="37vLTw" id="3pNk_u$2PaH" role="37wK5m">
                <ref role="3cqZAo" node="4aNWY1v2hQc" resolve="modules" />
              </node>
              <node concept="37vLTw" id="3pNk_u$2Pj4" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$1KXf" resolve="title" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pNk_u$3lZS" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$3lZT" role="3cpWs9">
            <property role="TrG5h" value="icon" />
            <node concept="3uibUv" id="3pNk_u$3lZU" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="3K4zz7" id="3pNk_u$3s9N" role="33vP2m">
              <node concept="3clFbC" id="3pNk_u$3rdd" role="3K4Cdx">
                <node concept="3cmrfG" id="3pNk_u$3ry1" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="3pNk_u$3oAW" role="3uHU7B">
                  <node concept="37vLTw" id="3pNk_u$3o64" role="2Oq$k0">
                    <ref role="3cqZAo" node="4aNWY1v2hQc" resolve="modules" />
                  </node>
                  <node concept="34oBXx" id="3pNk_u$3pon" role="2OqNvi" />
                </node>
              </node>
              <node concept="2OqwBi" id="7eHFHBMiEAu" role="3K4E3e">
                <node concept="2YIFZM" id="7eHFHBMiDKY" role="2Oq$k0">
                  <ref role="37wK5l" to="sn11:5UC$YgehaLf" resolve="getInstance" />
                  <ref role="1Pybhc" to="sn11:192HKKPMXeL" resolve="GlobalIconManager" />
                </node>
                <node concept="liA8E" id="7eHFHBMiFwY" role="2OqNvi">
                  <ref role="37wK5l" to="sn11:192HKKPOe1b" resolve="getIconFor" />
                  <node concept="2OqwBi" id="7eHFHBMiDKZ" role="37wK5m">
                    <node concept="37vLTw" id="7eHFHBMiDL0" role="2Oq$k0">
                      <ref role="3cqZAo" node="4aNWY1v2hQc" resolve="modules" />
                    </node>
                    <node concept="1uHKPH" id="7eHFHBMiDL1" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="4VE3_mvPxuF" role="3K4GZi">
                <ref role="3cqZAo" to="z2i8:~AllIcons$Nodes.ModuleGroup" resolve="ModuleGroup" />
                <ref role="1PxDUh" to="z2i8:~AllIcons$Nodes" resolve="AllIcons.Nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$5w0r" role="3cqZAp">
          <node concept="1rXfSq" id="3pNk_u$5w0p" role="3clFbG">
            <ref role="37wK5l" node="3pNk_u$5i_N" resolve="revealResults" />
            <node concept="37vLTw" id="3pNk_u$5x8m" role="37wK5m">
              <ref role="3cqZAo" node="4aNWY1v2naQ" resolve="newViewer" />
            </node>
            <node concept="37vLTw" id="3pNk_u$5xfU" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$1KXf" resolve="title" />
            </node>
            <node concept="37vLTw" id="3pNk_u$5xm8" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$3lZT" resolve="icon" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4aNWY1v2hQx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4UunP0Yj_Bh" role="jymVt" />
    <node concept="3clFb_" id="3pNk_u$5i_N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="revealResults" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3pNk_u$5i_Q" role="3clF47">
        <node concept="3cpWs8" id="2cahkxOqZyJ" role="3cqZAp">
          <node concept="3cpWsn" id="2cahkxOqZyK" role="3cpWs9">
            <property role="TrG5h" value="searchResults" />
            <node concept="3uibUv" id="2cahkxOqZyE" role="1tU5fm">
              <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
              <node concept="3uibUv" id="13muGfOFNNo" role="11_B2D">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="2cahkxOqZyL" role="33vP2m">
              <node concept="37vLTw" id="2cahkxOqZyM" role="2Oq$k0">
                <ref role="3cqZAo" node="3pNk_u$5kzR" resolve="newViewer" />
              </node>
              <node concept="liA8E" id="2cahkxOqZyN" role="2OqNvi">
                <ref role="37wK5l" node="3etVqSRRN$O" resolve="getSearchResults" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2cahkxOr04l" role="3cqZAp">
          <node concept="3clFbS" id="2cahkxOr04n" role="3clFbx">
            <node concept="3SKdUt" id="2cahkxOr5J6" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojKv" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojKw" role="1PaTwD">
                  <property role="3oM_SC" value="Search" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojKx" role="1PaTwD">
                  <property role="3oM_SC" value="was" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojKy" role="1PaTwD">
                  <property role="3oM_SC" value="cancelled," />
                </node>
                <node concept="3oM_SD" id="ATZLwXojKz" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojK$" role="1PaTwD">
                  <property role="3oM_SC" value="nothing" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2cahkxOr173" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2cahkxOr0H5" role="3clFbw">
            <node concept="10Nm6u" id="2cahkxOr0Ny" role="3uHU7w" />
            <node concept="37vLTw" id="2cahkxOr0l7" role="3uHU7B">
              <ref role="3cqZAo" node="2cahkxOqZyK" resolve="searchResults" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4aNWY1v2LYT" role="3cqZAp">
          <node concept="3clFbS" id="4aNWY1v2LYU" role="3clFbx">
            <node concept="3clFbF" id="1BeBoUYuOZ7" role="3cqZAp">
              <node concept="2YIFZM" id="1BeBoUYuTEj" role="3clFbG">
                <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showInfoMessage" />
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                <node concept="2OqwBi" id="4UunP0YidRl" role="37wK5m">
                  <node concept="37vLTw" id="3AZRYPBUMiN" role="2Oq$k0">
                    <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="4UunP0Yigzo" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1BeBoUYv5aG" role="37wK5m">
                  <property role="Xl_RC" value="There were no problems detected during Model Checker execution" />
                </node>
                <node concept="Xl_RD" id="1BeBoUYuYKj" role="37wK5m">
                  <property role="Xl_RC" value="Model Checker results" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4aNWY1v2LZ8" role="3clFbw">
            <node concept="2OqwBi" id="4aNWY1v2LZ9" role="2Oq$k0">
              <node concept="37vLTw" id="2cahkxOqZyO" role="2Oq$k0">
                <ref role="3cqZAo" node="2cahkxOqZyK" resolve="searchResults" />
              </node>
              <node concept="liA8E" id="4aNWY1v2LZd" role="2OqNvi">
                <ref role="37wK5l" to="9erk:~SearchResults.getSearchResults()" resolve="getSearchResults" />
              </node>
            </node>
            <node concept="liA8E" id="4aNWY1v2LZe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="9aQIb" id="4aNWY1v2LZf" role="9aQIa">
            <node concept="3clFbS" id="4aNWY1v2LZg" role="9aQI4">
              <node concept="3clFbF" id="4aNWY1v2LZh" role="3cqZAp">
                <node concept="2OqwBi" id="4aNWY1v2LZi" role="3clFbG">
                  <node concept="Xjq3P" id="4aNWY1v2LZj" role="2Oq$k0" />
                  <node concept="liA8E" id="4aNWY1v2LZk" role="2OqNvi">
                    <ref role="37wK5l" node="4aNWY1v0QZD" resolve="showTabWithResults" />
                    <node concept="37vLTw" id="4aNWY1v2LZl" role="37wK5m">
                      <ref role="3cqZAo" node="3pNk_u$5kzR" resolve="newViewer" />
                    </node>
                    <node concept="37vLTw" id="3pNk_u$2Ro2" role="37wK5m">
                      <ref role="3cqZAo" node="3pNk_u$5pSs" resolve="title" />
                    </node>
                    <node concept="37vLTw" id="3pNk_u$3vti" role="37wK5m">
                      <ref role="3cqZAo" node="3pNk_u$5rIw" resolve="icon" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3pNk_u$5gAz" role="1B3o_S" />
      <node concept="3cqZAl" id="3pNk_u$5gIF" role="3clF45" />
      <node concept="37vLTG" id="3pNk_u$5kzR" role="3clF46">
        <property role="TrG5h" value="newViewer" />
        <node concept="3uibUv" id="3pNk_u$5kzQ" role="1tU5fm">
          <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$5pSs" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="3pNk_u$5rGy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3pNk_u$5rIw" role="3clF46">
        <property role="TrG5h" value="icon" />
        <node concept="3uibUv" id="3pNk_u$5txa" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UunP0YjBAE" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRK$eL" role="jymVt">
      <property role="TrG5h" value="checkProjectAndShowResults" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3etVqSRK$eT" role="3clF47">
        <node concept="3cpWs8" id="3pNk_u$5$g0" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$5$g1" role="3cpWs9">
            <property role="TrG5h" value="newViewer" />
            <node concept="3uibUv" id="3pNk_u$5$g2" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="1rXfSq" id="3pNk_u$5$g3" role="33vP2m">
              <ref role="37wK5l" node="3etVqSRK$iG" resolve="createViewerForTab" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$5A19" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$5Row" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$5Pp0" role="2Oq$k0">
              <ref role="3cqZAo" node="3pNk_u$5$g1" resolve="newViewer" />
            </node>
            <node concept="liA8E" id="3pNk_u$5VoT" role="2OqNvi">
              <ref role="37wK5l" node="3pNk_uzZRhM" resolve="checkModules" />
              <node concept="2ShNRf" id="3etVqSRK$f5" role="37wK5m">
                <node concept="Tc6Ow" id="3etVqSRK$f6" role="2ShVmc">
                  <node concept="2OqwBi" id="3etVqSRK$fb" role="I$8f6">
                    <node concept="37vLTw" id="3GM_nagTv6f" role="2Oq$k0">
                      <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="3etVqSRK$fd" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3etVqSRK$f7" role="HW$YZ">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3pNk_u$5Y6h" role="37wK5m">
                <node concept="37vLTw" id="3pNk_u$5XGZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                </node>
                <node concept="liA8E" id="3pNk_u$5YAY" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$60Tw" role="3cqZAp">
          <node concept="1rXfSq" id="3pNk_u$60Tu" role="3clFbG">
            <ref role="37wK5l" node="3pNk_u$5i_N" resolve="revealResults" />
            <node concept="37vLTw" id="3pNk_u$62TE" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$5$g1" resolve="newViewer" />
            </node>
            <node concept="2OqwBi" id="3pNk_u$63gh" role="37wK5m">
              <node concept="37vLTw" id="3pNk_u$635e" role="2Oq$k0">
                <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
              </node>
              <node concept="liA8E" id="3pNk_u$63N5" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="10M0yZ" id="3etVqSRK$fh" role="37wK5m">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.PROJECT_ICON" resolve="PROJECT_ICON" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRK$fk" role="1B3o_S" />
      <node concept="3cqZAl" id="3pNk_u$69y_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4UunP0YjDA3" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRK$gW" role="jymVt">
      <property role="TrG5h" value="checkModelsBeforeCommit" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3etVqSRK$gZ" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="_YKpA" id="3etVqSRK$h0" role="1tU5fm">
          <node concept="3uibUv" id="3etVqSRK$h1" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3etVqSRK$h2" role="3clF45">
        <ref role="3uigEE" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
      </node>
      <node concept="3clFbS" id="3etVqSRK$h3" role="3clF47">
        <node concept="3clFbJ" id="2$eUmpEr_DK" role="3cqZAp">
          <node concept="3clFbS" id="2$eUmpEr_DM" role="3clFbx">
            <node concept="3cpWs6" id="2$eUmpErELr" role="3cqZAp">
              <node concept="Rm8GO" id="2fqk0uNC2sR" role="3cqZAk">
                <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.COMMIT" resolve="COMMIT" />
                <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2$eUmpErBRi" role="3clFbw">
            <node concept="37vLTw" id="2$eUmpErB7T" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRK$gZ" resolve="models" />
            </node>
            <node concept="1v1jN8" id="2$eUmpErECS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2$eUmpErJ1K" role="3cqZAp" />
        <node concept="3cpWs8" id="3pNk_u$c6iA" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$c6iB" role="3cpWs9">
            <property role="TrG5h" value="viewer" />
            <node concept="3uibUv" id="3pNk_u$c6iC" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="1rXfSq" id="3pNk_u$f4YQ" role="33vP2m">
              <ref role="37wK5l" node="3etVqSRK$iG" resolve="createViewerForTab" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$c9_l" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$cbpp" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$c9_j" role="2Oq$k0">
              <ref role="3cqZAo" node="3pNk_u$c6iB" resolve="viewer" />
            </node>
            <node concept="liA8E" id="3pNk_u$cdMg" role="2OqNvi">
              <ref role="37wK5l" node="3pNk_u$1dtP" resolve="checkModels" />
              <node concept="37vLTw" id="3pNk_u$cfRs" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRK$gZ" resolve="models" />
              </node>
              <node concept="Xl_RD" id="3pNk_u$cg0Q" role="37wK5m">
                <property role="Xl_RC" value="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3pNk_u$c4HT" role="3cqZAp" />
        <node concept="3cpWs8" id="3etVqSRK$hd" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRK$he" role="3cpWs9">
            <property role="TrG5h" value="issues" />
            <node concept="3uibUv" id="3etVqSRK$hf" role="1tU5fm">
              <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
              <node concept="3uibUv" id="13muGfOFJjN" role="11_B2D">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="3etVqSRK$hh" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagT_2v" role="2Oq$k0">
                <ref role="3cqZAo" node="3pNk_u$c6iB" resolve="viewer" />
              </node>
              <node concept="liA8E" id="3etVqSRK$hj" role="2OqNvi">
                <ref role="37wK5l" node="3etVqSRRN$O" resolve="getSearchResults" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2cahkxOqJaz" role="3cqZAp">
          <node concept="3clFbS" id="2cahkxOqJa_" role="3clFbx">
            <node concept="3cpWs6" id="2cahkxOqL2q" role="3cqZAp">
              <node concept="Rm8GO" id="40nX38jkcIF" role="3cqZAk">
                <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.CANCEL" resolve="CANCEL" />
                <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2cahkxOqKJe" role="3clFbw">
            <node concept="10Nm6u" id="2cahkxOqKPF" role="3uHU7w" />
            <node concept="37vLTw" id="2cahkxOqKc5" role="3uHU7B">
              <ref role="3cqZAo" node="3etVqSRK$he" resolve="issues" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRK$hk" role="3cqZAp" />
        <node concept="3cpWs8" id="3etVqSRK$hl" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRK$hm" role="3cpWs9">
            <property role="TrG5h" value="warnings" />
            <node concept="10Oyi0" id="3etVqSRK$hn" role="1tU5fm" />
            <node concept="2YIFZM" id="3etVqSRK$ho" role="33vP2m">
              <ref role="37wK5l" node="3etVqSRKz_E" resolve="getIssueCountForSeverity" />
              <ref role="1Pybhc" node="3etVqSRKzzT" resolve="ModelCheckerUtils" />
              <node concept="37vLTw" id="3GM_nagTrjo" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRK$he" resolve="issues" />
              </node>
              <node concept="10M0yZ" id="4SGXHKgWQDJ" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzLv" resolve="SEVERITY_WARNING" />
                <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3etVqSRK$hr" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRK$hs" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="10Oyi0" id="3etVqSRK$ht" role="1tU5fm" />
            <node concept="2YIFZM" id="3etVqSRK$hu" role="33vP2m">
              <ref role="1Pybhc" node="3etVqSRKzzT" resolve="ModelCheckerUtils" />
              <ref role="37wK5l" node="3etVqSRKz_E" resolve="getIssueCountForSeverity" />
              <node concept="37vLTw" id="3GM_nagTrfH" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRK$he" resolve="issues" />
              </node>
              <node concept="10M0yZ" id="4SGXHKgWQDG" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzLr" resolve="SEVERITY_ERROR" />
                <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRK$hx" role="3cqZAp" />
        <node concept="3clFbJ" id="3etVqSRK$hy" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRK$hz" role="3clFbx">
            <node concept="3cpWs8" id="3etVqSRK$h$" role="3cqZAp">
              <node concept="3cpWsn" id="3etVqSRK$h_" role="3cpWs9">
                <property role="TrG5h" value="dialogMessage" />
                <node concept="17QB3L" id="3etVqSRK$hA" role="1tU5fm" />
                <node concept="3cpWs3" id="3etVqSRK$hB" role="33vP2m">
                  <node concept="3cpWs3" id="3etVqSRK$hC" role="3uHU7B">
                    <node concept="3cpWs3" id="3etVqSRK$hD" role="3uHU7B">
                      <node concept="3cpWs3" id="3etVqSRK$hE" role="3uHU7B">
                        <node concept="Xl_RD" id="3etVqSRK$hF" role="3uHU7B">
                          <property role="Xl_RC" value="Model checker found " />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTtpN" role="3uHU7w">
                          <ref role="3cqZAo" node="3etVqSRK$hs" resolve="errors" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3etVqSRK$hH" role="3uHU7w">
                        <property role="Xl_RC" value=" errors and " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTwfp" role="3uHU7w">
                      <ref role="3cqZAo" node="3etVqSRK$hm" resolve="warnings" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3etVqSRK$hJ" role="3uHU7w">
                    <property role="Xl_RC" value=" warnings. Would you like to review them?" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3etVqSRK$hK" role="3cqZAp">
              <node concept="3cpWsn" id="3etVqSRK$hL" role="3cpWs9">
                <property role="TrG5h" value="dialogAnswer" />
                <node concept="10Oyi0" id="3etVqSRK$hM" role="1tU5fm" />
                <node concept="2YIFZM" id="3etVqSRK$hN" role="33vP2m">
                  <ref role="37wK5l" to="jkm4:~Messages.showDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,java.lang.String[],int,javax.swing.Icon)" resolve="showDialog" />
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <node concept="2OqwBi" id="4UunP0YjMKK" role="37wK5m">
                    <node concept="37vLTw" id="3pNk_u$d0pU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4UunP0YhVMV" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="4UunP0YjOyl" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTv82" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRK$h_" resolve="dialogMessage" />
                  </node>
                  <node concept="Xl_RD" id="3etVqSRK$hT" role="37wK5m">
                    <property role="Xl_RC" value="Model Checking" />
                  </node>
                  <node concept="2ShNRf" id="3etVqSRK$hU" role="37wK5m">
                    <node concept="3g6Rrh" id="3etVqSRK$hV" role="2ShVmc">
                      <node concept="17QB3L" id="3etVqSRK$hW" role="3g7fb8" />
                      <node concept="Xl_RD" id="3etVqSRK$hX" role="3g7hyw">
                        <property role="Xl_RC" value="Review" />
                      </node>
                      <node concept="Xl_RD" id="3etVqSRK$hY" role="3g7hyw">
                        <property role="Xl_RC" value="Commit" />
                      </node>
                      <node concept="Xl_RD" id="3etVqSRK$hZ" role="3g7hyw">
                        <property role="Xl_RC" value="Cancel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="3etVqSRK$i0" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="10Nm6u" id="3etVqSRK$i1" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3etVqSRK$i2" role="3cqZAp">
              <node concept="3clFbS" id="3etVqSRK$i3" role="3clFbx">
                <node concept="3SKdUt" id="3etVqSRK$i4" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXojK_" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXojKA" role="1PaTwD">
                      <property role="3oM_SC" value="review" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojKB" role="1PaTwD">
                      <property role="3oM_SC" value="errors" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojKC" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojKD" role="1PaTwD">
                      <property role="3oM_SC" value="warnings," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojKE" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojKF" role="1PaTwD">
                      <property role="3oM_SC" value="commit" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3etVqSRK$i6" role="3cqZAp">
                  <node concept="2OqwBi" id="3etVqSRK$i7" role="3clFbG">
                    <node concept="Xjq3P" id="3etVqSRK$i8" role="2Oq$k0" />
                    <node concept="liA8E" id="3etVqSRK$i9" role="2OqNvi">
                      <ref role="37wK5l" node="4aNWY1v0QZD" resolve="showTabWithResults" />
                      <node concept="37vLTw" id="3etVqSRK$ia" role="37wK5m">
                        <ref role="3cqZAo" node="3pNk_u$c6iB" resolve="viewer" />
                      </node>
                      <node concept="Xl_RD" id="3pNk_u$cOSp" role="37wK5m">
                        <property role="Xl_RC" value="Pre-commit check" />
                      </node>
                      <node concept="10M0yZ" id="3pNk_u$cPae" role="37wK5m">
                        <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
                        <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3etVqSRK$ib" role="3cqZAp">
                  <node concept="Rm8GO" id="2fqk0uNC2sr" role="3cqZAk">
                    <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.CLOSE_WINDOW" resolve="CLOSE_WINDOW" />
                    <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3etVqSRK$id" role="3clFbw">
                <node concept="3cmrfG" id="3etVqSRK$ie" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="3GM_nagTsgz" role="3uHU7B">
                  <ref role="3cqZAo" node="3etVqSRK$hL" resolve="dialogAnswer" />
                </node>
              </node>
              <node concept="3eNFk2" id="3etVqSRK$ig" role="3eNLev">
                <node concept="3clFbC" id="3etVqSRK$ih" role="3eO9$A">
                  <node concept="3cmrfG" id="3etVqSRK$ii" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTsdk" role="3uHU7B">
                    <ref role="3cqZAo" node="3etVqSRK$hL" resolve="dialogAnswer" />
                  </node>
                </node>
                <node concept="3clFbS" id="3etVqSRK$ik" role="3eOfB_">
                  <node concept="3SKdUt" id="3etVqSRK$il" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXojKG" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXojKH" role="1PaTwD">
                        <property role="3oM_SC" value="ignore" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXojKI" role="1PaTwD">
                        <property role="3oM_SC" value="errors" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXojKJ" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXojKK" role="1PaTwD">
                        <property role="3oM_SC" value="warnings" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="3etVqSRK$in" role="3cqZAp">
                    <node concept="Rm8GO" id="3etVqSRK$io" role="3cqZAk">
                      <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.COMMIT" resolve="COMMIT" />
                      <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="3etVqSRK$ip" role="3eNLev">
                <node concept="22lmx$" id="3etVqSRK$iq" role="3eO9$A">
                  <node concept="3clFbC" id="3etVqSRK$ir" role="3uHU7w">
                    <node concept="3cmrfG" id="3etVqSRK$is" role="3uHU7w">
                      <property role="3cmrfH" value="-1" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTyQ9" role="3uHU7B">
                      <ref role="3cqZAo" node="3etVqSRK$hL" resolve="dialogAnswer" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="3etVqSRK$iu" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTBU_" role="3uHU7B">
                      <ref role="3cqZAo" node="3etVqSRK$hL" resolve="dialogAnswer" />
                    </node>
                    <node concept="3cmrfG" id="3etVqSRK$iw" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3etVqSRK$ix" role="3eOfB_">
                  <node concept="3SKdUt" id="3etVqSRK$iy" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXojKL" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXojKM" role="1PaTwD">
                        <property role="3oM_SC" value="Cancel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="3etVqSRK$i$" role="3cqZAp">
                    <node concept="Rm8GO" id="3etVqSRK$i_" role="3cqZAk">
                      <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
                      <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.CANCEL" resolve="CANCEL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3etVqSRK$iA" role="3clFbw">
            <node concept="3cmrfG" id="3etVqSRK$iB" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3GM_nagTw3a" role="3uHU7B">
              <ref role="3cqZAo" node="3etVqSRK$hs" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRK$iD" role="3cqZAp">
          <node concept="Rm8GO" id="40nX38jkcJ7" role="3cqZAk">
            <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.COMMIT" resolve="COMMIT" />
            <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRK$iF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4UunP0YjF$A" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRK$iG" role="jymVt">
      <property role="TrG5h" value="createViewerForTab" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="3etVqSRK$iJ" role="3clF45">
        <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
      </node>
      <node concept="3clFbS" id="3etVqSRK$iK" role="3clF47">
        <node concept="3cpWs6" id="4UunP0YgQWs" role="3cqZAp">
          <node concept="2OqwBi" id="4UunP0YgXh3" role="3cqZAk">
            <node concept="37vLTw" id="4UunP0YgUiA" role="2Oq$k0">
              <ref role="3cqZAo" node="4UunP0YgBG8" resolve="myTool" />
            </node>
            <node concept="2XshWL" id="4UunP0YgYS1" role="2OqNvi">
              <ref role="2WH_rO" to="6ugx:3iJf4n4Wv7t" resolve="createViewerForTab" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3etVqSRK$j4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4UunP0YjIwd" role="jymVt" />
    <node concept="3clFb_" id="4aNWY1v0QZD" role="jymVt">
      <property role="TrG5h" value="showTabWithResults" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4aNWY1v0QZE" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4aNWY1v0QZF" role="1tU5fm">
          <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
        </node>
      </node>
      <node concept="37vLTG" id="4aNWY1v0Uxr" role="3clF46">
        <property role="TrG5h" value="tabTitle" />
        <node concept="3uibUv" id="4aNWY1v1bkQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4aNWY1v1bo8" role="3clF46">
        <property role="TrG5h" value="tabIcon" />
        <node concept="3uibUv" id="4aNWY1v1dc3" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="3cqZAl" id="4aNWY1v0QZG" role="3clF45" />
      <node concept="3clFbS" id="4aNWY1v0QZH" role="3clF47">
        <node concept="3clFbF" id="4UunP0Yivpg" role="3cqZAp">
          <node concept="15s5l7" id="4UunP0YjQ2Z" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: incompatible types: {v985=&gt;z985} and {d984=&gt;void}&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/1229718163909]&quot;;" />
            <property role="huDt6" value="Error: incompatible types: {v985=&gt;z985} and {d984=&gt;void}" />
          </node>
          <node concept="2OqwBi" id="4UunP0Yix1u" role="3clFbG">
            <node concept="37vLTw" id="4UunP0Yivpe" role="2Oq$k0">
              <ref role="3cqZAo" node="4UunP0YgBG8" resolve="myTool" />
            </node>
            <node concept="2wDMaC" id="4UunP0YiyAq" role="2OqNvi">
              <node concept="2BLXyY" id="4UunP0YiyAs" role="11Dce$">
                <node concept="37vLTw" id="4UunP0Yi$K$" role="2BLOvw">
                  <ref role="3cqZAo" node="4aNWY1v0QZE" resolve="viewer" />
                </node>
                <node concept="37vLTw" id="4UunP0YiBS0" role="2BLOvx">
                  <ref role="3cqZAo" node="4aNWY1v0Uxr" resolve="tabTitle" />
                </node>
                <node concept="37vLTw" id="4UunP0YiDDw" role="2BLOvy">
                  <ref role="3cqZAo" node="4aNWY1v1bo8" resolve="tabIcon" />
                </node>
                <node concept="1bVj0M" id="4UunP0YiU7a" role="2BLOvz">
                  <node concept="3clFbS" id="4UunP0YiU7b" role="1bW5cS">
                    <node concept="3clFbF" id="4UunP0Yj108" role="3cqZAp">
                      <node concept="2OqwBi" id="4UunP0YjizZ" role="3clFbG">
                        <node concept="37vLTw" id="4UunP0Yj107" role="2Oq$k0">
                          <ref role="3cqZAo" node="4UunP0Yjat5" resolve="c" />
                        </node>
                        <node concept="liA8E" id="4UunP0Yjl9J" role="2OqNvi">
                          <ref role="37wK5l" node="3etVqSRRN$w" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="4UunP0Yjat5" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="3uibUv" id="4UunP0Yjat2" role="1tU5fm">
                      <ref role="3uigEE" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4aNWY1v0R02" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3etVqSRK$ju" role="jymVt" />
    <node concept="2YIFZL" id="3etVqSRK$jv" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3etVqSRK$jw" role="3clF47">
        <node concept="3cpWs8" id="4UunP0Ygyrh" role="3cqZAp">
          <node concept="3cpWsn" id="4UunP0Ygyri" role="3cpWs9">
            <property role="TrG5h" value="checkerTool" />
            <node concept="1xUVSX" id="4UunP0YgnmN" role="1tU5fm">
              <ref role="1xYkEM" to="6ugx:3iJf4n4WmE4" resolve="ModelChecker" />
            </node>
            <node concept="2OqwBi" id="4UunP0Ygyrj" role="33vP2m">
              <node concept="37vLTw" id="4UunP0Ygyrk" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRK$jC" resolve="p" />
              </node>
              <node concept="LR4U6" id="4UunP0Ygyrl" role="2OqNvi">
                <ref role="LR4U5" to="6ugx:3iJf4n4WmE4" resolve="ModelChecker" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4UunP0YhKHO" role="3cqZAp">
          <node concept="3cpWsn" id="4UunP0YhKHP" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="2YIFZM" id="4UunP0YhKHQ" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="4UunP0YhKHR" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRK$jC" resolve="p" />
              </node>
            </node>
            <node concept="3uibUv" id="4UunP0YhKHS" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4UunP0Yh9Av" role="3cqZAp">
          <node concept="3K4zz7" id="4UunP0YheaE" role="3cqZAk">
            <node concept="10Nm6u" id="4UunP0Yhfdn" role="3K4E3e" />
            <node concept="2ShNRf" id="4UunP0YhgHF" role="3K4GZi">
              <node concept="1pGfFk" id="4UunP0YhER7" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="3etVqSRK$aw" resolve="ModelCheckerTool" />
                <node concept="37vLTw" id="4UunP0YhSdG" role="37wK5m">
                  <ref role="3cqZAo" node="4UunP0YhKHP" resolve="mpsProject" />
                </node>
                <node concept="37vLTw" id="4UunP0YhG3X" role="37wK5m">
                  <ref role="3cqZAo" node="4UunP0Ygyri" resolve="checkerTool" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="4UunP0YhMYo" role="3K4Cdx">
              <node concept="3clFbC" id="4UunP0YhP2g" role="3uHU7w">
                <node concept="10Nm6u" id="4UunP0YhQdB" role="3uHU7w" />
                <node concept="37vLTw" id="4UunP0YhO9F" role="3uHU7B">
                  <ref role="3cqZAo" node="4UunP0YhKHP" resolve="mpsProject" />
                </node>
              </node>
              <node concept="3clFbC" id="4UunP0YhcnX" role="3uHU7B">
                <node concept="37vLTw" id="4UunP0Yhb$D" role="3uHU7B">
                  <ref role="3cqZAo" node="4UunP0Ygyri" resolve="checkerTool" />
                </node>
                <node concept="10Nm6u" id="4UunP0YhduW" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRK$jA" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRK$jB" role="3clF45">
        <ref role="3uigEE" node="3etVqSRK$al" resolve="ModelCheckerTool" />
      </node>
      <node concept="37vLTG" id="3etVqSRK$jC" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="3etVqSRK$jD" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="5DMnyo$FVNS" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCvX" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCvY" role="1PaTwD">
          <property role="3oM_SC" value="A" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCvZ" role="1PaTwD">
          <property role="3oM_SC" value="facade" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCw0" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCw1" role="1PaTwD">
          <property role="3oM_SC" value="deal" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCw2" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCw3" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsCw4" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsCw7" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCw8" role="1PaTwD">
                <property role="3oM_SC" value="tool&lt;ModelChecker&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCw9" role="1PaTwD">
          <property role="3oM_SC" value="," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwa" role="1PaTwD">
          <property role="3oM_SC" value="backward" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwb" role="1PaTwD">
          <property role="3oM_SC" value="compatible" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwc" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwd" role="1PaTwD">
          <property role="3oM_SC" value="existing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwe" role="1PaTwD">
          <property role="3oM_SC" value="uses" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwf" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCwg" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsCwh" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsCwk" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCwl" role="1PaTwD">
                <property role="3oM_SC" value="ModelCheckerTool" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwm" role="1PaTwD">
          <property role="3oM_SC" value="through" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCwn" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsCwo" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsCwr" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCws" role="1PaTwD">
                <property role="3oM_SC" value="ModelCheckerTool.getInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwt" role="1PaTwD">
          <property role="3oM_SC" value="." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCwu" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCwv" role="1PaTwD">
          <property role="3oM_SC" value="Note," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCww" role="1PaTwD">
          <property role="3oM_SC" value="legacy" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCwx" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsCwy" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsCw_" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCwA" role="1PaTwD">
                <property role="3oM_SC" value="project.getComponent(ModelCheckerTool.class" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwB" role="1PaTwD">
          <property role="3oM_SC" value="doesn't" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwC" role="1PaTwD">
          <property role="3oM_SC" value="work" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwD" role="1PaTwD">
          <property role="3oM_SC" value="any" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCwE" role="1PaTwD">
          <property role="3oM_SC" value="more." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRRNr5">
    <property role="TrG5h" value="ModelCheckerViewer" />
    <property role="3GE5qa" value="Model Checker" />
    <property role="1sVAO0" value="false" />
    <node concept="312cEg" id="3etVqSRRNr6" role="jymVt">
      <property role="TrG5h" value="myIdeaProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3etVqSRRNr7" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRRNr8" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="2K4NeDxB5Kx" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2K4NeDxB2qO" role="1B3o_S" />
      <node concept="3uibUv" id="2K4NeDxB5t3" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="3etVqSRRNrc" role="jymVt">
      <property role="TrG5h" value="myUsagesView" />
      <node concept="3Tm6S6" id="3etVqSRRNrd" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRRNre" role="1tU5fm">
        <ref role="3uigEE" to="ngmm:~UsagesView" resolve="UsagesView" />
      </node>
    </node>
    <node concept="312cEg" id="3etVqSRRNrr" role="jymVt">
      <property role="TrG5h" value="myFixButton" />
      <node concept="3Tm6S6" id="3etVqSRRNrs" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRRNrt" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
      </node>
    </node>
    <node concept="312cEg" id="2RCLviz0hXd" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCheckAction" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2RCLviz0eYU" role="1B3o_S" />
      <node concept="3uibUv" id="2RCLviz0hUR" role="1tU5fm">
        <ref role="3uigEE" to="ngmm:~UsagesView$RerunAction" resolve="UsagesView.RerunAction" />
      </node>
    </node>
    <node concept="3clFbW" id="3etVqSRRNry" role="jymVt">
      <node concept="3Tm1VV" id="3etVqSRRNrz" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRRNr$" role="3clF47">
        <node concept="1VxSAg" id="2AAgPT$d$pu" role="3cqZAp">
          <ref role="37wK5l" node="2AAgPT$dvbg" resolve="ModelCheckerViewer" />
          <node concept="37vLTw" id="2AAgPT$d_g$" role="37wK5m">
            <ref role="3cqZAo" node="3etVqSRRNub" resolve="project" />
          </node>
          <node concept="3clFbT" id="2AAgPT$d_I4" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3etVqSRRNua" role="3clF45" />
      <node concept="37vLTG" id="3etVqSRRNub" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3etVqSRRNuc" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AAgPT$d_I_" role="jymVt" />
    <node concept="3clFbW" id="2AAgPT$dvbg" role="jymVt">
      <node concept="3Tm1VV" id="2AAgPT$dvbh" role="1B3o_S" />
      <node concept="3clFbS" id="2AAgPT$dvbi" role="3clF47">
        <node concept="3clFbF" id="2AAgPT$dvbj" role="3cqZAp">
          <node concept="37vLTI" id="2AAgPT$dvbk" role="3clFbG">
            <node concept="37vLTw" id="2AAgPT$dvbl" role="37vLTx">
              <ref role="3cqZAo" node="2AAgPT$dvdu" resolve="project" />
            </node>
            <node concept="37vLTw" id="2AAgPT$dvbm" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRRNr6" resolve="myIdeaProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvbn" role="3cqZAp">
          <node concept="37vLTI" id="2AAgPT$dvbo" role="3clFbG">
            <node concept="2YIFZM" id="aCNsjIU7tY" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="aCNsjIU7tZ" role="37wK5m">
                <ref role="3cqZAo" node="2AAgPT$dvdu" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="2AAgPT$dvbr" role="37vLTJ">
              <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AAgPT$dvbs" role="3cqZAp" />
        <node concept="3clFbF" id="2AAgPT$dvbt" role="3cqZAp">
          <node concept="1rXfSq" id="2AAgPT$dvbu" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="2AAgPT$dvbv" role="37wK5m">
              <node concept="1pGfFk" id="2AAgPT$dvbw" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AAgPT$dvbx" role="3cqZAp">
          <node concept="3cpWsn" id="2AAgPT$dvby" role="3cpWs9">
            <property role="TrG5h" value="viewOptions" />
            <node concept="3uibUv" id="2AAgPT$dvbz" role="1tU5fm">
              <ref role="3uigEE" to="dsdj:~ViewOptions" resolve="ViewOptions" />
            </node>
            <node concept="2ShNRf" id="2AAgPT$dvb$" role="33vP2m">
              <node concept="1pGfFk" id="2AAgPT$dvb_" role="2ShVmc">
                <ref role="37wK5l" to="dsdj:~ViewOptions.&lt;init&gt;(boolean,boolean,boolean,boolean,boolean)" resolve="ViewOptions" />
                <node concept="3clFbT" id="2AAgPT$dvbA" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="2AAgPT$dvbB" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="3clFbT" id="2AAgPT$dvbC" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="3clFbT" id="2AAgPT$dvbD" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="3clFbT" id="2AAgPT$dvbE" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvbF" role="3cqZAp">
          <node concept="37vLTI" id="2AAgPT$dvbG" role="3clFbG">
            <node concept="2OqwBi" id="2AAgPT$dvbH" role="37vLTJ">
              <node concept="37vLTw" id="2AAgPT$dvbI" role="2Oq$k0">
                <ref role="3cqZAo" node="2AAgPT$dvby" resolve="viewOptions" />
              </node>
              <node concept="2OwXpG" id="2AAgPT$dvbJ" role="2OqNvi">
                <ref role="2Oxat5" to="dsdj:~ViewOptions.myCategories" resolve="myCategories" />
              </node>
            </node>
            <node concept="2ShNRf" id="2AAgPT$dvbK" role="37vLTx">
              <node concept="3g6Rrh" id="2AAgPT$dvbL" role="2ShVmc">
                <node concept="3clFbT" id="2AAgPT$dvbM" role="3g7hyw">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="10P_77" id="2AAgPT$dvbN" role="3g7fb8" />
                <node concept="3clFbT" id="2AAgPT$dvbO" role="3g7hyw">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AAgPT$dvbP" role="3cqZAp" />
        <node concept="3clFbF" id="2AAgPT$dvbQ" role="3cqZAp">
          <node concept="37vLTI" id="2AAgPT$dvbR" role="3clFbG">
            <node concept="2ShNRf" id="2AAgPT$dvbS" role="37vLTx">
              <node concept="1pGfFk" id="2AAgPT$dvbT" role="2ShVmc">
                <ref role="37wK5l" to="ngmm:~UsagesView.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions)" resolve="UsagesView" />
                <node concept="37vLTw" id="2AAgPT$dvbU" role="37wK5m">
                  <ref role="3cqZAo" node="2AAgPT$dvdu" resolve="project" />
                </node>
                <node concept="37vLTw" id="2AAgPT$dvbV" role="37wK5m">
                  <ref role="3cqZAo" node="2AAgPT$dvby" resolve="viewOptions" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2AAgPT$dvbW" role="37vLTJ">
              <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvbX" role="3cqZAp">
          <node concept="37vLTI" id="2AAgPT$dvbY" role="3clFbG">
            <node concept="37vLTw" id="2AAgPT$dvbZ" role="37vLTJ">
              <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
            </node>
            <node concept="2ShNRf" id="2AAgPT$dvc0" role="37vLTx">
              <node concept="1pGfFk" id="2AAgPT$dvc1" role="2ShVmc">
                <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.&lt;init&gt;(jetbrains.mps.ide.findusages.view.UsagesView,java.lang.String)" resolve="UsagesView.RerunAction" />
                <node concept="37vLTw" id="2AAgPT$dvc2" role="37wK5m">
                  <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
                </node>
                <node concept="Xl_RD" id="2AAgPT$dvc3" role="37wK5m">
                  <property role="Xl_RC" value="Check again" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvc4" role="3cqZAp">
          <node concept="2OqwBi" id="2AAgPT$dvc5" role="3clFbG">
            <node concept="37vLTw" id="2AAgPT$dvc6" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
            </node>
            <node concept="liA8E" id="2AAgPT$dvc7" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.setActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="setActions" />
              <node concept="37vLTw" id="2AAgPT$dvc8" role="37wK5m">
                <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
              </node>
              <node concept="2ShNRf" id="2AAgPT$dvc9" role="37wK5m">
                <node concept="1pGfFk" id="2AAgPT$dvca" role="2ShVmc">
                  <ref role="37wK5l" to="ngmm:~UsagesView$RebuildAction.&lt;init&gt;(jetbrains.mps.ide.findusages.view.UsagesView)" resolve="UsagesView.RebuildAction" />
                  <node concept="37vLTw" id="2AAgPT$dvcb" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2AAgPT$dvcc" role="37wK5m">
                <node concept="YeOm9" id="2AAgPT$dvcd" role="2ShVmc">
                  <node concept="1Y3b0j" id="2AAgPT$dvce" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="qkt:~AnAction" resolve="AnAction" />
                    <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
                    <node concept="3Tm1VV" id="2AAgPT$dvcf" role="1B3o_S" />
                    <node concept="3clFb_" id="2AAgPT$dvcg" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="actionPerformed" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="2AAgPT$dvch" role="1B3o_S" />
                      <node concept="3cqZAl" id="2AAgPT$dvci" role="3clF45" />
                      <node concept="37vLTG" id="2AAgPT$dvcj" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="2AAgPT$dvck" role="1tU5fm">
                          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                        </node>
                        <node concept="2AHcQZ" id="2AAgPT$dvcl" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2AAgPT$dvcm" role="3clF47">
                        <node concept="3clFbF" id="2AAgPT$dvcn" role="3cqZAp">
                          <node concept="2OqwBi" id="2AAgPT$dvco" role="3clFbG">
                            <node concept="liA8E" id="2AAgPT$dvcp" role="2OqNvi">
                              <ref role="37wK5l" node="3etVqSRRNuf" resolve="close" />
                            </node>
                            <node concept="Xjq3P" id="2AAgPT$dvcq" role="2Oq$k0">
                              <ref role="1HBi2w" node="3etVqSRRNr5" resolve="ModelCheckerViewer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2AAgPT$dvcr" role="37wK5m">
                      <property role="Xl_RC" value="Close" />
                    </node>
                    <node concept="Xl_RD" id="2AAgPT$dvcs" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="10M0yZ" id="2AAgPT$dvct" role="37wK5m">
                      <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
                      <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Cancel" resolve="Cancel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2AAgPT$dvcu" role="37wK5m">
                <node concept="2YIFZM" id="2AAgPT$dvcv" role="2Oq$k0">
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="2AAgPT$dvcw" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="10M0yZ" id="2AAgPT$dvcx" role="37wK5m">
                    <ref role="3cqZAo" to="qkt:~IdeActions.ACTION_PIN_ACTIVE_TAB" resolve="ACTION_PIN_ACTIVE_TAB" />
                    <ref role="1PxDUh" to="qkt:~IdeActions" resolve="IdeActions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvcy" role="3cqZAp">
          <node concept="2OqwBi" id="2AAgPT$dvcz" role="3clFbG">
            <node concept="liA8E" id="2AAgPT$dvc$" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.setCustomNodeRepresentator(jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator)" resolve="setCustomNodeRepresentator" />
              <node concept="2ShNRf" id="2AAgPT$dvc_" role="37wK5m">
                <node concept="1pGfFk" id="2AAgPT$dvcA" role="2ShVmc">
                  <ref role="37wK5l" node="3etVqSRRN$Y" resolve="ModelCheckerViewer.MyNodeRepresentator" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2AAgPT$dvcB" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvcC" role="3cqZAp">
          <node concept="1rXfSq" id="2AAgPT$dvcD" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2OqwBi" id="2AAgPT$dvcE" role="37wK5m">
              <node concept="liA8E" id="2AAgPT$dvcF" role="2OqNvi">
                <ref role="37wK5l" to="ngmm:~UsagesView.getComponent()" resolve="getComponent" />
              </node>
              <node concept="37vLTw" id="2AAgPT$dvcG" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
              </node>
            </node>
            <node concept="10M0yZ" id="2AAgPT$dvcH" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AAgPT$dvcI" role="3cqZAp" />
        <node concept="3cpWs8" id="2AAgPT$dvcJ" role="3cqZAp">
          <node concept="3cpWsn" id="2AAgPT$dvcK" role="3cpWs9">
            <property role="TrG5h" value="buttonPanel" />
            <node concept="2ShNRf" id="2AAgPT$dvcL" role="33vP2m">
              <node concept="1pGfFk" id="2AAgPT$dvcM" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="2AAgPT$dvcN" role="37wK5m">
                  <node concept="1pGfFk" id="2AAgPT$dvcO" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~FlowLayout.&lt;init&gt;(int)" resolve="FlowLayout" />
                    <node concept="10M0yZ" id="2AAgPT$dvcP" role="37wK5m">
                      <ref role="1PxDUh" to="z60i:~FlowLayout" resolve="FlowLayout" />
                      <ref role="3cqZAo" to="z60i:~FlowLayout.LEFT" resolve="LEFT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2AAgPT$dvcQ" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2AAgPT$dvcR" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojKW" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojKX" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojKY" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojKZ" role="1PaTwD">
              <property role="3oM_SC" value="button" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL0" role="1PaTwD">
              <property role="3oM_SC" value="might" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL1" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL2" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL3" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL4" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL5" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL6" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL7" role="1PaTwD">
              <property role="3oM_SC" value="above" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL8" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL9" role="1PaTwD">
              <property role="3oM_SC" value="button" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLa" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLb" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLc" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLd" role="1PaTwD">
              <property role="3oM_SC" value="pane)" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AAgPT$dvcT" role="3cqZAp">
          <node concept="3clFbS" id="2AAgPT$dvcU" role="3clFbx">
            <node concept="3clFbF" id="2AAgPT$dvcX" role="3cqZAp">
              <node concept="37vLTI" id="2AAgPT$dvcY" role="3clFbG">
                <node concept="37vLTw" id="2AAgPT$dvcZ" role="37vLTJ">
                  <ref role="3cqZAo" node="3etVqSRRNrr" resolve="myFixButton" />
                </node>
                <node concept="2ShNRf" id="2AAgPT$dvd0" role="37vLTx">
                  <node concept="1pGfFk" id="2AAgPT$dvd1" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                    <node concept="Xl_RD" id="2AAgPT$dvd2" role="37wK5m">
                      <property role="Xl_RC" value="Perform Quick Fixes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AAgPT$dvd3" role="3cqZAp">
              <node concept="2OqwBi" id="2AAgPT$dvd4" role="3clFbG">
                <node concept="liA8E" id="2AAgPT$dvd5" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                  <node concept="2ShNRf" id="2AAgPT$dvd6" role="37wK5m">
                    <node concept="YeOm9" id="2AAgPT$dvd7" role="2ShVmc">
                      <node concept="1Y3b0j" id="2AAgPT$dvd8" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="2AAgPT$dvd9" role="1B3o_S" />
                        <node concept="3clFb_" id="2AAgPT$dvda" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="actionPerformed" />
                          <node concept="3cqZAl" id="2AAgPT$dvdb" role="3clF45" />
                          <node concept="37vLTG" id="2AAgPT$dvdc" role="3clF46">
                            <property role="TrG5h" value="event" />
                            <node concept="3uibUv" id="2AAgPT$dvdd" role="1tU5fm">
                              <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2AAgPT$dvde" role="3clF47">
                            <node concept="3clFbF" id="2AAgPT$dvdf" role="3cqZAp">
                              <node concept="1rXfSq" id="2AAgPT$dvdg" role="3clFbG">
                                <ref role="37wK5l" node="3etVqSRRNuj" resolve="performQuickFixes" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="2AAgPT$dvdh" role="1B3o_S" />
                          <node concept="2AHcQZ" id="2AAgPT$dvdi" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2AAgPT$dvdj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRRNrr" resolve="myFixButton" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AAgPT$dvdk" role="3cqZAp">
              <node concept="2OqwBi" id="2AAgPT$dvdl" role="3clFbG">
                <node concept="liA8E" id="2AAgPT$dvdm" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="37vLTw" id="2AAgPT$dvdn" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRRNrr" resolve="myFixButton" />
                  </node>
                </node>
                <node concept="37vLTw" id="2AAgPT$dvdo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AAgPT$dvcK" resolve="buttonPanel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2AAgPT$dvcW" role="3clFbw">
            <ref role="3cqZAo" node="2AAgPT$dvdw" resolve="canFix" />
          </node>
        </node>
        <node concept="3clFbF" id="2AAgPT$dvdp" role="3cqZAp">
          <node concept="1rXfSq" id="2AAgPT$dvdq" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2AAgPT$dvdr" role="37wK5m">
              <ref role="3cqZAo" node="2AAgPT$dvcK" resolve="buttonPanel" />
            </node>
            <node concept="10M0yZ" id="2AAgPT$dvds" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.SOUTH" resolve="SOUTH" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2AAgPT$dvdt" role="3clF45" />
      <node concept="37vLTG" id="2AAgPT$dvdu" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2AAgPT$dvdv" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2AAgPT$dvdw" role="3clF46">
        <property role="TrG5h" value="canFix" />
        <node concept="10P_77" id="2AAgPT$dvdx" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRRNuf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="close" />
      <node concept="3clFbS" id="3etVqSRRNug" role="3clF47">
        <node concept="3SKdUt" id="3pNk_u$d7f8" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojLe" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojLf" role="1PaTwD">
              <property role="3oM_SC" value="no-op," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLg" role="1PaTwD">
              <property role="3oM_SC" value="override" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLh" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLi" role="1PaTwD">
              <property role="3oM_SC" value="react" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLj" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLk" role="1PaTwD">
              <property role="3oM_SC" value="view" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLl" role="1PaTwD">
              <property role="3oM_SC" value="close" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLm" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3etVqSRRNuh" role="1B3o_S" />
      <node concept="3cqZAl" id="3etVqSRRNui" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3etVqSRRNuj" role="jymVt">
      <property role="TrG5h" value="performQuickFixes" />
      <node concept="3clFbS" id="3etVqSRRNuk" role="3clF47">
        <node concept="3SKdUt" id="3etVqSRRNul" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojLn" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojLo" role="1PaTwD">
              <property role="3oM_SC" value="Ask" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLp" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLq" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLr" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLs" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRRNun" role="3cqZAp" />
        <node concept="3SKdUt" id="3etVqSRRNuo" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojLt" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojLu" role="1PaTwD">
              <property role="3oM_SC" value="Perform" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLv" role="1PaTwD">
              <property role="3oM_SC" value="quick" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLw" role="1PaTwD">
              <property role="3oM_SC" value="fixes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3etVqSRRNuq" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRRNur" role="3cpWs9">
            <property role="TrG5h" value="fixedTotal" />
            <node concept="10Oyi0" id="3etVqSRRNus" role="1tU5fm" />
            <node concept="3cmrfG" id="3etVqSRRNut" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4Va90T4Aps0" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojLx" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojLy" role="1PaTwD">
              <property role="3oM_SC" value="Select" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLz" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL$" role="1PaTwD">
              <property role="3oM_SC" value="fixable" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojL_" role="1PaTwD">
              <property role="3oM_SC" value="issues" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Va90T4Aps2" role="3cqZAp">
          <node concept="3cpWsn" id="4Va90T4Aps3" role="3cpWs9">
            <property role="TrG5h" value="issuesToFix" />
            <node concept="_YKpA" id="4Va90T4Aps4" role="1tU5fm">
              <node concept="3uibUv" id="13muGfOCOeZ" role="_ZDj9">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Va90T4Am78" role="33vP2m">
              <node concept="2ShNRf" id="4Va90T4A2cY" role="2Oq$k0">
                <node concept="1pGfFk" id="4Va90T4AlTR" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="4Va90T4AlU9" role="37wK5m">
                    <node concept="37vLTw" id="4Va90T4AlUa" role="2Oq$k0">
                      <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="4Va90T4AlUb" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Va90T4AnlS" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="4Va90T4Ao9F" role="37wK5m">
                  <node concept="3clFbS" id="4Va90T4Ao9G" role="1bW5cS">
                    <node concept="3clFbF" id="4Va90T4Apj5" role="3cqZAp">
                      <node concept="1rXfSq" id="4Va90T4Apj4" role="3clFbG">
                        <ref role="37wK5l" node="3etVqSRRNwd" resolve="getIssuesToFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3etVqSRRNuH" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRRNuI" role="3clFbx">
            <node concept="3clFbF" id="3etVqSRRNuJ" role="3cqZAp">
              <node concept="2YIFZM" id="3etVqSRRNuK" role="3clFbG">
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(java.lang.String,java.lang.String)" resolve="showInfoMessage" />
                <node concept="Xl_RD" id="3etVqSRRNuL" role="37wK5m">
                  <property role="Xl_RC" value="There are no quick fixes for current problems" />
                </node>
                <node concept="Xl_RD" id="3etVqSRRNuM" role="37wK5m">
                  <property role="Xl_RC" value="No Quick Fixes" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3etVqSRRNuN" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3etVqSRRNuO" role="3clFbw">
            <node concept="37vLTw" id="4Va90T4Ax7u" role="2Oq$k0">
              <ref role="3cqZAo" node="4Va90T4Aps3" resolve="issuesToFix" />
            </node>
            <node concept="1v1jN8" id="3etVqSRRNuQ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="3etVqSRRNuR" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRRNuS" role="3cpWs9">
            <property role="TrG5h" value="dialogAnswer" />
            <node concept="10Oyi0" id="3etVqSRRNuT" role="1tU5fm" />
            <node concept="2YIFZM" id="3etVqSRRNuU" role="33vP2m">
              <ref role="37wK5l" to="jkm4:~Messages.showYesNoDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoDialog" />
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <node concept="37vLTw" id="2K4NeDxBb$x" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRRNr6" resolve="myIdeaProject" />
              </node>
              <node concept="3cpWs3" id="3etVqSRRNuZ" role="37wK5m">
                <node concept="Xl_RD" id="3etVqSRRNv0" role="3uHU7w">
                  <property role="Xl_RC" value="You may not be able to undo it. Are you sure?" />
                </node>
                <node concept="Xl_RD" id="3etVqSRRNv1" role="3uHU7B">
                  <property role="Xl_RC" value="You are going to remove undeclared properties, children from nodes and resolve references. " />
                </node>
              </node>
              <node concept="Xl_RD" id="3etVqSRRNv2" role="37wK5m">
                <property role="Xl_RC" value="Warning" />
              </node>
              <node concept="10Nm6u" id="3etVqSRRNv3" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3etVqSRRNv4" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRRNv5" role="3clFbx">
            <node concept="3cpWs6" id="3etVqSRRNv6" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="3etVqSRRNv7" role="3clFbw">
            <node concept="3cmrfG" id="3etVqSRRNv8" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3GM_nagTvnm" role="3uHU7B">
              <ref role="3cqZAo" node="3etVqSRRNuS" resolve="dialogAnswer" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Va90T4Apq0" role="3cqZAp" />
        <node concept="3clFbF" id="3etVqSRRNuu" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRRNuv" role="3clFbG">
            <node concept="2OqwBi" id="2K4NeDxBmie" role="2Oq$k0">
              <node concept="37vLTw" id="2K4NeDxBlvJ" role="2Oq$k0">
                <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
              </node>
              <node concept="liA8E" id="2K4NeDxBnGN" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3etVqSRRNux" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
              <node concept="1bVj0M" id="3etVqSRRNuy" role="37wK5m">
                <node concept="3clFbS" id="3etVqSRRNuz" role="1bW5cS">
                  <node concept="2$JKZl" id="3etVqSRRNva" role="3cqZAp">
                    <node concept="3clFbS" id="3etVqSRRNvb" role="2LFqv$">
                      <node concept="3cpWs8" id="3etVqSRRNvc" role="3cqZAp">
                        <node concept="3cpWsn" id="3etVqSRRNvd" role="3cpWs9">
                          <property role="TrG5h" value="fixedBefore" />
                          <node concept="37vLTw" id="3GM_nagTrEY" role="33vP2m">
                            <ref role="3cqZAo" node="3etVqSRRNur" resolve="fixedTotal" />
                          </node>
                          <node concept="10Oyi0" id="3etVqSRRNvf" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="2Gpval" id="3etVqSRRNvg" role="3cqZAp">
                        <node concept="2GrKxI" id="3etVqSRRNvh" role="2Gsz3X">
                          <property role="TrG5h" value="issue" />
                        </node>
                        <node concept="2ShNRf" id="3etVqSRRNvi" role="2GsD0m">
                          <node concept="Tc6Ow" id="3etVqSRRNvj" role="2ShVmc">
                            <node concept="37vLTw" id="4Va90T4BckF" role="I$8f6">
                              <ref role="3cqZAo" node="4Va90T4Aps3" resolve="issuesToFix" />
                            </node>
                            <node concept="3uibUv" id="13muGfOCQ3P" role="HW$YZ">
                              <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="3etVqSRRNvm" role="2LFqv$">
                          <node concept="3cpWs8" id="13muGfOCWsA" role="3cqZAp">
                            <node concept="3cpWsn" id="13muGfOCWsB" role="3cpWs9">
                              <property role="TrG5h" value="quickFix" />
                              <node concept="3uibUv" id="13muGfOCWrG" role="1tU5fm">
                                <ref role="3uigEE" to="d6hs:~QuickFixBase" resolve="QuickFixBase" />
                              </node>
                              <node concept="2OqwBi" id="13muGfOCWsC" role="33vP2m">
                                <node concept="10M0yZ" id="13muGfOCWsD" role="2Oq$k0">
                                  <ref role="3cqZAo" to="d6hs:~QuickFixReportItem.FLAVOUR_QUICKFIX" resolve="FLAVOUR_QUICKFIX" />
                                  <ref role="1PxDUh" to="d6hs:~QuickFixReportItem" resolve="QuickFixReportItem" />
                                </node>
                                <node concept="liA8E" id="13muGfOCWsE" role="2OqNvi">
                                  <ref role="37wK5l" to="d6hs:~QuickFixReportItem$QuickFixFlavour.getAutoApplicable(jetbrains.mps.errors.item.ReportItem)" resolve="getAutoApplicable" />
                                  <node concept="2GrUjf" id="13muGfOCWsF" role="37wK5m">
                                    <ref role="2Gs0qQ" node="3etVqSRRNvh" resolve="issue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="13muGfOEuBT" role="3cqZAp">
                            <node concept="3cpWsn" id="13muGfOEuBU" role="3cpWs9">
                              <property role="TrG5h" value="alive" />
                              <node concept="10P_77" id="13muGfOEuBa" role="1tU5fm" />
                              <node concept="1Wc70l" id="13muGfOEuBV" role="33vP2m">
                                <node concept="3y3z36" id="13muGfOEuBW" role="3uHU7B">
                                  <node concept="2OqwBi" id="13muGfOEuBX" role="3uHU7B">
                                    <node concept="2OqwBi" id="13muGfOEuBY" role="2Oq$k0">
                                      <node concept="10M0yZ" id="13muGfOEuBZ" role="2Oq$k0">
                                        <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.PATH_OBJECT" resolve="PATH_OBJECT" />
                                        <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                                      </node>
                                      <node concept="liA8E" id="13muGfOEuC0" role="2OqNvi">
                                        <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.get(jetbrains.mps.errors.item.FlavouredItem)" resolve="get" />
                                        <node concept="2GrUjf" id="13muGfOEuC1" role="37wK5m">
                                          <ref role="2Gs0qQ" node="3etVqSRRNvh" resolve="issue" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="13muGfOEuC2" role="2OqNvi">
                                      <ref role="37wK5l" to="d6hs:~IssueKindReportItem$PathObject.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                      <node concept="2OqwBi" id="13muGfOEuC3" role="37wK5m">
                                        <node concept="37vLTw" id="13muGfOEuC4" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
                                        </node>
                                        <node concept="liA8E" id="13muGfOEuC5" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="10Nm6u" id="13muGfOEuC6" role="3uHU7w" />
                                </node>
                                <node concept="2OqwBi" id="13muGfOEuC7" role="3uHU7w">
                                  <node concept="37vLTw" id="13muGfOEuC8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="13muGfOCWsB" resolve="quickFix" />
                                  </node>
                                  <node concept="liA8E" id="13muGfOEuC9" role="2OqNvi">
                                    <ref role="37wK5l" to="d6hs:~QuickFixBase.isAlive(org.jetbrains.mps.openapi.module.SRepository)" resolve="isAlive" />
                                    <node concept="2OqwBi" id="13muGfOEuCa" role="37wK5m">
                                      <node concept="37vLTw" id="13muGfOEuCb" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
                                      </node>
                                      <node concept="liA8E" id="13muGfOEuCc" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="13muGfOE$ZG" role="3cqZAp">
                            <node concept="3clFbS" id="13muGfOE$ZI" role="3clFbx">
                              <node concept="3clFbF" id="13muGfOCRWM" role="3cqZAp">
                                <node concept="2OqwBi" id="13muGfOD2je" role="3clFbG">
                                  <node concept="37vLTw" id="13muGfOCWsG" role="2Oq$k0">
                                    <ref role="3cqZAo" node="13muGfOCWsB" resolve="quickFix" />
                                  </node>
                                  <node concept="liA8E" id="13muGfOD2OG" role="2OqNvi">
                                    <ref role="37wK5l" to="d6hs:~QuickFixBase.execute(org.jetbrains.mps.openapi.module.SRepository)" resolve="execute" />
                                    <node concept="2OqwBi" id="13muGfOD7Dr" role="37wK5m">
                                      <node concept="37vLTw" id="13muGfOD5uv" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
                                      </node>
                                      <node concept="liA8E" id="13muGfODaMQ" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="3etVqSRRNvs" role="3cqZAp">
                                <node concept="3uNrnE" id="3etVqSRRNvt" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagT_jW" role="2$L3a6">
                                    <ref role="3cqZAo" node="3etVqSRRNur" resolve="fixedTotal" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="3etVqSRRNvv" role="3cqZAp">
                                <node concept="2OqwBi" id="3etVqSRRNvw" role="3clFbG">
                                  <node concept="37vLTw" id="4Va90T4Bd48" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4Va90T4Aps3" resolve="issuesToFix" />
                                  </node>
                                  <node concept="3dhRuq" id="3etVqSRRNvy" role="2OqNvi">
                                    <node concept="2GrUjf" id="3etVqSRRNvz" role="25WWJ7">
                                      <ref role="2Gs0qQ" node="3etVqSRRNvh" resolve="issue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="13muGfOEAfg" role="3clFbw">
                              <ref role="3cqZAo" node="13muGfOEuBU" resolve="alive" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3etVqSRRNv$" role="3cqZAp">
                        <node concept="3clFbS" id="3etVqSRRNv_" role="3clFbx">
                          <node concept="3zACq4" id="3etVqSRRNvA" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="3etVqSRRNvB" role="3clFbw">
                          <node concept="37vLTw" id="3GM_nagTvcx" role="3uHU7w">
                            <ref role="3cqZAo" node="3etVqSRRNur" resolve="fixedTotal" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTvN9" role="3uHU7B">
                            <ref role="3cqZAo" node="3etVqSRRNvd" resolve="fixedBefore" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbT" id="3etVqSRRNvE" role="2$JKZa">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRRNvF" role="3cqZAp" />
        <node concept="3SKdUt" id="3etVqSRRNvG" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojLA" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojLB" role="1PaTwD">
              <property role="3oM_SC" value="Perform" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLC" role="1PaTwD">
              <property role="3oM_SC" value="recheck" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLD" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojLE" role="1PaTwD">
              <property role="3oM_SC" value="needed" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3etVqSRRNvI" role="3cqZAp">
          <node concept="3y3z36" id="3etVqSRRNvJ" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTrNO" role="3uHU7B">
              <ref role="3cqZAo" node="3etVqSRRNur" resolve="fixedTotal" />
            </node>
            <node concept="3cmrfG" id="3etVqSRRNvL" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="3etVqSRRNvM" role="3clFbx">
            <node concept="3cpWs8" id="3etVqSRRNvN" role="3cqZAp">
              <node concept="3cpWsn" id="3etVqSRRNvO" role="3cpWs9">
                <property role="TrG5h" value="dialogAnswer1" />
                <node concept="2YIFZM" id="3etVqSRRNvP" role="33vP2m">
                  <ref role="37wK5l" to="jkm4:~Messages.showYesNoDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoDialog" />
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <node concept="37vLTw" id="2K4NeDxBcor" role="37wK5m">
                    <ref role="3cqZAo" node="3etVqSRRNr6" resolve="myIdeaProject" />
                  </node>
                  <node concept="3cpWs3" id="3etVqSRRNvU" role="37wK5m">
                    <node concept="3cpWs3" id="3etVqSRRNvV" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTBk5" role="3uHU7w">
                        <ref role="3cqZAo" node="3etVqSRRNur" resolve="fixedTotal" />
                      </node>
                      <node concept="Xl_RD" id="3etVqSRRNvX" role="3uHU7B">
                        <property role="Xl_RC" value="Model checker fixed " />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3etVqSRRNvY" role="3uHU7w">
                      <property role="Xl_RC" value=" issues. Do you wish to recheck?" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3etVqSRRNvZ" role="37wK5m">
                    <property role="Xl_RC" value="Recheck" />
                  </node>
                  <node concept="10Nm6u" id="3etVqSRRNw0" role="37wK5m" />
                </node>
                <node concept="10Oyi0" id="3etVqSRRNw1" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbJ" id="3etVqSRRNw2" role="3cqZAp">
              <node concept="3y3z36" id="3etVqSRRNw3" role="3clFbw">
                <node concept="3cmrfG" id="3etVqSRRNw4" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$E9" role="3uHU7B">
                  <ref role="3cqZAo" node="3etVqSRRNvO" resolve="dialogAnswer1" />
                </node>
              </node>
              <node concept="3clFbS" id="3etVqSRRNw6" role="3clFbx">
                <node concept="3cpWs6" id="3etVqSRRNw7" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbH" id="3etVqSRRNw8" role="3cqZAp" />
            <node concept="3clFbF" id="3etVqSRRNw9" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz80Z" role="3clFbG">
                <ref role="37wK5l" node="3pNk_u$eEI5" resolve="doReCheck" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRRNwb" role="1B3o_S" />
      <node concept="3cqZAl" id="3etVqSRRNwc" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3etVqSRRNwd" role="jymVt">
      <property role="TrG5h" value="getIssuesToFix" />
      <node concept="_YKpA" id="3etVqSRRNwe" role="3clF45">
        <node concept="3uibUv" id="13muGfOCrIX" role="_ZDj9">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3etVqSRRNwg" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRRNwh" role="3clF47">
        <node concept="3cpWs8" id="3etVqSRRNwi" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRRNwj" role="3cpWs9">
            <property role="TrG5h" value="includedResultNodes" />
            <node concept="2hMVRd" id="3etVqSRRNwk" role="1tU5fm">
              <node concept="3uibUv" id="3etVqSRRNwl" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="3etVqSRRNwm" role="33vP2m">
              <node concept="2i4dXS" id="3etVqSRRNwn" role="2ShVmc">
                <node concept="3uibUv" id="3etVqSRRNwo" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="3etVqSRRNwp" role="I$8f6">
                  <node concept="37vLTw" id="2BHiRxeuXzg" role="2Oq$k0">
                    <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
                  </node>
                  <node concept="liA8E" id="3etVqSRRNwr" role="2OqNvi">
                    <ref role="37wK5l" to="ngmm:~UsagesView.getIncludedResultNodes()" resolve="getIncludedResultNodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4YlbRIPpX$9" role="3cqZAp">
          <node concept="3cpWsn" id="4YlbRIPpX$a" role="3cpWs9">
            <property role="TrG5h" value="includedResultModels" />
            <node concept="2hMVRd" id="4YlbRIPpX$b" role="1tU5fm">
              <node concept="3uibUv" id="4YlbRIPq9Jc" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="4YlbRIPpX$d" role="33vP2m">
              <node concept="2i4dXS" id="4YlbRIPpX$e" role="2ShVmc">
                <node concept="3uibUv" id="4YlbRIPqcQU" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="4YlbRIPpX$g" role="I$8f6">
                  <node concept="37vLTw" id="4YlbRIPpX$h" role="2Oq$k0">
                    <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
                  </node>
                  <node concept="liA8E" id="4YlbRIPq5r4" role="2OqNvi">
                    <ref role="37wK5l" to="ngmm:~UsagesView.getIncludedModels()" resolve="getIncludedModels" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="13muGfOwQrO" role="3cqZAp">
          <node concept="3cpWsn" id="13muGfOwQrP" role="3cpWs9">
            <property role="TrG5h" value="searchResults" />
            <node concept="_YKpA" id="13muGfOwTjO" role="1tU5fm">
              <node concept="3uibUv" id="13muGfOwTjQ" role="_ZDj9">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3uibUv" id="13muGfOyTvw" role="11_B2D">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="13muGfOwQrQ" role="33vP2m">
              <node concept="liA8E" id="13muGfOwQrR" role="2OqNvi">
                <ref role="37wK5l" to="9erk:~SearchResults.getSearchResults()" resolve="getSearchResults" />
              </node>
              <node concept="1rXfSq" id="13muGfOwQrS" role="2Oq$k0">
                <ref role="37wK5l" node="3etVqSRRN$O" resolve="getSearchResults" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRRNws" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRRNwt" role="3cqZAk">
            <node concept="ANE8D" id="3etVqSRRNwu" role="2OqNvi" />
            <node concept="2OqwBi" id="13muGfOCxty" role="2Oq$k0">
              <node concept="2OqwBi" id="3etVqSRRNwv" role="2Oq$k0">
                <node concept="3zZkjj" id="3etVqSRRNww" role="2OqNvi">
                  <node concept="1bVj0M" id="3etVqSRRNwx" role="23t8la">
                    <node concept="3clFbS" id="3etVqSRRNwy" role="1bW5cS">
                      <node concept="3cpWs8" id="13muGfOyNd9" role="3cqZAp">
                        <node concept="3cpWsn" id="13muGfOyNda" role="3cpWs9">
                          <property role="TrG5h" value="reportItem" />
                          <node concept="3uibUv" id="13muGfOz1dU" role="1tU5fm">
                            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                          </node>
                          <node concept="2OqwBi" id="13muGfOyNdb" role="33vP2m">
                            <node concept="37vLTw" id="13muGfOyNdc" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XyM" resolve="sr" />
                            </node>
                            <node concept="liA8E" id="13muGfOyNdd" role="2OqNvi">
                              <ref role="37wK5l" to="9erk:~SearchResult.getObject()" resolve="getObject" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="13muGfO$fHt" role="3cqZAp">
                        <node concept="3cpWsn" id="13muGfO$fHu" role="3cpWs9">
                          <property role="TrG5h" value="quickFix" />
                          <node concept="3uibUv" id="13muGfO$fHr" role="1tU5fm">
                            <ref role="3uigEE" to="d6hs:~QuickFixBase" resolve="QuickFixBase" />
                          </node>
                          <node concept="2OqwBi" id="13muGfO$fHv" role="33vP2m">
                            <node concept="10M0yZ" id="13muGfO$fHw" role="2Oq$k0">
                              <ref role="3cqZAo" to="d6hs:~QuickFixReportItem.FLAVOUR_QUICKFIX" resolve="FLAVOUR_QUICKFIX" />
                              <ref role="1PxDUh" to="d6hs:~QuickFixReportItem" resolve="QuickFixReportItem" />
                            </node>
                            <node concept="liA8E" id="13muGfO$fHx" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~QuickFixReportItem$QuickFixFlavour.getAutoApplicable(jetbrains.mps.errors.item.ReportItem)" resolve="getAutoApplicable" />
                              <node concept="37vLTw" id="13muGfO$fHy" role="37wK5m">
                                <ref role="3cqZAo" node="13muGfOyNda" resolve="reportItem" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="13muGfOxubz" role="3cqZAp">
                        <node concept="3cpWsn" id="13muGfOxub$" role="3cpWs9">
                          <property role="TrG5h" value="fixable" />
                          <node concept="10P_77" id="13muGfOxub5" role="1tU5fm" />
                          <node concept="3y3z36" id="13muGfO$tnL" role="33vP2m">
                            <node concept="10Nm6u" id="13muGfO$wh8" role="3uHU7w" />
                            <node concept="37vLTw" id="13muGfO$fHz" role="3uHU7B">
                              <ref role="3cqZAo" node="13muGfO$fHu" resolve="quickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="51LD6SfMV1R" role="3cqZAp">
                        <node concept="3cpWsn" id="51LD6SfMV1S" role="3cpWs9">
                          <property role="TrG5h" value="isNodeIssueAndFixable" />
                          <node concept="10P_77" id="51LD6SfMV08" role="1tU5fm" />
                          <node concept="1Wc70l" id="51LD6SfMV1T" role="33vP2m">
                            <node concept="1Wc70l" id="51LD6SfMV1U" role="3uHU7B">
                              <node concept="2OqwBi" id="51LD6SfMV1V" role="3uHU7w">
                                <node concept="3JPx81" id="51LD6SfMV1W" role="2OqNvi">
                                  <node concept="2OqwBi" id="13muGfOBxGh" role="25WWJ7">
                                    <node concept="10M0yZ" id="13muGfOBuXU" role="2Oq$k0">
                                      <ref role="3cqZAo" to="d6hs:~NodeFlavouredItem.FLAVOUR_NODE" resolve="FLAVOUR_NODE" />
                                      <ref role="1PxDUh" to="d6hs:~NodeFlavouredItem" resolve="NodeFlavouredItem" />
                                    </node>
                                    <node concept="liA8E" id="13muGfOB$H9" role="2OqNvi">
                                      <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.tryToGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="tryToGet" />
                                      <node concept="37vLTw" id="13muGfOBC6w" role="37wK5m">
                                        <ref role="3cqZAo" node="13muGfOyNda" resolve="reportItem" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="51LD6SfMV26" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3etVqSRRNwj" resolve="includedResultNodes" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="13muGfOBEVN" role="3uHU7B">
                                <node concept="10M0yZ" id="13muGfOBEVO" role="2Oq$k0">
                                  <ref role="3cqZAo" to="d6hs:~NodeFlavouredItem.FLAVOUR_NODE" resolve="FLAVOUR_NODE" />
                                  <ref role="1PxDUh" to="d6hs:~NodeFlavouredItem" resolve="NodeFlavouredItem" />
                                </node>
                                <node concept="liA8E" id="13muGfOBEVP" role="2OqNvi">
                                  <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.canGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="canGet" />
                                  <node concept="37vLTw" id="13muGfOBEVQ" role="37wK5m">
                                    <ref role="3cqZAo" node="13muGfOyNda" resolve="reportItem" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="13muGfOxubC" role="3uHU7w">
                              <ref role="3cqZAo" node="13muGfOxub$" resolve="fixable" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="51LD6SfNbBd" role="3cqZAp">
                        <node concept="3cpWsn" id="51LD6SfNbBe" role="3cpWs9">
                          <property role="TrG5h" value="isModelIssueAndFixable" />
                          <node concept="10P_77" id="51LD6SfNbAh" role="1tU5fm" />
                          <node concept="1Wc70l" id="51LD6SfNbBf" role="33vP2m">
                            <node concept="37vLTw" id="13muGfOxubD" role="3uHU7w">
                              <ref role="3cqZAo" node="13muGfOxub$" resolve="fixable" />
                            </node>
                            <node concept="1Wc70l" id="51LD6SfNbBj" role="3uHU7B">
                              <node concept="2OqwBi" id="51LD6SfNbBk" role="3uHU7w">
                                <node concept="3JPx81" id="51LD6SfNbBl" role="2OqNvi">
                                  <node concept="10QFUN" id="13muGfOE2au" role="25WWJ7">
                                    <node concept="2OqwBi" id="13muGfOE2ar" role="10QFUP">
                                      <node concept="37vLTw" id="13muGfOE2as" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0XyM" resolve="sr" />
                                      </node>
                                      <node concept="liA8E" id="13muGfOE2at" role="2OqNvi">
                                        <ref role="37wK5l" to="9erk:~SearchResult.getPathObject()" resolve="getPathObject" />
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="13muGfOE571" role="10QFUM">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="51LD6SfNbBs" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4YlbRIPpX$a" resolve="includedResultModels" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="13muGfOBRfn" role="3uHU7B">
                                <node concept="10M0yZ" id="13muGfOBX5F" role="2Oq$k0">
                                  <ref role="3cqZAo" to="d6hs:~ModelFlavouredItem.FLAVOUR_MODEL" resolve="FLAVOUR_MODEL" />
                                  <ref role="1PxDUh" to="d6hs:~ModelFlavouredItem" resolve="ModelFlavouredItem" />
                                </node>
                                <node concept="liA8E" id="13muGfOBRfp" role="2OqNvi">
                                  <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.canGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="canGet" />
                                  <node concept="37vLTw" id="13muGfOBRfq" role="37wK5m">
                                    <ref role="3cqZAo" node="13muGfOyNda" resolve="reportItem" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="13muGfO$_wu" role="3cqZAp">
                        <node concept="22lmx$" id="13muGfO$_wv" role="3cqZAk">
                          <node concept="37vLTw" id="13muGfO$_ww" role="3uHU7w">
                            <ref role="3cqZAo" node="51LD6SfNbBe" resolve="isModelIssueAndFixable" />
                          </node>
                          <node concept="37vLTw" id="13muGfO$_wx" role="3uHU7B">
                            <ref role="3cqZAo" node="51LD6SfMV1S" resolve="isNodeIssueAndFixable" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XyM" role="1bW2Oz">
                      <property role="TrG5h" value="sr" />
                      <node concept="2jxLKc" id="5W7E4fV0XyN" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="13muGfOx2$L" role="2Oq$k0">
                  <ref role="3cqZAo" node="13muGfOwQrP" resolve="searchResults" />
                </node>
              </node>
              <node concept="3$u5V9" id="13muGfOC_4Z" role="2OqNvi">
                <node concept="1bVj0M" id="13muGfOC_51" role="23t8la">
                  <node concept="3clFbS" id="13muGfOC_52" role="1bW5cS">
                    <node concept="3clFbF" id="13muGfOCCj3" role="3cqZAp">
                      <node concept="2OqwBi" id="13muGfOCEXR" role="3clFbG">
                        <node concept="37vLTw" id="13muGfOCCj2" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XyO" resolve="it" />
                        </node>
                        <node concept="liA8E" id="13muGfOCHSd" role="2OqNvi">
                          <ref role="37wK5l" to="9erk:~SearchResult.getObject()" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XyO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XyP" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4YlbRIPpU3A" role="3cqZAp" />
      </node>
    </node>
    <node concept="3clFb_" id="3pNk_uzZRhM" role="jymVt">
      <property role="TrG5h" value="checkModules" />
      <node concept="37vLTG" id="3pNk_u$01W0" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="_YKpA" id="3pNk_u$01W1" role="1tU5fm">
          <node concept="3uibUv" id="3pNk_u$01W2" role="_ZDj9">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$04z4" role="3clF46">
        <property role="TrG5h" value="taskTargetTitle" />
        <node concept="17QB3L" id="3pNk_u$04z5" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3pNk_uzZRhO" role="3clF45" />
      <node concept="3clFbS" id="3pNk_uzZRhQ" role="3clF47">
        <node concept="3cpWs8" id="6MDTP4X5hDk" role="3cqZAp">
          <node concept="3cpWsn" id="6MDTP4X5hDl" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="6MDTP4X5hDm" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
            </node>
            <node concept="1rXfSq" id="6MDTP4X5rdB" role="33vP2m">
              <ref role="37wK5l" node="2$1L9HI8KW2" resolve="newModelChecker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MDTP4X5s0x" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X5sjK" role="3clFbG">
            <node concept="37vLTw" id="6MDTP4X5s0v" role="2Oq$k0">
              <ref role="3cqZAo" node="6MDTP4X5hDl" resolve="f" />
            </node>
            <node concept="liA8E" id="6MDTP4X5sF4" role="2OqNvi">
              <ref role="37wK5l" node="6MDTP4X3VLG" resolve="addModuleScope" />
              <node concept="37vLTw" id="6MDTP4X5t4V" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$01W0" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$19jt" role="3cqZAp">
          <node concept="1rXfSq" id="3pNk_u$19jr" role="3clFbG">
            <ref role="37wK5l" node="6MDTP4X3tlE" resolve="runCheck" />
            <node concept="37vLTw" id="6MDTP4X5tLv" role="37wK5m">
              <ref role="3cqZAo" node="6MDTP4X5hDl" resolve="f" />
            </node>
            <node concept="37vLTw" id="3pNk_u$19WE" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$04z4" resolve="taskTargetTitle" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3pNk_u$1dtP" role="jymVt">
      <property role="TrG5h" value="checkModels" />
      <node concept="37vLTG" id="3pNk_u$1dtQ" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="_YKpA" id="3pNk_u$1dtR" role="1tU5fm">
          <node concept="3uibUv" id="3pNk_u$1h2F" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$1dtT" role="3clF46">
        <property role="TrG5h" value="taskTargetTitle" />
        <node concept="17QB3L" id="3pNk_u$1dtU" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3pNk_u$1dtV" role="3clF45" />
      <node concept="3clFbS" id="3pNk_u$1dtW" role="3clF47">
        <node concept="3cpWs8" id="6MDTP4X5tTt" role="3cqZAp">
          <node concept="3cpWsn" id="6MDTP4X5tTu" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="6MDTP4X5tTs" role="1tU5fm">
              <ref role="3uigEE" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
            </node>
            <node concept="1rXfSq" id="6MDTP4X5tTv" role="33vP2m">
              <ref role="37wK5l" node="2$1L9HI8KW2" resolve="newModelChecker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MDTP4X5vji" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X5v_V" role="3clFbG">
            <node concept="37vLTw" id="6MDTP4X5vjg" role="2Oq$k0">
              <ref role="3cqZAo" node="6MDTP4X5tTu" resolve="f" />
            </node>
            <node concept="liA8E" id="6MDTP4X5vWb" role="2OqNvi">
              <ref role="37wK5l" node="6MDTP4X3QBK" resolve="addModelScope" />
              <node concept="37vLTw" id="6MDTP4X5wm2" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$1dtQ" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$1dtX" role="3cqZAp">
          <node concept="1rXfSq" id="3pNk_u$1dtY" role="3clFbG">
            <ref role="37wK5l" node="6MDTP4X3tlE" resolve="runCheck" />
            <node concept="37vLTw" id="6MDTP4X5xOh" role="37wK5m">
              <ref role="3cqZAo" node="6MDTP4X5tTu" resolve="f" />
            </node>
            <node concept="37vLTw" id="3pNk_u$1du9" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$1dtT" resolve="taskTargetTitle" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3pNk_u$10Mf" role="jymVt">
      <property role="TrG5h" value="runCheck" />
      <node concept="3cqZAl" id="3pNk_u$10Mh" role="3clF45" />
      <node concept="3clFbS" id="3pNk_u$10Mj" role="3clF47">
        <node concept="3clFbF" id="3pNk_u$0c2d" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$0c2e" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$0c2f" role="2Oq$k0">
              <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
            </node>
            <node concept="liA8E" id="3pNk_u$0c2g" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.setProgressText(java.lang.String)" resolve="setProgressText" />
              <node concept="2YIFZM" id="3pNk_u$1bBY" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="3pNk_u$1c0H" role="37wK5m">
                  <property role="Xl_RC" value="Checking %s" />
                </node>
                <node concept="37vLTw" id="3pNk_u$1deX" role="37wK5m">
                  <ref role="3cqZAo" node="3pNk_u$13LA" resolve="taskTargetTitle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$0c2i" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$0c2j" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$0c2k" role="2Oq$k0">
              <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
            </node>
            <node concept="liA8E" id="3pNk_u$0c2l" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.setRunOptions(jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery)" resolve="setRunOptions" />
              <node concept="37vLTw" id="3pNk_u$0c2m" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$7COH" resolve="resultProvider" />
              </node>
              <node concept="37vLTw" id="3pNk_u$0c2n" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$13Is" resolve="searchQuery" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$eW2v" role="3cqZAp">
          <node concept="1rXfSq" id="3pNk_u$eW2t" role="3clFbG">
            <ref role="37wK5l" node="3pNk_u$eEI5" resolve="doReCheck" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$7COH" role="3clF46">
        <property role="TrG5h" value="resultProvider" />
        <node concept="3uibUv" id="3pNk_u$7MBs" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~IResultProvider" resolve="IResultProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$13Is" role="3clF46">
        <property role="TrG5h" value="searchQuery" />
        <node concept="3uibUv" id="3pNk_u$1a0A" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchQuery" resolve="SearchQuery" />
        </node>
      </node>
      <node concept="37vLTG" id="3pNk_u$13LA" role="3clF46">
        <property role="TrG5h" value="taskTargetTitle" />
        <node concept="17QB3L" id="3pNk_u$13Ov" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6MDTP4X3tlE" role="jymVt">
      <property role="TrG5h" value="runCheck" />
      <node concept="3cqZAl" id="6MDTP4X3tlF" role="3clF45" />
      <node concept="3clFbS" id="6MDTP4X3tlG" role="3clF47">
        <node concept="3clFbF" id="6MDTP4X3tlH" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X3tlI" role="3clFbG">
            <node concept="37vLTw" id="6MDTP4X3tlJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
            </node>
            <node concept="liA8E" id="6MDTP4X3tlK" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.setProgressText(java.lang.String)" resolve="setProgressText" />
              <node concept="2YIFZM" id="6MDTP4X3tlL" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="6MDTP4X3tlM" role="37wK5m">
                  <property role="Xl_RC" value="Checking %s" />
                </node>
                <node concept="37vLTw" id="6MDTP4X3tlN" role="37wK5m">
                  <ref role="3cqZAo" node="6MDTP4X3tm0" resolve="taskTargetTitle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MDTP4X3tlO" role="3cqZAp">
          <node concept="2OqwBi" id="6MDTP4X3tlP" role="3clFbG">
            <node concept="37vLTw" id="6MDTP4X3tlQ" role="2Oq$k0">
              <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
            </node>
            <node concept="liA8E" id="6MDTP4X3tlR" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.setRunOptions(jetbrains.mps.ide.findusages.model.SearchTask)" resolve="setRunOptions" />
              <node concept="37vLTw" id="6MDTP4X3tlS" role="37wK5m">
                <ref role="3cqZAo" node="6MDTP4X3tlW" resolve="searchTask" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MDTP4X3tlU" role="3cqZAp">
          <node concept="1rXfSq" id="6MDTP4X3tlV" role="3clFbG">
            <ref role="37wK5l" node="3pNk_u$eEI5" resolve="doReCheck" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MDTP4X3tlW" role="3clF46">
        <property role="TrG5h" value="searchTask" />
        <node concept="3uibUv" id="6MDTP4X3$Nw" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchTask" resolve="SearchTask" />
        </node>
      </node>
      <node concept="37vLTG" id="6MDTP4X3tm0" role="3clF46">
        <property role="TrG5h" value="taskTargetTitle" />
        <node concept="17QB3L" id="6MDTP4X3tm1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MDTP4X3qu5" role="jymVt" />
    <node concept="3clFb_" id="3pNk_u$eEI5" role="jymVt">
      <property role="TrG5h" value="doReCheck" />
      <node concept="3cqZAl" id="3pNk_u$eEI7" role="3clF45" />
      <node concept="3Tm6S6" id="3pNk_u$eHII" role="1B3o_S" />
      <node concept="3clFbS" id="3pNk_u$eEI9" role="3clF47">
        <node concept="3clFbF" id="5yprode0K69" role="3cqZAp">
          <node concept="2YIFZM" id="5yprode0SUw" role="3clFbG">
            <ref role="37wK5l" to="8rsk:~ActionUtil.performAction(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.AnActionEvent)" resolve="performAction" />
            <ref role="1Pybhc" to="8rsk:~ActionUtil" resolve="ActionUtil" />
            <node concept="37vLTw" id="5yprode0YJi" role="37wK5m">
              <ref role="3cqZAo" node="2RCLviz0hXd" resolve="myCheckAction" />
            </node>
            <node concept="2YIFZM" id="5yprode19Ow" role="37wK5m">
              <ref role="37wK5l" to="8rsk:~ActionUtil.createEmptyEvent()" resolve="createEmptyEvent" />
              <ref role="1Pybhc" to="8rsk:~ActionUtil" resolve="ActionUtil" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3etVqSRRN$w" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="3etVqSRRN$x" role="3clF45" />
      <node concept="3clFbS" id="3etVqSRRN$y" role="3clF47">
        <node concept="3clFbF" id="3etVqSRRN$z" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRRN$$" role="3clFbG">
            <node concept="liA8E" id="3etVqSRRN$_" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.dispose()" resolve="dispose" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuqSv" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRRN$B" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3etVqSRRN$O" role="jymVt">
      <property role="TrG5h" value="getSearchResults" />
      <node concept="3clFbS" id="3etVqSRRN$P" role="3clF47">
        <node concept="3cpWs6" id="3etVqSRRN$Q" role="3cqZAp">
          <node concept="2OqwBi" id="3etVqSRRN$R" role="3cqZAk">
            <node concept="liA8E" id="3etVqSRRN$S" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.getSearchResults()" resolve="getSearchResults" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuxMo" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRRN$U" role="1B3o_S" />
      <node concept="3uibUv" id="3etVqSRRN$V" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        <node concept="3uibUv" id="13muGfOw5ZW" role="11_B2D">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2cahkxOqC__" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="3bKt22a04PA" role="jymVt">
      <property role="TrG5h" value="setSearchResults" />
      <node concept="37vLTG" id="3bKt22a0tVv" role="3clF46">
        <property role="TrG5h" value="issues" />
        <node concept="3uibUv" id="3bKt22a04PH" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
          <node concept="3uibUv" id="13muGfOF4zD" role="11_B2D">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3bKt22a04PB" role="3clF47">
        <node concept="3clFbF" id="3bKt22a0zS_" role="3cqZAp">
          <node concept="2OqwBi" id="3bKt22a0Au$" role="3clFbG">
            <node concept="37vLTw" id="3bKt22a0zSz" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRRNrc" resolve="myUsagesView" />
            </node>
            <node concept="liA8E" id="3bKt22a0B37" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.setContents(jetbrains.mps.ide.findusages.model.SearchResults)" resolve="setContents" />
              <node concept="37vLTw" id="3bKt22a0BgB" role="37wK5m">
                <ref role="3cqZAo" node="3bKt22a0tVv" resolve="issues" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3bKt22a04PG" role="1B3o_S" />
      <node concept="3cqZAl" id="3bKt22a0p0o" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2$1L9HI8KW2" role="jymVt">
      <property role="TrG5h" value="newModelChecker" />
      <node concept="3uibUv" id="2$1L9HI8U_o" role="3clF45">
        <ref role="3uigEE" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
      </node>
      <node concept="3Tm6S6" id="2$1L9HI8NpY" role="1B3o_S" />
      <node concept="3clFbS" id="2$1L9HI8KW6" role="3clF47">
        <node concept="3clFbF" id="2$1L9HI91L2" role="3cqZAp">
          <node concept="2ShNRf" id="3etVqSRRNzQ" role="3clFbG">
            <node concept="1pGfFk" id="3etVqSRRNzR" role="2ShVmc">
              <ref role="37wK5l" node="2$qlEUM_SoB" resolve="ModelCheckerIssueFinder" />
              <node concept="37vLTw" id="kXqcYjTJO3" role="37wK5m">
                <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
              </node>
              <node concept="2OqwBi" id="3etVqSRKzMx" role="37wK5m">
                <node concept="liA8E" id="3etVqSRKzMy" role="2OqNvi">
                  <ref role="37wK5l" node="3GsVPVaO85s" resolve="getSpecificCheckers" />
                  <node concept="37vLTw" id="2$1L9HI9xy5" role="37wK5m">
                    <ref role="3cqZAo" node="2K4NeDxB5Kx" resolve="myProject" />
                  </node>
                </node>
                <node concept="2YIFZM" id="3etVqSRKzMz" role="2Oq$k0">
                  <ref role="1Pybhc" node="3etVqSRKzpg" resolve="ModelCheckerSettings" />
                  <ref role="37wK5l" node="3etVqSRKzvb" resolve="getInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="3etVqSRRN$X" role="jymVt">
      <property role="TrG5h" value="MyNodeRepresentator" />
      <property role="2bfB8j" value="false" />
      <node concept="3clFbW" id="3etVqSRRN$Y" role="jymVt">
        <node concept="3cqZAl" id="3etVqSRRN$Z" role="3clF45" />
        <node concept="3Tm1VV" id="3etVqSRRN_0" role="1B3o_S" />
        <node concept="3clFbS" id="3etVqSRRN_1" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="3etVqSRRN_4" role="1B3o_S" />
      <node concept="3clFb_" id="3etVqSRRN_5" role="jymVt">
        <property role="TrG5h" value="getResultsText" />
        <node concept="37vLTG" id="3etVqSRRN_6" role="3clF46">
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="3etVqSRRN_7" role="1tU5fm">
            <ref role="3uigEE" to="gkle:~TextOptions" resolve="TextOptions" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3etVqSRRN_8" role="1B3o_S" />
        <node concept="3clFbS" id="3etVqSRRN_9" role="3clF47">
          <node concept="3cpWs8" id="3etVqSRRN_a" role="3cqZAp">
            <node concept="3cpWsn" id="3etVqSRRN_b" role="3cpWs9">
              <property role="TrG5h" value="size" />
              <node concept="10Oyi0" id="3etVqSRRN_c" role="1tU5fm" />
              <node concept="2OqwBi" id="3etVqSRRN_d" role="33vP2m">
                <node concept="2OwXpG" id="3etVqSRRN_e" role="2OqNvi">
                  <ref role="2Oxat5" to="gkle:~TextOptions.mySubresultsCount" resolve="mySubresultsCount" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmuXA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRRN_6" resolve="options" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3etVqSRRN_g" role="3cqZAp">
            <node concept="3cpWs3" id="3etVqSRRN_h" role="3cqZAk">
              <node concept="2YIFZM" id="3etVqSRRN_j" role="3uHU7B">
                <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="37vLTw" id="3GM_nagT$fj" role="37wK5m">
                  <ref role="3cqZAo" node="3etVqSRRN_b" resolve="size" />
                </node>
                <node concept="Xl_RD" id="3etVqSRRN_l" role="37wK5m">
                  <property role="Xl_RC" value="issue" />
                </node>
              </node>
              <node concept="Xl_RD" id="3etVqSRRN_n" role="3uHU7w">
                <property role="Xl_RC" value=" found" />
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="3etVqSRRN_o" role="3clF45" />
        <node concept="2AHcQZ" id="3etVqSRRN_p" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRN_q" role="jymVt">
        <property role="TrG5h" value="getResultsIcon" />
        <node concept="3clFbS" id="3etVqSRRN_r" role="3clF47">
          <node concept="3cpWs6" id="3etVqSRRN_s" role="3cqZAp">
            <node concept="10M0yZ" id="3etVqSRRN_t" role="3cqZAk">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.CLOSED_FOLDER" resolve="CLOSED_FOLDER" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3etVqSRRN_u" role="1B3o_S" />
        <node concept="3uibUv" id="3etVqSRRN_v" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="2AHcQZ" id="3etVqSRRN_w" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRN_x" role="jymVt">
        <property role="TrG5h" value="getCategoryText" />
        <node concept="37vLTG" id="3etVqSRRN_y" role="3clF46">
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="3etVqSRRN_z" role="1tU5fm">
            <ref role="3uigEE" to="gkle:~TextOptions" resolve="TextOptions" />
          </node>
        </node>
        <node concept="17QB3L" id="3etVqSRRN_$" role="3clF45" />
        <node concept="3clFbS" id="3etVqSRRN__" role="3clF47">
          <node concept="3cpWs8" id="3etVqSRRN_A" role="3cqZAp">
            <node concept="3cpWsn" id="3etVqSRRN_B" role="3cpWs9">
              <property role="TrG5h" value="counter" />
              <node concept="Xl_RD" id="3etVqSRRN_C" role="33vP2m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="17QB3L" id="3etVqSRRN_D" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbJ" id="3etVqSRRN_E" role="3cqZAp">
            <node concept="3clFbS" id="3etVqSRRN_F" role="3clFbx">
              <node concept="3clFbF" id="3etVqSRRN_G" role="3cqZAp">
                <node concept="37vLTI" id="3etVqSRRN_H" role="3clFbG">
                  <node concept="3cpWs3" id="3etVqSRRN_I" role="37vLTx">
                    <node concept="Xl_RD" id="3etVqSRRN_J" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                    <node concept="3cpWs3" id="3etVqSRRN_K" role="3uHU7B">
                      <node concept="2YIFZM" id="3etVqSRRN_L" role="3uHU7w">
                        <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                        <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                        <node concept="2OqwBi" id="3etVqSRRN_M" role="37wK5m">
                          <node concept="37vLTw" id="2BHiRxgm8p5" role="2Oq$k0">
                            <ref role="3cqZAo" node="3etVqSRRN_y" resolve="options" />
                          </node>
                          <node concept="2OwXpG" id="3etVqSRRN_O" role="2OqNvi">
                            <ref role="2Oxat5" to="gkle:~TextOptions.mySubresultsCount" resolve="mySubresultsCount" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3etVqSRRN_P" role="37wK5m">
                          <property role="Xl_RC" value="issue" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3etVqSRRN_Q" role="3uHU7B">
                        <property role="Xl_RC" value=" (" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTykF" role="37vLTJ">
                    <ref role="3cqZAo" node="3etVqSRRN_B" resolve="counter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3etVqSRRN_S" role="3clFbw">
              <node concept="2OqwBi" id="3etVqSRRN_T" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmhBg" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRRN_y" resolve="options" />
                </node>
                <node concept="2OwXpG" id="3etVqSRRN_V" role="2OqNvi">
                  <ref role="2Oxat5" to="gkle:~TextOptions.myCounters" resolve="myCounters" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgmadq" role="3uHU7w">
                <ref role="3cqZAo" node="3etVqSRRNA8" resolve="isResultsSection" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3etVqSRRN_X" role="3cqZAp">
            <node concept="3cpWs3" id="3etVqSRRNA0" role="3cqZAk">
              <node concept="37vLTw" id="2BHiRxghiYy" role="3uHU7B">
                <ref role="3cqZAo" node="3etVqSRRNA6" resolve="category" />
              </node>
              <node concept="37vLTw" id="3GM_nagTrWX" role="3uHU7w">
                <ref role="3cqZAo" node="3etVqSRRN_B" resolve="counter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3etVqSRRNA5" role="1B3o_S" />
        <node concept="37vLTG" id="3etVqSRRNA6" role="3clF46">
          <property role="TrG5h" value="category" />
          <node concept="17QB3L" id="3etVqSRRNA7" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3etVqSRRNA8" role="3clF46">
          <property role="TrG5h" value="isResultsSection" />
          <node concept="10P_77" id="3etVqSRRNA9" role="1tU5fm" />
        </node>
        <node concept="2AHcQZ" id="3etVqSRRNAa" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRNAb" role="jymVt">
        <property role="TrG5h" value="getCategoryIcon" />
        <node concept="37vLTG" id="3etVqSRRNAc" role="3clF46">
          <property role="TrG5h" value="category" />
          <node concept="17QB3L" id="3etVqSRRNAd" role="1tU5fm" />
        </node>
        <node concept="3Tm1VV" id="3etVqSRRNAe" role="1B3o_S" />
        <node concept="3uibUv" id="3etVqSRRNAf" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="3clFbS" id="3etVqSRRNAg" role="3clF47">
          <node concept="3clFbJ" id="3etVqSRRNAh" role="3cqZAp">
            <node concept="2OqwBi" id="3etVqSRRNAi" role="3clFbw">
              <node concept="17RvpY" id="3etVqSRRNAj" role="2OqNvi" />
              <node concept="37vLTw" id="2BHiRxgm5OS" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRRNAc" resolve="category" />
              </node>
            </node>
            <node concept="3clFbS" id="3etVqSRRNAl" role="3clFbx">
              <node concept="3clFbJ" id="3etVqSRRNAm" role="3cqZAp">
                <node concept="3eNFk2" id="3etVqSRRNAn" role="3eNLev">
                  <node concept="3clFbS" id="3etVqSRRNAo" role="3eOfB_">
                    <node concept="3cpWs6" id="3etVqSRRNAp" role="3cqZAp">
                      <node concept="10M0yZ" id="3etVqSRRNAq" role="3cqZAk">
                        <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                        <ref role="3cqZAo" to="57ty:~Icons.WARNING_ICON" resolve="WARNING_ICON" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3etVqSRRNAr" role="3eO9$A">
                    <node concept="37vLTw" id="2BHiRxglyJe" role="2Oq$k0">
                      <ref role="3cqZAo" node="3etVqSRRNAc" resolve="category" />
                    </node>
                    <node concept="liA8E" id="3etVqSRRNAt" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="10M0yZ" id="4SGXHKgWQDI" role="37wK5m">
                        <ref role="3cqZAo" node="3etVqSRKzLv" resolve="SEVERITY_WARNING" />
                        <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="3etVqSRRNAv" role="3eNLev">
                  <node concept="2OqwBi" id="3etVqSRRNAw" role="3eO9$A">
                    <node concept="liA8E" id="3etVqSRRNAx" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="10M0yZ" id="4SGXHKgWQDL" role="37wK5m">
                        <ref role="3cqZAo" node="3etVqSRKzLz" resolve="SEVERITY_INFO" />
                        <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm8Zh" role="2Oq$k0">
                      <ref role="3cqZAo" node="3etVqSRRNAc" resolve="category" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3etVqSRRNA$" role="3eOfB_">
                    <node concept="3cpWs6" id="3etVqSRRNA_" role="3cqZAp">
                      <node concept="10M0yZ" id="3etVqSRRNAA" role="3cqZAk">
                        <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                        <ref role="3cqZAo" to="57ty:~Icons.INFORMATION_ICON" resolve="INFORMATION_ICON" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3etVqSRRNAB" role="3clFbx">
                  <node concept="3cpWs6" id="3etVqSRRNAC" role="3cqZAp">
                    <node concept="10M0yZ" id="3etVqSRRNAD" role="3cqZAk">
                      <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                      <ref role="3cqZAo" to="57ty:~Icons.ERROR_ICON" resolve="ERROR_ICON" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3etVqSRRNAE" role="3clFbw">
                  <node concept="37vLTw" id="2BHiRxgkX1q" role="2Oq$k0">
                    <ref role="3cqZAo" node="3etVqSRRNAc" resolve="category" />
                  </node>
                  <node concept="liA8E" id="3etVqSRRNAG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <node concept="10M0yZ" id="4SGXHKgWQDF" role="37wK5m">
                      <ref role="3cqZAo" node="3etVqSRKzLr" resolve="SEVERITY_ERROR" />
                      <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3etVqSRRNAI" role="3cqZAp">
            <node concept="10M0yZ" id="3etVqSRRNAJ" role="3cqZAk">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.CLOSED_FOLDER" resolve="CLOSED_FOLDER" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3etVqSRRNAK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRNAL" role="jymVt">
        <property role="TrG5h" value="getPresentation" />
        <node concept="2AHcQZ" id="3etVqSRRNAM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="3etVqSRRNAN" role="3clF47">
          <node concept="3cpWs6" id="3etVqSRRNAO" role="3cqZAp">
            <node concept="2OqwBi" id="3etVqSRRNAQ" role="3cqZAk">
              <node concept="liA8E" id="3etVqSRRNAR" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmasQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3etVqSRRNAU" resolve="issue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="3etVqSRRNAT" role="3clF45" />
        <node concept="37vLTG" id="3etVqSRRNAU" role="3clF46">
          <property role="TrG5h" value="issue" />
          <node concept="3uibUv" id="13muGfOGXgp" role="1tU5fm">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3etVqSRRNAW" role="1B3o_S" />
        <node concept="2AHcQZ" id="3etVqSRRNAX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRNAY" role="jymVt">
        <property role="TrG5h" value="getCategoryKinds" />
        <node concept="3uibUv" id="3etVqSRRNAZ" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="3pNk_u$epsK" role="11_B2D">
            <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
          </node>
        </node>
        <node concept="3clFbS" id="3etVqSRRNB1" role="3clF47">
          <node concept="3cpWs6" id="3etVqSRRNB2" role="3cqZAp">
            <node concept="2YIFZM" id="3etVqSRRNB3" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="10M0yZ" id="4SGXHKgWQDA" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzT_" resolve="CATEGORY_KIND_SEVERITY" />
                <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
              </node>
              <node concept="10M0yZ" id="4SGXHKgWQDD" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRKzTH" resolve="CATEGORY_KIND_ISSUE_TYPE" />
                <ref role="1PxDUh" node="3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3etVqSRRNB6" role="1B3o_S" />
        <node concept="2AHcQZ" id="3etVqSRRNB7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRNB8" role="jymVt">
        <property role="TrG5h" value="write" />
        <node concept="3clFbS" id="3etVqSRRNB9" role="3clF47" />
        <node concept="3uibUv" id="3etVqSRRNBa" role="Sfmx6">
          <ref role="3uigEE" to="ogzp:~CantSaveSomethingException" resolve="CantSaveSomethingException" />
        </node>
        <node concept="37vLTG" id="3etVqSRRNBb" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="3uibUv" id="3etVqSRRNBc" role="1tU5fm">
            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
          </node>
        </node>
        <node concept="3cqZAl" id="3etVqSRRNBd" role="3clF45" />
        <node concept="3Tm1VV" id="3etVqSRRNBe" role="1B3o_S" />
        <node concept="37vLTG" id="3etVqSRRNBf" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="3etVqSRRNBg" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3etVqSRRNBh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3etVqSRRNBi" role="jymVt">
        <property role="TrG5h" value="read" />
        <node concept="3Tm1VV" id="3etVqSRRNBj" role="1B3o_S" />
        <node concept="3uibUv" id="3etVqSRRNBk" role="Sfmx6">
          <ref role="3uigEE" to="ogzp:~CantLoadSomethingException" resolve="CantLoadSomethingException" />
        </node>
        <node concept="3clFbS" id="3etVqSRRNBl" role="3clF47" />
        <node concept="3cqZAl" id="3etVqSRRNBm" role="3clF45" />
        <node concept="37vLTG" id="3etVqSRRNBn" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="3uibUv" id="3etVqSRRNBo" role="1tU5fm">
            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
          </node>
        </node>
        <node concept="37vLTG" id="3etVqSRRNBp" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="3etVqSRRNBq" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3etVqSRRNBr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="3$3jTcdbk0Z" role="1zkMxy">
        <ref role="3uigEE" to="dsdj:~NodeRepresentatorBase" resolve="NodeRepresentatorBase" />
        <node concept="3uibUv" id="3$3jTcdbqCq" role="11_B2D">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRRNBs" role="1B3o_S" />
    <node concept="3uibUv" id="3etVqSRRNBt" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="13pYwTQIR8G">
    <property role="TrG5h" value="IdeaPlatformReadExecutor" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="312cEg" id="3lnZ0y6SS0Q" role="jymVt">
      <property role="TrG5h" value="myModelAccess" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lnZ0y6SS0R" role="1B3o_S" />
      <node concept="3uibUv" id="3lnZ0y6SS0T" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
    </node>
    <node concept="3clFbW" id="13pYwTQJ2vY" role="jymVt">
      <node concept="37vLTG" id="13pYwTQJ2C$" role="3clF46">
        <property role="TrG5h" value="modelAccess" />
        <node concept="3uibUv" id="3lnZ0y6SRO9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
        </node>
      </node>
      <node concept="3cqZAl" id="13pYwTQJ2w0" role="3clF45" />
      <node concept="3Tm1VV" id="13pYwTQJ2w1" role="1B3o_S" />
      <node concept="3clFbS" id="13pYwTQJ2w2" role="3clF47">
        <node concept="3clFbF" id="3lnZ0y6SS0U" role="3cqZAp">
          <node concept="37vLTI" id="3lnZ0y6SS0W" role="3clFbG">
            <node concept="37vLTw" id="3lnZ0y6SS0Z" role="37vLTJ">
              <ref role="3cqZAo" node="3lnZ0y6SS0Q" resolve="myModelAccess" />
            </node>
            <node concept="37vLTw" id="3lnZ0y6SS10" role="37vLTx">
              <ref role="3cqZAo" node="13pYwTQJ2C$" resolve="modelAccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lnZ0y6SLSL" role="jymVt" />
    <node concept="3clFb_" id="3lnZ0y6SM5T" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3Tm1VV" id="3lnZ0y6SM5U" role="1B3o_S" />
      <node concept="3cqZAl" id="3lnZ0y6SM5W" role="3clF45" />
      <node concept="37vLTG" id="3lnZ0y6SM5X" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="3lnZ0y6SM5Y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="3lnZ0y6SM5Z" role="3clF47">
        <node concept="3cpWs8" id="2KqhKAv1mmu" role="3cqZAp">
          <node concept="3cpWsn" id="2KqhKAv1mmv" role="3cpWs9">
            <property role="TrG5h" value="acquiredRead" />
            <node concept="3uibUv" id="2KqhKAv1mmw" role="1tU5fm">
              <ref role="3uigEE" to="i5cy:~AtomicBoolean" resolve="AtomicBoolean" />
            </node>
            <node concept="2ShNRf" id="2KqhKAv1mmx" role="33vP2m">
              <node concept="1pGfFk" id="2KqhKAv1mmy" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="i5cy:~AtomicBoolean.&lt;init&gt;(boolean)" resolve="AtomicBoolean" />
                <node concept="3clFbT" id="2KqhKAv1mmz" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2KqhKAv1mm$" role="3cqZAp">
          <node concept="3cpWsn" id="2KqhKAv1mm_" role="3cpWs9">
            <property role="TrG5h" value="pind" />
            <node concept="3uibUv" id="2KqhKAv1mmA" role="1tU5fm">
              <ref role="3uigEE" to="ot7:~ProgressIndicatorBase" resolve="ProgressIndicatorBase" />
            </node>
            <node concept="2ShNRf" id="2KqhKAv1mmB" role="33vP2m">
              <node concept="1pGfFk" id="2KqhKAv1mmC" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="ot7:~ProgressIndicatorBase.&lt;init&gt;(boolean,boolean)" resolve="ProgressIndicatorBase" />
                <node concept="3clFbT" id="2KqhKAv1mmD" role="37wK5m" />
                <node concept="3clFbT" id="2KqhKAv1mmE" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2KqhKAv1mmF" role="3cqZAp">
          <node concept="3cpWsn" id="2KqhKAv1mmG" role="3cpWs9">
            <property role="TrG5h" value="executed" />
            <node concept="10P_77" id="2KqhKAv1mmH" role="1tU5fm" />
            <node concept="2YIFZM" id="2KqhKAv1mmI" role="33vP2m">
              <ref role="37wK5l" to="ot7:~ProgressIndicatorUtils.runWithWriteActionPriority(java.lang.Runnable,com.intellij.openapi.progress.ProgressIndicator)" resolve="runWithWriteActionPriority" />
              <ref role="1Pybhc" to="ot7:~ProgressIndicatorUtils" resolve="ProgressIndicatorUtils" />
              <node concept="1bVj0M" id="2KqhKAv1mmJ" role="37wK5m">
                <node concept="3clFbS" id="2KqhKAv1mmK" role="1bW5cS">
                  <node concept="3SKdUt" id="2KqhKAv1mmL" role="3cqZAp">
                    <node concept="1PaTwC" id="2KqhKAv1mmM" role="1aUNEU">
                      <node concept="3oM_SD" id="2KqhKAv1mmN" role="1PaTwD">
                        <property role="3oM_SC" value="first," />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2$wZ" role="1PaTwD">
                        <property role="3oM_SC" value="try" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2$Cx" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2$Ye" role="1PaTwD">
                        <property role="3oM_SC" value="acquire" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2_Hz" role="1PaTwD">
                        <property role="3oM_SC" value="IDEA's" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2_UM" role="1PaTwD">
                        <property role="3oM_SC" value="read" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2_VJ" role="1PaTwD">
                        <property role="3oM_SC" value="lock" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="1mNnHPA2A_n" role="3cqZAp">
                    <node concept="1PaTwC" id="1mNnHPA2A_o" role="1aUNEU">
                      <node concept="3oM_SD" id="1mNnHPA2AJc" role="1PaTwD">
                        <property role="3oM_SC" value="if" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2AJe" role="1PaTwD">
                        <property role="3oM_SC" value="succeeded," />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2Bo4" role="1PaTwD">
                        <property role="3oM_SC" value="proceed" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2BCM" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2BDH" role="1PaTwD">
                        <property role="3oM_SC" value="evaluating" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2C4o" role="1PaTwD">
                        <property role="3oM_SC" value="under" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2Ckj" role="1PaTwD">
                        <property role="3oM_SC" value="*real&amp;*" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2CC2" role="1PaTwD">
                        <property role="3oM_SC" value="read" />
                      </node>
                      <node concept="3oM_SD" id="1mNnHPA2CQj" role="1PaTwD">
                        <property role="3oM_SC" value="lock" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2KqhKAv1mmO" role="3cqZAp">
                    <node concept="2OqwBi" id="2KqhKAv1mmP" role="3clFbG">
                      <node concept="37vLTw" id="2KqhKAv1mmQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2KqhKAv1mmv" resolve="acquiredRead" />
                      </node>
                      <node concept="liA8E" id="2KqhKAv1mmR" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicBoolean.set(boolean)" resolve="set" />
                        <node concept="2OqwBi" id="2KqhKAv1mmS" role="37wK5m">
                          <node concept="1eOMI4" id="1mNnHPA2wD9" role="2Oq$k0">
                            <node concept="10QFUN" id="1mNnHPA2wD6" role="1eOMHV">
                              <node concept="3uibUv" id="1mNnHPA2xxG" role="10QFUM">
                                <ref role="3uigEE" to="f061:~ApplicationEx" resolve="ApplicationEx" />
                              </node>
                              <node concept="2YIFZM" id="1mNnHPA2zHh" role="10QFUP">
                                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2KqhKAv1mmX" role="2OqNvi">
                            <ref role="37wK5l" to="f061:~ApplicationEx.tryRunReadAction(java.lang.Runnable)" resolve="tryRunReadAction" />
                            <node concept="1bVj0M" id="1mNnHPA2q9q" role="37wK5m">
                              <node concept="3clFbS" id="1mNnHPA2q9r" role="1bW5cS">
                                <node concept="3clFbF" id="1mNnHPA2riF" role="3cqZAp">
                                  <node concept="1rXfSq" id="1mNnHPA2riE" role="3clFbG">
                                    <ref role="37wK5l" node="1mNnHPA2lG8" resolve="executeInReadAction" />
                                    <node concept="37vLTw" id="1mNnHPA2ss1" role="37wK5m">
                                      <ref role="3cqZAo" node="3lnZ0y6SM5X" resolve="runnable" />
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
              <node concept="37vLTw" id="2KqhKAv1mmZ" role="37wK5m">
                <ref role="3cqZAo" node="2KqhKAv1mm_" resolve="pind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2KqhKAv1slx" role="3cqZAp">
          <node concept="3clFbS" id="2KqhKAv1sly" role="3clFbx">
            <node concept="YS8fn" id="2KqhKAv1slz" role="3cqZAp">
              <node concept="2ShNRf" id="2KqhKAv1sl$" role="YScLw">
                <node concept="1pGfFk" id="2KqhKAv1sl_" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="5zyv:~RejectedExecutionException.&lt;init&gt;(java.lang.String)" resolve="RejectedExecutionException" />
                  <node concept="Xl_RD" id="2KqhKAv1slA" role="37wK5m">
                    <property role="Xl_RC" value="failed to acquire read lock" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2KqhKAv1slB" role="3clFbw">
            <node concept="2OqwBi" id="2KqhKAv1slC" role="3fr31v">
              <node concept="37vLTw" id="2KqhKAv1slD" role="2Oq$k0">
                <ref role="3cqZAo" node="2KqhKAv1mmv" resolve="acquiredRead" />
              </node>
              <node concept="liA8E" id="2KqhKAv1slE" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicBoolean.get()" resolve="get" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lnZ0y6SM60" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="P$JXv" id="2KqhKAv1sZh" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsCy8" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCy9" role="1PaTwD">
            <property role="3oM_SC" value="See" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHsCya" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHsCyb" role="1Vtduc">
              <node concept="VXe0Z" id="2KqhKAv1tfa" role="1VuXuu">
                <ref role="VXe0S" to="ot7:~ProgressIndicatorUtils.runInReadActionWithWriteActionPriority(java.lang.Runnable,com.intellij.openapi.progress.ProgressIndicator)" resolve="runInReadActionWithWriteActionPriority" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHsCye" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHsCyf" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1mNnHPA2kJP" role="jymVt" />
    <node concept="3clFb_" id="1mNnHPA2lG8" role="jymVt">
      <property role="TrG5h" value="executeInReadAction" />
      <node concept="37vLTG" id="1mNnHPA2mGK" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="1mNnHPA2nwH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3cqZAl" id="1mNnHPA2lGb" role="3clF45" />
      <node concept="3Tm6S6" id="1mNnHPA2lGa" role="1B3o_S" />
      <node concept="3clFbS" id="1mNnHPA2lGc" role="3clF47">
        <node concept="3clFbF" id="1mNnHPA2geb" role="3cqZAp">
          <node concept="2OqwBi" id="1mNnHPA2gxD" role="3clFbG">
            <node concept="1eOMI4" id="1mNnHPA2ged" role="2Oq$k0">
              <node concept="10QFUN" id="1mNnHPA2gee" role="1eOMHV">
                <node concept="3uibUv" id="1mNnHPA2gef" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~ModelAccessBase" resolve="ModelAccessBase" />
                </node>
                <node concept="37vLTw" id="1mNnHPA2geg" role="10QFUP">
                  <ref role="3cqZAo" node="3lnZ0y6SS0Q" resolve="myModelAccess" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1mNnHPA2gU6" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessBase.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="37vLTw" id="1mNnHPA2ilT" role="37wK5m">
                <ref role="3cqZAo" node="1mNnHPA2mGK" resolve="runnable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1mNnHPA2kM$" role="jymVt" />
    <node concept="3Tm1VV" id="13pYwTQIR8H" role="1B3o_S" />
    <node concept="3uibUv" id="13pYwTQIVDz" role="EKbjA">
      <ref role="3uigEE" to="5zyv:~Executor" resolve="Executor" />
    </node>
  </node>
  <node concept="312cEu" id="5FdF_yH12OG">
    <property role="TrG5h" value="DefaultReadExecutor" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="2tJIrI" id="5FdF_yH18qr" role="jymVt" />
    <node concept="312cEg" id="5FdF_yH1f2X" role="jymVt">
      <property role="TrG5h" value="myModelAccess" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5FdF_yH1f2Y" role="1B3o_S" />
      <node concept="3uibUv" id="5FdF_yH1f30" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
    </node>
    <node concept="3clFbW" id="5FdF_yH1enN" role="jymVt">
      <node concept="37vLTG" id="5FdF_yH1e_H" role="3clF46">
        <property role="TrG5h" value="modelAccess" />
        <node concept="3uibUv" id="5FdF_yH1e_I" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
        </node>
      </node>
      <node concept="3cqZAl" id="5FdF_yH1enP" role="3clF45" />
      <node concept="3Tm1VV" id="5FdF_yH1enQ" role="1B3o_S" />
      <node concept="3clFbS" id="5FdF_yH1enR" role="3clF47">
        <node concept="3clFbF" id="5FdF_yH1f31" role="3cqZAp">
          <node concept="37vLTI" id="5FdF_yH1f33" role="3clFbG">
            <node concept="37vLTw" id="5FdF_yH1f36" role="37vLTJ">
              <ref role="3cqZAo" node="5FdF_yH1f2X" resolve="myModelAccess" />
            </node>
            <node concept="37vLTw" id="5FdF_yH1f37" role="37vLTx">
              <ref role="3cqZAo" node="5FdF_yH1e_H" resolve="modelAccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5FdF_yH1dWS" role="jymVt" />
    <node concept="3Tm1VV" id="5FdF_yH12OH" role="1B3o_S" />
    <node concept="3uibUv" id="5FdF_yH17O7" role="EKbjA">
      <ref role="3uigEE" to="5zyv:~Executor" resolve="Executor" />
    </node>
    <node concept="3clFb_" id="5FdF_yH1fyi" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3Tm1VV" id="5FdF_yH1fyj" role="1B3o_S" />
      <node concept="3cqZAl" id="5FdF_yH1fyl" role="3clF45" />
      <node concept="37vLTG" id="5FdF_yH1fym" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="5FdF_yH1fyn" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="5FdF_yH1fyo" role="3clF47">
        <node concept="3clFbF" id="5FdF_yH1k5c" role="3cqZAp">
          <node concept="2OqwBi" id="5FdF_yH1k5e" role="3clFbG">
            <node concept="1eOMI4" id="5FdF_yH1k5f" role="2Oq$k0">
              <node concept="10QFUN" id="5FdF_yH1k5g" role="1eOMHV">
                <node concept="3uibUv" id="5FdF_yH1k5h" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~ModelAccessBase" resolve="ModelAccessBase" />
                </node>
                <node concept="37vLTw" id="5FdF_yH1k5i" role="10QFUP">
                  <ref role="3cqZAo" node="5FdF_yH1f2X" resolve="myModelAccess" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5FdF_yH1k5j" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessBase.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="37vLTw" id="5FdF_yH1k5k" role="37wK5m">
                <ref role="3cqZAo" node="5FdF_yH1fym" resolve="runnable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5FdF_yH1fyp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

