<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2897a5d4-aed7-4a4e-ac07-fbc830f9ed9b(jetbrains.mps.vcs.history)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="hr4p" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea(jetbrains.mps.git4idea.stubs/)" />
    <import index="iho" ref="r:57faf072-5a23-4c30-9cf6-da73f0e0a8ad(jetbrains.mps.vcspersistence)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="ewdr" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.log(jetbrains.mps.git4idea.stubs/)" />
    <import index="k9nz" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.text(MPS.IDEA/)" />
    <import index="oyik" ref="6fd1293f-7f65-4ffd-99dc-4719eca7c171/java:org.jetbrains.idea.svn.history(jetbrains.mps.ide.vcs.platform/)" />
    <import index="2o8p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.contents(MPS.IDEA/)" />
    <import index="btf5" ref="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" />
    <import index="zbx9" ref="r:c29f530b-f74d-4627-9da2-61138cfa6722(jetbrains.mps.vcs.platform.actions)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="ltcu" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log.util(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="akqu" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log.data(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="e0ho" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log.impl(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="8voc" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.annotate(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="yah0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.history(MPS.IDEA/)" />
    <import index="1q0i" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.vcs.log.graph(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="7g4e" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.vcsUtil(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ngI" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="779128492853369165" name="jetbrains.mps.lang.core.structure.SideTransformInfo" flags="ng" index="1KehLL">
        <property id="779128492853934523" name="cellId" index="1K8rM7" />
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
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="3358009230508699932" name="jetbrains.mps.baseLanguage.collections.structure.PushOperation" flags="nn" index="2ArzE6" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1209727891789" name="jetbrains.mps.baseLanguage.collections.structure.ComparatorSortOperation" flags="nn" index="2DpFxk">
        <child id="1209727996925" name="ascending" index="2Dq5b$" />
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
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="6wgNI6tBJvh">
    <property role="TrG5h" value="CommitsGraphNode" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="6wgNI6tBNi$" role="jymVt">
      <property role="TrG5h" value="myRevision" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6wgNI6tBMwU" role="1B3o_S" />
      <node concept="3uibUv" id="6wgNI6tBNbO" role="1tU5fm">
        <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
      </node>
      <node concept="2AHcQZ" id="4aYE7KcVrNl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="6wgNI6tBQPk" role="jymVt">
      <property role="TrG5h" value="myParents" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6wgNI6tBPLJ" role="1B3o_S" />
      <node concept="_YKpA" id="6wgNI6tBQjN" role="1tU5fm">
        <node concept="3uibUv" id="6wgNI6tBQBe" role="_ZDj9">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="6wgNI6tBRzE" role="33vP2m">
        <node concept="Tc6Ow" id="6wgNI6tBUNf" role="2ShVmc">
          <node concept="3uibUv" id="6wgNI6tBWVa" role="HW$YZ">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6wgNI6tBXlb" role="jymVt">
      <property role="TrG5h" value="myChildren" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6wgNI6tBXlc" role="1B3o_S" />
      <node concept="2hMVRd" id="6wgNI6tBXBy" role="1tU5fm">
        <node concept="3uibUv" id="6wgNI6tBXB$" role="2hN53Y">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="6wgNI6tBXlf" role="33vP2m">
        <node concept="2i4dXS" id="6wgNI6tBXYh" role="2ShVmc">
          <node concept="3uibUv" id="6wgNI6tBXYj" role="HW$YZ">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="41u046V3hMB" role="jymVt">
      <property role="TrG5h" value="myIsIgnored" />
      <node concept="3Tm6S6" id="41u046V3gZb" role="1B3o_S" />
      <node concept="10P_77" id="41u046V3hKh" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="AruHTAQOqX" role="jymVt">
      <property role="TrG5h" value="myIgnoredByChildren" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="AruHTAQJDe" role="1B3o_S" />
      <node concept="_YKpA" id="AruHTAQKWG" role="1tU5fm">
        <node concept="3uibUv" id="AruHTAQOnH" role="_ZDj9">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="AruHTAQPO5" role="33vP2m">
        <node concept="Tc6Ow" id="AruHTARL82" role="2ShVmc">
          <node concept="3uibUv" id="AruHTARMCp" role="HW$YZ">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7Kf$fJTgSP8" role="jymVt">
      <property role="TrG5h" value="myModel" />
      <node concept="3Tm6S6" id="7Kf$fJTgJyo" role="1B3o_S" />
      <node concept="3uibUv" id="7Kf$fJTgSMc" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="7Kf$fJTjasR" role="jymVt">
      <property role="TrG5h" value="myLoadedModel" />
      <node concept="3Tm6S6" id="7Kf$fJTjasS" role="1B3o_S" />
      <node concept="3uibUv" id="7Kf$fJTjasT" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="2yiSWr$8fYh" role="jymVt">
      <property role="TrG5h" value="myModelCanBeUnloaded" />
      <node concept="3Tm6S6" id="2yiSWr$8e6k" role="1B3o_S" />
      <node concept="10P_77" id="2yiSWr$8fUF" role="1tU5fm" />
      <node concept="3clFbT" id="3dZxEZNx8c8" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="4UjHG8gvLWz" role="jymVt">
      <property role="TrG5h" value="myNodeWithLoadedModel" />
      <node concept="3Tm6S6" id="4UjHG8gvJXB" role="1B3o_S" />
      <node concept="3uibUv" id="4UjHG8gvLS5" role="1tU5fm">
        <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
      </node>
    </node>
    <node concept="312cEg" id="7fUbjDMf124" role="jymVt">
      <property role="TrG5h" value="myChangedIds" />
      <node concept="3Tm6S6" id="7fUbjDMeZ0I" role="1B3o_S" />
      <node concept="2ShNRf" id="6SEqcxVbx3S" role="33vP2m">
        <node concept="3rGOSV" id="6SEqcxVbIeV" role="2ShVmc">
          <node concept="3uibUv" id="3Z75HrBGjq_" role="3rHrn6">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="2hMVRd" id="2RM7U9LuPyh" role="3rHtpV">
            <node concept="3uibUv" id="2RM7U9LuPyj" role="2hN53Y">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3rvAFt" id="3Z75HrBG3O7" role="1tU5fm">
        <node concept="3uibUv" id="3Z75HrBG94h" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2hMVRd" id="2RM7U9LuG6$" role="3rvSg0">
          <node concept="3uibUv" id="2RM7U9LuG6A" role="2hN53Y">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="O_dbrL7DpF" role="jymVt" />
    <node concept="2tJIrI" id="6wgNI6tBX42" role="jymVt" />
    <node concept="3clFbW" id="6wgNI6tBNFx" role="jymVt">
      <node concept="3cqZAl" id="6wgNI6tBNFy" role="3clF45" />
      <node concept="3Tm1VV" id="6wgNI6tBNFz" role="1B3o_S" />
      <node concept="3clFbS" id="6wgNI6tBNF$" role="3clF47">
        <node concept="3clFbF" id="6wgNI6tBNFB" role="3cqZAp">
          <node concept="37vLTI" id="6wgNI6tBNFC" role="3clFbG">
            <node concept="37vLTw" id="6wgNI6tBNFG" role="37vLTx">
              <ref role="3cqZAo" node="6wgNI6tBNF_" resolve="revision" />
            </node>
            <node concept="37vLTw" id="6wgNI6tBPmU" role="37vLTJ">
              <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56alAfWtvy4" role="3cqZAp">
          <node concept="37vLTI" id="56alAfWtvy5" role="3clFbG">
            <node concept="Xjq3P" id="56alAfWtvy6" role="37vLTx" />
            <node concept="37vLTw" id="56alAfWtvy7" role="37vLTJ">
              <ref role="3cqZAo" node="4UjHG8gvLWz" resolve="myNodeWithLoadedModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6wgNI6tBNF_" role="3clF46">
        <property role="TrG5h" value="revision" />
        <node concept="3uibUv" id="6wgNI6tBNFA" role="1tU5fm">
          <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
        </node>
        <node concept="2AHcQZ" id="4aYE7KcVzoN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6STmDFF9m47" role="jymVt" />
    <node concept="3clFbW" id="6STmDFF9sb3" role="jymVt">
      <node concept="3cqZAl" id="6STmDFF9sb4" role="3clF45" />
      <node concept="3Tm1VV" id="6STmDFF9sb5" role="1B3o_S" />
      <node concept="3clFbS" id="6STmDFF9sb6" role="3clF47">
        <node concept="3clFbF" id="6STmDFF9sb7" role="3cqZAp">
          <node concept="37vLTI" id="6STmDFF9sb8" role="3clFbG">
            <node concept="37vLTw" id="6STmDFF9sb9" role="37vLTx">
              <ref role="3cqZAo" node="6STmDFF9sbb" resolve="revision" />
            </node>
            <node concept="37vLTw" id="6STmDFF9sba" role="37vLTJ">
              <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6STmDFFewsU" role="3cqZAp">
          <node concept="37vLTI" id="6STmDFFewQ9" role="3clFbG">
            <node concept="37vLTw" id="6STmDFFexmb" role="37vLTx">
              <ref role="3cqZAo" node="6STmDFF9uMH" resolve="localModel" />
            </node>
            <node concept="37vLTw" id="6STmDFFewsS" role="37vLTJ">
              <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6STmDFFey1Y" role="3cqZAp">
          <node concept="37vLTI" id="6STmDFFeysQ" role="3clFbG">
            <node concept="37vLTw" id="6STmDFFeyX7" role="37vLTx">
              <ref role="3cqZAo" node="6STmDFF9uMH" resolve="localModel" />
            </node>
            <node concept="37vLTw" id="6STmDFFey1W" role="37vLTJ">
              <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RtUztNXhv6" role="3cqZAp">
          <node concept="37vLTI" id="RtUztNXhWq" role="3clFbG">
            <node concept="Xjq3P" id="RtUztNXisO" role="37vLTx" />
            <node concept="37vLTw" id="RtUztNXhv4" role="37vLTJ">
              <ref role="3cqZAo" node="4UjHG8gvLWz" resolve="myNodeWithLoadedModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6STmDFF9sbb" role="3clF46">
        <property role="TrG5h" value="revision" />
        <node concept="3uibUv" id="3dZxEZNwJCh" role="1tU5fm">
          <ref role="3uigEE" to="yah0:~CurrentRevision" resolve="CurrentRevision" />
        </node>
        <node concept="2AHcQZ" id="6STmDFF9sbd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6STmDFF9uMH" role="3clF46">
        <property role="TrG5h" value="localModel" />
        <node concept="3uibUv" id="6STmDFFev50" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6STmDFFaK9K" role="jymVt" />
    <node concept="3clFb_" id="6STmDFFaSyK" role="jymVt">
      <property role="TrG5h" value="isLocalRevision" />
      <node concept="3clFbS" id="6STmDFFaSyN" role="3clF47">
        <node concept="3clFbF" id="6STmDFFaVq0" role="3cqZAp">
          <node concept="2ZW3vV" id="3dZxEZNwAJL" role="3clFbG">
            <node concept="3uibUv" id="3dZxEZNwDid" role="2ZW6by">
              <ref role="3uigEE" to="yah0:~CurrentRevision" resolve="CurrentRevision" />
            </node>
            <node concept="37vLTw" id="3dZxEZNwzFG" role="2ZW6bz">
              <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6STmDFFaPmy" role="1B3o_S" />
      <node concept="10P_77" id="6STmDFFaSpC" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3Z75HrBJTz$" role="jymVt" />
    <node concept="3clFb_" id="3Z75HrBK6cR" role="jymVt">
      <property role="TrG5h" value="getChangedIds" />
      <node concept="3clFbS" id="3Z75HrBK6cU" role="3clF47">
        <node concept="3clFbF" id="3Z75HrBKb_X" role="3cqZAp">
          <node concept="37vLTw" id="3Z75HrBKb_W" role="3clFbG">
            <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3Z75HrBJZ9V" role="1B3o_S" />
      <node concept="3rvAFt" id="3Z75HrBK4mT" role="3clF45">
        <node concept="3uibUv" id="3Z75HrBK559" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2hMVRd" id="2RM7U9LuX$Y" role="3rvSg0">
          <node concept="3uibUv" id="2RM7U9LuX_0" role="2hN53Y">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Z75HrBTaw8" role="jymVt" />
    <node concept="3clFb_" id="3Z75HrC2FPL" role="jymVt">
      <property role="TrG5h" value="addChangedIds" />
      <node concept="3clFbS" id="3Z75HrC2FPO" role="3clF47">
        <node concept="3cpWs8" id="5s4wSTMRk_z" role="3cqZAp">
          <node concept="3cpWsn" id="5s4wSTMRk_D" role="3cpWs9">
            <property role="TrG5h" value="ids" />
            <node concept="2hMVRd" id="5s4wSTMRk_F" role="1tU5fm">
              <node concept="3uibUv" id="5s4wSTMRrbN" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="3EllGN" id="5s4wSTMUbNN" role="33vP2m">
              <node concept="37vLTw" id="5s4wSTMUbNO" role="3ElVtu">
                <ref role="3cqZAo" node="3Z75HrC2LRX" resolve="oldId" />
              </node>
              <node concept="37vLTw" id="5s4wSTMUbNP" role="3ElQJh">
                <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3Z75HrC2YYa" role="3cqZAp">
          <node concept="3clFbS" id="3Z75HrC2YYb" role="3clFbx">
            <node concept="3clFbF" id="3Z75HrC2YYO" role="3cqZAp">
              <node concept="37vLTI" id="3Z75HrC2YYP" role="3clFbG">
                <node concept="2ShNRf" id="5s4wSTMPRWm" role="37vLTx">
                  <node concept="2i4dXS" id="5s4wSTMQhiE" role="2ShVmc">
                    <node concept="3uibUv" id="5s4wSTMQwXP" role="HW$YZ">
                      <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5s4wSTMRJcp" role="37vLTJ">
                  <ref role="3cqZAo" node="5s4wSTMRk_D" resolve="ids" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s4wSTMRWNh" role="3cqZAp">
              <node concept="37vLTI" id="5s4wSTMSrEY" role="3clFbG">
                <node concept="37vLTw" id="5s4wSTMSzr8" role="37vLTx">
                  <ref role="3cqZAo" node="5s4wSTMRk_D" resolve="ids" />
                </node>
                <node concept="3EllGN" id="5s4wSTMS4Zg" role="37vLTJ">
                  <node concept="37vLTw" id="5s4wSTMSiSF" role="3ElVtu">
                    <ref role="3cqZAo" node="3Z75HrC2LRX" resolve="oldId" />
                  </node>
                  <node concept="37vLTw" id="5s4wSTMRWNf" role="3ElQJh">
                    <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5s4wSTMUvlw" role="3clFbw">
            <node concept="10Nm6u" id="5s4wSTMUDsi" role="3uHU7w" />
            <node concept="37vLTw" id="5s4wSTMUpIL" role="3uHU7B">
              <ref role="3cqZAo" node="5s4wSTMRk_D" resolve="ids" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s4wSTMTlTP" role="3cqZAp">
          <node concept="2OqwBi" id="5s4wSTMTsgs" role="3clFbG">
            <node concept="37vLTw" id="5s4wSTMTlTN" role="2Oq$k0">
              <ref role="3cqZAo" node="5s4wSTMRk_D" resolve="ids" />
            </node>
            <node concept="X8dFx" id="5s4wSTMTHxZ" role="2OqNvi">
              <node concept="37vLTw" id="5s4wSTMTQhF" role="25WWJ7">
                <ref role="3cqZAo" node="3Z75HrC2QxI" resolve="newIds" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3Z75HrC2$Zs" role="1B3o_S" />
      <node concept="3cqZAl" id="3Z75HrC2F15" role="3clF45" />
      <node concept="37vLTG" id="3Z75HrC2LRX" role="3clF46">
        <property role="TrG5h" value="oldId" />
        <node concept="3uibUv" id="3Z75HrC2LRW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="3Z75HrC2QxI" role="3clF46">
        <property role="TrG5h" value="newIds" />
        <node concept="2hMVRd" id="2RM7U9LAQAp" role="1tU5fm">
          <node concept="3uibUv" id="2RM7U9LAQAr" role="2hN53Y">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Z75HrC2vtW" role="jymVt" />
    <node concept="3clFb_" id="7fUbjDMfpcO" role="jymVt">
      <property role="TrG5h" value="setIdChanges" />
      <node concept="3clFbS" id="7fUbjDMfpcR" role="3clF47">
        <node concept="3clFbF" id="12fIa2Z3Nva" role="3cqZAp">
          <node concept="2OqwBi" id="12fIa2Z3Wpy" role="3clFbG">
            <node concept="37vLTw" id="12fIa2Z3Nv8" role="2Oq$k0">
              <ref role="3cqZAo" node="6wgNI6tBXlb" resolve="myChildren" />
            </node>
            <node concept="2es0OD" id="12fIa2Z44ig" role="2OqNvi">
              <node concept="1bVj0M" id="12fIa2Z44ii" role="23t8la">
                <node concept="3clFbS" id="12fIa2Z44ij" role="1bW5cS">
                  <node concept="3clFbF" id="12fIa2Z4iQo" role="3cqZAp">
                    <node concept="2OqwBi" id="12fIa2Z4LXO" role="3clFbG">
                      <node concept="2OqwBi" id="12fIa2Z4of6" role="2Oq$k0">
                        <node concept="liA8E" id="6bRJO4uxmQp" role="2OqNvi">
                          <ref role="37wK5l" node="3Z75HrBK6cR" resolve="getChangedIds" />
                        </node>
                        <node concept="2OqwBi" id="6bRJO4uxbN5" role="2Oq$k0">
                          <node concept="liA8E" id="6bRJO4uxh1Q" role="2OqNvi">
                            <ref role="37wK5l" node="4UjHG8gvSsf" resolve="getNodeWithLoadedModel" />
                          </node>
                          <node concept="37vLTw" id="12fIa2Z4iQn" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XRG" resolve="child" />
                          </node>
                        </node>
                      </node>
                      <node concept="2es0OD" id="12fIa2Z4VmY" role="2OqNvi">
                        <node concept="1bVj0M" id="12fIa2Z4Vn0" role="23t8la">
                          <node concept="3clFbS" id="12fIa2Z4Vn1" role="1bW5cS">
                            <node concept="3clFbF" id="12fIa2Z5378" role="3cqZAp">
                              <node concept="1rXfSq" id="12fIa2Z537a" role="3clFbG">
                                <ref role="37wK5l" node="3Z75HrC2FPL" resolve="addChangedIds" />
                                <node concept="2OqwBi" id="12fIa2Z537b" role="37wK5m">
                                  <node concept="37vLTw" id="12fIa2Z537c" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XRE" resolve="it" />
                                  </node>
                                  <node concept="3AY5_j" id="12fIa2Z537d" role="2OqNvi" />
                                </node>
                                <node concept="2OqwBi" id="12fIa2Z537e" role="37wK5m">
                                  <node concept="37vLTw" id="12fIa2Z537f" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XRE" resolve="it" />
                                  </node>
                                  <node concept="3AV6Ez" id="12fIa2Z537g" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XRE" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0XRF" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRG" role="1bW2Oz">
                  <property role="TrG5h" value="child" />
                  <node concept="2jxLKc" id="5W7E4fV0XRH" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1SAEDKFNIaH" role="3cqZAp">
          <node concept="2OqwBi" id="1SAEDKFLHgo" role="3clFbG">
            <node concept="2OqwBi" id="1SAEDKFLHgp" role="2Oq$k0">
              <node concept="37vLTw" id="1SAEDKFNQQ8" role="2Oq$k0">
                <ref role="3cqZAo" node="3Z75HrBT_7k" resolve="modelChanges" />
              </node>
              <node concept="UnYns" id="1SAEDKFLHgr" role="2OqNvi">
                <node concept="3uibUv" id="1SAEDKFLHgs" role="UnYnz">
                  <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="1SAEDKFLHgt" role="2OqNvi">
              <node concept="1bVj0M" id="1SAEDKFLHgu" role="23t8la">
                <node concept="3clFbS" id="1SAEDKFLHgv" role="1bW5cS">
                  <node concept="3cpWs8" id="1SAEDKFLHgw" role="3cqZAp">
                    <node concept="3cpWsn" id="1SAEDKFLHgx" role="3cpWs9">
                      <property role="TrG5h" value="oldId" />
                      <node concept="3uibUv" id="1SAEDKFLHgy" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                      </node>
                      <node concept="2OqwBi" id="1SAEDKFLHgz" role="33vP2m">
                        <node concept="37vLTw" id="1SAEDKFLHg$" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XRI" resolve="nodeIdChange" />
                        </node>
                        <node concept="liA8E" id="1SAEDKFLHg_" role="2OqNvi">
                          <ref role="37wK5l" to="btf5:7v6p9iW3p60" resolve="getNodeId" />
                          <node concept="3clFbT" id="1SAEDKFLHgA" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1SAEDKFLHgB" role="3cqZAp">
                    <node concept="3cpWsn" id="1SAEDKFLHgC" role="3cpWs9">
                      <property role="TrG5h" value="newId" />
                      <node concept="3uibUv" id="1SAEDKFLHgD" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                      </node>
                      <node concept="2OqwBi" id="1SAEDKFLHgE" role="33vP2m">
                        <node concept="37vLTw" id="1SAEDKFLHgF" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XRI" resolve="nodeIdChange" />
                        </node>
                        <node concept="liA8E" id="1SAEDKFLHgG" role="2OqNvi">
                          <ref role="37wK5l" to="btf5:7v6p9iW3p60" resolve="getNodeId" />
                          <node concept="3clFbT" id="1SAEDKFLHgH" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1SAEDKFLHgI" role="3cqZAp">
                    <node concept="3cpWsn" id="1SAEDKFLHgJ" role="3cpWs9">
                      <property role="TrG5h" value="newIds" />
                      <node concept="2hMVRd" id="1SAEDKFLHgK" role="1tU5fm">
                        <node concept="3uibUv" id="1SAEDKFLHgL" role="2hN53Y">
                          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1SAEDKFLHgM" role="33vP2m">
                        <node concept="2i4dXS" id="1SAEDKFLHgN" role="2ShVmc">
                          <node concept="3uibUv" id="1SAEDKFLHgO" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1SAEDKFLHgP" role="3cqZAp">
                    <node concept="3clFbS" id="1SAEDKFLHgQ" role="3clFbx">
                      <node concept="3clFbF" id="1SAEDKFLHgR" role="3cqZAp">
                        <node concept="2OqwBi" id="1SAEDKFLHgS" role="3clFbG">
                          <node concept="37vLTw" id="1SAEDKFLHgT" role="2Oq$k0">
                            <ref role="3cqZAo" node="1SAEDKFLHgJ" resolve="newIds" />
                          </node>
                          <node concept="X8dFx" id="1SAEDKFLHgU" role="2OqNvi">
                            <node concept="3EllGN" id="1SAEDKFLHgV" role="25WWJ7">
                              <node concept="37vLTw" id="1SAEDKFLHgW" role="3ElVtu">
                                <ref role="3cqZAo" node="1SAEDKFLHgC" resolve="newId" />
                              </node>
                              <node concept="37vLTw" id="1SAEDKFLHgX" role="3ElQJh">
                                <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1SAEDKFLHgY" role="3cqZAp">
                        <node concept="2OqwBi" id="1SAEDKFLHgZ" role="3clFbG">
                          <node concept="37vLTw" id="1SAEDKFLHh0" role="2Oq$k0">
                            <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
                          </node>
                          <node concept="kI3uX" id="1SAEDKFLHh1" role="2OqNvi">
                            <node concept="37vLTw" id="1SAEDKFLHh2" role="kIiFs">
                              <ref role="3cqZAo" node="1SAEDKFLHgC" resolve="newId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1SAEDKFLHh3" role="3clFbw">
                      <node concept="37vLTw" id="1SAEDKFLHh4" role="2Oq$k0">
                        <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
                      </node>
                      <node concept="2Nt0df" id="1SAEDKFLHh5" role="2OqNvi">
                        <node concept="37vLTw" id="1SAEDKFLHh6" role="38cxEo">
                          <ref role="3cqZAo" node="1SAEDKFLHgC" resolve="newId" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="1SAEDKFLHh7" role="9aQIa">
                      <node concept="3clFbS" id="1SAEDKFLHh8" role="9aQI4">
                        <node concept="3clFbF" id="1SAEDKFLHh9" role="3cqZAp">
                          <node concept="2OqwBi" id="1SAEDKFLHha" role="3clFbG">
                            <node concept="37vLTw" id="1SAEDKFLHhb" role="2Oq$k0">
                              <ref role="3cqZAo" node="1SAEDKFLHgJ" resolve="newIds" />
                            </node>
                            <node concept="TSZUe" id="1SAEDKFLHhc" role="2OqNvi">
                              <node concept="37vLTw" id="1SAEDKFLHhd" role="25WWJ7">
                                <ref role="3cqZAo" node="1SAEDKFLHgC" resolve="newId" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1SAEDKFLHhe" role="3cqZAp">
                    <node concept="1rXfSq" id="1SAEDKFLHhf" role="3clFbG">
                      <ref role="37wK5l" node="3Z75HrC2FPL" resolve="addChangedIds" />
                      <node concept="37vLTw" id="1SAEDKFLHhg" role="37wK5m">
                        <ref role="3cqZAo" node="1SAEDKFLHgx" resolve="oldId" />
                      </node>
                      <node concept="37vLTw" id="1SAEDKFLHhh" role="37wK5m">
                        <ref role="3cqZAo" node="1SAEDKFLHgJ" resolve="newIds" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRI" role="1bW2Oz">
                  <property role="TrG5h" value="nodeIdChange" />
                  <node concept="2jxLKc" id="5W7E4fV0XRJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7fUbjDMfg25" role="1B3o_S" />
      <node concept="3cqZAl" id="7fUbjDMfhHV" role="3clF45" />
      <node concept="37vLTG" id="3Z75HrBT_7k" role="3clF46">
        <property role="TrG5h" value="modelChanges" />
        <node concept="A3Dl8" id="1SAEDKFOhLB" role="1tU5fm">
          <node concept="3uibUv" id="1SAEDKFOhLD" role="A3Ik2">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7fUbjDMg$at" role="jymVt" />
    <node concept="3clFb_" id="7fUbjDMgD20" role="jymVt">
      <property role="TrG5h" value="getCurrentNodeIds" />
      <node concept="3clFbS" id="7fUbjDMgD23" role="3clF47">
        <node concept="3cpWs8" id="2RM7U9LMAg4" role="3cqZAp">
          <node concept="3cpWsn" id="2RM7U9LMAg7" role="3cpWs9">
            <property role="TrG5h" value="currentIds" />
            <node concept="2hMVRd" id="2RM7U9LMAg0" role="1tU5fm">
              <node concept="3uibUv" id="2RM7U9LMUHu" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2ShNRf" id="2RM7U9LNd3W" role="33vP2m">
              <node concept="2i4dXS" id="2RM7U9LNorn" role="2ShVmc">
                <node concept="3uibUv" id="2RM7U9LNExq" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RM7U9LL7hJ" role="3cqZAp">
          <node concept="3clFbS" id="2RM7U9LL7hL" role="3clFbx">
            <node concept="3clFbF" id="3RfDLCaRawh" role="3cqZAp">
              <node concept="2OqwBi" id="3RfDLCaRgSc" role="3clFbG">
                <node concept="37vLTw" id="3RfDLCaRawg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RM7U9LMAg7" resolve="currentIds" />
                </node>
                <node concept="X8dFx" id="3RfDLCaRoqb" role="2OqNvi">
                  <node concept="3EllGN" id="3RfDLCaRChP" role="25WWJ7">
                    <node concept="37vLTw" id="3RfDLCaRJYU" role="3ElVtu">
                      <ref role="3cqZAo" node="7fUbjDMgENi" resolve="nodeId" />
                    </node>
                    <node concept="37vLTw" id="3RfDLCaRvgQ" role="3ElQJh">
                      <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2RM7U9LLrkP" role="3clFbw">
            <node concept="37vLTw" id="2RM7U9LLi8E" role="2Oq$k0">
              <ref role="3cqZAo" node="7fUbjDMf124" resolve="myChangedIds" />
            </node>
            <node concept="2Nt0df" id="2RM7U9LL_3Z" role="2OqNvi">
              <node concept="37vLTw" id="2RM7U9LLHyl" role="38cxEo">
                <ref role="3cqZAo" node="7fUbjDMgENi" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RM7U9LNXcZ" role="3cqZAp">
          <node concept="2OqwBi" id="2RM7U9LO5Uu" role="3clFbG">
            <node concept="37vLTw" id="2RM7U9LNXcX" role="2Oq$k0">
              <ref role="3cqZAo" node="2RM7U9LMAg7" resolve="currentIds" />
            </node>
            <node concept="TSZUe" id="2RM7U9LOfst" role="2OqNvi">
              <node concept="37vLTw" id="2RM7U9LOpB6" role="25WWJ7">
                <ref role="3cqZAo" node="7fUbjDMgENi" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2RM7U9LOHM8" role="3cqZAp">
          <node concept="37vLTw" id="2RM7U9LOPyU" role="3cqZAk">
            <ref role="3cqZAo" node="2RM7U9LMAg7" resolve="currentIds" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7fUbjDMgBw0" role="1B3o_S" />
      <node concept="2hMVRd" id="2RM7U9LMK4r" role="3clF45">
        <node concept="3uibUv" id="2RM7U9LMK4t" role="2hN53Y">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="7fUbjDMgENi" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3uibUv" id="7fUbjDMgENh" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6wgNI6tBZeY" role="jymVt" />
    <node concept="3clFb_" id="6wgNI6tC04f" role="jymVt">
      <property role="TrG5h" value="addParent" />
      <node concept="3clFbS" id="6wgNI6tC04i" role="3clF47">
        <node concept="3clFbF" id="6wgNI6tC1Qt" role="3cqZAp">
          <node concept="2OqwBi" id="6wgNI6tC330" role="3clFbG">
            <node concept="37vLTw" id="6wgNI6tC1Qs" role="2Oq$k0">
              <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
            </node>
            <node concept="TSZUe" id="6wgNI6tC4af" role="2OqNvi">
              <node concept="37vLTw" id="6wgNI6tC5g3" role="25WWJ7">
                <ref role="3cqZAo" node="6wgNI6tC0Dp" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wgNI6tC61V" role="3cqZAp">
          <node concept="2OqwBi" id="6wgNI6tC7Sv" role="3clFbG">
            <node concept="2OqwBi" id="6wgNI6tC6EA" role="2Oq$k0">
              <node concept="37vLTw" id="6wgNI6tC61T" role="2Oq$k0">
                <ref role="3cqZAo" node="6wgNI6tC0Dp" resolve="parent" />
              </node>
              <node concept="2OwXpG" id="6wgNI6tC7cu" role="2OqNvi">
                <ref role="2Oxat5" node="6wgNI6tBXlb" resolve="myChildren" />
              </node>
            </node>
            <node concept="TSZUe" id="6wgNI6tC8tq" role="2OqNvi">
              <node concept="Xjq3P" id="6wgNI6tC9aV" role="25WWJ7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6wgNI6tC046" role="3clF45" />
      <node concept="37vLTG" id="6wgNI6tC0Dp" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="6wgNI6tC0Do" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6wgNI6tC9iA" role="jymVt" />
    <node concept="3clFb_" id="6wgNI6tCb4n" role="jymVt">
      <property role="TrG5h" value="getParents" />
      <node concept="3clFbS" id="6wgNI6tCb4q" role="3clF47">
        <node concept="3clFbF" id="6wgNI6tCcKx" role="3cqZAp">
          <node concept="37vLTw" id="6wgNI6tCcKw" role="3clFbG">
            <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6wgNI6tCadS" role="1B3o_S" />
      <node concept="_YKpA" id="2$XQf3f7Xii" role="3clF45">
        <node concept="3uibUv" id="2$XQf3f7Xik" role="_ZDj9">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MsUFH68Opi" role="jymVt" />
    <node concept="3clFb_" id="1MsUFH695KS" role="jymVt">
      <property role="TrG5h" value="getParentsWithRoot" />
      <node concept="3clFbS" id="1MsUFH695KV" role="3clF47">
        <node concept="3clFbF" id="1MsUFH69bTo" role="3cqZAp">
          <node concept="2OqwBi" id="1MsUFH69H$c" role="3clFbG">
            <node concept="2OqwBi" id="1MsUFH69fQA" role="2Oq$k0">
              <node concept="37vLTw" id="1MsUFH69bTn" role="2Oq$k0">
                <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
              </node>
              <node concept="3zZkjj" id="1MsUFH69lIG" role="2OqNvi">
                <node concept="1bVj0M" id="1MsUFH69lII" role="23t8la">
                  <node concept="3clFbS" id="1MsUFH69lIJ" role="1bW5cS">
                    <node concept="3clFbF" id="1MsUFH69rXN" role="3cqZAp">
                      <node concept="3fqX7Q" id="1MsUFH69Ubf" role="3clFbG">
                        <node concept="2OqwBi" id="1MsUFH69Ubh" role="3fr31v">
                          <node concept="37vLTw" id="1MsUFH69Ubi" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XRK" resolve="it" />
                          </node>
                          <node concept="liA8E" id="1MsUFH69Ubj" role="2OqNvi">
                            <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XRK" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XRL" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1MsUFH69N_b" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1MsUFH690fQ" role="1B3o_S" />
      <node concept="_YKpA" id="1MsUFH694K4" role="3clF45">
        <node concept="3uibUv" id="1MsUFH695df" role="_ZDj9">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6wgNI6tCt36" role="jymVt" />
    <node concept="3clFb_" id="6wgNI6tCv6T" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="3clFbS" id="6wgNI6tCv6W" role="3clF47">
        <node concept="3clFbF" id="6wgNI6tCwY7" role="3cqZAp">
          <node concept="37vLTw" id="6wgNI6tCwY6" role="3clFbG">
            <ref role="3cqZAo" node="6wgNI6tBXlb" resolve="myChildren" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6wgNI6tCucH" role="1B3o_S" />
      <node concept="3vKaQO" id="6wgNI6tCx5O" role="3clF45">
        <node concept="3uibUv" id="6wgNI6tCx5Q" role="3O5elw">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6wgNI6tCyFX" role="jymVt" />
    <node concept="3clFb_" id="6wgNI6tC_ug" role="jymVt">
      <property role="TrG5h" value="getRevision" />
      <node concept="3clFbS" id="6wgNI6tC_uj" role="3clF47">
        <node concept="3clFbF" id="6wgNI6tCB7Y" role="3cqZAp">
          <node concept="37vLTw" id="6wgNI6tCB7X" role="3clFbG">
            <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6wgNI6tC$kB" role="1B3o_S" />
      <node concept="3uibUv" id="6wgNI6tC_ny" role="3clF45">
        <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
      </node>
      <node concept="2AHcQZ" id="4aYE7KcUY7L" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="O_dbrLazdZ" role="jymVt" />
    <node concept="2YIFZL" id="2XF8Jyqnvjw" role="jymVt">
      <property role="TrG5h" value="calcAncestors" />
      <node concept="3clFbS" id="2XF8Jyqnvj_" role="3clF47">
        <node concept="3clFbJ" id="2XF8JyqnvjA" role="3cqZAp">
          <node concept="3clFbS" id="2XF8JyqnvjB" role="3clFbx">
            <node concept="3cpWs6" id="2XF8JyqnvjC" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2XF8JyqnvjD" role="3clFbw">
            <node concept="37vLTw" id="2XF8JyqnvjE" role="2Oq$k0">
              <ref role="3cqZAo" node="2XF8Jyqnvjy" resolve="result" />
            </node>
            <node concept="3JPx81" id="2XF8JyqnvjF" role="2OqNvi">
              <node concept="37vLTw" id="2XF8JyqnxcN" role="25WWJ7">
                <ref role="3cqZAo" node="2XF8JyqnwzB" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2XF8JyqnvjH" role="3cqZAp">
          <node concept="2OqwBi" id="2XF8JyqnvjI" role="3clFbG">
            <node concept="37vLTw" id="2XF8JyqnvjJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2XF8Jyqnvjy" resolve="result" />
            </node>
            <node concept="TSZUe" id="2XF8JyqnvjK" role="2OqNvi">
              <node concept="37vLTw" id="2XF8JyqnxnD" role="25WWJ7">
                <ref role="3cqZAo" node="2XF8JyqnwzB" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="ruV1$EIzCQ" role="3cqZAp">
          <node concept="3clFbS" id="ruV1$EIzCS" role="2LFqv$">
            <node concept="3clFbF" id="2XF8Jyqn$jO" role="3cqZAp">
              <node concept="1rXfSq" id="2XF8Jyqn$jN" role="3clFbG">
                <ref role="37wK5l" node="2XF8Jyqnvjw" resolve="calcAncestors" />
                <node concept="37vLTw" id="ruV1$EI_SR" role="37wK5m">
                  <ref role="3cqZAo" node="ruV1$EIzCT" resolve="parent" />
                </node>
                <node concept="37vLTw" id="2XF8Jyqn$Rc" role="37wK5m">
                  <ref role="3cqZAo" node="2XF8Jyqnvjy" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="ruV1$EIzCT" role="1Duv9x">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="ruV1$EIzVW" role="1tU5fm">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="ruV1$EI$nQ" role="1DdaDG">
            <node concept="37vLTw" id="ruV1$EI$nR" role="2Oq$k0">
              <ref role="3cqZAo" node="2XF8JyqnwzB" resolve="node" />
            </node>
            <node concept="liA8E" id="ruV1$EI$nS" role="2OqNvi">
              <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2XF8JyqnvjY" role="3clF45" />
      <node concept="37vLTG" id="2XF8JyqnwzB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2XF8JyqnwQ5" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2XF8Jyqnvjy" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="2hMVRd" id="2XF8Jyqnvjz" role="1tU5fm">
          <node concept="3uibUv" id="2XF8Jyqnvj$" role="2hN53Y">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6E_IjBsjbMZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="O$sna3r0x2" role="jymVt" />
    <node concept="3clFb_" id="O$sna3r5a3" role="jymVt">
      <property role="TrG5h" value="isDescendantOf" />
      <node concept="3clFbS" id="O$sna3r5a6" role="3clF47">
        <node concept="3clFbF" id="O$sna3r7WF" role="3cqZAp">
          <node concept="2OqwBi" id="O$sna3r8f4" role="3clFbG">
            <node concept="1rXfSq" id="O$sna3r7WE" role="2Oq$k0">
              <ref role="37wK5l" node="2XF8JyqnBll" resolve="getAncestors" />
            </node>
            <node concept="3JPx81" id="O$sna3r8$h" role="2OqNvi">
              <node concept="37vLTw" id="O$sna3r8Po" role="25WWJ7">
                <ref role="3cqZAo" node="O$sna3r6mt" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="O$sna3r3BH" role="3clF45" />
      <node concept="37vLTG" id="O$sna3r6mt" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="O$sna3r6ms" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Y_dPLMwlrF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2XF8Jyqn_3f" role="jymVt" />
    <node concept="3clFb_" id="2XF8JyqnBll" role="jymVt">
      <property role="TrG5h" value="getAncestors" />
      <node concept="3clFbS" id="2XF8JyqnBlo" role="3clF47">
        <node concept="3cpWs8" id="2XF8JyqnCky" role="3cqZAp">
          <node concept="3cpWsn" id="2XF8JyqnCk_" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="2XF8JyqnCl0" role="1tU5fm">
              <node concept="3uibUv" id="2XF8JyqnCl1" role="2hN53Y">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="2XF8JyqnCwG" role="33vP2m">
              <node concept="2i4dXS" id="2XF8Jyqooj6" role="2ShVmc">
                <node concept="3uibUv" id="2XF8JyqoqBe" role="HW$YZ">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="ruV1$EIBrE" role="3cqZAp">
          <node concept="3clFbS" id="ruV1$EIBrF" role="2LFqv$">
            <node concept="3clFbF" id="ruV1$EIBrG" role="3cqZAp">
              <node concept="1rXfSq" id="ruV1$EIBrH" role="3clFbG">
                <ref role="37wK5l" node="2XF8Jyqnvjw" resolve="calcAncestors" />
                <node concept="37vLTw" id="ruV1$EIBrI" role="37wK5m">
                  <ref role="3cqZAo" node="ruV1$EIBrK" resolve="parent" />
                </node>
                <node concept="37vLTw" id="ruV1$EIBrJ" role="37wK5m">
                  <ref role="3cqZAo" node="2XF8JyqnCk_" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="ruV1$EIBrK" role="1Duv9x">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="ruV1$EIBrL" role="1tU5fm">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
          </node>
          <node concept="37vLTw" id="ruV1$EID4n" role="1DdaDG">
            <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
          </node>
        </node>
        <node concept="3cpWs6" id="2XF8JyqotTl" role="3cqZAp">
          <node concept="37vLTw" id="2XF8Jyqou9O" role="3cqZAk">
            <ref role="3cqZAo" node="2XF8JyqnCk_" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2hMVRd" id="2XF8JyqnBeu" role="3clF45">
        <node concept="3uibUv" id="2XF8JyqnBiQ" role="2hN53Y">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6E_IjBsjfXv" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6PSiBaRDhcl" role="jymVt" />
    <node concept="3clFb_" id="6PSiBaRDo6z" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="6PSiBaRDo6$" role="1B3o_S" />
      <node concept="3clFbS" id="6PSiBaRDo6B" role="3clF47">
        <node concept="3cpWs8" id="6PSiBaRGiYZ" role="3cqZAp">
          <node concept="3cpWsn" id="6PSiBaRGiZ0" role="3cpWs9">
            <property role="TrG5h" value="rn" />
            <node concept="3uibUv" id="6PSiBaRGiZ1" role="1tU5fm">
              <ref role="3uigEE" to="yah0:~VcsRevisionNumber" resolve="VcsRevisionNumber" />
            </node>
            <node concept="2OqwBi" id="6PSiBaRGqhJ" role="33vP2m">
              <node concept="37vLTw" id="6PSiBaRGqhK" role="2Oq$k0">
                <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
              </node>
              <node concept="liA8E" id="6PSiBaRGqhL" role="2OqNvi">
                <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6PSiBaRECPT" role="3cqZAp">
          <node concept="3clFbS" id="6PSiBaRECPV" role="3clFbx">
            <node concept="3cpWs8" id="6PSiBaREVgs" role="3cqZAp">
              <node concept="3cpWsn" id="6PSiBaREVgt" role="3cpWs9">
                <property role="TrG5h" value="grn" />
                <node concept="3uibUv" id="6PSiBaREVgu" role="1tU5fm">
                  <ref role="3uigEE" to="hr4p:~GitRevisionNumber" resolve="GitRevisionNumber" />
                </node>
                <node concept="0kSF2" id="6PSiBaRF3SJ" role="33vP2m">
                  <node concept="3uibUv" id="6PSiBaRF3SM" role="0kSFW">
                    <ref role="3uigEE" to="hr4p:~GitRevisionNumber" resolve="GitRevisionNumber" />
                  </node>
                  <node concept="37vLTw" id="6PSiBaRGvAC" role="0kSFX">
                    <ref role="3cqZAo" node="6PSiBaRGiZ0" resolve="rn" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6PSiBaREHNy" role="3cqZAp">
              <node concept="3cpWs3" id="6PSiBaRGAOR" role="3cqZAk">
                <node concept="3cpWs3" id="6PSiBaRFmi0" role="3uHU7B">
                  <node concept="2OqwBi" id="6PSiBaRF9gC" role="3uHU7B">
                    <node concept="37vLTw" id="6PSiBaRF4r_" role="2Oq$k0">
                      <ref role="3cqZAo" node="6PSiBaREVgt" resolve="grn" />
                    </node>
                    <node concept="liA8E" id="6PSiBaRFfzp" role="2OqNvi">
                      <ref role="37wK5l" to="hr4p:~GitRevisionNumber.getShortRev()" resolve="getShortRev" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6PSiBaRFtsO" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6PSiBaRHAcv" role="3uHU7w">
                  <node concept="37vLTw" id="6PSiBaRHjDd" role="2Oq$k0">
                    <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                  </node>
                  <node concept="liA8E" id="6PSiBaRHHkF" role="2OqNvi">
                    <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getCommitMessage()" resolve="getCommitMessage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6PSiBaREEA9" role="3clFbw">
            <node concept="3uibUv" id="6PSiBaREG9_" role="2ZW6by">
              <ref role="3uigEE" to="hr4p:~GitRevisionNumber" resolve="GitRevisionNumber" />
            </node>
            <node concept="37vLTw" id="6PSiBaRGqSg" role="2ZW6bz">
              <ref role="3cqZAo" node="6PSiBaRGiZ0" resolve="rn" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PSiBaRFD$X" role="3cqZAp">
          <node concept="2OqwBi" id="6PSiBaRFSDZ" role="3clFbG">
            <node concept="liA8E" id="6PSiBaRFYyA" role="2OqNvi">
              <ref role="37wK5l" to="yah0:~VcsRevisionNumber.asString()" resolve="asString" />
            </node>
            <node concept="37vLTw" id="6PSiBaRGAte" role="2Oq$k0">
              <ref role="3cqZAo" node="6PSiBaRGiZ0" resolve="rn" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6PSiBaRDo6C" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="17QB3L" id="6E_IjBsjhJa" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="41u046V3iJU" role="jymVt" />
    <node concept="3clFb_" id="41u046V3l2Y" role="jymVt">
      <property role="TrG5h" value="setIgnored" />
      <node concept="3clFbS" id="41u046V3l31" role="3clF47">
        <node concept="3clFbF" id="41u046V3mg6" role="3cqZAp">
          <node concept="37vLTI" id="41u046V3mHk" role="3clFbG">
            <node concept="3clFbT" id="41u046V3mSQ" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="41u046V3mg5" role="37vLTJ">
              <ref role="3cqZAo" node="41u046V3hMB" resolve="myIsIgnored" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="41u046V3l0C" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="41u046V3mUd" role="jymVt" />
    <node concept="3clFb_" id="41u046V3p4t" role="jymVt">
      <property role="TrG5h" value="isIgnored" />
      <node concept="3clFbS" id="41u046V3p4w" role="3clF47">
        <node concept="3clFbF" id="41u046V3pWC" role="3cqZAp">
          <node concept="37vLTw" id="41u046V3pWB" role="3clFbG">
            <ref role="3cqZAo" node="41u046V3hMB" resolve="myIsIgnored" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="41u046V3p27" role="3clF45" />
      <node concept="3Tm1VV" id="2bd2eJyJ1LZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Kf$fJTgUuo" role="jymVt" />
    <node concept="3clFb_" id="7Kf$fJTgYaH" role="jymVt">
      <property role="TrG5h" value="loadModel" />
      <node concept="3clFbS" id="7Kf$fJTgYaK" role="3clF47">
        <node concept="3SKdUt" id="5Lno_XHiaR2" role="3cqZAp">
          <node concept="1PaTwC" id="5Lno_XHiaR3" role="1aUNEU">
            <node concept="3oM_SD" id="5Lno_XHifl1" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHiaR9" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHiaRa" role="1PaTwD">
              <property role="3oM_SC" value="indeed" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHieDV" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHieDW" role="1PaTwD">
              <property role="3oM_SC" value="weird" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifkK" role="1PaTwD">
              <property role="3oM_SC" value="logic," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifli" role="1PaTwD">
              <property role="3oM_SC" value="parentNode.loadModel(childNode)." />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifnz" role="1PaTwD">
              <property role="3oM_SC" value="It's" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifnO" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifnP" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifo6" role="1PaTwD">
              <property role="3oM_SC" value="&quot;propagate" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifoB" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifoC" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifoD" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifoU" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifoV" role="1PaTwD">
              <property role="3oM_SC" value="loaded&quot;," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifps" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifpX" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5Lno_XHiftp" role="3cqZAp">
          <node concept="1PaTwC" id="5Lno_XHifsU" role="1aUNEU">
            <node concept="3oM_SD" id="5Lno_XHifsT" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifqu" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifqJ" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifr0" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifrh" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifri" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifrz" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifr$" role="1PaTwD">
              <property role="3oM_SC" value="parents" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifs5" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifs6" role="1PaTwD">
              <property role="3oM_SC" value="eventually" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifsn" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHifso" role="1PaTwD">
              <property role="3oM_SC" value="grandparents" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHikgU" role="1PaTwD">
              <property role="3oM_SC" value="(children" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHikgV" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHikgW" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHikgX" role="1PaTwD">
              <property role="3oM_SC" value="recent" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHikhe" role="1PaTwD">
              <property role="3oM_SC" value="commits," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHikhv" role="1PaTwD">
              <property role="3oM_SC" value="AFAIU)" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1VaQjhYQ5sz" role="3cqZAp">
          <node concept="3clFbS" id="1VaQjhYQ5s_" role="3clFbx">
            <node concept="3cpWs6" id="1VaQjhYQb91" role="3cqZAp" />
          </node>
          <node concept="1rXfSq" id="1VaQjhYQ8jl" role="3clFbw">
            <ref role="37wK5l" node="6dgohK5qcrh" resolve="isModelLoaded" />
          </node>
        </node>
        <node concept="3J1_TO" id="3tdNeKHf6wL" role="3cqZAp">
          <node concept="3clFbS" id="3tdNeKHf6wM" role="1zxBo7">
            <node concept="3clFbF" id="7Kf$fJTh7Sw" role="3cqZAp">
              <node concept="37vLTI" id="7Kf$fJTh8bs" role="3clFbG">
                <node concept="37vLTw" id="7Kf$fJTh7Su" role="37vLTJ">
                  <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
                </node>
                <node concept="2OqwBi" id="5Lno_XHeY1m" role="37vLTx">
                  <node concept="37vLTw" id="5Lno_XHeVj5" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Kf$fJThbgu" resolve="graph" />
                  </node>
                  <node concept="liA8E" id="5Lno_XHfY_H" role="2OqNvi">
                    <ref role="37wK5l" node="5Lno_XHf9QP" resolve="loadModel" />
                    <node concept="37vLTw" id="5Lno_XHg2kT" role="37wK5m">
                      <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="2SdIvzwzYXB" role="1zxBo6">
            <node concept="3clFbS" id="2SdIvzwzYXC" role="1wplMD">
              <node concept="3clFbF" id="2SdIvzw$hIB" role="3cqZAp">
                <node concept="1rXfSq" id="2SdIvzw$hIC" role="3clFbG">
                  <ref role="37wK5l" node="3tdNeKHfghK" resolve="setLoadedModel" />
                  <node concept="37vLTw" id="2SdIvzw$hID" role="37wK5m">
                    <ref role="3cqZAo" node="7Kf$fJTjeg1" resolve="childNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7Kf$fJTgY7L" role="3clF45" />
      <node concept="37vLTG" id="7Kf$fJTjeg1" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <node concept="3uibUv" id="7Kf$fJTjg0r" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
        <node concept="2AHcQZ" id="7Kf$fJTjWmf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="7Kf$fJThbgu" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3uibUv" id="5Lno_XHeoO8" role="1tU5fm">
          <ref role="3uigEE" node="4aYE7KddtJc" resolve="CommitsGraph" />
        </node>
      </node>
      <node concept="3uibUv" id="1K6WBNun8f9" role="Sfmx6">
        <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
      </node>
      <node concept="3uibUv" id="1K6WBNunepG" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="5Lno_XHiT7V" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
      </node>
      <node concept="3uibUv" id="5Lno_XHj2Oa" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3tdNeKHfbJF" role="jymVt" />
    <node concept="3clFb_" id="3tdNeKHfghK" role="jymVt">
      <property role="TrG5h" value="setLoadedModel" />
      <node concept="3clFbS" id="3tdNeKHfghN" role="3clF47">
        <node concept="3clFbJ" id="2SdIvzw$rlo" role="3cqZAp">
          <node concept="3clFbS" id="2SdIvzw$rlp" role="3clFbx">
            <node concept="3clFbF" id="2SdIvzw$rlq" role="3cqZAp">
              <node concept="37vLTI" id="2SdIvzw$rlr" role="3clFbG">
                <node concept="37vLTw" id="2SdIvzw$rls" role="37vLTx">
                  <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
                </node>
                <node concept="37vLTw" id="2SdIvzw$rlt" role="37vLTJ">
                  <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2SdIvzw$rlu" role="3cqZAp">
              <node concept="37vLTI" id="2SdIvzw$rlv" role="3clFbG">
                <node concept="Xjq3P" id="2SdIvzw$rlw" role="37vLTx" />
                <node concept="37vLTw" id="2SdIvzw$rlx" role="37vLTJ">
                  <ref role="3cqZAo" node="4UjHG8gvLWz" resolve="myNodeWithLoadedModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2SdIvzw$rly" role="3clFbw">
            <node concept="2OqwBi" id="2SdIvzw$rlz" role="3uHU7w">
              <node concept="37vLTw" id="2SdIvzw$rl$" role="2Oq$k0">
                <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
              </node>
              <node concept="liA8E" id="2SdIvzw$rl_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.isLoaded()" resolve="isLoaded" />
              </node>
            </node>
            <node concept="3y3z36" id="2SdIvzw$rlA" role="3uHU7B">
              <node concept="37vLTw" id="2SdIvzw$rlB" role="3uHU7B">
                <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
              </node>
              <node concept="10Nm6u" id="2SdIvzw$rlC" role="3uHU7w" />
            </node>
          </node>
          <node concept="3eNFk2" id="2SdIvzw$vf7" role="3eNLev">
            <node concept="3clFbS" id="2SdIvzw$vf8" role="3eOfB_">
              <node concept="3clFbF" id="2SdIvzw$vff" role="3cqZAp">
                <node concept="37vLTI" id="2SdIvzw$vfg" role="3clFbG">
                  <node concept="2OqwBi" id="2SdIvzw$vfh" role="37vLTx">
                    <node concept="37vLTw" id="2SdIvzw$vfi" role="2Oq$k0">
                      <ref role="3cqZAo" node="3tdNeKHfmdu" resolve="childNode" />
                    </node>
                    <node concept="liA8E" id="2SdIvzw$vfj" role="2OqNvi">
                      <ref role="37wK5l" node="7Kf$fJTjn7f" resolve="getLoadedModel" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2SdIvzw$vfk" role="37vLTJ">
                    <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2SdIvzw$vfl" role="3cqZAp">
                <node concept="37vLTI" id="2SdIvzw$vfm" role="3clFbG">
                  <node concept="2OqwBi" id="2SdIvzw$vfn" role="37vLTx">
                    <node concept="37vLTw" id="2SdIvzw$vfo" role="2Oq$k0">
                      <ref role="3cqZAo" node="3tdNeKHfmdu" resolve="childNode" />
                    </node>
                    <node concept="liA8E" id="2SdIvzw$vfp" role="2OqNvi">
                      <ref role="37wK5l" node="4UjHG8gvSsf" resolve="getNodeWithLoadedModel" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2SdIvzw$vfq" role="37vLTJ">
                    <ref role="3cqZAo" node="4UjHG8gvLWz" resolve="myNodeWithLoadedModel" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2SdIvzw$vfr" role="3cqZAp">
                <node concept="2OqwBi" id="2SdIvzw$vfs" role="3clFbG">
                  <node concept="37vLTw" id="2SdIvzw$vft" role="2Oq$k0">
                    <ref role="3cqZAo" node="3tdNeKHfmdu" resolve="childNode" />
                  </node>
                  <node concept="liA8E" id="2SdIvzw$vfu" role="2OqNvi">
                    <ref role="37wK5l" node="2yiSWr$8lRO" resolve="doNotUnload" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2SdIvzw$x8p" role="3eO9$A">
              <node concept="37vLTw" id="2SdIvzw$wVf" role="3uHU7B">
                <ref role="3cqZAo" node="3tdNeKHfmdu" resolve="childNode" />
              </node>
              <node concept="10Nm6u" id="2SdIvzw$wVe" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3tdNeKHfdUr" role="1B3o_S" />
      <node concept="3cqZAl" id="3tdNeKHfgdz" role="3clF45" />
      <node concept="37vLTG" id="3tdNeKHfmdu" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <node concept="3uibUv" id="3tdNeKHfmdt" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UjHG8gvNWb" role="jymVt" />
    <node concept="3clFb_" id="4UjHG8gvSsf" role="jymVt">
      <property role="TrG5h" value="getNodeWithLoadedModel" />
      <node concept="3clFbS" id="4UjHG8gvSsi" role="3clF47">
        <node concept="3clFbF" id="4UjHG8gvUAq" role="3cqZAp">
          <node concept="37vLTw" id="4UjHG8gvUAp" role="3clFbG">
            <ref role="3cqZAo" node="4UjHG8gvLWz" resolve="myNodeWithLoadedModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4UjHG8gvQku" role="1B3o_S" />
      <node concept="3uibUv" id="4UjHG8gvSnM" role="3clF45">
        <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4HIBPvKqswM" role="jymVt" />
    <node concept="3clFb_" id="4HIBPvKqwj1" role="jymVt">
      <property role="TrG5h" value="getModel" />
      <node concept="3clFbS" id="4HIBPvKqwj4" role="3clF47">
        <node concept="3clFbF" id="4HIBPvKqyyo" role="3cqZAp">
          <node concept="37vLTw" id="4HIBPvKqyyn" role="3clFbG">
            <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4HIBPvKqwfn" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Kf$fJTjhHe" role="jymVt" />
    <node concept="3clFb_" id="7Kf$fJTjn7f" role="jymVt">
      <property role="TrG5h" value="getLoadedModel" />
      <node concept="3clFbS" id="7Kf$fJTjn7i" role="3clF47">
        <node concept="3clFbF" id="7Kf$fJTjpn6" role="3cqZAp">
          <node concept="37vLTw" id="7Kf$fJTjpn5" role="3clFbG">
            <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Kf$fJTjlj6" role="1B3o_S" />
      <node concept="3uibUv" id="7Kf$fJTjn3_" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="2AHcQZ" id="2Iw6HC1TjbV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Kf$fJThhKT" role="jymVt" />
    <node concept="3clFb_" id="7Kf$fJThmvo" role="jymVt">
      <property role="TrG5h" value="unloadModel" />
      <node concept="3clFbS" id="7Kf$fJThmvr" role="3clF47">
        <node concept="3clFbJ" id="3dZxEZNwXLN" role="3cqZAp">
          <node concept="3clFbS" id="3dZxEZNwXLP" role="3clFbx">
            <node concept="3cpWs6" id="3dZxEZNx2VB" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="44x7YJB6s7V" role="3clFbw">
            <node concept="1eOMI4" id="44x7YJB7kFj" role="3uHU7w">
              <node concept="1Wc70l" id="44x7YJB6Opx" role="1eOMHV">
                <node concept="2OqwBi" id="44x7YJB70aN" role="3uHU7w">
                  <node concept="2OqwBi" id="44x7YJB6UNs" role="2Oq$k0">
                    <node concept="37vLTw" id="44x7YJB6RDV" role="2Oq$k0">
                      <ref role="3cqZAo" node="6wgNI6tBXlb" resolve="myChildren" />
                    </node>
                    <node concept="1uHKPH" id="44x7YJB6XCC" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="44x7YJB73Um" role="2OqNvi">
                    <ref role="37wK5l" node="6STmDFFaSyK" resolve="isLocalRevision" />
                  </node>
                </node>
                <node concept="2OqwBi" id="44x7YJB6xZm" role="3uHU7B">
                  <node concept="37vLTw" id="44x7YJB6uVw" role="2Oq$k0">
                    <ref role="3cqZAo" node="6wgNI6tBXlb" resolve="myChildren" />
                  </node>
                  <node concept="3GX2aA" id="44x7YJB7ezd" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="3dZxEZNx06q" role="3uHU7B">
              <ref role="37wK5l" node="6STmDFFaSyK" resolve="isLocalRevision" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2yiSWr$8hEg" role="3cqZAp">
          <node concept="3clFbS" id="2yiSWr$8hEi" role="3clFbx">
            <node concept="3clFbF" id="7Kf$fJThotE" role="3cqZAp">
              <node concept="2EnYce" id="7Kf$fJThoQ7" role="3clFbG">
                <node concept="37vLTw" id="2yiSWr$8iiz" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
                </node>
                <node concept="liA8E" id="7Kf$fJThoZN" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.unload()" resolve="unload" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2yiSWr$8hUU" role="3clFbw">
            <ref role="3cqZAo" node="2yiSWr$8fYh" resolve="myModelCanBeUnloaded" />
          </node>
        </node>
        <node concept="3clFbF" id="2yiSWr$8vLN" role="3cqZAp">
          <node concept="37vLTI" id="2yiSWr$8w0z" role="3clFbG">
            <node concept="10Nm6u" id="2yiSWr$8wde" role="37vLTx" />
            <node concept="37vLTw" id="2yiSWr$8vLL" role="37vLTJ">
              <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="66t7Z$zWQed" role="3cqZAp">
          <node concept="37vLTI" id="66t7Z$zWQP$" role="3clFbG">
            <node concept="37vLTw" id="66t7Z$zWQeb" role="37vLTJ">
              <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
            </node>
            <node concept="10Nm6u" id="66t7Z$zWQLl" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7Kf$fJThmsf" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2yiSWr$8iob" role="jymVt" />
    <node concept="3clFb_" id="2yiSWr$8lRO" role="jymVt">
      <property role="TrG5h" value="doNotUnload" />
      <node concept="3clFbS" id="2yiSWr$8lRR" role="3clF47">
        <node concept="3clFbF" id="2yiSWr$8nBz" role="3cqZAp">
          <node concept="37vLTI" id="2yiSWr$8o6j" role="3clFbG">
            <node concept="3clFbT" id="2yiSWr$8owi" role="37vLTx" />
            <node concept="37vLTw" id="2yiSWr$8nBy" role="37vLTJ">
              <ref role="3cqZAo" node="2yiSWr$8fYh" resolve="myModelCanBeUnloaded" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2yiSWr$8lOe" role="3clF45" />
      <node concept="3Tm1VV" id="ypNelyQXHH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6dgohK5pZMP" role="jymVt" />
    <node concept="3clFb_" id="6dgohK5qcrh" role="jymVt">
      <property role="TrG5h" value="isModelLoaded" />
      <node concept="3clFbS" id="6dgohK5qcrk" role="3clF47">
        <node concept="3clFbF" id="6dgohK5qeiD" role="3cqZAp">
          <node concept="1Wc70l" id="7Kf$fJTi2sA" role="3clFbG">
            <node concept="2OqwBi" id="7Kf$fJTi34m" role="3uHU7w">
              <node concept="37vLTw" id="2yiSWr$8xVF" role="2Oq$k0">
                <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
              </node>
              <node concept="liA8E" id="7Kf$fJTi3fE" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.isLoaded()" resolve="isLoaded" />
              </node>
            </node>
            <node concept="3y3z36" id="7Kf$fJTi23Q" role="3uHU7B">
              <node concept="37vLTw" id="2yiSWr$8xHR" role="3uHU7B">
                <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
              </node>
              <node concept="10Nm6u" id="7Kf$fJTi2jj" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6dgohK5qaYy" role="1B3o_S" />
      <node concept="10P_77" id="6dgohK5qcol" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="AruHTARMG2" role="jymVt" />
    <node concept="3clFb_" id="2yiSWr$8Uci" role="jymVt">
      <property role="TrG5h" value="isOwnModelLoaded" />
      <node concept="3clFbS" id="2yiSWr$8Ucj" role="3clF47">
        <node concept="3clFbF" id="2yiSWr$8Uck" role="3cqZAp">
          <node concept="3clFbC" id="2yiSWr$96so" role="3clFbG">
            <node concept="37vLTw" id="2yiSWr$96GH" role="3uHU7B">
              <ref role="3cqZAo" node="7Kf$fJTgSP8" resolve="myModel" />
            </node>
            <node concept="37vLTw" id="2yiSWr$974Z" role="3uHU7w">
              <ref role="3cqZAo" node="7Kf$fJTjasR" resolve="myLoadedModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2yiSWr$8Uct" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2yiSWr$8SjE" role="jymVt" />
    <node concept="3clFb_" id="AruHTARQ5$" role="jymVt">
      <property role="TrG5h" value="setIgnoredByChild" />
      <node concept="3clFbS" id="AruHTARQ5B" role="3clF47">
        <node concept="3clFbF" id="AruHTARTfF" role="3cqZAp">
          <node concept="2OqwBi" id="AruHTARU9P" role="3clFbG">
            <node concept="37vLTw" id="AruHTARTfE" role="2Oq$k0">
              <ref role="3cqZAo" node="AruHTAQOqX" resolve="myIgnoredByChildren" />
            </node>
            <node concept="TSZUe" id="AruHTARV8B" role="2OqNvi">
              <node concept="37vLTw" id="AruHTARVni" role="25WWJ7">
                <ref role="3cqZAo" node="AruHTARRxl" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="AruHTAROhY" role="1B3o_S" />
      <node concept="3cqZAl" id="AruHTARQ2C" role="3clF45" />
      <node concept="37vLTG" id="AruHTARRxl" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="AruHTARRxk" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="AruHTARVxd" role="jymVt" />
    <node concept="3clFb_" id="AruHTARZKs" role="jymVt">
      <property role="TrG5h" value="isIgnoredByChild" />
      <node concept="3clFbS" id="AruHTARZKv" role="3clF47">
        <node concept="3clFbF" id="AruHTAS4Fv" role="3cqZAp">
          <node concept="2OqwBi" id="AruHTAS5BB" role="3clFbG">
            <node concept="37vLTw" id="AruHTAS4Fu" role="2Oq$k0">
              <ref role="3cqZAo" node="AruHTAQOqX" resolve="myIgnoredByChildren" />
            </node>
            <node concept="3JPx81" id="AruHTAS6pg" role="2OqNvi">
              <node concept="37vLTw" id="AruHTAS6E1" role="25WWJ7">
                <ref role="3cqZAo" node="AruHTAS2AA" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="AruHTAS1kK" role="3clF45" />
      <node concept="37vLTG" id="AruHTAS2AA" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="AruHTAS2A_" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1oWcoIBNT93" role="1B3o_S" />
    <node concept="3uibUv" id="3mP1wh_HarK" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Comparable" resolve="Comparable" />
    </node>
    <node concept="2tJIrI" id="jTLJ_akO9$" role="jymVt" />
    <node concept="3clFb_" id="1wy4cZTlF9U" role="jymVt">
      <property role="TrG5h" value="createContents" />
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
      <node concept="37vLTG" id="4_JpahyAlbL" role="3clF46">
        <property role="TrG5h" value="vFile" />
        <node concept="3uibUv" id="4_JpahyAmjR" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="1wy4cZTlF9X" role="3clF47">
        <node concept="3cpWs8" id="1wy4cZTlFBH" role="3cqZAp">
          <node concept="3cpWsn" id="1wy4cZTlFBI" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="_YKpA" id="1wy4cZTlFBJ" role="1tU5fm">
              <node concept="3uibUv" id="4_oGy7zLOsB" role="_ZDj9">
                <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
              </node>
            </node>
            <node concept="2ShNRf" id="1wy4cZTlFBL" role="33vP2m">
              <node concept="Tc6Ow" id="1wy4cZTlFBM" role="2ShVmc">
                <node concept="3uibUv" id="4_oGy7zLRr3" role="HW$YZ">
                  <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wy4cZTlHof" role="3cqZAp">
          <node concept="3clFbS" id="1wy4cZTlHog" role="3clFbx">
            <node concept="3clFbF" id="1wy4cZTlHox" role="3cqZAp">
              <node concept="2OqwBi" id="1wy4cZTlHoy" role="3clFbG">
                <node concept="37vLTw" id="1wy4cZTlHoz" role="2Oq$k0">
                  <ref role="3cqZAo" node="1wy4cZTlFBI" resolve="contents" />
                </node>
                <node concept="TSZUe" id="1wy4cZTlHo$" role="2OqNvi">
                  <node concept="1rXfSq" id="2AsRvWbv4$2" role="25WWJ7">
                    <ref role="37wK5l" node="2AsRvWbuHsS" resolve="createDiffContent" />
                    <node concept="2OqwBi" id="4_JpahyFyRz" role="37wK5m">
                      <node concept="37vLTw" id="4_JpahyFyR$" role="2Oq$k0">
                        <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
                      </node>
                      <node concept="34jXtK" id="4_JpahyFyR_" role="2OqNvi">
                        <node concept="3cmrfG" id="4_JpahyFyRA" role="25WWJ7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4_JpahyE834" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyArCO" resolve="ideaProject" />
                    </node>
                    <node concept="37vLTw" id="4_JpahyEkeZ" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyA5vf" resolve="vcs" />
                    </node>
                    <node concept="37vLTw" id="4_JpahyEJIv" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1wy4cZTlHon" role="3clFbw">
            <node concept="37vLTw" id="jTLJ_al6cy" role="2Oq$k0">
              <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
            </node>
            <node concept="3GX2aA" id="1wy4cZTlK2G" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2mW2dIep0oN" role="9aQIa">
            <node concept="3clFbS" id="2mW2dIep0oO" role="9aQI4">
              <node concept="3clFbF" id="2mW2dIep0Sx" role="3cqZAp">
                <node concept="2OqwBi" id="2mW2dIep1CT" role="3clFbG">
                  <node concept="37vLTw" id="2mW2dIep0Sw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wy4cZTlFBI" resolve="contents" />
                  </node>
                  <node concept="TSZUe" id="2mW2dIep2k2" role="2OqNvi">
                    <node concept="2ShNRf" id="2mW2dIep2tc" role="25WWJ7">
                      <node concept="1pGfFk" id="2mW2dIepI17" role="2ShVmc">
                        <ref role="37wK5l" to="2o8p:~EmptyContent.&lt;init&gt;()" resolve="EmptyContent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wy4cZTlHoH" role="3cqZAp">
          <node concept="2OqwBi" id="1wy4cZTlHoI" role="3clFbG">
            <node concept="37vLTw" id="1wy4cZTlHoJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1wy4cZTlFBI" resolve="contents" />
            </node>
            <node concept="TSZUe" id="1wy4cZTlHoK" role="2OqNvi">
              <node concept="1rXfSq" id="2AsRvWbw9u1" role="25WWJ7">
                <ref role="37wK5l" node="2AsRvWbuHsS" resolve="createDiffContent" />
                <node concept="Xjq3P" id="2AsRvWbwKp$" role="37wK5m" />
                <node concept="37vLTw" id="4_JpahyFPbD" role="37wK5m">
                  <ref role="3cqZAo" node="4_JpahyArCO" resolve="ideaProject" />
                </node>
                <node concept="37vLTw" id="4_JpahyFPbE" role="37wK5m">
                  <ref role="3cqZAo" node="4_JpahyA5vf" resolve="vcs" />
                </node>
                <node concept="37vLTw" id="4_JpahyFPbN" role="37wK5m">
                  <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wy4cZTlHoT" role="3cqZAp">
          <node concept="3clFbS" id="1wy4cZTlHoU" role="3clFbx">
            <node concept="3clFbF" id="1wy4cZTlHp2" role="3cqZAp">
              <node concept="2OqwBi" id="1wy4cZTlHp3" role="3clFbG">
                <node concept="37vLTw" id="1wy4cZTlHp4" role="2Oq$k0">
                  <ref role="3cqZAo" node="1wy4cZTlFBI" resolve="contents" />
                </node>
                <node concept="TSZUe" id="1wy4cZTlHp5" role="2OqNvi">
                  <node concept="1rXfSq" id="2AsRvWbx3Bz" role="25WWJ7">
                    <ref role="37wK5l" node="2AsRvWbuHsS" resolve="createDiffContent" />
                    <node concept="2OqwBi" id="1wy4cZTmatU" role="37wK5m">
                      <node concept="37vLTw" id="jTLJ_alERo" role="2Oq$k0">
                        <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
                      </node>
                      <node concept="34jXtK" id="1wy4cZTmatW" role="2OqNvi">
                        <node concept="3cmrfG" id="1wy4cZTmatX" role="25WWJ7">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4_JpahyG9Zz" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyArCO" resolve="ideaProject" />
                    </node>
                    <node concept="37vLTw" id="4_JpahyG9Z$" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyA5vf" resolve="vcs" />
                    </node>
                    <node concept="37vLTw" id="4_JpahyG9ZH" role="37wK5m">
                      <ref role="3cqZAo" node="4_JpahyAlbL" resolve="vFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1wy4cZTlHpe" role="3clFbw">
            <node concept="2OqwBi" id="1wy4cZTlHpf" role="3uHU7B">
              <node concept="37vLTw" id="jTLJ_alBYl" role="2Oq$k0">
                <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
              </node>
              <node concept="34oBXx" id="1wy4cZTlHph" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="1wy4cZTlHpi" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wy4cZTlFKm" role="3cqZAp">
          <node concept="37vLTw" id="1wy4cZTlFZK" role="3cqZAk">
            <ref role="3cqZAo" node="1wy4cZTlFBI" resolve="contents" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="jTLJ_apROv" role="1B3o_S" />
      <node concept="_YKpA" id="1wy4cZTlDHy" role="3clF45">
        <node concept="3uibUv" id="4_oGy7zLF0H" role="_ZDj9">
          <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
        </node>
      </node>
      <node concept="3uibUv" id="4_JpahyFjK8" role="Sfmx6">
        <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AsRvWbsITR" role="jymVt" />
    <node concept="2YIFZL" id="2AsRvWbuHsS" role="jymVt">
      <property role="TrG5h" value="createDiffContent" />
      <node concept="3clFbS" id="2AsRvWbuHsU" role="3clF47">
        <node concept="3clFbJ" id="2AsRvWbuHsV" role="3cqZAp">
          <node concept="2OqwBi" id="2AsRvWbuHsW" role="3clFbw">
            <node concept="37vLTw" id="2AsRvWbuHsX" role="2Oq$k0">
              <ref role="3cqZAo" node="2AsRvWbuHtf" resolve="node" />
            </node>
            <node concept="liA8E" id="2AsRvWbuHsY" role="2OqNvi">
              <ref role="37wK5l" node="6STmDFFaSyK" resolve="isLocalRevision" />
            </node>
          </node>
          <node concept="3clFbS" id="2AsRvWbuHsZ" role="3clFbx">
            <node concept="3cpWs6" id="2AsRvWbyXO1" role="3cqZAp">
              <node concept="2YIFZM" id="2AsRvWbzhfh" role="3cqZAk">
                <ref role="37wK5l" to="zbx9:2AsRvWbyslA" resolve="createCurrentContent" />
                <ref role="1Pybhc" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
                <node concept="37vLTw" id="2AsRvWbznrd" role="37wK5m">
                  <ref role="3cqZAo" node="2AsRvWbuHth" resolve="ideaProject" />
                </node>
                <node concept="37vLTw" id="2AsRvWbz$gE" role="37wK5m">
                  <ref role="3cqZAo" node="2AsRvWbuHtl" resolve="vFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2AsRvWbuHt0" role="3cqZAp">
          <node concept="2YIFZM" id="2AsRvWbuHt1" role="3cqZAk">
            <ref role="1Pybhc" to="zbx9:78RbNhWi9Md" resolve="VcsActionsUtil" />
            <ref role="37wK5l" to="zbx9:4_Jpahy_Zt2" resolve="createRevisionContent" />
            <node concept="37vLTw" id="2AsRvWbuHt2" role="37wK5m">
              <ref role="3cqZAo" node="2AsRvWbuHth" resolve="ideaProject" />
            </node>
            <node concept="37vLTw" id="2AsRvWbuHt3" role="37wK5m">
              <ref role="3cqZAo" node="2AsRvWbuHtj" resolve="vcs" />
            </node>
            <node concept="2OqwBi" id="2AsRvWbuHt4" role="37wK5m">
              <node concept="liA8E" id="2AsRvWbuHt5" role="2OqNvi">
                <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
              </node>
              <node concept="2OqwBi" id="2AsRvWbuHt6" role="2Oq$k0">
                <node concept="liA8E" id="2AsRvWbuHtb" role="2OqNvi">
                  <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                </node>
                <node concept="37vLTw" id="2AsRvWbuS2e" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AsRvWbuHtf" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2AsRvWbuHtc" role="37wK5m">
              <ref role="3cqZAo" node="2AsRvWbuHtl" resolve="vFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2AsRvWbuHte" role="3clF45">
        <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
      </node>
      <node concept="3uibUv" id="2AsRvWbuHtn" role="Sfmx6">
        <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
      </node>
      <node concept="37vLTG" id="2AsRvWbuHtf" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2AsRvWbuHtg" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2AsRvWbuHth" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="2AsRvWbuHti" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2AsRvWbuHtj" role="3clF46">
        <property role="TrG5h" value="vcs" />
        <node concept="3uibUv" id="2AsRvWbuHtk" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~AbstractVcs" resolve="AbstractVcs" />
        </node>
      </node>
      <node concept="37vLTG" id="2AsRvWbuHtl" role="3clF46">
        <property role="TrG5h" value="vFile" />
        <node concept="3uibUv" id="2AsRvWbuHtm" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2AsRvWbuHtd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1wy4cZTlSMm" role="jymVt" />
    <node concept="3clFb_" id="1wy4cZTlV9Q" role="jymVt">
      <property role="TrG5h" value="createTitles" />
      <node concept="3clFbS" id="1wy4cZTlV9T" role="3clF47">
        <node concept="3cpWs8" id="1wy4cZTlZm4" role="3cqZAp">
          <node concept="3cpWsn" id="1wy4cZTlZm5" role="3cpWs9">
            <property role="TrG5h" value="titles" />
            <node concept="_YKpA" id="1wy4cZTlZm6" role="1tU5fm">
              <node concept="17QB3L" id="1wy4cZTlZm7" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="1wy4cZTlZm8" role="33vP2m">
              <node concept="Tc6Ow" id="1wy4cZTlZm9" role="2ShVmc">
                <node concept="17QB3L" id="1wy4cZTlZma" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wy4cZTlZmb" role="3cqZAp">
          <node concept="3clFbS" id="1wy4cZTlZmc" role="3clFbx">
            <node concept="3clFbF" id="1wy4cZTlZmt" role="3cqZAp">
              <node concept="2OqwBi" id="1wy4cZTlZmu" role="3clFbG">
                <node concept="37vLTw" id="1wy4cZTlZmv" role="2Oq$k0">
                  <ref role="3cqZAo" node="1wy4cZTlZm5" resolve="titles" />
                </node>
                <node concept="TSZUe" id="1wy4cZTlZmw" role="2OqNvi">
                  <node concept="1rXfSq" id="jTLJ_alZxd" role="25WWJ7">
                    <ref role="37wK5l" node="1wy4cZTly38" resolve="createTitle" />
                    <node concept="2OqwBi" id="jTLJ_amd7N" role="37wK5m">
                      <node concept="2OqwBi" id="jTLJ_am5dN" role="2Oq$k0">
                        <node concept="37vLTw" id="jTLJ_am1Rg" role="2Oq$k0">
                          <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
                        </node>
                        <node concept="34jXtK" id="jTLJ_am7zi" role="2OqNvi">
                          <node concept="3cmrfG" id="jTLJ_amat_" role="25WWJ7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="jTLJ_amfJV" role="2OqNvi">
                        <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1wy4cZTlZmj" role="3clFbw">
            <node concept="37vLTw" id="jTLJ_alLQn" role="2Oq$k0">
              <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
            </node>
            <node concept="3GX2aA" id="1wy4cZTlZVh" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2mW2dIeoZsK" role="9aQIa">
            <node concept="3clFbS" id="2mW2dIeoZsL" role="9aQI4">
              <node concept="3clFbF" id="2mW2dIeoZ$E" role="3cqZAp">
                <node concept="2OqwBi" id="2mW2dIeoZ$F" role="3clFbG">
                  <node concept="37vLTw" id="2mW2dIeoZ$G" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wy4cZTlZm5" resolve="titles" />
                  </node>
                  <node concept="TSZUe" id="2mW2dIeoZ$H" role="2OqNvi">
                    <node concept="Xl_RD" id="2mW2dIep00Q" role="25WWJ7" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wy4cZTlZmz" role="3cqZAp">
          <node concept="2OqwBi" id="1wy4cZTlZm$" role="3clFbG">
            <node concept="37vLTw" id="1wy4cZTlZm_" role="2Oq$k0">
              <ref role="3cqZAo" node="1wy4cZTlZm5" resolve="titles" />
            </node>
            <node concept="TSZUe" id="1wy4cZTlZmA" role="2OqNvi">
              <node concept="1rXfSq" id="jTLJ_amkRI" role="25WWJ7">
                <ref role="37wK5l" node="1wy4cZTly38" resolve="createTitle" />
                <node concept="37vLTw" id="jTLJ_amnjt" role="37wK5m">
                  <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wy4cZTlZmD" role="3cqZAp">
          <node concept="3clFbS" id="1wy4cZTlZmE" role="3clFbx">
            <node concept="3clFbF" id="1wy4cZTlZmM" role="3cqZAp">
              <node concept="2OqwBi" id="1wy4cZTlZmN" role="3clFbG">
                <node concept="37vLTw" id="1wy4cZTlZmO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1wy4cZTlZm5" resolve="titles" />
                </node>
                <node concept="TSZUe" id="1wy4cZTlZmP" role="2OqNvi">
                  <node concept="1rXfSq" id="jTLJ_amtRB" role="25WWJ7">
                    <ref role="37wK5l" node="1wy4cZTly38" resolve="createTitle" />
                    <node concept="2OqwBi" id="jTLJ_amtRC" role="37wK5m">
                      <node concept="2OqwBi" id="jTLJ_amtRD" role="2Oq$k0">
                        <node concept="37vLTw" id="jTLJ_amtRE" role="2Oq$k0">
                          <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
                        </node>
                        <node concept="34jXtK" id="jTLJ_amtRF" role="2OqNvi">
                          <node concept="3cmrfG" id="jTLJ_amw2i" role="25WWJ7">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="jTLJ_amtRH" role="2OqNvi">
                        <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1wy4cZTlZmS" role="3clFbw">
            <node concept="2OqwBi" id="1wy4cZTlZmT" role="3uHU7B">
              <node concept="37vLTw" id="jTLJ_ampIs" role="2Oq$k0">
                <ref role="3cqZAo" node="6wgNI6tBQPk" resolve="myParents" />
              </node>
              <node concept="34oBXx" id="1wy4cZTlZmV" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="1wy4cZTlZmW" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wy4cZTm33T" role="3cqZAp">
          <node concept="37vLTw" id="1wy4cZTm4RS" role="3cqZAk">
            <ref role="3cqZAo" node="1wy4cZTlZm5" resolve="titles" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3dZxEZNwRP6" role="1B3o_S" />
      <node concept="_YKpA" id="1wy4cZTlV3k" role="3clF45">
        <node concept="17QB3L" id="1wy4cZTlV7n" role="_ZDj9" />
      </node>
    </node>
    <node concept="2tJIrI" id="jTLJ_alPhS" role="jymVt" />
    <node concept="2YIFZL" id="1wy4cZTly38" role="jymVt">
      <property role="TrG5h" value="createTitle" />
      <node concept="3clFbS" id="1wy4cZTlv1T" role="3clF47">
        <node concept="3clFbF" id="1wy4cZTlx1n" role="3cqZAp">
          <node concept="2OqwBi" id="1wy4cZTlxIu" role="3clFbG">
            <node concept="2OqwBi" id="1wy4cZTlxfa" role="2Oq$k0">
              <node concept="37vLTw" id="1wy4cZTlx1m" role="2Oq$k0">
                <ref role="3cqZAo" node="1wy4cZTlwo4" resolve="revision" />
              </node>
              <node concept="liA8E" id="1wy4cZTlxuD" role="2OqNvi">
                <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
              </node>
            </node>
            <node concept="liA8E" id="1wy4cZTlxXI" role="2OqNvi">
              <ref role="37wK5l" to="yah0:~VcsRevisionNumber.asString()" resolve="asString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1wy4cZTlwo4" role="3clF46">
        <property role="TrG5h" value="revision" />
        <node concept="3uibUv" id="1wy4cZTlwo5" role="1tU5fm">
          <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
        </node>
        <node concept="2AHcQZ" id="1wy4cZTlwo6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="17QB3L" id="1wy4cZTlubF" role="3clF45" />
      <node concept="3Tm6S6" id="1wy4cZTltru" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3mP1wh_GT4i" role="jymVt" />
    <node concept="3clFb_" id="3mP1wh_HcNw" role="jymVt">
      <property role="TrG5h" value="compareTo" />
      <node concept="3Tm1VV" id="3mP1wh_HcNx" role="1B3o_S" />
      <node concept="10Oyi0" id="3mP1wh_HcNz" role="3clF45" />
      <node concept="37vLTG" id="3mP1wh_HcN$" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="3mP1wh_HcNA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3mP1wh_HcNB" role="3clF47">
        <node concept="3clFbJ" id="ITXSqzUAKD" role="3cqZAp">
          <node concept="3clFbS" id="ITXSqzUAKF" role="3clFbx">
            <node concept="3cpWs6" id="ITXSqzULW5" role="3cqZAp">
              <node concept="3cmrfG" id="ITXSqzURJ0" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="ITXSqzUGbt" role="3clFbw">
            <node concept="Xjq3P" id="ITXSqzUIW5" role="3uHU7w" />
            <node concept="37vLTw" id="ITXSqzUDs4" role="3uHU7B">
              <ref role="3cqZAo" node="3mP1wh_HcN$" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3dZxEZNvVLM" role="3cqZAp">
          <node concept="3clFbS" id="3dZxEZNvVLO" role="3clFbx">
            <node concept="3cpWs6" id="3dZxEZNw2dB" role="3cqZAp">
              <node concept="3cmrfG" id="3dZxEZNw4wU" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="3dZxEZNwK3h" role="3clFbw">
            <ref role="37wK5l" node="6STmDFFaSyK" resolve="isLocalRevision" />
          </node>
        </node>
        <node concept="3clFbJ" id="3dZxEZNwa6K" role="3cqZAp">
          <node concept="3clFbS" id="3dZxEZNwa6M" role="3clFbx">
            <node concept="3cpWs6" id="3dZxEZNwpgl" role="3cqZAp">
              <node concept="3cmrfG" id="3dZxEZNwwUZ" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3dZxEZNwgV_" role="3clFbw">
            <node concept="1eOMI4" id="3dZxEZNwgVA" role="2Oq$k0">
              <node concept="10QFUN" id="3dZxEZNwgVB" role="1eOMHV">
                <node concept="3uibUv" id="3dZxEZNwgVC" role="10QFUM">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
                <node concept="37vLTw" id="3dZxEZNwgVD" role="10QFUP">
                  <ref role="3cqZAo" node="3mP1wh_HcN$" resolve="object" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3dZxEZNwmj8" role="2OqNvi">
              <ref role="37wK5l" node="6STmDFFaSyK" resolve="isLocalRevision" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22yv4_SMMXK" role="3cqZAp">
          <node concept="3cpWsn" id="22yv4_SMMXL" role="3cpWs9">
            <property role="TrG5h" value="otherRevision" />
            <node concept="3uibUv" id="22yv4_SMMXM" role="1tU5fm">
              <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
            </node>
            <node concept="2OqwBi" id="22yv4_SN1aS" role="33vP2m">
              <node concept="1eOMI4" id="22yv4_SN1aT" role="2Oq$k0">
                <node concept="10QFUN" id="22yv4_SN1aU" role="1eOMHV">
                  <node concept="3uibUv" id="22yv4_SN1aV" role="10QFUM">
                    <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                  </node>
                  <node concept="37vLTw" id="22yv4_SN1aW" role="10QFUP">
                    <ref role="3cqZAo" node="3mP1wh_HcN$" resolve="object" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="22yv4_SN1aX" role="2OqNvi">
                <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22yv4_SLF9a" role="3cqZAp">
          <node concept="3cpWsn" id="22yv4_SLF9d" role="3cpWs9">
            <property role="TrG5h" value="compareResult" />
            <node concept="10Oyi0" id="22yv4_SLF98" role="1tU5fm" />
            <node concept="2OqwBi" id="22yv4_SLOft" role="33vP2m">
              <node concept="liA8E" id="22yv4_SLOfu" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Date.compareTo(java.util.Date)" resolve="compareTo" />
                <node concept="2OqwBi" id="22yv4_SLOfv" role="37wK5m">
                  <node concept="liA8E" id="22yv4_SLOfw" role="2OqNvi">
                    <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionDate()" resolve="getRevisionDate" />
                  </node>
                  <node concept="37vLTw" id="22yv4_SN712" role="2Oq$k0">
                    <ref role="3cqZAo" node="22yv4_SMMXL" resolve="otherRevision" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="22yv4_SLOfB" role="2Oq$k0">
                <node concept="liA8E" id="22yv4_SLOfC" role="2OqNvi">
                  <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionDate()" resolve="getRevisionDate" />
                </node>
                <node concept="37vLTw" id="22yv4_SLOfD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="22yv4_SM2XK" role="3cqZAp">
          <node concept="3clFbS" id="22yv4_SM2XM" role="3clFbx">
            <node concept="3cpWs8" id="22yv4_SNtND" role="3cqZAp">
              <node concept="3cpWsn" id="22yv4_SNtNE" role="3cpWs9">
                <property role="TrG5h" value="date1" />
                <node concept="3uibUv" id="22yv4_SNtNF" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Date" resolve="Date" />
                </node>
                <node concept="2OqwBi" id="22yv4_SNSex" role="33vP2m">
                  <node concept="1eOMI4" id="22yv4_SNMjH" role="2Oq$k0">
                    <node concept="10QFUN" id="22yv4_SNMjE" role="1eOMHV">
                      <node concept="3uibUv" id="22yv4_SNPjT" role="10QFUM">
                        <ref role="3uigEE" to="yah0:~VcsFileRevisionEx" resolve="VcsFileRevisionEx" />
                      </node>
                      <node concept="37vLTw" id="22yv4_SNJ88" role="10QFUP">
                        <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="22yv4_SNVAx" role="2OqNvi">
                    <ref role="37wK5l" to="yah0:~VcsFileRevisionEx.getAuthorDate()" resolve="getAuthorDate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="22yv4_SO7NF" role="3cqZAp">
              <node concept="3cpWsn" id="22yv4_SO7NG" role="3cpWs9">
                <property role="TrG5h" value="date2" />
                <node concept="3uibUv" id="22yv4_SO7NH" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Date" resolve="Date" />
                </node>
                <node concept="2OqwBi" id="22yv4_SO7NI" role="33vP2m">
                  <node concept="1eOMI4" id="22yv4_SO7NJ" role="2Oq$k0">
                    <node concept="10QFUN" id="22yv4_SO7NK" role="1eOMHV">
                      <node concept="3uibUv" id="22yv4_SO7NL" role="10QFUM">
                        <ref role="3uigEE" to="yah0:~VcsFileRevisionEx" resolve="VcsFileRevisionEx" />
                      </node>
                      <node concept="37vLTw" id="22yv4_SOd8U" role="10QFUP">
                        <ref role="3cqZAo" node="22yv4_SMMXL" resolve="otherRevision" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="22yv4_SO7NN" role="2OqNvi">
                    <ref role="37wK5l" to="yah0:~VcsFileRevisionEx.getAuthorDate()" resolve="getAuthorDate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="22yv4_SOiMm" role="3cqZAp">
              <node concept="3clFbS" id="22yv4_SOiMo" role="3clFbx">
                <node concept="3clFbF" id="22yv4_SOP4d" role="3cqZAp">
                  <node concept="37vLTI" id="22yv4_SOT6T" role="3clFbG">
                    <node concept="2OqwBi" id="22yv4_SP5x7" role="37vLTx">
                      <node concept="37vLTw" id="22yv4_SP2j8" role="2Oq$k0">
                        <ref role="3cqZAo" node="22yv4_SNtNE" resolve="date1" />
                      </node>
                      <node concept="liA8E" id="22yv4_SP7ZO" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Date.compareTo(java.util.Date)" resolve="compareTo" />
                        <node concept="37vLTw" id="22yv4_SPbcY" role="37wK5m">
                          <ref role="3cqZAo" node="22yv4_SO7NG" resolve="date2" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="22yv4_SOP4b" role="37vLTJ">
                      <ref role="3cqZAo" node="22yv4_SLF9d" resolve="compareResult" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="22yv4_SOuLI" role="3clFbw">
                <node concept="3y3z36" id="22yv4_SO_4r" role="3uHU7w">
                  <node concept="10Nm6u" id="22yv4_SOC3J" role="3uHU7w" />
                  <node concept="37vLTw" id="22yv4_SOxNI" role="3uHU7B">
                    <ref role="3cqZAo" node="22yv4_SO7NG" resolve="date2" />
                  </node>
                </node>
                <node concept="3y3z36" id="22yv4_SOoTP" role="3uHU7B">
                  <node concept="37vLTw" id="22yv4_SOlRT" role="3uHU7B">
                    <ref role="3cqZAo" node="22yv4_SNtNE" resolve="date1" />
                  </node>
                  <node concept="10Nm6u" id="22yv4_SOrVh" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="22yv4_SMH6K" role="3clFbw">
            <node concept="2ZW3vV" id="22yv4_SNcly" role="3uHU7w">
              <node concept="3uibUv" id="22yv4_SNfuu" role="2ZW6by">
                <ref role="3uigEE" to="yah0:~VcsFileRevisionEx" resolve="VcsFileRevisionEx" />
              </node>
              <node concept="37vLTw" id="22yv4_SN9PI" role="2ZW6bz">
                <ref role="3cqZAo" node="22yv4_SMMXL" resolve="otherRevision" />
              </node>
            </node>
            <node concept="1Wc70l" id="22yv4_SMl15" role="3uHU7B">
              <node concept="3clFbC" id="22yv4_SMer1" role="3uHU7B">
                <node concept="37vLTw" id="22yv4_SMb3d" role="3uHU7B">
                  <ref role="3cqZAo" node="22yv4_SLF9d" resolve="compareResult" />
                </node>
                <node concept="3cmrfG" id="22yv4_SMhqP" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="2ZW3vV" id="22yv4_SMwUw" role="3uHU7w">
                <node concept="3uibUv" id="22yv4_SMzWR" role="2ZW6by">
                  <ref role="3uigEE" to="yah0:~VcsFileRevisionEx" resolve="VcsFileRevisionEx" />
                </node>
                <node concept="37vLTw" id="22yv4_SMtZs" role="2ZW6bz">
                  <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="22yv4_SPkcS" role="3cqZAp">
          <node concept="37vLTw" id="22yv4_SPn_U" role="3cqZAk">
            <ref role="3cqZAo" node="22yv4_SLF9d" resolve="compareResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3mP1wh_HcNC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Zqbdud5mPM" role="jymVt" />
    <node concept="3clFb_" id="YIxS4EmxJQ" role="jymVt">
      <property role="TrG5h" value="getRevisionDescription" />
      <node concept="3clFbS" id="YIxS4EmxJR" role="3clF47">
        <node concept="3clFbJ" id="4Zqbdud5z0i" role="3cqZAp">
          <node concept="3clFbS" id="4Zqbdud5z0k" role="3clFbx">
            <node concept="3cpWs6" id="4Zqbdud5BPE" role="3cqZAp">
              <node concept="Xl_RD" id="1SbZFGFcFzM" role="3cqZAk">
                <property role="Xl_RC" value="Local Changes" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4Zqbdud5_J0" role="3clFbw">
            <ref role="37wK5l" node="6STmDFFaSyK" resolve="isLocalRevision" />
          </node>
        </node>
        <node concept="3clFbH" id="YIxS4EmxJZ" role="3cqZAp" />
        <node concept="3cpWs8" id="YIxS4EmxK0" role="3cqZAp">
          <node concept="3cpWsn" id="YIxS4EmxK1" role="3cpWs9">
            <property role="TrG5h" value="tooltipText" />
            <node concept="17QB3L" id="YIxS4EmxK2" role="1tU5fm" />
            <node concept="10Nm6u" id="YIxS4EmxK3" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="YIxS4EmxK4" role="3cqZAp">
          <node concept="3clFbS" id="YIxS4EmxK5" role="3clFbx">
            <node concept="3cpWs8" id="YIxS4EmxK6" role="3cqZAp">
              <node concept="3cpWsn" id="YIxS4EmxK7" role="3cpWs9">
                <property role="TrG5h" value="gitRevision" />
                <node concept="3uibUv" id="YIxS4EmxK8" role="1tU5fm">
                  <ref role="3uigEE" to="hr4p:~GitFileRevision" resolve="GitFileRevision" />
                </node>
                <node concept="10QFUN" id="YIxS4EmxK9" role="33vP2m">
                  <node concept="3uibUv" id="YIxS4EmxKa" role="10QFUM">
                    <ref role="3uigEE" to="hr4p:~GitFileRevision" resolve="GitFileRevision" />
                  </node>
                  <node concept="37vLTw" id="4Zqbdud5QgW" role="10QFUP">
                    <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="YIxS4EmxKc" role="3cqZAp">
              <node concept="3cpWsn" id="YIxS4EmxKd" role="3cpWs9">
                <property role="TrG5h" value="date" />
                <node concept="3uibUv" id="YIxS4EmxKe" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Date" resolve="Date" />
                </node>
                <node concept="3K4zz7" id="YIxS4EmxKf" role="33vP2m">
                  <node concept="2OqwBi" id="YIxS4EmxKg" role="3K4Cdx">
                    <node concept="10M0yZ" id="YIxS4EmxKh" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                      <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                    </node>
                    <node concept="liA8E" id="YIxS4EmxKi" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Boolean.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="YIxS4EmxKj" role="37wK5m">
                        <node concept="2OqwBi" id="YIxS4EmxKk" role="2Oq$k0">
                          <node concept="2YIFZM" id="YIxS4EmxKl" role="2Oq$k0">
                            <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                            <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                          </node>
                          <node concept="liA8E" id="YIxS4EmxKm" role="2OqNvi">
                            <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                            <node concept="3VsKOn" id="YIxS4EmxKn" role="37wK5m">
                              <ref role="3VsUkX" to="e0ho:~VcsLogApplicationSettings" resolve="VcsLogApplicationSettings" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="YIxS4EmxKo" role="2OqNvi">
                          <ref role="37wK5l" to="e0ho:~VcsLogApplicationSettings.get(com.intellij.vcs.log.impl.VcsLogUiProperties$VcsLogUiProperty)" resolve="get" />
                          <node concept="10M0yZ" id="48Xq_bG8Yrv" role="37wK5m">
                            <ref role="3cqZAo" to="e0ho:~CommonUiProperties.PREFER_COMMIT_DATE" resolve="PREFER_COMMIT_DATE" />
                            <ref role="1PxDUh" to="e0ho:~CommonUiProperties" resolve="CommonUiProperties" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="YIxS4EmxKq" role="3K4E3e">
                    <node concept="37vLTw" id="YIxS4EmxKr" role="2Oq$k0">
                      <ref role="3cqZAo" node="YIxS4EmxK7" resolve="gitRevision" />
                    </node>
                    <node concept="liA8E" id="YIxS4EmxKs" role="2OqNvi">
                      <ref role="37wK5l" to="hr4p:~GitFileRevision.getRevisionDate()" resolve="getRevisionDate" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="YIxS4EmxKt" role="3K4GZi">
                    <node concept="37vLTw" id="YIxS4EmxKu" role="2Oq$k0">
                      <ref role="3cqZAo" node="YIxS4EmxK7" resolve="gitRevision" />
                    </node>
                    <node concept="liA8E" id="YIxS4EmxKv" role="2OqNvi">
                      <ref role="37wK5l" to="hr4p:~GitFileRevision.getAuthorDate()" resolve="getAuthorDate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="YIxS4EmxKw" role="3cqZAp" />
            <node concept="3cpWs8" id="YIxS4EmxKx" role="3cqZAp">
              <node concept="3cpWsn" id="YIxS4EmxKy" role="3cpWs9">
                <property role="TrG5h" value="atb" />
                <node concept="3uibUv" id="4YmhUET7jdV" role="1tU5fm">
                  <ref role="3uigEE" to="8voc:~AnnotationTooltipBuilder" resolve="AnnotationTooltipBuilder" />
                </node>
                <node concept="2ShNRf" id="YIxS4EmxK$" role="33vP2m">
                  <node concept="1pGfFk" id="YIxS4EmxK_" role="2ShVmc">
                    <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.&lt;init&gt;(com.intellij.openapi.project.Project,boolean)" resolve="AnnotationTooltipBuilder" />
                    <node concept="37vLTw" id="4Zqbdud6Pmt" role="37wK5m">
                      <ref role="3cqZAo" node="4Zqbdud6MoQ" resolve="project" />
                    </node>
                    <node concept="3clFbT" id="YIxS4EmxKB" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="YIxS4EmxKC" role="3cqZAp" />
            <node concept="3clFbF" id="YIxS4EmxKD" role="3cqZAp">
              <node concept="2OqwBi" id="YIxS4EmxKE" role="3clFbG">
                <node concept="37vLTw" id="YIxS4EmxKF" role="2Oq$k0">
                  <ref role="3cqZAo" node="YIxS4EmxKy" resolve="atb" />
                </node>
                <node concept="liA8E" id="YIxS4EmxKG" role="2OqNvi">
                  <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.appendRevisionLine(com.intellij.openapi.vcs.history.VcsRevisionNumber,com.intellij.util.containers.Convertor)" resolve="appendRevisionLine" />
                  <node concept="2OqwBi" id="YIxS4EmxKH" role="37wK5m">
                    <node concept="37vLTw" id="4Zqbdud5Wgv" role="2Oq$k0">
                      <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                    </node>
                    <node concept="liA8E" id="YIxS4EmxKJ" role="2OqNvi">
                      <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
                    </node>
                  </node>
                  <node concept="1bVj0M" id="YIxS4EmxKK" role="37wK5m">
                    <node concept="3clFbS" id="YIxS4EmxKL" role="1bW5cS">
                      <node concept="3clFbF" id="YIxS4EmxKM" role="3cqZAp">
                        <node concept="2YIFZM" id="YIxS4EmxKN" role="3clFbG">
                          <ref role="37wK5l" to="ewdr:~GitCommitTooltipLinkHandler.createLink(java.lang.String,com.intellij.openapi.vcs.history.VcsRevisionNumber)" resolve="createLink" />
                          <ref role="1Pybhc" to="ewdr:~GitCommitTooltipLinkHandler" resolve="GitCommitTooltipLinkHandler" />
                          <node concept="2OqwBi" id="YIxS4EmxKO" role="37wK5m">
                            <node concept="37vLTw" id="YIxS4EmxKP" role="2Oq$k0">
                              <ref role="3cqZAo" node="YIxS4EmxKS" resolve="number" />
                            </node>
                            <node concept="liA8E" id="YIxS4EmxKQ" role="2OqNvi">
                              <ref role="37wK5l" to="yah0:~VcsRevisionNumber.asString()" resolve="asString" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="YIxS4EmxKR" role="37wK5m">
                            <ref role="3cqZAo" node="YIxS4EmxKS" resolve="number" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="YIxS4EmxKS" role="1bW2Oz">
                      <property role="TrG5h" value="number" />
                      <node concept="3uibUv" id="YIxS4EmxKT" role="1tU5fm">
                        <ref role="3uigEE" to="yah0:~VcsRevisionNumber" resolve="VcsRevisionNumber" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="YIxS4EmxKU" role="3cqZAp">
              <node concept="2OqwBi" id="YIxS4EmxKV" role="3clFbG">
                <node concept="37vLTw" id="YIxS4EmxKW" role="2Oq$k0">
                  <ref role="3cqZAo" node="YIxS4EmxKy" resolve="atb" />
                </node>
                <node concept="liA8E" id="YIxS4EmxKX" role="2OqNvi">
                  <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.appendLine(java.lang.String)" resolve="appendLine" />
                  <node concept="2YIFZM" id="YIxS4EmxKY" role="37wK5m">
                    <ref role="37wK5l" to="jlcu:~VcsBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                    <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                    <node concept="Xl_RD" id="YIxS4EmxKZ" role="37wK5m">
                      <property role="Xl_RC" value="commit.description.tooltip.author" />
                    </node>
                    <node concept="2OqwBi" id="YIxS4EmxL0" role="37wK5m">
                      <node concept="37vLTw" id="4Zqbdud5Zxf" role="2Oq$k0">
                        <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                      </node>
                      <node concept="liA8E" id="YIxS4EmxL2" role="2OqNvi">
                        <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getAuthor()" resolve="getAuthor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="YIxS4EmxL3" role="3cqZAp">
              <node concept="2OqwBi" id="YIxS4EmxL4" role="3clFbG">
                <node concept="37vLTw" id="YIxS4EmxL5" role="2Oq$k0">
                  <ref role="3cqZAo" node="YIxS4EmxKy" resolve="atb" />
                </node>
                <node concept="liA8E" id="YIxS4EmxL6" role="2OqNvi">
                  <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.appendLine(java.lang.String)" resolve="appendLine" />
                  <node concept="2YIFZM" id="YIxS4EmxL7" role="37wK5m">
                    <ref role="1Pybhc" to="jlcu:~VcsBundle" resolve="VcsBundle" />
                    <ref role="37wK5l" to="jlcu:~VcsBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                    <node concept="Xl_RD" id="YIxS4EmxL8" role="37wK5m">
                      <property role="Xl_RC" value="commit.description.tooltip.date" />
                    </node>
                    <node concept="2YIFZM" id="YIxS4EmxL9" role="37wK5m">
                      <ref role="37wK5l" to="k9nz:~DateFormatUtil.formatDate(java.util.Date)" resolve="formatDate" />
                      <ref role="1Pybhc" to="k9nz:~DateFormatUtil" resolve="DateFormatUtil" />
                      <node concept="37vLTw" id="YIxS4EmxLa" role="37wK5m">
                        <ref role="3cqZAo" node="YIxS4EmxKd" resolve="date" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="YIxS4EmxLb" role="3cqZAp">
              <node concept="2OqwBi" id="YIxS4EmxLc" role="3clFbG">
                <node concept="37vLTw" id="YIxS4EmxLd" role="2Oq$k0">
                  <ref role="3cqZAo" node="YIxS4EmxKy" resolve="atb" />
                </node>
                <node concept="liA8E" id="YIxS4EmxLe" role="2OqNvi">
                  <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.appendCommitMessageBlock(java.lang.String)" resolve="appendCommitMessageBlock" />
                  <node concept="2OqwBi" id="YIxS4EmxLf" role="37wK5m">
                    <node concept="37vLTw" id="4Zqbdud62Md" role="2Oq$k0">
                      <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                    </node>
                    <node concept="liA8E" id="YIxS4EmxLh" role="2OqNvi">
                      <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getCommitMessage()" resolve="getCommitMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="YIxS4EmxLi" role="3cqZAp">
              <node concept="37vLTI" id="YIxS4EmxLj" role="3clFbG">
                <node concept="2OqwBi" id="YIxS4EmxLk" role="37vLTx">
                  <node concept="37vLTw" id="YIxS4EmxLl" role="2Oq$k0">
                    <ref role="3cqZAo" node="YIxS4EmxKy" resolve="atb" />
                  </node>
                  <node concept="liA8E" id="YIxS4EmxLm" role="2OqNvi">
                    <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.toString()" resolve="toString" />
                  </node>
                </node>
                <node concept="37vLTw" id="YIxS4EmxLn" role="37vLTJ">
                  <ref role="3cqZAo" node="YIxS4EmxK1" resolve="tooltipText" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="YIxS4EmxLo" role="3clFbw">
            <node concept="3uibUv" id="YIxS4EmxLp" role="2ZW6by">
              <ref role="3uigEE" to="hr4p:~GitFileRevision" resolve="GitFileRevision" />
            </node>
            <node concept="37vLTw" id="4Zqbdud5NhZ" role="2ZW6bz">
              <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
            </node>
          </node>
          <node concept="3eNFk2" id="YIxS4EmxLr" role="3eNLev">
            <node concept="2ZW3vV" id="YIxS4EmxLs" role="3eO9$A">
              <node concept="3uibUv" id="4Zqbdud6ACZ" role="2ZW6by">
                <ref role="3uigEE" to="oyik:~SvnFileRevision" resolve="SvnFileRevision" />
              </node>
              <node concept="37vLTw" id="4Zqbdud65Py" role="2ZW6bz">
                <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
              </node>
            </node>
            <node concept="3clFbS" id="YIxS4EmxLv" role="3eOfB_">
              <node concept="3clFbF" id="YIxS4EmxLw" role="3cqZAp">
                <node concept="37vLTI" id="YIxS4EmxLx" role="3clFbG">
                  <node concept="37vLTw" id="YIxS4EmxLy" role="37vLTJ">
                    <ref role="3cqZAo" node="YIxS4EmxK1" resolve="tooltipText" />
                  </node>
                  <node concept="2YIFZM" id="YIxS4EmxLz" role="37vLTx">
                    <ref role="1Pybhc" to="8voc:~AnnotationTooltipBuilder" resolve="AnnotationTooltipBuilder" />
                    <ref role="37wK5l" to="8voc:~AnnotationTooltipBuilder.buildSimpleTooltip(com.intellij.openapi.project.Project,boolean,java.lang.String,java.lang.String,java.lang.String)" resolve="buildSimpleTooltip" />
                    <node concept="37vLTw" id="4Zqbdud6Snl" role="37wK5m">
                      <ref role="3cqZAo" node="4Zqbdud6MoQ" resolve="project" />
                    </node>
                    <node concept="3clFbT" id="YIxS4EmxL_" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="Xl_RD" id="YIxS4EmxLA" role="37wK5m">
                      <property role="Xl_RC" value="Revision" />
                    </node>
                    <node concept="2YIFZM" id="YIxS4EmxLB" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="YIxS4EmxLC" role="37wK5m">
                        <node concept="37vLTw" id="4Zqbdud6bf5" role="2Oq$k0">
                          <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                        </node>
                        <node concept="liA8E" id="YIxS4EmxLE" role="2OqNvi">
                          <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="YIxS4EmxLF" role="37wK5m">
                      <node concept="37vLTw" id="YIxS4Eo6kX" role="2Oq$k0">
                        <ref role="3cqZAo" node="6wgNI6tBNi$" resolve="myRevision" />
                        <node concept="1KehLL" id="YIxS4Eo6DA" role="lGtFl">
                          <property role="1K8rM7" value="property_name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="YIxS4EmxLH" role="2OqNvi">
                        <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getCommitMessage()" resolve="getCommitMessage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="YIxS4EmxLI" role="3cqZAp">
          <node concept="3clFbS" id="YIxS4EmxLJ" role="3clFbx">
            <node concept="3clFbF" id="YIxS4EmxLK" role="3cqZAp">
              <node concept="37vLTI" id="YIxS4EmxLL" role="3clFbG">
                <node concept="2OqwBi" id="YIxS4EmxLM" role="37vLTx">
                  <node concept="37vLTw" id="YIxS4EmxLN" role="2Oq$k0">
                    <ref role="3cqZAo" node="YIxS4EmxK1" resolve="tooltipText" />
                  </node>
                  <node concept="liA8E" id="YIxS4EmxLO" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="YIxS4EmxLP" role="37wK5m">
                      <property role="Xl_RC" value="\n" />
                    </node>
                    <node concept="Xl_RD" id="YIxS4EmxLQ" role="37wK5m">
                      <property role="Xl_RC" value="&lt;br&gt;" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="YIxS4EmxLR" role="37vLTJ">
                  <ref role="3cqZAo" node="YIxS4EmxK1" resolve="tooltipText" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="YIxS4EmxLS" role="3clFbw">
            <node concept="10Nm6u" id="YIxS4EmxLT" role="3uHU7w" />
            <node concept="37vLTw" id="YIxS4EmxLU" role="3uHU7B">
              <ref role="3cqZAo" node="YIxS4EmxK1" resolve="tooltipText" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="YIxS4EmxLV" role="3cqZAp">
          <node concept="37vLTw" id="YIxS4EmxLW" role="3cqZAk">
            <ref role="3cqZAo" node="YIxS4EmxK1" resolve="tooltipText" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="YIxS4EmxLX" role="3clF45" />
      <node concept="3Tm1VV" id="YIxS4EmxM0" role="1B3o_S" />
      <node concept="37vLTG" id="4Zqbdud6MoQ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4Zqbdud6MoP" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3TI60oO37JV">
    <property role="TrG5h" value="RootCommitsGraphTraverser" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="3TI60oO3bNf" role="jymVt" />
    <node concept="312cEg" id="3TI60oO3e0H" role="jymVt">
      <property role="TrG5h" value="myBranches" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3TI60oO3cAe" role="1B3o_S" />
      <node concept="2ShNRf" id="3TI60oO3eNN" role="33vP2m">
        <node concept="2Jqq0_" id="6ZTaTgjHAMN" role="2ShVmc">
          <node concept="3uibUv" id="6ZTaTgjHGnc" role="HW$YZ">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
      <node concept="oyxx6" id="6ZTaTgjGm04" role="1tU5fm">
        <node concept="3uibUv" id="6ZTaTgjGqDZ" role="3O5elw">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3TI60oO42JP" role="jymVt">
      <property role="TrG5h" value="myForkCommits" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3TI60oO3ZJZ" role="1B3o_S" />
      <node concept="3rvAFt" id="3TI60oO41ls" role="1tU5fm">
        <node concept="3uibUv" id="3TI60oO41D1" role="3rvQeY">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
        <node concept="2hMVRd" id="3TI60oO427_" role="3rvSg0">
          <node concept="3uibUv" id="3TI60oO42qT" role="2hN53Y">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="3TI60oO43zm" role="33vP2m">
        <node concept="3rGOSV" id="3TI60oO46On" role="2ShVmc">
          <node concept="3uibUv" id="3TI60oO47fH" role="3rHrn6">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
          <node concept="2hMVRd" id="3TI60oO47Nd" role="3rHtpV">
            <node concept="3uibUv" id="3TI60oO48bV" role="2hN53Y">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6S2pv13YcTh" role="jymVt">
      <property role="TrG5h" value="myCommitConsumer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6S2pv13Y8zy" role="1B3o_S" />
      <node concept="3uibUv" id="2Iw6HC24_LF" role="1tU5fm">
        <ref role="3uigEE" node="2Iw6HC24tJ7" resolve="CommitsGraphNodeConsumer" />
      </node>
    </node>
    <node concept="312cEg" id="7Kf$fJTmO6M" role="jymVt">
      <property role="TrG5h" value="myGraph" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Kf$fJTmM81" role="1B3o_S" />
      <node concept="3uibUv" id="7Kf$fJTop9J" role="1tU5fm">
        <ref role="3uigEE" node="4aYE7KddtJc" resolve="CommitsGraph" />
      </node>
    </node>
    <node concept="312cEg" id="7Kf$fJTn8Tz" role="jymVt">
      <property role="TrG5h" value="myRootId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Kf$fJTn7Do" role="1B3o_S" />
      <node concept="3uibUv" id="7Kf$fJTn8QX" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
    </node>
    <node concept="312cEg" id="2d$96lCZ4hy" role="jymVt">
      <property role="TrG5h" value="myTolerateReadModelFailure" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2d$96lCZ14G" role="1B3o_S" />
      <node concept="10P_77" id="2d$96lCZ4bd" role="1tU5fm" />
      <node concept="3clFbT" id="2d$96lCZ7nw" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="6S2pv144xGo" role="jymVt">
      <property role="TrG5h" value="myIsStopped" />
      <node concept="3Tm6S6" id="6S2pv144t8_" role="1B3o_S" />
      <node concept="10P_77" id="6S2pv144xBE" role="1tU5fm" />
      <node concept="3clFbT" id="6S2pv144A9g" role="33vP2m" />
    </node>
    <node concept="312cEg" id="41u046VcRLO" role="jymVt">
      <property role="TrG5h" value="myException" />
      <node concept="3uibUv" id="ppWmVboy8i" role="1tU5fm">
        <ref role="3uigEE" node="ppWmVbn2sc" resolve="RootCommitsGraphTraverser.ModelReadException" />
      </node>
      <node concept="3Tm6S6" id="41u046VcRLQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4sA_pTWCsOh" role="jymVt">
      <property role="TrG5h" value="myStartNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4sA_pTWCnPc" role="1B3o_S" />
      <node concept="3uibUv" id="4sA_pTWCswl" role="1tU5fm">
        <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
      </node>
      <node concept="2AHcQZ" id="4sA_pTWCHDk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="41u046VcPQH" role="jymVt" />
    <node concept="2tJIrI" id="3TI60oO48y7" role="jymVt" />
    <node concept="3clFbW" id="3TI60oO49vk" role="jymVt">
      <node concept="37vLTG" id="7Kf$fJTneLT" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3uibUv" id="7Kf$fJTopTa" role="1tU5fm">
          <ref role="3uigEE" node="4aYE7KddtJc" resolve="CommitsGraph" />
        </node>
      </node>
      <node concept="37vLTG" id="7Kf$fJTokum" role="3clF46">
        <property role="TrG5h" value="startNode" />
        <node concept="2AHcQZ" id="5OZff9qjPNz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4sA_pTWCOBX" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7Kf$fJTneCa" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="7Kf$fJTneLD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="2Iw6HC24z8S" role="3clF46">
        <property role="TrG5h" value="commitConsumer" />
        <node concept="3uibUv" id="2Iw6HC24z_n" role="1tU5fm">
          <ref role="3uigEE" node="2Iw6HC24tJ7" resolve="CommitsGraphNodeConsumer" />
        </node>
      </node>
      <node concept="3cqZAl" id="3TI60oO49vm" role="3clF45" />
      <node concept="3Tm1VV" id="3TI60oO7Y3Z" role="1B3o_S" />
      <node concept="3clFbS" id="3TI60oO49vo" role="3clF47">
        <node concept="3clFbF" id="4sA_pTWC_6t" role="3cqZAp">
          <node concept="37vLTI" id="4sA_pTWC_6u" role="3clFbG">
            <node concept="37vLTw" id="4sA_pTWCSKG" role="37vLTx">
              <ref role="3cqZAo" node="7Kf$fJTneCa" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="4sA_pTWC_6w" role="37vLTJ">
              <ref role="3cqZAo" node="7Kf$fJTn8Tz" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sA_pTWC_6x" role="3cqZAp">
          <node concept="37vLTI" id="4sA_pTWC_6y" role="3clFbG">
            <node concept="37vLTw" id="4sA_pTWCSUs" role="37vLTx">
              <ref role="3cqZAo" node="7Kf$fJTneLT" resolve="graph" />
            </node>
            <node concept="37vLTw" id="4sA_pTWC_6$" role="37vLTJ">
              <ref role="3cqZAo" node="7Kf$fJTmO6M" resolve="myGraph" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sA_pTWC_6_" role="3cqZAp">
          <node concept="37vLTI" id="4sA_pTWC_6A" role="3clFbG">
            <node concept="37vLTw" id="4sA_pTWCT4T" role="37vLTx">
              <ref role="3cqZAo" node="2Iw6HC24z8S" resolve="commitConsumer" />
            </node>
            <node concept="37vLTw" id="4sA_pTWC_6C" role="37vLTJ">
              <ref role="3cqZAo" node="6S2pv13YcTh" resolve="myCommitConsumer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sA_pTWCTHy" role="3cqZAp">
          <node concept="37vLTI" id="4sA_pTWCTY_" role="3clFbG">
            <node concept="37vLTw" id="4sA_pTWCU9Z" role="37vLTx">
              <ref role="3cqZAo" node="7Kf$fJTokum" resolve="startNode" />
            </node>
            <node concept="37vLTw" id="4sA_pTWCTHw" role="37vLTJ">
              <ref role="3cqZAo" node="4sA_pTWCsOh" resolve="myStartNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Lno_XH9Mul" role="jymVt" />
    <node concept="3clFbW" id="5Lno_XH9J50" role="jymVt">
      <node concept="37vLTG" id="5Lno_XH9J51" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3uibUv" id="5Lno_XH9J52" role="1tU5fm">
          <ref role="3uigEE" node="4aYE7KddtJc" resolve="CommitsGraph" />
        </node>
      </node>
      <node concept="37vLTG" id="5Lno_XH9J56" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="5Lno_XH9J57" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="5Lno_XH9J58" role="3clF46">
        <property role="TrG5h" value="commitConsumer" />
        <node concept="3uibUv" id="5Lno_XH9J59" role="1tU5fm">
          <ref role="3uigEE" node="2Iw6HC24tJ7" resolve="CommitsGraphNodeConsumer" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Lno_XH9J5a" role="3clF45" />
      <node concept="3Tm1VV" id="5Lno_XH9J5b" role="1B3o_S" />
      <node concept="3clFbS" id="5Lno_XH9J5c" role="3clF47">
        <node concept="1VxSAg" id="5Lno_XH9PVA" role="3cqZAp">
          <ref role="37wK5l" node="3TI60oO49vk" resolve="RootCommitsGraphTraverser" />
          <node concept="37vLTw" id="5Lno_XH9Q2H" role="37wK5m">
            <ref role="3cqZAo" node="5Lno_XH9J51" resolve="graph" />
          </node>
          <node concept="2OqwBi" id="5Lno_XH9QmQ" role="37wK5m">
            <node concept="37vLTw" id="5Lno_XH9Qe$" role="2Oq$k0">
              <ref role="3cqZAo" node="5Lno_XH9J51" resolve="graph" />
            </node>
            <node concept="liA8E" id="5Lno_XH9QII" role="2OqNvi">
              <ref role="37wK5l" node="4aYE7KddEyX" resolve="getHeadNode" />
            </node>
          </node>
          <node concept="37vLTw" id="5Lno_XH9R4U" role="37wK5m">
            <ref role="3cqZAo" node="5Lno_XH9J56" resolve="rootId" />
          </node>
          <node concept="37vLTw" id="5Lno_XH9Rno" role="37wK5m">
            <ref role="3cqZAo" node="5Lno_XH9J58" resolve="commitConsumer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3TI60oO4exX" role="jymVt" />
    <node concept="3clFb_" id="3TI60oO4gye" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="3clFbS" id="3TI60oO4gyh" role="3clF47">
        <node concept="3J1_TO" id="7Kf$fJToe5Y" role="3cqZAp">
          <node concept="3clFbS" id="7Kf$fJToe5Z" role="1zxBo7">
            <node concept="3clFbF" id="7Kf$fJToe60" role="3cqZAp">
              <node concept="2OqwBi" id="7Kf$fJToe61" role="3clFbG">
                <node concept="liA8E" id="7Kf$fJToe63" role="2OqNvi">
                  <ref role="37wK5l" node="7Kf$fJTgYaH" resolve="loadModel" />
                  <node concept="10Nm6u" id="7Kf$fJToe64" role="37wK5m" />
                  <node concept="37vLTw" id="4aYE7KdnYTL" role="37wK5m">
                    <ref role="3cqZAo" node="7Kf$fJTmO6M" resolve="myGraph" />
                  </node>
                </node>
                <node concept="37vLTw" id="4sA_pTWCZX8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sA_pTWCsOh" resolve="myStartNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7Kf$fJToe68" role="1zxBo5">
            <node concept="3clFbS" id="7Kf$fJToe69" role="1zc67A">
              <node concept="3clFbF" id="7Kf$fJTqQ_M" role="3cqZAp">
                <node concept="37vLTI" id="7Kf$fJTqQ_N" role="3clFbG">
                  <node concept="37vLTw" id="7Kf$fJTqQ_P" role="37vLTJ">
                    <ref role="3cqZAo" node="41u046VcRLO" resolve="myException" />
                  </node>
                  <node concept="2ShNRf" id="ppWmVboz4L" role="37vLTx">
                    <node concept="1pGfFk" id="ppWmVbo_wB" role="2ShVmc">
                      <ref role="37wK5l" node="ppWmVbn9sz" resolve="RootCommitsGraphTraverser.ModelReadException" />
                      <node concept="2OqwBi" id="ppWmVboA3V" role="37wK5m">
                        <node concept="liA8E" id="ppWmVboAfR" role="2OqNvi">
                          <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                        </node>
                        <node concept="37vLTw" id="4sA_pTWD3eh" role="2Oq$k0">
                          <ref role="3cqZAo" node="4sA_pTWCsOh" resolve="myStartNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="ppWmVboASr" role="37wK5m">
                        <node concept="37vLTw" id="ppWmVboACh" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Kf$fJToe6b" resolve="e" />
                        </node>
                        <node concept="liA8E" id="ppWmVboB28" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="7Kf$fJToe6b" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7Kf$fJToe6c" role="1tU5fm">
                <node concept="3uibUv" id="1K6WBNuekw2" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4aYE7KdnL6r" role="3cqZAp">
          <node concept="3clFbS" id="4aYE7KdnL6s" role="3clFbx">
            <node concept="3cpWs6" id="4aYE7KdnL6t" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="4aYE7KdnL6v" role="3clFbw">
            <node concept="2OqwBi" id="4aYE7KdnL6w" role="3fr31v">
              <node concept="liA8E" id="4aYE7KdnL6y" role="2OqNvi">
                <ref role="37wK5l" node="6dgohK5qcrh" resolve="isModelLoaded" />
              </node>
              <node concept="37vLTw" id="4sA_pTWD937" role="2Oq$k0">
                <ref role="3cqZAo" node="4sA_pTWCsOh" resolve="myStartNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4aYE7KdoiuF" role="3cqZAp" />
        <node concept="3clFbF" id="6S2pv147aAV" role="3cqZAp">
          <node concept="2OqwBi" id="6S2pv147c1a" role="3clFbG">
            <node concept="37vLTw" id="6S2pv147aAT" role="2Oq$k0">
              <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
            </node>
            <node concept="2ArzE6" id="6S2pv147cNd" role="2OqNvi">
              <node concept="37vLTw" id="4sA_pTWDchm" role="25WWJ7">
                <ref role="3cqZAo" node="4sA_pTWCsOh" resolve="myStartNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="45Dc_DerYqQ" role="3cqZAp" />
        <node concept="2$JKZl" id="3TI60oO4hn2" role="3cqZAp">
          <node concept="3clFbS" id="3TI60oO4hn3" role="2LFqv$">
            <node concept="3cpWs8" id="3TI60oO4la1" role="3cqZAp">
              <node concept="3cpWsn" id="3TI60oO4la4" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3TI60oO4lux" role="1tU5fm">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
                <node concept="1rXfSq" id="4ibqEw5RJMd" role="33vP2m">
                  <ref role="37wK5l" node="4ibqEw5RES8" resolve="getNextNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Kf$fJTr$Jg" role="3cqZAp">
              <node concept="3clFbS" id="7Kf$fJTr$Ji" role="3clFbx">
                <node concept="3J1_TO" id="7Kf$fJTqGbv" role="3cqZAp">
                  <node concept="3clFbS" id="7Kf$fJTqGbw" role="1zxBo7">
                    <node concept="3clFbF" id="7Kf$fJTnbGk" role="3cqZAp">
                      <node concept="1rXfSq" id="7Kf$fJTnbGi" role="3clFbG">
                        <ref role="37wK5l" node="7Kf$fJTmCFU" resolve="loadParentsModels" />
                        <node concept="37vLTw" id="7Kf$fJTnbY5" role="37wK5m">
                          <ref role="3cqZAo" node="3TI60oO4la4" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="7Kf$fJTqGby" role="1zxBo5">
                    <node concept="3clFbS" id="7Kf$fJTqGbz" role="1zc67A">
                      <node concept="3clFbF" id="7Kf$fJTqGGc" role="3cqZAp">
                        <node concept="37vLTI" id="7Kf$fJTqH7H" role="3clFbG">
                          <node concept="37vLTw" id="7Kf$fJTqHw0" role="37vLTx">
                            <ref role="3cqZAo" node="7Kf$fJTqGb$" resolve="e" />
                          </node>
                          <node concept="37vLTw" id="7Kf$fJTqGGb" role="37vLTJ">
                            <ref role="3cqZAo" node="41u046VcRLO" resolve="myException" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="XOnhg" id="7Kf$fJTqGb$" role="1zc67B">
                      <property role="TrG5h" value="e" />
                      <node concept="nSUau" id="7Kf$fJTqGb_" role="1tU5fm">
                        <node concept="3uibUv" id="ppWmVboxVk" role="nSUat">
                          <ref role="3uigEE" node="ppWmVbn2sc" resolve="RootCommitsGraphTraverser.ModelReadException" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ibqEw5RRSc" role="3cqZAp">
                  <node concept="1rXfSq" id="4ibqEw5RRSa" role="3clFbG">
                    <ref role="37wK5l" node="4ibqEw5RyU6" resolve="processNode" />
                    <node concept="37vLTw" id="4ibqEw5RSfm" role="37wK5m">
                      <ref role="3cqZAo" node="3TI60oO4la4" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7Kf$fJTr_w6" role="3clFbw">
                <node concept="2OqwBi" id="7Kf$fJTr_w8" role="3fr31v">
                  <node concept="37vLTw" id="7Kf$fJTr_w9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TI60oO4la4" resolve="node" />
                  </node>
                  <node concept="liA8E" id="7Kf$fJTr_wa" role="2OqNvi">
                    <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Kf$fJTnB5y" role="3cqZAp">
              <node concept="2OqwBi" id="7Kf$fJTnBdd" role="3clFbG">
                <node concept="37vLTw" id="7Kf$fJTnB5w" role="2Oq$k0">
                  <ref role="3cqZAo" node="3TI60oO4la4" resolve="node" />
                </node>
                <node concept="liA8E" id="7Kf$fJTnBkH" role="2OqNvi">
                  <ref role="37wK5l" node="7Kf$fJThmvo" resolve="unloadModel" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6S2pv144Dzw" role="3cqZAp">
              <node concept="3clFbS" id="6S2pv144Dzy" role="3clFbx">
                <node concept="3zACq4" id="4hVhnWtgaVP" role="3cqZAp" />
              </node>
              <node concept="37vLTw" id="6S2pv144FHA" role="3clFbw">
                <ref role="3cqZAo" node="6S2pv144xGo" resolve="myIsStopped" />
              </node>
            </node>
            <node concept="2Gpval" id="4ibqEw5RsCk" role="3cqZAp">
              <node concept="2GrKxI" id="4ibqEw5RsCm" role="2Gsz3X">
                <property role="TrG5h" value="parent" />
              </node>
              <node concept="3clFbS" id="4ibqEw5RsCq" role="2LFqv$">
                <node concept="3clFbF" id="6S2pv145ydO" role="3cqZAp">
                  <node concept="1rXfSq" id="6S2pv145ydN" role="3clFbG">
                    <ref role="37wK5l" node="O_dbrLfGWe" resolve="pushParentNode" />
                    <node concept="37vLTw" id="6S2pv145zn7" role="37wK5m">
                      <ref role="3cqZAo" node="3TI60oO4la4" resolve="node" />
                    </node>
                    <node concept="2GrUjf" id="4ibqEw5RtU3" role="37wK5m">
                      <ref role="2Gs0qQ" node="4ibqEw5RsCm" resolve="parent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4ibqEw5Rt3$" role="2GsD0m">
                <node concept="37vLTw" id="4ibqEw5Rt3_" role="2Oq$k0">
                  <ref role="3cqZAo" node="3TI60oO4la4" resolve="node" />
                </node>
                <node concept="liA8E" id="4ibqEw5Rt3A" role="2OqNvi">
                  <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="n0Wg4oImMl" role="2$JKZa">
            <ref role="37wK5l" node="4ibqEw5QxGp" resolve="hasNotIgnoredBranch" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3TI60oO7UlM" role="1B3o_S" />
      <node concept="3cqZAl" id="3TI60oO4gy5" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7Kf$fJTqHL_" role="jymVt" />
    <node concept="3clFb_" id="7Kf$fJTqNei" role="jymVt">
      <property role="TrG5h" value="getException" />
      <node concept="3clFbS" id="7Kf$fJTqNel" role="3clF47">
        <node concept="3clFbF" id="7Kf$fJTqQkU" role="3cqZAp">
          <node concept="37vLTw" id="7Kf$fJTqQkT" role="3clFbG">
            <ref role="3cqZAo" node="41u046VcRLO" resolve="myException" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Kf$fJTqKDB" role="1B3o_S" />
      <node concept="3uibUv" id="tU0$taY1$J" role="3clF45">
        <ref role="3uigEE" node="ppWmVbn2sc" resolve="RootCommitsGraphTraverser.ModelReadException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Kf$fJTmzVM" role="jymVt" />
    <node concept="3clFb_" id="7Kf$fJTmCFU" role="jymVt">
      <property role="TrG5h" value="loadParentsModels" />
      <node concept="3clFbS" id="7Kf$fJTmCFX" role="3clF47">
        <node concept="1DcWWT" id="7Kf$fJTmHzk" role="3cqZAp">
          <node concept="3cpWsn" id="7Kf$fJTmHzl" role="1Duv9x">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="7Kf$fJTmHL5" role="1tU5fm">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="7Kf$fJTmIkM" role="1DdaDG">
            <node concept="37vLTw" id="7Kf$fJTmIdt" role="2Oq$k0">
              <ref role="3cqZAo" node="7Kf$fJTmExl" resolve="node" />
            </node>
            <node concept="liA8E" id="7Kf$fJTmIBS" role="2OqNvi">
              <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
            </node>
          </node>
          <node concept="3clFbS" id="7Kf$fJTmHzn" role="2LFqv$">
            <node concept="3clFbF" id="3tdNeKHdt2y" role="3cqZAp">
              <node concept="1rXfSq" id="3tdNeKHdt2x" role="3clFbG">
                <ref role="37wK5l" node="3tdNeKHdiw6" resolve="loadParentModel" />
                <node concept="37vLTw" id="3tdNeKHdE9M" role="37wK5m">
                  <ref role="3cqZAo" node="7Kf$fJTmExl" resolve="node" />
                </node>
                <node concept="37vLTw" id="3tdNeKHdE_w" role="37wK5m">
                  <ref role="3cqZAo" node="7Kf$fJTmHzl" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Kf$fJTmAQG" role="1B3o_S" />
      <node concept="3cqZAl" id="7Kf$fJTmCDx" role="3clF45" />
      <node concept="37vLTG" id="7Kf$fJTmExl" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7Kf$fJTmExk" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3uibUv" id="ppWmVbotb0" role="Sfmx6">
        <ref role="3uigEE" node="ppWmVbn2sc" resolve="RootCommitsGraphTraverser.ModelReadException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3tdNeKHdbYX" role="jymVt" />
    <node concept="3clFb_" id="3tdNeKHdiw6" role="jymVt">
      <property role="TrG5h" value="loadParentModel" />
      <node concept="3clFbS" id="3tdNeKHdiw9" role="3clF47">
        <node concept="3clFbJ" id="3tdNeKHdF7P" role="3cqZAp">
          <node concept="3clFbS" id="3tdNeKHdF7R" role="3clFbx">
            <node concept="3cpWs6" id="3tdNeKHdHz$" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="3tdNeKHdGM9" role="3clFbw">
            <node concept="10Nm6u" id="3tdNeKHdHpz" role="3uHU7w" />
            <node concept="2OqwBi" id="3tdNeKHdFZw" role="3uHU7B">
              <node concept="37vLTw" id="3tdNeKHdF$C" role="2Oq$k0">
                <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
              </node>
              <node concept="liA8E" id="3tdNeKHdGw5" role="2OqNvi">
                <ref role="37wK5l" node="7Kf$fJTjn7f" resolve="getLoadedModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="ppWmVbow53" role="3cqZAp">
          <node concept="3clFbS" id="ppWmVbow54" role="1zxBo7">
            <node concept="3clFbF" id="7Kf$fJTmJh$" role="3cqZAp">
              <node concept="2OqwBi" id="7Kf$fJTmJwb" role="3clFbG">
                <node concept="37vLTw" id="3tdNeKHdwYW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                </node>
                <node concept="liA8E" id="7Kf$fJTmJC9" role="2OqNvi">
                  <ref role="37wK5l" node="7Kf$fJTgYaH" resolve="loadModel" />
                  <node concept="37vLTw" id="3tdNeKHd$cA" role="37wK5m">
                    <ref role="3cqZAo" node="3tdNeKHdxci" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="7Kf$fJTmPFv" role="37wK5m">
                    <ref role="3cqZAo" node="7Kf$fJTmO6M" resolve="myGraph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="ppWmVbow56" role="1zxBo5">
            <node concept="3clFbS" id="ppWmVbow57" role="1zc67A">
              <node concept="3clFbJ" id="2d$96lCZ7Dg" role="3cqZAp">
                <node concept="3clFbS" id="2d$96lCZ7Di" role="3clFbx">
                  <node concept="YS8fn" id="ppWmVbowuD" role="3cqZAp">
                    <node concept="2ShNRf" id="ppWmVbowuE" role="YScLw">
                      <node concept="1pGfFk" id="ppWmVbowuF" role="2ShVmc">
                        <ref role="37wK5l" node="ppWmVbn9sz" resolve="RootCommitsGraphTraverser.ModelReadException" />
                        <node concept="2OqwBi" id="ppWmVbowuG" role="37wK5m">
                          <node concept="37vLTw" id="3tdNeKHdB1r" role="2Oq$k0">
                            <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                          </node>
                          <node concept="liA8E" id="ppWmVbowuI" role="2OqNvi">
                            <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="ppWmVbowuJ" role="37wK5m">
                          <node concept="37vLTw" id="ppWmVbox08" role="2Oq$k0">
                            <ref role="3cqZAo" node="ppWmVbow58" resolve="e" />
                          </node>
                          <node concept="liA8E" id="ppWmVboxjB" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="5ILT1kFIUet" role="3clFbw">
                  <node concept="37vLTw" id="5ILT1kFIUeu" role="3fr31v">
                    <ref role="3cqZAo" node="2d$96lCZ4hy" resolve="myTolerateReadModelFailure" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="ppWmVbow58" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="ppWmVbow59" role="1tU5fm">
                <node concept="3uibUv" id="1K6WBNuenxU" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Kf$fJTmZSs" role="3cqZAp">
          <node concept="3clFbS" id="7Kf$fJTmZSt" role="3clFbx">
            <node concept="3clFbF" id="7Kf$fJTmZSu" role="3cqZAp">
              <node concept="2OqwBi" id="7Kf$fJTmZSv" role="3clFbG">
                <node concept="37vLTw" id="3tdNeKHdBUF" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                </node>
                <node concept="liA8E" id="7Kf$fJTmZSx" role="2OqNvi">
                  <ref role="37wK5l" node="41u046V3l2Y" resolve="setIgnored" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7Kf$fJTmZSz" role="3clFbw">
            <node concept="2OqwBi" id="6E_IjBsloxa" role="3uHU7B">
              <node concept="2OqwBi" id="7Kf$fJTmZSB" role="2Oq$k0">
                <node concept="37vLTw" id="3tdNeKHdBBz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                </node>
                <node concept="liA8E" id="7Kf$fJTmZSD" role="2OqNvi">
                  <ref role="37wK5l" node="7Kf$fJTjn7f" resolve="getLoadedModel" />
                </node>
              </node>
              <node concept="liA8E" id="7Kf$fJTmZS_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                <node concept="37vLTw" id="7Kf$fJTnbau" role="37wK5m">
                  <ref role="3cqZAo" node="7Kf$fJTn8Tz" resolve="myRootId" />
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="7Kf$fJTmZSE" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbJ" id="2d$96lCZawE" role="3cqZAp">
          <node concept="3clFbS" id="2d$96lCZawG" role="3clFbx">
            <node concept="3clFbJ" id="4HIBPvKqEm_" role="3cqZAp">
              <node concept="3clFbS" id="4HIBPvKqEmB" role="3clFbx">
                <node concept="3cpWs8" id="4HIBPvKqRvH" role="3cqZAp">
                  <node concept="3cpWsn" id="4HIBPvKqRvI" role="3cpWs9">
                    <property role="TrG5h" value="dd" />
                    <node concept="3uibUv" id="4HIBPvKqRvJ" role="1tU5fm">
                      <ref role="3uigEE" to="w1kc:~DefaultSModelDescriptor" resolve="DefaultSModelDescriptor" />
                    </node>
                    <node concept="10QFUN" id="4HIBPvKqS_f" role="33vP2m">
                      <node concept="3uibUv" id="4HIBPvKqSOf" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~DefaultSModelDescriptor" resolve="DefaultSModelDescriptor" />
                      </node>
                      <node concept="2OqwBi" id="4HIBPvKqS3G" role="10QFUP">
                        <node concept="37vLTw" id="3tdNeKHdCOp" role="2Oq$k0">
                          <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                        </node>
                        <node concept="liA8E" id="4HIBPvKqSjm" role="2OqNvi">
                          <ref role="37wK5l" node="4HIBPvKqwj1" resolve="getModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4HIBPvKqT2A" role="3cqZAp">
                  <node concept="3clFbS" id="4HIBPvKqT2C" role="3clFbx">
                    <node concept="3cpWs8" id="4HIBPvKqWXe" role="3cqZAp">
                      <node concept="3cpWsn" id="4HIBPvKqWXf" role="3cpWs9">
                        <property role="TrG5h" value="ism" />
                        <node concept="3uibUv" id="4HIBPvKqWXg" role="1tU5fm">
                          <ref role="3uigEE" to="w1kc:~InvalidSModel" resolve="InvalidSModel" />
                        </node>
                        <node concept="10QFUN" id="4HIBPvKqZoc" role="33vP2m">
                          <node concept="3uibUv" id="4HIBPvKqZxp" role="10QFUM">
                            <ref role="3uigEE" to="w1kc:~InvalidSModel" resolve="InvalidSModel" />
                          </node>
                          <node concept="2OqwBi" id="4HIBPvKqXWg" role="10QFUP">
                            <node concept="37vLTw" id="4HIBPvKqX95" role="2Oq$k0">
                              <ref role="3cqZAo" node="4HIBPvKqRvI" resolve="dd" />
                            </node>
                            <node concept="liA8E" id="4HIBPvKqZaP" role="2OqNvi">
                              <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="4HIBPvKr4qj" role="3cqZAp">
                      <node concept="3clFbS" id="4HIBPvKr4ql" role="2LFqv$">
                        <node concept="YS8fn" id="ppWmVbnery" role="3cqZAp">
                          <node concept="2ShNRf" id="ppWmVbne_g" role="YScLw">
                            <node concept="1pGfFk" id="ppWmVbnXWT" role="2ShVmc">
                              <ref role="37wK5l" node="ppWmVbn9sz" resolve="RootCommitsGraphTraverser.ModelReadException" />
                              <node concept="2OqwBi" id="ppWmVbnYtW" role="37wK5m">
                                <node concept="37vLTw" id="3tdNeKHdDaQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                                </node>
                                <node concept="liA8E" id="ppWmVbnYG6" role="2OqNvi">
                                  <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="ppWmVbnZO5" role="37wK5m">
                                <node concept="37vLTw" id="ppWmVbnZ$a" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4HIBPvKr4qm" resolve="problem" />
                                </node>
                                <node concept="liA8E" id="ppWmVbnZVA" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel$Problem.getText()" resolve="getText" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="4HIBPvKr4qm" role="1Duv9x">
                        <property role="TrG5h" value="problem" />
                        <node concept="3uibUv" id="4HIBPvKr4HG" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4HIBPvKr5rK" role="1DdaDG">
                        <node concept="37vLTw" id="4HIBPvKr59H" role="2Oq$k0">
                          <ref role="3cqZAo" node="4HIBPvKqWXf" resolve="ism" />
                        </node>
                        <node concept="liA8E" id="4HIBPvKr5DH" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~InvalidSModel.getProblems()" resolve="getProblems" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4HIBPvKqVbF" role="3clFbw">
                    <node concept="3uibUv" id="4HIBPvKqWAI" role="2ZW6by">
                      <ref role="3uigEE" to="w1kc:~InvalidSModel" resolve="InvalidSModel" />
                    </node>
                    <node concept="2OqwBi" id="4HIBPvKqUfb" role="2ZW6bz">
                      <node concept="37vLTw" id="4HIBPvKqTfM" role="2Oq$k0">
                        <ref role="3cqZAo" node="4HIBPvKqRvI" resolve="dd" />
                      </node>
                      <node concept="liA8E" id="4HIBPvKqWbo" role="2OqNvi">
                        <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4HIBPvKqFdq" role="3clFbw">
                <node concept="3uibUv" id="4HIBPvKqHQP" role="2ZW6by">
                  <ref role="3uigEE" to="w1kc:~DefaultSModelDescriptor" resolve="DefaultSModelDescriptor" />
                </node>
                <node concept="2OqwBi" id="4HIBPvKqELu" role="2ZW6bz">
                  <node concept="37vLTw" id="3tdNeKHdCyo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                  </node>
                  <node concept="liA8E" id="4HIBPvKqEYo" role="2OqNvi">
                    <ref role="37wK5l" node="4HIBPvKqwj1" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2d$96lCZbT7" role="3clFbw">
            <node concept="3fqX7Q" id="5ILT1kFITlJ" role="3uHU7w">
              <node concept="2OqwBi" id="5ILT1kFITlL" role="3fr31v">
                <node concept="37vLTw" id="3tdNeKHdCff" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tdNeKHdtxC" resolve="parent" />
                </node>
                <node concept="liA8E" id="2yiSWr$9c_M" role="2OqNvi">
                  <ref role="37wK5l" node="2yiSWr$8Uci" resolve="isOwnModelLoaded" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5ILT1kFIU5u" role="3uHU7B">
              <node concept="37vLTw" id="5ILT1kFIU5w" role="3fr31v">
                <ref role="3cqZAo" node="2d$96lCZ4hy" resolve="myTolerateReadModelFailure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3tdNeKHdfsR" role="1B3o_S" />
      <node concept="3cqZAl" id="3tdNeKHdipj" role="3clF45" />
      <node concept="37vLTG" id="3tdNeKHdxci" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3tdNeKHdxcj" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
        <node concept="2AHcQZ" id="6E_IjBsligN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3tdNeKHdtxC" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="3tdNeKHdtxB" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
        <node concept="2AHcQZ" id="6E_IjBsldQ$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="3tdNeKHd$rG" role="Sfmx6">
        <ref role="3uigEE" node="ppWmVbn2sc" resolve="RootCommitsGraphTraverser.ModelReadException" />
      </node>
    </node>
    <node concept="2tJIrI" id="ppWmVbmRx0" role="jymVt" />
    <node concept="312cEu" id="ppWmVbn2sc" role="jymVt">
      <property role="TrG5h" value="ModelReadException" />
      <node concept="2tJIrI" id="ppWmVbn5kJ" role="jymVt" />
      <node concept="312cEg" id="ppWmVbn8h4" role="jymVt">
        <property role="TrG5h" value="myRevision" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ppWmVbn8aP" role="1tU5fm">
          <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
        </node>
        <node concept="3Tm6S6" id="ppWmVbn8nk" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="ppWmVbn95z" role="jymVt">
        <property role="TrG5h" value="myText" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="ppWmVbn8Ue" role="1B3o_S" />
        <node concept="17QB3L" id="ppWmVbn95o" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="ppWmVbn9bR" role="jymVt" />
      <node concept="3clFbW" id="ppWmVbn9sz" role="jymVt">
        <node concept="3cqZAl" id="ppWmVbn9s_" role="3clF45" />
        <node concept="3Tm1VV" id="ppWmVbn9sA" role="1B3o_S" />
        <node concept="3clFbS" id="ppWmVbn9sB" role="3clF47">
          <node concept="XkiVB" id="ppWmVbo123" role="3cqZAp">
            <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;()" resolve="Exception" />
          </node>
          <node concept="3clFbF" id="ppWmVbnabL" role="3cqZAp">
            <node concept="37vLTI" id="ppWmVbnabM" role="3clFbG">
              <node concept="2OqwBi" id="ppWmVbnabN" role="37vLTJ">
                <node concept="Xjq3P" id="ppWmVbnabO" role="2Oq$k0" />
                <node concept="2OwXpG" id="ppWmVbnabP" role="2OqNvi">
                  <ref role="2Oxat5" node="ppWmVbn8h4" resolve="myRevision" />
                </node>
              </node>
              <node concept="37vLTw" id="ppWmVbnabQ" role="37vLTx">
                <ref role="3cqZAo" node="ppWmVbnabJ" resolve="myRevision" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="ppWmVbnaO2" role="3cqZAp">
            <node concept="37vLTI" id="ppWmVbnaO3" role="3clFbG">
              <node concept="2OqwBi" id="ppWmVbnaO4" role="37vLTJ">
                <node concept="Xjq3P" id="ppWmVbnaO5" role="2Oq$k0" />
                <node concept="2OwXpG" id="ppWmVbnaO6" role="2OqNvi">
                  <ref role="2Oxat5" node="ppWmVbn95z" resolve="myText" />
                </node>
              </node>
              <node concept="37vLTw" id="ppWmVbnaO7" role="37vLTx">
                <ref role="3cqZAo" node="ppWmVbnaO0" resolve="myCause" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="ppWmVbnabJ" role="3clF46">
          <property role="TrG5h" value="myRevision" />
          <node concept="3uibUv" id="ppWmVbnabK" role="1tU5fm">
            <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
          </node>
        </node>
        <node concept="37vLTG" id="ppWmVbnaO0" role="3clF46">
          <property role="TrG5h" value="myCause" />
          <node concept="17QB3L" id="ppWmVbnaO1" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="4aYE7KdajO8" role="jymVt" />
      <node concept="3clFb_" id="ppWmVbnc6k" role="jymVt">
        <property role="TrG5h" value="getRevision" />
        <node concept="3clFbS" id="ppWmVbnc6n" role="3clF47">
          <node concept="3clFbF" id="ppWmVbncI4" role="3cqZAp">
            <node concept="37vLTw" id="ppWmVbncI3" role="3clFbG">
              <ref role="3cqZAo" node="ppWmVbn8h4" resolve="myRevision" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="ppWmVbnbKi" role="1B3o_S" />
        <node concept="3uibUv" id="ppWmVbnc6b" role="3clF45">
          <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
        </node>
      </node>
      <node concept="2tJIrI" id="4aYE7KdamyN" role="jymVt" />
      <node concept="3clFb_" id="ppWmVbndjH" role="jymVt">
        <property role="TrG5h" value="getText" />
        <node concept="3clFbS" id="ppWmVbndjK" role="3clF47">
          <node concept="3clFbF" id="ppWmVbndVP" role="3cqZAp">
            <node concept="37vLTw" id="ppWmVbndVO" role="3clFbG">
              <ref role="3cqZAo" node="ppWmVbn95z" resolve="myText" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="ppWmVbnd4W" role="1B3o_S" />
        <node concept="17QB3L" id="ppWmVbndj$" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="ppWmVbmZQc" role="1B3o_S" />
      <node concept="3uibUv" id="ppWmVbo0jB" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ibqEw5RAMv" role="jymVt" />
    <node concept="3clFb_" id="4ibqEw5RES8" role="jymVt">
      <property role="TrG5h" value="getNextNode" />
      <node concept="3clFbS" id="4ibqEw5RESb" role="3clF47">
        <node concept="3clFbJ" id="1djaibXZtNZ" role="3cqZAp">
          <node concept="3clFbS" id="1djaibXZtO1" role="3clFbx">
            <node concept="3SKdUt" id="1djaibY10KR" role="3cqZAp">
              <node concept="1PaTwC" id="1djaibY10KS" role="1aUNEU">
                <node concept="3oM_SD" id="1djaibY13zF" role="1PaTwD">
                  <property role="3oM_SC" value="This" />
                </node>
                <node concept="3oM_SD" id="1djaibY13zH" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
                <node concept="3oM_SD" id="1djaibY13zK" role="1PaTwD">
                  <property role="3oM_SC" value="happen" />
                </node>
                <node concept="3oM_SD" id="1djaibY13zO" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="1djaibY13$A" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="1djaibY13$G" role="1PaTwD">
                  <property role="3oM_SC" value="annotate" />
                </node>
                <node concept="3oM_SD" id="1djaibY13$N" role="1PaTwD">
                  <property role="3oM_SC" value="some" />
                </node>
                <node concept="3oM_SD" id="1djaibY13$V" role="1PaTwD">
                  <property role="3oM_SC" value="arbitrary" />
                </node>
                <node concept="3oM_SD" id="1djaibY13_4" role="1PaTwD">
                  <property role="3oM_SC" value="revision" />
                </node>
                <node concept="3oM_SD" id="1djaibY13_e" role="1PaTwD">
                  <property role="3oM_SC" value="rather" />
                </node>
                <node concept="3oM_SD" id="1djaibY13_p" role="1PaTwD">
                  <property role="3oM_SC" value="than" />
                </node>
                <node concept="3oM_SD" id="1djaibY13__" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1djaibY13_M" role="1PaTwD">
                  <property role="3oM_SC" value="head" />
                </node>
                <node concept="3oM_SD" id="1djaibY13A0" role="1PaTwD">
                  <property role="3oM_SC" value="revision." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1djaibXZDqC" role="3cqZAp">
              <node concept="2OqwBi" id="1djaibXZGFL" role="3clFbG">
                <node concept="37vLTw" id="1djaibXZDqA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3TI60oO42JP" resolve="myForkCommits" />
                </node>
                <node concept="2es0OD" id="1djaibXZL0z" role="2OqNvi">
                  <node concept="1bVj0M" id="1djaibXZL0_" role="23t8la">
                    <node concept="3clFbS" id="1djaibXZL0A" role="1bW5cS">
                      <node concept="3cpWs8" id="7HMxKuFbyns" role="3cqZAp">
                        <node concept="3cpWsn" id="7HMxKuFbynt" role="3cpWs9">
                          <property role="TrG5h" value="forkCommit" />
                          <node concept="3uibUv" id="7HMxKuFbynu" role="1tU5fm">
                            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                          </node>
                          <node concept="2OqwBi" id="7HMxKuFbHCj" role="33vP2m">
                            <node concept="37vLTw" id="7HMxKuFbF1O" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XRO" resolve="it" />
                            </node>
                            <node concept="3AY5_j" id="7HMxKuFbLNR" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7HMxKuFbRG0" role="3cqZAp">
                        <node concept="3cpWsn" id="7HMxKuFbRG3" role="3cpWs9">
                          <property role="TrG5h" value="processedChildren" />
                          <node concept="2hMVRd" id="7HMxKuFcftf" role="1tU5fm">
                            <node concept="3uibUv" id="7HMxKuFcfth" role="2hN53Y">
                              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7HMxKuFc8HN" role="33vP2m">
                            <node concept="37vLTw" id="7HMxKuFc67n" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XRO" resolve="it" />
                            </node>
                            <node concept="3AV6Ez" id="7HMxKuFcbus" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7HMxKuFadR5" role="3cqZAp">
                        <node concept="3clFbS" id="7HMxKuFadR7" role="3clFbx">
                          <node concept="3clFbF" id="7HMxKuFcm2t" role="3cqZAp">
                            <node concept="2OqwBi" id="7HMxKuFcoL6" role="3clFbG">
                              <node concept="37vLTw" id="7HMxKuFcm2s" role="2Oq$k0">
                                <ref role="3cqZAo" node="7HMxKuFbynt" resolve="forkCommit" />
                              </node>
                              <node concept="liA8E" id="7HMxKuFcrTN" role="2OqNvi">
                                <ref role="37wK5l" node="41u046V3l2Y" resolve="setIgnored" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7HMxKuFasJr" role="3clFbw">
                          <node concept="2HxqBE" id="7HMxKuFaXfu" role="2OqNvi">
                            <node concept="1bVj0M" id="7HMxKuFaXfw" role="23t8la">
                              <node concept="3clFbS" id="7HMxKuFaXfx" role="1bW5cS">
                                <node concept="3clFbF" id="7HMxKuFaZDE" role="3cqZAp">
                                  <node concept="2OqwBi" id="7HMxKuFb24G" role="3clFbG">
                                    <node concept="37vLTw" id="7HMxKuFaZDD" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0XRM" resolve="processedChild" />
                                    </node>
                                    <node concept="liA8E" id="7HMxKuFb6vm" role="2OqNvi">
                                      <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XRM" role="1bW2Oz">
                                <property role="TrG5h" value="processedChild" />
                                <node concept="2jxLKc" id="5W7E4fV0XRN" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7HMxKuFcDh0" role="2Oq$k0">
                            <ref role="3cqZAo" node="7HMxKuFbRG3" resolve="processedChildren" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1djaibXZV1A" role="3cqZAp">
                        <node concept="2OqwBi" id="1djaibXZZn6" role="3clFbG">
                          <node concept="37vLTw" id="1djaibXZV1_" role="2Oq$k0">
                            <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
                          </node>
                          <node concept="2ArzE6" id="1djaibY03FM" role="2OqNvi">
                            <node concept="37vLTw" id="7HMxKuFcz9Q" role="25WWJ7">
                              <ref role="3cqZAo" node="7HMxKuFbynt" resolve="forkCommit" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRO" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XRP" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1djaibY0MP5" role="3cqZAp">
              <node concept="2OqwBi" id="1djaibY0Qjt" role="3clFbG">
                <node concept="37vLTw" id="1djaibY0MP3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3TI60oO42JP" resolve="myForkCommits" />
                </node>
                <node concept="1yHZxX" id="1djaibY0UwH" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5dZU$dcvbUN" role="3clFbw">
            <node concept="37vLTw" id="5dZU$dcv8R_" role="2Oq$k0">
              <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
            </node>
            <node concept="1v1jN8" id="5dZU$dcveBa" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="6Sqm4tNMMyp" role="3cqZAp">
          <node concept="3cpWsn" id="6Sqm4tNMMyq" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="6Sqm4tNMMyr" role="1tU5fm">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
            <node concept="2OqwBi" id="6Sqm4tNMTlX" role="33vP2m">
              <node concept="2OqwBi" id="6Sqm4tNMTlY" role="2Oq$k0">
                <node concept="37vLTw" id="6Sqm4tNMTlZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
                </node>
                <node concept="2DpFxk" id="6Sqm4tNMTm0" role="2OqNvi">
                  <node concept="1bVj0M" id="6Sqm4tNMTm1" role="23t8la">
                    <node concept="3clFbS" id="6Sqm4tNMTm2" role="1bW5cS">
                      <node concept="3clFbF" id="6Sqm4tNMTm3" role="3cqZAp">
                        <node concept="2OqwBi" id="6Sqm4tNMTm4" role="3clFbG">
                          <node concept="37vLTw" id="6Sqm4tNMTm5" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XRQ" resolve="a" />
                          </node>
                          <node concept="liA8E" id="6Sqm4tNMTm6" role="2OqNvi">
                            <ref role="37wK5l" node="3mP1wh_HcNw" resolve="compareTo" />
                            <node concept="37vLTw" id="6Sqm4tNMTm7" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0XRS" resolve="b" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRQ" role="1bW2Oz">
                      <property role="TrG5h" value="a" />
                      <node concept="2jxLKc" id="5W7E4fV0XRR" role="1tU5fm" />
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRS" role="1bW2Oz">
                      <property role="TrG5h" value="b" />
                      <node concept="2jxLKc" id="5W7E4fV0XRT" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="6Sqm4tNMTmc" role="2Dq5b$" />
                </node>
              </node>
              <node concept="1uHKPH" id="6Sqm4tNMTmd" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Sqm4tNNh12" role="3cqZAp">
          <node concept="2OqwBi" id="6Sqm4tNNkV0" role="3clFbG">
            <node concept="37vLTw" id="6Sqm4tNNh10" role="2Oq$k0">
              <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
            </node>
            <node concept="3dhRuq" id="6Sqm4tNNoMf" role="2OqNvi">
              <node concept="37vLTw" id="6Sqm4tNNr60" role="25WWJ7">
                <ref role="3cqZAo" node="6Sqm4tNMMyq" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6Sqm4tNNxrm" role="3cqZAp">
          <node concept="37vLTw" id="6Sqm4tNN$qz" role="3cqZAk">
            <ref role="3cqZAo" node="6Sqm4tNMMyq" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ibqEw5RCE5" role="1B3o_S" />
      <node concept="3uibUv" id="4ibqEw5REOf" role="3clF45">
        <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ibqEw5Rueu" role="jymVt" />
    <node concept="3clFb_" id="4ibqEw5RyU6" role="jymVt">
      <property role="TrG5h" value="processNode" />
      <node concept="3clFbS" id="4ibqEw5RyU9" role="3clF47">
        <node concept="3clFbH" id="2Iw6HC24Hzm" role="3cqZAp" />
        <node concept="3clFbJ" id="7Kf$fJTtEu2" role="3cqZAp">
          <node concept="3clFbS" id="7Kf$fJTtEu4" role="3clFbx">
            <node concept="3clFbF" id="2Iw6HC24TJg" role="3cqZAp">
              <node concept="1rXfSq" id="2Iw6HC24TJe" role="3clFbG">
                <ref role="37wK5l" node="6S2pv13Y22Y" resolve="stop" />
              </node>
            </node>
            <node concept="3cpWs6" id="7Kf$fJTtJZ8" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="7Kf$fJTtH$_" role="3clFbw">
            <node concept="10Nm6u" id="7Kf$fJTtIKE" role="3uHU7w" />
            <node concept="37vLTw" id="2Iw6HC24PGQ" role="3uHU7B">
              <ref role="3cqZAo" node="41u046VcRLO" resolve="myException" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Iw6HC255Zt" role="3cqZAp">
          <node concept="2OqwBi" id="2Iw6HC258yX" role="3clFbG">
            <node concept="37vLTw" id="2Iw6HC255Zr" role="2Oq$k0">
              <ref role="3cqZAo" node="6S2pv13YcTh" resolve="myCommitConsumer" />
            </node>
            <node concept="liA8E" id="2Iw6HC25aqR" role="2OqNvi">
              <ref role="37wK5l" node="2Iw6HC24wCa" resolve="commitProcessingStarted" />
              <node concept="37vLTw" id="2Iw6HC25deB" role="37wK5m">
                <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ZsLc4B7exY" role="3cqZAp">
          <node concept="3cpWsn" id="3ZsLc4B7exZ" role="3cpWs9">
            <property role="TrG5h" value="parents" />
            <node concept="_YKpA" id="3ZsLc4B7ey0" role="1tU5fm">
              <node concept="3uibUv" id="3ZsLc4B7ey1" role="_ZDj9">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3ZsLc4B7ey2" role="33vP2m">
              <node concept="2OqwBi" id="3ZsLc4B7ey3" role="2Oq$k0">
                <node concept="37vLTw" id="3ZsLc4B7ey4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
                </node>
                <node concept="liA8E" id="3ZsLc4B7ey5" role="2OqNvi">
                  <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
                </node>
              </node>
              <node concept="ANE8D" id="3ZsLc4B7ey6" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6dgohK5qzrA" role="3cqZAp">
          <node concept="3eOVzh" id="6dgohK5qzrB" role="1gVkn0">
            <node concept="2OqwBi" id="6dgohK5qzrC" role="3uHU7B">
              <node concept="37vLTw" id="6dgohK5qzrD" role="2Oq$k0">
                <ref role="3cqZAo" node="3ZsLc4B7exZ" resolve="parents" />
              </node>
              <node concept="34oBXx" id="6dgohK5qzrE" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="6dgohK5qzrF" role="3uHU7w">
              <property role="3cmrfH" value="3" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="41u046VfKyq" role="3cqZAp">
          <node concept="3clFbS" id="41u046VfKyr" role="3clFbx">
            <node concept="3clFbF" id="2Iw6HC25isy" role="3cqZAp">
              <node concept="2OqwBi" id="2Iw6HC25lrg" role="3clFbG">
                <node concept="37vLTw" id="2Iw6HC25isw" role="2Oq$k0">
                  <ref role="3cqZAo" node="6S2pv13YcTh" resolve="myCommitConsumer" />
                </node>
                <node concept="liA8E" id="2Iw6HC25nqq" role="2OqNvi">
                  <ref role="37wK5l" node="2Iw6HC24wLw" resolve="processLastCommit" />
                  <node concept="37vLTw" id="2Iw6HC25pI0" role="37wK5m">
                    <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2Iw6HC29bau" role="3cqZAp">
              <node concept="1rXfSq" id="2Iw6HC29bas" role="3clFbG">
                <ref role="37wK5l" node="6S2pv13Y22Y" resolve="stop" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3ZsLc4B7_pW" role="3clFbw">
            <node concept="37vLTw" id="3ZsLc4B7yGa" role="2Oq$k0">
              <ref role="3cqZAo" node="3ZsLc4B7exZ" resolve="parents" />
            </node>
            <node concept="1v1jN8" id="3ZsLc4B7AYJ" role="2OqNvi" />
          </node>
          <node concept="3eNFk2" id="3wzCoZwDf4b" role="3eNLev">
            <node concept="3clFbC" id="3wzCoZwDlwf" role="3eO9$A">
              <node concept="3cmrfG" id="3wzCoZwDlF8" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3wzCoZwDjv_" role="3uHU7B">
                <node concept="37vLTw" id="3wzCoZwDi_$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ZsLc4B7exZ" resolve="parents" />
                </node>
                <node concept="34oBXx" id="3wzCoZwDk9P" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="3wzCoZwDf4d" role="3eOfB_">
              <node concept="3clFbF" id="2Iw6HC25wJu" role="3cqZAp">
                <node concept="2OqwBi" id="2Iw6HC25yOC" role="3clFbG">
                  <node concept="37vLTw" id="2Iw6HC25wJs" role="2Oq$k0">
                    <ref role="3cqZAo" node="6S2pv13YcTh" resolve="myCommitConsumer" />
                  </node>
                  <node concept="liA8E" id="2Iw6HC25_Mm" role="2OqNvi">
                    <ref role="37wK5l" node="2Iw6HC24wFB" resolve="processSimpleCommit" />
                    <node concept="37vLTw" id="2Iw6HC25BNE" role="37wK5m">
                      <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2$XQf3f7N$Z" role="3cqZAp">
                <node concept="3cpWsn" id="2$XQf3f7N_0" role="3cpWs9">
                  <property role="TrG5h" value="parentNode" />
                  <node concept="3uibUv" id="2$XQf3f7N_1" role="1tU5fm">
                    <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                  </node>
                  <node concept="2OqwBi" id="2$XQf3f7P7W" role="33vP2m">
                    <node concept="2OqwBi" id="2$XQf3f7ObO" role="2Oq$k0">
                      <node concept="37vLTw" id="2$XQf3f7O6d" role="2Oq$k0">
                        <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
                      </node>
                      <node concept="liA8E" id="2$XQf3f7Omf" role="2OqNvi">
                        <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="2$XQf3f7PRV" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6dgohK5qzs1" role="3cqZAp">
                <node concept="3clFbS" id="6dgohK5qzs2" role="3clFbx">
                  <node concept="3clFbF" id="4aYE7KdlvFK" role="3cqZAp">
                    <node concept="1rXfSq" id="4aYE7KdlvFI" role="3clFbG">
                      <ref role="37wK5l" node="6S2pv13Y22Y" resolve="stop" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6dgohK5qzs7" role="3clFbw">
                  <node concept="37vLTw" id="2$XQf3f7SLB" role="2Oq$k0">
                    <ref role="3cqZAo" node="2$XQf3f7N_0" resolve="parentNode" />
                  </node>
                  <node concept="liA8E" id="6dgohK5qzs9" role="2OqNvi">
                    <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3wzCoZwDlGT" role="3eNLev">
            <node concept="3clFbC" id="3wzCoZwDp7z" role="3eO9$A">
              <node concept="3cmrfG" id="3wzCoZwDpgc" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="3wzCoZwDn6L" role="3uHU7B">
                <node concept="37vLTw" id="3wzCoZwDmcK" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ZsLc4B7exZ" resolve="parents" />
                </node>
                <node concept="34oBXx" id="3wzCoZwDnLJ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="3wzCoZwDlGV" role="3eOfB_">
              <node concept="3clFbF" id="2Iw6HC25Mhr" role="3cqZAp">
                <node concept="2OqwBi" id="2Iw6HC25OYx" role="3clFbG">
                  <node concept="37vLTw" id="2Iw6HC25Mhp" role="2Oq$k0">
                    <ref role="3cqZAo" node="6S2pv13YcTh" resolve="myCommitConsumer" />
                  </node>
                  <node concept="liA8E" id="2Iw6HC25RZ5" role="2OqNvi">
                    <ref role="37wK5l" node="2Iw6HC24wIg" resolve="processMergeCommit" />
                    <node concept="37vLTw" id="2Iw6HC25Urf" role="37wK5m">
                      <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2bd2eJyIcNV" role="3cqZAp">
                <node concept="3clFbS" id="2bd2eJyIcNX" role="3clFbx">
                  <node concept="3clFbF" id="2bd2eJyIH6X" role="3cqZAp">
                    <node concept="1rXfSq" id="2bd2eJyIH6V" role="3clFbG">
                      <ref role="37wK5l" node="6S2pv13Y22Y" resolve="stop" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="2bd2eJyIsI6" role="3clFbw">
                  <node concept="2OqwBi" id="2bd2eJyICSq" role="3uHU7w">
                    <node concept="2OqwBi" id="2bd2eJyIxNU" role="2Oq$k0">
                      <node concept="37vLTw" id="2bd2eJyIuMX" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ZsLc4B7exZ" resolve="parents" />
                      </node>
                      <node concept="34jXtK" id="2bd2eJyI$fs" role="2OqNvi">
                        <node concept="3cmrfG" id="2bd2eJyIAxL" role="25WWJ7">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2bd2eJyIER_" role="2OqNvi">
                      <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2bd2eJyInXg" role="3uHU7B">
                    <node concept="2OqwBi" id="2bd2eJyIh8j" role="2Oq$k0">
                      <node concept="37vLTw" id="2bd2eJyIeDv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ZsLc4B7exZ" resolve="parents" />
                      </node>
                      <node concept="34jXtK" id="2bd2eJyIjmB" role="2OqNvi">
                        <node concept="3cmrfG" id="2bd2eJyIlYJ" role="25WWJ7">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2bd2eJyIqnN" role="2OqNvi">
                      <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Iw6HC26dl4" role="3cqZAp">
          <node concept="2OqwBi" id="2Iw6HC26fZR" role="3clFbG">
            <node concept="37vLTw" id="2Iw6HC26dl2" role="2Oq$k0">
              <ref role="3cqZAo" node="6S2pv13YcTh" resolve="myCommitConsumer" />
            </node>
            <node concept="liA8E" id="2Iw6HC26j0G" role="2OqNvi">
              <ref role="37wK5l" node="2Iw6HC24wD_" resolve="commitProcessingFinished" />
              <node concept="37vLTw" id="2Iw6HC26ood" role="37wK5m">
                <ref role="3cqZAo" node="4ibqEw5RN$1" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ibqEw5Ry2o" role="1B3o_S" />
      <node concept="3cqZAl" id="4ibqEw5RySr" role="3clF45" />
      <node concept="37vLTG" id="4ibqEw5RN$1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4ibqEw5RN$0" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ibqEw5Qtew" role="jymVt" />
    <node concept="3clFb_" id="4ibqEw5QxGp" role="jymVt">
      <property role="TrG5h" value="hasNotIgnoredBranch" />
      <node concept="3clFbS" id="4ibqEw5QxGs" role="3clF47">
        <node concept="3clFbF" id="4ibqEw5Qzjm" role="3cqZAp">
          <node concept="22lmx$" id="22ZFZYFVwDi" role="3clFbG">
            <node concept="2OqwBi" id="22ZFZYFVz7E" role="3uHU7w">
              <node concept="37vLTw" id="22ZFZYFVyvl" role="2Oq$k0">
                <ref role="3cqZAo" node="3TI60oO42JP" resolve="myForkCommits" />
              </node>
              <node concept="3GX2aA" id="22ZFZYFVzSk" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4ibqEw5Qzjo" role="3uHU7B">
              <node concept="37vLTw" id="4ibqEw5Qzjp" role="2Oq$k0">
                <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
              </node>
              <node concept="2HwmR7" id="4ibqEw5Q$_P" role="2OqNvi">
                <node concept="1bVj0M" id="4ibqEw5Q$_R" role="23t8la">
                  <node concept="3clFbS" id="4ibqEw5Q$_S" role="1bW5cS">
                    <node concept="3clFbF" id="4ibqEw5Q$_T" role="3cqZAp">
                      <node concept="3fqX7Q" id="4ibqEw5Q$UG" role="3clFbG">
                        <node concept="2OqwBi" id="4ibqEw5Q$UI" role="3fr31v">
                          <node concept="37vLTw" id="4ibqEw5Q$UJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XRU" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4ibqEw5Q$UK" role="2OqNvi">
                            <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XRU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XRV" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4aYE7Kd9Z$p" role="1B3o_S" />
      <node concept="10P_77" id="4ibqEw5QxG2" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6S2pv13XUNh" role="jymVt" />
    <node concept="3clFb_" id="6S2pv13Y22Y" role="jymVt">
      <property role="TrG5h" value="stop" />
      <node concept="3clFbS" id="6S2pv13Y231" role="3clF47">
        <node concept="3clFbF" id="6S2pv144AAO" role="3cqZAp">
          <node concept="37vLTI" id="6S2pv144Bn3" role="3clFbG">
            <node concept="3clFbT" id="6S2pv144BXc" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="6S2pv144AAN" role="37vLTJ">
              <ref role="3cqZAo" node="6S2pv144xGo" resolve="myIsStopped" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6S2pv13XZeg" role="1B3o_S" />
      <node concept="3cqZAl" id="6S2pv13Y1Yn" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="O_dbrLlaO0" role="jymVt" />
    <node concept="3clFb_" id="O_dbrLfGWe" role="jymVt">
      <property role="TrG5h" value="pushParentNode" />
      <node concept="3clFbS" id="O_dbrLfGWh" role="3clF47">
        <node concept="3clFbJ" id="O_dbrLg2x9" role="3cqZAp">
          <node concept="3clFbS" id="O_dbrLg2xa" role="3clFbx">
            <node concept="3clFbF" id="4ibqEw5RrmK" role="3cqZAp">
              <node concept="1rXfSq" id="4ibqEw5RrmI" role="3clFbG">
                <ref role="37wK5l" node="4ibqEw5Rm2k" resolve="pushParent" />
                <node concept="37vLTw" id="4ibqEw5RrCS" role="37wK5m">
                  <ref role="3cqZAo" node="O_dbrLfX4j" resolve="node" />
                </node>
                <node concept="37vLTw" id="4ibqEw5RrVu" role="37wK5m">
                  <ref role="3cqZAo" node="O_dbrLfMLV" resolve="parentNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="O_dbrLg2xr" role="3clFbw">
            <node concept="3cmrfG" id="O_dbrLg2xs" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="O_dbrLg2xt" role="3uHU7B">
              <node concept="34oBXx" id="O_dbrLg2xu" role="2OqNvi" />
              <node concept="2OqwBi" id="4aYE7Kdct5e" role="2Oq$k0">
                <node concept="37vLTw" id="4aYE7Kdct5f" role="2Oq$k0">
                  <ref role="3cqZAo" node="O_dbrLfMLV" resolve="parentNode" />
                </node>
                <node concept="liA8E" id="4aYE7Kdct5g" role="2OqNvi">
                  <ref role="37wK5l" node="6wgNI6tCv6T" resolve="getChildren" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4ibqEw5S6y9" role="9aQIa">
            <node concept="3clFbS" id="4ibqEw5S6ya" role="9aQI4">
              <node concept="3clFbF" id="4ibqEw5Ran8" role="3cqZAp">
                <node concept="1rXfSq" id="4ibqEw5Ran6" role="3clFbG">
                  <ref role="37wK5l" node="4ibqEw5QQ70" resolve="tryPushForkParent" />
                  <node concept="37vLTw" id="4ibqEw5Rc7z" role="37wK5m">
                    <ref role="3cqZAo" node="O_dbrLfX4j" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="4ibqEw5RfW1" role="37wK5m">
                    <ref role="3cqZAo" node="O_dbrLfMLV" resolve="parentNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="O_dbrLfCR$" role="1B3o_S" />
      <node concept="3cqZAl" id="O_dbrLfGUW" role="3clF45" />
      <node concept="37vLTG" id="O_dbrLfX4j" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="O_dbrLg20u" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="O_dbrLfMLV" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <node concept="3uibUv" id="O_dbrLfMLU" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ibqEw5RiRi" role="jymVt" />
    <node concept="3clFb_" id="4ibqEw5Rm2k" role="jymVt">
      <property role="TrG5h" value="pushParent" />
      <node concept="37vLTG" id="4ibqEw5RoiO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4ibqEw5RoiP" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4ibqEw5RoiQ" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <node concept="3uibUv" id="4ibqEw5RoiR" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3clFbS" id="4ibqEw5Rm2n" role="3clF47">
        <node concept="3clFbJ" id="4ibqEw5RnTs" role="3cqZAp">
          <node concept="3clFbS" id="4ibqEw5RnTt" role="3clFbx">
            <node concept="3clFbF" id="4ibqEw5RnTu" role="3cqZAp">
              <node concept="2OqwBi" id="4ibqEw5RnTv" role="3clFbG">
                <node concept="37vLTw" id="4ibqEw5Rq$5" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ibqEw5RoiQ" resolve="parentNode" />
                </node>
                <node concept="liA8E" id="4ibqEw5RnTx" role="2OqNvi">
                  <ref role="37wK5l" node="41u046V3l2Y" resolve="setIgnored" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4ibqEw5RnTy" role="3clFbw">
            <node concept="37vLTw" id="4ibqEw5RqpH" role="2Oq$k0">
              <ref role="3cqZAo" node="4ibqEw5RoiO" resolve="node" />
            </node>
            <node concept="liA8E" id="4ibqEw5RnT$" role="2OqNvi">
              <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ibqEw5RnT_" role="3cqZAp">
          <node concept="2OqwBi" id="4ibqEw5RnTA" role="3clFbG">
            <node concept="37vLTw" id="4ibqEw5RnTB" role="2Oq$k0">
              <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
            </node>
            <node concept="2ArzE6" id="4ibqEw5RnTC" role="2OqNvi">
              <node concept="37vLTw" id="4ibqEw5RqJI" role="25WWJ7">
                <ref role="3cqZAo" node="4ibqEw5RoiQ" resolve="parentNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ibqEw5RkYR" role="1B3o_S" />
      <node concept="3cqZAl" id="4ibqEw5Rm0P" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4ibqEw5QN$4" role="jymVt" />
    <node concept="3clFb_" id="4ibqEw5QQ70" role="jymVt">
      <property role="TrG5h" value="tryPushForkParent" />
      <node concept="37vLTG" id="4ibqEw5QXaM" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4ibqEw5QXaN" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4ibqEw5QXaO" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <node concept="3uibUv" id="4ibqEw5QXaP" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3clFbS" id="4ibqEw5QQ73" role="3clF47">
        <node concept="3cpWs8" id="4ibqEw5QS6z" role="3cqZAp">
          <node concept="3cpWsn" id="4ibqEw5QS6$" role="3cpWs9">
            <property role="TrG5h" value="forkProcessedChildren" />
            <node concept="2hMVRd" id="4ibqEw5QS6_" role="1tU5fm">
              <node concept="3uibUv" id="4ibqEw5QS6A" role="2hN53Y">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="1rXfSq" id="4ibqEw5SpTh" role="33vP2m">
              <ref role="37wK5l" node="4ibqEw5Sg4c" resolve="getForkProcessedChildren" />
              <node concept="37vLTw" id="4ibqEw5SqY4" role="37wK5m">
                <ref role="3cqZAo" node="4ibqEw5QXaO" resolve="parentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ibqEw5QS6V" role="3cqZAp">
          <node concept="2OqwBi" id="4ibqEw5QS6W" role="3clFbG">
            <node concept="37vLTw" id="4ibqEw5QS6X" role="2Oq$k0">
              <ref role="3cqZAo" node="4ibqEw5QS6$" resolve="forkProcessedChildren" />
            </node>
            <node concept="TSZUe" id="4ibqEw5QS6Y" role="2OqNvi">
              <node concept="37vLTw" id="4ibqEw5R1Hn" role="25WWJ7">
                <ref role="3cqZAo" node="4ibqEw5QXaM" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4ibqEw5QS70" role="3cqZAp">
          <node concept="3clFbS" id="4ibqEw5QS71" role="3clFbx">
            <node concept="3clFbF" id="4aYE7Kdccx6" role="3cqZAp">
              <node concept="1rXfSq" id="4aYE7Kdccx5" role="3clFbG">
                <ref role="37wK5l" node="4aYE7KdbGcS" resolve="pushForkParent" />
                <node concept="37vLTw" id="4aYE7KdcfjS" role="37wK5m">
                  <ref role="3cqZAo" node="4ibqEw5QXaO" resolve="parentNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4aYE7Kdc7_K" role="3clFbw">
            <node concept="2OqwBi" id="4ibqEw5QS7x" role="3uHU7B">
              <node concept="37vLTw" id="4ibqEw5QS7y" role="2Oq$k0">
                <ref role="3cqZAo" node="4ibqEw5QS6$" resolve="forkProcessedChildren" />
              </node>
              <node concept="34oBXx" id="4ibqEw5QS7z" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4ibqEw5QS7u" role="3uHU7w">
              <node concept="2OqwBi" id="4aYE7KdcDrg" role="2Oq$k0">
                <node concept="37vLTw" id="4aYE7KdcASe" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ibqEw5QXaO" resolve="parentNode" />
                </node>
                <node concept="liA8E" id="4aYE7KdcFMj" role="2OqNvi">
                  <ref role="37wK5l" node="6wgNI6tCv6T" resolve="getChildren" />
                </node>
              </node>
              <node concept="34oBXx" id="4ibqEw5QS7w" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ibqEw5QPrs" role="1B3o_S" />
      <node concept="3cqZAl" id="4ibqEw5QQ6_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4aYE7Kdb$MJ" role="jymVt" />
    <node concept="3clFb_" id="4aYE7KdbGcS" role="jymVt">
      <property role="TrG5h" value="pushForkParent" />
      <node concept="37vLTG" id="4aYE7KdbQvR" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <node concept="3uibUv" id="4aYE7KdbQvS" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3clFbS" id="4aYE7KdbGcV" role="3clF47">
        <node concept="3cpWs8" id="4aYE7KdcMlQ" role="3cqZAp">
          <node concept="3cpWsn" id="4aYE7KdcMlT" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="3vKaQO" id="4aYE7KdbLBI" role="1tU5fm">
              <node concept="3uibUv" id="4aYE7KdbLBJ" role="3O5elw">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="4aYE7KdcRBl" role="33vP2m">
              <node concept="37vLTw" id="4aYE7KdcQrj" role="2Oq$k0">
                <ref role="3cqZAo" node="4aYE7KdbQvR" resolve="parentNode" />
              </node>
              <node concept="liA8E" id="4aYE7KdcTVv" role="2OqNvi">
                <ref role="37wK5l" node="6wgNI6tCv6T" resolve="getChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4ibqEw5QS72" role="3cqZAp">
          <node concept="3clFbS" id="4ibqEw5QS73" role="3clFbx">
            <node concept="3clFbF" id="4ibqEw5QS74" role="3cqZAp">
              <node concept="2OqwBi" id="4ibqEw5QS75" role="3clFbG">
                <node concept="37vLTw" id="4aYE7KdbVqy" role="2Oq$k0">
                  <ref role="3cqZAo" node="4aYE7KdbQvR" resolve="parentNode" />
                </node>
                <node concept="liA8E" id="4ibqEw5QS77" role="2OqNvi">
                  <ref role="37wK5l" node="41u046V3l2Y" resolve="setIgnored" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4ibqEw5QS78" role="3clFbw">
            <node concept="37vLTw" id="4aYE7KdcW13" role="2Oq$k0">
              <ref role="3cqZAo" node="4aYE7KdcMlT" resolve="children" />
            </node>
            <node concept="2HxqBE" id="4ibqEw5QS7a" role="2OqNvi">
              <node concept="1bVj0M" id="4ibqEw5QS7b" role="23t8la">
                <node concept="3clFbS" id="4ibqEw5QS7c" role="1bW5cS">
                  <node concept="3clFbF" id="4ibqEw5QS7d" role="3cqZAp">
                    <node concept="22lmx$" id="AruHTASpeH" role="3clFbG">
                      <node concept="2OqwBi" id="AruHTASpR8" role="3uHU7w">
                        <node concept="37vLTw" id="4aYE7KdbSVM" role="2Oq$k0">
                          <ref role="3cqZAo" node="4aYE7KdbQvR" resolve="parentNode" />
                        </node>
                        <node concept="liA8E" id="AruHTASq1A" role="2OqNvi">
                          <ref role="37wK5l" node="AruHTARZKs" resolve="isIgnoredByChild" />
                          <node concept="37vLTw" id="AruHTASqnn" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0XRW" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4ibqEw5QS7e" role="3uHU7B">
                        <node concept="37vLTw" id="4ibqEw5QS7f" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XRW" resolve="node" />
                        </node>
                        <node concept="liA8E" id="4ibqEw5QS7g" role="2OqNvi">
                          <ref role="37wK5l" node="41u046V3p4t" resolve="isIgnored" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRW" role="1bW2Oz">
                  <property role="TrG5h" value="node" />
                  <node concept="2jxLKc" id="5W7E4fV0XRX" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ibqEw5QS7j" role="3cqZAp">
          <node concept="2OqwBi" id="4ibqEw5QS7k" role="3clFbG">
            <node concept="37vLTw" id="4ibqEw5QS7l" role="2Oq$k0">
              <ref role="3cqZAo" node="3TI60oO42JP" resolve="myForkCommits" />
            </node>
            <node concept="kI3uX" id="4ibqEw5QS7m" role="2OqNvi">
              <node concept="37vLTw" id="4aYE7KdbXJU" role="kIiFs">
                <ref role="3cqZAo" node="4aYE7KdbQvR" resolve="parentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ibqEw5QS7o" role="3cqZAp">
          <node concept="2OqwBi" id="4ibqEw5QS7p" role="3clFbG">
            <node concept="37vLTw" id="4ibqEw5QS7q" role="2Oq$k0">
              <ref role="3cqZAo" node="3TI60oO3e0H" resolve="myBranches" />
            </node>
            <node concept="2ArzE6" id="4ibqEw5QS7r" role="2OqNvi">
              <node concept="37vLTw" id="4aYE7Kdc0cs" role="25WWJ7">
                <ref role="3cqZAo" node="4aYE7KdbQvR" resolve="parentNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4aYE7KdbDm6" role="1B3o_S" />
      <node concept="3cqZAl" id="4aYE7KdbFXR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4ibqEw5ScJJ" role="jymVt" />
    <node concept="3clFb_" id="4ibqEw5Sg4c" role="jymVt">
      <property role="TrG5h" value="getForkProcessedChildren" />
      <node concept="3clFbS" id="4ibqEw5Sg4f" role="3clF47">
        <node concept="3cpWs8" id="4ibqEw5ShyL" role="3cqZAp">
          <node concept="3cpWsn" id="4ibqEw5ShyM" role="3cpWs9">
            <property role="TrG5h" value="processedChildren" />
            <node concept="2hMVRd" id="4ibqEw5ShyN" role="1tU5fm">
              <node concept="3uibUv" id="4ibqEw5ShyO" role="2hN53Y">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="3EllGN" id="4ibqEw5ShyP" role="33vP2m">
              <node concept="37vLTw" id="4ibqEw5SjQz" role="3ElVtu">
                <ref role="3cqZAo" node="4ibqEw5ShND" resolve="forkNode" />
              </node>
              <node concept="37vLTw" id="4ibqEw5ShyR" role="3ElQJh">
                <ref role="3cqZAo" node="3TI60oO42JP" resolve="myForkCommits" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4ibqEw5ShyS" role="3cqZAp">
          <node concept="3clFbS" id="4ibqEw5ShyT" role="3clFbx">
            <node concept="3clFbF" id="4ibqEw5ShyU" role="3cqZAp">
              <node concept="37vLTI" id="4ibqEw5ShyV" role="3clFbG">
                <node concept="2ShNRf" id="4ibqEw5ShyW" role="37vLTx">
                  <node concept="2i4dXS" id="4ibqEw5ShyX" role="2ShVmc">
                    <node concept="3uibUv" id="4ibqEw5ShyY" role="HW$YZ">
                      <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4ibqEw5ShyZ" role="37vLTJ">
                  <ref role="3cqZAo" node="4ibqEw5ShyM" resolve="processedChildren" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4ibqEw5Shz0" role="3cqZAp">
              <node concept="37vLTI" id="4ibqEw5Shz1" role="3clFbG">
                <node concept="37vLTw" id="4ibqEw5Shz2" role="37vLTx">
                  <ref role="3cqZAo" node="4ibqEw5ShyM" resolve="processedChildren" />
                </node>
                <node concept="3EllGN" id="4ibqEw5Shz3" role="37vLTJ">
                  <node concept="37vLTw" id="4ibqEw5Sowy" role="3ElVtu">
                    <ref role="3cqZAo" node="4ibqEw5ShND" resolve="forkNode" />
                  </node>
                  <node concept="37vLTw" id="4ibqEw5Shz5" role="3ElQJh">
                    <ref role="3cqZAo" node="3TI60oO42JP" resolve="myForkCommits" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4ibqEw5Shz6" role="3clFbw">
            <node concept="10Nm6u" id="4ibqEw5Shz7" role="3uHU7w" />
            <node concept="37vLTw" id="4ibqEw5Shz8" role="3uHU7B">
              <ref role="3cqZAo" node="4ibqEw5ShyM" resolve="processedChildren" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4ibqEw5Ske6" role="3cqZAp">
          <node concept="37vLTw" id="4ibqEw5SmnZ" role="3cqZAk">
            <ref role="3cqZAo" node="4ibqEw5ShyM" resolve="processedChildren" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ibqEw5Sepk" role="1B3o_S" />
      <node concept="2hMVRd" id="4ibqEw5SfTP" role="3clF45">
        <node concept="3uibUv" id="4ibqEw5Sg0I" role="2hN53Y">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4ibqEw5ShND" role="3clF46">
        <property role="TrG5h" value="forkNode" />
        <node concept="3uibUv" id="4ibqEw5ShNC" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1oWcoIBNwxO" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2Iw6HC24tJ7">
    <property role="TrG5h" value="CommitsGraphNodeConsumer" />
    <node concept="3clFb_" id="2Iw6HC24wCa" role="jymVt">
      <property role="TrG5h" value="commitProcessingStarted" />
      <node concept="37vLTG" id="2Iw6HC24wSv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2Iw6HC24wSw" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2Iw6HC24wCd" role="3clF47" />
      <node concept="3Tm1VV" id="2Iw6HC24wCe" role="1B3o_S" />
      <node concept="3cqZAl" id="2Iw6HC24wBW" role="3clF45" />
      <node concept="2JFqV2" id="2Iw6HC24wVM" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="2Iw6HC24wD_" role="jymVt">
      <property role="TrG5h" value="commitProcessingFinished" />
      <node concept="37vLTG" id="2Iw6HC24wTq" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2Iw6HC24wTr" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2Iw6HC24wDC" role="3clF47" />
      <node concept="3Tm1VV" id="2Iw6HC24wDD" role="1B3o_S" />
      <node concept="3cqZAl" id="2Iw6HC24wDa" role="3clF45" />
      <node concept="2JFqV2" id="2Iw6HC24wYj" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="2Iw6HC24wFB" role="jymVt">
      <property role="TrG5h" value="processSimpleCommit" />
      <node concept="3clFbS" id="2Iw6HC24wFE" role="3clF47" />
      <node concept="3Tm1VV" id="2Iw6HC24wFF" role="1B3o_S" />
      <node concept="3cqZAl" id="2Iw6HC24wEZ" role="3clF45" />
      <node concept="37vLTG" id="2Iw6HC24wNa" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2Iw6HC24wN9" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Iw6HC24wIg" role="jymVt">
      <property role="TrG5h" value="processMergeCommit" />
      <node concept="3clFbS" id="2Iw6HC24wIj" role="3clF47" />
      <node concept="3Tm1VV" id="2Iw6HC24wIk" role="1B3o_S" />
      <node concept="3cqZAl" id="2Iw6HC24wHr" role="3clF45" />
      <node concept="37vLTG" id="2Iw6HC24wOL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2Iw6HC24wOK" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Iw6HC24wLw" role="jymVt">
      <property role="TrG5h" value="processLastCommit" />
      <node concept="37vLTG" id="2Iw6HC24wR$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2Iw6HC24wR_" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2Iw6HC24wLz" role="3clF47" />
      <node concept="3Tm1VV" id="2Iw6HC24wL$" role="1B3o_S" />
      <node concept="3cqZAl" id="2Iw6HC24wKu" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="2Iw6HC24tJ8" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4aYE7KddtJc">
    <property role="TrG5h" value="CommitsGraph" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="4aYE7KddtMg" role="jymVt" />
    <node concept="312cEg" id="4aYE7KddDqP" role="jymVt">
      <property role="TrG5h" value="myNodes" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4aYE7KddCIA" role="1B3o_S" />
      <node concept="3vKaQO" id="4aYE7KdhDrl" role="1tU5fm">
        <node concept="3uibUv" id="4aYE7KdhDrn" role="3O5elw">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5OZff9qhsDR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="5Lno_XH6yyx" role="jymVt">
      <property role="TrG5h" value="myFile" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5Lno_XH6u4p" role="1B3o_S" />
      <node concept="3uibUv" id="5Lno_XH6D3T" role="1tU5fm">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
    </node>
    <node concept="312cEg" id="5Lno_XHkPRM" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5Lno_XHkPRN" role="1B3o_S" />
      <node concept="3uibUv" id="5Lno_XHkPRO" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="2tJIrI" id="4aYE7KddzpZ" role="jymVt" />
    <node concept="3clFbW" id="4aYE7KddtLQ" role="jymVt">
      <node concept="3cqZAl" id="4aYE7KddtLS" role="3clF45" />
      <node concept="3Tm1VV" id="4aYE7KddtLT" role="1B3o_S" />
      <node concept="3clFbS" id="4aYE7KddtLU" role="3clF47">
        <node concept="3clFbF" id="4aYE7KddApV" role="3cqZAp">
          <node concept="37vLTI" id="4aYE7KddA_9" role="3clFbG">
            <node concept="37vLTw" id="4aYE7KddWsN" role="37vLTJ">
              <ref role="3cqZAo" node="4aYE7KddDqP" resolve="myNodes" />
            </node>
            <node concept="1rXfSq" id="5OZff9qa8cf" role="37vLTx">
              <ref role="37wK5l" node="5OZff9qfsNO" resolve="buildGraph" />
              <node concept="2OqwBi" id="5Lno_XHk_wP" role="37wK5m">
                <node concept="37vLTw" id="5OZff9qgL0Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="4aYE7KddB0n" resolve="project" />
                </node>
                <node concept="liA8E" id="5Lno_XHkAHo" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="5OZff9qgLvI" role="37wK5m">
                <ref role="3cqZAo" node="4aYE7KddB0p" resolve="file" />
              </node>
              <node concept="37vLTw" id="5OZff9qa8yM" role="37wK5m">
                <ref role="3cqZAo" node="4aYE7KddtMH" resolve="revisions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Lno_XH6GWP" role="3cqZAp">
          <node concept="37vLTI" id="5Lno_XH6LzA" role="3clFbG">
            <node concept="37vLTw" id="5Lno_XH6Peo" role="37vLTx">
              <ref role="3cqZAo" node="4aYE7KddB0p" resolve="file" />
            </node>
            <node concept="37vLTw" id="5Lno_XH6GWN" role="37vLTJ">
              <ref role="3cqZAo" node="5Lno_XH6yyx" resolve="myFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Lno_XHl8$w" role="3cqZAp">
          <node concept="37vLTI" id="5Lno_XHl9wS" role="3clFbG">
            <node concept="37vLTw" id="5Lno_XHl8$u" role="37vLTJ">
              <ref role="3cqZAo" node="5Lno_XHkPRM" resolve="myPlatform" />
            </node>
            <node concept="2OqwBi" id="5Lno_XHkO7T" role="37vLTx">
              <node concept="37vLTw" id="5Lno_XHkNwX" role="2Oq$k0">
                <ref role="3cqZAo" node="4aYE7KddB0n" resolve="project" />
              </node>
              <node concept="liA8E" id="5Lno_XHkP6w" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4aYE7KddB0n" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4aYE7KddB0o" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="5OZff9qhIeP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4aYE7KddB0p" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="4aYE7KddB0q" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
        <node concept="2AHcQZ" id="5OZff9qhHFa" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4aYE7KddtMH" role="3clF46">
        <property role="TrG5h" value="revisions" />
        <node concept="_YKpA" id="5OZff9qgJr0" role="1tU5fm">
          <node concept="3uibUv" id="5OZff9qgJr2" role="_ZDj9">
            <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5OZff9qhF7C" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="2dNLIDd3KhS" role="Sfmx6">
        <ref role="3uigEE" node="2dNLIDd2q60" resolve="CommitsGraph.BuildException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Lno_XH7P71" role="jymVt" />
    <node concept="3clFb_" id="5Lno_XH7UfQ" role="jymVt">
      <property role="TrG5h" value="getFile" />
      <node concept="3uibUv" id="5Lno_XH7Y5u" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="3Tm1VV" id="5Lno_XH7UfT" role="1B3o_S" />
      <node concept="3clFbS" id="5Lno_XH7UfU" role="3clF47">
        <node concept="3SKdUt" id="5Lno_XH8$Bq" role="3cqZAp">
          <node concept="1PaTwC" id="5Lno_XH8$Br" role="1aUNEU">
            <node concept="3oM_SD" id="5Lno_XH8$Bs" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8Bx4" role="1PaTwD">
              <property role="3oM_SC" value="provisional" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BxA" role="1PaTwD">
              <property role="3oM_SC" value="code," />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BxR" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BxS" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BxT" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8Bya" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ByX" role="1PaTwD">
              <property role="3oM_SC" value="traveling" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8Bze" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8Bzv" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B$0" role="1PaTwD">
              <property role="3oM_SC" value="CommitsGraph," />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_1" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_i" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_j" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_k" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_l" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_m" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_n" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8B_C" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BA9" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BAq" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BAr" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BAW" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8BBt" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5Lno_XH8FVd" role="3cqZAp">
          <node concept="1PaTwC" id="5Lno_XH8FVe" role="1aUNEU">
            <node concept="3oM_SD" id="5Lno_XH8FVf" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IP7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IP9" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IPa" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IPb" role="1PaTwD">
              <property role="3oM_SC" value="OTOH," />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IPs" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IPH" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IPI" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IPZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IQ0" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IQh" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IQy" role="1PaTwD">
              <property role="3oM_SC" value="VF" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IQN" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IQO" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IQP" role="1PaTwD">
              <property role="3oM_SC" value="commit" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IRm" role="1PaTwD">
              <property role="3oM_SC" value="graph" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IRB" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IRC" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IRD" role="1PaTwD">
              <property role="3oM_SC" value="model." />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ISq" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ISF" role="1PaTwD">
              <property role="3oM_SC" value="indeed" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ITc" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ITd" role="1PaTwD">
              <property role="3oM_SC" value="ok," />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ITu" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8ITJ" role="1PaTwD">
              <property role="3oM_SC" value="fixme" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IUg" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IUh" role="1PaTwD">
              <property role="3oM_SC" value="document" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IVi" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IVz" role="1PaTwD">
              <property role="3oM_SC" value="&quot;actual" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IW4" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IW5" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IWm" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IWn" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IWC" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5Lno_XH8IWD" role="1PaTwD">
              <property role="3oM_SC" value="graph&quot;" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5Lno_XHgZbR" role="3cqZAp">
          <node concept="1PaTwC" id="5Lno_XHgZbS" role="1aUNEU">
            <node concept="3oM_SD" id="5Lno_XHgZbT" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh27i" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh27$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh27_" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh28o" role="1PaTwD">
              <property role="3oM_SC" value="Provided" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh28p" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh28q" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh28r" role="1PaTwD">
              <property role="3oM_SC" value="use," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh28W" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh29d" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh29e" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2af" role="1PaTwD">
              <property role="3oM_SC" value="notion" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2aw" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2ax" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2ay" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2az" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2a$" role="1PaTwD">
              <property role="3oM_SC" value="CommitsGraph's" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2hw" role="1PaTwD">
              <property role="3oM_SC" value="public" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2bP" role="1PaTwD">
              <property role="3oM_SC" value="attribute?" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2eR" role="1PaTwD">
              <property role="3oM_SC" value="Still," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2f8" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2f9" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2fa" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2fr" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2fW" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2fX" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHh2fY" role="1PaTwD">
              <property role="3oM_SC" value="field." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Lno_XH8xCA" role="3cqZAp">
          <node concept="37vLTw" id="5Lno_XH8xCC" role="3clFbG">
            <ref role="3cqZAo" node="5Lno_XH6yyx" resolve="myFile" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Lno_XH886$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4aYE7KdduER" role="jymVt" />
    <node concept="3clFb_" id="4aYE7KddEyX" role="jymVt">
      <property role="TrG5h" value="getHeadNode" />
      <node concept="3clFbS" id="4aYE7KddEz0" role="3clF47">
        <node concept="3cpWs8" id="4aYE7KddEOs" role="3cqZAp">
          <node concept="3cpWsn" id="4aYE7KddEOt" role="3cpWs9">
            <property role="TrG5h" value="heads" />
            <node concept="_YKpA" id="4aYE7KddEOu" role="1tU5fm">
              <node concept="3uibUv" id="4aYE7KddEOv" role="_ZDj9">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="4aYE7KddEOw" role="33vP2m">
              <node concept="2OqwBi" id="4aYE7KddEOx" role="2Oq$k0">
                <node concept="3zZkjj" id="4aYE7KddEO_" role="2OqNvi">
                  <node concept="1bVj0M" id="4aYE7KddEOA" role="23t8la">
                    <node concept="3clFbS" id="4aYE7KddEOB" role="1bW5cS">
                      <node concept="3clFbF" id="4aYE7KddEOC" role="3cqZAp">
                        <node concept="2OqwBi" id="4aYE7KddEOD" role="3clFbG">
                          <node concept="2OqwBi" id="4aYE7KddEOE" role="2Oq$k0">
                            <node concept="37vLTw" id="4aYE7KddEOF" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XRY" resolve="it" />
                            </node>
                            <node concept="liA8E" id="4aYE7KddEOG" role="2OqNvi">
                              <ref role="37wK5l" node="6wgNI6tCv6T" resolve="getChildren" />
                            </node>
                          </node>
                          <node concept="1v1jN8" id="4aYE7KddEOH" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRY" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XRZ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4aYE7KddFpA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4aYE7KddDqP" resolve="myNodes" />
                </node>
              </node>
              <node concept="ANE8D" id="4aYE7KddEOK" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4aYE7KddEOR" role="3cqZAp">
          <node concept="3K4zz7" id="5OZff9qkt5k" role="3cqZAk">
            <node concept="2OqwBi" id="5OZff9qkGp6" role="3K4E3e">
              <node concept="37vLTw" id="5OZff9qkFDe" role="2Oq$k0">
                <ref role="3cqZAo" node="4aYE7KddEOt" resolve="heads" />
              </node>
              <node concept="1uHKPH" id="5OZff9qkH_M" role="2OqNvi" />
            </node>
            <node concept="10Nm6u" id="5OZff9qkICf" role="3K4GZi" />
            <node concept="3clFbC" id="5OZff9qkEMC" role="3K4Cdx">
              <node concept="3cmrfG" id="5OZff9qkEOt" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5OZff9qkBNd" role="3uHU7B">
                <node concept="37vLTw" id="5OZff9qkwVt" role="2Oq$k0">
                  <ref role="3cqZAo" node="4aYE7KddEOt" resolve="heads" />
                </node>
                <node concept="34oBXx" id="5OZff9qkD5i" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4aYE7KdfCGQ" role="1B3o_S" />
      <node concept="3uibUv" id="4aYE7KddEqL" role="3clF45">
        <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
      </node>
      <node concept="2AHcQZ" id="5OZff9qhqw3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="6STmDFFaqnm" role="jymVt" />
    <node concept="3clFb_" id="6STmDFFasZ_" role="jymVt">
      <property role="TrG5h" value="addLocalRevisionNode" />
      <node concept="3clFbS" id="6STmDFFasZC" role="3clF47">
        <node concept="3clFbF" id="6STmDFFaC7X" role="3cqZAp">
          <node concept="2OqwBi" id="6STmDFFaCU2" role="3clFbG">
            <node concept="37vLTw" id="6STmDFFaC7V" role="2Oq$k0">
              <ref role="3cqZAo" node="6STmDFFaxtp" resolve="localRevisionNode" />
            </node>
            <node concept="liA8E" id="6STmDFFaDL9" role="2OqNvi">
              <ref role="37wK5l" node="6wgNI6tC04f" resolve="addParent" />
              <node concept="1rXfSq" id="6STmDFFaEBC" role="37wK5m">
                <ref role="37wK5l" node="4aYE7KddEyX" resolve="getHeadNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6STmDFFazbl" role="3cqZAp">
          <node concept="2OqwBi" id="6STmDFFa$9x" role="3clFbG">
            <node concept="37vLTw" id="6STmDFFazbk" role="2Oq$k0">
              <ref role="3cqZAo" node="4aYE7KddDqP" resolve="myNodes" />
            </node>
            <node concept="TSZUe" id="6STmDFFa_6I" role="2OqNvi">
              <node concept="37vLTw" id="6STmDFFaAAg" role="25WWJ7">
                <ref role="3cqZAo" node="6STmDFFaxtp" resolve="localRevisionNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6STmDFFarXC" role="1B3o_S" />
      <node concept="3cqZAl" id="6STmDFFasG4" role="3clF45" />
      <node concept="37vLTG" id="6STmDFFaxtp" role="3clF46">
        <property role="TrG5h" value="localRevisionNode" />
        <node concept="3uibUv" id="6STmDFFaxto" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Lno_XH4fvy" role="jymVt" />
    <node concept="3clFb_" id="5Lno_XH4azx" role="jymVt">
      <property role="TrG5h" value="addLocalRevisionNode" />
      <node concept="3clFbS" id="5Lno_XH4azy" role="3clF47">
        <node concept="3cpWs8" id="5Lno_XHh2je" role="3cqZAp">
          <node concept="3cpWsn" id="5Lno_XHh2jf" role="3cpWs9">
            <property role="TrG5h" value="loadModel" />
            <node concept="3uibUv" id="5Lno_XHh0Zy" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="10Nm6u" id="5Lno_XHhcYy" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="5Lno_XHhjBX" role="3cqZAp">
          <node concept="3uVAMA" id="5Lno_XHhuu4" role="1zxBo5">
            <node concept="XOnhg" id="5Lno_XHhuu5" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="5Lno_XHhuu6" role="1tU5fm">
                <node concept="3uibUv" id="5Lno_XHhy4J" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5Lno_XHhuu7" role="1zc67A">
              <node concept="3SKdUt" id="5Lno_XHhCNu" role="3cqZAp">
                <node concept="1PaTwC" id="5Lno_XHhCNv" role="1aUNEU">
                  <node concept="3oM_SD" id="5Lno_XHhIsw" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIsX" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIsZ" role="1PaTwD">
                    <property role="3oM_SC" value="it" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIts" role="1PaTwD">
                    <property role="3oM_SC" value="was" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhItT" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIum" role="1PaTwD">
                    <property role="3oM_SC" value="RootModelHistoryExtractor" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIyl" role="1PaTwD">
                    <property role="3oM_SC" value="prior" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIzE" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIzF" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhI$8" role="1PaTwD">
                    <property role="3oM_SC" value="refactoring." />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhI_t" role="1PaTwD">
                    <property role="3oM_SC" value="However," />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhI_U" role="1PaTwD">
                    <property role="3oM_SC" value="shall" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIAN" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIBg" role="1PaTwD">
                    <property role="3oM_SC" value="happen" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIC9" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhICa" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhICB" role="1PaTwD">
                    <property role="3oM_SC" value="likely" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhICC" role="1PaTwD">
                    <property role="3oM_SC" value="an" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhICD" role="1PaTwD">
                    <property role="3oM_SC" value="error" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIDy" role="1PaTwD">
                    <property role="3oM_SC" value="-" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIDz" role="1PaTwD">
                    <property role="3oM_SC" value="current" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIEs" role="1PaTwD">
                    <property role="3oM_SC" value="revision" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIEt" role="1PaTwD">
                    <property role="3oM_SC" value="w/o" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIEU" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="5Lno_XHhIEV" role="1PaTwD">
                    <property role="3oM_SC" value="model?" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5Lno_XHhjBZ" role="1zxBo7">
            <node concept="3clFbF" id="5Lno_XHh6G6" role="3cqZAp">
              <node concept="37vLTI" id="5Lno_XHh6G8" role="3clFbG">
                <node concept="1rXfSq" id="5Lno_XHh2jg" role="37vLTx">
                  <ref role="37wK5l" node="5Lno_XHf9QP" resolve="loadModel" />
                  <node concept="37vLTw" id="5Lno_XHh2jh" role="37wK5m">
                    <ref role="3cqZAo" node="5Lno_XH4mlv" resolve="revision" />
                  </node>
                </node>
                <node concept="37vLTw" id="5Lno_XHh6Gc" role="37vLTJ">
                  <ref role="3cqZAo" node="5Lno_XHh2jf" resolve="loadModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Lno_XH4tp8" role="3cqZAp">
          <node concept="1rXfSq" id="5Lno_XH4tp6" role="3clFbG">
            <ref role="37wK5l" node="6STmDFFasZ_" resolve="addLocalRevisionNode" />
            <node concept="2ShNRf" id="5Lno_XH4wnX" role="37wK5m">
              <node concept="1pGfFk" id="5Lno_XH4J0T" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6STmDFF9sb3" resolve="CommitsGraphNode" />
                <node concept="37vLTw" id="5Lno_XH4NkB" role="37wK5m">
                  <ref role="3cqZAo" node="5Lno_XH4mlv" resolve="revision" />
                </node>
                <node concept="37vLTw" id="5Lno_XHh2ji" role="37wK5m">
                  <ref role="3cqZAo" node="5Lno_XHh2jf" resolve="loadModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Lno_XH4azH" role="1B3o_S" />
      <node concept="3cqZAl" id="5Lno_XH4azI" role="3clF45" />
      <node concept="37vLTG" id="5Lno_XH4mlv" role="3clF46">
        <property role="TrG5h" value="revision" />
        <node concept="3uibUv" id="5Lno_XH4mlw" role="1tU5fm">
          <ref role="3uigEE" to="yah0:~CurrentRevision" resolve="CurrentRevision" />
        </node>
        <node concept="2AHcQZ" id="5Lno_XH4mlx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aYE7KdgFoR" role="jymVt" />
    <node concept="3clFb_" id="4aYE7KdgGqA" role="jymVt">
      <property role="TrG5h" value="getNodes" />
      <node concept="3clFbS" id="4aYE7KdgGqD" role="3clF47">
        <node concept="3clFbF" id="4aYE7KdgGNy" role="3cqZAp">
          <node concept="37vLTw" id="4aYE7KdgGNx" role="3clFbG">
            <ref role="3cqZAo" node="4aYE7KddDqP" resolve="myNodes" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4aYE7KdgG2E" role="1B3o_S" />
      <node concept="3vKaQO" id="4aYE7Kdjzmz" role="3clF45">
        <node concept="3uibUv" id="4aYE7Kdjzm_" role="3O5elw">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Lno_XHf4H9" role="jymVt" />
    <node concept="3clFb_" id="5Lno_XHf9QP" role="jymVt">
      <property role="TrG5h" value="loadModel" />
      <node concept="3uibUv" id="5Lno_XHfsm$" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3clFbS" id="5Lno_XHf9QT" role="3clF47">
        <node concept="3SKdUt" id="5Lno_XHlljk" role="3cqZAp">
          <node concept="1PaTwC" id="5Lno_XHlljl" role="1aUNEU">
            <node concept="3oM_SD" id="5Lno_XHlljm" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlp$j" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlolI" role="1PaTwD">
              <property role="3oM_SC" value="fact," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlp$_" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlp_A" role="1PaTwD">
              <property role="3oM_SC" value="discover" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlp_B" role="1PaTwD">
              <property role="3oM_SC" value="once," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpAo" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpAp" role="1PaTwD">
              <property role="3oM_SC" value="reuse" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpAU" role="1PaTwD">
              <property role="3oM_SC" value="ModelSack," />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpCr" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpCG" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpCX" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpCY" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpDf" role="1PaTwD">
              <property role="3oM_SC" value="neither" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpDg" role="1PaTwD">
              <property role="3oM_SC" value="VF" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpDL" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpDM" role="1PaTwD">
              <property role="3oM_SC" value="CH." />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFl" role="1PaTwD">
              <property role="3oM_SC" value="Just" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFA" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFB" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFC" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFD" role="1PaTwD">
              <property role="3oM_SC" value="deal" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFE" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFV" role="1PaTwD">
              <property role="3oM_SC" value="exceptions" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpFW" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpGv" role="1PaTwD">
              <property role="3oM_SC" value="cons" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpGK" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpGd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5Lno_XHlpGe" role="1PaTwD">
              <property role="3oM_SC" value="moment" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Lno_XHjk9A" role="3cqZAp">
          <node concept="2OqwBi" id="5Lno_XHk554" role="3clFbG">
            <node concept="2YIFZM" id="5Lno_XHjD_n" role="2Oq$k0">
              <ref role="37wK5l" to="iho:2VIcG4o2hlS" resolve="discover" />
              <ref role="1Pybhc" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
              <node concept="37vLTw" id="5Lno_XHlcYG" role="37wK5m">
                <ref role="3cqZAo" node="5Lno_XHkPRM" resolve="myPlatform" />
              </node>
              <node concept="2OqwBi" id="5Lno_XHjD_p" role="37wK5m">
                <node concept="37vLTw" id="5Lno_XHjD_q" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Lno_XH6yyx" resolve="myFile" />
                </node>
                <node concept="liA8E" id="5Lno_XHjD_r" role="2OqNvi">
                  <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5Lno_XHk8b0" role="2OqNvi">
              <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
              <node concept="2OqwBi" id="5Lno_XHfvgN" role="37wK5m">
                <node concept="37vLTw" id="5Lno_XHfvgO" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Lno_XHfm0M" resolve="revision" />
                </node>
                <node concept="liA8E" id="5Lno_XHfvgP" role="2OqNvi">
                  <ref role="37wK5l" to="yah0:~VcsFileContent.loadContent()" resolve="loadContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Lno_XHfm0M" role="3clF46">
        <property role="TrG5h" value="revision" />
        <node concept="3uibUv" id="5Lno_XHfm0L" role="1tU5fm">
          <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
        </node>
      </node>
      <node concept="3uibUv" id="5Lno_XHgwNB" role="Sfmx6">
        <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
      </node>
      <node concept="3uibUv" id="5Lno_XHgANI" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="5Lno_XHjacP" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
      </node>
      <node concept="3uibUv" id="5Lno_XHjacQ" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
    </node>
    <node concept="2tJIrI" id="2dNLIDd2okS" role="jymVt" />
    <node concept="312cEu" id="2dNLIDd2q60" role="jymVt">
      <property role="TrG5h" value="BuildException" />
      <node concept="2tJIrI" id="4Fz4D9NL5$K" role="jymVt" />
      <node concept="3clFbW" id="4Fz4D9NKXWo" role="jymVt">
        <node concept="3cqZAl" id="4Fz4D9NKXWq" role="3clF45" />
        <node concept="3Tm6S6" id="4Fz4D9NL16f" role="1B3o_S" />
        <node concept="3clFbS" id="4Fz4D9NKXWs" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="4Fz4D9NL4_e" role="jymVt" />
      <node concept="3clFb_" id="2dNLIDd2uB1" role="jymVt">
        <property role="TrG5h" value="getMessage" />
        <node concept="3Tm1VV" id="2dNLIDd2uB2" role="1B3o_S" />
        <node concept="17QB3L" id="2dNLIDd2$UV" role="3clF45" />
        <node concept="3clFbS" id="2dNLIDd2uB6" role="3clF47">
          <node concept="3cpWs6" id="2dNLIDd49fM" role="3cqZAp">
            <node concept="Xl_RD" id="2dNLIDd4ayZ" role="3cqZAk">
              <property role="Xl_RC" value="Could not build the commits graph" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2dNLIDd2uB7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2dNLIDd2q6G" role="1B3o_S" />
      <node concept="3uibUv" id="2dNLIDd2q6H" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="4aYE7Kdh4Mw" role="jymVt" />
    <node concept="2YIFZL" id="5OZff9qghVP" role="jymVt">
      <property role="TrG5h" value="getRootFile" />
      <node concept="3clFbS" id="5OZff9qghVV" role="3clF47">
        <node concept="3cpWs8" id="5OZff9qghVW" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qghVX" role="3cpWs9">
            <property role="TrG5h" value="filePath" />
            <node concept="3uibUv" id="5OZff9qghVY" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
            </node>
            <node concept="2YIFZM" id="5OZff9qghVZ" role="33vP2m">
              <ref role="37wK5l" to="7g4e:~VcsUtil.getFilePath(com.intellij.openapi.vfs.VirtualFile)" resolve="getFilePath" />
              <ref role="1Pybhc" to="7g4e:~VcsUtil" resolve="VcsUtil" />
              <node concept="37vLTw" id="5OZff9qghW0" role="37wK5m">
                <ref role="3cqZAo" node="5OZff9qghVT" resolve="file" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5OZff9qghW1" role="3cqZAp">
          <node concept="2YIFZM" id="5OZff9qghW2" role="3cqZAk">
            <ref role="1Pybhc" to="ltcu:~VcsLogUtil" resolve="VcsLogUtil" />
            <ref role="37wK5l" to="ltcu:~VcsLogUtil.getActualRoot(com.intellij.openapi.project.Project,com.intellij.openapi.vcs.FilePath)" resolve="getActualRoot" />
            <node concept="37vLTw" id="5OZff9qghW3" role="37wK5m">
              <ref role="3cqZAo" node="5OZff9qghVR" resolve="project" />
            </node>
            <node concept="37vLTw" id="5OZff9qghW4" role="37wK5m">
              <ref role="3cqZAo" node="5OZff9qghVX" resolve="filePath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5OZff9qghW6" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="37vLTG" id="5OZff9qghVR" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5OZff9qghVS" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5OZff9qghVT" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="5OZff9qghVU" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5OZff9qghW5" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4aYE7KdhinS" role="jymVt" />
    <node concept="2YIFZL" id="5OZff9qfAbN" role="jymVt">
      <property role="TrG5h" value="getDataManager" />
      <node concept="3clFbS" id="5OZff9qfAbP" role="3clF47">
        <node concept="3cpWs8" id="5OZff9qfAbQ" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfAbR" role="3cpWs9">
            <property role="TrG5h" value="logManager" />
            <node concept="3uibUv" id="5OZff9qfAbS" role="1tU5fm">
              <ref role="3uigEE" to="e0ho:~VcsLogManager" resolve="VcsLogManager" />
            </node>
            <node concept="2OqwBi" id="5OZff9qfAbT" role="33vP2m">
              <node concept="2YIFZM" id="5OZff9qfAbU" role="2Oq$k0">
                <ref role="1Pybhc" to="e0ho:~VcsProjectLog" resolve="VcsProjectLog" />
                <ref role="37wK5l" to="e0ho:~VcsProjectLog.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <node concept="37vLTw" id="5OZff9qfMij" role="37wK5m">
                  <ref role="3cqZAo" node="5OZff9qfAc4" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="5OZff9qfAbW" role="2OqNvi">
                <ref role="37wK5l" to="e0ho:~VcsProjectLog.getLogManager()" resolve="getLogManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5OZff9qfAbX" role="3cqZAp">
          <node concept="2EnYce" id="5OZff9qfAbY" role="3cqZAk">
            <node concept="37vLTw" id="5OZff9qfAbZ" role="2Oq$k0">
              <ref role="3cqZAo" node="5OZff9qfAbR" resolve="logManager" />
            </node>
            <node concept="liA8E" id="5OZff9qfAc0" role="2OqNvi">
              <ref role="37wK5l" to="e0ho:~VcsLogManager.getDataManager()" resolve="getDataManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5OZff9qfAc2" role="3clF45">
        <ref role="3uigEE" to="akqu:~VcsLogData" resolve="VcsLogData" />
      </node>
      <node concept="2AHcQZ" id="5OZff9qfAc3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="5OZff9qfAc4" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5OZff9qfAc5" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5OZff9qfAc1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4aYE7Kddw0t" role="jymVt" />
    <node concept="2YIFZL" id="5OZff9qfsNO" role="jymVt">
      <property role="TrG5h" value="buildGraph" />
      <node concept="3clFbS" id="5OZff9qfsNT" role="3clF47">
        <node concept="3clFbH" id="5OZff9qkdqx" role="3cqZAp" />
        <node concept="3clFbJ" id="5OZff9qkh2B" role="3cqZAp">
          <node concept="3clFbS" id="5OZff9qkh2D" role="3clFbx">
            <node concept="3cpWs6" id="5OZff9qklct" role="3cqZAp">
              <node concept="2YIFZM" id="5OZff9qkonp" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5OZff9qkjaH" role="3clFbw">
            <node concept="37vLTw" id="5OZff9qkhVg" role="2Oq$k0">
              <ref role="3cqZAo" node="5OZff9qfsNQ" resolve="revisions" />
            </node>
            <node concept="1v1jN8" id="5OZff9qkkot" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsNU" role="3cqZAp" />
        <node concept="3cpWs8" id="5OZff9qfsNV" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfsNW" role="3cpWs9">
            <property role="TrG5h" value="dataManager" />
            <node concept="3uibUv" id="5OZff9qfsNX" role="1tU5fm">
              <ref role="3uigEE" to="akqu:~VcsLogData" resolve="VcsLogData" />
            </node>
            <node concept="1rXfSq" id="5OZff9qfsNY" role="33vP2m">
              <ref role="37wK5l" node="5OZff9qfAbN" resolve="getDataManager" />
              <node concept="37vLTw" id="5OZff9qfFR3" role="37wK5m">
                <ref role="3cqZAo" node="5OZff9qfCWC" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OZff9qfsNZ" role="3cqZAp">
          <node concept="3clFbS" id="5OZff9qfsO0" role="3clFbx">
            <node concept="3cpWs6" id="5OZff9qfsO1" role="3cqZAp">
              <node concept="1rXfSq" id="5OZff9qh8ke" role="3cqZAk">
                <ref role="37wK5l" node="5OZff9qgOBb" resolve="buildLinearGraph" />
                <node concept="37vLTw" id="5OZff9qh9Kz" role="37wK5m">
                  <ref role="3cqZAo" node="5OZff9qfsNQ" resolve="revisions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5OZff9qfsO3" role="3clFbw">
            <node concept="10Nm6u" id="5OZff9qfsO4" role="3uHU7w" />
            <node concept="37vLTw" id="5OZff9qfsO5" role="3uHU7B">
              <ref role="3cqZAo" node="5OZff9qfsNW" resolve="dataManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5OZff9qfsO6" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfsO7" role="3cpWs9">
            <property role="TrG5h" value="rootFile" />
            <node concept="3uibUv" id="5OZff9qfsO8" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="1rXfSq" id="5OZff9qfsO9" role="33vP2m">
              <ref role="37wK5l" node="5OZff9qghVP" resolve="getRootFile" />
              <node concept="37vLTw" id="5OZff9qg9kx" role="37wK5m">
                <ref role="3cqZAo" node="5OZff9qfCWC" resolve="project" />
              </node>
              <node concept="37vLTw" id="5OZff9qgeRA" role="37wK5m">
                <ref role="3cqZAo" node="5OZff9qfIF5" resolve="file" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsOa" role="3cqZAp" />
        <node concept="3cpWs8" id="5OZff9qfsOb" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfsOc" role="3cpWs9">
            <property role="TrG5h" value="commitIndexToNodeMap" />
            <node concept="3rvAFt" id="5OZff9qfsOd" role="1tU5fm">
              <node concept="10Oyi0" id="5OZff9qfsOe" role="3rvQeY" />
              <node concept="3uibUv" id="5OZff9qfsOf" role="3rvSg0">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="5OZff9qfsOg" role="33vP2m">
              <node concept="3rGOSV" id="5OZff9qfsOh" role="2ShVmc">
                <node concept="10Oyi0" id="5OZff9qfsOi" role="3rHrn6" />
                <node concept="3uibUv" id="5OZff9qfsOj" role="3rHtpV">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsOk" role="3cqZAp" />
        <node concept="3cpWs8" id="5OZff9qfsOl" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfsOm" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="3vKaQO" id="5OZff9qfsOn" role="1tU5fm">
              <node concept="3uibUv" id="5OZff9qfsOo" role="3O5elw">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5OZff9qfsOp" role="33vP2m">
              <node concept="2OqwBi" id="5OZff9qfsOq" role="2Oq$k0">
                <node concept="37vLTw" id="5OZff9qfsOr" role="2Oq$k0">
                  <ref role="3cqZAo" node="5OZff9qfsNQ" resolve="revisions" />
                </node>
                <node concept="3$u5V9" id="5OZff9qfsOs" role="2OqNvi">
                  <node concept="1bVj0M" id="5OZff9qfsOt" role="23t8la">
                    <node concept="3clFbS" id="5OZff9qfsOu" role="1bW5cS">
                      <node concept="3clFbF" id="5OZff9qfsOv" role="3cqZAp">
                        <node concept="2ShNRf" id="5OZff9qfsOw" role="3clFbG">
                          <node concept="1pGfFk" id="5OZff9qfsOx" role="2ShVmc">
                            <ref role="37wK5l" node="6wgNI6tBNFx" resolve="CommitsGraphNode" />
                            <node concept="37vLTw" id="5OZff9qfsOy" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0XS0" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XS0" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XS1" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5OZff9qfsO_" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsOA" role="3cqZAp" />
        <node concept="3clFbF" id="5OZff9qfsOB" role="3cqZAp">
          <node concept="2OqwBi" id="5OZff9qfsOC" role="3clFbG">
            <node concept="37vLTw" id="5OZff9qfsOD" role="2Oq$k0">
              <ref role="3cqZAo" node="5OZff9qfsOm" resolve="nodes" />
            </node>
            <node concept="2es0OD" id="5OZff9qfsOE" role="2OqNvi">
              <node concept="1bVj0M" id="5OZff9qfsOF" role="23t8la">
                <node concept="3clFbS" id="5OZff9qfsOG" role="1bW5cS">
                  <node concept="3cpWs8" id="5OZff9qfsOH" role="3cqZAp">
                    <node concept="3cpWsn" id="5OZff9qfsOI" role="3cpWs9">
                      <property role="TrG5h" value="hash" />
                      <node concept="17QB3L" id="5OZff9qfsOJ" role="1tU5fm" />
                      <node concept="2OqwBi" id="5OZff9qfsOK" role="33vP2m">
                        <node concept="2OqwBi" id="5OZff9qfsOL" role="2Oq$k0">
                          <node concept="2OqwBi" id="5OZff9qfsOM" role="2Oq$k0">
                            <node concept="37vLTw" id="5OZff9qfsON" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XS2" resolve="node" />
                            </node>
                            <node concept="liA8E" id="5OZff9qfsOO" role="2OqNvi">
                              <ref role="37wK5l" node="6wgNI6tC_ug" resolve="getRevision" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5OZff9qfsOP" role="2OqNvi">
                            <ref role="37wK5l" to="yah0:~VcsRevisionDescription.getRevisionNumber()" resolve="getRevisionNumber" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5OZff9qfsOQ" role="2OqNvi">
                          <ref role="37wK5l" to="yah0:~VcsRevisionNumber.asString()" resolve="asString" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5OZff9qfsOR" role="3cqZAp">
                    <node concept="3cpWsn" id="5OZff9qfsOS" role="3cpWs9">
                      <property role="TrG5h" value="commitIndex" />
                      <node concept="10Oyi0" id="5OZff9qfsOT" role="1tU5fm" />
                      <node concept="2OqwBi" id="5OZff9qfsOU" role="33vP2m">
                        <node concept="37vLTw" id="5OZff9qfsOV" role="2Oq$k0">
                          <ref role="3cqZAo" node="5OZff9qfsNW" resolve="dataManager" />
                        </node>
                        <node concept="liA8E" id="5OZff9qfsOW" role="2OqNvi">
                          <ref role="37wK5l" to="akqu:~VcsLogData.getCommitIndex(com.intellij.vcs.log.Hash,com.intellij.openapi.vfs.VirtualFile)" resolve="getCommitIndex" />
                          <node concept="2YIFZM" id="5OZff9qfsOX" role="37wK5m">
                            <ref role="1Pybhc" to="e0ho:~HashImpl" resolve="HashImpl" />
                            <ref role="37wK5l" to="e0ho:~HashImpl.build(java.lang.String)" resolve="build" />
                            <node concept="37vLTw" id="5OZff9qfsOY" role="37wK5m">
                              <ref role="3cqZAo" node="5OZff9qfsOI" resolve="hash" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5OZff9qfsOZ" role="37wK5m">
                            <ref role="3cqZAo" node="5OZff9qfsO7" resolve="rootFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5OZff9qfsP0" role="3cqZAp">
                    <node concept="37vLTI" id="5OZff9qfsP1" role="3clFbG">
                      <node concept="37vLTw" id="5OZff9qfsP2" role="37vLTx">
                        <ref role="3cqZAo" node="5W7E4fV0XS2" resolve="node" />
                      </node>
                      <node concept="3EllGN" id="5OZff9qfsP3" role="37vLTJ">
                        <node concept="37vLTw" id="5OZff9qfsP4" role="3ElVtu">
                          <ref role="3cqZAo" node="5OZff9qfsOS" resolve="commitIndex" />
                        </node>
                        <node concept="37vLTw" id="5OZff9qfsP5" role="3ElQJh">
                          <ref role="3cqZAo" node="5OZff9qfsOc" resolve="commitIndexToNodeMap" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XS2" role="1bW2Oz">
                  <property role="TrG5h" value="node" />
                  <node concept="2jxLKc" id="5W7E4fV0XS3" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsP8" role="3cqZAp" />
        <node concept="3cpWs8" id="5OZff9qfsP9" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfsPa" role="3cpWs9">
            <property role="TrG5h" value="commitIndices" />
            <node concept="2hMVRd" id="5OZff9qfsPb" role="1tU5fm">
              <node concept="3uibUv" id="5OZff9qfsPc" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="5OZff9qfsPd" role="33vP2m">
              <node concept="2i4dXS" id="5OZff9qfsPe" role="2ShVmc">
                <node concept="2OqwBi" id="5OZff9qfsPg" role="I$8f6">
                  <node concept="37vLTw" id="5OZff9qfsPh" role="2Oq$k0">
                    <ref role="3cqZAo" node="5OZff9qfsOc" resolve="commitIndexToNodeMap" />
                  </node>
                  <node concept="3lbrtF" id="5OZff9qfsPi" role="2OqNvi" />
                </node>
                <node concept="3uibUv" id="5OZff9qfsPf" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsPj" role="3cqZAp" />
        <node concept="3cpWs8" id="5OZff9qfsPk" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfsPl" role="3cpWs9">
            <property role="TrG5h" value="visibleGraphNormal" />
            <node concept="3uibUv" id="5OZff9qfsPm" role="1tU5fm">
              <ref role="3uigEE" to="1q0i:~VisibleGraph" resolve="VisibleGraph" />
              <node concept="3uibUv" id="5OZff9qfsPn" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="5OZff9qfsPo" role="33vP2m">
              <node concept="2OqwBi" id="5OZff9qfsPp" role="2Oq$k0">
                <node concept="2OqwBi" id="5OZff9qfsPq" role="2Oq$k0">
                  <node concept="37vLTw" id="5OZff9qfsPr" role="2Oq$k0">
                    <ref role="3cqZAo" node="5OZff9qfsNW" resolve="dataManager" />
                  </node>
                  <node concept="liA8E" id="5OZff9qfsPs" role="2OqNvi">
                    <ref role="37wK5l" to="akqu:~VcsLogData.getDataPack()" resolve="getDataPack" />
                  </node>
                </node>
                <node concept="liA8E" id="5OZff9qfsPt" role="2OqNvi">
                  <ref role="37wK5l" to="akqu:~DataPack.getPermanentGraph()" resolve="getPermanentGraph" />
                </node>
              </node>
              <node concept="liA8E" id="5OZff9qfsPu" role="2OqNvi">
                <ref role="37wK5l" to="1q0i:~PermanentGraph.createVisibleGraph(com.intellij.vcs.log.graph.PermanentGraph$SortType,java.util.Set,java.util.Set)" resolve="createVisibleGraph" />
                <node concept="Rm8GO" id="7ua3Cx0ldEN" role="37wK5m">
                  <ref role="Rm8GQ" to="1q0i:~PermanentGraph$SortType.Normal" resolve="Normal" />
                  <ref role="1Px2BO" to="1q0i:~PermanentGraph$SortType" resolve="PermanentGraph.SortType" />
                </node>
                <node concept="10Nm6u" id="5OZff9qfsPw" role="37wK5m" />
                <node concept="37vLTw" id="5OZff9qfsPx" role="37wK5m">
                  <ref role="3cqZAo" node="5OZff9qfsPa" resolve="commitIndices" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZCt8kQ5R67" role="3cqZAp">
          <node concept="3cpWsn" id="6ZCt8kQ5R68" role="3cpWs9">
            <property role="TrG5h" value="visibleGraphBek" />
            <node concept="3uibUv" id="6ZCt8kQ5R69" role="1tU5fm">
              <ref role="3uigEE" to="1q0i:~VisibleGraph" resolve="VisibleGraph" />
              <node concept="3uibUv" id="6ZCt8kQ5R6a" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZCt8kQ5R6b" role="33vP2m">
              <node concept="2OqwBi" id="6ZCt8kQ5R6c" role="2Oq$k0">
                <node concept="2OqwBi" id="6ZCt8kQ5R6d" role="2Oq$k0">
                  <node concept="37vLTw" id="6ZCt8kQ5R6e" role="2Oq$k0">
                    <ref role="3cqZAo" node="5OZff9qfsNW" resolve="dataManager" />
                  </node>
                  <node concept="liA8E" id="6ZCt8kQ5R6f" role="2OqNvi">
                    <ref role="37wK5l" to="akqu:~VcsLogData.getDataPack()" resolve="getDataPack" />
                  </node>
                </node>
                <node concept="liA8E" id="6ZCt8kQ5R6g" role="2OqNvi">
                  <ref role="37wK5l" to="akqu:~DataPack.getPermanentGraph()" resolve="getPermanentGraph" />
                </node>
              </node>
              <node concept="liA8E" id="6ZCt8kQ5R6h" role="2OqNvi">
                <ref role="37wK5l" to="1q0i:~PermanentGraph.createVisibleGraph(com.intellij.vcs.log.graph.PermanentGraph$SortType,java.util.Set,java.util.Set)" resolve="createVisibleGraph" />
                <node concept="Rm8GO" id="7ua3Cx0ldFf" role="37wK5m">
                  <ref role="Rm8GQ" to="1q0i:~PermanentGraph$SortType.Bek" resolve="Bek" />
                  <ref role="1Px2BO" to="1q0i:~PermanentGraph$SortType" resolve="PermanentGraph.SortType" />
                </node>
                <node concept="10Nm6u" id="6ZCt8kQ5R6j" role="37wK5m" />
                <node concept="37vLTw" id="6ZCt8kQ5R6k" role="37wK5m">
                  <ref role="3cqZAo" node="5OZff9qfsPa" resolve="commitIndices" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZCt8kQ5W4w" role="3cqZAp" />
        <node concept="2Gpval" id="2dNLIDd3D7j" role="3cqZAp">
          <node concept="2GrKxI" id="2dNLIDd3D7l" role="2Gsz3X">
            <property role="TrG5h" value="it" />
          </node>
          <node concept="37vLTw" id="2dNLIDd3E8U" role="2GsD0m">
            <ref role="3cqZAo" node="5OZff9qfsOc" resolve="commitIndexToNodeMap" />
          </node>
          <node concept="3clFbS" id="2dNLIDd3D7p" role="2LFqv$">
            <node concept="3cpWs8" id="5OZff9qfsPD" role="3cqZAp">
              <node concept="3cpWsn" id="5OZff9qfsPE" role="3cpWs9">
                <property role="TrG5h" value="revisionNode" />
                <node concept="3uibUv" id="5OZff9qfsPF" role="1tU5fm">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
                <node concept="2OqwBi" id="5OZff9qfsPG" role="33vP2m">
                  <node concept="2GrUjf" id="2dNLIDd3IeZ" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2dNLIDd3D7l" resolve="it" />
                  </node>
                  <node concept="3AV6Ez" id="5OZff9qfsPI" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5OZff9qfsPJ" role="3cqZAp">
              <node concept="3cpWsn" id="5OZff9qfsPK" role="3cpWs9">
                <property role="TrG5h" value="commitIndex" />
                <node concept="10Oyi0" id="5OZff9qfsPL" role="1tU5fm" />
                <node concept="2OqwBi" id="5OZff9qfsPM" role="33vP2m">
                  <node concept="2GrUjf" id="2dNLIDd3Jbr" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2dNLIDd3D7l" resolve="it" />
                  </node>
                  <node concept="3AY5_j" id="5OZff9qfsPO" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6ZCt8kQ73eg" role="3cqZAp">
              <node concept="2OqwBi" id="6ZCt8kQ7pJr" role="3clFbG">
                <node concept="2OqwBi" id="6ZCt8kQ7mlA" role="2Oq$k0">
                  <node concept="2OqwBi" id="6ZCt8kQ79J5" role="2Oq$k0">
                    <node concept="1rXfSq" id="6ZCt8kQ73ee" role="2Oq$k0">
                      <ref role="37wK5l" node="6ZCt8kQ6com" resolve="getParents" />
                      <node concept="37vLTw" id="6ZCt8kQ74FQ" role="37wK5m">
                        <ref role="3cqZAo" node="5OZff9qfsPl" resolve="visibleGraphNormal" />
                      </node>
                      <node concept="37vLTw" id="6ZCt8kQ76vp" role="37wK5m">
                        <ref role="3cqZAo" node="5OZff9qfsPK" resolve="commitIndex" />
                      </node>
                      <node concept="37vLTw" id="6ZCt8kQ78uT" role="37wK5m">
                        <ref role="3cqZAo" node="5OZff9qfsOc" resolve="commitIndexToNodeMap" />
                      </node>
                    </node>
                    <node concept="3QWeyG" id="6ZCt8kQ7b3N" role="2OqNvi">
                      <node concept="1rXfSq" id="6ZCt8kQ7ftC" role="576Qk">
                        <ref role="37wK5l" node="6ZCt8kQ6com" resolve="getParents" />
                        <node concept="37vLTw" id="6ZCt8kQ7h0M" role="37wK5m">
                          <ref role="3cqZAo" node="6ZCt8kQ5R68" resolve="visibleGraphBek" />
                        </node>
                        <node concept="37vLTw" id="6ZCt8kQ7iMT" role="37wK5m">
                          <ref role="3cqZAo" node="5OZff9qfsPK" resolve="commitIndex" />
                        </node>
                        <node concept="37vLTw" id="6ZCt8kQ7lhI" role="37wK5m">
                          <ref role="3cqZAo" node="5OZff9qfsOc" resolve="commitIndexToNodeMap" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1VAtEI" id="6ZCt8kQ7otj" role="2OqNvi" />
                </node>
                <node concept="2es0OD" id="6ZCt8kQ7rb1" role="2OqNvi">
                  <node concept="1bVj0M" id="6ZCt8kQ7rb3" role="23t8la">
                    <node concept="3clFbS" id="6ZCt8kQ7rb4" role="1bW5cS">
                      <node concept="3clFbF" id="6ZCt8kQ7scU" role="3cqZAp">
                        <node concept="2OqwBi" id="6ZCt8kQ7t77" role="3clFbG">
                          <node concept="37vLTw" id="6ZCt8kQ7scT" role="2Oq$k0">
                            <ref role="3cqZAo" node="5OZff9qfsPE" resolve="revisionNode" />
                          </node>
                          <node concept="liA8E" id="6ZCt8kQ7uGI" role="2OqNvi">
                            <ref role="37wK5l" node="6wgNI6tC04f" resolve="addParent" />
                            <node concept="37vLTw" id="6ZCt8kQ7vHu" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0XS4" resolve="parent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XS4" role="1bW2Oz">
                      <property role="TrG5h" value="parent" />
                      <node concept="2jxLKc" id="5W7E4fV0XS5" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qfsQA" role="3cqZAp" />
        <node concept="3clFbF" id="5OZff9qfsQB" role="3cqZAp">
          <node concept="2OqwBi" id="5OZff9qfsQC" role="3clFbG">
            <node concept="2es0OD" id="5OZff9qfsQD" role="2OqNvi">
              <node concept="1bVj0M" id="5OZff9qfsQE" role="23t8la">
                <node concept="3clFbS" id="5OZff9qfsQF" role="1bW5cS">
                  <node concept="3clFbF" id="5OZff9qfsQG" role="3cqZAp">
                    <node concept="1rXfSq" id="5OZff9qfsQH" role="3clFbG">
                      <ref role="37wK5l" node="5OZff9qgo07" resolve="deleteIndirectParents" />
                      <node concept="37vLTw" id="5OZff9qfsQI" role="37wK5m">
                        <ref role="3cqZAo" node="5W7E4fV0XS6" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XS6" role="1bW2Oz">
                  <property role="TrG5h" value="node" />
                  <node concept="2jxLKc" id="5W7E4fV0XS7" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="INkhuBO333" role="2Oq$k0">
              <node concept="37vLTw" id="5OZff9qfsQL" role="2Oq$k0">
                <ref role="3cqZAo" node="5OZff9qfsOm" resolve="nodes" />
              </node>
              <node concept="3zZkjj" id="INkhuBO3S6" role="2OqNvi">
                <node concept="1bVj0M" id="INkhuBO3S8" role="23t8la">
                  <node concept="3clFbS" id="INkhuBO3S9" role="1bW5cS">
                    <node concept="3clFbF" id="INkhuBO4U4" role="3cqZAp">
                      <node concept="3eOSWO" id="INkhuBObBo" role="3clFbG">
                        <node concept="3cmrfG" id="INkhuBObDz" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="INkhuBO7S$" role="3uHU7B">
                          <node concept="2OqwBi" id="INkhuBO5BX" role="2Oq$k0">
                            <node concept="37vLTw" id="INkhuBO4U3" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XS8" resolve="it" />
                            </node>
                            <node concept="liA8E" id="INkhuBO6mv" role="2OqNvi">
                              <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="INkhuBO9sE" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XS8" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XS9" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5OZff9qgxH8" role="3cqZAp">
          <node concept="3K4zz7" id="5OZff9qgAxi" role="3cqZAk">
            <node concept="37vLTw" id="5OZff9qgBNP" role="3K4E3e">
              <ref role="3cqZAo" node="5OZff9qfsOm" resolve="nodes" />
            </node>
            <node concept="1rXfSq" id="5OZff9qhb01" role="3K4GZi">
              <ref role="37wK5l" node="5OZff9qgOBb" resolve="buildLinearGraph" />
              <node concept="37vLTw" id="5OZff9qhctV" role="37wK5m">
                <ref role="3cqZAo" node="5OZff9qfsNQ" resolve="revisions" />
              </node>
            </node>
            <node concept="1rXfSq" id="5OZff9qgzlc" role="3K4Cdx">
              <ref role="37wK5l" node="5OZff9qfpuf" resolve="graphIsCorrect" />
              <node concept="37vLTw" id="5OZff9qg$EP" role="37wK5m">
                <ref role="3cqZAo" node="5OZff9qfsOm" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="5OZff9qfsRy" role="3clF45">
        <node concept="3uibUv" id="5OZff9qfsRz" role="3O5elw">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5OZff9qfsR$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="5OZff9qfCWC" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5OZff9qfCWD" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5OZff9qfIF5" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="5OZff9qfXWr" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="5OZff9qfsNQ" role="3clF46">
        <property role="TrG5h" value="revisions" />
        <node concept="3vKaQO" id="5OZff9qfsNR" role="1tU5fm">
          <node concept="3uibUv" id="5OZff9qfsNS" role="3O5elw">
            <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5OZff9qfsRx" role="1B3o_S" />
      <node concept="3uibUv" id="2dNLIDd3izI" role="Sfmx6">
        <ref role="3uigEE" node="2dNLIDd2q60" resolve="CommitsGraph.BuildException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZCt8kQ69nh" role="jymVt" />
    <node concept="2YIFZL" id="6ZCt8kQ6com" role="jymVt">
      <property role="TrG5h" value="getParents" />
      <node concept="37vLTG" id="6ZCt8kQ6cXc" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3uibUv" id="6ZCt8kQ6dbV" role="1tU5fm">
          <ref role="3uigEE" to="1q0i:~VisibleGraph" resolve="VisibleGraph" />
          <node concept="3uibUv" id="6ZCt8kQ6dbW" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ZCt8kQ6d_e" role="3clF46">
        <property role="TrG5h" value="commitIndex" />
        <node concept="10Oyi0" id="6ZCt8kQ6dOi" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZCt8kQ6ehx" role="3clF46">
        <property role="TrG5h" value="commitIndexToNodeMap" />
        <node concept="3rvAFt" id="6ZCt8kQ6ewn" role="1tU5fm">
          <node concept="10Oyi0" id="6ZCt8kQ6ewo" role="3rvQeY" />
          <node concept="3uibUv" id="6ZCt8kQ6ewp" role="3rvSg0">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6ZCt8kQ6coo" role="3clF47">
        <node concept="3cpWs8" id="6ZCt8kQ6gPJ" role="3cqZAp">
          <node concept="3cpWsn" id="6ZCt8kQ6gPK" role="3cpWs9">
            <property role="TrG5h" value="row" />
            <node concept="2OqwBi" id="6ZCt8kQ6gPM" role="33vP2m">
              <node concept="37vLTw" id="6ZCt8kQ6hzK" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZCt8kQ6cXc" resolve="graph" />
              </node>
              <node concept="liA8E" id="6ZCt8kQ6gPO" role="2OqNvi">
                <ref role="37wK5l" to="1q0i:~VisibleGraph.getVisibleRowIndex(java.lang.Object)" resolve="getVisibleRowIndex" />
                <node concept="37vLTw" id="6ZCt8kQ6gPP" role="37wK5m">
                  <ref role="3cqZAo" node="6ZCt8kQ6d_e" resolve="commitIndex" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7mXtwHycp6R" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7mXtwHycrEt" role="3cqZAp">
          <node concept="3clFbS" id="7mXtwHycrEv" role="3clFbx">
            <node concept="YS8fn" id="2dNLIDd3niw" role="3cqZAp">
              <node concept="2ShNRf" id="2dNLIDd3olq" role="YScLw">
                <node concept="1pGfFk" id="4Fz4D9NKZhx" role="2ShVmc">
                  <ref role="37wK5l" node="4Fz4D9NKXWo" resolve="CommitsGraph.BuildException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7mXtwHycuLt" role="3clFbw">
            <node concept="10Nm6u" id="7mXtwHycvUP" role="3uHU7w" />
            <node concept="37vLTw" id="7mXtwHycsCx" role="3uHU7B">
              <ref role="3cqZAo" node="6ZCt8kQ6gPK" resolve="row" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZCt8kQ6fcb" role="3cqZAp">
          <node concept="3cpWsn" id="6ZCt8kQ6fcc" role="3cpWs9">
            <property role="TrG5h" value="childRows" />
            <node concept="_YKpA" id="6ZCt8kQ6fcd" role="1tU5fm">
              <node concept="3uibUv" id="6ZCt8kQ6fce" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZCt8kQ6fcf" role="33vP2m">
              <node concept="2OqwBi" id="6ZCt8kQ6fcg" role="2Oq$k0">
                <node concept="37vLTw" id="6ZCt8kQ6gsa" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZCt8kQ6cXc" resolve="graph" />
                </node>
                <node concept="liA8E" id="6ZCt8kQ6fci" role="2OqNvi">
                  <ref role="37wK5l" to="1q0i:~VisibleGraph.getRowInfo(int)" resolve="getRowInfo" />
                  <node concept="37vLTw" id="6ZCt8kQ6itP" role="37wK5m">
                    <ref role="3cqZAo" node="6ZCt8kQ6gPK" resolve="row" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6ZCt8kQ6fcn" role="2OqNvi">
                <ref role="37wK5l" to="1q0i:~RowInfo.getAdjacentRows(boolean)" resolve="getAdjacentRows" />
                <node concept="3clFbT" id="6ZCt8kQ6fco" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ZCt8kQ6jRI" role="3cqZAp">
          <node concept="2OqwBi" id="6ZCt8kQ6XyB" role="3cqZAk">
            <node concept="2OqwBi" id="6ZCt8kQ6x2Q" role="2Oq$k0">
              <node concept="2OqwBi" id="6ZCt8kQ6lsU" role="2Oq$k0">
                <node concept="37vLTw" id="6ZCt8kQ6khO" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZCt8kQ6fcc" resolve="childRows" />
                </node>
                <node concept="3$u5V9" id="6ZCt8kQ6mbg" role="2OqNvi">
                  <node concept="1bVj0M" id="6ZCt8kQ6mbi" role="23t8la">
                    <node concept="3clFbS" id="6ZCt8kQ6mbj" role="1bW5cS">
                      <node concept="3clFbF" id="6ZCt8kQ6mCX" role="3cqZAp">
                        <node concept="3EllGN" id="6ZCt8kQ6S4O" role="3clFbG">
                          <node concept="37vLTw" id="6ZCt8kQ6Qwg" role="3ElQJh">
                            <ref role="3cqZAo" node="6ZCt8kQ6ehx" resolve="commitIndexToNodeMap" />
                          </node>
                          <node concept="2OqwBi" id="6ZCt8kQ6mCZ" role="3ElVtu">
                            <node concept="2OqwBi" id="6ZCt8kQ6mD0" role="2Oq$k0">
                              <node concept="37vLTw" id="6ZCt8kQ6neY" role="2Oq$k0">
                                <ref role="3cqZAo" node="6ZCt8kQ6cXc" resolve="graph" />
                              </node>
                              <node concept="liA8E" id="6ZCt8kQ6mD2" role="2OqNvi">
                                <ref role="37wK5l" to="1q0i:~VisibleGraph.getRowInfo(int)" resolve="getRowInfo" />
                                <node concept="37vLTw" id="6ZCt8kQ6oNU" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XSa" resolve="row" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="6ZCt8kQ6mD4" role="2OqNvi">
                              <ref role="37wK5l" to="1q0i:~RowInfo.getCommit()" resolve="getCommit" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XSa" role="1bW2Oz">
                      <property role="TrG5h" value="row" />
                      <node concept="2jxLKc" id="5W7E4fV0XSb" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1KnU$U" id="6ZCt8kQ6VC8" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="6ZCt8kQ6Z5M" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="6ZCt8kQ6coq" role="3clF45">
        <node concept="3uibUv" id="6ZCt8kQ6cor" role="_ZDj9">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ZCt8kQ6cop" role="1B3o_S" />
      <node concept="3uibUv" id="2dNLIDd3kQi" role="Sfmx6">
        <ref role="3uigEE" node="2dNLIDd2q60" resolve="CommitsGraph.BuildException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5OZff9qeFCp" role="jymVt" />
    <node concept="2YIFZL" id="5OZff9qfpuf" role="jymVt">
      <property role="TrG5h" value="graphIsCorrect" />
      <node concept="3clFbS" id="5OZff9qfpuh" role="3clF47">
        <node concept="1DcWWT" id="5OZff9qfpui" role="3cqZAp">
          <node concept="3clFbS" id="5OZff9qfpuj" role="2LFqv$">
            <node concept="3clFbJ" id="5OZff9qfpuk" role="3cqZAp">
              <node concept="3clFbS" id="5OZff9qfpul" role="3clFbx">
                <node concept="3cpWs6" id="5OZff9qfpum" role="3cqZAp">
                  <node concept="3clFbT" id="5OZff9qfpun" role="3cqZAk" />
                </node>
              </node>
              <node concept="3eOSWO" id="5OZff9qfpuo" role="3clFbw">
                <node concept="3cmrfG" id="5OZff9qfpup" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="5OZff9qfpuq" role="3uHU7B">
                  <node concept="2OqwBi" id="5OZff9qfpur" role="2Oq$k0">
                    <node concept="37vLTw" id="5OZff9qfpus" role="2Oq$k0">
                      <ref role="3cqZAo" node="5OZff9qfpuv" resolve="node" />
                    </node>
                    <node concept="liA8E" id="5OZff9qfput" role="2OqNvi">
                      <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5OZff9qfpuu" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5OZff9qfpuv" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="5OZff9qfpuw" role="1tU5fm">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
          </node>
          <node concept="37vLTw" id="5OZff9qfpux" role="1DdaDG">
            <ref role="3cqZAo" node="5OZff9qfpuX" resolve="nodes" />
          </node>
        </node>
        <node concept="3cpWs8" id="5OZff9qfpuy" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qfpuz" role="3cpWs9">
            <property role="TrG5h" value="heads" />
            <node concept="_YKpA" id="5OZff9qfpu$" role="1tU5fm">
              <node concept="3uibUv" id="5OZff9qfpu_" role="_ZDj9">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5OZff9qfpuA" role="33vP2m">
              <node concept="2OqwBi" id="5OZff9qfpuB" role="2Oq$k0">
                <node concept="3zZkjj" id="5OZff9qfpuC" role="2OqNvi">
                  <node concept="1bVj0M" id="5OZff9qfpuD" role="23t8la">
                    <node concept="3clFbS" id="5OZff9qfpuE" role="1bW5cS">
                      <node concept="3clFbF" id="5OZff9qfpuF" role="3cqZAp">
                        <node concept="2OqwBi" id="5OZff9qfpuG" role="3clFbG">
                          <node concept="2OqwBi" id="5OZff9qfpuH" role="2Oq$k0">
                            <node concept="37vLTw" id="5OZff9qfpuI" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XSc" resolve="it" />
                            </node>
                            <node concept="liA8E" id="5OZff9qfpuJ" role="2OqNvi">
                              <ref role="37wK5l" node="6wgNI6tCv6T" resolve="getChildren" />
                            </node>
                          </node>
                          <node concept="1v1jN8" id="5OZff9qfpuK" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XSc" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XSd" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5OZff9qfpuN" role="2Oq$k0">
                  <ref role="3cqZAo" node="5OZff9qfpuX" resolve="nodes" />
                </node>
              </node>
              <node concept="ANE8D" id="5OZff9qfpuO" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5OZff9qfpuP" role="3cqZAp">
          <node concept="3clFbC" id="5OZff9qfpuQ" role="3cqZAk">
            <node concept="3cmrfG" id="5OZff9qfpuR" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="5OZff9qfpuS" role="3uHU7B">
              <node concept="37vLTw" id="5OZff9qfpuT" role="2Oq$k0">
                <ref role="3cqZAo" node="5OZff9qfpuz" resolve="heads" />
              </node>
              <node concept="34oBXx" id="5OZff9qfpuU" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5OZff9qfpuW" role="3clF45" />
      <node concept="37vLTG" id="5OZff9qfpuX" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3vKaQO" id="5OZff9qgGNF" role="1tU5fm">
          <node concept="3uibUv" id="5OZff9qgGNH" role="3O5elw">
            <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5OZff9qfpuV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4aYE7KdiOQt" role="jymVt" />
    <node concept="2YIFZL" id="5OZff9qgo07" role="jymVt">
      <property role="TrG5h" value="deleteIndirectParents" />
      <node concept="3clFbS" id="5OZff9qgo09" role="3clF47">
        <node concept="3clFbH" id="5OZff9qgo0a" role="3cqZAp" />
        <node concept="3cpWs8" id="5OZff9qgo0b" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qgo0c" role="3cpWs9">
            <property role="TrG5h" value="parents" />
            <node concept="_YKpA" id="5OZff9qgo0d" role="1tU5fm">
              <node concept="3uibUv" id="5OZff9qgo0e" role="_ZDj9">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5OZff9qgo0f" role="33vP2m">
              <node concept="37vLTw" id="5OZff9qgo0g" role="2Oq$k0">
                <ref role="3cqZAo" node="5OZff9qgo1c" resolve="node" />
              </node>
              <node concept="liA8E" id="5OZff9qgo0h" role="2OqNvi">
                <ref role="37wK5l" node="6wgNI6tCb4n" resolve="getParents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5OZff9qgo0i" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qgo0j" role="3cpWs9">
            <property role="TrG5h" value="parentsToDelete" />
            <node concept="_YKpA" id="5OZff9qgo0k" role="1tU5fm">
              <node concept="3uibUv" id="5OZff9qgo0l" role="_ZDj9">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="5OZff9qgo0m" role="33vP2m">
              <node concept="Tc6Ow" id="5OZff9qgo0n" role="2ShVmc">
                <node concept="3uibUv" id="5OZff9qgo0o" role="HW$YZ">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5OZff9qgo0p" role="3cqZAp" />
        <node concept="1DcWWT" id="5OZff9qgo0q" role="3cqZAp">
          <node concept="3clFbS" id="5OZff9qgo0r" role="2LFqv$">
            <node concept="1DcWWT" id="5OZff9qgo0s" role="3cqZAp">
              <node concept="3clFbS" id="5OZff9qgo0t" role="2LFqv$">
                <node concept="3clFbJ" id="5OZff9qgo0u" role="3cqZAp">
                  <node concept="3clFbS" id="5OZff9qgo0v" role="3clFbx">
                    <node concept="3N13vt" id="5OZff9qgo0w" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="5OZff9qgo0x" role="3clFbw">
                    <node concept="37vLTw" id="5OZff9qgo0y" role="3uHU7w">
                      <ref role="3cqZAo" node="5OZff9qgo0K" resolve="p2" />
                    </node>
                    <node concept="37vLTw" id="5OZff9qgo0z" role="3uHU7B">
                      <ref role="3cqZAo" node="5OZff9qgo0N" resolve="p1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5OZff9qgo0$" role="3cqZAp">
                  <node concept="3clFbS" id="5OZff9qgo0_" role="3clFbx">
                    <node concept="3clFbF" id="5OZff9qgo0A" role="3cqZAp">
                      <node concept="2OqwBi" id="5OZff9qgo0B" role="3clFbG">
                        <node concept="37vLTw" id="5OZff9qgo0C" role="2Oq$k0">
                          <ref role="3cqZAo" node="5OZff9qgo0j" resolve="parentsToDelete" />
                        </node>
                        <node concept="TSZUe" id="5OZff9qgo0D" role="2OqNvi">
                          <node concept="37vLTw" id="5OZff9qgo0E" role="25WWJ7">
                            <ref role="3cqZAo" node="5OZff9qgo0N" resolve="p1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="5OZff9qgo0F" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="5OZff9qgo0G" role="3clFbw">
                    <node concept="37vLTw" id="5OZff9qgo0H" role="2Oq$k0">
                      <ref role="3cqZAo" node="5OZff9qgo0K" resolve="p2" />
                    </node>
                    <node concept="liA8E" id="5OZff9qgo0I" role="2OqNvi">
                      <ref role="37wK5l" node="O$sna3r5a3" resolve="isDescendantOf" />
                      <node concept="37vLTw" id="5OZff9qgo0J" role="37wK5m">
                        <ref role="3cqZAo" node="5OZff9qgo0N" resolve="p1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5OZff9qgo0K" role="1Duv9x">
                <property role="TrG5h" value="p2" />
                <node concept="3uibUv" id="5OZff9qgo0L" role="1tU5fm">
                  <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
                </node>
              </node>
              <node concept="37vLTw" id="5OZff9qgo0M" role="1DdaDG">
                <ref role="3cqZAo" node="5OZff9qgo0c" resolve="parents" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5OZff9qgo0N" role="1Duv9x">
            <property role="TrG5h" value="p1" />
            <node concept="3uibUv" id="5OZff9qgo0O" role="1tU5fm">
              <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
            </node>
          </node>
          <node concept="37vLTw" id="5OZff9qgo0P" role="1DdaDG">
            <ref role="3cqZAo" node="5OZff9qgo0c" resolve="parents" />
          </node>
        </node>
        <node concept="3clFbF" id="5OZff9qgo0Q" role="3cqZAp">
          <node concept="2OqwBi" id="5OZff9qgo0R" role="3clFbG">
            <node concept="37vLTw" id="5OZff9qgo0S" role="2Oq$k0">
              <ref role="3cqZAo" node="5OZff9qgo0j" resolve="parentsToDelete" />
            </node>
            <node concept="2es0OD" id="5OZff9qgo0T" role="2OqNvi">
              <node concept="1bVj0M" id="5OZff9qgo0U" role="23t8la">
                <node concept="3clFbS" id="5OZff9qgo0V" role="1bW5cS">
                  <node concept="3clFbF" id="5OZff9qgo0W" role="3cqZAp">
                    <node concept="2OqwBi" id="5OZff9qgo0X" role="3clFbG">
                      <node concept="37vLTw" id="5OZff9qgo0Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="5OZff9qgo0c" resolve="parents" />
                      </node>
                      <node concept="3dhRuq" id="5OZff9qgo0Z" role="2OqNvi">
                        <node concept="37vLTw" id="5OZff9qgo10" role="25WWJ7">
                          <ref role="3cqZAo" node="5W7E4fV0XSe" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5OZff9qgo11" role="3cqZAp">
                    <node concept="2OqwBi" id="5OZff9qgo12" role="3clFbG">
                      <node concept="2OqwBi" id="5OZff9qgo13" role="2Oq$k0">
                        <node concept="37vLTw" id="5OZff9qgo14" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XSe" resolve="it" />
                        </node>
                        <node concept="liA8E" id="5OZff9qgo15" role="2OqNvi">
                          <ref role="37wK5l" node="6wgNI6tCv6T" resolve="getChildren" />
                        </node>
                      </node>
                      <node concept="3dhRuq" id="5OZff9qgo16" role="2OqNvi">
                        <node concept="37vLTw" id="5OZff9qgo17" role="25WWJ7">
                          <ref role="3cqZAo" node="5OZff9qgo1c" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XSe" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0XSf" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5OZff9qgo1b" role="3clF45" />
      <node concept="37vLTG" id="5OZff9qgo1c" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5OZff9qgo1d" role="1tU5fm">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5OZff9qgo1a" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5OZff9qaa76" role="jymVt" />
    <node concept="2YIFZL" id="5OZff9qgOBb" role="jymVt">
      <property role="TrG5h" value="buildLinearGraph" />
      <node concept="3clFbS" id="5OZff9qgOBg" role="3clF47">
        <node concept="3cpWs8" id="5OZff9qgOBh" role="3cqZAp">
          <node concept="3cpWsn" id="5OZff9qgOBi" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="_YKpA" id="5OZff9qgOBj" role="1tU5fm">
              <node concept="3uibUv" id="5OZff9qgOBk" role="_ZDj9">
                <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5OZff9qgOBl" role="33vP2m">
              <node concept="2OqwBi" id="5OZff9qgOBm" role="2Oq$k0">
                <node concept="37vLTw" id="5OZff9qgOBn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5OZff9qgOBd" resolve="revisions" />
                </node>
                <node concept="3$u5V9" id="5OZff9qgOBo" role="2OqNvi">
                  <node concept="1bVj0M" id="5OZff9qgOBp" role="23t8la">
                    <node concept="3clFbS" id="5OZff9qgOBq" role="1bW5cS">
                      <node concept="3clFbF" id="5OZff9qgOBr" role="3cqZAp">
                        <node concept="2ShNRf" id="5OZff9qgOBs" role="3clFbG">
                          <node concept="1pGfFk" id="5OZff9qgOBt" role="2ShVmc">
                            <ref role="37wK5l" node="6wgNI6tBNFx" resolve="CommitsGraphNode" />
                            <node concept="37vLTw" id="5OZff9qgOBu" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0XSg" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XSg" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XSh" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5OZff9qgOBx" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5OZff9qgOBy" role="3cqZAp">
          <node concept="3clFbS" id="5OZff9qgOBz" role="2LFqv$">
            <node concept="3clFbF" id="5OZff9qgOB$" role="3cqZAp">
              <node concept="2OqwBi" id="5OZff9qgOB_" role="3clFbG">
                <node concept="2OqwBi" id="5OZff9qgOBA" role="2Oq$k0">
                  <node concept="37vLTw" id="5OZff9qgOBB" role="2Oq$k0">
                    <ref role="3cqZAo" node="5OZff9qgOBi" resolve="nodes" />
                  </node>
                  <node concept="34jXtK" id="5OZff9qgOBC" role="2OqNvi">
                    <node concept="37vLTw" id="5OZff9qgOBD" role="25WWJ7">
                      <ref role="3cqZAo" node="5OZff9qgOBL" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5OZff9qgOBE" role="2OqNvi">
                  <ref role="37wK5l" node="6wgNI6tC04f" resolve="addParent" />
                  <node concept="2OqwBi" id="5OZff9qgOBF" role="37wK5m">
                    <node concept="37vLTw" id="5OZff9qgOBG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5OZff9qgOBi" resolve="nodes" />
                    </node>
                    <node concept="34jXtK" id="5OZff9qgOBH" role="2OqNvi">
                      <node concept="3cpWs3" id="5OZff9qgOBI" role="25WWJ7">
                        <node concept="37vLTw" id="5OZff9qgOBJ" role="3uHU7B">
                          <ref role="3cqZAo" node="5OZff9qgOBL" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="5OZff9qgOBK" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5OZff9qgOBL" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5OZff9qgOBM" role="1tU5fm" />
            <node concept="3cmrfG" id="5OZff9qgOBN" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5OZff9qgOBO" role="1Dwp0S">
            <node concept="3cpWsd" id="5OZff9qgOBP" role="3uHU7w">
              <node concept="3cmrfG" id="5OZff9qgOBQ" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5OZff9qgOBR" role="3uHU7B">
                <node concept="37vLTw" id="5OZff9qgOBS" role="2Oq$k0">
                  <ref role="3cqZAo" node="5OZff9qgOBi" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="5OZff9qgOBT" role="2OqNvi" />
              </node>
            </node>
            <node concept="37vLTw" id="5OZff9qgOBU" role="3uHU7B">
              <ref role="3cqZAo" node="5OZff9qgOBL" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5OZff9qgOBV" role="1Dwrff">
            <node concept="37vLTw" id="5OZff9qgOBW" role="2$L3a6">
              <ref role="3cqZAo" node="5OZff9qgOBL" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5OZff9qgOBX" role="3cqZAp">
          <node concept="37vLTw" id="5OZff9qgOBY" role="3cqZAk">
            <ref role="3cqZAo" node="5OZff9qgOBi" resolve="nodes" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="5OZff9qgOC0" role="3clF45">
        <node concept="3uibUv" id="5OZff9qgOC1" role="3O5elw">
          <ref role="3uigEE" node="6wgNI6tBJvh" resolve="CommitsGraphNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5OZff9qgOBd" role="3clF46">
        <property role="TrG5h" value="revisions" />
        <node concept="3vKaQO" id="5OZff9qgOBe" role="1tU5fm">
          <node concept="3uibUv" id="5OZff9qgOBf" role="3O5elw">
            <ref role="3uigEE" to="yah0:~VcsFileRevision" resolve="VcsFileRevision" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5OZff9qgOBZ" role="1B3o_S" />
      <node concept="2AHcQZ" id="5OZff9qhvQm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4aYE7KddtJd" role="1B3o_S" />
  </node>
</model>

