<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b4456070-b665-4c03-b3d3-15a7362ba923(jetbrains.mps.debugger.java.runtime.ui.evaluation)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tpru" ref="r:00000000-0000-4000-0000-011c895904a6(jetbrains.mps.ide.embeddableEditor)" />
    <import index="anh2" ref="r:1f2ecb68-8f37-460f-acb8-866f8f05b15e(jetbrains.mps.debugger.java.runtime.evaluation)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="vjwt" ref="r:96c2681b-d258-4b28-81fb-0850456a3cee(jetbrains.mps.debugger.java.api.ui)" />
    <import index="qgwr" ref="r:f326a98e-32f7-47a0-ba29-239107a89ca4(jetbrains.mps.debugger.java.api.evaluation)" />
    <import index="dcbi" ref="r:ea2e6d1f-eab5-4a08-8299-1abe57148f37(jetbrains.mps.debugger.java.api.evaluation.proxies)" />
    <import index="2s0o" ref="r:6ed9d174-6cbf-4569-b2b8-259c43efcbd9(jetbrains.mps.debugger.java.api.state.watchables)" />
    <import index="y3sp" ref="r:ac4cce94-c169-4971-be8f-807482637028(jetbrains.mps.debugger.java.api.state.proxy)" />
    <import index="choc" ref="r:a35795b4-c996-4cf6-bdbd-9ddbda25cde5(jetbrains.mps.debugger.api.ui.tree)" />
    <import index="pry4" ref="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="cyfb" ref="r:a3396333-01e8-4d8f-ac7d-92203e663cdb(jetbrains.mps.debugger.java.runtime.ui.actions)" />
    <import index="1rri" ref="r:01820806-c285-4459-a416-37590f94adc8(jetbrains.mps.debugger.api.ui.actions)" />
    <import index="xptu" ref="r:6c060161-192f-4aa3-a797-df89b30aa449(jetbrains.mps.debugger.java.runtime.engine.events)" />
    <import index="d822" ref="r:63e7a653-1334-49d4-8e81-fd72b84fb4ff(jetbrains.mps.debugger.java.runtime.state)" />
    <import index="a3o9" ref="r:6c15a5c9-1bba-4ade-a066-13f2741b04fc(jetbrains.mps.debugger.java.api.state)" />
    <import index="i1lu" ref="r:f5448de3-0d76-42bb-afa7-00b3b32de849(jetbrains.mps.debugger.java.runtime.evaluation.container)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="57ty" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.messages(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="frkw" ref="b387285c-3448-452c-b3bb-a3f8de8eaf08/java:com.sun.jdi(JDK-tools/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="wtoj" ref="r:42278aae-7cc0-4e00-9041-018f7301c362(jetbrains.mps.debugger.java.api.state.customViewers)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="3205675194086686068" name="jetbrains.mps.lang.plugin.structure.GroupAccessOperation" flags="nn" index="3$FqnI">
        <reference id="3205675194086686070" name="group" index="3$FqnG" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
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
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
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
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="54InwJ0wS9U">
    <property role="TrG5h" value="EvaluationDialog" />
    <node concept="3Tm1VV" id="54InwJ0wS9V" role="1B3o_S" />
    <node concept="3uibUv" id="3Y6CQ86$xnK" role="1zkMxy">
      <ref role="3uigEE" node="3Y6CQ86$x2Q" resolve="AbstractEvaluationDialog" />
    </node>
    <node concept="3clFbW" id="54InwJ0wSaX" role="jymVt">
      <node concept="3Tm1VV" id="54InwJ0wSaY" role="1B3o_S" />
      <node concept="37vLTG" id="4pq21WIf6mT" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4pq21WIf6mU" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="4pq21WIf6mV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2sgI38LNUBA" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="1jvPZ1MLM84" role="1tU5fm">
          <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
        </node>
        <node concept="2AHcQZ" id="2sgI38LNUBD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2sgI38LNUln" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="IYmOvnAmTm" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="3clFbS" id="54InwJ0wSb3" role="3clF47">
        <node concept="XkiVB" id="54InwJ0wSb4" role="3cqZAp">
          <ref role="37wK5l" node="3Y6CQ86$x2S" resolve="AbstractEvaluationDialog" />
          <node concept="37vLTw" id="4pq21WIf6pG" role="37wK5m">
            <ref role="3cqZAo" node="4pq21WIf6mT" resolve="ideaProject" />
          </node>
          <node concept="37vLTw" id="2BHiRxgmGUB" role="37wK5m">
            <ref role="3cqZAo" node="2sgI38LNUBA" resolve="provider" />
          </node>
          <node concept="37vLTw" id="2BHiRxgm7z8" role="37wK5m">
            <ref role="3cqZAo" node="2sgI38LNUln" resolve="container" />
          </node>
          <node concept="Xl_RD" id="54InwJ0wSb8" role="37wK5m">
            <property role="Xl_RC" value="Evaluate" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="EQtaUM29Kj" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2deLAXtzjxK" role="jymVt" />
    <node concept="3clFb_" id="2juexGD4$UX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createActions" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2juexGD4$UY" role="1B3o_S" />
      <node concept="10Q1$e" id="2juexGD4$UZ" role="3clF45">
        <node concept="3uibUv" id="2juexGD4$V0" role="10Q1$1">
          <ref role="3uigEE" to="dxuu:~Action" resolve="Action" />
        </node>
      </node>
      <node concept="3clFbS" id="2juexGD4$V1" role="3clF47">
        <node concept="3cpWs6" id="2juexGD4$V5" role="3cqZAp">
          <node concept="2ShNRf" id="2juexGD4$V7" role="3cqZAk">
            <node concept="3g6Rrh" id="2juexGD4$Vx" role="2ShVmc">
              <node concept="3uibUv" id="2juexGD4$Vc" role="3g7fb8">
                <ref role="3uigEE" to="dxuu:~Action" resolve="Action" />
              </node>
              <node concept="2ShNRf" id="2juexGD4$Vz" role="3g7hyw">
                <node concept="YeOm9" id="2juexGD4Cdq" role="2ShVmc">
                  <node concept="1Y3b0j" id="2juexGD4Cdr" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="jkm4:~DialogWrapper$DialogWrapperAction" resolve="DialogWrapper.DialogWrapperAction" />
                    <ref role="37wK5l" to="jkm4:~DialogWrapper$DialogWrapperAction.&lt;init&gt;(java.lang.String)" resolve="DialogWrapper.DialogWrapperAction" />
                    <node concept="Xl_RD" id="2juexGD4Cd$" role="37wK5m">
                      <property role="Xl_RC" value="Evaluate" />
                    </node>
                    <node concept="3Tm1VV" id="2juexGD4Cds" role="1B3o_S" />
                    <node concept="3clFb_" id="2juexGD4Cdt" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="doAction" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tmbuc" id="2juexGD4Cdu" role="1B3o_S" />
                      <node concept="3cqZAl" id="2juexGD4Cdv" role="3clF45" />
                      <node concept="37vLTG" id="2juexGD4Cdw" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="2juexGD4Cdx" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2juexGD4Cdy" role="3clF47">
                        <node concept="3clFbF" id="2juexGD4Cd_" role="3cqZAp">
                          <node concept="2OqwBi" id="2juexGD4CdA" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuNl_" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
                            </node>
                            <node concept="liA8E" id="2juexGD4CdC" role="2OqNvi">
                              <ref role="37wK5l" node="N5Kj01sBG4" resolve="evaluate" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_SdMs" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2juexGD4CdO" role="3g7hyw">
                <node concept="YeOm9" id="2juexGD4CdQ" role="2ShVmc">
                  <node concept="1Y3b0j" id="2juexGD4CdR" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="jkm4:~DialogWrapper$DialogWrapperAction" resolve="DialogWrapper.DialogWrapperAction" />
                    <ref role="37wK5l" to="jkm4:~DialogWrapper$DialogWrapperAction.&lt;init&gt;(java.lang.String)" resolve="DialogWrapper.DialogWrapperAction" />
                    <node concept="Xl_RD" id="2juexGD4Ce0" role="37wK5m">
                      <property role="Xl_RC" value="Watch" />
                    </node>
                    <node concept="3Tm1VV" id="2juexGD4CdS" role="1B3o_S" />
                    <node concept="3clFb_" id="2juexGD4CdT" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="doAction" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tmbuc" id="2juexGD4CdU" role="1B3o_S" />
                      <node concept="3cqZAl" id="2juexGD4CdV" role="3clF45" />
                      <node concept="37vLTG" id="2juexGD4CdW" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="2juexGD4CdX" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2juexGD4CdY" role="3clF47">
                        <node concept="3clFbF" id="2juexGD4Ce1" role="3cqZAp">
                          <node concept="2OqwBi" id="2juexGD4Ce2" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuoMT" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Y6CQ86$x3h" resolve="myProvider" />
                            </node>
                            <node concept="liA8E" id="2juexGD4Ce4" role="2OqNvi">
                              <ref role="37wK5l" to="anh2:_hR$3XCoYc" resolve="addWatch" />
                              <node concept="2OqwBi" id="2juexGD4Ce5" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxeudem" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
                                </node>
                                <node concept="liA8E" id="2juexGD4Ce7" role="2OqNvi">
                                  <ref role="37wK5l" node="6gVcYMN7OxE" resolve="getEvaluationContainer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2juexGD4Ce9" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyz5Gb" role="3clFbG">
                            <ref role="37wK5l" to="jkm4:~DialogWrapper.doOKAction()" resolve="doOKAction" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_UuNC" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2juexGD4Cen" role="3g7hyw">
                <node concept="YeOm9" id="2juexGD4Cep" role="2ShVmc">
                  <node concept="1Y3b0j" id="2juexGD4Ceq" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="jkm4:~DialogWrapper$DialogWrapperAction" resolve="DialogWrapper.DialogWrapperAction" />
                    <ref role="37wK5l" to="jkm4:~DialogWrapper$DialogWrapperAction.&lt;init&gt;(java.lang.String)" resolve="DialogWrapper.DialogWrapperAction" />
                    <node concept="Xl_RD" id="2juexGD4Cey" role="37wK5m">
                      <property role="Xl_RC" value="Close" />
                    </node>
                    <node concept="3Tm1VV" id="2juexGD4Cer" role="1B3o_S" />
                    <node concept="3clFb_" id="2juexGD4Ces" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="doAction" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tmbuc" id="2juexGD4Cet" role="1B3o_S" />
                      <node concept="3cqZAl" id="2juexGD4Ceu" role="3clF45" />
                      <node concept="37vLTG" id="2juexGD4Cev" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="2juexGD4Cew" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2juexGD4Cex" role="3clF47">
                        <node concept="3clFbF" id="2juexGD4Cez" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyz3yU" role="3clFbG">
                            <ref role="37wK5l" to="jkm4:~DialogWrapper.doOKAction()" resolve="doOKAction" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_SeeV" role="2AJF6D">
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
      <node concept="2AHcQZ" id="2juexGD4$V2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1UwU9FzQA6I" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2deLAXtzjxL" role="jymVt" />
    <node concept="3clFb_" id="1n2T$Ij987O" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDimensionServiceKey" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="1n2T$Ij987P" role="1B3o_S" />
      <node concept="3uibUv" id="1n2T$Ij987Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="1n2T$Ij987R" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="1n2T$Ij987S" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="3clFbS" id="1n2T$Ij987T" role="3clF47">
        <node concept="3clFbF" id="1n2T$Ij987Y" role="3cqZAp">
          <node concept="2OqwBi" id="1n2T$Ij988l" role="3clFbG">
            <node concept="3VsKOn" id="1n2T$Ij9880" role="2Oq$k0">
              <ref role="3VsUkX" node="54InwJ0wS9U" resolve="EvaluationDialog" />
            </node>
            <node concept="liA8E" id="1n2T$Ij9b3Q" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1n2T$Ij987U" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="N5Kj01sBtF">
    <property role="TrG5h" value="EvaluationPanel" />
    <node concept="3Tm1VV" id="N5Kj01sBtG" role="1B3o_S" />
    <node concept="3uibUv" id="6ra8WUbIhqN" role="1zkMxy">
      <ref role="3uigEE" node="6ra8WUbIhqG" resolve="EvaluationUi" />
    </node>
    <node concept="312cEg" id="N5Kj01sBBz" role="jymVt">
      <property role="TrG5h" value="myEditor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="6kErf9mSJLH" role="1tU5fm">
        <ref role="3uigEE" to="tpru:1xyr94TevzE" resolve="EmbeddableEditor" />
      </node>
      <node concept="3Tm6S6" id="N5Kj01sBB_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="N5Kj01sBBD" role="jymVt">
      <property role="TrG5h" value="myEvaluationModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="IYmOvnBqE9" role="1tU5fm">
        <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
      </node>
      <node concept="3Tm6S6" id="N5Kj01sBBE" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="N5Kj01sBLU" role="jymVt">
      <property role="TrG5h" value="myHighlighter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="N5Kj01sBLV" role="1B3o_S" />
      <node concept="3uibUv" id="N5Kj01sBLW" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~Highlighter" resolve="Highlighter" />
      </node>
    </node>
    <node concept="312cEg" id="UBDTEaeGKt" role="jymVt">
      <property role="TrG5h" value="myIsDisposed" />
      <property role="34CwA1" value="true" />
      <node concept="3Tm6S6" id="UBDTEaeGKu" role="1B3o_S" />
      <node concept="10P_77" id="UBDTEaeGKw" role="1tU5fm" />
      <node concept="3clFbT" id="UBDTEaeGKy" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="3clFbW" id="N5Kj01sBBG" role="jymVt">
      <node concept="3Tm1VV" id="N5Kj01sBBH" role="1B3o_S" />
      <node concept="37vLTG" id="N5Kj01tlV0" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="Tb4PsnpCMw" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="2sgI38LNLaP" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="2Y$mRnIAz4z" role="1tU5fm">
          <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
        </node>
        <node concept="2AHcQZ" id="2sgI38LNLaS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2sgI38LNLaN" role="3clF46">
        <property role="TrG5h" value="evaluationModel" />
        <node concept="3uibUv" id="IYmOvnE7xs" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="7xbyL2cSBo6" role="3clF46">
        <property role="TrG5h" value="autoUpdate" />
        <node concept="10P_77" id="7xbyL2cSBID" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="N5Kj01sBBO" role="3clF47">
        <node concept="XkiVB" id="6ra8WUbIhwn" role="3cqZAp">
          <ref role="37wK5l" node="6ra8WUbIhqI" resolve="EvaluationUi" />
          <node concept="37vLTw" id="2BHiRxgm5UU" role="37wK5m">
            <ref role="3cqZAo" node="2sgI38LNLaP" resolve="session" />
          </node>
          <node concept="37vLTw" id="2BHiRxgmCo5" role="37wK5m">
            <ref role="3cqZAo" node="7xbyL2cSBo6" resolve="autoUpdate" />
          </node>
        </node>
        <node concept="3clFbF" id="N5Kj01sBC0" role="3cqZAp">
          <node concept="37vLTI" id="N5Kj01sBC1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuWPo" role="37vLTJ">
              <ref role="3cqZAo" node="N5Kj01sBLU" resolve="myHighlighter" />
            </node>
            <node concept="2YIFZM" id="1gzilxHNrOr" role="37vLTx">
              <ref role="37wK5l" to="exr9:~Highlighter.getInstance(jetbrains.mps.project.MPSProject)" resolve="getInstance" />
              <ref role="1Pybhc" to="exr9:~Highlighter" resolve="Highlighter" />
              <node concept="37vLTw" id="1gzilxHNuPv" role="37wK5m">
                <ref role="3cqZAo" node="N5Kj01tlV0" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="N5Kj01sBCR" role="3cqZAp" />
        <node concept="3clFbF" id="N5Kj01sBCS" role="3cqZAp">
          <node concept="37vLTI" id="2sgI38LNLaU" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglry4" role="37vLTx">
              <ref role="3cqZAo" node="2sgI38LNLaN" resolve="evaluationModel" />
            </node>
            <node concept="37vLTw" id="2BHiRxeufU_" role="37vLTJ">
              <ref role="3cqZAo" node="N5Kj01sBBD" resolve="myEvaluationModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="N5Kj01sBDn" role="3cqZAp" />
        <node concept="3clFbF" id="1KUoCiqb6c2" role="3cqZAp">
          <node concept="37vLTI" id="1KUoCiqb6c3" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwtM" role="37vLTJ">
              <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
            </node>
            <node concept="2ShNRf" id="1KUoCiqb6c5" role="37vLTx">
              <node concept="1pGfFk" id="1KUoCiqb6c6" role="2ShVmc">
                <ref role="37wK5l" to="tpru:1xyr94TfM0P" resolve="EmbeddableEditor" />
                <node concept="37vLTw" id="Tb4PsnpDN3" role="37wK5m">
                  <ref role="3cqZAo" node="N5Kj01tlV0" resolve="mpsProject" />
                </node>
                <node concept="3clFbT" id="1KUoCiqb6cd" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3Q8_1zOW4Pl" role="3cqZAp">
          <node concept="1PaTwC" id="3Q8_1zOW4Pm" role="1aUNEU">
            <node concept="3oM_SD" id="3Q8_1zOW9XP" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9XR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9XU" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9XY" role="1PaTwD">
              <property role="3oM_SC" value="command" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa0h" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa0s" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa0C" role="1PaTwD">
              <property role="3oM_SC" value="apparent" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa0P" role="1PaTwD">
              <property role="3oM_SC" value="reason," />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa2D" role="1PaTwD">
              <property role="3oM_SC" value="reduced" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa2S" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOWa38" role="1PaTwD">
              <property role="3oM_SC" value="write;" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9Y3" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9Y9" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9Yg" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9Yo" role="1PaTwD">
              <property role="3oM_SC" value="even" />
            </node>
            <node concept="3oM_SD" id="3Q8_1zOW9Yx" role="1PaTwD">
              <property role="3oM_SC" value="write?" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCiqb6bO" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCiqb6bP" role="3clFbG">
            <node concept="2OqwBi" id="Tb4PsnpCn8" role="2Oq$k0">
              <node concept="37vLTw" id="Tb4PsnpBVn" role="2Oq$k0">
                <ref role="3cqZAo" node="N5Kj01tlV0" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="Tb4PsnpCVU" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCiqb6bR" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
              <node concept="1bVj0M" id="1KUoCiqb6bS" role="37wK5m">
                <node concept="3clFbS" id="1KUoCiqb6bU" role="1bW5cS">
                  <node concept="3cpWs8" id="1KUoCiqb6bV" role="3cqZAp">
                    <node concept="3cpWsn" id="1KUoCiqb6bW" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1KUoCiqb6bX" role="1tU5fm" />
                      <node concept="2OqwBi" id="1KUoCiqb6bY" role="33vP2m">
                        <node concept="37vLTw" id="2BHiRxeuoLB" role="2Oq$k0">
                          <ref role="3cqZAo" node="N5Kj01sBBD" resolve="myEvaluationModel" />
                        </node>
                        <node concept="liA8E" id="1KUoCiqb6c0" role="2OqNvi">
                          <ref role="37wK5l" to="i1lu:IYmOvnANfZ" resolve="getNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCiqb6cf" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCiqb6cg" role="3clFbG">
                      <node concept="liA8E" id="1KUoCiqb6ch" role="2OqNvi">
                        <ref role="37wK5l" to="tpru:1xyr94Tev_c" resolve="editNode" />
                        <node concept="37vLTw" id="1KUoCiqb6ci" role="37wK5m">
                          <ref role="3cqZAo" node="1KUoCiqb6bW" resolve="node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1KUoCiqb6cj" role="2Oq$k0">
                        <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="N5Kj01sBEz" role="3cqZAp" />
        <node concept="3clFbF" id="6ra8WUbIhwP" role="3cqZAp">
          <node concept="2OqwBi" id="6ra8WUbIhwR" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuuG1" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="6ra8WUbIhNs" role="2OqNvi">
              <ref role="37wK5l" node="6ra8WUbIgTA" resolve="addModel" />
              <node concept="37vLTw" id="2BHiRxeuk0y" role="37wK5m">
                <ref role="3cqZAo" node="N5Kj01sBBD" resolve="myEvaluationModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6SfOiENufJ0" role="3cqZAp">
          <node concept="3clFbS" id="6SfOiENufJ1" role="3clFbx">
            <node concept="3clFbF" id="6SfOiENufZs" role="3cqZAp">
              <node concept="2OqwBi" id="6SfOiENufZt" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeusP3" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                </node>
                <node concept="liA8E" id="6SfOiENufZv" role="2OqNvi">
                  <ref role="37wK5l" node="3URxx275fMh" resolve="updateLocation" />
                  <node concept="2OqwBi" id="6SfOiENufZD" role="37wK5m">
                    <node concept="2OqwBi" id="6SfOiENufZE" role="2Oq$k0">
                      <node concept="2OqwBi" id="6SfOiENufZF" role="2Oq$k0">
                        <node concept="liA8E" id="6SfOiENufZG" role="2OqNvi">
                          <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxeuso_" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6SfOiENufZI" role="2OqNvi">
                        <ref role="37wK5l" to="d822:3UdBmwRq3jh" resolve="getThread" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6SfOiENufZJ" role="2OqNvi">
                      <ref role="37wK5l" to="y3sp:2Y$mRnIClT3" resolve="getThread" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6SfOiENufZn" role="3clFbw">
            <node concept="liA8E" id="6SfOiENufZr" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaK9l" resolve="isPaused" />
            </node>
            <node concept="37vLTw" id="IYmOvnCoGE" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ra8WUbIhwN" role="3cqZAp" />
        <node concept="3cpWs8" id="3yfqE643tLU" role="3cqZAp">
          <node concept="3cpWsn" id="3yfqE643tLT" role="3cpWs9">
            <property role="TrG5h" value="splitter" />
            <node concept="3uibUv" id="3yfqE643tLV" role="1tU5fm">
              <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
            </node>
            <node concept="2ShNRf" id="3yfqE643vnf" role="33vP2m">
              <node concept="1pGfFk" id="3yfqE643vn$" role="2ShVmc">
                <ref role="37wK5l" to="jkm4:~Splitter.&lt;init&gt;(boolean)" resolve="Splitter" />
                <node concept="3clFbT" id="3yfqE643vn_" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yfqE643tLY" role="3cqZAp">
          <node concept="2OqwBi" id="3yfqE643xUm" role="3clFbG">
            <node concept="37vLTw" id="3yfqE643vnJ" role="2Oq$k0">
              <ref role="3cqZAo" node="3yfqE643tLT" resolve="splitter" />
            </node>
            <node concept="liA8E" id="3yfqE643xUn" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setFirstComponent(javax.swing.JComponent)" resolve="setFirstComponent" />
              <node concept="37vLTw" id="3yfqE643xUo" role="37wK5m">
                <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yfqE643tM1" role="3cqZAp">
          <node concept="2OqwBi" id="3yfqE643y4A" role="3clFbG">
            <node concept="37vLTw" id="3yfqE643vnS" role="2Oq$k0">
              <ref role="3cqZAo" node="3yfqE643tLT" resolve="splitter" />
            </node>
            <node concept="liA8E" id="3yfqE643y4B" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
              <node concept="2ShNRf" id="3yfqE643DJO" role="37wK5m">
                <node concept="1pGfFk" id="3yfqE643DJP" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
                  <node concept="37vLTw" id="3yfqE643DJQ" role="37wK5m">
                    <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yfqE643tM4" role="3cqZAp">
          <node concept="2OqwBi" id="3yfqE643wXG" role="3clFbG">
            <node concept="37vLTw" id="3yfqE643vnE" role="2Oq$k0">
              <ref role="3cqZAo" node="3yfqE643tLT" resolve="splitter" />
            </node>
            <node concept="liA8E" id="3yfqE643wXH" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setDividerWidth(int)" resolve="setDividerWidth" />
              <node concept="3cmrfG" id="3yfqE643wXI" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sRxuM1gfm1" role="3cqZAp">
          <node concept="2OqwBi" id="2sRxuM1giAD" role="3clFbG">
            <node concept="37vLTw" id="2sRxuM1gflZ" role="2Oq$k0">
              <ref role="3cqZAo" node="3yfqE643tLT" resolve="splitter" />
            </node>
            <node concept="liA8E" id="2sRxuM1gnld" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setProportion(float)" resolve="setProportion" />
              <node concept="2$xPTn" id="2sRxuM1gvQN" role="37wK5m">
                <property role="2$xPTl" value="0.2f" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yfqE643Lb3" role="3cqZAp">
          <node concept="1rXfSq" id="3yfqE643Lb1" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="37vLTw" id="3yfqE643Q6x" role="37wK5m">
              <ref role="3cqZAo" node="3yfqE643tLT" resolve="splitter" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19lgW7GohxO" role="3cqZAp" />
        <node concept="3clFbF" id="19lgW7GokTP" role="3cqZAp">
          <node concept="2OqwBi" id="19lgW7GokTW" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuFmi" role="2Oq$k0">
              <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="19lgW7Golcx" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.registerKeyboardAction(java.awt.event.ActionListener,javax.swing.KeyStroke,int)" resolve="registerKeyboardAction" />
              <node concept="2ShNRf" id="19lgW7Golcy" role="37wK5m">
                <node concept="YeOm9" id="19lgW7Golc$" role="2ShVmc">
                  <node concept="1Y3b0j" id="19lgW7Golc_" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="dxuu:~AbstractAction" resolve="AbstractAction" />
                    <ref role="37wK5l" to="dxuu:~AbstractAction.&lt;init&gt;()" resolve="AbstractAction" />
                    <node concept="3Tm1VV" id="19lgW7GolcA" role="1B3o_S" />
                    <node concept="3clFb_" id="19lgW7GolcB" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="actionPerformed" />
                      <node concept="3Tm1VV" id="19lgW7GolcC" role="1B3o_S" />
                      <node concept="3cqZAl" id="19lgW7GolcD" role="3clF45" />
                      <node concept="37vLTG" id="19lgW7GolcE" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="19lgW7GolcF" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="19lgW7GolcG" role="3clF47">
                        <node concept="3clFbF" id="19lgW7GolcH" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyz5MM" role="3clFbG">
                            <ref role="37wK5l" node="N5Kj01sBG4" resolve="evaluate" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_Sedr" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="19lgW7GolcL" role="37wK5m">
                <ref role="37wK5l" to="dxuu:~KeyStroke.getKeyStroke(java.lang.String)" resolve="getKeyStroke" />
                <ref role="1Pybhc" to="dxuu:~KeyStroke" resolve="KeyStroke" />
                <node concept="Xl_RD" id="19lgW7GolcM" role="37wK5m">
                  <property role="Xl_RC" value="ctrl ENTER" />
                </node>
              </node>
              <node concept="10M0yZ" id="19lgW7GolcO" role="37wK5m">
                <ref role="1PxDUh" to="dxuu:~JComponent" resolve="JComponent" />
                <ref role="3cqZAo" to="dxuu:~JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT" resolve="WHEN_ANCESTOR_OF_FOCUSED_COMPONENT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7xbyL2cSBIE" role="3cqZAp" />
        <node concept="3clFbF" id="6klnWqotMOR" role="3cqZAp">
          <node concept="2OqwBi" id="6klnWqotMOS" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeufPK" role="2Oq$k0">
              <ref role="3cqZAo" node="N5Kj01sBLU" resolve="myHighlighter" />
            </node>
            <node concept="liA8E" id="6klnWqotMOW" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.addAdditionalEditor(jetbrains.mps.openapi.editor.Editor)" resolve="addAdditionalEditor" />
              <node concept="2OqwBi" id="6klnWqotMOX" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeunoM" role="2Oq$k0">
                  <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
                </node>
                <node concept="liA8E" id="6klnWqotMOZ" role="2OqNvi">
                  <ref role="37wK5l" to="tpru:1xyr94TevBc" resolve="getEditor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="EQtaUM29Kl" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6gVcYMN7OxE" role="jymVt">
      <property role="TrG5h" value="getEvaluationContainer" />
      <node concept="3uibUv" id="IYmOvnAqBv" role="3clF45">
        <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
      </node>
      <node concept="3Tm1VV" id="6gVcYMN7OxG" role="1B3o_S" />
      <node concept="3clFbS" id="6gVcYMN7OxH" role="3clF47">
        <node concept="3clFbF" id="6gVcYMN7OxJ" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuqRX" role="3clFbG">
            <ref role="3cqZAo" node="N5Kj01sBBD" resolve="myEvaluationModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6klnWqotOXW" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6klnWqotOXX" role="3clF45" />
      <node concept="3Tm1VV" id="6klnWqotOXY" role="1B3o_S" />
      <node concept="3clFbS" id="6klnWqotOXZ" role="3clF47">
        <node concept="3clFbF" id="7ZQuYZaB6qK" role="3cqZAp">
          <node concept="2OqwBi" id="5z_tjC5li_y" role="3clFbG">
            <node concept="2YIFZM" id="7ZQuYZaB6qM" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="5z_tjC5li_A" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.assertIsDispatchThread()" resolve="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5z_tjC5li_C" role="3cqZAp">
          <node concept="3clFbS" id="5z_tjC5li_D" role="3clFbx">
            <node concept="3cpWs6" id="5z_tjC5li_E" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="2BHiRxeuSu$" role="3clFbw">
            <ref role="3cqZAo" node="UBDTEaeGKt" resolve="myIsDisposed" />
          </node>
        </node>
        <node concept="3clFbF" id="5z_tjC5li_G" role="3cqZAp">
          <node concept="37vLTI" id="5z_tjC5li_H" role="3clFbG">
            <node concept="3clFbT" id="5z_tjC5li_I" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2BHiRxeu$ts" role="37vLTJ">
              <ref role="3cqZAo" node="UBDTEaeGKt" resolve="myIsDisposed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2LsTSypo5lT" role="3cqZAp">
          <node concept="3nyPlj" id="2LsTSypo5lU" role="3clFbG">
            <ref role="37wK5l" node="2LsTSypo5lp" resolve="dispose" />
          </node>
        </node>
        <node concept="3clFbF" id="5z_tjC5li_P" role="3cqZAp">
          <node concept="2OqwBi" id="5z_tjC5li_Q" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeun0v" role="2Oq$k0">
              <ref role="3cqZAo" node="N5Kj01sBLU" resolve="myHighlighter" />
            </node>
            <node concept="liA8E" id="5z_tjC5li_S" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.removeAdditionalEditor(jetbrains.mps.openapi.editor.Editor)" resolve="removeAdditionalEditor" />
              <node concept="2OqwBi" id="5z_tjC5li_T" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuTrf" role="2Oq$k0">
                  <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
                </node>
                <node concept="liA8E" id="5z_tjC5li_V" role="2OqNvi">
                  <ref role="37wK5l" to="tpru:1xyr94TevBc" resolve="getEditor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5z_tjC5li_W" role="3cqZAp">
          <node concept="2OqwBi" id="5z_tjC5li_X" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyJm" role="2Oq$k0">
              <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="5z_tjC5li_Z" role="2OqNvi">
              <ref role="37wK5l" to="tpru:1xyr94TkfFZ" resolve="disposeEditor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_ScZd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="N5Kj01sBG4" role="jymVt">
      <property role="TrG5h" value="evaluate" />
      <node concept="3Tm1VV" id="N5Kj01sBG5" role="1B3o_S" />
      <node concept="3cqZAl" id="N5Kj01sBG6" role="3clF45" />
      <node concept="3clFbS" id="N5Kj01sBG7" role="3clF47">
        <node concept="3clFbF" id="6ra8WUbIhn$" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYre" role="3clFbG">
            <ref role="37wK5l" node="6ra8WUbIhqR" resolve="evaluate" />
            <node concept="37vLTw" id="2BHiRxeuFj4" role="37wK5m">
              <ref role="3cqZAo" node="N5Kj01sBBD" resolve="myEvaluationModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_ScZc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2LsTSypo5l5" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="2LsTSypo5l6" role="3clF45" />
      <node concept="3Tmbuc" id="2LsTSypo5l7" role="1B3o_S" />
      <node concept="3clFbS" id="2LsTSypo5l8" role="3clF47">
        <node concept="3clFbF" id="2LsTSypo5l9" role="3cqZAp">
          <node concept="2OqwBi" id="2LsTSypo5lb" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuCBs" role="2Oq$k0">
              <ref role="3cqZAo" node="N5Kj01sBBD" resolve="myEvaluationModel" />
            </node>
            <node concept="liA8E" id="2LsTSypo5lf" role="2OqNvi">
              <ref role="37wK5l" to="i1lu:IYmOvnCJGj" resolve="updateState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_ScZe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3nWps2JRoXc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3nWps2JRoXf" role="3clF47">
        <node concept="3clFbF" id="6NL21$NrHJq" role="3cqZAp">
          <node concept="2OqwBi" id="6NL21$NrIKz" role="3clFbG">
            <node concept="37vLTw" id="6NL21$NrHJo" role="2Oq$k0">
              <ref role="3cqZAo" node="N5Kj01sBBz" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="6NL21$NrKGB" role="2OqNvi">
              <ref role="37wK5l" to="tpru:6NL21$Nrzm8" resolve="getPreferredFocusedComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3nWps2JRlod" role="1B3o_S" />
      <node concept="3uibUv" id="3nWps2JRoRt" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6ra8WUbIgSW">
    <property role="TrG5h" value="EvaluationTree" />
    <node concept="3uibUv" id="6ra8WUbIgSY" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTree" resolve="MPSTree" />
    </node>
    <node concept="3uibUv" id="6FFoA$ya02b" role="EKbjA">
      <ref role="3uigEE" to="qkt:~DataProvider" resolve="DataProvider" />
    </node>
    <node concept="312cEg" id="6ra8WUbIgT2" role="jymVt">
      <property role="TrG5h" value="myThreadReference" />
      <node concept="3uibUv" id="1lV3ppNorb" role="1tU5fm">
        <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
      </node>
      <node concept="3Tm6S6" id="6ra8WUbIgT3" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6ra8WUbIgT5" role="jymVt">
      <property role="TrG5h" value="myStates" />
      <node concept="3Tm6S6" id="6ra8WUbIgT6" role="1B3o_S" />
      <node concept="3rvAFt" id="6ra8WUbIgT7" role="1tU5fm">
        <node concept="3uibUv" id="IYmOvn_m05" role="3rvQeY">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="3uibUv" id="6ra8WUbIgT9" role="3rvSg0">
          <ref role="3uigEE" node="6ra8WUbIh2$" resolve="EvaluationTree.EvaluationState" />
        </node>
      </node>
      <node concept="2ShNRf" id="6ra8WUbIgTa" role="33vP2m">
        <node concept="3rGOSV" id="6ra8WUbIgTb" role="2ShVmc">
          <node concept="3uibUv" id="IYmOvn_m0k" role="3rHrn6">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
          <node concept="3uibUv" id="6ra8WUbIgTd" role="3rHtpV">
            <ref role="3uigEE" node="6ra8WUbIh2$" resolve="EvaluationTree.EvaluationState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="IYmOvnHR3I" role="jymVt">
      <property role="TrG5h" value="myDebugSession" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="IYmOvnHRjR" role="1tU5fm">
        <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
      </node>
      <node concept="3Tm6S6" id="IYmOvnHR3J" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1Uivi6F0KDz" role="jymVt">
      <property role="TrG5h" value="myActionGroup" />
      <node concept="3Tm6S6" id="1Uivi6F0KD$" role="1B3o_S" />
      <node concept="3uibUv" id="1Uivi6F0KDM" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="10Nm6u" id="1Uivi6F0KDS" role="33vP2m" />
      <node concept="2AHcQZ" id="1Uivi6F0KDV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFbW" id="6ra8WUbIgTe" role="jymVt">
      <node concept="3Tm1VV" id="6ra8WUbIgTf" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIgTg" role="3clF47">
        <node concept="XkiVB" id="6ra8WUbIgTh" role="3cqZAp">
          <ref role="37wK5l" to="7e8u:~MPSTree.&lt;init&gt;()" resolve="MPSTree" />
        </node>
        <node concept="3clFbF" id="IYmOvnHRnf" role="3cqZAp">
          <node concept="37vLTI" id="IYmOvnHRyo" role="3clFbG">
            <node concept="37vLTw" id="IYmOvnHR_2" role="37vLTx">
              <ref role="3cqZAo" node="IYmOvnHQJr" resolve="session" />
            </node>
            <node concept="37vLTw" id="IYmOvnHRne" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnHR3I" resolve="myDebugSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ra8WUbIgTq" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyJFt" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setRootVisible(boolean)" resolve="setRootVisible" />
            <node concept="3clFbT" id="6ra8WUbIgTs" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="6ra8WUbIgTt" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9zJ" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setShowsRootHandles(boolean)" resolve="setShowsRootHandles" />
            <node concept="3clFbT" id="6ra8WUbIgTv" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ra8WUbIgTw" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyziEV" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.rebuildNow()" resolve="rebuildNow" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvnHQJr" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="IYmOvnHQJq" role="1tU5fm">
          <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
        </node>
      </node>
      <node concept="3cqZAl" id="EQtaUM29Kk" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2Z8pu54WXp2" role="jymVt" />
    <node concept="3clFb_" id="3URxx275fMh" role="jymVt">
      <property role="TrG5h" value="updateLocation" />
      <node concept="37vLTG" id="3URxx275jlX" role="3clF46">
        <property role="TrG5h" value="threadReference" />
        <node concept="3uibUv" id="3URxx275jm0" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="3URxx275fMi" role="3clF45" />
      <node concept="3clFbS" id="3URxx275fMj" role="3clF47">
        <node concept="3clFbF" id="3URxx275jm5" role="3cqZAp">
          <node concept="37vLTI" id="3URxx275jm6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm8cC" role="37vLTx">
              <ref role="3cqZAo" node="3URxx275jlX" resolve="threadReference" />
            </node>
            <node concept="37vLTw" id="2BHiRxeusHD" role="37vLTJ">
              <ref role="3cqZAo" node="6ra8WUbIgT2" resolve="myThreadReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3URxx275fMk" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="6ra8WUbIgTA" role="jymVt">
      <property role="TrG5h" value="addModel" />
      <node concept="3cqZAl" id="6ra8WUbIgTB" role="3clF45" />
      <node concept="3clFbS" id="6ra8WUbIgTD" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjMJJR" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjMM8Z" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjMJJV" role="1HWHxc">
            <node concept="3clFbF" id="6ra8WUbIgTE" role="3cqZAp">
              <node concept="37vLTI" id="6ra8WUbIgTF" role="3clFbG">
                <node concept="2ShNRf" id="6ra8WUbIgTG" role="37vLTx">
                  <node concept="1pGfFk" id="6ra8WUbIgTH" role="2ShVmc">
                    <ref role="37wK5l" node="6ra8WUbIh2M" resolve="EvaluationTree.InitializedState" />
                  </node>
                </node>
                <node concept="3EllGN" id="6ra8WUbIgTI" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxghfRL" role="3ElVtu">
                    <ref role="3cqZAo" node="6ra8WUbIgTL" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeumNC" role="3ElQJh">
                    <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIgTL" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvn_3bf" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="_gMcXhQSY_" role="jymVt">
      <property role="TrG5h" value="removeModel" />
      <node concept="3cqZAl" id="_gMcXhQSYA" role="3clF45" />
      <node concept="3clFbS" id="_gMcXhQSYB" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjMPW6" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjMSkl" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjMPWa" role="1HWHxc">
            <node concept="3clFbF" id="_gMcXhQV62" role="3cqZAp">
              <node concept="2OqwBi" id="_gMcXhQV64" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuP$n" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                </node>
                <node concept="kI3uX" id="_gMcXhQV68" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxgm973" role="kIiFs">
                    <ref role="3cqZAo" node="_gMcXhQSYJ" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_gMcXhQSYJ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvn_3pc" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIgTN" role="jymVt">
      <property role="TrG5h" value="setResultValue" />
      <node concept="3cqZAl" id="6ra8WUbIgTP" role="3clF45" />
      <node concept="37vLTG" id="6ra8WUbIgTQ" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="30gAWAabtRC" role="1tU5fm">
          <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIgTS" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvn_3Bj" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="3clFbS" id="6ra8WUbIgTU" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjMWng" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjMYNt" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjMWnk" role="1HWHxc">
            <node concept="3clFbF" id="6ra8WUbIgTV" role="3cqZAp">
              <node concept="37vLTI" id="6ra8WUbIgTW" role="3clFbG">
                <node concept="2ShNRf" id="6ra8WUbIgTX" role="37vLTx">
                  <node concept="1pGfFk" id="6ra8WUbIgTY" role="2ShVmc">
                    <ref role="37wK5l" node="6ra8WUbIh3v" resolve="EvaluationTree.ResultState" />
                    <node concept="2OqwBi" id="8gn1UOZjs5" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxgm_uI" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ra8WUbIgTS" resolve="model" />
                      </node>
                      <node concept="liA8E" id="8gn1UOZjs9" role="2OqNvi">
                        <ref role="37wK5l" to="i1lu:IYmOvn_6ln" resolve="getPresentation" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="30gAWAabtMX" role="37wK5m">
                      <ref role="3cqZAo" node="6ra8WUbIgTQ" resolve="value" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuG$p" role="37wK5m">
                      <ref role="3cqZAo" node="6ra8WUbIgT2" resolve="myThreadReference" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="6ra8WUbIgU2" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxgm9ua" role="3ElVtu">
                    <ref role="3cqZAo" node="6ra8WUbIgTS" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeufQa" role="3ElQJh">
                    <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIgU5" role="jymVt">
      <property role="TrG5h" value="setError" />
      <node concept="3cqZAl" id="6ra8WUbIgU6" role="3clF45" />
      <node concept="3clFbS" id="6ra8WUbIgU8" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjN2Ne" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjN5cr" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjN2Ni" role="1HWHxc">
            <node concept="3clFbF" id="6ra8WUbIgU9" role="3cqZAp">
              <node concept="37vLTI" id="6ra8WUbIgUa" role="3clFbG">
                <node concept="2ShNRf" id="6ra8WUbIgUb" role="37vLTx">
                  <node concept="1pGfFk" id="6ra8WUbIgUc" role="2ShVmc">
                    <ref role="37wK5l" node="6ra8WUbIh4k" resolve="EvaluationTree.FailureState" />
                    <node concept="37vLTw" id="2BHiRxgmzEH" role="37wK5m">
                      <ref role="3cqZAo" node="6ra8WUbIgUh" resolve="text" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="6ra8WUbIgUe" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxghfnu" role="3ElVtu">
                    <ref role="3cqZAo" node="6ra8WUbIgUk" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeul9$" role="3ElQJh">
                    <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIgUh" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6ra8WUbIgUi" role="1tU5fm" />
        <node concept="2AHcQZ" id="6ra8WUbIgUj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIgUk" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvn_dsj" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIgUm" role="jymVt">
      <property role="TrG5h" value="setError" />
      <node concept="3cqZAl" id="6ra8WUbIgUn" role="3clF45" />
      <node concept="3clFbS" id="6ra8WUbIgUp" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjN91b" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjNbqn" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjN91f" role="1HWHxc">
            <node concept="3clFbF" id="6ra8WUbIgUq" role="3cqZAp">
              <node concept="37vLTI" id="6ra8WUbIgUr" role="3clFbG">
                <node concept="2ShNRf" id="6ra8WUbIgUs" role="37vLTx">
                  <node concept="1pGfFk" id="6ra8WUbIgUt" role="2ShVmc">
                    <ref role="37wK5l" node="6ra8WUbIh4u" resolve="EvaluationTree.FailureState" />
                    <node concept="37vLTw" id="2BHiRxghg8L" role="37wK5m">
                      <ref role="3cqZAo" node="6ra8WUbIgUy" resolve="error" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="6ra8WUbIgUv" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxgmFbM" role="3ElVtu">
                    <ref role="3cqZAo" node="6ra8WUbIgU_" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuwAl" role="3ElQJh">
                    <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIgUy" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="3uibUv" id="6ra8WUbIgUz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
        <node concept="2AHcQZ" id="6ra8WUbIgU$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIgU_" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvn_dRL" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIgUB" role="jymVt">
      <property role="TrG5h" value="setEvaluating" />
      <node concept="37vLTG" id="6ra8WUbIgUC" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvn_eIR" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="3cqZAl" id="6ra8WUbIgUE" role="3clF45" />
      <node concept="3clFbS" id="6ra8WUbIgUG" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjNfdZ" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjNhAM" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjNfe3" role="1HWHxc">
            <node concept="3clFbF" id="6ra8WUbIgUH" role="3cqZAp">
              <node concept="37vLTI" id="6ra8WUbIgUI" role="3clFbG">
                <node concept="2ShNRf" id="6ra8WUbIgUJ" role="37vLTx">
                  <node concept="1pGfFk" id="6ra8WUbIgUK" role="2ShVmc">
                    <ref role="37wK5l" node="6ra8WUbIh31" resolve="EvaluationTree.EvaluationInProgressState" />
                  </node>
                </node>
                <node concept="3EllGN" id="6ra8WUbIgUL" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxgmlrw" role="3ElVtu">
                    <ref role="3cqZAo" node="6ra8WUbIgUC" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuqRa" role="3ElQJh">
                    <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIgUO" role="jymVt">
      <property role="TrG5h" value="rebuild" />
      <node concept="3Tmbuc" id="6ra8WUbIgUP" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIgUQ" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
      <node concept="3clFbS" id="6ra8WUbIgUR" role="3clF47">
        <node concept="3cpWs8" id="6ra8WUbIgUS" role="3cqZAp">
          <node concept="3cpWsn" id="6ra8WUbIgUT" role="3cpWs9">
            <property role="TrG5h" value="rootTreeNode" />
            <node concept="3uibUv" id="6ra8WUbIgUU" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
            </node>
            <node concept="2ShNRf" id="6ra8WUbIgUV" role="33vP2m">
              <node concept="1pGfFk" id="6ra8WUbIgUW" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                <node concept="Xl_RD" id="6ra8WUbIgUX" role="37wK5m">
                  <property role="Xl_RC" value="Evaluation Result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="6abqMjjNndI" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjNruj" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjNndM" role="1HWHxc">
            <node concept="2Gpval" id="6ra8WUbIgUY" role="3cqZAp">
              <node concept="2GrKxI" id="6ra8WUbIgUZ" role="2Gsz3X">
                <property role="TrG5h" value="model" />
              </node>
              <node concept="3clFbS" id="6ra8WUbIgV0" role="2LFqv$">
                <node concept="3clFbF" id="6ra8WUbIgV1" role="3cqZAp">
                  <node concept="2OqwBi" id="6ra8WUbIgV2" role="3clFbG">
                    <node concept="3EllGN" id="6FFoA$ya0i4" role="2Oq$k0">
                      <node concept="2GrUjf" id="6FFoA$ya0i7" role="3ElVtu">
                        <ref role="2Gs0qQ" node="6ra8WUbIgUZ" resolve="model" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxeufQ3" role="3ElQJh">
                        <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6ra8WUbIgV4" role="2OqNvi">
                      <ref role="37wK5l" node="6ra8WUbIh2_" resolve="rebuild" />
                      <node concept="37vLTw" id="3GM_nagTvqf" role="37wK5m">
                        <ref role="3cqZAo" node="6ra8WUbIgUT" resolve="rootTreeNode" />
                      </node>
                      <node concept="2GrUjf" id="6FFoA$ya0i8" role="37wK5m">
                        <ref role="2Gs0qQ" node="6ra8WUbIgUZ" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6ra8WUbIgV6" role="2GsD0m">
                <node concept="37vLTw" id="2BHiRxeulbl" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                </node>
                <node concept="3lbrtF" id="6FFoA$ya0i1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ra8WUbIgV9" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTx_B" role="3cqZAk">
            <ref role="3cqZAo" node="6ra8WUbIgUT" resolve="rootTreeNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6ra8WUbIgVb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6abqMjjLuE5" role="jymVt" />
    <node concept="3clFb_" id="3h3DT0Hms7Z" role="jymVt">
      <property role="TrG5h" value="expandPaths" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3h3DT0Hms80" role="3clF46">
        <property role="TrG5h" value="paths" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3h3DT0Hms81" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="3h3DT0Hn0yM" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="3h3DT0Hms83" role="3clF47">
        <node concept="1DcWWT" id="3h3DT0Hms84" role="3cqZAp">
          <node concept="37vLTw" id="3h3DT0Hms8r" role="1DdaDG">
            <ref role="3cqZAo" node="3h3DT0Hms80" resolve="paths" />
          </node>
          <node concept="3cpWsn" id="3h3DT0Hms8o" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="path" />
            <node concept="17QB3L" id="3h3DT0Hn0yP" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="3h3DT0Hms86" role="2LFqv$">
            <node concept="3cpWs8" id="67Ra4fFErTp" role="3cqZAp">
              <node concept="3cpWsn" id="67Ra4fFErTq" role="3cpWs9">
                <property role="TrG5h" value="treePath" />
                <node concept="3uibUv" id="67Ra4fFErTr" role="1tU5fm">
                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                </node>
                <node concept="2YIFZM" id="67Ra4fFH97Q" role="33vP2m">
                  <ref role="37wK5l" to="choc:67Ra4fFGLsa" resolve="stringToPathWithPlaceholders" />
                  <ref role="1Pybhc" to="choc:67Ra4fF$irA" resolve="PlaceholderTreeNode" />
                  <node concept="1rXfSq" id="67Ra4fFHaPh" role="37wK5m">
                    <ref role="37wK5l" to="7e8u:~MPSTree.getRootNode()" resolve="getRootNode" />
                  </node>
                  <node concept="37vLTw" id="67Ra4fFHcKd" role="37wK5m">
                    <ref role="3cqZAo" node="3h3DT0Hms8o" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3h3DT0Hms8l" role="3cqZAp">
              <node concept="1rXfSq" id="3h3DT0Hms8m" role="3clFbG">
                <ref role="37wK5l" to="7e8u:~MPSTree.expandPath(javax.swing.tree.TreePath)" resolve="expandPath" />
                <node concept="37vLTw" id="67Ra4fFEx22" role="37wK5m">
                  <ref role="3cqZAo" node="67Ra4fFErTq" resolve="treePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3h3DT0Hmtlj" role="1B3o_S" />
      <node concept="3cqZAl" id="3h3DT0Hms8t" role="3clF45" />
      <node concept="2AHcQZ" id="67Ra4fFHEys" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="67Ra4fFHGzO" role="jymVt" />
    <node concept="3clFb_" id="3h3DT0HmsEE" role="jymVt">
      <property role="TrG5h" value="selectPaths" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3h3DT0HmsEF" role="3clF46">
        <property role="TrG5h" value="paths" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3h3DT0HmsEG" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="3h3DT0Hn0yJ" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="3h3DT0HmsEI" role="3clF47">
        <node concept="3cpWs8" id="3h3DT0HmsEK" role="3cqZAp">
          <node concept="3cpWsn" id="3h3DT0HmsEJ" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="treePaths" />
            <node concept="3uibUv" id="3h3DT0HmsEL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3h3DT0HmsEM" role="11_B2D">
                <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
              </node>
            </node>
            <node concept="2ShNRf" id="3h3DT0HmsFa" role="33vP2m">
              <node concept="1pGfFk" id="3h3DT0HmsFb" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="3h3DT0HmsEO" role="1pMfVU">
                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="67Ra4fFEMfO" role="3cqZAp">
          <node concept="37vLTw" id="67Ra4fFEMfP" role="1DdaDG">
            <ref role="3cqZAo" node="3h3DT0HmsEF" resolve="paths" />
          </node>
          <node concept="3cpWsn" id="67Ra4fFEMfQ" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="path" />
            <node concept="17QB3L" id="67Ra4fFEMfR" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="67Ra4fFEMfS" role="2LFqv$">
            <node concept="3cpWs8" id="67Ra4fFHcPd" role="3cqZAp">
              <node concept="3cpWsn" id="67Ra4fFHcPe" role="3cpWs9">
                <property role="TrG5h" value="treePath" />
                <node concept="3uibUv" id="67Ra4fFHcPf" role="1tU5fm">
                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                </node>
                <node concept="2YIFZM" id="67Ra4fFHcPg" role="33vP2m">
                  <ref role="37wK5l" to="choc:67Ra4fFGLsa" resolve="stringToPathWithPlaceholders" />
                  <ref role="1Pybhc" to="choc:67Ra4fF$irA" resolve="PlaceholderTreeNode" />
                  <node concept="1rXfSq" id="67Ra4fFHcPh" role="37wK5m">
                    <ref role="37wK5l" to="7e8u:~MPSTree.getRootNode()" resolve="getRootNode" />
                  </node>
                  <node concept="37vLTw" id="67Ra4fFHcPi" role="37wK5m">
                    <ref role="3cqZAo" node="67Ra4fFEMfQ" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3h3DT0Hn0Zv" role="3cqZAp">
              <node concept="2OqwBi" id="3h3DT0Hn1Of" role="3clFbG">
                <node concept="37vLTw" id="3h3DT0Hn0Zu" role="2Oq$k0">
                  <ref role="3cqZAo" node="3h3DT0HmsEJ" resolve="treePaths" />
                </node>
                <node concept="liA8E" id="3h3DT0Hn7N$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="67Ra4fFER_f" role="37wK5m">
                    <ref role="3cqZAo" node="67Ra4fFHcPe" resolve="treePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3h3DT0HmsF0" role="3cqZAp">
          <node concept="1rXfSq" id="3h3DT0HmsF1" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setSelectionPaths(javax.swing.tree.TreePath[])" resolve="setSelectionPaths" />
            <node concept="2OqwBi" id="3h3DT0HmsFr" role="37wK5m">
              <node concept="37vLTw" id="3h3DT0HmsFq" role="2Oq$k0">
                <ref role="3cqZAo" node="3h3DT0HmsEJ" resolve="treePaths" />
              </node>
              <node concept="liA8E" id="3h3DT0HmsFs" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                <node concept="2ShNRf" id="3h3DT0HmsF7" role="37wK5m">
                  <node concept="3$_iS1" id="3h3DT0HmsF5" role="2ShVmc">
                    <node concept="3$GHV9" id="3h3DT0HmsF6" role="3$GQph">
                      <node concept="2OqwBi" id="3h3DT0HmsFv" role="3$I4v7">
                        <node concept="37vLTw" id="3h3DT0HmsFu" role="2Oq$k0">
                          <ref role="3cqZAo" node="3h3DT0HmsEJ" resolve="treePaths" />
                        </node>
                        <node concept="liA8E" id="3h3DT0HmsFw" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="3h3DT0HmsF3" role="3$_nBY">
                      <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3h3DT0Hmtlq" role="1B3o_S" />
      <node concept="3cqZAl" id="3h3DT0HmsF9" role="3clF45" />
      <node concept="2AHcQZ" id="67Ra4fFHINu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6abqMjjLEFn" role="jymVt" />
    <node concept="3clFb_" id="6abqMjjLGMe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runRebuildAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6abqMjjLGMf" role="1B3o_S" />
      <node concept="3cqZAl" id="6abqMjjLGMh" role="3clF45" />
      <node concept="37vLTG" id="6abqMjjLGMi" role="3clF46">
        <property role="TrG5h" value="rebuildAction" />
        <node concept="3uibUv" id="6abqMjjLGMj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="37vLTG" id="6abqMjjLGMk" role="3clF46">
        <property role="TrG5h" value="saveExpansion" />
        <node concept="10P_77" id="6abqMjjLGMl" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6abqMjjLGMm" role="3clF47">
        <node concept="3clFbF" id="6abqMjjLGMr" role="3cqZAp">
          <node concept="3nyPlj" id="6abqMjjLGMq" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.runRebuildAction(java.lang.Runnable,boolean)" resolve="runRebuildAction" />
            <node concept="2ShNRf" id="6abqMjjLMh$" role="37wK5m">
              <node concept="1pGfFk" id="6abqMjjM2XO" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                <node concept="2OqwBi" id="6abqMjjMegI" role="37wK5m">
                  <node concept="2OqwBi" id="6abqMjjMcZJ" role="2Oq$k0">
                    <node concept="37vLTw" id="6abqMjjMbwa" role="2Oq$k0">
                      <ref role="3cqZAo" node="IYmOvnHR3I" resolve="myDebugSession" />
                    </node>
                    <node concept="liA8E" id="6abqMjjMdXu" role="2OqNvi">
                      <ref role="37wK5l" to="1l1h:OqYxEjSoee" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6abqMjjMf2l" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="37vLTw" id="6abqMjjMa9m" role="37wK5m">
                  <ref role="3cqZAo" node="6abqMjjLGMi" resolve="rebuildAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6abqMjjLGMp" role="37wK5m">
              <ref role="3cqZAo" node="6abqMjjLGMk" resolve="saveExpansion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6abqMjjLGMn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6abqMjjLIZR" role="jymVt" />
    <node concept="3clFb_" id="2Z8pu54X51E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createPopupActionGroup" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2Z8pu54X51F" role="1B3o_S" />
      <node concept="3uibUv" id="2Z8pu54X51H" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="37vLTG" id="2Z8pu54X51I" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2Z8pu54X51J" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2Z8pu54X51K" role="3clF47">
        <node concept="3cpWs8" id="5g1gmY9ca4$" role="3cqZAp">
          <node concept="3cpWsn" id="5g1gmY9ca4_" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3uibUv" id="5g1gmY9ca4A" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
            </node>
            <node concept="2ShNRf" id="5g1gmY9ca4B" role="33vP2m">
              <node concept="1pGfFk" id="5g1gmY9ca4C" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5g1gmY9ca4D" role="3cqZAp">
          <node concept="3clFbS" id="5g1gmY9ca4E" role="3clFbx">
            <node concept="3clFbF" id="5g1gmY9ca4F" role="3cqZAp">
              <node concept="2OqwBi" id="5g1gmY9ca4G" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTyng" role="2Oq$k0">
                  <ref role="3cqZAo" node="5g1gmY9ca4_" resolve="group" />
                </node>
                <node concept="liA8E" id="5g1gmY9ca4I" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
                  <node concept="37vLTw" id="2BHiRxeuSsT" role="37wK5m">
                    <ref role="3cqZAo" node="1Uivi6F0KDz" resolve="myActionGroup" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5g1gmY9ca4K" role="3cqZAp">
              <node concept="2OqwBi" id="5g1gmY9ca4L" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTvGM" role="2Oq$k0">
                  <ref role="3cqZAo" node="5g1gmY9ca4_" resolve="group" />
                </node>
                <node concept="liA8E" id="5g1gmY9ca4N" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
                  <node concept="2ShNRf" id="5g1gmY9ca4O" role="37wK5m">
                    <node concept="1pGfFk" id="5g1gmY9ca4P" role="2ShVmc">
                      <ref role="37wK5l" to="qkt:~Separator.&lt;init&gt;()" resolve="Separator" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5g1gmY9ca4Q" role="3clFbw">
            <node concept="10Nm6u" id="5g1gmY9ca4R" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuNXU" role="3uHU7B">
              <ref role="3cqZAo" node="1Uivi6F0KDz" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5g1gmY9ca4T" role="3cqZAp">
          <node concept="2OqwBi" id="5g1gmY9ca4U" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$jE" role="2Oq$k0">
              <ref role="3cqZAo" node="5g1gmY9ca4_" resolve="group" />
            </node>
            <node concept="liA8E" id="5g1gmY9ca4W" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="3$FqnI" id="5g1gmY9ca4X" role="37wK5m">
                <ref role="3$FqnG" to="1rri:7vO$jtdT3xe" resolve="AbstractWatchableNodeActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5g1gmY9ca4Y" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTze9" role="3cqZAk">
            <ref role="3cqZAo" node="5g1gmY9ca4_" resolve="group" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Z8pu54X51L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="405E4eai27D" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="405E4eai27E" role="1B3o_S" />
      <node concept="3cqZAl" id="405E4eai27F" role="3clF45" />
      <node concept="3clFbS" id="405E4eai27G" role="3clF47">
        <node concept="1HWtB8" id="6abqMjjNxbB" role="3cqZAp">
          <node concept="37vLTw" id="6abqMjjO2tK" role="1HWFw0">
            <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
          </node>
          <node concept="3clFbS" id="6abqMjjNxbF" role="1HWHxc">
            <node concept="3clFbF" id="405E4eai27L" role="3cqZAp">
              <node concept="2OqwBi" id="405E4eai27N" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeukH8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIgT5" resolve="myStates" />
                </node>
                <node concept="1yHZxX" id="405E4eai27R" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vsimuh6uOE" role="3cqZAp">
          <node concept="2OqwBi" id="7vsimuh6uOG" role="3clFbG">
            <node concept="Xjq3P" id="7vsimuh6uOF" role="2Oq$k0" />
            <node concept="liA8E" id="7vsimuh6uOK" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="405E4eai27I" role="3cqZAp">
          <node concept="3nyPlj" id="405E4eai27J" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.dispose()" resolve="dispose" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="405E4eai27H" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5TD_r9wO_hC" role="jymVt">
      <property role="TrG5h" value="findSelectedNode" />
      <node concept="3clFbS" id="5TD_r9wO_hE" role="3clF47">
        <node concept="3cpWs8" id="5TD_r9wO_hP" role="3cqZAp">
          <node concept="3cpWsn" id="5TD_r9wO_hQ" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="5TD_r9wO_hR" role="1tU5fm">
              <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz8Zu" role="33vP2m">
              <ref role="37wK5l" to="dxuu:~JTree.getSelectionPath()" resolve="getSelectionPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5TD_r9wO_hT" role="3cqZAp">
          <node concept="3clFbS" id="5TD_r9wO_hU" role="3clFbx">
            <node concept="3cpWs8" id="5TD_r9wO_hV" role="3cqZAp">
              <node concept="3cpWsn" id="5TD_r9wO_hW" role="3cpWs9">
                <property role="TrG5h" value="component" />
                <node concept="3uibUv" id="5TD_r9wO_hX" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="5TD_r9wO_hY" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTxcM" role="2Oq$k0">
                    <ref role="3cqZAo" node="5TD_r9wO_hQ" resolve="path" />
                  </node>
                  <node concept="liA8E" id="5TD_r9wO_i0" role="2OqNvi">
                    <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5TD_r9wO_i1" role="3cqZAp">
              <node concept="3clFbS" id="5TD_r9wO_i2" role="3clFbx">
                <node concept="3cpWs6" id="5TD_r9wO_i3" role="3cqZAp">
                  <node concept="10QFUN" id="5TD_r9wO_i6" role="3cqZAk">
                    <node concept="37vLTw" id="3GM_nagTuqb" role="10QFUP">
                      <ref role="3cqZAo" node="5TD_r9wO_hW" resolve="component" />
                    </node>
                    <node concept="3uibUv" id="5TD_r9wOFBU" role="10QFUM">
                      <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="5TD_r9wO_ia" role="3clFbw">
                <node concept="3uibUv" id="5TD_r9wOFNZ" role="2ZW6by">
                  <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                </node>
                <node concept="37vLTw" id="3GM_nagTAdF" role="2ZW6bz">
                  <ref role="3cqZAo" node="5TD_r9wO_hW" resolve="component" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5TD_r9wO_id" role="3clFbw">
            <node concept="10Nm6u" id="5TD_r9wO_ie" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTBuH" role="3uHU7B">
              <ref role="3cqZAo" node="5TD_r9wO_hQ" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5TD_r9wO_j8" role="3cqZAp">
          <node concept="10Nm6u" id="5TD_r9wOB9a" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5TD_r9wO_i_" role="1B3o_S" />
      <node concept="2AHcQZ" id="5TD_r9wOB9b" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="5TD_r9wOFBJ" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
    </node>
    <node concept="3clFb_" id="6FFoA$ya02c" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="6FFoA$ya02d" role="1B3o_S" />
      <node concept="3uibUv" id="6FFoA$ya02e" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="6FFoA$ya02f" role="3clF46">
        <property role="TrG5h" value="dataId" />
        <node concept="17QB3L" id="6FFoA$ya02m" role="1tU5fm" />
        <node concept="2AHcQZ" id="6FFoA$ya02h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6FFoA$ya02i" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6FFoA$ya02j" role="3clF47">
        <node concept="3clFbJ" id="6FFoA$ya02n" role="3cqZAp">
          <node concept="3eNFk2" id="IYmOvnHKjX" role="3eNLev">
            <node concept="3clFbS" id="IYmOvnHKjZ" role="3eOfB_">
              <node concept="3cpWs6" id="IYmOvnHSeK" role="3cqZAp">
                <node concept="37vLTw" id="IYmOvnHSfo" role="3cqZAk">
                  <ref role="3cqZAo" node="IYmOvnHR3I" resolve="myDebugSession" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IYmOvnHKlB" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxglWMv" role="2Oq$k0">
                <ref role="3cqZAo" node="6FFoA$ya02f" resolve="dataId" />
              </node>
              <node concept="liA8E" id="IYmOvnHKlD" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="IYmOvnHKlE" role="37wK5m">
                  <node concept="10M0yZ" id="IYmOvnHKlF" role="2Oq$k0">
                    <ref role="1PxDUh" node="6ra8WUbIhqG" resolve="EvaluationUi" />
                    <ref role="3cqZAo" node="IYmOvnHhVX" resolve="DEBUG_SESSION" />
                  </node>
                  <node concept="liA8E" id="IYmOvnHKlG" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6FFoA$ya02r" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglmyM" role="2Oq$k0">
              <ref role="3cqZAo" node="6FFoA$ya02f" resolve="dataId" />
            </node>
            <node concept="liA8E" id="6FFoA$ya02v" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="6FFoA$ya02x" role="37wK5m">
                <node concept="10M0yZ" id="3liY2UJHFq" role="2Oq$k0">
                  <ref role="1PxDUh" node="6ra8WUbIhqG" resolve="EvaluationUi" />
                  <ref role="3cqZAo" node="3liY2UJHFk" resolve="EVALUATION_CONTAINER" />
                </node>
                <node concept="liA8E" id="6FFoA$ya02_" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6FFoA$ya02p" role="3clFbx">
            <node concept="3cpWs8" id="5TD_r9wOB9s" role="3cqZAp">
              <node concept="3cpWsn" id="5TD_r9wOB9t" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="5TD_r9wOFSo" role="1tU5fm">
                  <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                </node>
                <node concept="1rXfSq" id="4hiugqyyZvH" role="33vP2m">
                  <ref role="37wK5l" node="5TD_r9wO_hC" resolve="findSelectedNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5TD_r9wOB9y" role="3cqZAp">
              <node concept="3clFbS" id="5TD_r9wOB9z" role="3clFbx">
                <node concept="3cpWs6" id="5TD_r9wOB9F" role="3cqZAp">
                  <node concept="2OqwBi" id="5TD_r9wOFSh" role="3cqZAk">
                    <node concept="1eOMI4" id="5TD_r9wOFRQ" role="2Oq$k0">
                      <node concept="10QFUN" id="5TD_r9wOFRT" role="1eOMHV">
                        <node concept="3uibUv" id="5TD_r9wOFRW" role="10QFUM">
                          <ref role="3uigEE" node="6FFoA$ya05m" resolve="EvaluationTree.EvaluationModelNode" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTwSN" role="10QFUP">
                          <ref role="3cqZAo" node="5TD_r9wOB9t" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5TD_r9wOFSn" role="2OqNvi">
                      <ref role="37wK5l" node="6FFoA$ya05o" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="5TD_r9wOFRq" role="3clFbw">
                <node concept="2ZW3vV" id="5TD_r9wOFRu" role="3uHU7w">
                  <node concept="3uibUv" id="5TD_r9wOFRx" role="2ZW6by">
                    <ref role="3uigEE" node="6FFoA$ya05m" resolve="EvaluationTree.EvaluationModelNode" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrEG" role="2ZW6bz">
                    <ref role="3cqZAo" node="5TD_r9wOB9t" resolve="node" />
                  </node>
                </node>
                <node concept="3y3z36" id="5TD_r9wOB9B" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagT_4B" role="3uHU7B">
                    <ref role="3cqZAo" node="5TD_r9wOB9t" resolve="node" />
                  </node>
                  <node concept="10Nm6u" id="5TD_r9wOB9E" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7YrwiUw1M7q" role="3eNLev">
            <node concept="2OqwBi" id="7YrwiUw1M86" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxgm7yt" role="2Oq$k0">
                <ref role="3cqZAo" node="6FFoA$ya02f" resolve="dataId" />
              </node>
              <node concept="liA8E" id="7YrwiUw1M8c" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="7YrwiUw1M8B" role="37wK5m">
                  <node concept="10M0yZ" id="7YrwiUw1M8i" role="2Oq$k0">
                    <ref role="1PxDUh" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
                    <ref role="3cqZAo" to="choc:ndZCfAIV0g" resolve="MPS_DEBUGGER_VALUE" />
                  </node>
                  <node concept="liA8E" id="7YrwiUw1M8H" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7YrwiUw1M7s" role="3eOfB_">
              <node concept="3cpWs8" id="5TD_r9wOBam" role="3cqZAp">
                <node concept="3cpWsn" id="5TD_r9wOBan" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3uibUv" id="5TD_r9wOFR5" role="1tU5fm">
                    <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                  </node>
                  <node concept="1rXfSq" id="4hiugqyyIv6" role="33vP2m">
                    <ref role="37wK5l" node="5TD_r9wO_hC" resolve="findSelectedNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5TD_r9wOBar" role="3cqZAp">
                <node concept="3clFbS" id="5TD_r9wOBas" role="3clFbx">
                  <node concept="3cpWs6" id="5TD_r9wOBat" role="3cqZAp">
                    <node concept="2OqwBi" id="5TD_r9wOFQd" role="3cqZAk">
                      <node concept="1eOMI4" id="5TD_r9wOFPM" role="2Oq$k0">
                        <node concept="10QFUN" id="5TD_r9wOFPP" role="1eOMHV">
                          <node concept="3uibUv" id="5TD_r9wOFPS" role="10QFUM">
                            <ref role="3uigEE" node="6FFoA$ya0gT" resolve="EvaluationTree.ResultState.MyWatchableNode" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTu85" role="10QFUP">
                            <ref role="3cqZAo" node="5TD_r9wOBan" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5TD_r9wOFQj" role="2OqNvi">
                        <ref role="37wK5l" to="choc:3SnNvqCbxLb" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="5TD_r9wOFQD" role="3clFbw">
                  <node concept="2ZW3vV" id="5TD_r9wOFR1" role="3uHU7w">
                    <node concept="3uibUv" id="5TD_r9wOFR4" role="2ZW6by">
                      <ref role="3uigEE" node="6FFoA$ya0gT" resolve="EvaluationTree.ResultState.MyWatchableNode" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTzCR" role="2ZW6bz">
                      <ref role="3cqZAo" node="5TD_r9wOBan" resolve="node" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="5TD_r9wOBax" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTuno" role="3uHU7B">
                      <ref role="3cqZAo" node="5TD_r9wOBan" resolve="node" />
                    </node>
                    <node concept="10Nm6u" id="5TD_r9wOBay" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5TD_r9wO_gm" role="3eNLev">
            <node concept="3clFbS" id="5TD_r9wO_go" role="3eOfB_">
              <node concept="3cpWs8" id="5TD_r9wODPt" role="3cqZAp">
                <node concept="3cpWsn" id="5TD_r9wODPu" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3uibUv" id="5TD_r9wOFOa" role="1tU5fm">
                    <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                  </node>
                  <node concept="1rXfSq" id="4hiugqyzbPj" role="33vP2m">
                    <ref role="37wK5l" node="5TD_r9wO_hC" resolve="findSelectedNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5TD_r9wODP$" role="3cqZAp">
                <node concept="3clFbS" id="5TD_r9wODP_" role="3clFbx">
                  <node concept="3cpWs6" id="5TD_r9wODQ1" role="3cqZAp">
                    <node concept="2OqwBi" id="5TD_r9wOFPn" role="3cqZAk">
                      <node concept="1eOMI4" id="5TD_r9wOFOV" role="2Oq$k0">
                        <node concept="10QFUN" id="5TD_r9wOFOZ" role="1eOMHV">
                          <node concept="3uibUv" id="5TD_r9wOFP2" role="10QFUM">
                            <ref role="3uigEE" node="6ra8WUbIheO" resolve="EvaluationTree.ErrorTreeNode" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTrDO" role="10QFUP">
                            <ref role="3cqZAo" node="5TD_r9wODPu" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5TD_r9wOFPt" role="2OqNvi">
                        <ref role="37wK5l" node="5TD_r9wO_aK" resolve="getThrowable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="5TD_r9wOFOv" role="3clFbw">
                  <node concept="2ZW3vV" id="5TD_r9wOFOz" role="3uHU7w">
                    <node concept="3uibUv" id="5TD_r9wOFOA" role="2ZW6by">
                      <ref role="3uigEE" node="6ra8WUbIheO" resolve="EvaluationTree.ErrorTreeNode" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTzL_" role="2ZW6bz">
                      <ref role="3cqZAo" node="5TD_r9wODPu" resolve="node" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="5TD_r9wODPX" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagT$FH" role="3uHU7B">
                      <ref role="3cqZAo" node="5TD_r9wODPu" resolve="node" />
                    </node>
                    <node concept="10Nm6u" id="5TD_r9wODQ0" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5TD_r9wO_h7" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxgkZ0T" role="2Oq$k0">
                <ref role="3cqZAo" node="6FFoA$ya02f" resolve="dataId" />
              </node>
              <node concept="liA8E" id="5TD_r9wO_hd" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="5TD_r9wO_hy" role="37wK5m">
                  <node concept="10M0yZ" id="4fC4L_vjdjB" role="2Oq$k0">
                    <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                    <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.EXCEPTION" resolve="EXCEPTION" />
                  </node>
                  <node concept="liA8E" id="5TD_r9wO_hB" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6FFoA$ya02S" role="3cqZAp">
          <node concept="10Nm6u" id="6FFoA$ya02U" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SbK1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1Uivi6F0KDY" role="jymVt">
      <property role="TrG5h" value="setActionGroup" />
      <node concept="3cqZAl" id="1Uivi6F0KDZ" role="3clF45" />
      <node concept="3clFbS" id="1Uivi6F0KE0" role="3clF47">
        <node concept="3clFbF" id="1Uivi6F0KEG" role="3cqZAp">
          <node concept="37vLTI" id="1Uivi6F0KF2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmbAb" role="37vLTx">
              <ref role="3cqZAo" node="1Uivi6F0KEw" resolve="group" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuOmM" role="37vLTJ">
              <ref role="3cqZAo" node="1Uivi6F0KDz" resolve="myActionGroup" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Uivi6F0KEl" role="1B3o_S" />
      <node concept="37vLTG" id="1Uivi6F0KEw" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="1Uivi6F0KEx" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2xODT92Zh40" role="jymVt">
      <property role="TrG5h" value="getStackTrace" />
      <property role="DiZV1" value="false" />
      <node concept="10Q1$e" id="2xODT92Zh3B" role="3clF45">
        <node concept="17QB3L" id="2xODT92Zh3C" role="10Q1$1" />
      </node>
      <node concept="37vLTG" id="2xODT92Zh3D" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="2xODT92Zh3E" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3clFbS" id="2xODT92Zh3F" role="3clF47">
        <node concept="3cpWs8" id="2xODT92Zh3G" role="3cqZAp">
          <node concept="3cpWsn" id="2xODT92Zh3H" role="3cpWs9">
            <property role="TrG5h" value="writer" />
            <node concept="3uibUv" id="2xODT92Zh3I" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~StringWriter" resolve="StringWriter" />
            </node>
            <node concept="2ShNRf" id="2xODT92Zh3J" role="33vP2m">
              <node concept="1pGfFk" id="2xODT92Zh3K" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~StringWriter.&lt;init&gt;()" resolve="StringWriter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xODT92Zh3L" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92Zh3M" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglVa0" role="2Oq$k0">
              <ref role="3cqZAo" node="2xODT92Zh3D" resolve="t" />
            </node>
            <node concept="liA8E" id="2xODT92Zh3O" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintWriter)" resolve="printStackTrace" />
              <node concept="2ShNRf" id="2xODT92Zh3P" role="37wK5m">
                <node concept="1pGfFk" id="2xODT92Zh3Q" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~PrintWriter.&lt;init&gt;(java.io.Writer)" resolve="PrintWriter" />
                  <node concept="37vLTw" id="3GM_nagTxIV" role="37wK5m">
                    <ref role="3cqZAo" node="2xODT92Zh3H" resolve="writer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xODT92Zh3S" role="3cqZAp">
          <node concept="2OqwBi" id="2xODT92Zh3T" role="3clFbG">
            <node concept="2OqwBi" id="2xODT92Zh3U" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagT_t9" role="2Oq$k0">
                <ref role="3cqZAo" node="2xODT92Zh3H" resolve="writer" />
              </node>
              <node concept="liA8E" id="2xODT92Zh3W" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~StringWriter.toString()" resolve="toString" />
              </node>
            </node>
            <node concept="liA8E" id="2xODT92Zh3X" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
              <node concept="Xl_RD" id="2xODT92Zh3Y" role="37wK5m">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2xODT92Zh43" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="6ra8WUbIh2$" role="jymVt">
      <property role="TrG5h" value="EvaluationState" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="true" />
      <node concept="3Tm6S6" id="6ra8WUbIh2F" role="1B3o_S" />
      <node concept="3clFbW" id="6ra8WUbIh2G" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIh2H" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh2I" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh2J" role="3clF47" />
      </node>
      <node concept="3clFb_" id="6ra8WUbIh2_" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="rebuild" />
        <node concept="3cqZAl" id="6ra8WUbIh2A" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh2B" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh2C" role="3clF47" />
        <node concept="37vLTG" id="6ra8WUbIh2D" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="3uibUv" id="6ra8WUbIh2E" role="1tU5fm">
            <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya0hH" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvn_qHC" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3HP615" id="6FFoA$ya05m" role="jymVt">
      <property role="TrG5h" value="EvaluationModelNode" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="6FFoA$ya05n" role="1B3o_S" />
      <node concept="3clFb_" id="6FFoA$ya05o" role="jymVt">
        <property role="TrG5h" value="getModel" />
        <node concept="3uibUv" id="IYmOvnFBy3" role="3clF45">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="3Tm1VV" id="6FFoA$ya05q" role="1B3o_S" />
        <node concept="3clFbS" id="6FFoA$ya05r" role="3clF47" />
      </node>
    </node>
    <node concept="312cEu" id="6ra8WUbIh2K" role="jymVt">
      <property role="TrG5h" value="InitializedState" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm6S6" id="6ra8WUbIh2L" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIh2Q" role="1zkMxy">
        <ref role="3uigEE" node="6ra8WUbIh2$" resolve="EvaluationTree.EvaluationState" />
      </node>
      <node concept="3clFbW" id="6ra8WUbIh2M" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIh2N" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh2O" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh2P" role="3clF47" />
      </node>
      <node concept="3clFb_" id="6ra8WUbIh2R" role="jymVt">
        <property role="TrG5h" value="rebuild" />
        <node concept="3cqZAl" id="6ra8WUbIh2S" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh2T" role="1B3o_S" />
        <node concept="37vLTG" id="6ra8WUbIh2U" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="3uibUv" id="6ra8WUbIh2V" role="1tU5fm">
            <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya0l0" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvnFC7s" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
        <node concept="3clFbS" id="6ra8WUbIh2W" role="3clF47">
          <node concept="3clFbF" id="3ALd6GgNBLW" role="3cqZAp">
            <node concept="2OqwBi" id="3ALd6GgNBLY" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmam4" role="2Oq$k0">
                <ref role="3cqZAo" node="6ra8WUbIh2U" resolve="rootTreeNode" />
              </node>
              <node concept="liA8E" id="3ALd6GgNCub" role="2OqNvi">
                <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                <node concept="2ShNRf" id="3ALd6GgNCuc" role="37wK5m">
                  <node concept="1pGfFk" id="3$HGEhSxOmC" role="2ShVmc">
                    <ref role="37wK5l" node="3$HGEhSxOmh" resolve="EvaluationTree.InitialTreeNode" />
                    <node concept="37vLTw" id="2BHiRxgm7d_" role="37wK5m">
                      <ref role="3cqZAo" node="6FFoA$ya0l0" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3$HGEhSxOcu" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXocKA" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXocKB" role="1PaTwD">
                <property role="3oM_SC" value="todo?" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_S61v" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6ra8WUbIh2Z" role="jymVt">
      <property role="TrG5h" value="EvaluationInProgressState" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm6S6" id="6ra8WUbIh30" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIh35" role="1zkMxy">
        <ref role="3uigEE" node="6ra8WUbIh2$" resolve="EvaluationTree.EvaluationState" />
      </node>
      <node concept="3clFbW" id="6ra8WUbIh31" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIh32" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh33" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh34" role="3clF47" />
      </node>
      <node concept="3clFb_" id="6ra8WUbIh36" role="jymVt">
        <property role="TrG5h" value="rebuild" />
        <node concept="3cqZAl" id="6ra8WUbIh37" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh38" role="1B3o_S" />
        <node concept="37vLTG" id="6ra8WUbIh39" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="3uibUv" id="6ra8WUbIh3a" role="1tU5fm">
            <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya0hK" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvn_qLm" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
        <node concept="3clFbS" id="6ra8WUbIh3b" role="3clF47">
          <node concept="3clFbF" id="6ra8WUbIh3c" role="3cqZAp">
            <node concept="2OqwBi" id="6ra8WUbIh3d" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmCVO" role="2Oq$k0">
                <ref role="3cqZAo" node="6ra8WUbIh39" resolve="rootTreeNode" />
              </node>
              <node concept="liA8E" id="6ra8WUbIh3f" role="2OqNvi">
                <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                <node concept="2ShNRf" id="6ra8WUbIh3g" role="37wK5m">
                  <node concept="1pGfFk" id="6ra8WUbIh3h" role="2ShVmc">
                    <ref role="37wK5l" node="6ra8WUbIhi5" resolve="EvaluationTree.EvaluatingTreeNode" />
                    <node concept="37vLTw" id="2BHiRxghei7" role="37wK5m">
                      <ref role="3cqZAo" node="6FFoA$ya0hK" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_Se4B" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6ra8WUbIh3i" role="jymVt">
      <property role="TrG5h" value="ResultState" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="6ra8WUbIh3u" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIh3P" role="1zkMxy">
        <ref role="3uigEE" node="6ra8WUbIh2$" resolve="EvaluationTree.EvaluationState" />
      </node>
      <node concept="312cEg" id="6ra8WUbIh3j" role="jymVt">
        <property role="TrG5h" value="myValue" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="30gAWAabgHX" role="1tU5fm">
          <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
        </node>
        <node concept="3Tm6S6" id="6ra8WUbIh3l" role="1B3o_S" />
        <node concept="2AHcQZ" id="6ra8WUbIh3m" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="312cEg" id="6ra8WUbIh3r" role="jymVt">
        <property role="TrG5h" value="myThreadReference" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6ra8WUbIh3s" role="1B3o_S" />
        <node concept="3uibUv" id="6ra8WUbIh3t" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
      </node>
      <node concept="312cEg" id="8gn1UOZjse" role="jymVt">
        <property role="TrG5h" value="myPresentation" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="8gn1UOZjsf" role="1B3o_S" />
        <node concept="17QB3L" id="8gn1UOZjsh" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="xYkkCYnhvU" role="jymVt">
        <property role="TrG5h" value="myCachedWatchable" />
        <node concept="3Tm6S6" id="xYkkCYnhvV" role="1B3o_S" />
        <node concept="3uibUv" id="2g7jLxixpL7" role="1tU5fm">
          <ref role="3uigEE" to="2s0o:2Y$mRnICmDj" resolve="CalculatedWatchable" />
        </node>
      </node>
      <node concept="3clFbW" id="6ra8WUbIh3v" role="jymVt">
        <node concept="37vLTG" id="8gn1UOZjsa" role="3clF46">
          <property role="TrG5h" value="presentation" />
          <node concept="17QB3L" id="8gn1UOZjsd" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6ra8WUbIh3w" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="30gAWAabgqp" role="1tU5fm">
            <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
          </node>
        </node>
        <node concept="37vLTG" id="6ra8WUbIh3$" role="3clF46">
          <property role="TrG5h" value="threadReference" />
          <node concept="3uibUv" id="6ra8WUbIh3_" role="1tU5fm">
            <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
          </node>
        </node>
        <node concept="3cqZAl" id="6ra8WUbIh3A" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh3B" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh3C" role="3clF47">
          <node concept="3clFbF" id="8gn1UOZjsj" role="3cqZAp">
            <node concept="37vLTI" id="8gn1UOZjsl" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglQys" role="37vLTx">
                <ref role="3cqZAo" node="8gn1UOZjsa" resolve="presentation" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuqSP" role="37vLTJ">
                <ref role="3cqZAo" node="8gn1UOZjse" resolve="myPresentation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ra8WUbIh3D" role="3cqZAp">
            <node concept="37vLTI" id="6ra8WUbIh3E" role="3clFbG">
              <node concept="37vLTw" id="30gAWAabgV1" role="37vLTJ">
                <ref role="3cqZAo" node="6ra8WUbIh3j" resolve="myValue" />
              </node>
              <node concept="37vLTw" id="2BHiRxglI8P" role="37vLTx">
                <ref role="3cqZAo" node="6ra8WUbIh3w" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ra8WUbIh3L" role="3cqZAp">
            <node concept="37vLTI" id="6ra8WUbIh3M" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxghf_O" role="37vLTx">
                <ref role="3cqZAo" node="6ra8WUbIh3$" resolve="threadReference" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuoP5" role="37vLTJ">
                <ref role="3cqZAo" node="6ra8WUbIh3r" resolve="myThreadReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6ra8WUbIh3Q" role="jymVt">
        <property role="TrG5h" value="rebuild" />
        <node concept="3cqZAl" id="6ra8WUbIh3R" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh3S" role="1B3o_S" />
        <node concept="37vLTG" id="6ra8WUbIh3T" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="3uibUv" id="6ra8WUbIh3U" role="1tU5fm">
            <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya0hP" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvn_qOY" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
        <node concept="3clFbS" id="6ra8WUbIh3V" role="3clF47">
          <node concept="3cpWs8" id="7sR4VgSGzWQ" role="3cqZAp">
            <node concept="3cpWsn" id="7sR4VgSGzWR" role="3cpWs9">
              <property role="TrG5h" value="canEvalaute" />
              <property role="3TUv4t" value="true" />
              <node concept="10P_77" id="7sR4VgSGzWS" role="1tU5fm" />
              <node concept="2OqwBi" id="5L0tGOoztUo" role="33vP2m">
                <node concept="2OqwBi" id="7sR4VgSGzWT" role="2Oq$k0">
                  <node concept="liA8E" id="7sR4VgSGzWX" role="2OqNvi">
                    <ref role="37wK5l" to="d822:3L_P6qKH8f1" resolve="getEvaluationProvider" />
                  </node>
                  <node concept="37vLTw" id="IYmOvnJ40A" role="2Oq$k0">
                    <ref role="3cqZAo" node="IYmOvnHR3I" resolve="myDebugSession" />
                  </node>
                </node>
                <node concept="liA8E" id="5L0tGOoztUs" role="2OqNvi">
                  <ref role="37wK5l" to="anh2:_hR$3XCoWm" resolve="canEvaluate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="xYkkCYnnET" role="3cqZAp">
            <node concept="3clFbS" id="xYkkCYnnEU" role="3clFbx">
              <node concept="3clFbF" id="xYkkCYnnF4" role="3cqZAp">
                <node concept="37vLTI" id="xYkkCYnnF6" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeukoT" role="37vLTJ">
                    <ref role="3cqZAo" node="xYkkCYnhvU" resolve="myCachedWatchable" />
                  </node>
                  <node concept="2ShNRf" id="xYkkCYnnF9" role="37vLTx">
                    <node concept="1pGfFk" id="xYkkCYnnFa" role="2ShVmc">
                      <ref role="37wK5l" to="2s0o:2Y$mRnICmDt" resolve="CalculatedWatchable" />
                      <node concept="37vLTw" id="2BHiRxeuu0Q" role="37wK5m">
                        <ref role="3cqZAo" node="8gn1UOZjse" resolve="myPresentation" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxeul$U" role="37wK5m">
                        <ref role="3cqZAo" node="6ra8WUbIh3j" resolve="myValue" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxeuXeD" role="37wK5m">
                        <ref role="3cqZAo" node="6ra8WUbIh3r" resolve="myThreadReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTwEb" role="3clFbw">
              <ref role="3cqZAo" node="7sR4VgSGzWR" resolve="canEvalaute" />
            </node>
          </node>
          <node concept="3clFbJ" id="xYkkCYnnFi" role="3cqZAp">
            <node concept="3clFbS" id="xYkkCYnnFj" role="3clFbx">
              <node concept="3cpWs8" id="xYkkCYnnFs" role="3cqZAp">
                <node concept="3cpWsn" id="xYkkCYnnFt" role="3cpWs9">
                  <property role="TrG5h" value="watchableNode" />
                  <node concept="3uibUv" id="16Zg0snKUKx" role="1tU5fm">
                    <ref role="3uigEE" to="choc:3SnNvqCbxJi" resolve="WatchableNode" />
                  </node>
                  <node concept="2ShNRf" id="5L0tGOozvc2" role="33vP2m">
                    <node concept="YeOm9" id="5L0tGOozvc8" role="2ShVmc">
                      <node concept="1Y3b0j" id="5L0tGOozvc9" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" node="6FFoA$ya0gT" resolve="EvaluationTree.ResultState.MyWatchableNode" />
                        <ref role="37wK5l" node="6FFoA$ya0gV" resolve="EvaluationTree.ResultState.MyWatchableNode" />
                        <node concept="3Tm1VV" id="5L0tGOozvca" role="1B3o_S" />
                        <node concept="37vLTw" id="2BHiRxgm9em" role="37wK5m">
                          <ref role="3cqZAo" node="6FFoA$ya0hP" resolve="model" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxeuhhd" role="37wK5m">
                          <ref role="3cqZAo" node="xYkkCYnhvU" resolve="myCachedWatchable" />
                        </node>
                        <node concept="3clFb_" id="5L0tGOozvcK" role="jymVt">
                          <property role="TrG5h" value="isLeaf" />
                          <node concept="3Tm1VV" id="5L0tGOozvcL" role="1B3o_S" />
                          <node concept="10P_77" id="5L0tGOozvcM" role="3clF45" />
                          <node concept="3clFbS" id="5L0tGOozvcN" role="3clF47">
                            <node concept="3clFbJ" id="5L0tGOozvcR" role="3cqZAp">
                              <node concept="3clFbS" id="5L0tGOozvcS" role="3clFbx">
                                <node concept="3cpWs6" id="5L0tGOozvcT" role="3cqZAp">
                                  <node concept="3nyPlj" id="5L0tGOozvcU" role="3cqZAk">
                                    <ref role="37wK5l" to="choc:3SnNvqCbxKT" resolve="isLeaf" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="3GM_nagTzuo" role="3clFbw">
                                <ref role="3cqZAo" node="7sR4VgSGzWR" resolve="canEvalaute" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="5L0tGOozvcW" role="3cqZAp">
                              <node concept="3clFbT" id="5L0tGOozvcX" role="3clFbG">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="5L0tGOozvcO" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="xYkkCYnnF$" role="3cqZAp">
                <node concept="2OqwBi" id="xYkkCYnnF_" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxgmwWp" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ra8WUbIh3T" resolve="rootTreeNode" />
                  </node>
                  <node concept="liA8E" id="xYkkCYnnFB" role="2OqNvi">
                    <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                    <node concept="37vLTw" id="3GM_nagTx6X" role="37wK5m">
                      <ref role="3cqZAo" node="xYkkCYnnFt" resolve="watchableNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="xYkkCYnnFn" role="3clFbw">
              <node concept="10Nm6u" id="xYkkCYnnFq" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuyQy" role="3uHU7B">
                <ref role="3cqZAo" node="xYkkCYnhvU" resolve="myCachedWatchable" />
              </node>
            </node>
            <node concept="9aQIb" id="xYkkCYnnFD" role="9aQIa">
              <node concept="3clFbS" id="xYkkCYnnFE" role="9aQI4">
                <node concept="3clFbF" id="xYkkCYnnFF" role="3cqZAp">
                  <node concept="2OqwBi" id="xYkkCYnnFH" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglHIu" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ra8WUbIh3T" resolve="rootTreeNode" />
                    </node>
                    <node concept="liA8E" id="xYkkCYnonU" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="2ShNRf" id="5L0tGOozvbX" role="37wK5m">
                        <node concept="1pGfFk" id="5L0tGOozvbZ" role="2ShVmc">
                          <ref role="37wK5l" node="3$HGEhSxOmh" resolve="EvaluationTree.InitialTreeNode" />
                          <node concept="37vLTw" id="2BHiRxgm9Hx" role="37wK5m">
                            <ref role="3cqZAo" node="6FFoA$ya0hP" resolve="model" />
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
        <node concept="2AHcQZ" id="3tYsUK_U_bv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="312cEu" id="6FFoA$ya0gT" role="jymVt">
        <property role="TrG5h" value="MyWatchableNode" />
        <property role="2bfB8j" value="true" />
        <node concept="3Tm6S6" id="6FFoA$ya0gZ" role="1B3o_S" />
        <node concept="3uibUv" id="16Zg0snKUKB" role="1zkMxy">
          <ref role="3uigEE" to="choc:3SnNvqCbxJi" resolve="WatchableNode" />
        </node>
        <node concept="3uibUv" id="6FFoA$ya0hh" role="EKbjA">
          <ref role="3uigEE" node="6FFoA$ya05m" resolve="EvaluationTree.EvaluationModelNode" />
        </node>
        <node concept="312cEg" id="6FFoA$ya0ho" role="jymVt">
          <property role="TrG5h" value="myModel" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="IYmOvnGaEK" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
          <node concept="3Tm6S6" id="6FFoA$ya0hp" role="1B3o_S" />
        </node>
        <node concept="3clFbW" id="6FFoA$ya0gV" role="jymVt">
          <node concept="3cqZAl" id="6FFoA$ya0gW" role="3clF45" />
          <node concept="3Tm1VV" id="6FFoA$ya0gX" role="1B3o_S" />
          <node concept="3clFbS" id="6FFoA$ya0gY" role="3clF47">
            <node concept="XkiVB" id="16Zg0snKUKD" role="3cqZAp">
              <ref role="37wK5l" to="choc:3SnNvqCbxJs" resolve="WatchableNode" />
              <node concept="37vLTw" id="2BHiRxgkWor" role="37wK5m">
                <ref role="3cqZAo" node="6FFoA$ya0h1" resolve="watchable" />
              </node>
              <node concept="2OqwBi" id="IYmOvnJvRO" role="37wK5m">
                <node concept="liA8E" id="IYmOvnJxoD" role="2OqNvi">
                  <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                </node>
                <node concept="37vLTw" id="IYmOvnJvDU" role="2Oq$k0">
                  <ref role="3cqZAo" node="IYmOvnHR3I" resolve="myDebugSession" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6FFoA$ya0ht" role="3cqZAp">
              <node concept="37vLTI" id="6FFoA$ya0hv" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgmxJa" role="37vLTx">
                  <ref role="3cqZAo" node="6FFoA$ya0hj" resolve="model" />
                </node>
                <node concept="37vLTw" id="2BHiRxeunnu" role="37vLTJ">
                  <ref role="3cqZAo" node="6FFoA$ya0ho" resolve="myModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="6FFoA$ya0hj" role="3clF46">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="IYmOvn_qSy" role="1tU5fm">
              <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
            </node>
          </node>
          <node concept="37vLTG" id="6FFoA$ya0h1" role="3clF46">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="2g7jLxixpL6" role="1tU5fm">
              <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
            </node>
            <node concept="2AHcQZ" id="6FFoA$ya0h3" role="2AJF6D">
              <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
            </node>
          </node>
        </node>
        <node concept="3clFb_" id="6FFoA$ya0hz" role="jymVt">
          <property role="TrG5h" value="getModel" />
          <node concept="3uibUv" id="IYmOvnG67Z" role="3clF45">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
          <node concept="3Tm1VV" id="6FFoA$ya0h_" role="1B3o_S" />
          <node concept="3clFbS" id="6FFoA$ya0hA" role="3clF47">
            <node concept="3clFbF" id="6FFoA$ya0hD" role="3cqZAp">
              <node concept="37vLTw" id="2BHiRxeuWTs" role="3clFbG">
                <ref role="3cqZAo" node="6FFoA$ya0ho" resolve="myModel" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3tYsUK_UAH7" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6ra8WUbIh4b" role="jymVt">
      <property role="TrG5h" value="FailureState" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="6ra8WUbIh4j" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIh4C" role="1zkMxy">
        <ref role="3uigEE" node="6ra8WUbIh2$" resolve="EvaluationTree.EvaluationState" />
      </node>
      <node concept="312cEg" id="6ra8WUbIh4c" role="jymVt">
        <property role="TrG5h" value="myErrorText" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="6ra8WUbIh4d" role="1B3o_S" />
        <node concept="17QB3L" id="6ra8WUbIh4e" role="1tU5fm" />
        <node concept="2AHcQZ" id="6ra8WUbIh4f" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="312cEg" id="6ra8WUbIh4g" role="jymVt">
        <property role="TrG5h" value="myError" />
        <node concept="3Tm6S6" id="6ra8WUbIh4h" role="1B3o_S" />
        <node concept="3uibUv" id="6ra8WUbIh4i" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3clFbW" id="6ra8WUbIh4k" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIh4l" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh4m" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh4n" role="3clF47">
          <node concept="3clFbF" id="6ra8WUbIh4o" role="3cqZAp">
            <node concept="37vLTI" id="6ra8WUbIh4p" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmFyA" role="37vLTx">
                <ref role="3cqZAo" node="6ra8WUbIh4s" resolve="errorText" />
              </node>
              <node concept="37vLTw" id="2BHiRxeul4o" role="37vLTJ">
                <ref role="3cqZAo" node="6ra8WUbIh4c" resolve="myErrorText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6ra8WUbIh4s" role="3clF46">
          <property role="TrG5h" value="errorText" />
          <node concept="17QB3L" id="6ra8WUbIh4t" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFbW" id="6ra8WUbIh4u" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIh4v" role="3clF45" />
        <node concept="3Tm6S6" id="6ra8WUbIh4w" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIh4x" role="3clF47">
          <node concept="3clFbF" id="6ra8WUbIh4y" role="3cqZAp">
            <node concept="37vLTI" id="6ra8WUbIh4z" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmztw" role="37vLTx">
                <ref role="3cqZAo" node="6ra8WUbIh4A" resolve="error" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuyP5" role="37vLTJ">
                <ref role="3cqZAo" node="6ra8WUbIh4g" resolve="myError" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6ra8WUbIh4A" role="3clF46">
          <property role="TrG5h" value="error" />
          <node concept="3uibUv" id="6ra8WUbIh4B" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6ra8WUbIh4D" role="jymVt">
        <property role="TrG5h" value="rebuild" />
        <node concept="3cqZAl" id="6ra8WUbIh4E" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIh4F" role="1B3o_S" />
        <node concept="37vLTG" id="6ra8WUbIh4G" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="3uibUv" id="6ra8WUbIh4H" role="1tU5fm">
            <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya0hU" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvnFVhH" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
        <node concept="3clFbS" id="6ra8WUbIh4I" role="3clF47">
          <node concept="3clFbJ" id="6ra8WUbIh4J" role="3cqZAp">
            <node concept="3clFbS" id="6ra8WUbIh4K" role="3clFbx">
              <node concept="3clFbF" id="6ra8WUbIh4L" role="3cqZAp">
                <node concept="2OqwBi" id="6ra8WUbIh4M" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxgm7U1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ra8WUbIh4G" resolve="rootTreeNode" />
                  </node>
                  <node concept="liA8E" id="6ra8WUbIh4O" role="2OqNvi">
                    <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                    <node concept="2ShNRf" id="6ra8WUbIh4P" role="37wK5m">
                      <node concept="1pGfFk" id="6ra8WUbIh4Q" role="2ShVmc">
                        <ref role="37wK5l" node="6ra8WUbIhg5" resolve="EvaluationTree.ErrorTreeNode" />
                        <node concept="37vLTw" id="2BHiRxgm_PC" role="37wK5m">
                          <ref role="3cqZAo" node="6FFoA$ya0hU" resolve="model" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxeuPj7" role="37wK5m">
                          <ref role="3cqZAo" node="6ra8WUbIh4g" resolve="myError" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6ra8WUbIh4S" role="3clFbw">
              <node concept="10Nm6u" id="6ra8WUbIh4T" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeusx$" role="3uHU7B">
                <ref role="3cqZAo" node="6ra8WUbIh4g" resolve="myError" />
              </node>
            </node>
            <node concept="9aQIb" id="6ra8WUbIh4V" role="9aQIa">
              <node concept="3clFbS" id="6ra8WUbIh4W" role="9aQI4">
                <node concept="3clFbF" id="6ra8WUbIh4X" role="3cqZAp">
                  <node concept="2OqwBi" id="6ra8WUbIh4Y" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglt8T" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ra8WUbIh4G" resolve="rootTreeNode" />
                    </node>
                    <node concept="liA8E" id="6ra8WUbIh50" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="2ShNRf" id="6ra8WUbIh51" role="37wK5m">
                        <node concept="1pGfFk" id="6ra8WUbIh52" role="2ShVmc">
                          <ref role="37wK5l" node="6ra8WUbIhfn" resolve="EvaluationTree.ErrorTreeNode" />
                          <node concept="37vLTw" id="2BHiRxglHOY" role="37wK5m">
                            <ref role="3cqZAo" node="6FFoA$ya0hU" resolve="model" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxeufAb" role="37wK5m">
                            <ref role="3cqZAo" node="6ra8WUbIh4c" resolve="myErrorText" />
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
        <node concept="2AHcQZ" id="3tYsUK_RXM5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6ra8WUbIheO" role="jymVt">
      <property role="TrG5h" value="ErrorTreeNode" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="6ra8WUbIhfm" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIhgq" role="1zkMxy">
        <ref role="3uigEE" to="7e8u:~TextTreeNode" resolve="TextTreeNode" />
      </node>
      <node concept="3uibUv" id="6FFoA$ya06y" role="EKbjA">
        <ref role="3uigEE" node="6FFoA$ya05m" resolve="EvaluationTree.EvaluationModelNode" />
      </node>
      <node concept="312cEg" id="6ra8WUbIhff" role="jymVt">
        <property role="TrG5h" value="myExtendedMessage" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6ra8WUbIhfg" role="1B3o_S" />
        <node concept="_YKpA" id="6ra8WUbIhfh" role="1tU5fm">
          <node concept="17QB3L" id="6ra8WUbIhfi" role="_ZDj9" />
        </node>
        <node concept="2ShNRf" id="6ra8WUbIhfj" role="33vP2m">
          <node concept="Tc6Ow" id="6ra8WUbIhfk" role="2ShVmc">
            <node concept="17QB3L" id="6ra8WUbIhfl" role="HW$YZ" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="6FFoA$ya06o" role="jymVt">
        <property role="TrG5h" value="myModel" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6FFoA$ya06p" role="1B3o_S" />
        <node concept="3uibUv" id="IYmOvnFMMz" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="312cEg" id="4fC4L_vjdi8" role="jymVt">
        <property role="TrG5h" value="myThrowable" />
        <node concept="3Tm6S6" id="4fC4L_vjdi9" role="1B3o_S" />
        <node concept="3uibUv" id="4fC4L_vjdij" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3clFbW" id="6ra8WUbIhfn" role="jymVt">
        <node concept="37vLTG" id="6FFoA$ya06j" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvnFHRL" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
        <node concept="37vLTG" id="6ra8WUbIhfo" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="2AHcQZ" id="6ra8WUbIhfp" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="17QB3L" id="6ra8WUbIhfq" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6ra8WUbIhfr" role="3clF46">
          <property role="TrG5h" value="extendedMessage" />
          <node concept="8X2XB" id="6ra8WUbIhfs" role="1tU5fm">
            <node concept="17QB3L" id="6ra8WUbIhft" role="8Xvag" />
          </node>
        </node>
        <node concept="3cqZAl" id="6ra8WUbIhfu" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIhfv" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIhfw" role="3clF47">
          <node concept="XkiVB" id="6ra8WUbIhfx" role="3cqZAp">
            <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
            <node concept="3cpWs3" id="3Y6CQ86$sf6" role="37wK5m">
              <node concept="3cpWs3" id="3Y6CQ86$sff" role="3uHU7B">
                <node concept="Xl_RD" id="3Y6CQ86$sfi" role="3uHU7w">
                  <property role="Xl_RC" value=" = " />
                </node>
                <node concept="2OqwBi" id="3Y6CQ86$sfa" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxghfnY" role="2Oq$k0">
                    <ref role="3cqZAo" node="6FFoA$ya06j" resolve="model" />
                  </node>
                  <node concept="liA8E" id="3Y6CQ86$sfe" role="2OqNvi">
                    <ref role="37wK5l" to="i1lu:IYmOvn_6ln" resolve="getPresentation" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgmaUJ" role="3uHU7w">
                <ref role="3cqZAo" node="6ra8WUbIhfo" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6FFoA$ya06s" role="3cqZAp">
            <node concept="37vLTI" id="6FFoA$ya06u" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgllmL" role="37vLTx">
                <ref role="3cqZAo" node="6FFoA$ya06j" resolve="model" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuuYt" role="37vLTJ">
                <ref role="3cqZAo" node="6FFoA$ya06o" resolve="myModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6ra8WUbIhf$" role="3cqZAp">
            <node concept="3clFbS" id="6ra8WUbIhf_" role="3clFbx">
              <node concept="1Dw8fO" id="6ra8WUbIhfA" role="3cqZAp">
                <node concept="3cpWsn" id="6ra8WUbIhfB" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="6ra8WUbIhfC" role="1tU5fm" />
                  <node concept="3cmrfG" id="6ra8WUbIhfD" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3clFbS" id="6ra8WUbIhfE" role="2LFqv$">
                  <node concept="3clFbF" id="6ra8WUbIhfF" role="3cqZAp">
                    <node concept="2OqwBi" id="6ra8WUbIhfG" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeurrk" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ra8WUbIhff" resolve="myExtendedMessage" />
                      </node>
                      <node concept="TSZUe" id="6ra8WUbIhfI" role="2OqNvi">
                        <node concept="AH0OO" id="6ra8WUbIhfJ" role="25WWJ7">
                          <node concept="37vLTw" id="3GM_nagTrau" role="AHEQo">
                            <ref role="3cqZAo" node="6ra8WUbIhfB" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxgmDzE" role="AHHXb">
                            <ref role="3cqZAo" node="6ra8WUbIhfr" resolve="extendedMessage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="6ra8WUbIhfM" role="1Dwp0S">
                  <node concept="2OqwBi" id="6ra8WUbIhfN" role="3uHU7w">
                    <node concept="37vLTw" id="2BHiRxgmDyM" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ra8WUbIhfr" resolve="extendedMessage" />
                    </node>
                    <node concept="1Rwk04" id="6ra8WUbIhfP" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTv3B" role="3uHU7B">
                    <ref role="3cqZAo" node="6ra8WUbIhfB" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="6ra8WUbIhfR" role="1Dwrff">
                  <node concept="37vLTw" id="3GM_nagTv9N" role="2$L3a6">
                    <ref role="3cqZAo" node="6ra8WUbIhfB" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="6ra8WUbIhfT" role="3clFbw">
              <node concept="3y3z36" id="6ra8WUbIhfU" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmLqr" role="3uHU7B">
                  <ref role="3cqZAo" node="6ra8WUbIhfr" resolve="extendedMessage" />
                </node>
                <node concept="10Nm6u" id="6ra8WUbIhfW" role="3uHU7w" />
              </node>
              <node concept="3eOSWO" id="6ra8WUbIhfX" role="3uHU7w">
                <node concept="3cmrfG" id="6ra8WUbIhfY" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="6ra8WUbIhfZ" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxghfHR" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ra8WUbIhfr" resolve="extendedMessage" />
                  </node>
                  <node concept="1Rwk04" id="6ra8WUbIhg1" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ra8WUbIhgH" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzesy" role="3clFbG">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="6ra8WUbIhgJ" role="37wK5m">
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                <ref role="3cqZAo" to="exr9:~MPSColors.RED" resolve="RED" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ra8WUbIhgK" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzhIu" role="3clFbG">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="10M0yZ" id="6ra8WUbIhgM" role="37wK5m">
                <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                <ref role="3cqZAo" to="57ty:~Icons.ERROR_ICON" resolve="ERROR_ICON" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6ra8WUbIhg2" role="3cqZAp" />
          <node concept="3clFbF" id="6ra8WUbIhg3" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzeMk" role="3clFbG">
              <ref role="37wK5l" node="6ra8WUbIhgO" resolve="doInit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="6ra8WUbIhg5" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIhg6" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIhg7" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIhg8" role="3clF47">
          <node concept="1VxSAg" id="6ra8WUbIhg9" role="3cqZAp">
            <ref role="37wK5l" node="6ra8WUbIhfn" resolve="EvaluationTree.ErrorTreeNode" />
            <node concept="37vLTw" id="2BHiRxgmhEj" role="37wK5m">
              <ref role="3cqZAo" node="6FFoA$ya072" resolve="model" />
            </node>
            <node concept="3K4zz7" id="6ra8WUbIhga" role="37wK5m">
              <node concept="2OqwBi" id="6ra8WUbIhgb" role="3K4E3e">
                <node concept="37vLTw" id="2BHiRxgmy$0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIhgo" resolve="t" />
                </node>
                <node concept="liA8E" id="6ra8WUbIhgd" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Throwable.toString()" resolve="toString" />
                </node>
              </node>
              <node concept="2OqwBi" id="6ra8WUbIhge" role="3K4GZi">
                <node concept="37vLTw" id="2BHiRxgmaiS" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIhgo" resolve="t" />
                </node>
                <node concept="liA8E" id="6ra8WUbIhgg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                </node>
              </node>
              <node concept="3clFbC" id="6ra8WUbIhgh" role="3K4Cdx">
                <node concept="10Nm6u" id="6ra8WUbIhgi" role="3uHU7w" />
                <node concept="2OqwBi" id="6ra8WUbIhgj" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxglpQF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ra8WUbIhgo" resolve="t" />
                  </node>
                  <node concept="liA8E" id="6ra8WUbIhgl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="uoZ$WyDQSU" role="37wK5m">
              <ref role="1Pybhc" node="6ra8WUbIgSW" resolve="EvaluationTree" />
              <ref role="37wK5l" node="2xODT92Zh40" resolve="getStackTrace" />
              <node concept="37vLTw" id="uoZ$WyDQSV" role="37wK5m">
                <ref role="3cqZAo" node="6ra8WUbIhgo" resolve="t" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4fC4L_vjdil" role="3cqZAp">
            <node concept="37vLTI" id="4fC4L_vjdin" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgm5GU" role="37vLTx">
                <ref role="3cqZAo" node="6ra8WUbIhgo" resolve="t" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuu5B" role="37vLTJ">
                <ref role="3cqZAo" node="4fC4L_vjdi8" resolve="myThrowable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya072" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvnG1nM" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
        <node concept="37vLTG" id="6ra8WUbIhgo" role="3clF46">
          <property role="TrG5h" value="t" />
          <node concept="3uibUv" id="6ra8WUbIhgp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6ra8WUbIhgr" role="jymVt">
        <property role="TrG5h" value="isLeaf" />
        <node concept="3Tm1VV" id="6ra8WUbIhgs" role="1B3o_S" />
        <node concept="10P_77" id="6ra8WUbIhgt" role="3clF45" />
        <node concept="3clFbS" id="6ra8WUbIhgu" role="3clF47">
          <node concept="3clFbF" id="6ra8WUbIhgv" role="3cqZAp">
            <node concept="2OqwBi" id="5eo3iW6uLir" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuIna" role="2Oq$k0">
                <ref role="3cqZAo" node="6ra8WUbIhff" resolve="myExtendedMessage" />
              </node>
              <node concept="1v1jN8" id="5eo3iW6uLis" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6ra8WUbIhg_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6ra8WUbIhgO" role="jymVt">
        <property role="TrG5h" value="doInit" />
        <node concept="3Tmbuc" id="6ra8WUbIhgP" role="1B3o_S" />
        <node concept="3cqZAl" id="6ra8WUbIhgQ" role="3clF45" />
        <node concept="3clFbS" id="6ra8WUbIhgR" role="3clF47">
          <node concept="2Gpval" id="6ra8WUbIhgS" role="3cqZAp">
            <node concept="2GrKxI" id="6ra8WUbIhgT" role="2Gsz3X">
              <property role="TrG5h" value="messagePart" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuqM3" role="2GsD0m">
              <ref role="3cqZAo" node="6ra8WUbIhff" resolve="myExtendedMessage" />
            </node>
            <node concept="3clFbS" id="6ra8WUbIhgV" role="2LFqv$">
              <node concept="3cpWs8" id="6ra8WUbIhgW" role="3cqZAp">
                <node concept="3cpWsn" id="6ra8WUbIhgX" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3uibUv" id="6ra8WUbIhgY" role="1tU5fm">
                    <ref role="3uigEE" to="7e8u:~TextTreeNode" resolve="TextTreeNode" />
                  </node>
                  <node concept="2ShNRf" id="6ra8WUbIhgZ" role="33vP2m">
                    <node concept="1pGfFk" id="6abqMjjO9Ol" role="2ShVmc">
                      <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                      <node concept="2GrUjf" id="6ra8WUbIhh3" role="37wK5m">
                        <ref role="2Gs0qQ" node="6ra8WUbIhgT" resolve="messagePart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6ra8WUbIhhe" role="3cqZAp">
                <node concept="2OqwBi" id="6ra8WUbIhhf" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTtir" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ra8WUbIhgX" resolve="node" />
                  </node>
                  <node concept="liA8E" id="6ra8WUbIhhh" role="2OqNvi">
                    <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
                    <node concept="10M0yZ" id="6ra8WUbIhhi" role="37wK5m">
                      <ref role="3cqZAo" to="57ty:~Icons.ERROR_ICON" resolve="ERROR_ICON" />
                      <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6ra8WUbIhhb" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyyRYI" role="3clFbG">
                  <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                  <node concept="37vLTw" id="3GM_nagTvOD" role="37wK5m">
                    <ref role="3cqZAo" node="6ra8WUbIhgX" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6ra8WUbIhhj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6FFoA$ya06z" role="jymVt">
        <property role="TrG5h" value="getModel" />
        <node concept="3uibUv" id="IYmOvnFZQ1" role="3clF45">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="3Tm1VV" id="6FFoA$ya06_" role="1B3o_S" />
        <node concept="3clFbS" id="6FFoA$ya06A" role="3clF47">
          <node concept="3clFbF" id="6FFoA$ya06D" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeunoU" role="3clFbG">
              <ref role="3cqZAo" node="6FFoA$ya06o" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SfTB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5TD_r9wO_aK" role="jymVt">
        <property role="TrG5h" value="getThrowable" />
        <node concept="3uibUv" id="5TD_r9wO_b7" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
        <node concept="3Tm1VV" id="5TD_r9wO_aW" role="1B3o_S" />
        <node concept="3clFbS" id="5TD_r9wO_aN" role="3clF47">
          <node concept="3clFbF" id="5TD_r9wO_bi" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeustD" role="3clFbG">
              <ref role="3cqZAo" node="4fC4L_vjdi8" resolve="myThrowable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6ra8WUbIhi3" role="jymVt">
      <property role="TrG5h" value="EvaluatingTreeNode" />
      <node concept="3Tm6S6" id="6ra8WUbIhi4" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIhib" role="1zkMxy">
        <ref role="3uigEE" to="7e8u:~TextTreeNode" resolve="TextTreeNode" />
      </node>
      <node concept="3uibUv" id="6FFoA$ya05O" role="EKbjA">
        <ref role="3uigEE" node="6FFoA$ya05m" resolve="EvaluationTree.EvaluationModelNode" />
      </node>
      <node concept="312cEg" id="6FFoA$ya05X" role="jymVt">
        <property role="TrG5h" value="myModel" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="IYmOvnFtAj" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="3Tm6S6" id="6FFoA$ya05Y" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="6ra8WUbIhi5" role="jymVt">
        <node concept="3cqZAl" id="6ra8WUbIhi6" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIhi7" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIhi8" role="3clF47">
          <node concept="XkiVB" id="6ra8WUbIhi9" role="3cqZAp">
            <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
            <node concept="3cpWs3" id="3Y6CQ86$sfn" role="37wK5m">
              <node concept="3cpWs3" id="3Y6CQ86$sfz" role="3uHU7B">
                <node concept="Xl_RD" id="3Y6CQ86$sfA" role="3uHU7w">
                  <property role="Xl_RC" value=" = " />
                </node>
                <node concept="2OqwBi" id="3Y6CQ86$sfr" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmF0x" role="2Oq$k0">
                    <ref role="3cqZAo" node="6FFoA$ya05V" resolve="model" />
                  </node>
                  <node concept="liA8E" id="3Y6CQ86$sfv" role="2OqNvi">
                    <ref role="37wK5l" to="i1lu:IYmOvn_6ln" resolve="getPresentation" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="6ra8WUbIhia" role="3uHU7w">
                <property role="Xl_RC" value="evaluating..." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6FFoA$ya062" role="3cqZAp">
            <node concept="37vLTI" id="6FFoA$ya064" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmExv" role="37vLTx">
                <ref role="3cqZAo" node="6FFoA$ya05V" resolve="model" />
              </node>
              <node concept="37vLTw" id="2BHiRxeusp6" role="37vLTJ">
                <ref role="3cqZAo" node="6FFoA$ya05X" resolve="myModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ra8WUbIhip" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz9Ec" role="3clFbG">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="6ra8WUbIhir" role="37wK5m">
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                <ref role="3cqZAo" to="lzb2:~JBColor.GRAY" resolve="GRAY" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ra8WUbIhis" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzhvp" role="3clFbG">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="10M0yZ" id="6ra8WUbIhiu" role="37wK5m">
                <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                <ref role="3cqZAo" to="57ty:~Icons.INFORMATION_ICON" resolve="INFORMATION_ICON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6FFoA$ya05V" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvnFyS6" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6FFoA$ya05P" role="jymVt">
        <property role="TrG5h" value="getModel" />
        <node concept="3uibUv" id="IYmOvnFxBD" role="3clF45">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="3Tm1VV" id="6FFoA$ya05R" role="1B3o_S" />
        <node concept="3clFbS" id="6FFoA$ya05S" role="3clF47">
          <node concept="3clFbF" id="6FFoA$ya06e" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeuv1b" role="3clFbG">
              <ref role="3cqZAo" node="6FFoA$ya05X" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_S4ex" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="3$HGEhSxOmg" role="jymVt">
      <property role="TrG5h" value="InitialTreeNode" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm6S6" id="3$HGEhSxOmw" role="1B3o_S" />
      <node concept="3uibUv" id="3$HGEhSxOmB" role="1zkMxy">
        <ref role="3uigEE" to="7e8u:~TextTreeNode" resolve="TextTreeNode" />
      </node>
      <node concept="3clFbW" id="3$HGEhSxOmh" role="jymVt">
        <node concept="3cqZAl" id="3$HGEhSxOmi" role="3clF45" />
        <node concept="3Tm1VV" id="3$HGEhSxOmj" role="1B3o_S" />
        <node concept="3clFbS" id="3$HGEhSxOmk" role="3clF47">
          <node concept="XkiVB" id="3$HGEhSxOml" role="3cqZAp">
            <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
            <node concept="3cpWs3" id="3$HGEhSxOmm" role="37wK5m">
              <node concept="Xl_RD" id="3$HGEhSxOmn" role="3uHU7w">
                <property role="Xl_RC" value=" = " />
              </node>
              <node concept="2OqwBi" id="3$HGEhSxOmo" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgl$q$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3$HGEhSxOmu" resolve="model" />
                </node>
                <node concept="liA8E" id="3$HGEhSxOmq" role="2OqNvi">
                  <ref role="37wK5l" to="i1lu:IYmOvn_6ln" resolve="getPresentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3$HGEhSxOmr" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyIJF" role="3clFbG">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="10M0yZ" id="3$HGEhSxOmt" role="37wK5m">
                <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                <ref role="3cqZAo" to="vjwt:15fzu3GFwxN" resolve="WATCH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3$HGEhSxOmu" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="IYmOvnFyd9" role="1tU5fm">
            <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6ra8WUbIhqG">
    <property role="TrG5h" value="EvaluationUi" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="6ra8WUbIhqH" role="1B3o_S" />
    <node concept="3uibUv" id="6ra8WUbIhqM" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="Wx3nA" id="6ra8WUbIhvj" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="2YIFZM" id="Hn0$Mvc2iD" role="33vP2m">
        <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
        <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <node concept="3VsKOn" id="Hn0$Mvc2iE" role="37wK5m">
          <ref role="3VsUkX" node="6ra8WUbIhqG" resolve="EvaluationUi" />
        </node>
      </node>
      <node concept="3uibUv" id="Hn0$Mvc2ix" role="1tU5fm">
        <ref role="3uigEE" to="wwqx:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="6ra8WUbIhvl" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="3liY2UJHFk" role="jymVt">
      <property role="TrG5h" value="EVALUATION_CONTAINER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3liY2UJHFl" role="1B3o_S" />
      <node concept="3uibUv" id="3liY2UJHFm" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="IYmOvnFdTU" role="11_B2D">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="2YIFZM" id="3liY2UJHFo" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="3liY2UJHFp" role="37wK5m">
          <property role="Xl_RC" value="Evaluation Container" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="IYmOvnHhVX" role="jymVt">
      <property role="TrG5h" value="DEBUG_SESSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="IYmOvnHhVY" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnHhVZ" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="IYmOvnHi9W" role="11_B2D">
          <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
        </node>
      </node>
      <node concept="2YIFZM" id="IYmOvnHhW1" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="IYmOvnHhW2" role="37wK5m">
          <property role="Xl_RC" value="Debug Session" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6ra8WUbIhv9" role="jymVt">
      <property role="TrG5h" value="myDebugSession" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="6ra8WUbIhva" role="1B3o_S" />
      <node concept="3uibUv" id="2g7jLxixGvg" role="1tU5fm">
        <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
      </node>
      <node concept="2AHcQZ" id="fA2nR_X9m6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="6ra8WUbIhvf" role="jymVt">
      <property role="TrG5h" value="myTree" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6ra8WUbIhvg" role="1tU5fm">
        <ref role="3uigEE" node="6ra8WUbIgSW" resolve="EvaluationTree" />
      </node>
      <node concept="3Tmbuc" id="6ra8WUbIhvi" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6ra8WUbIhvN" role="jymVt">
      <property role="TrG5h" value="myErrorListener" />
      <node concept="3Tm6S6" id="6ra8WUbIhvO" role="1B3o_S" />
      <node concept="3uibUv" id="6ra8WUbIhvP" role="1tU5fm">
        <ref role="3uigEE" node="6ra8WUbIhvQ" resolve="EvaluationUi.IErrorTextListener" />
      </node>
    </node>
    <node concept="312cEg" id="2LsTSypo3cp" role="jymVt">
      <property role="TrG5h" value="myAutoUpdate" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2LsTSypo3cq" role="1B3o_S" />
      <node concept="10P_77" id="2LsTSypo3cr" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2LsTSypo5lt" role="jymVt">
      <property role="TrG5h" value="mySessionChangeAdapter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2LsTSypo5lu" role="1B3o_S" />
      <node concept="3uibUv" id="2g7jLxixGvt" role="1tU5fm">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJZz" resolve="SessionChangeAdapter" />
      </node>
      <node concept="2ShNRf" id="2LsTSypo5lG" role="33vP2m">
        <node concept="1pGfFk" id="2g7jLxixGvu" role="2ShVmc">
          <ref role="37wK5l" node="2LsTSypo5li" resolve="EvaluationUi.MySessionChangeAdapter" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="6ra8WUbIhqI" role="jymVt">
      <node concept="3cqZAl" id="6ra8WUbIhqJ" role="3clF45" />
      <node concept="3Tm1VV" id="6ra8WUbIhqK" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIhqL" role="3clF47">
        <node concept="XkiVB" id="6ra8WUbIhqO" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="6ra8WUbIhqP" role="37wK5m">
            <node concept="1pGfFk" id="6ra8WUbIhqQ" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ra8WUbIhwf" role="3cqZAp">
          <node concept="37vLTI" id="6ra8WUbIhwh" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmam6" role="37vLTx">
              <ref role="3cqZAo" node="6ra8WUbIhwc" resolve="session" />
            </node>
            <node concept="37vLTw" id="2BHiRxeukpo" role="37vLTJ">
              <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2LsTSypo3cw" role="3cqZAp">
          <node concept="37vLTI" id="2LsTSypo3cy" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglKYa" role="37vLTx">
              <ref role="3cqZAo" node="2LsTSypo3cs" resolve="autoUpdate" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuVtu" role="37vLTJ">
              <ref role="3cqZAo" node="2LsTSypo3cp" resolve="myAutoUpdate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3URxx275jmb" role="3cqZAp">
          <node concept="2OqwBi" id="3URxx275jmd" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoXt" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
            </node>
            <node concept="liA8E" id="3URxx275jmh" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaKbx" resolve="addChangeListener" />
              <node concept="37vLTw" id="2BHiRxeuDZo" role="37wK5m">
                <ref role="3cqZAo" node="2LsTSypo5lt" resolve="mySessionChangeAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ra8WUbIhwq" role="3cqZAp">
          <node concept="37vLTI" id="6ra8WUbIhwr" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuspk" role="37vLTJ">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="2ShNRf" id="6ra8WUbIhwt" role="37vLTx">
              <node concept="1pGfFk" id="4fC4L_vj7zT" role="2ShVmc">
                <ref role="37wK5l" node="6ra8WUbIgTe" resolve="EvaluationTree" />
                <node concept="37vLTw" id="IYmOvnHOz0" role="37wK5m">
                  <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIhwc" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="2g7jLxixGvj" role="1tU5fm">
          <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
        </node>
        <node concept="2AHcQZ" id="6ra8WUbIhwp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2LsTSypo3cs" role="3clF46">
        <property role="TrG5h" value="autoUpdate" />
        <node concept="10P_77" id="2LsTSypo3cu" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="2LsTSypo3cd" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="2LsTSypo3ce" role="3clF45" />
      <node concept="3Tmbuc" id="2LsTSypo3ch" role="1B3o_S" />
      <node concept="3clFbS" id="2LsTSypo3cg" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2LsTSypo3cA" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="evaluate" />
      <node concept="3cqZAl" id="2LsTSypo3cB" role="3clF45" />
      <node concept="3Tm1VV" id="2LsTSypo3cF" role="1B3o_S" />
      <node concept="3clFbS" id="2LsTSypo3cD" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2LsTSypo5lp" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2LsTSypo5lq" role="3clF45" />
      <node concept="3Tm1VV" id="2LsTSypo5lr" role="1B3o_S" />
      <node concept="3clFbS" id="2LsTSypo5ls" role="3clF47">
        <node concept="3clFbF" id="2LsTSypo5lJ" role="3cqZAp">
          <node concept="2OqwBi" id="2LsTSypo5lL" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuSuA" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
            </node>
            <node concept="liA8E" id="2LsTSypo5lP" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaKbH" resolve="removeChangeListener" />
              <node concept="37vLTw" id="2BHiRxeuqSJ" role="37wK5m">
                <ref role="3cqZAo" node="2LsTSypo5lt" resolve="mySessionChangeAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vqLkRQ8Avv" role="3cqZAp">
          <node concept="2OqwBi" id="vqLkRQ8Avx" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuv0A" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="vqLkRQ8AvA" role="2OqNvi">
              <ref role="37wK5l" node="405E4eai27D" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIhqR" role="jymVt">
      <property role="TrG5h" value="evaluate" />
      <node concept="3cqZAl" id="6ra8WUbIhqS" role="3clF45" />
      <node concept="3Tmbuc" id="6ra8WUbIhv8" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIhqU" role="3clF47">
        <node concept="3clFbJ" id="6ra8WUbIhqV" role="3cqZAp">
          <node concept="3clFbS" id="6ra8WUbIhqW" role="3clFbx">
            <node concept="3clFbF" id="6ra8WUbIhqX" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz9en" role="3clFbG">
                <ref role="37wK5l" node="6ra8WUbIhvw" resolve="setErrorText" />
                <node concept="Xl_RD" id="6ra8WUbIhqZ" role="37wK5m">
                  <property role="Xl_RC" value="Program should be paused on breakpoint to evaluate" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6ra8WUbIhr0" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="6ra8WUbIhr1" role="3clFbw">
            <node concept="2OqwBi" id="5L0tGOoztUj" role="3fr31v">
              <node concept="2OqwBi" id="6ra8WUbIhr3" role="2Oq$k0">
                <node concept="liA8E" id="6ra8WUbIhr4" role="2OqNvi">
                  <ref role="37wK5l" to="d822:3L_P6qKH8f1" resolve="getEvaluationProvider" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuvLM" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                </node>
              </node>
              <node concept="liA8E" id="5L0tGOoztUn" role="2OqNvi">
                <ref role="37wK5l" to="anh2:_hR$3XCoWm" resolve="canEvaluate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kqIsfGGBl2" role="3cqZAp">
          <node concept="2OqwBi" id="1kqIsfGGOxA" role="3clFbG">
            <node concept="2ShNRf" id="1kqIsfGGBkY" role="2Oq$k0">
              <node concept="YeOm9" id="1kqIsfGGN2H" role="2ShVmc">
                <node concept="1Y3b0j" id="1kqIsfGGN2K" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Thread" resolve="Thread" />
                  <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.String)" resolve="Thread" />
                  <node concept="3Tm1VV" id="1kqIsfGGN2L" role="1B3o_S" />
                  <node concept="Xl_RD" id="1kqIsfGGMMr" role="37wK5m">
                    <property role="Xl_RC" value="Debugger Evaluation thread" />
                  </node>
                  <node concept="3clFb_" id="1kqIsfGGNcw" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="run" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="1kqIsfGGNcx" role="1B3o_S" />
                    <node concept="3cqZAl" id="1kqIsfGGNcz" role="3clF45" />
                    <node concept="3clFbS" id="1kqIsfGGNc_" role="3clF47">
                      <node concept="3J1_TO" id="1kqIsfGGPtY" role="3cqZAp">
                        <node concept="3clFbS" id="1kqIsfGGPu0" role="1zxBo7">
                          <node concept="3cpWs8" id="6ra8WUbIhrk" role="3cqZAp">
                            <node concept="3cpWsn" id="6ra8WUbIhrl" role="3cpWs9">
                              <property role="TrG5h" value="clazz" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="2Oh_3Qel_Hl" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                              </node>
                              <node concept="2OqwBi" id="6ra8WUbIhrn" role="33vP2m">
                                <node concept="37vLTw" id="IYmOvn$n90" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                </node>
                                <node concept="liA8E" id="6ra8WUbIhro" role="2OqNvi">
                                  <ref role="37wK5l" to="i1lu:IYmOvn$0UJ" resolve="generateClass" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6ra8WUbIhrq" role="3cqZAp">
                            <node concept="1rXfSq" id="4hiugqyz8RS" role="3clFbG">
                              <ref role="37wK5l" node="6ra8WUbIhtF" resolve="setEvaluating" />
                              <node concept="37vLTw" id="2BHiRxgm7It" role="37wK5m">
                                <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="30gAWAackMy" role="3cqZAp">
                            <node concept="3cpWsn" id="30gAWAackMz" role="3cpWs9">
                              <property role="TrG5h" value="thread" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="30gAWAackMr" role="1tU5fm">
                                <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
                              </node>
                              <node concept="2EnYce" id="30gAWAackM$" role="33vP2m">
                                <node concept="2OqwBi" id="30gAWAackM_" role="2Oq$k0">
                                  <node concept="2OqwBi" id="30gAWAackMA" role="2Oq$k0">
                                    <node concept="37vLTw" id="2BHiRxeuSv4" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                                    </node>
                                    <node concept="liA8E" id="30gAWAackMC" role="2OqNvi">
                                      <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="30gAWAackMD" role="2OqNvi">
                                    <ref role="37wK5l" to="d822:3UdBmwRq3jh" resolve="getThread" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="30gAWAackME" role="2OqNvi">
                                  <ref role="37wK5l" to="y3sp:2Y$mRnIClT3" resolve="getThread" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="77396NnK_wr" role="3cqZAp">
                            <node concept="2OqwBi" id="77396NnK_wJ" role="3clFbG">
                              <node concept="2OqwBi" id="77396NnK_BX" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxeuQAO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                                </node>
                                <node concept="liA8E" id="77396NnK_BZ" role="2OqNvi">
                                  <ref role="37wK5l" to="d822:3L_P6qKH8c5" resolve="getEventsProcessor" />
                                </node>
                              </node>
                              <node concept="liA8E" id="77396NnK_wT" role="2OqNvi">
                                <ref role="37wK5l" to="xptu:2ErCJ2zX3WO" resolve="scheduleEvaluation" />
                                <node concept="1bVj0M" id="77396NnK_wU" role="37wK5m">
                                  <node concept="3clFbS" id="77396NnK_wV" role="1bW5cS">
                                    <node concept="3J1_TO" id="77396NnK_$H" role="3cqZAp">
                                      <node concept="3clFbS" id="6ra8WUbIhrW" role="1zxBo7">
                                        <node concept="3cpWs8" id="2Oh_3QelWyx" role="3cqZAp">
                                          <node concept="3cpWsn" id="2Oh_3QelWyy" role="3cpWs9">
                                            <property role="TrG5h" value="evaluator" />
                                            <node concept="3uibUv" id="2Oh_3QelWyz" role="1tU5fm">
                                              <ref role="3uigEE" to="qgwr:46sxDGTfo5B" resolve="Evaluator" />
                                            </node>
                                            <node concept="2OqwBi" id="2Oh_3QelWy$" role="33vP2m">
                                              <node concept="37vLTw" id="2BHiRxglSPw" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                              </node>
                                              <node concept="liA8E" id="2Oh_3QelWyA" role="2OqNvi">
                                                <ref role="37wK5l" to="i1lu:IYmOvn$H8I" resolve="createEvaluatorInstance" />
                                                <node concept="37vLTw" id="3GM_nagTsZF" role="37wK5m">
                                                  <ref role="3cqZAo" node="6ra8WUbIhrl" resolve="clazz" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="6ra8WUbIhs2" role="3cqZAp">
                                          <node concept="3cpWsn" id="6ra8WUbIhs3" role="3cpWs9">
                                            <property role="TrG5h" value="evaluatedValue" />
                                            <node concept="3uibUv" id="3S6UmYLDBKn" role="1tU5fm">
                                              <ref role="3uigEE" to="dcbi:46sxDGTfnwG" resolve="IValueProxy" />
                                            </node>
                                            <node concept="2OqwBi" id="6ra8WUbIhs5" role="33vP2m">
                                              <node concept="liA8E" id="6ra8WUbIhs7" role="2OqNvi">
                                                <ref role="37wK5l" to="qgwr:46sxDGTfo7d" resolve="evaluate" />
                                              </node>
                                              <node concept="37vLTw" id="3GM_nagTyup" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2Oh_3QelWyy" resolve="evaluator" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="6ra8WUbIhs8" role="3cqZAp">
                                          <node concept="3clFbS" id="6ra8WUbIhs9" role="3clFbx">
                                            <node concept="3cpWs8" id="6YaelT6rnxD" role="3cqZAp">
                                              <node concept="3cpWsn" id="6YaelT6rnxE" role="3cpWs9">
                                                <property role="TrG5h" value="value" />
                                                <node concept="3uibUv" id="6YaelT6rnx_" role="1tU5fm">
                                                  <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
                                                </node>
                                                <node concept="2OqwBi" id="6YaelT6rnxF" role="33vP2m">
                                                  <node concept="2YIFZM" id="6bMlO3sZaiU" role="2Oq$k0">
                                                    <ref role="1Pybhc" to="wtoj:2Y$mRnICm2F" resolve="CustomViewersManager" />
                                                    <ref role="37wK5l" to="wtoj:2Y$mRnICmw7" resolve="getInstance" />
                                                  </node>
                                                  <node concept="liA8E" id="6YaelT6rnxG" role="2OqNvi">
                                                    <ref role="37wK5l" to="wtoj:6bMlO3sXPXQ" resolve="fromJdi" />
                                                    <node concept="2OqwBi" id="6YaelT6rnxH" role="37wK5m">
                                                      <node concept="liA8E" id="6YaelT6rnxI" role="2OqNvi">
                                                        <ref role="37wK5l" to="dcbi:46sxDGTfnwJ" resolve="getJDIValue" />
                                                      </node>
                                                      <node concept="37vLTw" id="6YaelT6rnxJ" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="6ra8WUbIhs3" resolve="evaluatedValue" />
                                                      </node>
                                                    </node>
                                                    <node concept="37vLTw" id="6YaelT6rnxK" role="37wK5m">
                                                      <ref role="3cqZAo" node="30gAWAackMz" resolve="thread" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="6YaelT6r$6z" role="3cqZAp">
                                              <node concept="2OqwBi" id="6YaelT6r$m4" role="3clFbG">
                                                <node concept="liA8E" id="6YaelT6rAzq" role="2OqNvi">
                                                  <ref role="37wK5l" to="y3sp:OCKLzzO3PM" resolve="initSubvalues" />
                                                </node>
                                                <node concept="37vLTw" id="6YaelT6r$6y" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6YaelT6rnxE" resolve="value" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="6ra8WUbIhsa" role="3cqZAp">
                                              <node concept="1rXfSq" id="4hiugqyzjDE" role="3clFbG">
                                                <ref role="37wK5l" node="6ra8WUbIhte" resolve="setSuccess" />
                                                <node concept="37vLTw" id="6YaelT6rnxM" role="37wK5m">
                                                  <ref role="3cqZAo" node="6YaelT6rnxE" resolve="value" />
                                                </node>
                                                <node concept="37vLTw" id="2BHiRxglPi3" role="37wK5m">
                                                  <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3y3z36" id="6ra8WUbIhse" role="3clFbw">
                                            <node concept="10Nm6u" id="6ra8WUbIhsf" role="3uHU7w" />
                                            <node concept="37vLTw" id="3GM_nagTrW2" role="3uHU7B">
                                              <ref role="3cqZAo" node="6ra8WUbIhs3" resolve="evaluatedValue" />
                                            </node>
                                          </node>
                                          <node concept="9aQIb" id="6ra8WUbIhsh" role="9aQIa">
                                            <node concept="3clFbS" id="6ra8WUbIhsi" role="9aQI4">
                                              <node concept="3clFbF" id="6ra8WUbIhsj" role="3cqZAp">
                                                <node concept="1rXfSq" id="4hiugqyz8px" role="3clFbG">
                                                  <ref role="37wK5l" node="6abqMjjNMqn" resolve="setFailure" />
                                                  <node concept="Xl_RD" id="6ra8WUbIhsm" role="37wK5m">
                                                    <property role="Xl_RC" value="Evaluation returned null." />
                                                  </node>
                                                  <node concept="37vLTw" id="2BHiRxghiY9" role="37wK5m">
                                                    <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3uVAMA" id="F2q3z7Q1kM" role="1zxBo5">
                                        <node concept="XOnhg" id="F2q3z7Q1kN" role="1zc67B">
                                          <property role="3TUv4t" value="false" />
                                          <property role="TrG5h" value="e" />
                                          <node concept="nSUau" id="xvs04dGZVm" role="1tU5fm">
                                            <node concept="3uibUv" id="F2q3z7Q8sW" role="nSUat">
                                              <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="F2q3z7Q1kP" role="1zc67A">
                                          <node concept="3clFbF" id="F2q3z7Q8EV" role="3cqZAp">
                                            <node concept="1rXfSq" id="4hiugqyzhPJ" role="3clFbG">
                                              <ref role="37wK5l" node="6ra8WUbIhu4" resolve="setFailure" />
                                              <node concept="37vLTw" id="3GM_nagTwxl" role="37wK5m">
                                                <ref role="3cqZAo" node="F2q3z7Q1kN" resolve="e" />
                                              </node>
                                              <node concept="37vLTw" id="2BHiRxgm7Xz" role="37wK5m">
                                                <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3uVAMA" id="6ra8WUbIhso" role="1zxBo5">
                                        <node concept="XOnhg" id="6ra8WUbIhsp" role="1zc67B">
                                          <property role="3TUv4t" value="false" />
                                          <property role="TrG5h" value="t" />
                                          <node concept="nSUau" id="xvs04dGZVo" role="1tU5fm">
                                            <node concept="3uibUv" id="6ra8WUbIhsq" role="nSUat">
                                              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="6ra8WUbIhsr" role="1zc67A">
                                          <node concept="3clFbF" id="6ra8WUbIhss" role="3cqZAp">
                                            <node concept="1rXfSq" id="4hiugqyyU7z" role="3clFbG">
                                              <ref role="37wK5l" node="6ra8WUbIhu4" resolve="setFailure" />
                                              <node concept="37vLTw" id="3GM_nagTzeX" role="37wK5m">
                                                <ref role="3cqZAo" node="6ra8WUbIhsp" resolve="t" />
                                              </node>
                                              <node concept="37vLTw" id="2BHiRxglWLx" role="37wK5m">
                                                <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="6ra8WUbIhsx" role="3cqZAp">
                                            <node concept="2OqwBi" id="6ra8WUbIhsy" role="3clFbG">
                                              <node concept="37vLTw" id="1kqIsfGH2MK" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6ra8WUbIhvj" resolve="LOG" />
                                              </node>
                                              <node concept="liA8E" id="6ra8WUbIhs$" role="2OqNvi">
                                                <ref role="37wK5l" to="wwqx:~Logger.error(java.lang.String,java.lang.Throwable)" resolve="error" />
                                                <node concept="Xl_RD" id="6abqMjjNVOg" role="37wK5m">
                                                  <property role="Xl_RC" value="Debug evaluation failed" />
                                                </node>
                                                <node concept="37vLTw" id="3GM_nagT$i$" role="37wK5m">
                                                  <ref role="3cqZAo" node="6ra8WUbIhsp" resolve="t" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="30gAWAackMF" role="37wK5m">
                                  <ref role="3cqZAo" node="30gAWAackMz" resolve="thread" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uVAMA" id="1kqIsfGGR4F" role="1zxBo5">
                          <node concept="XOnhg" id="1kqIsfGGR4H" role="1zc67B">
                            <property role="3TUv4t" value="false" />
                            <property role="TrG5h" value="e" />
                            <node concept="nSUau" id="xvs04dGZVA" role="1tU5fm">
                              <node concept="3uibUv" id="1kqIsfGGROh" role="nSUat">
                                <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1kqIsfGGR4G" role="1zc67A">
                            <node concept="3clFbF" id="4x66uYKQGhu" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyyZCj" role="3clFbG">
                                <ref role="37wK5l" node="6ra8WUbIhu4" resolve="setFailure" />
                                <node concept="37vLTw" id="3GM_nagTsuu" role="37wK5m">
                                  <ref role="3cqZAo" node="1kqIsfGGR4H" resolve="e" />
                                </node>
                                <node concept="37vLTw" id="2BHiRxgmkEa" role="37wK5m">
                                  <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uVAMA" id="1kqIsfGGSlV" role="1zxBo5">
                          <node concept="XOnhg" id="1kqIsfGGSlW" role="1zc67B">
                            <property role="3TUv4t" value="false" />
                            <property role="TrG5h" value="t" />
                            <node concept="nSUau" id="xvs04dGZVC" role="1tU5fm">
                              <node concept="3uibUv" id="1kqIsfGGSlX" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1kqIsfGGSlY" role="1zc67A">
                            <node concept="3clFbF" id="1kqIsfGGSlZ" role="3cqZAp">
                              <node concept="1rXfSq" id="1kqIsfGGSm0" role="3clFbG">
                                <ref role="37wK5l" node="6ra8WUbIhu4" resolve="setFailure" />
                                <node concept="37vLTw" id="1kqIsfGGSm1" role="37wK5m">
                                  <ref role="3cqZAo" node="1kqIsfGGSlW" resolve="t" />
                                </node>
                                <node concept="37vLTw" id="1kqIsfGGSm3" role="37wK5m">
                                  <ref role="3cqZAo" node="6ra8WUbIhtc" resolve="model" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1kqIsfGGSm4" role="3cqZAp">
                              <node concept="2OqwBi" id="1kqIsfGGSm5" role="3clFbG">
                                <node concept="37vLTw" id="1kqIsfGGSme" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6ra8WUbIhvj" resolve="LOG" />
                                </node>
                                <node concept="liA8E" id="1kqIsfGGSm6" role="2OqNvi">
                                  <ref role="37wK5l" to="wwqx:~Logger.error(java.lang.String,java.lang.Throwable)" resolve="error" />
                                  <node concept="Xl_RD" id="6abqMjjNUAp" role="37wK5m">
                                    <property role="Xl_RC" value="Debug evaluation failed" />
                                  </node>
                                  <node concept="37vLTw" id="1kqIsfGGSm8" role="37wK5m">
                                    <ref role="3cqZAo" node="1kqIsfGGSlW" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1kqIsfGGNcA" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1kqIsfGGOVS" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIhtc" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="IYmOvnz1Kw" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIhte" role="jymVt">
      <property role="TrG5h" value="setSuccess" />
      <node concept="3cqZAl" id="6ra8WUbIhtf" role="3clF45" />
      <node concept="3Tm6S6" id="6ra8WUbIhtg" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIhth" role="3clF47">
        <node concept="3clFbF" id="6ra8WUbIhts" role="3cqZAp">
          <node concept="2OqwBi" id="6ra8WUbIhtt" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeujSV" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="6ra8WUbIhtv" role="2OqNvi">
              <ref role="37wK5l" node="6ra8WUbIgTN" resolve="setResultValue" />
              <node concept="37vLTw" id="2BHiRxghf8q" role="37wK5m">
                <ref role="3cqZAo" node="6ra8WUbIhtA" resolve="evaluatedValue" />
              </node>
              <node concept="37vLTw" id="2BHiRxglRua" role="37wK5m">
                <ref role="3cqZAo" node="6ra8WUbIhtD" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AwUN9Z53Mb" role="3cqZAp">
          <node concept="2OqwBi" id="2AwUN9Z53Mc" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeu_SB" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="2AwUN9Z53Me" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIhtA" role="3clF46">
        <property role="TrG5h" value="evaluatedValue" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="30gAWAabC2y" role="1tU5fm">
          <ref role="3uigEE" to="y3sp:2Y$mRnIClHy" resolve="JavaValue" />
        </node>
        <node concept="2AHcQZ" id="6ra8WUbIhtC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIhtD" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="IYmOvn$_1G" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIhtF" role="jymVt">
      <property role="TrG5h" value="setEvaluating" />
      <node concept="37vLTG" id="6ra8WUbIhtG" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="IYmOvn$srE" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="3cqZAl" id="6ra8WUbIhtI" role="3clF45" />
      <node concept="3Tm6S6" id="6ra8WUbIhtJ" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIhtK" role="3clF47">
        <node concept="3clFbF" id="6ra8WUbIhtV" role="3cqZAp">
          <node concept="2OqwBi" id="6ra8WUbIhtW" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeussG" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="6ra8WUbIhtY" role="2OqNvi">
              <ref role="37wK5l" node="6ra8WUbIgUB" resolve="setEvaluating" />
              <node concept="37vLTw" id="2BHiRxgmiYU" role="37wK5m">
                <ref role="3cqZAo" node="6ra8WUbIhtG" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AwUN9Z53M6" role="3cqZAp">
          <node concept="2OqwBi" id="2AwUN9Z53M7" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeu_BO" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="2AwUN9Z53M9" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6abqMjjNLrL" role="jymVt" />
    <node concept="3clFb_" id="6ra8WUbIhu4" role="jymVt">
      <property role="TrG5h" value="setFailure" />
      <node concept="37vLTG" id="6ra8WUbIhu5" role="3clF46">
        <property role="TrG5h" value="error" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6ra8WUbIhu6" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
        <node concept="2AHcQZ" id="6ra8WUbIhu7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIhub" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="IYmOvn$ths" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="3cqZAl" id="6ra8WUbIhud" role="3clF45" />
      <node concept="3Tm6S6" id="6ra8WUbIhue" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIhuf" role="3clF47">
        <node concept="3clFbF" id="6ra8WUbIhus" role="3cqZAp">
          <node concept="2OqwBi" id="6ra8WUbIhut" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyKZ" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="6ra8WUbIhuv" role="2OqNvi">
              <ref role="37wK5l" node="6ra8WUbIgUm" resolve="setError" />
              <node concept="37vLTw" id="2BHiRxgmFy8" role="37wK5m">
                <ref role="3cqZAo" node="6ra8WUbIhu5" resolve="error" />
              </node>
              <node concept="37vLTw" id="2BHiRxglcX6" role="37wK5m">
                <ref role="3cqZAo" node="6ra8WUbIhub" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AwUN9Z53M1" role="3cqZAp">
          <node concept="2OqwBi" id="2AwUN9Z53M2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeukDx" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="2AwUN9Z53M4" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6abqMjjNMqn" role="jymVt">
      <property role="TrG5h" value="setFailure" />
      <node concept="37vLTG" id="6abqMjjNMqr" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="6abqMjjNMqs" role="1tU5fm" />
        <node concept="2AHcQZ" id="6abqMjjNMqt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6abqMjjNMqu" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6abqMjjNMqv" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="3cqZAl" id="6abqMjjNMqw" role="3clF45" />
      <node concept="3Tm6S6" id="6abqMjjNMqx" role="1B3o_S" />
      <node concept="3clFbS" id="6abqMjjNMqy" role="3clF47">
        <node concept="3clFbF" id="6abqMjjNMqK" role="3cqZAp">
          <node concept="2OqwBi" id="6abqMjjNMqL" role="3clFbG">
            <node concept="37vLTw" id="6abqMjjNMqM" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="6abqMjjNMqN" role="2OqNvi">
              <ref role="37wK5l" node="6ra8WUbIgU5" resolve="setError" />
              <node concept="37vLTw" id="6abqMjjNMqO" role="37wK5m">
                <ref role="3cqZAo" node="6abqMjjNMqr" resolve="message" />
              </node>
              <node concept="37vLTw" id="6abqMjjNMqP" role="37wK5m">
                <ref role="3cqZAo" node="6abqMjjNMqu" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6abqMjjNMqQ" role="3cqZAp">
          <node concept="2OqwBi" id="6abqMjjNMqR" role="3clFbG">
            <node concept="37vLTw" id="6abqMjjNMqS" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="6abqMjjNMqT" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIhvw" role="jymVt">
      <property role="TrG5h" value="setErrorText" />
      <node concept="3Tmbuc" id="6ra8WUbIhvY" role="1B3o_S" />
      <node concept="3cqZAl" id="6ra8WUbIhvy" role="3clF45" />
      <node concept="37vLTG" id="6ra8WUbIhvz" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6ra8WUbIhv$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6ra8WUbIhv_" role="3clF47">
        <node concept="3clFbJ" id="6ra8WUbIhvA" role="3cqZAp">
          <node concept="3clFbS" id="6ra8WUbIhvB" role="3clFbx">
            <node concept="3clFbF" id="6ra8WUbIhvC" role="3cqZAp">
              <node concept="2OqwBi" id="6ra8WUbIhvD" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuvHL" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ra8WUbIhvN" resolve="myErrorListener" />
                </node>
                <node concept="liA8E" id="6ra8WUbIhvF" role="2OqNvi">
                  <ref role="37wK5l" node="6ra8WUbIhvR" resolve="updateErrorText" />
                  <node concept="37vLTw" id="2BHiRxghiWV" role="37wK5m">
                    <ref role="3cqZAo" node="6ra8WUbIhvz" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6ra8WUbIhvH" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuPqS" role="3uHU7B">
              <ref role="3cqZAo" node="6ra8WUbIhvN" resolve="myErrorListener" />
            </node>
            <node concept="10Nm6u" id="6ra8WUbIhvJ" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ra8WUbIhw2" role="jymVt">
      <property role="TrG5h" value="setErrorTextListener" />
      <node concept="3cqZAl" id="6ra8WUbIhw3" role="3clF45" />
      <node concept="3Tm1VV" id="6ra8WUbIhw4" role="1B3o_S" />
      <node concept="3clFbS" id="6ra8WUbIhw5" role="3clF47">
        <node concept="3clFbF" id="6ra8WUbIhw6" role="3cqZAp">
          <node concept="37vLTI" id="6ra8WUbIhw7" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm6UR" role="37vLTx">
              <ref role="3cqZAo" node="6ra8WUbIhwa" resolve="listener" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuCzn" role="37vLTJ">
              <ref role="3cqZAo" node="6ra8WUbIhvN" resolve="myErrorListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ra8WUbIhwa" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="6ra8WUbIhwb" role="1tU5fm">
          <ref role="3uigEE" node="6ra8WUbIhvQ" resolve="EvaluationUi.IErrorTextListener" />
        </node>
      </node>
    </node>
    <node concept="3HP615" id="6ra8WUbIhvQ" role="jymVt">
      <property role="TrG5h" value="IErrorTextListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="6ra8WUbIhvX" role="1B3o_S" />
      <node concept="3clFb_" id="6ra8WUbIhvR" role="jymVt">
        <property role="TrG5h" value="updateErrorText" />
        <node concept="3cqZAl" id="6ra8WUbIhvS" role="3clF45" />
        <node concept="3Tm1VV" id="6ra8WUbIhvT" role="1B3o_S" />
        <node concept="3clFbS" id="6ra8WUbIhvU" role="3clF47" />
        <node concept="37vLTG" id="6ra8WUbIhvV" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="6ra8WUbIhvW" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="2LsTSypo5lg" role="jymVt">
      <property role="TrG5h" value="MySessionChangeAdapter" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2LsTSypo5lm" role="1B3o_S" />
      <node concept="3uibUv" id="2g7jLxixGvp" role="1zkMxy">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJZz" resolve="SessionChangeAdapter" />
      </node>
      <node concept="3clFbW" id="2LsTSypo5li" role="jymVt">
        <node concept="3cqZAl" id="2LsTSypo5lj" role="3clF45" />
        <node concept="3Tm1VV" id="2LsTSypo5lk" role="1B3o_S" />
        <node concept="3clFbS" id="2LsTSypo5ll" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3URxx275jmn" role="jymVt">
        <property role="TrG5h" value="paused" />
        <node concept="3Tm1VV" id="3URxx275jmo" role="1B3o_S" />
        <node concept="3cqZAl" id="3URxx275jmp" role="3clF45" />
        <node concept="37vLTG" id="3URxx275jmq" role="3clF46">
          <property role="TrG5h" value="session" />
          <node concept="3uibUv" id="2g7jLxixGvq" role="1tU5fm">
            <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          </node>
        </node>
        <node concept="3clFbS" id="3URxx275jms" role="3clF47">
          <node concept="3clFbJ" id="2LsTSypo3bG" role="3cqZAp">
            <node concept="3clFbS" id="2LsTSypo3bH" role="3clFbx">
              <node concept="3cpWs8" id="fA2nR_XrpT" role="3cqZAp">
                <node concept="3cpWsn" id="fA2nR_XrpU" role="3cpWs9">
                  <property role="TrG5h" value="uiState" />
                  <node concept="3uibUv" id="fA2nR_Xrcy" role="1tU5fm">
                    <ref role="3uigEE" to="d822:3L_P6qKH8fi" resolve="JavaUiStateImpl" />
                  </node>
                  <node concept="2OqwBi" id="fA2nR_XrpV" role="33vP2m">
                    <node concept="37vLTw" id="2BHiRxeul4m" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                    </node>
                    <node concept="liA8E" id="fA2nR_XrpX" role="2OqNvi">
                      <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="fA2nR_XxtD" role="3cqZAp">
                <node concept="3cpWsn" id="fA2nR_XxtE" role="3cpWs9">
                  <property role="TrG5h" value="unitName" />
                  <node concept="2EnYce" id="fA2nR_XCld" role="33vP2m">
                    <node concept="2EnYce" id="fA2nR_XAaZ" role="2Oq$k0">
                      <node concept="2OqwBi" id="fA2nR_XxtH" role="2Oq$k0">
                        <node concept="37vLTw" id="fA2nR_XxtI" role="2Oq$k0">
                          <ref role="3cqZAo" node="fA2nR_XrpU" resolve="uiState" />
                        </node>
                        <node concept="liA8E" id="fA2nR_XxtJ" role="2OqNvi">
                          <ref role="37wK5l" to="a3o9:2Y$mRnICm6q" resolve="getStackFrame" />
                        </node>
                      </node>
                      <node concept="liA8E" id="fA2nR_XxtK" role="2OqNvi">
                        <ref role="37wK5l" to="y3sp:2Y$mRnICmpu" resolve="getLocation" />
                      </node>
                    </node>
                    <node concept="liA8E" id="fA2nR_XxtL" role="2OqNvi">
                      <ref role="37wK5l" to="y3sp:3DGS_W7MKZd" resolve="getUnitName" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="fA2nR_Xxty" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbJ" id="fA2nR_XE_k" role="3cqZAp">
                <node concept="2OqwBi" id="fA2nR_XH3P" role="3clFbw">
                  <node concept="17RvpY" id="fA2nR_XLwP" role="2OqNvi" />
                  <node concept="37vLTw" id="fA2nR_XFA0" role="2Oq$k0">
                    <ref role="3cqZAo" node="fA2nR_XxtE" resolve="unitName" />
                  </node>
                </node>
                <node concept="3clFbS" id="fA2nR_XE_m" role="3clFbx">
                  <node concept="3clFbF" id="35UhDKEH3J" role="3cqZAp">
                    <node concept="2OqwBi" id="35UhDKEH3K" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeuoeX" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                      </node>
                      <node concept="liA8E" id="35UhDKEH3M" role="2OqNvi">
                        <ref role="37wK5l" node="3URxx275fMh" resolve="updateLocation" />
                        <node concept="2OqwBi" id="35UhDKEH3W" role="37wK5m">
                          <node concept="2OqwBi" id="35UhDKEH3X" role="2Oq$k0">
                            <node concept="37vLTw" id="fA2nR_XrpZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="fA2nR_XrpU" resolve="uiState" />
                            </node>
                            <node concept="liA8E" id="35UhDKEH41" role="2OqNvi">
                              <ref role="37wK5l" to="d822:3UdBmwRq3jh" resolve="getThread" />
                            </node>
                          </node>
                          <node concept="liA8E" id="35UhDKEH42" role="2OqNvi">
                            <ref role="37wK5l" to="y3sp:2Y$mRnIClT3" resolve="getThread" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7W2k2QqY8N1" role="3cqZAp">
                <node concept="2OqwBi" id="7W2k2QqWCi1" role="3clFbG">
                  <node concept="2OqwBi" id="7W2k2QqWCg4" role="2Oq$k0">
                    <node concept="2OqwBi" id="7W2k2QqWyBb" role="2Oq$k0">
                      <node concept="37vLTw" id="7W2k2QqWy_4" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                      </node>
                      <node concept="liA8E" id="7W2k2QqWyBc" role="2OqNvi">
                        <ref role="37wK5l" to="1l1h:OqYxEjSoee" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7W2k2QqWCg5" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7W2k2QqWCi2" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                    <node concept="2ShNRf" id="7W2k2QqWCi3" role="37wK5m">
                      <node concept="YeOm9" id="7W2k2QqWCi4" role="2ShVmc">
                        <node concept="1Y3b0j" id="7W2k2QqWCi5" role="YeSDq">
                          <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3clFb_" id="7W2k2QqWCi6" role="jymVt">
                            <property role="TrG5h" value="run" />
                            <node concept="2AHcQZ" id="7W2k2QqWCi7" role="2AJF6D">
                              <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                            </node>
                            <node concept="3clFbS" id="7W2k2QqWCi8" role="3clF47">
                              <node concept="3clFbF" id="2LsTSypo3bU" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyzfwX" role="3clFbG">
                                  <ref role="37wK5l" node="6ra8WUbIhvw" resolve="setErrorText" />
                                  <node concept="Xl_RD" id="2LsTSypo3bW" role="37wK5m">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2LsTSypo3ck" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyyU6n" role="3clFbG">
                                  <ref role="37wK5l" node="2LsTSypo3cd" resolve="update" />
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7W2k2QqWCie" role="3cqZAp">
                                <node concept="37vLTw" id="7W2k2QqWCif" role="3clFbw">
                                  <ref role="3cqZAo" node="2LsTSypo3cp" resolve="myAutoUpdate" />
                                </node>
                                <node concept="3clFbS" id="7W2k2QqWCig" role="3clFbx">
                                  <node concept="3clFbF" id="7W2k2QqWCih" role="3cqZAp">
                                    <node concept="2OqwBi" id="7W2k2QqWCii" role="3clFbG">
                                      <node concept="2YIFZM" id="7W2k2QqWCij" role="2Oq$k0">
                                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                      </node>
                                      <node concept="liA8E" id="7W2k2QqWCik" role="2OqNvi">
                                        <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                        <node concept="1bVj0M" id="7W2k2QqYcww" role="37wK5m">
                                          <node concept="3clFbS" id="7W2k2QqYcwz" role="1bW5cS">
                                            <node concept="3clFbF" id="2LsTSypo3c3" role="3cqZAp">
                                              <node concept="1rXfSq" id="4hiugqyzhN3" role="3clFbG">
                                                <ref role="37wK5l" node="2LsTSypo3cA" resolve="evaluate" />
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
                            <node concept="3Tm1VV" id="7W2k2QqWCi_" role="1B3o_S" />
                            <node concept="3cqZAl" id="7W2k2QqWCiA" role="3clF45" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2LsTSypo3c6" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeuw$8" role="3uHU7B">
                <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
              </node>
              <node concept="37vLTw" id="2BHiRxgl3mT" role="3uHU7w">
                <ref role="3cqZAo" node="3URxx275jmq" resolve="session" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3URxx275jmt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2LsTSypo3cI" role="jymVt">
        <property role="TrG5h" value="stateChanged" />
        <node concept="3Tm1VV" id="2LsTSypo3cJ" role="1B3o_S" />
        <node concept="3cqZAl" id="2LsTSypo3cK" role="3clF45" />
        <node concept="37vLTG" id="2LsTSypo3cL" role="3clF46">
          <property role="TrG5h" value="session" />
          <node concept="3uibUv" id="2g7jLxixGvr" role="1tU5fm">
            <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          </node>
        </node>
        <node concept="3clFbS" id="2LsTSypo3cN" role="3clF47">
          <node concept="3clFbJ" id="2LsTSypo3d2" role="3cqZAp">
            <node concept="3clFbS" id="2LsTSypo3d3" role="3clFbx">
              <node concept="3clFbF" id="2LsTSypo3d4" role="3cqZAp">
                <node concept="2OqwBi" id="2LsTSypo3d5" role="3clFbG">
                  <node concept="2YIFZM" id="2LsTSypo3d6" role="2Oq$k0">
                    <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                    <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  </node>
                  <node concept="liA8E" id="2LsTSypo3d7" role="2OqNvi">
                    <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                    <node concept="2ShNRf" id="2LsTSypo3d8" role="37wK5m">
                      <node concept="YeOm9" id="2LsTSypo3d9" role="2ShVmc">
                        <node concept="1Y3b0j" id="2LsTSypo3da" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tm1VV" id="2LsTSypo3db" role="1B3o_S" />
                          <node concept="3clFb_" id="2LsTSypo3dc" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="run" />
                            <node concept="3Tm1VV" id="2LsTSypo3dd" role="1B3o_S" />
                            <node concept="3cqZAl" id="2LsTSypo3de" role="3clF45" />
                            <node concept="3clFbS" id="2LsTSypo3df" role="3clF47">
                              <node concept="3clFbF" id="2LsTSypo3dg" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyz5Ii" role="3clFbG">
                                  <ref role="37wK5l" node="2LsTSypo3cd" resolve="update" />
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="3tYsUK_Sfid" role="2AJF6D">
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
            <node concept="3clFbC" id="2LsTSypo3di" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeumP6" role="3uHU7B">
                <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmDxe" role="3uHU7w">
                <ref role="3cqZAo" node="2LsTSypo3cL" resolve="session" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2LsTSypo3cO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="xYkkCYnqtt" role="jymVt">
        <property role="TrG5h" value="resumed" />
        <node concept="3Tm1VV" id="xYkkCYnqtu" role="1B3o_S" />
        <node concept="3cqZAl" id="xYkkCYnqtv" role="3clF45" />
        <node concept="37vLTG" id="xYkkCYnqtw" role="3clF46">
          <property role="TrG5h" value="session" />
          <node concept="3uibUv" id="2g7jLxixGvs" role="1tU5fm">
            <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          </node>
        </node>
        <node concept="3clFbS" id="xYkkCYnqty" role="3clF47">
          <node concept="3clFbJ" id="xYkkCYnqtB" role="3cqZAp">
            <node concept="3clFbS" id="xYkkCYnqtC" role="3clFbx">
              <node concept="3clFbF" id="2AwUN9Z53u1" role="3cqZAp">
                <node concept="2OqwBi" id="2AwUN9Z53u3" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeufCu" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                  </node>
                  <node concept="liA8E" id="2AwUN9Z53LZ" role="2OqNvi">
                    <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="xYkkCYnqtR" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeufPc" role="3uHU7B">
                <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
              </node>
              <node concept="37vLTw" id="2BHiRxglG6A" role="3uHU7w">
                <ref role="3cqZAo" node="xYkkCYnqtw" resolve="session" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="xYkkCYnqtz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3Y6CQ86$v98">
    <property role="TrG5h" value="EditWatchDialog" />
    <node concept="3Tm1VV" id="3Y6CQ86$v99" role="1B3o_S" />
    <node concept="3uibUv" id="3Y6CQ86$IzS" role="1zkMxy">
      <ref role="3uigEE" node="3Y6CQ86$x2Q" resolve="AbstractEvaluationDialog" />
    </node>
    <node concept="312cEg" id="35XgeijPL8s" role="jymVt">
      <property role="TrG5h" value="myOkAction" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="35XgeijPL8t" role="1B3o_S" />
      <node concept="1ajhzC" id="35XgeijPL8u" role="1tU5fm">
        <node concept="3cqZAl" id="35XgeijPL8v" role="1ajl9A" />
      </node>
      <node concept="2AHcQZ" id="35XgeijPL8w" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFbW" id="3Y6CQ86$v9a" role="jymVt">
      <node concept="3cqZAl" id="3Y6CQ86$v9b" role="3clF45" />
      <node concept="3Tm1VV" id="3Y6CQ86$v9c" role="1B3o_S" />
      <node concept="3clFbS" id="3Y6CQ86$v9d" role="3clF47">
        <node concept="1VxSAg" id="4LcUu7wCkku" role="3cqZAp">
          <ref role="37wK5l" node="4LcUu7wChfQ" resolve="EditWatchDialog" />
          <node concept="37vLTw" id="4pq21WIeUWS" role="37wK5m">
            <ref role="3cqZAo" node="4pq21WIeUU5" resolve="ideaProject" />
          </node>
          <node concept="37vLTw" id="2BHiRxgm5Xe" role="37wK5m">
            <ref role="3cqZAo" node="3Y6CQ86$x2H" resolve="provider" />
          </node>
          <node concept="37vLTw" id="2BHiRxgllcI" role="37wK5m">
            <ref role="3cqZAo" node="3Y6CQ86$x2K" resolve="model" />
          </node>
          <node concept="10Nm6u" id="4LcUu7wCkk_" role="37wK5m" />
        </node>
      </node>
      <node concept="37vLTG" id="4pq21WIeUU5" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4pq21WIeUU6" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="4pq21WIeUU7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3Y6CQ86$x2H" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="1jvPZ1MLwc1" role="1tU5fm">
          <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
        </node>
        <node concept="2AHcQZ" id="3Y6CQ86$x2O" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3Y6CQ86$x2K" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvnDKVC" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="2AHcQZ" id="3Y6CQ86$x2N" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="4LcUu7wChfQ" role="jymVt">
      <node concept="3cqZAl" id="4LcUu7wChfR" role="3clF45" />
      <node concept="3Tm1VV" id="4LcUu7wChfS" role="1B3o_S" />
      <node concept="3clFbS" id="4LcUu7wChfT" role="3clF47">
        <node concept="XkiVB" id="4LcUu7wChfU" role="3cqZAp">
          <ref role="37wK5l" node="3Y6CQ86$x2S" resolve="AbstractEvaluationDialog" />
          <node concept="37vLTw" id="2BHiRxgmI8h" role="37wK5m">
            <ref role="3cqZAo" node="4LcUu7wChfZ" resolve="ideaProject" />
          </node>
          <node concept="37vLTw" id="2BHiRxgl3FB" role="37wK5m">
            <ref role="3cqZAo" node="4LcUu7wChg2" resolve="provider" />
          </node>
          <node concept="37vLTw" id="2BHiRxgm6Y_" role="37wK5m">
            <ref role="3cqZAo" node="4LcUu7wChg5" resolve="model" />
          </node>
          <node concept="Xl_RD" id="4LcUu7wChfY" role="37wK5m">
            <property role="Xl_RC" value="Edit Watch" />
          </node>
        </node>
        <node concept="3clFbF" id="4LcUu7wCkkB" role="3cqZAp">
          <node concept="37vLTI" id="4LcUu7wCkkD" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghgcM" role="37vLTx">
              <ref role="3cqZAo" node="4LcUu7wChg8" resolve="okAction" />
            </node>
            <node concept="37vLTw" id="2BHiRxeumYp" role="37vLTJ">
              <ref role="3cqZAo" node="35XgeijPL8s" resolve="myOkAction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4LcUu7wChfZ" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4pq21WIeUQe" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="4LcUu7wChg1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4LcUu7wChg2" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="1jvPZ1MLwbY" role="1tU5fm">
          <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
        </node>
        <node concept="2AHcQZ" id="4LcUu7wChg4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4LcUu7wChg5" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvnDL1u" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
        <node concept="2AHcQZ" id="4LcUu7wChg7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4LcUu7wChg8" role="3clF46">
        <property role="TrG5h" value="okAction" />
        <node concept="1ajhzC" id="4LcUu7wCkkf" role="1tU5fm">
          <node concept="3cqZAl" id="4LcUu7wCkkh" role="1ajl9A" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2juexGD4rRZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doOKAction" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2juexGD4rS0" role="1B3o_S" />
      <node concept="3cqZAl" id="2juexGD4rS1" role="3clF45" />
      <node concept="3clFbS" id="2juexGD4rS2" role="3clF47">
        <node concept="3clFbJ" id="2juexGD4rS8" role="3cqZAp">
          <node concept="3clFbS" id="2juexGD4rS9" role="3clFbx">
            <node concept="3clFbF" id="2juexGD4rSa" role="3cqZAp">
              <node concept="2OqwBi" id="2juexGD4rSb" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuOS1" role="2Oq$k0">
                  <ref role="3cqZAo" node="35XgeijPL8s" resolve="myOkAction" />
                </node>
                <node concept="1Bd96e" id="2juexGD4rSd" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2juexGD4rSe" role="3clFbw">
            <node concept="10Nm6u" id="2juexGD4rSf" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuL6Y" role="3uHU7B">
              <ref role="3cqZAo" node="35XgeijPL8s" resolve="myOkAction" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2juexGD4rS4" role="3cqZAp">
          <node concept="3nyPlj" id="2juexGD4rS5" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.doOKAction()" resolve="doOKAction" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2juexGD4rS3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2juexGD4$Uf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createActions" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2juexGD4$Ug" role="1B3o_S" />
      <node concept="10Q1$e" id="2juexGD4$Uh" role="3clF45">
        <node concept="3uibUv" id="2juexGD4$Ui" role="10Q1$1">
          <ref role="3uigEE" to="dxuu:~Action" resolve="Action" />
        </node>
      </node>
      <node concept="3clFbS" id="2juexGD4$Uj" role="3clF47">
        <node concept="3cpWs6" id="2juexGD4$Uo" role="3cqZAp">
          <node concept="2ShNRf" id="2juexGD4$Ur" role="3cqZAk">
            <node concept="3g6Rrh" id="2juexGD4$UP" role="2ShVmc">
              <node concept="3uibUv" id="2juexGD4$Uw" role="3g7fb8">
                <ref role="3uigEE" to="dxuu:~Action" resolve="Action" />
              </node>
              <node concept="1rXfSq" id="4hiugqyzcan" role="3g7hyw">
                <ref role="37wK5l" to="jkm4:~DialogWrapper.getOKAction()" resolve="getOKAction" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2juexGD4$Uk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1UwU9FzQ$Sj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="1n2T$Ij9b3R" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDimensionServiceKey" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="1n2T$Ij9b3S" role="1B3o_S" />
      <node concept="3uibUv" id="1n2T$Ij9b3T" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="1n2T$Ij9b3U" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="1n2T$Ij9b3V" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="3clFbS" id="1n2T$Ij9b3W" role="3clF47">
        <node concept="3clFbF" id="1n2T$Ij9c8A" role="3cqZAp">
          <node concept="2OqwBi" id="1n2T$Ij9c9r" role="3clFbG">
            <node concept="3VsKOn" id="1n2T$Ij9c96" role="2Oq$k0">
              <ref role="3VsUkX" node="3Y6CQ86$v98" resolve="EditWatchDialog" />
            </node>
            <node concept="liA8E" id="1n2T$Ij9c9x" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1n2T$Ij9b3X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3Y6CQ86$x2Q">
    <property role="TrG5h" value="AbstractEvaluationDialog" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2juexGD4qOZ" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~DialogWrapper" resolve="DialogWrapper" />
    </node>
    <node concept="3Tm1VV" id="35UhDKEDu2" role="1B3o_S" />
    <node concept="312cEg" id="3Y6CQ86$x3h" role="jymVt">
      <property role="TrG5h" value="myProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3Y6CQ86$IvG" role="1B3o_S" />
      <node concept="3uibUv" id="1jvPZ1MLwc0" role="1tU5fm">
        <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
      </node>
    </node>
    <node concept="312cEg" id="3Y6CQ86$x3k" role="jymVt">
      <property role="TrG5h" value="myEvaluationPanel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3Y6CQ86$IvI" role="1B3o_S" />
      <node concept="3uibUv" id="3Y6CQ86$x3m" role="1tU5fm">
        <ref role="3uigEE" node="N5Kj01sBtF" resolve="EvaluationPanel" />
      </node>
    </node>
    <node concept="312cEg" id="3Y6CQ86$x3n" role="jymVt">
      <property role="TrG5h" value="mySessionStopDisposer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Y6CQ86$IvJ" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnIAz4f" role="1tU5fm">
        <ref role="3uigEE" to="d822:3L_P6qKHaO$" resolve="SessionStopDisposer" />
      </node>
    </node>
    <node concept="3clFbW" id="3Y6CQ86$x2S" role="jymVt">
      <node concept="3cqZAl" id="3Y6CQ86$x2T" role="3clF45" />
      <node concept="3Tm1VV" id="3Y6CQ86$x2U" role="1B3o_S" />
      <node concept="3clFbS" id="3Y6CQ86$x2V" role="3clF47">
        <node concept="XkiVB" id="3Y6CQ86$x35" role="3cqZAp">
          <ref role="37wK5l" to="jkm4:~DialogWrapper.&lt;init&gt;(com.intellij.openapi.project.Project)" resolve="DialogWrapper" />
          <node concept="37vLTw" id="4pq21WIeX9v" role="37wK5m">
            <ref role="3cqZAo" node="4pq21WIeWVT" resolve="ideaProject" />
          </node>
        </node>
        <node concept="3clFbF" id="2juexGD4qP0" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz3si" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
            <node concept="37vLTw" id="2BHiRxgl1$J" role="37wK5m">
              <ref role="3cqZAo" node="3Y6CQ86$x3d" resolve="title" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Y6CQ86$x3q" role="3cqZAp" />
        <node concept="3clFbF" id="3Y6CQ86$x3$" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9wV" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setModal(boolean)" resolve="setModal" />
            <node concept="3clFbT" id="3Y6CQ86$x3A" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbH" id="3Y6CQ86$x3B" role="3cqZAp" />
        <node concept="3clFbF" id="3Y6CQ86$x3C" role="3cqZAp">
          <node concept="37vLTI" id="3Y6CQ86$x3D" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglbtO" role="37vLTx">
              <ref role="3cqZAo" node="3Y6CQ86$x2Z" resolve="provider" />
            </node>
            <node concept="37vLTw" id="2BHiRxeu_Fd" role="37vLTJ">
              <ref role="3cqZAo" node="3Y6CQ86$x3h" resolve="myProvider" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Y6CQ86$x3G" role="3cqZAp">
          <node concept="3cpWsn" id="3Y6CQ86$x3H" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2Y$mRnIAz4j" role="1tU5fm">
              <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
            </node>
            <node concept="2OqwBi" id="3Y6CQ86$x3J" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm_o$" role="2Oq$k0">
                <ref role="3cqZAo" node="3Y6CQ86$x2Z" resolve="provider" />
              </node>
              <node concept="liA8E" id="3Y6CQ86$x3L" role="2OqNvi">
                <ref role="37wK5l" to="anh2:_hR$3XCoZW" resolve="getDebugSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y6CQ86$x3M" role="3cqZAp">
          <node concept="37vLTI" id="3Y6CQ86$x3N" role="3clFbG">
            <node concept="2ShNRf" id="3Y6CQ86$x3O" role="37vLTx">
              <node concept="1pGfFk" id="3Y6CQ86$x3P" role="2ShVmc">
                <ref role="37wK5l" node="N5Kj01sBBG" resolve="EvaluationPanel" />
                <node concept="2YIFZM" id="Tb4Psnqj2I" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="Tb4Psnqj4c" role="37wK5m">
                    <ref role="3cqZAo" node="4pq21WIeWVT" resolve="ideaProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTvsE" role="37wK5m">
                  <ref role="3cqZAo" node="3Y6CQ86$x3H" resolve="debugSession" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm9wM" role="37wK5m">
                  <ref role="3cqZAo" node="3Y6CQ86$x32" resolve="model" />
                </node>
                <node concept="3clFbT" id="3Y6CQ86$x3V" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuwB8" role="37vLTJ">
              <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1n2T$Ij93Vk" role="3cqZAp">
          <node concept="2OqwBi" id="1n2T$Ij93VE" role="3clFbG">
            <node concept="37vLTw" id="1n2T$Ij93Vl" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
            </node>
            <node concept="liA8E" id="1n2T$Ij93VK" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setMinimumSize(java.awt.Dimension)" resolve="setMinimumSize" />
              <node concept="2ShNRf" id="2juexGD4qQm" role="37wK5m">
                <node concept="1pGfFk" id="2juexGD4rRU" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="2juexGD4rRV" role="37wK5m">
                    <property role="3cmrfH" value="500" />
                  </node>
                  <node concept="3cmrfG" id="2juexGD4rRX" role="37wK5m">
                    <property role="3cmrfH" value="500" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y6CQ86$x3X" role="3cqZAp">
          <node concept="2OqwBi" id="3Y6CQ86$x3Y" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuw22" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
            </node>
            <node concept="liA8E" id="3Y6CQ86$x40" role="2OqNvi">
              <ref role="37wK5l" node="6ra8WUbIhw2" resolve="setErrorTextListener" />
              <node concept="2ShNRf" id="3Y6CQ86$x41" role="37wK5m">
                <node concept="YeOm9" id="3Y6CQ86$x42" role="2ShVmc">
                  <node concept="1Y3b0j" id="3Y6CQ86$x43" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" node="6ra8WUbIhvQ" resolve="EvaluationUi.IErrorTextListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3Y6CQ86$x44" role="1B3o_S" />
                    <node concept="3clFb_" id="3Y6CQ86$x45" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="updateErrorText" />
                      <node concept="3cqZAl" id="3Y6CQ86$x46" role="3clF45" />
                      <node concept="3Tm1VV" id="3Y6CQ86$x47" role="1B3o_S" />
                      <node concept="37vLTG" id="3Y6CQ86$x48" role="3clF46">
                        <property role="TrG5h" value="text" />
                        <node concept="17QB3L" id="3Y6CQ86$x49" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3Y6CQ86$x4a" role="3clF47">
                        <node concept="3clFbF" id="3Y6CQ86$x4b" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyyP_a" role="3clFbG">
                            <ref role="37wK5l" to="jkm4:~DialogWrapper.setErrorText(java.lang.String)" resolve="setErrorText" />
                            <node concept="37vLTw" id="2BHiRxghfpK" role="37wK5m">
                              <ref role="3cqZAo" node="3Y6CQ86$x48" resolve="text" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_Savw" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Y6CQ86$x4e" role="3cqZAp" />
        <node concept="3clFbF" id="3Y6CQ86$x4f" role="3cqZAp">
          <node concept="37vLTI" id="3Y6CQ86$x4g" role="3clFbG">
            <node concept="2ShNRf" id="3Y6CQ86$x4h" role="37vLTx">
              <node concept="YeOm9" id="3Y6CQ86$x4i" role="2ShVmc">
                <node concept="1Y3b0j" id="3Y6CQ86$x4j" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="d822:3L_P6qKHaO$" resolve="SessionStopDisposer" />
                  <ref role="37wK5l" to="d822:3L_P6qKHaOD" resolve="SessionStopDisposer" />
                  <node concept="3Tm1VV" id="3Y6CQ86$x4k" role="1B3o_S" />
                  <node concept="37vLTw" id="3GM_nagT$Kz" role="37wK5m">
                    <ref role="3cqZAo" node="3Y6CQ86$x3H" resolve="debugSession" />
                  </node>
                  <node concept="3clFb_" id="3Y6CQ86$x4l" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doDispose" />
                    <node concept="3Tm1VV" id="3Y6CQ86$x4m" role="1B3o_S" />
                    <node concept="3cqZAl" id="3Y6CQ86$x4n" role="3clF45" />
                    <node concept="3clFbS" id="3Y6CQ86$x4o" role="3clF47">
                      <node concept="3clFbF" id="3Y6CQ86$x4p" role="3cqZAp">
                        <node concept="2OqwBi" id="3Y6CQ86$x4q" role="3clFbG">
                          <node concept="2YIFZM" id="3Y6CQ86$x4r" role="2Oq$k0">
                            <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                            <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                          </node>
                          <node concept="liA8E" id="3Y6CQ86$x4s" role="2OqNvi">
                            <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                            <node concept="2ShNRf" id="3Y6CQ86$x4t" role="37wK5m">
                              <node concept="YeOm9" id="3Y6CQ86$x4u" role="2ShVmc">
                                <node concept="1Y3b0j" id="3Y6CQ86$x4v" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                                  <node concept="3Tm1VV" id="3Y6CQ86$x4w" role="1B3o_S" />
                                  <node concept="3clFb_" id="3Y6CQ86$x4x" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="run" />
                                    <node concept="3Tm1VV" id="3Y6CQ86$x4y" role="1B3o_S" />
                                    <node concept="3cqZAl" id="3Y6CQ86$x4z" role="3clF45" />
                                    <node concept="3clFbS" id="3Y6CQ86$x4$" role="3clF47">
                                      <node concept="3clFbF" id="3Y6CQ86$x4_" role="3cqZAp">
                                        <node concept="1rXfSq" id="4hiugqyz9GP" role="3clFbG">
                                          <ref role="37wK5l" node="3Y6CQ86$IzD" resolve="dispose" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="3tYsUK_Slii" role="2AJF6D">
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
                    <node concept="2AHcQZ" id="3tYsUK_RXV1" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuyI2" role="37vLTJ">
              <ref role="3cqZAo" node="3Y6CQ86$x3n" resolve="mySessionStopDisposer" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Y6CQ86$x3r" role="3cqZAp" />
        <node concept="3clFbF" id="2juexGD4qPc" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9sr" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.init()" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4pq21WIeWVT" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4pq21WIeWVU" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="4pq21WIeWVV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3Y6CQ86$x2Z" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="1jvPZ1MLwbZ" role="1tU5fm">
          <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="3Y6CQ86$x32" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="IYmOvnE1fj" role="1tU5fm">
          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3Y6CQ86$x3d" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="3Y6CQ86$x3f" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3Y6CQ86$Izw" role="jymVt">
      <property role="TrG5h" value="getMainComponent" />
      <node concept="3Tmbuc" id="3Y6CQ86$Izx" role="1B3o_S" />
      <node concept="3uibUv" id="3Y6CQ86$Izy" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="3Y6CQ86$Izz" role="3clF47">
        <node concept="3clFbF" id="3Y6CQ86$IzA" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeukvK" role="3clFbG">
            <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2juexGD4qPf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createCenterPanel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2juexGD4qPg" role="1B3o_S" />
      <node concept="3uibUv" id="2juexGD4qPh" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="2juexGD4qPi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2juexGD4qPj" role="3clF47">
        <node concept="3clFbF" id="2juexGD4qPn" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuvIv" role="3clFbG">
            <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SfEy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3Y6CQ86$IzD" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tmbuc" id="2juexGD4$Uc" role="1B3o_S" />
      <node concept="3cqZAl" id="3Y6CQ86$IzF" role="3clF45" />
      <node concept="3clFbS" id="3Y6CQ86$IzG" role="3clF47">
        <node concept="3clFbF" id="3Y6CQ86$IzH" role="3cqZAp">
          <node concept="2OqwBi" id="3Y6CQ86$IzI" role="3clFbG">
            <node concept="2YIFZM" id="3Y6CQ86$IzJ" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="3Y6CQ86$IzK" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.assertIsDispatchThread()" resolve="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y6CQ86$IzL" role="3cqZAp">
          <node concept="3nyPlj" id="3Y6CQ86$IzM" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.dispose()" resolve="dispose" />
          </node>
        </node>
        <node concept="3clFbF" id="3Y6CQ86$IzN" role="3cqZAp">
          <node concept="2OqwBi" id="3Y6CQ86$IzO" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTtt" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
            </node>
            <node concept="liA8E" id="3Y6CQ86$IzQ" role="2OqNvi">
              <ref role="37wK5l" node="6klnWqotOXW" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Y6CQ86$IzR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3nWps2JPKbf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3nWps2JPKbg" role="1B3o_S" />
      <node concept="2AHcQZ" id="3nWps2JPKbi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3nWps2JPKbj" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="3nWps2JPKbk" role="3clF47">
        <node concept="3clFbF" id="3nWps2JPN7V" role="3cqZAp">
          <node concept="2OqwBi" id="3nWps2JPNDp" role="3clFbG">
            <node concept="37vLTw" id="3nWps2JPN7T" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y6CQ86$x3k" resolve="myEvaluationPanel" />
            </node>
            <node concept="liA8E" id="3nWps2JRPfG" role="2OqNvi">
              <ref role="37wK5l" node="3nWps2JRoXc" resolve="getPreferredFocusedComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3nWps2JPKbl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4QRqMciWfe2">
    <property role="TrG5h" value="WatchesPanel" />
    <node concept="3Tm1VV" id="4QRqMciWfe3" role="1B3o_S" />
    <node concept="3uibUv" id="72mcSh_$1of" role="1zkMxy">
      <ref role="3uigEE" node="6ra8WUbIhqG" resolve="EvaluationUi" />
    </node>
    <node concept="312cEg" id="4QRqMciWfe5" role="jymVt">
      <property role="TrG5h" value="mySessionStopDisposer" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2Y$mRnIAzaH" role="1tU5fm">
        <ref role="3uigEE" to="d822:3L_P6qKHaO$" resolve="SessionStopDisposer" />
      </node>
      <node concept="3Tm6S6" id="4QRqMciWfe7" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4QRqMciWfe8" role="jymVt">
      <property role="TrG5h" value="myProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="_hR$3XD43e" role="1tU5fm">
        <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
      </node>
      <node concept="3Tm6S6" id="4QRqMciWfea" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="4QRqMciWfeb" role="jymVt">
      <node concept="3Tm1VV" id="4QRqMciWfec" role="1B3o_S" />
      <node concept="3cqZAl" id="4QRqMciWfed" role="3clF45" />
      <node concept="37vLTG" id="4QRqMciWfee" role="3clF46">
        <property role="TrG5h" value="provider" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="_hR$3XD40I" role="1tU5fm">
          <ref role="3uigEE" to="anh2:_hR$3XCoTY" resolve="EvaluationProvider" />
        </node>
      </node>
      <node concept="3clFbS" id="4QRqMciWfeg" role="3clF47">
        <node concept="XkiVB" id="4QRqMciWfeh" role="3cqZAp">
          <ref role="37wK5l" node="6ra8WUbIhqI" resolve="EvaluationUi" />
          <node concept="2OqwBi" id="4QRqMciWfei" role="37wK5m">
            <node concept="37vLTw" id="2BHiRxgmDza" role="2Oq$k0">
              <ref role="3cqZAo" node="4QRqMciWfee" resolve="provider" />
            </node>
            <node concept="liA8E" id="4QRqMciWfek" role="2OqNvi">
              <ref role="37wK5l" to="anh2:_hR$3XCoZW" resolve="getDebugSession" />
            </node>
          </node>
          <node concept="3clFbT" id="4QRqMciWfel" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbF" id="1Uivi6F0KFp" role="3cqZAp">
          <node concept="2OqwBi" id="1Uivi6F0KFJ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuknm" role="2Oq$k0">
              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
            </node>
            <node concept="liA8E" id="1Uivi6F0MiO" role="2OqNvi">
              <ref role="37wK5l" node="1Uivi6F0KDY" resolve="setActionGroup" />
              <node concept="3$FqnI" id="1Uivi6F0MiR" role="37wK5m">
                <ref role="3$FqnG" to="cyfb:7vO$jtdT50G" resolve="WatchesTreeActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QRqMciWfem" role="3cqZAp">
          <node concept="37vLTI" id="4QRqMciWfen" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunfx" role="37vLTJ">
              <ref role="3cqZAo" node="4QRqMciWfe8" resolve="myProvider" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm602" role="37vLTx">
              <ref role="3cqZAo" node="4QRqMciWfee" resolve="provider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QRqMciWfeq" role="3cqZAp">
          <node concept="2OqwBi" id="4QRqMciWfer" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuSti" role="2Oq$k0">
              <ref role="3cqZAo" node="4QRqMciWfe8" resolve="myProvider" />
            </node>
            <node concept="liA8E" id="4QRqMciWfet" role="2OqNvi">
              <ref role="37wK5l" to="anh2:_hR$3XCp1M" resolve="addWatchListener" />
              <node concept="2ShNRf" id="4QRqMciWfeu" role="37wK5m">
                <node concept="YeOm9" id="4QRqMciWfev" role="2ShVmc">
                  <node concept="1Y3b0j" id="4QRqMciWfew" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <ref role="1Y3XeK" to="anh2:_hR$3XCoUl" resolve="EvaluationProvider.WatchAdapter" />
                    <ref role="37wK5l" to="anh2:_hR$3XCoUo" resolve="EvaluationProvider.WatchAdapter" />
                    <node concept="3clFb_" id="4QRqMciWfex" role="jymVt">
                      <property role="TrG5h" value="watchAdded" />
                      <node concept="3Tm1VV" id="4QRqMciWfey" role="1B3o_S" />
                      <node concept="3cqZAl" id="4QRqMciWfez" role="3clF45" />
                      <node concept="37vLTG" id="4QRqMciWfe$" role="3clF46">
                        <property role="TrG5h" value="model" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="IYmOvnyTj_" role="1tU5fm">
                          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4QRqMciWfeA" role="3clF47">
                        <node concept="3clFbF" id="4QRqMciWfeM" role="3cqZAp">
                          <node concept="2OqwBi" id="4QRqMciWfeN" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuhA3" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                            </node>
                            <node concept="liA8E" id="4QRqMciWfeP" role="2OqNvi">
                              <ref role="37wK5l" node="6ra8WUbIgTA" resolve="addModel" />
                              <node concept="37vLTw" id="2BHiRxgm6Lm" role="37wK5m">
                                <ref role="3cqZAo" node="4QRqMciWfe$" resolve="model" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4QRqMciWfeU" role="3cqZAp">
                          <node concept="2OqwBi" id="4QRqMciWfeV" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeukml" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                            </node>
                            <node concept="liA8E" id="4QRqMciWfeX" role="2OqNvi">
                              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4QRqMciWfeR" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyyZ7y" role="3clFbG">
                            <ref role="37wK5l" node="6ra8WUbIhqR" resolve="evaluate" />
                            <node concept="37vLTw" id="2BHiRxgm8h5" role="37wK5m">
                              <ref role="3cqZAo" node="4QRqMciWfe$" resolve="model" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4QRqMciWfeZ" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="4QRqMciWff0" role="jymVt">
                      <property role="TrG5h" value="watchUpdated" />
                      <node concept="3Tm1VV" id="4QRqMciWff1" role="1B3o_S" />
                      <node concept="3cqZAl" id="4QRqMciWff2" role="3clF45" />
                      <node concept="37vLTG" id="4QRqMciWff3" role="3clF46">
                        <property role="TrG5h" value="model" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="IYmOvnyThK" role="1tU5fm">
                          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4QRqMciWff5" role="3clF47">
                        <node concept="3clFbF" id="4QRqMciWffh" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyzc3B" role="3clFbG">
                            <ref role="37wK5l" node="6ra8WUbIhqR" resolve="evaluate" />
                            <node concept="37vLTw" id="2BHiRxghh7A" role="37wK5m">
                              <ref role="3cqZAo" node="4QRqMciWff3" resolve="model" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4QRqMciWffl" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="4QRqMciWffm" role="jymVt">
                      <property role="TrG5h" value="watchRemoved" />
                      <node concept="3Tm1VV" id="4QRqMciWffn" role="1B3o_S" />
                      <node concept="3cqZAl" id="4QRqMciWffo" role="3clF45" />
                      <node concept="37vLTG" id="4QRqMciWffp" role="3clF46">
                        <property role="TrG5h" value="model" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="IYmOvnyS2B" role="1tU5fm">
                          <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4QRqMciWffr" role="3clF47">
                        <node concept="3clFbF" id="4QRqMciWffB" role="3cqZAp">
                          <node concept="2OqwBi" id="4QRqMciWffC" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeujnj" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                            </node>
                            <node concept="liA8E" id="4QRqMciWffE" role="2OqNvi">
                              <ref role="37wK5l" node="_gMcXhQSY_" resolve="removeModel" />
                              <node concept="37vLTw" id="2BHiRxglBBq" role="37wK5m">
                                <ref role="3cqZAo" node="4QRqMciWffp" resolve="model" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4QRqMciWffG" role="3cqZAp">
                          <node concept="2OqwBi" id="4QRqMciWffH" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuIwA" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                            </node>
                            <node concept="liA8E" id="4QRqMciWffJ" role="2OqNvi">
                              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4QRqMciWffL" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QRqMciWffM" role="3cqZAp">
          <node concept="37vLTI" id="4QRqMciWffN" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwwM" role="37vLTJ">
              <ref role="3cqZAo" node="4QRqMciWfe5" resolve="mySessionStopDisposer" />
            </node>
            <node concept="2ShNRf" id="4QRqMciWffP" role="37vLTx">
              <node concept="YeOm9" id="4QRqMciWffQ" role="2ShVmc">
                <node concept="1Y3b0j" id="4QRqMciWffR" role="YeSDq">
                  <property role="TrG5h" value="" />
                  <ref role="1Y3XeK" to="d822:3L_P6qKHaO$" resolve="SessionStopDisposer" />
                  <ref role="37wK5l" to="d822:3L_P6qKHaOD" resolve="SessionStopDisposer" />
                  <node concept="37vLTw" id="2BHiRxeujU2" role="37wK5m">
                    <ref role="3cqZAo" node="6ra8WUbIhv9" resolve="myDebugSession" />
                  </node>
                  <node concept="3clFb_" id="4QRqMciWffS" role="jymVt">
                    <property role="TrG5h" value="doDispose" />
                    <node concept="3Tm1VV" id="4QRqMciWffT" role="1B3o_S" />
                    <node concept="3cqZAl" id="4QRqMciWffU" role="3clF45" />
                    <node concept="3clFbS" id="4QRqMciWffV" role="3clF47">
                      <node concept="3clFbF" id="4QRqMciWffW" role="3cqZAp">
                        <node concept="2OqwBi" id="4QRqMciWffX" role="3clFbG">
                          <node concept="2YIFZM" id="4QRqMciWffY" role="2Oq$k0">
                            <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                            <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                          </node>
                          <node concept="liA8E" id="4QRqMciWffZ" role="2OqNvi">
                            <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                            <node concept="2ShNRf" id="4QRqMciWfg0" role="37wK5m">
                              <node concept="YeOm9" id="4QRqMciWfg1" role="2ShVmc">
                                <node concept="1Y3b0j" id="4QRqMciWfg2" role="YeSDq">
                                  <property role="TrG5h" value="" />
                                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                  <node concept="3clFb_" id="4QRqMciWfg3" role="jymVt">
                                    <property role="TrG5h" value="run" />
                                    <node concept="3Tm1VV" id="4QRqMciWfg4" role="1B3o_S" />
                                    <node concept="3cqZAl" id="4QRqMciWfg5" role="3clF45" />
                                    <node concept="3clFbS" id="4QRqMciWfg6" role="3clF47">
                                      <node concept="3clFbF" id="4QRqMciWfg7" role="3cqZAp">
                                        <node concept="2OqwBi" id="4QRqMciWfg8" role="3clFbG">
                                          <node concept="Xjq3P" id="4QRqMciWfg9" role="2Oq$k0">
                                            <ref role="1HBi2w" node="4QRqMciWfe2" resolve="WatchesPanel" />
                                          </node>
                                          <node concept="liA8E" id="4QRqMciWfga" role="2OqNvi">
                                            <ref role="37wK5l" node="2LsTSypo5lp" resolve="dispose" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="4QRqMciWfgb" role="2AJF6D">
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
                    <node concept="2AHcQZ" id="4QRqMciWfgc" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2p3Oqnx0Tro" role="3cqZAp">
          <node concept="3cpWsn" id="2p3Oqnx0Trp" role="3cpWs9">
            <property role="TrG5h" value="toolbar" />
            <node concept="3uibUv" id="2p3Oqnx0Trq" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
            </node>
            <node concept="2OqwBi" id="2p3Oqnx0Trr" role="33vP2m">
              <node concept="2YIFZM" id="2p3Oqnx0Trs" role="2Oq$k0">
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
              </node>
              <node concept="liA8E" id="2p3Oqnx0Trt" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                <node concept="10M0yZ" id="1V_XV5a7Z8j" role="37wK5m">
                  <ref role="3cqZAo" to="qkt:~ActionPlaces.TOOLBAR" resolve="TOOLBAR" />
                  <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                </node>
                <node concept="3$FqnI" id="7V1YZ6sOIsy" role="37wK5m">
                  <ref role="3$FqnG" to="cyfb:7V1YZ6sOyPD" resolve="WatchesToolbarActions" />
                </node>
                <node concept="3clFbT" id="2p3Oqnx0Tr_" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5x3aXeSr_wu" role="3cqZAp">
          <node concept="2OqwBi" id="5x3aXeSrCzG" role="3clFbG">
            <node concept="37vLTw" id="5x3aXeSr_ws" role="2Oq$k0">
              <ref role="3cqZAo" node="2p3Oqnx0Trp" resolve="toolbar" />
            </node>
            <node concept="liA8E" id="5x3aXeSrGBZ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.setTargetComponent(javax.swing.JComponent)" resolve="setTargetComponent" />
              <node concept="2OqwBi" id="3b_2XFZwLH3" role="37wK5m">
                <node concept="Xjq3P" id="5x3aXeSrJwz" role="2Oq$k0" />
                <node concept="2OwXpG" id="3b_2XFZwQy6" role="2OqNvi">
                  <ref role="2Oxat5" node="6ra8WUbIhvf" resolve="myTree" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xkCvs7RFJJ" role="3cqZAp">
          <node concept="2OqwBi" id="2xkCvs7RFK5" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTuCe" role="2Oq$k0">
              <ref role="3cqZAo" node="2p3Oqnx0Trp" resolve="toolbar" />
            </node>
            <node concept="liA8E" id="2xkCvs7RFKb" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.setLayoutPolicy(int)" resolve="setLayoutPolicy" />
              <node concept="10M0yZ" id="2xkCvs7RFKr" role="37wK5m">
                <ref role="1PxDUh" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
                <ref role="3cqZAo" to="qkt:~ActionToolbar.WRAP_LAYOUT_POLICY" resolve="WRAP_LAYOUT_POLICY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3fysB9ved9m" role="3cqZAp" />
        <node concept="3clFbF" id="3fysB9ved9p" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyRbf" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2OqwBi" id="3fysB9veda7" role="37wK5m">
              <node concept="37vLTw" id="3GM_nagTvmL" role="2Oq$k0">
                <ref role="3cqZAo" node="2p3Oqnx0Trp" resolve="toolbar" />
              </node>
              <node concept="liA8E" id="3fysB9vedev" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
              </node>
            </node>
            <node concept="10M0yZ" id="3fysB9ved9B" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3fysB9ved9K" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyPeI" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="3fysB9vede$" role="37wK5m">
              <node concept="1pGfFk" id="3fysB9vede_" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
                <node concept="37vLTw" id="2BHiRxeuHsF" role="37wK5m">
                  <ref role="3cqZAo" node="6ra8WUbIhvf" resolve="myTree" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3fysB9vedeN" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4QRqMciWfg$" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tmbuc" id="4QRqMciWfg_" role="1B3o_S" />
      <node concept="3cqZAl" id="4QRqMciWfgA" role="3clF45" />
      <node concept="3clFbS" id="4QRqMciWfgB" role="3clF47">
        <node concept="1DcWWT" id="4QRqMciWfgC" role="3cqZAp">
          <node concept="2OqwBi" id="4QRqMciWfgD" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxeudFH" role="2Oq$k0">
              <ref role="3cqZAo" node="4QRqMciWfe8" resolve="myProvider" />
            </node>
            <node concept="liA8E" id="4QRqMciWfgF" role="2OqNvi">
              <ref role="37wK5l" to="anh2:_hR$3XCp0m" resolve="getWatches" />
            </node>
          </node>
          <node concept="3cpWsn" id="4QRqMciWfgG" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="IYmOvnGkn5" role="1tU5fm">
              <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
            </node>
          </node>
          <node concept="3clFbS" id="4QRqMciWfgI" role="2LFqv$">
            <node concept="3clFbF" id="4QRqMciWfgJ" role="3cqZAp">
              <node concept="2OqwBi" id="4QRqMciWfgK" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_mJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4QRqMciWfgG" resolve="model" />
                </node>
                <node concept="liA8E" id="4QRqMciWfgM" role="2OqNvi">
                  <ref role="37wK5l" to="i1lu:IYmOvnCJGj" resolve="updateState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4QRqMciWfgN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4QRqMciWfgO" role="jymVt">
      <property role="TrG5h" value="evaluate" />
      <node concept="3Tm1VV" id="4QRqMciWfgP" role="1B3o_S" />
      <node concept="3cqZAl" id="4QRqMciWfgQ" role="3clF45" />
      <node concept="3clFbS" id="4QRqMciWfgR" role="3clF47">
        <node concept="1DcWWT" id="4QRqMciWfgS" role="3cqZAp">
          <node concept="2OqwBi" id="4QRqMciWfgT" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxeuE2i" role="2Oq$k0">
              <ref role="3cqZAo" node="4QRqMciWfe8" resolve="myProvider" />
            </node>
            <node concept="liA8E" id="4QRqMciWfgV" role="2OqNvi">
              <ref role="37wK5l" to="anh2:_hR$3XCp0m" resolve="getWatches" />
            </node>
          </node>
          <node concept="3cpWsn" id="4QRqMciWfgW" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="IYmOvnGk$F" role="1tU5fm">
              <ref role="3uigEE" to="i1lu:IYmOvnu1Zm" resolve="IEvaluationContainer" />
            </node>
          </node>
          <node concept="3clFbS" id="4QRqMciWfgY" role="2LFqv$">
            <node concept="3clFbF" id="4QRqMciWfgZ" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz8$h" role="3clFbG">
                <ref role="37wK5l" node="6ra8WUbIhqR" resolve="evaluate" />
                <node concept="37vLTw" id="3GM_nagTynC" role="37wK5m">
                  <ref role="3cqZAo" node="4QRqMciWfgW" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4QRqMciWfh2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

