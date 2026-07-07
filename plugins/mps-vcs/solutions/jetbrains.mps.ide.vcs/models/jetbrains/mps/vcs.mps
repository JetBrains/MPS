<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cd7c9d90-25b3-4a54-a510-a0bcc7072c1d(jetbrains.mps.vcs)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="80f9" ref="r:36539f52-7ec3-4937-98bf-1fbc1fbe99fc(jetbrains.mps.vcs.platform.mergedriver)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="5fzo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.persistence.def(MPS.Core/)" />
    <import index="ur19" ref="r:d58d9938-2526-431c-a5fe-6bbbfeb64ac2(jetbrains.mps.vcs.util)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="4rb9" ref="r:e4939376-be00-4167-9510-67715eca6425(jetbrains.mps.vcs.platform.util)" />
    <import index="cky9" ref="r:1d4e7c57-c144-4228-9dec-8180ddf9f0ee(jetbrains.mps.tool.environment)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="snbe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.io(MPS.IDEA/)" />
    <import index="o8e1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.merge(MPS.IDEA/)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="tcg7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.fileTypes(MPS.Platform/)" />
    <import index="iwsx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileEditor(MPS.IDEA/)" />
    <import index="ctgy" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.plugins(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="hlw7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.save(MPS.Platform/)" />
    <import index="2eq1" ref="r:383be79d-d39d-4dc4-9df3-57e57bcac2b5(jetbrains.mps.ide.platform.watching)" />
    <import index="mmaq" ref="f647e48e-4568-4f4c-b48a-1546492c6a2e/java:org.jdom(org.jdom/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="1037" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.changes(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="jlcv" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs(MPS.IDEA.Modules/)" />
    <import index="de5p" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs.actions(MPS.IDEA.Modules/)" />
    <import index="1038" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.openapi.vcs.changes(MPS.IDEA.Modules/)" />
    <import index="j9ng" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.util(MPS.Platform/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" implicit="true" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1225271546410" name="jetbrains.mps.baseLanguage.structure.TrimOperation" flags="nn" index="17S1cR" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
      </concept>
      <concept id="1206629501431" name="jetbrains.mps.baseLanguage.structure.InstanceInitializer" flags="lg" index="3KIgzJ">
        <child id="1206629521979" name="statementList" index="3KIlGz" />
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
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="312cEu" id="38_6U8fKv3G">
    <property role="TrG5h" value="MPSVcsManager" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="38_6U8fKv3H" role="1B3o_S" />
    <node concept="312cEg" id="38_6U8fKv5Y" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="38_6U8fKv5Z" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="38_6U8fKv60" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="78tlMyQ2NuU" role="jymVt">
      <property role="TrG5h" value="myLastProjectStatus" />
      <node concept="3Tm6S6" id="78tlMyQ2NuV" role="1B3o_S" />
      <node concept="3uibUv" id="78tlMyQ2NKU" role="1tU5fm">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaXpVv" role="jymVt" />
    <node concept="3clFbW" id="38_6U8fKv6D" role="jymVt">
      <node concept="3Tm1VV" id="38_6U8fKv6E" role="1B3o_S" />
      <node concept="3cqZAl" id="38_6U8fKv6F" role="3clF45" />
      <node concept="37vLTG" id="38_6U8fKv6G" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="38_6U8fKv6H" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="38_6U8fKv6M" role="3clF47">
        <node concept="3clFbF" id="38_6U8fKv6N" role="3cqZAp">
          <node concept="37vLTI" id="38_6U8fKv6O" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoO0" role="37vLTJ">
              <ref role="3cqZAo" node="38_6U8fKv5Y" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxglb0a" role="37vLTx">
              <ref role="3cqZAo" node="38_6U8fKv6G" resolve="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaXoA0" role="jymVt" />
    <node concept="3clFb_" id="38_6U8fKv6Z" role="jymVt">
      <property role="TrG5h" value="isInConflict" />
      <node concept="3Tm1VV" id="3zgutK7osEE" role="1B3o_S" />
      <node concept="10P_77" id="38_6U8fKv70" role="3clF45" />
      <node concept="37vLTG" id="38_6U8fKv71" role="3clF46">
        <property role="TrG5h" value="vfile" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="38_6U8fKv72" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="38_6U8fKv75" role="3clF47">
        <node concept="3cpWs8" id="38_6U8fKv7n" role="3cqZAp">
          <node concept="3cpWsn" id="38_6U8fKv7o" role="3cpWs9">
            <property role="TrG5h" value="vcs" />
            <node concept="3uibUv" id="38_6U8fKv7p" role="1tU5fm">
              <ref role="3uigEE" to="jlcv:~AbstractVcs" resolve="AbstractVcs" />
            </node>
            <node concept="2OqwBi" id="38_6U8fKv7q" role="33vP2m">
              <node concept="liA8E" id="38_6U8fKv7s" role="2OqNvi">
                <ref role="37wK5l" to="jlcv:~ProjectLevelVcsManager.getVcsFor(com.intellij.openapi.vfs.VirtualFile)" resolve="getVcsFor" />
                <node concept="37vLTw" id="2BHiRxgm8CI" role="37wK5m">
                  <ref role="3cqZAo" node="38_6U8fKv71" resolve="vfile" />
                </node>
              </node>
              <node concept="2YIFZM" id="3qzU$0EaE59" role="2Oq$k0">
                <ref role="37wK5l" to="jlcv:~ProjectLevelVcsManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <ref role="1Pybhc" to="jlcv:~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
                <node concept="37vLTw" id="3qzU$0EaGw_" role="37wK5m">
                  <ref role="3cqZAo" node="38_6U8fKv5Y" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38_6U8fKv7u" role="3cqZAp">
          <node concept="3clFbC" id="38_6U8fKv7v" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTzZ6" role="3uHU7B">
              <ref role="3cqZAo" node="38_6U8fKv7o" resolve="vcs" />
            </node>
            <node concept="10Nm6u" id="38_6U8fKv7x" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="38_6U8fKv7y" role="3clFbx">
            <node concept="3cpWs6" id="38_6U8fKv7z" role="3cqZAp">
              <node concept="3clFbT" id="38_6U8fKv7$" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38_6U8fKv7_" role="3cqZAp">
          <node concept="3cpWsn" id="38_6U8fKv7A" role="3cpWs9">
            <property role="TrG5h" value="scope" />
            <node concept="3uibUv" id="38_6U8fKv7B" role="1tU5fm">
              <ref role="3uigEE" to="1037:~VcsDirtyScopeImpl" resolve="VcsDirtyScopeImpl" />
            </node>
            <node concept="2ShNRf" id="38_6U8fKv7C" role="33vP2m">
              <node concept="1pGfFk" id="38_6U8fKv7D" role="2ShVmc">
                <ref role="37wK5l" to="1037:~VcsDirtyScopeImpl.&lt;init&gt;(com.intellij.openapi.vcs.AbstractVcs)" resolve="VcsDirtyScopeImpl" />
                <node concept="37vLTw" id="3GM_nagT$KN" role="37wK5m">
                  <ref role="3cqZAo" node="38_6U8fKv7o" resolve="vcs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38_6U8fKv7G" role="3cqZAp">
          <node concept="2OqwBi" id="38_6U8fKv7H" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzFU" role="2Oq$k0">
              <ref role="3cqZAo" node="38_6U8fKv7A" resolve="scope" />
            </node>
            <node concept="liA8E" id="38_6U8fKv7J" role="2OqNvi">
              <ref role="37wK5l" to="1037:~VcsDirtyScopeImpl.addDirtyFile(com.intellij.openapi.vcs.FilePath)" resolve="addDirtyFile" />
              <node concept="2OqwBi" id="38_6U8fKv7K" role="37wK5m">
                <node concept="2YIFZM" id="38_6U8fKv7L" role="2Oq$k0">
                  <ref role="1Pybhc" to="de5p:~VcsContextFactory" resolve="VcsContextFactory" />
                  <ref role="37wK5l" to="de5p:~VcsContextFactory.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="38_6U8fKv7M" role="2OqNvi">
                  <ref role="37wK5l" to="de5p:~VcsContextFactory.createFilePathOn(com.intellij.openapi.vfs.VirtualFile)" resolve="createFilePathOn" />
                  <node concept="37vLTw" id="2BHiRxglPhu" role="37wK5m">
                    <ref role="3cqZAo" node="38_6U8fKv71" resolve="vfile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38_6U8fKv7O" role="3cqZAp">
          <node concept="3cpWsn" id="38_6U8fKv7P" role="3cpWs9">
            <property role="TrG5h" value="changeProvider" />
            <node concept="3uibUv" id="38_6U8fKv7Q" role="1tU5fm">
              <ref role="3uigEE" to="1038:~ChangeProvider" resolve="ChangeProvider" />
            </node>
            <node concept="2OqwBi" id="38_6U8fKv7R" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTwPb" role="2Oq$k0">
                <ref role="3cqZAo" node="38_6U8fKv7o" resolve="vcs" />
              </node>
              <node concept="liA8E" id="38_6U8fKv7T" role="2OqNvi">
                <ref role="37wK5l" to="jlcv:~AbstractVcs.getChangeProvider()" resolve="getChangeProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38_6U8fKv7U" role="3cqZAp">
          <node concept="3clFbC" id="38_6U8fKv7V" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTyIt" role="3uHU7B">
              <ref role="3cqZAo" node="38_6U8fKv7P" resolve="changeProvider" />
            </node>
            <node concept="10Nm6u" id="38_6U8fKv7X" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="38_6U8fKv7Y" role="3clFbx">
            <node concept="3cpWs6" id="38_6U8fKv7Z" role="3cqZAp">
              <node concept="3clFbT" id="38_6U8fKv80" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38_6U8fKv81" role="3cqZAp">
          <node concept="3cpWsn" id="38_6U8fKv82" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="38_6U8fKv83" role="1tU5fm">
              <ref role="3uigEE" node="38_6U8fKv5f" resolve="MPSVcsManager.MyChangelistBuilder" />
            </node>
            <node concept="2ShNRf" id="38_6U8fKv84" role="33vP2m">
              <node concept="1pGfFk" id="38_6U8fKv85" role="2ShVmc">
                <ref role="37wK5l" node="38_6U8fKv5o" resolve="MPSVcsManager.MyChangelistBuilder" />
                <node concept="37vLTw" id="2BHiRxgm7Nc" role="37wK5m">
                  <ref role="3cqZAo" node="38_6U8fKv71" resolve="vfile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="38_6U8fKv87" role="3cqZAp">
          <node concept="3clFbS" id="38_6U8fKv8h" role="1zxBo7">
            <node concept="3clFbF" id="38_6U8fKv8i" role="3cqZAp">
              <node concept="2OqwBi" id="38_6U8fKv8j" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTwfl" role="2Oq$k0">
                  <ref role="3cqZAo" node="38_6U8fKv7P" resolve="changeProvider" />
                </node>
                <node concept="liA8E" id="38_6U8fKv8l" role="2OqNvi">
                  <ref role="37wK5l" to="1038:~ChangeProvider.getChanges(com.intellij.openapi.vcs.changes.VcsDirtyScope,com.intellij.openapi.vcs.changes.ChangelistBuilder,com.intellij.openapi.progress.ProgressIndicator,com.intellij.openapi.vcs.changes.ChangeListManagerGate)" resolve="getChanges" />
                  <node concept="37vLTw" id="3GM_nagTvgD" role="37wK5m">
                    <ref role="3cqZAo" node="38_6U8fKv7A" resolve="scope" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT$MD" role="37wK5m">
                    <ref role="3cqZAo" node="38_6U8fKv82" resolve="builder" />
                  </node>
                  <node concept="2ShNRf" id="38_6U8fKv8o" role="37wK5m">
                    <node concept="1pGfFk" id="38_6U8fKv8p" role="2ShVmc">
                      <ref role="37wK5l" to="xygl:~EmptyProgressIndicator.&lt;init&gt;()" resolve="EmptyProgressIndicator" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="38_6U8fKv8q" role="37wK5m">
                    <node concept="1pGfFk" id="38_6U8fKv8r" role="2ShVmc">
                      <ref role="37wK5l" node="38_6U8fKv4k" resolve="MPSVcsManager.StubChangeListManagerGate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="38_6U8fKv88" role="1zxBo5">
            <node concept="XOnhg" id="38_6U8fKv8f" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHYDy" role="1tU5fm">
                <node concept="3uibUv" id="38_6U8fKv8g" role="nSUat">
                  <ref role="3uigEE" to="jlcv:~VcsException" resolve="VcsException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="38_6U8fKv89" role="1zc67A">
              <node concept="RRSsy" id="6V2p7ItMNAr" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="6V2p7ItMNAt" role="RRSoy" />
                <node concept="37vLTw" id="6V2p7ItMPJK" role="RRSow">
                  <ref role="3cqZAo" node="38_6U8fKv8f" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38_6U8fKv8s" role="3cqZAp">
          <node concept="2OqwBi" id="38_6U8fKv8t" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagTBnF" role="2Oq$k0">
              <ref role="3cqZAo" node="38_6U8fKv82" resolve="builder" />
            </node>
            <node concept="liA8E" id="38_6U8fKv8v" role="2OqNvi">
              <ref role="37wK5l" node="38_6U8fKv5Q" resolve="isInConflict" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3qzU$0EaM1S" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDeg" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDeh" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDei" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDej" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDek" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDel" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDem" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDen" role="1PaTwD">
            <property role="3oM_SC" value="now," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeo" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDep" role="1PaTwD">
            <property role="3oM_SC" value="hold" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeq" role="1PaTwD">
            <property role="3oM_SC" value="your" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDer" role="1PaTwD">
            <property role="3oM_SC" value="temptation" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDes" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDet" role="1PaTwD">
            <property role="3oM_SC" value="remove" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeu" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDev" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDew" role="1PaTwD">
            <property role="3oM_SC" value="First," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDex" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDey" role="1PaTwD">
            <property role="3oM_SC" value="some" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDez" role="1PaTwD">
            <property role="3oM_SC" value="historic" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDe$" role="1PaTwD">
            <property role="3oM_SC" value="insight," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDe_" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeA" role="1PaTwD">
            <property role="3oM_SC" value="comment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeB" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeC" role="1PaTwD">
            <property role="3oM_SC" value="problemsDetected()" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeD" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeE" role="1PaTwD">
            <property role="3oM_SC" value="ModelMergeConflictTracker." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDeF" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDeG" role="1PaTwD">
            <property role="3oM_SC" value="Then," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeH" role="1PaTwD">
            <property role="3oM_SC" value="please" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeI" role="1PaTwD">
            <property role="3oM_SC" value="explain" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeJ" role="1PaTwD">
            <property role="3oM_SC" value="me" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeK" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeL" role="1PaTwD">
            <property role="3oM_SC" value="difference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeM" role="1PaTwD">
            <property role="3oM_SC" value="between" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeN" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeO" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeP" role="1PaTwD">
            <property role="3oM_SC" value="FileStatusManager" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeQ" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeR" role="1PaTwD">
            <property role="3oM_SC" value="ConflictsUtil" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeS" role="1PaTwD">
            <property role="3oM_SC" value="vs" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDeT" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDeU" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeV" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeW" role="1PaTwD">
            <property role="3oM_SC" value="ChangeProvider" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeX" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeY" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDeZ" role="1PaTwD">
            <property role="3oM_SC" value="method." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDf0" role="1PaTwD">
            <property role="3oM_SC" value="Which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDf1" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDf2" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDf3" role="1PaTwD">
            <property role="3oM_SC" value="right?" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaXgYO" role="jymVt" />
    <node concept="3clFb_" id="78tlMyQ2NAc" role="jymVt">
      <property role="TrG5h" value="checkIfProjectIsConflicting" />
      <node concept="3cqZAl" id="78tlMyQ2NAd" role="3clF45" />
      <node concept="3clFbS" id="78tlMyQ2NAf" role="3clF47">
        <node concept="3cpWs8" id="NOsWLGBd4J" role="3cqZAp">
          <node concept="3cpWsn" id="NOsWLGBd4K" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <node concept="3uibUv" id="NOsWLGBd4L" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="NOsWLGBeoF" role="33vP2m">
              <node concept="37vLTw" id="NOsWLGBdPA" role="2Oq$k0">
                <ref role="3cqZAo" node="38_6U8fKv5Y" resolve="myProject" />
              </node>
              <node concept="liA8E" id="NOsWLGBeUg" role="2OqNvi">
                <ref role="37wK5l" to="4nm9:~Project.getProjectFile()" resolve="getProjectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="NOsWLGBhbB" role="3cqZAp">
          <node concept="3clFbS" id="NOsWLGBhbD" role="3clFbx">
            <node concept="3cpWs6" id="NOsWLGBiwH" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="NOsWLGBi7m" role="3clFbw">
            <node concept="10Nm6u" id="NOsWLGBisK" role="3uHU7w" />
            <node concept="37vLTw" id="NOsWLGBhCh" role="3uHU7B">
              <ref role="3cqZAo" node="NOsWLGBd4K" resolve="projectFile" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="78tlMyQ2NLd" role="3cqZAp">
          <node concept="3cpWsn" id="78tlMyQ2NLe" role="3cpWs9">
            <property role="TrG5h" value="currentStatus" />
            <node concept="3uibUv" id="78tlMyQ2NLf" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2FoEFEi9Jdl" role="3cqZAp">
          <node concept="3clFbS" id="2FoEFEi9Jdn" role="1zxBo7">
            <node concept="3clFbF" id="2FoEFEi9ypK" role="3cqZAp">
              <node concept="37vLTI" id="2FoEFEi9ypM" role="3clFbG">
                <node concept="2OqwBi" id="78tlMyQ2NLg" role="37vLTx">
                  <node concept="2YIFZM" id="78tlMyQ2NLh" role="2Oq$k0">
                    <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                    <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                    <node concept="37vLTw" id="2BHiRxeujYy" role="37wK5m">
                      <ref role="3cqZAo" node="38_6U8fKv5Y" resolve="myProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="78tlMyQ2NLj" role="2OqNvi">
                    <ref role="37wK5l" to="jlcu:~FileStatusManager.getStatus(com.intellij.openapi.vfs.VirtualFile)" resolve="getStatus" />
                    <node concept="37vLTw" id="NOsWLGBgAZ" role="37wK5m">
                      <ref role="3cqZAo" node="NOsWLGBd4K" resolve="projectFile" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2FoEFEi9ypQ" role="37vLTJ">
                  <ref role="3cqZAo" node="78tlMyQ2NLe" resolve="currentStatus" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="9FRAMPq9bz" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="ignored" />
            <node concept="3uibUv" id="9FRAMPqo0u" role="1tU5fm">
              <ref role="3uigEE" to="bd8o:~AccessToken" resolve="AccessToken" />
            </node>
            <node concept="2YIFZM" id="9FRAMPqhFA" role="33vP2m">
              <ref role="37wK5l" to="9w4s:~SlowOperations.allowSlowOperations(java.lang.String)" resolve="allowSlowOperations" />
              <ref role="1Pybhc" to="9w4s:~SlowOperations" resolve="SlowOperations" />
              <node concept="Xl_RD" id="9FRAMPqiq8" role="37wK5m">
                <property role="Xl_RC" value="known-issues" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="78tlMyQ2NLp" role="3cqZAp">
          <node concept="3clFbS" id="78tlMyQ2NLq" role="3clFbx">
            <node concept="3clFbJ" id="78tlMyQ2NLy" role="3cqZAp">
              <node concept="3clFbS" id="78tlMyQ2NLz" role="3clFbx">
                <node concept="3cpWs8" id="78tlMyQ2R5I" role="3cqZAp">
                  <node concept="3cpWsn" id="78tlMyQ2R5J" role="3cpWs9">
                    <property role="TrG5h" value="answer" />
                    <node concept="10Oyi0" id="78tlMyQ2R5K" role="1tU5fm" />
                    <node concept="2YIFZM" id="78tlMyQ2R5L" role="33vP2m">
                      <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                      <ref role="37wK5l" to="jkm4:~Messages.showYesNoDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoDialog" />
                      <node concept="37vLTw" id="2BHiRxeuFGa" role="37wK5m">
                        <ref role="3cqZAo" node="38_6U8fKv5Y" resolve="myProject" />
                      </node>
                      <node concept="3cpWs3" id="78tlMyQ2R5N" role="37wK5m">
                        <node concept="Xl_RD" id="78tlMyQ2R5O" role="3uHU7B">
                          <property role="Xl_RC" value="You have your project file unmerged. It is strongly recommended to merge it before continuing. " />
                        </node>
                        <node concept="Xl_RD" id="78tlMyQ2R5P" role="3uHU7w">
                          <property role="Xl_RC" value="\nDo you want to merge it now?" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="78tlMyQ2R5Q" role="37wK5m">
                        <property role="Xl_RC" value="Unmerged Project File" />
                      </node>
                      <node concept="2YIFZM" id="78tlMyQ2R5R" role="37wK5m">
                        <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                        <ref role="37wK5l" to="jkm4:~Messages.getWarningIcon()" resolve="getWarningIcon" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="78tlMyQ2R5U" role="3cqZAp">
                  <node concept="3clFbS" id="78tlMyQ2R5V" role="3clFbx">
                    <node concept="3clFbF" id="78tlMyQ2R7M" role="3cqZAp">
                      <node concept="2OqwBi" id="78tlMyQ2R7N" role="3clFbG">
                        <node concept="2YIFZM" id="78tlMyQ2R7O" role="2Oq$k0">
                          <ref role="1Pybhc" to="jlcv:~AbstractVcsHelper" resolve="AbstractVcsHelper" />
                          <ref role="37wK5l" to="jlcv:~AbstractVcsHelper.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                          <node concept="37vLTw" id="2BHiRxeu_Gy" role="37wK5m">
                            <ref role="3cqZAo" node="38_6U8fKv5Y" resolve="myProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="78tlMyQ2R7Q" role="2OqNvi">
                          <ref role="37wK5l" to="jlcv:~AbstractVcsHelper.showMergeDialog(java.util.List)" resolve="showMergeDialog" />
                          <node concept="2YIFZM" id="78tlMyQ2R7R" role="37wK5m">
                            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                            <node concept="37vLTw" id="NOsWLGBUJ9" role="37wK5m">
                              <ref role="3cqZAo" node="NOsWLGBd4K" resolve="projectFile" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="78tlMyQ2R5Z" role="3clFbw">
                    <node concept="3cmrfG" id="78tlMyQ2R62" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTynn" role="3uHU7B">
                      <ref role="3cqZAo" node="78tlMyQ2R5J" resolve="answer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="78tlMyQ2NLF" role="3clFbw">
                <node concept="3clFbC" id="78tlMyQ2NLJ" role="3uHU7w">
                  <node concept="10M0yZ" id="78tlMyQ2NLM" role="3uHU7w">
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_BOTH_CONFLICTS" resolve="MERGED_WITH_BOTH_CONFLICTS" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTyje" role="3uHU7B">
                    <ref role="3cqZAo" node="78tlMyQ2NLe" resolve="currentStatus" />
                  </node>
                </node>
                <node concept="3clFbC" id="78tlMyQ2NLB" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTrbn" role="3uHU7B">
                    <ref role="3cqZAo" node="78tlMyQ2NLe" resolve="currentStatus" />
                  </node>
                  <node concept="10M0yZ" id="78tlMyQ2NLE" role="3uHU7w">
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="78tlMyQ2NL2" role="3cqZAp">
              <node concept="37vLTI" id="78tlMyQ2NL3" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuqRP" role="37vLTJ">
                  <ref role="3cqZAo" node="78tlMyQ2NuU" resolve="myLastProjectStatus" />
                </node>
                <node concept="37vLTw" id="3GM_nagTzmY" role="37vLTx">
                  <ref role="3cqZAo" node="78tlMyQ2NLe" resolve="currentStatus" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="78tlMyQ2NLu" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuq2v" role="3uHU7w">
              <ref role="3cqZAo" node="78tlMyQ2NuU" resolve="myLastProjectStatus" />
            </node>
            <node concept="37vLTw" id="3GM_nagTzjw" role="3uHU7B">
              <ref role="3cqZAo" node="78tlMyQ2NLe" resolve="currentStatus" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaXeye" role="jymVt" />
    <node concept="2YIFZL" id="38_6U8fKv6t" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3Tm1VV" id="38_6U8fKv6u" role="1B3o_S" />
      <node concept="3uibUv" id="38_6U8fKv6v" role="3clF45">
        <ref role="3uigEE" node="38_6U8fKv3G" resolve="MPSVcsManager" />
      </node>
      <node concept="37vLTG" id="38_6U8fKv6w" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="38_6U8fKv6x" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="38_6U8fKv6y" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="38_6U8fKv6z" role="3clF47">
        <node concept="3cpWs6" id="38_6U8fKv6$" role="3cqZAp">
          <node concept="2OqwBi" id="38_6U8fKv6_" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxghelw" role="2Oq$k0">
              <ref role="3cqZAo" node="38_6U8fKv6w" resolve="project" />
            </node>
            <node concept="liA8E" id="38_6U8fKv6B" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
              <node concept="3VsKOn" id="38_6U8fKv6C" role="37wK5m">
                <ref role="3VsUkX" node="38_6U8fKv3G" resolve="MPSVcsManager" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaXc4o" role="jymVt" />
    <node concept="312cEu" id="38_6U8fKv4h" role="jymVt">
      <property role="TrG5h" value="StubChangeListManagerGate" />
      <node concept="3Tm1VV" id="38_6U8fKv4i" role="1B3o_S" />
      <node concept="3uibUv" id="38_6U8fKv4j" role="EKbjA">
        <ref role="3uigEE" to="1038:~ChangeListManagerGate" resolve="ChangeListManagerGate" />
      </node>
      <node concept="3clFbW" id="38_6U8fKv4k" role="jymVt">
        <node concept="3Tm1VV" id="38_6U8fKv4l" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv4m" role="3clF45" />
        <node concept="3clFbS" id="38_6U8fKvan" role="3clF47" />
      </node>
      <node concept="3clFb_" id="63g6Q4FOTwp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setDefaultChangeList" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="63g6Q4FOTwq" role="1B3o_S" />
        <node concept="3cqZAl" id="63g6Q4FOTwr" role="3clF45" />
        <node concept="37vLTG" id="63g6Q4FOTws" role="3clF46">
          <property role="TrG5h" value="string" />
          <node concept="17QB3L" id="63g6Q4FOTww" role="1tU5fm" />
          <node concept="2AHcQZ" id="63g6Q4FOTwu" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="63g6Q4FOTwv" role="3clF47" />
        <node concept="2AHcQZ" id="3tYsUK_U_qa" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv4n" role="jymVt">
        <property role="TrG5h" value="getListsCopy" />
        <node concept="3Tm1VV" id="38_6U8fKv4o" role="1B3o_S" />
        <node concept="3uibUv" id="38_6U8fKv4p" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="38_6U8fKv4q" role="11_B2D">
            <ref role="3uigEE" to="1038:~LocalChangeList" resolve="LocalChangeList" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvao" role="3clF47">
          <node concept="3cpWs6" id="38_6U8fKvap" role="3cqZAp">
            <node concept="10Nm6u" id="38_6U8fKvaq" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_qd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv4r" role="jymVt">
        <property role="TrG5h" value="findChangeList" />
        <node concept="3Tm1VV" id="38_6U8fKv4s" role="1B3o_S" />
        <node concept="3uibUv" id="38_6U8fKv4t" role="3clF45">
          <ref role="3uigEE" to="1038:~LocalChangeList" resolve="LocalChangeList" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4u" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6sqsxb$DoVC" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="38_6U8fKvar" role="3clF47">
          <node concept="3cpWs6" id="38_6U8fKvas" role="3cqZAp">
            <node concept="10Nm6u" id="38_6U8fKvat" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="38_6U8fKvau" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_qh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv4w" role="jymVt">
        <property role="TrG5h" value="addChangeList" />
        <node concept="3Tm1VV" id="38_6U8fKv4x" role="1B3o_S" />
        <node concept="3uibUv" id="38_6U8fKv4y" role="3clF45">
          <ref role="3uigEE" to="1038:~LocalChangeList" resolve="LocalChangeList" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4z" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6sqsxb$DoVH" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4_" role="3clF46">
          <property role="TrG5h" value="comment" />
          <node concept="17QB3L" id="6sqsxb$DoVz" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="38_6U8fKvav" role="3clF47">
          <node concept="3cpWs6" id="38_6U8fKvaw" role="3cqZAp">
            <node concept="10Nm6u" id="38_6U8fKvax" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_qc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv4B" role="jymVt">
        <property role="TrG5h" value="findOrCreateList" />
        <node concept="3Tm1VV" id="38_6U8fKv4C" role="1B3o_S" />
        <node concept="3uibUv" id="38_6U8fKv4D" role="3clF45">
          <ref role="3uigEE" to="1038:~LocalChangeList" resolve="LocalChangeList" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4E" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6sqsxb$DoVG" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4G" role="3clF46">
          <property role="TrG5h" value="comment" />
          <node concept="17QB3L" id="6sqsxb$DoVB" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="38_6U8fKvay" role="3clF47">
          <node concept="3cpWs6" id="38_6U8fKvaz" role="3cqZAp">
            <node concept="10Nm6u" id="38_6U8fKva$" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_q8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv4I" role="jymVt">
        <property role="TrG5h" value="editComment" />
        <node concept="3Tm1VV" id="38_6U8fKv4J" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv4K" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv4L" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6sqsxb$DoVD" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4N" role="3clF46">
          <property role="TrG5h" value="comment" />
          <node concept="17QB3L" id="6sqsxb$DoVA" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="38_6U8fKva_" role="3clF47" />
        <node concept="2AHcQZ" id="3tYsUK_U_q7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv4P" role="jymVt">
        <property role="TrG5h" value="editName" />
        <node concept="3Tm1VV" id="38_6U8fKv4Q" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv4R" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv4S" role="3clF46">
          <property role="TrG5h" value="oldName" />
          <node concept="17QB3L" id="6sqsxb$DoVI" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv4U" role="3clF46">
          <property role="TrG5h" value="newName" />
          <node concept="17QB3L" id="6sqsxb$DoV_" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="38_6U8fKvaA" role="3clF47" />
        <node concept="2AHcQZ" id="3tYsUK_U_qg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv54" role="jymVt">
        <property role="TrG5h" value="setListsToDisappear" />
        <node concept="3Tm1VV" id="38_6U8fKv55" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv56" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv57" role="3clF46">
          <property role="TrG5h" value="names" />
          <node concept="3uibUv" id="38_6U8fKv58" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
            <node concept="17QB3L" id="6sqsxb$DoVE" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvaC" role="3clF47" />
        <node concept="2AHcQZ" id="3tYsUK_U_qe" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv5a" role="jymVt">
        <property role="TrG5h" value="getStatus" />
        <node concept="3Tm1VV" id="38_6U8fKv5b" role="1B3o_S" />
        <node concept="3uibUv" id="38_6U8fKv5c" role="3clF45">
          <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv5d" role="3clF46">
          <property role="TrG5h" value="virtualFile" />
          <node concept="3uibUv" id="38_6U8fKv5e" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvaD" role="3clF47">
          <node concept="3cpWs6" id="38_6U8fKvaE" role="3cqZAp">
            <node concept="10M0yZ" id="38_6U8fKvaF" role="3cqZAk">
              <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
              <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_q9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6vSrlVUNIoH" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getStatus" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6vSrlVUNIoI" role="1B3o_S" />
        <node concept="3uibUv" id="6vSrlVUNIoK" role="3clF45">
          <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
        </node>
        <node concept="37vLTG" id="6vSrlVUNIoL" role="3clF46">
          <property role="TrG5h" value="path" />
          <node concept="3uibUv" id="6vSrlVUNIoM" role="1tU5fm">
            <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
          </node>
          <node concept="2AHcQZ" id="6vSrlVUNIoN" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6vSrlVUNIoO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="6vSrlVUNIoP" role="3clF47">
          <node concept="3cpWs6" id="6vSrlVUNJ2w" role="3cqZAp">
            <node concept="10M0yZ" id="6vSrlVUNJ2x" role="3cqZAk">
              <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
              <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaXb8j" role="jymVt" />
    <node concept="312cEu" id="38_6U8fKv5f" role="jymVt">
      <property role="TrG5h" value="MyChangelistBuilder" />
      <node concept="3Tm6S6" id="38_6U8fKv5g" role="1B3o_S" />
      <node concept="3uibUv" id="38_6U8fKv5h" role="1zkMxy">
        <ref role="3uigEE" to="1038:~EmptyChangelistBuilder" resolve="EmptyChangelistBuilder" />
      </node>
      <node concept="312cEg" id="38_6U8fKv5i" role="jymVt">
        <property role="TrG5h" value="myVirtualFile" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="38_6U8fKv5j" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
        <node concept="3Tm6S6" id="38_6U8fKv5k" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="38_6U8fKv5l" role="jymVt">
        <property role="TrG5h" value="myIsMergedWithConflict" />
        <node concept="10P_77" id="38_6U8fKv5m" role="1tU5fm" />
        <node concept="3Tm6S6" id="38_6U8fKv5n" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="38_6U8fKv5o" role="jymVt">
        <node concept="3Tm1VV" id="38_6U8fKv5p" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv5q" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv5r" role="3clF46">
          <property role="TrG5h" value="vfile" />
          <node concept="3uibUv" id="38_6U8fKv5s" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvaG" role="3clF47">
          <node concept="3clFbF" id="38_6U8fKvaH" role="3cqZAp">
            <node concept="37vLTI" id="38_6U8fKvaI" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeufA1" role="37vLTJ">
                <ref role="3cqZAo" node="38_6U8fKv5i" resolve="myVirtualFile" />
              </node>
              <node concept="37vLTw" id="2BHiRxghizB" role="37vLTx">
                <ref role="3cqZAo" node="38_6U8fKv5r" resolve="vfile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv5t" role="jymVt">
        <property role="TrG5h" value="processChangeInList" />
        <node concept="3Tm1VV" id="38_6U8fKv5u" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv5v" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv5w" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="38_6U8fKv5x" role="1tU5fm">
            <ref role="3uigEE" to="1038:~Change" resolve="Change" />
          </node>
        </node>
        <node concept="37vLTG" id="38_6U8fKv5y" role="3clF46">
          <property role="TrG5h" value="changeList" />
          <node concept="3uibUv" id="38_6U8fKv5z" role="1tU5fm">
            <ref role="3uigEE" to="1038:~ChangeList" resolve="ChangeList" />
          </node>
          <node concept="2AHcQZ" id="38_6U8fKvaQ" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="37vLTG" id="38_6U8fKv5$" role="3clF46">
          <property role="TrG5h" value="vcsKey" />
          <node concept="3uibUv" id="38_6U8fKv5_" role="1tU5fm">
            <ref role="3uigEE" to="jlcv:~VcsKey" resolve="VcsKey" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvaL" role="3clF47">
          <node concept="3clFbF" id="38_6U8fKvaM" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyIgg" role="3clFbG">
              <ref role="37wK5l" node="38_6U8fKv5J" resolve="processChange" />
              <node concept="37vLTw" id="2BHiRxgm8Et" role="37wK5m">
                <ref role="3cqZAo" node="38_6U8fKv5w" resolve="change" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmybE" role="37wK5m">
                <ref role="3cqZAo" node="38_6U8fKv5$" resolve="vcsKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_Uuo0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv5A" role="jymVt">
        <property role="TrG5h" value="processChangeInList" />
        <node concept="3Tm1VV" id="38_6U8fKv5B" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv5C" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv5D" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="38_6U8fKv5E" role="1tU5fm">
            <ref role="3uigEE" to="1038:~Change" resolve="Change" />
          </node>
        </node>
        <node concept="37vLTG" id="38_6U8fKv5F" role="3clF46">
          <property role="TrG5h" value="changeListName" />
          <node concept="17QB3L" id="6sqsxb$DoVF" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="38_6U8fKv5H" role="3clF46">
          <property role="TrG5h" value="vcsKey" />
          <node concept="3uibUv" id="38_6U8fKv5I" role="1tU5fm">
            <ref role="3uigEE" to="jlcv:~VcsKey" resolve="VcsKey" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvaR" role="3clF47">
          <node concept="3clFbF" id="38_6U8fKvaS" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz81R" role="3clFbG">
              <ref role="37wK5l" node="38_6U8fKv5J" resolve="processChange" />
              <node concept="37vLTw" id="2BHiRxglwb1" role="37wK5m">
                <ref role="3cqZAo" node="38_6U8fKv5D" resolve="change" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmNIW" role="37wK5m">
                <ref role="3cqZAo" node="38_6U8fKv5H" resolve="vcsKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_Uuo8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv5J" role="jymVt">
        <property role="TrG5h" value="processChange" />
        <node concept="3Tm1VV" id="38_6U8fKv5K" role="1B3o_S" />
        <node concept="3cqZAl" id="38_6U8fKv5L" role="3clF45" />
        <node concept="37vLTG" id="38_6U8fKv5M" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="38_6U8fKv5N" role="1tU5fm">
            <ref role="3uigEE" to="1038:~Change" resolve="Change" />
          </node>
        </node>
        <node concept="37vLTG" id="38_6U8fKv5O" role="3clF46">
          <property role="TrG5h" value="vcsKey" />
          <node concept="3uibUv" id="38_6U8fKv5P" role="1tU5fm">
            <ref role="3uigEE" to="jlcv:~VcsKey" resolve="VcsKey" />
          </node>
        </node>
        <node concept="3clFbS" id="38_6U8fKvaW" role="3clF47">
          <node concept="3clFbJ" id="38_6U8fKvaX" role="3cqZAp">
            <node concept="2OqwBi" id="38_6U8fKvaY" role="3clFbw">
              <node concept="2OqwBi" id="38_6U8fKvaZ" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm5LU" role="2Oq$k0">
                  <ref role="3cqZAo" node="38_6U8fKv5M" resolve="change" />
                </node>
                <node concept="liA8E" id="38_6U8fKvb1" role="2OqNvi">
                  <ref role="37wK5l" to="1038:~Change.getFileStatus()" resolve="getFileStatus" />
                </node>
              </node>
              <node concept="liA8E" id="38_6U8fKvb2" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="10M0yZ" id="38_6U8fKvb3" role="37wK5m">
                  <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                  <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="38_6U8fKvb4" role="3clFbx">
              <node concept="3cpWs8" id="38_6U8fKvb5" role="3cqZAp">
                <node concept="3cpWsn" id="38_6U8fKvb6" role="3cpWs9">
                  <property role="TrG5h" value="contentRevision" />
                  <node concept="3uibUv" id="38_6U8fKvb7" role="1tU5fm">
                    <ref role="3uigEE" to="1038:~ContentRevision" resolve="ContentRevision" />
                  </node>
                  <node concept="2OqwBi" id="38_6U8fKvb8" role="33vP2m">
                    <node concept="37vLTw" id="2BHiRxgmKet" role="2Oq$k0">
                      <ref role="3cqZAo" node="38_6U8fKv5M" resolve="change" />
                    </node>
                    <node concept="liA8E" id="38_6U8fKvba" role="2OqNvi">
                      <ref role="37wK5l" to="1038:~Change.getAfterRevision()" resolve="getAfterRevision" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="38_6U8fKvbb" role="3cqZAp">
                <node concept="3y3z36" id="38_6U8fKvbc" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTAsc" role="3uHU7B">
                    <ref role="3cqZAo" node="38_6U8fKvb6" resolve="contentRevision" />
                  </node>
                  <node concept="10Nm6u" id="38_6U8fKvbe" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="38_6U8fKvbf" role="3clFbx">
                  <node concept="3clFbJ" id="38_6U8fKvbg" role="3cqZAp">
                    <node concept="2OqwBi" id="38_6U8fKvbh" role="3clFbw">
                      <node concept="2OqwBi" id="38_6U8fKvbi" role="2Oq$k0">
                        <node concept="2OqwBi" id="38_6U8fKvbj" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagT$h5" role="2Oq$k0">
                            <ref role="3cqZAo" node="38_6U8fKvb6" resolve="contentRevision" />
                          </node>
                          <node concept="liA8E" id="38_6U8fKvbl" role="2OqNvi">
                            <ref role="37wK5l" to="1038:~ContentRevision.getFile()" resolve="getFile" />
                          </node>
                        </node>
                        <node concept="liA8E" id="38_6U8fKvbm" role="2OqNvi">
                          <ref role="37wK5l" to="jlcv:~FilePath.getPresentableUrl()" resolve="getPresentableUrl" />
                        </node>
                      </node>
                      <node concept="liA8E" id="38_6U8fKvbn" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="2OqwBi" id="38_6U8fKvbo" role="37wK5m">
                          <node concept="37vLTw" id="2BHiRxeuwxY" role="2Oq$k0">
                            <ref role="3cqZAo" node="38_6U8fKv5i" resolve="myVirtualFile" />
                          </node>
                          <node concept="liA8E" id="38_6U8fKvbq" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getPresentableUrl()" resolve="getPresentableUrl" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="38_6U8fKvbr" role="3clFbx">
                      <node concept="3clFbF" id="38_6U8fKvbs" role="3cqZAp">
                        <node concept="37vLTI" id="38_6U8fKvbt" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxeuxJF" role="37vLTJ">
                            <ref role="3cqZAo" node="38_6U8fKv5l" resolve="myIsMergedWithConflict" />
                          </node>
                          <node concept="3clFbT" id="38_6U8fKvbv" role="37vLTx">
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
        </node>
        <node concept="2AHcQZ" id="3tYsUK_Uuo4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="38_6U8fKv5Q" role="jymVt">
        <property role="TrG5h" value="isInConflict" />
        <node concept="3Tm1VV" id="38_6U8fKv5R" role="1B3o_S" />
        <node concept="10P_77" id="38_6U8fKv5S" role="3clF45" />
        <node concept="3clFbS" id="38_6U8fKvbw" role="3clF47">
          <node concept="3cpWs6" id="38_6U8fKvbx" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeurq7" role="3cqZAk">
              <ref role="3cqZAo" node="38_6U8fKv5l" resolve="myIsMergedWithConflict" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_rZUNaX9Bi" role="jymVt" />
    <node concept="312cEu" id="78tlMyQ2MOs" role="jymVt">
      <property role="TrG5h" value="FileStatusListener" />
      <node concept="3Tm1VV" id="78tlMyQ2MOt" role="1B3o_S" />
      <node concept="3uibUv" id="78tlMyQ2MOy" role="EKbjA">
        <ref role="3uigEE" to="jlcu:~FileStatusListener" resolve="FileStatusListener" />
      </node>
      <node concept="312cEg" id="4Io9bth0eVY" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4Io9bth0eVZ" role="1B3o_S" />
        <node concept="3uibUv" id="4Io9bth0eW1" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Io9bth0gga" role="jymVt" />
      <node concept="3clFbW" id="78tlMyQ2MOu" role="jymVt">
        <node concept="3cqZAl" id="78tlMyQ2MOv" role="3clF45" />
        <node concept="3Tm1VV" id="4Io9bth1MRs" role="1B3o_S" />
        <node concept="3clFbS" id="78tlMyQ2MOx" role="3clF47">
          <node concept="3clFbF" id="4Io9bth0eW2" role="3cqZAp">
            <node concept="37vLTI" id="4Io9bth0eW4" role="3clFbG">
              <node concept="37vLTw" id="4Io9bth0eW7" role="37vLTJ">
                <ref role="3cqZAo" node="4Io9bth0eVY" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="4Io9bth0eW8" role="37vLTx">
                <ref role="3cqZAo" node="4Io9bth0bUJ" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4Io9bth0bUJ" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="4Io9bth0bUI" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="78tlMyQ2MOz" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="fileStatusesChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="78tlMyQ2MO$" role="1B3o_S" />
        <node concept="3cqZAl" id="78tlMyQ2MO_" role="3clF45" />
        <node concept="3clFbS" id="78tlMyQ2MOA" role="3clF47">
          <node concept="3cpWs8" id="4Io9bth0_2X" role="3cqZAp">
            <node concept="3cpWsn" id="4Io9bth0_2Y" role="3cpWs9">
              <property role="TrG5h" value="m" />
              <node concept="3uibUv" id="4Io9bth0$_i" role="1tU5fm">
                <ref role="3uigEE" node="38_6U8fKv3G" resolve="MPSVcsManager" />
              </node>
              <node concept="2OqwBi" id="4Io9bth0_2Z" role="33vP2m">
                <node concept="37vLTw" id="4Io9bth0_30" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Io9bth0eVY" resolve="myProject" />
                </node>
                <node concept="liA8E" id="4Io9bth0_31" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getServiceIfCreated(java.lang.Class)" resolve="getServiceIfCreated" />
                  <node concept="3VsKOn" id="4Io9bth0_32" role="37wK5m">
                    <ref role="3VsUkX" node="38_6U8fKv3G" resolve="MPSVcsManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4Io9bth0BnP" role="3cqZAp">
            <node concept="3clFbS" id="4Io9bth0BnR" role="3clFbx">
              <node concept="3clFbF" id="4Io9bth0IKB" role="3cqZAp">
                <node concept="2OqwBi" id="4Io9bth0Jvi" role="3clFbG">
                  <node concept="37vLTw" id="4Io9bth0IK$" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Io9bth0_2Y" resolve="m" />
                  </node>
                  <node concept="liA8E" id="4Io9bth0KDG" role="2OqNvi">
                    <ref role="37wK5l" node="78tlMyQ2NAc" resolve="checkIfProjectIsConflicting" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4Io9bth0Fxi" role="3clFbw">
              <node concept="10Nm6u" id="4Io9bth0H$O" role="3uHU7w" />
              <node concept="37vLTw" id="4Io9bth0Czo" role="3uHU7B">
                <ref role="3cqZAo" node="4Io9bth0_2Y" resolve="m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UABI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="78tlMyQ2MOB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="fileStatusChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="78tlMyQ2MOC" role="1B3o_S" />
        <node concept="3cqZAl" id="78tlMyQ2MOD" role="3clF45" />
        <node concept="37vLTG" id="78tlMyQ2MOE" role="3clF46">
          <property role="TrG5h" value="file" />
          <node concept="3uibUv" id="78tlMyQ2MOF" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
          <node concept="2AHcQZ" id="78tlMyQ2MOG" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="78tlMyQ2MOH" role="3clF47">
          <node concept="3clFbJ" id="78tlMyQ2NAj" role="3cqZAp">
            <node concept="3clFbS" id="78tlMyQ2NAl" role="3clFbx">
              <node concept="3cpWs8" id="4Io9bth0UJA" role="3cqZAp">
                <node concept="3cpWsn" id="4Io9bth0UJB" role="3cpWs9">
                  <property role="TrG5h" value="m" />
                  <node concept="3uibUv" id="4Io9bth0UJC" role="1tU5fm">
                    <ref role="3uigEE" node="38_6U8fKv3G" resolve="MPSVcsManager" />
                  </node>
                  <node concept="2OqwBi" id="4Io9bth0UJD" role="33vP2m">
                    <node concept="37vLTw" id="4Io9bth0UJE" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Io9bth0eVY" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="4Io9bth0UJF" role="2OqNvi">
                      <ref role="37wK5l" to="1m72:~ComponentManager.getServiceIfCreated(java.lang.Class)" resolve="getServiceIfCreated" />
                      <node concept="3VsKOn" id="4Io9bth0UJG" role="37wK5m">
                        <ref role="3VsUkX" node="38_6U8fKv3G" resolve="MPSVcsManager" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4Io9bth0UJH" role="3cqZAp">
                <node concept="3clFbS" id="4Io9bth0UJI" role="3clFbx">
                  <node concept="3clFbF" id="4Io9bth0UJJ" role="3cqZAp">
                    <node concept="2OqwBi" id="4Io9bth0UJK" role="3clFbG">
                      <node concept="37vLTw" id="4Io9bth0UJL" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Io9bth0UJB" resolve="m" />
                      </node>
                      <node concept="liA8E" id="4Io9bth0UJM" role="2OqNvi">
                        <ref role="37wK5l" node="78tlMyQ2NAc" resolve="checkIfProjectIsConflicting" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4Io9bth0UJN" role="3clFbw">
                  <node concept="10Nm6u" id="4Io9bth0UJO" role="3uHU7w" />
                  <node concept="37vLTw" id="4Io9bth0UJP" role="3uHU7B">
                    <ref role="3cqZAo" node="4Io9bth0UJB" resolve="m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="78tlMyQ2NAy" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxgkX3H" role="2Oq$k0">
                <ref role="3cqZAo" node="78tlMyQ2MOE" resolve="file" />
              </node>
              <node concept="liA8E" id="78tlMyQ2NAA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="78tlMyQ2NAs" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuQu5" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Io9bth0eVY" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="78tlMyQ2NAw" role="2OqNvi">
                    <ref role="37wK5l" to="4nm9:~Project.getProjectFile()" resolve="getProjectFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UABJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="4Io9bth1PRa" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDb_" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDbA" role="1PaTwD">
            <property role="3oM_SC" value="MessageBus" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbB" role="1PaTwD">
            <property role="3oM_SC" value="listener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Io9bth1l52" role="jymVt" />
    <node concept="312cEu" id="4Io9bth1om6" role="jymVt">
      <property role="TrG5h" value="NotifyConfigChange" />
      <node concept="312cEg" id="4Io9bth1vNr" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4Io9bth1vNs" role="1B3o_S" />
        <node concept="3uibUv" id="4Io9bth1vNu" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Io9bth1wa_" role="jymVt" />
      <node concept="3clFbW" id="4Io9bth1vdO" role="jymVt">
        <node concept="3cqZAl" id="4Io9bth1vdQ" role="3clF45" />
        <node concept="3Tm1VV" id="4Io9bth1vdR" role="1B3o_S" />
        <node concept="3clFbS" id="4Io9bth1vdS" role="3clF47">
          <node concept="3clFbF" id="4Io9bth1vNv" role="3cqZAp">
            <node concept="37vLTI" id="4Io9bth1vNx" role="3clFbG">
              <node concept="37vLTw" id="4Io9bth1vN$" role="37vLTJ">
                <ref role="3cqZAo" node="4Io9bth1vNr" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="4Io9bth1vN_" role="37vLTx">
                <ref role="3cqZAo" node="4Io9bth1vyE" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4Io9bth1vyE" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="4Io9bth1vyD" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Io9bth1ouT" role="jymVt" />
      <node concept="3Tm1VV" id="4Io9bth1om7" role="1B3o_S" />
      <node concept="3uibUv" id="4Io9bth1qmr" role="EKbjA">
        <ref role="3uigEE" to="jlcv:~VcsListener" resolve="VcsListener" />
      </node>
      <node concept="3clFb_" id="4Io9bth1qZU" role="jymVt">
        <property role="TrG5h" value="directoryMappingChanged" />
        <node concept="3Tm1VV" id="4Io9bth1qZV" role="1B3o_S" />
        <node concept="3cqZAl" id="4Io9bth1qZX" role="3clF45" />
        <node concept="3clFbS" id="4Io9bth1r00" role="3clF47">
          <node concept="3clFbF" id="4Io9bth1uJ7" role="3cqZAp">
            <node concept="2OqwBi" id="4Io9bth1uJ8" role="3clFbG">
              <node concept="2YIFZM" id="4Io9bth2lu4" role="2Oq$k0">
                <ref role="37wK5l" to="80f9:63ZcAL21OIW" resolve="getInstance" />
                <ref role="1Pybhc" to="80f9:63ZcAL21OIF" resolve="MergeDriverNotification" />
                <node concept="37vLTw" id="4Io9bth2lu5" role="37wK5m">
                  <ref role="3cqZAo" node="4Io9bth1vNr" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="4Io9bth1uJa" role="2OqNvi">
                <ref role="37wK5l" to="80f9:63ZcAL21OJd" resolve="showNotificationIfNeeded" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4Io9bth1r01" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="4Io9bth1Qdq" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDbC" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDbD" role="1PaTwD">
            <property role="3oM_SC" value="MessageBus" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbE" role="1PaTwD">
            <property role="3oM_SC" value="listener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Io9bth1Qtd" role="jymVt" />
    <node concept="2tJIrI" id="4Io9bth2hds" role="jymVt" />
    <node concept="312cEu" id="4Io9bth1Tjf" role="jymVt">
      <property role="TrG5h" value="OnStartup" />
      <node concept="2tJIrI" id="7KR9zZwJmGx" role="jymVt" />
      <node concept="3Tm1VV" id="4Io9bth1Tjg" role="1B3o_S" />
      <node concept="3clFb_" id="4Io9bth2dKO" role="jymVt">
        <property role="TrG5h" value="runActivity" />
        <node concept="3Tm1VV" id="4Io9bth2dKP" role="1B3o_S" />
        <node concept="3cqZAl" id="4Io9bth2dKR" role="3clF45" />
        <node concept="37vLTG" id="4Io9bth2dKS" role="3clF46">
          <property role="TrG5h" value="project" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="4Io9bth2dKT" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="4Io9bth2dKU" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4Io9bth2dKV" role="3clF47">
          <node concept="3clFbF" id="4Io9bth2lWI" role="3cqZAp">
            <node concept="2OqwBi" id="4Io9bth2mI$" role="3clFbG">
              <node concept="2YIFZM" id="4Io9bth2meX" role="2Oq$k0">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
              <node concept="liA8E" id="4Io9bth2n32" role="2OqNvi">
                <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
                <node concept="1bVj0M" id="4Io9bth2pYP" role="37wK5m">
                  <node concept="3clFbS" id="4Io9bth2pYS" role="1bW5cS">
                    <node concept="3clFbJ" id="4Io9bth2qj$" role="3cqZAp">
                      <node concept="3fqX7Q" id="4Io9bth2rPU" role="3clFbw">
                        <node concept="2OqwBi" id="4Io9bth2rPW" role="3fr31v">
                          <node concept="37vLTw" id="4Io9bth2rPX" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Io9bth2dKS" resolve="project" />
                          </node>
                          <node concept="liA8E" id="4Io9bth2rPY" role="2OqNvi">
                            <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4Io9bth2qjA" role="3clFbx">
                        <node concept="3clFbF" id="4Io9bth2s1v" role="3cqZAp">
                          <node concept="2OqwBi" id="4Io9bth2s1x" role="3clFbG">
                            <node concept="2YIFZM" id="4Io9bth2s1y" role="2Oq$k0">
                              <ref role="37wK5l" to="80f9:63ZcAL21OIW" resolve="getInstance" />
                              <ref role="1Pybhc" to="80f9:63ZcAL21OIF" resolve="MergeDriverNotification" />
                              <node concept="37vLTw" id="4Io9bth2s1z" role="37wK5m">
                                <ref role="3cqZAo" node="4Io9bth2dKS" resolve="project" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4Io9bth2s1$" role="2OqNvi">
                              <ref role="37wK5l" to="80f9:63ZcAL21OJd" resolve="showNotificationIfNeeded" />
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
        <node concept="2AHcQZ" id="4Io9bth2dKW" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="4Io9bth2jyl" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDbF" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDbG" role="1PaTwD">
            <property role="3oM_SC" value="I'd" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbH" role="1PaTwD">
            <property role="3oM_SC" value="love" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbI" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbJ" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbK" role="1PaTwD">
            <property role="3oM_SC" value="ProjectActivity" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJqBr" role="1PaTwD">
            <property role="3oM_SC" value="directly" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbL" role="1PaTwD">
            <property role="3oM_SC" value="instead," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbM" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbN" role="1PaTwD">
            <property role="3oM_SC" value="can't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbO" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbP" role="1PaTwD">
            <property role="3oM_SC" value="parameters" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbQ" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbR" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbS" role="1PaTwD">
            <property role="3oM_SC" value="execute(...," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbT" role="1PaTwD">
            <property role="3oM_SC" value="Continuation)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDbU" role="1PaTwD">
            <property role="3oM_SC" value="right," />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJqJS" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="7KR9zZwJr3m" role="1Vez_I">
          <node concept="3oM_SD" id="7KR9zZwJr3l" role="1PaTwD">
            <property role="3oM_SC" value="although" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJqUR" role="1PaTwD">
            <property role="3oM_SC" value="it's" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJqZ6" role="1PaTwD">
            <property role="3oM_SC" value="possible," />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJrrl" role="1PaTwD">
            <property role="3oM_SC" value="provided" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJrzM" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJrDH" role="1PaTwD">
            <property role="3oM_SC" value="imports" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJrKu" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJrNR" role="1PaTwD">
            <property role="3oM_SC" value="up" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJrQq" role="1PaTwD">
            <property role="3oM_SC" value="right." />
          </node>
        </node>
        <node concept="1PaTwC" id="7KR9zZwJs1q" role="1Vez_I">
          <node concept="3oM_SD" id="7KR9zZwJs1p" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJsfS" role="1PaTwD">
            <property role="3oM_SC" value="reason" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJslO" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJson" role="1PaTwD">
            <property role="3oM_SC" value="stick" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJsts" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJsvZ" role="1PaTwD">
            <property role="3oM_SC" value="IDEA's" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJs_U" role="1PaTwD">
            <property role="3oM_SC" value="extpoint," />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJsIn" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJsLK" role="1PaTwD">
            <property role="3oM_SC" value="ProjectLifecycleListener" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJtdD" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJtgc" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJtiJ" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJtnO" role="1PaTwD">
            <property role="3oM_SC" value="care" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJts3" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJtx8" role="1PaTwD">
            <property role="3oM_SC" value="MPSProject" />
          </node>
          <node concept="3oM_SD" id="7KR9zZwJtEr" role="1PaTwD">
            <property role="3oM_SC" value="here." />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7KR9zZwJm4T" role="1zkMxy">
        <ref role="3uigEE" to="j9ng:~MPSProjectActivity" resolve="MPSProjectActivity" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4Io9bth2x03" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsDbV" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDbW" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDbX" role="1PaTwD">
          <property role="3oM_SC" value="service" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7cEItjJECz1">
    <property role="TrG5h" value="MergeDriverPackerImpl" />
    <node concept="3Tm1VV" id="7cEItjJECz2" role="1B3o_S" />
    <node concept="3uibUv" id="7cEItjJEHin" role="1zkMxy">
      <ref role="3uigEE" to="80f9:fZ9ka7YMG8" resolve="MergeDriverPacker" />
    </node>
    <node concept="3clFbW" id="7cEItjJECz3" role="jymVt">
      <node concept="3cqZAl" id="7cEItjJECz4" role="3clF45" />
      <node concept="3Tm1VV" id="7cEItjJECz5" role="1B3o_S" />
      <node concept="3clFbS" id="7cEItjJECz6" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7cEItjJEHio" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMPSCorePath" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="7cEItjJEHip" role="3clF45" />
      <node concept="3Tm1VV" id="7cEItjJEHiq" role="1B3o_S" />
      <node concept="3clFbS" id="7cEItjJEHir" role="3clF47">
        <node concept="3cpWs6" id="7cEItjJEHiJ" role="3cqZAp">
          <node concept="2YIFZM" id="7cEItjJEB4z" role="3cqZAk">
            <ref role="1Pybhc" to="bd8o:~PathManager" resolve="PathManager" />
            <ref role="37wK5l" to="bd8o:~PathManager.getLibPath()" resolve="getLibPath" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S5MD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="GCT71rA2ZT" role="jymVt" />
    <node concept="3clFb_" id="3w733MjdnQq" role="jymVt">
      <property role="TrG5h" value="getVCSCorePluginPath" />
      <node concept="17QB3L" id="3w733MjdnQr" role="3clF45" />
      <node concept="3Tmbuc" id="3w733MjdnQt" role="1B3o_S" />
      <node concept="3clFbS" id="3w733MjdnQu" role="3clF47">
        <node concept="3cpWs8" id="5drFrG61MpO" role="3cqZAp">
          <node concept="3cpWsn" id="5drFrG61MpP" role="3cpWs9">
            <property role="TrG5h" value="vcsCorePlugin" />
            <node concept="3uibUv" id="5drFrG61MpQ" role="1tU5fm">
              <ref role="3uigEE" to="ctgy:~IdeaPluginDescriptor" resolve="IdeaPluginDescriptor" />
            </node>
            <node concept="2YIFZM" id="5drFrG61MpR" role="33vP2m">
              <ref role="37wK5l" to="ctgy:~PluginManagerCore.getPlugin(com.intellij.openapi.extensions.PluginId)" resolve="getPlugin" />
              <ref role="1Pybhc" to="ctgy:~PluginManagerCore" resolve="PluginManagerCore" />
              <node concept="2YIFZM" id="5drFrG61MpS" role="37wK5m">
                <ref role="37wK5l" to="9ti4:~PluginId.getId(java.lang.String)" resolve="getId" />
                <ref role="1Pybhc" to="9ti4:~PluginId" resolve="PluginId" />
                <node concept="Xl_RD" id="5drFrG61MpT" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.vcs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="5drFrG61MpU" role="3cqZAp">
          <node concept="3y3z36" id="5drFrG61MpV" role="1gVkn0">
            <node concept="10Nm6u" id="5drFrG61MpW" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTB6h" role="3uHU7B">
              <ref role="3cqZAo" node="5drFrG61MpP" resolve="vcsCorePlugin" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5drFrG61MpY" role="3cqZAp">
          <node concept="2OqwBi" id="6kmsk4KDIXG" role="3cqZAk">
            <node concept="2OqwBi" id="5drFrG61Mq4" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTyHb" role="2Oq$k0">
                <ref role="3cqZAo" node="5drFrG61MpP" resolve="vcsCorePlugin" />
              </node>
              <node concept="liA8E" id="5drFrG61Mq6" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~PluginDescriptor.getPluginPath()" resolve="getPluginPath" />
              </node>
            </node>
            <node concept="liA8E" id="6kmsk4KDIXW" role="2OqNvi">
              <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3w733MjdnQv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="GCT71rBdZ1" role="jymVt" />
    <node concept="3clFb_" id="pEM_QpSS_1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getVCSCoreFileName" />
      <node concept="3Tmbuc" id="pEM_QpSS_3" role="1B3o_S" />
      <node concept="3clFbS" id="pEM_QpSS_4" role="3clF47">
        <node concept="3cpWs6" id="pEM_QpSS_n" role="3cqZAp">
          <node concept="Xl_RD" id="pEM_QpSS_p" role="3cqZAk">
            <property role="Xl_RC" value="vcs-core.jar" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="pEM_QpSS_m" role="3clF45" />
      <node concept="2AHcQZ" id="3tYsUK_S5MB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6m1MVDkVd29">
    <property role="TrG5h" value="TestMergeDialog" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="6m1MVDkVd2a" role="1B3o_S" />
    <node concept="2tJIrI" id="15VbAzMGyv7" role="jymVt" />
    <node concept="1X3_iC" id="76OnFPC8xE1" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="Wx3nA" id="OGpfRfwdMo" role="8Wnug">
        <property role="TrG5h" value="___init" />
        <node concept="3Tm6S6" id="OGpfRfwdMp" role="1B3o_S" />
        <node concept="3uibUv" id="OGpfRfwdMr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="2ShNRf" id="OGpfRfwdM$" role="33vP2m">
          <node concept="YeOm9" id="OGpfRfwdMD" role="2ShVmc">
            <node concept="1Y3b0j" id="OGpfRfwdME" role="YeSDq">
              <property role="2bfB8j" value="true" />
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              <ref role="1Y3XeK" to="wyt6:~Object" resolve="Object" />
              <node concept="3Tm1VV" id="OGpfRfwdMF" role="1B3o_S" />
              <node concept="3KIgzJ" id="OGpfRfwdMP" role="jymVt">
                <node concept="3clFbS" id="OGpfRfwdMQ" role="3KIlGz">
                  <node concept="3clFbF" id="OGpfRfwe4$" role="3cqZAp">
                    <node concept="2YIFZM" id="OGpfRfwe5e" role="3clFbG">
                      <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
                      <ref role="37wK5l" to="9ti4:~Extensions.registerAreaClass(java.lang.String,java.lang.String)" resolve="registerAreaClass" />
                      <node concept="Xl_RD" id="OGpfRfwe5f" role="37wK5m">
                        <property role="Xl_RC" value="IDEA_PROJECT" />
                      </node>
                      <node concept="10Nm6u" id="OGpfRfwe5h" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="z59LJ" id="76OnFPC8vRM" role="lGtFl">
          <node concept="1PaTwC" id="1E1X3WHsDd5" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDd6" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDd7" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDd8" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDd9" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDda" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdb" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdc" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdd" role="1PaTwD">
              <property role="3oM_SC" value="intention" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDde" role="1PaTwD">
              <property role="3oM_SC" value="behind" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdf" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdg" role="1PaTwD">
              <property role="3oM_SC" value="code," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdh" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdi" role="1PaTwD">
              <property role="3oM_SC" value="previous" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdj" role="1PaTwD">
              <property role="3oM_SC" value="developers" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdk" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsDdl" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDdm" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdn" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdo" role="1PaTwD">
              <property role="3oM_SC" value="manage" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdp" role="1PaTwD">
              <property role="3oM_SC" value="my" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdq" role="1PaTwD">
              <property role="3oM_SC" value="anger" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdr" role="1PaTwD">
              <property role="3oM_SC" value="regarding" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDds" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdt" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdu" role="1PaTwD">
              <property role="3oM_SC" value="(see" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdv" role="1PaTwD">
              <property role="3oM_SC" value="excessively" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdw" role="1PaTwD">
              <property role="3oM_SC" value="descriptive" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdx" role="1PaTwD">
              <property role="3oM_SC" value="comment" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdy" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsDdz" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDd$" role="1PaTwD">
              <property role="3oM_SC" value="94df01069186c669870e433cbaeaf9c1942aff2a," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDd_" role="1PaTwD">
              <property role="3oM_SC" value="&quot;Fixed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdA" role="1PaTwD">
              <property role="3oM_SC" value="TestMergeDialog&quot;)" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsDdB" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDdC" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdD" role="1PaTwD">
              <property role="3oM_SC" value="TestMergeDialog" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdE" role="1PaTwD">
              <property role="3oM_SC" value="works," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdF" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdG" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdH" role="1PaTwD">
              <property role="3oM_SC" value="commented" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdI" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdJ" role="1PaTwD">
              <property role="3oM_SC" value="piece" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdK" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdL" role="1PaTwD">
              <property role="3oM_SC" value="junk." />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdM" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdN" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdO" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdP" role="1PaTwD">
              <property role="3oM_SC" value="work," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdQ" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdS" role="1PaTwD">
              <property role="3oM_SC" value="uncomment" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdU" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdV" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdW" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdX" role="1PaTwD">
              <property role="3oM_SC" value="helps" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdY" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDdZ" role="1PaTwD">
              <property role="3oM_SC" value="tell" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe0" role="1PaTwD">
              <property role="3oM_SC" value="me" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe2" role="1PaTwD">
              <property role="3oM_SC" value="outcome" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe3" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe4" role="1PaTwD">
              <property role="3oM_SC" value="your" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe5" role="1PaTwD">
              <property role="3oM_SC" value="findings." />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsDe6" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsDe7" role="1PaTwD">
              <property role="3oM_SC" value="Likely," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe8" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDe9" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDea" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDeb" role="1PaTwD">
              <property role="3oM_SC" value="IdeaEnvironment," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDec" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDed" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDee" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsDef" role="1PaTwD">
              <property role="3oM_SC" value="use." />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="nUYGvAXc0A" role="jymVt" />
    <node concept="312cEg" id="nUYGvAXbwk" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="nUYGvAXbwl" role="1B3o_S" />
      <node concept="3uibUv" id="nUYGvAXbwn" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="15VbAzMGyea" role="jymVt" />
    <node concept="3clFbW" id="6m1MVDkVd3a" role="jymVt">
      <node concept="37vLTG" id="nUYGvAXbtg" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="nUYGvAXbvJ" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6m1MVDkVd3b" role="1B3o_S" />
      <node concept="3cqZAl" id="6m1MVDkVd3c" role="3clF45" />
      <node concept="3clFbS" id="6m1MVDkVd3d" role="3clF47">
        <node concept="3clFbF" id="nUYGvAXbwo" role="3cqZAp">
          <node concept="37vLTI" id="nUYGvAXbwq" role="3clFbG">
            <node concept="37vLTw" id="nUYGvAXbwt" role="37vLTJ">
              <ref role="3cqZAo" node="nUYGvAXbwk" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="nUYGvAXbwu" role="37vLTx">
              <ref role="3cqZAo" node="nUYGvAXbtg" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="nUYGvAXcyC" role="jymVt" />
    <node concept="3clFb_" id="nUYGvAXcY1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="run" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="nUYGvAXdau" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="false" />
        <node concept="10Q1$e" id="nUYGvAXdav" role="1tU5fm">
          <node concept="17QB3L" id="nUYGvAXdaw" role="10Q1$1" />
        </node>
      </node>
      <node concept="3clFbS" id="nUYGvAXcY4" role="3clF47">
        <node concept="3cpWs8" id="76OnFPC8Fyb" role="3cqZAp">
          <node concept="3cpWsn" id="76OnFPC8Fyc" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="76OnFPC8Fyd" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="76OnFPC8PnI" role="33vP2m">
              <node concept="37vLTw" id="nUYGvAXiMa" role="2Oq$k0">
                <ref role="3cqZAo" node="nUYGvAXbwk" resolve="myProject" />
              </node>
              <node concept="liA8E" id="76OnFPC8QDI" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6m1MVDkVd3s" role="3cqZAp">
          <node concept="3cpWsn" id="6m1MVDkVd3t" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <property role="3TUv4t" value="true" />
            <node concept="10Q1$e" id="6m1MVDkVd3u" role="1tU5fm">
              <node concept="17QB3L" id="3SHxTHDg$MP" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="6m1MVDkVd3w" role="33vP2m">
              <node concept="3$_iS1" id="6m1MVDkVd3x" role="2ShVmc">
                <node concept="17QB3L" id="3SHxTHDg_30" role="3$_nBY" />
                <node concept="3$GHV9" id="6m1MVDkVd3y" role="3$GQph">
                  <node concept="3cmrfG" id="6m1MVDkVd3z" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6m1MVDkVd3_" role="3cqZAp">
          <node concept="3cpWsn" id="6m1MVDkVd3A" role="3cpWs9">
            <property role="TrG5h" value="resultFile" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="6sqsxb$$CTG" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="6m1MVDkVd3C" role="3cqZAp">
          <node concept="22lmx$" id="6m1MVDkVd3D" role="3clFbw">
            <node concept="3clFbC" id="6m1MVDkVd3E" role="3uHU7B">
              <node concept="2OqwBi" id="6m1MVDkVd3F" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgha2K" role="2Oq$k0">
                  <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                </node>
                <node concept="1Rwk04" id="6m1MVDkVd3H" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="6m1MVDkVd3I" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="3clFbC" id="6m1MVDkVd3J" role="3uHU7w">
              <node concept="2OqwBi" id="6m1MVDkVd3K" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxglVwz" role="2Oq$k0">
                  <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                </node>
                <node concept="1Rwk04" id="6m1MVDkVd3M" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="6m1MVDkVd3N" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6m1MVDkVd3O" role="9aQIa">
            <node concept="22lmx$" id="6m1MVDkVd3P" role="3clFbw">
              <node concept="3clFbC" id="6m1MVDkVd3Q" role="3uHU7B">
                <node concept="2OqwBi" id="6m1MVDkVd3R" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgllnp" role="2Oq$k0">
                    <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                  </node>
                  <node concept="1Rwk04" id="6m1MVDkVd3T" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="6m1MVDkVd3U" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
              <node concept="3clFbC" id="6m1MVDkVd3V" role="3uHU7w">
                <node concept="2OqwBi" id="6m1MVDkVd3W" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxglIdz" role="2Oq$k0">
                    <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                  </node>
                  <node concept="1Rwk04" id="6m1MVDkVd3Y" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="6m1MVDkVd3Z" role="3uHU7w">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="6m1MVDkVd40" role="9aQIa">
              <node concept="3clFbS" id="6m1MVDkVd41" role="9aQI4">
                <node concept="3clFbF" id="6m1MVDkVd42" role="3cqZAp">
                  <node concept="2OqwBi" id="6m1MVDkVd43" role="3clFbG">
                    <node concept="10M0yZ" id="6m1MVDkVd44" role="2Oq$k0">
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    </node>
                    <node concept="liA8E" id="6m1MVDkVd45" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="Xl_RD" id="6m1MVDkVd46" role="37wK5m">
                        <property role="Xl_RC" value="There must be 1-4 parameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6m1MVDkVd47" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbS" id="6m1MVDkVd48" role="3clFbx">
              <node concept="3clFbF" id="6m1MVDkVd49" role="3cqZAp">
                <node concept="37vLTI" id="6m1MVDkVd4a" role="3clFbG">
                  <node concept="AH0OO" id="6m1MVDkVd4b" role="37vLTJ">
                    <node concept="37vLTw" id="3GM_nagTsGY" role="AHHXb">
                      <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
                    </node>
                    <node concept="3cmrfG" id="6m1MVDkVd4d" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3SHxTHDhc2Q" role="37vLTx">
                    <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
                    <ref role="37wK5l" to="snbe:~FileUtil.loadFile(java.io.File)" resolve="loadFile" />
                    <node concept="2ShNRf" id="3SHxTHDhc2R" role="37wK5m">
                      <node concept="1pGfFk" id="3SHxTHDhc2S" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="AH0OO" id="3SHxTHDhc2T" role="37wK5m">
                          <node concept="3cmrfG" id="3SHxTHDhc2U" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="3SHxTHDhc2V" role="AHHXb">
                            <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6m1MVDkVd4m" role="3cqZAp">
                <node concept="37vLTI" id="6m1MVDkVd4n" role="3clFbG">
                  <node concept="AH0OO" id="6m1MVDkVd4o" role="37vLTJ">
                    <node concept="37vLTw" id="3GM_nagTuM7" role="AHHXb">
                      <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
                    </node>
                    <node concept="3cmrfG" id="6m1MVDkVd4q" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3SHxTHDhce1" role="37vLTx">
                    <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
                    <ref role="37wK5l" to="snbe:~FileUtil.loadFile(java.io.File)" resolve="loadFile" />
                    <node concept="2ShNRf" id="3SHxTHDhce2" role="37wK5m">
                      <node concept="1pGfFk" id="3SHxTHDhce3" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="AH0OO" id="3SHxTHDhce4" role="37wK5m">
                          <node concept="3cmrfG" id="3SHxTHDhce5" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="3SHxTHDhce6" role="AHHXb">
                            <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6m1MVDkVd4z" role="3cqZAp">
                <node concept="37vLTI" id="6m1MVDkVd4$" role="3clFbG">
                  <node concept="AH0OO" id="6m1MVDkVd4_" role="37vLTJ">
                    <node concept="37vLTw" id="3GM_nagTwQT" role="AHHXb">
                      <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
                    </node>
                    <node concept="3cmrfG" id="6m1MVDkVd4B" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3SHxTHDhdyd" role="37vLTx">
                    <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
                    <ref role="37wK5l" to="snbe:~FileUtil.loadFile(java.io.File)" resolve="loadFile" />
                    <node concept="2ShNRf" id="3SHxTHDhdye" role="37wK5m">
                      <node concept="1pGfFk" id="3SHxTHDhdyf" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="AH0OO" id="3SHxTHDhdyg" role="37wK5m">
                          <node concept="3cmrfG" id="3SHxTHDhdyh" role="AHEQo">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="37vLTw" id="3SHxTHDhdyi" role="AHHXb">
                            <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6m1MVDkVd4K" role="3cqZAp">
                <node concept="3clFbC" id="6m1MVDkVd4L" role="3clFbw">
                  <node concept="2OqwBi" id="6m1MVDkVd4M" role="3uHU7B">
                    <node concept="37vLTw" id="2BHiRxgmLrN" role="2Oq$k0">
                      <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                    </node>
                    <node concept="1Rwk04" id="6m1MVDkVd4O" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd4P" role="3uHU7w">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="9aQIb" id="6m1MVDkVd4Q" role="9aQIa">
                  <node concept="3clFbS" id="6m1MVDkVd4R" role="9aQI4">
                    <node concept="3clFbF" id="6m1MVDkVd4S" role="3cqZAp">
                      <node concept="37vLTI" id="6m1MVDkVd4T" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTzqv" role="37vLTJ">
                          <ref role="3cqZAo" node="6m1MVDkVd3A" resolve="resultFile" />
                        </node>
                        <node concept="AH0OO" id="6m1MVDkVd4V" role="37vLTx">
                          <node concept="37vLTw" id="2BHiRxgm5X4" role="AHHXb">
                            <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                          </node>
                          <node concept="3cmrfG" id="6m1MVDkVd4X" role="AHEQo">
                            <property role="3cmrfH" value="3" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6m1MVDkVd4Y" role="3clFbx">
                  <node concept="3clFbF" id="6m1MVDkVd4Z" role="3cqZAp">
                    <node concept="37vLTI" id="6m1MVDkVd50" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTvTV" role="37vLTJ">
                        <ref role="3cqZAo" node="6m1MVDkVd3A" resolve="resultFile" />
                      </node>
                      <node concept="2OqwBi" id="6m1MVDkVd52" role="37vLTx">
                        <node concept="2YIFZM" id="6m1MVDkVd53" role="2Oq$k0">
                          <ref role="1Pybhc" to="guwi:~File" resolve="File" />
                          <ref role="37wK5l" to="guwi:~File.createTempFile(java.lang.String,java.lang.String)" resolve="createTempFile" />
                          <node concept="Xl_RD" id="6m1MVDkVd54" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                          <node concept="10M0yZ" id="3SHxTHDhdGK" role="37wK5m">
                            <ref role="3cqZAo" to="z1c4:~MPSExtentions.DOT_MODEL" resolve="DOT_MODEL" />
                            <ref role="1PxDUh" to="z1c4:~MPSExtentions" resolve="MPSExtentions" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6m1MVDkVd56" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6m1MVDkVd57" role="3clFbx">
            <node concept="3cpWs8" id="6m1MVDkVd58" role="3cqZAp">
              <node concept="3cpWsn" id="6m1MVDkVd59" role="3cpWs9">
                <property role="TrG5h" value="zipped" />
                <property role="3TUv4t" value="true" />
                <node concept="10Q1$e" id="6m1MVDkVd5a" role="1tU5fm">
                  <node concept="17QB3L" id="3SHxTHDg__5" role="10Q1$1" />
                </node>
                <node concept="2YIFZM" id="3SHxTHDg_hz" role="33vP2m">
                  <ref role="37wK5l" to="4rb9:nQhvklQAxN" resolve="loadZippedModelsAsText" />
                  <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
                  <node concept="2ShNRf" id="3SHxTHDg_h$" role="37wK5m">
                    <node concept="1pGfFk" id="3SHxTHDg_h_" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="AH0OO" id="3SHxTHDg_hA" role="37wK5m">
                        <node concept="37vLTw" id="3SHxTHDg_hB" role="AHHXb">
                          <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                        </node>
                        <node concept="3cmrfG" id="3SHxTHDg_hC" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="3SHxTHDg_hD" role="37wK5m">
                    <node concept="3g6Rrh" id="3SHxTHDg_hE" role="2ShVmc">
                      <node concept="3uibUv" id="3SHxTHDg_hF" role="3g7fb8">
                        <ref role="3uigEE" to="ur19:341WClvYLId" resolve="MergeVersion" />
                      </node>
                      <node concept="Rm8GO" id="3SHxTHDg_hG" role="3g7hyw">
                        <ref role="Rm8GQ" to="ur19:341WClvYLIk" resolve="BASE" />
                        <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                      </node>
                      <node concept="Rm8GO" id="3SHxTHDg_hH" role="3g7hyw">
                        <ref role="Rm8GQ" to="ur19:341WClvYLIg" resolve="MINE" />
                        <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                      </node>
                      <node concept="Rm8GO" id="3SHxTHDg_hI" role="3g7hyw">
                        <ref role="1Px2BO" to="ur19:341WClvYLId" resolve="MergeVersion" />
                        <ref role="Rm8GQ" to="ur19:341WClvYLIi" resolve="REPOSITORY" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6m1MVDkVd5n" role="3cqZAp">
              <node concept="37vLTI" id="6m1MVDkVd5o" role="3clFbG">
                <node concept="AH0OO" id="6m1MVDkVd5p" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTyDQ" role="AHHXb">
                    <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd5r" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="AH0OO" id="6m1MVDkVd5s" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTsrT" role="AHHXb">
                    <ref role="3cqZAo" node="6m1MVDkVd59" resolve="zipped" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd5u" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6m1MVDkVd5v" role="3cqZAp">
              <node concept="37vLTI" id="6m1MVDkVd5w" role="3clFbG">
                <node concept="AH0OO" id="6m1MVDkVd5x" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTtvL" role="AHHXb">
                    <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd5z" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="AH0OO" id="6m1MVDkVd5$" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTAHN" role="AHHXb">
                    <ref role="3cqZAo" node="6m1MVDkVd59" resolve="zipped" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd5A" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6m1MVDkVd5B" role="3cqZAp">
              <node concept="37vLTI" id="6m1MVDkVd5C" role="3clFbG">
                <node concept="AH0OO" id="6m1MVDkVd5D" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTvqI" role="AHHXb">
                    <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd5F" role="AHEQo">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="AH0OO" id="6m1MVDkVd5G" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTued" role="AHHXb">
                    <ref role="3cqZAo" node="6m1MVDkVd59" resolve="zipped" />
                  </node>
                  <node concept="3cmrfG" id="6m1MVDkVd5I" role="AHEQo">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6m1MVDkVd5J" role="3cqZAp">
              <node concept="3clFbC" id="6m1MVDkVd5K" role="3clFbw">
                <node concept="2OqwBi" id="6m1MVDkVd5L" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmP45" role="2Oq$k0">
                    <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                  </node>
                  <node concept="1Rwk04" id="6m1MVDkVd5N" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="6m1MVDkVd5O" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="9aQIb" id="6m1MVDkVd5P" role="9aQIa">
                <node concept="3clFbS" id="6m1MVDkVd5Q" role="9aQI4">
                  <node concept="3clFbF" id="6m1MVDkVd5R" role="3cqZAp">
                    <node concept="37vLTI" id="6m1MVDkVd5S" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagT$U9" role="37vLTJ">
                        <ref role="3cqZAo" node="6m1MVDkVd3A" resolve="resultFile" />
                      </node>
                      <node concept="AH0OO" id="6m1MVDkVd5U" role="37vLTx">
                        <node concept="37vLTw" id="2BHiRxgliOF" role="AHHXb">
                          <ref role="3cqZAo" node="nUYGvAXdau" resolve="args" />
                        </node>
                        <node concept="3cmrfG" id="6m1MVDkVd5W" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6m1MVDkVd5X" role="3clFbx">
                <node concept="3clFbF" id="6m1MVDkVd5Y" role="3cqZAp">
                  <node concept="37vLTI" id="6m1MVDkVd5Z" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTt4r" role="37vLTJ">
                      <ref role="3cqZAo" node="6m1MVDkVd3A" resolve="resultFile" />
                    </node>
                    <node concept="2OqwBi" id="6m1MVDkVd61" role="37vLTx">
                      <node concept="2YIFZM" id="6m1MVDkVd62" role="2Oq$k0">
                        <ref role="1Pybhc" to="guwi:~File" resolve="File" />
                        <ref role="37wK5l" to="guwi:~File.createTempFile(java.lang.String,java.lang.String)" resolve="createTempFile" />
                        <node concept="Xl_RD" id="6m1MVDkVd63" role="37wK5m">
                          <property role="Xl_RC" value="mpstmd" />
                        </node>
                        <node concept="10M0yZ" id="3OgfWJy14aa" role="37wK5m">
                          <ref role="3cqZAo" to="z1c4:~MPSExtentions.DOT_MODEL" resolve="DOT_MODEL" />
                          <ref role="1PxDUh" to="z1c4:~MPSExtentions" resolve="MPSExtentions" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6m1MVDkVd65" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SHxTHDheED" role="3cqZAp" />
        <node concept="3cpWs8" id="4gQ5MKiFaXY" role="3cqZAp">
          <node concept="3cpWsn" id="4gQ5MKiFaXZ" role="3cpWs9">
            <property role="TrG5h" value="resFile" />
            <node concept="3uibUv" id="4gQ5MKiFaY0" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="2_MQfvmpR8d" role="33vP2m">
              <node concept="2YIFZM" id="2_MQfvmpQpB" role="2Oq$k0">
                <ref role="37wK5l" to="jlff:~LocalFileSystem.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="jlff:~LocalFileSystem" resolve="LocalFileSystem" />
              </node>
              <node concept="liA8E" id="2_MQfvmpREG" role="2OqNvi">
                <ref role="37wK5l" to="jlff:~LocalFileSystem.findFileByIoFile(java.io.File)" resolve="findFileByIoFile" />
                <node concept="2ShNRf" id="2_MQfvmpSeK" role="37wK5m">
                  <node concept="1pGfFk" id="2_MQfvmq8Y5" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="2_MQfvmq9_g" role="37wK5m">
                      <ref role="3cqZAo" node="6m1MVDkVd3A" resolve="resultFile" />
                    </node>
                  </node>
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
                <node concept="37vLTw" id="3SHxTHDhgVT" role="I$8f6">
                  <ref role="3cqZAo" node="6m1MVDkVd3t" resolve="models" />
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
                    <node concept="37vLTw" id="76OnFPC8QTr" role="37wK5m">
                      <ref role="3cqZAo" node="76OnFPC8Fyc" resolve="ideaProject" />
                    </node>
                    <node concept="10M0yZ" id="4gQ5MKiF1uL" role="37wK5m">
                      <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_FILE_TYPE" resolve="MPS_FILE_TYPE" />
                      <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
                    </node>
                    <node concept="2OqwBi" id="4gQ5MKiEXXz" role="37wK5m">
                      <node concept="2YIFZM" id="4gQ5MKiEXX$" role="2Oq$k0">
                        <ref role="1Pybhc" to="iwsx:~FileDocumentManager" resolve="FileDocumentManager" />
                        <ref role="37wK5l" to="iwsx:~FileDocumentManager.getInstance()" resolve="getInstance" />
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
                      <node concept="37vLTw" id="3SHxTHDhph$" role="3uHU7w">
                        <ref role="3cqZAo" node="6m1MVDkVd3A" resolve="resultFile" />
                      </node>
                      <node concept="Xl_RD" id="3SHxTHDhoFl" role="3uHU7B">
                        <property role="Xl_RC" value="Merge files and save result to " />
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
                  <ref role="1Pybhc" to="yt4f:~DiffManager" resolve="DiffManager" />
                  <ref role="37wK5l" to="yt4f:~DiffManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="4gQ5MKiF6V$" role="2OqNvi">
                  <ref role="37wK5l" to="yt4f:~DiffManager.showMerge(com.intellij.openapi.project.Project,com.intellij.diff.merge.MergeRequest)" resolve="showMerge" />
                  <node concept="37vLTw" id="76OnFPC8RfX" role="37wK5m">
                    <ref role="3cqZAo" node="76OnFPC8Fyc" resolve="ideaProject" />
                  </node>
                  <node concept="37vLTw" id="4gQ5MKiF6VC" role="37wK5m">
                    <ref role="3cqZAo" node="4gQ5MKiEXXo" resolve="request" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4gQ5MKiFOJ$" role="1zxBo5">
            <node concept="XOnhg" id="4gQ5MKiFOJA" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHYD$" role="1tU5fm">
                <node concept="3uibUv" id="4gQ5MKiFRq_" role="nSUat">
                  <ref role="3uigEE" to="yt4f:~InvalidDiffRequestException" resolve="InvalidDiffRequestException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4gQ5MKiFOJE" role="1zc67A">
              <node concept="RRSsy" id="3jYQuSB39JS" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="4gQ5MKiFSrf" role="RRSoy" />
                <node concept="37vLTw" id="4gQ5MKiFSrh" role="RRSow">
                  <ref role="3cqZAo" node="4gQ5MKiFOJA" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="nUYGvAXcNJ" role="3clF45" />
      <node concept="3uibUv" id="nUYGvAYdqn" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="15VbAzMGxxg" role="jymVt" />
    <node concept="2YIFZL" id="6m1MVDkVd3e" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6m1MVDkVd3f" role="1B3o_S" />
      <node concept="3cqZAl" id="6m1MVDkVd3g" role="3clF45" />
      <node concept="37vLTG" id="6m1MVDkVd3h" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="false" />
        <node concept="10Q1$e" id="6m1MVDkVd3i" role="1tU5fm">
          <node concept="17QB3L" id="OGpfRfwcth" role="10Q1$1" />
        </node>
      </node>
      <node concept="3clFbS" id="6m1MVDkVd3k" role="3clF47">
        <node concept="3clFbJ" id="OGpfRfwbJ4" role="3cqZAp">
          <node concept="3clFbS" id="OGpfRfwbJ5" role="3clFbx">
            <node concept="3clFbF" id="OGpfRfwbJo" role="3cqZAp">
              <node concept="2OqwBi" id="OGpfRfwbYo" role="3clFbG">
                <node concept="10M0yZ" id="OGpfRfwbJp" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="OGpfRfwbYt" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.print(java.lang.String)" resolve="print" />
                  <node concept="Xl_RD" id="OGpfRfwbYu" role="37wK5m">
                    <property role="Xl_RC" value="Input path to model zip: " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="OGpfRfwcsG" role="3cqZAp">
              <node concept="3cpWsn" id="OGpfRfwcsH" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="17QB3L" id="OGpfRfwcsY" role="1tU5fm" />
                <node concept="2OqwBi" id="OGpfRfwcsJ" role="33vP2m">
                  <node concept="2ShNRf" id="OGpfRfwcsK" role="2Oq$k0">
                    <node concept="1pGfFk" id="OGpfRfwcsL" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~Scanner.&lt;init&gt;(java.io.InputStream)" resolve="Scanner" />
                      <node concept="10M0yZ" id="OGpfRfwcsM" role="37wK5m">
                        <ref role="3cqZAo" to="wyt6:~System.in" resolve="in" />
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="OGpfRfwcsN" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Scanner.nextLine()" resolve="nextLine" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="OGpfRfwct0" role="3cqZAp">
              <node concept="37vLTI" id="OGpfRfwct4" role="3clFbG">
                <node concept="2ShNRf" id="OGpfRfwct7" role="37vLTx">
                  <node concept="3g6Rrh" id="OGpfRfwctf" role="2ShVmc">
                    <node concept="17QB3L" id="OGpfRfwctc" role="3g7fb8" />
                    <node concept="2OqwBi" id="OGpfRfwctu" role="3g7hyw">
                      <node concept="37vLTw" id="3GM_nagTxHU" role="2Oq$k0">
                        <ref role="3cqZAo" node="OGpfRfwcsH" resolve="line" />
                      </node>
                      <node concept="17S1cR" id="OGpfRfwct$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxgm7gx" role="37vLTJ">
                  <ref role="3cqZAo" node="6m1MVDkVd3h" resolve="args" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="OGpfRfwbJk" role="3clFbw">
            <node concept="3cmrfG" id="OGpfRfwbJn" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="OGpfRfwbJb" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmayB" role="2Oq$k0">
                <ref role="3cqZAo" node="6m1MVDkVd3h" resolve="args" />
              </node>
              <node concept="1Rwk04" id="OGpfRfwbJg" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="107wlcQqKrb" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQqKrc" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQqKrd" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="107wlcQqKC3" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKCV" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKFI" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKHQ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKJ8" role="1PaTwD">
              <property role="3oM_SC" value="initialize" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKPI" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKRF" role="1PaTwD">
              <property role="3oM_SC" value="log," />
            </node>
            <node concept="3oM_SD" id="107wlcQqKUj" role="1PaTwD">
              <property role="3oM_SC" value="hope" />
            </node>
            <node concept="3oM_SD" id="107wlcQqKWF" role="1PaTwD">
              <property role="3oM_SC" value="nobody's" />
            </node>
            <node concept="3oM_SD" id="107wlcQqL1P" role="1PaTwD">
              <property role="3oM_SC" value="interested" />
            </node>
            <node concept="3oM_SD" id="107wlcQqL6J" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="107wlcQqL81" role="1PaTwD">
              <property role="3oM_SC" value="custom" />
            </node>
            <node concept="3oM_SD" id="107wlcQqLbf" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="107wlcQqLdc" role="1PaTwD">
              <property role="3oM_SC" value="category" />
            </node>
            <node concept="3oM_SD" id="107wlcQqLjc" role="1PaTwD">
              <property role="3oM_SC" value="handing" />
            </node>
            <node concept="3oM_SD" id="107wlcQqLn5" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="107wlcQqLpi" role="1PaTwD">
              <property role="3oM_SC" value="TestMergeDialog" />
            </node>
            <node concept="3oM_SD" id="107wlcQqLwN" role="1PaTwD">
              <property role="3oM_SC" value="scenario." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="107wlcQqLYf" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQqLYg" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQqLYh" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="107wlcQqM9Q" role="1PaTwD">
              <property role="3oM_SC" value="necessary," />
            </node>
            <node concept="3oM_SD" id="107wlcQqMex" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMgI" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMhP" role="1PaTwD">
              <property role="3oM_SC" value="rocket" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMl3" role="1PaTwD">
              <property role="3oM_SC" value="science" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMqC" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMsa" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMu7" role="1PaTwD">
              <property role="3oM_SC" value="LogInitializer.init()" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMFd" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMKc" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="107wlcQqMLj" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="107wlcQqMRK" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="107wlcQqN0Z" role="1PaTwD">
              <property role="3oM_SC" value="instances" />
            </node>
            <node concept="3oM_SD" id="107wlcQqN26" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="107wlcQqN3o" role="1PaTwD">
              <property role="3oM_SC" value="j.u.bl.logging" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNaI" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNdm" role="1PaTwD">
              <property role="3oM_SC" value="plain" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNg9" role="1PaTwD">
              <property role="3oM_SC" value="Java" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNih" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNkD" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="107wlcQqNxz" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQqNx8" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQqNx7" role="1PaTwD">
              <property role="3oM_SC" value="(to" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNmm" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNoT" role="1PaTwD">
              <property role="3oM_SC" value="static" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNtC" role="1PaTwD">
              <property role="3oM_SC" value="LOG" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNVu" role="1PaTwD">
              <property role="3oM_SC" value="field" />
            </node>
            <node concept="3oM_SD" id="107wlcQqNX0" role="1PaTwD">
              <property role="3oM_SC" value="triggering" />
            </node>
            <node concept="3oM_SD" id="107wlcQqO3Q" role="1PaTwD">
              <property role="3oM_SC" value="intermediate" />
            </node>
            <node concept="3oM_SD" id="107wlcQqOkJ" role="1PaTwD">
              <property role="3oM_SC" value="Logger" />
            </node>
            <node concept="3oM_SD" id="107wlcQqO74" role="1PaTwD">
              <property role="3oM_SC" value="instantiations)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="76OnFPC8zq6" role="3cqZAp">
          <node concept="3cpWsn" id="76OnFPC8zq9" role="3cpWs9">
            <property role="TrG5h" value="ENV" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="nUYGvAWLmT" role="1tU5fm">
              <ref role="3uigEE" to="cky9:6rx4kZDk5Br" resolve="IdeaEnvironment" />
            </node>
            <node concept="2ShNRf" id="nUYGvAWMta" role="33vP2m">
              <node concept="1pGfFk" id="nUYGvAX71W" role="2ShVmc">
                <ref role="37wK5l" to="cky9:4OPNMy2crcG" resolve="IdeaEnvironment" />
                <node concept="2OqwBi" id="28TMbOSG0nC" role="37wK5m">
                  <node concept="2YIFZM" id="6LlhC3WKXaX" role="2Oq$k0">
                    <ref role="1Pybhc" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
                    <ref role="37wK5l" to="79ha:6rx4kZDkZ7z" resolve="defaultConfig" />
                  </node>
                  <node concept="liA8E" id="28TMbOSG0y8" role="2OqNvi">
                    <ref role="37wK5l" to="79ha:28TMbOSEVXt" resolve="withTestModeOn" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nUYGvAX8xg" role="3cqZAp">
          <node concept="2OqwBi" id="nUYGvAX9gJ" role="3clFbG">
            <node concept="37vLTw" id="nUYGvAX8xe" role="2Oq$k0">
              <ref role="3cqZAo" node="76OnFPC8zq9" resolve="ENV" />
            </node>
            <node concept="liA8E" id="nUYGvAX9Mo" role="2OqNvi">
              <ref role="37wK5l" to="cky9:3eUNqOk7mHv" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6m1MVDkVd3q" role="3cqZAp">
          <node concept="2YIFZM" id="6m1MVDkVd3r" role="3clFbG">
            <ref role="1Pybhc" to="zn9m:~IconLoader" resolve="IconLoader" />
            <ref role="37wK5l" to="zn9m:~IconLoader.activate()" resolve="activate" />
          </node>
        </node>
        <node concept="3cpWs8" id="76OnFPC8Bta" role="3cqZAp">
          <node concept="3cpWsn" id="76OnFPC8Btb" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="76OnFPC8Bt4" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="76OnFPC8Btc" role="33vP2m">
              <node concept="37vLTw" id="76OnFPC8Btd" role="2Oq$k0">
                <ref role="3cqZAo" node="76OnFPC8zq9" resolve="ENV" />
              </node>
              <node concept="liA8E" id="76OnFPC8Bte" role="2OqNvi">
                <ref role="37wK5l" to="cky9:2BGPXkEwXSW" resolve="createEmptyProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="76OnFPC8MEQ" role="3cqZAp">
          <node concept="2ZW3vV" id="76OnFPC8OnJ" role="1gVkn0">
            <node concept="3uibUv" id="76OnFPC8OMh" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="37vLTw" id="76OnFPC8NeG" role="2ZW6bz">
              <ref role="3cqZAo" node="76OnFPC8Btb" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nUYGvAXdTs" role="3cqZAp">
          <node concept="2OqwBi" id="nUYGvAXgoH" role="3clFbG">
            <node concept="2ShNRf" id="nUYGvAXdTo" role="2Oq$k0">
              <node concept="1pGfFk" id="nUYGvAXfO5" role="2ShVmc">
                <ref role="37wK5l" node="6m1MVDkVd3a" resolve="TestMergeDialog" />
                <node concept="10QFUN" id="76OnFPC8PUV" role="37wK5m">
                  <node concept="3uibUv" id="76OnFPC8Q7Y" role="10QFUM">
                    <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                  </node>
                  <node concept="37vLTw" id="76OnFPC8P5l" role="10QFUP">
                    <ref role="3cqZAo" node="76OnFPC8Btb" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="nUYGvAXgMV" role="2OqNvi">
              <ref role="37wK5l" node="nUYGvAXcY1" resolve="run" />
              <node concept="37vLTw" id="nUYGvAXh1u" role="37wK5m">
                <ref role="3cqZAo" node="6m1MVDkVd3h" resolve="args" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nUYGvAYfsM" role="3cqZAp">
          <node concept="2OqwBi" id="nUYGvAYfR$" role="3clFbG">
            <node concept="37vLTw" id="nUYGvAYfsK" role="2Oq$k0">
              <ref role="3cqZAo" node="76OnFPC8zq9" resolve="ENV" />
            </node>
            <node concept="liA8E" id="nUYGvAYgow" role="2OqNvi">
              <ref role="37wK5l" to="cky9:9GeULsOzVi" resolve="closeProject" />
              <node concept="37vLTw" id="nUYGvAYgAe" role="37wK5m">
                <ref role="3cqZAo" node="76OnFPC8Btb" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nUYGvAYe9d" role="3cqZAp">
          <node concept="2OqwBi" id="nUYGvAYezY" role="3clFbG">
            <node concept="37vLTw" id="nUYGvAYe9b" role="2Oq$k0">
              <ref role="3cqZAo" node="76OnFPC8zq9" resolve="ENV" />
            </node>
            <node concept="liA8E" id="nUYGvAYf4F" role="2OqNvi">
              <ref role="37wK5l" to="79ha:3eUNqOk4$fg" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6m1MVDkVd8t" role="Sfmx6">
        <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
      </node>
      <node concept="3uibUv" id="6m1MVDkVd8u" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="6m1MVDkVgKj" role="Sfmx6">
        <ref role="3uigEE" to="5fzo:~ModelReadException" resolve="ModelReadException" />
      </node>
    </node>
    <node concept="3UR2Jj" id="7Psq8BycBmm" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsDbY" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDbZ" role="1PaTwD">
          <property role="3oM_SC" value="Class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc0" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc1" role="1PaTwD">
          <property role="3oM_SC" value="analyzing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc2" role="1PaTwD">
          <property role="3oM_SC" value="merge" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc3" role="1PaTwD">
          <property role="3oM_SC" value="driver" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc4" role="1PaTwD">
          <property role="3oM_SC" value="dumps" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4m1qBERfC8w">
    <property role="TrG5h" value="ModelMergeConflictTracker" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="4m1qBERfDeP" role="jymVt">
      <node concept="3cqZAl" id="4m1qBERfDeQ" role="3clF45" />
      <node concept="3clFbS" id="4m1qBERfDeS" role="3clF47" />
      <node concept="3Tm1VV" id="4m1qBERfDcz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7KR9zZwHX2K" role="jymVt" />
    <node concept="2tJIrI" id="7KR9zZwHX2L" role="jymVt" />
    <node concept="3clFb_" id="7KR9zZwHXOY" role="jymVt">
      <property role="TrG5h" value="projectReady" />
      <node concept="3Tm1VV" id="7KR9zZwHXP0" role="1B3o_S" />
      <node concept="3cqZAl" id="7KR9zZwHXP2" role="3clF45" />
      <node concept="37vLTG" id="7KR9zZwHXP3" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7KR9zZwHXP4" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="7KR9zZwHXP5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7KR9zZwHXP6" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7KR9zZwHXP7" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~ProjectLifecycleListener$Context" resolve="ProjectLifecycleListener.Context" />
        </node>
        <node concept="2AHcQZ" id="7KR9zZwHXP8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7KR9zZwHXP9" role="3clF47">
        <node concept="3cpWs8" id="7KR9zZwIbYh" role="3cqZAp">
          <node concept="3cpWsn" id="7KR9zZwIbYi" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="7KR9zZwIbNe" role="1tU5fm">
              <ref role="3uigEE" node="4m1qBERfEr3" resolve="ModelMergeConflictTracker.LoadSaveProblemsListener" />
            </node>
            <node concept="2ShNRf" id="7KR9zZwIbYj" role="33vP2m">
              <node concept="1pGfFk" id="7KR9zZwIbYk" role="2ShVmc">
                <ref role="37wK5l" node="cgxpp$kc_n" resolve="ModelMergeConflictTracker.LoadSaveProblemsListener" />
                <node concept="37vLTw" id="7KR9zZwIbYl" role="37wK5m">
                  <ref role="3cqZAo" node="7KR9zZwHXP3" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4m1qBERfF9w" role="3cqZAp">
          <node concept="2OqwBi" id="4m1qBERgb_b" role="3clFbG">
            <node concept="liA8E" id="4m1qBERgbKF" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.attach()" resolve="attach" />
            </node>
            <node concept="2ShNRf" id="4m1qBERgbno" role="2Oq$k0">
              <node concept="1pGfFk" id="4m1qBERgbnp" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SRepositoryListener)" resolve="RepoListenerRegistrar" />
                <node concept="2OqwBi" id="4m1qBERgbnq" role="37wK5m">
                  <node concept="37vLTw" id="4m1qBERgbnr" role="2Oq$k0">
                    <ref role="3cqZAo" node="7KR9zZwHXP3" resolve="project" />
                  </node>
                  <node concept="liA8E" id="4m1qBERgbns" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="7KR9zZwIbYm" role="37wK5m">
                  <ref role="3cqZAo" node="7KR9zZwIbYi" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7KR9zZwI12m" role="3cqZAp">
          <node concept="2OqwBi" id="7KR9zZwI1_W" role="3clFbG">
            <node concept="37vLTw" id="7KR9zZwI12h" role="2Oq$k0">
              <ref role="3cqZAo" node="7KR9zZwHXP6" resolve="context" />
            </node>
            <node concept="liA8E" id="7KR9zZwI4gN" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectLifecycleListener$Context.keep(java.lang.Class,java.lang.Object)" resolve="keep" />
              <node concept="3VsKOn" id="7KR9zZwIeIz" role="37wK5m">
                <ref role="3VsUkX" node="4m1qBERfEr3" resolve="ModelMergeConflictTracker.LoadSaveProblemsListener" />
              </node>
              <node concept="37vLTw" id="7KR9zZwIgrN" role="37wK5m">
                <ref role="3cqZAo" node="7KR9zZwIbYi" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7KR9zZwHXPa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7KR9zZwHXPi" role="jymVt">
      <property role="TrG5h" value="projectDiscarded" />
      <node concept="3Tm1VV" id="7KR9zZwHXPk" role="1B3o_S" />
      <node concept="3cqZAl" id="7KR9zZwHXPm" role="3clF45" />
      <node concept="37vLTG" id="7KR9zZwHXPn" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7KR9zZwHXPo" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="7KR9zZwHXPp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7KR9zZwHXPq" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7KR9zZwHXPr" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~ProjectLifecycleListener$Context" resolve="ProjectLifecycleListener.Context" />
        </node>
        <node concept="2AHcQZ" id="7KR9zZwHXPs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7KR9zZwHXPt" role="3clF47">
        <node concept="3cpWs8" id="7KR9zZwImA3" role="3cqZAp">
          <node concept="3cpWsn" id="7KR9zZwImA4" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="7KR9zZwImdy" role="1tU5fm">
              <ref role="3uigEE" node="4m1qBERfEr3" resolve="ModelMergeConflictTracker.LoadSaveProblemsListener" />
            </node>
            <node concept="2OqwBi" id="7KR9zZwImA5" role="33vP2m">
              <node concept="37vLTw" id="7KR9zZwImA6" role="2Oq$k0">
                <ref role="3cqZAo" node="7KR9zZwHXPq" resolve="context" />
              </node>
              <node concept="liA8E" id="7KR9zZwImA7" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectLifecycleListener$Context.discard(java.lang.Class)" resolve="discard" />
                <node concept="3VsKOn" id="7KR9zZwImA8" role="37wK5m">
                  <ref role="3VsUkX" node="4m1qBERfEr3" resolve="ModelMergeConflictTracker.LoadSaveProblemsListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7KR9zZwIqv3" role="3cqZAp">
          <node concept="3clFbS" id="7KR9zZwIqv5" role="3clFbx">
            <node concept="3clFbF" id="7KR9zZwI_gM" role="3cqZAp">
              <node concept="2OqwBi" id="7KR9zZwI_gN" role="3clFbG">
                <node concept="liA8E" id="7KR9zZwI_gO" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.detach()" resolve="detach" />
                </node>
                <node concept="2ShNRf" id="7KR9zZwI_gP" role="2Oq$k0">
                  <node concept="1pGfFk" id="7KR9zZwI_gQ" role="2ShVmc">
                    <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SRepositoryListener)" resolve="RepoListenerRegistrar" />
                    <node concept="2OqwBi" id="7KR9zZwI_gR" role="37wK5m">
                      <node concept="37vLTw" id="7KR9zZwI_gS" role="2Oq$k0">
                        <ref role="3cqZAo" node="7KR9zZwHXPn" resolve="project" />
                      </node>
                      <node concept="liA8E" id="7KR9zZwI_gT" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7KR9zZwI_gU" role="37wK5m">
                      <ref role="3cqZAo" node="7KR9zZwImA4" resolve="listener" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7KR9zZwIsOx" role="3clFbw">
            <node concept="10Nm6u" id="7KR9zZwItQ2" role="3uHU7w" />
            <node concept="37vLTw" id="7KR9zZwIrhV" role="3uHU7B">
              <ref role="3cqZAo" node="7KR9zZwImA4" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7KR9zZwHXPu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4m1qBERfC8x" role="1B3o_S" />
    <node concept="3uibUv" id="7KR9zZwHVSD" role="EKbjA">
      <ref role="3uigEE" to="z1c3:~ProjectLifecycleListener" resolve="ProjectLifecycleListener" />
    </node>
    <node concept="2tJIrI" id="4m1qBERfEjg" role="jymVt" />
    <node concept="312cEu" id="4m1qBERfEr3" role="jymVt">
      <property role="TrG5h" value="LoadSaveProblemsListener" />
      <node concept="312cEg" id="cgxpp$k6m4" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="cgxpp$k61D" role="1B3o_S" />
        <node concept="3uibUv" id="cgxpp$k6dn" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="2tJIrI" id="cgxpp$kbPz" role="jymVt" />
      <node concept="3clFbW" id="cgxpp$kc_n" role="jymVt">
        <node concept="3cqZAl" id="cgxpp$kc_p" role="3clF45" />
        <node concept="3clFbS" id="cgxpp$kc_r" role="3clF47">
          <node concept="3clFbF" id="cgxpp$kerY" role="3cqZAp">
            <node concept="37vLTI" id="cgxpp$keQa" role="3clFbG">
              <node concept="37vLTw" id="cgxpp$kfhp" role="37vLTx">
                <ref role="3cqZAo" node="cgxpp$kdi7" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="cgxpp$kerX" role="37vLTJ">
                <ref role="3cqZAo" node="cgxpp$k6m4" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="cgxpp$kdi7" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="cgxpp$kdi6" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
          </node>
          <node concept="2AHcQZ" id="cgxpp$kdIc" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="cgxpp$jR_V" role="jymVt" />
      <node concept="3Tm6S6" id="4m1qBERfEn1" role="1B3o_S" />
      <node concept="3uibUv" id="4m1qBERfEyz" role="1zkMxy">
        <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
      </node>
      <node concept="3clFb_" id="cgxpp$jRFf" role="jymVt">
        <property role="TrG5h" value="startListening" />
        <node concept="3Tmbuc" id="cgxpp$jRFg" role="1B3o_S" />
        <node concept="3cqZAl" id="cgxpp$jRFi" role="3clF45" />
        <node concept="37vLTG" id="cgxpp$jRFj" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="cgxpp$k2lz" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="cgxpp$jRFl" role="3clF47">
          <node concept="3SKdUt" id="cgxpp$k45Q" role="3cqZAp">
            <node concept="1PaTwC" id="cgxpp$k45R" role="1aUNEU">
              <node concept="3oM_SD" id="cgxpp$k477" role="1PaTwD">
                <property role="3oM_SC" value="don't" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k47h" role="1PaTwD">
                <property role="3oM_SC" value="expect" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k47k" role="1PaTwD">
                <property role="3oM_SC" value="stubs" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k47o" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k47_" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k47N" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k47U" role="1PaTwD">
                <property role="3oM_SC" value="VCS" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k48a" role="1PaTwD">
                <property role="3oM_SC" value="conflict" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k48j" role="1PaTwD">
                <property role="3oM_SC" value="ever," />
              </node>
              <node concept="3oM_SD" id="cgxpp$k48_" role="1PaTwD">
                <property role="3oM_SC" value="its" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k490" role="1PaTwD">
                <property role="3oM_SC" value="usually" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k49$" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k49L" role="1PaTwD">
                <property role="3oM_SC" value="binary" />
              </node>
              <node concept="3oM_SD" id="cgxpp$k4a7" role="1PaTwD">
                <property role="3oM_SC" value="jar" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="cgxpp$k2MV" role="3cqZAp">
            <node concept="3clFbS" id="cgxpp$k2MX" role="3clFbx">
              <node concept="3cpWs6" id="cgxpp$k3WG" role="3cqZAp" />
            </node>
            <node concept="2YIFZM" id="cgxpp$k3AI" role="3clFbw">
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="37vLTw" id="cgxpp$k3N7" role="37wK5m">
                <ref role="3cqZAo" node="cgxpp$jRFj" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="cgxpp$kfP_" role="3cqZAp">
            <node concept="1PaTwC" id="cgxpp$kfPA" role="1aUNEU">
              <node concept="3oM_SD" id="cgxpp$kfPC" role="1PaTwD">
                <property role="3oM_SC" value="perhaps," />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfR3" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfR6" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfRi" role="1PaTwD">
                <property role="3oM_SC" value="great" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfRn" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfRt" role="1PaTwD">
                <property role="3oM_SC" value="find" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfRG" role="1PaTwD">
                <property role="3oM_SC" value="out" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfRW" role="1PaTwD">
                <property role="3oM_SC" value="right" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfSl" role="1PaTwD">
                <property role="3oM_SC" value="away" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfSB" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfSM" role="1PaTwD">
                <property role="3oM_SC" value="model" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfSY" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfTj" role="1PaTwD">
                <property role="3oM_SC" value="backed" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfTD" role="1PaTwD">
                <property role="3oM_SC" value="up" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfU0" role="1PaTwD">
                <property role="3oM_SC" value="by" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfUw" role="1PaTwD">
                <property role="3oM_SC" value="something" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfV9" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfVr" role="1PaTwD">
                <property role="3oM_SC" value="can" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfVI" role="1PaTwD">
                <property role="3oM_SC" value="translate" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfW2" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kfWn" role="1PaTwD">
                <property role="3oM_SC" value="VirtualFile," />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="cgxpp$kg6M" role="3cqZAp">
            <node concept="1PaTwC" id="cgxpp$kg6N" role="1aUNEU">
              <node concept="3oM_SD" id="cgxpp$kg6P" role="1PaTwD">
                <property role="3oM_SC" value="however," />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgaG" role="1PaTwD">
                <property role="3oM_SC" value="I" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgaR" role="1PaTwD">
                <property role="3oM_SC" value="don't" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgaV" role="1PaTwD">
                <property role="3oM_SC" value="see" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgb0" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgbe" role="1PaTwD">
                <property role="3oM_SC" value="easy/proper" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgb_" role="1PaTwD">
                <property role="3oM_SC" value="way" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgbP" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgcV" role="1PaTwD">
                <property role="3oM_SC" value="accomplish" />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgd5" role="1PaTwD">
                <property role="3oM_SC" value="that." />
              </node>
              <node concept="3oM_SD" id="cgxpp$kgdg" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="cgxpp$jRFp" role="3cqZAp">
            <node concept="2OqwBi" id="cgxpp$jSZZ" role="3clFbG">
              <node concept="37vLTw" id="cgxpp$jSWZ" role="2Oq$k0">
                <ref role="3cqZAo" node="cgxpp$jRFj" resolve="model" />
              </node>
              <node concept="liA8E" id="cgxpp$jT6c" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
                <node concept="Xjq3P" id="cgxpp$jTcZ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cgxpp$jRFm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="cgxpp$jRFq" role="jymVt">
        <property role="TrG5h" value="stopListening" />
        <node concept="3Tmbuc" id="cgxpp$jRFr" role="1B3o_S" />
        <node concept="3cqZAl" id="cgxpp$jRFt" role="3clF45" />
        <node concept="37vLTG" id="cgxpp$jRFu" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="cgxpp$k2yl" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="cgxpp$jRFw" role="3clF47">
          <node concept="3clFbF" id="cgxpp$jTxB" role="3cqZAp">
            <node concept="2OqwBi" id="cgxpp$jT$A" role="3clFbG">
              <node concept="37vLTw" id="cgxpp$jTxz" role="2Oq$k0">
                <ref role="3cqZAo" node="cgxpp$jRFu" resolve="model" />
              </node>
              <node concept="liA8E" id="cgxpp$jTFw" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
                <node concept="Xjq3P" id="cgxpp$jTM$" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cgxpp$jRFx" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="cgxpp$k4b4" role="jymVt" />
      <node concept="2tJIrI" id="cgxpp$k4bO" role="jymVt" />
      <node concept="3clFb_" id="cgxpp$k4uN" role="jymVt">
        <property role="TrG5h" value="problemsDetected" />
        <node concept="3Tm1VV" id="cgxpp$k4uO" role="1B3o_S" />
        <node concept="3cqZAl" id="cgxpp$k4uQ" role="3clF45" />
        <node concept="37vLTG" id="cgxpp$k4uR" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="cgxpp$k4uS" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="37vLTG" id="cgxpp$k4uT" role="3clF46">
          <property role="TrG5h" value="problems" />
          <node concept="3uibUv" id="cgxpp$k4uU" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            <node concept="3uibUv" id="cgxpp$k4uV" role="11_B2D">
              <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="cgxpp$k4uW" role="3clF47">
          <node concept="3clFbJ" id="cgxpp$mCn7" role="3cqZAp">
            <node concept="3clFbS" id="cgxpp$mCn9" role="3clFbx">
              <node concept="3SKdUt" id="cgxpp$mFLe" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$mFLf" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$mFLh" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFLn" role="1PaTwD">
                    <property role="3oM_SC" value="eventually" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFLz" role="1PaTwD">
                    <property role="3oM_SC" value="we'd" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFLB" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFLG" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFMa" role="1PaTwD">
                    <property role="3oM_SC" value="reload" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFMq" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFMy" role="1PaTwD">
                    <property role="3oM_SC" value="model," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFMN" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFNf" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFNq" role="1PaTwD">
                    <property role="3oM_SC" value="can" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFNJ" role="1PaTwD">
                    <property role="3oM_SC" value="do" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFNW" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFOV" role="1PaTwD">
                    <property role="3oM_SC" value="editable" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFPs" role="1PaTwD">
                    <property role="3oM_SC" value="models" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFPG" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFQ6" role="1PaTwD">
                    <property role="3oM_SC" value="(for" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFQD" role="1PaTwD">
                    <property role="3oM_SC" value="whatever" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$mFQW" role="1PaTwD">
                    <property role="3oM_SC" value="reason)" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$k5Hn" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$k5Ho" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$k5Hq" role="1PaTwD">
                    <property role="3oM_SC" value="XXX" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5HB" role="1PaTwD">
                    <property role="3oM_SC" value="do" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5HM" role="1PaTwD">
                    <property role="3oM_SC" value="I" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5HQ" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5I3" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5I9" role="1PaTwD">
                    <property role="3oM_SC" value="filter" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5Io" role="1PaTwD">
                    <property role="3oM_SC" value="'Load'" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5IC" role="1PaTwD">
                    <property role="3oM_SC" value="problems" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$k5Jh" role="1PaTwD">
                    <property role="3oM_SC" value="only?" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kmgP" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$kmgQ" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$kmgS" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmms" role="1PaTwD">
                    <property role="3oM_SC" value="seems" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmmB" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmmN" role="1PaTwD">
                    <property role="3oM_SC" value="would" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmn0" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmn6" role="1PaTwD">
                    <property role="3oM_SC" value="better" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmnl" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmnt" role="1PaTwD">
                    <property role="3oM_SC" value="implement" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmo0" role="1PaTwD">
                    <property role="3oM_SC" value="FileStatusListener" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmoi" role="1PaTwD">
                    <property role="3oM_SC" value="here" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmo_" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmoT" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmpm" role="1PaTwD">
                    <property role="3oM_SC" value="record" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmp$" role="1PaTwD">
                    <property role="3oM_SC" value="conflicted" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmpV" role="1PaTwD">
                    <property role="3oM_SC" value="VF" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmqz" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmqO" role="1PaTwD">
                    <property role="3oM_SC" value="IDEA" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kmEo" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$kmEp" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$kmEr" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmNR" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmO2" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmO6" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmOb" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmOh" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmOo" role="1PaTwD">
                    <property role="3oM_SC" value="them" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmOw" role="1PaTwD">
                    <property role="3oM_SC" value="match" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmOL" role="1PaTwD">
                    <property role="3oM_SC" value="these" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmP3" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmPm" role="1PaTwD">
                    <property role="3oM_SC" value="file" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmPE" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmPZ" role="1PaTwD">
                    <property role="3oM_SC" value="conflicting" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmQd" role="1PaTwD">
                    <property role="3oM_SC" value="model" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmQ$" role="1PaTwD">
                    <property role="3oM_SC" value="(it's" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmRc" role="1PaTwD">
                    <property role="3oM_SC" value="easier" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmRt" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmSQ" role="1PaTwD">
                    <property role="3oM_SC" value="go" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmT9" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmTt" role="1PaTwD">
                    <property role="3oM_SC" value="Project+VF" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmU2" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmUo" role="1PaTwD">
                    <property role="3oM_SC" value="IFile" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmUR" role="1PaTwD">
                    <property role="3oM_SC" value="than" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmVv" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmYs" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmZ6" role="1PaTwD">
                    <property role="3oM_SC" value="VF" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kmZD" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn1K" role="1PaTwD">
                    <property role="3oM_SC" value="IFile," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn2l" role="1PaTwD">
                    <property role="3oM_SC" value="unless" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn2V" role="1PaTwD">
                    <property role="3oM_SC" value="it's" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn3y" role="1PaTwD">
                    <property role="3oM_SC" value="IdeaFile," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn4E" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn5j" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn5P" role="1PaTwD">
                    <property role="3oM_SC" value="sort" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn6S" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn7s" role="1PaTwD">
                    <property role="3oM_SC" value="hack)" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kno9" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$knoa" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$knyp" role="1PaTwD">
                    <property role="3oM_SC" value="Even" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knyz" role="1PaTwD">
                    <property role="3oM_SC" value="better" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knyA" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knyM" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knyZ" role="1PaTwD">
                    <property role="3oM_SC" value="attach" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knzl" role="1PaTwD">
                    <property role="3oM_SC" value="repo" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knzG" role="1PaTwD">
                    <property role="3oM_SC" value="listener" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knzO" role="1PaTwD">
                    <property role="3oM_SC" value="ONLY" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn$y" role="1PaTwD">
                    <property role="3oM_SC" value="when" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn$G" role="1PaTwD">
                    <property role="3oM_SC" value="there" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn$R" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn_3" role="1PaTwD">
                    <property role="3oM_SC" value="merge" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn_g" role="1PaTwD">
                    <property role="3oM_SC" value="conflicts" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn_A" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kn_X" role="1PaTwD">
                    <property role="3oM_SC" value="avoid" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knAt" role="1PaTwD">
                    <property role="3oM_SC" value="SRepositoryContentAdapter" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knB6" role="1PaTwD">
                    <property role="3oM_SC" value="overhead" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kZa8" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$kZa9" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$kZab" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$knRF" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$knRG" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$knRI" role="1PaTwD">
                    <property role="3oM_SC" value="FWIW," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knYu" role="1PaTwD">
                    <property role="3oM_SC" value="SuspiciousModelIndex" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knZD" role="1PaTwD">
                    <property role="3oM_SC" value="I'm" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$knZH" role="1PaTwD">
                    <property role="3oM_SC" value="replacing" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko0a" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko0o" role="1PaTwD">
                    <property role="3oM_SC" value="this" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko0B" role="1PaTwD">
                    <property role="3oM_SC" value="class" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko0J" role="1PaTwD">
                    <property role="3oM_SC" value="used" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko18" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko1i" role="1PaTwD">
                    <property role="3oM_SC" value="consult" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko1t" role="1PaTwD">
                    <property role="3oM_SC" value="MPSVscManager.isInConflict()," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko2L" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko36" role="1PaTwD">
                    <property role="3oM_SC" value="has" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko3$" role="1PaTwD">
                    <property role="3oM_SC" value="some" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko43" role="1PaTwD">
                    <property role="3oM_SC" value="distinct" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko4r" role="1PaTwD">
                    <property role="3oM_SC" value="logic" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko4W" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko5e" role="1PaTwD">
                    <property role="3oM_SC" value="find" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko5x" role="1PaTwD">
                    <property role="3oM_SC" value="out" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko5X" role="1PaTwD">
                    <property role="3oM_SC" value="whether" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko6q" role="1PaTwD">
                    <property role="3oM_SC" value="file" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$ko6S" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$ko7x" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$ko7w" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$ko7v" role="1PaTwD">
                    <property role="3oM_SC" value="has" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koi_" role="1PaTwD">
                    <property role="3oM_SC" value="been" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koiK" role="1PaTwD">
                    <property role="3oM_SC" value="merged" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koiW" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koj1" role="1PaTwD">
                    <property role="3oM_SC" value="conflict." />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kojn" role="1PaTwD">
                    <property role="3oM_SC" value="While" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kojA" role="1PaTwD">
                    <property role="3oM_SC" value="ConflictsUtil" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kojQ" role="1PaTwD">
                    <property role="3oM_SC" value="here" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kok7" role="1PaTwD">
                    <property role="3oM_SC" value="uses" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kokh" role="1PaTwD">
                    <property role="3oM_SC" value="IDEA's" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kolk" role="1PaTwD">
                    <property role="3oM_SC" value="FileStatusManager," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kolC" role="1PaTwD">
                    <property role="3oM_SC" value="MPSVcsManager.isInConflict" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koml" role="1PaTwD">
                    <property role="3oM_SC" value="resorted" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$komV" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kona" role="1PaTwD">
                    <property role="3oM_SC" value="AbstractVcs" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$konM" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koob" role="1PaTwD">
                    <property role="3oM_SC" value="ChangeProvider" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$koDF" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$koDG" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$koDI" role="1PaTwD">
                    <property role="3oM_SC" value="Given" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koQ3" role="1PaTwD">
                    <property role="3oM_SC" value="MPSVcsManager.isInConflict" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koQh" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koQu" role="1PaTwD">
                    <property role="3oM_SC" value="gloomy" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koQG" role="1PaTwD">
                    <property role="3oM_SC" value="heritage" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koQV" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koR3" role="1PaTwD">
                    <property role="3oM_SC" value="Julia" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koR$" role="1PaTwD">
                    <property role="3oM_SC" value="(" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koRZ" role="1PaTwD">
                    <property role="3oM_SC" value="39501a9e," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koSj" role="1PaTwD">
                    <property role="3oM_SC" value="&quot;Code" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koSS" role="1PaTwD">
                    <property role="3oM_SC" value="issues&quot;," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koTm" role="1PaTwD">
                    <property role="3oM_SC" value="ORLY?!)," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koUd" role="1PaTwD">
                    <property role="3oM_SC" value="I" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koUt" role="1PaTwD">
                    <property role="3oM_SC" value="don't" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koUQ" role="1PaTwD">
                    <property role="3oM_SC" value="think" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koVw" role="1PaTwD">
                    <property role="3oM_SC" value="there's" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koVN" role="1PaTwD">
                    <property role="3oM_SC" value="any" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koX2" role="1PaTwD">
                    <property role="3oM_SC" value="value" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koXv" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koXX" role="1PaTwD">
                    <property role="3oM_SC" value="using" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koYk" role="1PaTwD">
                    <property role="3oM_SC" value="it," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koZZ" role="1PaTwD">
                    <property role="3oM_SC" value="despite" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kp0S" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kp1G" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$kp1F" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$kp1E" role="1PaTwD">
                    <property role="3oM_SC" value="perverted" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kped" role="1PaTwD">
                    <property role="3oM_SC" value="satisfaction" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpfD" role="1PaTwD">
                    <property role="3oM_SC" value="reading" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpfY" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpg4" role="1PaTwD">
                    <property role="3oM_SC" value="code." />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$koPP" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kpxy" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$kpxz" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$kpH9" role="1PaTwD">
                    <property role="3oM_SC" value="JFTR," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpHq" role="1PaTwD">
                    <property role="3oM_SC" value="there's" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpHt" role="1PaTwD">
                    <property role="3oM_SC" value="openapi.vcs.FileStatusManager#getStatus" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpID" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpJ4" role="1PaTwD">
                    <property role="3oM_SC" value="openapi.vcs.changes.ChangeListManager#getStatus()," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpJy" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpJL" role="1PaTwD">
                    <property role="3oM_SC" value="no" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpK1" role="1PaTwD">
                    <property role="3oM_SC" value="documentation" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpKq" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpKO" role="1PaTwD">
                    <property role="3oM_SC" value="one" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpL7" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpLr" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpLK" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpM6" role="1PaTwD">
                    <property role="3oM_SC" value="what's" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpM_" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kpMP" role="1PaTwD">
                    <property role="3oM_SC" value="difference" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="cgxpp$kq4R" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$kq4S" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$kq4U" role="1PaTwD">
                    <property role="3oM_SC" value="ChangeListManager," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqd8" role="1PaTwD">
                    <property role="3oM_SC" value="however," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqgS" role="1PaTwD">
                    <property role="3oM_SC" value="got" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqh4" role="1PaTwD">
                    <property role="3oM_SC" value="ChangeListListener.TOPIC," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqi1" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqif" role="1PaTwD">
                    <property role="3oM_SC" value="would" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqiR" role="1PaTwD">
                    <property role="3oM_SC" value="allow" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqj7" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqjg" role="1PaTwD">
                    <property role="3oM_SC" value="register" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqjE" role="1PaTwD">
                    <property role="3oM_SC" value="listener" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqjP" role="1PaTwD">
                    <property role="3oM_SC" value="right" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqkh" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqku" role="1PaTwD">
                    <property role="3oM_SC" value="XML," />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqkW" role="1PaTwD">
                    <property role="3oM_SC" value="without" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqlr" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqlF" role="1PaTwD">
                    <property role="3oM_SC" value="hassle" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqmk" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqmA" role="1PaTwD">
                    <property role="3oM_SC" value="project" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$kqnh" role="1PaTwD">
                    <property role="3oM_SC" value="component/service/activity" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="cgxpp$lGpX" role="3cqZAp">
                <node concept="3cpWsn" id="cgxpp$lGpY" role="3cpWs9">
                  <property role="TrG5h" value="modelInConflict" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="cgxpp$lGoA" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                  </node>
                  <node concept="2OqwBi" id="cgxpp$lGpZ" role="33vP2m">
                    <node concept="37vLTw" id="cgxpp$lGq0" role="2Oq$k0">
                      <ref role="3cqZAo" node="cgxpp$k4uR" resolve="model" />
                    </node>
                    <node concept="liA8E" id="cgxpp$lGq1" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="cgxpp$krSK" role="3cqZAp">
                <node concept="3cpWsn" id="cgxpp$krSL" role="3cpWs9">
                  <property role="TrG5h" value="conflictingModelFiles" />
                  <property role="3TUv4t" value="true" />
                  <node concept="_YKpA" id="cgxpp$kqaw" role="1tU5fm">
                    <node concept="3uibUv" id="cgxpp$kqaz" role="_ZDj9">
                      <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="cgxpp$krSM" role="33vP2m">
                    <ref role="37wK5l" to="4rb9:60S3DtlPd_$" resolve="getConflictingModelFiles" />
                    <ref role="1Pybhc" to="4rb9:60S3DtlPd_3" resolve="ConflictsUtil" />
                    <node concept="37vLTw" id="cgxpp$krSN" role="37wK5m">
                      <ref role="3cqZAo" node="cgxpp$k4uR" resolve="model" />
                    </node>
                    <node concept="2OqwBi" id="cgxpp$krSO" role="37wK5m">
                      <node concept="37vLTw" id="cgxpp$krSP" role="2Oq$k0">
                        <ref role="3cqZAo" node="cgxpp$k6m4" resolve="myProject" />
                      </node>
                      <node concept="liA8E" id="cgxpp$krSQ" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="cgxpp$kttD" role="3cqZAp">
                <node concept="3clFbS" id="cgxpp$kttF" role="3clFbx">
                  <node concept="3cpWs6" id="cgxpp$ktXz" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="cgxpp$ksIg" role="3clFbw">
                  <node concept="37vLTw" id="cgxpp$krSR" role="2Oq$k0">
                    <ref role="3cqZAo" node="cgxpp$krSL" resolve="conflictingModelFiles" />
                  </node>
                  <node concept="1v1jN8" id="cgxpp$ktaQ" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbH" id="cgxpp$kFF2" role="3cqZAp" />
              <node concept="3SKdUt" id="cgxpp$l5_n" role="3cqZAp">
                <node concept="1PaTwC" id="cgxpp$l5_o" role="1aUNEU">
                  <node concept="3oM_SD" id="cgxpp$l5FT" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7o8" role="1PaTwD">
                    <property role="3oM_SC" value="next" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l76V" role="1PaTwD">
                    <property role="3oM_SC" value="code" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l76Y" role="1PaTwD">
                    <property role="3oM_SC" value="originates" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7oT" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7md" role="1PaTwD">
                    <property role="3oM_SC" value="SuspiciousModelIndex" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7mj" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7mq" role="1PaTwD">
                    <property role="3oM_SC" value="needs" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7mE" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7mV" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="cgxpp$l7nd" role="1PaTwD">
                    <property role="3oM_SC" value="refactored!" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="485yxDrr3Cb" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXokOV" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXokOW" role="1PaTwD">
                    <property role="3oM_SC" value="runnable" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXokOX" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXokOY" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXokOZ" role="1PaTwD">
                    <property role="3oM_SC" value="executed" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXokP0" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXokP1" role="1PaTwD">
                    <property role="3oM_SC" value="EDT" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="491od_ZnGEX" role="3cqZAp">
                <node concept="3cpWsn" id="491od_ZnGEY" role="3cpWs9">
                  <property role="TrG5h" value="conflictableReload" />
                  <property role="3TUv4t" value="true" />
                  <node concept="1bVj0M" id="491od_ZnGEZ" role="33vP2m">
                    <node concept="3clFbS" id="491od_ZnGF0" role="1bW5cS">
                      <node concept="3cpWs8" id="485yxDrrfK_" role="3cqZAp">
                        <node concept="3cpWsn" id="485yxDrrfKA" role="3cpWs9">
                          <property role="TrG5h" value="projectRepo" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="485yxDrrfK$" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                          </node>
                          <node concept="2OqwBi" id="cgxpp$lfQr" role="33vP2m">
                            <node concept="37vLTw" id="cgxpp$leiQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="cgxpp$k6m4" resolve="myProject" />
                            </node>
                            <node concept="liA8E" id="cgxpp$lhgk" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="dM2t63LJ8f" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXokP2" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXokP3" role="1PaTwD">
                            <property role="3oM_SC" value="see" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXokP4" role="1PaTwD">
                            <property role="3oM_SC" value="MPS-18743" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="485yxDrrsGg" role="3cqZAp">
                        <node concept="2OqwBi" id="485yxDrrwOb" role="3clFbG">
                          <node concept="2ShNRf" id="485yxDrrsGc" role="2Oq$k0">
                            <node concept="1pGfFk" id="485yxDrru$1" role="2ShVmc">
                              <ref role="37wK5l" to="hlw7:~SaveRepositoryCommand.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="SaveRepositoryCommand" />
                              <node concept="37vLTw" id="485yxDrrvGQ" role="37wK5m">
                                <ref role="3cqZAo" node="485yxDrrfKA" resolve="projectRepo" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="485yxDrrxWB" role="2OqNvi">
                            <ref role="37wK5l" to="hlw7:~SaveRepositoryCommand.execute()" resolve="execute" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="dM2t63OE5V" role="3cqZAp" />
                      <node concept="3cpWs8" id="cgxpp$nv07" role="3cqZAp">
                        <node concept="3cpWsn" id="cgxpp$nv08" role="3cpWs9">
                          <property role="TrG5h" value="vcsHelper" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="cgxpp$nuPb" role="1tU5fm">
                            <ref role="3uigEE" to="jlcv:~AbstractVcsHelper" resolve="AbstractVcsHelper" />
                          </node>
                          <node concept="2YIFZM" id="cgxpp$nv09" role="33vP2m">
                            <ref role="1Pybhc" to="jlcv:~AbstractVcsHelper" resolve="AbstractVcsHelper" />
                            <ref role="37wK5l" to="jlcv:~AbstractVcsHelper.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                            <node concept="2OqwBi" id="cgxpp$nv0a" role="37wK5m">
                              <node concept="37vLTw" id="cgxpp$nv0b" role="2Oq$k0">
                                <ref role="3cqZAo" node="cgxpp$k6m4" resolve="myProject" />
                              </node>
                              <node concept="liA8E" id="cgxpp$nv0c" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="cgxpp$lxuF" role="3cqZAp">
                        <node concept="3cpWsn" id="cgxpp$lxuG" role="3cpWs9">
                          <property role="TrG5h" value="mergedFiles" />
                          <node concept="3uibUv" id="cgxpp$lx3Q" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~List" resolve="List" />
                            <node concept="3uibUv" id="cgxpp$lx3T" role="11_B2D">
                              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="cgxpp$lxuH" role="33vP2m">
                            <node concept="37vLTw" id="cgxpp$nv0d" role="2Oq$k0">
                              <ref role="3cqZAo" node="cgxpp$nv08" resolve="vcsHelper" />
                            </node>
                            <node concept="liA8E" id="cgxpp$lxuK" role="2OqNvi">
                              <ref role="37wK5l" to="jlcv:~AbstractVcsHelper.showMergeDialog(java.util.List)" resolve="showMergeDialog" />
                              <node concept="37vLTw" id="cgxpp$lxuL" role="37wK5m">
                                <ref role="3cqZAo" node="cgxpp$krSL" resolve="conflictingModelFiles" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="cgxpp$lL5E" role="3cqZAp">
                        <node concept="3clFbS" id="cgxpp$lL5G" role="3clFbx">
                          <node concept="3SKdUt" id="cgxpp$lWut" role="3cqZAp">
                            <node concept="1PaTwC" id="cgxpp$lWuu" role="1aUNEU">
                              <node concept="3oM_SD" id="cgxpp$lWuw" role="1PaTwD">
                                <property role="3oM_SC" value="SuspiciousModelIndex" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m7kh" role="1PaTwD">
                                <property role="3oM_SC" value="used" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m7Zs" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m7Zw" role="1PaTwD">
                                <property role="3oM_SC" value="force" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m7Z_" role="1PaTwD">
                                <property role="3oM_SC" value="reload" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m8xc" role="1PaTwD">
                                <property role="3oM_SC" value="from" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m8xj" role="1PaTwD">
                                <property role="3oM_SC" value="disk" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m9qP" role="1PaTwD">
                                <property role="3oM_SC" value="inside" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m9qY" role="1PaTwD">
                                <property role="3oM_SC" value="model" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$m9r8" role="1PaTwD">
                                <property role="3oM_SC" value="command." />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$makH" role="1PaTwD">
                                <property role="3oM_SC" value="I" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mbQF" role="1PaTwD">
                                <property role="3oM_SC" value="don't" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mbQS" role="1PaTwD">
                                <property role="3oM_SC" value="see" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mbR6" role="1PaTwD">
                                <property role="3oM_SC" value="any" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mbRl" role="1PaTwD">
                                <property role="3oM_SC" value="reason" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$meaj" role="1PaTwD">
                                <property role="3oM_SC" value="for" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mRAr" role="1PaTwD">
                                <property role="3oM_SC" value="that" />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="cgxpp$mGSF" role="3cqZAp">
                            <node concept="1PaTwC" id="cgxpp$mGSG" role="1aUNEU">
                              <node concept="3oM_SD" id="cgxpp$mToT" role="1PaTwD">
                                <property role="3oM_SC" value="git" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mUWX" role="1PaTwD">
                                <property role="3oM_SC" value="log" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mVJ1" role="1PaTwD">
                                <property role="3oM_SC" value="suggests" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mY9Z" role="1PaTwD">
                                <property role="3oM_SC" value="(" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$mYW6" role="1PaTwD">
                                <property role="3oM_SC" value="86fb2dc0)" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n123" role="1PaTwD">
                                <property role="3oM_SC" value="it" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n1$g" role="1PaTwD">
                                <property role="3oM_SC" value="was" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n2sX" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n2t7" role="1PaTwD">
                                <property role="3oM_SC" value="fix" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n44O" role="1PaTwD">
                                <property role="3oM_SC" value="MPS-7990," />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n4Zy" role="1PaTwD">
                                <property role="3oM_SC" value="though" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n5NP" role="1PaTwD">
                                <property role="3oM_SC" value="I" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n5O3" role="1PaTwD">
                                <property role="3oM_SC" value="believe" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n6Am" role="1PaTwD">
                                <property role="3oM_SC" value="it" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n6AA" role="1PaTwD">
                                <property role="3oM_SC" value="might" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n6AR" role="1PaTwD">
                                <property role="3oM_SC" value="be" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n7xF" role="1PaTwD">
                                <property role="3oM_SC" value="related" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n7xY" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n7yi" role="1PaTwD">
                                <property role="3oM_SC" value="module," />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$nbnE" role="1PaTwD">
                                <property role="3oM_SC" value="not" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$nca2" role="1PaTwD">
                                <property role="3oM_SC" value="model" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$n8t9" role="1PaTwD">
                                <property role="3oM_SC" value="files" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$nfeh" role="1PaTwD">
                                <property role="3oM_SC" value="(i.e." />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$nnFI" role="1PaTwD">
                                <property role="3oM_SC" value="command" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$nnG9" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$ni6L" role="1PaTwD">
                                <property role="3oM_SC" value="re-register" />
                              </node>
                              <node concept="3oM_SD" id="cgxpp$njNH" role="1PaTwD">
                                <property role="3oM_SC" value="models)" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="485yxDrrZQJ" role="3cqZAp">
                            <node concept="2OqwBi" id="485yxDrs4os" role="3clFbG">
                              <node concept="2OqwBi" id="485yxDrs2e7" role="2Oq$k0">
                                <node concept="37vLTw" id="cgxpp$lVBm" role="2Oq$k0">
                                  <ref role="3cqZAo" node="485yxDrrfKA" resolve="projectRepo" />
                                </node>
                                <node concept="liA8E" id="485yxDrs3gQ" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                                </node>
                              </node>
                              <node concept="liA8E" id="485yxDrs5$J" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
                                <node concept="1bVj0M" id="485yxDrs6HU" role="37wK5m">
                                  <node concept="3clFbS" id="485yxDrs6HV" role="1bW5cS">
                                    <node concept="3cpWs8" id="cgxpp$mrx6" role="3cqZAp">
                                      <node concept="3cpWsn" id="cgxpp$mrx7" role="3cpWs9">
                                        <property role="TrG5h" value="model" />
                                        <node concept="3uibUv" id="cgxpp$mrfJ" role="1tU5fm">
                                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                        </node>
                                        <node concept="2OqwBi" id="cgxpp$mrx8" role="33vP2m">
                                          <node concept="37vLTw" id="cgxpp$mrx9" role="2Oq$k0">
                                            <ref role="3cqZAo" node="cgxpp$lGpY" resolve="modelInConflict" />
                                          </node>
                                          <node concept="liA8E" id="cgxpp$mrxa" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                            <node concept="37vLTw" id="cgxpp$mrxb" role="37wK5m">
                                              <ref role="3cqZAo" node="485yxDrrfKA" resolve="projectRepo" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="cgxpp$mua_" role="3cqZAp">
                                      <node concept="3clFbS" id="cgxpp$muaB" role="3clFbx">
                                        <node concept="3clFbF" id="cgxpp$mxZt" role="3cqZAp">
                                          <node concept="2OqwBi" id="cgxpp$myFx" role="3clFbG">
                                            <node concept="1eOMI4" id="cgxpp$mP4x" role="2Oq$k0">
                                              <node concept="10QFUN" id="cgxpp$mP4u" role="1eOMHV">
                                                <node concept="3uibUv" id="cgxpp$mP4z" role="10QFUM">
                                                  <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                                </node>
                                                <node concept="37vLTw" id="cgxpp$mP4$" role="10QFUP">
                                                  <ref role="3cqZAo" node="cgxpp$mrx7" resolve="model" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="cgxpp$mQ0J" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~EditableSModel.reloadFromSource()" resolve="reloadFromSource" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2ZW3vV" id="cgxpp$m_$a" role="3clFbw">
                                        <node concept="3uibUv" id="cgxpp$mAsR" role="2ZW6by">
                                          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                        </node>
                                        <node concept="37vLTw" id="cgxpp$mvaN" role="2ZW6bz">
                                          <ref role="3cqZAo" node="cgxpp$mrx7" resolve="model" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="cgxpp$lREp" role="3clFbw">
                          <node concept="2OqwBi" id="cgxpp$lREr" role="3fr31v">
                            <node concept="37vLTw" id="cgxpp$lREs" role="2Oq$k0">
                              <ref role="3cqZAo" node="cgxpp$lxuG" resolve="mergedFiles" />
                            </node>
                            <node concept="liA8E" id="cgxpp$lREt" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="491od_ZnGFX" role="3cqZAp">
                        <node concept="10Nm6u" id="491od_ZnGFY" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="491od_Zo8mH" role="1tU5fm">
                    <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
                    <node concept="3uibUv" id="491od_Zocdx" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3zgutK7osAa" role="3cqZAp">
                <node concept="2OqwBi" id="3zgutK7osAb" role="3clFbG">
                  <node concept="2YIFZM" id="3zgutK7osAc" role="2Oq$k0">
                    <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                    <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  </node>
                  <node concept="liA8E" id="3zgutK7osAd" role="2OqNvi">
                    <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable,com.intellij.openapi.application.ModalityState,com.intellij.openapi.util.Condition)" resolve="invokeLater" />
                    <node concept="1bVj0M" id="3DUvbXCgnva" role="37wK5m">
                      <node concept="3clFbS" id="3DUvbXCgnvb" role="1bW5cS">
                        <node concept="3clFbF" id="491od_Zf0wl" role="3cqZAp">
                          <node concept="2OqwBi" id="491od_Zf2J9" role="3clFbG">
                            <node concept="liA8E" id="491od_Zf6pF" role="2OqNvi">
                              <ref role="37wK5l" to="2eq1:491od_Z4vc8" resolve="computeNoReload" />
                              <node concept="37vLTw" id="491od_ZnGFZ" role="37wK5m">
                                <ref role="3cqZAo" node="491od_ZnGEY" resolve="conflictableReload" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="3mWeFTSq9mk" role="2Oq$k0">
                              <ref role="37wK5l" to="2eq1:3mWeFTSoQZV" resolve="getInstance" />
                              <ref role="1Pybhc" to="2eq1:491od_XJZeq" resolve="ReloadManager" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="3zgutK7osAx" role="37wK5m">
                      <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                      <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
                    </node>
                    <node concept="2OqwBi" id="cgxpp$lcri" role="37wK5m">
                      <node concept="2OqwBi" id="cgxpp$lbQL" role="2Oq$k0">
                        <node concept="37vLTw" id="cgxpp$lbjO" role="2Oq$k0">
                          <ref role="3cqZAo" node="cgxpp$k6m4" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="cgxpp$lchL" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="cgxpp$lcO$" role="2OqNvi">
                        <ref role="37wK5l" to="1m72:~ComponentManager.getDisposed()" resolve="getDisposed" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="cgxpp$mEyT" role="3clFbw">
              <node concept="3uibUv" id="cgxpp$mFF1" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
              </node>
              <node concept="37vLTw" id="cgxpp$mDvi" role="2ZW6bz">
                <ref role="3cqZAo" node="cgxpp$k4uR" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cgxpp$k4uX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="4vG_8o9IWv1" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsDc5" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDc6" role="1PaTwD">
          <property role="3oM_SC" value="Bridges" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc7" role="1PaTwD">
          <property role="3oM_SC" value="model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc8" role="1PaTwD">
          <property role="3oM_SC" value="loading" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc9" role="1PaTwD">
          <property role="3oM_SC" value="issues" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDca" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcb" role="1PaTwD">
          <property role="3oM_SC" value="VCS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcc" role="1PaTwD">
          <property role="3oM_SC" value="conflicts," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcd" role="1PaTwD">
          <property role="3oM_SC" value="tries" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDce" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcf" role="1PaTwD">
          <property role="3oM_SC" value="get" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcg" role="1PaTwD">
          <property role="3oM_SC" value="them" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDch" role="1PaTwD">
          <property role="3oM_SC" value="resolved" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDci" role="1PaTwD">
          <property role="3oM_SC" value="by" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcj" role="1PaTwD">
          <property role="3oM_SC" value="model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDck" role="1PaTwD">
          <property role="3oM_SC" value="merge" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsDcl" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDcm" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcn" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDco" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcp" role="1PaTwD">
          <property role="3oM_SC" value="replacement" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcq" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcr" role="1PaTwD">
          <property role="3oM_SC" value="notorious" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcs" role="1PaTwD">
          <property role="3oM_SC" value="SuspiciousModelIndex" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDct" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcu" role="1PaTwD">
          <property role="3oM_SC" value="did" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcv" role="1PaTwD">
          <property role="3oM_SC" value="VCS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcw" role="1PaTwD">
          <property role="3oM_SC" value="bridging" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcx" role="1PaTwD">
          <property role="3oM_SC" value="(in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcy" role="1PaTwD">
          <property role="3oM_SC" value="quite" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcz" role="1PaTwD">
          <property role="3oM_SC" value="extravagant" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc$" role="1PaTwD">
          <property role="3oM_SC" value="singleton," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDc_" role="1PaTwD">
          <property role="3oM_SC" value="albeit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcA" role="1PaTwD">
          <property role="3oM_SC" value="common" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcB" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcC" role="1PaTwD">
          <property role="3oM_SC" value="MPS," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcD" role="1PaTwD">
          <property role="3oM_SC" value="way)" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcE" role="1PaTwD">
          <property role="3oM_SC" value="among" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcF" role="1PaTwD">
          <property role="3oM_SC" value="other" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcG" role="1PaTwD">
          <property role="3oM_SC" value="stuff." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsDcH" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDcI" role="1PaTwD">
          <property role="3oM_SC" value="Note," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcJ" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcK" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcL" role="1PaTwD">
          <property role="3oM_SC" value="resembles" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcM" role="1PaTwD">
          <property role="3oM_SC" value="ModelTracking" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcN" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcO" role="1PaTwD">
          <property role="3oM_SC" value="ModelStorageProblemsListener" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcP" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcQ" role="1PaTwD">
          <property role="3oM_SC" value="VFS," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcR" role="1PaTwD">
          <property role="3oM_SC" value="perhaps," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcS" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcT" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcU" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcV" role="1PaTwD">
          <property role="3oM_SC" value="come" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcW" role="1PaTwD">
          <property role="3oM_SC" value="up" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcX" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcY" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDcZ" role="1PaTwD">
          <property role="3oM_SC" value="unified" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDd0" role="1PaTwD">
          <property role="3oM_SC" value="solution" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDd1" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDd2" role="1PaTwD">
          <property role="3oM_SC" value="single" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDd3" role="1PaTwD">
          <property role="3oM_SC" value="repo" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDd4" role="1PaTwD">
          <property role="3oM_SC" value="listener." />
        </node>
      </node>
    </node>
  </node>
</model>

