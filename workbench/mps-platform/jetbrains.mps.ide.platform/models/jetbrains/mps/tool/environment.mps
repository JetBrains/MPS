<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1d4e7c57-c144-4228-9dec-8180ddf9f0ee(jetbrains.mps.tool.environment)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="nos0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project.ex(MPS.IDEA/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="v27p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.startup(MPS.IDEA/)" />
    <import index="zymn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.startup(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="anz6" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.testFramework(MPS.IDEA/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="ab4o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs.newvfs.impl(MPS.IDEA/)" />
    <import index="7nyy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.refresh(MPS.Core/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="32g5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library(MPS.Core/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="ew0j" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.tool.environment(MPS.Platform/)" />
    <import index="cyhs" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs.impl.jar(MPS.IDEA/)" />
    <import index="ncw5" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:jetbrains.mps.util.annotation(Annotations/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="v50w" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileEditor.ex(MPS.IDEA/)" />
    <import index="g3j3" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:kotlinx.coroutines.future(MPS.IDEA/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="zdap" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.text(MPS.IDEA/)" />
    <import index="ctgy" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.plugins(MPS.IDEA/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="qmvx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project.impl(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="8902" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.indexing(MPS.IDEA/)" />
    <import index="anz7" ref="320a7d92-2f09-4a63-9adc-ee2fc4d9ea30/java:com.intellij.testFramework(MPS.IDEA.testFramework/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
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
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="6rx4kZDk5Br">
    <property role="TrG5h" value="IdeaEnvironment" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="2Koq9V0scA0" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PLUGIN_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2Koq9V0scdU" role="1B3o_S" />
      <node concept="17QB3L" id="2Koq9V0scz5" role="1tU5fm" />
      <node concept="Xl_RD" id="2Koq9V0tvl1" role="33vP2m">
        <property role="Xl_RC" value="plugin.path" />
      </node>
    </node>
    <node concept="Wx3nA" id="3P4ieJFe0HU" role="jymVt">
      <property role="TrG5h" value="IDEA_LOAD_PLUGINS_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3P4ieJFdXRC" role="1tU5fm" />
      <node concept="3Tm6S6" id="3P4ieJFdXRB" role="1B3o_S" />
      <node concept="Xl_RD" id="3P4ieJFdXRD" role="33vP2m">
        <property role="Xl_RC" value="idea.load.plugins.id" />
      </node>
    </node>
    <node concept="Wx3nA" id="7SEnjtMck0i" role="jymVt">
      <property role="TrG5h" value="IDEA_USE_CORE_CL" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7SEnjtMcfGG" role="1B3o_S" />
      <node concept="17QB3L" id="7SEnjtMciTb" role="1tU5fm" />
      <node concept="Xl_RD" id="7SEnjtMcnNl" role="33vP2m">
        <property role="Xl_RC" value="idea.force.use.core.classloader" />
      </node>
    </node>
    <node concept="2tJIrI" id="ZnkhVJWDS8" role="jymVt" />
    <node concept="3UR2Jj" id="1w0tHxV50Bo" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsEdq" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsEdr" role="1PaTwD">
          <property role="3oM_SC" value="TODO:" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEds" role="1PaTwD">
          <property role="3oM_SC" value="fix" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEdt" role="1PaTwD">
          <property role="3oM_SC" value="dispose" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEdu" role="1PaTwD">
          <property role="3oM_SC" value="methods" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="65UowUML3$Q" role="jymVt">
      <property role="TrG5h" value="myIdeaApplication" />
      <node concept="3Tm6S6" id="65UowUML3$T" role="1B3o_S" />
      <node concept="3uibUv" id="6BY6fCdVnJ8" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OPNMy2ctOH" role="jymVt" />
    <node concept="3clFbW" id="4OPNMy2crcG" role="jymVt">
      <node concept="3cqZAl" id="4OPNMy2crcH" role="3clF45" />
      <node concept="3clFbS" id="4OPNMy2crcI" role="3clF47">
        <node concept="XkiVB" id="4OPNMy2crcJ" role="3cqZAp">
          <ref role="37wK5l" to="79ha:3eUNqOk4feY" resolve="EnvironmentBase" />
          <node concept="37vLTw" id="4OPNMy2crcK" role="37wK5m">
            <ref role="3cqZAo" node="4OPNMy2crcL" resolve="config" />
          </node>
        </node>
        <node concept="3clFbF" id="1o99khfT2Nx" role="3cqZAp">
          <node concept="2YIFZM" id="1o99khfT38S" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="10M0yZ" id="1o99khfT4f1" role="37wK5m">
              <ref role="3cqZAo" to="9w4s:~PlatformUtils.PLATFORM_PREFIX_KEY" resolve="PLATFORM_PREFIX_KEY" />
              <ref role="1PxDUh" to="9w4s:~PlatformUtils" resolve="PlatformUtils" />
            </node>
            <node concept="Xl_RD" id="1o99khfT4Q$" role="37wK5m">
              <property role="Xl_RC" value="MPS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4OPNMy2crcL" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="4OPNMy2crcM" role="1tU5fm">
          <ref role="3uigEE" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
        </node>
        <node concept="2AHcQZ" id="4OPNMy2crcN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4OPNMy2crcO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="ZnkhVJX0Pq" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk7mHv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3eUNqOk7mHy" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB36W4" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="Xl_RD" id="5lulEoOd9oU" role="RRSoy">
            <property role="Xl_RC" value="Creating IDEA environment" />
          </node>
        </node>
        <node concept="3clFbH" id="735HJCLsg_U" role="3cqZAp" />
        <node concept="3clFbF" id="sjigSAxp4M" role="3cqZAp">
          <node concept="1rXfSq" id="sjigSAxp4I" role="3clFbG">
            <ref role="37wK5l" node="sjigSAx$6d" resolve="addRequiredPlugins" />
            <node concept="37vLTw" id="sjigSAxqbc" role="37wK5m">
              <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6z7xhWkusht" role="3cqZAp">
          <node concept="1rXfSq" id="6z7xhWkushs" role="3clFbG">
            <ref role="37wK5l" node="6z7xhWku8L1" resolve="createIdeaApplication" />
          </node>
        </node>
        <node concept="3clFbH" id="7RQMtR$gjsW" role="3cqZAp" />
        <node concept="3SKdUt" id="6Vc2CbrnZxf" role="3cqZAp">
          <node concept="1PaTwC" id="6Vc2CbrnZxg" role="1aUNEU">
            <node concept="3oM_SD" id="6Vc2CbrnZxj" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4fs" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4ft" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4fI" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4fZ" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4gg" role="1PaTwD">
              <property role="3oM_SC" value="currently" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4h3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4h4" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4hl" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4hA" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4iS" role="1PaTwD">
              <property role="3oM_SC" value="loading" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4jp" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="6Vc2Cbro4in" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RQMtR$hEgL" role="3cqZAp">
          <node concept="3cpWsn" id="7RQMtR$hEgM" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="2VpW0qBl95D" role="1tU5fm">
              <node concept="3uibUv" id="7z47wMIFOth" role="_ZDj9">
                <ref role="3uigEE" to="ctgy:~PluginLoadingError" resolve="PluginLoadingError" />
              </node>
            </node>
            <node concept="2ShNRf" id="7RQMtR$hEgN" role="33vP2m">
              <node concept="Tc6Ow" id="7RQMtR$hEgO" role="2ShVmc">
                <node concept="2OqwBi" id="5eJ8wgjuOF7" role="I$8f6">
                  <node concept="10M0yZ" id="5eJ8wgjuL8Q" role="2Oq$k0">
                    <ref role="3cqZAo" to="ctgy:~PluginManagerCore.INSTANCE" resolve="INSTANCE" />
                    <ref role="1PxDUh" to="ctgy:~PluginManagerCore" resolve="PluginManagerCore" />
                  </node>
                  <node concept="liA8E" id="5eJ8wgjv1mS" role="2OqNvi">
                    <ref role="37wK5l" to="ctgy:~PluginManagerCore.getAndClearPluginLoadingErrors()" resolve="getAndClearPluginLoadingErrors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7RQMtR$hTt4" role="3cqZAp">
          <node concept="3clFbS" id="7RQMtR$hTt7" role="2LFqv$">
            <node concept="RRSsy" id="7RQMtR$i3ZO" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="3cpWs3" id="7RQMtR$iiax" role="RRSoy">
                <node concept="2OqwBi" id="2VpW0qBlt2J" role="3uHU7w">
                  <node concept="liA8E" id="2VpW0qBlwOE" role="2OqNvi">
                    <ref role="37wK5l" to="zdap:~HtmlChunk.toString()" resolve="toString" />
                  </node>
                  <node concept="2OqwBi" id="7RQMtR$impo" role="2Oq$k0">
                    <node concept="37vLTw" id="7RQMtR$iiko" role="2Oq$k0">
                      <ref role="3cqZAo" node="7RQMtR$hTt8" resolve="err" />
                    </node>
                    <node concept="liA8E" id="7RQMtR$iqac" role="2OqNvi">
                      <ref role="37wK5l" to="ctgy:~PluginLoadingError.getHtmlMessage()" resolve="getHtmlMessage" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7RQMtR$i3ZQ" role="3uHU7B" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7RQMtR$hTt8" role="1Duv9x">
            <property role="TrG5h" value="err" />
            <node concept="3uibUv" id="7z47wMIFTwY" role="1tU5fm">
              <ref role="3uigEE" to="ctgy:~PluginLoadingError" resolve="PluginLoadingError" />
            </node>
          </node>
          <node concept="37vLTw" id="7RQMtR$hTtd" role="1DdaDG">
            <ref role="3cqZAo" node="7RQMtR$hEgM" resolve="errors" />
          </node>
        </node>
        <node concept="3clFbH" id="7RQMtR$gjsY" role="3cqZAp" />
        <node concept="3SKdUt" id="61n5glKfyo1" role="3cqZAp">
          <node concept="1PaTwC" id="61n5glKfyo2" role="1aUNEU">
            <node concept="3oM_SD" id="61n5glKf_$J" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_Kr" role="1PaTwD">
              <property role="3oM_SC" value="IJ" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_Ku" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_Ky" role="1PaTwD">
              <property role="3oM_SC" value="allow" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_KB" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_Ls" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_Lz" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_LF" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_M9" role="1PaTwD">
              <property role="3oM_SC" value="logging" />
            </node>
            <node concept="3oM_SD" id="61n5glKf_Mj" role="1PaTwD">
              <property role="3oM_SC" value="initialization." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="107wlcQpB_f" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQpB_g" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQpF7l" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF7m" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF7o" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF7p" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF7q" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF7r" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF7G" role="1PaTwD">
              <property role="3oM_SC" value="trick" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF8d" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF8e" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF8f" role="1PaTwD">
              <property role="3oM_SC" value="using" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF8g" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF8x" role="1PaTwD">
              <property role="3oM_SC" value="configuration," />
            </node>
            <node concept="3oM_SD" id="107wlcQpF92" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF93" role="1PaTwD">
              <property role="3oM_SC" value="initialize" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF94" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF95" role="1PaTwD">
              <property role="3oM_SC" value="prior" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF9Q" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQpF9R" role="1PaTwD">
              <property role="3oM_SC" value="IdeaEnviroment" />
            </node>
            <node concept="3oM_SD" id="107wlcQpFaS" role="1PaTwD">
              <property role="3oM_SC" value="init" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="107wlcQpIXk" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQpIXl" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQpIXm" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpOmS" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpOmU" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpOmV" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpOmW" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpOmX" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRSX" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRSY" role="1PaTwD">
              <property role="3oM_SC" value="Logger" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRTf" role="1PaTwD">
              <property role="3oM_SC" value="instances" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRTw" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRTx" role="1PaTwD">
              <property role="3oM_SC" value="appropriate" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRUi" role="1PaTwD">
              <property role="3oM_SC" value="level" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRWl" role="1PaTwD">
              <property role="3oM_SC" value="assigned" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRWm" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRWn" role="1PaTwD">
              <property role="3oM_SC" value="them." />
            </node>
            <node concept="3oM_SD" id="107wlcQpRWC" role="1PaTwD">
              <property role="3oM_SC" value="It's" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRX9" role="1PaTwD">
              <property role="3oM_SC" value="bit" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRXq" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRXr" role="1PaTwD">
              <property role="3oM_SC" value="tricky" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRXG" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="107wlcQpRXX" role="1PaTwD">
              <property role="3oM_SC" value="handlers" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="107wlcQpVK8" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQpVK9" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQpVKa" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpVKd" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpZac" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpZad" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQpZae" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="107wlcQq186" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1ak" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1al" role="1PaTwD">
              <property role="3oM_SC" value="least" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1am" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1an" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1aC" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1aD" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1aE" role="1PaTwD">
              <property role="3oM_SC" value="messages" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1aV" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1bc" role="1PaTwD">
              <property role="3oM_SC" value="MPS-own" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1bX" role="1PaTwD">
              <property role="3oM_SC" value="log" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1ce" role="1PaTwD">
              <property role="3oM_SC" value="(instead" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1cf" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1cw" role="1PaTwD">
              <property role="3oM_SC" value="IDEA's" />
            </node>
            <node concept="3oM_SD" id="107wlcQq1d1" role="1PaTwD">
              <property role="3oM_SC" value="idea.log)" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2KZwJXNrjan" role="3cqZAp" />
        <node concept="3cpWs8" id="1sAB67Tx5Dr" role="3cqZAp">
          <node concept="3cpWsn" id="1sAB67Tx5Dq" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="coreComponents" />
            <node concept="3uibUv" id="1sAB67Tx5Ds" role="1tU5fm">
              <ref role="3uigEE" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
            </node>
            <node concept="1rXfSq" id="1sAB67Tx5Dt" role="33vP2m">
              <ref role="37wK5l" node="5A5jZrz2$ao" resolve="getMPSCoreComponents" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3eUNqOk7G04" role="3cqZAp">
          <node concept="3nyPlj" id="3eUNqOk7G02" role="3clFbG">
            <ref role="37wK5l" to="79ha:3eUNqOk6clf" resolve="init" />
            <node concept="2OqwBi" id="1Pvl5nrefi1" role="37wK5m">
              <node concept="37vLTw" id="1Pvl5nrefdq" role="2Oq$k0">
                <ref role="3cqZAo" node="1sAB67Tx5Dq" resolve="coreComponents" />
              </node>
              <node concept="liA8E" id="1Pvl5nrefrW" role="2OqNvi">
                <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3eUNqOk7md8" role="1B3o_S" />
      <node concept="3cqZAl" id="3eUNqOk7mHt" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="Pw_fmFMPqS" role="jymVt" />
    <node concept="3clFb_" id="sjigSAx$6d" role="jymVt">
      <property role="TrG5h" value="addRequiredPlugins" />
      <node concept="3clFbS" id="sjigSAx$6f" role="3clF47">
        <node concept="3clFbJ" id="5P325eDq5gv" role="3cqZAp">
          <node concept="3clFbS" id="5P325eDq5gx" role="3clFbx">
            <node concept="RRSsy" id="5P325eDqhFV" role="3cqZAp">
              <property role="RRSoG" value="h1akgim/info" />
              <node concept="Xl_RD" id="5P325eDqhFX" role="RRSoy">
                <property role="Xl_RC" value="The environment config is set to automatic plugins discovery mode" />
              </node>
            </node>
            <node concept="3cpWs6" id="5P325eDqLow" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5P325eDqaty" role="3clFbw">
            <node concept="37vLTw" id="5P325eDq7TL" role="2Oq$k0">
              <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
            </node>
            <node concept="liA8E" id="5P325eDqe26" role="2OqNvi">
              <ref role="37wK5l" to="79ha:4UQyhJFic1B" resolve="areLoadingPluginsAutomatically" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5P325eDqF_0" role="3cqZAp" />
        <node concept="3clFbF" id="sjigSAx$6x" role="3cqZAp">
          <node concept="1rXfSq" id="sjigSAx$6y" role="3clFbG">
            <ref role="37wK5l" node="sjigSAxAsb" resolve="setPluginPathProperty" />
          </node>
        </node>
        <node concept="3clFbF" id="sjigSAx$6z" role="3cqZAp">
          <node concept="1rXfSq" id="sjigSAx$6$" role="3clFbG">
            <ref role="37wK5l" node="sjigSAxCYH" resolve="setPluginIdsPropertyFromConfig" />
            <node concept="37vLTw" id="sjigSAx$6_" role="37wK5m">
              <ref role="3cqZAo" node="sjigSAx$6A" resolve="config" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="sjigSAx$6C" role="3clF45" />
      <node concept="37vLTG" id="sjigSAx$6A" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="sjigSAx$6B" role="1tU5fm">
          <ref role="3uigEE" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
        </node>
      </node>
      <node concept="3Tm6S6" id="sjigSAx$6D" role="1B3o_S" />
      <node concept="P$JXv" id="3P4ieJFdQeG" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsEdv" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEdw" role="1PaTwD">
            <property role="3oM_SC" value="Currently" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdx" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdy" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdz" role="1PaTwD">
            <property role="3oM_SC" value="needed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEd$" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEd_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdA" role="1PaTwD">
            <property role="3oM_SC" value="tests" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdB" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdC" role="1PaTwD">
            <property role="3oM_SC" value="sources" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdD" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdE" role="1PaTwD">
            <property role="3oM_SC" value="ant" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdF" role="1PaTwD">
            <property role="3oM_SC" value="tasks." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEdG" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEdH" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdI" role="1PaTwD">
            <property role="3oM_SC" value="suggest" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdJ" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdK" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdL" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdM" role="1PaTwD">
            <property role="3oM_SC" value="too" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdN" role="1PaTwD">
            <property role="3oM_SC" value="late" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdO" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdP" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdQ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdR" role="1PaTwD">
            <property role="3oM_SC" value="plugins" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdS" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdT" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEdU" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEdV" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdW" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdX" role="1PaTwD">
            <property role="3oM_SC" value="better" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdY" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEdZ" role="1PaTwD">
            <property role="3oM_SC" value="ant" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe0" role="1PaTwD">
            <property role="3oM_SC" value="tasks" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe1" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe2" role="1PaTwD">
            <property role="3oM_SC" value="run" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe3" role="1PaTwD">
            <property role="3oM_SC" value="configurations" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe4" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe5" role="1PaTwD">
            <property role="3oM_SC" value="initialize" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe6" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe7" role="1PaTwD">
            <property role="3oM_SC" value="properties" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe8" role="1PaTwD">
            <property role="3oM_SC" value="earlier." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEe9" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEea" role="1PaTwD">
            <property role="3oM_SC" value="It" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeb" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEec" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEed" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEee" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEef" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeg" role="1PaTwD">
            <property role="3oM_SC" value="smth" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeh" role="1PaTwD">
            <property role="3oM_SC" value="like" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEei" role="1PaTwD">
            <property role="3oM_SC" value="`EntryPointConfig`," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEej" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEek" role="1PaTwD">
            <property role="3oM_SC" value="one," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEel" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEem" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEen" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeo" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEep" role="1PaTwD">
            <property role="3oM_SC" value="MPSWorker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeq" role="1PaTwD">
            <property role="3oM_SC" value="(before" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEer" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEes" role="1PaTwD">
            <property role="3oM_SC" value="process" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEet" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeu" role="1PaTwD">
            <property role="3oM_SC" value="started)." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEev" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEew" role="1PaTwD">
            <property role="3oM_SC" value="Source" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEex" role="1PaTwD">
            <property role="3oM_SC" value="tests" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEey" role="1PaTwD">
            <property role="3oM_SC" value="might" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEez" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe$" role="1PaTwD">
            <property role="3oM_SC" value="able" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEe_" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeA" role="1PaTwD">
            <property role="3oM_SC" value="entry" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeB" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeC" role="1PaTwD">
            <property role="3oM_SC" value="execution" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeD" role="1PaTwD">
            <property role="3oM_SC" value="(and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeE" role="1PaTwD">
            <property role="3oM_SC" value="creating" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeF" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeG" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeH" role="1PaTwD">
            <property role="3oM_SC" value="java" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeI" role="1PaTwD">
            <property role="3oM_SC" value="process)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeJ" role="1PaTwD">
            <property role="3oM_SC" value="via" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeK" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEeL" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEeM" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeN" role="1PaTwD">
            <property role="3oM_SC" value="utility" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeO" role="1PaTwD">
            <property role="3oM_SC" value="(in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeP" role="1PaTwD">
            <property role="3oM_SC" value="tool.common)" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEeQ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEeR" role="1PaTwD">
            <property role="3oM_SC" value="apyshkin" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3P4ieJFdLhz" role="2AJF6D">
        <ref role="2AI5Lk" to="ncw5:~Hack" resolve="Hack" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$4oShLbctN" role="jymVt" />
    <node concept="3clFb_" id="sjigSAxAsb" role="jymVt">
      <property role="TrG5h" value="setPluginPathProperty" />
      <node concept="3clFbS" id="sjigSAxAsd" role="3clF47">
        <node concept="3clFbJ" id="7YybdScPMtp" role="3cqZAp">
          <node concept="3clFbS" id="7YybdScPMtr" role="3clFbx">
            <node concept="RRSsy" id="7YybdScQ2Wp" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="3cpWs3" id="7YybdScQsF0" role="RRSoy">
                <node concept="Xl_RD" id="7YybdScQ2Wr" role="3uHU7B">
                  <property role="Xl_RC" value="The environment config plugin location settings are overridden by the system property " />
                </node>
                <node concept="2YIFZM" id="7YybdScQyoW" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="37vLTw" id="7YybdScQyoZ" role="37wK5m">
                    <ref role="3cqZAo" node="2Koq9V0scA0" resolve="PLUGIN_PATH" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7RuYmROD07E" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="7RuYmROD6Js" role="3clFbw">
            <node concept="10Nm6u" id="7RuYmROD6M6" role="3uHU7w" />
            <node concept="2YIFZM" id="7YybdScPRfR" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="37vLTw" id="7YybdScPTwN" role="37wK5m">
                <ref role="3cqZAo" node="2Koq9V0scA0" resolve="PLUGIN_PATH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="sjigSAxAsg" role="3cqZAp">
          <node concept="3cpWsn" id="sjigSAxAsh" role="3cpWs9">
            <property role="TrG5h" value="pluginPathResult" />
            <property role="3TUv4t" value="false" />
            <node concept="2ShNRf" id="sjigSAxAsj" role="33vP2m">
              <node concept="1pGfFk" id="sjigSAxAsk" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~StringJoiner.&lt;init&gt;(java.lang.CharSequence)" resolve="StringJoiner" />
                <node concept="10M0yZ" id="58KCQIw4A18" role="37wK5m">
                  <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                  <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="58KCQIw3xHA" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~StringJoiner" resolve="StringJoiner" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3a3EL8RMyN4" role="3cqZAp">
          <node concept="2OqwBi" id="3a3EL8RMzLE" role="1DdaDG">
            <node concept="37vLTw" id="3a3EL8RMzLD" role="2Oq$k0">
              <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
            </node>
            <node concept="liA8E" id="3a3EL8RMzLF" role="2OqNvi">
              <ref role="37wK5l" to="79ha:5UWB9tjYeB" resolve="getPlugins" />
            </node>
          </node>
          <node concept="3cpWsn" id="3a3EL8RMyNj" role="1Duv9x">
            <property role="TrG5h" value="pd" />
            <node concept="3uibUv" id="7bo6V6sMJLp" role="1tU5fm">
              <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
            </node>
          </node>
          <node concept="3clFbS" id="3a3EL8RMyN6" role="2LFqv$">
            <node concept="3clFbF" id="mSHDyFrdcG" role="3cqZAp">
              <node concept="2OqwBi" id="mSHDyFrdeK" role="3clFbG">
                <node concept="37vLTw" id="58KCQIw4ARX" role="2Oq$k0">
                  <ref role="3cqZAo" node="sjigSAxAsh" resolve="pluginPathResult" />
                </node>
                <node concept="liA8E" id="mSHDyFrdph" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~StringJoiner.add(java.lang.CharSequence)" resolve="add" />
                  <node concept="2OqwBi" id="2mXsR_u1$19" role="37wK5m">
                    <node concept="37vLTw" id="2mXsR_u1zVA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3a3EL8RMyNj" resolve="pd" />
                    </node>
                    <node concept="2OwXpG" id="7bo6V6sMKkX" role="2OqNvi">
                      <ref role="2Oxat5" to="asz6:QkG2t1bxbe" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2f65m" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqZJ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqZK" role="1PaTwD">
              <property role="3oM_SC" value="IMPORTANT!" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZL" role="1PaTwD">
              <property role="3oM_SC" value="&quot;plugin.path&quot;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZM" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZN" role="1PaTwD">
              <property role="3oM_SC" value="tell" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZO" role="1PaTwD">
              <property role="3oM_SC" value="plugin's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZP" role="1PaTwD">
              <property role="3oM_SC" value="classpath," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZQ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZR" role="1PaTwD">
              <property role="3oM_SC" value="points" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZT" role="1PaTwD">
              <property role="3oM_SC" value="location" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZU" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZV" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZW" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZX" role="1PaTwD">
              <property role="3oM_SC" value="plugin.xml" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqZY" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2fbzK" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqZZ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXor00" role="1PaTwD">
              <property role="3oM_SC" value="I.e." />
            </node>
            <node concept="3oM_SD" id="ATZLwXor01" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor02" role="1PaTwD">
              <property role="3oM_SC" value="unit" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor03" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor04" role="1PaTwD">
              <property role="3oM_SC" value="mode," />
            </node>
            <node concept="3oM_SD" id="ATZLwXor05" role="1PaTwD">
              <property role="3oM_SC" value="complete" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor06" role="1PaTwD">
              <property role="3oM_SC" value="plugin's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor07" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor08" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor09" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor0a" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor0b" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor0c" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor0d" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor0e" role="1PaTwD">
              <property role="3oM_SC" value="already," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3qbI1lNnqcz" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXor0f" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXor0m" role="1PaTwD">
              <property role="3oM_SC" value="PluginManagerCore.loadDescriptorsFromClassPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3a3EL8RMyNn" role="3cqZAp">
          <node concept="2YIFZM" id="3a3EL8RMzL3" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <node concept="37vLTw" id="3a3EL8RMzL4" role="37wK5m">
              <ref role="3cqZAo" node="2Koq9V0scA0" resolve="PLUGIN_PATH" />
            </node>
            <node concept="2OqwBi" id="3a3EL8RMzL5" role="37wK5m">
              <node concept="liA8E" id="3a3EL8RMzL7" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~StringJoiner.toString()" resolve="toString" />
              </node>
              <node concept="37vLTw" id="58KCQIw4B6Y" role="2Oq$k0">
                <ref role="3cqZAo" node="sjigSAxAsh" resolve="pluginPathResult" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="sjigSAxAt1" role="3clF45" />
      <node concept="3Tm6S6" id="sjigSAxAt0" role="1B3o_S" />
      <node concept="2AHcQZ" id="3P4ieJFegGz" role="2AJF6D">
        <ref role="2AI5Lk" to="ncw5:~Hack" resolve="Hack" />
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz7AVC" role="jymVt" />
    <node concept="3clFb_" id="sjigSAxCYH" role="jymVt">
      <property role="TrG5h" value="setPluginIdsPropertyFromConfig" />
      <node concept="3clFbS" id="sjigSAxCYJ" role="3clF47">
        <node concept="3clFbJ" id="7YybdScR3Hp" role="3cqZAp">
          <node concept="3clFbS" id="7YybdScR3Hq" role="3clFbx">
            <node concept="RRSsy" id="7YybdScR3Hr" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="3cpWs3" id="7YybdScR3Hs" role="RRSoy">
                <node concept="Xl_RD" id="7YybdScR3Ht" role="3uHU7B">
                  <property role="Xl_RC" value="The environment config plugin settings settings are overridden by the system property " />
                </node>
                <node concept="2YIFZM" id="7YybdScR3Hu" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="37vLTw" id="7YybdScR8Me" role="37wK5m">
                    <ref role="3cqZAo" node="3P4ieJFe0HU" resolve="IDEA_LOAD_PLUGINS_ID" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7RuYmRODjbp" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="7RuYmRODee9" role="3clFbw">
            <node concept="10Nm6u" id="7RuYmRODfP2" role="3uHU7w" />
            <node concept="2YIFZM" id="7YybdScR3Hw" role="3uHU7B">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <node concept="37vLTw" id="7YybdScR7oF" role="37wK5m">
                <ref role="3cqZAo" node="3P4ieJFe0HU" resolve="IDEA_LOAD_PLUGINS_ID" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="sjigSAxCYK" role="3cqZAp">
          <node concept="3cpWsn" id="sjigSAxCYL" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2ShNRf" id="sjigSAxCYN" role="33vP2m">
              <node concept="1pGfFk" id="sjigSAxCYO" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~StringJoiner.&lt;init&gt;(java.lang.CharSequence)" resolve="StringJoiner" />
                <node concept="Xl_RD" id="3djbh3AQIXq" role="37wK5m">
                  <property role="Xl_RC" value="," />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="58KCQIw4DCp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~StringJoiner" resolve="StringJoiner" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="sjigSAxCYP" role="3cqZAp">
          <node concept="3cpWsn" id="sjigSAxCYQ" role="3cpWs9">
            <property role="TrG5h" value="plugins" />
            <node concept="2hMVRd" id="sjigSAxCYR" role="1tU5fm">
              <node concept="3uibUv" id="7bo6V6sMU5R" role="2hN53Y">
                <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
              </node>
            </node>
            <node concept="2OqwBi" id="sjigSAxCYT" role="33vP2m">
              <node concept="37vLTw" id="sjigSAxCYU" role="2Oq$k0">
                <ref role="3cqZAo" node="sjigSAxCZq" resolve="config" />
              </node>
              <node concept="liA8E" id="sjigSAxCYV" role="2OqNvi">
                <ref role="37wK5l" to="79ha:5UWB9tjYeB" resolve="getPlugins" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="sjigSAxCYW" role="3cqZAp">
          <node concept="3clFbS" id="sjigSAxCYX" role="3clFbx">
            <node concept="3cpWs6" id="sjigSAxCYY" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2Tuefk2gGMh" role="3clFbw">
            <node concept="37vLTw" id="sjigSAxCZ1" role="2Oq$k0">
              <ref role="3cqZAo" node="sjigSAxCYQ" resolve="plugins" />
            </node>
            <node concept="1v1jN8" id="2Tuefk2gIoN" role="2OqNvi" />
          </node>
        </node>
        <node concept="2Gpval" id="sjigSAxCZ2" role="3cqZAp">
          <node concept="2GrKxI" id="sjigSAxCZ3" role="2Gsz3X">
            <property role="TrG5h" value="plugin" />
          </node>
          <node concept="37vLTw" id="sjigSAxCZ4" role="2GsD0m">
            <ref role="3cqZAo" node="sjigSAxCYQ" resolve="plugins" />
          </node>
          <node concept="3clFbS" id="sjigSAxCZ5" role="2LFqv$">
            <node concept="1gVbGN" id="r$A3E5xWEJ" role="3cqZAp">
              <node concept="3y3z36" id="r$A3E5xZQ2" role="1gVkn0">
                <node concept="10Nm6u" id="r$A3E5y04p" role="3uHU7w" />
                <node concept="2OqwBi" id="r$A3E5xWSb" role="3uHU7B">
                  <node concept="2GrUjf" id="r$A3E5xWPh" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="sjigSAxCZ3" resolve="plugin" />
                  </node>
                  <node concept="2OwXpG" id="7bo6V6sMXVL" role="2OqNvi">
                    <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="r$A3E5y0TP" role="1gVpfI">
                <node concept="2OqwBi" id="r$A3E5y1m2" role="3uHU7w">
                  <node concept="2GrUjf" id="r$A3E5y177" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="sjigSAxCZ3" resolve="plugin" />
                  </node>
                  <node concept="2OwXpG" id="7bo6V6sN6MM" role="2OqNvi">
                    <ref role="2Oxat5" to="asz6:QkG2t1bxbe" resolve="path" />
                  </node>
                </node>
                <node concept="Xl_RD" id="r$A3E5y0kA" role="3uHU7B">
                  <property role="Xl_RC" value="id should be specified for plugin " />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="sjigSAxCZ6" role="3cqZAp">
              <node concept="2OqwBi" id="sjigSAxCZ7" role="3clFbG">
                <node concept="37vLTw" id="sjigSAxCZ8" role="2Oq$k0">
                  <ref role="3cqZAo" node="sjigSAxCYL" resolve="result" />
                </node>
                <node concept="liA8E" id="sjigSAxCZ9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~StringJoiner.add(java.lang.CharSequence)" resolve="add" />
                  <node concept="2OqwBi" id="sjigSAxCZa" role="37wK5m">
                    <node concept="2GrUjf" id="sjigSAxCZb" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="sjigSAxCZ3" resolve="plugin" />
                    </node>
                    <node concept="2OwXpG" id="7bo6V6sN2iF" role="2OqNvi">
                      <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sjigSAxCZi" role="3cqZAp">
          <node concept="2YIFZM" id="sjigSAxCZj" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <node concept="37vLTw" id="3P4ieJFe3YW" role="37wK5m">
              <ref role="3cqZAo" node="3P4ieJFe0HU" resolve="IDEA_LOAD_PLUGINS_ID" />
            </node>
            <node concept="2OqwBi" id="sjigSAxCZl" role="37wK5m">
              <node concept="37vLTw" id="sjigSAxCZm" role="2Oq$k0">
                <ref role="3cqZAo" node="sjigSAxCYL" resolve="result" />
              </node>
              <node concept="liA8E" id="sjigSAxCZn" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~StringJoiner.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="sjigSAxCZp" role="3clF45" />
      <node concept="37vLTG" id="sjigSAxCZq" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="sjigSAxCZr" role="1tU5fm">
          <ref role="3uigEE" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
        </node>
      </node>
      <node concept="3Tm6S6" id="sjigSAxCZo" role="1B3o_S" />
      <node concept="P$JXv" id="3P4ieJFe8Ih" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsEeS" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEeT" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeU" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeV" role="1PaTwD">
            <property role="3oM_SC" value="talked" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeW" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeX" role="1PaTwD">
            <property role="3oM_SC" value="artem" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeY" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEeZ" role="1PaTwD">
            <property role="3oM_SC" value="seems" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf0" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf2" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf3" role="1PaTwD">
            <property role="3oM_SC" value="makes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf4" role="1PaTwD">
            <property role="3oM_SC" value="sense" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf5" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf6" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf7" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf8" role="1PaTwD">
            <property role="3oM_SC" value="fact" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf9" role="1PaTwD">
            <property role="3oM_SC" value="want" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfa" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEfb" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEfc" role="1PaTwD">
            <property role="3oM_SC" value="constrict" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfd" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfe" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEff" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfg" role="1PaTwD">
            <property role="3oM_SC" value="plugins" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfh" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfi" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfj" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfk" role="1PaTwD">
            <property role="3oM_SC" value="running" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfl" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfm" role="1PaTwD">
            <property role="3oM_SC" value="rcp" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfn" role="1PaTwD">
            <property role="3oM_SC" value="based" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfo" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfp" role="1PaTwD">
            <property role="3oM_SC" value="mps" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfq" role="1PaTwD">
            <property role="3oM_SC" value="(say" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfr" role="1PaTwD">
            <property role="3oM_SC" value="mbeddr)." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEfs" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEft" role="1PaTwD">
            <property role="3oM_SC" value="In" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfu" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfv" role="1PaTwD">
            <property role="3oM_SC" value="case" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfw" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfx" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfy" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfz" role="1PaTwD">
            <property role="3oM_SC" value="great" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf$" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEf_" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfA" role="1PaTwD">
            <property role="3oM_SC" value="bundled" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfB" role="1PaTwD">
            <property role="3oM_SC" value="plugins" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfC" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfD" role="1PaTwD">
            <property role="3oM_SC" value="app_dir/plugins," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfE" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfF" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfG" role="1PaTwD">
            <property role="3oM_SC" value="want" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfH" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEfI" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEfJ" role="1PaTwD">
            <property role="3oM_SC" value="disable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfK" role="1PaTwD">
            <property role="3oM_SC" value="some" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfL" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfM" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfN" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfO" role="1PaTwD">
            <property role="3oM_SC" value="time" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfP" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfQ" role="1PaTwD">
            <property role="3oM_SC" value="time." />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3P4ieJFe4xH" role="2AJF6D">
        <ref role="2AI5Lk" to="ncw5:~Hack" resolve="Hack" />
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz2$OE" role="jymVt" />
    <node concept="3clFb_" id="5A5jZrz2$ao" role="jymVt">
      <property role="TrG5h" value="getMPSCoreComponents" />
      <node concept="3Tm6S6" id="5A5jZrz2$ap" role="1B3o_S" />
      <node concept="3uibUv" id="5A5jZrz2$aq" role="3clF45">
        <ref role="3uigEE" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
      </node>
      <node concept="3clFbS" id="5A5jZrz2$aa" role="3clF47">
        <node concept="3cpWs6" id="5A5jZrz2$ak" role="3cqZAp">
          <node concept="2YIFZM" id="4qHsSzVSMVu" role="3cqZAk">
            <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jln2VqX4mj" role="jymVt" />
    <node concept="3clFb_" id="6z7xhWku8L1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createIdeaApplication" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6z7xhWku8L4" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB36Wa" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="Xl_RD" id="3HZVFd9gFnC" role="RRSoy">
            <property role="Xl_RC" value="Creating IdeaCmdApplication" />
          </node>
        </node>
        <node concept="3cpWs8" id="4$fVFMMeHZe" role="3cqZAp">
          <node concept="3cpWsn" id="4$fVFMMeHZc" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="PERF_LOG_KEY" />
            <node concept="17QB3L" id="4$fVFMMeIla" role="1tU5fm" />
            <node concept="Xl_RD" id="4$fVFMMeIqh" role="33vP2m">
              <property role="Xl_RC" value="idea.log.perf.stats" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4$fVFMMeH_9" role="3cqZAp">
          <node concept="3clFbS" id="4$fVFMMeH_b" role="3clFbx">
            <node concept="3SKdUt" id="4$fVFMMeKIh" role="3cqZAp">
              <node concept="1PaTwC" id="4$fVFMMeKNI" role="1aUNEU">
                <node concept="3oM_SD" id="4$fVFMMeKIk" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKJc" role="1PaTwD">
                  <property role="3oM_SC" value="StartUpPerformanceReporter.kt/logStats," />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKJv" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="6x0LKEmhVet" role="1PaTwD">
                  <property role="3oM_SC" value="logs" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKJV" role="1PaTwD">
                  <property role="3oM_SC" value="statistics" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKL6" role="1PaTwD">
                  <property role="3oM_SC" value="when" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKLt" role="1PaTwD">
                  <property role="3oM_SC" value="App.isInternal" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKMd" role="1PaTwD">
                  <property role="3oM_SC" value="(our" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKMA" role="1PaTwD">
                  <property role="3oM_SC" value="case)." />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKO3" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4$fVFMMeKSJ" role="3cqZAp">
              <node concept="1PaTwC" id="4$fVFMMeKSK" role="1aUNEU">
                <node concept="3oM_SD" id="4$fVFMMeKTS" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKU2" role="1PaTwD">
                  <property role="3oM_SC" value="doubt" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKUl" role="1PaTwD">
                  <property role="3oM_SC" value="there's" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKUG" role="1PaTwD">
                  <property role="3oM_SC" value="any" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKUL" role="1PaTwD">
                  <property role="3oM_SC" value="reason" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKUZ" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKV6" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKVm" role="1PaTwD">
                  <property role="3oM_SC" value="end-user" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKVJ" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKW1" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKWc" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKWo" role="1PaTwD">
                  <property role="3oM_SC" value="statistics" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKWH" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKX3" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKXi" role="1PaTwD">
                  <property role="3oM_SC" value="regular" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKXE" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKXV" role="1PaTwD">
                  <property role="3oM_SC" value="scenario." />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKY_" role="1PaTwD">
                  <property role="3oM_SC" value="Still," />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKZ0" role="1PaTwD">
                  <property role="3oM_SC" value="they" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeKZ$" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL01" role="1PaTwD">
                  <property role="3oM_SC" value="opt" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL0v" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL0Y" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL1m" role="1PaTwD">
                  <property role="3oM_SC" value="so" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL1R" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL5r" role="1PaTwD">
                  <property role="3oM_SC" value="system" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL48" role="1PaTwD">
                  <property role="3oM_SC" value="property" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL4P" role="1PaTwD">
                  <property role="3oM_SC" value="explicitly" />
                </node>
                <node concept="3oM_SD" id="4$fVFMMeL60" role="1PaTwD">
                  <property role="3oM_SC" value="set." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4$fVFMMeJDS" role="3cqZAp">
              <node concept="2YIFZM" id="4$fVFMMeJEn" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="37vLTw" id="4$fVFMMeJLD" role="37wK5m">
                  <ref role="3cqZAo" node="4$fVFMMeHZc" resolve="PERF_LOG_KEY" />
                </node>
                <node concept="2OqwBi" id="4$fVFMMeKwQ" role="37wK5m">
                  <node concept="10M0yZ" id="4$fVFMMeKcn" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  </node>
                  <node concept="liA8E" id="4$fVFMMeKBN" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4$fVFMMeJlw" role="3clFbw">
            <node concept="10Nm6u" id="4$fVFMMeJyb" role="3uHU7w" />
            <node concept="2YIFZM" id="4$fVFMMeIET" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="37vLTw" id="4$fVFMMeIRI" role="37wK5m">
                <ref role="3cqZAo" node="4$fVFMMeHZc" resolve="PERF_LOG_KEY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Uk_Yg6VYNY" role="3cqZAp">
          <node concept="2YIFZM" id="1Uk_Yg6VZ6N" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <node concept="Xl_RD" id="1Uk_Yg6VZ6O" role="37wK5m">
              <property role="Xl_RC" value="ide.new.project.model" />
            </node>
            <node concept="2YIFZM" id="1Uk_Yg6VZ6P" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
              <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean)" resolve="toString" />
              <node concept="3clFbT" id="1Uk_Yg6VZ6Q" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5XadiMejEyU" role="3cqZAp">
          <node concept="2YIFZM" id="5XadiMejEyV" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <node concept="Xl_RD" id="5XadiMejEyW" role="37wK5m">
              <property role="Xl_RC" value="ide.open.readme.md.on.startup" />
            </node>
            <node concept="2YIFZM" id="5XadiMejEyX" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
              <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean)" resolve="toString" />
              <node concept="3clFbT" id="5XadiMejEyY" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1HNHfSAwfxM" role="3cqZAp">
          <node concept="3clFbS" id="1HNHfSAwfxO" role="3clFbx">
            <node concept="3cpWs8" id="1HNHfSAxN59" role="3cqZAp">
              <node concept="3cpWsn" id="1HNHfSAxN5a" role="3cpWs9">
                <property role="TrG5h" value="val" />
                <node concept="17QB3L" id="1HNHfSAxw2H" role="1tU5fm" />
                <node concept="Xl_RD" id="1HNHfSAxN5f" role="33vP2m">
                  <property role="Xl_RC" value="MPSCmdLine" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1HNHfSAxXQ7" role="3cqZAp">
              <node concept="3clFbS" id="1HNHfSAxXQ9" role="3clFbx">
                <node concept="3clFbF" id="1HNHfSAybSE" role="3cqZAp">
                  <node concept="d57v9" id="1HNHfSAyfhK" role="3clFbG">
                    <node concept="Xl_RD" id="1HNHfSAyhuU" role="37vLTx">
                      <property role="Xl_RC" value="Test" />
                    </node>
                    <node concept="37vLTw" id="1HNHfSAybSC" role="37vLTJ">
                      <ref role="3cqZAo" node="1HNHfSAxN5a" resolve="val" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1HNHfSAy3Jc" role="3clFbw">
                <node concept="37vLTw" id="1HNHfSAy0kG" role="2Oq$k0">
                  <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
                </node>
                <node concept="liA8E" id="1HNHfSAy6q7" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:28TMbOSF4Ad" resolve="isTestMode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1HNHfSAw$Vx" role="3cqZAp">
              <node concept="2YIFZM" id="1HNHfSAwBsS" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="10M0yZ" id="1HNHfSAwDSQ" role="37wK5m">
                  <ref role="1PxDUh" to="bd8o:~PathManager" resolve="PathManager" />
                  <ref role="3cqZAo" to="bd8o:~PathManager.PROPERTY_PATHS_SELECTOR" resolve="PROPERTY_PATHS_SELECTOR" />
                </node>
                <node concept="37vLTw" id="1HNHfSAxN5g" role="37wK5m">
                  <ref role="3cqZAo" node="1HNHfSAxN5a" resolve="val" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1HNHfSAwvmM" role="3clFbw">
            <node concept="10Nm6u" id="1HNHfSAwxWD" role="3uHU7w" />
            <node concept="2YIFZM" id="1HNHfSAwmM9" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="10M0yZ" id="1HNHfSAwt07" role="37wK5m">
                <ref role="3cqZAo" to="bd8o:~PathManager.PROPERTY_PATHS_SELECTOR" resolve="PROPERTY_PATHS_SELECTOR" />
                <ref role="1PxDUh" to="bd8o:~PathManager" resolve="PathManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Tuefk2gna7" role="3cqZAp">
          <node concept="3cpWsn" id="2Tuefk2gna8" role="3cpWs9">
            <property role="TrG5h" value="oldValue" />
            <node concept="17QB3L" id="2Tuefk2gsmv" role="1tU5fm" />
            <node concept="2YIFZM" id="2Tuefk2gna9" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="37vLTw" id="2Tuefk2gnaa" role="37wK5m">
                <ref role="3cqZAo" node="7SEnjtMck0i" resolve="IDEA_USE_CORE_CL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Tuefk2gugo" role="3cqZAp">
          <node concept="3clFbS" id="2Tuefk2gugq" role="3clFbx">
            <node concept="3SKdUt" id="7SEnjtMcOL8" role="3cqZAp">
              <node concept="1PaTwC" id="7SEnjtMcOL9" role="1aUNEU">
                <node concept="3oM_SD" id="7SEnjtMcRhc" role="1PaTwD">
                  <property role="3oM_SC" value="always" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcRhe" role="1PaTwD">
                  <property role="3oM_SC" value="true," />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcVBM" role="1PaTwD">
                  <property role="3oM_SC" value="resorting" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcVBY" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcVC3" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcVC9" role="1PaTwD">
                  <property role="3oM_SC" value="default" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcVCw" role="1PaTwD">
                  <property role="3oM_SC" value="behavior" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcYXY" role="1PaTwD">
                  <property role="3oM_SC" value="loading" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcYY7" role="1PaTwD">
                  <property role="3oM_SC" value="plugins" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcYZp" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcYZ$" role="1PaTwD">
                  <property role="3oM_SC" value="cp" />
                </node>
                <node concept="3oM_SD" id="7SEnjtMcYZS" role="1PaTwD">
                  <property role="3oM_SC" value="[apyshkin]" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="mSHDyFqH8G" role="3cqZAp">
              <node concept="2YIFZM" id="mSHDyFqJCA" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="37vLTw" id="12CYGR0Z33y" role="37wK5m">
                  <ref role="3cqZAo" node="7SEnjtMck0i" resolve="IDEA_USE_CORE_CL" />
                </node>
                <node concept="2OqwBi" id="7SEnjtMcHa0" role="37wK5m">
                  <node concept="10M0yZ" id="7SEnjtMcBhQ" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  </node>
                  <node concept="liA8E" id="7SEnjtMcJLm" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2Tuefk2gzHb" role="3clFbw">
            <node concept="37vLTw" id="2Tuefk2gwkn" role="3uHU7B">
              <ref role="3cqZAo" node="2Tuefk2gna8" resolve="oldValue" />
            </node>
            <node concept="10Nm6u" id="2Tuefk2gwJU" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="14a64PjWXTB" role="3cqZAp">
          <node concept="2OqwBi" id="14a64PjX7bo" role="3clFbG">
            <node concept="10M0yZ" id="14a64PjX3_O" role="2Oq$k0">
              <ref role="3cqZAo" to="qmvx:~P3SupportInstaller.INSTANCE" resolve="INSTANCE" />
              <ref role="1PxDUh" to="qmvx:~P3SupportInstaller" resolve="P3SupportInstaller" />
            </node>
            <node concept="liA8E" id="14a64PjXbqf" role="2OqNvi">
              <ref role="37wK5l" to="qmvx:~P3SupportInstaller.seal()" resolve="seal" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4OPNMy2cD0Q" role="3cqZAp">
          <node concept="3clFbS" id="4OPNMy2cD0S" role="3clFbx">
            <node concept="3SKdUt" id="7jMxDUIKzVP" role="3cqZAp">
              <node concept="1PaTwC" id="7jMxDUIKzVQ" role="1aUNEU">
                <node concept="3oM_SD" id="7jMxDUIJZYn" role="1PaTwD">
                  <property role="3oM_SC" value="Circumvent" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZNx" role="1PaTwD">
                  <property role="3oM_SC" value="JBUIScale.computeSystemScaleFactor" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZNy" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;Must" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZNz" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZN$" role="1PaTwD">
                  <property role="3oM_SC" value="precomputed&quot;" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZN_" role="1PaTwD">
                  <property role="3oM_SC" value="error" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZNA" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7jMxDUIJZNB" role="1PaTwD">
                  <property role="3oM_SC" value="tests" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7jMxDUIKzVR" role="3cqZAp">
              <node concept="2YIFZM" id="7jMxDUIKzVS" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <node concept="Xl_RD" id="7jMxDUIKzVT" role="37wK5m">
                  <property role="Xl_RC" value="hidpi" />
                </node>
                <node concept="2OqwBi" id="7jMxDUIKzVU" role="37wK5m">
                  <node concept="10M0yZ" id="7jMxDUIKzVV" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
                  </node>
                  <node concept="liA8E" id="7jMxDUIKzVW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3brbVNVVH$p" role="3cqZAp">
              <node concept="1PaTwC" id="3brbVNVVH$q" role="1aUNEU">
                <node concept="3oM_SD" id="3brbVNVVH$s" role="1PaTwD">
                  <property role="3oM_SC" value="Force" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHO3" role="1PaTwD">
                  <property role="3oM_SC" value="GraphicsEnvironment" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHO$" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHOK" role="1PaTwD">
                  <property role="3oM_SC" value="cache" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHPd" role="1PaTwD">
                  <property role="3oM_SC" value="headless" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHPr" role="1PaTwD">
                  <property role="3oM_SC" value="false" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHPM" role="1PaTwD">
                  <property role="3oM_SC" value="state" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHQ2" role="1PaTwD">
                  <property role="3oM_SC" value="before" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHQj" role="1PaTwD">
                  <property role="3oM_SC" value="TestApplicationManager" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHQH" role="1PaTwD">
                  <property role="3oM_SC" value="resets" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHR8" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHRs" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3brbVNVVHRL" role="1PaTwD">
                  <property role="3oM_SC" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4H7lDQI3ewa" role="3cqZAp">
              <node concept="2YIFZM" id="4H7lDQI3eHr" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <node concept="Xl_RD" id="4H7lDQI3eHs" role="37wK5m">
                  <property role="Xl_RC" value="java.awt.headless" />
                </node>
                <node concept="2OqwBi" id="4H7lDQI3eHt" role="37wK5m">
                  <node concept="10M0yZ" id="4H7lDQI3eHu" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
                  </node>
                  <node concept="liA8E" id="4H7lDQI3eHv" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3brbVNVVyxn" role="3cqZAp">
              <node concept="2YIFZM" id="3brbVNVVH6u" role="3clFbG">
                <ref role="1Pybhc" to="z60i:~GraphicsEnvironment" resolve="GraphicsEnvironment" />
                <ref role="37wK5l" to="z60i:~GraphicsEnvironment.isHeadless()" resolve="isHeadless" />
              </node>
            </node>
            <node concept="3clFbF" id="4Gjpmeef6f4" role="3cqZAp">
              <node concept="2YIFZM" id="4Gjpmeef6f5" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <node concept="Xl_RD" id="4Gjpmeef6f6" role="37wK5m">
                  <property role="Xl_RC" value="java.awt.headless" />
                </node>
                <node concept="2OqwBi" id="4Gjpmeef6f7" role="37wK5m">
                  <node concept="10M0yZ" id="4Gjpmeefbvi" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  </node>
                  <node concept="liA8E" id="4Gjpmeef6f9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="LVoJj$r8A8" role="3cqZAp" />
            <node concept="3SKdUt" id="LVoJj$tTis" role="3cqZAp">
              <node concept="1PaTwC" id="LVoJj$tTit" role="1aUNEU">
                <node concept="3oM_SD" id="LVoJj$tWTk" role="1PaTwD">
                  <property role="3oM_SC" value="Start" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTl" role="1PaTwD">
                  <property role="3oM_SC" value="each" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTm" role="1PaTwD">
                  <property role="3oM_SC" value="test" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTn" role="1PaTwD">
                  <property role="3oM_SC" value="run" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTo" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTp" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTq" role="1PaTwD">
                  <property role="3oM_SC" value="cold" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTr" role="1PaTwD">
                  <property role="3oM_SC" value="cache." />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTs" role="1PaTwD">
                  <property role="3oM_SC" value="The" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTt" role="1PaTwD">
                  <property role="3oM_SC" value="system" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTu" role="1PaTwD">
                  <property role="3oM_SC" value="dir" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTv" role="1PaTwD">
                  <property role="3oM_SC" value="(caches/index/VFS)" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTw" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTx" role="1PaTwD">
                  <property role="3oM_SC" value="resolved" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTy" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="LVoJj$tWTz" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="LVoJj$tZTR" role="3cqZAp">
              <node concept="1PaTwC" id="LVoJj$tZTS" role="1aUNEU">
                <node concept="3oM_SD" id="LVoJj$u4_3" role="1PaTwD">
                  <property role="3oM_SC" value="'MPSCmdLineTest'" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_4" role="1PaTwD">
                  <property role="3oM_SC" value="paths" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_5" role="1PaTwD">
                  <property role="3oM_SC" value="selector" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_6" role="1PaTwD">
                  <property role="3oM_SC" value="set" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_7" role="1PaTwD">
                  <property role="3oM_SC" value="above," />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_8" role="1PaTwD">
                  <property role="3oM_SC" value="so" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_9" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_a" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_b" role="1PaTwD">
                  <property role="3oM_SC" value="ever" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_c" role="1PaTwD">
                  <property role="3oM_SC" value="deletes" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_d" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_e" role="1PaTwD">
                  <property role="3oM_SC" value="test-specific" />
                </node>
                <node concept="3oM_SD" id="LVoJj$u4_f" role="1PaTwD">
                  <property role="3oM_SC" value="directory." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="LVoJj$u9_y" role="3cqZAp">
              <node concept="1PaTwC" id="LVoJj$u9_z" role="1aUNEU">
                <node concept="3oM_SD" id="LVoJj$ucmY" role="1PaTwD">
                  <property role="3oM_SC" value="Must" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucmZ" role="1PaTwD">
                  <property role="3oM_SC" value="run" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn0" role="1PaTwD">
                  <property role="3oM_SC" value="before" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn1" role="1PaTwD">
                  <property role="3oM_SC" value="TestApplicationManager.getInstance()," />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn2" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn3" role="1PaTwD">
                  <property role="3oM_SC" value="loads" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn4" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn5" role="1PaTwD">
                  <property role="3oM_SC" value="locks" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn6" role="1PaTwD">
                  <property role="3oM_SC" value="these" />
                </node>
                <node concept="3oM_SD" id="LVoJj$ucn7" role="1PaTwD">
                  <property role="3oM_SC" value="caches." />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="LVoJj$rdJ7" role="3cqZAp">
              <node concept="3fqX7Q" id="LVoJj$rdJ8" role="3clFbw">
                <node concept="2YIFZM" id="LVoJj$rj40" role="3fr31v">
                  <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                  <ref role="37wK5l" to="wyt6:~Boolean.getBoolean(java.lang.String)" resolve="getBoolean" />
                  <node concept="Xl_RD" id="LVoJj$rj41" role="37wK5m">
                    <property role="Xl_RC" value="mps.test.keep.system.dir" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="LVoJj$rdJc" role="3clFbx">
                <node concept="3cpWs8" id="LVoJj$rdJe" role="3cqZAp">
                  <node concept="3cpWsn" id="LVoJj$rdJd" role="3cpWs9">
                    <property role="TrG5h" value="systemDir" />
                    <node concept="3uibUv" id="LVoJj$rdJf" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2ShNRf" id="LVoJj$rj4F" role="33vP2m">
                      <node concept="1pGfFk" id="LVoJj$rj5m" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="2YIFZM" id="LVoJj$sxkl" role="37wK5m">
                          <ref role="37wK5l" to="bd8o:~PathManager.getSystemPath()" resolve="getSystemPath" />
                          <ref role="1Pybhc" to="bd8o:~PathManager" resolve="PathManager" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="RRSsy" id="LVoJj$tgKN" role="3cqZAp">
                  <property role="RRSoG" value="h1akgim/info" />
                  <node concept="3cpWs3" id="LVoJj$tlTB" role="RRSoy">
                    <node concept="Xl_RD" id="LVoJj$tlTC" role="3uHU7B">
                      <property role="Xl_RC" value="Clearing test system directory before application init: " />
                    </node>
                    <node concept="37vLTw" id="LVoJj$tlTD" role="3uHU7w">
                      <ref role="3cqZAo" node="LVoJj$rdJd" resolve="systemDir" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="LVoJj$rdJr" role="3cqZAp">
                  <node concept="3fqX7Q" id="LVoJj$rdJt" role="3clFbw">
                    <node concept="2YIFZM" id="LVoJj$rj5q" role="3fr31v">
                      <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                      <ref role="37wK5l" to="18ew:~FileUtil.delete(java.io.File)" resolve="delete" />
                      <node concept="37vLTw" id="LVoJj$rj5r" role="37wK5m">
                        <ref role="3cqZAo" node="LVoJj$rdJd" resolve="systemDir" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="LVoJj$rdJy" role="3clFbx">
                    <node concept="RRSsy" id="LVoJj$twOD" role="3cqZAp">
                      <property role="RRSoG" value="gZ5fksE/warn" />
                      <node concept="3cpWs3" id="LVoJj$tAol" role="RRSoy">
                        <node concept="Xl_RD" id="LVoJj$tAom" role="3uHU7B">
                          <property role="Xl_RC" value="Could not fully clear test system directory: " />
                        </node>
                        <node concept="37vLTw" id="LVoJj$tAon" role="3uHU7w">
                          <ref role="3cqZAo" node="LVoJj$rdJd" resolve="systemDir" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="LVoJj$r8A9" role="3cqZAp" />
            <node concept="3clFbF" id="65UowUML9kL" role="3cqZAp">
              <node concept="37vLTI" id="65UowUMLbJH" role="3clFbG">
                <node concept="37vLTw" id="65UowUMLeGt" role="37vLTJ">
                  <ref role="3cqZAo" node="65UowUML3$Q" resolve="myIdeaApplication" />
                </node>
                <node concept="2YIFZM" id="6BY6fCdVnFz" role="37vLTx">
                  <ref role="37wK5l" to="anz7:~TestApplicationManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="anz7:~TestApplicationManager" resolve="TestApplicationManager" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3qbI1lNoimf" role="9aQIa">
            <node concept="3clFbS" id="3qbI1lNoimg" role="9aQI4">
              <node concept="3clFbF" id="65UowUMLh7y" role="3cqZAp">
                <node concept="37vLTI" id="65UowUMLi_n" role="3clFbG">
                  <node concept="37vLTw" id="7SykjgYVjPE" role="37vLTJ">
                    <ref role="3cqZAo" node="65UowUML3$Q" resolve="myIdeaApplication" />
                  </node>
                  <node concept="2OqwBi" id="7JMs__iKbRt" role="37vLTx">
                    <node concept="Rm8GO" id="7JMs__iKbCA" role="2Oq$k0">
                      <ref role="Rm8GQ" to="ew0j:~MPSHeadlessPlatformStarter$Holder.IT" resolve="IT" />
                      <ref role="1Px2BO" to="ew0j:~MPSHeadlessPlatformStarter$Holder" resolve="MPSHeadlessPlatformStarter.Holder" />
                    </node>
                    <node concept="liA8E" id="7JMs__iKc2i" role="2OqNvi">
                      <ref role="37wK5l" to="ew0j:~MPSHeadlessPlatformStarter$Holder.createApp()" resolve="createApp" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="28TMbOSGHpP" role="3clFbw">
            <node concept="37vLTw" id="28TMbOSGGTn" role="2Oq$k0">
              <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
            </node>
            <node concept="liA8E" id="28TMbOSGHUN" role="2OqNvi">
              <ref role="37wK5l" to="79ha:28TMbOSF4Ad" resolve="isTestMode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6z7xhWku6$B" role="1B3o_S" />
      <node concept="3cqZAl" id="65UowUML6Oy" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3YQ3dO9l$od" role="jymVt" />
    <node concept="3Tm1VV" id="6rx4kZDk5Bs" role="1B3o_S" />
    <node concept="3clFb_" id="6rx4kZDk5DH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doOpenProject" />
      <node concept="2AHcQZ" id="3HZVFd9cFkc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="6rx4kZDk5DI" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="6rx4kZDk5DJ" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwpwd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="6rx4kZDk5DK" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk5DL" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk5DN" role="3clF47">
        <node concept="3cpWs8" id="3qbI1lNp2CV" role="3cqZAp">
          <node concept="3cpWsn" id="3qbI1lNp2CW" role="3cpWs9">
            <property role="TrG5h" value="testMode" />
            <node concept="10P_77" id="3qbI1lNp2CU" role="1tU5fm" />
            <node concept="2YIFZM" id="3qbI1lNp2CX" role="33vP2m">
              <ref role="37wK5l" to="fyhk:~RuntimeFlags.isTestMode()" resolve="isTestMode" />
              <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3qbI1lNoEgG" role="3cqZAp">
          <node concept="3cpWsn" id="3qbI1lNoEgH" role="3cpWs9">
            <property role="TrG5h" value="disposable0" />
            <node concept="3uibUv" id="3qbI1lNoEgI" role="1tU5fm">
              <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
            </node>
            <node concept="10Nm6u" id="3qbI1lNpf6P" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="3AYmLIrPWCw" role="3cqZAp">
          <node concept="3clFbS" id="3AYmLIrPWCy" role="3clFbx">
            <node concept="3clFbF" id="3qbI1lNpbSr" role="3cqZAp">
              <node concept="37vLTI" id="3qbI1lNpbSt" role="3clFbG">
                <node concept="37vLTw" id="3qbI1lNpbSx" role="37vLTJ">
                  <ref role="3cqZAo" node="3qbI1lNoEgH" resolve="disposable0" />
                </node>
                <node concept="2ShNRf" id="5n6ne9kP2gR" role="37vLTx">
                  <node concept="YeOm9" id="5n6ne9kPJZA" role="2ShVmc">
                    <node concept="1Y3b0j" id="5n6ne9kPJZD" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <property role="373rjd" value="true" />
                      <ref role="1Y3XeK" to="v23q:~Disposable" resolve="Disposable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="5n6ne9kPJZE" role="1B3o_S" />
                      <node concept="3clFb_" id="5n6ne9kPJZS" role="jymVt">
                        <property role="TrG5h" value="dispose" />
                        <node concept="3Tm1VV" id="5n6ne9kPJZT" role="1B3o_S" />
                        <node concept="3cqZAl" id="5n6ne9kPJZV" role="3clF45" />
                        <node concept="3clFbS" id="5n6ne9kPJZW" role="3clF47">
                          <node concept="3SKdUt" id="5n6ne9kPOQc" role="3cqZAp">
                            <node concept="1PaTwC" id="5n6ne9kPOQd" role="1aUNEU">
                              <node concept="3oM_SD" id="5n6ne9kPRLg" role="1PaTwD">
                                <property role="3oM_SC" value="Explicit" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRLi" role="1PaTwD">
                                <property role="3oM_SC" value="abstract" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRLl" role="1PaTwD">
                                <property role="3oM_SC" value="class" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRLp" role="1PaTwD">
                                <property role="3oM_SC" value="instead" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRLu" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRL$" role="1PaTwD">
                                <property role="3oM_SC" value="lambda" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRMf" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRMn" role="1PaTwD">
                                <property role="3oM_SC" value="avoid" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRMw" role="1PaTwD">
                                <property role="3oM_SC" value="issues" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRME" role="1PaTwD">
                                <property role="3oM_SC" value="with" />
                              </node>
                              <node concept="3oM_SD" id="5n6ne9kPRMP" role="1PaTwD">
                                <property role="3oM_SC" value="WeakHashMap" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5n6ne9kPJZY" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3oT7WQ909Fn" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXor0y" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXor0z" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0$" role="1PaTwD">
                  <property role="3oM_SC" value="ant" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0_" role="1PaTwD">
                  <property role="3oM_SC" value="tests" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0A" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0B" role="1PaTwD">
                  <property role="3oM_SC" value="run" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0C" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0D" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0E" role="1PaTwD">
                  <property role="3oM_SC" value="flag," />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0F" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0G" role="1PaTwD">
                  <property role="3oM_SC" value="disables" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0H" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXor0I" role="1PaTwD">
                  <property role="3oM_SC" value="checks" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3AYmLIrPXw2" role="3cqZAp">
              <node concept="2YIFZM" id="3AYmLIrPXHJ" role="3clFbG">
                <ref role="1Pybhc" to="ab4o:~VfsRootAccess" resolve="VfsRootAccess" />
                <ref role="37wK5l" to="ab4o:~VfsRootAccess.allowRootAccess(com.intellij.openapi.Disposable,java.lang.String...)" resolve="allowRootAccess" />
                <node concept="37vLTw" id="3qbI1lNoR_l" role="37wK5m">
                  <ref role="3cqZAo" node="3qbI1lNoEgH" resolve="disposable0" />
                </node>
                <node concept="2OqwBi" id="3AYmLIrPXHK" role="37wK5m">
                  <node concept="37vLTw" id="3AYmLIrPYbu" role="2Oq$k0">
                    <ref role="3cqZAo" node="6rx4kZDk5DI" resolve="projectFile" />
                  </node>
                  <node concept="liA8E" id="3AYmLIrPXHM" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3qbI1lNp2CY" role="3clFbw">
            <ref role="3cqZAo" node="3qbI1lNp2CW" resolve="testMode" />
          </node>
        </node>
        <node concept="3clFbJ" id="k06Em_TUE6" role="3cqZAp">
          <node concept="3clFbS" id="k06Em_TUE8" role="3clFbx">
            <node concept="3SKdUt" id="3ZoPMW3emYM" role="3cqZAp">
              <node concept="1PaTwC" id="3ZoPMW3emYN" role="1aUNEU">
                <node concept="3oM_SD" id="3ZoPMW3emYO" role="1PaTwD">
                  <property role="3oM_SC" value="ensure" />
                </node>
                <node concept="3oM_SD" id="3ZoPMW3ensX" role="1PaTwD">
                  <property role="3oM_SC" value="VFS" />
                </node>
                <node concept="3oM_SD" id="3ZoPMW3entv" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3ZoPMW3enu0" role="1PaTwD">
                  <property role="3oM_SC" value="refreshed" />
                </node>
                <node concept="3oM_SD" id="3ZoPMW3enuL" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="3ZoPMW3envi" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3ZoPMW3enw3" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
                <node concept="3oM_SD" id="k06Em_UXhG" role="1PaTwD">
                  <property role="3oM_SC" value="directory" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ZoPMW3egSy" role="3cqZAp">
              <node concept="2YIFZM" id="3ZoPMW3ei4J" role="3clFbG">
                <ref role="37wK5l" to="jlff:~VfsUtil.markDirtyAndRefresh(boolean,boolean,boolean,java.io.File...)" resolve="markDirtyAndRefresh" />
                <ref role="1Pybhc" to="jlff:~VfsUtil" resolve="VfsUtil" />
                <node concept="3clFbT" id="3ZoPMW3eiKL" role="37wK5m" />
                <node concept="3clFbT" id="3ZoPMW3ejL4" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="3ZoPMW3ekzN" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="k06Em_UryK" role="37wK5m">
                  <ref role="3cqZAo" node="6rx4kZDk5DI" resolve="projectFile" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="k06Em_U6n9" role="3clFbw">
            <ref role="3cqZAo" node="3qbI1lNp2CW" resolve="testMode" />
          </node>
        </node>
        <node concept="3cpWs8" id="3qbI1lNoBDW" role="3cqZAp">
          <node concept="3cpWsn" id="3qbI1lNoBDX" role="3cpWs9">
            <property role="TrG5h" value="openedProject" />
            <node concept="3uibUv" id="3qbI1lNpiXD" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1rXfSq" id="3qbI1lNoBDY" role="33vP2m">
              <ref role="37wK5l" node="2mki3EciMiE" resolve="openProjectInIdeaEnvironment" />
              <node concept="37vLTw" id="3qbI1lNoBDZ" role="37wK5m">
                <ref role="3cqZAo" node="6rx4kZDk5DI" resolve="projectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3qbI1lNp6Kk" role="3cqZAp">
          <node concept="3clFbS" id="3qbI1lNp6Km" role="3clFbx">
            <node concept="3clFbF" id="3qbI1lNoZLU" role="3cqZAp">
              <node concept="2YIFZM" id="3qbI1lNp2uw" role="3clFbG">
                <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
                <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
                <node concept="2OqwBi" id="4sfB6SDPu8G" role="37wK5m">
                  <node concept="37vLTw" id="3qbI1lNp2xP" role="2Oq$k0">
                    <ref role="3cqZAo" node="3qbI1lNoBDX" resolve="openedProject" />
                  </node>
                  <node concept="liA8E" id="4sfB6SDPuqQ" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="3qbI1lNpfdp" role="37wK5m">
                  <ref role="3cqZAo" node="3qbI1lNoEgH" resolve="disposable0" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2dqaY0Ct9V4" role="3cqZAp">
              <node concept="2OqwBi" id="2dqaY0CtpqC" role="3clFbG">
                <node concept="10M0yZ" id="7ITB3PTC3Mk" role="2Oq$k0">
                  <ref role="3cqZAo" to="anz7:~IndexingTestUtil.Companion" resolve="Companion" />
                  <ref role="1PxDUh" to="anz7:~IndexingTestUtil" resolve="IndexingTestUtil" />
                </node>
                <node concept="liA8E" id="2dqaY0Ctv8c" role="2OqNvi">
                  <ref role="37wK5l" to="anz7:~IndexingTestUtil$Companion.waitUntilIndexesAreReady(com.intellij.openapi.project.Project)" resolve="waitUntilIndexesAreReady" />
                  <node concept="2OqwBi" id="2dqaY0CtAXz" role="37wK5m">
                    <node concept="37vLTw" id="2dqaY0CtAX$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3qbI1lNoBDX" resolve="openedProject" />
                    </node>
                    <node concept="liA8E" id="2dqaY0CtAX_" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3qbI1lNp8y_" role="3clFbw">
            <ref role="3cqZAo" node="3qbI1lNp2CW" resolve="testMode" />
          </node>
        </node>
        <node concept="3cpWs6" id="5lulEoOe9fD" role="3cqZAp">
          <node concept="37vLTw" id="3qbI1lNoBE0" role="3cqZAk">
            <ref role="3cqZAo" node="3qbI1lNoBDX" resolve="openedProject" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZrz4DL6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1w0tHxV3Ya0" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwXSW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEmptyProject" />
      <node concept="3uibUv" id="2BGPXkEwXSX" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="2BGPXkEwXSY" role="1B3o_S" />
      <node concept="2AHcQZ" id="2BGPXkEwXT0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2BGPXkEwXT6" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WMpR0" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WMpR1" role="3clFbG">
            <ref role="37wK5l" to="79ha:6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="RRSsy" id="3jYQuSB36Wg" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="Xl_RD" id="kMLKV374An" role="RRSoy">
            <property role="Xl_RC" value="Creating an empty project" />
          </node>
        </node>
        <node concept="3cpWs8" id="1OyTUm35Wcw" role="3cqZAp">
          <node concept="3cpWsn" id="1OyTUm35Wcx" role="3cpWs9">
            <property role="TrG5h" value="dummyProjectFile" />
            <node concept="3uibUv" id="1OyTUm35Wcv" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="1rXfSq" id="1OyTUm35Wcy" role="33vP2m">
              <ref role="37wK5l" node="6mzC88CwUC7" resolve="createDummyProjectFile" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_TMdeLkOhC" role="3cqZAp">
          <node concept="3cpWsn" id="4_TMdeLkOhB" role="3cpWs9">
            <property role="TrG5h" value="dummyProject" />
            <property role="3TUv4t" value="false" />
            <node concept="1rXfSq" id="2BGPXkEwrlb" role="33vP2m">
              <ref role="37wK5l" to="79ha:6rx4kZDk5DH" resolve="openProject" />
              <node concept="37vLTw" id="2BGPXkEwrG7" role="37wK5m">
                <ref role="3cqZAo" node="1OyTUm35Wcx" resolve="dummyProjectFile" />
              </node>
            </node>
            <node concept="3uibUv" id="4_TMdeLkOhD" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEtNbT" role="3cqZAp">
          <node concept="37vLTw" id="2BGPXkEtNbU" role="3cqZAk">
            <ref role="3cqZAo" node="4_TMdeLkOhB" resolve="dummyProject" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEwYWl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="9GeULsOtf6" role="jymVt" />
    <node concept="2tJIrI" id="9GeULsOtyK" role="jymVt" />
    <node concept="3clFb_" id="9GeULsOzVi" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="closeProject" />
      <node concept="3Tm1VV" id="9GeULsOzVj" role="1B3o_S" />
      <node concept="3cqZAl" id="9GeULsOzVk" role="3clF45" />
      <node concept="37vLTG" id="9GeULsOzVl" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="9GeULsOzVm" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="9GeULsOzVn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="9GeULsOzVv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="9GeULsOzVw" role="3clF47">
        <node concept="3clFbJ" id="9GeULsOI$Q" role="3cqZAp">
          <node concept="3clFbS" id="9GeULsOI$S" role="3clFbx">
            <node concept="3SKdUt" id="9GeULsQE_n" role="3cqZAp">
              <node concept="1PaTwC" id="9GeULsQE_o" role="1aUNEU">
                <node concept="3oM_SD" id="9GeULsQHZw" role="1PaTwD">
                  <property role="3oM_SC" value="For" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI1e" role="1PaTwD">
                  <property role="3oM_SC" value="MPSProject" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI1h" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI2f" role="1PaTwD">
                  <property role="3oM_SC" value="ProjectComponent" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI22" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI2l" role="1PaTwD">
                  <property role="3oM_SC" value="IDEA's" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI2s" role="1PaTwD">
                  <property role="3oM_SC" value="Project," />
                </node>
                <node concept="3oM_SD" id="9GeULsQI2$" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI3p" role="1PaTwD">
                  <property role="3oM_SC" value="platform" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI4g" role="1PaTwD">
                  <property role="3oM_SC" value="means" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI4r" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="9GeULsQI4B" role="1PaTwD">
                  <property role="3oM_SC" value="close" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="9GeULsQJZe" role="3cqZAp">
              <node concept="1PaTwC" id="9GeULsQJZf" role="1aUNEU">
                <node concept="3oM_SD" id="9GeULsQNqm" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="9GeULsQNqo" role="1PaTwD">
                  <property role="3oM_SC" value="project." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9GeULsQtje" role="3cqZAp">
              <node concept="1rXfSq" id="9GeULsQtjc" role="3clFbG">
                <ref role="37wK5l" to="79ha:6LlhC3WLEQ3" resolve="checkInitialized" />
              </node>
            </node>
            <node concept="3cpWs8" id="9GeULsPlxB" role="3cqZAp">
              <node concept="3cpWsn" id="9GeULsPlxC" role="3cpWs9">
                <property role="TrG5h" value="ideaProject" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="9GeULsPkES" role="1tU5fm">
                  <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="9GeULsPlxD" role="33vP2m">
                  <node concept="1eOMI4" id="9GeULsPlxE" role="2Oq$k0">
                    <node concept="10QFUN" id="9GeULsPlxF" role="1eOMHV">
                      <node concept="3uibUv" id="9GeULsPlxG" role="10QFUM">
                        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                      </node>
                      <node concept="37vLTw" id="9GeULsPlxH" role="10QFUP">
                        <ref role="3cqZAo" node="9GeULsOzVl" resolve="project" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="9GeULsPlxI" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="9GeULsPysS" role="3cqZAp">
              <node concept="2OqwBi" id="9GeULsPCoc" role="3clFbG">
                <node concept="2YIFZM" id="9GeULsPA1z" role="2Oq$k0">
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                </node>
                <node concept="liA8E" id="9GeULsPCod" role="2OqNvi">
                  <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
                  <node concept="1bVj0M" id="9GeULsPCoe" role="37wK5m">
                    <node concept="3clFbS" id="9GeULsPCof" role="1bW5cS">
                      <node concept="9aQIb" id="9GeULsPCog" role="3cqZAp">
                        <node concept="3clFbS" id="9GeULsPCoh" role="9aQI4">
                          <node concept="3clFbF" id="9GeULsPCoi" role="3cqZAp">
                            <node concept="2OqwBi" id="9GeULsQ2cz" role="3clFbG">
                              <node concept="2YIFZM" id="9GeULsPZPt" role="2Oq$k0">
                                <ref role="1Pybhc" to="v50w:~FileEditorManagerEx" resolve="FileEditorManagerEx" />
                                <ref role="37wK5l" to="v50w:~FileEditorManagerEx.getInstanceEx(com.intellij.openapi.project.Project)" resolve="getInstanceEx" />
                                <node concept="37vLTw" id="9GeULsPZPu" role="37wK5m">
                                  <ref role="3cqZAo" node="9GeULsPlxC" resolve="ideaProject" />
                                </node>
                              </node>
                              <node concept="liA8E" id="9GeULsQ2c$" role="2OqNvi">
                                <ref role="37wK5l" to="v50w:~FileEditorManagerEx.closeAllFiles()" resolve="closeAllFiles" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="9GeULsPCom" role="3cqZAp">
                            <node concept="2OqwBi" id="9GeULsPEKa" role="3clFbG">
                              <node concept="2YIFZM" id="9GeULsPCoo" role="2Oq$k0">
                                <ref role="1Pybhc" to="nos0:~ProjectManagerEx" resolve="ProjectManagerEx" />
                                <ref role="37wK5l" to="nos0:~ProjectManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                              </node>
                              <node concept="liA8E" id="9GeULsPEKb" role="2OqNvi">
                                <ref role="37wK5l" to="4nm9:~ProjectManager.closeAndDispose(com.intellij.openapi.project.Project)" resolve="closeAndDispose" />
                                <node concept="37vLTw" id="9GeULsPEKc" role="37wK5m">
                                  <ref role="3cqZAo" node="9GeULsPlxC" resolve="ideaProject" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="18AxS$EF9Nz" role="37wK5m">
                    <ref role="37wK5l" to="bd8o:~ModalityState.nonModal()" resolve="nonModal" />
                    <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="9GeULsOOM0" role="3clFbw">
            <node concept="3uibUv" id="9GeULsOSEC" role="2ZW6by">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="37vLTw" id="9GeULsOL36" role="2ZW6bz">
              <ref role="3cqZAo" node="9GeULsOzVl" resolve="project" />
            </node>
          </node>
          <node concept="9aQIb" id="9GeULsQwvg" role="9aQIa">
            <node concept="3clFbS" id="9GeULsQwvh" role="9aQI4">
              <node concept="3clFbF" id="9GeULsOzVz" role="3cqZAp">
                <node concept="3nyPlj" id="9GeULsOzVy" role="3clFbG">
                  <ref role="37wK5l" to="79ha:3hj1t46fASQ" resolve="closeProject" />
                  <node concept="37vLTw" id="9GeULsOzVx" role="37wK5m">
                    <ref role="3cqZAo" node="9GeULsOzVl" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6jVPebMPs$X" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk5E4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doDispose" />
      <node concept="2AHcQZ" id="3HZVFd9cSIa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3cqZAl" id="6rx4kZDk5E5" role="3clF45" />
      <node concept="3Tm1VV" id="6rx4kZDk5E6" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk5E8" role="3clF47">
        <node concept="3cpWs8" id="6NByjeZQk9L" role="3cqZAp">
          <node concept="3cpWsn" id="6NByjeZQk9M" role="3cpWs9">
            <property role="TrG5h" value="application" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6NByjeZQk3c" role="1tU5fm">
              <ref role="3uigEE" to="bd8o:~Application" resolve="Application" />
            </node>
            <node concept="2YIFZM" id="6NByjeZQk9N" role="33vP2m">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_TMdeLkOz5" role="3cqZAp">
          <node concept="2OqwBi" id="4At3FtNyfAh" role="3clFbG">
            <node concept="37vLTw" id="6NByjeZQk9O" role="2Oq$k0">
              <ref role="3cqZAo" node="6NByjeZQk9M" resolve="application" />
            </node>
            <node concept="liA8E" id="4At3FtNyfKv" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="4At3FtNyfUI" role="37wK5m">
                <node concept="YeOm9" id="5A5jZrz7ufC" role="2ShVmc">
                  <node concept="1Y3b0j" id="5A5jZrz7ufD" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="5A5jZrz7ufE" role="1B3o_S" />
                    <node concept="3clFb_" id="5A5jZrz7ufF" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <property role="od$2w" value="false" />
                      <property role="DiZV1" value="false" />
                      <node concept="2AHcQZ" id="5A5jZrz7ufG" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                      <node concept="3clFbS" id="5A5jZrz7ufH" role="3clF47">
                        <node concept="3SKdUt" id="2iqAsxGm3Fp" role="3cqZAp">
                          <node concept="1PaTwC" id="2iqAsxGm3Fq" role="1aUNEU">
                            <node concept="3oM_SD" id="2iqAsxGm3HB" role="1PaTwD">
                              <property role="3oM_SC" value="XXX" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm3HD" role="1PaTwD">
                              <property role="3oM_SC" value="why" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm3HG" role="1PaTwD">
                              <property role="3oM_SC" value="PM" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm61v" role="1PaTwD">
                              <property role="3oM_SC" value="from" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm62c" role="1PaTwD">
                              <property role="3oM_SC" value="MPS," />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm62i" role="1PaTwD">
                              <property role="3oM_SC" value="not" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm62p" role="1PaTwD">
                              <property role="3oM_SC" value="from" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm63h" role="1PaTwD">
                              <property role="3oM_SC" value="IDEA?" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm63U" role="1PaTwD">
                              <property role="3oM_SC" value="We're" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm64$" role="1PaTwD">
                              <property role="3oM_SC" value="in" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm64J" role="1PaTwD">
                              <property role="3oM_SC" value="IDEA" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm65r" role="1PaTwD">
                              <property role="3oM_SC" value="env," />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm668" role="1PaTwD">
                              <property role="3oM_SC" value="after" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm66m" role="1PaTwD">
                              <property role="3oM_SC" value="all." />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm67_" role="1PaTwD">
                              <property role="3oM_SC" value="Do" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm67P" role="1PaTwD">
                              <property role="3oM_SC" value="we" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGm686" role="1PaTwD">
                              <property role="3oM_SC" value="care" />
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="2iqAsxGm8N8" role="3cqZAp">
                          <node concept="1PaTwC" id="2iqAsxGm8N9" role="1aUNEU">
                            <node concept="3oM_SD" id="2iqAsxGm8PD" role="1PaTwD">
                              <property role="3oM_SC" value=" " />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGmbz8" role="1PaTwD">
                              <property role="3oM_SC" value="" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGmd2g" role="1PaTwD">
                              <property role="3oM_SC" value="about" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGmd2k" role="1PaTwD">
                              <property role="3oM_SC" value="non-MPS" />
                            </node>
                            <node concept="3oM_SD" id="2iqAsxGmd2T" role="1PaTwD">
                              <property role="3oM_SC" value="projects?" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="2iqAsxGmd3J" role="3cqZAp">
                          <node concept="3cpWsn" id="2iqAsxGmd3K" role="3cpWs9">
                            <property role="TrG5h" value="pm" />
                            <node concept="3uibUv" id="2iqAsxGmbe0" role="1tU5fm">
                              <ref role="3uigEE" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                            </node>
                            <node concept="2OqwBi" id="2iqAsxGmd3L" role="33vP2m">
                              <node concept="1rXfSq" id="2iqAsxGmd3M" role="2Oq$k0">
                                <ref role="37wK5l" node="8PnvxglxX$" resolve="getPlatform" />
                              </node>
                              <node concept="liA8E" id="2iqAsxGmd3N" role="2OqNvi">
                                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                                <node concept="3VsKOn" id="2iqAsxGmd3O" role="37wK5m">
                                  <ref role="3VsUkX" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6qMd1Cr4xOT" role="3cqZAp">
                          <node concept="3cpWsn" id="6qMd1Cr4xOU" role="3cpWs9">
                            <property role="TrG5h" value="openedProjects" />
                            <node concept="3uibUv" id="6qMd1Cr4xOR" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~List" resolve="List" />
                              <node concept="3uibUv" id="6qMd1Cr4y6k" role="11_B2D">
                                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="6qMd1Cr4ytp" role="33vP2m">
                              <node concept="1pGfFk" id="OecwLLhehX" role="2ShVmc">
                                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                                <node concept="3uibUv" id="OecwLLheKW" role="1pMfVU">
                                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                                </node>
                                <node concept="2OqwBi" id="OecwLLhgf_" role="37wK5m">
                                  <node concept="37vLTw" id="2iqAsxGmuCJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2iqAsxGmd3K" resolve="pm" />
                                  </node>
                                  <node concept="liA8E" id="OecwLLhgxx" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1DcWWT" id="6qMd1Cr50MW" role="3cqZAp">
                          <node concept="3clFbS" id="6qMd1Cr50MY" role="2LFqv$">
                            <node concept="3clFbJ" id="2LK9TYv$PjQ" role="3cqZAp">
                              <node concept="3clFbS" id="2LK9TYv$PjS" role="3clFbx">
                                <node concept="3SKdUt" id="9GeULsRnP_" role="3cqZAp">
                                  <node concept="1PaTwC" id="9GeULsRnPA" role="1aUNEU">
                                    <node concept="3oM_SD" id="9GeULsRnQL" role="1PaTwD">
                                      <property role="3oM_SC" value="FIXME" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRpOV" role="1PaTwD">
                                      <property role="3oM_SC" value="refactor" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRqhs" role="1PaTwD">
                                      <property role="3oM_SC" value="do" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRqjf" role="1PaTwD">
                                      <property role="3oM_SC" value="avoid" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRqjO" role="1PaTwD">
                                      <property role="3oM_SC" value="code" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRqkq" role="1PaTwD">
                                      <property role="3oM_SC" value="duplication" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRqkx" role="1PaTwD">
                                      <property role="3oM_SC" value="with" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRqkD" role="1PaTwD">
                                      <property role="3oM_SC" value="closeProject" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3SKdUt" id="9GeULsR$3Q" role="3cqZAp">
                                  <node concept="1PaTwC" id="9GeULsR$3R" role="1aUNEU">
                                    <node concept="3oM_SD" id="9GeULsRAwW" role="1PaTwD">
                                      <property role="3oM_SC" value="Perhaps," />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAwY" role="1PaTwD">
                                      <property role="3oM_SC" value="shall" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAy1" role="1PaTwD">
                                      <property role="3oM_SC" value="use" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAy5" role="1PaTwD">
                                      <property role="3oM_SC" value="IDEA's" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAyE" role="1PaTwD">
                                      <property role="3oM_SC" value="Project" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAzK" role="1PaTwD">
                                      <property role="3oM_SC" value="manager" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRA$7" role="1PaTwD">
                                      <property role="3oM_SC" value="here" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRA_f" role="1PaTwD">
                                      <property role="3oM_SC" value="directly," />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAAS" role="1PaTwD">
                                      <property role="3oM_SC" value="and" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRABy" role="1PaTwD">
                                      <property role="3oM_SC" value="then" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAF8" role="1PaTwD">
                                      <property role="3oM_SC" value="check" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAFO" role="1PaTwD">
                                      <property role="3oM_SC" value="if" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRAG1" role="1PaTwD">
                                      <property role="3oM_SC" value="any" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3SKdUt" id="9GeULsRE$q" role="3cqZAp">
                                  <node concept="1PaTwC" id="9GeULsRE$r" role="1aUNEU">
                                    <node concept="3oM_SD" id="9GeULsRH1a" role="1PaTwD">
                                      <property role="3oM_SC" value="MPSProject" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRH1c" role="1PaTwD">
                                      <property role="3oM_SC" value="left" />
                                    </node>
                                    <node concept="3oM_SD" id="9GeULsRH1f" role="1PaTwD">
                                      <property role="3oM_SC" value="open" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="9GeULsRH1j" role="3cqZAp">
                                  <node concept="3cpWsn" id="9GeULsRH1k" role="3cpWs9">
                                    <property role="TrG5h" value="ideaProject" />
                                    <node concept="3uibUv" id="9GeULsRG5C" role="1tU5fm">
                                      <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                                    </node>
                                    <node concept="2OqwBi" id="9GeULsRH1l" role="33vP2m">
                                      <node concept="1eOMI4" id="9GeULsRH1m" role="2Oq$k0">
                                        <node concept="10QFUN" id="9GeULsRH1n" role="1eOMHV">
                                          <node concept="3uibUv" id="9GeULsRH1o" role="10QFUM">
                                            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                                          </node>
                                          <node concept="37vLTw" id="9GeULsRH1p" role="10QFUP">
                                            <ref role="3cqZAo" node="6qMd1Cr50MZ" resolve="project" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="9GeULsRH1q" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="9GeULsQWgW" role="3cqZAp">
                                  <node concept="2OqwBi" id="9GeULsQWgX" role="3clFbG">
                                    <node concept="2YIFZM" id="9GeULsQWgY" role="2Oq$k0">
                                      <ref role="1Pybhc" to="v50w:~FileEditorManagerEx" resolve="FileEditorManagerEx" />
                                      <ref role="37wK5l" to="v50w:~FileEditorManagerEx.getInstanceEx(com.intellij.openapi.project.Project)" resolve="getInstanceEx" />
                                      <node concept="37vLTw" id="9GeULsQWgZ" role="37wK5m">
                                        <ref role="3cqZAo" node="9GeULsRH1k" resolve="ideaProject" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="9GeULsQWh0" role="2OqNvi">
                                      <ref role="37wK5l" to="v50w:~FileEditorManagerEx.closeAllFiles()" resolve="closeAllFiles" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="9GeULsQWh1" role="3cqZAp">
                                  <node concept="2OqwBi" id="9GeULsQWh2" role="3clFbG">
                                    <node concept="2YIFZM" id="9GeULsQWh3" role="2Oq$k0">
                                      <ref role="1Pybhc" to="nos0:~ProjectManagerEx" resolve="ProjectManagerEx" />
                                      <ref role="37wK5l" to="nos0:~ProjectManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                                    </node>
                                    <node concept="liA8E" id="9GeULsQWh4" role="2OqNvi">
                                      <ref role="37wK5l" to="4nm9:~ProjectManager.closeAndDispose(com.intellij.openapi.project.Project)" resolve="closeAndDispose" />
                                      <node concept="37vLTw" id="9GeULsQWh5" role="37wK5m">
                                        <ref role="3cqZAo" node="9GeULsRH1k" resolve="ideaProject" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2ZW3vV" id="2LK9TYv$QgJ" role="3clFbw">
                                <node concept="3uibUv" id="2LK9TYv$QgK" role="2ZW6by">
                                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                                </node>
                                <node concept="37vLTw" id="2LK9TYv$QgL" role="2ZW6bz">
                                  <ref role="3cqZAo" node="6qMd1Cr50MZ" resolve="project" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="2LK9TYv$Ssr" role="9aQIa">
                                <node concept="3clFbS" id="2LK9TYv$Sss" role="9aQI4">
                                  <node concept="3SKdUt" id="9GeULsShVQ" role="3cqZAp">
                                    <node concept="1PaTwC" id="9GeULsShVR" role="1aUNEU">
                                      <node concept="3oM_SD" id="9GeULsSlrN" role="1PaTwD">
                                        <property role="3oM_SC" value="no" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlsb" role="1PaTwD">
                                        <property role="3oM_SC" value="idea" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlse" role="1PaTwD">
                                        <property role="3oM_SC" value="why" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlsi" role="1PaTwD">
                                        <property role="3oM_SC" value="there's" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlsn" role="1PaTwD">
                                        <property role="3oM_SC" value="a" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlst" role="1PaTwD">
                                        <property role="3oM_SC" value="need" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSls$" role="1PaTwD">
                                        <property role="3oM_SC" value="to" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlsG" role="1PaTwD">
                                        <property role="3oM_SC" value="add" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlsP" role="1PaTwD">
                                        <property role="3oM_SC" value="write" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlsZ" role="1PaTwD">
                                        <property role="3oM_SC" value="action" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlta" role="1PaTwD">
                                        <property role="3oM_SC" value="for" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSltm" role="1PaTwD">
                                        <property role="3oM_SC" value="project" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSltz" role="1PaTwD">
                                        <property role="3oM_SC" value="dispose." />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlug" role="1PaTwD">
                                        <property role="3oM_SC" value="isn't" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSluv" role="1PaTwD">
                                        <property role="3oM_SC" value="write-ready" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSluJ" role="1PaTwD">
                                        <property role="3oM_SC" value="thread" />
                                      </node>
                                      <node concept="3oM_SD" id="9GeULsSlv0" role="1PaTwD">
                                        <property role="3oM_SC" value="enough?" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="6qMd1Cr52Fu" role="3cqZAp">
                                    <node concept="2OqwBi" id="6qMd1Cr52Y8" role="3clFbG">
                                      <node concept="37vLTw" id="6qMd1Cr52Fs" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6qMd1Cr50MZ" resolve="project" />
                                      </node>
                                      <node concept="liA8E" id="6qMd1Cr53a5" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.dispose()" resolve="dispose" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="6qMd1Cr50MZ" role="1Duv9x">
                            <property role="TrG5h" value="project" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="6qMd1Cr51kb" role="1tU5fm">
                              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6qMd1Cr51Zg" role="1DdaDG">
                            <ref role="3cqZAo" node="6qMd1Cr4xOU" resolve="openedProjects" />
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7DdU2IfcwMX" role="3cqZAp">
                          <node concept="3clFbS" id="7DdU2IfcwMZ" role="3clFbx">
                            <node concept="3clFbF" id="2aedWm2WZF_" role="3cqZAp">
                              <node concept="2YIFZM" id="7ITB3PTCp2P" role="3clFbG">
                                <ref role="37wK5l" to="anz7:~PlatformTestUtil.dispatchAllEventsInIdeEventQueue()" resolve="dispatchAllEventsInIdeEventQueue" />
                                <ref role="1Pybhc" to="anz7:~PlatformTestUtil" resolve="PlatformTestUtil" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="2aedWm2Xbxx" role="3cqZAp">
                              <node concept="2YIFZM" id="2aedWm2Xeqc" role="3clFbG">
                                <ref role="37wK5l" to="cyhs:~JarFileSystemImpl.cleanupForNextTest()" resolve="cleanupForNextTest" />
                                <ref role="1Pybhc" to="cyhs:~JarFileSystemImpl" resolve="JarFileSystemImpl" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="7DdU2IfbKAZ" role="3cqZAp">
                              <node concept="2OqwBi" id="7DdU2IfcaC8" role="3clFbG">
                                <node concept="1eOMI4" id="7DdU2Ifc0mR" role="2Oq$k0">
                                  <node concept="10QFUN" id="7DdU2Ifc0mQ" role="1eOMHV">
                                    <node concept="2YIFZM" id="7DdU2Ifc0mP" role="10QFUP">
                                      <ref role="37wK5l" to="8902:~FileBasedIndex.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="8902:~FileBasedIndexImpl" resolve="FileBasedIndexImpl" />
                                    </node>
                                    <node concept="3uibUv" id="7DdU2Ifc4SC" role="10QFUM">
                                      <ref role="3uigEE" to="8902:~FileBasedIndexImpl" resolve="FileBasedIndexImpl" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="7DdU2IfcfpL" role="2OqNvi">
                                  <ref role="37wK5l" to="8902:~FileBasedIndexImpl.cleanupForNextTest()" resolve="cleanupForNextTest" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7DdU2Ifd4$W" role="3clFbw">
                            <node concept="37vLTw" id="7DdU2IfcYMt" role="2Oq$k0">
                              <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
                            </node>
                            <node concept="liA8E" id="7DdU2Ifd9kX" role="2OqNvi">
                              <ref role="37wK5l" to="79ha:28TMbOSF4Ad" resolve="isTestMode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2LK9TYv$UsL" role="3cqZAp">
                          <node concept="2OqwBi" id="2LK9TYv$UsM" role="3clFbG">
                            <node concept="liA8E" id="2LK9TYv$UsN" role="2OqNvi">
                              <ref role="37wK5l" to="bd8o:~Application.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
                              <node concept="2ShNRf" id="2LK9TYv$UsO" role="37wK5m">
                                <node concept="YeOm9" id="2LK9TYv$UsP" role="2ShVmc">
                                  <node concept="1Y3b0j" id="2LK9TYv$UsQ" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                                    <node concept="3Tm1VV" id="2LK9TYv$UsR" role="1B3o_S" />
                                    <node concept="3clFb_" id="2LK9TYv$UsS" role="jymVt">
                                      <property role="1EzhhJ" value="false" />
                                      <property role="TrG5h" value="run" />
                                      <property role="DiZV1" value="false" />
                                      <node concept="3Tm1VV" id="2LK9TYv$UsT" role="1B3o_S" />
                                      <node concept="3cqZAl" id="2LK9TYv$UsU" role="3clF45" />
                                      <node concept="3clFbS" id="2LK9TYv$UsV" role="3clF47">
                                        <node concept="3SKdUt" id="7SykjgYWusG" role="3cqZAp">
                                          <node concept="1PaTwC" id="7SykjgYWusH" role="1aUNEU">
                                            <node concept="3oM_SD" id="7SykjgYWusJ" role="1PaTwD">
                                              <property role="3oM_SC" value="for" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuuB" role="1PaTwD">
                                              <property role="3oM_SC" value="IdeaTestApplication" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuvq" role="1PaTwD">
                                              <property role="3oM_SC" value="case" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuvQ" role="1PaTwD">
                                              <property role="3oM_SC" value="(myUnitTestMode" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuyz" role="1PaTwD">
                                              <property role="3oM_SC" value="==" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuyD" role="1PaTwD">
                                              <property role="3oM_SC" value="true)" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuzw" role="1PaTwD">
                                              <property role="3oM_SC" value="dispose()" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuAh" role="1PaTwD">
                                              <property role="3oM_SC" value="eventually" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuBj" role="1PaTwD">
                                              <property role="3oM_SC" value="clears" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWu$0" role="1PaTwD">
                                              <property role="3oM_SC" value="DTA.ourInstance" />
                                            </node>
                                            <node concept="3oM_SD" id="7SykjgYWuBQ" role="1PaTwD">
                                              <property role="3oM_SC" value="field" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="6BY6fCdVoLb" role="3cqZAp">
                                          <node concept="3clFbS" id="6BY6fCdVoLd" role="3clFbx">
                                            <node concept="3clFbF" id="6BY6fCdVqJF" role="3cqZAp">
                                              <node concept="2YIFZM" id="6BY6fCdVqKu" role="3clFbG">
                                                <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
                                                <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
                                                <node concept="10QFUN" id="6BY6fCdVs4K" role="37wK5m">
                                                  <node concept="3uibUv" id="6BY6fCdVsKr" role="10QFUM">
                                                    <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
                                                  </node>
                                                  <node concept="37vLTw" id="6BY6fCdVrxc" role="10QFUP">
                                                    <ref role="3cqZAo" node="65UowUML3$Q" resolve="myIdeaApplication" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2ZW3vV" id="6BY6fCdVpte" role="3clFbw">
                                            <node concept="3uibUv" id="6BY6fCdVpSn" role="2ZW6by">
                                              <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
                                            </node>
                                            <node concept="37vLTw" id="6BY6fCdVp23" role="2ZW6bz">
                                              <ref role="3cqZAo" node="65UowUML3$Q" resolve="myIdeaApplication" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="65UowUMLox3" role="3cqZAp">
                                          <node concept="37vLTI" id="65UowUMLppy" role="3clFbG">
                                            <node concept="10Nm6u" id="65UowUMLpuC" role="37vLTx" />
                                            <node concept="37vLTw" id="65UowUMLox1" role="37vLTJ">
                                              <ref role="3cqZAo" node="65UowUML3$Q" resolve="myIdeaApplication" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="6NByjeZQnaG" role="2Oq$k0">
                              <ref role="3cqZAo" node="6NByjeZQk9M" resolve="application" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5A5jZrz7ufY" role="1B3o_S" />
                      <node concept="3cqZAl" id="5A5jZrz7ufZ" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2aedWm2Xhr0" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.nonModal()" resolve="nonModal" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28$8eDnae_4" role="jymVt" />
    <node concept="3clFb_" id="28$8eDnahaU" role="jymVt">
      <property role="TrG5h" value="initLibraries" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="28$8eDnahaV" role="3clF46">
        <property role="TrG5h" value="libInitializer" />
        <node concept="3uibUv" id="28$8eDnajYH" role="1tU5fm">
          <ref role="3uigEE" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
        </node>
        <node concept="2AHcQZ" id="28$8eDnahaX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tmbuc" id="28$8eDnahbS" role="1B3o_S" />
      <node concept="3cqZAl" id="28$8eDnahbT" role="3clF45" />
      <node concept="3clFbS" id="28$8eDnahbU" role="3clF47">
        <node concept="3clFbJ" id="74F5dZ_1JI4" role="3cqZAp">
          <node concept="3clFbS" id="74F5dZ_1JI6" role="3clFbx">
            <node concept="3SKdUt" id="6oGbDMFIPHH" role="3cqZAp">
              <node concept="1PaTwC" id="6oGbDMFIPHI" role="1aUNEU">
                <node concept="3oM_SD" id="6oGbDMFIPHM" role="1PaTwD">
                  <property role="3oM_SC" value="defaults" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIPHN" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIPHO" role="1PaTwD">
                  <property role="3oM_SC" value="IoFileSystem" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIPHP" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIPHQ" role="1PaTwD">
                  <property role="3oM_SC" value="now" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIS$t" role="1PaTwD">
                  <property role="3oM_SC" value="(historically)," />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIS$u" role="1PaTwD">
                  <property role="3oM_SC" value="although" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIS__" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISAG" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISAH" role="1PaTwD">
                  <property role="3oM_SC" value="think" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISBO" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISDb" role="1PaTwD">
                  <property role="3oM_SC" value="bad" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISE2" role="1PaTwD">
                  <property role="3oM_SC" value="idea" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISQc" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISE3" role="1PaTwD">
                  <property role="3oM_SC" value="go" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISFa" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISGh" role="1PaTwD">
                  <property role="3oM_SC" value="Java" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISJ$" role="1PaTwD">
                  <property role="3oM_SC" value="IO" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISJP" role="1PaTwD">
                  <property role="3oM_SC" value="FS" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISKG" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6oGbDMFIT89" role="3cqZAp">
              <node concept="1PaTwC" id="6oGbDMFIT7C" role="1aUNEU">
                <node concept="3oM_SD" id="6oGbDMFIT7B" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISM3" role="1PaTwD">
                  <property role="3oM_SC" value="IdeaEnv" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISRj" role="1PaTwD">
                  <property role="3oM_SC" value="(after" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISTw" role="1PaTwD">
                  <property role="3oM_SC" value="all," />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISTL" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISUS" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISUT" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISUU" role="1PaTwD">
                  <property role="3oM_SC" value="tests/tools" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISX7" role="1PaTwD">
                  <property role="3oM_SC" value="scenarios" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFISZ$" role="1PaTwD">
                  <property role="3oM_SC" value="here," />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIT4N" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIT4O" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIXYp" role="1PaTwD">
                  <property role="3oM_SC" value="full" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIXYE" role="1PaTwD">
                  <property role="3oM_SC" value="magic" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIY0R" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIY1I" role="1PaTwD">
                  <property role="3oM_SC" value="IDEA" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFIY3V" role="1PaTwD">
                  <property role="3oM_SC" value="VFS)." />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$HZ" role="1PaTwD">
                  <property role="3oM_SC" value="OTOH," />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$Kc" role="1PaTwD">
                  <property role="3oM_SC" value="there" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$Lj" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$Ma" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$OR" role="1PaTwD">
                  <property role="3oM_SC" value="IDEA" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$Qe" role="1PaTwD">
                  <property role="3oM_SC" value="VFS" />
                </node>
                <node concept="3oM_SD" id="6oGbDMFJ$SF" role="1PaTwD">
                  <property role="3oM_SC" value="anyway." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3eUNqOk96xr" role="3cqZAp">
              <node concept="3cpWsn" id="3eUNqOk96xs" role="3cpWs9">
                <property role="TrG5h" value="helper" />
                <node concept="3uibUv" id="3eUNqOk96xp" role="1tU5fm">
                  <ref role="3uigEE" to="79ha:3eUNqOk8qK6" resolve="LibraryContributorHelper" />
                </node>
                <node concept="2ShNRf" id="3eUNqOk96xt" role="33vP2m">
                  <node concept="1pGfFk" id="3eUNqOk96xu" role="2ShVmc">
                    <ref role="37wK5l" to="79ha:42pPXbiGsoN" resolve="LibraryContributorHelper" />
                    <node concept="2OqwBi" id="6oGbDMFJf4S" role="37wK5m">
                      <node concept="2OqwBi" id="6oGbDMFIIbf" role="2Oq$k0">
                        <node concept="1rXfSq" id="6oGbDMFIEB$" role="2Oq$k0">
                          <ref role="37wK5l" node="8PnvxglxX$" resolve="getPlatform" />
                        </node>
                        <node concept="liA8E" id="6oGbDMFIYaN" role="2OqNvi">
                          <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                          <node concept="3VsKOn" id="6oGbDMFJbvJ" role="37wK5m">
                            <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6oGbDMFJkil" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~VFSManager.getUmbrellaFileSystemJavaIO()" resolve="getUmbrellaFileSystemJavaIO" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28$8eDnaoc6" role="3cqZAp">
              <node concept="2OqwBi" id="28$8eDnaoyI" role="3clFbG">
                <node concept="37vLTw" id="28$8eDnaoc4" role="2Oq$k0">
                  <ref role="3cqZAo" node="28$8eDnahaV" resolve="libInitializer" />
                </node>
                <node concept="liA8E" id="28$8eDnap6N" role="2OqNvi">
                  <ref role="37wK5l" to="32g5:~LibraryInitializer.load(java.util.List)" resolve="load" />
                  <node concept="2YIFZM" id="28$8eDnar4v" role="37wK5m">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                    <node concept="2OqwBi" id="28$8eDnar4w" role="37wK5m">
                      <node concept="37vLTw" id="28$8eDnar4x" role="2Oq$k0">
                        <ref role="3cqZAo" node="3eUNqOk96xs" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="28$8eDnar4y" role="2OqNvi">
                        <ref role="37wK5l" to="79ha:3eUNqOk8lkP" resolve="createLibContributorForLibs" />
                        <node concept="2OqwBi" id="1ROuiI02$i" role="37wK5m">
                          <node concept="37vLTw" id="3eUNqOk96xv" role="2Oq$k0">
                            <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
                          </node>
                          <node concept="liA8E" id="1ROuiI03qt" role="2OqNvi">
                            <ref role="37wK5l" to="79ha:5UWB9tkma7" resolve="getLibs" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="28$8eDnamEd" role="37wK5m">
                          <ref role="37wK5l" to="79ha:5mffBJ2WBJ9" resolve="getRootClassLoader" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="74F5dZ_1KhG" role="3clFbw">
            <node concept="2OqwBi" id="74F5dZ_1K2b" role="2Oq$k0">
              <node concept="37vLTw" id="74F5dZ_1JXh" role="2Oq$k0">
                <ref role="3cqZAo" to="79ha:3eUNqOk7wUa" resolve="myConfig" />
              </node>
              <node concept="liA8E" id="74F5dZ_1K8T" role="2OqNvi">
                <ref role="37wK5l" to="79ha:5UWB9tkma7" resolve="getLibs" />
              </node>
            </node>
            <node concept="3GX2aA" id="74F5dZ_1KLQ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3SKdUt" id="28$8eDnawaY" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXor1u" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXor1v" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1w" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1x" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1y" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1z" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1$" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1_" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1A" role="1PaTwD">
              <property role="3oM_SC" value="regular" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1B" role="1PaTwD">
              <property role="3oM_SC" value="platform" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1C" role="1PaTwD">
              <property role="3oM_SC" value="component" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1D" role="1PaTwD">
              <property role="3oM_SC" value="mechanism" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1E" role="1PaTwD">
              <property role="3oM_SC" value="(ext" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1F" role="1PaTwD">
              <property role="3oM_SC" value="points," />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1G" role="1PaTwD">
              <property role="3oM_SC" value="PluginLibraryContributor" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1H" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1I" role="1PaTwD">
              <property role="3oM_SC" value="RepositoryInitializingComponent)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="28$8eDnahbV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4J9cha2cxg8" role="jymVt" />
    <node concept="3clFb_" id="6mzC88CwUC7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createDummyProjectFile" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="1OyTUm35lpp" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="5DljQtNCCPE" role="1B3o_S" />
      <node concept="3clFbS" id="6mzC88CwUCa" role="3clF47">
        <node concept="3cpWs8" id="7Sl4agR40ou" role="3cqZAp">
          <node concept="3cpWsn" id="7Sl4agR40ov" role="3cpWs9">
            <property role="TrG5h" value="dummyProjDir" />
            <node concept="3uibUv" id="7Sl4agR40ot" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2YIFZM" id="7Sl4agR40ow" role="33vP2m">
              <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
              <ref role="37wK5l" to="18ew:~FileUtil.createTmpDir()" resolve="createTmpDir" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Sl4agR4LoC" role="3cqZAp">
          <node concept="3cpWsn" id="7Sl4agR4LoD" role="3cpWs9">
            <property role="TrG5h" value="dotMps" />
            <node concept="3uibUv" id="7Sl4agR4LoA" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="7Sl4agR4LoE" role="33vP2m">
              <node concept="1pGfFk" id="7Sl4agR4LoF" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="7Sl4agR4LoG" role="37wK5m">
                  <ref role="3cqZAo" node="7Sl4agR40ov" resolve="dummyProjDir" />
                </node>
                <node concept="10M0yZ" id="3BYf6bg3O0h" role="37wK5m">
                  <ref role="1PxDUh" to="4nm9:~Project" resolve="Project" />
                  <ref role="3cqZAo" to="4nm9:~Project.DIRECTORY_STORE_FOLDER" resolve="DIRECTORY_STORE_FOLDER" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Sl4agR4498" role="3cqZAp">
          <node concept="2OqwBi" id="7Sl4agR4HFL" role="3clFbG">
            <node concept="37vLTw" id="7Sl4agR4LoI" role="2Oq$k0">
              <ref role="3cqZAo" node="7Sl4agR4LoD" resolve="dotMps" />
            </node>
            <node concept="liA8E" id="7Sl4agR4LeY" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.mkdir()" resolve="mkdir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jln2Vr9tnX" role="3cqZAp">
          <node concept="2OqwBi" id="2jln2Vr9tnY" role="3clFbG">
            <node concept="37vLTw" id="2jln2Vr9ETa" role="2Oq$k0">
              <ref role="3cqZAo" node="7Sl4agR40ov" resolve="dummyProjDir" />
            </node>
            <node concept="liA8E" id="2jln2Vr9to0" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.deleteOnExit()" resolve="deleteOnExit" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OyTUm35DnB" role="3cqZAp">
          <node concept="37vLTw" id="7Sl4agR4SfZ" role="3clFbG">
            <ref role="3cqZAo" node="7Sl4agR40ov" resolve="dummyProjDir" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CBc8rDxTf9" role="jymVt" />
    <node concept="3clFb_" id="2mki3EciMiE" role="jymVt">
      <property role="TrG5h" value="openProjectInIdeaEnvironment" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="1CqjT$$5nR0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2pL3QjrzSqJ" role="3clF47">
        <node concept="3clFbJ" id="4_TMdeLkOnW" role="3cqZAp">
          <node concept="3fqX7Q" id="4_TMdeLkOnX" role="3clFbw">
            <node concept="2OqwBi" id="4_TMdeLlH9K" role="3fr31v">
              <node concept="37vLTw" id="4_TMdeLlH9J" role="2Oq$k0">
                <ref role="3cqZAo" node="2pL3QjrzSG8" resolve="projectFile" />
              </node>
              <node concept="liA8E" id="4_TMdeLlH9L" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4_TMdeLkOo1" role="3clFbx">
            <node concept="YS8fn" id="4_TMdeLkOo7" role="3cqZAp">
              <node concept="2ShNRf" id="4_TMdeLlH9M" role="YScLw">
                <node concept="1pGfFk" id="4_TMdeLlH9N" role="2ShVmc">
                  <ref role="37wK5l" node="6_mFlZWT$u2" resolve="IdeaEnvironment.ProjectDirectoryDoesNotExistException" />
                  <node concept="2OqwBi" id="6_mFlZWTJjf" role="37wK5m">
                    <node concept="37vLTw" id="6_mFlZWTJjg" role="2Oq$k0">
                      <ref role="3cqZAo" node="2pL3QjrzSG8" resolve="projectFile" />
                    </node>
                    <node concept="liA8E" id="6_mFlZWTJjh" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_TMdeLkOoe" role="3cqZAp">
          <node concept="3cpWsn" id="4_TMdeLkOod" role="3cpWs9">
            <property role="TrG5h" value="filePath" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="3SJmozgBGgm" role="1tU5fm" />
            <node concept="2OqwBi" id="4_TMdeLlH9W" role="33vP2m">
              <node concept="37vLTw" id="4_TMdeLlH9V" role="2Oq$k0">
                <ref role="3cqZAo" node="2pL3QjrzSG8" resolve="projectFile" />
              </node>
              <node concept="liA8E" id="4_TMdeLlH9X" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u34iHEuIWy" role="3cqZAp" />
        <node concept="3cpWs8" id="4_TMdeLkOoj" role="3cqZAp">
          <node concept="3cpWsn" id="4_TMdeLkOoi" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2u34iHEuBFG" role="1tU5fm">
              <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="2u34iHEuBPU" role="11_B2D">
                <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_TMdeLkOoq" role="33vP2m">
              <node concept="1pGfFk" id="2u34iHEuCMl" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="18ew:~Reference.&lt;init&gt;()" resolve="Reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_TMdeLkOos" role="3cqZAp">
          <node concept="3cpWsn" id="4_TMdeLkOor" role="3cpWs9">
            <property role="TrG5h" value="exc" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2u34iHEuCOW" role="1tU5fm">
              <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="2u34iHEuCWC" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_TMdeLkOoy" role="33vP2m">
              <node concept="1pGfFk" id="2u34iHEuDT3" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="18ew:~Reference.&lt;init&gt;()" resolve="Reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5lgc1fDHmps" role="3cqZAp">
          <node concept="2OqwBi" id="5lgc1fDHjCd" role="3clFbG">
            <node concept="2YIFZM" id="4At3FtNx0S2" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="5lgc1fDHjPi" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="5lgc1fDHib3" role="37wK5m">
                <node concept="YeOm9" id="5lgc1fDHib4" role="2ShVmc">
                  <node concept="1Y3b0j" id="5lgc1fDHib5" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="5lgc1fDHib6" role="1B3o_S" />
                    <node concept="3clFb_" id="5lgc1fDHib7" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <property role="od$2w" value="false" />
                      <property role="DiZV1" value="false" />
                      <node concept="3clFbS" id="5lgc1fDHib8" role="3clF47">
                        <node concept="3J1_TO" id="5lgc1fDHib9" role="3cqZAp">
                          <node concept="3uVAMA" id="5lgc1fDHiba" role="1zxBo5">
                            <node concept="XOnhg" id="5lgc1fDHibi" role="1zc67B">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="e" />
                              <node concept="nSUau" id="xvs04dIxy5" role="1tU5fm">
                                <node concept="3uibUv" id="5lgc1fDHibj" role="nSUat">
                                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="5lgc1fDHibb" role="1zc67A">
                              <node concept="3clFbF" id="5lgc1fDHibc" role="3cqZAp">
                                <node concept="2OqwBi" id="2u34iHEuG4z" role="3clFbG">
                                  <node concept="37vLTw" id="2u34iHEuFRP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4_TMdeLkOor" resolve="exc" />
                                  </node>
                                  <node concept="liA8E" id="2u34iHEuG7p" role="2OqNvi">
                                    <ref role="37wK5l" to="18ew:~Reference.set(java.lang.Object)" resolve="set" />
                                    <node concept="37vLTw" id="2u34iHEuGip" role="37wK5m">
                                      <ref role="3cqZAo" node="5lgc1fDHibi" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="5lgc1fDHibk" role="1zxBo7">
                            <node concept="RRSsy" id="3jYQuSB36Wm" role="3cqZAp">
                              <property role="RRSoG" value="h1akgim/info" />
                              <node concept="3cpWs3" id="5lgc1fDHibm" role="RRSoy">
                                <node concept="Xl_RD" id="5lgc1fDHibn" role="3uHU7w">
                                  <property role="Xl_RC" value="'" />
                                </node>
                                <node concept="3cpWs3" id="5lgc1fDHibo" role="3uHU7B">
                                  <node concept="Xl_RD" id="5lgc1fDHibp" role="3uHU7B">
                                    <property role="Xl_RC" value="Load and open the project with path '" />
                                  </node>
                                  <node concept="37vLTw" id="5lgc1fDHibq" role="3uHU7w">
                                    <ref role="3cqZAo" node="4_TMdeLkOod" resolve="filePath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="3bM_6RFztnX" role="3cqZAp">
                              <node concept="1PaTwC" id="3bM_6RFztnY" role="1aUNEU">
                                <node concept="3oM_SD" id="3bM_6RFztnZ" role="1PaTwD">
                                  <property role="3oM_SC" value="fixme" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFztrQ" role="1PaTwD">
                                  <property role="3oM_SC" value="this" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFztrT" role="1PaTwD">
                                  <property role="3oM_SC" value="is" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFztt$" role="1PaTwD">
                                  <property role="3oM_SC" value="an" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFzttD" role="1PaTwD">
                                  <property role="3oM_SC" value="IDE" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFzttJ" role="1PaTwD">
                                  <property role="3oM_SC" value="way" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFzttQ" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFzttY" role="1PaTwD">
                                  <property role="3oM_SC" value="opening" />
                                </node>
                                <node concept="3oM_SD" id="3bM_6RFztuP" role="1PaTwD">
                                  <property role="3oM_SC" value="project" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5lgc1fDHibr" role="3cqZAp">
                              <node concept="2OqwBi" id="2u34iHEuFdL" role="3clFbG">
                                <node concept="37vLTw" id="2u34iHEuFaW" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
                                </node>
                                <node concept="liA8E" id="2u34iHEuFgY" role="2OqNvi">
                                  <ref role="37wK5l" to="18ew:~Reference.set(java.lang.Object)" resolve="set" />
                                  <node concept="2YIFZM" id="6J69$P34_eK" role="37wK5m">
                                    <ref role="37wK5l" to="z1c4:~MPSProject.open(java.lang.String)" resolve="open" />
                                    <ref role="1Pybhc" to="z1c4:~MPSProject" resolve="MPSProject" />
                                    <node concept="37vLTw" id="6J69$P34F1K" role="37wK5m">
                                      <ref role="3cqZAo" node="4_TMdeLkOod" resolve="filePath" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1_ERPxYO7bN" role="3cqZAp">
                              <node concept="1rXfSq" id="1_ERPxYO7bM" role="3clFbG">
                                <ref role="37wK5l" node="1_ERPxYO7bJ" resolve="refreshProjectDir" />
                                <node concept="2OqwBi" id="1_ERPxYOVPJ" role="37wK5m">
                                  <node concept="37vLTw" id="1_ERPxYOVNl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
                                  </node>
                                  <node concept="liA8E" id="1_ERPxYOVVh" role="2OqNvi">
                                    <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="6J69$P36Ary" role="37wK5m">
                                  <ref role="3cqZAo" node="2pL3QjrzSG8" resolve="projectFile" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5lgc1fDHibG" role="1B3o_S" />
                      <node concept="3cqZAl" id="5lgc1fDHibH" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="6J69$P34lnR" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.nonModal()" resolve="nonModal" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="78Cs0exua1B" role="3cqZAp" />
        <node concept="3clFbJ" id="78Cs0exttV_" role="3cqZAp">
          <node concept="3fqX7Q" id="78Cs0exttVA" role="3clFbw">
            <node concept="2OqwBi" id="78Cs0extLft" role="3fr31v">
              <node concept="37vLTw" id="78Cs0extLfs" role="2Oq$k0">
                <ref role="3cqZAo" node="4_TMdeLkOor" resolve="exc" />
              </node>
              <node concept="liA8E" id="78Cs0extLfu" role="2OqNvi">
                <ref role="37wK5l" to="18ew:~Reference.isNull()" resolve="isNull" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="78Cs0exttVE" role="3clFbx">
            <node concept="YS8fn" id="78Cs0exttVK" role="3cqZAp">
              <node concept="2ShNRf" id="78Cs0extShU" role="YScLw">
                <node concept="1pGfFk" id="78Cs0extSjn" role="2ShVmc">
                  <ref role="37wK5l" node="78Cs0exswcD" resolve="IdeaEnvironment.CouldNotLoadProjectException" />
                  <node concept="2YIFZM" id="78Cs0extSjo" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="78Cs0extSjp" role="37wK5m">
                      <property role="Xl_RC" value="ProjectManager could not load project from '%s'" />
                    </node>
                    <node concept="2OqwBi" id="78Cs0extSjq" role="37wK5m">
                      <node concept="37vLTw" id="78Cs0extSjr" role="2Oq$k0">
                        <ref role="3cqZAo" node="2pL3QjrzSG8" resolve="projectFile" />
                      </node>
                      <node concept="liA8E" id="78Cs0extSjs" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78Cs0extVHr" role="37wK5m">
                    <node concept="37vLTw" id="78Cs0extVHq" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkOor" resolve="exc" />
                    </node>
                    <node concept="liA8E" id="78Cs0extVHs" role="2OqNvi">
                      <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="78Cs0exu83y" role="3cqZAp" />
        <node concept="3clFbJ" id="78Cs0exttVL" role="3cqZAp">
          <node concept="2OqwBi" id="78Cs0extAKO" role="3clFbw">
            <node concept="37vLTw" id="78Cs0extAKN" role="2Oq$k0">
              <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
            </node>
            <node concept="liA8E" id="78Cs0extAKP" role="2OqNvi">
              <ref role="37wK5l" to="18ew:~Reference.isNull()" resolve="isNull" />
            </node>
          </node>
          <node concept="3clFbS" id="78Cs0exttVO" role="3clFbx">
            <node concept="YS8fn" id="78Cs0exttVU" role="3cqZAp">
              <node concept="2ShNRf" id="78Cs0extyp8" role="YScLw">
                <node concept="1pGfFk" id="78Cs0extypm" role="2ShVmc">
                  <ref role="37wK5l" node="78Cs0exswcR" resolve="IdeaEnvironment.ProjectCouldNotBeOpenedException" />
                  <node concept="2YIFZM" id="78Cs0extOG0" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="78Cs0extOG1" role="37wK5m">
                      <property role="Xl_RC" value="Could not open project (null in return) from the '%s'" />
                    </node>
                    <node concept="2OqwBi" id="78Cs0extOG2" role="37wK5m">
                      <node concept="37vLTw" id="78Cs0extOG3" role="2Oq$k0">
                        <ref role="3cqZAo" node="2pL3QjrzSG8" resolve="projectFile" />
                      </node>
                      <node concept="liA8E" id="78Cs0extOG4" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78Cs0extypq" role="37wK5m">
                    <node concept="37vLTw" id="78Cs0extypr" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkOor" resolve="exc" />
                    </node>
                    <node concept="liA8E" id="78Cs0extyps" role="2OqNvi">
                      <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u34iHEuLw9" role="3cqZAp" />
        <node concept="3cpWs8" id="2u34iHEuJaq" role="3cqZAp">
          <node concept="3cpWsn" id="2u34iHEuJao" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="waiter" />
            <node concept="3uibUv" id="78Cs0ext7mC" role="1tU5fm">
              <ref role="3uigEE" node="78Cs0exs$s0" resolve="IdeaEnvironment.PostStartupActivitiesWaiter" />
            </node>
            <node concept="2ShNRf" id="2u34iHEuJmG" role="33vP2m">
              <node concept="1pGfFk" id="78Cs0ext8hw" role="2ShVmc">
                <ref role="37wK5l" node="78Cs0exs$sc" resolve="IdeaEnvironment.PostStartupActivitiesWaiter" />
                <node concept="2OqwBi" id="6J69$P376Gq" role="37wK5m">
                  <node concept="2OqwBi" id="78Cs0ext8sb" role="2Oq$k0">
                    <node concept="37vLTw" id="78Cs0ext8my" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
                    </node>
                    <node concept="liA8E" id="78Cs0ext8$f" role="2OqNvi">
                      <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6J69$P37b_T" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u34iHEuLKn" role="3cqZAp">
          <node concept="2OqwBi" id="2u34iHEuMdr" role="3clFbG">
            <node concept="37vLTw" id="2u34iHEuLKl" role="2Oq$k0">
              <ref role="3cqZAo" node="2u34iHEuJao" resolve="waiter" />
            </node>
            <node concept="liA8E" id="2u34iHEuMzc" role="2OqNvi">
              <ref role="37wK5l" node="78Cs0exs$sQ" resolve="wait0" />
              <node concept="3cmrfG" id="7JMs__iKUrC" role="37wK5m">
                <property role="3cmrfH" value="30" />
              </node>
              <node concept="Rm8GO" id="7JMs__iKUGA" role="37wK5m">
                <ref role="Rm8GQ" to="5zyv:~TimeUnit.SECONDS" resolve="SECONDS" />
                <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="18AxS$EFkDL" role="3cqZAp">
          <node concept="1PaTwC" id="18AxS$EFkDM" role="1aUNEU">
            <node concept="3oM_SD" id="18AxS$EFkDN" role="1PaTwD">
              <property role="3oM_SC" value="MPSProject" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpU8" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpUa" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpUU" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpUV" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpUW" role="1PaTwD">
              <property role="3oM_SC" value="ProjectActivity," />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpVV" role="1PaTwD">
              <property role="3oM_SC" value="however," />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpVW" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpVX" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpVY" role="1PaTwD">
              <property role="3oM_SC" value="above" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpWu" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpWY" role="1PaTwD">
              <property role="3oM_SC" value="guarantee" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpXI" role="1PaTwD">
              <property role="3oM_SC" value="activity" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFpZc" role="1PaTwD">
              <property role="3oM_SC" value="execution," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="18AxS$EFtXi" role="3cqZAp">
          <node concept="1PaTwC" id="18AxS$EFtXj" role="1aUNEU">
            <node concept="3oM_SD" id="18AxS$EFtXk" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzAw" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzAy" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzAz" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzB3" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzB4" role="1PaTwD">
              <property role="3oM_SC" value="manage" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzB5" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzB6" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGp3" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGpz" role="1PaTwD">
              <property role="3oM_SC" value="(completes" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGq3" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGq4" role="1PaTwD">
              <property role="3oM_SC" value="1ms" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGr3" role="1PaTwD">
              <property role="3oM_SC" value="w/o" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGrz" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGr$" role="1PaTwD">
              <property role="3oM_SC" value="noticeable" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGuv" role="1PaTwD">
              <property role="3oM_SC" value="result," />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGuZ" role="1PaTwD">
              <property role="3oM_SC" value="project.isOpened()" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGyD" role="1PaTwD">
              <property role="3oM_SC" value="==" />
            </node>
            <node concept="3oM_SD" id="18AxS$EGGyE" role="1PaTwD">
              <property role="3oM_SC" value="false)." />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzD4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="18AxS$EGADo" role="3cqZAp">
          <node concept="1PaTwC" id="18AxS$EGACT" role="1aUNEU">
            <node concept="3oM_SD" id="18AxS$EGACS" role="1PaTwD">
              <property role="3oM_SC" value="Therefore," />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzEy" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzEz" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzFy" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzGx" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzGy" role="1PaTwD">
              <property role="3oM_SC" value="populated" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzHy" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzHz" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzIO" role="1PaTwD">
              <property role="3oM_SC" value="(and" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzIP" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzIQ" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzJP" role="1PaTwD">
              <property role="3oM_SC" value="fails" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzJQ" role="1PaTwD">
              <property role="3oM_SC" value="due" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzKP" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzKQ" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzLm" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzLQ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzLR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzLS" role="1PaTwD">
              <property role="3oM_SC" value="project)," />
            </node>
            <node concept="3oM_SD" id="18AxS$EFzMR" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="18AxS$EFzOm" role="3cqZAp">
          <node concept="1PaTwC" id="18AxS$EFzNR" role="1aUNEU">
            <node concept="3oM_SD" id="18AxS$EFzNQ" role="1PaTwD">
              <property role="3oM_SC" value="force" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD57" role="1PaTwD">
              <property role="3oM_SC" value="activation" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD67" role="1PaTwD">
              <property role="3oM_SC" value="here." />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD7o" role="1PaTwD">
              <property role="3oM_SC" value="Note," />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD7S" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD8R" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD8S" role="1PaTwD">
              <property role="3oM_SC" value="guard" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD9o" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFD9p" role="1PaTwD">
              <property role="3oM_SC" value="StandaloneMPSProject.projectOpened()" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFDbm" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFDbQ" role="1PaTwD">
              <property role="3oM_SC" value="prevent" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFDeL" role="1PaTwD">
              <property role="3oM_SC" value="multiple" />
            </node>
            <node concept="3oM_SD" id="18AxS$EFDfK" role="1PaTwD">
              <property role="3oM_SC" value="runs" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="18AxS$EFJ1$" role="3cqZAp">
          <node concept="3clFbS" id="18AxS$EFJ1A" role="3clFbx">
            <node concept="3clFbF" id="18AxS$EGgDK" role="3cqZAp">
              <node concept="2OqwBi" id="18AxS$EGtlS" role="3clFbG">
                <node concept="2OqwBi" id="18AxS$EGkq5" role="2Oq$k0">
                  <node concept="37vLTw" id="18AxS$EGgDI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
                  </node>
                  <node concept="liA8E" id="18AxS$EGpqm" role="2OqNvi">
                    <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                  </node>
                </node>
                <node concept="liA8E" id="18AxS$EGycS" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.projectOpened()" resolve="projectOpened" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18AxS$EGMmQ" role="3cqZAp">
              <node concept="1PaTwC" id="18AxS$EGMmR" role="1aUNEU">
                <node concept="3oM_SD" id="18AxS$EGMmS" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRpu" role="1PaTwD">
                  <property role="3oM_SC" value="explicit" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRpw" role="1PaTwD">
                  <property role="3oM_SC" value="projectClosed()," />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRpL" role="1PaTwD">
                  <property role="3oM_SC" value="hope" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRqh" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRqi" role="1PaTwD">
                  <property role="3oM_SC" value="IDEA's" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRrK" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRrL" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRrM" role="1PaTwD">
                  <property role="3oM_SC" value="dispatch" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRsL" role="1PaTwD">
                  <property role="3oM_SC" value="ProjectListener" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRyD" role="1PaTwD">
                  <property role="3oM_SC" value="event" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRuf" role="1PaTwD">
                  <property role="3oM_SC" value="onClosing()" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRvH" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRwd" role="1PaTwD">
                  <property role="3oM_SC" value="will" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGRz9" role="1PaTwD">
                  <property role="3oM_SC" value="reach" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGR$8" role="1PaTwD">
                  <property role="3oM_SC" value="our" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGR_7" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18AxS$EGR_V" role="3cqZAp">
              <node concept="1PaTwC" id="18AxS$EGR_C" role="1aUNEU">
                <node concept="3oM_SD" id="18AxS$EGR_B" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGX6S" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGX6U" role="1PaTwD">
                  <property role="3oM_SC" value="let" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGX6V" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGX6W" role="1PaTwD">
                  <property role="3oM_SC" value="shut" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGX7V" role="1PaTwD">
                  <property role="3oM_SC" value="down" />
                </node>
                <node concept="3oM_SD" id="18AxS$EGX8r" role="1PaTwD">
                  <property role="3oM_SC" value="gracefully" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="18AxS$EGbVA" role="3clFbw">
            <node concept="2OqwBi" id="18AxS$EGbVC" role="3fr31v">
              <node concept="2OqwBi" id="18AxS$EGbVD" role="2Oq$k0">
                <node concept="37vLTw" id="18AxS$EGbVE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
                </node>
                <node concept="liA8E" id="18AxS$EGbVF" role="2OqNvi">
                  <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                </node>
              </node>
              <node concept="liA8E" id="18AxS$EGbVG" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectBase.isOpened()" resolve="isOpened" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4At3FtNxiOV" role="3cqZAp" />
        <node concept="3cpWs6" id="4_TMdeLkOpO" role="3cqZAp">
          <node concept="2OqwBi" id="2u34iHEuHF_" role="3cqZAk">
            <node concept="37vLTw" id="2u34iHEuHkJ" role="2Oq$k0">
              <ref role="3cqZAo" node="4_TMdeLkOoi" resolve="project" />
            </node>
            <node concept="liA8E" id="2u34iHEuI25" role="2OqNvi">
              <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2pL3QjrzSG8" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2pL3QjrzSG7" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1w0tHxV4Aoj" role="1B3o_S" />
      <node concept="3uibUv" id="3qbI1lNpgiJ" role="3clF45">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="4At3FtNxUZX" role="jymVt" />
    <node concept="3clFb_" id="1_ERPxYO7bJ" role="jymVt">
      <property role="TrG5h" value="refreshProjectDir" />
      <node concept="3Tm6S6" id="1_ERPxYO7bK" role="1B3o_S" />
      <node concept="3cqZAl" id="1_ERPxYO7bL" role="3clF45" />
      <node concept="3clFbS" id="1_ERPxYO7b$" role="3clF47">
        <node concept="3SKdUt" id="1_ERPxYO7b_" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXor1J" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXor1K" role="1PaTwD">
              <property role="3oM_SC" value="calling" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1L" role="1PaTwD">
              <property role="3oM_SC" value="sync" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1M" role="1PaTwD">
              <property role="3oM_SC" value="refresh" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1N" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1O" role="1PaTwD">
              <property role="3oM_SC" value="FS" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1P" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1Q" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1R" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1S" role="1PaTwD">
              <property role="3oM_SC" value="update" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1T" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1U" role="1PaTwD">
              <property role="3oM_SC" value="modules/models" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1V" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1W" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1X" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor1Y" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1_ERPxYO7bB" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXor1Z" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXor20" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor21" role="1PaTwD">
              <property role="3oM_SC" value="unit-test" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor22" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor23" role="1PaTwD">
              <property role="3oM_SC" value="executed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor24" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor25" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor26" role="1PaTwD">
              <property role="3oM_SC" value="&quot;reuse" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor27" role="1PaTwD">
              <property role="3oM_SC" value="caches&quot;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor28" role="1PaTwD">
              <property role="3oM_SC" value="option." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6J69$P37lc9" role="3cqZAp">
          <node concept="3clFbS" id="6J69$P37lcb" role="3clFbx">
            <node concept="3cpWs6" id="6J69$P37zMs" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6J69$P37u3t" role="3clFbw">
            <node concept="10Nm6u" id="6J69$P37uck" role="3uHU7w" />
            <node concept="37vLTw" id="6J69$P37pXK" role="3uHU7B">
              <ref role="3cqZAo" node="1_ERPxYOjvx" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1_ERPxYOnoo" role="3cqZAp">
          <node concept="3cpWsn" id="1_ERPxYOnop" role="3cpWs9">
            <property role="TrG5h" value="fs" />
            <node concept="2OqwBi" id="6J69$P398V4" role="33vP2m">
              <node concept="37vLTw" id="6J69$P395k9" role="2Oq$k0">
                <ref role="3cqZAo" node="1_ERPxYOjvx" resolve="project" />
              </node>
              <node concept="liA8E" id="6J69$P39ex6" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
            <node concept="3uibUv" id="7LZvUiIId4K" role="1tU5fm">
              <ref role="3uigEE" to="7nyy:~CachingFileSystem" resolve="CachingFileSystem" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6J69$P39rNZ" role="3cqZAp">
          <node concept="1PaTwC" id="6J69$P39rO0" role="1aUNEU">
            <node concept="3oM_SD" id="6J69$P3a1Dd" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a1De" role="1PaTwD">
              <property role="3oM_SC" value="apparently" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a1Dg" role="1PaTwD">
              <property role="3oM_SC" value="(according" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a1Dx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a1Dy" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a1DN" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2EP" role="1PaTwD">
              <property role="3oM_SC" value="Env.openProject())," />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2F6" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Fn" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2FC" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2HJ" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2J4" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2J5" role="1PaTwD">
              <property role="3oM_SC" value=".mps/" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Ig" role="1PaTwD">
              <property role="3oM_SC" value="folder," />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2JR" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2K8" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Kp" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Kq" role="1PaTwD">
              <property role="3oM_SC" value="parent," />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Md" role="1PaTwD">
              <property role="3oM_SC" value="therefore," />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Mu" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Mv" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Mw" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Mx" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2My" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a2Mz" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6J69$P3a2Rg" role="3cqZAp">
          <node concept="1PaTwC" id="6J69$P3a2Rh" role="1aUNEU">
            <node concept="3oM_SD" id="6J69$P3a2Ri" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a8iY" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a8j0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a8k3" role="1PaTwD">
              <property role="3oM_SC" value="Project.getBasePath()" />
            </node>
            <node concept="3oM_SD" id="6J69$P3a8k$" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="6J69$P3agTN" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6J69$P3agTO" role="1PaTwD">
              <property role="3oM_SC" value="got" />
            </node>
            <node concept="3oM_SD" id="6J69$P3agU5" role="1PaTwD">
              <property role="3oM_SC" value="direct" />
            </node>
            <node concept="3oM_SD" id="6J69$P3agU6" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6J69$P3agUn" role="1PaTwD">
              <property role="3oM_SC" value="location" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_ERPxYOoyH" role="3cqZAp">
          <node concept="2OqwBi" id="1_ERPxYOpeO" role="3clFbG">
            <node concept="2OqwBi" id="1_ERPxYOoHM" role="2Oq$k0">
              <node concept="37vLTw" id="1_ERPxYOoyF" role="2Oq$k0">
                <ref role="3cqZAo" node="1_ERPxYOnop" resolve="fs" />
              </node>
              <node concept="liA8E" id="1_ERPxYOoMU" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~FileSystem.getFile(java.io.File)" resolve="getFile" />
                <node concept="37vLTw" id="1_ERPxYOoS_" role="37wK5m">
                  <ref role="3cqZAo" node="6J69$P36IOj" resolve="projectFile" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1_ERPxYOpks" role="2OqNvi">
              <ref role="37wK5l" to="3ju5:~IFile.refresh(jetbrains.mps.vfs.refresh.CachingContext)" resolve="refresh" />
              <node concept="2ShNRf" id="1_ERPxYOppQ" role="37wK5m">
                <node concept="1pGfFk" id="1_ERPxYOTWt" role="2ShVmc">
                  <ref role="37wK5l" to="7nyy:~DefaultCachingContext.&lt;init&gt;(boolean,boolean)" resolve="DefaultCachingContext" />
                  <node concept="3clFbT" id="1_ERPxYOU1R" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFbT" id="1_ERPxYOU7n" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1_ERPxYOjvx" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1_ERPxYOjvw" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="1_ERPxYOjvB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="6J69$P36IOj" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="6J69$P36IOk" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="6J69$P36Zbt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_ERPxYO7Fr" role="jymVt" />
    <node concept="3uibUv" id="$Ws9Fwsdhn" role="1zkMxy">
      <ref role="3uigEE" to="79ha:3eUNqOk4feo" resolve="EnvironmentBase" />
    </node>
    <node concept="3clFb_" id="3eUNqOk4GBH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="flushAllEvents" />
      <node concept="3Tm1VV" id="3eUNqOk4GBJ" role="1B3o_S" />
      <node concept="3cqZAl" id="3eUNqOk4GBK" role="3clF45" />
      <node concept="3clFbS" id="3eUNqOk4GBP" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WMrto" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WMrtp" role="3clFbG">
            <ref role="37wK5l" to="79ha:6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="3clFbF" id="2LiUEk8phSp" role="3cqZAp">
          <node concept="2OqwBi" id="2LiUEk8phX3" role="3clFbG">
            <node concept="2YIFZM" id="2LiUEk8phV4" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="2LiUEk8pi9L" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="1bVj0M" id="2LiUEk8pil4" role="37wK5m">
                <node concept="3clFbS" id="2LiUEk8pil5" role="1bW5cS">
                  <node concept="3clFbF" id="2P80UC067dX" role="3cqZAp">
                    <node concept="2YIFZM" id="2P80UC06cWN" role="3clFbG">
                      <ref role="1Pybhc" to="anz7:~PlatformTestUtil" resolve="PlatformTestUtil" />
                      <ref role="37wK5l" to="anz7:~PlatformTestUtil.dispatchAllEventsInIdeEventQueue()" resolve="dispatchAllEventsInIdeEventQueue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="2LiUEk8pitA" role="37wK5m">
                <ref role="1PxDUh" to="bd8o:~ModalityState" resolve="ModalityState" />
                <ref role="3cqZAo" to="bd8o:~ModalityState.NON_MODAL" resolve="NON_MODAL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4xXBKS7INHU" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXor29" role="1aUNEU">
            <node concept="3oM_SD" id="hMlWX6qLaE" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="hMlWX6qLbU" role="1PaTwD">
              <property role="3oM_SC" value="expect" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2d" role="1PaTwD">
              <property role="3oM_SC" value="invokeAndWait()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2e" role="1PaTwD">
              <property role="3oM_SC" value="above" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2f" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2g" role="1PaTwD">
              <property role="3oM_SC" value="pump" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2h" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2i" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2j" role="1PaTwD">
              <property role="3oM_SC" value="pending" />
            </node>
            <node concept="3oM_SD" id="ATZLwXor2k" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="hMlWX6qLd$" role="1PaTwD">
              <property role="3oM_SC" value="events" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZryZ05d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="P$JXv" id="78Cs0ext6nG" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsEfR" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEfS" role="1PaTwD">
            <property role="3oM_SC" value="BIG" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfT" role="1PaTwD">
            <property role="3oM_SC" value="GUN" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEfU" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEfV" role="1PaTwD">
            <property role="3oM_SC" value="Only" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfW" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfX" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfY" role="1PaTwD">
            <property role="3oM_SC" value="absolutely" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEfZ" role="1PaTwD">
            <property role="3oM_SC" value="necessary." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEg0" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEg1" role="1PaTwD">
            <property role="3oM_SC" value="Please" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg2" role="1PaTwD">
            <property role="3oM_SC" value="wrap" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg3" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg4" role="1PaTwD">
            <property role="3oM_SC" value="invocation" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg5" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg6" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg7" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg8" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEg9" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEga" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgb" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgc" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgd" role="1PaTwD">
            <property role="3oM_SC" value="clear" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEge" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgf" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgg" role="1PaTwD">
            <property role="3oM_SC" value="waits" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgh" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEgi" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEgj" role="1PaTwD">
            <property role="3oM_SC" value="For" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgk" role="1PaTwD">
            <property role="3oM_SC" value="instance" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgl" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgm" role="1PaTwD">
            <property role="3oM_SC" value="you" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgn" role="1PaTwD">
            <property role="3oM_SC" value="wait" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgo" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgp" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgq" role="1PaTwD">
            <property role="3oM_SC" value="end" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgr" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgs" role="1PaTwD">
            <property role="3oM_SC" value="post-startup" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgt" role="1PaTwD">
            <property role="3oM_SC" value="activities" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgu" role="1PaTwD">
            <property role="3oM_SC" value="--" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgv" role="1PaTwD">
            <property role="3oM_SC" value="extract" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgw" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgx" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgy" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEgz" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEg$" role="1PaTwD">
            <property role="3oM_SC" value="#waitForPostStartupActivitiesToEnd." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEg_" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEgA" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEgB" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEgC" role="1PaTwD">
            <property role="3oM_SC" value="Otherwise" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgD" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgE" role="1PaTwD">
            <property role="3oM_SC" value="will" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgF" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgG" role="1PaTwD">
            <property role="3oM_SC" value="hard" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgH" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgI" role="1PaTwD">
            <property role="3oM_SC" value="perceive" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgJ" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgK" role="1PaTwD">
            <property role="3oM_SC" value="exactly" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgL" role="1PaTwD">
            <property role="3oM_SC" value="your" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgM" role="1PaTwD">
            <property role="3oM_SC" value="code" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgN" role="1PaTwD">
            <property role="3oM_SC" value="waits" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEgO" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZryYPrX" role="jymVt" />
    <node concept="3clFb_" id="8PnvxglxX$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPlatform" />
      <node concept="3uibUv" id="8PnvxglxX_" role="3clF45">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
      <node concept="3Tm1VV" id="8PnvxglxXA" role="1B3o_S" />
      <node concept="3clFbS" id="8PnvxglxXF" role="3clF47">
        <node concept="3cpWs6" id="8Pnvxglyw9" role="3cqZAp">
          <node concept="2OqwBi" id="8Pnvxgl_6J" role="3cqZAk">
            <node concept="1rXfSq" id="8Pnvxgl$Vg" role="2Oq$k0">
              <ref role="37wK5l" node="5A5jZrz2$ao" resolve="getMPSCoreComponents" />
            </node>
            <node concept="liA8E" id="8Pnvxgl_uM" role="2OqNvi">
              <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8PnvxglANa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="8Pnvxglx0B" role="jymVt" />
    <node concept="312cEu" id="78Cs0exs$s0" role="jymVt">
      <property role="TrG5h" value="PostStartupActivitiesWaiter" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="true" />
      <node concept="3Tm6S6" id="78Cs0exs$s1" role="1B3o_S" />
      <node concept="312cEg" id="78Cs0exs$s8" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="78Cs0exs_NK" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="3Tm6S6" id="78Cs0exs$sb" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="78Cs0exsYpV" role="jymVt" />
      <node concept="3clFbW" id="78Cs0exs$sc" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="78Cs0exs$sd" role="3clF45" />
        <node concept="37vLTG" id="78Cs0exs$se" role="3clF46">
          <property role="TrG5h" value="project" />
          <property role="3TUv4t" value="false" />
          <node concept="2AHcQZ" id="78Cs0exs$sf" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="78Cs0exsDfE" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3clFbS" id="78Cs0exs$sh" role="3clF47">
          <node concept="3clFbF" id="78Cs0exs$si" role="3cqZAp">
            <node concept="37vLTI" id="78Cs0exs$sj" role="3clFbG">
              <node concept="37vLTw" id="78Cs0exs$sk" role="37vLTJ">
                <ref role="3cqZAo" node="78Cs0exs$s8" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="78Cs0exs$sl" role="37vLTx">
                <ref role="3cqZAo" node="78Cs0exs$se" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="78Cs0ext7Bl" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="78Cs0exsDrj" role="jymVt" />
      <node concept="3clFb_" id="78Cs0exs$sJ" role="jymVt">
        <property role="TrG5h" value="getStartupManager" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3clFbS" id="78Cs0exs$sK" role="3clF47">
          <node concept="3cpWs6" id="78Cs0exs$sL" role="3cqZAp">
            <node concept="2YIFZM" id="78Cs0exsI3T" role="3cqZAk">
              <ref role="1Pybhc" to="zymn:~StartupManagerEx" resolve="StartupManagerEx" />
              <ref role="37wK5l" to="zymn:~StartupManagerEx.getInstanceEx(com.intellij.openapi.project.Project)" resolve="getInstanceEx" />
              <node concept="37vLTw" id="78Cs0exsI3U" role="37wK5m">
                <ref role="3cqZAo" node="78Cs0exs$s8" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="78Cs0exs$sO" role="1B3o_S" />
        <node concept="3uibUv" id="78Cs0exs$sP" role="3clF45">
          <ref role="3uigEE" to="zymn:~StartupManagerEx" resolve="StartupManagerEx" />
        </node>
      </node>
      <node concept="2tJIrI" id="78Cs0exsDrl" role="jymVt" />
      <node concept="3clFb_" id="78Cs0exs$sQ" role="jymVt">
        <property role="TrG5h" value="wait0" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3clFbS" id="78Cs0exs$sR" role="3clF47">
          <node concept="3J1_TO" id="1CvX25d$5WU" role="3cqZAp">
            <node concept="3clFbS" id="1CvX25d$5WV" role="1zxBo7">
              <node concept="3clFbF" id="476WKSlc2qL" role="3cqZAp">
                <node concept="2OqwBi" id="476WKSlciHJ" role="3clFbG">
                  <node concept="2YIFZM" id="4VNp_JwQzML" role="2Oq$k0">
                    <ref role="37wK5l" to="g3j3:~FutureKt.asCompletableFuture(kotlinx.coroutines.Job)" resolve="asCompletableFuture" />
                    <ref role="1Pybhc" to="g3j3:~FutureKt" resolve="FutureKt" />
                    <node concept="2OqwBi" id="4VNp_JwQzMM" role="37wK5m">
                      <node concept="1rXfSq" id="4VNp_JwQzMN" role="2Oq$k0">
                        <ref role="37wK5l" node="78Cs0exs$sJ" resolve="getStartupManager" />
                      </node>
                      <node concept="liA8E" id="4VNp_JwQzMO" role="2OqNvi">
                        <ref role="37wK5l" to="v27p:~StartupManager.getAllActivitiesPassedFuture()" resolve="getAllActivitiesPassedFuture" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="476WKSlcosC" role="2OqNvi">
                    <ref role="37wK5l" to="5zyv:~CompletableFuture.get(long,java.util.concurrent.TimeUnit)" resolve="get" />
                    <node concept="37vLTw" id="476WKSlctFz" role="37wK5m">
                      <ref role="3cqZAo" node="7JMs__iKdYC" resolve="time" />
                    </node>
                    <node concept="37vLTw" id="476WKSlc_Yu" role="37wK5m">
                      <ref role="3cqZAo" node="7JMs__iKew2" resolve="units" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="1CvX25d$5WX" role="1zxBo5">
              <node concept="3clFbS" id="1CvX25d$5WY" role="1zc67A">
                <node concept="RRSsy" id="1CvX25d$drE" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fh_4/error" />
                  <node concept="Xl_RD" id="1CvX25d$drG" role="RRSoy">
                    <property role="Xl_RC" value="got while waiting for startup activities to finish" />
                  </node>
                  <node concept="37vLTw" id="1CvX25d$dK1" role="RRSow">
                    <ref role="3cqZAo" node="1CvX25d$5WZ" resolve="e" />
                  </node>
                </node>
              </node>
              <node concept="XOnhg" id="1CvX25d$5WZ" role="1zc67B">
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="1CvX25d$5X0" role="1tU5fm">
                  <node concept="3uibUv" id="1CvX25d$5WW" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                  </node>
                  <node concept="3uibUv" id="1CvX25d$cgt" role="nSUat">
                    <ref role="3uigEE" to="5zyv:~TimeoutException" resolve="TimeoutException" />
                  </node>
                  <node concept="3uibUv" id="1CvX25d$csL" role="nSUat">
                    <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7JMs__iKjaN" role="3cqZAp">
            <node concept="3clFbS" id="7JMs__iKjaP" role="3clFbx">
              <node concept="RRSsy" id="7JMs__iKlcr" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7JMs__iKlct" role="RRSoy">
                  <property role="Xl_RC" value="Could not wait until post-startup activities are finished" />
                </node>
                <node concept="2ShNRf" id="7JMs__iKlnc" role="RRSow">
                  <node concept="1pGfFk" id="7JMs__iKUgE" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7JMs__iKjOZ" role="3clFbw">
              <node concept="3fqX7Q" id="7JMs__iKkRE" role="3uHU7B">
                <node concept="2OqwBi" id="7JMs__iKkRG" role="3fr31v">
                  <node concept="37vLTw" id="7JMs__iKkRH" role="2Oq$k0">
                    <ref role="3cqZAo" node="78Cs0exs$s8" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="7JMs__iKkRI" role="2OqNvi">
                    <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7JMs__iKjHJ" role="3uHU7w">
                <node concept="2OqwBi" id="7JMs__iKjHL" role="3fr31v">
                  <node concept="1rXfSq" id="7JMs__iKjHM" role="2Oq$k0">
                    <ref role="37wK5l" node="78Cs0exs$sJ" resolve="getStartupManager" />
                  </node>
                  <node concept="liA8E" id="7JMs__iKjHN" role="2OqNvi">
                    <ref role="37wK5l" to="v27p:~StartupManager.postStartupActivityPassed()" resolve="postStartupActivityPassed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="78Cs0exs$tv" role="1B3o_S" />
        <node concept="3cqZAl" id="78Cs0exs$tw" role="3clF45" />
        <node concept="37vLTG" id="7JMs__iKdYC" role="3clF46">
          <property role="TrG5h" value="time" />
          <node concept="3cpWsb" id="7JMs__iKdYB" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7JMs__iKew2" role="3clF46">
          <property role="TrG5h" value="units" />
          <node concept="3uibUv" id="7JMs__iKeVB" role="1tU5fm">
            <ref role="3uigEE" to="5zyv:~TimeUnit" resolve="TimeUnit" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78Cs0exszsl" role="jymVt" />
    <node concept="312cEu" id="78Cs0exswcA" role="jymVt">
      <property role="TrG5h" value="CouldNotLoadProjectException" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="true" />
      <node concept="3Tm6S6" id="3oT7WQ90d_3" role="1B3o_S" />
      <node concept="3uibUv" id="3oT7WQ909G$" role="1zkMxy">
        <ref role="3uigEE" to="79ha:3oT7WQ8ZQQP" resolve="EnvironmentSetupException" />
      </node>
      <node concept="3clFbW" id="78Cs0exswcD" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="78Cs0exswcE" role="3clF45" />
        <node concept="37vLTG" id="78Cs0exswcF" role="3clF46">
          <property role="TrG5h" value="message" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="78Cs0exswcG" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="78Cs0exswcH" role="3clF46">
          <property role="TrG5h" value="cause" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="78Cs0exswcI" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
          </node>
        </node>
        <node concept="3clFbS" id="78Cs0exswcJ" role="3clF47">
          <node concept="XkiVB" id="78Cs0exszgt" role="3cqZAp">
            <ref role="37wK5l" to="79ha:3oT7WQ8ZVnb" resolve="EnvironmentSetupException" />
            <node concept="37vLTw" id="78Cs0exszgu" role="37wK5m">
              <ref role="3cqZAo" node="78Cs0exswcF" resolve="message" />
            </node>
            <node concept="37vLTw" id="78Cs0exszgv" role="37wK5m">
              <ref role="3cqZAo" node="78Cs0exswcH" resolve="cause" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="78Cs0exswcN" role="1B3o_S" />
      </node>
    </node>
    <node concept="2tJIrI" id="78Cs0exsyff" role="jymVt" />
    <node concept="312cEu" id="78Cs0exswcO" role="jymVt">
      <property role="TrG5h" value="ProjectCouldNotBeOpenedException" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="true" />
      <node concept="3Tm6S6" id="3oT7WQ90d_7" role="1B3o_S" />
      <node concept="3uibUv" id="3oT7WQ909Gf" role="1zkMxy">
        <ref role="3uigEE" to="79ha:3oT7WQ8ZQQP" resolve="EnvironmentSetupException" />
      </node>
      <node concept="3clFbW" id="78Cs0exswcR" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="78Cs0exswcS" role="3clF45" />
        <node concept="37vLTG" id="78Cs0exswcT" role="3clF46">
          <property role="TrG5h" value="message" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="78Cs0exswcU" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="78Cs0exswcV" role="3clF46">
          <property role="TrG5h" value="cause" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="78Cs0exswcW" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
          </node>
        </node>
        <node concept="3clFbS" id="78Cs0exswcX" role="3clF47">
          <node concept="XkiVB" id="78Cs0exsxev" role="3cqZAp">
            <ref role="37wK5l" to="79ha:3oT7WQ8ZVnb" resolve="EnvironmentSetupException" />
            <node concept="37vLTw" id="78Cs0exsxew" role="37wK5m">
              <ref role="3cqZAo" node="78Cs0exswcT" resolve="message" />
            </node>
            <node concept="37vLTw" id="78Cs0exsxex" role="37wK5m">
              <ref role="3cqZAo" node="78Cs0exswcV" resolve="cause" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="78Cs0exswd1" role="1B3o_S" />
      </node>
    </node>
    <node concept="2tJIrI" id="6_mFlZWT$Eh" role="jymVt" />
    <node concept="312cEu" id="6_mFlZWT$tZ" role="jymVt">
      <property role="TrG5h" value="ProjectDirectoryDoesNotExistException" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="true" />
      <node concept="3Tm6S6" id="3oT7WQ90d_b" role="1B3o_S" />
      <node concept="3uibUv" id="3oT7WQ909FU" role="1zkMxy">
        <ref role="3uigEE" to="79ha:3oT7WQ8ZQQP" resolve="EnvironmentSetupException" />
      </node>
      <node concept="3clFbW" id="6_mFlZWT$u2" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="6_mFlZWT$u3" role="3clF45" />
        <node concept="37vLTG" id="6_mFlZWT$u4" role="3clF46">
          <property role="TrG5h" value="projectPath" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="6_mFlZWT$u5" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3clFbS" id="6_mFlZWT$u8" role="3clF47">
          <node concept="XkiVB" id="6_mFlZWT$u9" role="3cqZAp">
            <ref role="37wK5l" to="79ha:3oT7WQ8ZVnO" resolve="EnvironmentSetupException" />
            <node concept="3cpWs3" id="6_mFlZWT_Js" role="37wK5m">
              <node concept="Xl_RD" id="6_mFlZWT_JZ" role="3uHU7w">
                <property role="Xl_RC" value="'" />
              </node>
              <node concept="3cpWs3" id="6_mFlZWT__E" role="3uHU7B">
                <node concept="Xl_RD" id="6_mFlZWT$QU" role="3uHU7B">
                  <property role="Xl_RC" value="Cannot find the project at '" />
                </node>
                <node concept="37vLTw" id="6_mFlZWT_Ah" role="3uHU7w">
                  <ref role="3cqZAo" node="6_mFlZWT$u4" resolve="projectPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6_mFlZWT$uc" role="1B3o_S" />
      </node>
    </node>
  </node>
</model>

