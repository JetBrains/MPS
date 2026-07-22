<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c6a69ad3-3fa7-49b3-9d3a-0c72f1eb3bb9(jetbrains.mps.ide.modelchecker)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="o6ex" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.generator(MPS.Workbench/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="ospv" ref="r:54a768d9-9f11-4443-98d8-70ab3a783c52(jetbrains.mps.findUsages)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="y49u" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.util(MPS.OpenAPI/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="r99j" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator.runtime(MPS.Generator/)" />
    <import index="tft2" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator.impl.plan(MPS.Generator/)" />
    <import index="wsw7" ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)" />
    <import index="gp7a" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.dependency(MPS.Core/)" />
    <import index="5ijk" ref="r:f77c2bf1-6f5c-4cb2-b314-a84dd502542e(jetbrains.mps.resolve)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="8992394414545679616" name="jetbrains.mps.baseLanguage.closures.structure.ClosureVarType" flags="ig" index="3VYd8j" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="6407023681583036855" name="jetbrains.mps.lang.smodel.structure.LinkAttributeQualifier" flags="ng" index="3CFYIw">
        <reference id="6407023681583036856" name="attributeConcept" index="3CFYIJ" />
        <child id="6407023681583038098" name="linkQualifier" index="3CFYM5" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
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
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="312cEu" id="77jl1fNfRHb">
    <property role="TrG5h" value="ModelValidatorAdapter" />
    <property role="2bfB8j" value="true" />
    <node concept="2tJIrI" id="77jl1fNgNpm" role="jymVt" />
    <node concept="3Tm1VV" id="77jl1fNfRHc" role="1B3o_S" />
    <node concept="3uibUv" id="77jl1fNfRI_" role="EKbjA">
      <ref role="3uigEE" to="o6ex:~ModelValidator" resolve="ModelValidator" />
    </node>
    <node concept="3clFb_" id="77jl1fNfRIA" role="jymVt">
      <property role="TrG5h" value="check" />
      <node concept="2AHcQZ" id="77jl1fNfRIB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="77jl1fNfRIC" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="2AHcQZ" id="77jl1fNfRID" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="77jl1fNfRIE" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="77jl1fNfRIF" role="3clF46">
        <property role="TrG5h" value="modelDescriptors" />
        <node concept="3uibUv" id="77jl1fNfRIG" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="77jl1fNfRIH" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="77jl1fNfRII" role="3clF47">
        <node concept="3cpWs8" id="77jl1fNfRIK" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRIJ" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="77jl1fNfRIL" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="77jl1fNfVaP" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <node concept="37vLTw" id="77jl1fNfVaQ" role="37wK5m">
                <ref role="3cqZAo" node="77jl1fNfRIC" resolve="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRIP" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRIO" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="3uibUv" id="77jl1fNfRIQ" role="1tU5fm">
              <ref role="3uigEE" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
            </node>
            <node concept="2YIFZM" id="77jl1fNfV1f" role="33vP2m">
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <node concept="37vLTw" id="77jl1fNfV1g" role="37wK5m">
                <ref role="3cqZAo" node="77jl1fNfRIJ" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77jl1fNfRIT" role="3cqZAp">
          <node concept="3clFbC" id="77jl1fNfRIU" role="3clFbw">
            <node concept="37vLTw" id="77jl1fNfRIV" role="3uHU7B">
              <ref role="3cqZAo" node="77jl1fNfRIO" resolve="tool" />
            </node>
            <node concept="10Nm6u" id="77jl1fNfRIW" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="77jl1fNfRIY" role="3clFbx">
            <node concept="3cpWs6" id="77jl1fNfRIZ" role="3cqZAp">
              <node concept="3clFbT" id="77jl1fNfRJ0" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRJ2" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRJ1" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="modelsToCheck" />
            <node concept="3uibUv" id="77jl1fNfRJ3" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="77jl1fNfRJ4" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="77jl1fNfRM7" role="3cqZAp">
          <node concept="1PaTwC" id="77jl1fNfRM8" role="1aUNEU">
            <node concept="3oM_SD" id="77jl1fNfRMa" role="1PaTwD">
              <property role="3oM_SC" value="registry" />
            </node>
            <node concept="3oM_SD" id="77jl1fNfRMb" role="1PaTwD">
              <property role="3oM_SC" value="key" />
            </node>
            <node concept="3oM_SD" id="77jl1fNfRMc" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="77jl1fNfRMd" role="1PaTwD">
              <property role="3oM_SC" value="registered" />
            </node>
            <node concept="3oM_SD" id="77jl1fNfRMe" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="77jl1fNfRMf" role="1PaTwD">
              <property role="3oM_SC" value="[mps-modelchecker]/META-INF/plugin.xml" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="77jl1fNfRMg" role="3cqZAp">
          <node concept="1PaTwC" id="77jl1fNfRMh" role="1aUNEU">
            <node concept="3oM_SD" id="77jl1fNfRMj" role="1PaTwD">
              <property role="3oM_SC" value="noinspection" />
            </node>
            <node concept="3oM_SD" id="77jl1fNfRMk" role="1PaTwD">
              <property role="3oM_SC" value="UnresolvedPluginConfigReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77jl1fNfRJ5" role="3cqZAp">
          <node concept="2YIFZM" id="77jl1fNfUZy" role="3clFbw">
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String,boolean)" resolve="is" />
            <node concept="Xl_RD" id="77jl1fNfUZz" role="37wK5m">
              <property role="Xl_RC" value="mps.make.check.models.all" />
            </node>
            <node concept="3clFbT" id="77jl1fNfUZ$" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="9aQIb" id="77jl1fNfRKc" role="9aQIa">
            <node concept="3clFbS" id="77jl1fNfRKd" role="9aQI4">
              <node concept="3clFbF" id="77jl1fNfRKe" role="3cqZAp">
                <node concept="37vLTI" id="77jl1fNfRKf" role="3clFbG">
                  <node concept="37vLTw" id="77jl1fNfRKg" role="37vLTJ">
                    <ref role="3cqZAo" node="77jl1fNfRJ1" resolve="modelsToCheck" />
                  </node>
                  <node concept="37vLTw" id="77jl1fNfRKh" role="37vLTx">
                    <ref role="3cqZAo" node="77jl1fNfRIF" resolve="modelDescriptors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="77jl1fNfRJa" role="3clFbx">
            <node concept="3clFbF" id="77jl1fNfRJb" role="3cqZAp">
              <node concept="37vLTI" id="77jl1fNfRJc" role="3clFbG">
                <node concept="37vLTw" id="77jl1fNfRJd" role="37vLTJ">
                  <ref role="3cqZAo" node="77jl1fNfRJ1" resolve="modelsToCheck" />
                </node>
                <node concept="2ShNRf" id="77jl1fNfXuW" role="37vLTx">
                  <node concept="1pGfFk" id="77jl1fNfXHN" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="37vLTw" id="77jl1fNfXHO" role="37wK5m">
                      <ref role="3cqZAo" node="77jl1fNfRIF" resolve="modelDescriptors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="77jl1fNfRJh" role="3cqZAp">
              <node concept="3cpWsn" id="77jl1fNfRJg" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="title" />
                <node concept="3uibUv" id="77jl1fNfRJi" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="Xl_RD" id="77jl1fNfRJj" role="33vP2m">
                  <property role="Xl_RC" value="Look up affected models" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="77jl1fNfRJl" role="3cqZAp">
              <node concept="3cpWsn" id="77jl1fNfRJk" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="r" />
                <node concept="3uibUv" id="77jl1fNfRJm" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~ModelReadRunnable" resolve="ModelReadRunnable" />
                </node>
                <node concept="2ShNRf" id="77jl1fNfXTW" role="33vP2m">
                  <node concept="1pGfFk" id="77jl1fNfXUe" role="2ShVmc">
                    <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                    <node concept="2OqwBi" id="77jl1fNg66q" role="37wK5m">
                      <node concept="37vLTw" id="77jl1fNfXUg" role="2Oq$k0">
                        <ref role="3cqZAo" node="77jl1fNfRIC" resolve="p" />
                      </node>
                      <node concept="liA8E" id="77jl1fNg66r" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="77jl1fNfXUh" role="37wK5m">
                      <node concept="3clFbS" id="77jl1fNfXUi" role="1bW5cS">
                        <node concept="9aQIb" id="77jl1fNfXUj" role="3cqZAp">
                          <node concept="3clFbS" id="77jl1fNfXUk" role="9aQI4">
                            <node concept="3cpWs8" id="77jl1fNfXUl" role="3cqZAp">
                              <node concept="3cpWsn" id="77jl1fNfXUm" role="3cpWs9">
                                <property role="TrG5h" value="pm" />
                                <node concept="3uibUv" id="77jl1fNfXUn" role="1tU5fm">
                                  <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                                </node>
                                <node concept="2YIFZM" id="77jl1fNfXUo" role="33vP2m">
                                  <ref role="1Pybhc" to="mk8z:~ProgressMonitorAdapter" resolve="ProgressMonitorAdapter" />
                                  <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.wrap(com.intellij.openapi.progress.ProgressIndicator)" resolve="wrap" />
                                  <node concept="2OqwBi" id="77jl1fNgor0" role="37wK5m">
                                    <node concept="2YIFZM" id="77jl1fNghoA" role="2Oq$k0">
                                      <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                                      <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                                    </node>
                                    <node concept="liA8E" id="77jl1fNgor1" role="2OqNvi">
                                      <ref role="37wK5l" to="xygl:~ProgressManager.getProgressIndicator()" resolve="getProgressIndicator" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="77jl1fNfXUr" role="3cqZAp">
                              <node concept="2OqwBi" id="77jl1fNg7bD" role="3clFbG">
                                <node concept="37vLTw" id="77jl1fNfXUt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="77jl1fNfXUm" resolve="pm" />
                                </node>
                                <node concept="liA8E" id="77jl1fNg7bE" role="2OqNvi">
                                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
                                  <node concept="37vLTw" id="77jl1fNg7bF" role="37wK5m">
                                    <ref role="3cqZAo" node="77jl1fNfRJg" resolve="title" />
                                  </node>
                                  <node concept="3cmrfG" id="77jl1fNg7bG" role="37wK5m">
                                    <property role="3cmrfH" value="10" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="77jl1fNfXUw" role="3cqZAp">
                              <node concept="3cpWsn" id="77jl1fNfXUx" role="3cpWs9">
                                <property role="TrG5h" value="mrl" />
                                <node concept="3uibUv" id="77jl1fNfXUy" role="1tU5fm">
                                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                  <node concept="3uibUv" id="77jl1fNfXUz" role="11_B2D">
                                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="77jl1fNgt_$" role="33vP2m">
                                  <node concept="2OqwBi" id="77jl1fNgkHj" role="2Oq$k0">
                                    <node concept="2OqwBi" id="77jl1fNg1UW" role="2Oq$k0">
                                      <node concept="37vLTw" id="77jl1fNfXUB" role="2Oq$k0">
                                        <ref role="3cqZAo" node="77jl1fNfRIF" resolve="modelDescriptors" />
                                      </node>
                                      <node concept="liA8E" id="77jl1fNg1UX" role="2OqNvi">
                                        <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="77jl1fNgkHk" role="2OqNvi">
                                      <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                                      <node concept="37Ijox" id="77jl1fNgkHl" role="37wK5m">
                                        <ref role="37Ijqf" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                        <node concept="2FaPjH" id="77jl1fNgkHm" role="wWaWy">
                                          <node concept="3uibUv" id="77jl1fNgkHn" role="2FaQuo">
                                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="77jl1fNgt__" role="2OqNvi">
                                    <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                    <node concept="2YIFZM" id="77jl1fNgt_A" role="37wK5m">
                                      <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                      <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                      <node concept="3uibUv" id="77jl1fNh3Ys" role="3PaCim">
                                        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="77jl1fNfXUG" role="3cqZAp">
                              <node concept="3cpWsn" id="77jl1fNfXUH" role="3cpWs9">
                                <property role="3TUv4t" value="true" />
                                <property role="TrG5h" value="projectModels" />
                                <node concept="3uibUv" id="77jl1fNfXUI" role="1tU5fm">
                                  <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                  <node concept="3uibUv" id="77jl1fNfXUJ" role="11_B2D">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="77jl1fNfXUK" role="33vP2m">
                                  <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                                  <ref role="37wK5l" to="18ew:~IterableUtil.asCollection(java.lang.Iterable)" resolve="asCollection" />
                                  <node concept="2OqwBi" id="77jl1fNgn9H" role="37wK5m">
                                    <node concept="2OqwBi" id="77jl1fNggoN" role="2Oq$k0">
                                      <node concept="37vLTw" id="77jl1fNfXUN" role="2Oq$k0">
                                        <ref role="3cqZAo" node="77jl1fNfRIC" resolve="p" />
                                      </node>
                                      <node concept="liA8E" id="77jl1fNggoO" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="77jl1fNgn9I" role="2OqNvi">
                                      <ref role="37wK5l" to="w1kc:~BaseScope.getModels()" resolve="getModels" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="77jl1fNfXUO" role="3cqZAp">
                              <node concept="2OqwBi" id="77jl1fNg8jP" role="3clFbG">
                                <node concept="37vLTw" id="77jl1fNfXUQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="77jl1fNfXUm" resolve="pm" />
                                </node>
                                <node concept="liA8E" id="77jl1fNg8jQ" role="2OqNvi">
                                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                                  <node concept="3cmrfG" id="77jl1fNg8jR" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="77jl1fNfXUS" role="3cqZAp">
                              <node concept="2OqwBi" id="77jl1fNg0aY" role="3clFbG">
                                <node concept="2ShNRf" id="77jl1fNfXUU" role="2Oq$k0">
                                  <node concept="1pGfFk" id="77jl1fNfXUV" role="2ShVmc">
                                    <ref role="37wK5l" to="ospv:2o_iqz0pKS9" resolve="ModelImportLookup" />
                                    <node concept="37vLTw" id="77jl1fNfXUW" role="37wK5m">
                                      <ref role="3cqZAo" node="77jl1fNfXUx" resolve="mrl" />
                                    </node>
                                    <node concept="37Ijox" id="77jl1fNgdup" role="37wK5m">
                                      <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                      <node concept="37vLTw" id="77jl1fNfXUY" role="wWaWy">
                                        <ref role="3cqZAo" node="77jl1fNfRJ1" resolve="modelsToCheck" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="77jl1fNg0aZ" role="2OqNvi">
                                  <ref role="37wK5l" to="ospv:2o_iqz0pLMN" resolve="withImports" />
                                  <node concept="37vLTw" id="77jl1fNg0b0" role="37wK5m">
                                    <ref role="3cqZAo" node="77jl1fNfXUH" resolve="projectModels" />
                                  </node>
                                  <node concept="2OqwBi" id="77jl1fNglSR" role="37wK5m">
                                    <node concept="37vLTw" id="77jl1fNg0b2" role="2Oq$k0">
                                      <ref role="3cqZAo" node="77jl1fNfXUm" resolve="pm" />
                                    </node>
                                    <node concept="liA8E" id="77jl1fNglSS" role="2OqNvi">
                                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                                      <node concept="3cmrfG" id="77jl1fNglST" role="37wK5m">
                                        <property role="3cmrfH" value="9" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="77jl1fNfXV3" role="3cqZAp">
                              <node concept="2OqwBi" id="77jl1fNg50w" role="3clFbG">
                                <node concept="37vLTw" id="77jl1fNfXV5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="77jl1fNfXUm" resolve="pm" />
                                </node>
                                <node concept="liA8E" id="77jl1fNg50x" role="2OqNvi">
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
              </node>
            </node>
            <node concept="3clFbF" id="77jl1fNfRK4" role="3cqZAp">
              <node concept="2OqwBi" id="77jl1fNgfpZ" role="3clFbG">
                <node concept="2YIFZM" id="77jl1fNfVdU" role="2Oq$k0">
                  <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                  <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="77jl1fNgfq0" role="2OqNvi">
                  <ref role="37wK5l" to="xygl:~ProgressManager.runProcessWithProgressSynchronously(java.lang.Runnable,java.lang.String,boolean,com.intellij.openapi.project.Project,javax.swing.JComponent)" resolve="runProcessWithProgressSynchronously" />
                  <node concept="37vLTw" id="77jl1fNgfq1" role="37wK5m">
                    <ref role="3cqZAo" node="77jl1fNfRJk" resolve="r" />
                  </node>
                  <node concept="37vLTw" id="77jl1fNgfq2" role="37wK5m">
                    <ref role="3cqZAo" node="77jl1fNfRJg" resolve="title" />
                  </node>
                  <node concept="3clFbT" id="77jl1fNgfq3" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="77jl1fNgfq4" role="37wK5m">
                    <ref role="3cqZAo" node="77jl1fNfRIJ" resolve="ideaProject" />
                  </node>
                  <node concept="10Nm6u" id="77jl1fNgfq5" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRKj" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRKi" role="3cpWs9">
            <property role="TrG5h" value="viewer" />
            <node concept="3uibUv" id="77jl1fNfRKk" role="1tU5fm">
              <ref role="3uigEE" to="phxh:3etVqSRRNr5" resolve="ModelCheckerViewer" />
            </node>
            <node concept="2OqwBi" id="77jl1fNg0XQ" role="33vP2m">
              <node concept="37vLTw" id="77jl1fNfUZt" role="2Oq$k0">
                <ref role="3cqZAo" node="77jl1fNfRIO" resolve="tool" />
              </node>
              <node concept="liA8E" id="77jl1fNg0XR" role="2OqNvi">
                <ref role="37wK5l" to="phxh:3pNk_u$fiwJ" resolve="checkModels" />
                <node concept="37vLTw" id="77jl1fNg0XS" role="37wK5m">
                  <ref role="3cqZAo" node="77jl1fNfRJ1" resolve="modelsToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRKo" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRKn" role="3cpWs9">
            <property role="TrG5h" value="issues" />
            <node concept="3uibUv" id="77jl1fNfRKp" role="1tU5fm">
              <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
              <node concept="3uibUv" id="77jl1fNfRKq" role="11_B2D">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="77jl1fNgho8" role="33vP2m">
              <node concept="37vLTw" id="77jl1fNfXVG" role="2Oq$k0">
                <ref role="3cqZAo" node="77jl1fNfRKi" resolve="viewer" />
              </node>
              <node concept="liA8E" id="77jl1fNgho9" role="2OqNvi">
                <ref role="37wK5l" to="phxh:3etVqSRRN$O" resolve="getSearchResults" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77jl1fNfRKs" role="3cqZAp">
          <node concept="3clFbC" id="77jl1fNfRKt" role="3clFbw">
            <node concept="37vLTw" id="77jl1fNfRKu" role="3uHU7B">
              <ref role="3cqZAo" node="77jl1fNfRKn" resolve="issues" />
            </node>
            <node concept="10Nm6u" id="77jl1fNfRKv" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="77jl1fNfRKx" role="3clFbx">
            <node concept="3SKdUt" id="77jl1fNfRMl" role="3cqZAp">
              <node concept="1PaTwC" id="77jl1fNfRMm" role="1aUNEU">
                <node concept="3oM_SD" id="77jl1fNfRMo" role="1PaTwD">
                  <property role="3oM_SC" value="Cancelled" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="77jl1fNfRKy" role="3cqZAp">
              <node concept="3clFbT" id="77jl1fNfRKz" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRK_" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRK$" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="generationSettings" />
            <node concept="3uibUv" id="77jl1fNfRKA" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~IModifiableGenerationSettings" resolve="IModifiableGenerationSettings" />
            </node>
            <node concept="2OqwBi" id="77jl1fNgENv" role="33vP2m">
              <node concept="2OqwBi" id="77jl1fNgiuw" role="2Oq$k0">
                <node concept="37vLTw" id="77jl1fNfXo6" role="2Oq$k0">
                  <ref role="3cqZAo" node="77jl1fNfRIC" resolve="p" />
                </node>
                <node concept="liA8E" id="77jl1fNgiux" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="77jl1fNgiuy" role="37wK5m">
                    <ref role="3VsUkX" to="ap4t:~GenerationSettingsProvider" resolve="GenerationSettingsProvider" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="77jl1fNgENw" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenerationSettingsProvider.getGenerationSettings()" resolve="getGenerationSettings" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRKG" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRKF" role="3cpWs9">
            <property role="TrG5h" value="warnings" />
            <node concept="10Oyi0" id="77jl1fNfRKH" role="1tU5fm" />
            <node concept="2YIFZM" id="77jl1fNfXny" role="33vP2m">
              <ref role="1Pybhc" to="phxh:3etVqSRKzzT" resolve="ModelCheckerUtils" />
              <ref role="37wK5l" to="phxh:3etVqSRKz_E" resolve="getIssueCountForSeverity" />
              <node concept="37vLTw" id="77jl1fNfXnz" role="37wK5m">
                <ref role="3cqZAo" node="77jl1fNfRKn" resolve="issues" />
              </node>
              <node concept="10M0yZ" id="77jl1fNg7iD" role="37wK5m">
                <ref role="1PxDUh" to="phxh:3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                <ref role="3cqZAo" to="phxh:3etVqSRKzLv" resolve="SEVERITY_WARNING" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jl1fNfRKM" role="3cqZAp">
          <node concept="3cpWsn" id="77jl1fNfRKL" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="10Oyi0" id="77jl1fNfRKN" role="1tU5fm" />
            <node concept="2YIFZM" id="77jl1fNfVfr" role="33vP2m">
              <ref role="1Pybhc" to="phxh:3etVqSRKzzT" resolve="ModelCheckerUtils" />
              <ref role="37wK5l" to="phxh:3etVqSRKz_E" resolve="getIssueCountForSeverity" />
              <node concept="37vLTw" id="77jl1fNfVfs" role="37wK5m">
                <ref role="3cqZAo" node="77jl1fNfRKn" resolve="issues" />
              </node>
              <node concept="10M0yZ" id="77jl1fNghoI" role="37wK5m">
                <ref role="1PxDUh" to="phxh:3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                <ref role="3cqZAo" to="phxh:3etVqSRKzLr" resolve="SEVERITY_ERROR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77jl1fNfRKR" role="3cqZAp">
          <node concept="3y3z36" id="77jl1fNfRKS" role="3clFbw">
            <node concept="37vLTw" id="77jl1fNfRKT" role="3uHU7B">
              <ref role="3cqZAo" node="77jl1fNfRKL" resolve="errors" />
            </node>
            <node concept="3cmrfG" id="77jl1fNfRKU" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="77jl1fNfRKW" role="3clFbx">
            <node concept="3cpWs8" id="77jl1fNfRKY" role="3cqZAp">
              <node concept="3cpWsn" id="77jl1fNfRKX" role="3cpWs9">
                <property role="TrG5h" value="msg" />
                <node concept="3uibUv" id="77jl1fNfRKZ" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="77jl1fNfXob" role="33vP2m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <node concept="Xl_RD" id="77jl1fNfXoc" role="37wK5m">
                    <property role="Xl_RC" value="Model checker found %d errors and %d warnings. Review them and don't generate models or ignore them?" />
                  </node>
                  <node concept="37vLTw" id="77jl1fNfXod" role="37wK5m">
                    <ref role="3cqZAo" node="77jl1fNfRKL" resolve="errors" />
                  </node>
                  <node concept="37vLTw" id="77jl1fNfXoe" role="37wK5m">
                    <ref role="3cqZAo" node="77jl1fNfRKF" resolve="warnings" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="77jl1fNfRL5" role="3cqZAp">
              <node concept="3cpWsn" id="77jl1fNfRL4" role="3cpWs9">
                <property role="TrG5h" value="dialog" />
                <node concept="3uibUv" id="77jl1fNfRL6" role="1tU5fm">
                  <ref role="3uigEE" node="77jl1fNfRHd" resolve="ModelValidatorAdapter.CheckBeforeGenerationDialog" />
                </node>
                <node concept="2ShNRf" id="77jl1fNfVfE" role="33vP2m">
                  <node concept="1pGfFk" id="77jl1fNfVfP" role="2ShVmc">
                    <ref role="37wK5l" node="77jl1fNfRHo" resolve="ModelValidatorAdapter.CheckBeforeGenerationDialog" />
                    <node concept="37vLTw" id="77jl1fNfVfQ" role="37wK5m">
                      <ref role="3cqZAo" node="77jl1fNfRIJ" resolve="ideaProject" />
                    </node>
                    <node concept="37vLTw" id="77jl1fNfVfR" role="37wK5m">
                      <ref role="3cqZAo" node="77jl1fNfRKX" resolve="msg" />
                    </node>
                    <node concept="37vLTw" id="77jl1fNfVfS" role="37wK5m">
                      <ref role="3cqZAo" node="77jl1fNfRK$" resolve="generationSettings" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="77jl1fNfRLb" role="3cqZAp">
              <node concept="2OqwBi" id="77jl1fNgete" role="3clFbG">
                <node concept="37vLTw" id="77jl1fNfV0X" role="2Oq$k0">
                  <ref role="3cqZAo" node="77jl1fNfRL4" resolve="dialog" />
                </node>
                <node concept="liA8E" id="77jl1fNgetf" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="77jl1fNfRLd" role="3cqZAp">
              <node concept="2OqwBi" id="77jl1fNgcuJ" role="3clFbw">
                <node concept="37vLTw" id="77jl1fNfVaK" role="2Oq$k0">
                  <ref role="3cqZAo" node="77jl1fNfRL4" resolve="dialog" />
                </node>
                <node concept="liA8E" id="77jl1fNgcuK" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~DialogWrapper.isOK()" resolve="isOK" />
                </node>
              </node>
              <node concept="9aQIb" id="77jl1fNfRLo" role="9aQIa">
                <node concept="3clFbS" id="77jl1fNfRLp" role="9aQI4">
                  <node concept="3SKdUt" id="77jl1fNfRMy" role="3cqZAp">
                    <node concept="1PaTwC" id="77jl1fNfRMz" role="1aUNEU">
                      <node concept="3oM_SD" id="77jl1fNfRM_" role="1PaTwD">
                        <property role="3oM_SC" value="ignore" />
                      </node>
                      <node concept="3oM_SD" id="77jl1fNfRMA" role="1PaTwD">
                        <property role="3oM_SC" value="errors" />
                      </node>
                      <node concept="3oM_SD" id="77jl1fNfRMB" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="77jl1fNfRMC" role="1PaTwD">
                        <property role="3oM_SC" value="warnings" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="77jl1fNfRLq" role="3cqZAp">
                    <node concept="3clFbT" id="77jl1fNfRLr" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="77jl1fNfRLg" role="3clFbx">
                <node concept="3SKdUt" id="77jl1fNfRMp" role="3cqZAp">
                  <node concept="1PaTwC" id="77jl1fNfRMq" role="1aUNEU">
                    <node concept="3oM_SD" id="77jl1fNfRMs" role="1PaTwD">
                      <property role="3oM_SC" value="review" />
                    </node>
                    <node concept="3oM_SD" id="77jl1fNfRMt" role="1PaTwD">
                      <property role="3oM_SC" value="errors" />
                    </node>
                    <node concept="3oM_SD" id="77jl1fNfRMu" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="77jl1fNfRMv" role="1PaTwD">
                      <property role="3oM_SC" value="warnings," />
                    </node>
                    <node concept="3oM_SD" id="77jl1fNfRMw" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="77jl1fNfRMx" role="1PaTwD">
                      <property role="3oM_SC" value="generate" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="77jl1fNfRLh" role="3cqZAp">
                  <node concept="2OqwBi" id="77jl1fNgaiJ" role="3clFbG">
                    <node concept="37vLTw" id="77jl1fNfVeC" role="2Oq$k0">
                      <ref role="3cqZAo" node="77jl1fNfRIO" resolve="tool" />
                    </node>
                    <node concept="liA8E" id="77jl1fNgaiK" role="2OqNvi">
                      <ref role="37wK5l" to="phxh:4aNWY1v0QZD" resolve="showTabWithResults" />
                      <node concept="37vLTw" id="77jl1fNgaiL" role="37wK5m">
                        <ref role="3cqZAo" node="77jl1fNfRKi" resolve="viewer" />
                      </node>
                      <node concept="Xl_RD" id="77jl1fNgaiM" role="37wK5m">
                        <property role="Xl_RC" value="Pre-generate validation" />
                      </node>
                      <node concept="10M0yZ" id="77jl1fNgaiN" role="37wK5m">
                        <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                        <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="77jl1fNfRLm" role="3cqZAp">
                  <node concept="3clFbT" id="77jl1fNfRLn" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="77jl1fNfRLs" role="3cqZAp">
          <node concept="3clFbT" id="77jl1fNfRLt" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="77jl1fNfRLu" role="1B3o_S" />
      <node concept="10P_77" id="77jl1fNfRLv" role="3clF45" />
    </node>
    <node concept="312cEu" id="77jl1fNfRHd" role="jymVt">
      <property role="TrG5h" value="CheckBeforeGenerationDialog" />
      <property role="1EXbeo" value="true" />
      <node concept="3Tm6S6" id="77jl1fNfRHe" role="1B3o_S" />
      <node concept="3uibUv" id="77jl1fNfRHf" role="1zkMxy">
        <ref role="3uigEE" to="jkm4:~DialogWrapper" resolve="DialogWrapper" />
      </node>
      <node concept="312cEg" id="77jl1fNfRHg" role="jymVt">
        <property role="TrG5h" value="mySettings" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="77jl1fNfRHi" role="1tU5fm">
          <ref role="3uigEE" to="ap4t:~IModifiableGenerationSettings" resolve="IModifiableGenerationSettings" />
        </node>
        <node concept="3Tm6S6" id="77jl1fNfRHj" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="77jl1fNfRHk" role="jymVt">
        <property role="TrG5h" value="myDialogMessage" />
        <node concept="3uibUv" id="77jl1fNfRHm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm6S6" id="77jl1fNfRHn" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="77jl1fNfRHo" role="jymVt">
        <node concept="3cqZAl" id="77jl1fNfRHp" role="3clF45" />
        <node concept="37vLTG" id="77jl1fNfRHq" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="77jl1fNfRHr" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="37vLTG" id="77jl1fNfRHs" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="3uibUv" id="77jl1fNfRHt" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="77jl1fNfRHu" role="3clF46">
          <property role="TrG5h" value="settings" />
          <node concept="3uibUv" id="77jl1fNfRHv" role="1tU5fm">
            <ref role="3uigEE" to="ap4t:~IModifiableGenerationSettings" resolve="IModifiableGenerationSettings" />
          </node>
        </node>
        <node concept="3clFbS" id="77jl1fNfRHw" role="3clF47">
          <node concept="XkiVB" id="77jl1fNfXVe" role="3cqZAp">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.&lt;init&gt;(com.intellij.openapi.project.Project,boolean)" resolve="DialogWrapper" />
            <node concept="37vLTw" id="77jl1fNfXVf" role="37wK5m">
              <ref role="3cqZAo" node="77jl1fNfRHq" resolve="project" />
            </node>
            <node concept="3clFbT" id="77jl1fNfXVg" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRHx" role="3cqZAp">
            <node concept="37vLTI" id="77jl1fNfRHy" role="3clFbG">
              <node concept="37vLTw" id="77jl1fNfRHz" role="37vLTJ">
                <ref role="3cqZAo" node="77jl1fNfRHg" resolve="mySettings" />
              </node>
              <node concept="37vLTw" id="77jl1fNfRH$" role="37vLTx">
                <ref role="3cqZAo" node="77jl1fNfRHu" resolve="settings" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRH_" role="3cqZAp">
            <node concept="37vLTI" id="77jl1fNfRHA" role="3clFbG">
              <node concept="37vLTw" id="77jl1fNfRHB" role="37vLTJ">
                <ref role="3cqZAo" node="77jl1fNfRHk" resolve="myDialogMessage" />
              </node>
              <node concept="37vLTw" id="77jl1fNfRHC" role="37vLTx">
                <ref role="3cqZAo" node="77jl1fNfRHs" resolve="message" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRHD" role="3cqZAp">
            <node concept="1rXfSq" id="77jl1fNfRHE" role="3clFbG">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
              <node concept="Xl_RD" id="77jl1fNfRHF" role="37wK5m">
                <property role="Xl_RC" value="Check Before Generation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRHG" role="3cqZAp">
            <node concept="1rXfSq" id="77jl1fNfRHH" role="3clFbG">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.setOKButtonText(java.lang.String)" resolve="setOKButtonText" />
              <node concept="Xl_RD" id="77jl1fNfRHI" role="37wK5m">
                <property role="Xl_RC" value="Review Errors" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRHJ" role="3cqZAp">
            <node concept="1rXfSq" id="77jl1fNfRHK" role="3clFbG">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.setCancelButtonText(java.lang.String)" resolve="setCancelButtonText" />
              <node concept="Xl_RD" id="77jl1fNfRHL" role="37wK5m">
                <property role="Xl_RC" value="Ignore Errors" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRHM" role="3cqZAp">
            <node concept="1rXfSq" id="77jl1fNfRHN" role="3clFbG">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.init()" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="77jl1fNfRHR" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="77jl1fNfRHS" role="jymVt">
        <property role="TrG5h" value="createCenterPanel" />
        <node concept="2AHcQZ" id="77jl1fNfRHT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2AHcQZ" id="77jl1fNfRHU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="77jl1fNfRHV" role="3clF47">
          <node concept="3cpWs8" id="77jl1fNfRHX" role="3cqZAp">
            <node concept="3cpWsn" id="77jl1fNfRHW" role="3cpWs9">
              <property role="TrG5h" value="panel" />
              <node concept="3uibUv" id="77jl1fNfRHY" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="2ShNRf" id="77jl1fNfVfY" role="33vP2m">
                <node concept="1pGfFk" id="77jl1fNfXns" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                  <node concept="2ShNRf" id="77jl1fNfXnt" role="37wK5m">
                    <node concept="1pGfFk" id="77jl1fNfXnu" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="77jl1fNfRI2" role="3cqZAp">
            <node concept="3cpWsn" id="77jl1fNfRI1" role="3cpWs9">
              <property role="TrG5h" value="checkBox" />
              <node concept="3uibUv" id="77jl1fNfRI3" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="77jl1fNfXHP" role="33vP2m">
                <node concept="1pGfFk" id="77jl1fNfXTT" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                  <node concept="Xl_RD" id="77jl1fNfXTU" role="37wK5m">
                    <property role="Xl_RC" value="Don't check models before generation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRI6" role="3cqZAp">
            <node concept="2OqwBi" id="77jl1fNgbfC" role="3clFbG">
              <node concept="37vLTw" id="77jl1fNfXVk" role="2Oq$k0">
                <ref role="3cqZAo" node="77jl1fNfRI1" resolve="checkBox" />
              </node>
              <node concept="liA8E" id="77jl1fNgbfD" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
                <node concept="1bVj0M" id="77jl1fNgbfE" role="37wK5m">
                  <node concept="37vLTG" id="77jl1fNgbfF" role="1bW2Oz">
                    <property role="TrG5h" value="ev" />
                    <node concept="3VYd8j" id="77jl1fNgbfG" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="77jl1fNgbfH" role="1bW5cS">
                    <node concept="9aQIb" id="77jl1fNgbfI" role="3cqZAp">
                      <node concept="3clFbS" id="77jl1fNgbfJ" role="9aQI4">
                        <node concept="3cpWs8" id="77jl1fNgbfK" role="3cqZAp">
                          <node concept="3cpWsn" id="77jl1fNgbfL" role="3cpWs9">
                            <property role="TrG5h" value="selected" />
                            <node concept="10P_77" id="77jl1fNgbfM" role="1tU5fm" />
                            <node concept="3clFbC" id="77jl1fNgbfN" role="33vP2m">
                              <node concept="2OqwBi" id="77jl1fNgpGH" role="3uHU7B">
                                <node concept="37vLTw" id="77jl1fNgbfP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="77jl1fNgbfF" resolve="ev" />
                                </node>
                                <node concept="liA8E" id="77jl1fNgpGI" role="2OqNvi">
                                  <ref role="37wK5l" to="hyam:~ItemEvent.getStateChange()" resolve="getStateChange" />
                                </node>
                              </node>
                              <node concept="10M0yZ" id="77jl1fNgbfQ" role="3uHU7w">
                                <ref role="1PxDUh" to="hyam:~ItemEvent" resolve="ItemEvent" />
                                <ref role="3cqZAo" to="hyam:~ItemEvent.SELECTED" resolve="SELECTED" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="77jl1fNgbfR" role="3cqZAp">
                          <node concept="2OqwBi" id="77jl1fNgG9D" role="3clFbG">
                            <node concept="37vLTw" id="77jl1fNgbfT" role="2Oq$k0">
                              <ref role="3cqZAo" node="77jl1fNfRHg" resolve="mySettings" />
                            </node>
                            <node concept="liA8E" id="77jl1fNgG9E" role="2OqNvi">
                              <ref role="37wK5l" to="ap4t:~IModifiableGenerationSettings.setCheckModelsBeforeGeneration(boolean)" resolve="setCheckModelsBeforeGeneration" />
                              <node concept="3fqX7Q" id="77jl1fNgG9F" role="37wK5m">
                                <node concept="37vLTw" id="77jl1fNgG9G" role="3fr31v">
                                  <ref role="3cqZAo" node="77jl1fNgbfL" resolve="selected" />
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
          <node concept="3clFbF" id="77jl1fNfRIo" role="3cqZAp">
            <node concept="2OqwBi" id="77jl1fNg3Vz" role="3clFbG">
              <node concept="37vLTw" id="77jl1fNfVec" role="2Oq$k0">
                <ref role="3cqZAo" node="77jl1fNfRHW" resolve="panel" />
              </node>
              <node concept="liA8E" id="77jl1fNg3V$" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="2ShNRf" id="77jl1fNglSV" role="37wK5m">
                  <node concept="1pGfFk" id="77jl1fNglTm" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="37vLTw" id="77jl1fNglTn" role="37wK5m">
                      <ref role="3cqZAo" node="77jl1fNfRHk" resolve="myDialogMessage" />
                    </node>
                  </node>
                </node>
                <node concept="10M0yZ" id="77jl1fNg3VB" role="37wK5m">
                  <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                  <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="77jl1fNfRIt" role="3cqZAp">
            <node concept="2OqwBi" id="77jl1fNg2QJ" role="3clFbG">
              <node concept="37vLTw" id="77jl1fNfV4c" role="2Oq$k0">
                <ref role="3cqZAo" node="77jl1fNfRHW" resolve="panel" />
              </node>
              <node concept="liA8E" id="77jl1fNg2QK" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="77jl1fNg2QL" role="37wK5m">
                  <ref role="3cqZAo" node="77jl1fNfRI1" resolve="checkBox" />
                </node>
                <node concept="10M0yZ" id="77jl1fNgorb" role="37wK5m">
                  <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                  <ref role="3cqZAo" to="z60i:~BorderLayout.SOUTH" resolve="SOUTH" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="77jl1fNfRIx" role="3cqZAp">
            <node concept="37vLTw" id="77jl1fNfRIy" role="3cqZAk">
              <ref role="3cqZAo" node="77jl1fNfRHW" resolve="panel" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="77jl1fNfRIz" role="1B3o_S" />
        <node concept="3uibUv" id="77jl1fNfRI$" role="3clF45">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="77jl1fNhbKy">
    <property role="TrG5h" value="ModuleActivator" />
    <node concept="312cEg" id="3Ssq9B$kCLl" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Ssq9B$kCLm" role="1B3o_S" />
      <node concept="3uibUv" id="3Ssq9B$kCLo" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ssq9B$kCN8" role="jymVt" />
    <node concept="3clFbW" id="3Ssq9B$kCHR" role="jymVt">
      <node concept="37vLTG" id="3Ssq9B$kCJr" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="3Ssq9B$kCKj" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Ssq9B$kCHT" role="3clF45" />
      <node concept="3Tm1VV" id="3Ssq9B$kCHU" role="1B3o_S" />
      <node concept="3clFbS" id="3Ssq9B$kCHV" role="3clF47">
        <node concept="3clFbF" id="3Ssq9B$kCLp" role="3cqZAp">
          <node concept="37vLTI" id="3Ssq9B$kCLr" role="3clFbG">
            <node concept="37vLTw" id="3Ssq9B$kCLu" role="37vLTJ">
              <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="3Ssq9B$kCLv" role="37vLTx">
              <ref role="3cqZAo" node="3Ssq9B$kCJr" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="77jl1fNhhxt" role="jymVt" />
    <node concept="2tJIrI" id="77jl1fNhhxu" role="jymVt" />
    <node concept="3clFb_" id="77jl1fNhhzp" role="jymVt">
      <property role="TrG5h" value="contribute" />
      <node concept="3Tm1VV" id="77jl1fNhhzr" role="1B3o_S" />
      <node concept="3cqZAl" id="77jl1fNhhzt" role="3clF45" />
      <node concept="37vLTG" id="77jl1fNhhzu" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="77jl1fNhhzv" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ModuleRuntime$ActivatorContext" resolve="ModuleRuntime.ActivatorContext" />
        </node>
        <node concept="2AHcQZ" id="77jl1fNhhzw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="77jl1fNhhzx" role="3clF47">
        <node concept="3clFbF" id="77jl1fNhiT8" role="3cqZAp">
          <node concept="2OqwBi" id="77jl1fNhj9y" role="3clFbG">
            <node concept="37vLTw" id="77jl1fNhiT7" role="2Oq$k0">
              <ref role="3cqZAo" node="77jl1fNhhzu" resolve="ctx" />
            </node>
            <node concept="liA8E" id="77jl1fNhjhd" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
              <node concept="3VsKOn" id="77jl1fNhmig" role="37wK5m">
                <ref role="3VsUkX" to="o6ex:~ModelValidator" resolve="ModelValidator" />
              </node>
              <node concept="2YIFZM" id="77jl1fNhpo0" role="37wK5m">
                <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.util.function.Supplier,java.lang.String...)" resolve="of" />
                <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                <node concept="1bVj0M" id="77jl1fNhqum" role="37wK5m">
                  <node concept="3clFbS" id="77jl1fNhqur" role="1bW5cS">
                    <node concept="3clFbF" id="77jl1fNhrbK" role="3cqZAp">
                      <node concept="2ShNRf" id="77jl1fNhrbI" role="3clFbG">
                        <node concept="HV5vD" id="77jl1fNhGFR" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="HV5vE" node="77jl1fNfRHb" resolve="ModelValidatorAdapter" />
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
      <node concept="2AHcQZ" id="77jl1fNhhzy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="77jl1fNhhmi" role="jymVt" />
    <node concept="3Tm1VV" id="77jl1fNhbKz" role="1B3o_S" />
    <node concept="3uibUv" id="77jl1fNhhm3" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRT$IF">
    <property role="TrG5h" value="GeneratorTemplatesChecker" />
    <property role="3GE5qa" value="Specific Checks" />
    <node concept="2tJIrI" id="R5v_Dt3XhM" role="jymVt" />
    <node concept="3clFbW" id="3etVqSRT$IG" role="jymVt">
      <node concept="3cqZAl" id="3etVqSRT$IH" role="3clF45" />
      <node concept="3Tm1VV" id="3etVqSRT$II" role="1B3o_S" />
      <node concept="3clFbS" id="3etVqSRT$IJ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3xfDcbRhN9u" role="jymVt" />
    <node concept="Wx3nA" id="dQllQpiVol" role="jymVt">
      <property role="TrG5h" value="CROSS_TEMPLATE_REFERENCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="dQllQpiWe8" role="1tU5fm">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="2ShNRf" id="dQllQpiWMR" role="33vP2m">
        <node concept="1pGfFk" id="dQllQpiWN4" role="2ShVmc">
          <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.&lt;init&gt;(jetbrains.mps.errors.item.IssueKindReportItem$KindLevel,java.lang.String)" resolve="IssueKindReportItem.CheckerCategory" />
          <node concept="Rm8GO" id="dQllQpiXly" role="37wK5m">
            <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
            <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.MANUAL" resolve="MANUAL" />
          </node>
          <node concept="Xl_RD" id="dQllQpiWN6" role="37wK5m">
            <property role="Xl_RC" value="cross-templates references" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dQllQpiVoq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="dQllQpiUBf" role="jymVt" />
    <node concept="2tJIrI" id="3xfDcbRhNdX" role="jymVt" />
    <node concept="3clFb_" id="3xfDcbRhO1d" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCategory" />
      <node concept="3Tm1VV" id="3xfDcbRhO1f" role="1B3o_S" />
      <node concept="3uibUv" id="dQllQpiTLU" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="3clFbS" id="3xfDcbRhO1k" role="3clF47">
        <node concept="3clFbF" id="3xfDcbRhOT$" role="3cqZAp">
          <node concept="37vLTw" id="dQllQpiXOO" role="3clFbG">
            <ref role="3cqZAo" node="dQllQpiVol" resolve="CROSS_TEMPLATE_REFERENCES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3xfDcbRhO1l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="R5v_Dt3X58" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRT$IK" role="jymVt">
      <property role="TrG5h" value="checkModel" />
      <node concept="3Tm1VV" id="3etVqSRT$IL" role="1B3o_S" />
      <node concept="37vLTG" id="3etVqSRT$IM" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="false" />
        <node concept="H_c77" id="3etVqSRT$IN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3etVqSRT$IO" role="3clF47">
        <node concept="3clFbJ" id="3etVqSRT$IP" role="3cqZAp">
          <node concept="3fqX7Q" id="3etVqSRT$IQ" role="3clFbw">
            <node concept="2YIFZM" id="3etVqSRT$IR" role="3fr31v">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="37vLTw" id="2BHiRxglZVi" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRT$IM" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3etVqSRT$IT" role="3clFbx">
            <node concept="3cpWs6" id="3etVqSRT$IU" role="3cqZAp">
              <node concept="2YIFZM" id="3etVqSRT$IV" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3etVqSRT$IW" role="3cqZAp" />
        <node concept="3cpWs8" id="6iohsvjQ5la" role="3cqZAp">
          <node concept="3cpWsn" id="6iohsvjQ5ld" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="6iohsvjQ5l6" role="1tU5fm">
              <node concept="3uibUv" id="6iohsvjQ6bm" role="_ZDj9">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="6iohsvjQ78x" role="33vP2m">
              <node concept="Tc6Ow" id="6iohsvjQ70W" role="2ShVmc">
                <node concept="3uibUv" id="6iohsvjQ70X" role="HW$YZ">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="R5v_Dt2OMM" role="3cqZAp" />
        <node concept="2Gpval" id="R5v_Dt37pm" role="3cqZAp">
          <node concept="2GrKxI" id="R5v_Dt37po" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="3clFbS" id="R5v_Dt37ps" role="2LFqv$">
            <node concept="3clFbJ" id="R5v_Dt38Qk" role="3cqZAp">
              <node concept="3clFbS" id="R5v_Dt38Ql" role="3clFbx">
                <node concept="3clFbF" id="R5v_Dt38Qm" role="3cqZAp">
                  <node concept="1rXfSq" id="R5v_Dt38Qn" role="3clFbG">
                    <ref role="37wK5l" node="R5v_Dt3dgf" resolve="scanTemplateNode" />
                    <node concept="37vLTw" id="6iohsvjQgjR" role="37wK5m">
                      <ref role="3cqZAo" node="6iohsvjQ5ld" resolve="results" />
                    </node>
                    <node concept="2GrUjf" id="R5v_Dt3gbI" role="37wK5m">
                      <ref role="2Gs0qQ" node="R5v_Dt37po" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="R5v_Dt5nGi" role="37wK5m">
                      <ref role="3cqZAo" node="3etVqSRT$LM" resolve="progressMonitor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="R5v_Dt38Qp" role="3clFbw">
                <node concept="10Nm6u" id="R5v_Dt38Qq" role="3uHU7w" />
                <node concept="2OqwBi" id="R5v_Dt38Qr" role="3uHU7B">
                  <node concept="3CFZ6_" id="R5v_Dt38Qs" role="2OqNvi">
                    <node concept="3CFYIy" id="R5v_Dt38Qt" role="3CFYIz">
                      <ref role="3CFYIx" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                    </node>
                  </node>
                  <node concept="2GrUjf" id="R5v_Dt3bOS" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="R5v_Dt37po" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt39te" role="3cqZAp">
              <node concept="2OqwBi" id="R5v_Dt39tf" role="3clFbw">
                <node concept="liA8E" id="R5v_Dt39tg" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
                <node concept="37vLTw" id="3xfDcbRhTzN" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRT$LM" resolve="progressMonitor" />
                </node>
              </node>
              <node concept="3clFbS" id="R5v_Dt39ti" role="3clFbx">
                <node concept="3cpWs6" id="R5v_Dt39tj" role="3cqZAp">
                  <node concept="37vLTw" id="6iohsvjQ9d0" role="3cqZAk">
                    <ref role="3cqZAo" node="6iohsvjQ5ld" resolve="results" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="R5v_Dt38lo" role="2GsD0m">
            <node concept="2RRcyG" id="R5v_Dt38lp" role="2OqNvi" />
            <node concept="37vLTw" id="R5v_Dt38lq" role="2Oq$k0">
              <ref role="3cqZAo" node="3etVqSRT$IM" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="R5v_Dt3hpH" role="3cqZAp" />
        <node concept="3cpWs6" id="R5v_Dt3lMn" role="3cqZAp">
          <node concept="37vLTw" id="6iohsvjQ9L8" role="3cqZAk">
            <ref role="3cqZAo" node="6iohsvjQ5ld" resolve="results" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="3etVqSRT$LJ" role="3clF45">
        <node concept="3uibUv" id="6iohsvjQ2Ll" role="_ZDj9">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="37vLTG" id="3etVqSRT$LM" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3etVqSRT$LN" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3etVqSRT$LQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="R5v_Dt3c0V" role="jymVt" />
    <node concept="3clFb_" id="R5v_Dt3dgf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="scanTemplateNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="R5v_Dt3dgi" role="3clF47">
        <node concept="3cpWs8" id="R5v_Dt3vZT" role="3cqZAp">
          <node concept="3cpWsn" id="R5v_Dt3vZU" role="3cpWs9">
            <property role="TrG5h" value="it" />
            <node concept="3uibUv" id="R5v_Dt3vZV" role="1tU5fm">
              <ref role="3uigEE" to="y49u:~DescendantsTreeIterator" resolve="DescendantsTreeIterator" />
            </node>
            <node concept="2ShNRf" id="R5v_Dt3wQ9" role="33vP2m">
              <node concept="1pGfFk" id="R5v_Dt3Mdg" role="2ShVmc">
                <ref role="37wK5l" to="y49u:~DescendantsTreeIterator.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="DescendantsTreeIterator" />
                <node concept="37vLTw" id="R5v_Dt3ShR" role="37wK5m">
                  <ref role="3cqZAo" node="R5v_Dt3Rqy" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="R5v_Dt3MZY" role="3cqZAp">
          <node concept="3clFbS" id="R5v_Dt3N00" role="2LFqv$">
            <node concept="3clFbJ" id="R5v_Dt3nl6" role="3cqZAp">
              <node concept="3clFbS" id="R5v_Dt3nl7" role="3clFbx">
                <node concept="3cpWs6" id="R5v_Dt3nl8" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="R5v_Dt3nl9" role="3clFbw">
                <node concept="liA8E" id="R5v_Dt3nla" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
                <node concept="37vLTw" id="R5v_Dt3nlb" role="2Oq$k0">
                  <ref role="3cqZAo" node="R5v_Dt3p1x" resolve="progressMonitor" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="R5v_Dt3PZu" role="3cqZAp">
              <node concept="3cpWsn" id="R5v_Dt3PZx" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="R5v_Dt3PZs" role="1tU5fm" />
                <node concept="2OqwBi" id="R5v_Dt3VfJ" role="33vP2m">
                  <node concept="37vLTw" id="R5v_Dt3UNY" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt3vZU" resolve="it" />
                  </node>
                  <node concept="liA8E" id="R5v_Dt3Wcr" role="2OqNvi">
                    <ref role="37wK5l" to="y49u:~DescendantsTreeIterator.next()" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt48Am" role="3cqZAp">
              <node concept="3clFbS" id="R5v_Dt48Ao" role="3clFbx">
                <node concept="3clFbJ" id="R5v_Dt4rga" role="3cqZAp">
                  <node concept="3clFbS" id="R5v_Dt4rgc" role="3clFbx">
                    <node concept="3SKdUt" id="R5v_Dt5om6" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXojLF" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXojLG" role="1PaTwD">
                          <property role="3oM_SC" value="afaik" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLH" role="1PaTwD">
                          <property role="3oM_SC" value="IF/ELSE" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLI" role="1PaTwD">
                          <property role="3oM_SC" value="consequence" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLJ" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLK" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLL" role="1PaTwD">
                          <property role="3oM_SC" value="only" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLM" role="1PaTwD">
                          <property role="3oM_SC" value="place" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLN" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLO" role="1PaTwD">
                          <property role="3oM_SC" value="need" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLP" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLQ" role="1PaTwD">
                          <property role="3oM_SC" value="treat" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLR" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLS" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLT" role="1PaTwD">
                          <property role="3oM_SC" value="distinct" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXojLU" role="1PaTwD">
                          <property role="3oM_SC" value="way" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="R5v_Dt53Zq" role="3cqZAp">
                      <node concept="1rXfSq" id="R5v_Dt53Zo" role="3clFbG">
                        <ref role="37wK5l" node="R5v_Dt3dgf" resolve="scanTemplateNode" />
                        <node concept="37vLTw" id="6iohsvjQezB" role="37wK5m">
                          <ref role="3cqZAo" node="6iohsvjQcZM" resolve="results" />
                        </node>
                        <node concept="2OqwBi" id="R5v_Dt53qb" role="37wK5m">
                          <node concept="1PxgMI" id="R5v_Dt539N" role="2Oq$k0">
                            <node concept="2OqwBi" id="R5v_Dt52mD" role="1m5AlR">
                              <node concept="1PxgMI" id="R5v_Dt52mE" role="2Oq$k0">
                                <node concept="37vLTw" id="R5v_Dt52mF" role="1m5AlR">
                                  <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                                </node>
                                <node concept="chp4Y" id="714IaVdGZaC" role="3oSUPX">
                                  <ref role="cht4Q" to="tpf8:ghW57bu" resolve="IfMacro" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="R5v_Dt52mG" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:hoUU_w3" resolve="alternativeConsequence" />
                              </node>
                            </node>
                            <node concept="chp4Y" id="714IaVdGZaA" role="3oSUPX">
                              <ref role="cht4Q" to="tpf8:h8gft7C" resolve="InlineTemplate_RuleConsequence" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="R5v_Dt53Dl" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:h8gfFXQ" resolve="templateNode" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="R5v_Dt54wL" role="37wK5m">
                          <ref role="3cqZAo" node="R5v_Dt3p1x" resolve="progressMonitor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="R5v_Dt4rOU" role="3clFbw">
                    <node concept="2OqwBi" id="R5v_Dt4tlD" role="3uHU7w">
                      <node concept="2OqwBi" id="R5v_Dt4sD6" role="2Oq$k0">
                        <node concept="1PxgMI" id="R5v_Dt4smI" role="2Oq$k0">
                          <node concept="37vLTw" id="R5v_Dt4s4_" role="1m5AlR">
                            <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                          </node>
                          <node concept="chp4Y" id="714IaVdGZaB" role="3oSUPX">
                            <ref role="cht4Q" to="tpf8:ghW57bu" resolve="IfMacro" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="R5v_Dt4sVi" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:hoUU_w3" resolve="alternativeConsequence" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="R5v_Dt4tBf" role="2OqNvi">
                        <node concept="chp4Y" id="R5v_Dt4tKS" role="cj9EA">
                          <ref role="cht4Q" to="tpf8:h8gft7C" resolve="InlineTemplate_RuleConsequence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="R5v_Dt4rqO" role="3uHU7B">
                      <node concept="37vLTw" id="R5v_Dt4rm2" role="2Oq$k0">
                        <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                      </node>
                      <node concept="1mIQ4w" id="R5v_Dt4r$m" role="2OqNvi">
                        <node concept="chp4Y" id="R5v_Dt4rAh" role="cj9EA">
                          <ref role="cht4Q" to="tpf8:ghW57bu" resolve="IfMacro" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="R5v_Dt4q6n" role="3cqZAp">
                  <node concept="2OqwBi" id="R5v_Dt4qfQ" role="3clFbG">
                    <node concept="37vLTw" id="R5v_Dt4q6l" role="2Oq$k0">
                      <ref role="3cqZAo" node="R5v_Dt3vZU" resolve="it" />
                    </node>
                    <node concept="liA8E" id="R5v_Dt4qX5" role="2OqNvi">
                      <ref role="37wK5l" to="y49u:~DescendantsTreeIterator.skipChildren()" resolve="skipChildren" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="R5v_Dt4iP6" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="R5v_Dt495V" role="3clFbw">
                <node concept="37vLTw" id="R5v_Dt4919" role="2Oq$k0">
                  <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="R5v_Dt49fu" role="2OqNvi">
                  <node concept="chp4Y" id="R5v_Dt4fCv" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:hR0XTcV" resolve="AbstractMacro" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt4g26" role="3cqZAp">
              <node concept="3clFbS" id="R5v_Dt4g28" role="3clFbx">
                <node concept="3SKdUt" id="R5v_Dt4iYX" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXojLV" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXojLW" role="1PaTwD">
                      <property role="3oM_SC" value="it's" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojLX" role="1PaTwD">
                      <property role="3oM_SC" value="unlikely" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojLY" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojLZ" role="1PaTwD">
                      <property role="3oM_SC" value="see" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM0" role="1PaTwD">
                      <property role="3oM_SC" value="TF" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM1" role="1PaTwD">
                      <property role="3oM_SC" value="under" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM2" role="1PaTwD">
                      <property role="3oM_SC" value="root" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM3" role="1PaTwD">
                      <property role="3oM_SC" value="template" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM4" role="1PaTwD">
                      <property role="3oM_SC" value="(impossible?)" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM5" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM6" role="1PaTwD">
                      <property role="3oM_SC" value="does" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM7" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM8" role="1PaTwD">
                      <property role="3oM_SC" value="hurt" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojM9" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojMa" role="1PaTwD">
                      <property role="3oM_SC" value="have" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojMb" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojMc" role="1PaTwD">
                      <property role="3oM_SC" value="excluded" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXojMd" role="1PaTwD">
                      <property role="3oM_SC" value="here?" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="R5v_Dt4hET" role="3cqZAp">
                  <node concept="2OqwBi" id="R5v_Dt4hOo" role="3clFbG">
                    <node concept="37vLTw" id="R5v_Dt4hER" role="2Oq$k0">
                      <ref role="3cqZAo" node="R5v_Dt3vZU" resolve="it" />
                    </node>
                    <node concept="liA8E" id="R5v_Dt4ixA" role="2OqNvi">
                      <ref role="37wK5l" to="y49u:~DescendantsTreeIterator.skipChildren()" resolve="skipChildren" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="R5v_Dt4iF_" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="R5v_Dt4gOJ" role="3clFbw">
                <node concept="2OqwBi" id="R5v_Dt4h7c" role="3uHU7w">
                  <node concept="37vLTw" id="R5v_Dt4gZn" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                  </node>
                  <node concept="1mIQ4w" id="R5v_Dt4hlh" role="2OqNvi">
                    <node concept="chp4Y" id="R5v_Dt4hqj" role="cj9EA">
                      <ref role="cht4Q" to="tpf8:fWrartG" resolve="TemplateFragment" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="R5v_Dt4ggk" role="3uHU7B">
                  <node concept="37vLTw" id="R5v_Dt4gby" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                  </node>
                  <node concept="1mIQ4w" id="R5v_Dt4gpQ" role="2OqNvi">
                    <node concept="chp4Y" id="R5v_Dt4grL" role="cj9EA">
                      <ref role="cht4Q" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="R5v_Dt5aGQ" role="3cqZAp">
              <node concept="1rXfSq" id="R5v_Dt5aGO" role="3clFbG">
                <ref role="37wK5l" node="R5v_Dt4aCw" resolve="checkReferences" />
                <node concept="37vLTw" id="6iohsvjQe0a" role="37wK5m">
                  <ref role="3cqZAo" node="6iohsvjQcZM" resolve="results" />
                </node>
                <node concept="37vLTw" id="R5v_Dt5bev" role="37wK5m">
                  <ref role="3cqZAo" node="R5v_Dt3PZx" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="R5v_Dt3NGQ" role="2$JKZa">
            <node concept="37vLTw" id="R5v_Dt3NjT" role="2Oq$k0">
              <ref role="3cqZAo" node="R5v_Dt3vZU" resolve="it" />
            </node>
            <node concept="liA8E" id="R5v_Dt3OzT" role="2OqNvi">
              <ref role="37wK5l" to="y49u:~DescendantsTreeIterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="R5v_Dt3cDB" role="1B3o_S" />
      <node concept="3cqZAl" id="R5v_Dt3der" role="3clF45" />
      <node concept="37vLTG" id="6iohsvjQcZM" role="3clF46">
        <property role="TrG5h" value="results" />
        <node concept="_YKpA" id="6iohsvjQcZN" role="1tU5fm">
          <node concept="3uibUv" id="6iohsvjQcZO" role="_ZDj9">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="R5v_Dt3Rqy" role="3clF46">
        <property role="TrG5h" value="root" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="R5v_Dt3Rq$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="R5v_Dt3p1x" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="R5v_Dt3p1y" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="R5v_Dt49ja" role="jymVt" />
    <node concept="3clFb_" id="R5v_Dt4aCw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkReferences" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="R5v_Dt4aCz" role="3clF47">
        <node concept="2Gpval" id="R5v_Dt4bv_" role="3cqZAp">
          <node concept="3clFbS" id="R5v_Dt4bvA" role="2LFqv$">
            <node concept="3SKdUt" id="R5v_Dt5mOz" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojMe" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojMf" role="1PaTwD">
                  <property role="3oM_SC" value="there's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMg" role="1PaTwD">
                  <property role="3oM_SC" value="macro" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMh" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMi" role="1PaTwD">
                  <property role="3oM_SC" value="adjust" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMj" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMk" role="1PaTwD">
                  <property role="3oM_SC" value="reference," />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMl" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMm" role="1PaTwD">
                  <property role="3oM_SC" value="care" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt4bvH" role="3cqZAp">
              <node concept="2OqwBi" id="R5v_Dt4bvI" role="3clFbw">
                <node concept="3x8VRR" id="R5v_Dt4bvJ" role="2OqNvi" />
                <node concept="2OqwBi" id="R5v_Dt4bvK" role="2Oq$k0">
                  <node concept="37vLTw" id="R5v_Dt4bvL" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt4b7s" resolve="node" />
                  </node>
                  <node concept="3CFZ6_" id="R5v_Dt4bvM" role="2OqNvi">
                    <node concept="3CFYIw" id="R5v_Dt4bvN" role="3CFYIz">
                      <ref role="3CFYIJ" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
                      <node concept="25Kdxt" id="R5v_Dt4bvO" role="3CFYM5">
                        <node concept="2OqwBi" id="R5v_Dt4bvP" role="25KhWn">
                          <node concept="2GrUjf" id="R5v_Dt4bvQ" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="R5v_Dt4bwN" resolve="ref" />
                          </node>
                          <node concept="liA8E" id="R5v_Dt4bvR" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="R5v_Dt4bvS" role="3clFbx">
                <node concept="3N13vt" id="R5v_Dt4bvT" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="R5v_Dt4bvU" role="3cqZAp">
              <node concept="3cpWsn" id="R5v_Dt4bvV" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="2YIFZM" id="R5v_Dt4bvW" role="33vP2m">
                  <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                  <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                  <node concept="2GrUjf" id="R5v_Dt4bvX" role="37wK5m">
                    <ref role="2Gs0qQ" node="R5v_Dt4bwN" resolve="ref" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="R5v_Dt4bvY" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt4bvZ" role="3cqZAp">
              <node concept="3clFbC" id="R5v_Dt4bw0" role="3clFbw">
                <node concept="37vLTw" id="R5v_Dt4bw1" role="3uHU7B">
                  <ref role="3cqZAo" node="R5v_Dt4bvV" resolve="target" />
                </node>
                <node concept="10Nm6u" id="R5v_Dt4bw2" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="R5v_Dt4bw3" role="3clFbx">
                <node concept="3N13vt" id="R5v_Dt4bw4" role="3cqZAp" />
              </node>
            </node>
            <node concept="3SKdUt" id="R5v_Dt5bE4" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojMn" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojMo" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMp" role="1PaTwD">
                  <property role="3oM_SC" value="reference" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMq" role="1PaTwD">
                  <property role="3oM_SC" value="points" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMr" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMs" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMt" role="1PaTwD">
                  <property role="3oM_SC" value="generator" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMu" role="1PaTwD">
                  <property role="3oM_SC" value="model..." />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt4bw5" role="3cqZAp">
              <node concept="3fqX7Q" id="R5v_Dt4bw6" role="3clFbw">
                <node concept="2YIFZM" id="R5v_Dt4bw7" role="3fr31v">
                  <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
                  <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                  <node concept="2OqwBi" id="R5v_Dt4bw8" role="37wK5m">
                    <node concept="I4A8Y" id="R5v_Dt4bw9" role="2OqNvi" />
                    <node concept="37vLTw" id="R5v_Dt4bwa" role="2Oq$k0">
                      <ref role="3cqZAo" node="R5v_Dt4bvV" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="R5v_Dt4bwb" role="3clFbx">
                <node concept="3N13vt" id="R5v_Dt4bwc" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="R5v_Dt4bwd" role="3cqZAp">
              <node concept="3cpWsn" id="R5v_Dt4bwe" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="2OqwBi" id="R5v_Dt4bwf" role="33vP2m">
                  <node concept="2Rxl7S" id="R5v_Dt4bwg" role="2OqNvi" />
                  <node concept="37vLTw" id="R5v_Dt4bwh" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt4bvV" resolve="target" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="R5v_Dt4bwi" role="1tU5fm" />
              </node>
            </node>
            <node concept="3SKdUt" id="R5v_Dt5cmv" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojMv" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojMw" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMx" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMy" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMz" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojM$" role="1PaTwD">
                  <property role="3oM_SC" value="root" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojM_" role="1PaTwD">
                  <property role="3oM_SC" value="template" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMA" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMB" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMC" role="1PaTwD">
                  <property role="3oM_SC" value="generator" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojMD" role="1PaTwD">
                  <property role="3oM_SC" value="model..." />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt4bwj" role="3cqZAp">
              <node concept="3clFbC" id="R5v_Dt4bwk" role="3clFbw">
                <node concept="2OqwBi" id="R5v_Dt4bwl" role="3uHU7B">
                  <node concept="3CFZ6_" id="R5v_Dt4bwm" role="2OqNvi">
                    <node concept="3CFYIy" id="R5v_Dt4bwn" role="3CFYIz">
                      <ref role="3CFYIx" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="R5v_Dt4bwo" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt4bwe" resolve="root" />
                  </node>
                </node>
                <node concept="10Nm6u" id="R5v_Dt4bwp" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="R5v_Dt4bwq" role="3clFbx">
                <node concept="3N13vt" id="R5v_Dt4bwr" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="R5v_Dt4bws" role="3cqZAp">
              <node concept="3clFbS" id="R5v_Dt4bwt" role="3clFbx">
                <node concept="3N13vt" id="R5v_Dt4bwu" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="R5v_Dt4bwv" role="3clFbw">
                <node concept="37vLTw" id="R5v_Dt4bww" role="3uHU7B">
                  <ref role="3cqZAo" node="R5v_Dt4bwe" resolve="root" />
                </node>
                <node concept="2OqwBi" id="R5v_Dt4bwx" role="3uHU7w">
                  <node concept="2Rxl7S" id="R5v_Dt4bwy" role="2OqNvi" />
                  <node concept="37vLTw" id="R5v_Dt4bwz" role="2Oq$k0">
                    <ref role="3cqZAo" node="R5v_Dt4b7s" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="R5v_Dt4bw$" role="3cqZAp" />
            <node concept="3clFbF" id="a7HeXjWgXS" role="3cqZAp">
              <node concept="2OqwBi" id="a7HeXjWi9u" role="3clFbG">
                <node concept="37vLTw" id="6iohsvjQb6s" role="2Oq$k0">
                  <ref role="3cqZAo" node="6iohsvjQadP" resolve="results" />
                </node>
                <node concept="TSZUe" id="a7HeXjWw2c" role="2OqNvi">
                  <node concept="2ShNRf" id="a7HeXjWw2e" role="25WWJ7">
                    <node concept="YeOm9" id="a7HeXjWw2f" role="2ShVmc">
                      <node concept="1Y3b0j" id="a7HeXjWw2g" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="d6hs:~ReferenceReportItem" resolve="ReferenceReportItem" />
                        <ref role="37wK5l" to="d6hs:~ReferenceReportItem.&lt;init&gt;(jetbrains.mps.errors.MessageStatus,org.jetbrains.mps.openapi.model.SReference,java.lang.String)" resolve="ReferenceReportItem" />
                        <node concept="3Tm1VV" id="a7HeXjWw2h" role="1B3o_S" />
                        <node concept="3clFb_" id="a7HeXjWw2i" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="getIssueKind" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="a7HeXjWw2j" role="1B3o_S" />
                          <node concept="3uibUv" id="dQllQpiYcY" role="3clF45">
                            <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
                          </node>
                          <node concept="3clFbS" id="a7HeXjWw2l" role="3clF47">
                            <node concept="3clFbF" id="a7HeXjWw2m" role="3cqZAp">
                              <node concept="2OqwBi" id="dQllQpiZ$0" role="3clFbG">
                                <node concept="37vLTw" id="dQllQpiYZk" role="2Oq$k0">
                                  <ref role="3cqZAo" node="dQllQpiVol" resolve="CROSS_TEMPLATE_REFERENCES" />
                                </node>
                                <node concept="liA8E" id="dQllQpiZTL" role="2OqNvi">
                                  <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind()" resolve="deriveItemKind" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rm8GO" id="a7HeXjWw2o" role="37wK5m">
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        </node>
                        <node concept="2GrUjf" id="a7HeXjWw2p" role="37wK5m">
                          <ref role="2Gs0qQ" node="R5v_Dt4bwN" resolve="ref" />
                        </node>
                        <node concept="2YIFZM" id="a7HeXjWw2q" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                          <node concept="Xl_RD" id="a7HeXjWw2r" role="37wK5m">
                            <property role="Xl_RC" value="Reference across root templates in role '%s', use mapping label or reference macro" />
                          </node>
                          <node concept="2OqwBi" id="a7HeXjWw2s" role="37wK5m">
                            <node concept="2OqwBi" id="a7HeXjWw2t" role="2Oq$k0">
                              <node concept="liA8E" id="a7HeXjWw2u" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                              </node>
                              <node concept="2GrUjf" id="a7HeXjWw2v" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="R5v_Dt4bwN" resolve="ref" />
                              </node>
                            </node>
                            <node concept="liA8E" id="a7HeXjWw2w" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
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
          <node concept="2GrKxI" id="R5v_Dt4bwN" role="2Gsz3X">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="2OqwBi" id="R5v_Dt4bwO" role="2GsD0m">
            <node concept="37vLTw" id="R5v_Dt4bwP" role="2Oq$k0">
              <ref role="3cqZAo" node="R5v_Dt4b7s" resolve="node" />
            </node>
            <node concept="2z74zc" id="R5v_Dt4bwQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="R5v_Dt4aaa" role="1B3o_S" />
      <node concept="3cqZAl" id="R5v_Dt4aAF" role="3clF45" />
      <node concept="37vLTG" id="6iohsvjQadP" role="3clF46">
        <property role="TrG5h" value="results" />
        <node concept="_YKpA" id="6iohsvjQaIs" role="1tU5fm">
          <node concept="3uibUv" id="6iohsvjQaIt" role="_ZDj9">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="R5v_Dt4b7s" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="R5v_Dt4b7r" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRT$LR" role="1B3o_S" />
    <node concept="3uibUv" id="3etVqSRT$LS" role="1zkMxy">
      <ref role="3uigEE" node="3etVqSRRx7i" resolve="SpecificChecker" />
    </node>
  </node>
  <node concept="312cEu" id="4ascWT9fo$P">
    <property role="3GE5qa" value="Specific Checks" />
    <property role="TrG5h" value="ProperGenPlanChecker" />
    <node concept="312cEg" id="4ascWT9fPMt" role="jymVt">
      <property role="TrG5h" value="myCategory" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4ascWT9fP8$" role="1B3o_S" />
      <node concept="3uibUv" id="4ascWT9fPRa" role="1tU5fm">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
    </node>
    <node concept="312cEg" id="4ascWT9gmrp" role="jymVt">
      <property role="TrG5h" value="myComponentHost" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4ascWT9gmrq" role="1B3o_S" />
      <node concept="3uibUv" id="4ascWT9gmrs" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ascWT9f$wz" role="jymVt" />
    <node concept="3clFbW" id="4ascWT9fP2U" role="jymVt">
      <node concept="3cqZAl" id="4ascWT9fP2X" role="3clF45" />
      <node concept="3Tm1VV" id="4ascWT9fP2Y" role="1B3o_S" />
      <node concept="3clFbS" id="4ascWT9fP2Z" role="3clF47">
        <node concept="3clFbF" id="4ascWT9fQa8" role="3cqZAp">
          <node concept="37vLTI" id="4ascWT9fQQb" role="3clFbG">
            <node concept="2ShNRf" id="4ascWT9fR0K" role="37vLTx">
              <node concept="1pGfFk" id="4ascWT9g9ok" role="2ShVmc">
                <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.&lt;init&gt;(jetbrains.mps.errors.item.IssueKindReportItem$KindLevel,java.lang.String)" resolve="IssueKindReportItem.CheckerCategory" />
                <node concept="Rm8GO" id="4ascWT9g9yP" role="37wK5m">
                  <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
                  <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.MANUAL" resolve="MANUAL" />
                </node>
                <node concept="Xl_RD" id="4ascWT9g9Ji" role="37wK5m">
                  <property role="Xl_RC" value="Generator Plan" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4ascWT9fQa7" role="37vLTJ">
              <ref role="3cqZAo" node="4ascWT9fPMt" resolve="myCategory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ascWT9gmrt" role="3cqZAp">
          <node concept="37vLTI" id="4ascWT9gmrv" role="3clFbG">
            <node concept="37vLTw" id="4ascWT9gmry" role="37vLTJ">
              <ref role="3cqZAo" node="4ascWT9gmrp" resolve="myComponentHost" />
            </node>
            <node concept="37vLTw" id="4ascWT9gmrz" role="37vLTx">
              <ref role="3cqZAo" node="4ascWT9gmc9" resolve="componentHost" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4ascWT9gmc9" role="3clF46">
        <property role="TrG5h" value="componentHost" />
        <node concept="3uibUv" id="4ascWT9gmc8" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ascWT9gds7" role="jymVt" />
    <node concept="2tJIrI" id="4ascWT9gduz" role="jymVt" />
    <node concept="3Tm1VV" id="4ascWT9fo$Q" role="1B3o_S" />
    <node concept="3uibUv" id="4ascWT9f$vO" role="1zkMxy">
      <ref role="3uigEE" node="3etVqSRRx7i" resolve="SpecificChecker" />
    </node>
    <node concept="3clFb_" id="4ascWT9gdxV" role="jymVt">
      <property role="TrG5h" value="check" />
      <node concept="3Tm1VV" id="4ascWT9gdxW" role="1B3o_S" />
      <node concept="37vLTG" id="4ascWT9gdxX" role="3clF46">
        <property role="TrG5h" value="toCheck" />
        <node concept="3uibUv" id="4ascWT9gdxY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4ascWT9gdxZ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4ascWT9gdy0" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4ascWT9gdy1" role="3clF46">
        <property role="TrG5h" value="errorCollector" />
        <node concept="3uibUv" id="4ascWT9gdy2" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~Consumer" resolve="Consumer" />
          <node concept="3qUtgH" id="4ascWT9gdy3" role="11_B2D">
            <node concept="3uibUv" id="4ascWT9gdy4" role="3qUvdb">
              <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4ascWT9gdy5" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="4ascWT9gdy6" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3cqZAl" id="4ascWT9gdy7" role="3clF45" />
      <node concept="2AHcQZ" id="4ascWT9gdys" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4ascWT9gdyt" role="3clF47">
        <node concept="3clFbJ" id="1SCYqfmVJ_5" role="3cqZAp">
          <node concept="3clFbS" id="1SCYqfmVJ_7" role="3clFbx">
            <node concept="3cpWs6" id="1SCYqfmVMIv" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1SCYqfmVLXu" role="3clFbw">
            <node concept="2YIFZM" id="1SCYqfmVLXw" role="3fr31v">
              <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String,boolean)" resolve="is" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="1SCYqfmVLXx" role="37wK5m">
                <property role="Xl_RC" value="mps.check.model.genplan" />
              </node>
              <node concept="3clFbT" id="1SCYqfmVLXy" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ascWT9gnuS" role="3cqZAp">
          <node concept="3cpWsn" id="4ascWT9gnuT" role="3cpWs9">
            <property role="TrG5h" value="gpExt" />
            <node concept="3uibUv" id="4ascWT9gnuU" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~GenPlanExtractor" resolve="GenPlanExtractor" />
            </node>
            <node concept="2ShNRf" id="4ascWT9gnCz" role="33vP2m">
              <node concept="1pGfFk" id="4ascWT9gpnW" role="2ShVmc">
                <ref role="37wK5l" to="ap4t:~GenPlanExtractor.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.messages.IMessageHandler)" resolve="GenPlanExtractor" />
                <node concept="37vLTw" id="4ascWT9gpDj" role="37wK5m">
                  <ref role="3cqZAo" node="4ascWT9gdxZ" resolve="repository" />
                </node>
                <node concept="10Nm6u" id="4ascWT9gqbm" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4ascWT9gr45" role="3cqZAp">
          <node concept="3clFbS" id="4ascWT9gr47" role="3clFbx">
            <node concept="3cpWs6" id="4ascWT9gswy" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="4ascWT9gsaf" role="3clFbw">
            <node concept="2OqwBi" id="4ascWT9gsah" role="3fr31v">
              <node concept="37vLTw" id="4ascWT9gsai" role="2Oq$k0">
                <ref role="3cqZAo" node="4ascWT9gnuT" resolve="gpExt" />
              </node>
              <node concept="liA8E" id="4ascWT9gsaj" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenPlanExtractor.hasPlan(org.jetbrains.mps.openapi.model.SModel)" resolve="hasPlan" />
                <node concept="37vLTw" id="4ascWT9gsak" role="37wK5m">
                  <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7qKLZZ2ZvDK" role="3cqZAp">
          <node concept="1PaTwC" id="7qKLZZ2ZvDL" role="1aUNEU">
            <node concept="3oM_SD" id="7qKLZZ2ZvDM" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2Zy$H" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZvE3" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZvE6" role="1PaTwD">
              <property role="3oM_SC" value="workaround" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2Zyz0" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2Zyzd" role="1PaTwD">
              <property role="3oM_SC" value="MPS-32687" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2Zy_I" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2Zy_Q" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyAf" role="1PaTwD">
              <property role="3oM_SC" value="GP" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyAx" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyAO" role="1PaTwD">
              <property role="3oM_SC" value="descriptor" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyBg" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyBt" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyBV" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyCM" role="1PaTwD">
              <property role="3oM_SC" value="indeed" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyCq" role="1PaTwD">
              <property role="3oM_SC" value="cover" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyDj" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyDP" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7qKLZZ2ZyNo" role="3cqZAp">
          <node concept="1PaTwC" id="7qKLZZ2ZyNp" role="1aUNEU">
            <node concept="3oM_SD" id="7qKLZZ2ZyNS" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyO4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyO7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyOj" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyOo" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyOA" role="1PaTwD">
              <property role="3oM_SC" value="languages" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyOX" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyP_" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyPI" role="1PaTwD">
              <property role="3oM_SC" value="show" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyQ0" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyQj" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyQv" role="1PaTwD">
              <property role="3oM_SC" value="descriptor" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyQO" role="1PaTwD">
              <property role="3oM_SC" value="model." />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyR2" role="1PaTwD">
              <property role="3oM_SC" value="As" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyRx" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyRT" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZySa" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZySs" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZySJ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZyT3" role="1PaTwD">
              <property role="3oM_SC" value="now," />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZD43" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZD4D" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZD50" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZD5C" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZD69" role="1PaTwD">
              <property role="3oM_SC" value="acceptable," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7qKLZZ2ZEVu" role="3cqZAp">
          <node concept="1PaTwC" id="7qKLZZ2ZEVv" role="1aUNEU">
            <node concept="3oM_SD" id="7qKLZZ2ZEVw" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZEZo" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFDK" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFDW" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFE1" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFEu" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFEH" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFEX" role="1PaTwD">
              <property role="3oM_SC" value="reveal" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFFu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFFC" role="1PaTwD">
              <property role="3oM_SC" value="issues," />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFFN" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFG7" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7qKLZZ2ZFGk" role="1PaTwD">
              <property role="3oM_SC" value="infos." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qKLZZ2ZyXr" role="3cqZAp">
          <node concept="3cpWsn" id="7qKLZZ2ZyXs" role="3cpWs9">
            <property role="TrG5h" value="isDescriptorModel" />
            <property role="3TUv4t" value="true" />
            <node concept="10P_77" id="7qKLZZ2Zv69" role="1tU5fm" />
            <node concept="2YIFZM" id="7qKLZZ2ZyXt" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isDescriptorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isDescriptorModel" />
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="37vLTw" id="7qKLZZ2ZyXu" role="37wK5m">
                <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ascWT9gq$j" role="3cqZAp">
          <node concept="3cpWsn" id="4ascWT9gq$h" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="externalPlan" />
            <node concept="3uibUv" id="4ascWT9gqGP" role="1tU5fm">
              <ref role="3uigEE" to="ap4t:~ModelGenerationPlan" resolve="ModelGenerationPlan" />
            </node>
            <node concept="2OqwBi" id="4ascWT9gsSC" role="33vP2m">
              <node concept="37vLTw" id="4ascWT9gsDA" role="2Oq$k0">
                <ref role="3cqZAo" node="4ascWT9gnuT" resolve="gpExt" />
              </node>
              <node concept="liA8E" id="4ascWT9gsZU" role="2OqNvi">
                <ref role="37wK5l" to="ap4t:~GenPlanExtractor.getPlan(org.jetbrains.mps.openapi.model.SModel)" resolve="getPlan" />
                <node concept="37vLTw" id="4ascWT9gt9X" role="37wK5m">
                  <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ascWT9gEHP" role="3cqZAp">
          <node concept="3cpWsn" id="4ascWT9gEHV" role="3cpWs9">
            <property role="TrG5h" value="coveredLanguages" />
            <node concept="3uibUv" id="4ascWT9gEHX" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
              <node concept="3uibUv" id="4ascWT9gF7c" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2ShNRf" id="4ascWT9gFik" role="33vP2m">
              <node concept="1pGfFk" id="4ascWT9gH39" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="4ascWT9gHpx" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ascWT9hSOA" role="3cqZAp">
          <node concept="2OqwBi" id="4ascWT9hTNx" role="3clFbG">
            <node concept="37vLTw" id="4ascWT9hSO$" role="2Oq$k0">
              <ref role="3cqZAo" node="4ascWT9gdy5" resolve="monitor" />
            </node>
            <node concept="liA8E" id="4ascWT9hVGA" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="4ascWT9hVPF" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="3cmrfG" id="4ascWT9hVZQ" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4ascWT9gHtD" role="3cqZAp">
          <node concept="3clFbS" id="4ascWT9gHtG" role="2LFqv$">
            <node concept="3clFbF" id="4ascWT9gJjK" role="3cqZAp">
              <node concept="2OqwBi" id="4ascWT9gK9e" role="3clFbG">
                <node concept="37vLTw" id="4ascWT9gJjI" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ascWT9gEHV" resolve="coveredLanguages" />
                </node>
                <node concept="liA8E" id="4ascWT9gLkV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="4ascWT9gISy" role="37wK5m">
                    <node concept="2OqwBi" id="4ascWT9gIBo" role="2Oq$k0">
                      <node concept="37vLTw" id="4ascWT9gIoE" role="2Oq$k0">
                        <ref role="3cqZAo" node="4ascWT9gHtH" resolve="tm" />
                      </node>
                      <node concept="liA8E" id="4ascWT9gIKt" role="2OqNvi">
                        <ref role="37wK5l" to="vndm:~GeneratorRuntime.getSourceLanguage()" resolve="getSourceLanguage" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4ascWT9gJ0M" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRuntime.getIdentity()" resolve="getIdentity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4ascWT9gHtH" role="1Duv9x">
            <property role="TrG5h" value="tm" />
            <node concept="3uibUv" id="4ascWT9gI2F" role="1tU5fm">
              <ref role="3uigEE" to="r99j:~TemplateModule" resolve="TemplateModule" />
            </node>
          </node>
          <node concept="2OqwBi" id="4ascWT9gHtM" role="1DdaDG">
            <node concept="37vLTw" id="4ascWT9gHtN" role="2Oq$k0">
              <ref role="3cqZAo" node="4ascWT9gq$h" resolve="externalPlan" />
            </node>
            <node concept="liA8E" id="4ascWT9gHtO" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~ModelGenerationPlan.getGenerators()" resolve="getGenerators" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ascWT9gTAu" role="3cqZAp">
          <node concept="3cpWsn" id="4ascWT9gTAv" role="3cpWs9">
            <property role="TrG5h" value="languageRegistry" />
            <node concept="3uibUv" id="4ascWT9gTAw" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
            </node>
            <node concept="2OqwBi" id="4ascWT9gUXy" role="33vP2m">
              <node concept="37vLTw" id="4ascWT9gUuI" role="2Oq$k0">
                <ref role="3cqZAo" node="4ascWT9gmrp" resolve="myComponentHost" />
              </node>
              <node concept="liA8E" id="4ascWT9gVmm" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="4ascWT9gVE$" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FXPPIUfiHq" role="3cqZAp">
          <node concept="3cpWsn" id="4FXPPIUfiHr" role="3cpWs9">
            <property role="TrG5h" value="egc" />
            <node concept="3uibUv" id="4FXPPIUfiH8" role="1tU5fm">
              <ref role="3uigEE" to="tft2:~EngagedGeneratorCollector" resolve="EngagedGeneratorCollector" />
            </node>
            <node concept="2ShNRf" id="4FXPPIUfiHs" role="33vP2m">
              <node concept="1pGfFk" id="4FXPPIUfiHt" role="2ShVmc">
                <ref role="37wK5l" to="tft2:~EngagedGeneratorCollector.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,org.jetbrains.mps.openapi.model.SModel)" resolve="EngagedGeneratorCollector" />
                <node concept="37vLTw" id="7lc5ByQRpHz" role="37wK5m">
                  <ref role="3cqZAo" node="4ascWT9gTAv" resolve="languageRegistry" />
                </node>
                <node concept="37vLTw" id="4ascWT9gE1A" role="37wK5m">
                  <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ascWT9i1yS" role="3cqZAp">
          <node concept="2OqwBi" id="4ascWT9i2yx" role="3clFbG">
            <node concept="37vLTw" id="4ascWT9i1yQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4ascWT9gdy5" resolve="monitor" />
            </node>
            <node concept="liA8E" id="4ascWT9i4lu" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
              <node concept="3cmrfG" id="4ascWT9i4uG" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gan9NoO58U" role="3cqZAp">
          <node concept="3cpWsn" id="1gan9NoO58V" role="3cpWs9">
            <property role="TrG5h" value="employedLanguages" />
            <node concept="3uibUv" id="1gan9NoO58W" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="1gan9NoO6i1" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gan9NoOFbV" role="3cqZAp">
          <node concept="3cpWsn" id="1gan9NoOFbW" role="3cpWs9">
            <property role="TrG5h" value="engaged" />
            <node concept="3uibUv" id="1gan9NoOFbo" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="1gan9NoOFbr" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="1gan9NoOFbX" role="33vP2m">
              <node concept="2ShNRf" id="1gan9NoOFbY" role="2Oq$k0">
                <node concept="1pGfFk" id="1gan9NoOFbZ" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                  <node concept="37vLTw" id="1gan9NoOFc0" role="37wK5m">
                    <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1gan9NoOFc1" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelImports.getLanguagesEngagedOnGeneration()" resolve="getLanguagesEngagedOnGeneration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1gan9NoO847" role="3cqZAp">
          <node concept="3clFbS" id="1gan9NoO849" role="3clFbx">
            <node concept="3clFbF" id="1gan9NoOKUQ" role="3cqZAp">
              <node concept="37vLTI" id="1gan9NoOLmW" role="3clFbG">
                <node concept="37vLTw" id="1gan9NoOKUO" role="37vLTJ">
                  <ref role="3cqZAo" node="1gan9NoO58V" resolve="employedLanguages" />
                </node>
                <node concept="2OqwBi" id="4ascWT9gNmo" role="37vLTx">
                  <node concept="37vLTw" id="4ascWT9gNmp" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FXPPIUfiHr" resolve="egc" />
                  </node>
                  <node concept="liA8E" id="4ascWT9gNmq" role="2OqNvi">
                    <ref role="37wK5l" to="tft2:~EngagedGeneratorCollector.getDirectlyUsedLanguages()" resolve="getDirectlyUsedLanguages" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1gan9NoOJuZ" role="3clFbw">
            <node concept="37vLTw" id="1gan9NoOHwW" role="2Oq$k0">
              <ref role="3cqZAo" node="1gan9NoOFbW" resolve="engaged" />
            </node>
            <node concept="liA8E" id="1gan9NoOKzo" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="9aQIb" id="1gan9NoOO_b" role="9aQIa">
            <node concept="3clFbS" id="1gan9NoOO_c" role="9aQI4">
              <node concept="3SKdUt" id="1gan9NoP1_J" role="3cqZAp">
                <node concept="1PaTwC" id="1gan9NoP1_K" role="1aUNEU">
                  <node concept="3oM_SD" id="1gan9NoP1_L" role="1PaTwD">
                    <property role="3oM_SC" value="Assume" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1V5" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1Vo" role="1PaTwD">
                    <property role="3oM_SC" value="languages" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1V$" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1VT" role="1PaTwD">
                    <property role="3oM_SC" value="off" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1VZ" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1WB" role="1PaTwD">
                    <property role="3oM_SC" value="limits." />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1WR" role="1PaTwD">
                    <property role="3oM_SC" value="We" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1X8" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1Xi" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1XH" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1XT" role="1PaTwD">
                    <property role="3oM_SC" value="supply" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1Y6" role="1PaTwD">
                    <property role="3oM_SC" value="extra" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1YG" role="1PaTwD">
                    <property role="3oM_SC" value="generators" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1Z3" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1Zj" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP1Z$" role="1PaTwD">
                    <property role="3oM_SC" value="extension" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP206" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP20x" role="1PaTwD">
                    <property role="3oM_SC" value="GP's" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP21S" role="1PaTwD">
                    <property role="3oM_SC" value="`apply" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP22t" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP22N" role="1PaTwD">
                    <property role="3oM_SC" value="extended`" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP23q" role="1PaTwD">
                    <property role="3oM_SC" value="clause." />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="1gan9NoP2wo" role="3cqZAp">
                <node concept="1PaTwC" id="1gan9NoP2wp" role="1aUNEU">
                  <node concept="3oM_SD" id="1gan9NoP2OJ" role="1PaTwD">
                    <property role="3oM_SC" value="There's" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2OT" role="1PaTwD">
                    <property role="3oM_SC" value="no" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2OW" role="1PaTwD">
                    <property role="3oM_SC" value="mechanism" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2P0" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2P5" role="1PaTwD">
                    <property role="3oM_SC" value="tell" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Pb" role="1PaTwD">
                    <property role="3oM_SC" value="whether" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Pq" role="1PaTwD">
                    <property role="3oM_SC" value="any" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2PE" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2PN" role="1PaTwD">
                    <property role="3oM_SC" value="language" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2PX" role="1PaTwD">
                    <property role="3oM_SC" value="contributes" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Qg" role="1PaTwD">
                    <property role="3oM_SC" value="anything" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2RI" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Rf" role="1PaTwD">
                    <property role="3oM_SC" value="generator" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2S4" role="1PaTwD">
                    <property role="3oM_SC" value="eager" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Sr" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2SF" role="1PaTwD">
                    <property role="3oM_SC" value="extension," />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2T4" role="1PaTwD">
                    <property role="3oM_SC" value="therefore" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Tu" role="1PaTwD">
                    <property role="3oM_SC" value="just" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2TL" role="1PaTwD">
                    <property role="3oM_SC" value="exclude" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP2Ud" role="1PaTwD">
                    <property role="3oM_SC" value="all" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="1gan9NoP3oS" role="3cqZAp">
                <node concept="1PaTwC" id="1gan9NoP3oT" role="1aUNEU">
                  <node concept="3oM_SD" id="1gan9NoP3oU" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3Hr" role="1PaTwD">
                    <property role="3oM_SC" value="languages" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3HI" role="1PaTwD">
                    <property role="3oM_SC" value="altogether." />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3I2" role="1PaTwD">
                    <property role="3oM_SC" value="Our" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3In" role="1PaTwD">
                    <property role="3oM_SC" value="primary" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3It" role="1PaTwD">
                    <property role="3oM_SC" value="scenario" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3IG" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3IO" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3IX" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3J7" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3Jy" role="1PaTwD">
                    <property role="3oM_SC" value="languages" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3JQ" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3K3" role="1PaTwD">
                    <property role="3oM_SC" value="@descriptor" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3Kx" role="1PaTwD">
                    <property role="3oM_SC" value="models," />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3Lt" role="1PaTwD">
                    <property role="3oM_SC" value="where" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3NN" role="1PaTwD">
                    <property role="3oM_SC" value="devkit's" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3Ok" role="1PaTwD">
                    <property role="3oM_SC" value="associated" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3OA" role="1PaTwD">
                    <property role="3oM_SC" value="plan" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3P9" role="1PaTwD">
                    <property role="3oM_SC" value="takes" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3PH" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="1gan9NoP3Qy" role="3cqZAp">
                <node concept="1PaTwC" id="1gan9NoP3Qx" role="1aUNEU">
                  <node concept="3oM_SD" id="1gan9NoP3Qw" role="1PaTwD">
                    <property role="3oM_SC" value="any" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3Q2" role="1PaTwD">
                    <property role="3oM_SC" value="extension" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4dB" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4dF" role="1PaTwD">
                    <property role="3oM_SC" value="lang.descriptor" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4dS" role="1PaTwD">
                    <property role="3oM_SC" value="generator," />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4em" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4et" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4e_" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4eQ" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4f8" role="1PaTwD">
                    <property role="3oM_SC" value="give" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4fr" role="1PaTwD">
                    <property role="3oM_SC" value="aspect" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4fJ" role="1PaTwD">
                    <property role="3oM_SC" value="languages" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4fW" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4ga" role="1PaTwD">
                    <property role="3oM_SC" value="chance" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4gx" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4gL" role="1PaTwD">
                    <property role="3oM_SC" value="pop" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP4ha" role="1PaTwD">
                    <property role="3oM_SC" value="in." />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="1gan9NoOZwr" role="3cqZAp">
                <node concept="1PaTwC" id="1gan9NoOZws" role="1aUNEU">
                  <node concept="3oM_SD" id="1gan9NoOZwt" role="1PaTwD">
                    <property role="3oM_SC" value="XXX" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoP3L0" role="1PaTwD">
                    <property role="3oM_SC" value="it's" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZNG" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZNJ" role="1PaTwD">
                    <property role="3oM_SC" value="perfect," />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZNV" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZO8" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZOe" role="1PaTwD">
                    <property role="3oM_SC" value="don't" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZOl" role="1PaTwD">
                    <property role="3oM_SC" value="distinguish" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZO_" role="1PaTwD">
                    <property role="3oM_SC" value="cases" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZQN" role="1PaTwD">
                    <property role="3oM_SC" value="when" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZR5" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZRg" role="1PaTwD">
                    <property role="3oM_SC" value="language" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZR$" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZRL" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZS7" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZSu" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZSI" role="1PaTwD">
                    <property role="3oM_SC" value="both" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZTf" role="1PaTwD">
                    <property role="3oM_SC" value="'engaged'" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZU9" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="1gan9NoOZUs" role="1PaTwD">
                    <property role="3oM_SC" value="'used'" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1gan9NoOPtc" role="3cqZAp">
                <node concept="37vLTI" id="1gan9NoOPSw" role="3clFbG">
                  <node concept="2ShNRf" id="1gan9NoOQ2Q" role="37vLTx">
                    <node concept="1pGfFk" id="1gan9NoORQV" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;(java.util.Collection)" resolve="LinkedList" />
                      <node concept="3uibUv" id="1gan9NoOSL2" role="1pMfVU">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="1gan9NoOTH9" role="37wK5m">
                        <node concept="37vLTw" id="1gan9NoOTdL" role="2Oq$k0">
                          <ref role="3cqZAo" node="4FXPPIUfiHr" resolve="egc" />
                        </node>
                        <node concept="liA8E" id="1gan9NoOUbj" role="2OqNvi">
                          <ref role="37wK5l" to="tft2:~EngagedGeneratorCollector.getDirectlyUsedLanguages()" resolve="getDirectlyUsedLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1gan9NoOPtb" role="37vLTJ">
                    <ref role="3cqZAo" node="1gan9NoO58V" resolve="employedLanguages" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1gan9NoOV44" role="3cqZAp">
                <node concept="2OqwBi" id="1gan9NoOVLZ" role="3clFbG">
                  <node concept="37vLTw" id="1gan9NoOV42" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gan9NoO58V" resolve="employedLanguages" />
                  </node>
                  <node concept="liA8E" id="1gan9NoOWxk" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.removeAll(java.util.Collection)" resolve="removeAll" />
                    <node concept="37vLTw" id="1gan9NoOWTe" role="37wK5m">
                      <ref role="3cqZAo" node="1gan9NoOFbW" resolve="engaged" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4ascWT9gNmf" role="3cqZAp">
          <node concept="3clFbS" id="4ascWT9gNmi" role="2LFqv$">
            <node concept="3clFbJ" id="4ascWT9gOnk" role="3cqZAp">
              <node concept="2OqwBi" id="4ascWT9gPEN" role="3clFbw">
                <node concept="37vLTw" id="4ascWT9gOCs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ascWT9gEHV" resolve="coveredLanguages" />
                </node>
                <node concept="liA8E" id="4ascWT9gQDp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.contains(java.lang.Object)" resolve="contains" />
                  <node concept="37vLTw" id="4ascWT9gQTD" role="37wK5m">
                    <ref role="3cqZAo" node="4ascWT9gNmj" resolve="inUse" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4ascWT9gOnm" role="3clFbx">
                <node concept="3N13vt" id="4ascWT9gRci" role="3cqZAp" />
              </node>
            </node>
            <node concept="3SKdUt" id="4ascWT9gRos" role="3cqZAp">
              <node concept="1PaTwC" id="4ascWT9gRot" role="1aUNEU">
                <node concept="3oM_SD" id="4ascWT9gRsy" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRsG" role="1PaTwD">
                  <property role="3oM_SC" value="mentioned" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRsZ" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRtb" role="1PaTwD">
                  <property role="3oM_SC" value="GP" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRtw" role="1PaTwD">
                  <property role="3oM_SC" value="-" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRtA" role="1PaTwD">
                  <property role="3oM_SC" value="does" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRtP" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRu5" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRum" role="1PaTwD">
                  <property role="3oM_SC" value="generator" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRuC" role="1PaTwD">
                  <property role="3oM_SC" value="at" />
                </node>
                <node concept="3oM_SD" id="4ascWT9gRuV" role="1PaTwD">
                  <property role="3oM_SC" value="all?" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4ascWT9gWHY" role="3cqZAp">
              <node concept="3cpWsn" id="4ascWT9gWHZ" role="3cpWs9">
                <property role="TrG5h" value="lr" />
                <node concept="3uibUv" id="4ascWT9gWGk" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="4ascWT9gWI0" role="33vP2m">
                  <node concept="37vLTw" id="4ascWT9gWI1" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ascWT9gTAv" resolve="languageRegistry" />
                  </node>
                  <node concept="liA8E" id="4ascWT9gWI2" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                    <node concept="37vLTw" id="4ascWT9gWI3" role="37wK5m">
                      <ref role="3cqZAo" node="4ascWT9gNmj" resolve="inUse" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4ascWT9gWYC" role="3cqZAp">
              <node concept="3clFbS" id="4ascWT9gWYE" role="3clFbx">
                <node concept="3cpWs8" id="4ascWT9hhok" role="3cqZAp">
                  <node concept="3cpWsn" id="4ascWT9hhol" role="3cpWs9">
                    <property role="TrG5h" value="m" />
                    <node concept="3uibUv" id="4ascWT9hhom" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2YIFZM" id="4ascWT9hhLD" role="33vP2m">
                      <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="Xl_RD" id="4ascWT9hhV0" role="37wK5m">
                        <property role="Xl_RC" value="No runtime information for language %s" />
                      </node>
                      <node concept="2OqwBi" id="7lc5ByQRJ5H" role="37wK5m">
                        <node concept="37vLTw" id="7lc5ByQRItg" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ascWT9gNmj" resolve="inUse" />
                        </node>
                        <node concept="liA8E" id="7lc5ByQRJkx" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ascWT9gXRP" role="3cqZAp">
                  <node concept="2OqwBi" id="4ascWT9gYtV" role="3clFbG">
                    <node concept="37vLTw" id="4ascWT9gXRM" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ascWT9gdy1" resolve="errorCollector" />
                    </node>
                    <node concept="liA8E" id="4ascWT9h02E" role="2OqNvi">
                      <ref role="37wK5l" to="yyf4:~Consumer.accept(java.lang.Object)" resolve="accept" />
                      <node concept="1rXfSq" id="4ascWT9hwAe" role="37wK5m">
                        <ref role="37wK5l" node="3nbHAhd1FOK" resolve="error" />
                        <node concept="37vLTw" id="4ascWT9hxa8" role="37wK5m">
                          <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                        </node>
                        <node concept="37vLTw" id="4ascWT9hxXL" role="37wK5m">
                          <ref role="3cqZAo" node="4ascWT9hhol" resolve="m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="4ascWT9h0DP" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="4ascWT9gXqA" role="3clFbw">
                <node concept="10Nm6u" id="4ascWT9gXAA" role="3uHU7w" />
                <node concept="37vLTw" id="4ascWT9gXbX" role="3uHU7B">
                  <ref role="3cqZAo" node="4ascWT9gWHZ" resolve="lr" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4ascWT9hCmd" role="3cqZAp">
              <node concept="3cpWsn" id="4ascWT9hCme" role="3cpWs9">
                <property role="TrG5h" value="nGeneratorsOfLanguageInUse" />
                <node concept="10Oyi0" id="4ascWT9hCe9" role="1tU5fm" />
                <node concept="2OqwBi" id="4ascWT9hCmf" role="33vP2m">
                  <node concept="2OqwBi" id="4ascWT9hCmg" role="2Oq$k0">
                    <node concept="37vLTw" id="4ascWT9hCmh" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ascWT9gWHZ" resolve="lr" />
                    </node>
                    <node concept="liA8E" id="4ascWT9hCmi" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRuntime.getGenerators()" resolve="getGenerators" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4ascWT9hCmj" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4ascWT9hDls" role="3cqZAp">
              <node concept="3clFbS" id="4ascWT9hDlu" role="3clFbx">
                <node concept="3N13vt" id="4ascWT9hGq$" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="4ascWT9hFwP" role="3clFbw">
                <node concept="37vLTw" id="4ascWT9hDPu" role="3uHU7B">
                  <ref role="3cqZAo" node="4ascWT9hCme" resolve="nGeneratorsOfLanguageInUse" />
                </node>
                <node concept="3cmrfG" id="4ascWT9hFwq" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4ascWT9hMLU" role="3cqZAp">
              <node concept="3cpWsn" id="4ascWT9hMLV" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="4ascWT9hMIy" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="4ascWT9hMLW" role="33vP2m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <node concept="Xl_RD" id="4ascWT9hMLX" role="37wK5m">
                    <property role="Xl_RC" value="Model uses language %s with %d generator(s), none of which is engaged with the active generation plan" />
                  </node>
                  <node concept="2OqwBi" id="7lc5ByQRKS2" role="37wK5m">
                    <node concept="37vLTw" id="7lc5ByQRK_b" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ascWT9gWHZ" resolve="lr" />
                    </node>
                    <node concept="liA8E" id="7lc5ByQRL6G" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4ascWT9hMM1" role="37wK5m">
                    <ref role="3cqZAo" node="4ascWT9hCme" resolve="nGeneratorsOfLanguageInUse" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7lc5ByQRMDO" role="3cqZAp">
              <node concept="1PaTwC" id="7lc5ByQRMDP" role="1aUNEU">
                <node concept="3oM_SD" id="7lc5ByQRMRj" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMRt" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMRC" role="1PaTwD">
                  <property role="3oM_SC" value="sure" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMRG" role="1PaTwD">
                  <property role="3oM_SC" value="whether" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMRT" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMS7" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMSe" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMSm" role="1PaTwD">
                  <property role="3oM_SC" value="error" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMSv" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMSL" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMSW" role="1PaTwD">
                  <property role="3oM_SC" value="warning." />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMTg" role="1PaTwD">
                  <property role="3oM_SC" value="However," />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMT_" role="1PaTwD">
                  <property role="3oM_SC" value="Make" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMTV" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMUa" role="1PaTwD">
                  <property role="3oM_SC" value="stop" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMUy" role="1PaTwD">
                  <property role="3oM_SC" value="unless" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMUV" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMVt" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMVK" role="1PaTwD">
                  <property role="3oM_SC" value="error," />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMWc" role="1PaTwD">
                  <property role="3oM_SC" value="hence" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMWL" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMXf" role="1PaTwD">
                  <property role="3oM_SC" value="stick" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMXA" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7lc5ByQRMXY" role="1PaTwD">
                  <property role="3oM_SC" value="that." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4ascWT9hHEP" role="3cqZAp">
              <node concept="2OqwBi" id="4ascWT9hIt2" role="3clFbG">
                <node concept="37vLTw" id="4ascWT9hHEN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ascWT9gdy1" resolve="errorCollector" />
                </node>
                <node concept="liA8E" id="4ascWT9hIMi" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~Consumer.accept(java.lang.Object)" resolve="accept" />
                  <node concept="3K4zz7" id="7qKLZZ2ZKJj" role="37wK5m">
                    <node concept="1rXfSq" id="7qKLZZ2ZL4t" role="3K4E3e">
                      <ref role="37wK5l" node="4ascWT9hu3G" resolve="info" />
                      <node concept="37vLTw" id="7qKLZZ2ZLYp" role="37wK5m">
                        <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                      </node>
                      <node concept="37vLTw" id="7qKLZZ2ZMzx" role="37wK5m">
                        <ref role="3cqZAo" node="4ascWT9hMLV" resolve="m" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qKLZZ2ZKcy" role="3K4Cdx">
                      <ref role="3cqZAo" node="7qKLZZ2ZyXs" resolve="isDescriptorModel" />
                    </node>
                    <node concept="1rXfSq" id="4ascWT9hJ5$" role="3K4GZi">
                      <ref role="37wK5l" node="4ascWT9hpIB" resolve="warning" />
                      <node concept="37vLTw" id="4ascWT9hJvK" role="37wK5m">
                        <ref role="3cqZAo" node="4ascWT9gdxX" resolve="toCheck" />
                      </node>
                      <node concept="37vLTw" id="4ascWT9hMM2" role="37wK5m">
                        <ref role="3cqZAo" node="4ascWT9hMLV" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4ascWT9gNmj" role="1Duv9x">
            <property role="TrG5h" value="inUse" />
            <node concept="3uibUv" id="4ascWT9gNmn" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="37vLTw" id="1gan9NoON1z" role="1DdaDG">
            <ref role="3cqZAo" node="1gan9NoO58V" resolve="employedLanguages" />
          </node>
        </node>
        <node concept="3clFbF" id="4ascWT9i6c7" role="3cqZAp">
          <node concept="2OqwBi" id="4ascWT9i8cz" role="3clFbG">
            <node concept="37vLTw" id="4ascWT9i6c5" role="2Oq$k0">
              <ref role="3cqZAo" node="4ascWT9gdy5" resolve="monitor" />
            </node>
            <node concept="liA8E" id="4ascWT9i9nf" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
              <node concept="3cmrfG" id="4ascWT9i9wy" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ascWT9hXTZ" role="3cqZAp">
          <node concept="2OqwBi" id="4ascWT9hYTo" role="3clFbG">
            <node concept="37vLTw" id="4ascWT9hXTX" role="2Oq$k0">
              <ref role="3cqZAo" node="4ascWT9gdy5" resolve="monitor" />
            </node>
            <node concept="liA8E" id="4ascWT9hZqL" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ascWT9gMVT" role="jymVt" />
    <node concept="3clFb_" id="4ascWT9gdy$" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCategory" />
      <node concept="3Tm1VV" id="4ascWT9gdyA" role="1B3o_S" />
      <node concept="3uibUv" id="4ascWT9gdyB" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="3clFbS" id="4ascWT9gdyQ" role="3clF47">
        <node concept="3clFbF" id="4ascWT9gdyT" role="3cqZAp">
          <node concept="37vLTw" id="4ascWT9geao" role="3clFbG">
            <ref role="3cqZAo" node="4ascWT9fPMt" resolve="myCategory" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ascWT9gdyR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ascWT9ho6A" role="jymVt" />
    <node concept="3clFb_" id="3nbHAhd1FOK" role="jymVt">
      <property role="TrG5h" value="error" />
      <node concept="3clFbS" id="3nbHAhd1FOL" role="3clF47">
        <node concept="3clFbF" id="3nbHAhd1FOM" role="3cqZAp">
          <node concept="2ShNRf" id="3nbHAhd1FON" role="3clFbG">
            <node concept="1pGfFk" id="3nbHAhd1FOO" role="2ShVmc">
              <ref role="37wK5l" node="4ascWT9h7aO" resolve="ProperGenPlanChecker.Item" />
              <node concept="37vLTw" id="3nbHAhd1FOP" role="37wK5m">
                <ref role="3cqZAo" node="3nbHAhd1FOX" resolve="model" />
              </node>
              <node concept="Rm8GO" id="3nbHAhd1FOQ" role="37wK5m">
                <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
              </node>
              <node concept="37vLTw" id="3nbHAhd1FOR" role="37wK5m">
                <ref role="3cqZAo" node="3nbHAhd1FOZ" resolve="message" />
              </node>
              <node concept="2OqwBi" id="3nbHAhd1FOS" role="37wK5m">
                <node concept="37vLTw" id="3nbHAhd1FOT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ascWT9fPMt" resolve="myCategory" />
                </node>
                <node concept="liA8E" id="3nbHAhd1FOU" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind()" resolve="deriveItemKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3nbHAhd1FOV" role="1B3o_S" />
      <node concept="3uibUv" id="3nbHAhd1FOW" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
      </node>
      <node concept="37vLTG" id="3nbHAhd1FOX" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="3nbHAhd1FOY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="3nbHAhd1FOZ" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="3nbHAhd1FP0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ascWT9huJ4" role="jymVt" />
    <node concept="3clFb_" id="4ascWT9hpIB" role="jymVt">
      <property role="TrG5h" value="warning" />
      <node concept="3clFbS" id="4ascWT9hpIE" role="3clF47">
        <node concept="3clFbF" id="4ascWT9hrLu" role="3cqZAp">
          <node concept="2ShNRf" id="4ascWT9hrLw" role="3clFbG">
            <node concept="1pGfFk" id="4ascWT9hrLx" role="2ShVmc">
              <ref role="37wK5l" node="4ascWT9h7aO" resolve="ProperGenPlanChecker.Item" />
              <node concept="37vLTw" id="4ascWT9ht$s" role="37wK5m">
                <ref role="3cqZAo" node="4ascWT9hqtc" resolve="model" />
              </node>
              <node concept="Rm8GO" id="3nbHAhd23Wo" role="37wK5m">
                <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
              </node>
              <node concept="37vLTw" id="4ascWT9htlP" role="37wK5m">
                <ref role="3cqZAo" node="4ascWT9hr4b" resolve="message" />
              </node>
              <node concept="2OqwBi" id="4ascWT9hrL_" role="37wK5m">
                <node concept="37vLTw" id="4ascWT9hrLA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ascWT9fPMt" resolve="myCategory" />
                </node>
                <node concept="liA8E" id="4ascWT9hrLB" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind()" resolve="deriveItemKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ascWT9hoGc" role="1B3o_S" />
      <node concept="3uibUv" id="4ascWT9hplu" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
      </node>
      <node concept="37vLTG" id="4ascWT9hqtc" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4ascWT9hqtb" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4ascWT9hr4b" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="4ascWT9hr$v" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nbHAhd20r8" role="jymVt" />
    <node concept="3clFb_" id="4ascWT9hu3G" role="jymVt">
      <property role="TrG5h" value="info" />
      <node concept="3clFbS" id="4ascWT9hu3H" role="3clF47">
        <node concept="3clFbF" id="4ascWT9hu3I" role="3cqZAp">
          <node concept="2ShNRf" id="4ascWT9hu3J" role="3clFbG">
            <node concept="1pGfFk" id="4ascWT9hu3K" role="2ShVmc">
              <ref role="37wK5l" node="4ascWT9h7aO" resolve="ProperGenPlanChecker.Item" />
              <node concept="37vLTw" id="4ascWT9hu3L" role="37wK5m">
                <ref role="3cqZAo" node="4ascWT9hu3T" resolve="model" />
              </node>
              <node concept="Rm8GO" id="7qKLZZ2ZOzS" role="37wK5m">
                <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
              </node>
              <node concept="37vLTw" id="4ascWT9hu3N" role="37wK5m">
                <ref role="3cqZAo" node="4ascWT9hu3V" resolve="message" />
              </node>
              <node concept="2OqwBi" id="4ascWT9hu3O" role="37wK5m">
                <node concept="37vLTw" id="4ascWT9hu3P" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ascWT9fPMt" resolve="myCategory" />
                </node>
                <node concept="liA8E" id="4ascWT9hu3Q" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind()" resolve="deriveItemKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ascWT9hu3R" role="1B3o_S" />
      <node concept="3uibUv" id="4ascWT9hu3S" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
      </node>
      <node concept="37vLTG" id="4ascWT9hu3T" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4ascWT9hu3U" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4ascWT9hu3V" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="4ascWT9hu3W" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ascWT9h1lx" role="jymVt" />
    <node concept="312cEu" id="4ascWT9h4a9" role="jymVt">
      <property role="TrG5h" value="Item" />
      <node concept="312cEg" id="4ascWT9haHe" role="jymVt">
        <property role="TrG5h" value="myKind" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4ascWT9haHf" role="1B3o_S" />
        <node concept="3uibUv" id="4ascWT9haHh" role="1tU5fm">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
        </node>
      </node>
      <node concept="2tJIrI" id="4ascWT9hbkC" role="jymVt" />
      <node concept="3clFbW" id="4ascWT9h7aO" role="jymVt">
        <node concept="3cqZAl" id="4ascWT9h7aQ" role="3clF45" />
        <node concept="3clFbS" id="4ascWT9h7aS" role="3clF47">
          <node concept="XkiVB" id="4ascWT9h8Rm" role="3cqZAp">
            <ref role="37wK5l" to="d6hs:~ModelReportItemBase.&lt;init&gt;(jetbrains.mps.errors.MessageStatus,org.jetbrains.mps.openapi.model.SModelReference,java.lang.String)" resolve="ModelReportItemBase" />
            <node concept="37vLTw" id="4ascWT9h9if" role="37wK5m">
              <ref role="3cqZAo" node="4ascWT9h8eM" resolve="severity" />
            </node>
            <node concept="2OqwBi" id="4ascWT9ha8Z" role="37wK5m">
              <node concept="37vLTw" id="4ascWT9h9Ro" role="2Oq$k0">
                <ref role="3cqZAo" node="4ascWT9h7CB" resolve="model" />
              </node>
              <node concept="liA8E" id="4ascWT9hafH" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
              </node>
            </node>
            <node concept="37vLTw" id="4ascWT9hauI" role="37wK5m">
              <ref role="3cqZAo" node="4ascWT9h7XA" resolve="msg" />
            </node>
          </node>
          <node concept="3clFbF" id="4ascWT9haHi" role="3cqZAp">
            <node concept="37vLTI" id="4ascWT9haHk" role="3clFbG">
              <node concept="37vLTw" id="4ascWT9haHn" role="37vLTJ">
                <ref role="3cqZAo" node="4ascWT9haHe" resolve="myKind" />
              </node>
              <node concept="37vLTw" id="4ascWT9haHo" role="37vLTx">
                <ref role="3cqZAo" node="4ascWT9havI" resolve="kind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4ascWT9h7CB" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="4ascWT9h7CA" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="37vLTG" id="4ascWT9h8eM" role="3clF46">
          <property role="TrG5h" value="severity" />
          <node concept="3uibUv" id="4ascWT9h8tC" role="1tU5fm">
            <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
          </node>
        </node>
        <node concept="37vLTG" id="4ascWT9h7XA" role="3clF46">
          <property role="TrG5h" value="msg" />
          <node concept="3uibUv" id="4ascWT9h86C" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4ascWT9havI" role="3clF46">
          <property role="TrG5h" value="kind" />
          <node concept="3uibUv" id="4ascWT9haDz" role="1tU5fm">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4ascWT9h5IX" role="jymVt" />
      <node concept="3Tm6S6" id="4ascWT9h3om" role="1B3o_S" />
      <node concept="3uibUv" id="4ascWT9h5gF" role="1zkMxy">
        <ref role="3uigEE" to="d6hs:~ModelReportItemBase" resolve="ModelReportItemBase" />
      </node>
      <node concept="3clFb_" id="4ascWT9h5ZW" role="jymVt">
        <property role="TrG5h" value="getIssueKind" />
        <node concept="3Tm1VV" id="4ascWT9h5ZX" role="1B3o_S" />
        <node concept="3uibUv" id="4ascWT9h5ZZ" role="3clF45">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
        </node>
        <node concept="3clFbS" id="4ascWT9h609" role="3clF47">
          <node concept="3clFbF" id="4ascWT9h60c" role="3cqZAp">
            <node concept="37vLTw" id="4ascWT9hbMz" role="3clFbG">
              <ref role="3cqZAo" node="4ascWT9haHe" resolve="myKind" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4ascWT9h60a" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRRx7i">
    <property role="TrG5h" value="SpecificChecker" />
    <property role="3GE5qa" value="Specific Checks" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3xfDcbRbgbs" role="jymVt" />
    <node concept="3clFb_" id="6JU37GerRJY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkModel" />
      <node concept="3Tm1VV" id="6JU37GerRJZ" role="1B3o_S" />
      <node concept="_YKpA" id="6JU37GerRK0" role="3clF45">
        <node concept="3qUE_q" id="a7HeXk03Ix" role="_ZDj9">
          <node concept="3uibUv" id="a7HeXk0cES" role="3qUE_r">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6JU37GerRK3" role="3clF47">
        <node concept="YS8fn" id="IMyJ9JlP0D" role="3cqZAp">
          <node concept="2ShNRf" id="IMyJ9JlP9j" role="YScLw">
            <node concept="1pGfFk" id="IMyJ9JlWXQ" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6JU37GerRK4" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="6JU37GerRK5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6JU37GerRK6" role="3clF46">
        <property role="TrG5h" value="progressContext" />
        <node concept="3uibUv" id="6JU37GerRK7" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="xWHpBq6Bv9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkModel" />
      <node concept="3Tm1VV" id="xWHpBq6Bva" role="1B3o_S" />
      <node concept="_YKpA" id="xWHpBq6Bvb" role="3clF45">
        <node concept="3qUE_q" id="xWHpBq6Bvc" role="_ZDj9">
          <node concept="3uibUv" id="xWHpBq6Bvd" role="3qUE_r">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="xWHpBq6Bve" role="3clF47">
        <node concept="3clFbF" id="7i0B12v1DN0" role="3cqZAp">
          <node concept="1rXfSq" id="7i0B12v1DMZ" role="3clFbG">
            <ref role="37wK5l" node="6JU37GerRJY" resolve="checkModel" />
            <node concept="37vLTw" id="7i0B12v1Ey7" role="37wK5m">
              <ref role="3cqZAo" node="xWHpBq6Bvi" resolve="model" />
            </node>
            <node concept="37vLTw" id="7i0B12v1Fby" role="37wK5m">
              <ref role="3cqZAo" node="xWHpBq6Bvk" resolve="progressContext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="xWHpBq6Bvi" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="xWHpBq6Bvj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="xWHpBq6FgT" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="xWHpBq6GVV" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="xWHpBq6Bvk" role="3clF46">
        <property role="TrG5h" value="progressContext" />
        <node concept="3uibUv" id="xWHpBq6Bvl" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4SGXHKgZC3W" role="jymVt">
      <property role="TrG5h" value="check" />
      <property role="1EzhhJ" value="false" />
      <node concept="3Tm1VV" id="4SGXHKgZC3X" role="1B3o_S" />
      <node concept="37vLTG" id="4SGXHKgZC3Y" role="3clF46">
        <property role="TrG5h" value="toCheck" />
        <node concept="3uibUv" id="4SGXHKgZC3Z" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4SGXHKgZC40" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4SGXHKgZC41" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4SGXHKgZC42" role="3clF46">
        <property role="TrG5h" value="errorCollector" />
        <node concept="3uibUv" id="4SGXHKgZC43" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~Consumer" resolve="Consumer" />
          <node concept="3qUtgH" id="IMyJ9Jmrjv" role="11_B2D">
            <node concept="3uibUv" id="IMyJ9Jmry2" role="3qUvdb">
              <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4SGXHKgZC45" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="4SGXHKgZC46" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3cqZAl" id="4SGXHKgZC47" role="3clF45" />
      <node concept="3clFbS" id="4SGXHKgZC48" role="3clF47">
        <node concept="3cpWs8" id="4SGXHKgZC49" role="3cqZAp">
          <node concept="3cpWsn" id="4SGXHKgZC4a" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="4SGXHKgZC4b" role="1tU5fm">
              <node concept="3qUE_q" id="4SGXHKgZC4c" role="_ZDj9">
                <node concept="3uibUv" id="4SGXHKgZC4d" role="3qUE_r">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="4SGXHKgZC4e" role="33vP2m">
              <ref role="37wK5l" node="xWHpBq6Bv9" resolve="checkModel" />
              <node concept="37vLTw" id="4SGXHKgZC4f" role="37wK5m">
                <ref role="3cqZAo" node="4SGXHKgZC3Y" resolve="toCheck" />
              </node>
              <node concept="37vLTw" id="64iZc9nlcqH" role="37wK5m">
                <ref role="3cqZAo" node="4SGXHKgZC40" resolve="repository" />
              </node>
              <node concept="37vLTw" id="4SGXHKgZC4g" role="37wK5m">
                <ref role="3cqZAo" node="4SGXHKgZC45" resolve="monitor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="IMyJ9Jmskq" role="3cqZAp">
          <node concept="3clFbS" id="IMyJ9Jmsks" role="2LFqv$">
            <node concept="3clFbF" id="4SGXHKgZC4l" role="3cqZAp">
              <node concept="2OqwBi" id="4SGXHKgZC4m" role="3clFbG">
                <node concept="37vLTw" id="4SGXHKgZC4n" role="2Oq$k0">
                  <ref role="3cqZAo" node="4SGXHKgZC42" resolve="errorCollector" />
                </node>
                <node concept="liA8E" id="4SGXHKgZC4o" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~Consumer.consume(java.lang.Object)" resolve="consume" />
                  <node concept="37vLTw" id="IMyJ9JmuKr" role="37wK5m">
                    <ref role="3cqZAo" node="IMyJ9Jmskt" resolve="error" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="IMyJ9Jmskt" role="1Duv9x">
            <property role="TrG5h" value="error" />
            <node concept="3uibUv" id="IMyJ9JmsBI" role="1tU5fm">
              <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
            </node>
          </node>
          <node concept="37vLTw" id="IMyJ9Jmtjg" role="1DdaDG">
            <ref role="3cqZAo" node="4SGXHKgZC4a" resolve="errors" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4SGXHKgZC4q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRRx9d" role="1B3o_S" />
    <node concept="3uibUv" id="320sejmfVVH" role="1zkMxy">
      <ref role="3uigEE" to="wsw7:3RAxiQnEFwn" resolve="IChecker.AbstractModelChecker" />
      <node concept="3uibUv" id="320sejmfXei" role="11_B2D">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
      </node>
    </node>
    <node concept="3UR2Jj" id="3LCCkAq65NQ" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsCyg" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCyh" role="1PaTwD">
          <property role="3oM_SC" value="Defines" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyi" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyj" role="1PaTwD">
          <property role="3oM_SC" value="API" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyk" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyl" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCym" role="1PaTwD">
          <property role="3oM_SC" value="checker" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyn" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyo" role="1PaTwD">
          <property role="3oM_SC" value="analyzes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyp" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyq" role="1PaTwD">
          <property role="3oM_SC" value="instance" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyr" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCys" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCyt" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqMD2_" role="1VuXuu">
              <ref role="VXe09" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCyw" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCyx" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyy" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyz" role="1PaTwD">
          <property role="3oM_SC" value="produces" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCy$" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCy_" role="1PaTwD">
          <property role="3oM_SC" value="list" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyA" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCyB" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCyC" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqMDmc" role="1VuXuu">
              <ref role="VXe09" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCyF" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCyG" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyH" role="1PaTwD">
          <property role="3oM_SC" value="." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCyI" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCyJ" role="1PaTwD">
          <property role="3oM_SC" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsCyK" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsCyL" role="1PaTwD">
          <property role="3oM_SC" value="Really" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyM" role="1PaTwD">
          <property role="3oM_SC" value="unfortunately" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyN" role="1PaTwD">
          <property role="3oM_SC" value="named" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyO" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyP" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyQ" role="1PaTwD">
          <property role="3oM_SC" value="essentially" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyR" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyS" role="1PaTwD">
          <property role="3oM_SC" value="just" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyT" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyU" role="1PaTwD">
          <property role="3oM_SC" value="adapter" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCyV" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsCyW" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsCyX" role="1Vtduc">
            <node concept="VXe08" id="3LCCkAqN1_K" role="1VuXuu">
              <ref role="VXe09" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsCz0" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsCz1" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsCz2" role="1PaTwD">
          <property role="3oM_SC" value="." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3etVqSRK$6n">
    <property role="TrG5h" value="UnresolvedReferencesChecker" />
    <property role="3GE5qa" value="Specific Checks" />
    <node concept="312cEg" id="7SNXUnYXb2c" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myComponentHost" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7SNXUnYXaQu" role="1B3o_S" />
      <node concept="3uibUv" id="7SNXUnYXb0$" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="2tJIrI" id="2aHnXRNSaQn" role="jymVt" />
    <node concept="3clFbW" id="3etVqSRK$6o" role="jymVt">
      <node concept="3Tm1VV" id="3etVqSRK$6p" role="1B3o_S" />
      <node concept="3cqZAl" id="3etVqSRK$6q" role="3clF45" />
      <node concept="3clFbS" id="3etVqSRK$6r" role="3clF47">
        <node concept="3clFbF" id="7SNXUnYXbX$" role="3cqZAp">
          <node concept="37vLTI" id="7SNXUnYXcq9" role="3clFbG">
            <node concept="37vLTw" id="7SNXUnYXcwI" role="37vLTx">
              <ref role="3cqZAo" node="7SNXUnYXapp" resolve="host" />
            </node>
            <node concept="37vLTw" id="7SNXUnYXbXz" role="37vLTJ">
              <ref role="3cqZAo" node="7SNXUnYXb2c" resolve="myComponentHost" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7SNXUnYXapp" role="3clF46">
        <property role="TrG5h" value="host" />
        <node concept="3uibUv" id="7SNXUnYXapo" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
        <node concept="2AHcQZ" id="7SNXUnYXbaP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2aHnXRNShxW" role="jymVt" />
    <node concept="3clFb_" id="3etVqSRK$6s" role="jymVt">
      <property role="TrG5h" value="checkModel" />
      <node concept="_YKpA" id="3etVqSRK$6t" role="3clF45">
        <node concept="3qUE_q" id="a7HeXk06_J" role="_ZDj9">
          <node concept="3uibUv" id="6iohsvjR6SE" role="3qUE_r">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3etVqSRK$6w" role="3clF47">
        <node concept="3cpWs8" id="3etVqSRK$6x" role="3cqZAp">
          <node concept="3cpWsn" id="3etVqSRK$6y" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="3etVqSRK$6z" role="1tU5fm">
              <node concept="3uibUv" id="a7HeXk07AY" role="_ZDj9">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="3etVqSRK$6A" role="33vP2m">
              <node concept="Tc6Ow" id="3etVqSRK$6B" role="2ShVmc">
                <node concept="3uibUv" id="a7HeXk089Z" role="HW$YZ">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3etVqSRK$6E" role="3cqZAp">
          <node concept="3clFbS" id="3etVqSRK$6F" role="3clFbx">
            <node concept="3cpWs6" id="3etVqSRK$6G" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTBZ7" role="3cqZAk">
                <ref role="3cqZAo" node="3etVqSRK$6y" resolve="results" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3etVqSRK$6I" role="3clFbw">
            <node concept="3clFbC" id="3etVqSRK$6K" role="3uHU7B">
              <node concept="10Nm6u" id="3etVqSRK$6L" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxglt7f" role="3uHU7B">
                <ref role="3cqZAo" node="3etVqSRK$ab" resolve="model" />
              </node>
            </node>
            <node concept="3clFbC" id="3etVqSRK$6R" role="3uHU7w">
              <node concept="10Nm6u" id="3etVqSRK$6W" role="3uHU7w" />
              <node concept="2OqwBi" id="6uzFVCcfDbB" role="3uHU7B">
                <node concept="2JrnkZ" id="6uzFVCcfDSt" role="2Oq$k0">
                  <node concept="37vLTw" id="6uzFVCcfCJA" role="2JrQYb">
                    <ref role="3cqZAo" node="3etVqSRK$ab" resolve="model" />
                  </node>
                </node>
                <node concept="liA8E" id="6uzFVCcfEbe" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6uzFVCcftBM" role="3cqZAp">
          <node concept="3cpWsn" id="6uzFVCcftBN" role="3cpWs9">
            <property role="TrG5h" value="visibilityHelper" />
            <node concept="3uibUv" id="6uzFVCcftBL" role="1tU5fm">
              <ref role="3uigEE" to="gp7a:~VisibilityUtil" resolve="VisibilityUtil" />
            </node>
            <node concept="2YIFZM" id="6uzFVCcfETL" role="33vP2m">
              <ref role="37wK5l" to="gp7a:~VisibilityUtil.forModel(org.jetbrains.mps.openapi.model.SModel)" resolve="forModel" />
              <ref role="1Pybhc" to="gp7a:~VisibilityUtil" resolve="VisibilityUtil" />
              <node concept="37vLTw" id="6uzFVCcfFbM" role="37wK5m">
                <ref role="3cqZAo" node="3etVqSRK$ab" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2aHnXRNSlax" role="3cqZAp">
          <node concept="3cpWsn" id="2aHnXRNSlav" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="resolver" />
            <node concept="3uibUv" id="2aHnXRNSm6c" role="1tU5fm">
              <ref role="3uigEE" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
            </node>
            <node concept="2OqwBi" id="2aHnXRNSquu" role="33vP2m">
              <node concept="37vLTw" id="2aHnXRNSp$I" role="2Oq$k0">
                <ref role="3cqZAo" node="7SNXUnYXb2c" resolve="myComponentHost" />
              </node>
              <node concept="liA8E" id="2aHnXRNSrnf" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="2aHnXRNSiUK" role="37wK5m">
                  <ref role="3VsUkX" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5gJJOL63UyQ" role="3cqZAp">
          <node concept="3clFbS" id="5gJJOL63UyS" role="2LFqv$">
            <node concept="3clFbJ" id="3etVqSRK$7v" role="3cqZAp">
              <node concept="3clFbS" id="3etVqSRK$7w" role="3clFbx">
                <node concept="3zACq4" id="3etVqSRK$7x" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="3etVqSRK$7y" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmIa$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3etVqSRK$ad" resolve="monitor" />
                </node>
                <node concept="liA8E" id="3etVqSRK$7$" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3etVqSRK$7_" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojKq" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojKr" role="1PaTwD">
                  <property role="3oM_SC" value="Check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojKs" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojKt" role="1PaTwD">
                  <property role="3oM_SC" value="unresolved" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojKu" role="1PaTwD">
                  <property role="3oM_SC" value="references" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="3etVqSRK$7B" role="3cqZAp">
              <node concept="2OqwBi" id="3etVqSRK$7C" role="2GsD0m">
                <node concept="2z74zc" id="3etVqSRK$7D" role="2OqNvi" />
                <node concept="37vLTw" id="5gJJOL643Z2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gJJOL63UyT" resolve="node" />
                </node>
              </node>
              <node concept="3clFbS" id="3etVqSRK$7F" role="2LFqv$">
                <node concept="3clFbJ" id="3etVqSRK$7T" role="3cqZAp">
                  <node concept="3clFbS" id="3etVqSRK$7U" role="3clFbx">
                    <node concept="3clFbF" id="a7HeXjUfxm" role="3cqZAp">
                      <node concept="2OqwBi" id="a7HeXjUgzL" role="3clFbG">
                        <node concept="37vLTw" id="a7HeXjUfxk" role="2Oq$k0">
                          <ref role="3cqZAo" node="3etVqSRK$6y" resolve="results" />
                        </node>
                        <node concept="TSZUe" id="a7HeXjUh6L" role="2OqNvi">
                          <node concept="2ShNRf" id="a7HeXjU103" role="25WWJ7">
                            <node concept="1pGfFk" id="a7HeXjU6ca" role="2ShVmc">
                              <ref role="37wK5l" to="d6hs:~UnresolvedReferenceReportItem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SReference,java.lang.Runnable)" resolve="UnresolvedReferenceReportItem" />
                              <node concept="2GrUjf" id="a7HeXjU6kd" role="37wK5m">
                                <ref role="2Gs0qQ" node="3etVqSRK$a3" resolve="ref" />
                              </node>
                              <node concept="1bVj0M" id="a7HeXjUaiC" role="37wK5m">
                                <node concept="3clFbS" id="a7HeXjUaiE" role="1bW5cS">
                                  <node concept="3clFbF" id="8lJWPIk0B7" role="3cqZAp">
                                    <node concept="2OqwBi" id="8lJWPIk0B8" role="3clFbG">
                                      <node concept="liA8E" id="8lJWPIk0B9" role="2OqNvi">
                                        <ref role="37wK5l" to="5ijk:1$3BPv3Vdyw" resolve="resolve" />
                                        <node concept="2GrUjf" id="8lJWPIk0Ba" role="37wK5m">
                                          <ref role="2Gs0qQ" node="3etVqSRK$a3" resolve="ref" />
                                        </node>
                                        <node concept="37vLTw" id="xWHpBq6Lhl" role="37wK5m">
                                          <ref role="3cqZAo" node="xWHpBq6JGh" resolve="repository" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="2aHnXRNSteU" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2aHnXRNSlav" resolve="resolver" />
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
                  <node concept="3clFbC" id="3etVqSRK$8e" role="3clFbw">
                    <node concept="2YIFZM" id="3etVqSRK$8f" role="3uHU7B">
                      <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                      <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                      <node concept="2GrUjf" id="3etVqSRK$8g" role="37wK5m">
                        <ref role="2Gs0qQ" node="3etVqSRK$a3" resolve="ref" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="3etVqSRK$8h" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3cpWs8" id="3etVqSRK$8i" role="3cqZAp">
                  <node concept="3cpWsn" id="3etVqSRK$8j" role="3cpWs9">
                    <property role="TrG5h" value="mref" />
                    <node concept="2OqwBi" id="3etVqSRK$8k" role="33vP2m">
                      <node concept="2GrUjf" id="3etVqSRK$8l" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3etVqSRK$a3" resolve="ref" />
                      </node>
                      <node concept="liA8E" id="3etVqSRK$8m" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getTargetSModelReference()" resolve="getTargetSModelReference" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3etVqSRK$8n" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3etVqSRK$8o" role="3cqZAp">
                  <node concept="3clFbS" id="3etVqSRK$8p" role="3clFbx">
                    <node concept="3N13vt" id="3etVqSRK$8q" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="3etVqSRK$8r" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTsu7" role="3uHU7B">
                      <ref role="3cqZAo" node="3etVqSRK$8j" resolve="mref" />
                    </node>
                    <node concept="10Nm6u" id="3etVqSRK$8t" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3cpWs8" id="12UuKQubZ5j" role="3cqZAp">
                  <node concept="3cpWsn" id="12UuKQubZ5k" role="3cpWs9">
                    <property role="TrG5h" value="m" />
                    <node concept="3uibUv" id="12UuKQubZ5a" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="12UuKQubZ5l" role="33vP2m">
                      <node concept="37vLTw" id="12UuKQubZ5m" role="2Oq$k0">
                        <ref role="3cqZAo" node="3etVqSRK$8j" resolve="mref" />
                      </node>
                      <node concept="liA8E" id="12UuKQubZ5n" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="37vLTw" id="xWHpBq6LVy" role="37wK5m">
                          <ref role="3cqZAo" node="xWHpBq6JGh" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="12UuKQucC2S" role="3cqZAp">
                  <node concept="3clFbS" id="12UuKQucC2T" role="3clFbx">
                    <node concept="3N13vt" id="12UuKQucE5Y" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="12UuKQucC2V" role="3clFbw">
                    <node concept="10Nm6u" id="12UuKQucC2W" role="3uHU7w" />
                    <node concept="37vLTw" id="12UuKQucD4h" role="3uHU7B">
                      <ref role="3cqZAo" node="12UuKQubZ5k" resolve="m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="12UuKQucFdA" role="3cqZAp">
                  <node concept="3clFbS" id="12UuKQucFdD" role="3clFbx">
                    <node concept="3N13vt" id="12UuKQucGgd" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="6uzFVCcfHO7" role="3clFbw">
                    <node concept="37vLTw" id="6uzFVCcfHxg" role="2Oq$k0">
                      <ref role="3cqZAo" node="6uzFVCcftBN" resolve="visibilityHelper" />
                    </node>
                    <node concept="liA8E" id="6uzFVCcfHZU" role="2OqNvi">
                      <ref role="37wK5l" to="gp7a:~VisibilityUtil.isVisible(org.jetbrains.mps.openapi.model.SModel)" resolve="isVisible" />
                      <node concept="37vLTw" id="6uzFVCcfIig" role="37wK5m">
                        <ref role="3cqZAo" node="12UuKQubZ5k" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="a7HeXjUr0x" role="3cqZAp">
                  <node concept="2OqwBi" id="a7HeXjUrOg" role="3clFbG">
                    <node concept="37vLTw" id="a7HeXjUr0v" role="2Oq$k0">
                      <ref role="3cqZAo" node="3etVqSRK$6y" resolve="results" />
                    </node>
                    <node concept="TSZUe" id="a7HeXjUsnd" role="2OqNvi">
                      <node concept="2ShNRf" id="a7HeXjUsyi" role="25WWJ7">
                        <node concept="1pGfFk" id="a7HeXjU_qX" role="2ShVmc">
                          <ref role="37wK5l" to="d6hs:~TargetModuleNotImportedReportItem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SReference,org.jetbrains.mps.openapi.module.SModuleReference,jetbrains.mps.errors.item.EditorQuickFix)" resolve="TargetModuleNotImportedReportItem" />
                          <node concept="2GrUjf" id="34otMr4FHUw" role="37wK5m">
                            <ref role="2Gs0qQ" node="3etVqSRK$a3" resolve="ref" />
                          </node>
                          <node concept="2OqwBi" id="a7HeXjURHl" role="37wK5m">
                            <node concept="2OqwBi" id="a7HeXjUO1p" role="2Oq$k0">
                              <node concept="37vLTw" id="34otMr4FIkI" role="2Oq$k0">
                                <ref role="3cqZAo" node="12UuKQubZ5k" resolve="m" />
                              </node>
                              <node concept="liA8E" id="a7HeXjUOMo" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                              </node>
                            </node>
                            <node concept="liA8E" id="a7HeXjUWHB" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="34otMr4FCfj" role="37wK5m">
                            <node concept="1pGfFk" id="34otMr4FEM0" role="2ShVmc">
                              <ref role="37wK5l" to="wsw7:34otMr4EPxR" resolve="ModuleImportQuickFix" />
                              <node concept="2GrUjf" id="34otMr4FF6J" role="37wK5m">
                                <ref role="2Gs0qQ" node="3etVqSRK$a3" resolve="ref" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2GrKxI" id="3etVqSRK$a3" role="2Gsz3X">
                <property role="TrG5h" value="ref" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5gJJOL63UyT" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="5gJJOL63URK" role="1tU5fm" />
          </node>
          <node concept="2YIFZM" id="5gJJOL63Vok" role="1DdaDG">
            <ref role="37wK5l" to="mhbf:~SNodeUtil.getDescendants(org.jetbrains.mps.openapi.model.SModel)" resolve="getDescendants" />
            <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
            <node concept="37vLTw" id="5gJJOL63V$7" role="37wK5m">
              <ref role="3cqZAo" node="3etVqSRK$ab" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3etVqSRK$a9" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagT_o3" role="3cqZAk">
            <ref role="3cqZAo" node="3etVqSRK$6y" resolve="results" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3etVqSRK$ab" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="3etVqSRK$ac" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="xWHpBq6JGh" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="xWHpBq6KyL" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="3etVqSRK$ad" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="3etVqSRK$ae" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3etVqSRK$af" role="1B3o_S" />
      <node concept="2AHcQZ" id="3etVqSRK$ai" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3xfDcbRhFDH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCategory" />
      <node concept="3Tm1VV" id="3xfDcbRhFDJ" role="1B3o_S" />
      <node concept="3uibUv" id="dQllQpjVCJ" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="3clFbS" id="3xfDcbRhFDO" role="3clF47">
        <node concept="3clFbF" id="3xfDcbRhGUr" role="3cqZAp">
          <node concept="10M0yZ" id="dQllQpjWxQ" role="3clFbG">
            <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.UNRESOLVED_REFERENCE" resolve="UNRESOLVED_REFERENCE" />
            <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3xfDcbRhFDP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3etVqSRK$aj" role="1B3o_S" />
    <node concept="3uibUv" id="3etVqSRK$ak" role="1zkMxy">
      <ref role="3uigEE" node="3etVqSRRx7i" resolve="SpecificChecker" />
    </node>
  </node>
</model>

