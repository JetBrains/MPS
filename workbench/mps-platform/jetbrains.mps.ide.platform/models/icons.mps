<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:836426ab-a6f4-4fa3-9a9c-34c02ed6ab5d(jetbrains.mps.ide.icons)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="3iga" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.icons(MPS.IDEA/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="ze1j" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
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
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
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
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="192HKKPMXeL">
    <property role="TrG5h" value="GlobalIconManager" />
    <property role="3GE5qa" value="" />
    <node concept="312cEg" id="192HKKPNED4" role="jymVt">
      <property role="TrG5h" value="myListener" />
      <node concept="3Tm6S6" id="192HKKPNED0" role="1B3o_S" />
      <node concept="3uibUv" id="192HKKPNED1" role="1tU5fm">
        <ref role="3uigEE" node="192HKKPNC$Y" resolve="GlobalIconManager.MyDeployListener" />
      </node>
      <node concept="2ShNRf" id="192HKKPNED2" role="33vP2m">
        <node concept="HV5vD" id="6V208LM0iTe" role="2ShVmc">
          <ref role="HV5vE" node="192HKKPNC$Y" resolve="GlobalIconManager.MyDeployListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="192HKKPNEUO" role="jymVt" />
    <node concept="3clFbW" id="192HKKPN4pg" role="jymVt">
      <node concept="3cqZAl" id="192HKKPN4ph" role="3clF45" />
      <node concept="3Tm1VV" id="192HKKPN4pi" role="1B3o_S" />
      <node concept="3clFbS" id="192HKKPN4pk" role="3clF47">
        <node concept="XkiVB" id="5BCBWAoGSha" role="3cqZAp">
          <ref role="37wK5l" node="5BCBWAoGqzm" resolve="BaseIconManager" />
          <node concept="2OqwBi" id="5BCBWAoGTv5" role="37wK5m">
            <node concept="liA8E" id="5BCBWAoGUP4" role="2OqNvi">
              <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
            </node>
            <node concept="2YIFZM" id="3Vy23wL8wqN" role="2Oq$k0">
              <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3tJ7tiszBwe" role="3cqZAp">
          <node concept="3cpWsn" id="3tJ7tiszBwf" role="3cpWs9">
            <property role="TrG5h" value="cc" />
            <node concept="3uibUv" id="3tJ7tiszBpS" role="1tU5fm">
              <ref role="3uigEE" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
            </node>
            <node concept="2YIFZM" id="3Vy23wLf8m$" role="33vP2m">
              <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6V208LM0bnz" role="3cqZAp">
          <node concept="2OqwBi" id="6V208LM09an" role="3clFbG">
            <node concept="2OqwBi" id="6V208LM07eO" role="2Oq$k0">
              <node concept="2OqwBi" id="192HKKPN6O3" role="2Oq$k0">
                <node concept="liA8E" id="192HKKPN7id" role="2OqNvi">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
                </node>
                <node concept="37vLTw" id="3tJ7tiszBwk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tJ7tiszBwf" resolve="cc" />
                </node>
              </node>
              <node concept="liA8E" id="6V208LM07LS" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="6V208LM08Ga" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6V208LM09IO" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRegistry.addRegistryListener(jetbrains.mps.smodel.runtime.ModuleDeploymentListener)" resolve="addRegistryListener" />
              <node concept="37vLTw" id="6V208LM0at2" role="37wK5m">
                <ref role="3cqZAo" node="192HKKPNED4" resolve="myListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3Vy23wLf9b4" role="3cqZAp">
          <node concept="1PaTwC" id="3Vy23wLf9b5" role="1aUNEU">
            <node concept="3oM_SD" id="3Vy23wLf9b6" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9pF" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9r3" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9_X" role="1PaTwD">
              <property role="3oM_SC" value="Disposer" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9r4" role="1PaTwD">
              <property role="3oM_SC" value="necessary?" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9Bv" role="1PaTwD">
              <property role="3oM_SC" value="Perhaps," />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9CA" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9Dt" role="1PaTwD">
              <property role="3oM_SC" value="lon" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9Du" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9Dv" role="1PaTwD">
              <property role="3oM_SC" value="MPSCoreComponent" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9H2" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9HT" role="1PaTwD">
              <property role="3oM_SC" value="AppComponent," />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9LG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9TI" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9Ob" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3Vy23wLf9W1" role="3cqZAp">
          <node concept="1PaTwC" id="3Vy23wLf9VG" role="1aUNEU">
            <node concept="3oM_SD" id="3Vy23wLfa9Y" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9Pz" role="1PaTwD">
              <property role="3oM_SC" value="service" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9QU" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLf9RL" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfacb" role="1PaTwD">
              <property role="3oM_SC" value="sooner?" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfadi" role="1PaTwD">
              <property role="3oM_SC" value="OTOH," />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfafL" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfagS" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfagT" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfai0" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfaih" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfaj8" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfaj9" role="1PaTwD">
              <property role="3oM_SC" value="service" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfakg" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLfal7" role="1PaTwD">
              <property role="3oM_SC" value="disposed?" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3tJ7tiszwNJ" role="3cqZAp">
          <node concept="2YIFZM" id="3tJ7tiszwWC" role="3clFbG">
            <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
            <node concept="37vLTw" id="3tJ7tiszBU2" role="37wK5m">
              <ref role="3cqZAo" node="3tJ7tiszBwf" resolve="cc" />
            </node>
            <node concept="Xjq3P" id="3tJ7tiszyFs" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="192HKKPN4i6" role="jymVt" />
    <node concept="2YIFZL" id="5UC$YgehaLf" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="5UC$Ygehawe" role="3clF47">
        <node concept="3clFbF" id="3Vy23wLf6oO" role="3cqZAp">
          <node concept="2OqwBi" id="3Vy23wLf71f" role="3clFbG">
            <node concept="2YIFZM" id="3Vy23wLf6sH" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="3Vy23wLf7Gr" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
              <node concept="3VsKOn" id="3tJ7tiszt1w" role="37wK5m">
                <ref role="3VsUkX" node="192HKKPMXeL" resolve="GlobalIconManager" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5UC$Ygehb9V" role="3clF45">
        <ref role="3uigEE" node="192HKKPMXeL" resolve="GlobalIconManager" />
      </node>
      <node concept="3Tm1VV" id="5UC$Ygehawd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5UC$YgehbZm" role="jymVt" />
    <node concept="3clFb_" id="3tJ7tiszyZe" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="3tJ7tiszyZf" role="1B3o_S" />
      <node concept="3cqZAl" id="3tJ7tiszyZh" role="3clF45" />
      <node concept="3clFbS" id="3tJ7tiszyZi" role="3clF47">
        <node concept="3clFbF" id="6V208LM0eK7" role="3cqZAp">
          <node concept="2OqwBi" id="6V208LM0feV" role="3clFbG">
            <node concept="2OqwBi" id="6V208LM0eK9" role="2Oq$k0">
              <node concept="2OqwBi" id="6V208LM0eKa" role="2Oq$k0">
                <node concept="liA8E" id="6V208LM0eKb" role="2OqNvi">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
                </node>
                <node concept="2YIFZM" id="6V208LM0iwi" role="2Oq$k0">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
                </node>
              </node>
              <node concept="liA8E" id="6V208LM0eKd" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="6V208LM0eKe" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6V208LM0fKv" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRegistry.removeRegistryListener(jetbrains.mps.smodel.runtime.ModuleDeploymentListener)" resolve="removeRegistryListener" />
              <node concept="37vLTw" id="6V208LM0hsP" role="37wK5m">
                <ref role="3cqZAo" node="192HKKPNED4" resolve="myListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tJ7tiszyZj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="192HKKPNG_r" role="jymVt" />
    <node concept="3Tm1VV" id="192HKKPMXeM" role="1B3o_S" />
    <node concept="312cEu" id="192HKKPNC$Y" role="jymVt">
      <property role="TrG5h" value="MyDeployListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="192HKKPNC_0" role="1B3o_S" />
      <node concept="3clFb_" id="6V208LM0ckf" role="jymVt">
        <property role="TrG5h" value="deploymentStateChanged" />
        <node concept="3Tm1VV" id="6V208LM0ckg" role="1B3o_S" />
        <node concept="3cqZAl" id="6V208LM0cki" role="3clF45" />
        <node concept="37vLTG" id="6V208LM0ckj" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="6V208LM0ckk" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ModuleDeploymentChange" resolve="ModuleDeploymentChange" />
          </node>
          <node concept="2AHcQZ" id="6V208LM0ckl" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="6V208LM0ckm" role="3clF47">
          <node concept="3clFbF" id="6V208LM0dX8" role="3cqZAp">
            <node concept="1rXfSq" id="6V208LM0dX7" role="3clFbG">
              <ref role="37wK5l" node="6V208LM0yLj" resolve="invalidate" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6V208LM0ckn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="6V208LM0bRP" role="EKbjA">
        <ref role="3uigEE" to="ze1i:~ModuleDeploymentListener" resolve="ModuleDeploymentListener" />
      </node>
    </node>
    <node concept="3uibUv" id="192HKKPQ1gF" role="1zkMxy">
      <ref role="3uigEE" node="192HKKPO1b4" resolve="BaseIconManager" />
    </node>
    <node concept="3uibUv" id="3tJ7tiszxt8" role="EKbjA">
      <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
    </node>
  </node>
  <node concept="312cEu" id="192HKKPO1b4">
    <property role="TrG5h" value="BaseIconManager" />
    <property role="3GE5qa" value="" />
    <node concept="312cEg" id="192HKKPPvgI" role="jymVt">
      <property role="TrG5h" value="myConceptToIcon" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="eg7rD" value="false" />
      <node concept="3rvAFt" id="192HKKPPvgJ" role="1tU5fm">
        <node concept="3uibUv" id="192HKKPPvgK" role="3rvSg0">
          <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
        </node>
        <node concept="3bZ5Sz" id="192HKKPPvgL" role="3rvQeY" />
      </node>
      <node concept="2ShNRf" id="192HKKPPvgM" role="33vP2m">
        <node concept="3rGOSV" id="192HKKPPvgN" role="2ShVmc">
          <node concept="3uibUv" id="192HKKPPvgO" role="3rHtpV">
            <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
          </node>
          <node concept="3bZ5Sz" id="192HKKPPvgP" role="3rHrn6" />
        </node>
      </node>
      <node concept="3Tm6S6" id="192HKKPPvgQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="192HKKPPvg_" role="jymVt">
      <property role="TrG5h" value="myResToIcon" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="eg7rD" value="false" />
      <node concept="3rvAFt" id="192HKKPPvgA" role="1tU5fm">
        <node concept="3uibUv" id="192HKKPPvgB" role="3rvQeY">
          <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
        </node>
        <node concept="3uibUv" id="192HKKPPvgC" role="3rvSg0">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="2ShNRf" id="192HKKPPvgD" role="33vP2m">
        <node concept="3rGOSV" id="192HKKPPvgE" role="2ShVmc">
          <node concept="3uibUv" id="192HKKPPvgF" role="3rHrn6">
            <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
          </node>
          <node concept="3uibUv" id="192HKKPPvgG" role="3rHtpV">
            <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="192HKKPPvgH" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5BCBWAoGyNF" role="jymVt">
      <property role="TrG5h" value="myConceptRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5BCBWAoGyNG" role="1B3o_S" />
      <node concept="3uibUv" id="5BCBWAoGyNI" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="3Vy23wL8z1O" role="jymVt">
      <property role="TrG5h" value="myModuleRuntimeRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Vy23wL8z1P" role="1B3o_S" />
      <node concept="3uibUv" id="3Vy23wL8z1Q" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="3Vy23wL8I3Z" role="jymVt">
      <property role="TrG5h" value="myPersistenceFacade" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Vy23wL8I40" role="1B3o_S" />
      <node concept="3uibUv" id="3Vy23wL8OT1" role="1tU5fm">
        <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
      </node>
    </node>
    <node concept="312cEg" id="3Vy23wLa88l" role="jymVt">
      <property role="TrG5h" value="myNewUI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Vy23wLa4hN" role="1B3o_S" />
      <node concept="10P_77" id="3Vy23wLa7Gr" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5BCBWAoGjn1" role="jymVt" />
    <node concept="3clFbW" id="5BCBWAoGqzm" role="jymVt">
      <node concept="3cqZAl" id="5BCBWAoGqzp" role="3clF45" />
      <node concept="3Tm1VV" id="5BCBWAoGqzq" role="1B3o_S" />
      <node concept="3clFbS" id="5BCBWAoGqzr" role="3clF47">
        <node concept="3clFbF" id="5BCBWAoGyNJ" role="3cqZAp">
          <node concept="37vLTI" id="5BCBWAoGyNL" role="3clFbG">
            <node concept="37vLTw" id="5BCBWAoGyNO" role="37vLTJ">
              <ref role="3cqZAo" node="5BCBWAoGyNF" resolve="myConceptRegistry" />
            </node>
            <node concept="2OqwBi" id="3Vy23wL8xCy" role="37vLTx">
              <node concept="37vLTw" id="5BCBWAoGyNP" role="2Oq$k0">
                <ref role="3cqZAo" node="5BCBWAoGsLf" resolve="platform" />
              </node>
              <node concept="liA8E" id="5BCBWAoGWT9" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="5BCBWAoGXOu" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vy23wL8yiR" role="3cqZAp">
          <node concept="37vLTI" id="3Vy23wL8yiS" role="3clFbG">
            <node concept="37vLTw" id="3Vy23wL8yiT" role="37vLTJ">
              <ref role="3cqZAo" node="3Vy23wL8z1O" resolve="myModuleRuntimeRegistry" />
            </node>
            <node concept="2OqwBi" id="3Vy23wL8yiU" role="37vLTx">
              <node concept="37vLTw" id="3Vy23wL8yiV" role="2Oq$k0">
                <ref role="3cqZAo" node="5BCBWAoGsLf" resolve="platform" />
              </node>
              <node concept="liA8E" id="3Vy23wL8yiW" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="3Vy23wL8yiX" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vy23wL8Qvk" role="3cqZAp">
          <node concept="37vLTI" id="3Vy23wL8QSN" role="3clFbG">
            <node concept="2OqwBi" id="3Vy23wL8R_c" role="37vLTx">
              <node concept="37vLTw" id="3Vy23wL8RcM" role="2Oq$k0">
                <ref role="3cqZAo" node="5BCBWAoGsLf" resolve="platform" />
              </node>
              <node concept="liA8E" id="3Vy23wL8SIy" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="3Vy23wL8TQr" role="37wK5m">
                  <ref role="3VsUkX" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3Vy23wL8Qvi" role="37vLTJ">
              <ref role="3cqZAo" node="3Vy23wL8I3Z" resolve="myPersistenceFacade" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3Vy23wLaiGx" role="3cqZAp">
          <node concept="1PaTwC" id="3Vy23wLaiGy" role="1aUNEU">
            <node concept="3oM_SD" id="3Vy23wLaiSL" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaiTS" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaiWm" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaiWB" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaiYC" role="1PaTwD">
              <property role="3oM_SC" value="react" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaiYD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaiZK" role="1PaTwD">
              <property role="3oM_SC" value="UI" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaj01" role="1PaTwD">
              <property role="3oM_SC" value="switch?" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLaj2T" role="1PaTwD">
              <property role="3oM_SC" value="Could" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLajaB" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLajaS" role="1PaTwD">
              <property role="3oM_SC" value="listen" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLajfi" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Vy23wLajgp" role="1PaTwD">
              <property role="3oM_SC" value="anything?" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vy23wLab1w" role="3cqZAp">
          <node concept="37vLTI" id="3Vy23wLadTL" role="3clFbG">
            <node concept="2YIFZM" id="3Vy23wLahE_" role="37vLTx">
              <ref role="37wK5l" node="44LDkFPBIdh" resolve="isNewUIActive" />
              <ref role="1Pybhc" node="3RymrDRZj9k" resolve="IconLoadingUtil" />
            </node>
            <node concept="37vLTw" id="3Vy23wLab1u" role="37vLTJ">
              <ref role="3cqZAo" node="3Vy23wLa88l" resolve="myNewUI" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5BCBWAoGsLf" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="5BCBWAoGsLe" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
        <node concept="2AHcQZ" id="5BCBWAoGB1r" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="192HKKPPvg$" role="jymVt" />
    <node concept="3clFb_" id="192HKKPPvgj" role="jymVt">
      <property role="TrG5h" value="invalidate" />
      <node concept="37vLTG" id="192HKKPPvgk" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="192HKKPPvgl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3qTvmN" id="6NxWNcDYgpZ" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="192HKKPPvgn" role="3clF45" />
      <node concept="3Tm1VV" id="192HKKPPvgo" role="1B3o_S" />
      <node concept="3clFbS" id="192HKKPPvgp" role="3clF47">
        <node concept="3SKdUt" id="192HKKPPvgq" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqU_" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqUA" role="1PaTwD">
              <property role="3oM_SC" value="todo" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUB" role="1PaTwD">
              <property role="3oM_SC" value="by-module" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUC" role="1PaTwD">
              <property role="3oM_SC" value="invalidation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6NxWNcDY7CT" role="3cqZAp">
          <node concept="1PaTwC" id="6NxWNcDY7CU" role="1aUNEU">
            <node concept="3oM_SD" id="6NxWNcDY9YE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDY9YF" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDY9YX" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDY9ZO" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDY9ZP" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYa06" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYa0X" role="1PaTwD">
              <property role="3oM_SC" value="record" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYa9W" role="1PaTwD">
              <property role="3oM_SC" value="SModuleReference-&gt;set&lt;IconResource&gt;" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYadf" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYae6" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYahV" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYaiM" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYaj3" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6NxWNcDYajU" role="1PaTwD">
              <property role="3oM_SC" value="invalidate(set&lt;SModuleReference&gt;)" />
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="6NxWNcDXcL5" role="3cqZAp">
          <property role="RRSoG" value="gZ5fksE/warn" />
          <node concept="Xl_RD" id="6NxWNcDXcL7" role="RRSoy">
            <property role="Xl_RC" value="Don't use BaseIconManager#invalidate(set&lt;ReloadableModule&gt;)" />
          </node>
          <node concept="2ShNRf" id="6NxWNcDXfbz" role="RRSow">
            <node concept="1pGfFk" id="6NxWNcDXHUQ" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~Throwable.&lt;init&gt;()" resolve="Throwable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6V208LM0HSZ" role="3cqZAp">
          <node concept="1rXfSq" id="6V208LM0HSX" role="3clFbG">
            <ref role="37wK5l" node="6V208LM0yLj" resolve="invalidate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6NxWNcDXVOS" role="jymVt" />
    <node concept="3clFb_" id="6V208LM0yLj" role="jymVt">
      <property role="TrG5h" value="invalidate" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="6V208LM0yLl" role="3clF45" />
      <node concept="3clFbS" id="6V208LM0yLn" role="3clF47">
        <node concept="3clFbF" id="192HKKPPvgs" role="3cqZAp">
          <node concept="2OqwBi" id="192HKKPPvgt" role="3clFbG">
            <node concept="37vLTw" id="192HKKPPvgu" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPPvgI" resolve="myConceptToIcon" />
            </node>
            <node concept="1yHZxX" id="192HKKPPvgv" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="192HKKPPvgw" role="3cqZAp">
          <node concept="2OqwBi" id="192HKKPPvgx" role="3clFbG">
            <node concept="37vLTw" id="192HKKPPvgy" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPPvg_" resolve="myResToIcon" />
            </node>
            <node concept="1yHZxX" id="192HKKPPvgz" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6NxWNcDX7$C" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPOwsz" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOcza" role="jymVt">
      <property role="TrG5h" value="getIconFor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOczc" role="3clF47">
        <node concept="3clFbJ" id="192HKKPOcz$" role="3cqZAp">
          <node concept="3clFbS" id="192HKKPOcz_" role="3clFbx">
            <node concept="3cpWs8" id="192HKKPOczA" role="3cqZAp">
              <node concept="3cpWsn" id="192HKKPOczB" role="3cpWs9">
                <property role="TrG5h" value="ir" />
                <node concept="3uibUv" id="192HKKPOczC" role="1tU5fm">
                  <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
                </node>
                <node concept="1rXfSq" id="192HKKPOczD" role="33vP2m">
                  <ref role="37wK5l" node="192HKKPOhVD" resolve="getIconForConceptNoCache" />
                  <node concept="37vLTw" id="192HKKPOczE" role="37wK5m">
                    <ref role="3cqZAo" node="192HKKPOc$k" resolve="concept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="192HKKPOczF" role="3cqZAp">
              <node concept="37vLTI" id="192HKKPOczG" role="3clFbG">
                <node concept="37vLTw" id="192HKKPOczH" role="37vLTx">
                  <ref role="3cqZAo" node="192HKKPOczB" resolve="ir" />
                </node>
                <node concept="3EllGN" id="192HKKPOczI" role="37vLTJ">
                  <node concept="37vLTw" id="192HKKPOczJ" role="3ElVtu">
                    <ref role="3cqZAo" node="192HKKPOc$k" resolve="concept" />
                  </node>
                  <node concept="37vLTw" id="192HKKPOczK" role="3ElQJh">
                    <ref role="3cqZAo" node="192HKKPPvgI" resolve="myConceptToIcon" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="192HKKPOczL" role="3clFbw">
            <node concept="2OqwBi" id="192HKKPOczM" role="3fr31v">
              <node concept="37vLTw" id="192HKKPOczN" role="2Oq$k0">
                <ref role="3cqZAo" node="192HKKPPvgI" resolve="myConceptToIcon" />
              </node>
              <node concept="2Nt0df" id="192HKKPOczO" role="2OqNvi">
                <node concept="37vLTw" id="192HKKPOczP" role="38cxEo">
                  <ref role="3cqZAo" node="192HKKPOc$k" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="192HKKPOczQ" role="3cqZAp" />
        <node concept="3cpWs8" id="192HKKPOczR" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOczS" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="3uibUv" id="192HKKPOczT" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
            </node>
            <node concept="3EllGN" id="192HKKPOczU" role="33vP2m">
              <node concept="37vLTw" id="192HKKPOczV" role="3ElVtu">
                <ref role="3cqZAo" node="192HKKPOc$k" resolve="concept" />
              </node>
              <node concept="37vLTw" id="192HKKPOczW" role="3ElQJh">
                <ref role="3cqZAo" node="192HKKPPvgI" resolve="myConceptToIcon" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOczX" role="3cqZAp">
          <node concept="3clFbS" id="192HKKPOczY" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOczZ" role="3cqZAp">
              <node concept="1rXfSq" id="7eHFHBMmUhD" role="3cqZAk">
                <ref role="37wK5l" node="7eHFHBMmPiV" resolve="getDefaultConceptIcon" />
                <node concept="37vLTw" id="7eHFHBMmVum" role="37wK5m">
                  <ref role="3cqZAo" node="192HKKPOc$k" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="192HKKPOc$1" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPOc$2" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPOc$3" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPOczS" resolve="actual" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="192HKKPOc$4" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOc$5" role="3cpWs9">
            <property role="TrG5h" value="icon" />
            <node concept="3uibUv" id="192HKKPOc$6" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="1rXfSq" id="192HKKPOc$7" role="33vP2m">
              <ref role="37wK5l" node="192HKKPP2rb" resolve="getIconForResource" />
              <node concept="37vLTw" id="192HKKPOc$8" role="37wK5m">
                <ref role="3cqZAo" node="192HKKPOczS" resolve="actual" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOc$9" role="3cqZAp">
          <node concept="3clFbS" id="192HKKPOc$a" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOc$b" role="3cqZAp">
              <node concept="1rXfSq" id="7eHFHBMmTdg" role="3cqZAk">
                <ref role="37wK5l" node="7eHFHBMmPiV" resolve="getDefaultConceptIcon" />
                <node concept="37vLTw" id="7eHFHBMmWF0" role="37wK5m">
                  <ref role="3cqZAo" node="192HKKPOc$k" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="192HKKPOc$d" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPOc$e" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPOc$f" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPOc$5" resolve="icon" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="192HKKPOc$g" role="3cqZAp">
          <node concept="37vLTw" id="192HKKPOc$h" role="3cqZAk">
            <ref role="3cqZAo" node="192HKKPOc$5" resolve="icon" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOc$i" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPOc$k" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="192HKKPOc$l" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="192HKKPOc$j" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7eHFHBMmQNh" role="jymVt" />
    <node concept="2YIFZL" id="7eHFHBMmPiV" role="jymVt">
      <property role="TrG5h" value="getDefaultConceptIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7eHFHBMmPiW" role="3clF47">
        <node concept="3clFbF" id="7eHFHBMmPiX" role="3cqZAp">
          <node concept="3K4zz7" id="7eHFHBMmPiY" role="3clFbG">
            <node concept="10M0yZ" id="7eHFHBMmPiZ" role="3K4E3e">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_ROOT_ICON" resolve="DEFAULT_ROOT_ICON" />
            </node>
            <node concept="10M0yZ" id="7eHFHBMmPj0" role="3K4GZi">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_CONCEPT_ICON" resolve="DEFAULT_CONCEPT_ICON" />
            </node>
            <node concept="1Wc70l" id="7eHFHBMmPj1" role="3K4Cdx">
              <node concept="2OqwBi" id="7eHFHBMmPj2" role="3uHU7w">
                <node concept="1eOMI4" id="7eHFHBMmPj3" role="2Oq$k0">
                  <node concept="10QFUN" id="7eHFHBMmPj4" role="1eOMHV">
                    <node concept="3uibUv" id="7eHFHBMmPj5" role="10QFUM">
                      <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                    </node>
                    <node concept="37vLTw" id="7eHFHBMmPj6" role="10QFUP">
                      <ref role="3cqZAo" node="7eHFHBMmPjc" resolve="concept" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7eHFHBMmPj7" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SConcept.isRootable()" resolve="isRootable" />
                </node>
              </node>
              <node concept="2ZW3vV" id="7eHFHBMmPj8" role="3uHU7B">
                <node concept="3uibUv" id="7eHFHBMmPj9" role="2ZW6by">
                  <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                </node>
                <node concept="37vLTw" id="7eHFHBMmPja" role="2ZW6bz">
                  <ref role="3cqZAo" node="7eHFHBMmPjc" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7eHFHBMmPjb" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="7eHFHBMmPjc" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="7eHFHBMmPjd" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7eHFHBMmPje" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7Ix" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOd3m" role="jymVt">
      <property role="TrG5h" value="getIconFor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOd3t" role="3clF47">
        <node concept="3cpWs6" id="7gJmMGMF3Bf" role="3cqZAp">
          <node concept="1rXfSq" id="7gJmMGMF5B2" role="3cqZAk">
            <ref role="37wK5l" node="7gJmMGMEHdc" resolve="getIconFor1" />
            <node concept="37vLTw" id="7gJmMGMF7tm" role="37wK5m">
              <ref role="3cqZAo" node="192HKKPOd3q" resolve="node" />
            </node>
            <node concept="3clFbT" id="7gJmMGMF9N_" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOd3p" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPOd3q" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="192HKKPOd3r" role="1tU5fm" />
        <node concept="2AHcQZ" id="192HKKPOd3s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="192HKKPOd3o" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7gJmMGMEJr4" role="jymVt" />
    <node concept="3clFb_" id="7gJmMGMEHdc" role="jymVt">
      <property role="TrG5h" value="getIconFor1" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7gJmMGMEHdd" role="3clF47">
        <node concept="3clFbJ" id="7gJmMGMEHde" role="3cqZAp">
          <node concept="3fqX7Q" id="7gJmMGMEHdf" role="3clFbw">
            <node concept="2OqwBi" id="7gJmMGMEHdg" role="3fr31v">
              <node concept="2OqwBi" id="7gJmMGMEHdh" role="2Oq$k0">
                <node concept="37vLTw" id="7gJmMGMEHdi" role="2Oq$k0">
                  <ref role="3cqZAo" node="7gJmMGMEHe2" resolve="node" />
                </node>
                <node concept="2yIwOk" id="7gJmMGMEHdj" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="7gJmMGMEHdk" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isValid()" resolve="isValid" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7gJmMGMEHdl" role="3clFbx">
            <node concept="3cpWs6" id="7gJmMGMEHdm" role="3cqZAp">
              <node concept="10M0yZ" id="7gJmMGMEHdn" role="3cqZAk">
                <ref role="3cqZAo" to="xnls:~IdeIcons.UNKNOWN_ICON" resolve="UNKNOWN_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7gJmMGMEHdo" role="3cqZAp" />
        <node concept="3cpWs8" id="7gJmMGMEHdp" role="3cqZAp">
          <node concept="3cpWsn" id="7gJmMGMEHdq" role="3cpWs9">
            <property role="TrG5h" value="mainIcon" />
            <node concept="3uibUv" id="7gJmMGMEHdr" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="1rXfSq" id="7gJmMGMEHds" role="33vP2m">
              <ref role="37wK5l" node="192HKKPOepT" resolve="getIconFromConstraints" />
              <node concept="37vLTw" id="7gJmMGMEHdt" role="37wK5m">
                <ref role="3cqZAo" node="7gJmMGMEHe2" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7gJmMGMEHdu" role="3cqZAp">
          <node concept="3clFbS" id="7gJmMGMEHdv" role="3clFbx">
            <node concept="3clFbF" id="7gJmMGMEHdw" role="3cqZAp">
              <node concept="37vLTI" id="7gJmMGMEHdx" role="3clFbG">
                <node concept="37vLTw" id="7gJmMGMEHdy" role="37vLTJ">
                  <ref role="3cqZAo" node="7gJmMGMEHdq" resolve="mainIcon" />
                </node>
                <node concept="1rXfSq" id="7gJmMGMEHdz" role="37vLTx">
                  <ref role="37wK5l" node="192HKKPOcza" resolve="getIconFor" />
                  <node concept="2OqwBi" id="7gJmMGMEHd$" role="37wK5m">
                    <node concept="37vLTw" id="7gJmMGMEHd_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7gJmMGMEHe2" resolve="node" />
                    </node>
                    <node concept="2yIwOk" id="7gJmMGMEHdA" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7gJmMGMEHdB" role="3clFbw">
            <node concept="10Nm6u" id="7gJmMGMEHdC" role="3uHU7w" />
            <node concept="37vLTw" id="7gJmMGMEHdD" role="3uHU7B">
              <ref role="3cqZAo" node="7gJmMGMEHdq" resolve="mainIcon" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7gJmMGMEHdE" role="3cqZAp">
          <node concept="3clFbC" id="7gJmMGMEHdF" role="3clFbw">
            <node concept="37vLTw" id="7gJmMGMEHdG" role="3uHU7B">
              <ref role="3cqZAo" node="7gJmMGMEHdq" resolve="mainIcon" />
            </node>
            <node concept="10Nm6u" id="7gJmMGMEHdH" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7gJmMGMEHdI" role="3clFbx">
            <node concept="3clFbJ" id="7gJmMGMEHdJ" role="3cqZAp">
              <node concept="2OqwBi" id="7gJmMGMEHdK" role="3clFbw">
                <node concept="2OqwBi" id="7gJmMGMEHdL" role="2Oq$k0">
                  <node concept="37vLTw" id="7gJmMGMEHdM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7gJmMGMEHe2" resolve="node" />
                  </node>
                  <node concept="1mfA1w" id="7gJmMGMEHdN" role="2OqNvi" />
                </node>
                <node concept="3w_OXm" id="7gJmMGMEHdO" role="2OqNvi" />
              </node>
              <node concept="9aQIb" id="7gJmMGMEHdP" role="9aQIa">
                <node concept="3clFbS" id="7gJmMGMEHdQ" role="9aQI4">
                  <node concept="3cpWs6" id="7gJmMGMEHdR" role="3cqZAp">
                    <node concept="10M0yZ" id="7gJmMGMEHdS" role="3cqZAk">
                      <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                      <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_NODE_ICON" resolve="DEFAULT_NODE_ICON" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7gJmMGMEHdT" role="3clFbx">
                <node concept="3cpWs6" id="7gJmMGMEHdU" role="3cqZAp">
                  <node concept="10M0yZ" id="7gJmMGMEHdV" role="3cqZAk">
                    <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_ROOT_ICON" resolve="DEFAULT_ROOT_ICON" />
                    <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7gJmMGMEHdW" role="3cqZAp" />
        <node concept="3clFbJ" id="7gJmMGMESAJ" role="3cqZAp">
          <node concept="3clFbS" id="7gJmMGMESAL" role="3clFbx">
            <node concept="3cpWs6" id="7gJmMGMEXz5" role="3cqZAp">
              <node concept="37vLTw" id="7gJmMGMEXBj" role="3cqZAk">
                <ref role="3cqZAo" node="7gJmMGMEHdq" resolve="mainIcon" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7gJmMGMEUom" role="3clFbw">
            <node concept="37vLTw" id="7gJmMGMEVvV" role="3fr31v">
              <ref role="3cqZAo" node="7gJmMGMENHK" resolve="addFeatures" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7gJmMGMEHdX" role="3cqZAp">
          <node concept="1rXfSq" id="7gJmMGMEHdY" role="3cqZAk">
            <ref role="37wK5l" node="192HKKPOeP2" resolve="addIconFeatures" />
            <node concept="37vLTw" id="7gJmMGMEHdZ" role="37wK5m">
              <ref role="3cqZAo" node="7gJmMGMEHdq" resolve="mainIcon" />
            </node>
            <node concept="37vLTw" id="7gJmMGMEHe0" role="37wK5m">
              <ref role="3cqZAo" node="7gJmMGMEHe2" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7gJmMGMEHe1" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="7gJmMGMEHe2" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7gJmMGMEHe3" role="1tU5fm" />
        <node concept="2AHcQZ" id="7gJmMGMEHe4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7gJmMGMENHK" role="3clF46">
        <property role="TrG5h" value="addFeatures" />
        <node concept="10P_77" id="7gJmMGMEQn0" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7gJmMGMEHe5" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7JL" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOd$O" role="jymVt">
      <property role="TrG5h" value="getIconFor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOd$S" role="3clF47">
        <node concept="3clFbJ" id="192HKKPOd$T" role="3cqZAp">
          <node concept="3clFbC" id="192HKKPOd$U" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPOd$V" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPOd$W" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPOd_A" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOd$X" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOd$Y" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOd$Z" role="3cqZAk">
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                <ref role="3cqZAo" to="xnls:~IdeIcons.UNKNOWN_ICON" resolve="UNKNOWN_ICON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="192HKKPOd_0" role="3cqZAp" />
        <node concept="3cpWs8" id="192HKKPOd_1" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOd_2" role="3cpWs9">
            <property role="TrG5h" value="newAspect" />
            <node concept="3uibUv" id="192HKKPOd_3" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageAspectDescriptor" resolve="LanguageAspectDescriptor" />
            </node>
            <node concept="2YIFZM" id="192HKKPOd_4" role="33vP2m">
              <ref role="37wK5l" to="vndm:~LanguageAspectSupport.getNewAspect(org.jetbrains.mps.openapi.model.SModel)" resolve="getNewAspect" />
              <ref role="1Pybhc" to="vndm:~LanguageAspectSupport" resolve="LanguageAspectSupport" />
              <node concept="37vLTw" id="192HKKPOd_5" role="37wK5m">
                <ref role="3cqZAo" node="192HKKPOd_A" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOd_6" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="192HKKPOd_7" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOd_8" role="3cqZAp">
              <node concept="1rXfSq" id="192HKKPOd_9" role="3cqZAk">
                <ref role="37wK5l" node="192HKKPP2rb" resolve="getIconForResource" />
                <node concept="2OqwBi" id="192HKKPOd_a" role="37wK5m">
                  <node concept="37vLTw" id="192HKKPOd_b" role="2Oq$k0">
                    <ref role="3cqZAo" node="192HKKPOd_2" resolve="newAspect" />
                  </node>
                  <node concept="liA8E" id="192HKKPOd_c" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageAspectDescriptor.getIconResource()" resolve="getIconResource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="192HKKPOd_d" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPOd_e" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPOd_f" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPOd_2" resolve="newAspect" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="192HKKPOd_g" role="3cqZAp" />
        <node concept="3clFbJ" id="192HKKPOd_h" role="3cqZAp">
          <node concept="2YIFZM" id="192HKKPOd_i" role="3clFbw">
            <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
            <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
            <node concept="37vLTw" id="192HKKPOd_j" role="37wK5m">
              <ref role="3cqZAo" node="192HKKPOd_A" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOd_k" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOd_l" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOd_m" role="3cqZAk">
                <ref role="3cqZAo" to="xnls:~IdeIcons.TEMPLATES_MODEL_ICON" resolve="TEMPLATES_MODEL_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOd_n" role="3cqZAp">
          <node concept="2YIFZM" id="192HKKPOd_o" role="3clFbw">
            <ref role="37wK5l" to="w1kc:~Language.isLanguageOwnedAccessoryModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isLanguageOwnedAccessoryModel" />
            <ref role="1Pybhc" to="w1kc:~Language" resolve="Language" />
            <node concept="37vLTw" id="192HKKPOd_p" role="37wK5m">
              <ref role="3cqZAo" node="192HKKPOd_A" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOd_q" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOd_r" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOd_s" role="3cqZAk">
                <ref role="3cqZAo" to="xnls:~IdeIcons.ACCESSORY_MODEL_ICON" resolve="ACCESSORY_MODEL_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOd_t" role="3cqZAp">
          <node concept="2YIFZM" id="192HKKPOd_u" role="3clFbw">
            <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
            <ref role="37wK5l" to="w1kc:~SModelStereotype.isTestModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isTestModel" />
            <node concept="37vLTw" id="192HKKPOd_v" role="37wK5m">
              <ref role="3cqZAo" node="192HKKPOd_A" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOd_w" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOd_x" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOd_y" role="3cqZAk">
                <ref role="3cqZAo" to="xnls:~IdeIcons.TEST_MODEL_ICON" resolve="TEST_MODEL_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="192HKKPOd_z" role="3cqZAp" />
        <node concept="3cpWs6" id="192HKKPOd_$" role="3cqZAp">
          <node concept="10M0yZ" id="192HKKPOd__" role="3cqZAk">
            <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
            <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOd$R" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPOd_A" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="192HKKPOd_B" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm1VV" id="192HKKPOd$Q" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7KO" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOe1b" role="jymVt">
      <property role="TrG5h" value="getIconFor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOe1h" role="3clF47">
        <node concept="3clFbJ" id="192HKKPOe1i" role="3cqZAp">
          <node concept="2ZW3vV" id="192HKKPOe1j" role="3clFbw">
            <node concept="37vLTw" id="192HKKPOe1k" role="2ZW6bz">
              <ref role="3cqZAo" node="192HKKPOe1f" resolve="module" />
            </node>
            <node concept="3uibUv" id="192HKKPOe1l" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOe1m" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOe1n" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOe1o" role="3cqZAk">
                <ref role="3cqZAo" to="xnls:~IdeIcons.GENERATOR_ICON" resolve="GENERATOR_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOe1p" role="3cqZAp">
          <node concept="2ZW3vV" id="192HKKPOe1q" role="3clFbw">
            <node concept="37vLTw" id="192HKKPOe1r" role="2ZW6bz">
              <ref role="3cqZAo" node="192HKKPOe1f" resolve="module" />
            </node>
            <node concept="3uibUv" id="192HKKPOe1s" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOe1t" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOe1u" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOe1v" role="3cqZAk">
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                <ref role="3cqZAo" to="xnls:~IdeIcons.LANGUAGE_ICON" resolve="LANGUAGE_ICON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOe1w" role="3cqZAp">
          <node concept="2ZW3vV" id="192HKKPOe1x" role="3clFbw">
            <node concept="37vLTw" id="192HKKPOe1y" role="2ZW6bz">
              <ref role="3cqZAo" node="192HKKPOe1f" resolve="module" />
            </node>
            <node concept="3uibUv" id="192HKKPOe1z" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOe1$" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOe1_" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOe1A" role="3cqZAk">
                <ref role="3cqZAo" to="xnls:~IdeIcons.SOLUTION_ICON" resolve="SOLUTION_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOe1B" role="3cqZAp">
          <node concept="2ZW3vV" id="192HKKPOe1C" role="3clFbw">
            <node concept="37vLTw" id="192HKKPOe1D" role="2ZW6bz">
              <ref role="3cqZAo" node="192HKKPOe1f" resolve="module" />
            </node>
            <node concept="3uibUv" id="192HKKPOe1E" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~DevKit" resolve="DevKit" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOe1F" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOe1G" role="3cqZAp">
              <node concept="10M0yZ" id="192HKKPOe1H" role="3cqZAk">
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                <ref role="3cqZAo" to="xnls:~IdeIcons.DEVKIT_ICON" resolve="DEVKIT_ICON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="192HKKPOe1I" role="3cqZAp">
          <node concept="10M0yZ" id="192HKKPOe1J" role="3cqZAk">
            <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
            <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_ICON" resolve="DEFAULT_ICON" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOe1e" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPOe1f" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="192HKKPOe1g" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="192HKKPOe1d" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7LC" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOepT" role="jymVt">
      <property role="TrG5h" value="getIconFromConstraints" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOepZ" role="3clF47">
        <node concept="3cpWs8" id="1zjDZIUDXH4" role="3cqZAp">
          <node concept="3cpWsn" id="1zjDZIUDXH3" role="3cpWs9">
            <property role="TrG5h" value="altIcon" />
            <node concept="3uibUv" id="1zjDZIUDXH5" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
            </node>
            <node concept="10Nm6u" id="1zjDZIUDXH6" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="1zjDZIUDXHr" role="3cqZAp">
          <node concept="3uVAMA" id="1zjDZIUDXHs" role="1zxBo5">
            <node concept="3clFbS" id="1zjDZIUDXHm" role="1zc67A">
              <node concept="RRSsy" id="1zjDZIUE19n" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="1zjDZIUDXHp" role="RRSoy">
                  <property role="Xl_RC" value="Exception in user code" />
                </node>
                <node concept="37vLTw" id="1zjDZIUE1mO" role="RRSow">
                  <ref role="3cqZAo" node="1zjDZIUDXHi" resolve="t" />
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="1zjDZIUDXHi" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="1zjDZIUDXHk" role="1tU5fm">
                <node concept="3uibUv" id="1zjDZIUDXHj" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1zjDZIUDXH8" role="1zxBo7">
            <node concept="3clFbF" id="1zjDZIUDXH9" role="3cqZAp">
              <node concept="37vLTI" id="1zjDZIUDXHa" role="3clFbG">
                <node concept="37vLTw" id="1zjDZIUDXHb" role="37vLTJ">
                  <ref role="3cqZAo" node="1zjDZIUDXH3" resolve="altIcon" />
                </node>
                <node concept="2OqwBi" id="1zjDZIUDXHc" role="37vLTx">
                  <node concept="2OqwBi" id="1zjDZIUDZaa" role="2Oq$k0">
                    <node concept="37vLTw" id="1zjDZIUDZa9" role="2Oq$k0">
                      <ref role="3cqZAo" node="5BCBWAoGyNF" resolve="myConceptRegistry" />
                    </node>
                    <node concept="liA8E" id="1zjDZIUDZab" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~ConceptRegistry.getConstraintsDescriptor(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConstraintsDescriptor" />
                      <node concept="2OqwBi" id="1zjDZIUDZS_" role="37wK5m">
                        <node concept="37vLTw" id="1zjDZIUDZH2" role="2Oq$k0">
                          <ref role="3cqZAo" node="192HKKPOepX" resolve="node" />
                        </node>
                        <node concept="2yIwOk" id="1zjDZIUE0id" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1zjDZIUDXHg" role="2OqNvi">
                    <ref role="37wK5l" to="ze1j:~ConstraintsDescriptor.getInstanceIcon(org.jetbrains.mps.openapi.model.SNode)" resolve="getInstanceIcon" />
                    <node concept="37vLTw" id="1zjDZIUDXHh" role="37wK5m">
                      <ref role="3cqZAo" node="192HKKPOepX" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOeqc" role="3cqZAp">
          <node concept="3clFbS" id="192HKKPOeqd" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOeqe" role="3cqZAp">
              <node concept="10Nm6u" id="192HKKPOeqf" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="192HKKPOeqg" role="3clFbw">
            <node concept="37vLTw" id="192HKKPOeqh" role="3uHU7B">
              <ref role="3cqZAo" node="1zjDZIUDXH3" resolve="altIcon" />
            </node>
            <node concept="10Nm6u" id="192HKKPOeqi" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="192HKKPOeqj" role="3cqZAp">
          <node concept="1rXfSq" id="192HKKPOeqk" role="3cqZAk">
            <ref role="37wK5l" node="192HKKPP2rb" resolve="getIconForResource" />
            <node concept="37vLTw" id="192HKKPOeql" role="37wK5m">
              <ref role="3cqZAo" node="1zjDZIUDXH3" resolve="altIcon" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOepW" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPOepX" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="192HKKPOepY" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="192HKKPOepV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7M5" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOeP2" role="jymVt">
      <property role="TrG5h" value="addIconFeatures" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOePa" role="3clF47">
        <node concept="3cpWs8" id="192HKKPOePb" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOePc" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="192HKKPOePd" role="1tU5fm" />
            <node concept="2OqwBi" id="192HKKPOePe" role="33vP2m">
              <node concept="37vLTw" id="192HKKPOePf" role="2Oq$k0">
                <ref role="3cqZAo" node="192HKKPOeP8" resolve="node" />
              </node>
              <node concept="I4A8Y" id="192HKKPOePg" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOePh" role="3cqZAp">
          <node concept="3clFbC" id="192HKKPOePm" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPOePn" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPOePo" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPOePc" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOePp" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOePq" role="3cqZAp">
              <node concept="37vLTw" id="192HKKPOePr" role="3cqZAk">
                <ref role="3cqZAo" node="192HKKPOeP6" resolve="mainIcon" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOePs" role="3cqZAp">
          <node concept="22lmx$" id="192HKKPOePt" role="3clFbw">
            <node concept="2OqwBi" id="192HKKPOePu" role="3uHU7w">
              <node concept="liA8E" id="192HKKPOePv" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
              </node>
              <node concept="2JrnkZ" id="192HKKPOePw" role="2Oq$k0">
                <node concept="1eOMI4" id="192HKKPOePx" role="2JrQYb">
                  <node concept="10QFUN" id="192HKKPOePy" role="1eOMHV">
                    <node concept="37vLTw" id="192HKKPOePz" role="10QFUP">
                      <ref role="3cqZAo" node="192HKKPOePc" resolve="model" />
                    </node>
                    <node concept="3uibUv" id="192HKKPOeP$" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="192HKKPOeP_" role="3uHU7B">
              <node concept="3fqX7Q" id="192HKKPOePA" role="1eOMHV">
                <node concept="1eOMI4" id="192HKKPOePB" role="3fr31v">
                  <node concept="2ZW3vV" id="192HKKPOePC" role="1eOMHV">
                    <node concept="2JrnkZ" id="192HKKPOePD" role="2ZW6bz">
                      <node concept="37vLTw" id="192HKKPOePE" role="2JrQYb">
                        <ref role="3cqZAo" node="192HKKPOePc" resolve="model" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="192HKKPOePF" role="2ZW6by">
                      <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOePG" role="3clFbx">
            <node concept="3clFbF" id="192HKKPOePH" role="3cqZAp">
              <node concept="37vLTI" id="192HKKPOePI" role="3clFbG">
                <node concept="37vLTw" id="192HKKPOePJ" role="37vLTJ">
                  <ref role="3cqZAo" node="192HKKPOeP6" resolve="mainIcon" />
                </node>
                <node concept="2ShNRf" id="192HKKPOePK" role="37vLTx">
                  <node concept="1pGfFk" id="192HKKPOePL" role="2ShVmc">
                    <ref role="37wK5l" to="lzb2:~LayeredIcon.&lt;init&gt;(javax.swing.Icon...)" resolve="LayeredIcon" />
                    <node concept="37vLTw" id="192HKKPOePM" role="37wK5m">
                      <ref role="3cqZAo" node="192HKKPOeP6" resolve="mainIcon" />
                    </node>
                    <node concept="10M0yZ" id="192HKKPOePN" role="37wK5m">
                      <ref role="3cqZAo" to="9w4s:~PlatformIcons.LOCKED_ICON" resolve="LOCKED_ICON" />
                      <ref role="1PxDUh" to="9w4s:~PlatformIcons" resolve="PlatformIcons" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="192HKKPOePO" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOePP" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="192HKKPOePQ" role="1tU5fm">
              <ref role="3uigEE" to="lzb2:~RowIcon" resolve="RowIcon" />
            </node>
            <node concept="2ShNRf" id="192HKKPOePR" role="33vP2m">
              <node concept="1pGfFk" id="192HKKPOePS" role="2ShVmc">
                <ref role="37wK5l" to="lzb2:~RowIcon.&lt;init&gt;(int)" resolve="RowIcon" />
                <node concept="3cmrfG" id="192HKKPOePT" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="192HKKPOePU" role="3cqZAp">
          <node concept="2OqwBi" id="192HKKPOePV" role="3clFbG">
            <node concept="37vLTw" id="192HKKPOePW" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPOePP" resolve="result" />
            </node>
            <node concept="liA8E" id="192HKKPOePX" role="2OqNvi">
              <ref role="37wK5l" to="lzb2:~RowIcon.setIcon(javax.swing.Icon,int)" resolve="setIcon" />
              <node concept="37vLTw" id="192HKKPOePY" role="37wK5m">
                <ref role="3cqZAo" node="192HKKPOeP6" resolve="mainIcon" />
              </node>
              <node concept="3cmrfG" id="192HKKPOePZ" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="192HKKPOeQ0" role="3cqZAp">
          <node concept="2OqwBi" id="192HKKPOeQ1" role="3clFbG">
            <node concept="37vLTw" id="192HKKPOeQ2" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPOePP" resolve="result" />
            </node>
            <node concept="liA8E" id="192HKKPOeQ3" role="2OqNvi">
              <ref role="37wK5l" to="lzb2:~RowIcon.setIcon(javax.swing.Icon,int)" resolve="setIcon" />
              <node concept="1rXfSq" id="192HKKPOeQ4" role="37wK5m">
                <ref role="37wK5l" node="192HKKPP2rb" resolve="getIconForResource" />
                <node concept="2OqwBi" id="192HKKPOeQ5" role="37wK5m">
                  <node concept="37vLTw" id="192HKKPOeQ6" role="2Oq$k0">
                    <ref role="3cqZAo" node="192HKKPOeP8" resolve="node" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORe$f" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:6TtJ6IUjtJX" resolve="getSideIcon" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="192HKKPOeQ8" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="192HKKPOeQ9" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOeQa" role="3cpWs9">
            <property role="TrG5h" value="markIcons" />
            <node concept="_YKpA" id="192HKKPOeQb" role="1tU5fm">
              <node concept="3uibUv" id="192HKKPOeQc" role="_ZDj9">
                <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
              </node>
            </node>
            <node concept="2OqwBi" id="192HKKPOeQd" role="33vP2m">
              <node concept="2OqwBi" id="192HKKPOeQe" role="2Oq$k0">
                <node concept="2OqwBi" id="192HKKPOeQf" role="2Oq$k0">
                  <node concept="2OqwBi" id="192HKKPOeQg" role="2Oq$k0">
                    <node concept="37vLTw" id="192HKKPOeQh" role="2Oq$k0">
                      <ref role="3cqZAo" node="192HKKPOeP8" resolve="node" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORe$h" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:6TtJ6IUkhQJ" resolve="getIconMarks" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="192HKKPOeQj" role="2OqNvi">
                    <node concept="1bVj0M" id="192HKKPOeQk" role="23t8la">
                      <node concept="3clFbS" id="192HKKPOeQl" role="1bW5cS">
                        <node concept="3clFbF" id="192HKKPOeQm" role="3cqZAp">
                          <node concept="1rXfSq" id="192HKKPOeQn" role="3clFbG">
                            <ref role="37wK5l" node="192HKKPP2rb" resolve="getIconForResource" />
                            <node concept="37vLTw" id="192HKKPOeQo" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0Y4W" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Y4W" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Y4X" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="192HKKPOeQr" role="2OqNvi">
                  <node concept="1bVj0M" id="192HKKPOeQs" role="23t8la">
                    <node concept="3clFbS" id="192HKKPOeQt" role="1bW5cS">
                      <node concept="3clFbF" id="192HKKPOeQu" role="3cqZAp">
                        <node concept="3y3z36" id="192HKKPOeQv" role="3clFbG">
                          <node concept="10Nm6u" id="192HKKPOeQw" role="3uHU7w" />
                          <node concept="37vLTw" id="192HKKPOeQx" role="3uHU7B">
                            <ref role="3cqZAo" node="5W7E4fV0Y4Y" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Y4Y" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Y4Z" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="192HKKPOeQ$" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOeQ_" role="3cqZAp">
          <node concept="2OqwBi" id="192HKKPOeQA" role="3clFbw">
            <node concept="37vLTw" id="192HKKPOeQB" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPOeQa" resolve="markIcons" />
            </node>
            <node concept="3GX2aA" id="192HKKPOeQC" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="192HKKPOeQD" role="3clFbx">
            <node concept="3cpWs8" id="192HKKPOeQE" role="3cqZAp">
              <node concept="3cpWsn" id="192HKKPOeQF" role="3cpWs9">
                <property role="TrG5h" value="layeredIcon" />
                <node concept="3uibUv" id="192HKKPOeQG" role="1tU5fm">
                  <ref role="3uigEE" to="lzb2:~LayeredIcon" resolve="LayeredIcon" />
                </node>
                <node concept="2ShNRf" id="192HKKPOeQH" role="33vP2m">
                  <node concept="1pGfFk" id="192HKKPOeQI" role="2ShVmc">
                    <ref role="37wK5l" to="lzb2:~LayeredIcon.&lt;init&gt;(int)" resolve="LayeredIcon" />
                    <node concept="3cpWs3" id="192HKKPOeQJ" role="37wK5m">
                      <node concept="2OqwBi" id="192HKKPOeQK" role="3uHU7B">
                        <node concept="37vLTw" id="192HKKPOeQL" role="2Oq$k0">
                          <ref role="3cqZAo" node="192HKKPOeQa" resolve="markIcons" />
                        </node>
                        <node concept="34oBXx" id="192HKKPOeQM" role="2OqNvi" />
                      </node>
                      <node concept="3cmrfG" id="192HKKPOeQN" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="192HKKPOeQO" role="3cqZAp">
              <node concept="2OqwBi" id="192HKKPOeQP" role="3clFbG">
                <node concept="37vLTw" id="192HKKPOeQQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="192HKKPOeQF" resolve="layeredIcon" />
                </node>
                <node concept="liA8E" id="192HKKPOeQR" role="2OqNvi">
                  <ref role="37wK5l" to="lzb2:~LayeredIcon.setIcon(javax.swing.Icon,int)" resolve="setIcon" />
                  <node concept="37vLTw" id="192HKKPOeQS" role="37wK5m">
                    <ref role="3cqZAo" node="192HKKPOePP" resolve="result" />
                  </node>
                  <node concept="3cmrfG" id="192HKKPOeQT" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="192HKKPOeQU" role="3cqZAp">
              <node concept="3eOVzh" id="192HKKPOeQV" role="1Dwp0S">
                <node concept="37vLTw" id="192HKKPOeQW" role="3uHU7B">
                  <ref role="3cqZAo" node="192HKKPOeR0" resolve="i" />
                </node>
                <node concept="2OqwBi" id="192HKKPOeQX" role="3uHU7w">
                  <node concept="37vLTw" id="192HKKPOeQY" role="2Oq$k0">
                    <ref role="3cqZAo" node="192HKKPOeQa" resolve="markIcons" />
                  </node>
                  <node concept="34oBXx" id="192HKKPOeQZ" role="2OqNvi" />
                </node>
              </node>
              <node concept="3cpWsn" id="192HKKPOeR0" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="192HKKPOeR1" role="1tU5fm" />
                <node concept="3cmrfG" id="192HKKPOeR2" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3uNrnE" id="192HKKPOeR3" role="1Dwrff">
                <node concept="37vLTw" id="192HKKPOeR4" role="2$L3a6">
                  <ref role="3cqZAo" node="192HKKPOeR0" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="192HKKPOeR5" role="2LFqv$">
                <node concept="3clFbF" id="192HKKPOeR6" role="3cqZAp">
                  <node concept="2OqwBi" id="192HKKPOeR7" role="3clFbG">
                    <node concept="37vLTw" id="192HKKPOeR8" role="2Oq$k0">
                      <ref role="3cqZAo" node="192HKKPOeQF" resolve="layeredIcon" />
                    </node>
                    <node concept="liA8E" id="192HKKPOeR9" role="2OqNvi">
                      <ref role="37wK5l" to="lzb2:~LayeredIcon.setIcon(javax.swing.Icon,int)" resolve="setIcon" />
                      <node concept="2OqwBi" id="192HKKPOeRa" role="37wK5m">
                        <node concept="37vLTw" id="192HKKPOeRb" role="2Oq$k0">
                          <ref role="3cqZAo" node="192HKKPOeQa" resolve="markIcons" />
                        </node>
                        <node concept="34jXtK" id="192HKKPOeRc" role="2OqNvi">
                          <node concept="37vLTw" id="192HKKPOeRd" role="25WWJ7">
                            <ref role="3cqZAo" node="192HKKPOeR0" resolve="i" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="192HKKPOeRe" role="37wK5m">
                        <node concept="37vLTw" id="192HKKPOeRf" role="3uHU7B">
                          <ref role="3cqZAo" node="192HKKPOeR0" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="192HKKPOeRg" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="192HKKPOeRh" role="3cqZAp">
              <node concept="37vLTw" id="192HKKPOeRi" role="3cqZAk">
                <ref role="3cqZAo" node="192HKKPOeQF" resolve="layeredIcon" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="192HKKPOeRj" role="3cqZAp">
          <node concept="37vLTw" id="192HKKPOeRk" role="3cqZAk">
            <ref role="3cqZAo" node="192HKKPOePP" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOeP5" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPOeP6" role="3clF46">
        <property role="TrG5h" value="mainIcon" />
        <node concept="3uibUv" id="192HKKPOeP7" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="37vLTG" id="192HKKPOeP8" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="192HKKPOeP9" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="192HKKPOeP4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7Ot" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOhVD" role="jymVt">
      <property role="TrG5h" value="getIconForConceptNoCache" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOhVF" role="3clF47">
        <node concept="3cpWs8" id="4A0ujlgqRQ6" role="3cqZAp">
          <node concept="3cpWsn" id="4A0ujlgqRQ9" role="3cpWs9">
            <property role="TrG5h" value="seen" />
            <node concept="3uibUv" id="4A0ujlgqRQb" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="4A0ujlgqRQc" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              </node>
            </node>
            <node concept="2ShNRf" id="4A0ujlgqRQd" role="33vP2m">
              <node concept="1pGfFk" id="4A0ujlgqRQf" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="4A0ujlgqRQg" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="192HKKPOhVG" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOhVH" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="5BCBWAoFG_a" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
            </node>
            <node concept="37vLTw" id="192HKKPOhVL" role="33vP2m">
              <ref role="3cqZAo" node="192HKKPOhXp" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="192HKKPOhVN" role="3cqZAp">
          <node concept="1Wc70l" id="4A0ujlgreat" role="2$JKZa">
            <node concept="3y3z36" id="4A0ujlgreaw" role="3uHU7B">
              <node concept="37vLTw" id="4A0ujlgreaz" role="3uHU7B">
                <ref role="3cqZAo" node="192HKKPOhVH" resolve="current" />
              </node>
              <node concept="10Nm6u" id="4A0ujlgrea$" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="4A0ujlgrea_" role="3uHU7w">
              <node concept="37vLTw" id="4A0ujlgreaC" role="2Oq$k0">
                <ref role="3cqZAo" node="4A0ujlgqRQ9" resolve="seen" />
              </node>
              <node concept="liA8E" id="4A0ujlgreaD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4A0ujlgreaE" role="37wK5m">
                  <ref role="3cqZAo" node="192HKKPOhVH" resolve="current" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOhVR" role="2LFqv$">
            <node concept="3cpWs8" id="192HKKPOhVS" role="3cqZAp">
              <node concept="3cpWsn" id="192HKKPOhVT" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ir" />
                <node concept="3uibUv" id="192HKKPOhVU" role="1tU5fm">
                  <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
                </node>
                <node concept="1rXfSq" id="192HKKPOhVV" role="33vP2m">
                  <ref role="37wK5l" node="192HKKPOjSb" resolve="getIconForExactConcept" />
                  <node concept="37vLTw" id="192HKKPOhVW" role="37wK5m">
                    <ref role="3cqZAo" node="192HKKPOhVH" resolve="current" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="192HKKPOhVX" role="3cqZAp">
              <node concept="3y3z36" id="192HKKPOhVY" role="3clFbw">
                <node concept="37vLTw" id="192HKKPOhVZ" role="3uHU7B">
                  <ref role="3cqZAo" node="192HKKPOhVT" resolve="ir" />
                </node>
                <node concept="10Nm6u" id="192HKKPOhW0" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="192HKKPOhW1" role="3clFbx">
                <node concept="3cpWs6" id="192HKKPOhW2" role="3cqZAp">
                  <node concept="37vLTw" id="192HKKPOhW3" role="3cqZAk">
                    <ref role="3cqZAo" node="192HKKPOhVT" resolve="ir" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="192HKKPOhW4" role="3cqZAp">
              <node concept="37vLTI" id="192HKKPOhW5" role="3clFbG">
                <node concept="37vLTw" id="192HKKPOhW6" role="37vLTJ">
                  <ref role="3cqZAo" node="192HKKPOhVH" resolve="current" />
                </node>
                <node concept="3K4zz7" id="192HKKPOhW7" role="37vLTx">
                  <node concept="1eOMI4" id="192HKKPOhW8" role="3K4Cdx">
                    <node concept="2ZW3vV" id="192HKKPOhW9" role="1eOMHV">
                      <node concept="37vLTw" id="192HKKPOhWa" role="2ZW6bz">
                        <ref role="3cqZAo" node="192HKKPOhVH" resolve="current" />
                      </node>
                      <node concept="3uibUv" id="5BCBWAoFR9A" role="2ZW6by">
                        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="192HKKPOhWl" role="3K4GZi" />
                  <node concept="2OqwBi" id="192HKKPOhWe" role="3K4E3e">
                    <node concept="1eOMI4" id="192HKKPOhWf" role="2Oq$k0">
                      <node concept="10QFUN" id="192HKKPOhWg" role="1eOMHV">
                        <node concept="37vLTw" id="192HKKPOhWh" role="10QFUP">
                          <ref role="3cqZAo" node="192HKKPOhVH" resolve="current" />
                        </node>
                        <node concept="3uibUv" id="5BCBWAoFUxi" role="10QFUM">
                          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="192HKKPOhWj" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SConcept.getSuperConcept()" resolve="getSuperConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="192HKKPOhXl" role="3cqZAp">
          <node concept="10Nm6u" id="192HKKPOhXm" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOhXn" role="3clF45">
        <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
      </node>
      <node concept="37vLTG" id="192HKKPOhXp" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="192HKKPOhXq" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm6S6" id="192HKKPOhXo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7Qf" role="jymVt" />
    <node concept="3clFb_" id="192HKKPOjSb" role="jymVt">
      <property role="TrG5h" value="getIconForExactConcept" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPOjSd" role="3clF47">
        <node concept="3cpWs8" id="192HKKPOjSe" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPOjSf" role="3cpWs9">
            <property role="TrG5h" value="pres" />
            <node concept="3uibUv" id="192HKKPOjSg" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
            </node>
            <node concept="2OqwBi" id="192HKKPOjSh" role="33vP2m">
              <node concept="37vLTw" id="5BCBWAoGMRy" role="2Oq$k0">
                <ref role="3cqZAo" node="5BCBWAoGyNF" resolve="myConceptRegistry" />
              </node>
              <node concept="liA8E" id="192HKKPOjSj" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getConceptProperties(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConceptProperties" />
                <node concept="37vLTw" id="192HKKPOjSk" role="37wK5m">
                  <ref role="3cqZAo" node="192HKKPOjSy" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="192HKKPOjSl" role="3cqZAp">
          <node concept="3clFbC" id="192HKKPOjSm" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPOjSn" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPOjSo" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPOjSf" resolve="pres" />
            </node>
          </node>
          <node concept="3clFbS" id="192HKKPOjSp" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPOjSq" role="3cqZAp">
              <node concept="10Nm6u" id="192HKKPOjSr" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="192HKKPOjSs" role="3cqZAp">
          <node concept="2OqwBi" id="192HKKPOjSt" role="3cqZAk">
            <node concept="37vLTw" id="192HKKPOjSu" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPOjSf" resolve="pres" />
            </node>
            <node concept="liA8E" id="192HKKPOjSv" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ConceptPresentation.getIcon()" resolve="getIcon" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPOjSw" role="3clF45">
        <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
      </node>
      <node concept="37vLTG" id="192HKKPOjSy" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="192HKKPOjSz" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm6S6" id="192HKKPOjSx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="192HKKPO7QC" role="jymVt" />
    <node concept="3clFb_" id="192HKKPP2rb" role="jymVt">
      <property role="TrG5h" value="getIconForResource" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="192HKKPP2re" role="3clF47">
        <node concept="3clFbJ" id="192HKKPP2rf" role="3cqZAp">
          <node concept="3clFbS" id="192HKKPP2rg" role="3clFbx">
            <node concept="3cpWs6" id="192HKKPP2rh" role="3cqZAp">
              <node concept="10Nm6u" id="192HKKPP2ri" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="192HKKPP2rj" role="3clFbw">
            <node concept="10Nm6u" id="192HKKPP2rk" role="3uHU7w" />
            <node concept="37vLTw" id="192HKKPP2rl" role="3uHU7B">
              <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="192HKKPP2rV" role="3cqZAp">
          <node concept="3cpWsn" id="192HKKPP2rW" role="3cpWs9">
            <property role="TrG5h" value="icon" />
            <node concept="3uibUv" id="4RE4hojHxvU" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="10Nm6u" id="3Vy23wLdXAT" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="3Vy23wL8btw" role="3cqZAp">
          <node concept="3clFbS" id="3Vy23wL8bty" role="3clFbx">
            <node concept="3clFbJ" id="192HKKPP2rm" role="3cqZAp">
              <node concept="3clFbS" id="192HKKPP2rn" role="3clFbx">
                <node concept="3clFbF" id="192HKKPP2ro" role="3cqZAp">
                  <node concept="2OqwBi" id="192HKKPP2rp" role="3clFbG">
                    <node concept="37vLTw" id="192HKKPP2rq" role="2Oq$k0">
                      <ref role="3cqZAo" node="192HKKPPvg_" resolve="myResToIcon" />
                    </node>
                    <node concept="kI3uX" id="192HKKPP2rr" role="2OqNvi">
                      <node concept="37vLTw" id="192HKKPP2rs" role="kIiFs">
                        <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="1Ib63V_gE95" role="3clFbw">
                <ref role="37wK5l" node="1Ib63V_gkgU" resolve="isAlreadyReloaded" />
                <node concept="37vLTw" id="1Ib63V_gGBp" role="37wK5m">
                  <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="192HKKPP2rw" role="3cqZAp">
              <node concept="3clFbS" id="192HKKPP2rx" role="3clFbx">
                <node concept="3cpWs6" id="192HKKPP2ry" role="3cqZAp">
                  <node concept="3EllGN" id="192HKKPP2rz" role="3cqZAk">
                    <node concept="37vLTw" id="192HKKPP2r$" role="3ElVtu">
                      <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                    </node>
                    <node concept="37vLTw" id="192HKKPP2r_" role="3ElQJh">
                      <ref role="3cqZAo" node="192HKKPPvg_" resolve="myResToIcon" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="192HKKPP2rA" role="3clFbw">
                <node concept="37vLTw" id="192HKKPP2rB" role="2Oq$k0">
                  <ref role="3cqZAo" node="192HKKPPvg_" resolve="myResToIcon" />
                </node>
                <node concept="2Nt0df" id="192HKKPP2rC" role="2OqNvi">
                  <node concept="37vLTw" id="192HKKPP2rD" role="38cxEo">
                    <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="192HKKPP2rE" role="3cqZAp" />
            <node concept="3cpWs8" id="1zjDZIUDAO9" role="3cqZAp">
              <node concept="3cpWsn" id="1zjDZIUDAOa" role="3cpWs9">
                <property role="TrG5h" value="provider" />
                <node concept="3uibUv" id="1zjDZIUD$TS" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3qTvmN" id="3Vy23wL8pDL" role="11_B2D" />
                </node>
                <node concept="2OqwBi" id="1zjDZIUDAOb" role="33vP2m">
                  <node concept="37vLTw" id="1zjDZIUDAOc" role="2Oq$k0">
                    <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                  </node>
                  <node concept="liA8E" id="1zjDZIUDAOd" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~IconResource.getProvider()" resolve="getProvider" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Vy23wLdStF" role="3cqZAp">
              <node concept="37vLTI" id="3Vy23wLdStH" role="3clFbG">
                <node concept="2YIFZM" id="3RymrDRZy1u" role="37vLTx">
                  <ref role="37wK5l" node="3RymrDRZxn9" resolve="loadIcon" />
                  <ref role="1Pybhc" node="3RymrDRZj9k" resolve="IconLoadingUtil" />
                  <node concept="2OqwBi" id="3RymrDRZ$H3" role="37wK5m">
                    <node concept="37vLTw" id="3RymrDRZzm2" role="2Oq$k0">
                      <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                    </node>
                    <node concept="liA8E" id="3RymrDRZA2_" role="2OqNvi">
                      <ref role="37wK5l" to="ze1i:~IconResource.getResourceId(boolean)" resolve="getResourceId" />
                      <node concept="37vLTw" id="3Vy23wLajwv" role="37wK5m">
                        <ref role="3cqZAo" node="3Vy23wLa88l" resolve="myNewUI" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1zjDZIUDAOe" role="37wK5m">
                    <ref role="3cqZAo" node="1zjDZIUDAOa" resolve="provider" />
                  </node>
                </node>
                <node concept="37vLTw" id="3Vy23wLdStL" role="37vLTJ">
                  <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1zjDZIUDzNS" role="3cqZAp">
              <node concept="3clFbS" id="1zjDZIUDzNU" role="3clFbx">
                <node concept="3SKdUt" id="1zjDZIUDKg6" role="3cqZAp">
                  <node concept="1PaTwC" id="1zjDZIUDKg7" role="1aUNEU">
                    <node concept="3oM_SD" id="1zjDZIUDKiw" role="1PaTwD">
                      <property role="3oM_SC" value="see" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKkH" role="1PaTwD">
                      <property role="3oM_SC" value="MPS-30995." />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKlS" role="1PaTwD">
                      <property role="3oM_SC" value="There's" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKnc" role="1PaTwD">
                      <property role="3oM_SC" value="no" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKoQ" role="1PaTwD">
                      <property role="3oM_SC" value="way" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKq4" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKrj" role="1PaTwD">
                      <property role="3oM_SC" value="ensure" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKsN" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKu4" role="1PaTwD">
                      <property role="3oM_SC" value="provider" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKwA" role="1PaTwD">
                      <property role="3oM_SC" value="will" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKxT" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKyd" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKzy" role="1PaTwD">
                      <property role="3oM_SC" value="disposed" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDK_S" role="1PaTwD">
                      <property role="3oM_SC" value="already" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKBf" role="1PaTwD">
                      <property role="3oM_SC" value="when" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKCB" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKE0" role="1PaTwD">
                      <property role="3oM_SC" value="icon" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKFy" role="1PaTwD">
                      <property role="3oM_SC" value="will" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKGX" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKIp" role="1PaTwD">
                      <property role="3oM_SC" value="required" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKKe" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKKG" role="1PaTwD">
                      <property role="3oM_SC" value="first" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKNj" role="1PaTwD">
                      <property role="3oM_SC" value="time." />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKTn" role="1PaTwD">
                      <property role="3oM_SC" value="That's" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKW0" role="1PaTwD">
                      <property role="3oM_SC" value="why" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKXy" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDKY5" role="1PaTwD">
                      <property role="3oM_SC" value="ensure" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDL0T" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDL1u" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDL4k" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDL4V" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDL6z" role="1PaTwD">
                      <property role="3oM_SC" value="non-default" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLcO" role="1PaTwD">
                      <property role="3oM_SC" value="provider" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLeY" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLfD" role="1PaTwD">
                      <property role="3oM_SC" value="load" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLit" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLki" role="1PaTwD">
                      <property role="3oM_SC" value="icon" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLl8" role="1PaTwD">
                      <property role="3oM_SC" value="exactly" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLnR" role="1PaTwD">
                      <property role="3oM_SC" value="at" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLpB" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLqo" role="1PaTwD">
                      <property role="3oM_SC" value="moment" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLti" role="1PaTwD">
                      <property role="3oM_SC" value="it's" />
                    </node>
                    <node concept="3oM_SD" id="1zjDZIUDLAA" role="1PaTwD">
                      <property role="3oM_SC" value="requested" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1zjDZIUDJST" role="3cqZAp">
                  <node concept="37vLTI" id="1zjDZIUDK0E" role="3clFbG">
                    <node concept="37vLTw" id="1zjDZIUDJSR" role="37vLTJ">
                      <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                    </node>
                    <node concept="2OqwBi" id="1zjDZIUDIG6" role="37vLTx">
                      <node concept="1eOMI4" id="1zjDZIUDIgh" role="2Oq$k0">
                        <node concept="10QFUN" id="1zjDZIUDHTs" role="1eOMHV">
                          <node concept="37vLTw" id="1zjDZIUDHTr" role="10QFUP">
                            <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                          </node>
                          <node concept="3uibUv" id="1zjDZIUDHXO" role="10QFUM">
                            <ref role="3uigEE" to="zn9m:~IconLoader$CachedImageIcon" resolve="IconLoader.CachedImageIcon" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="68F6HOs4URd" role="2OqNvi">
                        <ref role="37wK5l" to="3iga:~CachedImageIcon.getRealIcon()" resolve="getRealIcon" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1zjDZIUDG0b" role="3clFbw">
                <node concept="2ZW3vV" id="1zjDZIUDHAw" role="3uHU7w">
                  <node concept="3uibUv" id="1zjDZIUDHJD" role="2ZW6by">
                    <ref role="3uigEE" to="zn9m:~IconLoader$CachedImageIcon" resolve="IconLoader.CachedImageIcon" />
                  </node>
                  <node concept="37vLTw" id="1zjDZIUDHs5" role="2ZW6bz">
                    <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                  </node>
                </node>
                <node concept="3y3z36" id="1zjDZIUDF4w" role="3uHU7B">
                  <node concept="37vLTw" id="1zjDZIUDDp3" role="3uHU7B">
                    <ref role="3cqZAo" node="1zjDZIUDAOa" resolve="provider" />
                  </node>
                  <node concept="10Nm6u" id="1zjDZIUDFVr" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1mZ$UmOYYCj" role="3cqZAp">
              <node concept="3clFbS" id="1mZ$UmOYYCk" role="3clFbx">
                <node concept="RRSsy" id="1mZ$UmOYYCl" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="1mZ$UmOYYCm" role="RRSoy">
                    <node concept="Xl_RD" id="1mZ$UmOYYCn" role="3uHU7B">
                      <property role="Xl_RC" value="Icon was not found for " />
                    </node>
                    <node concept="37vLTw" id="1mZ$UmOYYCo" role="3uHU7w">
                      <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1mZ$UmOYYCp" role="3cqZAp">
                  <node concept="10Nm6u" id="1mZ$UmOYYCq" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="1mZ$UmOYYCr" role="3clFbw">
                <node concept="10Nm6u" id="1mZ$UmOYYCs" role="3uHU7w" />
                <node concept="37vLTw" id="1mZ$UmOYYCt" role="3uHU7B">
                  <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1mZ$UmOYYCu" role="3cqZAp">
              <node concept="37vLTI" id="1mZ$UmOYYCv" role="3clFbG">
                <node concept="37vLTw" id="1mZ$UmOYYCw" role="37vLTx">
                  <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                </node>
                <node concept="3EllGN" id="1mZ$UmOYYCx" role="37vLTJ">
                  <node concept="37vLTw" id="1mZ$UmOYYCy" role="3ElVtu">
                    <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                  </node>
                  <node concept="37vLTw" id="1mZ$UmOYYCz" role="3ElQJh">
                    <ref role="3cqZAo" node="192HKKPPvg_" resolve="myResToIcon" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1mZ$UmOZ7dc" role="3cqZAp">
              <node concept="37vLTw" id="1mZ$UmOZ9Mm" role="3cqZAk">
                <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
              </node>
            </node>
            <node concept="3clFbH" id="1mZ$UmOYS81" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3Vy23wL8fEH" role="3clFbw">
            <node concept="37vLTw" id="3Vy23wL8dXj" role="2Oq$k0">
              <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
            </node>
            <node concept="liA8E" id="3Vy23wL8he3" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~IconResource.isLegacy()" resolve="isLegacy" />
            </node>
          </node>
          <node concept="9aQIb" id="3Vy23wL8rlQ" role="9aQIa">
            <node concept="3clFbS" id="3Vy23wL8rlR" role="9aQI4">
              <node concept="3cpWs8" id="3Vy23wL91EG" role="3cqZAp">
                <node concept="3cpWsn" id="3Vy23wL91EH" role="3cpWs9">
                  <property role="TrG5h" value="originModule" />
                  <node concept="3uibUv" id="3Vy23wL905g" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                  </node>
                  <node concept="2OqwBi" id="3Vy23wL91EI" role="33vP2m">
                    <node concept="37vLTw" id="3Vy23wL91EJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                    </node>
                    <node concept="liA8E" id="3Vy23wL91EK" role="2OqNvi">
                      <ref role="37wK5l" to="ze1i:~IconResource.getOriginModule(org.jetbrains.mps.openapi.persistence.PersistenceFacade)" resolve="getOriginModule" />
                      <node concept="37vLTw" id="3Vy23wL91EL" role="37wK5m">
                        <ref role="3cqZAo" node="3Vy23wL8I3Z" resolve="myPersistenceFacade" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3Vy23wL9cpZ" role="3cqZAp">
                <node concept="3clFbS" id="3Vy23wL9cq1" role="3clFbx">
                  <node concept="3cpWs6" id="3Vy23wL9lt9" role="3cqZAp">
                    <node concept="10Nm6u" id="3Vy23wL9mwM" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3clFbC" id="3Vy23wL9gUt" role="3clFbw">
                  <node concept="10Nm6u" id="3Vy23wL9iEs" role="3uHU7w" />
                  <node concept="37vLTw" id="3Vy23wL9ebm" role="3uHU7B">
                    <ref role="3cqZAo" node="3Vy23wL91EH" resolve="originModule" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3Vy23wLarfN" role="3cqZAp">
                <node concept="3cpWsn" id="3Vy23wLarfO" role="3cpWs9">
                  <property role="TrG5h" value="resourceId" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="3Vy23wLapHa" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="2OqwBi" id="3Vy23wLarfP" role="33vP2m">
                    <node concept="37vLTw" id="3Vy23wLarfQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                    </node>
                    <node concept="liA8E" id="3Vy23wLarfR" role="2OqNvi">
                      <ref role="37wK5l" to="ze1i:~IconResource.getResourceId(boolean)" resolve="getResourceId" />
                      <node concept="37vLTw" id="3Vy23wLarfS" role="37wK5m">
                        <ref role="3cqZAo" node="3Vy23wLa88l" resolve="myNewUI" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3Vy23wLaEFy" role="3cqZAp">
                <node concept="3cpWsn" id="3Vy23wLaEFw" role="3cpWs9">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="rv" />
                  <node concept="3uibUv" id="3Vy23wLaHZS" role="1tU5fm">
                    <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
                    <node concept="3uibUv" id="3Vy23wLcTtZ" role="11_B2D">
                      <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="3Vy23wLaP7E" role="33vP2m">
                    <node concept="1pGfFk" id="3Vy23wLbg2g" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;()" resolve="AtomicReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3Vy23wL9qTW" role="3cqZAp">
                <node concept="2OqwBi" id="3Vy23wL9tNc" role="3clFbG">
                  <node concept="37vLTw" id="3Vy23wL9qTU" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vy23wL8z1O" resolve="myModuleRuntimeRegistry" />
                  </node>
                  <node concept="liA8E" id="3Vy23wL9wId" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.withModuleRuntime(java.util.stream.Stream,java.util.function.Consumer)" resolve="withModuleRuntime" />
                    <node concept="2YIFZM" id="3Vy23wL9GQi" role="37wK5m">
                      <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object...)" resolve="of" />
                      <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                      <node concept="37vLTw" id="3Vy23wL9KdT" role="37wK5m">
                        <ref role="3cqZAo" node="3Vy23wL91EH" resolve="originModule" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="3Vy23wL9Q7V" role="37wK5m">
                      <node concept="gl6BB" id="3Vy23wL9Q86" role="1bW2Oz">
                        <property role="TrG5h" value="mr" />
                        <node concept="2jxLKc" id="3Vy23wL9Q87" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3Vy23wL9Q8e" role="1bW5cS">
                        <node concept="3SKdUt" id="3Vy23wLdnKQ" role="3cqZAp">
                          <node concept="1PaTwC" id="3Vy23wLdnKR" role="1aUNEU">
                            <node concept="3oM_SD" id="3Vy23wLdnKS" role="1PaTwD">
                              <property role="3oM_SC" value="pretty" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLdvVk" role="1PaTwD">
                              <property role="3oM_SC" value="much" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLdz_H" role="1PaTwD">
                              <property role="3oM_SC" value="copy" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLdzA$" role="1PaTwD">
                              <property role="3oM_SC" value="of" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLdPHe" role="1PaTwD">
                              <property role="3oM_SC" value="IconLoadingUtil.loadIcon()." />
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="3Vy23wLbTkt" role="3cqZAp">
                          <node concept="1PaTwC" id="3Vy23wLbTku" role="1aUNEU">
                            <node concept="3oM_SD" id="3Vy23wLbWqy" role="1PaTwD">
                              <property role="3oM_SC" value="XXX" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLbY7k" role="1PaTwD">
                              <property role="3oM_SC" value="here," />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLclGV" role="1PaTwD">
                              <property role="3oM_SC" value="using" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLc4$P" role="1PaTwD">
                              <property role="3oM_SC" value="MR.getOwnResource()" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLcjbz" role="1PaTwD">
                              <property role="3oM_SC" value="is" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLcpAX" role="1PaTwD">
                              <property role="3oM_SC" value="possible." />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLcsH2" role="1PaTwD">
                              <property role="3oM_SC" value="Can" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLcsHT" role="1PaTwD">
                              <property role="3oM_SC" value="I" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLctZ$" role="1PaTwD">
                              <property role="3oM_SC" value="use" />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLcw6Q" role="1PaTwD">
                              <property role="3oM_SC" value="it," />
                            </node>
                            <node concept="3oM_SD" id="3Vy23wLcz9X" role="1PaTwD">
                              <property role="3oM_SC" value="instead?" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3Vy23wL9UPX" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vy23wLboi_" role="3clFbG">
                            <node concept="37vLTw" id="3Vy23wLblto" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vy23wLaEFw" resolve="rv" />
                            </node>
                            <node concept="liA8E" id="3Vy23wLbrc$" role="2OqNvi">
                              <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                              <node concept="2YIFZM" id="3Vy23wLdgsh" role="37wK5m">
                                <ref role="37wK5l" to="zn9m:~IconLoader.findIcon(java.lang.String,java.lang.ClassLoader)" resolve="findIcon" />
                                <ref role="1Pybhc" to="zn9m:~IconLoader" resolve="IconLoader" />
                                <node concept="37vLTw" id="3Vy23wLdgsi" role="37wK5m">
                                  <ref role="3cqZAo" node="3Vy23wLarfO" resolve="resourceId" />
                                </node>
                                <node concept="2OqwBi" id="3Vy23wLdgsj" role="37wK5m">
                                  <node concept="37vLTw" id="3Vy23wLdgsk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vy23wL9Q86" resolve="mr" />
                                  </node>
                                  <node concept="liA8E" id="3Vy23wLdgsl" role="2OqNvi">
                                    <ref role="37wK5l" to="ze1i:~ModuleRuntime.getModuleClassLoader()" resolve="getModuleClassLoader" />
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
              <node concept="3clFbF" id="3Vy23wLeiAA" role="3cqZAp">
                <node concept="37vLTI" id="3Vy23wLekOp" role="3clFbG">
                  <node concept="2OqwBi" id="3Vy23wLepJF" role="37vLTx">
                    <node concept="37vLTw" id="3Vy23wLenz8" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vy23wLaEFw" resolve="rv" />
                    </node>
                    <node concept="liA8E" id="3Vy23wLetUO" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3Vy23wLeiA$" role="37vLTJ">
                    <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3Vy23wLez$5" role="3cqZAp">
                <node concept="3clFbS" id="3Vy23wLez$6" role="3clFbx">
                  <node concept="3SKdUt" id="3Vy23wLez$7" role="3cqZAp">
                    <node concept="1PaTwC" id="3Vy23wLez$8" role="1aUNEU">
                      <node concept="3oM_SD" id="3Vy23wLez$N" role="1PaTwD">
                        <property role="3oM_SC" value="see" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGMU" role="1PaTwD">
                        <property role="3oM_SC" value="comment" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGOk" role="1PaTwD">
                        <property role="3oM_SC" value="above," />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGPH" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGPI" role="1PaTwD">
                        <property role="3oM_SC" value="isLegacy" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGQQ" role="1PaTwD">
                        <property role="3oM_SC" value="section." />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGUc" role="1PaTwD">
                        <property role="3oM_SC" value="Icons" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGVk" role="1PaTwD">
                        <property role="3oM_SC" value="coming" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGWH" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeGX$" role="1PaTwD">
                        <property role="3oM_SC" value="modules" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeH04" role="1PaTwD">
                        <property role="3oM_SC" value="are" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeH1c" role="1PaTwD">
                        <property role="3oM_SC" value="always" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeH1d" role="1PaTwD">
                        <property role="3oM_SC" value="subject" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeH3s" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeH5F" role="1PaTwD">
                        <property role="3oM_SC" value="unpredictable" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeHaY" role="1PaTwD">
                        <property role="3oM_SC" value="CL" />
                      </node>
                      <node concept="3oM_SD" id="3Vy23wLeHbg" role="1PaTwD">
                        <property role="3oM_SC" value="changes" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3Vy23wLez$O" role="3cqZAp">
                    <node concept="37vLTI" id="3Vy23wLez$P" role="3clFbG">
                      <node concept="37vLTw" id="3Vy23wLez$Q" role="37vLTJ">
                        <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                      </node>
                      <node concept="2OqwBi" id="3Vy23wLez$R" role="37vLTx">
                        <node concept="1eOMI4" id="3Vy23wLez$S" role="2Oq$k0">
                          <node concept="10QFUN" id="3Vy23wLez$T" role="1eOMHV">
                            <node concept="37vLTw" id="3Vy23wLez$U" role="10QFUP">
                              <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                            </node>
                            <node concept="3uibUv" id="3Vy23wLez$V" role="10QFUM">
                              <ref role="3uigEE" to="zn9m:~IconLoader$CachedImageIcon" resolve="IconLoader.CachedImageIcon" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3Vy23wLez$W" role="2OqNvi">
                          <ref role="37wK5l" to="3iga:~CachedImageIcon.getRealIcon()" resolve="getRealIcon" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="3Vy23wLez$Y" role="3clFbw">
                  <node concept="3uibUv" id="3Vy23wLez$Z" role="2ZW6by">
                    <ref role="3uigEE" to="zn9m:~IconLoader$CachedImageIcon" resolve="IconLoader.CachedImageIcon" />
                  </node>
                  <node concept="37vLTw" id="3Vy23wLez_0" role="2ZW6bz">
                    <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="71YYnvQbTK7" role="3cqZAp">
                <node concept="3clFbS" id="71YYnvQbTK8" role="3clFbx">
                  <node concept="3SKdUt" id="71YYnvQbTK9" role="3cqZAp">
                    <node concept="1PaTwC" id="71YYnvQbTKa" role="1aUNEU">
                      <node concept="3oM_SD" id="71YYnvQbTKb" role="1PaTwD">
                        <property role="3oM_SC" value="see" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKc" role="1PaTwD">
                        <property role="3oM_SC" value="comment" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKd" role="1PaTwD">
                        <property role="3oM_SC" value="above," />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKe" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKf" role="1PaTwD">
                        <property role="3oM_SC" value="isLegacy" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKg" role="1PaTwD">
                        <property role="3oM_SC" value="section." />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKh" role="1PaTwD">
                        <property role="3oM_SC" value="Icons" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKi" role="1PaTwD">
                        <property role="3oM_SC" value="coming" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKj" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKk" role="1PaTwD">
                        <property role="3oM_SC" value="modules" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKl" role="1PaTwD">
                        <property role="3oM_SC" value="are" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKm" role="1PaTwD">
                        <property role="3oM_SC" value="always" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKn" role="1PaTwD">
                        <property role="3oM_SC" value="subject" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKo" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKp" role="1PaTwD">
                        <property role="3oM_SC" value="unpredictable" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKq" role="1PaTwD">
                        <property role="3oM_SC" value="CL" />
                      </node>
                      <node concept="3oM_SD" id="71YYnvQbTKr" role="1PaTwD">
                        <property role="3oM_SC" value="changes" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="71YYnvQbTKs" role="3cqZAp">
                    <node concept="37vLTI" id="71YYnvQbTKt" role="3clFbG">
                      <node concept="37vLTw" id="71YYnvQbTKu" role="37vLTJ">
                        <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                      </node>
                      <node concept="2OqwBi" id="71YYnvQbTKv" role="37vLTx">
                        <node concept="1eOMI4" id="71YYnvQbTKw" role="2Oq$k0">
                          <node concept="10QFUN" id="71YYnvQbTKx" role="1eOMHV">
                            <node concept="37vLTw" id="71YYnvQbTKy" role="10QFUP">
                              <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                            </node>
                            <node concept="3uibUv" id="71YYnvQbTKz" role="10QFUM">
                              <ref role="3uigEE" to="3iga:~CachedImageIcon" resolve="CachedImageIcon" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="71YYnvQbTK$" role="2OqNvi">
                          <ref role="37wK5l" to="3iga:~CachedImageIcon.getRealIcon()" resolve="getRealIcon" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="71YYnvQbTK_" role="3clFbw">
                  <node concept="3uibUv" id="71YYnvQbTKA" role="2ZW6by">
                    <ref role="3uigEE" to="3iga:~CachedImageIcon" resolve="CachedImageIcon" />
                  </node>
                  <node concept="37vLTw" id="71YYnvQbTKB" role="2ZW6bz">
                    <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="192HKKPP2s5" role="3cqZAp">
                <node concept="3clFbS" id="192HKKPP2s6" role="3clFbx">
                  <node concept="RRSsy" id="3sjottL6JhG" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="3sjottL6L5j" role="RRSoy">
                      <node concept="Xl_RD" id="3sjottL6JhI" role="3uHU7B">
                        <property role="Xl_RC" value="Icon was not found for " />
                      </node>
                      <node concept="37vLTw" id="3sjottL6L9z" role="3uHU7w">
                        <ref role="3cqZAo" node="192HKKPP2t4" resolve="ir" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="192HKKPP2s9" role="3clFbw">
                  <node concept="10Nm6u" id="192HKKPP2sa" role="3uHU7w" />
                  <node concept="37vLTw" id="192HKKPP2sb" role="3uHU7B">
                    <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="192HKKPP2t1" role="3cqZAp">
                <node concept="37vLTw" id="4RE4hojHBbI" role="3cqZAk">
                  <ref role="3cqZAo" node="192HKKPP2rW" resolve="icon" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="192HKKPP2t3" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="37vLTG" id="192HKKPP2t4" role="3clF46">
        <property role="TrG5h" value="ir" />
        <node concept="3uibUv" id="192HKKPP2t5" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
        </node>
        <node concept="2AHcQZ" id="192HKKPP2t6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="192HKKPP2rd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1Ib63V_fJVd" role="jymVt" />
    <node concept="2YIFZL" id="1Ib63V_gkgU" role="jymVt">
      <property role="TrG5h" value="isAlreadyReloaded" />
      <node concept="3clFbS" id="1Ib63V_gkgW" role="3clF47">
        <node concept="3cpWs8" id="1Ib63V_gocM" role="3cqZAp">
          <node concept="3cpWsn" id="1Ib63V_gocN" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="1Ib63V_gnOR" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="1Ib63V_goQ7" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="1Ib63V_gocO" role="33vP2m">
              <node concept="37vLTw" id="1Ib63V_gocP" role="2Oq$k0">
                <ref role="3cqZAo" node="1Ib63V_gkgZ" resolve="ir" />
              </node>
              <node concept="liA8E" id="1Ib63V_gocQ" role="2OqNvi">
                <ref role="37wK5l" to="ze1i:~IconResource.getProvider()" resolve="getProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Ib63V_gpIS" role="3cqZAp">
          <node concept="3clFbS" id="1Ib63V_gpIU" role="3clFbx">
            <node concept="3cpWs6" id="1Ib63V_gsci" role="3cqZAp">
              <node concept="3clFbT" id="1Ib63V_gspp" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1Ib63V_gr2s" role="3clFbw">
            <node concept="10Nm6u" id="1Ib63V_grKD" role="3uHU7w" />
            <node concept="37vLTw" id="1Ib63V_gqcK" role="3uHU7B">
              <ref role="3cqZAo" node="1Ib63V_gocN" resolve="c" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Ib63V_gvVt" role="3cqZAp">
          <node concept="3cpWsn" id="1Ib63V_gvVu" role="3cpWs9">
            <property role="TrG5h" value="cl" />
            <node concept="3uibUv" id="1Ib63V_gvCM" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="1Ib63V_gvVv" role="33vP2m">
              <node concept="37vLTw" id="1Ib63V_gvVw" role="2Oq$k0">
                <ref role="3cqZAo" node="1Ib63V_gocN" resolve="c" />
              </node>
              <node concept="liA8E" id="1Ib63V_gvVx" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Ib63V_gxi0" role="3cqZAp">
          <node concept="1Wc70l" id="1Ib63V_g$bK" role="3cqZAk">
            <node concept="2OqwBi" id="1Ib63V_gAby" role="3uHU7w">
              <node concept="1eOMI4" id="1Ib63V_g$s$" role="2Oq$k0">
                <node concept="10QFUN" id="1Ib63V_g$sx" role="1eOMHV">
                  <node concept="3uibUv" id="1Ib63V_g_5D" role="10QFUM">
                    <ref role="3uigEE" to="3qmy:~MPSModuleClassLoader" resolve="MPSModuleClassLoader" />
                  </node>
                  <node concept="37vLTw" id="1Ib63V_g_Gi" role="10QFUP">
                    <ref role="3cqZAo" node="1Ib63V_gvVu" resolve="cl" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1Ib63V_gAHN" role="2OqNvi">
                <ref role="37wK5l" to="3qmy:~MPSModuleClassLoader.isDisposed()" resolve="isDisposed" />
              </node>
            </node>
            <node concept="2ZW3vV" id="1Ib63V_gy3E" role="3uHU7B">
              <node concept="3uibUv" id="1Ib63V_gy_$" role="2ZW6by">
                <ref role="3uigEE" to="3qmy:~MPSModuleClassLoader" resolve="MPSModuleClassLoader" />
              </node>
              <node concept="37vLTw" id="1Ib63V_gxBh" role="2ZW6bz">
                <ref role="3cqZAo" node="1Ib63V_gvVu" resolve="cl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1Ib63V_gkgY" role="3clF45" />
      <node concept="37vLTG" id="1Ib63V_gkgZ" role="3clF46">
        <property role="TrG5h" value="ir" />
        <node concept="3uibUv" id="1Ib63V_gkh0" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~IconResource" resolve="IconResource" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1Ib63V_gkgX" role="1B3o_S" />
      <node concept="P$JXv" id="1Ib63V_gkh7" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsE28" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE29" role="1PaTwD">
            <property role="3oM_SC" value="Just" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2a" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2b" role="1PaTwD">
            <property role="3oM_SC" value="copy" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2c" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2d" role="1PaTwD">
            <property role="3oM_SC" value="IconResource.isAlreadyReloaded()" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2e" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2f" role="1PaTwD">
            <property role="3oM_SC" value="eliminate" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2g" role="1PaTwD">
            <property role="3oM_SC" value="excessive" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2h" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2i" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2j" role="1PaTwD">
            <property role="3oM_SC" value="IconResource" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2k" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsE2l" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE2m" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2n" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2o" role="1PaTwD">
            <property role="3oM_SC" value="shall" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2p" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2q" role="1PaTwD">
            <property role="3oM_SC" value="removed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2r" role="1PaTwD">
            <property role="3oM_SC" value="along" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2s" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2t" role="1PaTwD">
            <property role="3oM_SC" value="isLegacy()" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2u" role="1PaTwD">
            <property role="3oM_SC" value="branch," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2v" role="1PaTwD">
            <property role="3oM_SC" value="above." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="192HKKPO1b5" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3RymrDRZj9k">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="IconLoadingUtil" />
    <node concept="2YIFZL" id="3RymrDRZxn9" role="jymVt">
      <property role="TrG5h" value="loadIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3RymrDRZjZB" role="3clF47">
        <node concept="3cpWs8" id="5u9jboqxG65" role="3cqZAp">
          <node concept="3cpWsn" id="5u9jboqxG66" role="3cpWs9">
            <property role="TrG5h" value="isAbsolutePath" />
            <node concept="10P_77" id="5u9jboqxG60" role="1tU5fm" />
            <node concept="2OqwBi" id="5u9jboqxG67" role="33vP2m">
              <node concept="37vLTw" id="5u9jboqxG68" role="2Oq$k0">
                <ref role="3cqZAo" node="3RymrDRZk2X" resolve="resource" />
              </node>
              <node concept="liA8E" id="5u9jboqxG69" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="Xl_RD" id="5u9jboqxG6a" role="37wK5m">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5u9jboqxDLF" role="3cqZAp">
          <node concept="3clFbS" id="5u9jboqxDLH" role="3clFbx">
            <node concept="3cpWs6" id="5u9jboqxFgW" role="3cqZAp">
              <node concept="2YIFZM" id="5u9jboqxFgX" role="3cqZAk">
                <ref role="1Pybhc" to="zn9m:~IconLoader" resolve="IconLoader" />
                <ref role="37wK5l" to="zn9m:~IconLoader.findIcon(java.lang.String,java.lang.ClassLoader)" resolve="findIcon" />
                <node concept="37vLTw" id="5u9jboqxFmN" role="37wK5m">
                  <ref role="3cqZAo" node="3RymrDRZk2X" resolve="resource" />
                </node>
                <node concept="2OqwBi" id="5u9jboqxFgZ" role="37wK5m">
                  <node concept="37vLTw" id="5u9jboqxFh0" role="2Oq$k0">
                    <ref role="3cqZAo" node="3RymrDRZk3s" resolve="loader" />
                  </node>
                  <node concept="liA8E" id="5u9jboqxFh1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5u9jboqxG6b" role="3clFbw">
            <ref role="3cqZAo" node="5u9jboqxG66" resolve="isAbsolutePath" />
          </node>
        </node>
        <node concept="3clFbH" id="5u9jboqxGjT" role="3cqZAp" />
        <node concept="3cpWs8" id="3RymrDRZk6h" role="3cqZAp">
          <node concept="3cpWsn" id="3RymrDRZk6i" role="3cpWs9">
            <property role="TrG5h" value="packName" />
            <node concept="3uibUv" id="3RymrDRZk6j" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="3RymrDRZk6k" role="33vP2m">
              <node concept="2OqwBi" id="3RymrDRZk6l" role="2Oq$k0">
                <node concept="37vLTw" id="3RymrDRZleU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3RymrDRZk3s" resolve="loader" />
                </node>
                <node concept="liA8E" id="3RymrDRZk6p" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.getPackage()" resolve="getPackage" />
                </node>
              </node>
              <node concept="liA8E" id="3RymrDRZk6q" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Package.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3RymrDRZk6r" role="3cqZAp">
          <node concept="3cpWsn" id="3RymrDRZk6s" role="3cpWs9">
            <property role="TrG5h" value="resourcePath" />
            <node concept="3uibUv" id="3RymrDRZk6t" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3K4zz7" id="3RymrDRZnm6" role="33vP2m">
              <node concept="2OqwBi" id="3RymrDRZlQt" role="3K4Cdx">
                <node concept="37vLTw" id="3RymrDRZl$0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3RymrDRZk6i" resolve="packName" />
                </node>
                <node concept="liA8E" id="3RymrDRZmpH" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3cpWs3" id="3RymrDRZk6u" role="3K4GZi">
                <node concept="37vLTw" id="3RymrDRZog1" role="3uHU7w">
                  <ref role="3cqZAo" node="3RymrDRZk2X" resolve="resource" />
                </node>
                <node concept="3cpWs3" id="3RymrDRZk6y" role="3uHU7B">
                  <node concept="3cpWs3" id="7r5YfqgCUqJ" role="3uHU7B">
                    <node concept="Xl_RD" id="7r5YfqgCUD9" role="3uHU7B">
                      <property role="Xl_RC" value="/" />
                    </node>
                    <node concept="2OqwBi" id="3RymrDRZk6z" role="3uHU7w">
                      <node concept="37vLTw" id="3RymrDRZk6$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3RymrDRZk6i" resolve="packName" />
                      </node>
                      <node concept="liA8E" id="3RymrDRZk6_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                        <node concept="1Xhbcc" id="3RymrDRZk6A" role="37wK5m">
                          <property role="1XhdNS" value="." />
                        </node>
                        <node concept="1Xhbcc" id="3RymrDRZk6B" role="37wK5m">
                          <property role="1XhdNS" value="/" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3RymrDRZk6C" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="7r5YfqgCTM$" role="3K4E3e">
                <node concept="Xl_RD" id="7r5YfqgCU25" role="3uHU7B">
                  <property role="Xl_RC" value="/" />
                </node>
                <node concept="37vLTw" id="3RymrDRZo16" role="3uHU7w">
                  <ref role="3cqZAo" node="3RymrDRZk2X" resolve="resource" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3RymrDRZqHu" role="3cqZAp">
          <node concept="2YIFZM" id="3RymrDRZq1$" role="3cqZAk">
            <ref role="37wK5l" to="zn9m:~IconLoader.findIcon(java.lang.String,java.lang.ClassLoader)" resolve="findIcon" />
            <ref role="1Pybhc" to="zn9m:~IconLoader" resolve="IconLoader" />
            <node concept="37vLTw" id="3RymrDRZq1_" role="37wK5m">
              <ref role="3cqZAo" node="3RymrDRZk6s" resolve="resourcePath" />
            </node>
            <node concept="2OqwBi" id="3RymrDRZq1A" role="37wK5m">
              <node concept="37vLTw" id="3RymrDRZq1B" role="2Oq$k0">
                <ref role="3cqZAo" node="3RymrDRZk3s" resolve="loader" />
              </node>
              <node concept="liA8E" id="3RymrDRZq1C" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3RymrDRZk2X" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3uibUv" id="3RymrDRZk2W" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="3RymrDRZk3s" role="3clF46">
        <property role="TrG5h" value="loader" />
        <node concept="3uibUv" id="3RymrDRZk5H" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        </node>
      </node>
      <node concept="3uibUv" id="3RymrDRZrsV" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3RymrDRZjZA" role="1B3o_S" />
      <node concept="P$JXv" id="4zG7rycKrnh" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsE2w" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE2x" role="1PaTwD">
            <property role="3oM_SC" value="resource" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2y" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2z" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2$" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2_" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2A" role="1PaTwD">
            <property role="3oM_SC" value="contract" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2B" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2C" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2D" role="1PaTwD">
            <property role="3oM_SC" value="Class.getResource(String)'s" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2E" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE2F" role="1PaTwD">
            <property role="3oM_SC" value="\n" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="KcujoScuq5" role="jymVt" />
    <node concept="2YIFZL" id="44LDkFPBIdh" role="jymVt">
      <property role="TrG5h" value="isNewUIActive" />
      <node concept="3clFbS" id="44LDkFPBIdk" role="3clF47">
        <node concept="3clFbF" id="44LDkFPBIfr" role="3cqZAp">
          <node concept="2YIFZM" id="44LDkFPBJzx" role="3clFbG">
            <ref role="37wK5l" to="lzb2:~ExperimentalUI.isNewUI()" resolve="isNewUI" />
            <ref role="1Pybhc" to="lzb2:~ExperimentalUI" resolve="ExperimentalUI" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="44LDkFPBIcJ" role="1B3o_S" />
      <node concept="10P_77" id="44LDkFPBId6" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3RymrDRZj9l" role="1B3o_S" />
  </node>
</model>

