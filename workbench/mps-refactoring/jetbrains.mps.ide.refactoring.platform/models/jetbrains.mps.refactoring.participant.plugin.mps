<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cc08a4fa-e4f1-443c-b8f2-4a41972141bb(jetbrains.mps.refactoring.participant.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="u42p" ref="r:986938bb-bdb1-4307-b062-e4647a4db0f9(jetbrains.mps.ide.platform.refactoring)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="5nvm" ref="r:27bc780b-59b2-4d26-9db5-a38b63c35884(jetbrains.mps.refactoring.participant)" />
    <import index="4ugc" ref="r:bd779a69-a10b-4882-b646-c1303f2dd4f7(jetbrains.mps.refactoring.participant.plugin)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
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
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ngI" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
      <concept id="3729007189729192406" name="jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration" flags="ng" index="vrV6u">
        <child id="8029776554053057803" name="objectType" index="luc8K" />
      </concept>
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
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
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
        <child id="1206655950512" name="initializer" index="3Mj9YC" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1206655653991" name="jetbrains.mps.baseLanguage.collections.structure.MapInitializer" flags="ng" index="3Mi1_Z">
        <child id="1206655902276" name="entries" index="3MiYds" />
      </concept>
      <concept id="1206655735055" name="jetbrains.mps.baseLanguage.collections.structure.MapEntry" flags="ng" index="3Milgn">
        <child id="1206655844556" name="key" index="3MiK7k" />
        <child id="1206655853135" name="value" index="3MiMdn" />
      </concept>
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="30kw7F05k9w">
    <property role="TrG5h" value="MoveNodesActionHelper" />
    <node concept="2YIFZL" id="30kw7F05kW_" role="jymVt">
      <property role="TrG5h" value="getRefactoring" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="30kw7F05mGP" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="30kw7F05oGP" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="30kw7F05n4R" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="_YKpA" id="30kw7F05nst" role="1tU5fm">
          <node concept="3Tqbb2" id="30kw7F05nAY" role="_ZDj9" />
        </node>
      </node>
      <node concept="3clFbS" id="30kw7F05kWB" role="3clF47">
        <node concept="3cpWs8" id="30kw7F05kWC" role="3cqZAp">
          <node concept="3cpWsn" id="30kw7F05kWD" role="3cpWs9">
            <property role="TrG5h" value="specialRefactorings" />
            <node concept="3vKaQO" id="7RCFTHVc6Mq" role="1tU5fm">
              <node concept="3uibUv" id="7RCFTHVc6Ms" role="3O5elw">
                <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesAction" />
              </node>
            </node>
            <node concept="2OqwBi" id="7RCFTHVc7gu" role="33vP2m">
              <node concept="2OqwBi" id="30kw7F05kWG" role="2Oq$k0">
                <node concept="2O5UvJ" id="30kw7F05kWH" role="2Oq$k0">
                  <ref role="2O5UnU" node="1F5g4zQqSPo" resolve="MoveNodesActionEP" />
                </node>
                <node concept="SfwO_" id="30kw7F05kWI" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="7RCFTHVc7D9" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30kw7F05kWJ" role="3cqZAp">
          <node concept="3cpWsn" id="30kw7F05kWK" role="3cpWs9">
            <property role="TrG5h" value="applicableRefactorings" />
            <node concept="3vKaQO" id="7RCFTHVc6vT" role="1tU5fm">
              <node concept="3uibUv" id="7RCFTHVc6vV" role="3O5elw">
                <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesAction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="7RCFTHVbC7v" role="3cqZAp">
          <node concept="1QHqEC" id="7RCFTHVbC7x" role="1QHqEI">
            <node concept="3clFbS" id="7RCFTHVbC7z" role="1bW5cS">
              <node concept="3clFbF" id="7RCFTHVbE77" role="3cqZAp">
                <node concept="37vLTI" id="7RCFTHVbE79" role="3clFbG">
                  <node concept="2OqwBi" id="7RCFTHVc5Dn" role="37vLTx">
                    <node concept="2OqwBi" id="30kw7F05kWN" role="2Oq$k0">
                      <node concept="37vLTw" id="30kw7F05kWO" role="2Oq$k0">
                        <ref role="3cqZAo" node="30kw7F05kWD" resolve="specialRefactorings" />
                      </node>
                      <node concept="3zZkjj" id="30kw7F05kWP" role="2OqNvi">
                        <node concept="1bVj0M" id="30kw7F05kWQ" role="23t8la">
                          <node concept="3clFbS" id="30kw7F05kWR" role="1bW5cS">
                            <node concept="3clFbF" id="30kw7F05kWS" role="3cqZAp">
                              <node concept="2OqwBi" id="30kw7F05kWT" role="3clFbG">
                                <node concept="37vLTw" id="30kw7F05kWU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Y5C" resolve="it" />
                                </node>
                                <node concept="liA8E" id="30kw7F05kWV" role="2OqNvi">
                                  <ref role="37wK5l" node="1F5g4zQqTc8" resolve="isApplicable" />
                                  <node concept="37vLTw" id="30kw7F05nPa" role="37wK5m">
                                    <ref role="3cqZAo" node="30kw7F05mGP" resolve="project" />
                                  </node>
                                  <node concept="37vLTw" id="30kw7F05oiu" role="37wK5m">
                                    <ref role="3cqZAo" node="30kw7F05n4R" resolve="nodesToMove" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0Y5C" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0Y5D" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="7RCFTHVc6dV" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="7RCFTHVbE7d" role="37vLTJ">
                    <ref role="3cqZAo" node="30kw7F05kWK" resolve="applicableRefactorings" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7RCFTHVbCLv" role="ukAjM">
            <node concept="37vLTw" id="7RCFTHVbChe" role="2Oq$k0">
              <ref role="3cqZAo" node="30kw7F05mGP" resolve="project" />
            </node>
            <node concept="liA8E" id="7RCFTHVbDrI" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="30kw7F05kX4" role="3cqZAp">
          <node concept="3clFbS" id="30kw7F05kX5" role="3clFbx">
            <node concept="3cpWs6" id="30kw7F05kX6" role="3cqZAp">
              <node concept="2ShNRf" id="30kw7F05kX7" role="3cqZAk">
                <node concept="HV5vD" id="30kw7F05kX8" role="2ShVmc">
                  <ref role="HV5vE" node="1F5g4zQqVSR" resolve="MoveNodesActionBase" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="30kw7F05kX9" role="3clFbw">
            <node concept="37vLTw" id="30kw7F05kXa" role="2Oq$k0">
              <ref role="3cqZAo" node="30kw7F05kWK" resolve="applicableRefactorings" />
            </node>
            <node concept="1v1jN8" id="30kw7F05kXb" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="30kw7F05kXc" role="9aQIa">
            <node concept="3clFbS" id="30kw7F05kXd" role="9aQI4">
              <node concept="3clFbJ" id="30kw7F05kXe" role="3cqZAp">
                <node concept="3clFbS" id="30kw7F05kXf" role="3clFbx">
                  <node concept="RRSsy" id="3jYQuSB37mv" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fh_4/error" />
                    <node concept="3cpWs3" id="30kw7F05kXh" role="RRSoy">
                      <node concept="2OqwBi" id="30kw7F05kXi" role="3uHU7w">
                        <node concept="2OqwBi" id="30kw7F05kXj" role="2Oq$k0">
                          <node concept="37vLTw" id="30kw7F05kXk" role="2Oq$k0">
                            <ref role="3cqZAo" node="30kw7F05kWK" resolve="applicableRefactorings" />
                          </node>
                          <node concept="3$u5V9" id="30kw7F05kXl" role="2OqNvi">
                            <node concept="1bVj0M" id="30kw7F05kXm" role="23t8la">
                              <node concept="3clFbS" id="30kw7F05kXn" role="1bW5cS">
                                <node concept="3clFbF" id="30kw7F05kXo" role="3cqZAp">
                                  <node concept="3cpWs3" id="30kw7F05kXp" role="3clFbG">
                                    <node concept="Xl_RD" id="30kw7F05kXq" role="3uHU7w">
                                      <property role="Xl_RC" value="\&quot;" />
                                    </node>
                                    <node concept="3cpWs3" id="30kw7F05kXr" role="3uHU7B">
                                      <node concept="Xl_RD" id="30kw7F05kXs" role="3uHU7B">
                                        <property role="Xl_RC" value="\&quot;" />
                                      </node>
                                      <node concept="2OqwBi" id="30kw7F05kXt" role="3uHU7w">
                                        <node concept="37vLTw" id="30kw7F05kXu" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0Y5E" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="30kw7F05kXv" role="2OqNvi">
                                          <ref role="37wK5l" node="1F5g4zQxi0e" resolve="getName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0Y5E" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Y5F" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1MD8d$" id="30kw7F05kXy" role="2OqNvi">
                          <node concept="1bVj0M" id="30kw7F05kXz" role="23t8la">
                            <node concept="3clFbS" id="30kw7F05kX$" role="1bW5cS">
                              <node concept="3clFbF" id="30kw7F05kX_" role="3cqZAp">
                                <node concept="3cpWs3" id="30kw7F05kXA" role="3clFbG">
                                  <node concept="37vLTw" id="30kw7F05kXB" role="3uHU7w">
                                    <ref role="3cqZAo" node="5W7E4fV0Y5G" resolve="it" />
                                  </node>
                                  <node concept="3cpWs3" id="30kw7F05kXC" role="3uHU7B">
                                    <node concept="37vLTw" id="30kw7F05kXD" role="3uHU7B">
                                      <ref role="3cqZAo" node="30kw7F05kXF" resolve="s" />
                                    </node>
                                    <node concept="Xl_RD" id="30kw7F05kXE" role="3uHU7w">
                                      <property role="Xl_RC" value=", " />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="30kw7F05kXF" role="1bW2Oz">
                              <property role="TrG5h" value="s" />
                              <node concept="17QB3L" id="30kw7F05kXG" role="1tU5fm" />
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0Y5G" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0Y5H" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="30kw7F05kXJ" role="1MDeny">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="30kw7F05kXK" role="3uHU7B">
                        <property role="Xl_RC" value="More than one MoveNodes refactoring applicable: " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="30kw7F05kXL" role="3clFbw">
                  <node concept="3cmrfG" id="30kw7F05kXM" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="30kw7F05kXN" role="3uHU7B">
                    <node concept="37vLTw" id="30kw7F05kXO" role="2Oq$k0">
                      <ref role="3cqZAo" node="30kw7F05kWK" resolve="applicableRefactorings" />
                    </node>
                    <node concept="34oBXx" id="30kw7F05kXP" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="30kw7F05kXQ" role="3cqZAp">
                <node concept="2OqwBi" id="30kw7F05kXR" role="3cqZAk">
                  <node concept="37vLTw" id="30kw7F05kXS" role="2Oq$k0">
                    <ref role="3cqZAo" node="30kw7F05kWK" resolve="applicableRefactorings" />
                  </node>
                  <node concept="1uHKPH" id="30kw7F05kXT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="30kw7F05kXU" role="3clF45">
        <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesAction" />
      </node>
      <node concept="3Tm1VV" id="30kw7F05kXV" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="30kw7F05k9x" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1F5g4zQqSPt">
    <property role="TrG5h" value="MoveNodesAction" />
    <node concept="3clFb_" id="1F5g4zQxi0e" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="3clFbS" id="1F5g4zQxi0h" role="3clF47" />
      <node concept="3Tm1VV" id="1F5g4zQxi0i" role="1B3o_S" />
      <node concept="17QB3L" id="1F5g4zQxhZ9" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1F5g4zQqTc8" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="1F5g4zQqTiW" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1F5g4zQqTLZ" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1F5g4zQqTMj" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="1F5g4zQqUbb" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1F5g4zQwRA$" role="3clF45" />
      <node concept="3Tm1VV" id="1F5g4zQqTcb" role="1B3o_S" />
      <node concept="3clFbS" id="1F5g4zQqTcc" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1F5g4zQqUnD" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="37vLTG" id="1F5g4zQqUoH" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1F5g4zQqUoI" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1F5g4zQqUoJ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="1F5g4zQqUoK" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1F5g4zQqUnF" role="3clF45" />
      <node concept="3Tm1VV" id="1F5g4zQqUnG" role="1B3o_S" />
      <node concept="3clFbS" id="1F5g4zQqUnH" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1F5g4zQqSPu" role="1B3o_S" />
    <node concept="3clFb_" id="7YjnSrg2usG" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="37vLTG" id="7YjnSrg2usH" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7YjnSrg2usI" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7YjnSrg2usJ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="7YjnSrg2usK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7YjnSrg2uDq" role="3clF46">
        <property role="TrG5h" value="destinationHint" />
        <node concept="3uibUv" id="7YjnSrg2uXT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="7YjnSrg2usL" role="3clF45" />
      <node concept="3Tm1VV" id="7YjnSrg2usM" role="1B3o_S" />
      <node concept="3clFbS" id="7YjnSrg2usN" role="3clF47">
        <node concept="3clFbF" id="7YjnSrg2vLU" role="3cqZAp">
          <node concept="1rXfSq" id="7YjnSrg2vLT" role="3clFbG">
            <ref role="37wK5l" node="1F5g4zQqUnD" resolve="execute" />
            <node concept="37vLTw" id="7YjnSrg2weY" role="37wK5m">
              <ref role="3cqZAo" node="7YjnSrg2usH" resolve="project" />
            </node>
            <node concept="37vLTw" id="7YjnSrg2wHG" role="37wK5m">
              <ref role="3cqZAo" node="7YjnSrg2usJ" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="7YjnSrg2usO" role="2frcjj" />
    </node>
  </node>
  <node concept="312cEu" id="1F5g4zQqVSR">
    <property role="TrG5h" value="MoveNodesActionBase" />
    <node concept="2tJIrI" id="55uxGWy8qpC" role="jymVt" />
    <node concept="3clFb_" id="55uxGWy8qpE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="55uxGWy8qpF" role="1B3o_S" />
      <node concept="17QB3L" id="55uxGWy8qpG" role="3clF45" />
      <node concept="3clFbS" id="55uxGWy8qpH" role="3clF47">
        <node concept="3clFbF" id="55uxGWy8qpI" role="3cqZAp">
          <node concept="Xl_RD" id="55uxGWy8qpJ" role="3clFbG">
            <property role="Xl_RC" value="Move Nodes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="42LwYUtsmYH" role="jymVt" />
    <node concept="3clFb_" id="55uxGWy8qqc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="55uxGWy8qqd" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="55uxGWy8qqe" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="55uxGWy8qqf" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="2I9FWS" id="55uxGWy8qqg" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="55uxGWy8qqh" role="3clF45" />
      <node concept="3Tm1VV" id="55uxGWy8qqi" role="1B3o_S" />
      <node concept="3clFbS" id="55uxGWy8qqj" role="3clF47">
        <node concept="3clFbF" id="55uxGWy8qqk" role="3cqZAp">
          <node concept="1Wc70l" id="61ZTWDjLWYq" role="3clFbG">
            <node concept="2OqwBi" id="61ZTWDjM1yg" role="3uHU7w">
              <node concept="37vLTw" id="61ZTWDjLYVY" role="2Oq$k0">
                <ref role="3cqZAo" node="55uxGWy8qqf" resolve="nodesToMove" />
              </node>
              <node concept="2HxqBE" id="61ZTWDjMmMx" role="2OqNvi">
                <node concept="1bVj0M" id="61ZTWDjMmMz" role="23t8la">
                  <node concept="3clFbS" id="61ZTWDjMmM$" role="1bW5cS">
                    <node concept="3clFbF" id="61ZTWDjMmM_" role="3cqZAp">
                      <node concept="1Wc70l" id="61TiakxXEiJ" role="3clFbG">
                        <node concept="3fqX7Q" id="61TiakxYhRX" role="3uHU7w">
                          <node concept="2OqwBi" id="61TiakxYhRZ" role="3fr31v">
                            <node concept="2OqwBi" id="61TiakxYhS0" role="2Oq$k0">
                              <node concept="2JrnkZ" id="61TiakxYhS1" role="2Oq$k0">
                                <node concept="2OqwBi" id="61TiakxYhS2" role="2JrQYb">
                                  <node concept="37vLTw" id="61TiakxYhS3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="61ZTWDjMmMG" resolve="it" />
                                  </node>
                                  <node concept="I4A8Y" id="61TiakxYhS4" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="liA8E" id="61TiakxYhS5" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                              </node>
                            </node>
                            <node concept="liA8E" id="61TiakxYhS6" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="61ZTWDjMoct" role="3uHU7B">
                          <node concept="2OqwBi" id="61ZTWDjMocv" role="3fr31v">
                            <node concept="2JrnkZ" id="61ZTWDjMocw" role="2Oq$k0">
                              <node concept="2OqwBi" id="61ZTWDjMocx" role="2JrQYb">
                                <node concept="37vLTw" id="61ZTWDjMocy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="61ZTWDjMmMG" resolve="it" />
                                </node>
                                <node concept="I4A8Y" id="61ZTWDjMocz" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="liA8E" id="61ZTWDjMoc$" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="61ZTWDjMmMG" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="61ZTWDjMmMH" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="4X1d9kMBzJ3" role="3uHU7B">
              <ref role="37wK5l" node="55uxGWy8qqr" resolve="areSiblings" />
              <ref role="1Pybhc" node="42LwYUtqJvj" resolve="MoveNodesUtil" />
              <node concept="37vLTw" id="55uxGWy8qqm" role="37wK5m">
                <ref role="3cqZAo" node="55uxGWy8qqf" resolve="nodesToMove" />
              </node>
              <node concept="2OqwBi" id="55uxGWy8qqn" role="37wK5m">
                <node concept="37vLTw" id="55uxGWy8qqo" role="2Oq$k0">
                  <ref role="3cqZAo" node="55uxGWy8qqd" resolve="project" />
                </node>
                <node concept="liA8E" id="55uxGWy8qqp" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7w15VOz7m9i" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tryToSetRole" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="53SOuJl67e4" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="53SOuJl67e1" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="53SOuJl6a$i" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="_YKpA" id="53SOuJl6b9d" role="1tU5fm">
          <node concept="3Tqbb2" id="53SOuJl6b$S" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="7w15VOz7m9j" role="3clF46">
        <property role="TrG5h" value="selectedObject" />
        <node concept="3uibUv" id="7w15VOz7$UN" role="1tU5fm">
          <ref role="3uigEE" to="u42p:1F5g4zQtp74" resolve="NodeLocation.NodeLocationChild" />
        </node>
      </node>
      <node concept="3clFbS" id="7w15VOz7m9l" role="3clF47">
        <node concept="3cpWs8" id="7w15VOz7rHP" role="3cqZAp">
          <node concept="3cpWsn" id="7w15VOz7rHQ" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7w15VOz7rHR" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7w15VOz7tuK" role="3cqZAp">
          <node concept="3cpWsn" id="7w15VOz7tuL" role="3cpWs9">
            <property role="TrG5h" value="containmentLinks" />
            <node concept="3vKaQO" id="7w15VOz7tuM" role="1tU5fm">
              <node concept="3uibUv" id="7w15VOz7tuN" role="3O5elw">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7w15VOz7rHW" role="3cqZAp">
          <node concept="37vLTI" id="7w15VOz7rHX" role="3clFbG">
            <node concept="2OqwBi" id="7w15VOz7rHY" role="37vLTx">
              <node concept="2OqwBi" id="7w15VOz7rHZ" role="2Oq$k0">
                <node concept="2OqwBi" id="7w15VOz7rI0" role="2Oq$k0">
                  <node concept="2OqwBi" id="7w15VOz7rI1" role="2Oq$k0">
                    <node concept="37vLTw" id="7w15VOz7rI4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7w15VOz7m9j" resolve="selectedObject" />
                    </node>
                    <node concept="liA8E" id="7w15VOz7rI6" role="2OqNvi">
                      <ref role="37wK5l" to="u42p:1F5g4zQuW9T" resolve="getNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7w15VOz7rI7" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                    <node concept="37vLTw" id="53SOuJl68UZ" role="37wK5m">
                      <ref role="3cqZAo" node="53SOuJl67e4" resolve="repo" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7w15VOz7rIb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="7w15VOz7rIc" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
            <node concept="37vLTw" id="7w15VOz7rId" role="37vLTJ">
              <ref role="3cqZAo" node="7w15VOz7tuL" resolve="containmentLinks" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7w15VOz7rIe" role="3cqZAp">
          <node concept="37vLTI" id="7w15VOz7rIf" role="3clFbG">
            <node concept="2OqwBi" id="53SOuJl6uWj" role="37vLTx">
              <node concept="2OqwBi" id="7w15VOz7rIi" role="2Oq$k0">
                <node concept="37vLTw" id="53SOuJl6dnR" role="2Oq$k0">
                  <ref role="3cqZAo" node="53SOuJl6a$i" resolve="nodesToMove" />
                </node>
                <node concept="1uHKPH" id="7w15VOz7rIk" role="2OqNvi" />
              </node>
              <node concept="2NL2c5" id="53SOuJl6vco" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7w15VOz7rIm" role="37vLTJ">
              <ref role="3cqZAo" node="7w15VOz7rHQ" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7w15VOz7rIq" role="3cqZAp">
          <node concept="3clFbS" id="7w15VOz7rIr" role="3clFbx">
            <node concept="3clFbF" id="7w15VOz7rIs" role="3cqZAp">
              <node concept="2OqwBi" id="7w15VOz7rIt" role="3clFbG">
                <node concept="liA8E" id="7w15VOz7rIy" role="2OqNvi">
                  <ref role="37wK5l" to="u42p:FLkVtyuZUP" resolve="setRole" />
                  <node concept="37vLTw" id="7w15VOz7rIz" role="37wK5m">
                    <ref role="3cqZAo" node="7w15VOz7rHQ" resolve="role" />
                  </node>
                </node>
                <node concept="37vLTw" id="7w15VOz7rIw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7w15VOz7m9j" resolve="selectedObject" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7w15VOz7rI$" role="3cqZAp">
              <node concept="3clFbT" id="7w15VOz7Ppa" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7w15VOz7rIB" role="3clFbw">
            <node concept="3y3z36" id="7w15VOz7rIC" role="3uHU7B">
              <node concept="10Nm6u" id="7w15VOz7rID" role="3uHU7w" />
              <node concept="37vLTw" id="7w15VOz7rIE" role="3uHU7B">
                <ref role="3cqZAo" node="7w15VOz7rHQ" resolve="role" />
              </node>
            </node>
            <node concept="2OqwBi" id="7w15VOz7rIF" role="3uHU7w">
              <node concept="37vLTw" id="7w15VOz7rIG" role="2Oq$k0">
                <ref role="3cqZAo" node="7w15VOz7tuL" resolve="containmentLinks" />
              </node>
              <node concept="3JPx81" id="7w15VOz7rIH" role="2OqNvi">
                <node concept="37vLTw" id="7w15VOz7rII" role="25WWJ7">
                  <ref role="3cqZAo" node="7w15VOz7rHQ" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7w15VOz7rIJ" role="3cqZAp">
          <node concept="3cpWsn" id="7w15VOz7rIK" role="3cpWs9">
            <property role="TrG5h" value="applicableLinks" />
            <node concept="A3Dl8" id="7w15VOz7rIL" role="1tU5fm">
              <node concept="3uibUv" id="7w15VOz7rIM" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7w15VOz7T2s" role="3cqZAp">
          <node concept="37vLTI" id="7w15VOz7T2u" role="3clFbG">
            <node concept="2OqwBi" id="7w15VOz7rIN" role="37vLTx">
              <node concept="37vLTw" id="7w15VOz7rIO" role="2Oq$k0">
                <ref role="3cqZAo" node="7w15VOz7tuL" resolve="containmentLinks" />
              </node>
              <node concept="3zZkjj" id="7w15VOz7rIP" role="2OqNvi">
                <node concept="1bVj0M" id="7w15VOz7rIQ" role="23t8la">
                  <node concept="3clFbS" id="7w15VOz7rIR" role="1bW5cS">
                    <node concept="3clFbF" id="7w15VOz7rIS" role="3cqZAp">
                      <node concept="2OqwBi" id="7w15VOz7rIT" role="3clFbG">
                        <node concept="2HxqBE" id="7w15VOz7rIV" role="2OqNvi">
                          <node concept="1bVj0M" id="7w15VOz7rIW" role="23t8la">
                            <node concept="3clFbS" id="7w15VOz7rIX" role="1bW5cS">
                              <node concept="3clFbF" id="7w15VOz7rIY" role="3cqZAp">
                                <node concept="2OqwBi" id="7w15VOz7rIZ" role="3clFbG">
                                  <node concept="2OqwBi" id="7w15VOz7YhJ" role="2Oq$k0">
                                    <node concept="37vLTw" id="7w15VOz7rJ0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Y5I" resolve="node" />
                                    </node>
                                    <node concept="2yIwOk" id="7w15VOz7YDS" role="2OqNvi" />
                                  </node>
                                  <node concept="liA8E" id="7w15VOz7rJ1" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                                    <node concept="2OqwBi" id="7w15VOz7rJ2" role="37wK5m">
                                      <node concept="37vLTw" id="7w15VOz7rJ3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Y5K" resolve="link" />
                                      </node>
                                      <node concept="liA8E" id="7w15VOz7rJ4" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0Y5I" role="1bW2Oz">
                              <property role="TrG5h" value="node" />
                              <node concept="2jxLKc" id="5W7E4fV0Y5J" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="53SOuJl6dQ9" role="2Oq$k0">
                          <ref role="3cqZAo" node="53SOuJl6a$i" resolve="nodesToMove" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Y5K" role="1bW2Oz">
                    <property role="TrG5h" value="link" />
                    <node concept="2jxLKc" id="5W7E4fV0Y5L" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7w15VOz7T2y" role="37vLTJ">
              <ref role="3cqZAo" node="7w15VOz7rIK" resolve="applicableLinks" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7w15VOz7rJa" role="3cqZAp">
          <node concept="3clFbS" id="7w15VOz7rJb" role="3clFbx">
            <node concept="3clFbF" id="7w15VOz7rJc" role="3cqZAp">
              <node concept="2OqwBi" id="7w15VOz7rJd" role="3clFbG">
                <node concept="liA8E" id="7w15VOz7rJi" role="2OqNvi">
                  <ref role="37wK5l" to="u42p:FLkVtyuZUP" resolve="setRole" />
                  <node concept="2OqwBi" id="7w15VOz7rJj" role="37wK5m">
                    <node concept="37vLTw" id="7w15VOz7rJk" role="2Oq$k0">
                      <ref role="3cqZAo" node="7w15VOz7rIK" resolve="applicableLinks" />
                    </node>
                    <node concept="1uHKPH" id="7w15VOz7rJl" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="7w15VOz7rJg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7w15VOz7m9j" resolve="selectedObject" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7w15VOz7rJm" role="3cqZAp">
              <node concept="3clFbT" id="7w15VOz87p1" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7w15VOz7rJp" role="3clFbw">
            <node concept="3cmrfG" id="7w15VOz7rJq" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="7w15VOz7rJr" role="3uHU7B">
              <node concept="37vLTw" id="7w15VOz7rJs" role="2Oq$k0">
                <ref role="3cqZAo" node="7w15VOz7rIK" resolve="applicableLinks" />
              </node>
              <node concept="34oBXx" id="7w15VOz7rJt" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7w15VOz7rJu" role="3cqZAp">
          <node concept="3clFbT" id="7w15VOz7rJv" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7BJk9SU7qjA" role="1B3o_S" />
      <node concept="10P_77" id="7w15VOz7Nfs" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="55uxGWy8qrH" role="jymVt" />
    <node concept="3clFb_" id="55uxGWy8qrI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="55uxGWy8qrJ" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="55uxGWy8qrK" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="55uxGWy8qrL" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <property role="3TUv4t" value="true" />
        <node concept="2I9FWS" id="55uxGWy8qrM" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="55uxGWy8qrN" role="3clF45" />
      <node concept="3Tm1VV" id="55uxGWy8qrO" role="1B3o_S" />
      <node concept="3clFbS" id="55uxGWy8qrP" role="3clF47">
        <node concept="3clFbF" id="7YjnSrg4Dho" role="3cqZAp">
          <node concept="1rXfSq" id="7YjnSrg4Dhn" role="3clFbG">
            <ref role="37wK5l" node="7YjnSrg4hUC" resolve="execute" />
            <node concept="37vLTw" id="7YjnSrg4FNI" role="37wK5m">
              <ref role="3cqZAo" node="55uxGWy8qrJ" resolve="project" />
            </node>
            <node concept="37vLTw" id="7YjnSrg4NSL" role="37wK5m">
              <ref role="3cqZAo" node="55uxGWy8qrL" resolve="nodesToMove" />
            </node>
            <node concept="10Nm6u" id="7YjnSrg4Ra8" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7YjnSrg4gf_" role="jymVt" />
    <node concept="3clFb_" id="7YjnSrg4hUC" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="37vLTG" id="7YjnSrg4hUD" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7YjnSrg4hUE" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7YjnSrg4hUF" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="2I9FWS" id="7YjnSrg4hUG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7YjnSrg4hUH" role="3clF46">
        <property role="TrG5h" value="destinationHint" />
        <node concept="3uibUv" id="7YjnSrg4hUI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="7YjnSrg4hUJ" role="3clF45" />
      <node concept="3Tm1VV" id="7YjnSrg4hUK" role="1B3o_S" />
      <node concept="3clFbS" id="7YjnSrg4hUR" role="3clF47">
        <node concept="1QHqEK" id="14zPM5ujxXF" role="3cqZAp">
          <node concept="1QHqEC" id="14zPM5ujxXH" role="1QHqEI">
            <node concept="3clFbS" id="14zPM5ujxXJ" role="1bW5cS">
              <node concept="3clFbJ" id="76jnS76965F" role="3cqZAp">
                <node concept="3clFbS" id="76jnS76965H" role="3clFbx">
                  <node concept="3clFbF" id="76jnS769uiu" role="3cqZAp">
                    <node concept="2OqwBi" id="76jnS769vDo" role="3clFbG">
                      <node concept="37vLTw" id="76jnS769uis" role="2Oq$k0">
                        <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                      </node>
                      <node concept="TSZUe" id="76jnS769zkE" role="2OqNvi">
                        <node concept="2OqwBi" id="76jnS769HUa" role="25WWJ7">
                          <node concept="2OqwBi" id="76jnS769$BN" role="2Oq$k0">
                            <node concept="37vLTw" id="76jnS769zu1" role="2Oq$k0">
                              <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                            </node>
                            <node concept="1uHKPH" id="76jnS769BvH" role="2OqNvi" />
                          </node>
                          <node concept="1mfA1w" id="76jnS769Idk" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="76jnS769IFm" role="3cqZAp">
                    <node concept="2OqwBi" id="76jnS769K2g" role="3clFbG">
                      <node concept="37vLTw" id="76jnS769IFk" role="2Oq$k0">
                        <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                      </node>
                      <node concept="liA8E" id="76jnS769PqN" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                        <node concept="3cmrfG" id="76jnS769Pz5" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="76jnS769e6R" role="3clFbw">
                  <node concept="2OqwBi" id="76jnS769l5p" role="3uHU7w">
                    <node concept="2OqwBi" id="76jnS769EGX" role="2Oq$k0">
                      <node concept="2OqwBi" id="76jnS769fV7" role="2Oq$k0">
                        <node concept="37vLTw" id="76jnS769ePo" role="2Oq$k0">
                          <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                        </node>
                        <node concept="1uHKPH" id="76jnS769jVi" role="2OqNvi" />
                      </node>
                      <node concept="1mfA1w" id="76jnS769FgM" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="76jnS769lsf" role="2OqNvi">
                      <node concept="chp4Y" id="76jnS769t9U" role="cj9EA">
                        <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="76jnS769chV" role="3uHU7B">
                    <node concept="2OqwBi" id="76jnS7697tp" role="3uHU7B">
                      <node concept="37vLTw" id="76jnS7696dc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                      </node>
                      <node concept="34oBXx" id="76jnS769aCk" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="76jnS769cYe" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14zPM5uj_iV" role="ukAjM">
            <node concept="37vLTw" id="14zPM5uj$4v" role="2Oq$k0">
              <ref role="3cqZAo" node="7YjnSrg4hUD" resolve="project" />
            </node>
            <node concept="liA8E" id="14zPM5ujACw" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="rqSzNOKnGE" role="3cqZAp" />
        <node concept="3cpWs8" id="55uxGWy8qs6" role="3cqZAp">
          <node concept="3cpWsn" id="55uxGWy8qs7" role="3cpWs9">
            <property role="TrG5h" value="newLocation" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="55uxGWy8qs8" role="1tU5fm">
              <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7YjnSrg5Lmw" role="3cqZAp">
          <node concept="3clFbS" id="7YjnSrg5Lmy" role="3clFbx">
            <node concept="3clFbF" id="7YjnSrg5Uvx" role="3cqZAp">
              <node concept="37vLTI" id="7YjnSrg60$k" role="3clFbG">
                <node concept="37vLTw" id="7YjnSrg62Oi" role="37vLTJ">
                  <ref role="3cqZAo" node="55uxGWy8qs7" resolve="newLocation" />
                </node>
                <node concept="2ShNRf" id="1F5g4zQuROc" role="37vLTx">
                  <node concept="1pGfFk" id="1F5g4zQuSF4" role="2ShVmc">
                    <ref role="37wK5l" to="u42p:1F5g4zQtJYF" resolve="NodeLocation.NodeLocationRoot" />
                    <node concept="1eOMI4" id="7YjnSrg5Z0k" role="37wK5m">
                      <node concept="10QFUN" id="7YjnSrg5Z0j" role="1eOMHV">
                        <node concept="37vLTw" id="7YjnSrg5Z0i" role="10QFUP">
                          <ref role="3cqZAo" node="7YjnSrg4hUH" resolve="destinationHint" />
                        </node>
                        <node concept="3uibUv" id="7YjnSrg5Z0e" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7YjnSrg5OPa" role="3clFbw">
            <node concept="3uibUv" id="7YjnSrg5Q$K" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="37vLTw" id="7YjnSrg5NpW" role="2ZW6bz">
              <ref role="3cqZAo" node="7YjnSrg4hUH" resolve="destinationHint" />
            </node>
          </node>
          <node concept="9aQIb" id="7YjnSrg5RJl" role="9aQIa">
            <node concept="3clFbS" id="7YjnSrg5RJm" role="9aQI4">
              <node concept="3clFbF" id="7YjnSrg5Id7" role="3cqZAp">
                <node concept="37vLTI" id="7YjnSrg5Id9" role="3clFbG">
                  <node concept="1rXfSq" id="4YeUAKAo9KI" role="37vLTx">
                    <ref role="37wK5l" node="4YeUAKAo9KD" resolve="askLocation" />
                    <node concept="37vLTw" id="4YeUAKAo9KG" role="37wK5m">
                      <ref role="3cqZAo" node="7YjnSrg4hUD" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="4YeUAKAo9KH" role="37wK5m">
                      <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7YjnSrg5Idd" role="37vLTJ">
                    <ref role="3cqZAo" node="55uxGWy8qs7" resolve="newLocation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2FJyzikJhOR" role="3cqZAp">
          <node concept="3clFbS" id="2FJyzikJhOT" role="3clFbx">
            <node concept="3cpWs6" id="2FJyzikJiXf" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2FJyzikJisO" role="3clFbw">
            <node concept="10Nm6u" id="2FJyzikJiDJ" role="3uHU7w" />
            <node concept="37vLTw" id="2FJyzikJifA" role="3uHU7B">
              <ref role="3cqZAo" node="55uxGWy8qs7" resolve="newLocation" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5$FcEFNiZrh" role="3cqZAp" />
        <node concept="3cpWs8" id="1hLOda5bc5V" role="3cqZAp">
          <node concept="3cpWsn" id="1hLOda5bc5W" role="3cpWs9">
            <property role="TrG5h" value="processor" />
            <node concept="3uibUv" id="1hLOda5bBPp" role="1tU5fm">
              <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
            </node>
            <node concept="2ShNRf" id="1hLOda5bc5X" role="33vP2m">
              <node concept="1pGfFk" id="1hLOda5bc5Y" role="2ShVmc">
                <ref role="37wK5l" node="5sZ4VO_ZqCx" resolve="MoveNodesUtil.NodeCreatingProcessor" />
                <node concept="37vLTw" id="1hLOda5bc5Z" role="37wK5m">
                  <ref role="3cqZAo" node="55uxGWy8qs7" resolve="newLocation" />
                </node>
                <node concept="37vLTw" id="1hLOda5bc60" role="37wK5m">
                  <ref role="3cqZAo" node="7YjnSrg4hUD" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3BJTP_NmcJI" role="3cqZAp">
          <node concept="2YIFZM" id="4X1d9kMBzJ8" role="3clFbG">
            <ref role="37wK5l" node="2q4uhJjXbuU" resolve="moveTo" />
            <ref role="1Pybhc" node="42LwYUtqJvj" resolve="MoveNodesUtil" />
            <node concept="37vLTw" id="3BJTP_NmdAw" role="37wK5m">
              <ref role="3cqZAo" node="7YjnSrg4hUD" resolve="project" />
            </node>
            <node concept="1rXfSq" id="42LwYUtrCHE" role="37wK5m">
              <ref role="37wK5l" node="55uxGWy8qpE" resolve="getName" />
            </node>
            <node concept="2ShNRf" id="5$FcEFNiMF9" role="37wK5m">
              <node concept="3rGOSV" id="5$FcEFNiNfK" role="2ShVmc">
                <node concept="3uibUv" id="5$FcEFNiNAT" role="3rHrn6">
                  <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
                </node>
                <node concept="_YKpA" id="5$FcEFNiOOh" role="3rHtpV">
                  <node concept="3Tqbb2" id="5$FcEFNiP6A" role="_ZDj9" />
                </node>
                <node concept="3Mi1_Z" id="5$FcEFNiQz5" role="3Mj9YC">
                  <node concept="3Milgn" id="5$FcEFNiVEV" role="3MiYds">
                    <node concept="37vLTw" id="5$FcEFNiWee" role="3MiK7k">
                      <ref role="3cqZAo" node="1hLOda5bc5W" resolve="processor" />
                    </node>
                    <node concept="37vLTw" id="5$FcEFNiWwG" role="3MiMdn">
                      <ref role="3cqZAo" node="7YjnSrg4hUF" resolve="nodesToMove" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7YjnSrg4hUS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7YjnSrg4n2Z" role="jymVt" />
    <node concept="3clFb_" id="4YeUAKAo9KD" role="jymVt">
      <property role="TrG5h" value="askLocation" />
      <node concept="3Tm1VV" id="4YeUAKAo9KE" role="1B3o_S" />
      <node concept="3uibUv" id="4YeUAKAo9KF" role="3clF45">
        <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
      </node>
      <node concept="37vLTG" id="4YeUAKAo9Kq" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4YeUAKAo9Kr" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="4YeUAKAo9Ks" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <property role="3TUv4t" value="true" />
        <node concept="2I9FWS" id="4YeUAKAo9Kt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4YeUAKAo9IE" role="3clF47">
        <node concept="3cpWs8" id="4YeUAKAo9IH" role="3cqZAp">
          <node concept="3cpWsn" id="4YeUAKAo9II" role="3cpWs9">
            <property role="TrG5h" value="currentModel" />
            <node concept="H_c77" id="4YeUAKAo9IJ" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="4YeUAKAo9IK" role="3cqZAp">
          <node concept="1QHqEC" id="4YeUAKAo9IL" role="1QHqEI">
            <node concept="3clFbS" id="4YeUAKAo9IM" role="1bW5cS">
              <node concept="3clFbF" id="4YeUAKAo9IN" role="3cqZAp">
                <node concept="37vLTI" id="4YeUAKAo9IO" role="3clFbG">
                  <node concept="2JrnkZ" id="4YeUAKAo9IP" role="37vLTx">
                    <node concept="2OqwBi" id="4YeUAKAo9IQ" role="2JrQYb">
                      <node concept="2OqwBi" id="4YeUAKAo9IR" role="2Oq$k0">
                        <node concept="37vLTw" id="4YeUAKAo9Ku" role="2Oq$k0">
                          <ref role="3cqZAo" node="4YeUAKAo9Ks" resolve="nodesToMove" />
                        </node>
                        <node concept="1uHKPH" id="4YeUAKAo9IT" role="2OqNvi" />
                      </node>
                      <node concept="I4A8Y" id="4YeUAKAo9IU" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4YeUAKAo9IV" role="37vLTJ">
                    <ref role="3cqZAo" node="4YeUAKAo9II" resolve="currentModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4YeUAKAo9IW" role="ukAjM">
            <node concept="37vLTw" id="4YeUAKAo9Kv" role="2Oq$k0">
              <ref role="3cqZAo" node="4YeUAKAo9Kq" resolve="project" />
            </node>
            <node concept="liA8E" id="4YeUAKAo9IY" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4YeUAKAo9Ko" role="3cqZAp">
          <node concept="2YIFZM" id="4YeUAKAo9J2" role="3cqZAk">
            <ref role="1Pybhc" to="u42p:5zhJtEaVXEd" resolve="MoveNodesDialog" />
            <ref role="37wK5l" to="u42p:5zhJtEaVXFl" resolve="getSelectedObject" />
            <node concept="37vLTw" id="4YeUAKAo9K_" role="37wK5m">
              <ref role="3cqZAo" node="4YeUAKAo9Kq" resolve="project" />
            </node>
            <node concept="37vLTw" id="4YeUAKAo9J4" role="37wK5m">
              <ref role="3cqZAo" node="4YeUAKAo9II" resolve="currentModel" />
            </node>
            <node concept="2ShNRf" id="4YeUAKAo9J5" role="37wK5m">
              <node concept="YeOm9" id="4YeUAKAo9J6" role="2ShVmc">
                <node concept="1Y3b0j" id="4YeUAKAo9J7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="u42p:5zhJtEaVXEe" resolve="MoveNodesDialog.ModelFilter" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3clFb_" id="4YeUAKAo9J8" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getErrorMessage" />
                    <node concept="3Tm1VV" id="4YeUAKAo9J9" role="1B3o_S" />
                    <node concept="37vLTG" id="4YeUAKAo9Ja" role="3clF46">
                      <property role="TrG5h" value="selectedObject" />
                      <node concept="3uibUv" id="4YeUAKAo9Jb" role="1tU5fm">
                        <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
                      </node>
                    </node>
                    <node concept="17QB3L" id="4YeUAKAo9Jc" role="3clF45" />
                    <node concept="3clFbS" id="4YeUAKAo9Jd" role="3clF47">
                      <node concept="3cpWs6" id="4YeUAKAo9Je" role="3cqZAp">
                        <node concept="Xl_RD" id="4YeUAKAo9Jf" role="3cqZAk">
                          <property role="Xl_RC" value="Please select a model or a node that can accommodate the nodes you wish to move" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="4YeUAKAo9Jg" role="1B3o_S" />
                  <node concept="3clFb_" id="4YeUAKAo9Jh" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="check" />
                    <node concept="10P_77" id="4YeUAKAo9Ji" role="3clF45" />
                    <node concept="3Tm1VV" id="4YeUAKAo9Jj" role="1B3o_S" />
                    <node concept="37vLTG" id="4YeUAKAo9Jk" role="3clF46">
                      <property role="TrG5h" value="selectedObject" />
                      <node concept="3uibUv" id="4YeUAKAo9Jl" role="1tU5fm">
                        <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="4YeUAKAo9Jm" role="3clF46">
                      <property role="TrG5h" value="model" />
                      <node concept="3uibUv" id="4YeUAKAo9Jn" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4YeUAKAo9Jo" role="3clF47">
                      <node concept="3clFbJ" id="4YeUAKAo9Jp" role="3cqZAp">
                        <node concept="3clFbS" id="4YeUAKAo9Jq" role="3clFbx">
                          <node concept="3cpWs8" id="4YeUAKAo9Jr" role="3cqZAp">
                            <node concept="3cpWsn" id="4YeUAKAo9Js" role="3cpWs9">
                              <property role="TrG5h" value="roleIsDefined" />
                              <node concept="10P_77" id="4YeUAKAo9Jt" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1QHqEK" id="4YeUAKAo9Ju" role="3cqZAp">
                            <node concept="1QHqEC" id="4YeUAKAo9Jv" role="1QHqEI">
                              <node concept="3clFbS" id="4YeUAKAo9Jw" role="1bW5cS">
                                <node concept="3clFbF" id="4YeUAKAo9Jx" role="3cqZAp">
                                  <node concept="37vLTI" id="4YeUAKAo9Jy" role="3clFbG">
                                    <node concept="1rXfSq" id="4YeUAKAo9Jz" role="37vLTx">
                                      <ref role="37wK5l" node="7w15VOz7m9i" resolve="tryToSetRole" />
                                      <node concept="2OqwBi" id="4YeUAKAo9J$" role="37wK5m">
                                        <node concept="37vLTw" id="4YeUAKAo9Kz" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4YeUAKAo9Kq" resolve="project" />
                                        </node>
                                        <node concept="liA8E" id="4YeUAKAo9JA" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4YeUAKAo9Ky" role="37wK5m">
                                        <ref role="3cqZAo" node="4YeUAKAo9Ks" resolve="nodesToMove" />
                                      </node>
                                      <node concept="10QFUN" id="4YeUAKAo9JC" role="37wK5m">
                                        <node concept="37vLTw" id="4YeUAKAo9JD" role="10QFUP">
                                          <ref role="3cqZAo" node="4YeUAKAo9Jk" resolve="selectedObject" />
                                        </node>
                                        <node concept="3uibUv" id="4YeUAKAo9JE" role="10QFUM">
                                          <ref role="3uigEE" to="u42p:1F5g4zQtp74" resolve="NodeLocation.NodeLocationChild" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4YeUAKAo9JF" role="37vLTJ">
                                      <ref role="3cqZAo" node="4YeUAKAo9Js" resolve="roleIsDefined" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4YeUAKAo9JG" role="ukAjM">
                              <node concept="37vLTw" id="4YeUAKAo9KA" role="2Oq$k0">
                                <ref role="3cqZAo" node="4YeUAKAo9Kq" resolve="project" />
                              </node>
                              <node concept="liA8E" id="4YeUAKAo9JI" role="2OqNvi">
                                <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4YeUAKAo9JJ" role="3cqZAp">
                            <node concept="37vLTw" id="4YeUAKAo9JK" role="3cqZAk">
                              <ref role="3cqZAo" node="4YeUAKAo9Js" resolve="roleIsDefined" />
                            </node>
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="4YeUAKAo9JL" role="3clFbw">
                          <node concept="3uibUv" id="4YeUAKAo9JM" role="2ZW6by">
                            <ref role="3uigEE" to="u42p:1F5g4zQtp74" resolve="NodeLocation.NodeLocationChild" />
                          </node>
                          <node concept="37vLTw" id="4YeUAKAo9JN" role="2ZW6bz">
                            <ref role="3cqZAo" node="4YeUAKAo9Jk" resolve="selectedObject" />
                          </node>
                        </node>
                        <node concept="3eNFk2" id="4YeUAKAo9JO" role="3eNLev">
                          <node concept="3clFbS" id="4YeUAKAo9JP" role="3eOfB_">
                            <node concept="3cpWs6" id="4YeUAKAo9JQ" role="3cqZAp">
                              <node concept="2OqwBi" id="4YeUAKAo9JR" role="3cqZAk">
                                <node concept="2ShNRf" id="4YeUAKAo9JS" role="2Oq$k0">
                                  <node concept="1pGfFk" id="4YeUAKAo9JT" role="2ShVmc">
                                    <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                                    <node concept="2OqwBi" id="4YeUAKAo9JU" role="37wK5m">
                                      <node concept="37vLTw" id="4YeUAKAo9Kw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4YeUAKAo9Kq" resolve="project" />
                                      </node>
                                      <node concept="liA8E" id="4YeUAKAo9JW" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4YeUAKAo9JX" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                                  <node concept="1bVj0M" id="4YeUAKAo9JY" role="37wK5m">
                                    <node concept="3clFbS" id="4YeUAKAo9JZ" role="1bW5cS">
                                      <node concept="3clFbF" id="4YeUAKAo9K0" role="3cqZAp">
                                        <node concept="2OqwBi" id="4YeUAKAo9K1" role="3clFbG">
                                          <node concept="37vLTw" id="4YeUAKAo9K$" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4YeUAKAo9Ks" resolve="nodesToMove" />
                                          </node>
                                          <node concept="2HxqBE" id="4YeUAKAo9K3" role="2OqNvi">
                                            <node concept="1bVj0M" id="4YeUAKAo9K4" role="23t8la">
                                              <node concept="3clFbS" id="4YeUAKAo9K5" role="1bW5cS">
                                                <node concept="3clFbF" id="4YeUAKAo9K6" role="3cqZAp">
                                                  <node concept="2OqwBi" id="4YeUAKAo9K7" role="3clFbG">
                                                    <node concept="37vLTw" id="4YeUAKAo9K8" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="4YeUAKAo9Jk" resolve="selectedObject" />
                                                    </node>
                                                    <node concept="liA8E" id="4YeUAKAo9K9" role="2OqNvi">
                                                      <ref role="37wK5l" to="u42p:1F5g4zQtm7Z" resolve="canInsert" />
                                                      <node concept="2OqwBi" id="4YeUAKAo9Ka" role="37wK5m">
                                                        <node concept="37vLTw" id="4YeUAKAo9Kx" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="4YeUAKAo9Kq" resolve="project" />
                                                        </node>
                                                        <node concept="liA8E" id="4YeUAKAo9Kc" role="2OqNvi">
                                                          <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                                        </node>
                                                      </node>
                                                      <node concept="37vLTw" id="4YeUAKAo9Kd" role="37wK5m">
                                                        <ref role="3cqZAo" node="5W7E4fV0Y5M" resolve="it" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="gl6BB" id="5W7E4fV0Y5M" role="1bW2Oz">
                                                <property role="TrG5h" value="it" />
                                                <node concept="2jxLKc" id="5W7E4fV0Y5N" role="1tU5fm" />
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
                          <node concept="2ZW3vV" id="4YeUAKAo9Kg" role="3eO9$A">
                            <node concept="3uibUv" id="4YeUAKAo9Kh" role="2ZW6by">
                              <ref role="3uigEE" to="u42p:1F5g4zQtrQW" resolve="NodeLocation.NodeLocationRoot" />
                            </node>
                            <node concept="37vLTw" id="4YeUAKAo9Ki" role="2ZW6bz">
                              <ref role="3cqZAo" node="4YeUAKAo9Jk" resolve="selectedObject" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="4YeUAKAo9Kj" role="9aQIa">
                          <node concept="3clFbS" id="4YeUAKAo9Kk" role="9aQI4">
                            <node concept="3cpWs6" id="4YeUAKAo9Kl" role="3cqZAp">
                              <node concept="3clFbT" id="4YeUAKAo9Km" role="3cqZAk">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4YeUAKAo9Kn" role="2AJF6D">
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
    <node concept="3Tm1VV" id="1F5g4zQqVSS" role="1B3o_S" />
    <node concept="3uibUv" id="1F5g4zQqVTe" role="EKbjA">
      <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesAction" />
    </node>
  </node>
  <node concept="312cEu" id="42LwYUtqJvj">
    <property role="TrG5h" value="MoveNodesUtil" />
    <node concept="2tJIrI" id="42LwYUtqNsy" role="jymVt" />
    <node concept="2tJIrI" id="42LwYUtqNtQ" role="jymVt" />
    <node concept="2YIFZL" id="55uxGWy8qqr" role="jymVt">
      <property role="TrG5h" value="areSiblings" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="55uxGWy8qqs" role="3clF47">
        <node concept="3clFbJ" id="55uxGWy8qqt" role="3cqZAp">
          <node concept="3clFbS" id="55uxGWy8qqu" role="3clFbx">
            <node concept="3cpWs6" id="55uxGWy8qqv" role="3cqZAp">
              <node concept="3clFbT" id="55uxGWy8qqw" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="55uxGWy8qqx" role="3clFbw">
            <node concept="37vLTw" id="55uxGWy8qqy" role="2Oq$k0">
              <ref role="3cqZAo" node="55uxGWy8qrC" resolve="nodesToMove" />
            </node>
            <node concept="1v1jN8" id="55uxGWy8qqz" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="55uxGWy8qq$" role="3cqZAp">
          <node concept="3cpWsn" id="55uxGWy8qq_" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10P_77" id="55uxGWy8qqA" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="55uxGWy8qqB" role="3cqZAp">
          <node concept="1QHqEC" id="55uxGWy8qqC" role="1QHqEI">
            <node concept="3clFbS" id="55uxGWy8qqD" role="1bW5cS">
              <node concept="3cpWs8" id="55uxGWy8qqE" role="3cqZAp">
                <node concept="3cpWsn" id="55uxGWy8qqF" role="3cpWs9">
                  <property role="TrG5h" value="firstNode" />
                  <node concept="3Tqbb2" id="55uxGWy8qqG" role="1tU5fm" />
                  <node concept="2OqwBi" id="55uxGWy8qqH" role="33vP2m">
                    <node concept="37vLTw" id="55uxGWy8qqI" role="2Oq$k0">
                      <ref role="3cqZAo" node="55uxGWy8qrC" resolve="nodesToMove" />
                    </node>
                    <node concept="1uHKPH" id="55uxGWy8qqJ" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="55uxGWy8qqK" role="3cqZAp">
                <node concept="3cpWsn" id="55uxGWy8qqL" role="3cpWs9">
                  <property role="TrG5h" value="containmentLink" />
                  <node concept="3uibUv" id="55uxGWy8qqM" role="1tU5fm">
                    <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                  </node>
                  <node concept="2OqwBi" id="55uxGWy8qqN" role="33vP2m">
                    <node concept="2JrnkZ" id="55uxGWy8qqO" role="2Oq$k0">
                      <node concept="37vLTw" id="55uxGWy8qqP" role="2JrQYb">
                        <ref role="3cqZAo" node="55uxGWy8qqF" resolve="firstNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="55uxGWy8qqQ" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="55uxGWy8qqR" role="3cqZAp">
                <node concept="3cpWsn" id="55uxGWy8qqS" role="3cpWs9">
                  <property role="TrG5h" value="parent" />
                  <node concept="3uibUv" id="55uxGWy8qqT" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="2OqwBi" id="55uxGWy8qqU" role="33vP2m">
                    <node concept="2JrnkZ" id="55uxGWy8qqV" role="2Oq$k0">
                      <node concept="37vLTw" id="55uxGWy8qqW" role="2JrQYb">
                        <ref role="3cqZAo" node="55uxGWy8qqF" resolve="firstNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="55uxGWy8qqX" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="55uxGWy8qqY" role="3cqZAp">
                <node concept="3cpWsn" id="55uxGWy8qqZ" role="3cpWs9">
                  <property role="TrG5h" value="model" />
                  <node concept="3uibUv" id="55uxGWy8qr0" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="2OqwBi" id="55uxGWy8qr1" role="33vP2m">
                    <node concept="2JrnkZ" id="55uxGWy8qr2" role="2Oq$k0">
                      <node concept="37vLTw" id="55uxGWy8qr3" role="2JrQYb">
                        <ref role="3cqZAo" node="55uxGWy8qqF" resolve="firstNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="55uxGWy8qr4" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="55uxGWy8qr5" role="3cqZAp">
                <node concept="37vLTI" id="55uxGWy8qr6" role="3clFbG">
                  <node concept="37vLTw" id="55uxGWy8qr7" role="37vLTJ">
                    <ref role="3cqZAo" node="55uxGWy8qq_" resolve="result" />
                  </node>
                  <node concept="2OqwBi" id="55uxGWy8qr8" role="37vLTx">
                    <node concept="37vLTw" id="55uxGWy8qr9" role="2Oq$k0">
                      <ref role="3cqZAo" node="55uxGWy8qrC" resolve="nodesToMove" />
                    </node>
                    <node concept="2HxqBE" id="55uxGWy8qra" role="2OqNvi">
                      <node concept="1bVj0M" id="55uxGWy8qrb" role="23t8la">
                        <node concept="3clFbS" id="55uxGWy8qrc" role="1bW5cS">
                          <node concept="3clFbF" id="55uxGWy8qrd" role="3cqZAp">
                            <node concept="1Wc70l" id="55uxGWy8qre" role="3clFbG">
                              <node concept="3clFbC" id="55uxGWy8qrf" role="3uHU7w">
                                <node concept="37vLTw" id="55uxGWy8qrg" role="3uHU7w">
                                  <ref role="3cqZAo" node="55uxGWy8qqZ" resolve="model" />
                                </node>
                                <node concept="2OqwBi" id="55uxGWy8qrh" role="3uHU7B">
                                  <node concept="2JrnkZ" id="55uxGWy8qri" role="2Oq$k0">
                                    <node concept="37vLTw" id="55uxGWy8qrj" role="2JrQYb">
                                      <ref role="3cqZAo" node="5W7E4fV0Y5O" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="55uxGWy8qrk" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1Wc70l" id="55uxGWy8qrl" role="3uHU7B">
                                <node concept="17R0WA" id="55uxGWy8qrm" role="3uHU7B">
                                  <node concept="2OqwBi" id="55uxGWy8qrn" role="3uHU7B">
                                    <node concept="2JrnkZ" id="55uxGWy8qro" role="2Oq$k0">
                                      <node concept="37vLTw" id="55uxGWy8qrp" role="2JrQYb">
                                        <ref role="3cqZAo" node="5W7E4fV0Y5O" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="55uxGWy8qrq" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="55uxGWy8qrr" role="3uHU7w">
                                    <ref role="3cqZAo" node="55uxGWy8qqL" resolve="containmentLink" />
                                  </node>
                                </node>
                                <node concept="3clFbC" id="55uxGWy8qrs" role="3uHU7w">
                                  <node concept="2OqwBi" id="55uxGWy8qrt" role="3uHU7B">
                                    <node concept="2JrnkZ" id="55uxGWy8qru" role="2Oq$k0">
                                      <node concept="37vLTw" id="55uxGWy8qrv" role="2JrQYb">
                                        <ref role="3cqZAo" node="5W7E4fV0Y5O" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="55uxGWy8qrw" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="55uxGWy8qrx" role="3uHU7w">
                                    <ref role="3cqZAo" node="55uxGWy8qqS" resolve="parent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Y5O" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Y5P" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="55uxGWy8qr$" role="ukAjM">
            <ref role="3cqZAo" node="55uxGWy8qrE" resolve="repository" />
          </node>
        </node>
        <node concept="3cpWs6" id="55uxGWy8qr_" role="3cqZAp">
          <node concept="37vLTw" id="55uxGWy8qrA" role="3cqZAk">
            <ref role="3cqZAo" node="55uxGWy8qq_" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="55uxGWy8qrB" role="3clF45" />
      <node concept="37vLTG" id="55uxGWy8qrC" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="2I9FWS" id="55uxGWy8qrD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="55uxGWy8qrE" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="55uxGWy8qrF" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="55uxGWy8qrG" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="42LwYUtqJvk" role="1B3o_S" />
    <node concept="2tJIrI" id="FLkVtyxZGI" role="jymVt" />
    <node concept="312cEu" id="5$FcEFNfGLY" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="ListIndex" />
      <node concept="312cEg" id="5$FcEFNg7gQ" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myIndices" />
        <property role="3TUv4t" value="false" />
        <node concept="3rvAFt" id="5$FcEFNg6SK" role="1tU5fm">
          <node concept="16syzq" id="5$FcEFNg78l" role="3rvQeY">
            <ref role="16sUi3" node="5$FcEFNfKcI" resolve="T" />
          </node>
          <node concept="10Oyi0" id="5$FcEFNg7gN" role="3rvSg0" />
        </node>
        <node concept="2ShNRf" id="5$FcEFNg808" role="33vP2m">
          <node concept="3rGOSV" id="5$FcEFNg7UY" role="2ShVmc">
            <node concept="16syzq" id="5$FcEFNg7UZ" role="3rHrn6">
              <ref role="16sUi3" node="5$FcEFNfKcI" resolve="T" />
            </node>
            <node concept="10Oyi0" id="5$FcEFNg7V0" role="3rHtpV" />
          </node>
        </node>
        <node concept="3Tm6S6" id="5$FcEFNg7G9" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="5$FcEFNg56T" role="jymVt">
        <node concept="37vLTG" id="5$FcEFNg5el" role="3clF46">
          <property role="TrG5h" value="patternList" />
          <node concept="_YKpA" id="5$FcEFNg5Go" role="1tU5fm">
            <node concept="16syzq" id="5$FcEFNg6in" role="_ZDj9">
              <ref role="16sUi3" node="5$FcEFNfKcI" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="5$FcEFNg56V" role="3clF45" />
        <node concept="3Tm1VV" id="5$FcEFNg56W" role="1B3o_S" />
        <node concept="3clFbS" id="5$FcEFNg56X" role="3clF47">
          <node concept="1Dw8fO" id="5$FcEFNg8xw" role="3cqZAp">
            <node concept="3clFbS" id="5$FcEFNg8xx" role="2LFqv$">
              <node concept="3clFbF" id="5$FcEFNg8xy" role="3cqZAp">
                <node concept="37vLTI" id="5$FcEFNg8xz" role="3clFbG">
                  <node concept="37vLTw" id="5$FcEFNg8x$" role="37vLTx">
                    <ref role="3cqZAo" node="5$FcEFNg8xE" resolve="i" />
                  </node>
                  <node concept="3EllGN" id="5$FcEFNg8x_" role="37vLTJ">
                    <node concept="1y4W85" id="5$FcEFNg8xA" role="3ElVtu">
                      <node concept="37vLTw" id="5$FcEFNg8xB" role="1y58nS">
                        <ref role="3cqZAo" node="5$FcEFNg8xE" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="5$FcEFNga1f" role="1y566C">
                        <ref role="3cqZAo" node="5$FcEFNg5el" resolve="patternList" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5$FcEFNg9AX" role="3ElQJh">
                      <ref role="3cqZAo" node="5$FcEFNg7gQ" resolve="myIndices" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5$FcEFNg8xE" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="5$FcEFNg8xF" role="1tU5fm" />
              <node concept="3cmrfG" id="5$FcEFNg8xG" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="5$FcEFNg8xH" role="1Dwp0S">
              <node concept="2OqwBi" id="5$FcEFNg8xI" role="3uHU7w">
                <node concept="37vLTw" id="5$FcEFNg99t" role="2Oq$k0">
                  <ref role="3cqZAo" node="5$FcEFNg5el" resolve="patternList" />
                </node>
                <node concept="34oBXx" id="5$FcEFNg8xK" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="5$FcEFNg8xL" role="3uHU7B">
                <ref role="3cqZAo" node="5$FcEFNg8xE" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="5$FcEFNg8xM" role="1Dwrff">
              <node concept="37vLTw" id="5$FcEFNg8xN" role="2$L3a6">
                <ref role="3cqZAo" node="5$FcEFNg8xE" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5$FcEFNfKz5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getIndex" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="5$FcEFNfKz8" role="3clF47">
          <node concept="3clFbF" id="5$FcEFNgaNH" role="3cqZAp">
            <node concept="3EllGN" id="5$FcEFNgbtN" role="3clFbG">
              <node concept="37vLTw" id="5$FcEFNgd9a" role="3ElVtu">
                <ref role="3cqZAo" node="5$FcEFNfL6K" resolve="object" />
              </node>
              <node concept="37vLTw" id="5$FcEFNgaNG" role="3ElQJh">
                <ref role="3cqZAo" node="5$FcEFNg7gQ" resolve="myIndices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5$FcEFNfK6N" role="1B3o_S" />
        <node concept="10Oyi0" id="5$FcEFNfKyX" role="3clF45" />
        <node concept="37vLTG" id="5$FcEFNfL6K" role="3clF46">
          <property role="TrG5h" value="object" />
          <node concept="16syzq" id="5$FcEFNfL6J" role="1tU5fm">
            <ref role="16sUi3" node="5$FcEFNfKcI" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5$FcEFNfMjk" role="jymVt">
        <property role="TrG5h" value="getCorrespondent" />
        <node concept="16syzq" id="5$FcEFNfNhx" role="3clF45">
          <ref role="16sUi3" node="5$FcEFNfMV5" resolve="S" />
        </node>
        <node concept="3Tm1VV" id="5$FcEFNfMjn" role="1B3o_S" />
        <node concept="3clFbS" id="5$FcEFNfMjo" role="3clF47">
          <node concept="3cpWs6" id="5$FcEFNfVJi" role="3cqZAp">
            <node concept="1y4W85" id="5$FcEFNg20G" role="3cqZAk">
              <node concept="1rXfSq" id="5$FcEFNg2HM" role="1y58nS">
                <ref role="37wK5l" node="5$FcEFNfKz5" resolve="getIndex" />
                <node concept="37vLTw" id="5$FcEFNg4Kx" role="37wK5m">
                  <ref role="3cqZAo" node="5$FcEFNfScV" resolve="anchor" />
                </node>
              </node>
              <node concept="37vLTw" id="5$FcEFNfXfF" role="1y566C">
                <ref role="3cqZAo" node="5$FcEFNfTa3" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5$FcEFNfMV5" role="16eVyc">
          <property role="TrG5h" value="S" />
        </node>
        <node concept="37vLTG" id="5$FcEFNfTa3" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="_YKpA" id="5$FcEFNfZtX" role="1tU5fm">
            <node concept="16syzq" id="5$FcEFNfZtZ" role="_ZDj9">
              <ref role="16sUi3" node="5$FcEFNfMV5" resolve="S" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5$FcEFNfScV" role="3clF46">
          <property role="TrG5h" value="anchor" />
          <node concept="16syzq" id="5$FcEFNfScU" role="1tU5fm">
            <ref role="16sUi3" node="5$FcEFNfKcI" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5$FcEFNfEyX" role="1B3o_S" />
      <node concept="16euLQ" id="5$FcEFNfKcI" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2q4uhJjWPxu" role="jymVt" />
    <node concept="2YIFZL" id="2q4uhJjXbuU" role="jymVt">
      <property role="TrG5h" value="moveTo" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2q4uhJjWRiH" role="3clF47">
        <node concept="3clFbF" id="2q4uhJjX4HU" role="3cqZAp">
          <node concept="1rXfSq" id="2q4uhJjX4HT" role="3clFbG">
            <ref role="37wK5l" node="42LwYUtrxfj" resolve="moveTo" />
            <node concept="37vLTw" id="2q4uhJjX5iL" role="37wK5m">
              <ref role="3cqZAo" node="2q4uhJjWZt2" resolve="project" />
            </node>
            <node concept="37vLTw" id="2q4uhJjX5tf" role="37wK5m">
              <ref role="3cqZAo" node="2q4uhJjWZt4" resolve="refactoringName" />
            </node>
            <node concept="37vLTw" id="2q4uhJjX5D0" role="37wK5m">
              <ref role="3cqZAo" node="2q4uhJjWZt6" resolve="processorToMoveRoots" />
            </node>
            <node concept="2ShNRf" id="2q4uhJjX5VJ" role="37wK5m">
              <node concept="1pGfFk" id="2q4uhJjX6rJ" role="2ShVmc">
                <ref role="37wK5l" node="7i7ttYT1Jur" resolve="DefaultRefactoringUI" />
                <node concept="37vLTw" id="2q4uhJjX6Co" role="37wK5m">
                  <ref role="3cqZAo" node="2q4uhJjWZt2" resolve="project" />
                </node>
                <node concept="37vLTw" id="7i7ttYT4sJF" role="37wK5m">
                  <ref role="3cqZAo" node="2q4uhJjWZt4" resolve="refactoringName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2q4uhJjWZt2" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2q4uhJjX4U2" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="2q4uhJjWZt4" role="3clF46">
        <property role="TrG5h" value="refactoringName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="2q4uhJjWZt5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2q4uhJjWZt6" role="3clF46">
        <property role="TrG5h" value="processorToMoveRoots" />
        <property role="3TUv4t" value="true" />
        <node concept="3rvAFt" id="2q4uhJjWZt7" role="1tU5fm">
          <node concept="_YKpA" id="2q4uhJjWZt8" role="3rvSg0">
            <node concept="3Tqbb2" id="2q4uhJjWZt9" role="_ZDj9" />
          </node>
          <node concept="3uibUv" id="2q4uhJjWZta" role="3rvQeY">
            <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2q4uhJjWRiF" role="3clF45" />
      <node concept="3Tm1VV" id="2q4uhJjWRiG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="FLkVtyHr9q" role="jymVt" />
    <node concept="2YIFZL" id="42LwYUtrxfj" role="jymVt">
      <property role="TrG5h" value="moveTo" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5$FcEFMZqj$" role="3clF47">
        <node concept="3clFbH" id="5$FcEFMZqj_" role="3cqZAp" />
        <node concept="1QHqEK" id="5$FcEFMZqjA" role="3cqZAp">
          <node concept="1QHqEC" id="5$FcEFMZqjB" role="1QHqEI">
            <node concept="3clFbS" id="5$FcEFMZqjC" role="1bW5cS">
              <node concept="2Gpval" id="5$FcEFMZqjD" role="3cqZAp">
                <node concept="2GrKxI" id="5$FcEFMZqjE" role="2Gsz3X">
                  <property role="TrG5h" value="mapping" />
                </node>
                <node concept="3clFbS" id="5$FcEFMZqjF" role="2LFqv$">
                  <node concept="3clFbJ" id="5$FcEFNfrSy" role="3cqZAp">
                    <node concept="3clFbS" id="5$FcEFNfrS$" role="3clFbx">
                      <node concept="YS8fn" id="5$FcEFMZqjI" role="3cqZAp">
                        <node concept="2ShNRf" id="5$FcEFMZqjJ" role="YScLw">
                          <node concept="1pGfFk" id="5$FcEFMZqjK" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="5$FcEFNfxi_" role="3clFbw">
                      <node concept="2OqwBi" id="5$FcEFNfxiB" role="3fr31v">
                        <node concept="2OqwBi" id="5$FcEFNfxiC" role="2Oq$k0">
                          <node concept="2GrUjf" id="5$FcEFNfxiD" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="5$FcEFMZqjE" resolve="mapping" />
                          </node>
                          <node concept="3AY5_j" id="5$FcEFNfxiE" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="5$FcEFNfxiF" role="2OqNvi">
                          <ref role="37wK5l" node="1hLOda5bxQa" resolve="isValid" />
                          <node concept="2OqwBi" id="5$FcEFNfxiG" role="37wK5m">
                            <node concept="2GrUjf" id="5$FcEFNfxiH" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="5$FcEFMZqjE" resolve="mapping" />
                            </node>
                            <node concept="3AV6Ez" id="5$FcEFNfxiI" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5$FcEFNfoIp" role="2GsD0m">
                  <ref role="3cqZAo" node="5$FcEFNfgfm" resolve="processorToMoveRoots" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5$FcEFMZqjV" role="ukAjM">
            <node concept="37vLTw" id="5$FcEFMZqjW" role="2Oq$k0">
              <ref role="3cqZAo" node="5$FcEFMZqn7" resolve="project" />
            </node>
            <node concept="liA8E" id="5$FcEFMZqjX" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5$FcEFMZqjY" role="3cqZAp" />
        <node concept="3cpWs8" id="5$FcEFMZqjZ" role="3cqZAp">
          <node concept="3cpWsn" id="5$FcEFMZqk0" role="3cpWs9">
            <property role="TrG5h" value="moveRootsToDescendants" />
            <property role="3TUv4t" value="true" />
            <node concept="3rvAFt" id="5$FcEFNgqSa" role="1tU5fm">
              <node concept="3uibUv" id="5$FcEFNi7T0" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="_YKpA" id="5$FcEFNgsVV" role="3rvSg0">
                <node concept="3uibUv" id="5$FcEFNinmG" role="_ZDj9">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5$FcEFNgScs" role="33vP2m">
              <node concept="3rGOSV" id="5$FcEFNgRb8" role="2ShVmc">
                <node concept="3uibUv" id="5$FcEFNi8Gd" role="3rHrn6">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="_YKpA" id="5$FcEFNgRba" role="3rHtpV">
                  <node concept="3uibUv" id="5$FcEFNioiV" role="_ZDj9">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5$FcEFNh6WH" role="3cqZAp">
          <node concept="3cpWsn" id="5$FcEFNh6WK" role="3cpWs9">
            <property role="TrG5h" value="allNodes" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="5$FcEFNh6WD" role="1tU5fm">
              <node concept="3Tqbb2" id="5$FcEFNh7H9" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="5$FcEFNirec" role="33vP2m">
              <node concept="Tc6Ow" id="5$FcEFNiq_J" role="2ShVmc">
                <node concept="3Tqbb2" id="5$FcEFNiq_K" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="5$FcEFMZqk3" role="3cqZAp">
          <node concept="1QHqEC" id="5$FcEFMZqk4" role="1QHqEI">
            <node concept="3clFbS" id="5$FcEFMZqk5" role="1bW5cS">
              <node concept="2Gpval" id="5$FcEFNgHvM" role="3cqZAp">
                <node concept="2GrKxI" id="5$FcEFNgHvO" role="2Gsz3X">
                  <property role="TrG5h" value="mapping" />
                </node>
                <node concept="37vLTw" id="5$FcEFNgIi3" role="2GsD0m">
                  <ref role="3cqZAo" node="5$FcEFNfgfm" resolve="processorToMoveRoots" />
                </node>
                <node concept="3clFbS" id="5$FcEFNgHvS" role="2LFqv$">
                  <node concept="3cpWs8" id="5$FcEFNgPqh" role="3cqZAp">
                    <node concept="3cpWsn" id="5$FcEFNgPqi" role="3cpWs9">
                      <property role="TrG5h" value="processor" />
                      <node concept="3uibUv" id="5$FcEFNgPpM" role="1tU5fm">
                        <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
                      </node>
                      <node concept="2OqwBi" id="5$FcEFNgPqj" role="33vP2m">
                        <node concept="2GrUjf" id="5$FcEFNgPqk" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="5$FcEFNgHvO" resolve="mapping" />
                        </node>
                        <node concept="3AY5_j" id="5$FcEFNgPql" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="5$FcEFNgMSx" role="3cqZAp">
                    <node concept="2GrKxI" id="5$FcEFNgMSy" role="2Gsz3X">
                      <property role="TrG5h" value="moveRoot" />
                    </node>
                    <node concept="2OqwBi" id="5$FcEFNgNAu" role="2GsD0m">
                      <node concept="2GrUjf" id="5$FcEFNgNbP" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5$FcEFNgHvO" resolve="mapping" />
                      </node>
                      <node concept="3AV6Ez" id="5$FcEFNgNRp" role="2OqNvi" />
                    </node>
                    <node concept="3clFbS" id="5$FcEFNgMS$" role="2LFqv$">
                      <node concept="3cpWs8" id="5$FcEFNigtI" role="3cqZAp">
                        <node concept="3cpWsn" id="5$FcEFNigtJ" role="3cpWs9">
                          <property role="TrG5h" value="nodesToSearch" />
                          <node concept="_YKpA" id="5$FcEFNigoW" role="1tU5fm">
                            <node concept="3Tqbb2" id="5$FcEFNigoZ" role="_ZDj9" />
                          </node>
                          <node concept="2OqwBi" id="5$FcEFNigtK" role="33vP2m">
                            <node concept="37vLTw" id="5$FcEFNigtL" role="2Oq$k0">
                              <ref role="3cqZAo" node="5$FcEFNgPqi" resolve="processor" />
                            </node>
                            <node concept="liA8E" id="5$FcEFNigtM" role="2OqNvi">
                              <ref role="37wK5l" node="1IxrbjlNwlg" resolve="getNodesToSearch" />
                              <node concept="2GrUjf" id="5$FcEFNigtN" role="37wK5m">
                                <ref role="2Gs0qQ" node="5$FcEFNgMSy" resolve="moveRoot" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5$FcEFNgQWF" role="3cqZAp">
                        <node concept="37vLTI" id="5$FcEFNgVnz" role="3clFbG">
                          <node concept="2OqwBi" id="5$FcEFNirX4" role="37vLTx">
                            <node concept="2OqwBi" id="5$FcEFNii6i" role="2Oq$k0">
                              <node concept="37vLTw" id="5$FcEFNigtO" role="2Oq$k0">
                                <ref role="3cqZAo" node="5$FcEFNigtJ" resolve="nodesToSearch" />
                              </node>
                              <node concept="3$u5V9" id="5$FcEFNijFS" role="2OqNvi">
                                <node concept="1bVj0M" id="5$FcEFNijFU" role="23t8la">
                                  <node concept="3clFbS" id="5$FcEFNijFV" role="1bW5cS">
                                    <node concept="3clFbF" id="5$FcEFNikmb" role="3cqZAp">
                                      <node concept="2OqwBi" id="5$FcEFNilQh" role="3clFbG">
                                        <node concept="2JrnkZ" id="5$FcEFNilzZ" role="2Oq$k0">
                                          <node concept="37vLTw" id="5iUdt5cRlrg" role="2JrQYb">
                                            <ref role="3cqZAo" node="5W7E4fV0Y5Q" resolve="it" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="5$FcEFNimeu" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0Y5Q" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="5W7E4fV0Y5R" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="5$FcEFNisIp" role="2OqNvi" />
                          </node>
                          <node concept="3EllGN" id="5$FcEFNgTDr" role="37vLTJ">
                            <node concept="2OqwBi" id="5iUdt5cRs2e" role="3ElVtu">
                              <node concept="2GrUjf" id="5iUdt5cRs2d" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="5$FcEFNgMSy" resolve="moveRoot" />
                              </node>
                              <node concept="iZEcu" id="5iUdt5cRs2f" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="5$FcEFNgQWE" role="3ElQJh">
                              <ref role="3cqZAo" node="5$FcEFMZqk0" resolve="moveRootsToDescendants" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5$FcEFNiczT" role="3cqZAp">
                        <node concept="2OqwBi" id="5$FcEFNid$U" role="3clFbG">
                          <node concept="37vLTw" id="5$FcEFNiczR" role="2Oq$k0">
                            <ref role="3cqZAo" node="5$FcEFNh6WK" resolve="allNodes" />
                          </node>
                          <node concept="X8dFx" id="5$FcEFNif6t" role="2OqNvi">
                            <node concept="37vLTw" id="5$FcEFNigtP" role="25WWJ7">
                              <ref role="3cqZAo" node="5$FcEFNigtJ" resolve="nodesToSearch" />
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
          <node concept="2OqwBi" id="5$FcEFMZqkr" role="ukAjM">
            <node concept="37vLTw" id="5$FcEFMZqks" role="2Oq$k0">
              <ref role="3cqZAo" node="5$FcEFMZqn7" resolve="project" />
            </node>
            <node concept="liA8E" id="5$FcEFMZqkt" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5$FcEFNhhnH" role="3cqZAp">
          <node concept="3cpWsn" id="5$FcEFNhhnI" role="3cpWs9">
            <property role="TrG5h" value="nodeChangesCorrespondence" />
            <node concept="3uibUv" id="5$FcEFNhhnJ" role="1tU5fm">
              <ref role="3uigEE" node="5$FcEFNfGLY" resolve="MoveNodesUtil.ListIndex" />
              <node concept="3uibUv" id="5$FcEFNhvsZ" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="5$FcEFNhig5" role="33vP2m">
              <node concept="1pGfFk" id="5$FcEFNhiaP" role="2ShVmc">
                <ref role="37wK5l" node="5$FcEFNg56T" resolve="MoveNodesUtil.ListIndex" />
                <node concept="2OqwBi" id="5$FcEFNhptd" role="37wK5m">
                  <node concept="2OqwBi" id="5$FcEFNhlCL" role="2Oq$k0">
                    <node concept="37vLTw" id="5$FcEFNhjGv" role="2Oq$k0">
                      <ref role="3cqZAo" node="5$FcEFNh6WK" resolve="allNodes" />
                    </node>
                    <node concept="3$u5V9" id="5$FcEFNhn6d" role="2OqNvi">
                      <node concept="1bVj0M" id="5$FcEFNhn6f" role="23t8la">
                        <node concept="3clFbS" id="5$FcEFNhn6g" role="1bW5cS">
                          <node concept="3clFbF" id="5$FcEFNhnAg" role="3cqZAp">
                            <node concept="2OqwBi" id="3XR0QgVCmOB" role="3clFbG">
                              <node concept="37vLTw" id="3XR0QgVCmOA" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Y5S" resolve="it" />
                              </node>
                              <node concept="iZEcu" id="3XR0QgVCmOC" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Y5S" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Y5T" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="5$FcEFNhpPC" role="2OqNvi" />
                </node>
                <node concept="3uibUv" id="5$FcEFNhuXP" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5$FcEFNhF5l" role="3cqZAp" />
        <node concept="3cpWs8" id="7tV5ZLw8Q4Y" role="3cqZAp">
          <node concept="3cpWsn" id="7tV5ZLw8Q51" role="3cpWs9">
            <property role="TrG5h" value="removeOldRoots" />
            <property role="3TUv4t" value="true" />
            <node concept="3rvAFt" id="7tV5ZLw8Q4S" role="1tU5fm">
              <node concept="3Tqbb2" id="7tV5ZLw8QrX" role="3rvQeY" />
              <node concept="3uibUv" id="7tV5ZLw8Q_5" role="3rvSg0">
                <ref role="3uigEE" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
              </node>
            </node>
            <node concept="2ShNRf" id="7tV5ZLw8RBG" role="33vP2m">
              <node concept="3rGOSV" id="7tV5ZLw8RzN" role="2ShVmc">
                <node concept="3Tqbb2" id="7tV5ZLw8RzO" role="3rHrn6" />
                <node concept="3uibUv" id="7tV5ZLw8RzP" role="3rHtpV">
                  <ref role="3uigEE" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ly2gVlkhdU" role="3cqZAp">
          <node concept="3cpWsn" id="3ly2gVlkhdV" role="3cpWs9">
            <property role="TrG5h" value="usagesUpdate" />
            <node concept="3uibUv" id="3ly2gVlkhdW" role="1tU5fm">
              <ref role="3uigEE" to="5nvm:2EZTs$tsIo8" resolve="RefactoringProcessor.RefactoringBody" />
              <node concept="3Tqbb2" id="2q4uhJjWk81" role="11_B2D" />
              <node concept="3Tqbb2" id="2q4uhJjWm2y" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="3ly2gVlki8J" role="33vP2m">
              <node concept="YeOm9" id="3ly2gVll8LY" role="2ShVmc">
                <node concept="1Y3b0j" id="3ly2gVll8M1" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="5nvm:2EZTs$tsIo8" resolve="RefactoringProcessor.RefactoringBody" />
                  <node concept="312cEg" id="3ly2gVloAkt" role="jymVt">
                    <property role="34CwA1" value="false" />
                    <property role="eg7rD" value="false" />
                    <property role="TrG5h" value="myRefactoringSession" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3Tm6S6" id="3ly2gVlo$Rw" role="1B3o_S" />
                    <node concept="3uibUv" id="3ly2gVlo_CC" role="1tU5fm">
                      <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                    </node>
                    <node concept="10Nm6u" id="3ly2gVloCpd" role="33vP2m" />
                  </node>
                  <node concept="3Tm1VV" id="3ly2gVll8M2" role="1B3o_S" />
                  <node concept="3clFb_" id="3ly2gVll8M3" role="jymVt">
                    <property role="TrG5h" value="getRefactoringName" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="3Tm1VV" id="3ly2gVll8M4" role="1B3o_S" />
                    <node concept="17QB3L" id="3ly2gVll8M6" role="3clF45" />
                    <node concept="3clFbS" id="3ly2gVll8M7" role="3clF47">
                      <node concept="3clFbF" id="3ly2gVllbb5" role="3cqZAp">
                        <node concept="37vLTw" id="3ly2gVllbb4" role="3clFbG">
                          <ref role="3cqZAo" node="42LwYUtr_85" resolve="refactoringName" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3ly2gVlnt3H" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3ly2gVlnrZw" role="jymVt">
                    <property role="TrG5h" value="getAllAvailableParticipants" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="3Tm1VV" id="3ly2gVlnrZx" role="1B3o_S" />
                    <node concept="3uibUv" id="3ly2gVlnrZz" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                      <node concept="3qUE_q" id="3ly2gVlnrZ$" role="11_B2D">
                        <node concept="3uibUv" id="3ly2gVlnrZ_" role="3qUE_r">
                          <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
                          <node concept="3qTvmN" id="3ly2gVlnrZA" role="11_B2D" />
                          <node concept="3qTvmN" id="3ly2gVlnrZB" role="11_B2D" />
                          <node concept="3Tqbb2" id="3ly2gVlnrZH" role="11_B2D" />
                          <node concept="3Tqbb2" id="3ly2gVlnrZI" role="11_B2D" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3ly2gVlnrZJ" role="3clF47">
                      <node concept="3clFbF" id="3ly2gVllffw" role="3cqZAp">
                        <node concept="2OqwBi" id="5$FcEFMZqkC" role="3clFbG">
                          <node concept="2O5UvJ" id="5$FcEFMZqkD" role="2Oq$k0">
                            <ref role="2O5UnU" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
                          </node>
                          <node concept="SfwO_" id="5$FcEFMZqkE" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3ly2gVlnrZK" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3ly2gVll8Ml" role="jymVt">
                    <property role="TrG5h" value="findInitialStates" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="3Tm1VV" id="3ly2gVll8Mm" role="1B3o_S" />
                    <node concept="_YKpA" id="3ly2gVll8Mo" role="3clF45">
                      <node concept="3Tqbb2" id="3ly2gVlltov" role="_ZDj9" />
                    </node>
                    <node concept="3clFbS" id="3ly2gVll8Mq" role="3clF47">
                      <node concept="3clFbF" id="3ly2gVllvHa" role="3cqZAp">
                        <node concept="37vLTw" id="3ly2gVllvH9" role="3clFbG">
                          <ref role="3cqZAo" node="5$FcEFNh6WK" resolve="allNodes" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3ly2gVlntoO" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="23EHyRfsgbS" role="jymVt">
                    <property role="TrG5h" value="prepareRefactoring" />
                    <node concept="3Tm1VV" id="23EHyRfsgbU" role="1B3o_S" />
                    <node concept="3cqZAl" id="23EHyRfsgbV" role="3clF45" />
                    <node concept="3clFbS" id="23EHyRfsgc2" role="3clF47">
                      <node concept="3SKdUt" id="23EHyRfsiiZ" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXoqUT" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXoqUU" role="1PaTwD">
                            <property role="3oM_SC" value="do" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXoqUV" role="1PaTwD">
                            <property role="3oM_SC" value="nothing" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="23EHyRfsgc3" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3ly2gVll8Ms" role="jymVt">
                    <property role="TrG5h" value="doRefactor" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="37vLTG" id="3ly2gVll8Mt" role="3clF46">
                      <property role="TrG5h" value="participantStates" />
                      <node concept="A3Dl8" id="3ly2gVll8Mu" role="1tU5fm">
                        <node concept="3uibUv" id="3ly2gVll8Mv" role="A3Ik2">
                          <ref role="3uigEE" to="5nvm:5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
                          <node concept="3qTvmN" id="3D2IEK82wR8" role="11_B2D" />
                          <node concept="3qTvmN" id="3D2IEK82wR9" role="11_B2D" />
                          <node concept="3Tqbb2" id="3D2IEK82wRa" role="11_B2D" />
                          <node concept="3Tqbb2" id="3D2IEK82wRb" role="11_B2D" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3ly2gVll8MA" role="3clF46">
                      <property role="TrG5h" value="refactoringSession" />
                      <node concept="3uibUv" id="3ly2gVll8MB" role="1tU5fm">
                        <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="3ly2gVll8MC" role="1B3o_S" />
                    <node concept="3cqZAl" id="3ly2gVlohuB" role="3clF45" />
                    <node concept="3clFbS" id="3ly2gVll8MO" role="3clF47">
                      <node concept="3clFbF" id="3ly2gVloKtZ" role="3cqZAp">
                        <node concept="37vLTI" id="3ly2gVloLZw" role="3clFbG">
                          <node concept="37vLTw" id="3ly2gVloNeN" role="37vLTx">
                            <ref role="3cqZAo" node="3ly2gVll8MA" resolve="refactoringSession" />
                          </node>
                          <node concept="37vLTw" id="3ly2gVloKtX" role="37vLTJ">
                            <ref role="3cqZAo" node="3ly2gVloAkt" resolve="myRefactoringSession" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3ly2gVlrK0q" role="3cqZAp" />
                      <node concept="2Gpval" id="3D2IEK82wP_" role="3cqZAp">
                        <node concept="2GrKxI" id="3D2IEK82wPA" role="2Gsz3X">
                          <property role="TrG5h" value="mapping" />
                        </node>
                        <node concept="3clFbS" id="3D2IEK82wPB" role="2LFqv$">
                          <node concept="3cpWs8" id="3D2IEK82wPC" role="3cqZAp">
                            <node concept="3cpWsn" id="3D2IEK82wPD" role="3cpWs9">
                              <property role="TrG5h" value="moveRoots" />
                              <node concept="_YKpA" id="3D2IEK82wPE" role="1tU5fm">
                                <node concept="3Tqbb2" id="3D2IEK82wPF" role="_ZDj9" />
                              </node>
                              <node concept="2OqwBi" id="3D2IEK82wPG" role="33vP2m">
                                <node concept="2GrUjf" id="3D2IEK82wPH" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="3D2IEK82wPA" resolve="mapping" />
                                </node>
                                <node concept="3AV6Ez" id="3D2IEK82wPI" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3D2IEK82wPJ" role="3cqZAp">
                            <node concept="3cpWsn" id="3D2IEK82wPK" role="3cpWs9">
                              <property role="TrG5h" value="processor" />
                              <node concept="3uibUv" id="3D2IEK82wPL" role="1tU5fm">
                                <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
                              </node>
                              <node concept="2OqwBi" id="3D2IEK82wPM" role="33vP2m">
                                <node concept="2GrUjf" id="3D2IEK82wPN" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="3D2IEK82wPA" resolve="mapping" />
                                </node>
                                <node concept="3AY5_j" id="3D2IEK82wPO" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3D2IEK82wPP" role="3cqZAp" />
                          <node concept="2Gpval" id="3D2IEK82wPQ" role="3cqZAp">
                            <node concept="2GrKxI" id="3D2IEK82wPR" role="2Gsz3X">
                              <property role="TrG5h" value="moveRoot" />
                            </node>
                            <node concept="37vLTw" id="3D2IEK82wPS" role="2GsD0m">
                              <ref role="3cqZAo" node="3D2IEK82wPD" resolve="moveRoots" />
                            </node>
                            <node concept="3clFbS" id="3D2IEK82wPT" role="2LFqv$">
                              <node concept="3clFbF" id="3D2IEK82wPU" role="3cqZAp">
                                <node concept="37vLTI" id="3D2IEK82wPV" role="3clFbG">
                                  <node concept="3EllGN" id="3D2IEK82wPW" role="37vLTJ">
                                    <node concept="2GrUjf" id="3D2IEK82wPX" role="3ElVtu">
                                      <ref role="2Gs0qQ" node="3D2IEK82wPR" resolve="moveRoot" />
                                    </node>
                                    <node concept="37vLTw" id="3D2IEK82wPY" role="3ElQJh">
                                      <ref role="3cqZAo" node="7tV5ZLw8Q51" resolve="removeOldRoots" />
                                    </node>
                                  </node>
                                  <node concept="2YIFZM" id="3D2IEK82wPZ" role="37vLTx">
                                    <ref role="1Pybhc" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                                    <ref role="37wK5l" to="5nvm:7tV5ZLw4o3v" resolve="max" />
                                    <node concept="2OqwBi" id="3D2IEK82wQ0" role="37wK5m">
                                      <node concept="3EllGN" id="3D2IEK82wQ1" role="2Oq$k0">
                                        <node concept="2OqwBi" id="3iExZl3nOsT" role="3ElVtu">
                                          <node concept="2GrUjf" id="3D2IEK82wQ4" role="2Oq$k0">
                                            <ref role="2Gs0qQ" node="3D2IEK82wPR" resolve="moveRoot" />
                                          </node>
                                          <node concept="iZEcu" id="3iExZl3nPzF" role="2OqNvi" />
                                        </node>
                                        <node concept="37vLTw" id="3D2IEK82wQ6" role="3ElQJh">
                                          <ref role="3cqZAo" node="5$FcEFMZqk0" resolve="moveRootsToDescendants" />
                                        </node>
                                      </node>
                                      <node concept="3goQfb" id="3D2IEK82wQ7" role="2OqNvi">
                                        <node concept="1bVj0M" id="3D2IEK82wQ8" role="23t8la">
                                          <property role="3yWfEV" value="true" />
                                          <node concept="3clFbS" id="3D2IEK82wQ9" role="1bW5cS">
                                            <node concept="3clFbF" id="3D2IEK82wQa" role="3cqZAp">
                                              <node concept="2OqwBi" id="3D2IEK82wQb" role="3clFbG">
                                                <node concept="37vLTw" id="3D2IEK82wQc" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="3ly2gVll8Mt" resolve="participantStates" />
                                                </node>
                                                <node concept="3$u5V9" id="3D2IEK82wQd" role="2OqNvi">
                                                  <node concept="1bVj0M" id="3D2IEK82wQe" role="23t8la">
                                                    <property role="3yWfEV" value="true" />
                                                    <node concept="3clFbS" id="3D2IEK82wQf" role="1bW5cS">
                                                      <node concept="3cpWs8" id="3D2IEK82wQg" role="3cqZAp">
                                                        <node concept="3cpWsn" id="3D2IEK82wQh" role="3cpWs9">
                                                          <property role="TrG5h" value="changes" />
                                                          <node concept="_YKpA" id="3D2IEK82wQi" role="1tU5fm">
                                                            <node concept="3qUE_q" id="3D2IEK82wQj" role="_ZDj9">
                                                              <node concept="3uibUv" id="3D2IEK82wQk" role="3qUE_r">
                                                                <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                                                                <node concept="3qTvmN" id="3D2IEK82wQl" role="11_B2D" />
                                                                <node concept="3qTvmN" id="3D2IEK82wQm" role="11_B2D" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="2OqwBi" id="3D2IEK82wQn" role="33vP2m">
                                                            <node concept="37vLTw" id="3D2IEK82wQo" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="5$FcEFNhhnI" resolve="nodeChangesCorrespondence" />
                                                            </node>
                                                            <node concept="liA8E" id="3D2IEK82wQp" role="2OqNvi">
                                                              <ref role="37wK5l" node="5$FcEFNfMjk" resolve="getCorrespondent" />
                                                              <node concept="2OqwBi" id="3D2IEK82wQq" role="37wK5m">
                                                                <node concept="37vLTw" id="3D2IEK82wQr" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="5W7E4fV0Y5W" resolve="participantState" />
                                                                </node>
                                                                <node concept="liA8E" id="3D2IEK82wQs" role="2OqNvi">
                                                                  <ref role="37wK5l" to="5nvm:5z_gLGerhdt" resolve="getChanges" />
                                                                </node>
                                                              </node>
                                                              <node concept="37vLTw" id="3D2IEK82wQt" role="37wK5m">
                                                                <ref role="3cqZAo" node="5W7E4fV0Y5Y" resolve="descendant" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbF" id="3D2IEK82wQu" role="3cqZAp">
                                                        <node concept="2YIFZM" id="3D2IEK82wQv" role="3clFbG">
                                                          <ref role="1Pybhc" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                                                          <ref role="37wK5l" to="5nvm:7tV5ZLw4o3v" resolve="max" />
                                                          <node concept="2OqwBi" id="3D2IEK82wQw" role="37wK5m">
                                                            <node concept="3$u5V9" id="3D2IEK82wQx" role="2OqNvi">
                                                              <node concept="1bVj0M" id="3D2IEK82wQy" role="23t8la">
                                                                <property role="3yWfEV" value="true" />
                                                                <node concept="3clFbS" id="3D2IEK82wQz" role="1bW5cS">
                                                                  <node concept="3clFbF" id="3D2IEK82wQ$" role="3cqZAp">
                                                                    <node concept="2OqwBi" id="3D2IEK82wQ_" role="3clFbG">
                                                                      <node concept="1eOMI4" id="3D2IEK82wQA" role="2Oq$k0">
                                                                        <node concept="10QFUN" id="3D2IEK82wQB" role="1eOMHV">
                                                                          <node concept="3uibUv" id="3D2IEK82wQC" role="10QFUM">
                                                                            <ref role="3uigEE" to="5nvm:19AH0QQjWvT" resolve="MoveNodeRefactoringParticipant.MoveNodeChange" />
                                                                            <node concept="3qTvmN" id="3D2IEK82wQD" role="11_B2D" />
                                                                            <node concept="3qTvmN" id="3D2IEK82wQE" role="11_B2D" />
                                                                          </node>
                                                                          <node concept="1eOMI4" id="3D2IEK82wQF" role="10QFUP">
                                                                            <node concept="10QFUN" id="3D2IEK82wQG" role="1eOMHV">
                                                                              <node concept="37vLTw" id="3D2IEK82wQH" role="10QFUP">
                                                                                <ref role="3cqZAo" node="5W7E4fV0Y5U" resolve="change" />
                                                                              </node>
                                                                              <node concept="3uibUv" id="3D2IEK82wQI" role="10QFUM">
                                                                                <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                                                                              </node>
                                                                            </node>
                                                                          </node>
                                                                        </node>
                                                                      </node>
                                                                      <node concept="liA8E" id="3D2IEK82wQJ" role="2OqNvi">
                                                                        <ref role="37wK5l" to="5nvm:19AH0QQjWvY" resolve="needsToPreserveOldNode" />
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                                <node concept="gl6BB" id="5W7E4fV0Y5U" role="1bW2Oz">
                                                                  <property role="TrG5h" value="change" />
                                                                  <node concept="2jxLKc" id="5W7E4fV0Y5V" role="1tU5fm" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="37vLTw" id="3D2IEK82wQM" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="3D2IEK82wQh" resolve="changes" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="gl6BB" id="5W7E4fV0Y5W" role="1bW2Oz">
                                                      <property role="TrG5h" value="participantState" />
                                                      <node concept="2jxLKc" id="5W7E4fV0Y5X" role="1tU5fm" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="5W7E4fV0Y5Y" role="1bW2Oz">
                                            <property role="TrG5h" value="descendant" />
                                            <node concept="2jxLKc" id="5W7E4fV0Y5Z" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3D2IEK82wQR" role="3cqZAp" />
                          <node concept="3clFbF" id="3D2IEK82wQS" role="3cqZAp">
                            <node concept="2OqwBi" id="3D2IEK82wQT" role="3clFbG">
                              <node concept="37vLTw" id="3D2IEK82wQU" role="2Oq$k0">
                                <ref role="3cqZAo" node="3D2IEK82wPK" resolve="processor" />
                              </node>
                              <node concept="liA8E" id="3D2IEK82wQV" role="2OqNvi">
                                <ref role="37wK5l" node="1hLOda5bxQE" resolve="process" />
                                <node concept="37vLTw" id="3D2IEK82wQW" role="37wK5m">
                                  <ref role="3cqZAo" node="3D2IEK82wPD" resolve="moveRoots" />
                                </node>
                                <node concept="37vLTw" id="3D2IEK82wQX" role="37wK5m">
                                  <ref role="3cqZAo" node="7tV5ZLw8Q51" resolve="removeOldRoots" />
                                </node>
                                <node concept="37vLTw" id="3D2IEK82wQY" role="37wK5m">
                                  <ref role="3cqZAo" node="3ly2gVll8MA" resolve="refactoringSession" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3D2IEK82wQZ" role="2GsD0m">
                          <ref role="3cqZAo" node="5$FcEFNfgfm" resolve="processorToMoveRoots" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3ly2gVlntJW" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3ly2gVloiFY" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getFinalStateFor" />
                    <node concept="37vLTG" id="3ly2gVloiFZ" role="3clF46">
                      <property role="TrG5h" value="initialState" />
                      <node concept="3Tqbb2" id="3ly2gVloiGa" role="1tU5fm" />
                    </node>
                    <node concept="3Tqbb2" id="3ly2gVloiGb" role="3clF45" />
                    <node concept="3Tm1VV" id="3ly2gVloiG2" role="1B3o_S" />
                    <node concept="3clFbS" id="3ly2gVloiGc" role="3clF47">
                      <node concept="3cpWs6" id="3D2IEK82wR0" role="3cqZAp">
                        <node concept="3EllGN" id="3ly2gVlomBA" role="3cqZAk">
                          <node concept="37vLTw" id="3ly2gVlonxg" role="3ElVtu">
                            <ref role="3cqZAo" node="3ly2gVloiFZ" resolve="initialState" />
                          </node>
                          <node concept="2OqwBi" id="3D2IEK82wR1" role="3ElQJh">
                            <node concept="2YIFZM" id="3D2IEK82wR2" role="2Oq$k0">
                              <ref role="37wK5l" to="5nvm:5Y9QCNBZQm$" resolve="get" />
                              <ref role="1Pybhc" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
                              <node concept="37vLTw" id="3ly2gVloNX8" role="37wK5m">
                                <ref role="3cqZAo" node="3ly2gVloAkt" resolve="myRefactoringSession" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3D2IEK82wR4" role="2OqNvi">
                              <ref role="37wK5l" to="5nvm:44mXFSxhV$4" resolve="getCopyMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3ly2gVloiGd" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3ly2gVll8MQ" role="jymVt">
                    <property role="TrG5h" value="doCleanup" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="3cqZAl" id="3ly2gVll8MR" role="3clF45" />
                    <node concept="3Tm1VV" id="3ly2gVll8MS" role="1B3o_S" />
                    <node concept="3clFbS" id="3ly2gVll8MZ" role="3clF47">
                      <node concept="2Gpval" id="3D2IEK82wRk" role="3cqZAp">
                        <node concept="2GrKxI" id="3D2IEK82wRl" role="2Gsz3X">
                          <property role="TrG5h" value="processor" />
                        </node>
                        <node concept="3clFbS" id="3D2IEK82wRm" role="2LFqv$">
                          <node concept="3clFbF" id="3D2IEK82wRn" role="3cqZAp">
                            <node concept="2OqwBi" id="3D2IEK82wRo" role="3clFbG">
                              <node concept="2GrUjf" id="3D2IEK82wRp" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3D2IEK82wRl" resolve="processor" />
                              </node>
                              <node concept="liA8E" id="3D2IEK82wRq" role="2OqNvi">
                                <ref role="37wK5l" node="7tV5ZLw8f9T" resolve="removeAfterRefactoring" />
                                <node concept="37vLTw" id="3D2IEK82wRr" role="37wK5m">
                                  <ref role="3cqZAo" node="7tV5ZLw8Q51" resolve="removeOldRoots" />
                                </node>
                                <node concept="37vLTw" id="3ly2gVloOON" role="37wK5m">
                                  <ref role="3cqZAo" node="3ly2gVloAkt" resolve="myRefactoringSession" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3D2IEK82wRt" role="2GsD0m">
                          <node concept="37vLTw" id="3D2IEK82wRu" role="2Oq$k0">
                            <ref role="3cqZAo" node="5$FcEFNfgfm" resolve="processorToMoveRoots" />
                          </node>
                          <node concept="3lbrtF" id="3D2IEK82wRv" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3ly2gVlnuC3" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="3ly2gVllhwa" role="2Ghqu4" />
                  <node concept="3Tqbb2" id="3ly2gVllhV6" role="2Ghqu4" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5$FcEFMZqkG" role="3cqZAp">
          <node concept="2YIFZM" id="4AevHfIt_Gj" role="3clFbG">
            <ref role="37wK5l" to="5nvm:4fSm5R8N4ge" resolve="performRefactoringInProject" />
            <ref role="1Pybhc" to="5nvm:5dWUYKKJ14W" resolve="RefactoringProcessor" />
            <node concept="37vLTw" id="3D2IEK82wPv" role="37wK5m">
              <ref role="3cqZAo" node="5$FcEFMZqn7" resolve="project" />
            </node>
            <node concept="37vLTw" id="2q4uhJjWnGz" role="37wK5m">
              <ref role="3cqZAo" node="2q4uhJjWmz6" resolve="refactoringUI" />
            </node>
            <node concept="37vLTw" id="3ly2gVllSPw" role="37wK5m">
              <ref role="3cqZAo" node="3ly2gVlkhdV" resolve="usagesUpdate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5$FcEFMZqn7" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2q4uhJjUeHY" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="42LwYUtr_85" role="3clF46">
        <property role="TrG5h" value="refactoringName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="42LwYUtrAzH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5$FcEFNfgfm" role="3clF46">
        <property role="TrG5h" value="processorToMoveRoots" />
        <property role="3TUv4t" value="true" />
        <node concept="3rvAFt" id="5$FcEFNfiII" role="1tU5fm">
          <node concept="_YKpA" id="5$FcEFNfiIJ" role="3rvSg0">
            <node concept="3Tqbb2" id="5$FcEFNfiIK" role="_ZDj9" />
          </node>
          <node concept="3uibUv" id="5$FcEFNfiIL" role="3rvQeY">
            <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2q4uhJjWmz6" role="3clF46">
        <property role="TrG5h" value="refactoringUI" />
        <node concept="3uibUv" id="2q4uhJjWngK" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:4N6D1IPLesH" resolve="RefactoringUI" />
        </node>
      </node>
      <node concept="3cqZAl" id="5$FcEFMZqnh" role="3clF45" />
      <node concept="3Tm1VV" id="5$FcEFMZqni" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1hLOda5beZB" role="jymVt" />
    <node concept="312cEu" id="7tV5ZLw8bTF" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="NodeProcessor" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFb_" id="1hLOda5bxQa" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <property role="1EzhhJ" value="true" />
        <node concept="10P_77" id="1hLOda5bxQb" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5bxQc" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5bxQd" role="3clF47" />
        <node concept="37vLTG" id="1hLOda5bxQp" role="3clF46">
          <property role="TrG5h" value="nodesToMove" />
          <node concept="_YKpA" id="1hLOda5bxQq" role="1tU5fm">
            <node concept="3Tqbb2" id="1hLOda5bxQr" role="_ZDj9" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5bxQs" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <property role="1EzhhJ" value="true" />
        <node concept="10P_77" id="1hLOda5bxQt" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5bxQu" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5bxQv" role="3clF47" />
        <node concept="37vLTG" id="1hLOda5bxQC" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="1hLOda5bxQD" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1IxrbjlNwlg" role="jymVt">
        <property role="TrG5h" value="getNodesToSearch" />
        <property role="1EzhhJ" value="true" />
        <node concept="_YKpA" id="1IxrbjlNEtS" role="3clF45">
          <node concept="3Tqbb2" id="1IxrbjlNF8N" role="_ZDj9" />
        </node>
        <node concept="3Tm1VV" id="1IxrbjlNwli" role="1B3o_S" />
        <node concept="3clFbS" id="1IxrbjlNwlj" role="3clF47" />
        <node concept="37vLTG" id="1IxrbjlNwlk" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="1IxrbjlNFFV" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5bxQE" role="jymVt">
        <property role="TrG5h" value="process" />
        <property role="1EzhhJ" value="true" />
        <node concept="3cqZAl" id="1hLOda5bxQF" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5bxQG" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5bxQH" role="3clF47" />
        <node concept="37vLTG" id="1hLOda5bxRi" role="3clF46">
          <property role="TrG5h" value="nodesToMove" />
          <node concept="_YKpA" id="1hLOda5bxRj" role="1tU5fm">
            <node concept="3Tqbb2" id="1hLOda5bxRk" role="_ZDj9" />
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw76Mw" role="3clF46">
          <property role="TrG5h" value="ifKeepOldNodes" />
          <node concept="3rvAFt" id="7tV5ZLw76Mx" role="1tU5fm">
            <node concept="3Tqbb2" id="7tV5ZLw76My" role="3rvQeY" />
            <node concept="3uibUv" id="7tV5ZLw76Mz" role="3rvSg0">
              <ref role="3uigEE" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5bxRo" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="1hLOda5bxRp" role="1tU5fm">
            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7tV5ZLw8f9T" role="jymVt">
        <property role="TrG5h" value="removeAfterRefactoring" />
        <node concept="3cqZAl" id="7tV5ZLw8f9U" role="3clF45" />
        <node concept="3Tm1VV" id="7tV5ZLw8f9V" role="1B3o_S" />
        <node concept="3clFbS" id="7tV5ZLw8f9W" role="3clF47">
          <node concept="2Gpval" id="7tV5ZLw8f9X" role="3cqZAp">
            <node concept="3clFbS" id="7tV5ZLw8f9Y" role="2LFqv$">
              <node concept="3clFbJ" id="7tV5ZLw8f9Z" role="3cqZAp">
                <node concept="3clFbS" id="7tV5ZLw8fa0" role="3clFbx">
                  <node concept="3clFbF" id="7tV5ZLw8fa1" role="3cqZAp">
                    <node concept="2OqwBi" id="7tV5ZLw8fa2" role="3clFbG">
                      <node concept="2GrUjf" id="7tV5ZLw8fa3" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7tV5ZLw8fad" resolve="oldNode" />
                      </node>
                      <node concept="3YRAZt" id="7tV5ZLw8fa4" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7tV5ZLw8fa5" role="3clFbw">
                  <node concept="3EllGN" id="7tV5ZLw8fa6" role="3uHU7B">
                    <node concept="2GrUjf" id="7tV5ZLw8fa7" role="3ElVtu">
                      <ref role="2Gs0qQ" node="7tV5ZLw8fad" resolve="oldNode" />
                    </node>
                    <node concept="37vLTw" id="7tV5ZLw8fa8" role="3ElQJh">
                      <ref role="3cqZAo" node="7tV5ZLw8fae" resolve="ifKeepOldNodes" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="7tV5ZLw8fa9" role="3uHU7w">
                    <ref role="1Px2BO" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                    <ref role="Rm8GQ" to="5nvm:7tV5ZLw0q2f" resolve="KEEP" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7tV5ZLw8faa" role="2GsD0m">
              <node concept="37vLTw" id="7tV5ZLw8fab" role="2Oq$k0">
                <ref role="3cqZAo" node="7tV5ZLw8fae" resolve="ifKeepOldNodes" />
              </node>
              <node concept="3lbrtF" id="7tV5ZLw8fac" role="2OqNvi" />
            </node>
            <node concept="2GrKxI" id="7tV5ZLw8fad" role="2Gsz3X">
              <property role="TrG5h" value="oldNode" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw8fae" role="3clF46">
          <property role="TrG5h" value="ifKeepOldNodes" />
          <node concept="3rvAFt" id="7tV5ZLw8faf" role="1tU5fm">
            <node concept="3Tqbb2" id="7tV5ZLw8fag" role="3rvQeY" />
            <node concept="3uibUv" id="7tV5ZLw8fah" role="3rvSg0">
              <ref role="3uigEE" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw8fai" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="7tV5ZLw8faj" role="1tU5fm">
            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7tV5ZLw8f9R" role="jymVt" />
      <node concept="3Tm1VV" id="7tV5ZLw8bTG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5sZ4VO_YlvL" role="jymVt" />
    <node concept="312cEu" id="5sZ4VO_Ynmh" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="NodeCreatingProcessor" />
      <property role="1sVAO0" value="false" />
      <node concept="312cEg" id="5sZ4VO_ZC8C" role="jymVt">
        <property role="TrG5h" value="myNodeLocation" />
        <node concept="3Tmbuc" id="7Sw_42UBOZo" role="1B3o_S" />
        <node concept="3uibUv" id="5sZ4VO_ZLNn" role="1tU5fm">
          <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
        </node>
      </node>
      <node concept="312cEg" id="5sZ4VO_ZF5t" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="7Sw_42UBRBE" role="1B3o_S" />
        <node concept="3uibUv" id="5sZ4VO_ZMe$" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbW" id="5sZ4VO_ZqCx" role="jymVt">
        <node concept="3cqZAl" id="5sZ4VO_ZqCz" role="3clF45" />
        <node concept="3Tm1VV" id="5sZ4VO_ZqC$" role="1B3o_S" />
        <node concept="3clFbS" id="5sZ4VO_ZqC_" role="3clF47">
          <node concept="3clFbF" id="5sZ4VO_ZIgQ" role="3cqZAp">
            <node concept="37vLTI" id="5sZ4VO_ZI_y" role="3clFbG">
              <node concept="37vLTw" id="5sZ4VO_ZJpd" role="37vLTx">
                <ref role="3cqZAo" node="5sZ4VO_Zu$H" resolve="location" />
              </node>
              <node concept="37vLTw" id="5sZ4VO_ZIgO" role="37vLTJ">
                <ref role="3cqZAo" node="5sZ4VO_ZC8C" resolve="myNodeLocation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5sZ4VO_ZKlf" role="3cqZAp">
            <node concept="37vLTI" id="5sZ4VO_ZKET" role="3clFbG">
              <node concept="37vLTw" id="5sZ4VO_ZKld" role="37vLTJ">
                <ref role="3cqZAo" node="5sZ4VO_ZF5t" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="5sZ4VO_ZLvS" role="37vLTx">
                <ref role="3cqZAo" node="5sZ4VO_ZzBv" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5sZ4VO_Zu$H" role="3clF46">
          <property role="TrG5h" value="location" />
          <node concept="3uibUv" id="5sZ4VO_ZvY$" role="1tU5fm">
            <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
          </node>
        </node>
        <node concept="37vLTG" id="5sZ4VO_ZzBv" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="5sZ4VO_ZA_W" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5akbj" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <node concept="10P_77" id="1hLOda5aRpX" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5akbm" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5akbn" role="3clF47">
          <node concept="3clFbF" id="1hLOda5aNj3" role="3cqZAp">
            <node concept="2OqwBi" id="1hLOda5aNLc" role="3clFbG">
              <node concept="37vLTw" id="1hLOda5aNj2" role="2Oq$k0">
                <ref role="3cqZAo" node="1hLOda5auKb" resolve="nodesToMove" />
              </node>
              <node concept="2HxqBE" id="1hLOda5aOta" role="2OqNvi">
                <node concept="1bVj0M" id="1hLOda5aOtc" role="23t8la">
                  <node concept="3clFbS" id="1hLOda5aOtd" role="1bW5cS">
                    <node concept="3clFbF" id="1hLOda5aPuy" role="3cqZAp">
                      <node concept="1rXfSq" id="1hLOda5aPux" role="3clFbG">
                        <ref role="37wK5l" node="1hLOda5aKf2" resolve="isValid" />
                        <node concept="37vLTw" id="1hLOda5aPTq" role="37wK5m">
                          <ref role="3cqZAo" node="5W7E4fV0Y60" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Y60" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Y61" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5auKb" role="3clF46">
          <property role="TrG5h" value="nodesToMove" />
          <node concept="_YKpA" id="1hLOda5auKc" role="1tU5fm">
            <node concept="3Tqbb2" id="1hLOda5auKd" role="_ZDj9" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5aKf2" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <node concept="10P_77" id="1hLOda5aQjG" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5aKf4" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5aKf5" role="3clF47">
          <node concept="3clFbF" id="1hLOda5aKf9" role="3cqZAp">
            <node concept="2OqwBi" id="1hLOda5aKfa" role="3clFbG">
              <node concept="37vLTw" id="1hLOda5aKfb" role="2Oq$k0">
                <ref role="3cqZAo" node="5sZ4VO_ZC8C" resolve="myNodeLocation" />
              </node>
              <node concept="liA8E" id="1hLOda5aKfc" role="2OqNvi">
                <ref role="37wK5l" to="u42p:1F5g4zQtm7Z" resolve="canInsert" />
                <node concept="2OqwBi" id="1hLOda5aKfd" role="37wK5m">
                  <node concept="37vLTw" id="1hLOda5aKfe" role="2Oq$k0">
                    <ref role="3cqZAo" node="5sZ4VO_ZF5t" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="1hLOda5aKff" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="1hLOda5aMf2" role="37wK5m">
                  <ref role="3cqZAo" node="1hLOda5aKfi" resolve="nodeToMove" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5aKfi" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="1hLOda5aKfk" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1IxrbjlNH$o" role="jymVt">
        <property role="TrG5h" value="getNodesToSearch" />
        <property role="1EzhhJ" value="false" />
        <node concept="_YKpA" id="1IxrbjlNH$p" role="3clF45">
          <node concept="3Tqbb2" id="1IxrbjlNH$q" role="_ZDj9" />
        </node>
        <node concept="3Tm1VV" id="1IxrbjlNH$r" role="1B3o_S" />
        <node concept="37vLTG" id="1IxrbjlNH$t" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="1IxrbjlNH$u" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1IxrbjlNH$v" role="3clF47">
          <node concept="3clFbF" id="1IxrbjlNKlS" role="3cqZAp">
            <node concept="2OqwBi" id="1IxrbjlNKKM" role="3clFbG">
              <node concept="37vLTw" id="1IxrbjlNKlR" role="2Oq$k0">
                <ref role="3cqZAo" node="1IxrbjlNH$t" resolve="nodeToMove" />
              </node>
              <node concept="2Rf3mk" id="1IxrbjlNKV7" role="2OqNvi">
                <node concept="1xIGOp" id="1IxrbjlNKXb" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5sZ4VO_YoKS" role="jymVt">
        <property role="TrG5h" value="process" />
        <node concept="3cqZAl" id="5sZ4VO_YoKU" role="3clF45" />
        <node concept="3Tm1VV" id="5sZ4VO_YoKV" role="1B3o_S" />
        <node concept="3clFbS" id="5sZ4VO_YoKW" role="3clF47">
          <node concept="3cpWs8" id="5sZ4VO_YCdV" role="3cqZAp">
            <node concept="3cpWsn" id="5sZ4VO_YCdW" role="3cpWs9">
              <property role="TrG5h" value="copyMap" />
              <node concept="3uibUv" id="5sZ4VO_YCdS" role="1tU5fm">
                <ref role="3uigEE" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
              </node>
              <node concept="2YIFZM" id="5z6kDU70d5M" role="33vP2m">
                <ref role="37wK5l" to="5nvm:5Y9QCNBZQm$" resolve="get" />
                <ref role="1Pybhc" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
                <node concept="37vLTw" id="5sZ4VO_YCdY" role="37wK5m">
                  <ref role="3cqZAo" node="5sZ4VO_Yr93" resolve="refactoringSession" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="44mXFSxi27f" role="3cqZAp">
            <node concept="2OqwBi" id="44mXFSxi33B" role="3clFbG">
              <node concept="37vLTw" id="5sZ4VO_YCdZ" role="2Oq$k0">
                <ref role="3cqZAo" node="5sZ4VO_YCdW" resolve="copyMap" />
              </node>
              <node concept="liA8E" id="44mXFSxi3z5" role="2OqNvi">
                <ref role="37wK5l" to="5nvm:5sZ4VOA2LeY" resolve="copyAndTrack" />
                <node concept="37vLTw" id="7tV5ZLw6Sui" role="37wK5m">
                  <ref role="3cqZAo" node="7tV5ZLw6Bw4" resolve="nodeRoots" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="48Zcg3Tk9UX" role="3cqZAp">
            <node concept="3cpWsn" id="48Zcg3Tk9UY" role="3cpWs9">
              <property role="TrG5h" value="nic" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="48Zcg3Tk8_1" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~NodeIdentityComponent" resolve="NodeIdentityComponent" />
              </node>
              <node concept="2OqwBi" id="48Zcg3Tk9UZ" role="33vP2m">
                <node concept="37vLTw" id="48Zcg3Tk9V0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5sZ4VO_ZF5t" resolve="myProject" />
                </node>
                <node concept="liA8E" id="48Zcg3Tk9V1" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="48Zcg3Tk9V2" role="37wK5m">
                    <ref role="3VsUkX" to="w1kc:~NodeIdentityComponent" resolve="NodeIdentityComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="7tV5ZLw74N$" role="3cqZAp">
            <node concept="3clFbS" id="7tV5ZLw74NA" role="2LFqv$">
              <node concept="3cpWs8" id="4YeUAKAp90k" role="3cqZAp">
                <node concept="3cpWsn" id="4YeUAKAp90l" role="3cpWs9">
                  <property role="TrG5h" value="newNode" />
                  <node concept="3Tqbb2" id="4YeUAKAp6Zm" role="1tU5fm" />
                  <node concept="3EllGN" id="4YeUAKAp90m" role="33vP2m">
                    <node concept="2GrUjf" id="4YeUAKAp90n" role="3ElVtu">
                      <ref role="2Gs0qQ" node="7tV5ZLw74O1" resolve="oldNode" />
                    </node>
                    <node concept="2OqwBi" id="4YeUAKAp90o" role="3ElQJh">
                      <node concept="37vLTw" id="4YeUAKAp90p" role="2Oq$k0">
                        <ref role="3cqZAo" node="5sZ4VO_YCdW" resolve="copyMap" />
                      </node>
                      <node concept="liA8E" id="4YeUAKAp90q" role="2OqNvi">
                        <ref role="37wK5l" to="5nvm:44mXFSxhV$4" resolve="getCopyMap" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4YeUAKAp6MN" role="3cqZAp">
                <node concept="3clFbS" id="4YeUAKAp6MP" role="3clFbx">
                  <node concept="3clFbF" id="4YeUAKApcFa" role="3cqZAp">
                    <node concept="37vLTI" id="4YeUAKApdCi" role="3clFbG">
                      <node concept="2OqwBi" id="4YeUAKApdf4" role="37vLTJ">
                        <node concept="37vLTw" id="4YeUAKApcF8" role="2Oq$k0">
                          <ref role="3cqZAo" node="4YeUAKAp90l" resolve="newNode" />
                        </node>
                        <node concept="3TrcHB" id="4YeUAKApdoJ" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4YeUAKApdFE" role="37vLTx">
                        <node concept="2OqwBi" id="4YeUAKApdFF" role="2Oq$k0">
                          <node concept="2GrUjf" id="4YeUAKApdFG" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7tV5ZLw74O1" resolve="oldNode" />
                          </node>
                          <node concept="2Rxl7S" id="4YeUAKApdFH" role="2OqNvi" />
                        </node>
                        <node concept="3TrcHB" id="4YeUAKApdFI" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4YeUAKAp8fS" role="3clFbw">
                  <node concept="37vLTw" id="4YeUAKAp7xS" role="2Oq$k0">
                    <ref role="3cqZAo" node="5sZ4VO_ZC8C" resolve="myNodeLocation" />
                  </node>
                  <node concept="liA8E" id="4YeUAKAp8Lc" role="2OqNvi">
                    <ref role="37wK5l" to="u42p:4YeUAKAoU3d" resolve="isRoot" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7tV5ZLw74NB" role="3cqZAp">
                <node concept="3clFbS" id="7tV5ZLw74NC" role="3clFbx">
                  <node concept="3clFbF" id="7tV5ZLw74ND" role="3cqZAp">
                    <node concept="2OqwBi" id="7tV5ZLw74NE" role="3clFbG">
                      <node concept="2GrUjf" id="7tV5ZLw74O2" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7tV5ZLw74O1" resolve="oldNode" />
                      </node>
                      <node concept="3YRAZt" id="7tV5ZLw74NG" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="48Zcg3TkDhV" role="3cqZAp">
                    <node concept="3clFbS" id="48Zcg3TkDhX" role="3clFbx">
                      <node concept="3clFbF" id="48Zcg3TkPPv" role="3cqZAp">
                        <node concept="2OqwBi" id="48Zcg3TkQ_R" role="3clFbG">
                          <node concept="37vLTw" id="48Zcg3TkPPt" role="2Oq$k0">
                            <ref role="3cqZAo" node="48Zcg3Tk9UY" resolve="nic" />
                          </node>
                          <node concept="liA8E" id="48Zcg3TkS9e" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~NodeIdentityComponent.moved(org.jetbrains.mps.openapi.model.SNode,java.util.Map)" resolve="moved" />
                            <node concept="2GrUjf" id="48Zcg3TkV8q" role="37wK5m">
                              <ref role="2Gs0qQ" node="7tV5ZLw74O1" resolve="oldNode" />
                            </node>
                            <node concept="2OqwBi" id="3BY7x6Es4Cr" role="37wK5m">
                              <node concept="37vLTw" id="48Zcg3TkZyX" role="2Oq$k0">
                                <ref role="3cqZAo" node="5sZ4VO_YCdW" resolve="copyMap" />
                              </node>
                              <node concept="liA8E" id="3BY7x6Es6UZ" role="2OqNvi">
                                <ref role="37wK5l" to="5nvm:44mXFSxhV$4" resolve="getCopyMap" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="48Zcg3TkKaW" role="3clFbw">
                      <node concept="10Nm6u" id="48Zcg3TkMb9" role="3uHU7w" />
                      <node concept="37vLTw" id="48Zcg3TkIz2" role="3uHU7B">
                        <ref role="3cqZAo" node="48Zcg3Tk9UY" resolve="nic" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7tV5ZLw74NH" role="3clFbw">
                  <node concept="Rm8GO" id="7tV5ZLw74NI" role="3uHU7w">
                    <ref role="1Px2BO" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                    <ref role="Rm8GQ" to="5nvm:7tV5ZLw0pQW" resolve="REMOVE" />
                  </node>
                  <node concept="3EllGN" id="7tV5ZLw74NJ" role="3uHU7B">
                    <node concept="2GrUjf" id="7tV5ZLw74O3" role="3ElVtu">
                      <ref role="2Gs0qQ" node="7tV5ZLw74O1" resolve="oldNode" />
                    </node>
                    <node concept="37vLTw" id="7tV5ZLw74NL" role="3ElQJh">
                      <ref role="3cqZAo" node="5sZ4VOA1O9V" resolve="ifKeepOldNodes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7tV5ZLw74NM" role="3cqZAp">
                <node concept="2OqwBi" id="7tV5ZLw74NN" role="3clFbG">
                  <node concept="37vLTw" id="7tV5ZLw74NO" role="2Oq$k0">
                    <ref role="3cqZAo" node="5sZ4VO_ZC8C" resolve="myNodeLocation" />
                  </node>
                  <node concept="liA8E" id="7tV5ZLw74NP" role="2OqNvi">
                    <ref role="37wK5l" to="u42p:1F5g4zQw_bc" resolve="insertNode" />
                    <node concept="2OqwBi" id="7tV5ZLw74NQ" role="37wK5m">
                      <node concept="37vLTw" id="7tV5ZLw74NR" role="2Oq$k0">
                        <ref role="3cqZAo" node="5sZ4VO_ZF5t" resolve="myProject" />
                      </node>
                      <node concept="liA8E" id="7tV5ZLw74NS" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4YeUAKAp90r" role="37wK5m">
                      <ref role="3cqZAo" node="4YeUAKAp90l" resolve="newNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7tV5ZLw74NZ" role="2GsD0m">
              <ref role="3cqZAo" node="7tV5ZLw6Bw4" resolve="nodeRoots" />
            </node>
            <node concept="2GrKxI" id="7tV5ZLw74O1" role="2Gsz3X">
              <property role="TrG5h" value="oldNode" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw6Bw4" role="3clF46">
          <property role="TrG5h" value="nodeRoots" />
          <node concept="_YKpA" id="7tV5ZLw6CRQ" role="1tU5fm">
            <node concept="3Tqbb2" id="7tV5ZLw6E1e" role="_ZDj9" />
          </node>
        </node>
        <node concept="37vLTG" id="5sZ4VOA1O9V" role="3clF46">
          <property role="TrG5h" value="ifKeepOldNodes" />
          <node concept="3rvAFt" id="7tV5ZLw6wnr" role="1tU5fm">
            <node concept="3Tqbb2" id="7tV5ZLw6xDS" role="3rvQeY" />
            <node concept="3uibUv" id="7tV5ZLw6z6O" role="3rvSg0">
              <ref role="3uigEE" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5sZ4VO_Yr93" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="5sZ4VO_YrDU" role="1tU5fm">
            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5sZ4VO_Ynmi" role="1B3o_S" />
      <node concept="3uibUv" id="7tV5ZLw8FtN" role="1zkMxy">
        <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hLOda5cfiA" role="jymVt" />
    <node concept="312cEu" id="1hLOda5chO5" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ExistingTargetProcessor" />
      <node concept="312cEg" id="1hLOda5chO6" role="jymVt">
        <property role="TrG5h" value="myTarget" />
        <node concept="3Tm6S6" id="1hLOda5chO7" role="1B3o_S" />
        <node concept="3uibUv" id="1hLOda5clsu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="312cEg" id="1hLOda5chO9" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="1hLOda5chOa" role="1B3o_S" />
        <node concept="3uibUv" id="1hLOda5chOb" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbW" id="1hLOda5chOc" role="jymVt">
        <node concept="3cqZAl" id="1hLOda5chOd" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5chOe" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5chOf" role="3clF47">
          <node concept="3clFbF" id="1hLOda5chOg" role="3cqZAp">
            <node concept="37vLTI" id="1hLOda5chOh" role="3clFbG">
              <node concept="37vLTw" id="1hLOda5chOi" role="37vLTx">
                <ref role="3cqZAo" node="1hLOda5chOo" resolve="target" />
              </node>
              <node concept="37vLTw" id="1hLOda5chOj" role="37vLTJ">
                <ref role="3cqZAo" node="1hLOda5chO6" resolve="myTarget" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1hLOda5chOk" role="3cqZAp">
            <node concept="37vLTI" id="1hLOda5chOl" role="3clFbG">
              <node concept="37vLTw" id="1hLOda5chOm" role="37vLTJ">
                <ref role="3cqZAo" node="1hLOda5chO9" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="1hLOda5chOn" role="37vLTx">
                <ref role="3cqZAo" node="1hLOda5chOq" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5chOo" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="1hLOda5cngG" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5chOq" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="1hLOda5chOr" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5chOs" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <node concept="10P_77" id="1hLOda5chOt" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5chOu" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5chOv" role="3clF47">
          <node concept="3clFbF" id="1hLOda5chOw" role="3cqZAp">
            <node concept="2OqwBi" id="1hLOda5chOx" role="3clFbG">
              <node concept="37vLTw" id="1hLOda5chOy" role="2Oq$k0">
                <ref role="3cqZAo" node="1hLOda5chOF" resolve="nodesToMove" />
              </node>
              <node concept="2HxqBE" id="1hLOda5chOz" role="2OqNvi">
                <node concept="1bVj0M" id="1hLOda5chO$" role="23t8la">
                  <node concept="3clFbS" id="1hLOda5chO_" role="1bW5cS">
                    <node concept="3clFbF" id="1hLOda5chOA" role="3cqZAp">
                      <node concept="1rXfSq" id="1hLOda5chOB" role="3clFbG">
                        <ref role="37wK5l" node="1hLOda5chOI" resolve="isValid" />
                        <node concept="37vLTw" id="1hLOda5chOC" role="37wK5m">
                          <ref role="3cqZAo" node="5W7E4fV0Y62" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Y62" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Y63" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5chOF" role="3clF46">
          <property role="TrG5h" value="nodesToMove" />
          <node concept="_YKpA" id="1hLOda5chOG" role="1tU5fm">
            <node concept="3Tqbb2" id="1hLOda5chOH" role="_ZDj9" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5chOI" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <node concept="10P_77" id="1hLOda5chOJ" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5chOK" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5chOL" role="3clF47">
          <node concept="3clFbF" id="1hLOda5chOM" role="3cqZAp">
            <node concept="3y3z36" id="1hLOda5cq9Y" role="3clFbG">
              <node concept="10Nm6u" id="1hLOda5cqJ6" role="3uHU7w" />
              <node concept="2OqwBi" id="1hLOda5chON" role="3uHU7B">
                <node concept="37vLTw" id="1hLOda5chOO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hLOda5chO6" resolve="myTarget" />
                </node>
                <node concept="liA8E" id="1hLOda5cnNW" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                  <node concept="2OqwBi" id="1hLOda5cpqW" role="37wK5m">
                    <node concept="37vLTw" id="1hLOda5coZX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1hLOda5chO9" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="1hLOda5cpDY" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5chOU" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="1hLOda5chOV" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1IxrbjlNLua" role="jymVt">
        <property role="TrG5h" value="getNodesToSearch" />
        <property role="1EzhhJ" value="false" />
        <node concept="_YKpA" id="1IxrbjlNLub" role="3clF45">
          <node concept="3Tqbb2" id="1IxrbjlNLuc" role="_ZDj9" />
        </node>
        <node concept="3Tm1VV" id="1IxrbjlNLud" role="1B3o_S" />
        <node concept="37vLTG" id="1IxrbjlNLuf" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="1IxrbjlNLug" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1IxrbjlNLuh" role="3clF47">
          <node concept="3clFbF" id="1IxrbjlNOTG" role="3cqZAp">
            <node concept="2ShNRf" id="1IxrbjlNOTA" role="3clFbG">
              <node concept="Tc6Ow" id="1IxrbjlNSD$" role="2ShVmc">
                <node concept="3Tqbb2" id="1IxrbjlNTGP" role="HW$YZ" />
                <node concept="37vLTw" id="1IxrbjlNU86" role="HW$Y0">
                  <ref role="3cqZAo" node="1IxrbjlNLuf" resolve="nodeToMove" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hLOda5chOW" role="jymVt">
        <property role="TrG5h" value="process" />
        <node concept="3cqZAl" id="1hLOda5chOX" role="3clF45" />
        <node concept="3Tm1VV" id="1hLOda5chOY" role="1B3o_S" />
        <node concept="3clFbS" id="1hLOda5chOZ" role="3clF47">
          <node concept="3clFbJ" id="1hLOda5ctLw" role="3cqZAp">
            <node concept="3clFbS" id="1hLOda5ctLy" role="3clFbx">
              <node concept="YS8fn" id="1hLOda5c_ki" role="3cqZAp">
                <node concept="2ShNRf" id="1hLOda5c_G2" role="YScLw">
                  <node concept="1pGfFk" id="1hLOda5cAnz" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1hLOda5czrV" role="3clFbw">
              <node concept="3cmrfG" id="1hLOda5czSa" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="1hLOda5cx8r" role="3uHU7B">
                <node concept="37vLTw" id="1hLOda5cwjc" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hLOda5chP$" resolve="nodesToMove" />
                </node>
                <node concept="34oBXx" id="1hLOda5cyvZ" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1hLOda5chP0" role="3cqZAp">
            <node concept="3cpWsn" id="1hLOda5chP1" role="3cpWs9">
              <property role="TrG5h" value="copyMap" />
              <node concept="3uibUv" id="1hLOda5chP2" role="1tU5fm">
                <ref role="3uigEE" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
              </node>
              <node concept="2YIFZM" id="5z6kDU70d5K" role="33vP2m">
                <ref role="37wK5l" to="5nvm:5Y9QCNBZQm$" resolve="get" />
                <ref role="1Pybhc" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
                <node concept="37vLTw" id="1hLOda5chP4" role="37wK5m">
                  <ref role="3cqZAo" node="1hLOda5chPE" resolve="refactoringSession" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7m$hACyZYtT" role="3cqZAp">
            <node concept="2OqwBi" id="7m$hACyZYXG" role="3clFbG">
              <node concept="37vLTw" id="7m$hACyZYtR" role="2Oq$k0">
                <ref role="3cqZAo" node="1hLOda5chP1" resolve="copyMap" />
              </node>
              <node concept="liA8E" id="7m$hACyZZel" role="2OqNvi">
                <ref role="37wK5l" to="5nvm:7m$hACyZuPg" resolve="putInCopyMap" />
                <node concept="2ShNRf" id="7m$hACyZZQq" role="37wK5m">
                  <node concept="3rGOSV" id="7m$hACz07cJ" role="2ShVmc">
                    <node concept="3Tqbb2" id="7m$hACz0840" role="3rHrn6" />
                    <node concept="3Tqbb2" id="7m$hACz088T" role="3rHtpV" />
                    <node concept="3Mi1_Z" id="7m$hACz08TE" role="3Mj9YC">
                      <node concept="3Milgn" id="7m$hACz08Xc" role="3MiYds">
                        <node concept="2OqwBi" id="1hLOda5cByL" role="3MiK7k">
                          <node concept="37vLTw" id="1hLOda5cAJZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1hLOda5chP$" resolve="nodesToMove" />
                          </node>
                          <node concept="1uHKPH" id="1hLOda5cD2S" role="2OqNvi" />
                        </node>
                        <node concept="2OqwBi" id="1hLOda5cEjl" role="3MiMdn">
                          <node concept="37vLTw" id="1hLOda5cDIV" role="2Oq$k0">
                            <ref role="3cqZAo" node="1hLOda5chO6" resolve="myTarget" />
                          </node>
                          <node concept="liA8E" id="1hLOda5cE$p" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="2OqwBi" id="1hLOda5cFsO" role="37wK5m">
                              <node concept="37vLTw" id="1hLOda5cF07" role="2Oq$k0">
                                <ref role="3cqZAo" node="1hLOda5chO9" resolve="myProject" />
                              </node>
                              <node concept="liA8E" id="1hLOda5cFHF" role="2OqNvi">
                                <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
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
          <node concept="2Gpval" id="7tV5ZLw82Vt" role="3cqZAp">
            <node concept="3clFbS" id="7tV5ZLw82Vu" role="2LFqv$">
              <node concept="3clFbJ" id="7tV5ZLw82Vv" role="3cqZAp">
                <node concept="3clFbS" id="7tV5ZLw82Vw" role="3clFbx">
                  <node concept="3clFbF" id="7tV5ZLw82Vx" role="3cqZAp">
                    <node concept="2OqwBi" id="7tV5ZLw82Vy" role="3clFbG">
                      <node concept="2GrUjf" id="7tV5ZLw82Vz" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7tV5ZLw82VH" resolve="oldNode" />
                      </node>
                      <node concept="3YRAZt" id="7tV5ZLw82V$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7tV5ZLw856d" role="3clFbw">
                  <node concept="3EllGN" id="7tV5ZLw82VA" role="3uHU7B">
                    <node concept="2GrUjf" id="7tV5ZLw82VB" role="3ElVtu">
                      <ref role="2Gs0qQ" node="7tV5ZLw82VH" resolve="oldNode" />
                    </node>
                    <node concept="37vLTw" id="7tV5ZLw82VC" role="3ElQJh">
                      <ref role="3cqZAo" node="7tV5ZLw784P" resolve="ifKeepOldNodes" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="7tV5ZLw83HN" role="3uHU7w">
                    <ref role="1Px2BO" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                    <ref role="Rm8GQ" to="5nvm:7tV5ZLw0pQW" resolve="REMOVE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7tV5ZLw82VE" role="2GsD0m">
              <node concept="37vLTw" id="7tV5ZLw82VF" role="2Oq$k0">
                <ref role="3cqZAo" node="7tV5ZLw784P" resolve="ifKeepOldNodes" />
              </node>
              <node concept="3lbrtF" id="7tV5ZLw82VG" role="2OqNvi" />
            </node>
            <node concept="2GrKxI" id="7tV5ZLw82VH" role="2Gsz3X">
              <property role="TrG5h" value="oldNode" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5chP$" role="3clF46">
          <property role="TrG5h" value="nodesToMove" />
          <node concept="_YKpA" id="1hLOda5chP_" role="1tU5fm">
            <node concept="3Tqbb2" id="1hLOda5chPA" role="_ZDj9" />
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw784P" role="3clF46">
          <property role="TrG5h" value="ifKeepOldNodes" />
          <node concept="3rvAFt" id="7tV5ZLw784Q" role="1tU5fm">
            <node concept="3Tqbb2" id="7tV5ZLw784R" role="3rvQeY" />
            <node concept="3uibUv" id="7tV5ZLw784S" role="3rvSg0">
              <ref role="3uigEE" to="5nvm:7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1hLOda5chPE" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="1hLOda5chPF" role="1tU5fm">
            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1hLOda5chPG" role="1B3o_S" />
      <node concept="3uibUv" id="7tV5ZLw8Bs9" role="1zkMxy">
        <ref role="3uigEE" node="7tV5ZLw8bTF" resolve="MoveNodesUtil.NodeProcessor" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hLOda5cgAF" role="jymVt" />
    <node concept="2tJIrI" id="55uxGWy8qtT" role="jymVt" />
  </node>
  <node concept="312cEu" id="4N6D1IPLKD_">
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="TrG5h" value="DefaultRefactoringUI" />
    <node concept="312cEg" id="4N6D1IPLQz_" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tmbuc" id="7DGCeT2QV2x" role="1B3o_S" />
      <node concept="3uibUv" id="7DGCeT2XTR$" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="7DGCeT2XQ7O" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <node concept="3Tmbuc" id="7DGCeT2XQ7P" role="1B3o_S" />
      <node concept="3uibUv" id="7DGCeT2Yrli" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="7i7ttYT1Hh8" role="jymVt">
      <property role="TrG5h" value="myRefactoringName" />
      <node concept="3Tmbuc" id="7i7ttYT1I$$" role="1B3o_S" />
      <node concept="17QB3L" id="7i7ttYT1IKj" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="4N6D1IPMeHi" role="jymVt">
      <node concept="37vLTG" id="7DGCeT2Y1$8" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7DGCeT2Y2WR" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7DGCeT2QETz" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7DGCeT2YFM$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7i7ttYT1LSb" role="3clF46">
        <property role="TrG5h" value="refactoringName" />
        <node concept="17QB3L" id="7i7ttYT1MkL" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4N6D1IPMeHj" role="3clF45" />
      <node concept="3Tm1VV" id="4N6D1IPMeHk" role="1B3o_S" />
      <node concept="3clFbS" id="4N6D1IPMeHm" role="3clF47">
        <node concept="3clFbF" id="4N6D1IPMeHq" role="3cqZAp">
          <node concept="37vLTI" id="4N6D1IPMeHs" role="3clFbG">
            <node concept="37vLTw" id="7DGCeT2XWbO" role="37vLTJ">
              <ref role="3cqZAo" node="7DGCeT2XQ7O" resolve="myRepository" />
            </node>
            <node concept="37vLTw" id="4N6D1IPMeHx" role="37vLTx">
              <ref role="3cqZAo" node="7DGCeT2QETz" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DGCeT2XX60" role="3cqZAp">
          <node concept="37vLTI" id="7DGCeT2XYb3" role="3clFbG">
            <node concept="37vLTw" id="7DGCeT2Y68c" role="37vLTx">
              <ref role="3cqZAo" node="7DGCeT2Y1$8" resolve="project" />
            </node>
            <node concept="37vLTw" id="7DGCeT2XX5Y" role="37vLTJ">
              <ref role="3cqZAo" node="4N6D1IPLQz_" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7i7ttYT1MDX" role="3cqZAp">
          <node concept="37vLTI" id="7i7ttYT1Nam" role="3clFbG">
            <node concept="37vLTw" id="7i7ttYT1NwK" role="37vLTx">
              <ref role="3cqZAo" node="7i7ttYT1LSb" resolve="refactoringName" />
            </node>
            <node concept="37vLTw" id="7i7ttYT1MDV" role="37vLTJ">
              <ref role="3cqZAo" node="7i7ttYT1Hh8" resolve="myRefactoringName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="7DGCeT2Qm8R" role="jymVt">
      <node concept="37vLTG" id="4N6D1IPMeHp" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4N6D1IPMeHo" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="7DGCeT2Qm8T" role="3clF45" />
      <node concept="3Tm1VV" id="7DGCeT2Qm8U" role="1B3o_S" />
      <node concept="3clFbS" id="7DGCeT2Qm8V" role="3clF47">
        <node concept="3clFbF" id="7i7ttYT1NAy" role="3cqZAp">
          <node concept="37vLTI" id="7i7ttYT1NAz" role="3clFbG">
            <node concept="37vLTw" id="7i7ttYT1NA$" role="37vLTJ">
              <ref role="3cqZAo" node="7DGCeT2XQ7O" resolve="myRepository" />
            </node>
            <node concept="2OqwBi" id="7i7ttYT1ODw" role="37vLTx">
              <node concept="37vLTw" id="7i7ttYT1O6K" role="2Oq$k0">
                <ref role="3cqZAo" node="4N6D1IPMeHp" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="7i7ttYT1PbO" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7i7ttYT1NAA" role="3cqZAp">
          <node concept="37vLTI" id="7i7ttYT1NAB" role="3clFbG">
            <node concept="2OqwBi" id="7i7ttYT1QMR" role="37vLTx">
              <node concept="37vLTw" id="7i7ttYT1QgJ" role="2Oq$k0">
                <ref role="3cqZAo" node="4N6D1IPMeHp" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="7i7ttYT1Rrb" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="37vLTw" id="7i7ttYT1NAD" role="37vLTJ">
              <ref role="3cqZAo" node="4N6D1IPLQz_" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7i7ttYT2wMU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="2sePq$_siZ6" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="2sePq$_siZ2" role="2B70Vg">
            <property role="Xl_RC" value="2019.3" />
          </node>
        </node>
        <node concept="2B6LJw" id="2sePq$_siZ7" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="2sePq$_siZ8" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2sePq$_siZ3" role="lGtFl">
        <node concept="TZ5HI" id="2sePq$_siZ4" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsEoP" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsEoQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="7i7ttYT1Jur" role="jymVt">
      <node concept="37vLTG" id="7i7ttYT1Jus" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7i7ttYT1Jut" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7i7ttYT1Ke2" role="3clF46">
        <property role="TrG5h" value="refactoringName" />
        <node concept="17QB3L" id="7i7ttYT1KsW" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7i7ttYT1Juu" role="3clF45" />
      <node concept="3Tm1VV" id="7i7ttYT1Juv" role="1B3o_S" />
      <node concept="3clFbS" id="7i7ttYT1Juw" role="3clF47">
        <node concept="1VxSAg" id="7i7ttYT1Jux" role="3cqZAp">
          <ref role="37wK5l" node="4N6D1IPMeHi" resolve="DefaultRefactoringUI" />
          <node concept="2OqwBi" id="7i7ttYT1RUt" role="37wK5m">
            <node concept="37vLTw" id="7i7ttYT1Juz" role="2Oq$k0">
              <ref role="3cqZAo" node="7i7ttYT1Jus" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="7i7ttYT1RWA" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
            </node>
          </node>
          <node concept="2OqwBi" id="7i7ttYT1SEm" role="37wK5m">
            <node concept="37vLTw" id="7i7ttYT1Sg6" role="2Oq$k0">
              <ref role="3cqZAo" node="7i7ttYT1Jus" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="7i7ttYT1Tbi" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="37vLTw" id="7i7ttYT1Tys" role="37wK5m">
            <ref role="3cqZAo" node="7i7ttYT1Ke2" resolve="refactoringName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4N6D1IPMnmN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="prepare" />
      <node concept="3cqZAl" id="4N6D1IPMnmO" role="3clF45" />
      <node concept="3Tm1VV" id="4N6D1IPMnmP" role="1B3o_S" />
      <node concept="37vLTG" id="4N6D1IPMnmR" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="4N6D1IPZs_w" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="4N6D1IPMnmU" role="3clF47">
        <node concept="3clFbF" id="4N6D1IPZn7K" role="3cqZAp">
          <node concept="2OqwBi" id="4N6D1IPZpa3" role="3clFbG">
            <node concept="2OqwBi" id="4N6D1IPZoKN" role="2Oq$k0">
              <node concept="37vLTw" id="7DGCeT2Y6L5" role="2Oq$k0">
                <ref role="3cqZAo" node="7DGCeT2XQ7O" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="4N6D1IPZp1W" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="4N6D1IPZpry" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="37vLTw" id="4N6D1IPZpLH" role="37wK5m">
                <ref role="3cqZAo" node="4N6D1IPMnmR" resolve="task" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4N6D1IPZtCq" role="jymVt">
      <property role="TrG5h" value="selectParticipants" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="_YKpA" id="4N6D1IPZtCr" role="3clF45">
        <node concept="3uibUv" id="4N6D1IPZtCs" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IPZtCt" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="_YKpA" id="4N6D1IPZtCu" role="1tU5fm">
          <node concept="3uibUv" id="4N6D1IPZtCv" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4N6D1IPZtCw" role="1B3o_S" />
      <node concept="3clFbS" id="4N6D1IPZtCy" role="3clF47">
        <node concept="3clFbJ" id="3mZdOaodOHR" role="3cqZAp">
          <node concept="3clFbS" id="3mZdOaodOHT" role="3clFbx">
            <node concept="3cpWs6" id="3mZdOaodRm3" role="3cqZAp">
              <node concept="37vLTw" id="3mZdOaodSep" role="3cqZAk">
                <ref role="3cqZAo" node="4N6D1IPZtCt" resolve="options" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3mZdOaodQ8_" role="3clFbw">
            <node concept="37vLTw" id="3mZdOaodPpr" role="2Oq$k0">
              <ref role="3cqZAo" node="4N6D1IPZtCt" resolve="options" />
            </node>
            <node concept="1v1jN8" id="3mZdOaodQYr" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="3mZdOaodDwQ" role="3cqZAp">
          <node concept="3cpWsn" id="3mZdOaodDwR" role="3cpWs9">
            <property role="TrG5h" value="selectedOptionIndices" />
            <node concept="_YKpA" id="3mZdOaodDwS" role="1tU5fm">
              <node concept="10Oyi0" id="3mZdOaodDwT" role="_ZDj9" />
            </node>
            <node concept="2YIFZM" id="4X1d9kMBU8w" role="33vP2m">
              <ref role="37wK5l" node="5zhJtEaVXFl" resolve="selectOptions" />
              <ref role="1Pybhc" node="6msDcinOaKu" resolve="SelectOptionsDialog" />
              <node concept="37vLTw" id="4N6D1IPZ_w4" role="37wK5m">
                <ref role="3cqZAo" node="4N6D1IPLQz_" resolve="myProject" />
              </node>
              <node concept="2OqwBi" id="1$U7CSckq2h" role="37wK5m">
                <node concept="2OqwBi" id="1$U7CSckq2i" role="2Oq$k0">
                  <node concept="37vLTw" id="1$U7CSckq2j" role="2Oq$k0">
                    <ref role="3cqZAo" node="4N6D1IPZtCt" resolve="options" />
                  </node>
                  <node concept="3$u5V9" id="1$U7CSckq2k" role="2OqNvi">
                    <node concept="1bVj0M" id="1$U7CSckq2l" role="23t8la">
                      <node concept="3clFbS" id="1$U7CSckq2m" role="1bW5cS">
                        <node concept="3clFbF" id="1$U7CSckq2n" role="3cqZAp">
                          <node concept="2OqwBi" id="1$U7CSckq2o" role="3clFbG">
                            <node concept="37vLTw" id="1$U7CSckq2p" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0Y64" resolve="it" />
                            </node>
                            <node concept="liA8E" id="1$U7CSckq2q" role="2OqNvi">
                              <ref role="37wK5l" to="5nvm:37Il31hWTci" resolve="getDescription" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Y64" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Y65" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="1$U7CSckq2t" role="2OqNvi" />
              </node>
              <node concept="3cpWs3" id="7i7ttYT28li" role="37wK5m">
                <node concept="Xl_RD" id="1$U7CSckq2u" role="3uHU7w">
                  <property role="Xl_RC" value="Select Participants" />
                </node>
                <node concept="1eOMI4" id="7i7ttYT2amn" role="3uHU7B">
                  <node concept="3K4zz7" id="7i7ttYT22mn" role="1eOMHV">
                    <node concept="Xl_RD" id="7i7ttYT23zL" role="3K4E3e" />
                    <node concept="3cpWs3" id="7i7ttYT1TzZ" role="3K4GZi">
                      <node concept="37vLTw" id="7i7ttYT1UoA" role="3uHU7B">
                        <ref role="3cqZAo" node="7i7ttYT1Hh8" resolve="myRefactoringName" />
                      </node>
                      <node concept="Xl_RD" id="7i7ttYT26Fq" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="3clFbC" id="7i7ttYT20H0" role="3K4Cdx">
                      <node concept="10Nm6u" id="7i7ttYT21Eg" role="3uHU7w" />
                      <node concept="37vLTw" id="7i7ttYT1ZEj" role="3uHU7B">
                        <ref role="3cqZAo" node="7i7ttYT1Hh8" resolve="myRefactoringName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="6EAgubLAB_b" role="37wK5m">
                <property role="Xl_RC" value="Select how to update usages:" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3mZdOaodDwX" role="3cqZAp">
          <node concept="3clFbS" id="3mZdOaodDwY" role="3clFbx">
            <node concept="3cpWs6" id="3mZdOaodDwZ" role="3cqZAp">
              <node concept="10Nm6u" id="3mZdOaodDx0" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3mZdOaodDx1" role="3clFbw">
            <node concept="10Nm6u" id="3mZdOaodDx2" role="3uHU7w" />
            <node concept="37vLTw" id="3mZdOaodDx3" role="3uHU7B">
              <ref role="3cqZAo" node="3mZdOaodDwR" resolve="selectedOptionIndices" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3mZdOaodGsw" role="3cqZAp">
          <node concept="2OqwBi" id="3mZdOaodDx6" role="3cqZAk">
            <node concept="2OqwBi" id="3mZdOaodDx7" role="2Oq$k0">
              <node concept="3$u5V9" id="3mZdOaodDx8" role="2OqNvi">
                <node concept="1bVj0M" id="3mZdOaodDx9" role="23t8la">
                  <node concept="3clFbS" id="3mZdOaodDxa" role="1bW5cS">
                    <node concept="3clFbF" id="3mZdOaodDxb" role="3cqZAp">
                      <node concept="1y4W85" id="3mZdOaodDxc" role="3clFbG">
                        <node concept="37vLTw" id="3mZdOaodDxd" role="1y58nS">
                          <ref role="3cqZAo" node="5W7E4fV0Y66" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="3mZdOaodDxe" role="1y566C">
                          <ref role="3cqZAo" node="4N6D1IPZtCt" resolve="options" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Y66" role="1bW2Oz">
                    <property role="TrG5h" value="i" />
                    <node concept="2jxLKc" id="5W7E4fV0Y67" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3mZdOaodDxh" role="2Oq$k0">
                <ref role="3cqZAo" node="3mZdOaodDwR" resolve="selectedOptionIndices" />
              </node>
            </node>
            <node concept="ANE8D" id="3mZdOaodDxi" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4N6D1IPLLsx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runSearch" />
      <node concept="3cqZAl" id="4N6D1IPLLsy" role="3clF45" />
      <node concept="3Tm1VV" id="4N6D1IPLLsz" role="1B3o_S" />
      <node concept="37vLTG" id="4N6D1IPLLs_" role="3clF46">
        <property role="TrG5h" value="task" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="4N6D1IPLLsA" role="1tU5fm">
          <node concept="3cqZAl" id="4N6D1IPLLsB" role="1ajl9A" />
          <node concept="3uibUv" id="4N6D1IPLLsC" role="1ajw0F">
            <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4N6D1IPLLsD" role="3clF47">
        <node concept="3clFbF" id="1OUHNoJWXME" role="3cqZAp">
          <node concept="2OqwBi" id="1OUHNoJWXMF" role="3clFbG">
            <node concept="2YIFZM" id="1OUHNoJWXMG" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="1OUHNoJWXMH" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="1OUHNoJWXMI" role="37wK5m">
                <node concept="YeOm9" id="1OUHNoJWXMJ" role="2ShVmc">
                  <node concept="1Y3b0j" id="1OUHNoJWXMK" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                    <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                    <node concept="3Tm1VV" id="1OUHNoJWXML" role="1B3o_S" />
                    <node concept="3clFb_" id="1OUHNoJWXMM" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="1OUHNoJWXMN" role="1B3o_S" />
                      <node concept="3cqZAl" id="1OUHNoJWXMO" role="3clF45" />
                      <node concept="37vLTG" id="1OUHNoJWXMP" role="3clF46">
                        <property role="TrG5h" value="progressIndicator" />
                        <node concept="3uibUv" id="1OUHNoJWXMQ" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                        <node concept="2AHcQZ" id="1OUHNoJWXMR" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1OUHNoJWXMS" role="3clF47">
                        <node concept="3clFbF" id="6gU0oA5L5$L" role="3cqZAp">
                          <node concept="2OqwBi" id="6gU0oA5L6ep" role="3clFbG">
                            <node concept="37vLTw" id="6gU0oA5L5$J" role="2Oq$k0">
                              <ref role="3cqZAo" node="1OUHNoJWXMP" resolve="progressIndicator" />
                            </node>
                            <node concept="liA8E" id="6gU0oA5L6tz" role="2OqNvi">
                              <ref role="37wK5l" to="xygl:~ProgressIndicator.setIndeterminate(boolean)" resolve="setIndeterminate" />
                              <node concept="3clFbT" id="6gU0oA5L70a" role="37wK5m">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1QHqEK" id="4N6D1IQ0hQh" role="3cqZAp">
                          <node concept="1QHqEC" id="4N6D1IQ0hQj" role="1QHqEI">
                            <node concept="3clFbS" id="4N6D1IQ0hQl" role="1bW5cS">
                              <node concept="3cpWs8" id="1OUHNoJWXMT" role="3cqZAp">
                                <node concept="3cpWsn" id="1OUHNoJWXMU" role="3cpWs9">
                                  <property role="TrG5h" value="progressMonitor" />
                                  <node concept="3uibUv" id="1OUHNoJWXMV" role="1tU5fm">
                                    <ref role="3uigEE" to="mk8z:~ProgressMonitorAdapter" resolve="ProgressMonitorAdapter" />
                                  </node>
                                  <node concept="2ShNRf" id="1OUHNoJWXMW" role="33vP2m">
                                    <node concept="1pGfFk" id="1OUHNoJWXMX" role="2ShVmc">
                                      <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                      <node concept="37vLTw" id="1OUHNoJWXMY" role="37wK5m">
                                        <ref role="3cqZAo" node="1OUHNoJWXMP" resolve="progressIndicator" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3J1_TO" id="2pO6eqQ1kwg" role="3cqZAp">
                                <node concept="3clFbS" id="2pO6eqQ1kwi" role="1zxBo7">
                                  <node concept="3clFbF" id="4N6D1IPLW5v" role="3cqZAp">
                                    <node concept="2Sg_IR" id="4N6D1IPLYwb" role="3clFbG">
                                      <node concept="37vLTw" id="4N6D1IPLYwc" role="2SgG2M">
                                        <ref role="3cqZAo" node="4N6D1IPLLs_" resolve="task" />
                                      </node>
                                      <node concept="37vLTw" id="4N6D1IPLZ4K" role="2SgHGx">
                                        <ref role="3cqZAo" node="1OUHNoJWXMU" resolve="progressMonitor" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uVAMA" id="2pO6eqQ1kwj" role="1zxBo5">
                                  <node concept="XOnhg" id="2pO6eqQ1kwl" role="1zc67B">
                                    <property role="3TUv4t" value="false" />
                                    <property role="TrG5h" value="e" />
                                    <node concept="nSUau" id="xvs04dI_ti" role="1tU5fm">
                                      <node concept="3uibUv" id="2pO6eqQ1lkc" role="nSUat">
                                        <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="2pO6eqQ1kwp" role="1zc67A">
                                    <node concept="3clFbF" id="2Ap4oLE_BT0" role="3cqZAp">
                                      <node concept="2OqwBi" id="2Ap4oLE_CyD" role="3clFbG">
                                        <node concept="37vLTw" id="2Ap4oLE_BSY" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1OUHNoJWXMU" resolve="progressMonitor" />
                                        </node>
                                        <node concept="liA8E" id="2Ap4oLE_CPU" role="2OqNvi">
                                          <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.cancel()" resolve="cancel" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="RRSsy" id="3jYQuSB37uz" role="3cqZAp">
                                      <property role="RRSoG" value="gZ5fh_4/error" />
                                      <node concept="Xl_RD" id="2pO6eqQ1myo" role="RRSoy">
                                        <property role="Xl_RC" value="Exception during usages search" />
                                      </node>
                                      <node concept="37vLTw" id="2pO6eqQ1myq" role="RRSow">
                                        <ref role="3cqZAo" node="2pO6eqQ1kwl" resolve="e" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4N6D1IQ0LDR" role="ukAjM">
                            <node concept="Xjq3P" id="4N6D1IQ0Lni" role="2Oq$k0">
                              <ref role="1HBi2w" node="4N6D1IPLKD_" resolve="DefaultRefactoringUI" />
                            </node>
                            <node concept="2OwXpG" id="7DGCeT2YbnU" role="2OqNvi">
                              <ref role="2Oxat5" node="7DGCeT2XQ7O" resolve="myRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4N6D1IPLSNM" role="37wK5m">
                      <ref role="3cqZAo" node="4N6D1IPLQz_" resolve="myProject" />
                    </node>
                    <node concept="Xl_RD" id="1OUHNoJWXOn" role="37wK5m">
                      <property role="Xl_RC" value="Refactoring" />
                    </node>
                    <node concept="3clFbT" id="1OUHNoJWXOo" role="37wK5m">
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
    <node concept="2tJIrI" id="3D2IEK85ung" role="jymVt" />
    <node concept="3clFb_" id="4N6D1IQ2Y8W" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showRefactoringView" />
      <node concept="3cqZAl" id="4N6D1IQ2Y8X" role="3clF45" />
      <node concept="3Tm1VV" id="4N6D1IQ2Y8Y" role="1B3o_S" />
      <node concept="37vLTG" id="4N6D1IQ2Y90" role="3clF46">
        <property role="TrG5h" value="performRefactoringTask" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4N6D1IQ2Y91" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="37vLTG" id="7DGCeT2R39N" role="3clF46">
        <property role="TrG5h" value="searchResults" />
        <node concept="3uibUv" id="7DGCeT2R3FM" role="1tU5fm">
          <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQ36Kq" role="3clF46">
        <property role="TrG5h" value="rerunTask" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7DGCeT2X_g6" role="1tU5fm">
          <ref role="3uigEE" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
        </node>
      </node>
      <node concept="37vLTG" id="2Ut0s9XG701" role="3clF46">
        <property role="TrG5h" value="refactoringSession" />
        <node concept="3uibUv" id="2Ut0s9XG84H" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="3clFbS" id="4N6D1IQ2Y92" role="3clF47">
        <node concept="3cpWs8" id="2FW2ExVglPJ" role="3cqZAp">
          <node concept="3cpWsn" id="2FW2ExVglPK" role="3cpWs9">
            <property role="TrG5h" value="usagesModelTracker" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2FW2ExVglPL" role="1tU5fm">
              <ref role="3uigEE" to="u42p:7DGCeT2Ia$b" resolve="UsagesModelTracker" />
            </node>
            <node concept="2ShNRf" id="2FW2ExVgn27" role="33vP2m">
              <node concept="1pGfFk" id="2FW2ExVgmX5" role="2ShVmc">
                <ref role="37wK5l" to="u42p:7DGCeT2IdiJ" resolve="UsagesModelTracker" />
                <node concept="37vLTw" id="1u1ej4GnAQb" role="37wK5m">
                  <ref role="3cqZAo" node="7DGCeT2XQ7O" resolve="myRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3BJTP_NmFv_" role="3cqZAp">
          <node concept="2OqwBi" id="3BJTP_NmFvA" role="3clFbG">
            <node concept="2YIFZM" id="3BJTP_NmFvB" role="2Oq$k0">
              <ref role="1Pybhc" to="u42p:1dH5fOG2bOi" resolve="RefactoringAccessEx" />
              <ref role="37wK5l" to="u42p:1dH5fOG2bPt" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="3BJTP_NmFvC" role="2OqNvi">
              <ref role="37wK5l" to="u42p:7DGCeT2L$54" resolve="showRefactoringView" />
              <node concept="37vLTw" id="4N6D1IQ30tw" role="37wK5m">
                <ref role="3cqZAo" node="4N6D1IPLQz_" resolve="myProject" />
              </node>
              <node concept="2ShNRf" id="3BJTP_NmFvG" role="37wK5m">
                <node concept="YeOm9" id="3BJTP_NmFvH" role="2ShVmc">
                  <node concept="1Y3b0j" id="3BJTP_NmFvI" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="u42p:3g3N8kb3Dex" resolve="RefactoringViewAction" />
                    <node concept="3Tm1VV" id="3BJTP_NmFvJ" role="1B3o_S" />
                    <node concept="3clFb_" id="3BJTP_NmFvK" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="performAction" />
                      <property role="DiZV1" value="false" />
                      <node concept="37vLTG" id="2vOGnLEnvMk" role="3clF46">
                        <property role="TrG5h" value="refactoringViewItem" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="3BJTP_NmFvO" role="1tU5fm">
                          <ref role="3uigEE" to="u42p:3g3N8kb3DkV" resolve="RefactoringViewItem" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="3BJTP_NmFvL" role="1B3o_S" />
                      <node concept="3cqZAl" id="3BJTP_NmFvM" role="3clF45" />
                      <node concept="3clFbS" id="3BJTP_NmFvP" role="3clF47">
                        <node concept="3clFbJ" id="2FW2ExVgrHC" role="3cqZAp">
                          <node concept="3clFbS" id="2FW2ExVgrHE" role="3clFbx">
                            <node concept="3clFbF" id="1u1ej4Gjrz3" role="3cqZAp">
                              <node concept="2YIFZM" id="1u1ej4GjSr6" role="3clFbG">
                                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                <ref role="37wK5l" to="jkm4:~Messages.showMessageDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showMessageDialog" />
                                <node concept="37vLTw" id="1u1ej4Gjrz5" role="37wK5m">
                                  <ref role="3cqZAo" node="4N6D1IPLQz_" resolve="myProject" />
                                </node>
                                <node concept="Xl_RD" id="1u1ej4GjV1a" role="37wK5m">
                                  <property role="Xl_RC" value="Cannot perform refactoring operation.\nThere were changes in code after usages have been found.\nPlease perform usage search again." />
                                </node>
                                <node concept="Xl_RD" id="1u1ej4GjWpL" role="37wK5m">
                                  <property role="Xl_RC" value="Changes Detected" />
                                </node>
                                <node concept="2YIFZM" id="1u1ej4GjSF4" role="37wK5m">
                                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                  <ref role="37wK5l" to="jkm4:~Messages.getErrorIcon()" resolve="getErrorIcon" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2FW2ExVgsXu" role="3clFbw">
                            <node concept="37vLTw" id="2FW2ExVgsfc" role="2Oq$k0">
                              <ref role="3cqZAo" node="2FW2ExVglPK" resolve="usagesModelTracker" />
                            </node>
                            <node concept="liA8E" id="2FW2ExVgtmr" role="2OqNvi">
                              <ref role="37wK5l" to="u42p:7DGCeT2IL8S" resolve="isChanged" />
                            </node>
                          </node>
                          <node concept="9aQIb" id="1u1ej4GjpKs" role="9aQIa">
                            <node concept="3clFbS" id="1u1ej4GjpKt" role="9aQI4">
                              <node concept="3J1_TO" id="2vOGnLEnvMQ" role="3cqZAp">
                                <node concept="3clFbS" id="2vOGnLEnvMR" role="1zxBo7">
                                  <node concept="3clFbF" id="XAmMejAqTl" role="3cqZAp">
                                    <node concept="2OqwBi" id="XAmMejAsIE" role="3clFbG">
                                      <node concept="37vLTw" id="XAmMejAs15" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4N6D1IQ2Y90" resolve="performRefactoringTask" />
                                      </node>
                                      <node concept="liA8E" id="XAmMejAsWy" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uVAMA" id="2vOGnLEnvMW" role="1zxBo5">
                                  <node concept="XOnhg" id="2vOGnLEnvMX" role="1zc67B">
                                    <property role="3TUv4t" value="false" />
                                    <property role="TrG5h" value="exception" />
                                    <node concept="nSUau" id="xvs04dI_tk" role="1tU5fm">
                                      <node concept="3uibUv" id="2vOGnLEnvMY" role="nSUat">
                                        <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="2vOGnLEnvMZ" role="1zc67A">
                                    <node concept="RRSsy" id="3jYQuSB36AS" role="3cqZAp">
                                      <property role="RRSoG" value="gZ5fh_4/error" />
                                      <node concept="Xl_RD" id="2vOGnLEnvN1" role="RRSoy">
                                        <property role="Xl_RC" value="Exception during refactoring: " />
                                      </node>
                                      <node concept="37vLTw" id="2vOGnLEnvN2" role="RRSow">
                                        <ref role="3cqZAo" node="2vOGnLEnvMX" resolve="exception" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2vOGnLEnvN5" role="3cqZAp">
                                <node concept="2OqwBi" id="2vOGnLEnvN6" role="3clFbG">
                                  <node concept="37vLTw" id="2vOGnLEnvN7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2vOGnLEnvMk" resolve="refactoringViewItem" />
                                  </node>
                                  <node concept="liA8E" id="2vOGnLEnvN8" role="2OqNvi">
                                    <ref role="37wK5l" to="u42p:3g3N8kb3DkX" resolve="close" />
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
              <node concept="1bVj0M" id="1u1ej4GpnLF" role="37wK5m">
                <node concept="3clFbS" id="1u1ej4GpnLH" role="1bW5cS">
                  <node concept="3clFbF" id="1u1ej4GppI_" role="3cqZAp">
                    <node concept="2OqwBi" id="1u1ej4GpqpQ" role="3clFbG">
                      <node concept="37vLTw" id="1u1ej4GppI$" role="2Oq$k0">
                        <ref role="3cqZAo" node="2FW2ExVglPK" resolve="usagesModelTracker" />
                      </node>
                      <node concept="liA8E" id="1u1ej4GpqTw" role="2OqNvi">
                        <ref role="37wK5l" to="u42p:7DGCeT2IdkA" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7DGCeT2R4kx" role="37wK5m">
                <ref role="3cqZAo" node="7DGCeT2R39N" resolve="searchResults" />
              </node>
              <node concept="2ShNRf" id="4$CbMOubyST" role="37wK5m">
                <node concept="YeOm9" id="4$CbMOubKDp" role="2ShVmc">
                  <node concept="1Y3b0j" id="4$CbMOubKDs" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="4$CbMOubKDt" role="1B3o_S" />
                    <node concept="3clFb_" id="4$CbMOubKDu" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="canExecute" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="4$CbMOubKDv" role="1B3o_S" />
                      <node concept="10P_77" id="4$CbMOubKDx" role="3clF45" />
                      <node concept="3clFbS" id="4$CbMOubKDy" role="3clF47">
                        <node concept="3clFbF" id="4$CbMOubN51" role="3cqZAp">
                          <node concept="2OqwBi" id="4$CbMOubNIX" role="3clFbG">
                            <node concept="37vLTw" id="4$CbMOubN50" role="2Oq$k0">
                              <ref role="3cqZAo" node="4N6D1IQ36Kq" resolve="rerunTask" />
                            </node>
                            <node concept="liA8E" id="4$CbMOubNWs" role="2OqNvi">
                              <ref role="37wK5l" to="g4jo:7DGCeT2Ukpc" resolve="canExecute" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="4$CbMOubKD$" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="execute" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="4$CbMOubKD_" role="1B3o_S" />
                      <node concept="37vLTG" id="4$CbMOubKDC" role="3clF46">
                        <property role="TrG5h" value="progressMonitor" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="4$CbMOubKDD" role="1tU5fm">
                          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="4$CbMOubKDF" role="3clF45">
                        <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                      </node>
                      <node concept="3clFbS" id="4$CbMOubKDG" role="3clF47">
                        <node concept="3clFbF" id="4$CbMOubW$v" role="3cqZAp">
                          <node concept="2OqwBi" id="4$CbMOubXgv" role="3clFbG">
                            <node concept="37vLTw" id="4$CbMOubW$t" role="2Oq$k0">
                              <ref role="3cqZAo" node="2FW2ExVglPK" resolve="usagesModelTracker" />
                            </node>
                            <node concept="liA8E" id="4$CbMOucbcm" role="2OqNvi">
                              <ref role="37wK5l" to="u42p:4$CbMOubYwl" resolve="reset" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4$CbMOubOSb" role="3cqZAp">
                          <node concept="2OqwBi" id="4$CbMOubPyf" role="3clFbG">
                            <node concept="37vLTw" id="4$CbMOubOSa" role="2Oq$k0">
                              <ref role="3cqZAo" node="4N6D1IQ36Kq" resolve="rerunTask" />
                            </node>
                            <node concept="liA8E" id="4$CbMOubPJQ" role="2OqNvi">
                              <ref role="37wK5l" to="g4jo:7DGCeT2Ukpg" resolve="execute" />
                              <node concept="37vLTw" id="4$CbMOubQWf" role="37wK5m">
                                <ref role="3cqZAo" node="4$CbMOubKDC" resolve="progressMonitor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3K4zz7" id="7i7ttYT2dv7" role="37wK5m">
                <node concept="Xl_RD" id="7i7ttYT2dUp" role="3K4E3e">
                  <property role="Xl_RC" value="Refactoring" />
                </node>
                <node concept="37vLTw" id="7i7ttYT2gkM" role="3K4GZi">
                  <ref role="3cqZAo" node="7i7ttYT1Hh8" resolve="myRefactoringName" />
                </node>
                <node concept="3clFbC" id="7i7ttYT2cC6" role="3K4Cdx">
                  <node concept="10Nm6u" id="7i7ttYT2dkL" role="3uHU7w" />
                  <node concept="37vLTw" id="7i7ttYT2bUb" role="3uHU7B">
                    <ref role="3cqZAo" node="7i7ttYT1Hh8" resolve="myRefactoringName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4N6D1IPLJZV" role="1B3o_S" />
    <node concept="3uibUv" id="4N6D1IPLLos" role="EKbjA">
      <ref role="3uigEE" to="5nvm:4N6D1IPLesH" resolve="RefactoringUI" />
    </node>
  </node>
  <node concept="312cEu" id="6msDcinOaKu">
    <property role="TrG5h" value="SelectOptionsDialog" />
    <node concept="2tJIrI" id="6msDcinOCy5" role="jymVt" />
    <node concept="312cEg" id="6msDcinOl$p" role="jymVt">
      <property role="TrG5h" value="myOptions" />
      <node concept="3Tm6S6" id="6msDcinOl$q" role="1B3o_S" />
      <node concept="_YKpA" id="6msDcinOlCI" role="1tU5fm">
        <node concept="17QB3L" id="FLkVtyywEj" role="_ZDj9" />
      </node>
    </node>
    <node concept="312cEg" id="3mZdOaobQAL" role="jymVt">
      <property role="TrG5h" value="myMessage" />
      <node concept="3Tm6S6" id="3mZdOaobQAM" role="1B3o_S" />
      <node concept="17QB3L" id="3mZdOaobR0_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6msDcinOQ46" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCheckBoxes" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6msDcinOPGX" role="1B3o_S" />
      <node concept="_YKpA" id="6msDcinOPWm" role="1tU5fm">
        <node concept="3uibUv" id="6msDcinOQ41" role="_ZDj9">
          <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
        </node>
      </node>
      <node concept="2ShNRf" id="6msDcinOSLy" role="33vP2m">
        <node concept="Tc6Ow" id="6msDcinOSLu" role="2ShVmc">
          <node concept="3uibUv" id="6msDcinOSLv" role="HW$YZ">
            <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6msDcinOSsj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySelected" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6msDcinOS2f" role="1B3o_S" />
      <node concept="_YKpA" id="1$U7CSck7oo" role="1tU5fm">
        <node concept="10Oyi0" id="1$U7CSck7Ah" role="_ZDj9" />
      </node>
    </node>
    <node concept="3clFbW" id="6msDcinObNF" role="jymVt">
      <node concept="3cqZAl" id="6msDcinObNH" role="3clF45" />
      <node concept="3Tm1VV" id="6msDcinObNI" role="1B3o_S" />
      <node concept="3clFbS" id="6msDcinObNJ" role="3clF47">
        <node concept="XkiVB" id="6msDcinObUR" role="3cqZAp">
          <ref role="37wK5l" to="u42p:1t_LRy89k3P" resolve="RefactoringDialog" />
          <node concept="37vLTw" id="6msDcinOldA" role="37wK5m">
            <ref role="3cqZAo" node="6msDcinOlcN" resolve="project" />
          </node>
          <node concept="3clFbT" id="6msDcinOle7" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbF" id="6msDcinOlOC" role="3cqZAp">
          <node concept="37vLTI" id="6msDcinOm5N" role="3clFbG">
            <node concept="37vLTw" id="6msDcinOm8Z" role="37vLTx">
              <ref role="3cqZAo" node="6msDcinOloz" resolve="options" />
            </node>
            <node concept="37vLTw" id="6msDcinOlOA" role="37vLTJ">
              <ref role="3cqZAo" node="6msDcinOl$p" resolve="myOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3mZdOaobRa7" role="3cqZAp">
          <node concept="37vLTI" id="3mZdOaobRi2" role="3clFbG">
            <node concept="37vLTw" id="3mZdOaobRlO" role="37vLTx">
              <ref role="3cqZAo" node="3mZdOaobJAm" resolve="message" />
            </node>
            <node concept="37vLTw" id="3mZdOaobRa5" role="37vLTJ">
              <ref role="3cqZAo" node="3mZdOaobQAL" resolve="myMessage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EAgubL_voP" role="3cqZAp">
          <node concept="1rXfSq" id="6EAgubL_voN" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.init()" resolve="init" />
          </node>
        </node>
        <node concept="3clFbF" id="6EAgubL_udw" role="3cqZAp">
          <node concept="1rXfSq" id="6EAgubL_udu" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
            <node concept="37vLTw" id="FLkVtyyLJ$" role="37wK5m">
              <ref role="3cqZAo" node="FLkVtyyL28" resolve="title" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6msDcinOlcN" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6msDcinOloa" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="6msDcinOloz" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="_YKpA" id="6msDcinOlsu" role="1tU5fm">
          <node concept="17QB3L" id="FLkVtyyHmK" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="FLkVtyyL28" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="FLkVtyyLfY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3mZdOaobJAm" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="3mZdOaobJKV" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6msDcinObIO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createCenterPanel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tmbuc" id="6msDcinObIP" role="1B3o_S" />
      <node concept="3uibUv" id="6msDcinObIR" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="6msDcinObIU" role="3clF47">
        <node concept="3cpWs8" id="6msDcinOEHI" role="3cqZAp">
          <node concept="3cpWsn" id="6msDcinOEHJ" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="6msDcinOEHz" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="6msDcinOEHK" role="33vP2m">
              <node concept="1pGfFk" id="6msDcinOEHL" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="6msDcinOEHM" role="37wK5m">
                  <node concept="1pGfFk" id="6EAgubLA5qS" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EAgubLA9Ig" role="3cqZAp">
          <node concept="3cpWsn" id="6EAgubLA9Ij" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="6EAgubLA9Ie" role="1tU5fm" />
            <node concept="3cmrfG" id="6EAgubLAa0Y" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6EAgubLA_oN" role="3cqZAp" />
        <node concept="9aQIb" id="6EAgubLAAe6" role="3cqZAp">
          <node concept="3clFbS" id="6EAgubLAAe8" role="9aQI4">
            <node concept="3cpWs8" id="6EAgubLAAuk" role="3cqZAp">
              <node concept="3cpWsn" id="6EAgubLAAul" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="2ShNRf" id="6EAgubLAAum" role="33vP2m">
                  <node concept="1pGfFk" id="6EAgubLAAun" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
                  </node>
                </node>
                <node concept="3uibUv" id="6EAgubLAAuo" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EAgubLAAup" role="3cqZAp">
              <node concept="37vLTI" id="6EAgubLAAuq" role="3clFbG">
                <node concept="2OqwBi" id="6EAgubLAAur" role="37vLTJ">
                  <node concept="37vLTw" id="6EAgubLAAus" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="6EAgubLAAut" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
                  </node>
                </node>
                <node concept="10M0yZ" id="6EAgubLAAuu" role="37vLTx">
                  <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                  <ref role="3cqZAo" to="z60i:~GridBagConstraints.BOTH" resolve="BOTH" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EAgubLAAuF" role="3cqZAp">
              <node concept="37vLTI" id="6EAgubLAAuG" role="3clFbG">
                <node concept="2ShNRf" id="6EAgubLAAuH" role="37vLTx">
                  <node concept="1pGfFk" id="6EAgubLAAuI" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                    <node concept="3cmrfG" id="6EAgubLAAuJ" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="6EAgubLAAuK" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="6EAgubLAAuL" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="6EAgubLAAuM" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6EAgubLAAuN" role="37vLTJ">
                  <node concept="37vLTw" id="6EAgubLAAuO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="6EAgubLAAuP" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.insets" resolve="insets" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EAgubLAAuQ" role="3cqZAp">
              <node concept="37vLTI" id="6EAgubLAAuR" role="3clFbG">
                <node concept="2OqwBi" id="6EAgubLAAuS" role="37vLTJ">
                  <node concept="37vLTw" id="6EAgubLAAuT" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="6EAgubLAAuU" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6EAgubLAAuV" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EAgubLAAuW" role="3cqZAp">
              <node concept="37vLTI" id="6EAgubLAAuX" role="3clFbG">
                <node concept="2OqwBi" id="6EAgubLAAuY" role="37vLTJ">
                  <node concept="37vLTw" id="6EAgubLAAuZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="6EAgubLAAv0" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
                  </node>
                </node>
                <node concept="3uNrnE" id="6EAgubLAE4M" role="37vLTx">
                  <node concept="37vLTw" id="6EAgubLAE4O" role="2$L3a6">
                    <ref role="3cqZAo" node="6EAgubLA9Ij" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EAgubLAAv3" role="3cqZAp">
              <node concept="37vLTI" id="6EAgubLAAv4" role="3clFbG">
                <node concept="2OqwBi" id="6EAgubLAAv5" role="37vLTJ">
                  <node concept="2OwXpG" id="6EAgubLAAv6" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                  </node>
                  <node concept="37vLTw" id="6EAgubLAAv7" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6EAgubLAAv8" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EAgubLAAv9" role="3cqZAp">
              <node concept="37vLTI" id="6EAgubLAAva" role="3clFbG">
                <node concept="2OqwBi" id="6EAgubLAAvb" role="37vLTJ">
                  <node concept="37vLTw" id="6EAgubLAAvc" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="6EAgubLAAvd" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.weighty" resolve="weighty" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6EAgubLAAve" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6EAgubLAAvf" role="3cqZAp" />
            <node concept="3clFbF" id="6EAgubLAAvu" role="3cqZAp">
              <node concept="2OqwBi" id="6EAgubLAAvv" role="3clFbG">
                <node concept="37vLTw" id="6EAgubLAAvw" role="2Oq$k0">
                  <ref role="3cqZAo" node="6msDcinOEHJ" resolve="panel" />
                </node>
                <node concept="liA8E" id="6EAgubLAAvx" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="6EAgubLAAZE" role="37wK5m">
                    <node concept="1pGfFk" id="6EAgubLABym" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                      <node concept="37vLTw" id="3mZdOaobRn$" role="37wK5m">
                        <ref role="3cqZAo" node="3mZdOaobQAL" resolve="myMessage" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6EAgubLAAvz" role="37wK5m">
                    <ref role="3cqZAo" node="6EAgubLAAul" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6EAgubLAAe7" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="6EAgubLA_Ap" role="3cqZAp" />
        <node concept="2Gpval" id="6msDcinOG3I" role="3cqZAp">
          <node concept="2GrKxI" id="6msDcinOG3K" role="2Gsz3X">
            <property role="TrG5h" value="option" />
          </node>
          <node concept="3clFbS" id="6msDcinOG3M" role="2LFqv$">
            <node concept="3cpWs8" id="5U9rQri5Gie" role="3cqZAp">
              <node concept="3cpWsn" id="5U9rQri5Gif" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="2ShNRf" id="5U9rQri5Gih" role="33vP2m">
                  <node concept="1pGfFk" id="5U9rQri5Gii" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
                  </node>
                </node>
                <node concept="3uibUv" id="5U9rQri5Gig" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5U9rQri5Gij" role="3cqZAp">
              <node concept="37vLTI" id="5U9rQri5Gik" role="3clFbG">
                <node concept="2OqwBi" id="5U9rQri5Gim" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTsAs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="5U9rQri5Gio" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
                  </node>
                </node>
                <node concept="10M0yZ" id="5U9rQri5Gil" role="37vLTx">
                  <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                  <ref role="3cqZAo" to="z60i:~GridBagConstraints.BOTH" resolve="BOTH" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5U9rQri5Gip" role="3cqZAp">
              <node concept="37vLTI" id="5U9rQri5Giq" role="3clFbG">
                <node concept="2ShNRf" id="5U9rQri5Gir" role="37vLTx">
                  <node concept="1pGfFk" id="5U9rQri5Gis" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                    <node concept="3cmrfG" id="5U9rQri5Git" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="5U9rQri5Giu" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="5U9rQri5Giv" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="5U9rQri5Giw" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5U9rQri5Gix" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTzEj" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="5U9rQri5Giz" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.insets" resolve="insets" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5U9rQri5Gi$" role="3cqZAp">
              <node concept="37vLTI" id="5U9rQri5Gi_" role="3clFbG">
                <node concept="2OqwBi" id="5U9rQri5GiA" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagT$6P" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="5U9rQri5GiC" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6EAgubLAqPd" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5U9rQri5GiE" role="3cqZAp">
              <node concept="37vLTI" id="5U9rQri5GiF" role="3clFbG">
                <node concept="2OqwBi" id="5U9rQri5GiH" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTsGi" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="5U9rQri5GiJ" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
                  </node>
                </node>
                <node concept="3uNrnE" id="6EAgubLAr2u" role="37vLTx">
                  <node concept="37vLTw" id="6EAgubLAr2w" role="2$L3a6">
                    <ref role="3cqZAo" node="6EAgubLA9Ij" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5U9rQri5GiK" role="3cqZAp">
              <node concept="37vLTI" id="5U9rQri5GiL" role="3clFbG">
                <node concept="2OqwBi" id="5U9rQri5GiN" role="37vLTJ">
                  <node concept="2OwXpG" id="5U9rQri5GiP" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTyZN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                </node>
                <node concept="3cmrfG" id="5U9rQri5GiM" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5U9rQri5GiQ" role="3cqZAp">
              <node concept="37vLTI" id="5U9rQri5GiR" role="3clFbG">
                <node concept="2OqwBi" id="5U9rQri5GiS" role="37vLTJ">
                  <node concept="37vLTw" id="3GM_nagTzHc" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                  <node concept="2OwXpG" id="5U9rQri5GiU" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~GridBagConstraints.weighty" resolve="weighty" />
                  </node>
                </node>
                <node concept="3cmrfG" id="5U9rQri5GiV" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6EAgubLA8Mi" role="3cqZAp" />
            <node concept="3cpWs8" id="6msDcinOQmn" role="3cqZAp">
              <node concept="3cpWsn" id="6msDcinOQmo" role="3cpWs9">
                <property role="TrG5h" value="checkBox" />
                <node concept="3uibUv" id="6msDcinOQmh" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2ShNRf" id="6msDcinOQmp" role="33vP2m">
                  <node concept="1pGfFk" id="6msDcinOQmq" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String,boolean)" resolve="JCheckBox" />
                    <node concept="2GrUjf" id="6msDcinOQmt" role="37wK5m">
                      <ref role="2Gs0qQ" node="6msDcinOG3K" resolve="option" />
                    </node>
                    <node concept="3clFbT" id="6msDcinOQmw" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6msDcinOQJZ" role="3cqZAp">
              <node concept="2OqwBi" id="6msDcinOQWA" role="3clFbG">
                <node concept="37vLTw" id="6msDcinOQJX" role="2Oq$k0">
                  <ref role="3cqZAo" node="6msDcinOQ46" resolve="myCheckBoxes" />
                </node>
                <node concept="TSZUe" id="6msDcinORmv" role="2OqNvi">
                  <node concept="37vLTw" id="6msDcinORqJ" role="25WWJ7">
                    <ref role="3cqZAo" node="6msDcinOQmo" resolve="checkBox" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6msDcinOGkj" role="3cqZAp">
              <node concept="2OqwBi" id="6msDcinOGmT" role="3clFbG">
                <node concept="37vLTw" id="6msDcinOGki" role="2Oq$k0">
                  <ref role="3cqZAo" node="6msDcinOEHJ" resolve="panel" />
                </node>
                <node concept="liA8E" id="6msDcinOGAC" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="6msDcinOQmx" role="37wK5m">
                    <ref role="3cqZAo" node="6msDcinOQmo" resolve="checkBox" />
                  </node>
                  <node concept="37vLTw" id="6EAgubLA96S" role="37wK5m">
                    <ref role="3cqZAo" node="5U9rQri5Gif" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6msDcinOG8e" role="2GsD0m">
            <ref role="3cqZAo" node="6msDcinOl$p" resolve="myOptions" />
          </node>
        </node>
        <node concept="3cpWs6" id="6msDcinOJ7y" role="3cqZAp">
          <node concept="37vLTw" id="6msDcinOJlt" role="3cqZAk">
            <ref role="3cqZAo" node="6msDcinOEHJ" resolve="panel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6msDcinOYmp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5zhJtEaVXGu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doRefactoringAction" />
      <node concept="3cqZAl" id="58ylZeUN7w0" role="3clF45" />
      <node concept="3Tmbuc" id="5zhJtEaVXGw" role="1B3o_S" />
      <node concept="3clFbS" id="5zhJtEaVXGx" role="3clF47">
        <node concept="3clFbF" id="6msDcinOT0f" role="3cqZAp">
          <node concept="37vLTI" id="6msDcinOTmo" role="3clFbG">
            <node concept="2ShNRf" id="1$U7CSckeCv" role="37vLTx">
              <node concept="Tc6Ow" id="1$U7CSckeCr" role="2ShVmc">
                <node concept="10Oyi0" id="1$U7CSckeCs" role="HW$YZ" />
              </node>
            </node>
            <node concept="37vLTw" id="6msDcinOT0d" role="37vLTJ">
              <ref role="3cqZAo" node="6msDcinOSsj" resolve="mySelected" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1$U7CSckeWe" role="3cqZAp">
          <node concept="3clFbS" id="1$U7CSckeWg" role="2LFqv$">
            <node concept="3clFbJ" id="1$U7CSckgAU" role="3cqZAp">
              <node concept="3clFbS" id="1$U7CSckgAW" role="3clFbx">
                <node concept="3clFbF" id="1$U7CSckh$g" role="3cqZAp">
                  <node concept="2OqwBi" id="1$U7CSckhJO" role="3clFbG">
                    <node concept="37vLTw" id="1$U7CSckh$e" role="2Oq$k0">
                      <ref role="3cqZAo" node="6msDcinOSsj" resolve="mySelected" />
                    </node>
                    <node concept="TSZUe" id="1$U7CSckicT" role="2OqNvi">
                      <node concept="37vLTw" id="1$U7CSckije" role="25WWJ7">
                        <ref role="3cqZAo" node="1$U7CSckeWh" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1$U7CSckgZJ" role="3clFbw">
                <node concept="1y4W85" id="1$U7CSckgOV" role="2Oq$k0">
                  <node concept="37vLTw" id="1$U7CSckgTB" role="1y58nS">
                    <ref role="3cqZAo" node="1$U7CSckeWh" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="1$U7CSckgBO" role="1y566C">
                    <ref role="3cqZAo" node="6msDcinOQ46" resolve="myCheckBoxes" />
                  </node>
                </node>
                <node concept="liA8E" id="1$U7CSckhu6" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1$U7CSckeWh" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1$U7CSckf9i" role="1tU5fm" />
            <node concept="3cmrfG" id="1$U7CSckfaU" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="1$U7CSckftL" role="1Dwp0S">
            <node concept="2OqwBi" id="1$U7CSckfK2" role="3uHU7w">
              <node concept="37vLTw" id="1$U7CSckfv1" role="2Oq$k0">
                <ref role="3cqZAo" node="6msDcinOQ46" resolve="myCheckBoxes" />
              </node>
              <node concept="34oBXx" id="1$U7CSckgaG" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="1$U7CSckfbW" role="3uHU7B">
              <ref role="3cqZAo" node="1$U7CSckeWh" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="1$U7CSckgrB" role="1Dwrff">
            <node concept="37vLTw" id="1$U7CSckgrD" role="2$L3a6">
              <ref role="3cqZAo" node="1$U7CSckeWh" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58ylZeUN7w6" role="3cqZAp">
          <node concept="3nyPlj" id="58ylZeUN7w7" role="3clFbG">
            <ref role="37wK5l" to="u42p:1t_LRy89k4S" resolve="doRefactoringAction" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U_vf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="5zhJtEaVXFl" role="jymVt">
      <property role="TrG5h" value="selectOptions" />
      <node concept="_YKpA" id="1$U7CSck7b7" role="3clF45">
        <node concept="10Oyi0" id="1$U7CSck7hM" role="_ZDj9" />
      </node>
      <node concept="37vLTG" id="5zhJtEaVXFm" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5zhJtEaVXFn" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="6msDcinONBJ" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="_YKpA" id="6msDcinONBK" role="1tU5fm">
          <node concept="17QB3L" id="FLkVtyyGcn" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="FLkVtyyLKr" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="FLkVtyyLUU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3mZdOaobREc" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="3mZdOaobRLP" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5zhJtEaVXFt" role="1B3o_S" />
      <node concept="3clFbS" id="5zhJtEaVXFu" role="3clF47">
        <node concept="3cpWs8" id="5zhJtEaVXFv" role="3cqZAp">
          <node concept="3cpWsn" id="5zhJtEaVXFw" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <node concept="3uibUv" id="6msDcinOYc3" role="1tU5fm">
              <ref role="3uigEE" node="6msDcinOaKu" resolve="SelectOptionsDialog" />
            </node>
            <node concept="2ShNRf" id="5zhJtEaVXFy" role="33vP2m">
              <node concept="1pGfFk" id="5zhJtEaVXFz" role="2ShVmc">
                <ref role="37wK5l" node="6msDcinObNF" resolve="SelectOptionsDialog" />
                <node concept="37vLTw" id="2BHiRxgl_wA" role="37wK5m">
                  <ref role="3cqZAo" node="5zhJtEaVXFm" resolve="project" />
                </node>
                <node concept="37vLTw" id="6msDcinOODL" role="37wK5m">
                  <ref role="3cqZAo" node="6msDcinONBJ" resolve="options" />
                </node>
                <node concept="37vLTw" id="FLkVtyyLZB" role="37wK5m">
                  <ref role="3cqZAo" node="FLkVtyyLKr" resolve="title" />
                </node>
                <node concept="37vLTw" id="3mZdOaobRNC" role="37wK5m">
                  <ref role="3cqZAo" node="3mZdOaobREc" resolve="message" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5zhJtEaVXFF" role="3cqZAp">
          <node concept="2OqwBi" id="5zhJtEaVXFG" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvtt" role="2Oq$k0">
              <ref role="3cqZAo" node="5zhJtEaVXFw" resolve="dialog" />
            </node>
            <node concept="liA8E" id="5zhJtEaVXFI" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zhJtEaVXFJ" role="3cqZAp">
          <node concept="2OqwBi" id="5zhJtEaVXFK" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagTxKS" role="2Oq$k0">
              <ref role="3cqZAo" node="5zhJtEaVXFw" resolve="dialog" />
            </node>
            <node concept="2OwXpG" id="6msDcinOYiO" role="2OqNvi">
              <ref role="2Oxat5" node="6msDcinOSsj" resolve="mySelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6msDcinOaKv" role="1B3o_S" />
    <node concept="3uibUv" id="6msDcinObII" role="1zkMxy">
      <ref role="3uigEE" to="u42p:1t_LRy89k3m" resolve="RefactoringDialog" />
    </node>
    <node concept="3clFb_" id="4_ns_JESo9B" role="jymVt">
      <property role="TrG5h" value="getHelpId" />
      <node concept="3Tmbuc" id="4_ns_JESo9C" role="1B3o_S" />
      <node concept="3uibUv" id="4_ns_JESo9F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4_ns_JESo9H" role="3clF47">
        <node concept="3cpWs6" id="4_ns_JESq5g" role="3cqZAp">
          <node concept="Xl_RD" id="4_ns_JESr3r" role="3cqZAk">
            <property role="Xl_RC" value="dialog.refactoring.selectParticipants" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_ns_JESo9I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1knX_y6ngEo">
    <property role="TrG5h" value="RenameRefactoringBody" />
    <node concept="312cEg" id="1knX_y6nMbd" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1knX_y6nMbe" role="1B3o_S" />
      <node concept="17QB3L" id="1knX_y6nMbf" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1knX_y6nlhA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1knX_y6njRy" role="1B3o_S" />
      <node concept="3Tqbb2" id="1knX_y6nPBi" role="1tU5fm">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="312cEg" id="1knX_y6od02" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNewNodeName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1knX_y6od03" role="1B3o_S" />
      <node concept="17QB3L" id="1knX_y6od04" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1knX_y6o1kq" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1knX_y6o1kr" role="1B3o_S" />
      <node concept="3uibUv" id="1knX_y6o4uK" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="3clFbW" id="1knX_y6ntsC" role="jymVt">
      <node concept="3cqZAl" id="1knX_y6ntsE" role="3clF45" />
      <node concept="3Tm1VV" id="1knX_y6ntsF" role="1B3o_S" />
      <node concept="3clFbS" id="1knX_y6ntsG" role="3clF47">
        <node concept="3clFbF" id="1knX_y6nJig" role="3cqZAp">
          <node concept="37vLTI" id="1knX_y6nL5N" role="3clFbG">
            <node concept="37vLTw" id="1knX_y6nLIl" role="37vLTx">
              <ref role="3cqZAo" node="1knX_y6nufv" resolve="refactoringName" />
            </node>
            <node concept="37vLTw" id="1knX_y6nJif" role="37vLTJ">
              <ref role="3cqZAo" node="1knX_y6nMbd" resolve="myName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1knX_y6nQUZ" role="3cqZAp">
          <node concept="37vLTI" id="1knX_y6nRYq" role="3clFbG">
            <node concept="37vLTw" id="1knX_y6nSpC" role="37vLTx">
              <ref role="3cqZAo" node="1knX_y6nuBn" resolve="node" />
            </node>
            <node concept="37vLTw" id="1knX_y6nQUX" role="37vLTJ">
              <ref role="3cqZAo" node="1knX_y6nlhA" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1knX_y6ohPT" role="3cqZAp">
          <node concept="37vLTI" id="1knX_y6olre" role="3clFbG">
            <node concept="37vLTw" id="1knX_y6olTw" role="37vLTx">
              <ref role="3cqZAo" node="1knX_y6ob2s" resolve="newNodeName" />
            </node>
            <node concept="37vLTw" id="1knX_y6oiMN" role="37vLTJ">
              <ref role="3cqZAo" node="1knX_y6od02" resolve="myNewNodeName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1knX_y6o4Xk" role="3cqZAp">
          <node concept="37vLTI" id="1knX_y6o6bE" role="3clFbG">
            <node concept="37vLTw" id="1knX_y6o7i8" role="37vLTx">
              <ref role="3cqZAo" node="1knX_y6nWuf" resolve="project" />
            </node>
            <node concept="37vLTw" id="1knX_y6o4Xi" role="37vLTJ">
              <ref role="3cqZAo" node="1knX_y6o1kq" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1knX_y6nufv" role="3clF46">
        <property role="TrG5h" value="refactoringName" />
        <node concept="17QB3L" id="1knX_y6nufu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1knX_y6nuBn" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1knX_y6nvAn" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="1knX_y6ob2s" role="3clF46">
        <property role="TrG5h" value="newNodeName" />
        <node concept="17QB3L" id="1knX_y6obBL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1knX_y6nWuf" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1knX_y6nZJS" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ly2gVlmzOj" role="jymVt">
      <property role="TrG5h" value="getRefactoringName" />
      <property role="1EzhhJ" value="false" />
      <node concept="3Tm1VV" id="3ly2gVlmzOk" role="1B3o_S" />
      <node concept="17QB3L" id="3ly2gVlmzOm" role="3clF45" />
      <node concept="3clFbS" id="3ly2gVlmzOn" role="3clF47">
        <node concept="3clFbF" id="1knX_y6nTs$" role="3cqZAp">
          <node concept="37vLTw" id="1knX_y6nTsx" role="3clFbG">
            <ref role="3cqZAo" node="1knX_y6nMbd" resolve="myName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ly2gVlmzOp" role="jymVt">
      <property role="TrG5h" value="getAllAvailableParticipants" />
      <property role="1EzhhJ" value="false" />
      <node concept="3Tm1VV" id="3ly2gVlmzOq" role="1B3o_S" />
      <node concept="3uibUv" id="3ly2gVlnnSg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3qUE_q" id="3ly2gVlmzOt" role="11_B2D">
          <node concept="3uibUv" id="3ly2gVlmzOu" role="3qUE_r">
            <ref role="3uigEE" to="5nvm:3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="3qTvmN" id="3ly2gVlmzOv" role="11_B2D" />
            <node concept="3qTvmN" id="3ly2gVlmzOw" role="11_B2D" />
            <node concept="3Tqbb2" id="3ly2gVlnc69" role="11_B2D" />
            <node concept="17QB3L" id="3ly2gVlncG$" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ly2gVlmzOz" role="3clF47">
        <node concept="3clFbF" id="3ly2gVlneq8" role="3cqZAp">
          <node concept="2OqwBi" id="76O06llYVVL" role="3clFbG">
            <node concept="2O5UvJ" id="76O06llYVVM" role="2Oq$k0">
              <ref role="2O5UnU" to="4ugc:76O06llMw9R" resolve="RenameNodeParticipantEP" />
            </node>
            <node concept="SfwO_" id="76O06llYVVN" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ly2gVlmzO_" role="jymVt">
      <property role="TrG5h" value="findInitialStates" />
      <property role="1EzhhJ" value="false" />
      <node concept="3Tm1VV" id="3ly2gVlmzOA" role="1B3o_S" />
      <node concept="_YKpA" id="3ly2gVlmzOC" role="3clF45">
        <node concept="3Tqbb2" id="3ly2gVlnvX2" role="_ZDj9" />
      </node>
      <node concept="3clFbS" id="3ly2gVlmzOE" role="3clF47">
        <node concept="3clFbF" id="3ly2gVlnxgM" role="3cqZAp">
          <node concept="2ShNRf" id="76O06llZ0QD" role="3clFbG">
            <node concept="Tc6Ow" id="2vOGnLEufCo" role="2ShVmc">
              <node concept="37vLTw" id="1knX_y6nVEJ" role="HW$Y0">
                <ref role="3cqZAo" node="1knX_y6nlhA" resolve="myNode" />
              </node>
              <node concept="3Tqbb2" id="2vOGnLEuhtV" role="HW$YZ" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="23EHyRfskrq" role="jymVt">
      <property role="TrG5h" value="prepareRefactoring" />
      <node concept="3Tm1VV" id="23EHyRfskrs" role="1B3o_S" />
      <node concept="3cqZAl" id="23EHyRfskrt" role="3clF45" />
      <node concept="3clFbS" id="23EHyRfskrx" role="3clF47">
        <node concept="3SKdUt" id="23EHyRfsmSq" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqUW" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqUX" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqUY" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ly2gVlmzOG" role="jymVt">
      <property role="TrG5h" value="doRefactor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="3ly2gVlmzOH" role="3clF46">
        <property role="TrG5h" value="participantStates" />
        <node concept="A3Dl8" id="3ly2gVlmzOI" role="1tU5fm">
          <node concept="3uibUv" id="3ly2gVlmzOJ" role="A3Ik2">
            <ref role="3uigEE" to="5nvm:5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
            <node concept="3qTvmN" id="3ly2gVlmzOK" role="11_B2D" />
            <node concept="3qTvmN" id="3ly2gVlmzOL" role="11_B2D" />
            <node concept="3Tqbb2" id="6K8$EnCZhhc" role="11_B2D" />
            <node concept="17QB3L" id="6K8$EnCZi2g" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ly2gVlmzOQ" role="3clF46">
        <property role="TrG5h" value="refactoringSession" />
        <node concept="3uibUv" id="3ly2gVlmzOR" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3ly2gVlmzOS" role="1B3o_S" />
      <node concept="3clFbS" id="3ly2gVlmzP4" role="3clF47">
        <node concept="3clFbF" id="3ly2gVlnFL4" role="3cqZAp">
          <node concept="37vLTI" id="3ly2gVlnFL5" role="3clFbG">
            <node concept="37vLTw" id="1knX_y6omBP" role="37vLTx">
              <ref role="3cqZAo" node="1knX_y6od02" resolve="myNewNodeName" />
            </node>
            <node concept="2OqwBi" id="3ly2gVlnFL7" role="37vLTJ">
              <node concept="37vLTw" id="1knX_y6o8NF" role="2Oq$k0">
                <ref role="3cqZAo" node="1knX_y6nlhA" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="5v6iE98DoQH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3ly2gVlnCWy" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3ly2gVlnE8U" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFinalStateFor" />
      <node concept="37vLTG" id="3ly2gVlnE8V" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3Tqbb2" id="3ly2gVlnE97" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="3ly2gVlnE96" role="3clF45" />
      <node concept="3Tm1VV" id="3ly2gVlnE8Y" role="1B3o_S" />
      <node concept="3clFbS" id="3ly2gVlnE98" role="3clF47">
        <node concept="3clFbJ" id="3ly2gVlnGsh" role="3cqZAp">
          <node concept="3clFbC" id="3ly2gVlnHVz" role="3clFbw">
            <node concept="37vLTw" id="1knX_y6onnj" role="3uHU7w">
              <ref role="3cqZAo" node="1knX_y6nlhA" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="3ly2gVlnHeS" role="3uHU7B">
              <ref role="3cqZAo" node="3ly2gVlnE8V" resolve="initialState" />
            </node>
          </node>
          <node concept="3clFbS" id="3ly2gVlnGsj" role="3clFbx">
            <node concept="3cpWs6" id="3ly2gVlnKhF" role="3cqZAp">
              <node concept="37vLTw" id="1knX_y6oo8o" role="3cqZAk">
                <ref role="3cqZAo" node="1knX_y6od02" resolve="myNewNodeName" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3ly2gVlnQdN" role="9aQIa">
            <node concept="3clFbS" id="3ly2gVlnQdO" role="9aQI4">
              <node concept="YS8fn" id="3ly2gVlnMSG" role="3cqZAp">
                <node concept="2ShNRf" id="3ly2gVlnO5R" role="YScLw">
                  <node concept="1pGfFk" id="3ly2gVlnPAU" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="3ly2gVlnXDO" role="37wK5m">
                      <node concept="2OqwBi" id="3ly2gVlo14j" role="3uHU7w">
                        <node concept="2JrnkZ" id="3ly2gVlo0Lr" role="2Oq$k0">
                          <node concept="37vLTw" id="1knX_y6op$q" role="2JrQYb">
                            <ref role="3cqZAo" node="1knX_y6nlhA" resolve="myNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3ly2gVlo1la" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="3ly2gVlo3rp" role="3uHU7B">
                        <node concept="3cpWs3" id="3ly2gVlo1Zv" role="3uHU7B">
                          <node concept="Xl_RD" id="3ly2gVlnRwi" role="3uHU7B">
                            <property role="Xl_RC" value="asked for: " />
                          </node>
                          <node concept="2OqwBi" id="3ly2gVlnV7h" role="3uHU7w">
                            <node concept="2JrnkZ" id="3ly2gVlnUL2" role="2Oq$k0">
                              <node concept="37vLTw" id="3ly2gVlnSP3" role="2JrQYb">
                                <ref role="3cqZAo" node="3ly2gVlnE8V" resolve="initialState" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3ly2gVlnVKh" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3ly2gVlnWgV" role="3uHU7w">
                          <property role="Xl_RC" value=", known: " />
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
      <node concept="2AHcQZ" id="3ly2gVlnE99" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3ly2gVlmzP6" role="jymVt">
      <property role="TrG5h" value="doCleanup" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="3ly2gVlmzP7" role="3clF45" />
      <node concept="3Tm1VV" id="3ly2gVlmzP8" role="1B3o_S" />
      <node concept="3clFbS" id="3ly2gVlmzPh" role="3clF47">
        <node concept="3SKdUt" id="3ly2gVlo63g" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoqUZ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoqV0" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoqV1" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1knX_y6nhNl" role="jymVt" />
    <node concept="2tJIrI" id="1knX_y6ngXa" role="jymVt" />
    <node concept="3Tm1VV" id="1knX_y6ngEp" role="1B3o_S" />
    <node concept="3uibUv" id="1knX_y6ngWH" role="EKbjA">
      <ref role="3uigEE" to="5nvm:2EZTs$tsIo8" resolve="RefactoringProcessor.RefactoringBody" />
      <node concept="3Tqbb2" id="1knX_y6nhI3" role="11_B2D" />
      <node concept="17QB3L" id="1knX_y6nhMo" role="11_B2D" />
    </node>
  </node>
  <node concept="vrV6u" id="1F5g4zQqSPo">
    <property role="TrG5h" value="MoveNodesActionEP" />
    <node concept="3uibUv" id="5ErAoTCkxhZ" role="luc8K">
      <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesAction" />
    </node>
  </node>
</model>

